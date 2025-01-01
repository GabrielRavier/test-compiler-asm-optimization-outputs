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
	l8ui	a11, a8, 0
	addi.n	a9, a9, -1
	s8i	a11, a9, 0
	.L4_LEND:
	j	.L3
.L2:
	beq	a2, a3, .L3
	beqz.n	a4, .L3
	mov.n	a9, a2
.L5:
	l8ui	a10, a8, 0
	addi.n	a8, a8, 1
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
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
	bnez.n	a5, .L18
	j	.L19
.L20:
	addi.n	a2, a2, 1
	addi.n	a5, a5, -1
	bnez.n	a5, .L18
	j	.L19
.L18:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a2, 0
	bne	a8, a4, .L20
	j	.L27
.L19:
	movi.n	a2, 0
	j	.L17
.L27:
	addi.n	a2, a2, 1
.L17:
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	mov.n	a8, a4
	bnez.n	a4, .L30
	j	.L36
.L32:
	addi.n	a2, a2, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L30
	j	.L36
.L30:
	l8ui	a9, a2, 0
	bne	a9, a3, .L32
	j	.L29
.L36:
	movi.n	a2, 0
.L29:
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L39
	j	.L46
.L41:
	addi.n	a3, a3, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L39
	j	.L46
.L39:
	l8ui	a9, a2, 0
	l8ui	a10, a3, 0
	addi.n	a2, a2, 1
	beq	a9, a10, .L41
	j	.L47
.L46:
	movi.n	a2, 0
	j	.L38
.L47:
	sub	a2, a9, a10
.L38:
	retw.n
	.size	memcmp, .-memcmp
	.literal_position
	.literal .LC0, memcpy@PLT
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 32
	mov.n	a12, a4
	mov.n	a11, a3
	beqz.n	a4, .L50
	l32r	a8, .LC0
	mov.n	a10, a2
	callx8	a8
.L50:
	retw.n
	.size	memcpy, .-memcpy
	.align	4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	entry	sp, 32
	addi.n	a4, a4, -1
	extui	a3, a3, 0, 8
	add.n	a8, a2, a4
	addi.n	a10, a2, -1
	j	.L55
.L57:
	l8ui	a9, a2, 0
	addi.n	a8, a8, -1
	beq	a9, a3, .L54
.L55:
	mov.n	a2, a8
	bne	a8, a10, .L57
	movi.n	a2, 0
.L54:
	retw.n
	.size	memrchr, .-memrchr
	.literal_position
	.literal .LC1, memset@PLT
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 32
	mov.n	a12, a4
	beqz.n	a4, .L59
	l32r	a8, .LC1
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	callx8	a8
.L59:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L64
.L65:
	l8ui	a8, a3, 1
	addi.n	a2, a2, 1
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	bnez.n	a8, .L65
.L64:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	l8ui	a8, a2, 0
	extui	a3, a3, 0, 8
	bnez.n	a8, .L71
	j	.L70
.L73:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a8, .L70
.L71:
	bne	a8, a3, .L73
.L70:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L79:
	l8ui	a8, a2, 0
	beq	a8, a3, .L78
	addi.n	a2, a2, 1
	bnez.n	a8, .L79
	mov.n	a2, a8
.L78:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a8, a2, 0
	l8ui	a10, a3, 0
	mov.n	a9, a2
	sub	a2, a8, a10
	bnez.n	a8, .L93
	j	.L82
.L93:
	bne	a8, a10, .L82
	l8ui	a8, a9, 1
	l8ui	a10, a3, 1
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
	sub	a2, a8, a10
	bnez.n	a8, .L93
.L82:
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L98
	mov.n	a8, a2
.L97:
	l8ui	a9, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a9, .L97
	sub	a2, a8, a2
	j	.L95
.L98:
	mov.n	a2, a8
.L95:
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a4, .L100
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	mov.n	a8, a3
	movi.n	a12, 1
	add.n	a13, a3, a4
	bnez.n	a10, .L104
	l8ui	a11, a3, 0
	j	.L103
.L105:
	l8ui	a10, a9, 0
	addi.n	a11, a8, 1
	bnez.n	a10, .L108
	l8ui	a11, a8, 1
	j	.L103
.L108:
	mov.n	a8, a11
.L104:
	l8ui	a11, a8, 0
	mov.n	a15, a2
	sub	a4, a11, a10
	mov.n	a14, a2
	movnez	a15, a12, a11
	moveqz	a14, a12, a4
	addi.n	a9, a9, 1
	bnone	a15, a14, .L103
	bne	a8, a13, .L105
.L103:
	sub	a2, a10, a11
.L100:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L115
	movi.n	a8, -2
	and	a8, a4, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L117_LEND
.L117:
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	addi.n	a2, a2, 2
	addi.n	a3, a3, 2
	.L117_LEND:
.L115:
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
	movi.n	a9, 0x19
	movi.n	a2, 1
	bgeu	a9, a8, .L121
	movi.n	a2, 0
.L121:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi	a9, 0x7f
	movi.n	a8, 1
	bgeu	a9, a2, .L123
	movi.n	a8, 0
.L123:
	mov.n	a2, a8
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 32
	addi	a10, a2, -32
	addi	a8, a2, -9
	movi.n	a9, 0
	movi.n	a2, 1
	movnez	a2, a9, a10
	movi.n	a10, 1
	moveqz	a9, a10, a8
	or	a2, a2, a9
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 32
	movi.n	a9, 0x1f
	movi.n	a8, 1
	bgeu	a9, a2, .L126
	movi.n	a8, 0
.L126:
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
	movi.n	a9, 9
	movi.n	a2, 1
	bgeu	a9, a8, .L128
	movi.n	a2, 0
.L128:
	retw.n
	.size	isdigit, .-isdigit
	.align	4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	entry	sp, 32
	addi	a8, a2, -33
	movi.n	a9, 0x5d
	movi.n	a2, 1
	bgeu	a9, a8, .L130
	movi.n	a2, 0
.L130:
	retw.n
	.size	isgraph, .-isgraph
	.align	4
	.global	islower
	.type	islower, @function
islower:
	entry	sp, 32
	addi	a8, a2, -97
	movi.n	a9, 0x19
	movi.n	a2, 1
	bgeu	a9, a8, .L132
	movi.n	a2, 0
.L132:
	retw.n
	.size	islower, .-islower
	.align	4
	.global	isprint
	.type	isprint, @function
isprint:
	entry	sp, 32
	addi	a8, a2, -32
	movi.n	a9, 0x5e
	movi.n	a2, 1
	bgeu	a9, a8, .L134
	movi.n	a2, 0
.L134:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L136
	movi.n	a8, 0
.L136:
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
	movi.n	a9, 0x19
	movi.n	a2, 1
	bgeu	a9, a8, .L138
	movi.n	a2, 0
.L138:
	retw.n
	.size	isupper, .-isupper
	.literal_position
	.literal .LC2, -8232
	.literal .LC3, -65529
	.align	4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	entry	sp, 32
	addi	a9, a2, -127
	movi.n	a10, 0x20
	mov.n	a8, a2
	movi.n	a2, 1
	bgeu	a10, a9, .L139
	movi.n	a9, 0x1f
	bgeu	a9, a8, .L139
	l32r	a9, .LC2
	add.n	a9, a8, a9
	bltui	a9, 2, .L139
	l32r	a9, .LC3
	add.n	a8, a8, a9
	bltui	a8, 3, .L139
	movi.n	a2, 0
.L139:
	retw.n
	.size	iswcntrl, .-iswcntrl
	.align	4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	entry	sp, 32
	addi	a8, a2, -48
	movi.n	a9, 9
	movi.n	a2, 1
	bgeu	a9, a8, .L149
	movi.n	a2, 0
.L149:
	retw.n
	.size	iswdigit, .-iswdigit
	.literal_position
	.literal .LC4, -8234
	.literal .LC5, 47061
	.literal .LC6, 8231
	.literal .LC7, -57344
	.literal .LC8, 8184
	.literal .LC9, -65532
	.literal .LC10, 1048579
	.literal .LC11, 65534
	.align	4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	entry	sp, 32
	movi	a9, 0xfe
	mov.n	a8, a2
	bltu	a9, a2, .L151
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a9, 0x20
	movi.n	a2, 1
	bltu	a9, a8, .L150
	movi.n	a2, 0
	j	.L150
.L151:
	l32r	a9, .LC4
	l32r	a10, .LC5
	add.n	a9, a2, a9
	bgeu	a10, a9, .L156
	l32r	a9, .LC6
	bgeu	a9, a2, .L156
	l32r	a9, .LC7
	l32r	a10, .LC8
	add.n	a9, a2, a9
	movi.n	a2, 1
	bgeu	a10, a9, .L150
	l32r	a9, .LC9
	l32r	a10, .LC10
	add.n	a9, a8, a9
	movi.n	a2, 0
	bltu	a10, a9, .L150
	l32r	a9, .LC11
	extui	a8, a8, 1, 15
	add.n	a8, a8, a8
	sub	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
	j	.L150
.L156:
	movi.n	a2, 1
.L150:
	retw.n
	.size	iswprint, .-iswprint
	.align	4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	entry	sp, 32
	addi	a9, a2, -48
	movi.n	a10, 9
	mov.n	a8, a2
	movi.n	a2, 1
	bgeu	a10, a9, .L161
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L161
	movi.n	a2, 0
.L161:
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
	.literal .LC13, __unorddf2@PLT
	.literal .LC14, __gtdf2@PLT
	.literal .LC15, __subdf3@PLT
	.align	4
	.global	fdim
	.type	fdim, @function
fdim:
	entry	sp, 32
	l32r	a7, .LC13
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bnez.n	a10, .L166
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L170
	l32r	a8, .LC14
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L173
	l32r	a8, .LC15
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L166
.L170:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L166
.L173:
	movi.n	a2, 0
	movi.n	a3, 0
.L166:
	retw.n
	.size	fdim, .-fdim
	.literal_position
	.literal .LC17, __unordsf2@PLT
	.literal .LC18, __gtsf2@PLT
	.literal .LC19, __subsf3@PLT
	.align	4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	entry	sp, 32
	l32r	a7, .LC17
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a7
	bnez.n	a10, .L174
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L178
	l32r	a8, .LC18
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	blti	a10, 1, .L181
	l32r	a8, .LC19
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	j	.L174
.L178:
	mov.n	a2, a3
	j	.L174
.L181:
	movi.n	a2, 0
.L174:
	retw.n
	.size	fdimf, .-fdimf
	.literal_position
	.literal .LC20, __unorddf2@PLT
	.literal .LC22, __ltdf2@PLT
	.align	4
	.global	fmax
	.type	fmax, @function
fmax:
	entry	sp, 32
	mov.n	a7, a3
	l32r	a3, .LC20
	mov.n	a12, a2
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a7
	mov.n	a6, a2
	callx8	a3
	bnez.n	a10, .L188
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L189
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L184
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L182
	j	.L189
.L184:
	l32r	a8, .LC22
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a8
	bltz	a10, .L188
	mov.n	a4, a2
	mov.n	a5, a7
.L188:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L182
.L189:
	mov.n	a2, a6
	mov.n	a3, a7
.L182:
	retw.n
	.size	fmax, .-fmax
	.literal_position
	.literal .LC23, __unordsf2@PLT
	.literal .LC25, __ltsf2@PLT
	.align	4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	entry	sp, 32
	l32r	a6, .LC23
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a6
	bnez.n	a10, .L199
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a6
	bnez.n	a10, .L193
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L195
	movnez	a2, a3, a8
	j	.L193
.L195:
	l32r	a8, .LC25
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movltz	a2, a3, a10
	j	.L193
.L199:
	mov.n	a2, a3
.L193:
	retw.n
	.size	fmaxf, .-fmaxf
	.literal_position
	.literal .LC26, __unorddf2@PLT
	.literal .LC28, __ltdf2@PLT
	.align	4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	entry	sp, 32
	mov.n	a7, a3
	l32r	a3, .LC26
	mov.n	a12, a2
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a7
	mov.n	a6, a2
	callx8	a3
	bnez.n	a10, .L210
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L211
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L206
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L204
	j	.L211
.L206:
	l32r	a8, .LC28
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a8
	bltz	a10, .L210
	mov.n	a4, a2
	mov.n	a5, a7
.L210:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L204
.L211:
	mov.n	a2, a6
	mov.n	a3, a7
.L204:
	retw.n
	.size	fmaxl, .-fmaxl
	.literal_position
	.literal .LC29, __unorddf2@PLT
	.literal .LC31, __ltdf2@PLT
	.align	4
	.global	fmin
	.type	fmin, @function
fmin:
	entry	sp, 32
	l32r	a7, .LC29
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bnez.n	a10, .L221
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L215
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L217
	bnez.n	a8, .L215
	j	.L221
.L217:
	l32r	a8, .LC31
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bltz	a10, .L215
.L221:
	mov.n	a2, a4
	mov.n	a3, a5
.L215:
	retw.n
	.size	fmin, .-fmin
	.literal_position
	.literal .LC32, __unordsf2@PLT
	.literal .LC34, __ltsf2@PLT
	.align	4
	.global	fminf
	.type	fminf, @function
fminf:
	entry	sp, 32
	l32r	a7, .LC32
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a7
	bnez.n	a10, .L232
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L226
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L228
	moveqz	a2, a3, a8
	j	.L226
.L228:
	l32r	a8, .LC34
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movgez	a2, a3, a10
	j	.L226
.L232:
	mov.n	a2, a3
.L226:
	retw.n
	.size	fminf, .-fminf
	.literal_position
	.literal .LC35, __unorddf2@PLT
	.literal .LC37, __ltdf2@PLT
	.align	4
	.global	fminl
	.type	fminl, @function
fminl:
	entry	sp, 32
	l32r	a7, .LC35
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bnez.n	a10, .L243
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L237
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L239
	bnez.n	a8, .L237
	j	.L243
.L239:
	l32r	a8, .LC37
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bltz	a10, .L237
.L243:
	mov.n	a2, a4
	mov.n	a3, a5
.L237:
	retw.n
	.size	fminl, .-fminl
	.literal_position
	.literal .LC38, s.0
	.literal .LC39, digits
	.align	4
	.global	l64a
	.type	l64a, @function
l64a:
	entry	sp, 32
	mov.n	a8, a2
	l32r	a2, .LC38
	beqz.n	a8, .L251
	l32r	a11, .LC39
	mov.n	a10, a2
.L250:
	extui	a9, a8, 0, 6
	add.n	a9, a11, a9
	l8ui	a9, a9, 0
	srli	a8, a8, 6
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	bnez.n	a8, .L250
	j	.L249
.L251:
	mov.n	a10, a2
.L249:
	movi.n	a8, 0
	s8i	a8, a10, 0
	retw.n
	.size	l64a, .-l64a
	.literal_position
	.literal .LC40, seed
	.align	4
	.global	srand
	.type	srand, @function
srand:
	entry	sp, 32
	l32r	a8, .LC40
	addi.n	a2, a2, -1
	movi.n	a9, 0
	s32i	a2, a8, 4
	s32i	a9, a8, 0
	retw.n
	.size	srand, .-srand
	.literal_position
	.literal .LC41, seed
	.literal .LC42, 1284865837
	.literal .LC43, 1481765933
	.literal .LC44, __umulsidi3@PLT
	.align	4
	.global	rand
	.type	rand, @function
rand:
	entry	sp, 32
	l32r	a7, .LC41
	l32r	a11, .LC42
	l32i	a10, a7, 4
	l32i	a2, a7, 0
	l32r	a8, .LC43
	mull	a2, a2, a11
	mull	a8, a10, a8
	add.n	a2, a2, a8
	l32r	a8, .LC44
	callx8	a8
	addi.n	a11, a11, 1
	nsau	a8, a11
	add.n	a2, a2, a10
	srli	a8, a8, 5
	add.n	a2, a2, a8
	s32i	a2, a7, 0
	s32i	a11, a7, 4
	srli	a2, a2, 1
	retw.n
	.size	rand, .-rand
	.align	4
	.global	insque
	.type	insque, @function
insque:
	entry	sp, 32
	bnez.n	a3, .L257
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L256
.L257:
	l32i	a8, a3, 0
	s32i	a3, a2, 4
	s32i	a8, a2, 0
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L256
	s32i	a2, a8, 4
.L256:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L263
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L263:
	l32i	a9, a2, 4
	beqz.n	a9, .L262
	s32i	a8, a9, 0
.L262:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC45, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	l32i	a7, a4, 0
	s32i	a4, sp, 8
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	beqz.n	a7, .L272
	mov.n	a2, a3
	movi.n	a4, 0
.L274:
	l32i	a10, sp, 0
	mov.n	a11, a2
	callx8	a6
	mov.n	a3, a2
	addi.n	a4, a4, 1
	beqz.n	a10, .L271
	add.n	a2, a2, a5
	bne	a7, a4, .L274
.L272:
	l32i	a8, sp, 8
	mull	a10, a5, a7
	addi.n	a7, a7, 1
	s32i	a7, a8, 0
	l32i	a8, sp, 4
	l32i	a11, sp, 0
	add.n	a10, a8, a10
	l32r	a8, .LC45
	mov.n	a12, a5
	callx8	a8
	mov.n	a3, a10
.L271:
	mov.n	a2, a3
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	l32i	a7, a4, 0
	s32i	a2, sp, 0
	beqz.n	a7, .L283
	movi.n	a4, 0
.L285:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	beqz.n	a10, .L282
	add.n	a3, a3, a5
	bne	a7, a4, .L285
.L283:
	movi.n	a2, 0
.L282:
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
	.literal .LC46, isspace@PLT
	.align	4
	.global	atoi
	.type	atoi, @function
atoi:
	entry	sp, 32
	l32r	a6, .LC46
	j	.L295
.L296:
	addi.n	a2, a2, 1
.L295:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L296
	movi.n	a8, 0x2b
	beq	a7, a8, .L297
	movi.n	a8, 0x2d
	beq	a7, a8, .L298
	j	.L308
.L297:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	mov.n	a13, a10
	bgeu	a8, a9, .L300
	j	.L294
.L298:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	bltu	a8, a9, .L294
	movi.n	a13, 1
.L300:
	movi.n	a12, 9
.L303:
	l8ui	a7, a2, 1
	addx4	a8, a10, a10
	subx2	a10, a8, a9
	mov.n	a11, a9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	add.n	a8, a8, a8
	bgeu	a12, a9, .L303
	j	.L309
.L308:
	addi	a9, a7, -48
	movi.n	a8, 9
	mov.n	a13, a10
	bgeu	a8, a9, .L300
	j	.L294
.L309:
	sub	a11, a11, a8
	moveqz	a10, a11, a13
.L294:
	mov.n	a2, a10
	retw.n
	.size	atoi, .-atoi
	.set	atoi.localalias,atoi
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	mov.n	a10, a2
	call8	atoi.localalias
	mov.n	a2, a10
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC47, isspace@PLT
	.literal .LC48, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 48
	l32r	a6, .LC47
	j	.L312
.L313:
	addi.n	a2, a2, 1
.L312:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	mov.n	a4, a10
	bnez.n	a10, .L313
	movi.n	a8, 0x2b
	beq	a7, a8, .L314
	movi.n	a8, 0x2d
	beq	a7, a8, .L315
	j	.L327
.L314:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bgeu	a8, a7, .L317
	j	.L324
.L315:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bltu	a8, a7, .L324
	movi.n	a4, 1
.L317:
	l32r	a8, .LC48
	movi.n	a11, 0
	s32i	a8, sp, 0
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L321:
	l32i	a8, sp, 0
	mull	a2, a5, a2
	movi.n	a10, 0xa
	callx8	a8
	add.n	a9, a2, a10
	srai	a13, a7, 31
	mov.n	a8, a11
	addi.n	a3, a3, 1
	sub	a11, a11, a7
	mov.n	a10, a7
	sub	a2, a9, a13
	bgeu	a8, a7, .L320
	addi.n	a2, a2, -1
.L320:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L321
	j	.L328
.L327:
	addi	a7, a7, -48
	movi.n	a8, 9
	mov.n	a3, a2
	bgeu	a8, a7, .L317
	j	.L324
.L328:
	bnez.n	a4, .L311
	sub	a2, a13, a9
	bgeu	a10, a8, .L323
	addi.n	a2, a2, -1
.L323:
	sub	a11, a10, a8
	j	.L311
.L324:
	mov.n	a11, a4
	mov.n	a2, a4
.L311:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L339:
	beqz.n	a4, .L330
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L334
	blti	a10, 1, .L329
	add.n	a3, a2, a5
	sub	a4, a4, a7
	j	.L339
.L334:
	mov.n	a4, a7
	j	.L339
.L330:
	movi.n	a2, 0
.L329:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
.L353:
	beqz.n	a4, .L341
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	beqz.n	a10, .L340
	blti	a10, 1, .L345
	add.n	a3, a2, a5
	srai	a4, a4, 1
	j	.L353
.L345:
	mov.n	a4, a7
	j	.L353
.L341:
	movi.n	a2, 0
.L340:
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
	bgeu	a3, a8, .L357
	addi.n	a2, a2, -1
.L357:
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
	l32r	a8, .LC49
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC50
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a4, a10
	l32i	a2, sp, 0
	l32i	a3, sp, 4
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
	bgeu	a3, a8, .L363
	addi.n	a2, a2, -1
.L363:
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
	l32r	a8, .LC51
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC52
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a4, a10
	l32i	a2, sp, 0
	l32i	a3, sp, 4
	mov.n	a5, a11
	retw.n
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 32
	l32i	a8, a2, 0
	beq	a3, a8, .L366
.L380:
	beqz.n	a8, .L366
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	beq	a8, a3, .L366
	j	.L380
.L366:
	movi.n	a9, 0
	moveqz	a2, a9, a8
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
	sub	a13, a8, a9
	movi.n	a12, 1
	movi.n	a11, 1
	moveqz	a12, a10, a8
	movnez	a11, a10, a13
	bnone	a12, a11, .L382
.L398:
	beqz.n	a9, .L382
	l32i	a8, a2, 4
	l32i	a9, a3, 4
	movi.n	a12, 1
	sub	a13, a8, a9
	movi.n	a11, 1
	moveqz	a12, a10, a8
	movnez	a11, a10, a13
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnone	a12, a11, .L382
	j	.L398
.L382:
	movi.n	a2, -1
	blt	a8, a9, .L381
	movi.n	a2, 1
	blt	a9, a8, .L381
	movi.n	a2, 0
.L381:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L400:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L400
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L405
	mov.n	a8, a2
.L404:
	l32i	a9, a8, 4
	addi.n	a8, a8, 4
	bnez.n	a9, .L404
	sub	a8, a8, a2
	srai	a2, a8, 2
	j	.L402
.L405:
	mov.n	a2, a8
.L402:
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	movi.n	a11, 0
	mov.n	a10, a4
	bnez.n	a4, .L408
	j	.L421
.L410:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a10, a10, -1
	bnez.n	a10, .L408
	j	.L421
.L408:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a13, 1
	moveqz	a13, a11, a8
	movi.n	a12, 1
	sub	a8, a8, a9
	movnez	a12, a11, a8
	bnone	a13, a12, .L412
	bnez.n	a9, .L410
	j	.L412
.L414:
	movi.n	a2, 1
	blt	a8, a9, .L407
.L421:
	movi.n	a2, 0
	j	.L407
.L412:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L414
	movi.n	a2, -1
.L407:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L424
	j	.L430
.L426:
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L424
	j	.L430
.L424:
	l32i	a9, a2, 0
	bne	a9, a3, .L426
	j	.L423
.L430:
	movi.n	a2, 0
.L423:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L433
	j	.L442
.L435:
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L433
	j	.L442
.L433:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	beq	a10, a9, .L435
	j	.L443
.L438:
	movi.n	a2, 1
	blt	a9, a10, .L432
.L442:
	movi.n	a2, 0
	j	.L432
.L443:
	bge	a10, a9, .L438
	movi.n	a2, -1
.L432:
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
	beqz.n	a4, .L446
	l32r	a8, .LC53
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L446:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L451
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a10, a2
	addi.n	a9, a4, -1
	bltu	a12, a11, .L452
	bnez.n	a4, .L453
	j	.L451
.L452:
	beqz.n	a4, .L451
	slli	a10, a9, 2
	srli	a10, a10, 2
	addx4	a8, a9, a3
	addi.n	a10, a10, 1
	addx4	a9, a9, a2
	loop	a10, .L454_LEND
.L454:
	l32i	a11, a8, 0
	addi	a9, a9, -4
	s32i	a11, a9, 4
	addi	a8, a8, -4
	.L454_LEND:
	j	.L451
.L453:
	l32i	a9, a8, 0
	addi.n	a8, a8, 4
	s32i	a9, a10, 0
	addi.n	a10, a10, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L453
.L451:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L464
	mov.n	a8, a2
.L465:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L465
.L464:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a3
	bgeu	a2, a3, .L472
	add.n	a10, a2, a4
	add.n	a9, a3, a4
	beqz.n	a4, .L471
	sub	a8, a10, a2
	loop	a8, .L474_LEND
.L474:
	addi.n	a10, a10, -1
	l8ui	a11, a10, 0
	addi.n	a9, a9, -1
	s8i	a11, a9, 0
	.L474_LEND:
	j	.L471
.L472:
	beq	a2, a3, .L471
	beqz.n	a4, .L471
.L475:
	l8ui	a10, a8, 0
	addi.n	a8, a8, 1
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L475
.L471:
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	neg	a11, a4
	extui	a14, a11, 0, 6
	movi.n	a15, -1
	movi.n	a10, -1
	xor	a15, a4, a15
	xor	a10, a14, a10
	srli	a13, a3, 1
	add.n	a12, a2, a2
	movi.n	a6, 0x20
	ssr	a15
	srl	a13, a13
	ssl	a10
	sll	a12, a12
	mov.n	a8, a2
	ssr	a14
	srl	a10, a3
	ssl	a4
	sll	a2, a2
	and	a7, a4, a6
	movi.n	a15, 0
	ssl	a4
	sll	a3, a3
	and	a9, a11, a6
	ssr	a14
	srl	a8, a8
	or	a2, a13, a2
	or	a10, a12, a10
	movnez	a2, a3, a7
	movnez	a10, a8, a9
	movnez	a3, a15, a7
	movnez	a8, a15, a9
	or	a2, a8, a2
	or	a3, a10, a3
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	neg	a11, a4
	extui	a14, a11, 0, 6
	movi.n	a15, -1
	movi.n	a10, -1
	xor	a15, a4, a15
	xor	a10, a14, a10
	add.n	a13, a2, a2
	srli	a12, a3, 1
	movi.n	a6, 0x20
	ssl	a15
	sll	a13, a13
	ssr	a10
	srl	a12, a12
	mov.n	a8, a3
	ssl	a14
	sll	a10, a2
	ssr	a4
	srl	a3, a3
	and	a7, a4, a6
	movi.n	a15, 0
	ssr	a4
	srl	a2, a2
	and	a9, a11, a6
	ssl	a14
	sll	a8, a8
	or	a3, a13, a3
	or	a10, a12, a10
	movnez	a3, a2, a7
	movnez	a10, a8, a9
	movnez	a2, a15, a7
	movnez	a8, a15, a9
	or	a2, a10, a2
	or	a3, a8, a3
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
	extui	a3, a3, 0, 4
	neg	a8, a3
	extui	a2, a2, 0, 16
	extui	a8, a8, 0, 4
	ssl	a3
	sll	a3, a2
	ssr	a8
	srl	a2, a2
	or	a2, a3, a2
	extui	a2, a2, 0, 16
	retw.n
	.size	rotl16, .-rotl16
	.align	4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	entry	sp, 32
	extui	a3, a3, 0, 4
	neg	a8, a3
	extui	a2, a2, 0, 16
	extui	a8, a8, 0, 4
	ssr	a3
	srl	a3, a2
	ssl	a8
	sll	a2, a2
	or	a2, a3, a2
	extui	a2, a2, 0, 16
	retw.n
	.size	rotr16, .-rotr16
	.align	4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	entry	sp, 32
	extui	a3, a3, 0, 3
	neg	a8, a3
	extui	a2, a2, 0, 8
	extui	a8, a8, 0, 3
	ssl	a3
	sll	a3, a2
	ssr	a8
	srl	a2, a2
	or	a2, a3, a2
	extui	a2, a2, 0, 8
	retw.n
	.size	rotl8, .-rotl8
	.align	4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	entry	sp, 32
	extui	a3, a3, 0, 3
	neg	a8, a3
	extui	a2, a2, 0, 8
	extui	a8, a8, 0, 3
	ssr	a3
	srl	a3, a2
	ssl	a8
	sll	a2, a2
	or	a2, a3, a2
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
	loop	a10, .L502_LEND
.L502:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L500
	mov.n	a2, a8
	j	.L499
.L500:
	nop.n
	.L502_LEND:
	mov.n	a2, a11
.L499:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L505
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L505
	movi.n	a2, 1
.L507:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L507
.L505:
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
	l32r	a11, .LC59
	l32r	a8, .LC55
	mov.n	a10, a2
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, 1
	bltz	a10, .L512
	l32r	a11, .LC58
	l32r	a8, .LC57
	mov.n	a10, a7
	callx8	a8
	bgei	a10, 1, .L512
	movi.n	a2, 0
.L512:
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
	l32r	a12, .LC65
	l32r	a8, .LC61
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L516
	l32r	a12, .LC64
	l32r	a8, .LC63
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L516
	movi.n	a2, 0
.L516:
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
	l32r	a12, .LC71
	l32r	a8, .LC67
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L520
	l32r	a12, .LC70
	l32r	a8, .LC69
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L520
	movi.n	a2, 0
.L520:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC72, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	l32r	a8, .LC72
	mov.n	a10, a3
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
	l32r	a8, .LC75
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	bnez.n	a10, .L526
	l32r	a8, .LC76
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC77
	mov.n	a11, a2
	callx8	a8
	beqz.n	a10, .L526
	l32r	a7, .LC79
	l32r	a8, .LC80
	movgez	a7, a8, a3
	bbci	a3, 31, .L529
	l32r	a6, .LC78
.L530:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L529:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L526
	l32r	a6, .LC78
.L531:
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L530
	srai	a3, a8, 1
	j	.L531
.L526:
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
	l32r	a8, .LC83
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L541
	l32r	a8, .LC84
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC85
	mov.n	a12, a2
	mov.n	a13, a3
	callx8	a8
	beqz.n	a10, .L541
	l32r	a6, .LC88
	movi.n	a7, 0
	bgez	a4, .L543
	l32r	a6, .LC87
	movi.n	a7, 0
.L543:
	bbci	a4, 31, .L544
	l32r	a5, .LC86
.L545:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L544:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L541
	l32r	a5, .LC86
.L546:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L545
	srai	a4, a8, 1
	j	.L546
.L541:
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
	l32r	a8, .LC91
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L556
	l32r	a8, .LC92
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC93
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	beqz.n	a10, .L556
	l32r	a6, .LC96
	movi.n	a7, 0
	bgez	a4, .L558
	l32r	a6, .LC95
	movi.n	a7, 0
.L558:
	bbci	a4, 31, .L559
	l32r	a5, .LC94
.L560:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L559:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L556
	l32r	a5, .LC94
.L561:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L560
	srai	a4, a8, 1
	j	.L561
.L556:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L571
	mov.n	a8, a2
.L572:
	l8ui	a9, a8, 0
	l8ui	a10, a3, 0
	addi.n	a3, a3, 1
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L572
.L571:
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC97, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	l32r	a8, .LC97
	mov.n	a10, a2
	callx8	a8
	add.n	a10, a2, a10
	bnez.n	a4, .L579
	j	.L580
.L581:
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L579
	j	.L580
.L579:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a10, 0
	bnez.n	a8, .L581
	j	.L582
.L580:
	movi.n	a8, 0
	s8i	a8, a10, 0
.L582:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bnez.n	a3, .L589
	j	.L588
.L591:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L589
	j	.L588
.L589:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L591
.L588:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L598
	j	.L602
.L600:
	beq	a9, a10, .L599
.L601:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L600
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a10, .L602
.L598:
	mov.n	a8, a3
	j	.L601
.L602:
	mov.n	a2, a10
.L599:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L606:
	l8ui	a9, a8, 0
	sub	a10, a3, a9
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L606
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
	l32r	a9, .LC98
	mov.n	a10, a3
	s32i	a2, sp, 0
	callx8	a9
	mov.n	a7, a10
	mov.n	a8, a2
	beqz.n	a10, .L608
	l8ui	a5, a3, 0
	l32r	a6, .LC100
	l32r	a4, .LC99
	j	.L610
.L611:
	callx8	a4
	beqz.n	a10, .L608
	addi.n	a8, a2, 1
.L610:
	mov.n	a11, a5
	mov.n	a10, a8
	callx8	a6
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a2, a10
	bnez.n	a10, .L611
.L608:
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
	l32r	a7, .LC102
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	movi.n	a12, 0
	movi.n	a13, 0
	bgez	a10, .L626
	l32r	a8, .LC103
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a8
	blti	a10, 1, .L621
	j	.L620
.L626:
	l32r	a8, .LC103
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L621
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L621
.L620:
	l32r	a10, .LC104
	xor	a2, a2, a10
.L621:
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
	mov.n	a8, a4
	beqz.n	a5, .L627
	bltu	a3, a5, .L633
	sub	a3, a3, a5
	add.n	a6, a2, a3
	bltu	a6, a2, .L633
	addi.n	a9, a5, -1
	l8ui	a3, a4, 0
	l32r	a4, .LC105
	s32i	a9, sp, 0
	addi.n	a5, a8, 1
.L630:
	l8ui	a8, a7, 0
	mov.n	a2, a7
	addi.n	a7, a7, 1
	bne	a8, a3, .L629
	l32i	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a7
	callx8	a4
	beqz.n	a10, .L627
.L629:
	bgeu	a6, a7, .L630
.L633:
	movi.n	a2, 0
.L627:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC106, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	l32r	a8, .LC106
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC108, __ltdf2@PLT
	.literal .LC109, -2147483648
	.literal .LC111, __ledf2@PLT
	.literal .LC113, __gtdf2@PLT
	.literal .LC115, __gedf2@PLT
	.literal .LC117, __nedf2@PLT
	.literal .LC118, __muldf3@PLT
	.literal .LC119, __adddf3@PLT
	.literal .LC120, 1071644672
	.literal .LC121, 1072693248
	.literal .LC122, -1075838976
	.literal .LC123, -1074790400
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	l32r	a5, .LC108
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	s32i	a4, sp, 8
	mov.n	a6, a2
	mov.n	a7, a3
	callx8	a5
	bgez	a10, .L662
	l32r	a10, .LC109
	l32r	a12, .LC123
	l32r	a14, .LC111
	xor	a2, a2, a10
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a14
	blti	a10, 1, .L652
	l32r	a12, .LC122
	l32r	a14, .LC113
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a14
	bgei	a10, 1, .L653
	movi.n	a8, 0
	s32i	a8, a4, 0
	mov.n	a2, a6
	j	.L640
.L662:
	l32r	a8, .LC121
	movi.n	a9, 0
	l32r	a4, .LC115
	s32i.n	a8, sp, 0
	mov.n	a12, a8
	s32i.n	a9, sp, 4
	mov.n	a13, a9
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a4
	movi.n	a8, 0
	s32i	a8, sp, 12
	bgez	a10, .L643
	l32r	a8, .LC120
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	bgez	a10, .L646
	l32r	a8, .LC117
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L655
.L646:
	l32i	a9, sp, 8
	movi.n	a8, 0
	s32i	a8, a9, 0
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L640
.L652:
	movi.n	a8, 1
	s32i	a8, sp, 12
	l32r	a8, .LC121
	movi.n	a9, 0
	l32r	a4, .LC115
	mov.n	a6, a2
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L643:
	l32r	a5, .LC118
	movi.n	a3, 0
	mov.n	a2, a4
.L649:
	l32r	a12, .LC120
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	mov.n	a10, a6
	addi.n	a3, a3, 1
	mov.n	a7, a11
	callx8	a2
	bgez	a10, .L649
	j	.L650
.L653:
	movi.n	a8, 1
	s32i	a8, sp, 12
	l32r	a8, .LC120
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	j	.L644
.L655:
.L644:
	l32r	a4, .LC119
	mov.n	a7, a3
	mov.n	a6, a2
	movi.n	a3, 0
.L651:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a4
	mov.n	a6, a10
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	mov.n	a10, a6
	addi.n	a3, a3, -1
	mov.n	a7, a11
	callx8	a5
	bltz	a10, .L651
.L650:
	l32i	a8, sp, 8
	mov.n	a2, a6
	s32i	a3, a8, 0
	l32i	a8, sp, 12
	mov.n	a3, a7
	beqz.n	a8, .L640
	l32r	a8, .LC109
	xor	a2, a6, a8
.L640:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC124, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	or	a9, a3, a2
	mov.n	a8, a2
	mov.n	a6, a3
	beqz.n	a9, .L668
	l32r	a9, .LC124
	movi.n	a3, 0
	s32i	a9, sp, 4
	mov.n	a2, a3
.L667:
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	extui	a10, a6, 0, 1
	mov.n	a11, a5
	mull	a7, a4, a10
	callx8	a8
	l32i	a8, sp, 0
	add.n	a7, a7, a10
	ssai	1
	src	a6, a8, a6
	add.n	a11, a3, a11
	srli	a8, a8, 1
	or	a15, a8, a6
	movi.n	a13, 1
	add.n	a7, a2, a7
	bltu	a11, a3, .L666
	movi.n	a13, 0
.L666:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L667
	j	.L663
.L668:
	mov.n	a3, a9
	mov.n	a2, a9
.L663:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L671
	j	.L672
.L675:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L673
	beqz.n	a8, .L673
.L671:
	bgez	a3, .L675
	j	.L672
.L673:
	movi.n	a9, 0
	beqz.n	a8, .L676
.L672:
	movi.n	a9, 0
.L678:
	bltu	a2, a3, .L677
	sub	a2, a2, a3
	or	a9, a9, a8
.L677:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L678
.L676:
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
	bne	a2, a9, .L701
	beq	a3, a2, .L702
.L701:
	nsau	a2, a8
	addi	a2, a2, 32
	nsau	a8, a10
	movnez	a2, a8, a10
	addi.n	a2, a2, -1
	j	.L695
.L702:
	movi.n	a2, 0x3f
.L695:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L706
	movi.n	a2, 0
.L705:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L705
	j	.L703
.L706:
.L703:
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	movi.n	a12, -8
	srli	a8, a4, 3
	and	a12, a4, a12
	bltu	a2, a3, .L709
	add.n	a9, a3, a4
	bltu	a9, a2, .L709
	addi.n	a8, a4, -1
	bnez.n	a4, .L710
	j	.L708
.L709:
	beqz.n	a8, .L712
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	mov.n	a13, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L713_LEND
.L713:
	l32i	a10, a13, 0
	l32i	a11, a13, 4
	s32i	a10, a9, 0
	s32i	a11, a9, 4
	addi.n	a13, a13, 8
	addi.n	a9, a9, 8
	.L713_LEND:
.L712:
	bgeu	a12, a4, .L708
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L714:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a2, 0
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L714
	j	.L708
.L710:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L710
.L708:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a8, a4, 1
	bltu	a2, a3, .L726
	add.n	a9, a3, a4
	bltu	a9, a2, .L726
	addi.n	a8, a4, -1
	bnez.n	a4, .L727
	j	.L725
.L726:
	beqz.n	a8, .L729
	add.n	a8, a8, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L730_LEND
.L730:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	.L730_LEND:
.L729:
	bbci	a4, 31, .L725
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L725
.L727:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L727
.L725:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	movi.n	a12, -4
	srli	a8, a4, 2
	and	a12, a4, a12
	bltu	a2, a3, .L743
	add.n	a9, a3, a4
	bltu	a9, a2, .L743
	addi.n	a8, a4, -1
	bnez.n	a4, .L744
	j	.L742
.L743:
	beqz.n	a8, .L746
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L747_LEND
.L747:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	.L747_LEND:
.L746:
	bgeu	a12, a4, .L742
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L748:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a2, 0
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L748
	j	.L742
.L744:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L744
.L742:
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
	.literal .LC125, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	l32r	a8, .LC125
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC126, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	l32r	a8, .LC126
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC127, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	l32r	a8, .LC127
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC128, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	l32r	a8, .LC128
	mov.n	a10, a2
	mov.n	a11, a3
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
	movi.n	a8, 0x10
	movi.n	a2, 0
	loop	a8, .L767_LEND
.L767:
	addi	a9, a2, 16
	bbs	a10, a9, .L765
	addi.n	a2, a2, 1
	.L767_LEND:
.L765:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a10, a2, 0, 16
	movi.n	a8, 0x10
	movi.n	a2, 0
	loop	a8, .L772_LEND
.L772:
	ssr	a2
	sra	a9, a10
	bbsi	a9, 31, .L770
	addi.n	a2, a2, 1
	.L772_LEND:
.L770:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC129, 0x47000000
	.literal .LC130, __gesf2@PLT
	.literal .LC131, __subsf3@PLT
	.literal .LC132, __fixsfsi@PLT
	.literal .LC133, 32768
	.literal .LC134, .LC129
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC134
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC130
	callx8	a8
	bltz	a10, .L780
	l32r	a8, .LC134
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC131
	callx8	a8
	l32r	a8, .LC132
	callx8	a8
	l32r	a8, .LC133
	add.n	a2, a10, a8
	j	.L775
.L780:
	l32r	a8, .LC132
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
.L775:
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	movi.n	a11, 0
	extui	a12, a2, 0, 16
	mov.n	a10, a11
	movi.n	a9, 0x10
	loop	a9, .L782_LEND
.L782:
	ssr	a10
	sra	a8, a12
	extui	a8, a8, 0, 1
	add.n	a11, a11, a8
	addi.n	a10, a10, 1
	.L782_LEND:
	extui	a2, a11, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	movi.n	a11, 0
	extui	a12, a2, 0, 16
	mov.n	a10, a11
	movi.n	a9, 0x10
	loop	a9, .L786_LEND
.L786:
	ssr	a10
	sra	a8, a12
	extui	a8, a8, 0, 1
	add.n	a11, a11, a8
	addi.n	a10, a10, 1
	.L786_LEND:
	mov.n	a2, a11
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L792
	movi.n	a2, 0
.L791:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L791
	j	.L789
.L792:
.L789:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L794
	j	.L801
.L796:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srli	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
.L801:
	bnez.n	a3, .L796
.L794:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L803
	j	.L804
.L807:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L805
	beqz.n	a8, .L805
.L803:
	bgez	a3, .L807
	j	.L804
.L805:
	movi.n	a9, 0
	beqz.n	a8, .L808
.L804:
	movi.n	a9, 0
.L810:
	bltu	a2, a3, .L809
	sub	a2, a2, a3
	or	a9, a9, a8
.L809:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L810
.L808:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC135, __ltsf2@PLT
	.literal .LC136, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	l32r	a8, .LC135
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, -1
	bltz	a10, .L824
	l32r	a8, .LC136
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L824
	movi.n	a2, 0
.L824:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC137, __ltdf2@PLT
	.literal .LC138, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 32
	l32r	a8, .LC137
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, -1
	bltz	a10, .L828
	l32r	a8, .LC138
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L828
	movi.n	a2, 0
.L828:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC139, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	l32r	a8, .LC139
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	srai	a8, a2, 31
	and	a8, a8, a3
	srai	a7, a3, 31
	sub	a10, a10, a8
	and	a2, a7, a2
	sub	a2, a10, a2
	mov.n	a3, a11
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC140, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	l32r	a8, .LC140
	mov.n	a10, a2
	mov.n	a11, a3
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
	mov.n	a9, a2
	bgez	a3, .L835
	neg	a3, a3
	movi.n	a11, 1
	j	.L836
.L835:
	beqz.n	a3, .L841
	movi.n	a11, 0
.L836:
	movi.n	a2, 0
	movi.n	a10, 0x20
	loop	a10, .L838_LEND
.L838:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srai	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
	beqz.n	a3, .L842
	.L838_LEND:
.L842:
	neg	a8, a2
	movnez	a2, a8, a11
	j	.L834
.L841:
	mov.n	a2, a3
.L834:
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC141, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	bltz	a2, .L852
	movi.n	a12, 0
	bltz	a3, .L853
	j	.L858
.L852:
	neg	a10, a2
	movi.n	a12, 0
	bltz	a3, .L855
	j	.L857
.L855:
	neg	a11, a3
.L858:
	l32r	a8, .LC141
	callx8	a8
	mov.n	a2, a10
	j	.L851
.L853:
	neg	a11, a3
.L857:
	l32r	a8, .LC141
	callx8	a8
	neg	a2, a10
.L851:
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC142, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a10, a2
	abs	a11, a3
	movi.n	a12, 1
	bltz	a2, .L860
	l32r	a8, .LC142
	callx8	a8
	mov.n	a2, a10
	j	.L859
.L860:
	l32r	a8, .LC142
	neg	a10, a2
	callx8	a8
	neg	a2, a10
.L859:
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 32
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	movi.n	a8, 1
	bltu	a3, a2, .L863
	j	.L864
.L867:
	extui	a3, a12, 0, 16
	extui	a8, a11, 0, 16
	bgeu	a3, a2, .L865
	beqz.n	a8, .L865
.L863:
	sext	a9, a3, 15
	add.n	a12, a3, a3
	add.n	a11, a8, a8
	bgez	a9, .L867
	j	.L864
.L865:
	movi.n	a9, 0
	beqz.n	a8, .L868
.L864:
	movi.n	a9, 0
.L870:
	or	a11, a9, a8
	sub	a12, a2, a3
	srli	a8, a8, 1
	bltu	a2, a3, .L869
	extui	a2, a12, 0, 16
	extui	a9, a11, 0, 16
.L869:
	srli	a3, a3, 1
	bnez.n	a8, .L870
.L868:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L885
	j	.L886
.L889:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L887
	beqz.n	a8, .L887
.L885:
	bgez	a3, .L889
	j	.L886
.L887:
	movi.n	a9, 0
	beqz.n	a8, .L890
.L886:
	movi.n	a9, 0
.L892:
	bltu	a2, a3, .L891
	sub	a2, a2, a3
	or	a9, a9, a8
.L891:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L892
.L890:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L907
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L908
.L907:
	beqz.n	a4, .L909
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L908:
	mov.n	a3, a8
.L909:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L912
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L913
.L912:
	beqz.n	a4, .L914
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L913:
	mov.n	a2, a8
.L914:
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
	.literal .LC143, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	l32r	a8, .LC143
	movi.n	a12, 1
	bgeu	a8, a2, .L919
	movi.n	a12, 0
.L919:
	slli	a12, a12, 4
	addi	a8, a12, -16
	neg	a8, a8
	ssr	a8
	srl	a8, a2
	extui	a9, a8, 8, 8
	movi.n	a13, 0
	slli	a9, a9, 8
	movi.n	a11, 1
	movnez	a11, a13, a9
	slli	a11, a11, 3
	addi	a9, a11, -8
	neg	a9, a9
	ssr	a9
	srl	a8, a8
	movi	a9, 0xf0
	and	a9, a8, a9
	movi.n	a10, 1
	movnez	a10, a13, a9
	slli	a10, a10, 2
	addi	a9, a10, -4
	neg	a9, a9
	ssr	a9
	srl	a8, a8
	movi.n	a14, 0xc
	and	a14, a8, a14
	movi.n	a9, 1
	movnez	a9, a13, a14
	add.n	a9, a9, a9
	addi	a14, a9, -2
	neg	a14, a14
	ssr	a14
	srl	a8, a8
	add.n	a11, a11, a12
	add.n	a10, a10, a11
	addi	a2, a8, -2
	movi.n	a11, 2
	and	a8, a8, a11
	neg	a2, a2
	movnez	a2, a13, a8
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
	blt	a8, a4, .L920
	movi.n	a2, 2
	blt	a4, a8, .L920
	movi.n	a2, 0
	bltu	a3, a5, .L920
	movi.n	a2, 2
	bltu	a5, a3, .L920
	movi.n	a2, 1
.L920:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC145, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	l32r	a8, .LC145
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a8
	addi.n	a2, a10, -1
	retw.n
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	entry	sp, 32
	movi.n	a9, 0
	extui	a8, a2, 0, 16
	movi.n	a12, 1
	movnez	a12, a9, a8
	slli	a12, a12, 4
	ssr	a12
	srl	a8, a2
	extui	a10, a8, 0, 8
	movi.n	a11, 1
	movnez	a11, a9, a10
	ssa8l	a11
	srl	a8, a8
	extui	a13, a8, 0, 4
	movi.n	a10, 1
	movnez	a10, a9, a13
	slli	a10, a10, 2
	ssr	a10
	srl	a8, a8
	extui	a13, a8, 0, 2
	movi.n	a2, 1
	movnez	a2, a9, a13
	add.n	a2, a2, a2
	ssr	a2
	srl	a8, a8
	extui	a8, a8, 0, 2
	srli	a9, a8, 1
	movi.n	a13, -1
	xor	a8, a8, a13
	addi	a9, a9, -2
	addx8	a11, a11, a12
	neg	a9, a9
	extui	a8, a8, 0, 1
	mul16u	a8, a8, a9
	add.n	a10, a10, a11
	add.n	a2, a2, a10
	add.n	a2, a8, a2
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L929
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L930
.L929:
	beqz.n	a4, .L931
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L930:
	mov.n	a2, a8
.L931:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	mul16u	a10, a2, a3
	extui	a8, a2, 16, 16
	mul16u	a9, a3, a8
	extui	a11, a10, 16, 16
	extui	a3, a3, 16, 16
	add.n	a9, a9, a11
	mul16u	a2, a2, a3
	mul16u	a11, a8, a3
	extui	a8, a9, 0, 16
	add.n	a8, a2, a8
	extui	a2, a9, 16, 16
	extui	a10, a10, 0, 16
	slli	a3, a8, 16
	add.n	a2, a2, a11
	extui	a8, a8, 16, 16
	add.n	a2, a2, a8
	add.n	a3, a10, a3
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC146, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mull	a7, a3, a4
	l32r	a8, .LC146
	mov.n	a11, a5
	mull	a5, a5, a2
	mov.n	a10, a3
	callx8	a8
	add.n	a5, a5, a7
	mov.n	a3, a11
	add.n	a2, a5, a10
	retw.n
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	entry	sp, 32
	movi.n	a8, 1
	moveqz	a8, a3, a3
	neg	a2, a2
	sub	a2, a2, a8
	neg	a3, a3
	retw.n
	.size	__negdi2, .-__negdi2
	.literal_position
	.literal .LC147, 27030
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
	l32r	a2, .LC147
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC148, 27030
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
	l32r	a2, .LC148
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC149, 1431655765
	.literal .LC150, 858993459
	.literal .LC151, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	l32r	a10, .LC149
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L942
	addi.n	a2, a2, -1
.L942:
	l32r	a9, .LC150
	sub	a3, a3, a8
	ssai	2
	src	a8, a2, a3
	srli	a10, a2, 2
	and	a8, a8, a9
	and	a3, a3, a9
	and	a10, a10, a9
	and	a2, a2, a9
	add.n	a8, a8, a3
	add.n	a10, a10, a2
	bgeu	a8, a3, .L943
	addi.n	a10, a10, 1
.L943:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a8, a11, .L944
	addi.n	a9, a9, 1
.L944:
	l32r	a10, .LC151
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
	.literal .LC152, 1431655765
	.literal .LC153, 858993459
	.literal .LC154, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	l32r	a9, .LC152
	srli	a8, a2, 1
	and	a8, a8, a9
	l32r	a10, .LC153
	sub	a2, a2, a8
	srli	a9, a2, 2
	and	a9, a9, a10
	and	a2, a2, a10
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC154
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC156, __muldf3@PLT
	.literal .LC157, __divdf3@PLT
	.literal .LC158, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a7, a4
	s32i	a4, sp, 0
	mov.n	a5, a3
	mov.n	a4, a2
	bbci	a7, 31, .L952
	l32r	a6, .LC156
	l32r	a2, .LC158
	movi.n	a3, 0
.L949:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L947
.L952:
	l32i	a7, sp, 0
	l32r	a2, .LC158
	movi.n	a3, 0
.L947:
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	srai	a7, a8, 1
	beqz.n	a7, .L948
	l32r	a6, .LC156
.L950:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a4, a10
	mov.n	a5, a11
	bbsi	a7, 31, .L949
	srai	a7, a8, 1
	j	.L950
.L948:
	l32i	a8, sp, 0
	bgez	a8, .L946
	l32r	a10, .LC158
	l32r	a8, .LC157
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L946:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC160, __mulsf3@PLT
	.literal .LC161, __divsf3@PLT
	.literal .LC162, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a2, .LC162
	bbci	a3, 31, .L954
	l32r	a5, .LC160
.L956:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
	j	.L954
.L954:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L955
	l32r	a5, .LC160
.L957:
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L956
	srai	a7, a8, 1
	j	.L957
.L955:
	bgez	a3, .L953
	l32r	a10, .LC162
	l32r	a8, .LC161
	mov.n	a11, a2
	callx8	a8
	mov.n	a2, a10
.L953:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L960
	movi.n	a2, 2
	bltu	a4, a8, .L960
	movi.n	a2, 0
	bltu	a3, a5, .L960
	movi.n	a2, 2
	bltu	a5, a3, .L960
	movi.n	a2, 1
.L960:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC163, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	l32r	a8, .LC163
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
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
	.global	__ledf2
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
