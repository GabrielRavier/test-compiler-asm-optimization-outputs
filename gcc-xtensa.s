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
	bnez.n	a5, .L18
	j	.L22
.L20:
	addi.n	a5, a5, -1
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a9, a9, -1
	bnez.n	a9, .L18
	j	.L22
.L18:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	bne	a8, a4, .L20
	addi.n	a2, a2, 1
	bnez.n	a5, .L17
.L22:
	movi.n	a2, 0
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
	bnez.n	a4, .L31
	j	.L36
.L33:
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	addi.n	a8, a8, -1
	bnez.n	a8, .L31
	j	.L36
.L31:
	l8ui	a9, a2, 0
	bne	a9, a3, .L33
	bnez.n	a4, .L30
.L36:
	movi.n	a2, 0
.L30:
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L41
	j	.L45
.L43:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L41
	j	.L45
.L41:
	l8ui	a10, a2, 0
	l8ui	a9, a3, 0
	beq	a10, a9, .L43
	beqz.n	a4, .L45
	sub	a2, a10, a9
	j	.L40
.L45:
	movi.n	a2, 0
.L40:
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
	beqz.n	a4, .L54
	mov.n	a10, a2
	l32r	a8, .LC0
	callx8	a8
.L54:
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
	j	.L59
.L61:
	mov.n	a2, a8
	addi.n	a8, a8, -1
	l8ui	a9, a2, 0
	beq	a9, a3, .L58
.L59:
	bne	a8, a10, .L61
	movi.n	a2, 0
.L58:
	retw.n
	.size	memrchr, .-memrchr
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 32
	beqz.n	a4, .L63
	mov.n	a8, a2
.L64:
	s8i	a3, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L64
.L63:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L71
.L72:
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	bnez.n	a8, .L72
.L71:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	extui	a3, a3, 0, 8
	l8ui	a8, a2, 0
	bnez.n	a8, .L78
	j	.L77
.L80:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L77
.L78:
	bne	a8, a3, .L80
.L77:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L86:
	l8ui	a8, a2, 0
	beq	a8, a3, .L85
	addi.n	a2, a2, 1
	bnez.n	a8, .L86
	movi.n	a2, 0
.L85:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	mov.n	a9, a2
	l8ui	a8, a2, 0
	l8ui	a10, a3, 0
	sub	a2, a8, a10
	bnez.n	a8, .L100
	j	.L89
.L100:
	bne	a8, a10, .L89
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
	l8ui	a8, a9, 0
	l8ui	a10, a3, 0
	sub	a2, a8, a10
	bnez.n	a8, .L100
.L89:
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L105
	mov.n	a8, a2
.L104:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	bnez.n	a9, .L104
	j	.L103
.L105:
	mov.n	a8, a2
.L103:
	sub	a2, a8, a2
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a10, a2
	movi.n	a2, 0
	beqz.n	a4, .L107
	l8ui	a9, a10, 0
	beqz.n	a9, .L109
	addi.n	a4, a4, -1
	mov.n	a11, a2
	add.n	a12, a3, a4
	j	.L110
.L111:
	addi.n	a10, a10, 1
	addi.n	a3, a3, 1
	l8ui	a9, a10, 0
	beqz.n	a9, .L109
.L110:
	l8ui	a8, a3, 0
	movi.n	a14, 1
	moveqz	a14, a11, a8
	sub	a8, a8, a9
	movi.n	a13, 1
	movnez	a13, a11, a8
	bnone	a14, a13, .L109
	bne	a3, a12, .L111
.L109:
	l8ui	a8, a3, 0
	sub	a2, a9, a8
.L107:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L122
	movi.n	a8, -2
	and	a8, a4, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L124_LEND
.L124:
	l8ui	a9, a2, 1
	s8i	a9, a3, 0
	l8ui	a9, a2, 0
	s8i	a9, a3, 1
	addi.n	a3, a3, 2
	addi.n	a2, a2, 2
	.L124_LEND:
.L122:
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
	bgeu	a9, a8, .L128
	movi.n	a2, 0
.L128:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi.n	a8, 1
	movi	a9, 0x7f
	bgeu	a9, a2, .L130
	movi.n	a8, 0
.L130:
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
	bgeu	a9, a2, .L133
	movi.n	a8, 0
.L133:
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
	bgeu	a9, a8, .L135
	movi.n	a2, 0
.L135:
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
	bgeu	a9, a8, .L137
	movi.n	a2, 0
.L137:
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
	bgeu	a9, a8, .L139
	movi.n	a2, 0
.L139:
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
	bgeu	a9, a8, .L141
	movi.n	a2, 0
.L141:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L143
	movi.n	a8, 0
.L143:
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
	bgeu	a9, a8, .L145
	movi.n	a2, 0
.L145:
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
	movi.n	a10, 0x20
	bgeu	a10, a9, .L151
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L151
	l32r	a9, .LC1
	add.n	a9, a2, a9
	movi.n	a2, 1
	bltui	a9, 2, .L146
	l32r	a9, .LC2
	add.n	a8, a8, a9
	bltui	a8, 3, .L146
	movi.n	a2, 0
	j	.L146
.L151:
	movi.n	a2, 1
.L146:
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
	bgeu	a9, a8, .L156
	movi.n	a2, 0
.L156:
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
	bltu	a9, a2, .L158
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a2, 1
	movi.n	a9, 0x20
	bltu	a9, a8, .L157
	movi.n	a2, 0
	j	.L157
.L158:
	l32r	a9, .LC3
	add.n	a9, a2, a9
	l32r	a10, .LC4
	bgeu	a10, a9, .L163
	l32r	a9, .LC5
	bgeu	a9, a2, .L163
	l32r	a9, .LC6
	add.n	a9, a2, a9
	l32r	a10, .LC7
	movi.n	a2, 1
	bgeu	a10, a9, .L157
	l32r	a9, .LC8
	add.n	a9, a8, a9
	l32r	a10, .LC9
	movi.n	a2, 0
	bltu	a10, a9, .L157
	extui	a8, a8, 1, 15
	add.n	a8, a8, a8
	l32r	a9, .LC10
	sub	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
	j	.L157
.L163:
	movi.n	a2, 1
.L157:
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
	bgeu	a10, a9, .L168
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L168
	movi.n	a2, 0
.L168:
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
	bnez.n	a10, .L173
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L177
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC13
	callx8	a8
	blti	a10, 1, .L180
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC14
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L173
.L177:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L173
.L180:
	movi.n	a2, 0
	movi.n	a3, 0
.L173:
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
	bnez.n	a10, .L181
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L185
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC17
	callx8	a8
	blti	a10, 1, .L188
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC18
	callx8	a8
	mov.n	a2, a10
	j	.L181
.L185:
	mov.n	a2, a3
	j	.L181
.L188:
	movi.n	a2, 0
.L181:
	retw.n
	.size	fdimf, .-fdimf
	.literal_position
	.literal .LC19, __unorddf2@PLT
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
	bnez.n	a10, .L195
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L196
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	extui	a9, a4, 31, 1
	slli	a9, a9, 31
	beq	a8, a9, .L191
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L189
	j	.L196
.L191:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	l32r	a8, .LC21
	callx8	a8
	bltz	a10, .L195
	mov.n	a4, a2
	mov.n	a5, a7
.L195:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L189
.L196:
	mov.n	a2, a6
	mov.n	a3, a7
.L189:
	retw.n
	.size	fmax, .-fmax
	.literal_position
	.literal .LC22, __unordsf2@PLT
	.literal .LC24, __ltsf2@PLT
	.align	4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	entry	sp, 32
	mov.n	a7, a2
	l32r	a2, .LC22
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a2
	bnez.n	a10, .L206
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a2
	bnez.n	a10, .L207
	extui	a8, a7, 31, 1
	slli	a8, a8, 31
	extui	a9, a3, 31, 1
	slli	a9, a9, 31
	beq	a8, a9, .L202
	movnez	a7, a3, a8
	mov.n	a2, a7
	j	.L200
.L202:
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC24
	callx8	a8
	movltz	a7, a3, a10
	mov.n	a2, a7
	j	.L200
.L206:
	mov.n	a2, a3
	j	.L200
.L207:
	mov.n	a2, a7
.L200:
	retw.n
	.size	fmaxf, .-fmaxf
	.literal_position
	.literal .LC25, __unorddf2@PLT
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
	bnez.n	a10, .L217
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L218
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	extui	a9, a4, 31, 1
	slli	a9, a9, 31
	beq	a8, a9, .L213
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L211
	j	.L218
.L213:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	l32r	a8, .LC27
	callx8	a8
	bltz	a10, .L217
	mov.n	a4, a2
	mov.n	a5, a7
.L217:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L211
.L218:
	mov.n	a2, a6
	mov.n	a3, a7
.L211:
	retw.n
	.size	fmaxl, .-fmaxl
	.literal_position
	.literal .LC28, __unorddf2@PLT
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
	bnez.n	a10, .L228
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L222
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	extui	a9, a4, 31, 1
	slli	a9, a9, 31
	beq	a8, a9, .L224
	bnez.n	a8, .L222
	j	.L228
.L224:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC30
	callx8	a8
	bltz	a10, .L222
.L228:
	mov.n	a2, a4
	mov.n	a3, a5
.L222:
	retw.n
	.size	fmin, .-fmin
	.literal_position
	.literal .LC31, __unordsf2@PLT
	.literal .LC33, __ltsf2@PLT
	.align	4
	.global	fminf
	.type	fminf, @function
fminf:
	entry	sp, 32
	l32r	a7, .LC31
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a7
	bnez.n	a10, .L239
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L233
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	extui	a9, a3, 31, 1
	slli	a9, a9, 31
	beq	a8, a9, .L235
	moveqz	a2, a3, a8
	j	.L233
.L235:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC33
	callx8	a8
	movgez	a2, a3, a10
	j	.L233
.L239:
	mov.n	a2, a3
.L233:
	retw.n
	.size	fminf, .-fminf
	.literal_position
	.literal .LC34, __unorddf2@PLT
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
	bnez.n	a10, .L250
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L244
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	extui	a9, a4, 31, 1
	slli	a9, a9, 31
	beq	a8, a9, .L246
	bnez.n	a8, .L244
	j	.L250
.L246:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC36
	callx8	a8
	bltz	a10, .L244
.L250:
	mov.n	a2, a4
	mov.n	a3, a5
.L244:
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
	mov.n	a8, a2
	l32r	a2, .LC37
	mov.n	a10, a2
	beqz.n	a8, .L256
	l32r	a11, .LC38
.L257:
	extui	a9, a8, 0, 6
	add.n	a9, a11, a9
	l8ui	a9, a9, 0
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	srli	a8, a8, 6
	bnez.n	a8, .L257
.L256:
	movi.n	a8, 0
	s8i	a8, a10, 0
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
	l32r	a7, .LC40
	l32i	a2, a7, 0
	l32r	a11, .LC41
	mull	a2, a2, a11
	l32i	a10, a7, 4
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
	bnez.n	a3, .L264
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L263
.L264:
	l32i	a8, a3, 0
	s32i	a8, a2, 0
	s32i	a3, a2, 4
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L263
	s32i	a2, a8, 4
.L263:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L270
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L270:
	l32i	a8, a2, 4
	beqz.n	a8, .L269
	l32i	a9, a2, 0
	s32i	a9, a8, 0
.L269:
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
	beqz.n	a7, .L279
	mov.n	a2, a3
	movi.n	a4, 0
.L281:
	mov.n	a3, a2
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L278
	addi.n	a4, a4, 1
	add.n	a2, a2, a5
	bne	a7, a4, .L281
.L279:
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
.L278:
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
	beqz.n	a4, .L290
	movi.n	a7, 0
.L292:
	mov.n	a2, a3
	mov.n	a11, a3
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L289
	addi.n	a7, a7, 1
	add.n	a3, a3, a5
	bne	a4, a7, .L292
.L290:
	movi.n	a2, 0
.L289:
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
	j	.L302
.L303:
	addi.n	a2, a2, 1
.L302:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L303
	movi.n	a8, 0x2b
	beq	a7, a8, .L309
	movi.n	a8, 0x2d
	movi.n	a11, 0
	bne	a7, a8, .L305
	movi.n	a11, 1
	j	.L304
.L309:
	movi.n	a11, 0
.L304:
	addi.n	a2, a2, 1
	j	.L305
.L306:
	addx4	a10, a10, a10
	addi.n	a2, a2, 1
	subx2	a10, a10, a8
	l8ui	a8, a2, 0
	addi	a8, a8, -48
	bgeu	a9, a8, .L306
	j	.L307
.L305:
	l8ui	a8, a2, 0
	addi	a8, a8, -48
	movi.n	a12, 9
	mov.n	a9, a12
	bgeu	a12, a8, .L306
.L307:
	neg	a2, a10
	movnez	a2, a10, a11
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
	.literal .LC46, isspace@PLT
	.literal .LC47, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 32
	mov.n	a3, a2
	l32r	a6, .LC46
	j	.L315
.L316:
	addi.n	a3, a3, 1
.L315:
	l8ui	a7, a3, 0
	mov.n	a10, a7
	callx8	a6
	mov.n	a5, a10
	bnez.n	a10, .L316
	movi.n	a9, 0x2b
	beq	a7, a9, .L317
	movi.n	a9, 0x2d
	bne	a7, a9, .L318
	movi.n	a5, 1
.L317:
	addi.n	a3, a3, 1
	j	.L318
.L320:
	mull	a2, a6, a2
	movi.n	a10, 0xa
	l32r	a8, .LC47
	callx8	a8
	add.n	a2, a2, a10
	addi.n	a3, a3, 1
	srai	a9, a4, 31
	sub	a2, a2, a9
	bgeu	a11, a4, .L319
	addi.n	a2, a2, -1
.L319:
	sub	a11, a11, a4
	l8ui	a4, a3, 0
	addi	a4, a4, -48
	bgeu	a7, a4, .L320
	j	.L321
.L318:
	l8ui	a4, a3, 0
	addi	a4, a4, -48
	movi.n	a9, 9
	movi.n	a11, 0
	mov.n	a2, a11
	movi.n	a6, 0xa
	mov.n	a7, a9
	bgeu	a9, a4, .L320
.L321:
	bnez.n	a5, .L314
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a11, a11
	sub	a2, a2, a8
	neg	a11, a11
.L314:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L340:
	beqz.n	a4, .L331
	srli	a7, a4, 1
	mull	a2, a7, a5
	add.n	a2, a3, a2
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	bltz	a10, .L335
	blti	a10, 1, .L330
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
	sub	a4, a4, a7
	j	.L340
.L335:
	mov.n	a4, a7
	j	.L340
.L331:
	movi.n	a2, 0
.L330:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	beqz.n	a4, .L342
.L345:
	srai	a7, a4, 1
	mull	a11, a7, a5
	add.n	a2, a3, a11
	l32i	a12, sp, 4
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L341
	blti	a10, 1, .L344
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
	srai	a7, a4, 1
.L344:
	mov.n	a4, a7
	bnez.n	a7, .L345
.L342:
	movi.n	a2, 0
.L341:
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
	bgeu	a3, a8, .L356
	addi.n	a2, a2, -1
.L356:
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
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC48
	callx8	a8
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC49
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
	bgeu	a3, a8, .L362
	addi.n	a2, a2, -1
.L362:
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
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC50
	callx8	a8
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC51
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
	beq	a3, a8, .L365
.L379:
	beqz.n	a8, .L365
	addi.n	a2, a2, 4
	l32i	a8, a2, 0
	beq	a8, a3, .L365
	j	.L379
.L365:
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
	movi.n	a11, 1
	moveqz	a11, a10, a8
	sub	a12, a8, a9
	movi.n	a13, 1
	moveqz	a10, a13, a12
	bnone	a11, a10, .L381
	beqz.n	a9, .L381
	movi.n	a10, 0
.L382:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a12, 1
	moveqz	a12, a10, a8
	sub	a13, a8, a9
	movi.n	a11, 1
	movnez	a11, a10, a13
	bnone	a12, a11, .L381
	bnez.n	a9, .L382
.L381:
	movi.n	a2, -1
	blt	a8, a9, .L380
	movi.n	a2, 1
	blt	a9, a8, .L380
	movi.n	a2, 0
.L380:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L398:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L398
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L403
	mov.n	a8, a2
.L402:
	addi.n	a8, a8, 4
	l32i	a9, a8, 0
	bnez.n	a9, .L402
	j	.L401
.L403:
	mov.n	a8, a2
.L401:
	sub	a2, a8, a2
	srai	a2, a2, 2
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	movi.n	a11, 0
	mov.n	a10, a4
	bnez.n	a4, .L406
	j	.L412
.L408:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a10, a10, -1
	bnez.n	a10, .L406
	j	.L412
.L406:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a13, 1
	moveqz	a13, a11, a8
	sub	a8, a8, a9
	movi.n	a12, 1
	movnez	a12, a11, a8
	bnone	a13, a12, .L407
	bnez.n	a9, .L408
.L407:
	beqz.n	a4, .L412
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a8, a9, .L405
	movi.n	a2, 1
	blt	a9, a8, .L405
.L412:
	movi.n	a2, 0
.L405:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L425
	j	.L430
.L427:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L425
	j	.L430
.L425:
	l32i	a9, a2, 0
	bne	a9, a3, .L427
	bnez.n	a4, .L424
.L430:
	movi.n	a2, 0
.L424:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L435
	j	.L440
.L437:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L435
	j	.L440
.L435:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	beq	a10, a9, .L437
	beqz.n	a4, .L440
	movi.n	a2, -1
	blt	a10, a9, .L434
	movi.n	a2, 1
	blt	a9, a10, .L434
.L440:
	movi.n	a2, 0
.L434:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.literal_position
	.literal .LC52, memcpy@PLT
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L450
	slli	a12, a4, 2
	mov.n	a10, a2
	l32r	a8, .LC52
	callx8	a8
.L450:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L455
	mov.n	a9, a2
	mov.n	a10, a3
	addi.n	a8, a4, -1
	sub	a11, a2, a3
	slli	a12, a4, 2
	bltu	a11, a12, .L456
	addi.n	a8, a8, 1
	bnez.n	a4, .L457
	j	.L455
.L456:
	beqz.n	a4, .L455
	addx4	a9, a8, a3
	addx4	a10, a8, a2
	slli	a8, a8, 2
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L458_LEND
.L458:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi	a9, a9, -4
	addi	a10, a10, -4
	.L458_LEND:
	j	.L455
.L457:
	l32i	a11, a10, 0
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L457
.L455:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L468
	mov.n	a9, a2
	mov.n	a8, a4
	loop	a8, .L469_LEND
.L469:
	s32i	a3, a9, 0
	addi.n	a9, a9, 4
	.L469_LEND:
.L468:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a3
	bgeu	a2, a3, .L476
	add.n	a10, a2, a4
	add.n	a9, a3, a4
	beqz.n	a4, .L475
	sub	a8, a10, a2
	loop	a8, .L478_LEND
.L478:
	addi.n	a10, a10, -1
	addi.n	a9, a9, -1
	l8ui	a11, a10, 0
	s8i	a11, a9, 0
	.L478_LEND:
	j	.L475
.L476:
	beq	a2, a3, .L475
	beqz.n	a4, .L475
.L479:
	l8ui	a10, a8, 0
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L479
.L475:
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
	movi.n	a9, 0x20
	loop	a9, .L506_LEND
.L506:
	ssr	a8
	srl	a10, a2
	addi.n	a8, a8, 1
	bbci	a10, 31, .L504
	mov.n	a2, a8
	j	.L503
.L504:
	nop.n
	.L506_LEND:
	movi.n	a2, 0
.L503:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L509
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L509
	movi.n	a2, 1
.L511:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L511
.L509:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC54, __ltsf2@PLT
	.literal .LC56, __gtsf2@PLT
	.literal .LC57, 2139095039
	.literal .LC58, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	mov.n	a7, a2
	l32r	a11, .LC58
	mov.n	a10, a2
	l32r	a8, .LC54
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L516
	l32r	a11, .LC57
	mov.n	a10, a7
	l32r	a8, .LC56
	callx8	a8
	bgei	a10, 1, .L516
	movi.n	a2, 0
.L516:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC60, __ltdf2@PLT
	.literal .LC62, __gtdf2@PLT
	.literal .LC63, 2146435071
	.literal .LC64, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC64
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC60
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L520
	l32r	a12, .LC63
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC62
	callx8	a8
	bgei	a10, 1, .L520
	movi.n	a2, 0
.L520:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC66, __ltdf2@PLT
	.literal .LC68, __gtdf2@PLT
	.literal .LC69, 2146435071
	.literal .LC70, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
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
	bltz	a10, .L524
	l32r	a12, .LC69
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC68
	callx8	a8
	bgei	a10, 1, .L524
	movi.n	a2, 0
.L524:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC71, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	mov.n	a10, a3
	l32r	a8, .LC71
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC74, __unordsf2@PLT
	.literal .LC75, __addsf3@PLT
	.literal .LC76, __nesf2@PLT
	.literal .LC77, __mulsf3@PLT
	.literal .LC78, 1073741824
	.literal .LC79, 1056964608
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC74
	callx8	a8
	bnez.n	a10, .L530
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC75
	callx8	a8
	mov.n	a11, a2
	l32r	a8, .LC76
	callx8	a8
	beqz.n	a10, .L530
	l32r	a7, .LC78
	l32r	a8, .LC79
	movltz	a7, a8, a3
	l32r	a5, .LC77
	mov.n	a6, a5
.L534:
	bbci	a3, 31, .L533
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L533:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L530
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	mov.n	a7, a10
	j	.L534
.L530:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC82, __unorddf2@PLT
	.literal .LC83, __adddf3@PLT
	.literal .LC84, __nedf2@PLT
	.literal .LC85, __muldf3@PLT
	.literal .LC86, 1071644672
	.literal .LC87, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC82
	callx8	a9
	bnez.n	a10, .L544
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC83
	callx8	a9
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a9, .LC84
	callx8	a9
	beqz.n	a10, .L544
	l32r	a6, .LC87
	movi.n	a7, 0
	bgez	a4, .L546
	l32r	a6, .LC86
	movi.n	a7, 0
.L546:
	l32r	a5, .LC85
.L548:
	bbci	a4, 31, .L547
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC85
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L547:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L544
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L548
.L544:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC90, __unorddf2@PLT
	.literal .LC91, __adddf3@PLT
	.literal .LC92, __nedf2@PLT
	.literal .LC93, __muldf3@PLT
	.literal .LC94, 1071644672
	.literal .LC95, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC90
	callx8	a9
	bnez.n	a10, .L558
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC91
	callx8	a9
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC92
	callx8	a9
	beqz.n	a10, .L558
	l32r	a6, .LC95
	movi.n	a7, 0
	bgez	a4, .L560
	l32r	a6, .LC94
	movi.n	a7, 0
.L560:
	l32r	a5, .LC93
.L562:
	bbci	a4, 31, .L561
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC93
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L561:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L558
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L562
.L558:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L572
	mov.n	a8, a2
.L573:
	l8ui	a9, a8, 0
	l8ui	a10, a3, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L573
.L572:
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC96, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC96
	callx8	a8
	add.n	a10, a2, a10
	mov.n	a9, a4
	bnez.n	a4, .L580
	j	.L585
.L582:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L580
	j	.L585
.L580:
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L582
	bnez.n	a4, .L583
.L585:
	s8i	a4, a10, 0
.L583:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	mov.n	a10, a3
	bnez.n	a3, .L591
	j	.L590
.L593:
	addi.n	a2, a2, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L591
	j	.L590
.L591:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L593
.L590:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L600
	j	.L604
.L602:
	addi.n	a8, a8, 1
	beq	a9, a10, .L601
.L603:
	l8ui	a9, a8, 0
	bnez.n	a9, .L602
	addi.n	a2, a2, 1
	l8ui	a10, a2, 0
	beqz.n	a10, .L604
.L600:
	mov.n	a8, a3
	j	.L603
.L604:
	movi.n	a2, 0
.L601:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L608:
	l8ui	a9, a8, 0
	sub	a10, a9, a3
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L608
	retw.n
	.size	strrchr, .-strrchr
	.literal_position
	.literal .LC97, strlen@PLT
	.literal .LC98, strncmp@PLT
	.literal .LC99, strchr@PLT
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 48
	s32i	a2, sp, 0
	mov.n	a10, a3
	l32r	a9, .LC97
	callx8	a9
	mov.n	a7, a10
	mov.n	a8, a2
	beqz.n	a10, .L611
	l8ui	a5, a3, 0
	l32r	a6, .LC99
	l32r	a4, .LC98
	j	.L613
.L614:
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L611
	addi.n	a8, a2, 1
.L613:
	mov.n	a11, a5
	mov.n	a10, a8
	callx8	a6
	mov.n	a2, a10
	bnez.n	a10, .L614
.L611:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC101, __ltdf2@PLT
	.literal .LC102, __gtdf2@PLT
	.literal .LC103, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	l32r	a7, .LC101
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	l32r	a6, .LC102
	bltz	a10, .L627
	j	.L621
.L627:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	bgei	a10, 1, .L623
.L621:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	blti	a10, 1, .L624
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L624
.L623:
	l32r	a10, .LC103
	xor	a2, a2, a10
.L624:
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC104, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 48
	mov.n	a7, a2
	beqz.n	a5, .L629
	bltu	a3, a5, .L635
	sub	a3, a3, a5
	add.n	a6, a2, a3
	bltu	a6, a2, .L635
	l8ui	a3, a4, 0
	addi.n	a8, a5, -1
	s32i	a8, sp, 0
	addi.n	a5, a4, 1
	l32r	a4, .LC104
.L632:
	l8ui	a8, a7, 0
	mov.n	a2, a7
	addi.n	a7, a7, 1
	bne	a8, a3, .L631
	l32i	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a7
	callx8	a4
	beqz.n	a10, .L629
.L631:
	bgeu	a6, a7, .L632
.L635:
	movi.n	a2, 0
.L629:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC105, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	l32r	a8, .LC105
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC107, __ltdf2@PLT
	.literal .LC108, -2147483648
	.literal .LC110, __gedf2@PLT
	.literal .LC112, __muldf3@PLT
	.literal .LC113, __nedf2@PLT
	.literal .LC114, __adddf3@PLT
	.literal .LC115, 1071644672
	.literal .LC116, 1072693248
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	l32r	a8, .LC107
	s32i	a8, sp, 4
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movi.n	a8, 0
	bgez	a10, .L669
	l32r	a10, .LC108
	xor	a2, a2, a10
	movi.n	a8, 1
	s32i	a8, sp, 0
	j	.L643
.L669:
	s32i	a8, sp, 0
.L643:
	l32r	a7, .LC110
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	movi.n	a5, 0
	l32r	a6, .LC112
	bltz	a10, .L670
.L647:
	addi.n	a5, a5, 1
	l32r	a12, .LC115
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a7
	bgez	a10, .L647
	j	.L648
.L670:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	movi.n	a5, 0
	beqz.n	a10, .L648
	l32r	a12, .LC115
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32i	a6, sp, 4
	callx8	a6
	bgez	a10, .L648
	l32r	a7, .LC114
.L651:
	addi.n	a5, a5, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC115
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a6
	bltz	a10, .L651
.L648:
	s32i	a5, a4, 0
	l32i	a8, sp, 0
	beqz.n	a8, .L652
	l32r	a10, .LC108
	xor	a2, a2, a10
.L652:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC117, __umulsidi3@PLT
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
	or	a10, a3, a8
	movi.n	a3, 0
	mov.n	a4, a3
	beqz.n	a10, .L671
	l32r	a8, .LC117
	s32i	a8, sp, 4
.L675:
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
	bltu	a11, a3, .L674
	movi.n	a10, 0
.L674:
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
	bnez.n	a10, .L675
.L671:
	mov.n	a2, a4
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L679
	j	.L689
.L685:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L680
	bnez.n	a8, .L679
.L680:
	movi.n	a9, 0
	beqz.n	a8, .L684
	j	.L689
.L679:
	bgez	a3, .L685
	j	.L680
.L689:
	movi.n	a9, 0
.L683:
	bltu	a2, a3, .L686
	sub	a2, a2, a3
	or	a9, a9, a8
.L686:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L683
.L684:
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
	bne	a2, a9, .L706
	beq	a3, a2, .L707
.L706:
	nsau	a9, a10
	nsau	a2, a8
	addi	a2, a2, 32
	movnez	a2, a9, a10
	addi.n	a2, a2, -1
	j	.L700
.L707:
	movi.n	a2, 0x3f
.L700:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L708
.L710:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L710
.L708:
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
	bltu	a2, a3, .L714
	add.n	a9, a3, a4
	bltu	a9, a2, .L714
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L715
	j	.L713
.L714:
	beqz.n	a8, .L717
	mov.n	a13, a3
	mov.n	a9, a2
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	loop	a8, .L718_LEND
.L718:
	l32i	a10, a13, 0
	l32i	a11, a13, 4
	s32i	a10, a9, 0
	s32i	a11, a9, 4
	addi.n	a13, a13, 8
	addi.n	a9, a9, 8
	.L718_LEND:
.L717:
	bgeu	a12, a4, .L713
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L719:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L719
	j	.L713
.L715:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L715
.L713:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a8, a4, 1
	bltu	a2, a3, .L731
	add.n	a9, a3, a4
	bltu	a9, a2, .L731
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L732
	j	.L730
.L731:
	beqz.n	a8, .L734
	mov.n	a10, a3
	mov.n	a9, a2
	add.n	a8, a8, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L735_LEND
.L735:
	l16ui	a11, a10, 0
	s16i	a11, a9, 0
	addi.n	a10, a10, 2
	addi.n	a9, a9, 2
	.L735_LEND:
.L734:
	bbci	a4, 31, .L730
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L730
.L732:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L732
.L730:
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
	bltu	a2, a3, .L748
	add.n	a9, a3, a4
	bltu	a9, a2, .L748
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L749
	j	.L747
.L748:
	beqz.n	a8, .L751
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L752_LEND
.L752:
	l32i	a11, a10, 0
	s32i	a11, a9, 0
	addi.n	a10, a10, 4
	addi.n	a9, a9, 4
	.L752_LEND:
.L751:
	bgeu	a12, a4, .L747
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L753:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L753
	j	.L747
.L749:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L749
.L747:
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
	.literal .LC118, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC118
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC119, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC119
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC120, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC120
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC121, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC121
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
	loop	a8, .L772_LEND
.L772:
	addi	a9, a2, 16
	bbs	a10, a9, .L770
	addi.n	a2, a2, 1
	.L772_LEND:
.L770:
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
	loop	a8, .L777_LEND
.L777:
	ssr	a2
	sra	a9, a10
	bbsi	a9, 31, .L775
	addi.n	a2, a2, 1
	.L777_LEND:
.L775:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC122, 0x47000000
	.literal .LC123, __gesf2@PLT
	.literal .LC124, __subsf3@PLT
	.literal .LC125, __fixsfsi@PLT
	.literal .LC126, 32768
	.literal .LC127, .LC122
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC127
	l32i.n	a11, a8, 0
	mov.n	a10, a2
	l32r	a8, .LC123
	callx8	a8
	bltz	a10, .L785
	l32r	a8, .LC127
	l32i.n	a11, a8, 0
	mov.n	a10, a2
	l32r	a8, .LC124
	callx8	a8
	l32r	a8, .LC125
	callx8	a8
	l32r	a8, .LC126
	add.n	a2, a10, a8
	j	.L780
.L785:
	mov.n	a10, a2
	l32r	a8, .LC125
	callx8	a8
	mov.n	a2, a10
.L780:
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
	loop	a9, .L787_LEND
.L787:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L787_LEND:
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
	loop	a9, .L791_LEND
.L791:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L791_LEND:
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L794
.L796:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L796
.L794:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L799
	beqz.n	a3, .L803
.L801:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	add.n	a2, a2, a8
	add.n	a9, a9, a9
	srli	a3, a3, 1
	bnez.n	a3, .L801
	j	.L799
.L803:
	movi.n	a2, 0
.L799:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L807
	j	.L817
.L813:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L808
	bnez.n	a8, .L807
.L808:
	movi.n	a9, 0
	beqz.n	a8, .L812
	j	.L817
.L807:
	bgez	a3, .L813
	j	.L808
.L817:
	movi.n	a9, 0
.L811:
	bltu	a2, a3, .L814
	sub	a2, a2, a3
	or	a9, a9, a8
.L814:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L811
.L812:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC128, __ltsf2@PLT
	.literal .LC129, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	mov.n	a7, a2
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC128
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L825
	movi.n	a2, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC129
	callx8	a8
	bgei	a10, 1, .L825
	movi.n	a2, 0
.L825:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC130, __ltdf2@PLT
	.literal .LC131, __gtdf2@PLT
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
	l32r	a8, .LC130
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L829
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC131
	callx8	a8
	bgei	a10, 1, .L829
	movi.n	a2, 0
.L829:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC132, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC132
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
	.literal .LC133, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC133
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
	movi.n	a11, 0
	bgez	a3, .L836
	neg	a3, a3
	movi.n	a11, 1
.L836:
	movi.n	a10, 0
	beqz.n	a3, .L837
	movi.n	a9, 0x20
	loop	a9, .L838_LEND
.L838:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a2
	add.n	a10, a10, a8
	add.n	a2, a2, a2
	srai	a3, a3, 1
	beqz.n	a3, .L837
	.L838_LEND:
.L837:
	neg	a2, a10
	moveqz	a2, a10, a11
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC134, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a3, 0
	bgez	a2, .L853
	neg	a10, a2
	movi.n	a3, 1
.L853:
	bgez	a11, .L854
	neg	a11, a11
	movi.n	a8, 1
	xor	a3, a3, a8
.L854:
	movi.n	a12, 0
	l32r	a8, .LC134
	callx8	a8
	neg	a2, a10
	moveqz	a2, a10, a3
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC135, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a10, a2
	movi.n	a2, 0
	bgez	a10, .L860
	neg	a10, a10
	movi.n	a2, 1
.L860:
	movi.n	a12, 1
	abs	a11, a3
	l32r	a8, .LC135
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
	bltu	a3, a9, .L866
	j	.L876
.L872:
	add.n	a3, a3, a3
	extui	a3, a3, 0, 16
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
	bgeu	a3, a9, .L867
	bnez.n	a8, .L866
.L867:
	movi.n	a10, 0
	beqz.n	a8, .L871
	j	.L876
.L866:
	sext	a10, a3, 15
	bgez	a10, .L872
	j	.L867
.L876:
	movi.n	a10, 0
.L870:
	bltu	a9, a3, .L873
	sub	a9, a9, a3
	extui	a9, a9, 0, 16
	or	a10, a8, a10
	extui	a10, a10, 0, 16
.L873:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L870
.L871:
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
	bltu	a3, a2, .L885
	j	.L895
.L891:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L886
	bnez.n	a8, .L885
.L886:
	movi.n	a9, 0
	beqz.n	a8, .L890
	j	.L895
.L885:
	bgez	a3, .L891
	j	.L886
.L895:
	movi.n	a9, 0
.L889:
	bltu	a2, a3, .L892
	sub	a2, a2, a3
	or	a9, a9, a8
.L892:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L889
.L890:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L904
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L905
.L904:
	beqz.n	a4, .L906
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L905:
	mov.n	a3, a8
.L906:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L909
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L910
.L909:
	beqz.n	a4, .L911
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L910:
	mov.n	a2, a8
.L911:
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
	.literal .LC136, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	movi.n	a10, 1
	l32r	a8, .LC136
	bgeu	a8, a2, .L916
	movi.n	a10, 0
.L916:
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
	blt	a8, a4, .L917
	movi.n	a2, 2
	blt	a4, a8, .L917
	movi.n	a2, 0
	bltu	a3, a5, .L917
	movi.n	a2, 2
	bltu	a5, a3, .L917
	movi.n	a2, 1
.L917:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC138, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC138
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
	bbci	a4, 26, .L926
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L927
.L926:
	beqz.n	a4, .L928
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L927:
	mov.n	a2, a8
.L928:
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
	.literal .LC139, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC139
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
	.literal .LC140, 27030
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
	l32r	a2, .LC140
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC141, 27030
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
	l32r	a2, .LC141
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC142, 1431655765
	.literal .LC143, 858993459
	.literal .LC144, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	l32r	a10, .LC142
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L939
	addi.n	a2, a2, -1
.L939:
	sub	a3, a3, a8
	ssai	2
	src	a8, a2, a3
	srli	a10, a2, 2
	l32r	a9, .LC143
	and	a10, a10, a9
	and	a8, a8, a9
	and	a2, a2, a9
	and	a3, a3, a9
	add.n	a10, a10, a2
	add.n	a8, a8, a3
	bgeu	a8, a3, .L940
	addi.n	a10, a10, 1
.L940:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a9, a9, a10
	add.n	a8, a11, a8
	bgeu	a8, a11, .L941
	addi.n	a9, a9, 1
.L941:
	l32r	a10, .LC144
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
	.literal .LC145, 1431655765
	.literal .LC146, 858993459
	.literal .LC147, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	srli	a8, a2, 1
	l32r	a9, .LC145
	and	a8, a8, a9
	sub	a2, a2, a8
	srli	a9, a2, 2
	l32r	a8, .LC146
	and	a9, a9, a8
	and	a2, a2, a8
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC147
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC149, __muldf3@PLT
	.literal .LC150, __divdf3@PLT
	.literal .LC151, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	s32i	a4, sp, 0
	l32r	a2, .LC151
	movi.n	a3, 0
	l32r	a5, .LC149
.L946:
	bbci	a4, 31, .L944
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC149
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L944:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L945
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L946
.L945:
	l32i	a8, sp, 0
	bgez	a8, .L943
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a10, .LC151
	movi.n	a11, 0
	l32r	a8, .LC150
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L943:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC153, __mulsf3@PLT
	.literal .LC154, __divsf3@PLT
	.literal .LC155, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a4, a2
	mov.n	a7, a3
	l32r	a2, .LC155
	l32r	a5, .LC153
	mov.n	a6, a5
.L954:
	bbci	a7, 31, .L952
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L952:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L953
	mov.n	a11, a4
	mov.n	a10, a4
	callx8	a6
	mov.n	a4, a10
	j	.L954
.L953:
	bgez	a3, .L951
	mov.n	a11, a2
	l32r	a10, .LC155
	l32r	a8, .LC154
	callx8	a8
	mov.n	a2, a10
.L951:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L959
	movi.n	a2, 2
	bltu	a4, a8, .L959
	movi.n	a2, 0
	bltu	a3, a5, .L959
	movi.n	a2, 2
	bltu	a5, a3, .L959
	movi.n	a2, 1
.L959:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC156, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC156
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
