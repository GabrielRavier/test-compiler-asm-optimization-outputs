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
	extui	a4, a4, 0, 8
	mov.n	a9, a5
	bnez.n	a5, .L11
	movi.n	a2, 0
	j	.L10
.L13:
	addi.n	a5, a5, -1
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a9, a9, -1
	bnez.n	a9, .L11
	j	.L18
.L11:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	bne	a8, a4, .L13
	j	.L19
.L18:
	movi.n	a2, 0
	j	.L10
.L19:
	addi.n	a2, a2, 1
.L10:
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	mov.n	a8, a4
	bnez.n	a4, .L22
	movi.n	a2, 0
	j	.L21
.L24:
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	addi.n	a8, a8, -1
	bnez.n	a8, .L22
	j	.L28
.L22:
	l8ui	a9, a2, 0
	bne	a9, a3, .L24
	j	.L21
.L28:
	movi.n	a2, 0
.L21:
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L31
	movi.n	a2, 0
	j	.L30
.L33:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L31
	j	.L38
.L31:
	l8ui	a10, a2, 0
	l8ui	a9, a3, 0
	beq	a10, a9, .L33
	j	.L39
.L38:
	movi.n	a2, 0
	j	.L30
.L39:
	l8ui	a2, a2, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
.L30:
	retw.n
	.size	memcmp, .-memcmp
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 32
	beqz.n	a4, .L42
	mov.n	a8, a2
.L43:
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L43
.L42:
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
	j	.L47
.L49:
	mov.n	a2, a8
	l8ui	a9, a8, 0
	addi.n	a8, a8, -1
	beq	a9, a3, .L46
.L47:
	bne	a8, a10, .L49
	movi.n	a2, 0
.L46:
	retw.n
	.size	memrchr, .-memrchr
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 32
	beqz.n	a4, .L51
	mov.n	a8, a2
	extui	a9, a3, 0, 8
.L52:
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L52
.L51:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L56
.L57:
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	bnez.n	a8, .L57
.L56:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	extui	a3, a3, 0, 8
	l8ui	a8, a2, 0
	bnez.n	a8, .L60
	j	.L59
.L62:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L59
.L60:
	l8ui	a8, a2, 0
	bne	a8, a3, .L62
.L59:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L67:
	l8ui	a8, a2, 0
	beq	a8, a3, .L66
	addi.n	a2, a2, 1
	bnez.n	a8, .L67
	movi.n	a2, 0
.L66:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a9, a2, 0
	l8ui	a8, a3, 0
	beq	a9, a8, .L70
	j	.L71
.L72:
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	l8ui	a9, a2, 0
	l8ui	a8, a3, 0
	bne	a9, a8, .L71
.L70:
	l8ui	a8, a2, 0
	bnez.n	a8, .L72
.L71:
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
	l8ui	a8, a2, 0
	beqz.n	a8, .L77
	mov.n	a8, a2
.L76:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	bnez.n	a9, .L76
	j	.L75
.L77:
	mov.n	a8, a2
.L75:
	sub	a2, a8, a2
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a9, a2
	addi.n	a12, a4, -1
	movi.n	a2, 0
	beqz.n	a4, .L79
	l8ui	a10, a9, 0
	mov.n	a8, a9
	add.n	a12, a9, a12
	bnez.n	a10, .L81
	j	.L82
.L83:
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
	l8ui	a9, a8, 0
	beqz.n	a9, .L82
.L81:
	l8ui	a9, a3, 0
	sub	a10, a8, a12
	movi.n	a11, 1
	moveqz	a11, a10, a10
	movi.n	a10, 1
	moveqz	a10, a9, a9
	bnone	a11, a10, .L82
	l8ui	a10, a8, 0
	beq	a9, a10, .L83
.L82:
	l8ui	a2, a8, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
.L79:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L87
	movi.n	a8, -2
	and	a8, a4, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L89_LEND
.L89:
	l8ui	a9, a2, 1
	s8i	a9, a3, 0
	l8ui	a9, a2, 0
	s8i	a9, a3, 1
	addi.n	a3, a3, 2
	addi.n	a2, a2, 2
	.L89_LEND:
.L87:
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
	bgeu	a9, a8, .L93
	movi.n	a2, 0
.L93:
	extui	a2, a2, 0, 1
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi.n	a8, 1
	movi	a9, 0x7f
	bgeu	a9, a2, .L95
	movi.n	a8, 0
.L95:
	extui	a2, a8, 0, 1
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 32
	addi	a8, a2, -32
	nsau	a8, a8
	srli	a8, a8, 5
	addi	a2, a2, -9
	nsau	a2, a2
	srli	a2, a2, 5
	or	a2, a8, a2
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L98
	movi.n	a8, 0
.L98:
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
	addi	a8, a2, -48
	movi.n	a2, 1
	movi.n	a9, 9
	bgeu	a9, a8, .L100
	movi.n	a2, 0
.L100:
	extui	a2, a2, 0, 1
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
	bgeu	a9, a8, .L102
	movi.n	a2, 0
.L102:
	extui	a2, a2, 0, 1
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
	bgeu	a9, a8, .L104
	movi.n	a2, 0
.L104:
	extui	a2, a2, 0, 1
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
	bgeu	a9, a8, .L106
	movi.n	a2, 0
.L106:
	extui	a2, a2, 0, 1
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a8, a2, -32
	nsau	a8, a8
	srli	a8, a8, 5
	addi	a2, a2, -9
	movi.n	a9, 1
	bltui	a2, 5, .L108
	movi.n	a9, 0
.L108:
	extui	a2, a9, 0, 8
	or	a2, a8, a2
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
	bgeu	a9, a8, .L110
	movi.n	a2, 0
.L110:
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
	mov.n	a9, a2
	movi.n	a8, 1
	movi.n	a10, 0x1f
	bgeu	a10, a2, .L112
	movi.n	a8, 0
.L112:
	extui	a8, a8, 0, 8
	addi	a11, a9, -127
	movi.n	a10, 1
	movi.n	a12, 0x20
	bgeu	a12, a11, .L113
	movi.n	a10, 0
.L113:
	extui	a10, a10, 0, 8
	or	a8, a8, a10
	movi.n	a2, 1
	bnez.n	a8, .L111
	l32r	a8, .LC0
	add.n	a8, a9, a8
	bltui	a8, 2, .L111
	l32r	a8, .LC1
	add.n	a9, a9, a8
	bltui	a9, 3, .L115
	movi.n	a2, 0
.L115:
	extui	a2, a2, 0, 8
.L111:
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
	bgeu	a9, a8, .L119
	movi.n	a2, 0
.L119:
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
	mov.n	a8, a2
	movi	a9, 0xfe
	bltu	a9, a2, .L121
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a2, 1
	movi.n	a9, 0x20
	bltu	a9, a8, .L122
	movi.n	a2, 0
.L122:
	extui	a2, a2, 0, 8
	j	.L120
.L121:
	movi.n	a9, 1
	l32r	a10, .LC2
	bgeu	a10, a2, .L124
	movi.n	a9, 0
.L124:
	extui	a9, a9, 0, 8
	l32r	a11, .LC3
	add.n	a11, a8, a11
	movi.n	a10, 1
	l32r	a12, .LC4
	bgeu	a12, a11, .L125
	movi.n	a10, 0
.L125:
	extui	a10, a10, 0, 8
	or	a9, a9, a10
	movi.n	a2, 1
	bnez.n	a9, .L120
	l32r	a9, .LC5
	add.n	a9, a8, a9
	l32r	a10, .LC6
	bgeu	a10, a9, .L120
	l32r	a9, .LC7
	add.n	a9, a8, a9
	l32r	a10, .LC8
	movi.n	a2, 0
	bltu	a10, a9, .L120
	l32r	a9, .LC9
	and	a8, a8, a9
	xor	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
.L120:
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
	bgeu	a10, a9, .L129
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L131
	movi.n	a2, 0
.L131:
	extui	a2, a2, 0, 8
.L129:
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
	.literal .LC11, __unorddf2@PLT
	.literal .LC12, __gtdf2@PLT
	.literal .LC13, __subdf3@PLT
	.align	4
	.global	fdim
	.type	fdim, @function
fdim:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC11
	callx8	a8
	bnez.n	a10, .L134
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC11
	callx8	a8
	bnez.n	a10, .L138
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC12
	callx8	a8
	blti	a10, 1, .L141
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC13
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L134
.L138:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L134
.L141:
	movi.n	a2, 0
	movi.n	a3, 0
.L134:
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
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC15
	callx8	a8
	bnez.n	a10, .L142
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC15
	callx8	a8
	bnez.n	a10, .L146
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC16
	callx8	a8
	blti	a10, 1, .L149
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC17
	callx8	a8
	mov.n	a2, a10
	j	.L142
.L146:
	mov.n	a2, a3
	j	.L142
.L149:
	movi.n	a2, 0
.L142:
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
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L156
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L150
	l32r	a8, .LC19
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L152
	beqz.n	a9, .L150
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L150
.L152:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC20
	callx8	a8
	bgez	a10, .L150
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L150
.L156:
	mov.n	a2, a4
	mov.n	a3, a5
.L150:
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
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L163
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L159
	l32r	a8, .LC22
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L161
	movnez	a2, a3, a9
	j	.L159
.L161:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC23
	callx8	a8
	movltz	a2, a3, a10
	j	.L159
.L163:
	mov.n	a2, a3
.L159:
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
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L172
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L166
	l32r	a8, .LC25
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L168
	beqz.n	a9, .L166
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L166
.L168:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC26
	callx8	a8
	bgez	a10, .L166
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L166
.L172:
	mov.n	a2, a4
	mov.n	a3, a5
.L166:
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
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L181
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L182
	l32r	a8, .LC28
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L177
	mov.n	a2, a4
	mov.n	a3, a5
	beqz.n	a9, .L175
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L175
.L177:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC29
	callx8	a8
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a10, .L175
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L175
.L181:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L175
.L182:
.L175:
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
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L188
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L184
	l32r	a8, .LC31
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L186
	moveqz	a2, a3, a9
	j	.L184
.L186:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC32
	callx8	a8
	movgez	a2, a3, a10
	j	.L184
.L188:
	mov.n	a2, a3
.L184:
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
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC33
	callx8	a8
	bnez.n	a10, .L197
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC33
	callx8	a8
	bnez.n	a10, .L198
	l32r	a8, .LC34
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L193
	mov.n	a2, a4
	mov.n	a3, a5
	beqz.n	a9, .L191
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L191
.L193:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC35
	callx8	a8
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a10, .L191
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L191
.L197:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L191
.L198:
.L191:
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
	beqz.n	a2, .L203
	l32r	a9, .LC36
	l32r	a10, .LC37
.L202:
	extui	a8, a2, 0, 6
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	srli	a2, a2, 6
	bnez.n	a2, .L202
	j	.L201
.L203:
	l32r	a9, .LC36
.L201:
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
	addi.n	a2, a2, -1
	l32r	a8, .LC38
	movi.n	a9, 0
	s32i	a9, a8, 0
	s32i	a2, a8, 4
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
	l32i	a2, a8, 0
	l32i	a10, a8, 4
	l32r	a11, .LC40
	mull	a2, a2, a11
	l32r	a8, .LC41
	mull	a8, a10, a8
	add.n	a2, a2, a8
	l32r	a8, .LC42
	callx8	a8
	add.n	a2, a2, a10
	addi.n	a11, a11, 1
	nsau	a8, a11
	srli	a8, a8, 5
	add.n	a2, a2, a8
	l32r	a8, .LC39
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
	movi.n	a8, 0
	s32i	a8, a2, 4
	s32i	a8, a2, 0
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
	.literal .LC43, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	mov.n	a7, a3
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	l32i	a3, a4, 0
	beqz.n	a3, .L215
	movi.n	a4, 0
.L217:
	s32i	a7, sp, 0
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a6
	beqz.n	a10, .L214
	addi.n	a4, a4, 1
	add.n	a7, a7, a5
	bne	a3, a4, .L217
.L215:
	addi.n	a8, a3, 1
	l32i	a9, sp, 8
	s32i	a8, a9, 0
	mull	a10, a5, a3
	mov.n	a12, a5
	mov.n	a11, a2
	l32i	a8, sp, 4
	add.n	a10, a8, a10
	l32r	a8, .LC43
	callx8	a8
	s32i	a10, sp, 0
.L214:
	l32i	a2, sp, 0
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	l32i	a4, a4, 0
	beqz.n	a4, .L222
	movi.n	a7, 0
.L221:
	s32i	a3, sp, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a6
	beqz.n	a10, .L219
	addi.n	a7, a7, 1
	add.n	a3, a3, a5
	bne	a4, a7, .L221
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L219
.L222:
	movi.n	a8, 0
	s32i	a8, sp, 0
.L219:
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
	.literal .LC44, isspace@PLT
	.align	4
	.global	atoi
	.type	atoi, @function
atoi:
	entry	sp, 32
	l32r	a6, .LC44
	j	.L226
.L227:
	addi.n	a2, a2, 1
.L226:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L227
	movi.n	a8, 0x2b
	beq	a7, a8, .L235
	movi.n	a8, 0x2d
	movi.n	a12, 1
	beq	a7, a8, .L228
	j	.L229
.L235:
	mov.n	a12, a10
.L228:
	addi.n	a8, a2, 1
	l8ui	a9, a2, 1
	addi	a9, a9, -48
	movi.n	a11, 9
	bltu	a11, a9, .L230
.L233:
	movi.n	a11, 9
.L231:
	addx4	a10, a10, a10
	l8ui	a9, a8, 0
	addi	a9, a9, -48
	subx2	a10, a10, a9
	l8ui	a9, a8, 1
	addi	a9, a9, -48
	addi.n	a8, a8, 1
	bgeu	a11, a9, .L231
.L230:
	bnez.n	a12, .L225
.L234:
	neg	a10, a10
	j	.L225
.L229:
	l8ui	a9, a2, 0
	addi	a9, a9, -48
	movi.n	a11, 9
	mov.n	a12, a10
	mov.n	a8, a2
	bgeu	a11, a9, .L233
	j	.L234
.L225:
	mov.n	a2, a10
	retw.n
	.size	atoi, .-atoi
	.literal_position
	.literal .LC45, isspace@PLT
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l32r	a6, .LC45
	j	.L239
.L240:
	addi.n	a2, a2, 1
.L239:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L240
	movi.n	a8, 0x2b
	beq	a7, a8, .L248
	movi.n	a8, 0x2d
	movi.n	a12, 1
	beq	a7, a8, .L241
	j	.L242
.L248:
	mov.n	a12, a10
.L241:
	addi.n	a8, a2, 1
	l8ui	a9, a2, 1
	addi	a9, a9, -48
	movi.n	a11, 9
	bltu	a11, a9, .L243
.L246:
	movi.n	a11, 9
.L244:
	addx4	a10, a10, a10
	l8ui	a9, a8, 0
	addi	a9, a9, -48
	subx2	a10, a10, a9
	l8ui	a9, a8, 1
	addi	a9, a9, -48
	addi.n	a8, a8, 1
	bgeu	a11, a9, .L244
.L243:
	bnez.n	a12, .L238
.L247:
	neg	a10, a10
	j	.L238
.L242:
	l8ui	a9, a2, 0
	addi	a9, a9, -48
	movi.n	a11, 9
	mov.n	a12, a10
	mov.n	a8, a2
	bgeu	a11, a9, .L246
	j	.L247
.L238:
	mov.n	a2, a10
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC46, isspace@PLT
	.literal .LC47, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 32
	l32r	a5, .LC46
	j	.L252
.L253:
	addi.n	a2, a2, 1
.L252:
	l8ui	a6, a2, 0
	mov.n	a10, a6
	callx8	a5
	mov.n	a7, a10
	bnez.n	a10, .L253
	movi.n	a8, 0x2b
	beq	a6, a8, .L254
	movi.n	a8, 0x2d
	bne	a6, a8, .L255
	movi.n	a7, 1
.L254:
	addi.n	a6, a2, 1
	l8ui	a8, a2, 1
	addi	a8, a8, -48
	movi.n	a9, 9
	bltu	a9, a8, .L264
.L262:
	movi.n	a11, 0
	mov.n	a2, a11
	movi.n	a5, 0xa
	l32r	a3, .LC47
	movi.n	a4, 9
.L258:
	mull	a2, a5, a2
	mov.n	a10, a5
	callx8	a3
	add.n	a2, a2, a10
	mov.n	a9, a6
	l8ui	a8, a6, 0
	addi	a8, a8, -48
	srai	a10, a8, 31
	sub	a2, a2, a10
	bgeu	a11, a8, .L257
	addi.n	a2, a2, -1
.L257:
	sub	a11, a11, a8
	l8ui	a8, a9, 1
	addi	a8, a8, -48
	addi.n	a6, a6, 1
	bgeu	a4, a8, .L258
	j	.L256
.L264:
	movi.n	a11, 0
	mov.n	a2, a11
.L256:
	bnez.n	a7, .L251
.L263:
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a11, a11
	sub	a2, a2, a8
	neg	a11, a11
	j	.L251
.L255:
	l8ui	a8, a2, 0
	addi	a8, a8, -48
	movi.n	a9, 9
	mov.n	a6, a2
	movi.n	a11, 0
	mov.n	a2, a11
	bltu	a9, a8, .L263
	j	.L262
.L251:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
	beqz.n	a4, .L271
.L270:
	srli	a7, a4, 1
	mull	a2, a7, a5
	add.n	a2, a3, a2
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	bltz	a10, .L272
	blti	a10, 1, .L267
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
	sub	a4, a4, a7
	j	.L269
.L272:
	mov.n	a4, a7
.L269:
	bnez.n	a4, .L270
	movi.n	a2, 0
	j	.L267
.L271:
	movi.n	a2, 0
.L267:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a2, sp, 0
	beqz.n	a4, .L278
.L277:
	srai	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	mov.n	a12, a7
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L274
	blti	a10, 1, .L276
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
.L276:
	srai	a4, a4, 1
	bnez.n	a4, .L277
	movi.n	a2, 0
	j	.L274
.L278:
	movi.n	a2, 0
.L274:
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
	bgeu	a3, a8, .L283
	addi.n	a2, a2, -1
.L283:
	sub	a3, a3, a8
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC48, __divdi3@PLT
	.literal .LC49, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC48
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC49
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
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
	bgeu	a3, a8, .L289
	addi.n	a2, a2, -1
.L289:
	sub	a3, a3, a8
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC50, __divdi3@PLT
	.literal .LC51, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC50
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC51
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	retw.n
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 32
	l32i	a8, a2, 0
	bnez.n	a8, .L292
	movi.n	a2, 0
	j	.L291
.L295:
	addi.n	a2, a2, 4
	l32i	a8, a2, 0
	beqz.n	a8, .L294
.L292:
	l32i	a8, a2, 0
	bne	a8, a3, .L295
.L294:
	l32i	a9, a2, 0
	movi.n	a8, 0
	moveqz	a2, a8, a9
.L291:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	beq	a9, a8, .L299
	j	.L300
.L301:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bne	a9, a8, .L300
.L299:
	l32i	a8, a2, 0
	beqz.n	a8, .L300
	l32i	a8, a3, 0
	bnez.n	a8, .L301
.L300:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a8, a9, .L298
	movi.n	a2, 1
	blt	a9, a8, .L303
	movi.n	a2, 0
.L303:
	extui	a2, a2, 0, 8
.L298:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L307:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L307
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L312
	mov.n	a8, a2
.L311:
	addi.n	a8, a8, 4
	l32i	a9, a8, 0
	bnez.n	a9, .L311
	j	.L310
.L312:
	mov.n	a8, a2
.L310:
	sub	a2, a8, a2
	srai	a2, a2, 2
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	bnez.n	a4, .L315
	movi.n	a2, 0
	j	.L314
.L318:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L315
	j	.L324
.L315:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a8, a10, .L317
	bnez.n	a8, .L318
	j	.L317
.L320:
	movi.n	a2, 1
	blt	a8, a9, .L319
	movi.n	a2, 0
.L319:
	extui	a2, a2, 0, 8
	j	.L314
.L324:
	movi.n	a2, 0
	j	.L314
.L317:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L320
	movi.n	a2, -1
.L314:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L327
	movi.n	a2, 0
	j	.L326
.L329:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L327
	j	.L333
.L327:
	l32i	a9, a2, 0
	bne	a9, a3, .L329
	j	.L326
.L333:
	movi.n	a2, 0
.L326:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L336
	movi.n	a2, 0
	j	.L335
.L338:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L336
	j	.L345
.L336:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	beq	a10, a9, .L338
	j	.L346
.L341:
	movi.n	a2, 1
	blt	a8, a9, .L340
	movi.n	a2, 0
.L340:
	extui	a2, a2, 0, 8
	j	.L335
.L345:
	movi.n	a2, 0
	j	.L335
.L346:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L341
	movi.n	a2, -1
.L335:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	addi.n	a10, a4, -1
	beqz.n	a4, .L349
	mov.n	a9, a2
	mov.n	a8, a4
	loop	a8, .L350_LEND
.L350:
	l32i	a11, a3, 0
	s32i	a11, a9, 0
	addi.n	a10, a10, -1
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	.L350_LEND:
.L349:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L354
	mov.n	a9, a2
	mov.n	a8, a3
	sub	a10, a2, a3
	slli	a11, a4, 2
	bltu	a10, a11, .L355
	addi.n	a11, a4, -1
	addi.n	a10, a11, 1
	bnez.n	a4, .L356
	j	.L354
.L355:
	addi.n	a10, a4, -1
	beqz.n	a4, .L354
	addx4	a9, a10, a3
	addx4	a10, a10, a2
	sub	a8, a9, a3
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L357_LEND
.L357:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi	a9, a9, -4
	addi	a10, a10, -4
	.L357_LEND:
	j	.L354
.L356:
	l32i	a12, a8, 0
	s32i	a12, a9, 0
	addi.n	a11, a11, -1
	addi.n	a9, a9, 4
	addi.n	a8, a8, 4
	addi.n	a10, a10, -1
	bnez.n	a10, .L356
.L354:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	addi.n	a10, a4, -1
	beqz.n	a4, .L364
	mov.n	a9, a2
	mov.n	a8, a4
	loop	a8, .L365_LEND
.L365:
	s32i	a3, a9, 0
	addi.n	a10, a10, -1
	addi.n	a9, a9, 4
	.L365_LEND:
.L364:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a3
	bgeu	a2, a3, .L369
	add.n	a10, a2, a4
	add.n	a9, a3, a4
	beqz.n	a4, .L368
	sub	a8, a10, a2
	loop	a8, .L371_LEND
.L371:
	addi.n	a10, a10, -1
	addi.n	a9, a9, -1
	l8ui	a11, a10, 0
	s8i	a11, a9, 0
	.L371_LEND:
	j	.L368
.L369:
	beq	a2, a3, .L368
	beqz.n	a4, .L368
.L372:
	l8ui	a10, a8, 0
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L372
.L368:
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
	extui	a2, a2, 8, 8
	slli	a2, a2, 8
	or	a2, a8, a2
	retw.n
	.size	bswap_16, .-bswap_16
	.align	4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	entry	sp, 32
	extui	a11, a2, 24, 8
	srli	a9, a2, 8
	extui	a9, a9, 8, 8
	slli	a9, a9, 8
	slli	a10, a2, 8
	extui	a10, a10, 16, 8
	slli	a10, a10, 16
	slli	a8, a2, 24
	or	a8, a8, a11
	or	a9, a9, a8
	or	a2, a10, a9
	retw.n
	.size	bswap_32, .-bswap_32
	.literal_position
	.literal .LC54, 65280
	.literal .LC55, 16711680
	.align	4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	entry	sp, 32
	extui	a7, a2, 24, 8
	srli	a11, a2, 8
	l32r	a15, .LC54
	and	a11, a11, a15
	ssai	24
	src	a9, a2, a3
	l32r	a14, .LC55
	and	a9, a9, a14
	slli	a12, a2, 24
	slli	a10, a3, 8
	extui	a13, a3, 24, 8
	ssai	8
	src	a2, a2, a3
	slli	a8, a3, 24
	and	a2, a2, a15
	and	a10, a10, a14
	or	a11, a11, a7
	or	a9, a9, a11
	or	a8, a13, a8
	or	a2, a2, a8
	or	a2, a10, a2
	or	a3, a12, a9
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 32
	movi.n	a8, 0
	movi.n	a9, 0x20
	loop	a9, .L393_LEND
.L393:
	ssr	a8
	srl	a10, a2
	bbci	a10, 31, .L391
	addi.n	a2, a8, 1
	j	.L390
.L391:
	addi.n	a8, a8, 1
	.L393_LEND:
	movi.n	a2, 0
.L390:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	beqz.n	a2, .L396
	extui	a2, a2, 0, 1
	bbsi	a8, 31, .L396
	movi.n	a2, 1
.L398:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L398
.L396:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC58, __ltsf2@PLT
	.literal .LC60, __gtsf2@PLT
	.literal .LC61, 2139095039
	.literal .LC62, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	mov.n	a7, a2
	l32r	a11, .LC62
	mov.n	a10, a2
	l32r	a8, .LC58
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L401
	l32r	a11, .LC61
	mov.n	a10, a7
	l32r	a8, .LC60
	callx8	a8
	bgei	a10, 1, .L403
	movi.n	a2, 0
.L403:
	extui	a2, a2, 0, 8
.L401:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC64, __ltdf2@PLT
	.literal .LC66, __gtdf2@PLT
	.literal .LC67, 2146435071
	.literal .LC68, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC68
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC64
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L405
	l32r	a12, .LC67
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC66
	callx8	a8
	bgei	a10, 1, .L407
	movi.n	a2, 0
.L407:
	extui	a2, a2, 0, 8
.L405:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC70, __ltdf2@PLT
	.literal .LC72, __gtdf2@PLT
	.literal .LC73, 2146435071
	.literal .LC74, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC74
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC70
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L409
	l32r	a12, .LC73
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC72
	callx8	a8
	bgei	a10, 1, .L411
	movi.n	a2, 0
.L411:
	extui	a2, a2, 0, 8
.L409:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC75, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	mov.n	a10, a3
	l32r	a8, .LC75
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC78, __unordsf2@PLT
	.literal .LC79, __addsf3@PLT
	.literal .LC80, __nesf2@PLT
	.literal .LC81, __mulsf3@PLT
	.literal .LC82, 1056964608
	.literal .LC83, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC78
	callx8	a8
	bnez.n	a10, .L415
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC79
	callx8	a8
	mov.n	a11, a2
	l32r	a8, .LC80
	callx8	a8
	beqz.n	a10, .L415
	l32r	a7, .LC82
	l32r	a8, .LC83
	movgez	a7, a8, a3
	l32r	a5, .LC81
	mov.n	a6, a5
.L419:
	bbci	a3, 31, .L418
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L418:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L415
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	mov.n	a7, a10
	j	.L419
.L415:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC86, __unorddf2@PLT
	.literal .LC87, __adddf3@PLT
	.literal .LC88, __nedf2@PLT
	.literal .LC89, __muldf3@PLT
	.literal .LC90, 1071644672
	.literal .LC91, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC86
	callx8	a8
	bnez.n	a10, .L423
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC87
	callx8	a8
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a8, .LC88
	callx8	a8
	beqz.n	a10, .L423
	l32r	a6, .LC91
	movi.n	a7, 0
	bgez	a4, .L425
	l32r	a6, .LC90
	movi.n	a7, 0
.L425:
	l32r	a5, .LC89
.L427:
	bbci	a4, 31, .L426
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC89
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L426:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
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
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC94, __unorddf2@PLT
	.literal .LC95, __adddf3@PLT
	.literal .LC96, __nedf2@PLT
	.literal .LC97, __muldf3@PLT
	.literal .LC98, 1071644672
	.literal .LC99, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC94
	callx8	a8
	bnez.n	a10, .L431
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC95
	callx8	a8
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a8, .LC96
	callx8	a8
	beqz.n	a10, .L431
	l32r	a6, .LC99
	movi.n	a7, 0
	bgez	a4, .L433
	l32r	a6, .LC98
	movi.n	a7, 0
.L433:
	l32r	a5, .LC97
.L435:
	bbci	a4, 31, .L434
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC97
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L434:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L431
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L435
.L431:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L439
	mov.n	a8, a2
.L440:
	l8ui	a10, a3, 0
	l8ui	a9, a8, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L440
.L439:
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC100, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC100
	callx8	a8
	add.n	a10, a2, a10
	mov.n	a9, a4
	bnez.n	a4, .L444
	j	.L445
.L446:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L444
	j	.L445
.L444:
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L446
	j	.L447
.L445:
	movi.n	a8, 0
	s8i	a8, a10, 0
.L447:
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
	bnez.n	a3, .L452
	mov.n	a2, a3
	j	.L451
.L454:
	addi.n	a2, a2, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L452
	j	.L459
.L452:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	beqz.n	a9, .L451
	j	.L454
.L459:
	mov.n	a2, a3
.L451:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a8, a2, 0
	bnez.n	a8, .L462
	movi.n	a2, 0
	j	.L463
.L464:
	addi.n	a8, a8, 1
	l8ui	a10, a2, 0
	beq	a10, a9, .L463
.L465:
	l8ui	a9, a8, 0
	bnez.n	a9, .L464
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L466
.L462:
	mov.n	a8, a3
	j	.L465
.L466:
	movi.n	a2, 0
.L463:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L470:
	l8ui	a9, a8, 0
	sub	a10, a9, a3
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L470
	retw.n
	.size	strrchr, .-strrchr
	.literal_position
	.literal .LC101, strlen@PLT
	.literal .LC102, strncmp@PLT
	.literal .LC103, strchr@PLT
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 48
	mov.n	a7, a2
	mov.n	a10, a3
	l32r	a8, .LC101
	callx8	a8
	mov.n	a6, a10
	beqz.n	a10, .L473
	l8ui	a8, a3, 0
	s32i	a8, sp, 0
	l32r	a5, .LC103
	l32r	a4, .LC102
	j	.L475
.L476:
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L473
	addi.n	a7, a2, 1
.L475:
	l32i	a11, sp, 0
	mov.n	a10, a7
	callx8	a5
	mov.n	a2, a10
	bnez.n	a10, .L476
.L473:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC105, __ltdf2@PLT
	.literal .LC106, __gtdf2@PLT
	.literal .LC107, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC105
	callx8	a8
	bgez	a10, .L487
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC106
	callx8	a8
	blti	a10, 1, .L482
	j	.L481
.L487:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC106
	callx8	a8
	blti	a10, 1, .L482
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC105
	callx8	a8
	bgez	a10, .L482
.L481:
	l32r	a10, .LC107
	xor	a8, a2, a10
	mov.n	a2, a8
.L482:
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC108, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	mov.n	a7, a2
	sub	a6, a3, a5
	add.n	a6, a2, a6
	beqz.n	a5, .L488
	bltu	a3, a5, .L493
	bltu	a6, a2, .L494
	l8ui	a3, a4, 0
	addi.n	a4, a4, 1
	addi.n	a5, a5, -1
	l32r	a2, .LC108
.L491:
	l8ui	a8, a7, 0
	bne	a8, a3, .L490
	mov.n	a12, a5
	mov.n	a11, a4
	addi.n	a10, a7, 1
	callx8	a2
	beqz.n	a10, .L495
.L490:
	addi.n	a7, a7, 1
	bgeu	a6, a7, .L491
	movi.n	a2, 0
	j	.L488
.L493:
	movi.n	a2, 0
	j	.L488
.L494:
	movi.n	a2, 0
	j	.L488
.L495:
	mov.n	a2, a7
.L488:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC109, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	l32r	a8, .LC109
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC111, __ltdf2@PLT
	.literal .LC112, -2147483648
	.literal .LC114, __gedf2@PLT
	.literal .LC116, __muldf3@PLT
	.literal .LC117, __nedf2@PLT
	.literal .LC118, __adddf3@PLT
	.literal .LC119, 1071644672
	.literal .LC120, 1072693248
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
	l32r	a8, .LC111
	callx8	a8
	movi.n	a4, 0
	bgez	a10, .L499
	l32r	a10, .LC112
	xor	a8, a2, a10
	mov.n	a2, a8
	movi.n	a4, 1
	j	.L499
.L499:
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC114
	callx8	a8
	movi.n	a7, 0
	bltz	a10, .L517
	l32r	a5, .LC116
	l32r	a6, .LC114
.L503:
	addi.n	a7, a7, 1
	l32r	a12, .LC119
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a6
	bgez	a10, .L503
	j	.L504
.L517:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC117
	callx8	a8
	movi.n	a6, 1
	moveqz	a6, a10, a10
	l32r	a12, .LC119
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC111
	callx8	a8
	extui	a10, a10, 31, 1
	movi.n	a7, 0
	bnone	a6, a10, .L504
	l32r	a5, .LC118
	l32r	a6, .LC111
.L507:
	addi.n	a7, a7, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC119
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a6
	bltz	a10, .L507
.L504:
	l32i	a8, sp, 0
	s32i	a7, a8, 0
	beqz.n	a4, .L508
	l32r	a10, .LC112
	xor	a8, a2, a10
	mov.n	a2, a8
.L508:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC121, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a7, a2
	mov.n	a6, a3
	or	a3, a3, a2
	beqz.n	a3, .L523
	movi.n	a3, 0
	mov.n	a2, a3
	l32r	a8, .LC121
	s32i	a8, sp, 4
.L522:
	extui	a10, a6, 0, 1
	mull	a8, a4, a10
	s32i	a8, sp, 0
	mov.n	a11, a5
	l32i	a9, sp, 4
	callx8	a9
	l32i	a8, sp, 0
	add.n	a10, a8, a10
	add.n	a11, a3, a11
	movi.n	a8, 1
	bltu	a11, a3, .L521
	movi.n	a8, 0
.L521:
	add.n	a10, a2, a10
	add.n	a2, a8, a10
	mov.n	a3, a11
	ssai	31
	src	a4, a4, a5
	add.n	a5, a5, a5
	ssai	1
	src	a8, a7, a6
	srli	a7, a7, 1
	mov.n	a6, a8
	or	a8, a7, a8
	bnez.n	a8, .L522
	j	.L518
.L523:
	movi.n	a3, 0
	mov.n	a2, a3
.L518:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L540
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L526
.L540:
	movi.n	a8, 1
	j	.L534
.L530:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a10, a14
	bltu	a3, a2, .L528
	mov.n	a10, a15
.L528:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bnone	a11, a10, .L529
.L526:
	bgez	a3, .L530
.L534:
	movi.n	a10, 0
.L532:
	bltu	a2, a3, .L531
	sub	a2, a2, a3
	or	a10, a10, a8
.L531:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L532
	j	.L533
.L529:
	bnez.n	a8, .L534
	mov.n	a10, a8
.L533:
	moveqz	a2, a10, a4
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
	bne	a2, a9, .L550
	movi.n	a2, 0x3f
	beq	a3, a9, .L544
.L550:
	nsau	a9, a10
	nsau	a2, a8
	addi	a2, a2, 32
	movnez	a2, a9, a10
	addi.n	a2, a2, -1
	j	.L544
.L544:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L555
	movi.n	a2, 0
.L554:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L554
	j	.L552
.L555:
.L552:
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
	bgeu	a2, a3, .L558
.L561:
	bnez.n	a8, .L559
	j	.L560
.L558:
	add.n	a9, a3, a4
	bltu	a9, a2, .L561
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L562
	j	.L557
.L559:
	mov.n	a13, a2
	mov.n	a9, a3
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	loop	a8, .L564_LEND
.L564:
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	s32i	a10, a13, 0
	s32i	a11, a13, 4
	addi.n	a9, a9, 8
	addi.n	a13, a13, 8
	.L564_LEND:
.L560:
	bgeu	a12, a4, .L557
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L565:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L565
	j	.L557
.L562:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L562
.L557:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a8, a4, 1
	bgeu	a2, a3, .L574
.L577:
	bnez.n	a8, .L575
	j	.L576
.L574:
	add.n	a9, a3, a4
	bltu	a9, a2, .L577
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L578
	j	.L573
.L575:
	mov.n	a10, a2
	mov.n	a9, a3
	add.n	a8, a8, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L580_LEND
.L580:
	l16ui	a11, a9, 0
	s16i	a11, a10, 0
	addi.n	a9, a9, 2
	addi.n	a10, a10, 2
	.L580_LEND:
.L576:
	bbci	a4, 31, .L573
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	add.n	a2, a2, a4
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	j	.L573
.L578:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L578
.L573:
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
	bgeu	a2, a3, .L587
.L590:
	bnez.n	a8, .L588
	j	.L589
.L587:
	add.n	a9, a3, a4
	bltu	a9, a2, .L590
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L591
	j	.L586
.L588:
	mov.n	a10, a2
	mov.n	a9, a3
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L593_LEND
.L593:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, 4
	.L593_LEND:
.L589:
	bgeu	a12, a4, .L586
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L594:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L594
	j	.L586
.L591:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L591
.L586:
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
	.literal .LC122, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC122
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC123, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC123
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC124, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC124
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC125, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC125
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
	loop	a8, .L610_LEND
.L610:
	addi	a9, a2, 16
	bbs	a10, a9, .L608
	addi.n	a2, a2, 1
	.L610_LEND:
.L608:
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
	loop	a8, .L615_LEND
.L615:
	ssr	a2
	sra	a9, a10
	bbsi	a9, 31, .L613
	addi.n	a2, a2, 1
	.L615_LEND:
.L613:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC127, __gesf2@PLT
	.literal .LC128, __subsf3@PLT
	.literal .LC129, __fixsfsi@PLT
	.literal .LC130, 32768
	.literal .LC131, 1191182336
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a11, .LC131
	mov.n	a10, a2
	l32r	a8, .LC127
	callx8	a8
	bltz	a10, .L623
	l32r	a11, .LC131
	mov.n	a10, a2
	l32r	a8, .LC128
	callx8	a8
	l32r	a8, .LC129
	callx8	a8
	l32r	a8, .LC130
	add.n	a2, a10, a8
	j	.L618
.L623:
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	mov.n	a2, a10
.L618:
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
	loop	a9, .L625_LEND
.L625:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L625_LEND:
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
	loop	a9, .L629_LEND
.L629:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L629_LEND:
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L635
	movi.n	a2, 0
.L634:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L634
	j	.L632
.L635:
.L632:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L637
	beqz.n	a3, .L641
	movi.n	a2, 0
.L639:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	add.n	a2, a2, a8
	add.n	a9, a9, a9
	srli	a3, a3, 1
	bnez.n	a3, .L639
	j	.L637
.L641:
	mov.n	a2, a3
.L637:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L658
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L644
.L658:
	movi.n	a8, 1
	j	.L652
.L648:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a10, a14
	bltu	a3, a2, .L646
	mov.n	a10, a15
.L646:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bnone	a11, a10, .L647
.L644:
	bgez	a3, .L648
.L652:
	movi.n	a10, 0
.L650:
	bltu	a2, a3, .L649
	sub	a2, a2, a3
	or	a10, a10, a8
.L649:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L650
	j	.L651
.L647:
	bnez.n	a8, .L652
	mov.n	a10, a8
.L651:
	moveqz	a2, a10, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC132, __ltsf2@PLT
	.literal .LC133, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	mov.n	a7, a2
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC132
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L659
	movi.n	a2, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC133
	callx8	a8
	bgei	a10, 1, .L661
	movi.n	a2, 0
.L661:
	extui	a2, a2, 0, 8
.L659:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC134, __ltdf2@PLT
	.literal .LC135, __gtdf2@PLT
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
	l32r	a8, .LC134
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L663
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC135
	callx8	a8
	bgei	a10, 1, .L665
	movi.n	a2, 0
.L665:
	extui	a2, a2, 0, 8
.L663:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC136, __umulsidi3@PLT
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
	l32r	a8, .LC136
	callx8	a8
	add.n	a2, a7, a10
	mov.n	a3, a11
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC137, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC137
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
	bgez	a3, .L670
	neg	a3, a3
	movi.n	a7, 1
	j	.L671
.L670:
	beqz.n	a3, .L676
	movi.n	a7, 0
.L671:
	movi.n	a11, 0
	mov.n	a9, a11
	movi.n	a14, 1
	movi.n	a13, 0x1f
	movi.n	a15, 0
.L674:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	add.n	a11, a11, a8
	add.n	a10, a10, a10
	srai	a3, a3, 1
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
	movi.n	a12, 1
	moveqz	a12, a3, a3
	mov.n	a8, a14
	bgeu	a13, a9, .L673
	mov.n	a8, a15
.L673:
	bany	a12, a8, .L674
	j	.L672
.L676:
	mov.n	a7, a3
	mov.n	a11, a3
.L672:
	neg	a2, a11
	moveqz	a2, a11, a7
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC138, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	bgez	a2, .L679
	neg	a10, a2
	bgez	a3, .L685
	j	.L680
.L682:
	neg	a2, a10
	j	.L678
.L685:
	movi.n	a12, 0
	l32r	a8, .LC138
	callx8	a8
	j	.L682
.L684:
	movi.n	a12, 0
	l32r	a8, .LC138
	callx8	a8
	mov.n	a2, a10
	j	.L678
.L679:
	bgez	a3, .L684
	movi.n	a12, 0
	neg	a11, a3
	l32r	a8, .LC138
	callx8	a8
	j	.L682
.L680:
	movi.n	a12, 0
	neg	a11, a3
	l32r	a8, .LC138
	callx8	a8
	mov.n	a2, a10
.L678:
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC139, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a10, a2
	bgez	a2, .L687
	movi.n	a12, 1
	abs	a11, a3
	neg	a10, a2
	l32r	a8, .LC139
	callx8	a8
	neg	a2, a10
	j	.L686
.L687:
	movi.n	a12, 1
	abs	a11, a3
	l32r	a8, .LC139
	callx8	a8
	mov.n	a2, a10
.L686:
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 32
	extui	a10, a2, 0, 16
	extui	a8, a3, 0, 16
	movi.n	a9, 1
	bgeu	a8, a10, .L704
	movi.n	a15, 1
	movi.n	a7, 0
	mov.n	a14, a9
	movi.n	a13, 0
	j	.L690
.L704:
	movi.n	a9, 1
	j	.L698
.L694:
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
	add.n	a9, a9, a9
	extui	a9, a9, 0, 16
	mov.n	a11, a15
	bltu	a8, a10, .L692
	mov.n	a11, a7
.L692:
	mov.n	a12, a13
	movnez	a12, a14, a9
	bnone	a12, a11, .L693
.L690:
	sext	a11, a8, 15
	bgez	a11, .L694
.L698:
	movi.n	a11, 0
.L696:
	bltu	a10, a8, .L695
	sub	a10, a10, a8
	extui	a10, a10, 0, 16
	or	a11, a9, a11
	extui	a11, a11, 0, 16
.L695:
	srli	a9, a9, 1
	srli	a8, a8, 1
	bnez.n	a9, .L696
	j	.L697
.L693:
	bnez.n	a9, .L698
	mov.n	a11, a9
.L697:
	moveqz	a10, a11, a4
	mov.n	a2, a10
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L720
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L706
.L720:
	movi.n	a8, 1
	j	.L714
.L710:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a10, a14
	bltu	a3, a2, .L708
	mov.n	a10, a15
.L708:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bnone	a11, a10, .L709
.L706:
	bgez	a3, .L710
.L714:
	movi.n	a10, 0
.L712:
	bltu	a2, a3, .L711
	sub	a2, a2, a3
	or	a10, a10, a8
.L711:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L712
	j	.L713
.L709:
	bnez.n	a8, .L714
	mov.n	a10, a8
.L713:
	moveqz	a2, a10, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L722
	movi.n	a9, 0
	ssl	a4
	sll	a2, a3
	j	.L723
.L722:
	beqz.n	a4, .L724
	ssl	a4
	sll	a9, a3
	ssl	a4
	sll	a2, a2
	addi	a4, a4, -32
	neg	a4, a4
	ssr	a4
	srl	a8, a3
	or	a2, a2, a8
.L723:
	mov.n	a3, a9
.L724:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L727
	srai	a9, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L728
.L727:
	beqz.n	a4, .L729
	ssr	a4
	sra	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L728:
	mov.n	a2, a9
.L729:
	retw.n
	.size	__ashrdi3, .-__ashrdi3
	.literal_position
	.literal .LC140, 65280
	.literal .LC141, 16711680
	.align	4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	entry	sp, 32
	extui	a7, a2, 24, 8
	srli	a11, a2, 8
	l32r	a15, .LC140
	and	a11, a11, a15
	ssai	24
	src	a9, a2, a3
	l32r	a14, .LC141
	and	a9, a9, a14
	slli	a12, a2, 24
	slli	a10, a3, 8
	extui	a13, a3, 24, 8
	ssai	8
	src	a2, a2, a3
	slli	a8, a3, 24
	and	a2, a2, a15
	and	a10, a10, a14
	or	a11, a11, a7
	or	a9, a9, a11
	or	a8, a13, a8
	or	a2, a2, a8
	or	a2, a10, a2
	or	a3, a12, a9
	retw.n
	.size	__bswapdi2, .-__bswapdi2
	.align	4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	entry	sp, 32
	extui	a10, a2, 24, 8
	srli	a8, a2, 8
	extui	a8, a8, 8, 8
	slli	a8, a8, 8
	slli	a9, a2, 8
	extui	a9, a9, 16, 8
	slli	a9, a9, 16
	slli	a2, a2, 24
	or	a10, a10, a2
	or	a8, a8, a10
	or	a2, a9, a8
	retw.n
	.size	__bswapsi2, .-__bswapsi2
	.literal_position
	.literal .LC145, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	movi.n	a10, 1
	l32r	a8, .LC145
	bgeu	a8, a2, .L734
	movi.n	a10, 0
.L734:
	extui	a10, a10, 0, 1
	slli	a10, a10, 4
	addi	a8, a10, -16
	neg	a8, a8
	ssr	a8
	srl	a8, a2
	extui	a9, a8, 8, 8
	slli	a9, a9, 8
	nsau	a9, a9
	srli	a9, a9, 5
	slli	a9, a9, 3
	addi	a11, a9, -8
	neg	a11, a11
	ssr	a11
	srl	a8, a8
	add.n	a10, a9, a10
	movi	a9, 0xf0
	and	a9, a8, a9
	nsau	a9, a9
	srli	a9, a9, 5
	slli	a9, a9, 2
	addi	a11, a9, -4
	neg	a11, a11
	ssr	a11
	srl	a8, a8
	add.n	a9, a9, a10
	movi.n	a2, 0xc
	and	a2, a8, a2
	nsau	a2, a2
	srli	a2, a2, 5
	add.n	a2, a2, a2
	addi	a10, a2, -2
	neg	a10, a10
	ssr	a10
	srl	a8, a8
	add.n	a2, a2, a9
	extui	a9, a8, 1, 1
	movi.n	a10, 1
	xor	a9, a9, a10
	addi	a8, a8, -2
	neg	a8, a8
	movi.n	a10, 0
	moveqz	a8, a10, a9
	add.n	a2, a8, a2
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	blt	a8, a4, .L736
	movi.n	a2, 2
	blt	a4, a8, .L736
	movi.n	a2, 0
	bltu	a3, a5, .L736
	movi.n	a2, 2
	bltu	a5, a3, .L736
	movi.n	a2, 1
.L736:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC147, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC147
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
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a10, a8, 4
	ssr	a10
	srl	a8, a2
	extui	a9, a8, 0, 8
	nsau	a9, a9
	srli	a9, a9, 5
	ssa8l	a9
	srl	a8, a8
	addx8	a10, a9, a10
	extui	a9, a8, 0, 4
	nsau	a9, a9
	srli	a9, a9, 5
	slli	a9, a9, 2
	ssr	a9
	srl	a8, a8
	add.n	a9, a9, a10
	extui	a2, a8, 0, 2
	nsau	a2, a2
	srli	a2, a2, 5
	add.n	a2, a2, a2
	ssr	a2
	srl	a8, a8
	extui	a8, a8, 0, 2
	add.n	a2, a2, a9
	movi.n	a9, -1
	xor	a9, a8, a9
	extui	a9, a9, 0, 1
	srli	a8, a8, 1
	addi	a8, a8, -2
	neg	a8, a8
	neg	a9, a9
	and	a8, a9, a8
	add.n	a2, a8, a2
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L744
	movi.n	a9, 0
	ssr	a4
	srl	a3, a2
	j	.L745
.L744:
	beqz.n	a4, .L746
	ssr	a4
	srl	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L745:
	mov.n	a2, a9
.L746:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	extui	a8, a2, 0, 16
	extui	a9, a3, 0, 16
	mull	a10, a8, a9
	extui	a11, a10, 16, 16
	extui	a2, a2, 16, 16
	mull	a9, a9, a2
	add.n	a9, a9, a11
	extui	a12, a9, 16, 16
	extui	a9, a9, 0, 16
	extui	a11, a10, 0, 16
	extui	a10, a3, 16, 16
	mull	a8, a8, a10
	add.n	a8, a8, a9
	slli	a3, a8, 16
	extui	a8, a8, 16, 16
	mull	a9, a2, a10
	add.n	a2, a12, a9
	add.n	a2, a8, a2
	add.n	a3, a11, a3
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC148, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC148
	callx8	a8
	mull	a5, a5, a2
	mull	a4, a4, a3
	add.n	a5, a5, a4
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
	.literal .LC149, 27030
	.align	4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	entry	sp, 32
	xor	a3, a3, a2
	extui	a8, a3, 16, 16
	xor	a8, a8, a3
	srli	a9, a8, 8
	xor	a9, a9, a8
	srli	a8, a9, 4
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	l32r	a2, .LC149
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC150, 27030
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
	l32r	a2, .LC150
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC151, 1431655765
	.literal .LC152, 858993459
	.literal .LC153, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	l32r	a10, .LC151
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L755
	addi.n	a2, a2, -1
.L755:
	sub	a3, a3, a8
	ssai	2
	src	a9, a2, a3
	srli	a10, a2, 2
	l32r	a8, .LC152
	and	a10, a10, a8
	and	a9, a9, a8
	and	a2, a2, a8
	and	a3, a3, a8
	add.n	a10, a10, a2
	add.n	a9, a9, a3
	bgeu	a9, a3, .L756
	addi.n	a10, a10, 1
.L756:
	ssai	4
	src	a8, a10, a9
	srli	a11, a10, 4
	add.n	a10, a11, a10
	add.n	a8, a8, a9
	bgeu	a8, a9, .L757
	addi.n	a10, a10, 1
.L757:
	l32r	a9, .LC153
	and	a10, a10, a9
	and	a8, a8, a9
	add.n	a8, a8, a10
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 7
	retw.n
	.size	__popcountdi2, .-__popcountdi2
	.literal_position
	.literal .LC154, 1431655765
	.literal .LC155, 858993459
	.literal .LC156, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	srli	a8, a2, 1
	l32r	a9, .LC154
	and	a8, a8, a9
	sub	a2, a2, a8
	srli	a9, a2, 2
	l32r	a8, .LC155
	and	a9, a9, a8
	and	a2, a2, a8
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC156
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC158, __muldf3@PLT
	.literal .LC159, __divdf3@PLT
	.literal .LC160, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a5, a4
	s32i	a4, sp, 0
	l32r	a2, .LC160
	movi.n	a3, 0
	l32r	a4, .LC158
.L762:
	bbci	a5, 31, .L760
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC158
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L760:
	extui	a8, a5, 31, 1
	add.n	a8, a8, a5
	srai	a5, a8, 1
	beqz.n	a5, .L761
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a4
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L762
.L761:
	l32i	a8, sp, 0
	bgez	a8, .L759
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a10, .LC160
	movi.n	a11, 0
	l32r	a8, .LC159
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L759:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC162, __mulsf3@PLT
	.literal .LC163, __divsf3@PLT
	.literal .LC164, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a7, a2
	mov.n	a6, a3
	l32r	a2, .LC164
	l32r	a4, .LC162
	mov.n	a5, a4
.L767:
	bbci	a6, 31, .L765
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a4
	mov.n	a2, a10
.L765:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L766
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a5
	mov.n	a7, a10
	j	.L767
.L766:
	bgez	a3, .L764
	mov.n	a11, a2
	l32r	a10, .LC164
	l32r	a8, .LC163
	callx8	a8
	mov.n	a2, a10
.L764:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L770
	movi.n	a2, 2
	bltu	a4, a8, .L770
	movi.n	a2, 0
	bltu	a3, a5, .L770
	movi.n	a2, 2
	bltu	a5, a3, .L770
	movi.n	a2, 1
.L770:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC165, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC165
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
