	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 32
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
	add.n	a4, a2, a4
	mov.n	a8, a2
	extui	a3, a3, 0, 8
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
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a4, .L57
	mov.n	a8, a9
	addi.n	a4, a4, -1
	add.n	a9, a4, a9
	j	.L58
.L60:
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
.L58:
	l8ui	a10, a8, 0
	beqz.n	a10, .L59
	l8ui	a12, a3, 0
	sub	a10, a9, a8
	movi.n	a11, 1
	moveqz	a11, a10, a10
	movi.n	a10, 1
	moveqz	a10, a12, a12
	bnone	a11, a10, .L59
	l8ui	a11, a8, 0
	beq	a11, a12, .L60
.L59:
	l8ui	a2, a8, 0
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
	mov.n	a8, a2
	add.n	a10, a2, a4
	j	.L63
.L64:
	l8ui	a9, a8, 1
	s8i	a9, a3, 0
	l8ui	a9, a8, 0
	s8i	a9, a3, 1
	addi.n	a3, a3, 2
	addi.n	a8, a8, 2
.L63:
	sub	a9, a10, a8
	bgei	a9, 2, .L64
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
	bltui	a9, 3, .L88
	movi.n	a2, 0
.L88:
	extui	a2, a2, 0, 8
.L87:
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
	mov.n	a8, a2
	addi	a9, a2, -48
	movi.n	a10, 9
	movi.n	a2, 1
	bgeu	a10, a9, .L103
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L104
	movi.n	a2, 0
.L104:
	extui	a2, a2, 0, 8
.L103:
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
	bnez.n	a10, .L108
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC11
	callx8	a8
	bnez.n	a10, .L111
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC12
	callx8	a8
	blti	a10, 1, .L114
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC13
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L108
.L111:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L108
.L114:
	movi.n	a2, 0
	movi.n	a3, 0
.L108:
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
	bnez.n	a10, .L116
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC15
	callx8	a8
	bnez.n	a10, .L119
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC16
	callx8	a8
	blti	a10, 1, .L122
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC17
	callx8	a8
	mov.n	a2, a10
	j	.L116
.L119:
	mov.n	a2, a3
	j	.L116
.L122:
	movi.n	a2, 0
.L116:
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
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L129
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L130
	l32r	a8, .LC19
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L125
	bgez	a2, .L124
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L124
.L125:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC20
	callx8	a8
	bgez	a10, .L124
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L124
.L129:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L124
.L130:
.L124:
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
	mov.n	a7, a2
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L136
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L137
	l32r	a8, .LC22
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L134
	movgez	a3, a2, a2
	mov.n	a2, a3
	j	.L133
.L134:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC23
	callx8	a8
	movltz	a7, a3, a10
	mov.n	a2, a7
	j	.L133
.L136:
	mov.n	a2, a3
	j	.L133
.L137:
.L133:
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
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L145
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L146
	l32r	a8, .LC25
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L141
	bgez	a2, .L140
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L140
.L141:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC26
	callx8	a8
	bgez	a10, .L140
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L140
.L145:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L140
.L146:
.L140:
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
	bnez.n	a10, .L154
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L155
	l32r	a8, .LC28
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L150
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a6, .L149
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L149
.L150:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC29
	callx8	a8
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a10, .L149
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L149
.L154:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L149
.L155:
.L149:
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
	mov.n	a7, a2
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L161
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L162
	l32r	a8, .LC31
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L159
	movgez	a7, a3, a2
	mov.n	a2, a7
	j	.L158
.L159:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC32
	callx8	a8
	movltz	a3, a2, a10
	mov.n	a2, a3
	j	.L158
.L161:
	mov.n	a2, a3
	j	.L158
.L162:
.L158:
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
	bnez.n	a10, .L170
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC33
	callx8	a8
	bnez.n	a10, .L171
	l32r	a8, .LC34
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L166
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a6, .L165
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L165
.L166:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC35
	callx8	a8
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a10, .L165
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L165
.L170:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L165
.L171:
.L165:
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
	l32r	a9, .LC36
	l32r	a10, .LC37
	j	.L174
.L175:
	extui	a8, a2, 0, 6
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	srli	a2, a2, 6
.L174:
	bnez.n	a2, .L175
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
	bnez.n	a3, .L180
	movi.n	a8, 0
	s32i	a8, a2, 4
	s32i	a8, a2, 0
	j	.L179
.L180:
	l32i	a8, a3, 0
	s32i	a8, a2, 0
	s32i	a3, a2, 4
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L179
	s32i	a2, a8, 4
.L179:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L183
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L183:
	l32i	a8, a2, 4
	beqz.n	a8, .L182
	l32i	a9, a2, 0
	s32i	a9, a8, 0
.L182:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC43, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	mov.n	a9, a3
	s32i	a3, sp, 0
	s32i	a4, sp, 4
	l32i	a3, a4, 0
	mov.n	a4, a9
	movi.n	a7, 0
	j	.L186
.L189:
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a6
	add.n	a4, a4, a5
	bnez.n	a10, .L187
	mull	a7, a7, a5
	l32i	a8, sp, 0
	add.n	a2, a8, a7
	j	.L188
.L187:
	addi.n	a7, a7, 1
.L186:
	bne	a7, a3, .L189
	addi.n	a8, a3, 1
	l32i	a9, sp, 4
	s32i	a8, a9, 0
	mull	a10, a5, a3
	mov.n	a12, a5
	mov.n	a11, a2
	l32i	a8, sp, 0
	add.n	a10, a8, a10
	l32r	a8, .LC43
	callx8	a8
	mov.n	a2, a10
.L188:
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	mov.n	a8, a3
	s32i	a3, sp, 0
	l32i	a3, a4, 0
	mov.n	a4, a8
	movi.n	a7, 0
	j	.L191
.L194:
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a6
	add.n	a4, a4, a5
	bnez.n	a10, .L192
	mull	a7, a7, a5
	l32i	a8, sp, 0
	add.n	a2, a8, a7
	j	.L193
.L192:
	addi.n	a7, a7, 1
.L191:
	bne	a7, a3, .L194
	movi.n	a2, 0
.L193:
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
	l32r	a7, .LC44
	j	.L197
.L198:
	addi.n	a2, a2, 1
.L197:
	l8ui	a10, a2, 0
	callx8	a7
	bnez.n	a10, .L198
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L204
	movi.n	a9, 0x2d
	movi.n	a12, 0
	bne	a8, a9, .L200
	movi.n	a12, 1
	j	.L199
.L204:
	movi.n	a12, 0
.L199:
	addi.n	a2, a2, 1
.L200:
	mov.n	a8, a2
	movi.n	a9, 0
	movi.n	a11, 9
	j	.L201
.L202:
	addx4	a9, a9, a9
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	subx2	a9, a9, a10
	addi.n	a8, a8, 1
.L201:
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	bgeu	a11, a10, .L202
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
	l32r	a7, .LC45
	j	.L208
.L209:
	addi.n	a2, a2, 1
.L208:
	l8ui	a10, a2, 0
	callx8	a7
	bnez.n	a10, .L209
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L215
	movi.n	a9, 0x2d
	movi.n	a12, 0
	bne	a8, a9, .L211
	movi.n	a12, 1
	j	.L210
.L215:
	movi.n	a12, 0
.L210:
	addi.n	a2, a2, 1
.L211:
	mov.n	a8, a2
	movi.n	a9, 0
	movi.n	a11, 9
	j	.L212
.L213:
	addx4	a9, a9, a9
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	subx2	a9, a9, a10
	addi.n	a8, a8, 1
.L212:
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	bgeu	a11, a10, .L213
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
	entry	sp, 32
	mov.n	a7, a2
	l32r	a6, .LC46
	j	.L219
.L220:
	addi.n	a7, a7, 1
.L219:
	l8ui	a10, a7, 0
	callx8	a6
	bnez.n	a10, .L220
	l8ui	a8, a7, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L228
	movi.n	a9, 0x2d
	movi.n	a3, 0
	bne	a8, a9, .L222
	movi.n	a3, 1
	j	.L221
.L228:
	movi.n	a3, 0
.L221:
	addi.n	a7, a7, 1
.L222:
	movi.n	a11, 0
	mov.n	a2, a11
	movi.n	a5, 9
	movi.n	a6, 0xa
	l32r	a4, .LC47
	j	.L223
.L225:
	mull	a2, a6, a2
	mov.n	a10, a6
	callx8	a4
	add.n	a2, a2, a10
	l8ui	a8, a7, 0
	addi	a8, a8, -48
	srai	a9, a8, 31
	sub	a2, a2, a9
	bgeu	a11, a8, .L224
	addi.n	a2, a2, -1
.L224:
	sub	a11, a11, a8
	addi.n	a7, a7, 1
.L223:
	l8ui	a8, a7, 0
	addi	a8, a8, -48
	bgeu	a5, a8, .L225
	bnez.n	a3, .L230
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a11, a11
	sub	a2, a2, a8
	neg	a3, a11
	j	.L226
.L230:
	mov.n	a3, a11
.L226:
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 32
	j	.L232
.L236:
	srli	a7, a4, 1
	mull	a7, a7, a5
	add.n	a7, a3, a7
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a6
	bgez	a10, .L233
	srli	a4, a4, 1
	j	.L232
.L233:
	blti	a10, 1, .L237
	add.n	a3, a7, a5
	srli	a8, a4, 1
	addi.n	a4, a4, -1
	sub	a4, a4, a8
.L232:
	bnez.n	a4, .L236
	movi.n	a2, 0
	j	.L235
.L237:
	mov.n	a2, a7
.L235:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a2, sp, 0
	j	.L239
.L242:
	srai	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	mov.n	a12, a7
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L240
	blti	a10, 1, .L241
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
.L241:
	srai	a4, a4, 1
.L239:
	bnez.n	a4, .L242
	movi.n	a2, 0
.L240:
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
	bgeu	a3, a8, .L247
	addi.n	a2, a2, -1
.L247:
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
	bgeu	a3, a8, .L253
	addi.n	a2, a2, -1
.L253:
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
	j	.L256
.L258:
	addi.n	a2, a2, 4
.L256:
	l32i	a8, a2, 0
	beqz.n	a8, .L257
	bne	a3, a8, .L258
.L257:
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
	mov.n	a8, a2
	j	.L262
.L264:
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L262:
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	bne	a10, a9, .L263
	beqz.n	a10, .L263
	l32i	a9, a3, 0
	bnez.n	a9, .L264
.L263:
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L265
	movi.n	a2, 1
	blt	a9, a10, .L266
	movi.n	a2, 0
.L266:
	extui	a2, a2, 0, 8
.L265:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L269:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L269
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	mov.n	a8, a2
	j	.L272
.L273:
	addi.n	a8, a8, 4
.L272:
	l32i	a9, a8, 0
	bnez.n	a9, .L273
	sub	a2, a8, a2
	srai	a2, a2, 2
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a8, a2
	j	.L275
.L277:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L275:
	beqz.n	a4, .L276
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	bne	a10, a9, .L276
	beqz.n	a10, .L276
	l32i	a9, a3, 0
	bnez.n	a9, .L277
.L276:
	movi.n	a2, 0
	beqz.n	a4, .L278
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L278
	movi.n	a2, 1
	blt	a9, a10, .L279
	movi.n	a2, 0
.L279:
	extui	a2, a2, 0, 8
.L278:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	j	.L283
.L285:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
.L283:
	beqz.n	a4, .L284
	l32i	a8, a2, 0
	bne	a3, a8, .L285
.L284:
	movi.n	a8, 0
	moveqz	a2, a8, a4
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a2
	j	.L289
.L291:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L289:
	beqz.n	a4, .L290
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	beq	a10, a9, .L291
.L290:
	movi.n	a2, 0
	beqz.n	a4, .L292
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L292
	movi.n	a2, 1
	blt	a9, a10, .L293
	movi.n	a2, 0
.L293:
	extui	a2, a2, 0, 8
.L292:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a8, a2
	j	.L297
.L298:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L297:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L298
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L300
	sub	a8, a2, a3
	slli	a9, a4, 2
	bltu	a8, a9, .L301
	mov.n	a8, a2
	j	.L302
.L301:
	addi.n	a4, a4, -1
	addx4	a8, a4, a3
	addx4	a4, a4, a2
	addi	a3, a3, -4
	j	.L303
.L304:
	l32i	a9, a8, 0
	s32i	a9, a4, 0
	addi	a8, a8, -4
	addi	a4, a4, -4
.L303:
	bne	a8, a3, .L304
	j	.L300
.L305:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L302:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L305
.L300:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	mov.n	a8, a2
	j	.L307
.L308:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
.L307:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L308
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a8, a3
	bgeu	a2, a3, .L310
	add.n	a9, a2, a4
	add.n	a8, a3, a4
	j	.L311
.L312:
	addi.n	a9, a9, -1
	addi.n	a8, a8, -1
	l8ui	a10, a9, 0
	s8i	a10, a8, 0
.L311:
	bne	a9, a2, .L312
	j	.L309
.L310:
	beq	a2, a3, .L309
	mov.n	a9, a2
	add.n	a2, a2, a4
	j	.L314
.L315:
	l8ui	a10, a9, 0
	s8i	a10, a8, 0
	addi.n	a9, a9, 1
	addi.n	a8, a8, 1
.L314:
	bne	a9, a2, .L315
.L309:
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
	.literal .LC56, 16711680
	.literal .LC57, 65280
	.align	4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	entry	sp, 32
	extui	a8, a2, 24, 8
	l32r	a10, .LC56
	and	a9, a2, a10
	srli	a9, a9, 8
	or	a9, a9, a8
	l32r	a11, .LC57
	and	a8, a2, a11
	slli	a12, a8, 8
	or	a9, a9, a12
	slli	a2, a2, 24
	or	a8, a3, a8
	extui	a8, a8, 24, 8
	or	a9, a9, a2
	and	a10, a3, a10
	srli	a12, a10, 8
	slli	a10, a10, 24
	or	a8, a8, a12
	and	a11, a3, a11
	slli	a11, a11, 8
	or	a8, a8, a11
	slli	a2, a3, 24
	or	a2, a8, a2
	or	a3, a9, a10
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 32
	movi.n	a8, 0
	j	.L330
.L333:
	ssr	a8
	srl	a9, a2
	bbci	a9, 31, .L331
	addi.n	a2, a8, 1
	j	.L332
.L331:
	addi.n	a8, a8, 1
.L330:
	bnei	a8, 32, .L333
	movi.n	a2, 0
.L332:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L335
	movi.n	a2, 1
	j	.L336
.L337:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
.L336:
	bbci	a8, 31, .L337
.L335:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC59, __ltsf2@PLT
	.literal .LC61, __gtsf2@PLT
	.literal .LC62, 2139095039
	.literal .LC63, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	mov.n	a7, a2
	l32r	a11, .LC63
	mov.n	a10, a2
	l32r	a8, .LC59
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L340
	l32r	a11, .LC62
	mov.n	a10, a7
	l32r	a8, .LC61
	callx8	a8
	bgei	a10, 1, .L341
	movi.n	a2, 0
.L341:
	extui	a2, a2, 0, 8
.L340:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC65, __ltdf2@PLT
	.literal .LC67, __gtdf2@PLT
	.literal .LC68, 2146435071
	.literal .LC69, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC69
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC65
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L344
	l32r	a12, .LC68
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC67
	callx8	a8
	bgei	a10, 1, .L345
	movi.n	a2, 0
.L345:
	extui	a2, a2, 0, 8
.L344:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC71, __ltdf2@PLT
	.literal .LC73, __gtdf2@PLT
	.literal .LC74, 2146435071
	.literal .LC75, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC75
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC71
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L348
	l32r	a12, .LC74
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC73
	callx8	a8
	bgei	a10, 1, .L349
	movi.n	a2, 0
.L349:
	extui	a2, a2, 0, 8
.L348:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC76, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	mov.n	a10, a3
	l32r	a8, .LC76
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC79, __unordsf2@PLT
	.literal .LC80, __addsf3@PLT
	.literal .LC81, __nesf2@PLT
	.literal .LC82, __mulsf3@PLT
	.literal .LC83, 1056964608
	.literal .LC84, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC79
	callx8	a8
	bnez.n	a10, .L353
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC80
	callx8	a8
	mov.n	a11, a10
	mov.n	a10, a2
	l32r	a8, .LC81
	callx8	a8
	beqz.n	a10, .L353
	l32r	a7, .LC83
	l32r	a8, .LC84
	movgez	a7, a8, a3
	l32r	a5, .LC82
	mov.n	a6, a5
.L357:
	bbci	a3, 31, .L356
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L356:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L353
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	mov.n	a7, a10
	j	.L357
.L353:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC87, __unorddf2@PLT
	.literal .LC88, __adddf3@PLT
	.literal .LC89, __nedf2@PLT
	.literal .LC90, __muldf3@PLT
	.literal .LC91, 1071644672
	.literal .LC92, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC87
	callx8	a8
	bnez.n	a10, .L361
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC88
	callx8	a8
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC89
	callx8	a8
	beqz.n	a10, .L361
	l32r	a6, .LC92
	movi.n	a7, 0
	bgez	a4, .L363
	l32r	a6, .LC91
	movi.n	a7, 0
.L363:
	l32r	a5, .LC90
.L365:
	bbci	a4, 31, .L364
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC90
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L364:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L361
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L365
.L361:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC95, __unorddf2@PLT
	.literal .LC96, __adddf3@PLT
	.literal .LC97, __nedf2@PLT
	.literal .LC98, __muldf3@PLT
	.literal .LC99, 1071644672
	.literal .LC100, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC95
	callx8	a8
	bnez.n	a10, .L369
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC96
	callx8	a8
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC97
	callx8	a8
	beqz.n	a10, .L369
	l32r	a6, .LC100
	movi.n	a7, 0
	bgez	a4, .L371
	l32r	a6, .LC99
	movi.n	a7, 0
.L371:
	l32r	a5, .LC98
.L373:
	bbci	a4, 31, .L372
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC98
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L372:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L369
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L373
.L369:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	mov.n	a8, a2
	add.n	a4, a2, a4
	j	.L377
.L378:
	l8ui	a10, a3, 0
	l8ui	a9, a8, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
.L377:
	bne	a8, a4, .L378
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC101, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC101
	callx8	a8
	add.n	a10, a2, a10
	j	.L380
.L382:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
.L380:
	beqz.n	a4, .L381
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L382
.L381:
	bnez.n	a4, .L383
	movi.n	a8, 0
	s8i	a8, a10, 0
.L383:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	j	.L385
.L387:
	addi.n	a2, a2, 1
.L385:
	beq	a2, a3, .L386
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L387
.L386:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	j	.L389
.L391:
	l8ui	a10, a8, 0
	l8ui	a9, a2, 0
	addi.n	a8, a8, 1
	beq	a10, a9, .L390
.L392:
	l8ui	a9, a8, 0
	bnez.n	a9, .L391
	addi.n	a2, a2, 1
.L389:
	l8ui	a8, a2, 0
	beqz.n	a8, .L394
	mov.n	a8, a3
	j	.L392
.L394:
	movi.n	a2, 0
.L390:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L397:
	l8ui	a9, a8, 0
	sub	a9, a3, a9
	moveqz	a2, a8, a9
	addi.n	a8, a8, 1
	addi.n	a9, a8, -1
	l8ui	a9, a9, 0
	bnez.n	a9, .L397
	retw.n
	.size	strrchr, .-strrchr
	.literal_position
	.literal .LC102, strlen@PLT
	.literal .LC103, strncmp@PLT
	.literal .LC104, strchr@PLT
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a10, a3
	l32r	a8, .LC102
	callx8	a8
	mov.n	a7, a10
	beqz.n	a10, .L401
	l8ui	a5, a3, 0
	l32r	a6, .LC104
	l32r	a4, .LC103
	j	.L402
.L403:
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L401
	addi.n	a2, a2, 1
.L402:
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a6
	mov.n	a2, a10
	bnez.n	a10, .L403
.L401:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC106, __ltdf2@PLT
	.literal .LC107, __gtdf2@PLT
	.literal .LC108, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC106
	callx8	a8
	bgez	a10, .L407
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC107
	callx8	a8
	bgei	a10, 1, .L409
.L407:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC107
	callx8	a8
	blti	a10, 1, .L417
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC106
	callx8	a8
	mov.n	a2, a6
	mov.n	a3, a7
	bgez	a10, .L410
.L409:
	l32r	a8, .LC108
	xor	a2, a6, a8
	mov.n	a3, a7
	j	.L410
.L417:
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L410
.L410:
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC109, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	mov.n	a8, a2
	sub	a7, a3, a5
	add.n	a7, a2, a7
	beqz.n	a5, .L420
	movi.n	a9, 1
	bltu	a3, a5, .L421
	movi.n	a9, 0
.L421:
	extui	a9, a9, 0, 8
	bnez.n	a9, .L426
	mov.n	a2, a8
	addi.n	a3, a4, 1
	addi.n	a6, a5, -1
	l32r	a5, .LC109
	j	.L422
.L424:
	l8ui	a9, a2, 0
	l8ui	a8, a4, 0
	bne	a9, a8, .L423
	mov.n	a12, a6
	mov.n	a11, a3
	addi.n	a10, a2, 1
	callx8	a5
	beqz.n	a10, .L420
.L423:
	addi.n	a2, a2, 1
.L422:
	bgeu	a7, a2, .L424
	movi.n	a2, 0
	j	.L420
.L426:
	movi.n	a2, 0
.L420:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC110, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	l32r	a8, .LC110
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC112, __ltdf2@PLT
	.literal .LC113, -2147483648
	.literal .LC115, __gedf2@PLT
	.literal .LC117, __muldf3@PLT
	.literal .LC118, __nedf2@PLT
	.literal .LC119, __adddf3@PLT
	.literal .LC120, 1071644672
	.literal .LC121, 1072693248
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
	l32r	a8, .LC112
	callx8	a8
	movi.n	a7, 0
	bgez	a10, .L430
	l32r	a10, .LC113
	xor	a8, a2, a10
	mov.n	a2, a8
	movi.n	a7, 1
	j	.L430
.L430:
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC115
	callx8	a8
	movi.n	a4, 0
	bltz	a10, .L447
	l32r	a6, .LC115
	l32r	a5, .LC117
	j	.L432
.L434:
	addi.n	a4, a4, 1
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L432:
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	bgez	a10, .L434
	j	.L435
.L447:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC118
	callx8	a8
	movi.n	a6, 1
	moveqz	a6, a10, a10
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC112
	callx8	a8
	extui	a10, a10, 31, 1
	movi.n	a4, 0
	bnone	a10, a6, .L435
	j	.L443
.L439:
	addi.n	a4, a4, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L438
.L443:
	movi.n	a4, 0
	l32r	a6, .LC112
	l32r	a5, .LC119
.L438:
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	bltz	a10, .L439
.L435:
	l32i	a8, sp, 0
	s32i	a4, a8, 0
	beqz.n	a7, .L440
	l32r	a10, .LC113
	xor	a8, a2, a10
	mov.n	a2, a8
.L440:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC122, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a6, a3
	movi.n	a3, 0
	s32i	a3, sp, 0
	j	.L449
.L451:
	extui	a11, a6, 0, 1
	mull	a7, a4, a11
	mov.n	a10, a5
	l32r	a8, .LC122
	callx8	a8
	add.n	a7, a7, a10
	l32i	a8, sp, 0
	add.n	a7, a8, a7
	add.n	a3, a3, a11
	bgeu	a3, a11, .L450
	addi.n	a7, a7, 1
.L450:
	ssai	31
	src	a4, a4, a5
	add.n	a5, a5, a5
	ssai	1
	src	a6, a2, a6
	srli	a2, a2, 1
	s32i	a7, sp, 0
.L449:
	or	a8, a2, a6
	bnez.n	a8, .L451
	l32i	a2, sp, 0
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a11, 1
	movi.n	a12, 0
	j	.L453
.L457:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L453:
	mov.n	a9, a11
	bltu	a3, a2, .L454
	mov.n	a9, a12
.L454:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bany	a10, a9, .L455
	movi.n	a9, 0
	j	.L456
.L455:
	bgez	a3, .L457
	movi.n	a9, 0
	j	.L456
.L460:
	bltu	a2, a3, .L459
	sub	a2, a2, a3
	or	a9, a9, a8
.L459:
	srli	a8, a8, 1
	srli	a3, a3, 1
.L456:
	bnez.n	a8, .L460
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
	srai	a8, a2, 31
	xor	a9, a8, a2
	xor	a8, a8, a3
	or	a10, a9, a8
	movi.n	a2, 0x3f
	beqz.n	a10, .L467
	nsau	a10, a9
	nsau	a8, a8
	addi	a8, a8, 32
	movnez	a8, a10, a9
	addi.n	a2, a8, -1
.L467:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	j	.L473
.L474:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a3, a3, a3
	add.n	a2, a8, a2
.L473:
	bnez.n	a9, .L474
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	srli	a13, a4, 3
	movi.n	a8, -8
	and	a8, a4, a8
	bgeu	a2, a3, .L476
.L478:
	mov.n	a9, a3
	mov.n	a12, a2
	addx8	a13, a13, a3
	j	.L477
.L476:
	add.n	a9, a3, a4
	bltu	a9, a2, .L478
	j	.L479
.L480:
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	s32i	a10, a12, 0
	s32i	a11, a12, 4
	addi.n	a9, a9, 8
	addi.n	a12, a12, 8
.L477:
	bne	a9, a13, .L480
	j	.L481
.L482:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
.L481:
	bltu	a8, a4, .L482
	j	.L475
.L484:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L479:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L484
.L475:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a11, a4, 1
	bgeu	a2, a3, .L486
.L488:
	mov.n	a8, a3
	mov.n	a9, a2
	addx2	a11, a11, a3
	j	.L487
.L486:
	add.n	a8, a3, a4
	bltu	a8, a2, .L488
	j	.L489
.L490:
	l16ui	a10, a8, 0
	s16i	a10, a9, 0
	addi.n	a8, a8, 2
	addi.n	a9, a9, 2
.L487:
	bne	a8, a11, .L490
	bbci	a4, 31, .L485
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	add.n	a2, a2, a4
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	j	.L485
.L492:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L489:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L492
.L485:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	srli	a12, a4, 2
	movi.n	a8, -4
	and	a8, a4, a8
	bgeu	a2, a3, .L494
.L496:
	mov.n	a9, a3
	mov.n	a10, a2
	addx4	a12, a12, a3
	j	.L495
.L494:
	add.n	a9, a3, a4
	bltu	a9, a2, .L496
	j	.L497
.L498:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, 4
.L495:
	bne	a9, a12, .L498
	j	.L499
.L500:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
.L499:
	bltu	a8, a4, .L500
	j	.L493
.L502:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L497:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L502
.L493:
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
	.literal .LC123, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
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
	remu	a2, a2, a3
	retw.n
	.size	__umodi, .-__umodi
	.align	4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	entry	sp, 32
	extui	a9, a2, 0, 16
	movi.n	a2, 0
	j	.L510
.L512:
	addi	a8, a2, 16
	bbs	a9, a8, .L511
	addi.n	a2, a2, 1
.L510:
	bnei	a2, 16, .L512
.L511:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a9, a2, 0, 16
	movi.n	a2, 0
	j	.L514
.L516:
	ssr	a2
	sra	a8, a9
	bbsi	a8, 31, .L515
	addi.n	a2, a2, 1
.L514:
	bnei	a2, 16, .L516
.L515:
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
	l32r	a11, .LC132
	mov.n	a10, a2
	l32r	a8, .LC128
	callx8	a8
	bltz	a10, .L522
	l32r	a11, .LC132
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	l32r	a8, .LC130
	callx8	a8
	l32r	a8, .LC131
	add.n	a2, a10, a8
	j	.L520
.L522:
	mov.n	a10, a2
	l32r	a8, .LC130
	callx8	a8
	mov.n	a2, a10
.L520:
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	mov.n	a8, a2
	j	.L524
.L525:
	ssr	a8
	sra	a9, a10
	extui	a9, a9, 0, 1
	addi.n	a8, a8, 1
	add.n	a2, a9, a2
.L524:
	bnei	a8, 16, .L525
	extui	a2, a2, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	mov.n	a8, a2
	j	.L527
.L528:
	ssr	a8
	sra	a9, a10
	extui	a9, a9, 0, 1
	addi.n	a8, a8, 1
	add.n	a2, a9, a2
.L527:
	bnei	a8, 16, .L528
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	j	.L530
.L531:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a3, a3, a3
	add.n	a2, a8, a2
.L530:
	bnez.n	a9, .L531
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L533
	j	.L534
.L535:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	add.n	a9, a9, a9
	srli	a3, a3, 1
	add.n	a2, a8, a2
.L534:
	bnez.n	a3, .L535
.L533:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a11, 1
	movi.n	a12, 0
	j	.L538
.L542:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L538:
	mov.n	a9, a11
	bltu	a3, a2, .L539
	mov.n	a9, a12
.L539:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bany	a10, a9, .L540
	movi.n	a9, 0
	j	.L541
.L540:
	bgez	a3, .L542
	movi.n	a9, 0
	j	.L541
.L545:
	bltu	a2, a3, .L544
	sub	a2, a2, a3
	or	a9, a9, a8
.L544:
	srli	a8, a8, 1
	srli	a3, a3, 1
.L541:
	bnez.n	a8, .L545
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
	mov.n	a7, a2
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC133
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L549
	movi.n	a2, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC134
	callx8	a8
	bgei	a10, 1, .L550
	movi.n	a2, 0
.L550:
	extui	a2, a2, 0, 8
.L549:
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
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC135
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L553
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC136
	callx8	a8
	bgei	a10, 1, .L554
	movi.n	a2, 0
.L554:
	extui	a2, a2, 0, 8
.L553:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC137, __umulsidi3@PLT
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
	l32r	a8, .LC137
	callx8	a8
	add.n	a2, a7, a10
	mov.n	a3, a11
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC138, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
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
	mov.n	a10, a2
	movi.n	a7, 0
	bgez	a3, .L559
	neg	a3, a3
	movi.n	a7, 1
.L559:
	movi.n	a11, 0
	mov.n	a9, a11
	movi.n	a14, 1
	movi.n	a13, 0x1f
	movi.n	a15, 0
	j	.L560
.L562:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	add.n	a10, a10, a10
	srai	a3, a3, 1
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
	add.n	a11, a11, a8
.L560:
	movi.n	a12, 1
	moveqz	a12, a3, a3
	mov.n	a8, a14
	bgeu	a13, a9, .L561
	mov.n	a8, a15
.L561:
	bany	a12, a8, .L562
	neg	a2, a11
	moveqz	a2, a11, a7
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC139, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a3, 0
	bgez	a2, .L567
	neg	a10, a2
	movi.n	a3, 1
.L567:
	bgez	a11, .L568
	neg	a11, a11
	movi.n	a8, 1
	xor	a3, a8, a3
.L568:
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
	mov.n	a10, a2
	movi.n	a2, 0
	bgez	a10, .L572
	neg	a10, a10
	movi.n	a2, 1
.L572:
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
	extui	a9, a2, 0, 16
	extui	a3, a3, 0, 16
	movi.n	a8, 1
	movi.n	a12, 1
	movi.n	a13, 0
	j	.L576
.L580:
	add.n	a3, a3, a3
	extui	a3, a3, 0, 16
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
.L576:
	mov.n	a10, a12
	bltu	a3, a9, .L577
	mov.n	a10, a13
.L577:
	movi.n	a11, 1
	moveqz	a11, a8, a8
	bany	a11, a10, .L578
	movi.n	a2, 0
	j	.L579
.L578:
	sext	a10, a3, 15
	bgez	a10, .L580
	movi.n	a2, 0
	j	.L579
.L583:
	bltu	a9, a3, .L582
	sub	a9, a9, a3
	extui	a9, a9, 0, 16
	or	a2, a2, a8
.L582:
	srli	a8, a8, 1
	srli	a3, a3, 1
.L579:
	bnez.n	a8, .L583
	movnez	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a11, 1
	movi.n	a12, 0
	j	.L587
.L591:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L587:
	mov.n	a9, a11
	bltu	a3, a2, .L588
	mov.n	a9, a12
.L588:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bany	a10, a9, .L589
	movi.n	a9, 0
	j	.L590
.L589:
	bgez	a3, .L591
	movi.n	a9, 0
	j	.L590
.L594:
	bltu	a2, a3, .L593
	sub	a2, a2, a3
	or	a9, a9, a8
.L593:
	srli	a8, a8, 1
	srli	a3, a3, 1
.L590:
	bnez.n	a8, .L594
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L598
	movi.n	a9, 0
	ssl	a4
	sll	a2, a3
	j	.L599
.L598:
	beqz.n	a4, .L600
	ssl	a4
	sll	a9, a3
	ssl	a4
	sll	a2, a2
	addi	a4, a4, -32
	neg	a4, a4
	ssr	a4
	srl	a8, a3
	or	a2, a8, a2
.L599:
	mov.n	a3, a9
.L600:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L603
	srai	a9, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L604
.L603:
	beqz.n	a4, .L605
	ssr	a4
	sra	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L604:
	mov.n	a2, a9
.L605:
	retw.n
	.size	__ashrdi3, .-__ashrdi3
	.literal_position
	.literal .LC141, 65280
	.literal .LC142, 16711680
	.align	4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	entry	sp, 32
	extui	a10, a2, 24, 8
	srli	a14, a2, 8
	l32r	a9, .LC141
	and	a14, a14, a9
	ssai	24
	src	a13, a2, a3
	l32r	a7, .LC142
	and	a13, a13, a7
	slli	a12, a2, 24
	slli	a11, a3, 8
	extui	a15, a3, 24, 8
	ssai	8
	src	a2, a2, a3
	slli	a8, a3, 24
	and	a9, a2, a9
	and	a2, a11, a7
	or	a10, a10, a14
	or	a10, a10, a13
	or	a8, a8, a15
	or	a8, a8, a9
	or	a2, a8, a2
	or	a3, a10, a12
	retw.n
	.size	__bswapdi2, .-__bswapdi2
	.align	4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	entry	sp, 32
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
	movi.n	a9, 1
	l32r	a8, .LC146
	bgeu	a8, a2, .L610
	movi.n	a9, 0
.L610:
	extui	a9, a9, 0, 1
	slli	a9, a9, 4
	addi	a8, a9, -16
	neg	a8, a8
	ssr	a8
	srl	a2, a2
	extui	a8, a2, 8, 8
	slli	a8, a8, 8
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a8, a8, 3
	addi	a10, a8, -8
	neg	a10, a10
	ssr	a10
	srl	a2, a2
	add.n	a9, a9, a8
	movi	a8, 0xf0
	and	a8, a2, a8
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a8, a8, 2
	addi	a10, a8, -4
	neg	a10, a10
	ssr	a10
	srl	a2, a2
	add.n	a9, a9, a8
	movi.n	a8, 0xc
	and	a8, a2, a8
	nsau	a8, a8
	srli	a8, a8, 5
	add.n	a8, a8, a8
	addi	a10, a8, -2
	neg	a10, a10
	ssr	a10
	srl	a2, a2
	add.n	a9, a9, a8
	extui	a10, a2, 1, 1
	addi	a8, a2, -2
	neg	a8, a8
	addi.n	a2, a10, -1
	and	a2, a2, a8
	add.n	a2, a9, a2
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	blt	a8, a4, .L612
	movi.n	a2, 2
	blt	a4, a8, .L612
	movi.n	a2, 0
	bltu	a3, a5, .L612
	movi.n	a2, 2
	bltu	a5, a3, .L612
	movi.n	a2, 1
.L612:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC148, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
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
	extui	a8, a2, 0, 16
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a9, a8, 4
	ssr	a9
	srl	a8, a2
	extui	a2, a8, 0, 8
	nsau	a2, a2
	srli	a2, a2, 5
	ssa8l	a2
	srl	a8, a8
	addx8	a2, a2, a9
	extui	a9, a8, 0, 4
	nsau	a9, a9
	srli	a9, a9, 5
	slli	a9, a9, 2
	ssr	a9
	srl	a8, a8
	add.n	a2, a2, a9
	extui	a9, a8, 0, 2
	nsau	a9, a9
	srli	a9, a9, 5
	add.n	a9, a9, a9
	ssr	a9
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
	and	a8, a8, a9
	add.n	a2, a2, a8
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L620
	movi.n	a9, 0
	ssr	a4
	srl	a3, a2
	j	.L621
.L620:
	beqz.n	a4, .L622
	ssr	a4
	srl	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L621:
	mov.n	a2, a9
.L622:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	extui	a11, a2, 0, 16
	extui	a10, a3, 0, 16
	mull	a9, a11, a10
	extui	a8, a9, 16, 16
	extui	a2, a2, 16, 16
	mull	a10, a2, a10
	add.n	a8, a8, a10
	extui	a12, a8, 16, 16
	extui	a8, a8, 0, 16
	extui	a10, a9, 0, 16
	extui	a9, a3, 16, 16
	mull	a11, a11, a9
	add.n	a8, a8, a11
	slli	a3, a8, 16
	extui	a8, a8, 16, 16
	add.n	a8, a8, a12
	mull	a2, a2, a9
	add.n	a2, a2, a8
	add.n	a3, a3, a10
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC149, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC149
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
	.literal .LC150, 27030
	.align	4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	entry	sp, 32
	xor	a3, a3, a2
	extui	a8, a3, 16, 16
	xor	a3, a3, a8
	srli	a8, a3, 8
	xor	a3, a3, a8
	srli	a8, a3, 4
	xor	a3, a3, a8
	extui	a3, a3, 0, 4
	l32r	a2, .LC150
	ssr	a3
	sra	a2, a2
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
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	l32r	a10, .LC152
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L632
	addi.n	a2, a2, -1
.L632:
	sub	a3, a3, a8
	ssai	2
	src	a9, a2, a3
	srli	a8, a2, 2
	l32r	a10, .LC153
	and	a8, a8, a10
	and	a9, a9, a10
	and	a2, a2, a10
	and	a3, a3, a10
	add.n	a8, a8, a2
	add.n	a9, a9, a3
	bgeu	a9, a3, .L633
	addi.n	a8, a8, 1
.L633:
	ssai	4
	src	a10, a8, a9
	srli	a11, a8, 4
	add.n	a8, a11, a8
	add.n	a10, a10, a9
	bgeu	a10, a9, .L634
	addi.n	a8, a8, 1
.L634:
	l32r	a9, .LC154
	and	a8, a8, a9
	and	a9, a10, a9
	add.n	a8, a8, a9
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
	extui	a8, a4, 31, 1
	s32i	a8, sp, 0
	l32r	a6, .LC161
	movi.n	a7, 0
	l32r	a5, .LC159
.L639:
	bbci	a4, 31, .L637
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC159
	callx8	a8
	mov.n	a6, a10
	mov.n	a7, a11
.L637:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L638
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L639
.L638:
	mov.n	a2, a6
	mov.n	a3, a7
	l32i	a8, sp, 0
	beqz.n	a8, .L640
	mov.n	a12, a6
	mov.n	a13, a7
	l32r	a10, .LC161
	movi.n	a11, 0
	l32r	a8, .LC160
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L640:
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
	extui	a4, a3, 31, 1
	l32r	a7, .LC165
	l32r	a5, .LC163
	mov.n	a6, a5
.L645:
	bbci	a3, 31, .L643
	mov.n	a11, a2
	mov.n	a10, a7
	callx8	a5
	mov.n	a7, a10
.L643:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L644
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a6
	mov.n	a2, a10
	j	.L645
.L644:
	mov.n	a2, a7
	beqz.n	a4, .L646
	mov.n	a11, a7
	l32r	a10, .LC165
	l32r	a8, .LC164
	callx8	a8
	mov.n	a2, a10
.L646:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L649
	movi.n	a2, 2
	bltu	a4, a8, .L649
	movi.n	a2, 0
	bltu	a3, a5, .L649
	movi.n	a2, 2
	bltu	a5, a3, .L649
	movi.n	a2, 1
.L649:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC166, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
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
