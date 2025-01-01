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
	mov.n	a8, a2
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
	bne	a4, a9, .L13
.L12:
	addi.n	a2, a8, 1
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
	mov.n	a8, a2
	mov.n	a9, a4
	bnez.n	a4, .L21
	j	.L22
.L23:
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L21
	j	.L22
.L21:
	l8ui	a10, a8, 0
	bne	a3, a10, .L23
.L22:
	movi.n	a9, 0
	movnez	a9, a8, a4
	mov.n	a2, a9
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a3
	mov.n	a9, a2
	mov.n	a10, a4
	bnez.n	a4, .L31
	j	.L32
.L33:
	addi.n	a4, a4, -1
	addi.n	a9, a9, 1
	addi.n	a8, a8, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L31
	j	.L32
.L31:
	l8ui	a12, a9, 0
	l8ui	a11, a8, 0
	beq	a12, a11, .L33
.L32:
	movi.n	a2, 0
	beqz.n	a4, .L34
	l8ui	a2, a9, 0
	l8ui	a8, a8, 0
	sub	a2, a2, a8
.L34:
	retw.n
	.size	memcmp, .-memcmp
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 32
	beqz.n	a4, .L41
	mov.n	a8, a2
.L42:
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L42
.L41:
	retw.n
	.size	memcpy, .-memcpy
	.align	4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	addi.n	a4, a4, -1
	j	.L46
.L48:
	add.n	a8, a2, a4
	l8ui	a8, a8, 0
	addi.n	a9, a4, -1
	bne	a3, a8, .L49
	add.n	a2, a2, a4
	j	.L47
.L49:
	mov.n	a4, a9
.L46:
	bnei	a4, -1, .L48
	movi.n	a2, 0
.L47:
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
	j	.L61
.L62:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L61
.L60:
	l8ui	a8, a2, 0
	bne	a3, a8, .L62
.L61:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L66:
	l8ui	a8, a2, 0
	beq	a3, a8, .L65
	addi.n	a2, a2, 1
	addi.n	a8, a2, -1
	l8ui	a8, a8, 0
	bnez.n	a8, .L66
	movi.n	a2, 0
.L65:
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
	mov.n	a11, a2
	movi.n	a2, 0
	beqz.n	a4, .L80
	l8ui	a12, a11, 0
	mov.n	a9, a3
	mov.n	a8, a11
	addi.n	a4, a4, -1
	add.n	a10, a4, a11
	bnez.n	a12, .L81
	j	.L82
.L83:
	addi.n	a8, a8, 1
	addi.n	a9, a9, 1
	l8ui	a11, a8, 0
	beqz.n	a11, .L82
.L81:
	l8ui	a13, a9, 0
	sub	a11, a10, a8
	movi.n	a12, 1
	moveqz	a12, a11, a11
	movi.n	a11, 1
	moveqz	a11, a13, a13
	bnone	a12, a11, .L82
	l8ui	a12, a8, 0
	beq	a12, a13, .L83
.L82:
	l8ui	a2, a8, 0
	l8ui	a8, a9, 0
	sub	a2, a2, a8
.L80:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L87
	addi	a8, a4, -2
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
	bnez.n	a8, .L114
	l32r	a8, .LC0
	add.n	a8, a9, a8
	bltui	a8, 2, .L114
	l32r	a8, .LC1
	add.n	a9, a9, a8
	bltui	a9, 3, .L115
	movi.n	a2, 0
.L115:
	extui	a2, a2, 0, 8
.L114:
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
	j	.L123
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
	bnez.n	a9, .L123
	l32r	a9, .LC5
	add.n	a9, a8, a9
	l32r	a10, .LC6
	bgeu	a10, a9, .L123
	l32r	a9, .LC7
	add.n	a9, a8, a9
	l32r	a10, .LC8
	movi.n	a2, 0
	bltu	a10, a9, .L123
	l32r	a9, .LC9
	and	a8, a8, a9
	xor	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
.L123:
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
	bgeu	a10, a9, .L130
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L131
	movi.n	a2, 0
.L131:
	extui	a2, a2, 0, 8
.L130:
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
	bnez.n	a10, .L135
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
	j	.L135
.L138:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L135
.L141:
	movi.n	a2, 0
	movi.n	a3, 0
.L135:
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
	bnez.n	a10, .L143
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
	j	.L143
.L146:
	mov.n	a2, a3
	j	.L143
.L149:
	movi.n	a2, 0
.L143:
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
	bnez.n	a10, .L156
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L157
	l32r	a8, .LC19
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L152
	bgez	a2, .L151
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L151
.L152:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC20
	callx8	a8
	bgez	a10, .L151
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L151
.L156:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L151
.L157:
.L151:
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
	bnez.n	a10, .L163
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L164
	l32r	a8, .LC22
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L161
	movgez	a3, a2, a2
	mov.n	a2, a3
	j	.L160
.L161:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC23
	callx8	a8
	movltz	a7, a3, a10
	mov.n	a2, a7
	j	.L160
.L163:
	mov.n	a2, a3
	j	.L160
.L164:
.L160:
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
	bnez.n	a10, .L172
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L173
	l32r	a8, .LC25
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L168
	bgez	a2, .L167
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L167
.L168:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC26
	callx8	a8
	bgez	a10, .L167
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L167
.L172:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L167
.L173:
.L167:
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
	bgez	a6, .L176
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L176
.L177:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC29
	callx8	a8
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a10, .L176
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L176
.L181:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L176
.L182:
.L176:
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
	bnez.n	a10, .L188
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L189
	l32r	a8, .LC31
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L186
	movgez	a7, a3, a2
	mov.n	a2, a7
	j	.L185
.L186:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC32
	callx8	a8
	movltz	a3, a2, a10
	mov.n	a2, a3
	j	.L185
.L188:
	mov.n	a2, a3
	j	.L185
.L189:
.L185:
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
	bgez	a6, .L192
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L192
.L193:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC35
	callx8	a8
	mov.n	a2, a4
	mov.n	a3, a5
	bgez	a10, .L192
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L192
.L197:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L192
.L198:
.L192:
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
	mov.n	a8, a3
	s32i	a3, sp, 0
	s32i	a4, sp, 4
	l32i	a3, a4, 0
	beqz.n	a3, .L215
	mov.n	a4, a8
	movi.n	a7, 0
.L218:
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a6
	bnez.n	a10, .L216
	mull	a7, a7, a5
	l32i	a8, sp, 0
	add.n	a2, a8, a7
	j	.L217
.L216:
	addi.n	a7, a7, 1
	add.n	a4, a4, a5
	bne	a7, a3, .L218
.L215:
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
.L217:
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
	beqz.n	a3, .L224
	mov.n	a4, a8
	movi.n	a7, 0
.L223:
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a6
	bnez.n	a10, .L222
	mull	a7, a7, a5
	l32i	a8, sp, 0
	add.n	a2, a8, a7
	j	.L221
.L222:
	addi.n	a7, a7, 1
	add.n	a4, a4, a5
	bne	a7, a3, .L223
	movi.n	a2, 0
	j	.L221
.L224:
	movi.n	a2, 0
.L221:
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
	j	.L228
.L229:
	addi.n	a2, a2, 1
.L228:
	l8ui	a10, a2, 0
	callx8	a7
	bnez.n	a10, .L229
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L235
	movi.n	a9, 0x2d
	movi.n	a12, 0
	bne	a8, a9, .L231
	movi.n	a12, 1
	j	.L230
.L235:
	movi.n	a12, 0
.L230:
	addi.n	a2, a2, 1
.L231:
	l8ui	a8, a2, 0
	addi	a8, a8, -48
	movi.n	a9, 9
	bltu	a9, a8, .L237
	mov.n	a8, a2
	movi.n	a9, 0
	movi.n	a11, 9
.L233:
	addx4	a9, a9, a9
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	subx2	a9, a9, a10
	l8ui	a10, a8, 1
	addi	a10, a10, -48
	addi.n	a8, a8, 1
	bgeu	a11, a10, .L233
	j	.L232
.L237:
	movi.n	a9, 0
.L232:
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
	j	.L241
.L242:
	addi.n	a2, a2, 1
.L241:
	l8ui	a10, a2, 0
	callx8	a7
	bnez.n	a10, .L242
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L248
	movi.n	a9, 0x2d
	movi.n	a12, 0
	bne	a8, a9, .L244
	movi.n	a12, 1
	j	.L243
.L248:
	movi.n	a12, 0
.L243:
	addi.n	a2, a2, 1
.L244:
	l8ui	a8, a2, 0
	addi	a8, a8, -48
	movi.n	a9, 9
	bltu	a9, a8, .L250
	mov.n	a8, a2
	movi.n	a9, 0
	movi.n	a11, 9
.L246:
	addx4	a9, a9, a9
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	subx2	a9, a9, a10
	l8ui	a10, a8, 1
	addi	a10, a10, -48
	addi.n	a8, a8, 1
	bgeu	a11, a10, .L246
	j	.L245
.L250:
	movi.n	a9, 0
.L245:
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
	j	.L254
.L255:
	addi.n	a7, a7, 1
.L254:
	l8ui	a10, a7, 0
	callx8	a6
	bnez.n	a10, .L255
	l8ui	a8, a7, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L263
	movi.n	a9, 0x2d
	movi.n	a3, 0
	bne	a8, a9, .L257
	movi.n	a3, 1
	j	.L256
.L263:
	movi.n	a3, 0
.L256:
	addi.n	a7, a7, 1
.L257:
	l8ui	a8, a7, 0
	addi	a8, a8, -48
	movi.n	a9, 9
	bltu	a9, a8, .L265
	movi.n	a11, 0
	mov.n	a2, a11
	movi.n	a6, 0xa
	l32r	a4, .LC47
	mov.n	a5, a9
.L260:
	mull	a2, a6, a2
	mov.n	a10, a6
	callx8	a4
	add.n	a2, a2, a10
	l8ui	a8, a7, 0
	addi	a8, a8, -48
	srai	a9, a8, 31
	sub	a2, a2, a9
	bgeu	a11, a8, .L259
	addi.n	a2, a2, -1
.L259:
	sub	a11, a11, a8
	l8ui	a8, a7, 1
	addi	a8, a8, -48
	addi.n	a7, a7, 1
	bgeu	a5, a8, .L260
	j	.L258
.L265:
	movi.n	a11, 0
	mov.n	a2, a11
.L258:
	bnez.n	a3, .L266
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a11, a11
	sub	a2, a2, a8
	neg	a3, a11
	j	.L261
.L266:
	mov.n	a3, a11
.L261:
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 32
	beqz.n	a4, .L273
.L272:
	srli	a7, a4, 1
	mull	a7, a7, a5
	add.n	a7, a3, a7
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a6
	bgez	a10, .L270
	srli	a4, a4, 1
	j	.L271
.L270:
	blti	a10, 1, .L274
	add.n	a3, a7, a5
	srli	a8, a4, 1
	addi.n	a4, a4, -1
	sub	a4, a4, a8
.L271:
	bnez.n	a4, .L272
	movi.n	a2, 0
	j	.L269
.L273:
	movi.n	a2, 0
	j	.L269
.L274:
	mov.n	a2, a7
.L269:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a2, sp, 0
	beqz.n	a4, .L280
.L279:
	srai	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	mov.n	a12, a7
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L277
	blti	a10, 1, .L278
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
.L278:
	srai	a4, a4, 1
	bnez.n	a4, .L279
	movi.n	a2, 0
	j	.L277
.L280:
	movi.n	a2, 0
.L277:
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
	bgeu	a3, a8, .L286
	addi.n	a2, a2, -1
.L286:
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
	bgeu	a3, a8, .L292
	addi.n	a2, a2, -1
.L292:
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
	bnez.n	a8, .L295
	j	.L296
.L297:
	addi.n	a2, a2, 4
	l32i	a8, a2, 0
	beqz.n	a8, .L296
.L295:
	l32i	a8, a2, 0
	bne	a3, a8, .L297
.L296:
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
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	beq	a10, a9, .L302
	j	.L303
.L304:
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	bne	a10, a9, .L303
.L302:
	l32i	a9, a8, 0
	beqz.n	a9, .L303
	l32i	a9, a3, 0
	bnez.n	a9, .L304
.L303:
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L305
	movi.n	a2, 1
	blt	a9, a10, .L306
	movi.n	a2, 0
.L306:
	extui	a2, a2, 0, 8
.L305:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L310:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L310
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L315
	mov.n	a8, a2
.L314:
	addi.n	a8, a8, 4
	l32i	a9, a8, 0
	bnez.n	a9, .L314
	j	.L313
.L315:
	mov.n	a8, a2
.L313:
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
	mov.n	a9, a4
	bnez.n	a4, .L318
	j	.L319
.L320:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L318
	j	.L319
.L318:
	l32i	a11, a8, 0
	l32i	a10, a3, 0
	bne	a11, a10, .L319
	beqz.n	a11, .L319
	l32i	a10, a3, 0
	bnez.n	a10, .L320
.L319:
	movi.n	a2, 0
	beqz.n	a4, .L321
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L321
	movi.n	a2, 1
	blt	a9, a10, .L322
	movi.n	a2, 0
.L322:
	extui	a2, a2, 0, 8
.L321:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L329
	j	.L330
.L331:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L329
	j	.L330
.L329:
	l32i	a9, a2, 0
	bne	a3, a9, .L331
.L330:
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
	mov.n	a9, a4
	bnez.n	a4, .L338
	j	.L339
.L340:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L338
	j	.L339
.L338:
	l32i	a11, a8, 0
	l32i	a10, a3, 0
	beq	a11, a10, .L340
.L339:
	movi.n	a2, 0
	beqz.n	a4, .L341
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L341
	movi.n	a2, 1
	blt	a9, a10, .L342
	movi.n	a2, 0
.L342:
	extui	a2, a2, 0, 8
.L341:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	addi.n	a8, a4, -1
	beqz.n	a4, .L349
	mov.n	a9, a2
	mov.n	a4, a8
	addi.n	a8, a8, 1
	loop	a8, .L350_LEND
.L350:
	l32i	a10, a3, 0
	s32i	a10, a9, 0
	addi.n	a4, a4, -1
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
	sub	a8, a2, a3
	slli	a9, a4, 2
	bltu	a8, a9, .L355
	addi.n	a8, a4, -1
	bnez.n	a4, .L356
	j	.L354
.L355:
	beqz.n	a4, .L354
	addi.n	a4, a4, -1
	addx4	a3, a4, a3
	addx4	a8, a4, a2
	slli	a4, a4, 2
	srli	a4, a4, 2
	addi.n	a4, a4, 1
.L357:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi	a3, a3, -4
	addi	a8, a8, -4
	addi.n	a4, a4, -1
	bnez.n	a4, .L357
	j	.L354
.L356:
	mov.n	a9, a2
	mov.n	a4, a8
	addi.n	a8, a8, 1
	loop	a8, .L358_LEND
.L358:
	l32i	a10, a3, 0
	s32i	a10, a9, 0
	addi.n	a4, a4, -1
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	.L358_LEND:
.L354:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	addi.n	a8, a4, -1
	beqz.n	a4, .L364
	mov.n	a9, a2
	mov.n	a4, a8
	addi.n	a8, a8, 1
	loop	a8, .L365_LEND
.L365:
	s32i	a3, a9, 0
	addi.n	a4, a4, -1
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
	movi.n	a9, 0x20
	loop	a9, .L393_LEND
.L393:
	ssr	a8
	srl	a10, a2
	bbci	a10, 31, .L391
	addi.n	a2, a8, 1
	j	.L392
.L391:
	addi.n	a8, a8, 1
	.L393_LEND:
	movi.n	a2, 0
.L392:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L397
	bbsi	a8, 31, .L400
	movi.n	a2, 1
.L398:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L398
	j	.L397
.L400:
	movi.n	a2, 1
.L397:
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
	bltz	a10, .L403
	l32r	a11, .LC62
	mov.n	a10, a7
	l32r	a8, .LC61
	callx8	a8
	bgei	a10, 1, .L404
	movi.n	a2, 0
.L404:
	extui	a2, a2, 0, 8
.L403:
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
	bltz	a10, .L407
	l32r	a12, .LC68
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC67
	callx8	a8
	bgei	a10, 1, .L408
	movi.n	a2, 0
.L408:
	extui	a2, a2, 0, 8
.L407:
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
	bltz	a10, .L411
	l32r	a12, .LC74
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC73
	callx8	a8
	bgei	a10, 1, .L412
	movi.n	a2, 0
.L412:
	extui	a2, a2, 0, 8
.L411:
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
	bnez.n	a10, .L416
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC80
	callx8	a8
	mov.n	a11, a10
	mov.n	a10, a2
	l32r	a8, .LC81
	callx8	a8
	beqz.n	a10, .L416
	l32r	a7, .LC83
	l32r	a8, .LC84
	movgez	a7, a8, a3
	l32r	a5, .LC82
	mov.n	a6, a5
.L420:
	bbci	a3, 31, .L419
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L419:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L416
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	mov.n	a7, a10
	j	.L420
.L416:
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
	bnez.n	a10, .L424
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
	beqz.n	a10, .L424
	l32r	a6, .LC92
	movi.n	a7, 0
	bgez	a4, .L426
	l32r	a6, .LC91
	movi.n	a7, 0
.L426:
	l32r	a5, .LC90
.L428:
	bbci	a4, 31, .L427
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC90
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L427:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
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
	bnez.n	a10, .L432
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
	beqz.n	a10, .L432
	l32r	a6, .LC100
	movi.n	a7, 0
	bgez	a4, .L434
	l32r	a6, .LC99
	movi.n	a7, 0
.L434:
	l32r	a5, .LC98
.L436:
	bbci	a4, 31, .L435
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC98
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L435:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L432
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L436
.L432:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L440
	mov.n	a8, a2
.L441:
	l8ui	a10, a3, 0
	l8ui	a9, a8, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L441
.L440:
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
	mov.n	a9, a4
	bnez.n	a4, .L445
	j	.L446
.L447:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L445
	j	.L446
.L445:
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L447
.L446:
	bnez.n	a4, .L448
	movi.n	a8, 0
	s8i	a8, a10, 0
.L448:
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
	bnez.n	a3, .L453
	j	.L454
.L455:
	addi.n	a2, a2, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L453
	j	.L454
.L453:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L455
.L454:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a8, a2, 0
	bnez.n	a8, .L461
	movi.n	a2, 0
	j	.L462
.L463:
	l8ui	a10, a8, 0
	l8ui	a9, a2, 0
	addi.n	a8, a8, 1
	beq	a10, a9, .L462
.L464:
	l8ui	a9, a8, 0
	bnez.n	a9, .L463
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L466
.L461:
	mov.n	a8, a3
	j	.L464
.L466:
	movi.n	a2, 0
.L462:
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
	sub	a9, a3, a9
	moveqz	a2, a8, a9
	addi.n	a8, a8, 1
	addi.n	a9, a8, -1
	l8ui	a9, a9, 0
	bnez.n	a9, .L470
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
	beqz.n	a10, .L474
	l8ui	a5, a3, 0
	l32r	a6, .LC104
	l32r	a4, .LC103
	j	.L475
.L476:
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L474
	addi.n	a2, a2, 1
.L475:
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a6
	mov.n	a2, a10
	bnez.n	a10, .L476
.L474:
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
	bgez	a10, .L480
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC107
	callx8	a8
	bgei	a10, 1, .L482
.L480:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC107
	callx8	a8
	blti	a10, 1, .L490
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC106
	callx8	a8
	mov.n	a2, a6
	mov.n	a3, a7
	bgez	a10, .L483
.L482:
	l32r	a8, .LC108
	xor	a2, a6, a8
	mov.n	a3, a7
	j	.L483
.L490:
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L483
.L483:
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
	beqz.n	a5, .L493
	movi.n	a9, 1
	bltu	a3, a5, .L494
	movi.n	a9, 0
.L494:
	extui	a9, a9, 0, 8
	bnez.n	a9, .L498
	bltu	a7, a8, .L499
	l8ui	a3, a4, 0
	mov.n	a2, a8
	addi.n	a4, a4, 1
	addi.n	a6, a5, -1
	l32r	a5, .LC109
.L496:
	l8ui	a8, a2, 0
	bne	a8, a3, .L495
	mov.n	a12, a6
	mov.n	a11, a4
	addi.n	a10, a2, 1
	callx8	a5
	beqz.n	a10, .L493
.L495:
	addi.n	a2, a2, 1
	bgeu	a7, a2, .L496
	movi.n	a2, 0
	j	.L493
.L498:
	movi.n	a2, 0
	j	.L493
.L499:
	movi.n	a2, 0
.L493:
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
	movi.n	a4, 0
	bgez	a10, .L504
	l32r	a10, .LC113
	xor	a8, a2, a10
	mov.n	a2, a8
	movi.n	a4, 1
	j	.L504
.L504:
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC115
	callx8	a8
	movi.n	a7, 0
	bltz	a10, .L522
	l32r	a5, .LC117
	l32r	a6, .LC115
.L508:
	addi.n	a7, a7, 1
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a6
	bgez	a10, .L508
	j	.L509
.L522:
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
	movi.n	a7, 0
	bnone	a10, a6, .L509
	l32r	a5, .LC119
	l32r	a6, .LC112
.L512:
	addi.n	a7, a7, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a6
	bltz	a10, .L512
.L509:
	l32i	a8, sp, 0
	s32i	a7, a8, 0
	beqz.n	a4, .L513
	l32r	a10, .LC113
	xor	a8, a2, a10
	mov.n	a2, a8
.L513:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC122, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a8, a2
	mov.n	a6, a2
	mov.n	a2, a3
	or	a3, a3, a8
	beqz.n	a3, .L528
	movi.n	a3, 0
	s32i	a3, sp, 0
	l32r	a8, .LC122
	s32i	a8, sp, 4
	j	.L527
.L529:
	s32i	a7, sp, 0
	mov.n	a3, a11
.L527:
	extui	a11, a2, 0, 1
	mull	a7, a4, a11
	mov.n	a10, a5
	l32i	a8, sp, 4
	callx8	a8
	add.n	a7, a7, a10
	l32i	a8, sp, 0
	add.n	a7, a8, a7
	add.n	a11, a3, a11
	bgeu	a11, a3, .L526
	addi.n	a7, a7, 1
.L526:
	ssai	31
	src	a4, a4, a5
	add.n	a5, a5, a5
	ssai	1
	src	a8, a6, a2
	srli	a6, a6, 1
	mov.n	a2, a8
	or	a8, a6, a8
	bnez.n	a8, .L529
	s32i	a7, sp, 0
	mov.n	a3, a11
	j	.L524
.L528:
	movi.n	a3, 0
	s32i	a3, sp, 0
.L524:
	l32i	a2, sp, 0
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a8, 1
	bgeu	a3, a2, .L547
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L532
.L547:
	movi.n	a8, 1
	j	.L533
.L537:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a10, a14
	bltu	a3, a9, .L534
	mov.n	a10, a15
.L534:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bany	a11, a10, .L532
.L533:
	movi.n	a2, 0
	bnez.n	a8, .L535
	j	.L536
.L532:
	bgez	a3, .L537
	j	.L533
.L535:
	bltu	a9, a3, .L538
	sub	a9, a9, a3
	or	a2, a2, a8
.L538:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L535
.L536:
	movnez	a2, a9, a4
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
	beqz.n	a10, .L552
	nsau	a10, a9
	nsau	a8, a8
	addi	a8, a8, 32
	movnez	a8, a10, a9
	addi.n	a2, a8, -1
.L552:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L560
	movi.n	a2, 0
.L559:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L559
	j	.L558
.L560:
	movi.n	a2, 0
.L558:
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	srli	a8, a4, 3
	movi.n	a9, -8
	and	a9, a4, a9
	bgeu	a2, a3, .L563
.L566:
	bnez.n	a8, .L564
	j	.L565
.L563:
	add.n	a10, a3, a4
	bltu	a10, a2, .L566
	addi.n	a8, a4, -1
	bnez.n	a4, .L571
	j	.L562
.L564:
	mov.n	a13, a2
	mov.n	a12, a3
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	loop	a8, .L569_LEND
.L569:
	l32i	a10, a12, 0
	l32i	a11, a12, 4
	s32i	a10, a13, 0
	s32i	a11, a13, 4
	addi.n	a12, a12, 8
	addi.n	a13, a13, 8
	.L569_LEND:
.L565:
	bgeu	a9, a4, .L562
	add.n	a2, a2, a9
	add.n	a3, a3, a9
	sub	a4, a4, a9
.L570:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L570
	j	.L562
.L571:
	mov.n	a4, a8
	addi.n	a8, a8, 1
	loop	a8, .L567_LEND
.L567:
	add.n	a9, a3, a4
	l8ui	a10, a9, 0
	add.n	a9, a2, a4
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	.L567_LEND:
.L562:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a8, a4, 1
	bgeu	a2, a3, .L579
.L582:
	bnez.n	a8, .L580
	j	.L581
.L579:
	add.n	a9, a3, a4
	bltu	a9, a2, .L582
	addi.n	a8, a4, -1
	bnez.n	a4, .L586
	j	.L578
.L580:
	mov.n	a10, a2
	mov.n	a9, a3
	add.n	a8, a8, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L585_LEND
.L585:
	l16ui	a11, a9, 0
	s16i	a11, a10, 0
	addi.n	a9, a9, 2
	addi.n	a10, a10, 2
	.L585_LEND:
.L581:
	bbci	a4, 31, .L578
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	add.n	a4, a2, a4
	l8ui	a8, a3, 0
	s8i	a8, a4, 0
	j	.L578
.L586:
	mov.n	a4, a8
	addi.n	a8, a8, 1
	loop	a8, .L583_LEND
.L583:
	add.n	a9, a3, a4
	l8ui	a10, a9, 0
	add.n	a9, a2, a4
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	.L583_LEND:
.L578:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	srli	a8, a4, 2
	movi.n	a9, -4
	and	a9, a4, a9
	bgeu	a2, a3, .L592
.L595:
	bnez.n	a8, .L593
	j	.L594
.L592:
	add.n	a10, a3, a4
	bltu	a10, a2, .L595
	addi.n	a8, a4, -1
	bnez.n	a4, .L600
	j	.L591
.L593:
	mov.n	a11, a2
	mov.n	a10, a3
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L598_LEND
.L598:
	l32i	a12, a10, 0
	s32i	a12, a11, 0
	addi.n	a10, a10, 4
	addi.n	a11, a11, 4
	.L598_LEND:
.L594:
	bgeu	a9, a4, .L591
	add.n	a2, a2, a9
	add.n	a3, a3, a9
	sub	a4, a4, a9
.L599:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L599
	j	.L591
.L600:
	mov.n	a4, a8
	addi.n	a8, a8, 1
	loop	a8, .L596_LEND
.L596:
	add.n	a9, a3, a4
	l8ui	a10, a9, 0
	add.n	a9, a2, a4
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	.L596_LEND:
.L591:
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
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	movi.n	a8, 0x10
	loop	a8, .L615_LEND
.L615:
	addi	a9, a2, 16
	bbs	a10, a9, .L614
	addi.n	a2, a2, 1
	.L615_LEND:
.L614:
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
	loop	a8, .L620_LEND
.L620:
	ssr	a2
	sra	a9, a10
	bbsi	a9, 31, .L619
	addi.n	a2, a2, 1
	.L620_LEND:
.L619:
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
	bltz	a10, .L628
	l32r	a11, .LC132
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	l32r	a8, .LC130
	callx8	a8
	l32r	a8, .LC131
	add.n	a2, a10, a8
	j	.L626
.L628:
	mov.n	a10, a2
	l32r	a8, .LC130
	callx8	a8
	mov.n	a2, a10
.L626:
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
.L630:
	ssr	a8
	sra	a9, a10
	extui	a9, a9, 0, 1
	add.n	a2, a9, a2
	addi.n	a8, a8, 1
	bnei	a8, 16, .L630
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
.L633:
	ssr	a8
	sra	a9, a10
	extui	a9, a9, 0, 1
	add.n	a2, a9, a2
	addi.n	a8, a8, 1
	bnei	a8, 16, .L633
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L638
	movi.n	a2, 0
.L637:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L637
	j	.L636
.L638:
	movi.n	a2, 0
.L636:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L641
	beqz.n	a3, .L644
.L642:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	add.n	a2, a2, a8
	add.n	a9, a9, a9
	srli	a3, a3, 1
	bnez.n	a3, .L642
	j	.L641
.L644:
	movi.n	a2, 0
.L641:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a8, 1
	bgeu	a3, a2, .L663
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L648
.L663:
	movi.n	a8, 1
	j	.L649
.L653:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a10, a14
	bltu	a3, a9, .L650
	mov.n	a10, a15
.L650:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bany	a11, a10, .L648
.L649:
	movi.n	a2, 0
	bnez.n	a8, .L651
	j	.L652
.L648:
	bgez	a3, .L653
	j	.L649
.L651:
	bltu	a9, a3, .L654
	sub	a9, a9, a3
	or	a2, a2, a8
.L654:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L651
.L652:
	movnez	a2, a9, a4
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
	bltz	a10, .L665
	movi.n	a2, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC134
	callx8	a8
	bgei	a10, 1, .L666
	movi.n	a2, 0
.L666:
	extui	a2, a2, 0, 8
.L665:
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
	bltz	a10, .L669
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC136
	callx8	a8
	bgei	a10, 1, .L670
	movi.n	a2, 0
.L670:
	extui	a2, a2, 0, 8
.L669:
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
	movi.n	a14, 0
	bgez	a3, .L675
	neg	a3, a3
	movi.n	a14, 1
.L675:
	beqz.n	a3, .L681
	movi.n	a10, 0
	mov.n	a9, a10
	movi.n	a12, 1
	movi.n	a11, 0x1f
	movi.n	a13, 0
.L678:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a2
	add.n	a10, a10, a8
	add.n	a2, a2, a2
	srai	a3, a3, 1
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
	movi.n	a15, 1
	moveqz	a15, a3, a3
	mov.n	a8, a12
	bgeu	a11, a9, .L677
	mov.n	a8, a13
.L677:
	bany	a15, a8, .L678
	j	.L676
.L681:
	movi.n	a10, 0
.L676:
	neg	a2, a10
	moveqz	a2, a10, a14
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
	bgez	a2, .L685
	neg	a10, a2
	movi.n	a3, 1
.L685:
	bgez	a11, .L686
	neg	a11, a11
	movi.n	a8, 1
	xor	a3, a8, a3
.L686:
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
	bgez	a10, .L690
	neg	a10, a10
	movi.n	a2, 1
.L690:
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
	bgeu	a3, a9, .L710
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L695
.L710:
	movi.n	a8, 1
	j	.L696
.L700:
	add.n	a3, a3, a3
	extui	a3, a3, 0, 16
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
	mov.n	a10, a14
	bltu	a3, a9, .L697
	mov.n	a10, a15
.L697:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bany	a11, a10, .L695
.L696:
	movi.n	a2, 0
	bnez.n	a8, .L698
	j	.L699
.L695:
	sext	a10, a3, 15
	bgez	a10, .L700
	j	.L696
.L698:
	bltu	a9, a3, .L701
	sub	a9, a9, a3
	extui	a9, a9, 0, 16
	or	a2, a2, a8
.L701:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L698
.L699:
	movnez	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a8, 1
	bgeu	a3, a2, .L728
	movi.n	a14, 1
	movi.n	a15, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L713
.L728:
	movi.n	a8, 1
	j	.L714
.L718:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a10, a14
	bltu	a3, a9, .L715
	mov.n	a10, a15
.L715:
	mov.n	a11, a12
	movnez	a11, a13, a8
	bany	a11, a10, .L713
.L714:
	movi.n	a2, 0
	bnez.n	a8, .L716
	j	.L717
.L713:
	bgez	a3, .L718
	j	.L714
.L716:
	bltu	a9, a3, .L719
	sub	a9, a9, a3
	or	a2, a2, a8
.L719:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L716
.L717:
	movnez	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L730
	movi.n	a9, 0
	ssl	a4
	sll	a2, a3
	j	.L731
.L730:
	beqz.n	a4, .L732
	ssl	a4
	sll	a9, a3
	ssl	a4
	sll	a2, a2
	addi	a4, a4, -32
	neg	a4, a4
	ssr	a4
	srl	a8, a3
	or	a2, a8, a2
.L731:
	mov.n	a3, a9
.L732:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L735
	srai	a9, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L736
.L735:
	beqz.n	a4, .L737
	ssr	a4
	sra	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L736:
	mov.n	a2, a9
.L737:
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
	bgeu	a8, a2, .L742
	movi.n	a9, 0
.L742:
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
	blt	a8, a4, .L744
	movi.n	a2, 2
	blt	a4, a8, .L744
	movi.n	a2, 0
	bltu	a3, a5, .L744
	movi.n	a2, 2
	bltu	a5, a3, .L744
	movi.n	a2, 1
.L744:
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
	bbci	a4, 26, .L752
	movi.n	a9, 0
	ssr	a4
	srl	a3, a2
	j	.L753
.L752:
	beqz.n	a4, .L754
	ssr	a4
	srl	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L753:
	mov.n	a2, a9
.L754:
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
	bgeu	a3, a8, .L764
	addi.n	a2, a2, -1
.L764:
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
	bgeu	a9, a3, .L765
	addi.n	a8, a8, 1
.L765:
	ssai	4
	src	a10, a8, a9
	srli	a11, a8, 4
	add.n	a8, a11, a8
	add.n	a10, a10, a9
	bgeu	a10, a9, .L766
	addi.n	a8, a8, 1
.L766:
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
.L771:
	bbci	a4, 31, .L769
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC159
	callx8	a8
	mov.n	a6, a10
	mov.n	a7, a11
.L769:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L770
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L771
.L770:
	mov.n	a2, a6
	mov.n	a3, a7
	l32i	a8, sp, 0
	beqz.n	a8, .L772
	mov.n	a12, a6
	mov.n	a13, a7
	l32r	a10, .LC161
	movi.n	a11, 0
	l32r	a8, .LC160
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L772:
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
.L777:
	bbci	a3, 31, .L775
	mov.n	a11, a2
	mov.n	a10, a7
	callx8	a5
	mov.n	a7, a10
.L775:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L776
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a6
	mov.n	a2, a10
	j	.L777
.L776:
	mov.n	a2, a7
	beqz.n	a4, .L778
	mov.n	a11, a7
	l32r	a10, .LC165
	l32r	a8, .LC164
	callx8	a8
	mov.n	a2, a10
.L778:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L781
	movi.n	a2, 2
	bltu	a4, a8, .L781
	movi.n	a2, 0
	bltu	a3, a5, .L781
	movi.n	a2, 2
	bltu	a5, a3, .L781
	movi.n	a2, 1
.L781:
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
