	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 32
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
	addi.n	a8, a4, -1
	bltui	a8, 7, .L5
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L5
	addi.n	a8, a3, 1
	sub	a8, a2, a8
	bltui	a8, 3, .L5
	srli	a11, a4, 2
	slli	a9, a11, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	mov.n	a8, a3
	mov.n	a10, a2
	slli	a13, a11, 2
	addx4	a12, a11, a3
	addi.n	a9, a9, 1
	loop	a9, .L7_LEND
.L7:
	l32i	a11, a8, 0
	addi.n	a8, a8, 4
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	.L7_LEND:
	add.n	a8, a2, a13
	sub	a9, a4, a13
	beq	a4, a13, .L3
	l8ui	a10, a12, 0
	s8i	a10, a8, 0
	beqi	a9, 1, .L3
	l8ui	a10, a12, 1
	s8i	a10, a8, 1
	beqi	a9, 2, .L3
	l8ui	a9, a12, 2
	s8i	a9, a8, 2
	j	.L3
.L5:
	mov.n	a9, a2
	mov.n	a8, a3
.L10:
	l8ui	a10, a8, 0
	addi.n	a8, a8, 1
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L10
.L3:
	retw.n
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 32
	extui	a4, a4, 0, 8
	bnez.n	a5, .L38
.L40:
	movi.n	a2, 0
	j	.L37
.L41:
	addi.n	a5, a5, -1
	bnez.n	a5, .L38
	j	.L40
.L38:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a2, 0
	addi.n	a2, a2, 1
	bne	a8, a4, .L41
.L37:
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	mov.n	a8, a4
	bnez.n	a4, .L49
	j	.L55
.L51:
	addi.n	a2, a2, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L49
	j	.L55
.L49:
	l8ui	a9, a2, 0
	bne	a9, a3, .L51
	j	.L48
.L55:
	movi.n	a2, 0
.L48:
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L58
	j	.L65
.L60:
	addi.n	a3, a3, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L58
	j	.L65
.L58:
	l8ui	a9, a2, 0
	l8ui	a10, a3, 0
	addi.n	a2, a2, 1
	beq	a9, a10, .L60
	j	.L66
.L65:
	movi.n	a2, 0
	j	.L57
.L66:
	sub	a2, a9, a10
.L57:
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
	beqz.n	a4, .L69
	l32r	a8, .LC0
	mov.n	a10, a2
	callx8	a8
.L69:
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
	j	.L74
.L76:
	l8ui	a9, a2, 0
	addi.n	a8, a8, -1
	beq	a9, a3, .L73
.L74:
	mov.n	a2, a8
	bne	a8, a10, .L76
	movi.n	a2, 0
.L73:
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
	beqz.n	a4, .L80
	l32r	a8, .LC1
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	callx8	a8
.L80:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L82
.L83:
	l8ui	a8, a3, 1
	addi.n	a2, a2, 1
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	bnez.n	a8, .L83
.L82:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	l8ui	a8, a2, 0
	extui	a3, a3, 0, 8
	bnez.n	a8, .L89
	j	.L88
.L91:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a8, .L88
.L89:
	bne	a8, a3, .L91
.L88:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L97:
	l8ui	a8, a2, 0
	beq	a8, a3, .L96
	addi.n	a2, a2, 1
	bnez.n	a8, .L97
	mov.n	a2, a8
.L96:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	beq	a8, a9, .L100
	j	.L101
.L102:
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	bne	a8, a9, .L101
.L100:
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	bnez.n	a8, .L102
.L101:
	sub	a2, a8, a9
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L108
	mov.n	a8, a2
.L107:
	l8ui	a9, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a9, .L107
	sub	a2, a8, a2
	j	.L105
.L108:
	mov.n	a2, a8
.L105:
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a4, .L110
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	mov.n	a8, a3
	movi.n	a12, 1
	add.n	a13, a3, a4
	bnez.n	a10, .L114
	l8ui	a11, a3, 0
	j	.L113
.L115:
	l8ui	a10, a9, 0
	addi.n	a11, a8, 1
	bnez.n	a10, .L118
	l8ui	a11, a8, 1
	j	.L113
.L118:
	mov.n	a8, a11
.L114:
	l8ui	a11, a8, 0
	mov.n	a15, a2
	sub	a4, a11, a10
	mov.n	a14, a2
	movnez	a15, a12, a11
	moveqz	a14, a12, a4
	addi.n	a9, a9, 1
	bnone	a15, a14, .L113
	bne	a8, a13, .L115
.L113:
	sub	a2, a10, a11
.L110:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L125
	srli	a4, a4, 1
	add.n	a4, a4, a4
	addi	a8, a4, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L127_LEND
.L127:
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	addi.n	a2, a2, 2
	addi.n	a3, a3, 2
	.L127_LEND:
.L125:
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
	bgeu	a9, a8, .L131
	movi.n	a2, 0
.L131:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi	a9, 0x7f
	movi.n	a8, 1
	bgeu	a9, a2, .L133
	movi.n	a8, 0
.L133:
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
	bgeu	a9, a2, .L136
	movi.n	a8, 0
.L136:
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
	bgeu	a9, a8, .L138
	movi.n	a2, 0
.L138:
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
	bgeu	a9, a8, .L140
	movi.n	a2, 0
.L140:
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
	bgeu	a9, a8, .L142
	movi.n	a2, 0
.L142:
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
	bgeu	a9, a8, .L144
	movi.n	a2, 0
.L144:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L146
	movi.n	a8, 0
.L146:
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
	bgeu	a9, a8, .L148
	movi.n	a2, 0
.L148:
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
	bgeu	a10, a9, .L149
	movi.n	a9, 0x1f
	bgeu	a9, a8, .L149
	l32r	a9, .LC2
	add.n	a9, a8, a9
	bltui	a9, 2, .L149
	l32r	a9, .LC3
	add.n	a8, a8, a9
	bltui	a8, 3, .L149
	movi.n	a2, 0
.L149:
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
	bgeu	a9, a8, .L159
	movi.n	a2, 0
.L159:
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
	bltu	a9, a2, .L161
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a9, 0x20
	movi.n	a2, 1
	bltu	a9, a8, .L160
	movi.n	a2, 0
	j	.L160
.L161:
	l32r	a9, .LC4
	l32r	a10, .LC5
	add.n	a9, a2, a9
	bgeu	a10, a9, .L166
	l32r	a9, .LC6
	bgeu	a9, a2, .L166
	l32r	a9, .LC7
	l32r	a10, .LC8
	add.n	a9, a2, a9
	movi.n	a2, 1
	bgeu	a10, a9, .L160
	l32r	a9, .LC9
	l32r	a10, .LC10
	add.n	a9, a8, a9
	movi.n	a2, 0
	bltu	a10, a9, .L160
	l32r	a9, .LC11
	extui	a8, a8, 1, 15
	add.n	a8, a8, a8
	sub	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
	j	.L160
.L166:
	movi.n	a2, 1
.L160:
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
	bgeu	a10, a9, .L171
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L171
	movi.n	a2, 0
.L171:
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
	bnez.n	a10, .L176
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L180
	l32r	a8, .LC14
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L183
	l32r	a8, .LC15
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L176
.L180:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L176
.L183:
	movi.n	a2, 0
	movi.n	a3, 0
.L176:
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
	bnez.n	a10, .L184
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L188
	l32r	a8, .LC18
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	blti	a10, 1, .L191
	l32r	a8, .LC19
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	j	.L184
.L188:
	mov.n	a2, a3
	j	.L184
.L191:
	movi.n	a2, 0
.L184:
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
	bnez.n	a10, .L198
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L199
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L194
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L192
	j	.L199
.L194:
	l32r	a8, .LC22
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a8
	bltz	a10, .L198
	mov.n	a4, a2
	mov.n	a5, a7
.L198:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L192
.L199:
	mov.n	a2, a6
	mov.n	a3, a7
.L192:
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
	bnez.n	a10, .L209
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a6
	bnez.n	a10, .L203
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L205
	movnez	a2, a3, a8
	j	.L203
.L205:
	l32r	a8, .LC25
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movltz	a2, a3, a10
	j	.L203
.L209:
	mov.n	a2, a3
.L203:
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
	bnez.n	a10, .L220
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L221
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L216
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L214
	j	.L221
.L216:
	l32r	a8, .LC28
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a8
	bltz	a10, .L220
	mov.n	a4, a2
	mov.n	a5, a7
.L220:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L214
.L221:
	mov.n	a2, a6
	mov.n	a3, a7
.L214:
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
	bnez.n	a10, .L231
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L225
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L227
	bnez.n	a8, .L225
	j	.L231
.L227:
	l32r	a8, .LC31
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bltz	a10, .L225
.L231:
	mov.n	a2, a4
	mov.n	a3, a5
.L225:
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
	bnez.n	a10, .L242
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L236
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L238
	moveqz	a2, a3, a8
	j	.L236
.L238:
	l32r	a8, .LC34
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movgez	a2, a3, a10
	j	.L236
.L242:
	mov.n	a2, a3
.L236:
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
	bnez.n	a10, .L253
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L247
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L249
	bnez.n	a8, .L247
	j	.L253
.L249:
	l32r	a8, .LC37
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bltz	a10, .L247
.L253:
	mov.n	a2, a4
	mov.n	a3, a5
.L247:
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
	beqz.n	a8, .L261
	l32r	a11, .LC39
	mov.n	a10, a2
.L260:
	extui	a9, a8, 0, 6
	add.n	a9, a11, a9
	l8ui	a9, a9, 0
	srli	a8, a8, 6
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	bnez.n	a8, .L260
	j	.L259
.L261:
	mov.n	a10, a2
.L259:
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
	bnez.n	a3, .L267
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L266
.L267:
	l32i	a8, a3, 0
	s32i	a3, a2, 4
	s32i	a8, a2, 0
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L266
	s32i	a2, a8, 4
.L266:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L273
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L273:
	l32i	a9, a2, 4
	beqz.n	a9, .L272
	s32i	a8, a9, 0
.L272:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC45, memmove@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	l32i	a7, a4, 0
	s32i	a4, sp, 8
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	beqz.n	a7, .L282
	mov.n	a2, a3
	movi.n	a4, 0
.L284:
	l32i	a10, sp, 0
	mov.n	a11, a2
	callx8	a6
	mov.n	a3, a2
	addi.n	a4, a4, 1
	beqz.n	a10, .L281
	add.n	a2, a2, a5
	bne	a7, a4, .L284
.L282:
	l32i	a8, sp, 8
	mull	a3, a5, a7
	addi.n	a7, a7, 1
	s32i	a7, a8, 0
	l32i	a8, sp, 4
	add.n	a3, a8, a3
	beqz.n	a5, .L281
	l32i	a11, sp, 0
	l32r	a8, .LC45
	mov.n	a12, a5
	mov.n	a10, a3
	callx8	a8
.L281:
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
	beqz.n	a7, .L297
	movi.n	a4, 0
.L299:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	beqz.n	a10, .L296
	add.n	a3, a3, a5
	bne	a7, a4, .L299
.L297:
	movi.n	a2, 0
.L296:
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
	.align	4
	.global	atoi
	.type	atoi, @function
atoi:
	entry	sp, 32
	l8ui	a9, a2, 0
	addi	a8, a9, -9
	bltui	a8, 5, .L330
.L334:
	bnei	a9, 32, .L309
.L330:
	l8ui	a9, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a9, -9
	bltui	a8, 5, .L330
	j	.L334
.L309:
	movi.n	a8, 0x2b
	beq	a9, a8, .L314
	movi.n	a8, 0x2d
	beq	a9, a8, .L315
	j	.L332
.L314:
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	movi.n	a14, 0
	bgeu	a10, a11, .L317
	j	.L323
.L315:
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	bltu	a10, a11, .L323
	movi.n	a14, 1
.L317:
	movi.n	a2, 0
	movi.n	a13, 9
.L320:
	l8ui	a9, a8, 1
	addx4	a10, a2, a2
	subx2	a2, a10, a11
	mov.n	a12, a11
	addi	a11, a9, -48
	addi.n	a8, a8, 1
	add.n	a10, a10, a10
	bgeu	a13, a11, .L320
	j	.L333
.L332:
	addi	a11, a9, -48
	movi.n	a9, 9
	mov.n	a8, a2
	movi.n	a14, 0
	bgeu	a9, a11, .L317
	j	.L323
.L333:
	sub	a12, a12, a10
	moveqz	a2, a12, a14
	j	.L308
.L323:
	movi.n	a2, 0
.L308:
	retw.n
	.size	atoi, .-atoi
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l8ui	a9, a2, 0
	addi	a8, a9, -9
	bltui	a8, 5, .L356
.L359:
	bnei	a9, 32, .L336
.L356:
	l8ui	a9, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a9, -9
	bltui	a8, 5, .L356
	j	.L359
.L336:
	movi.n	a8, 0x2b
	beq	a9, a8, .L341
	movi.n	a8, 0x2d
	bne	a9, a8, .L342
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	movi.n	a14, 1
	bgeu	a10, a11, .L343
	j	.L349
.L341:
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	bltu	a10, a11, .L349
	movi.n	a14, 0
.L343:
	movi.n	a2, 0
	movi.n	a13, 9
.L346:
	l8ui	a9, a8, 1
	addx4	a10, a2, a2
	subx2	a2, a10, a11
	mov.n	a12, a11
	addi	a11, a9, -48
	addi.n	a8, a8, 1
	add.n	a10, a10, a10
	bgeu	a13, a11, .L346
	j	.L358
.L342:
	addi	a11, a9, -48
	movi.n	a9, 9
	mov.n	a8, a2
	movi.n	a14, 0
	bgeu	a9, a11, .L343
	j	.L349
.L358:
	sub	a12, a12, a10
	moveqz	a2, a12, a14
	j	.L335
.L349:
	movi.n	a2, 0
.L335:
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC46, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 48
	l8ui	a7, a2, 0
	addi	a8, a7, -9
	bltui	a8, 5, .L384
.L388:
	bnei	a7, 32, .L361
.L384:
	l8ui	a7, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a7, -9
	bltui	a8, 5, .L384
	j	.L388
.L361:
	movi.n	a8, 0x2b
	beq	a7, a8, .L366
	movi.n	a8, 0x2d
	beq	a7, a8, .L367
	j	.L386
.L366:
	l8ui	a7, a2, 1
	movi.n	a9, 0
	movi.n	a8, 9
	addi	a7, a7, -48
	s32i	a9, sp, 0
	addi.n	a3, a2, 1
	mov.n	a11, a9
	mov.n	a2, a9
	bltu	a8, a7, .L360
	j	.L369
.L367:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bltu	a8, a7, .L377
	movi.n	a8, 1
	s32i	a8, sp, 0
.L369:
	movi.n	a11, 0
	l32r	a4, .LC46
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L373:
	mull	a2, a5, a2
	movi.n	a10, 0xa
	callx8	a4
	srai	a12, a7, 31
	mov.n	a8, a11
	add.n	a10, a2, a10
	sub	a11, a11, a7
	addi.n	a3, a3, 1
	mov.n	a13, a7
	sub	a2, a10, a12
	bgeu	a8, a7, .L372
	addi.n	a2, a2, -1
.L372:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L373
	j	.L387
.L386:
	movi.n	a9, 0
	addi	a7, a7, -48
	movi.n	a8, 9
	s32i	a9, sp, 0
	mov.n	a3, a2
	bgeu	a8, a7, .L369
	j	.L377
.L387:
	l32i	a9, sp, 0
	bnez.n	a9, .L360
	sub	a2, a12, a10
	bgeu	a13, a8, .L375
	addi.n	a2, a2, -1
.L375:
	sub	a11, a13, a8
	j	.L360
.L377:
	movi.n	a11, 0
	mov.n	a2, a11
.L360:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L402:
	beqz.n	a4, .L390
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L394
	beqz.n	a10, .L389
	add.n	a3, a2, a5
	sub	a4, a4, a7
	j	.L402
.L394:
	mov.n	a4, a7
	j	.L402
.L390:
	movi.n	a2, 0
.L389:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	bnez.n	a4, .L404
.L408:
	movi.n	a2, 0
	j	.L403
.L404:
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	addi.n	a4, a4, -1
	callx8	a6
	srai	a4, a4, 1
	beqz.n	a10, .L403
	blti	a10, 1, .L406
	add.n	a3, a2, a5
	bnez.n	a4, .L404
	j	.L408
.L406:
	beqz.n	a7, .L408
	mov.n	a4, a7
	j	.L404
.L403:
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
	bgeu	a3, a8, .L419
	addi.n	a2, a2, -1
.L419:
	sub	a3, a3, a8
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC47, __divdi3@PLT
	.literal .LC48, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 48
	l32r	a8, .LC47
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC48
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
	bgeu	a3, a8, .L425
	addi.n	a2, a2, -1
.L425:
	sub	a3, a3, a8
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC49, __divdi3@PLT
	.literal .LC50, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
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
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 32
	l32i	a8, a2, 0
	bnez.n	a8, .L428
	j	.L431
.L430:
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	beqz.n	a8, .L431
.L428:
	bne	a3, a8, .L430
	j	.L427
.L431:
	mov.n	a2, a8
.L427:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	beq	a8, a9, .L434
	j	.L435
.L436:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L435
.L434:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnez.n	a8, .L436
.L435:
	movi.n	a2, -1
	blt	a8, a9, .L433
	movi.n	a2, 1
	blt	a9, a8, .L433
	movi.n	a2, 0
.L433:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L442:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L442
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L447
	mov.n	a8, a2
.L446:
	l32i	a9, a8, 4
	addi.n	a8, a8, 4
	bnez.n	a9, .L446
	sub	a8, a8, a2
	srai	a2, a8, 2
	j	.L444
.L447:
	mov.n	a2, a8
.L444:
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	bnez.n	a4, .L450
	j	.L463
.L452:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L450
	j	.L463
.L450:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a10, a8, .L454
	bnez.n	a8, .L452
	j	.L454
.L456:
	movi.n	a2, 1
	blt	a8, a9, .L449
.L463:
	movi.n	a2, 0
	j	.L449
.L454:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L456
	movi.n	a2, -1
.L449:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L466
	j	.L472
.L468:
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L466
	j	.L472
.L466:
	l32i	a9, a2, 0
	bne	a9, a3, .L468
	j	.L465
.L472:
	movi.n	a2, 0
.L465:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L475
	j	.L484
.L477:
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L475
	j	.L484
.L475:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	beq	a10, a9, .L477
	j	.L485
.L480:
	movi.n	a2, 1
	blt	a9, a10, .L474
.L484:
	movi.n	a2, 0
	j	.L474
.L485:
	bge	a10, a9, .L480
	movi.n	a2, -1
.L474:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.literal_position
	.literal .LC51, memcpy@PLT
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L488
	l32r	a8, .LC51
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L488:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L499
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a10, a2
	addi.n	a9, a4, -1
	bltu	a12, a11, .L494
	bnez.n	a4, .L495
	j	.L499
.L494:
	beqz.n	a4, .L499
	slli	a10, a9, 2
	srli	a10, a10, 2
	addx4	a8, a9, a3
	addi.n	a10, a10, 1
	addx4	a9, a9, a2
	loop	a10, .L497_LEND
.L497:
	l32i	a11, a8, 0
	addi	a9, a9, -4
	s32i	a11, a9, 4
	addi	a8, a8, -4
	.L497_LEND:
	j	.L499
.L495:
	l32i	a9, a8, 0
	addi.n	a8, a8, 4
	s32i	a9, a10, 0
	addi.n	a10, a10, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L495
.L499:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L508
	mov.n	a8, a2
.L509:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L509
.L508:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	bgeu	a2, a3, .L516
	add.n	a8, a2, a4
	add.n	a3, a3, a4
	beqz.n	a4, .L515
	sub	a2, a8, a2
.L518:
	addi.n	a8, a8, -1
	l8ui	a9, a8, 0
	addi.n	a3, a3, -1
	s8i	a9, a3, 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L518
	j	.L515
.L516:
	beq	a2, a3, .L515
	beqz.n	a4, .L515
	addi.n	a8, a4, -1
	bltui	a8, 7, .L524
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L524
	addi.n	a8, a2, 1
	sub	a8, a3, a8
	bltui	a8, 3, .L524
	srli	a10, a4, 2
	slli	a8, a10, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a9, a3
	slli	a12, a10, 2
	addx4	a11, a10, a2
	addi.n	a8, a8, 1
	loop	a8, .L521_LEND
.L521:
	l32i	a10, a2, 0
	addi.n	a2, a2, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	.L521_LEND:
	add.n	a3, a3, a12
	sub	a8, a4, a12
	beq	a4, a12, .L515
	l8ui	a9, a11, 0
	s8i	a9, a3, 0
	beqi	a8, 1, .L515
	l8ui	a9, a11, 1
	s8i	a9, a3, 1
	beqi	a8, 2, .L515
	l8ui	a8, a11, 2
	s8i	a8, a3, 2
	j	.L515
.L524:
	l8ui	a8, a2, 0
	addi.n	a2, a2, 1
	s8i	a8, a3, 0
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L524
.L515:
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
	loop	a10, .L566_LEND
.L566:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L564
	mov.n	a2, a8
	j	.L563
.L564:
	nop.n
	.L566_LEND:
	mov.n	a2, a11
.L563:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L569
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L569
	movi.n	a2, 1
.L571:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L571
.L569:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC53, __ltsf2@PLT
	.literal .LC55, __gtsf2@PLT
	.literal .LC56, 2139095039
	.literal .LC57, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	l32r	a11, .LC57
	l32r	a8, .LC53
	mov.n	a10, a2
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, 1
	bltz	a10, .L576
	l32r	a11, .LC56
	l32r	a8, .LC55
	mov.n	a10, a7
	callx8	a8
	bgei	a10, 1, .L576
	movi.n	a2, 0
.L576:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC59, __ltdf2@PLT
	.literal .LC61, __gtdf2@PLT
	.literal .LC62, 2146435071
	.literal .LC63, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	l32r	a12, .LC63
	l32r	a8, .LC59
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L580
	l32r	a12, .LC62
	l32r	a8, .LC61
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L580
	movi.n	a2, 0
.L580:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC65, __ltdf2@PLT
	.literal .LC67, __gtdf2@PLT
	.literal .LC68, 2146435071
	.literal .LC69, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	l32r	a12, .LC69
	l32r	a8, .LC65
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L584
	l32r	a12, .LC68
	l32r	a8, .LC67
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L584
	movi.n	a2, 0
.L584:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC70, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	l32r	a8, .LC70
	mov.n	a10, a3
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC73, __unordsf2@PLT
	.literal .LC74, __addsf3@PLT
	.literal .LC75, __nesf2@PLT
	.literal .LC76, __mulsf3@PLT
	.literal .LC77, 1056964608
	.literal .LC78, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	l32r	a8, .LC73
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	bnez.n	a10, .L590
	l32r	a8, .LC74
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC75
	mov.n	a11, a2
	callx8	a8
	beqz.n	a10, .L590
	l32r	a7, .LC77
	l32r	a8, .LC78
	movgez	a7, a8, a3
	bbci	a3, 31, .L593
	l32r	a6, .LC76
.L594:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L593:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L590
	l32r	a6, .LC76
.L595:
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L594
	srai	a3, a8, 1
	j	.L595
.L590:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC81, __unorddf2@PLT
	.literal .LC82, __adddf3@PLT
	.literal .LC83, __nedf2@PLT
	.literal .LC84, __muldf3@PLT
	.literal .LC85, 1071644672
	.literal .LC86, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	l32r	a8, .LC81
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L605
	l32r	a8, .LC82
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC83
	mov.n	a12, a2
	mov.n	a13, a3
	callx8	a8
	beqz.n	a10, .L605
	l32r	a6, .LC86
	movi.n	a7, 0
	bgez	a4, .L607
	l32r	a6, .LC85
	movi.n	a7, 0
.L607:
	bbci	a4, 31, .L608
	l32r	a5, .LC84
.L609:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L608:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L605
	l32r	a5, .LC84
.L610:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L609
	srai	a4, a8, 1
	j	.L610
.L605:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC89, __unorddf2@PLT
	.literal .LC90, __adddf3@PLT
	.literal .LC91, __nedf2@PLT
	.literal .LC92, __muldf3@PLT
	.literal .LC93, 1071644672
	.literal .LC94, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	l32r	a8, .LC89
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L620
	l32r	a8, .LC90
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC91
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	beqz.n	a10, .L620
	l32r	a6, .LC94
	movi.n	a7, 0
	bgez	a4, .L622
	l32r	a6, .LC93
	movi.n	a7, 0
.L622:
	bbci	a4, 31, .L623
	l32r	a5, .LC92
.L624:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L623:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L620
	l32r	a5, .LC92
.L625:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L624
	srai	a4, a8, 1
	j	.L625
.L620:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L635
	addi.n	a8, a4, -1
	bltui	a8, 4, .L636
	or	a8, a2, a3
	extui	a8, a8, 0, 2
	bnez.n	a8, .L636
	srli	a9, a4, 2
	slli	a10, a9, 2
	addi	a10, a10, -4
	srli	a10, a10, 2
	mov.n	a8, a2
	slli	a12, a9, 2
	addx4	a13, a9, a3
	addi.n	a10, a10, 1
	loop	a10, .L637_LEND
.L637:
	l32i	a11, a8, 0
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	xor	a9, a9, a11
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	.L637_LEND:
	add.n	a8, a2, a12
	sub	a10, a4, a12
	beq	a4, a12, .L635
	l8ui	a9, a8, 0
	l8ui	a11, a13, 0
	xor	a9, a9, a11
	s8i	a9, a8, 0
	beqi	a10, 1, .L635
	l8ui	a11, a8, 1
	l8ui	a9, a13, 1
	xor	a9, a9, a11
	s8i	a9, a8, 1
	beqi	a10, 2, .L635
	l8ui	a10, a8, 2
	l8ui	a9, a13, 2
	xor	a9, a9, a10
	s8i	a9, a8, 2
	j	.L635
.L636:
	mov.n	a8, a2
.L639:
	l8ui	a10, a8, 0
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L639
.L635:
	retw.n
	.size	memxor, .-memxor
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L661
	mov.n	a8, a2
.L656:
	l8ui	a9, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a9, .L656
	j	.L655
.L661:
	mov.n	a8, a2
.L655:
	bnez.n	a4, .L657
	j	.L658
.L659:
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L657
	j	.L658
.L657:
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	s8i	a9, a8, 0
	bnez.n	a9, .L659
	j	.L660
.L658:
	movi.n	a9, 0
	s8i	a9, a8, 0
.L660:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bnez.n	a3, .L669
	j	.L668
.L671:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L669
	j	.L668
.L669:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L671
.L668:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L678
	j	.L682
.L680:
	beq	a9, a10, .L679
.L681:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L680
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a10, .L682
.L678:
	mov.n	a8, a3
	j	.L681
.L682:
	mov.n	a2, a10
.L679:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L686:
	l8ui	a9, a8, 0
	sub	a10, a3, a9
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L686
	retw.n
	.size	strrchr, .-strrchr
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 32
	l8ui	a7, a3, 0
	mov.n	a10, a2
	beqz.n	a7, .L700
	mov.n	a8, a3
.L690:
	l8ui	a11, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a11, .L690
	sub	a9, a8, a3
	mov.n	a2, a10
	beq	a8, a3, .L688
	addi.n	a5, a3, -1
	add.n	a5, a5, a9
	movi.n	a13, 1
	j	.L697
.L694:
	l8ui	a2, a14, 0
	l8ui	a12, a9, 1
	addi.n	a8, a9, 1
	bnez.n	a2, .L692
	j	.L693
.L692:
	mov.n	a9, a8
	j	.L696
.L701:
	mov.n	a12, a7
	mov.n	a9, a3
	mov.n	a14, a10
.L696:
	sub	a8, a9, a5
	mov.n	a15, a11
	sub	a6, a2, a12
	movnez	a15, a13, a8
	mov.n	a4, a11
	mov.n	a8, a11
	addi.n	a14, a14, 1
	movnez	a4, a13, a12
	moveqz	a8, a13, a6
	beqz.n	a15, .L693
	bany	a4, a8, .L694
.L693:
	beq	a2, a12, .L700
	addi.n	a10, a10, 1
.L697:
	l8ui	a2, a10, 0
	beq	a2, a7, .L701
	addi.n	a10, a10, 1
	bnez.n	a2, .L697
	j	.L688
.L700:
	mov.n	a2, a10
.L688:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC96, __ltdf2@PLT
	.literal .LC97, __gtdf2@PLT
	.literal .LC98, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	l32r	a7, .LC96
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	movi.n	a12, 0
	movi.n	a13, 0
	bgez	a10, .L717
	l32r	a8, .LC97
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a8
	blti	a10, 1, .L712
	j	.L711
.L717:
	l32r	a8, .LC97
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L712
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L712
.L711:
	l32r	a10, .LC98
	xor	a2, a2, a10
.L712:
	retw.n
	.size	copysign, .-copysign
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	beqz.n	a5, .L718
	bltu	a3, a5, .L729
	sub	a3, a3, a5
	add.n	a13, a2, a3
	bltu	a13, a2, .L729
	l8ui	a15, a4, 0
	addi.n	a5, a5, -1
	addi.n	a4, a4, 1
.L724:
	l8ui	a8, a2, 0
	addi.n	a14, a2, 1
	bne	a8, a15, .L728
	mov.n	a9, a4
	beqz.n	a5, .L718
.L723:
	mov.n	a8, a14
	mov.n	a10, a5
	j	.L721
.L722:
	addi.n	a9, a9, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L721
	j	.L718
.L721:
	l8ui	a12, a8, 0
	l8ui	a11, a9, 0
	addi.n	a8, a8, 1
	beq	a12, a11, .L722
	bltu	a13, a14, .L729
	l8ui	a8, a14, 0
	addi.n	a2, a14, 1
	bne	a8, a15, .L720
	mov.n	a8, a14
	mov.n	a9, a4
	mov.n	a14, a2
	mov.n	a2, a8
	j	.L723
.L728:
	mov.n	a2, a14
.L720:
	bgeu	a13, a2, .L724
.L729:
	movi.n	a2, 0
.L718:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC99, memmove@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L738
	l32r	a8, .LC99
	mov.n	a12, a4
	mov.n	a10, a2
	callx8	a8
.L738:
	add.n	a2, a2, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC101, __ltdf2@PLT
	.literal .LC102, -2147483648
	.literal .LC104, __ledf2@PLT
	.literal .LC106, __gtdf2@PLT
	.literal .LC108, __gedf2@PLT
	.literal .LC110, __nedf2@PLT
	.literal .LC111, __muldf3@PLT
	.literal .LC113, __adddf3@PLT
	.literal .LC115, 1070596096
	.literal .LC116, 1071644672
	.literal .LC117, 1073741824
	.literal .LC118, 1072693248
	.literal .LC119, -1075838976
	.literal .LC120, -1074790400
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	mov.n	a7, a3
	l32r	a3, .LC101
	mov.n	a10, a2
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a11, a7
	mov.n	a6, a2
	mov.n	a2, a4
	callx8	a3
	bgez	a10, .L764
	l32r	a10, .LC102
	l32r	a12, .LC120
	xor	a8, a6, a10
	l32r	a14, .LC104
	s32i	a8, sp, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	s32i	a7, sp, 4
	callx8	a14
	l32i	a9, sp, 4
	l32i	a8, sp, 0
	blti	a10, 1, .L754
	l32r	a12, .LC119
	l32r	a14, .LC106
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a14
	l32i	a9, sp, 4
	l32i	a8, sp, 0
	bgei	a10, 1, .L755
	j	.L748
.L764:
	l32r	a5, .LC108
	l32r	a12, .LC118
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	movi.n	a8, 0
	s32i	a8, sp, 0
	bgez	a10, .L745
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a3
	bgez	a10, .L748
	l32r	a8, .LC110
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a8
	bnez.n	a10, .L757
.L748:
	movi.n	a8, 0
	s32i	a8, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	j	.L742
.L754:
	mov.n	a6, a8
	l32r	a5, .LC108
	movi.n	a8, 1
	mov.n	a7, a9
	s32i	a8, sp, 0
.L745:
	l32r	a3, .LC111
	movi.n	a4, 0
.L751:
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a3
	l32r	a12, .LC117
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a10, a6
	mov.n	a11, a7
	movi.n	a13, 0
	addi.n	a4, a4, 1
	mov.n	a6, a8
	mov.n	a7, a9
	callx8	a5
	bgez	a10, .L751
	j	.L752
.L755:
	movi.n	a10, 1
	s32i	a10, sp, 0
	j	.L746
.L757:
	mov.n	a8, a6
	mov.n	a9, a7
.L746:
	l32r	a5, .LC113
	mov.n	a6, a8
	mov.n	a7, a9
	movi.n	a4, 0
.L753:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	l32r	a12, .LC115
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a10, a6
	mov.n	a11, a7
	movi.n	a13, 0
	addi.n	a4, a4, -1
	mov.n	a6, a8
	mov.n	a7, a9
	callx8	a3
	bltz	a10, .L753
.L752:
	l32i	a8, sp, 0
	s32i	a4, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	beqz.n	a8, .L742
	l32r	a8, .LC102
	xor	a2, a6, a8
.L742:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC121, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	or	a9, a3, a2
	mov.n	a8, a2
	mov.n	a6, a3
	beqz.n	a9, .L770
	l32r	a9, .LC121
	movi.n	a3, 0
	s32i	a9, sp, 4
	mov.n	a2, a3
.L769:
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
	bltu	a11, a3, .L768
	movi.n	a13, 0
.L768:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L769
	j	.L765
.L770:
	mov.n	a3, a9
	mov.n	a2, a9
.L765:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L773
	j	.L774
.L777:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L775
	beqz.n	a8, .L775
.L773:
	bgez	a3, .L777
	j	.L774
.L775:
	movi.n	a9, 0
	beqz.n	a8, .L778
.L774:
	movi.n	a9, 0
.L780:
	bltu	a2, a3, .L779
	sub	a2, a2, a3
	or	a9, a9, a8
.L779:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L780
.L778:
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
	bne	a2, a9, .L803
	beq	a3, a2, .L804
.L803:
	nsau	a2, a8
	addi	a2, a2, 32
	nsau	a8, a10
	movnez	a2, a8, a10
	addi.n	a2, a2, -1
	j	.L797
.L804:
	movi.n	a2, 0x3f
.L797:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L808
	movi.n	a2, 0
.L807:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L807
	j	.L805
.L808:
.L805:
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
	bgeu	a2, a3, .L811
.L814:
	bnez.n	a8, .L812
	j	.L838
.L811:
	add.n	a9, a3, a4
	bltu	a9, a2, .L814
	addi.n	a8, a4, -1
	bnez.n	a4, .L815
	j	.L810
.L812:
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	mov.n	a13, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L817_LEND
.L817:
	l32i	a10, a13, 0
	l32i	a11, a13, 4
	s32i	a10, a9, 0
	s32i	a11, a9, 4
	addi.n	a13, a13, 8
	addi.n	a9, a9, 8
	.L817_LEND:
	j	.L839
.L838:
	add.n	a10, a2, a12
	add.n	a8, a3, a12
	bnez.n	a4, .L819
	j	.L810
.L839:
	bgeu	a12, a4, .L810
	sub	a13, a4, a12
	addi.n	a8, a13, -1
	bgeui	a8, 7, .L840
	add.n	a10, a2, a12
	add.n	a8, a3, a12
	j	.L819
.L840:
	addi.n	a9, a12, 1
	add.n	a10, a2, a12
	add.n	a9, a3, a9
	sub	a9, a10, a9
	add.n	a8, a3, a12
	bltui	a9, 3, .L819
	or	a9, a8, a10
	extui	a9, a9, 0, 2
	bnez.n	a9, .L819
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	slli	a14, a14, 2
	addi.n	a9, a9, 1
	loop	a9, .L821_LEND
.L821:
	l32i	a11, a8, 0
	addi.n	a8, a8, 4
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	.L821_LEND:
	add.n	a12, a12, a14
	beq	a13, a14, .L810
	add.n	a8, a3, a12
	l8ui	a9, a8, 0
	add.n	a8, a2, a12
	s8i	a9, a8, 0
	addi.n	a8, a12, 1
	bgeu	a8, a4, .L810
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a12, a12, 2
	bgeu	a12, a4, .L810
	add.n	a3, a3, a12
	l8ui	a8, a3, 0
	add.n	a2, a2, a12
	s8i	a8, a2, 0
	j	.L810
.L819:
	add.n	a3, a3, a4
	sub	a3, a3, a8
.L823:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L823
	j	.L810
.L815:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L815
.L810:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a12, a4, 1
	bgeu	a2, a3, .L846
.L849:
	bnez.n	a12, .L847
	j	.L848
.L846:
	add.n	a8, a3, a4
	bltu	a8, a2, .L849
	addi.n	a8, a4, -1
	bnez.n	a4, .L850
	j	.L845
.L847:
	addi.n	a8, a12, -1
	movi.n	a9, 8
	bgeu	a9, a8, .L852
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L852
	addi.n	a8, a3, 2
	beq	a2, a8, .L852
	srli	a13, a4, 2
	slli	a8, a13, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a14, a13, 2
	addi.n	a8, a8, 1
	loop	a8, .L853_LEND
.L853:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	.L853_LEND:
	add.n	a13, a13, a13
	beq	a12, a13, .L848
	add.n	a8, a3, a14
	l16ui	a8, a8, 0
	add.n	a14, a2, a14
	s16i	a8, a14, 0
	j	.L848
.L852:
	add.n	a8, a12, a12
	addi	a8, a8, -2
	srli	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L855_LEND
.L855:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	.L855_LEND:
.L848:
	bbci	a4, 31, .L845
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L845
.L850:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L850
.L845:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	movi.n	a11, -4
	srli	a8, a4, 2
	and	a11, a4, a11
	bgeu	a2, a3, .L875
.L878:
	bnez.n	a8, .L876
	j	.L902
.L875:
	add.n	a9, a3, a4
	bltu	a9, a2, .L878
	addi.n	a8, a4, -1
	bnez.n	a4, .L879
	j	.L874
.L876:
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L881_LEND
.L881:
	l32i	a12, a10, 0
	addi.n	a10, a10, 4
	s32i	a12, a9, 0
	addi.n	a9, a9, 4
	.L881_LEND:
	j	.L903
.L902:
	add.n	a10, a2, a11
	add.n	a8, a3, a11
	bnez.n	a4, .L883
	j	.L874
.L903:
	bgeu	a11, a4, .L874
	sub	a13, a4, a11
	addi.n	a8, a13, -1
	bgeui	a8, 7, .L904
	add.n	a10, a2, a11
	add.n	a8, a3, a11
	j	.L883
.L904:
	addi.n	a9, a11, 1
	add.n	a10, a2, a11
	add.n	a9, a3, a9
	sub	a9, a10, a9
	add.n	a8, a3, a11
	bltui	a9, 3, .L883
	or	a9, a8, a10
	extui	a9, a9, 0, 2
	bnez.n	a9, .L883
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	slli	a14, a14, 2
	addi.n	a9, a9, 1
	loop	a9, .L885_LEND
.L885:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a10, 0
	addi.n	a10, a10, 4
	.L885_LEND:
	add.n	a11, a11, a14
	beq	a13, a14, .L874
	add.n	a8, a3, a11
	l8ui	a9, a8, 0
	add.n	a8, a2, a11
	s8i	a9, a8, 0
	addi.n	a8, a11, 1
	bgeu	a8, a4, .L874
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a11, a11, 2
	bgeu	a11, a4, .L874
	add.n	a3, a3, a11
	l8ui	a8, a3, 0
	add.n	a2, a2, a11
	s8i	a8, a2, 0
	j	.L874
.L883:
	add.n	a3, a3, a4
	sub	a3, a3, a8
.L887:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L887
	j	.L874
.L879:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L879
.L874:
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
	l32r	a8, .LC122
	mov.n	a10, a2
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
	l32r	a8, .LC123
	mov.n	a10, a2
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
	l32r	a8, .LC124
	mov.n	a10, a2
	mov.n	a11, a3
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
	l32r	a8, .LC125
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
	extui	a8, a2, 0, 16
	bbsi	a2, 16, .L918
	srai	a2, a8, 14
	bnez.n	a2, .L915
	srai	a9, a8, 13
	bnez.n	a9, .L919
	srai	a9, a8, 12
	bnez.n	a9, .L920
	srai	a9, a8, 11
	bnez.n	a9, .L921
	srai	a9, a8, 10
	bnez.n	a9, .L922
	srai	a9, a8, 9
	bnez.n	a9, .L923
	srai	a9, a8, 8
	bnez.n	a9, .L924
	srai	a9, a8, 7
	bnez.n	a9, .L925
	srai	a9, a8, 6
	bnez.n	a9, .L926
	srai	a9, a8, 5
	bnez.n	a9, .L927
	srai	a9, a8, 4
	bnez.n	a9, .L928
	srai	a9, a8, 3
	bnez.n	a9, .L929
	srai	a9, a8, 2
	bnez.n	a9, .L930
	srai	a9, a8, 1
	bnez.n	a9, .L931
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L915
.L918:
	movi.n	a2, 0
	j	.L915
.L919:
	movi.n	a2, 2
	j	.L915
.L920:
	movi.n	a2, 3
	j	.L915
.L921:
	movi.n	a2, 4
	j	.L915
.L922:
	movi.n	a2, 5
	j	.L915
.L923:
	movi.n	a2, 6
	j	.L915
.L924:
	movi.n	a2, 7
	j	.L915
.L925:
	movi.n	a2, 8
	j	.L915
.L926:
	movi.n	a2, 9
	j	.L915
.L927:
	movi.n	a2, 0xa
	j	.L915
.L928:
	movi.n	a2, 0xb
	j	.L915
.L929:
	movi.n	a2, 0xc
	j	.L915
.L930:
	movi.n	a2, 0xd
	j	.L915
.L931:
	movi.n	a2, 0xe
.L915:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	bbsi	a2, 31, .L936
	bbsi	a8, 30, .L937
	bbsi	a8, 29, .L938
	bbsi	a8, 28, .L939
	bbsi	a8, 27, .L940
	bbsi	a8, 26, .L941
	bbsi	a8, 25, .L942
	bbsi	a8, 24, .L943
	bbsi	a8, 23, .L944
	bbsi	a8, 22, .L945
	bbsi	a8, 21, .L946
	bbsi	a8, 20, .L947
	bbsi	a8, 19, .L948
	bbsi	a8, 18, .L949
	bbsi	a8, 17, .L950
	srai	a8, a8, 15
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L933
.L936:
	movi.n	a2, 0
	j	.L933
.L937:
	movi.n	a2, 1
	j	.L933
.L938:
	movi.n	a2, 2
	j	.L933
.L939:
	movi.n	a2, 3
	j	.L933
.L940:
	movi.n	a2, 4
	j	.L933
.L941:
	movi.n	a2, 5
	j	.L933
.L942:
	movi.n	a2, 6
	j	.L933
.L943:
	movi.n	a2, 7
	j	.L933
.L944:
	movi.n	a2, 8
	j	.L933
.L945:
	movi.n	a2, 9
	j	.L933
.L946:
	movi.n	a2, 0xa
	j	.L933
.L947:
	movi.n	a2, 0xb
	j	.L933
.L948:
	movi.n	a2, 0xc
	j	.L933
.L949:
	movi.n	a2, 0xd
	j	.L933
.L950:
	movi.n	a2, 0xe
.L933:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC130, 0x47000000
	.literal .LC131, __gesf2@PLT
	.literal .LC132, __subsf3@PLT
	.literal .LC133, __fixsfsi@PLT
	.literal .LC134, 32768
	.literal .LC135, .LC130
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC135
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC131
	callx8	a8
	bltz	a10, .L957
	l32r	a8, .LC135
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC132
	callx8	a8
	l32r	a8, .LC133
	callx8	a8
	l32r	a8, .LC134
	add.n	a2, a10, a8
	j	.L952
.L957:
	l32r	a8, .LC133
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
.L952:
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	extui	a9, a2, 0, 1
	extui	a8, a2, 1, 1
	add.n	a8, a8, a9
	extui	a9, a2, 2, 1
	add.n	a8, a8, a9
	extui	a9, a2, 3, 1
	add.n	a8, a8, a9
	extui	a9, a2, 4, 1
	add.n	a8, a8, a9
	extui	a9, a2, 5, 1
	add.n	a8, a8, a9
	extui	a9, a2, 6, 1
	add.n	a8, a8, a9
	extui	a9, a2, 7, 1
	add.n	a8, a8, a9
	extui	a9, a2, 8, 1
	add.n	a8, a8, a9
	extui	a9, a2, 9, 1
	add.n	a8, a8, a9
	extui	a9, a2, 10, 1
	add.n	a8, a8, a9
	extui	a9, a2, 11, 1
	add.n	a8, a8, a9
	extui	a9, a2, 12, 1
	add.n	a8, a8, a9
	extui	a9, a2, 13, 1
	add.n	a8, a8, a9
	extui	a9, a2, 14, 1
	add.n	a8, a8, a9
	extui	a2, a2, 15, 1
	add.n	a2, a8, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	extui	a9, a2, 0, 1
	extui	a8, a2, 1, 1
	add.n	a8, a8, a9
	extui	a9, a2, 2, 1
	add.n	a8, a8, a9
	extui	a9, a2, 3, 1
	add.n	a8, a8, a9
	extui	a9, a2, 4, 1
	add.n	a8, a8, a9
	extui	a9, a2, 5, 1
	add.n	a8, a8, a9
	extui	a9, a2, 6, 1
	add.n	a8, a8, a9
	extui	a9, a2, 7, 1
	add.n	a8, a8, a9
	extui	a9, a2, 8, 1
	add.n	a8, a8, a9
	extui	a9, a2, 9, 1
	add.n	a8, a8, a9
	extui	a9, a2, 10, 1
	add.n	a8, a8, a9
	extui	a9, a2, 11, 1
	add.n	a8, a8, a9
	extui	a9, a2, 12, 1
	add.n	a8, a8, a9
	extui	a9, a2, 13, 1
	add.n	a8, a8, a9
	extui	a9, a2, 14, 1
	add.n	a8, a8, a9
	extui	a2, a2, 15, 1
	add.n	a2, a8, a2
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L963
	movi.n	a2, 0
.L962:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L962
	j	.L960
.L963:
.L960:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L965
	j	.L972
.L967:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srli	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
.L972:
	bnez.n	a3, .L967
.L965:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L974
	j	.L975
.L978:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L976
	beqz.n	a8, .L976
.L974:
	bgez	a3, .L978
	j	.L975
.L976:
	movi.n	a9, 0
	beqz.n	a8, .L979
.L975:
	movi.n	a9, 0
.L981:
	bltu	a2, a3, .L980
	sub	a2, a2, a3
	or	a9, a9, a8
.L980:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L981
.L979:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC136, __ltsf2@PLT
	.literal .LC137, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	l32r	a8, .LC136
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, -1
	bltz	a10, .L995
	l32r	a8, .LC137
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L995
	movi.n	a2, 0
.L995:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC138, __ltdf2@PLT
	.literal .LC139, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 32
	l32r	a8, .LC138
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, -1
	bltz	a10, .L999
	l32r	a8, .LC139
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L999
	movi.n	a2, 0
.L999:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC140, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	l32r	a8, .LC140
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
	.literal .LC141, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	l32r	a8, .LC141
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
	mov.n	a10, a2
	bgez	a3, .L1006
	neg	a3, a3
	movi.n	a11, 1
	j	.L1007
.L1006:
	beqz.n	a3, .L1011
	movi.n	a11, 0
.L1007:
	movi.n	a2, 0
	mov.n	a9, a2
.L1009:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	addi.n	a9, a9, 1
	srai	a3, a3, 1
	extui	a9, a9, 0, 8
	add.n	a2, a2, a8
	add.n	a10, a10, a10
	beqz.n	a3, .L1012
	bnei	a9, 32, .L1009
.L1012:
	neg	a8, a2
	movnez	a2, a8, a11
	j	.L1005
.L1011:
	mov.n	a2, a3
.L1005:
	retw.n
	.size	__mulhi3, .-__mulhi3
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a10, 0
	bgez	a2, .L1020
	mov.n	a8, a10
	neg	a2, a2
	movi.n	a10, 1
.L1020:
	bgez	a3, .L1021
	neg	a3, a3
	mov.n	a10, a8
.L1021:
	mov.n	a9, a2
	movi.n	a8, 1
	bltu	a3, a2, .L1022
	j	.L1023
.L1041:
	bnez.n	a8, .L1023
.L1042:
	mov.n	a2, a8
	j	.L1024
.L1022:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1041
	bnez.n	a8, .L1022
	j	.L1042
.L1023:
	movi.n	a2, 0
.L1029:
	bltu	a9, a3, .L1028
	sub	a9, a9, a3
	or	a2, a2, a8
.L1028:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1029
.L1024:
	neg	a8, a2
	movnez	a2, a8, a10
	retw.n
	.size	__divsi3, .-__divsi3
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	movi.n	a11, 0
	bgez	a2, .L1044
	neg	a2, a2
	movi.n	a11, 1
.L1044:
	abs	a8, a3
	mov.n	a10, a2
	movi.n	a9, 1
	bltu	a8, a2, .L1045
	j	.L1052
.L1064:
	bnez.n	a9, .L1052
.L1065:
	mov.n	a10, a2
	j	.L1047
.L1045:
	add.n	a8, a8, a8
	add.n	a9, a9, a9
	bgeu	a8, a2, .L1064
	bnez.n	a9, .L1045
	j	.L1065
.L1052:
	srli	a9, a9, 1
	bltu	a10, a8, .L1051
	sub	a10, a10, a8
.L1051:
	srli	a8, a8, 1
	bnez.n	a9, .L1052
.L1047:
	neg	a2, a10
	moveqz	a2, a10, a11
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 32
	extui	a13, a2, 0, 16
	extui	a11, a3, 0, 16
	movi.n	a12, 1
	bltu	a11, a13, .L1067
	bne	a11, a13, .L1096
	mov.n	a9, a12
	movi.n	a2, 0
	j	.L1073
.L1071:
	extui	a9, a9, 0, 16
	bgeu	a8, a13, .L1069
	beqz.n	a9, .L1069
	mov.n	a12, a9
	mov.n	a11, a8
.L1067:
	add.n	a8, a11, a11
	sext	a10, a11, 15
	add.n	a9, a12, a12
	extui	a8, a8, 0, 16
	bgez	a10, .L1071
	j	.L1122
.L1069:
	mov.n	a2, a13
	beqz.n	a9, .L1073
	bltu	a13, a8, .L1074
	sub	a13, a13, a8
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	extui	a13, a13, 0, 16
	mov.n	a11, a8
	mov.n	a12, a9
	j	.L1075
.L1074:
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	mov.n	a12, a9
	mov.n	a11, a8
	movi.n	a9, 0
	j	.L1075
.L1093:
	sub	a13, a13, a11
	extui	a13, a13, 0, 16
	mov.n	a9, a12
.L1094:
	extui	a14, a12, 1, 16
	srli	a10, a11, 1
	beqz.n	a14, .L1111
.L1075:
	bltu	a13, a10, .L1076
	sub	a10, a13, a10
	or	a14, a9, a14
	extui	a13, a10, 0, 16
	extui	a9, a14, 0, 16
.L1076:
	extui	a8, a12, 2, 16
	srli	a10, a11, 2
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1077
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1077:
	extui	a8, a12, 3, 16
	srli	a10, a11, 3
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1078
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1078:
	extui	a8, a12, 4, 16
	srli	a10, a11, 4
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1079
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1079:
	extui	a8, a12, 5, 16
	srli	a10, a11, 5
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1080
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1080:
	extui	a8, a12, 6, 16
	srli	a10, a11, 6
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1081
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1081:
	extui	a8, a12, 7, 16
	srli	a10, a11, 7
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1082
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1082:
	extui	a8, a12, 8, 16
	srli	a10, a11, 8
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1083
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1083:
	extui	a8, a12, 9, 16
	srli	a10, a11, 9
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1084
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1084:
	extui	a8, a12, 10, 16
	srli	a10, a11, 10
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1085
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1085:
	extui	a8, a12, 11, 16
	srli	a10, a11, 11
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1086
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1086:
	extui	a8, a12, 12, 16
	srli	a10, a11, 12
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1087
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1087:
	extui	a8, a12, 13, 16
	srli	a10, a11, 13
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1088
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1088:
	extui	a8, a12, 14, 16
	srli	a10, a11, 14
	beqz.n	a8, .L1111
	bltu	a13, a10, .L1089
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1089:
	extui	a12, a12, 15, 16
	srli	a11, a11, 15
	bnez.n	a12, .L1090
	j	.L1111
.L1096:
	mov.n	a2, a13
	movi.n	a9, 0
	j	.L1073
.L1111:
	mov.n	a2, a13
	j	.L1073
.L1090:
	movi.n	a2, 0
	bltu	a13, a11, .L1073
	movi.n	a8, 1
	sub	a11, a13, a11
	or	a8, a9, a8
	extui	a2, a11, 0, 16
	extui	a9, a8, 0, 16
	j	.L1073
.L1122:
	movi.n	a9, 0
	bltu	a13, a11, .L1094
	j	.L1093
.L1073:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L1125
	j	.L1126
.L1129:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1127
	beqz.n	a8, .L1127
.L1125:
	bgez	a3, .L1129
	j	.L1126
.L1127:
	movi.n	a9, 0
	beqz.n	a8, .L1130
.L1126:
	movi.n	a9, 0
.L1132:
	bltu	a2, a3, .L1131
	sub	a2, a2, a3
	or	a9, a9, a8
.L1131:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1132
.L1130:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L1147
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L1148
.L1147:
	beqz.n	a4, .L1149
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L1148:
	mov.n	a3, a8
.L1149:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1152
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L1153
.L1152:
	beqz.n	a4, .L1154
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1153:
	mov.n	a2, a8
.L1154:
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
	.literal .LC142, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	l32r	a8, .LC142
	movi.n	a12, 1
	bgeu	a8, a2, .L1159
	movi.n	a12, 0
.L1159:
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
	blt	a8, a4, .L1160
	movi.n	a2, 2
	blt	a4, a8, .L1160
	movi.n	a2, 0
	bltu	a3, a5, .L1160
	movi.n	a2, 2
	bltu	a5, a3, .L1160
	movi.n	a2, 1
.L1160:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	blt	a8, a4, .L1166
	movi.n	a2, 1
	blt	a4, a8, .L1166
	movi.n	a2, -1
	bltu	a3, a5, .L1166
	movi.n	a2, 1
	bltu	a5, a3, .L1166
	movi.n	a2, 0
.L1166:
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
	bbci	a4, 26, .L1174
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L1175
.L1174:
	beqz.n	a4, .L1176
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1175:
	mov.n	a2, a8
.L1176:
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
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mul16u	a10, a3, a5
	extui	a11, a3, 16, 16
	mul16u	a8, a5, a11
	extui	a12, a5, 16, 16
	extui	a9, a10, 16, 16
	add.n	a8, a8, a9
	mul16u	a9, a3, a12
	mul16u	a11, a11, a12
	extui	a12, a8, 0, 16
	add.n	a9, a9, a12
	extui	a8, a8, 16, 16
	mull	a4, a3, a4
	add.n	a8, a8, a11
	extui	a11, a9, 16, 16
	mull	a2, a5, a2
	add.n	a8, a8, a11
	extui	a3, a10, 0, 16
	slli	a9, a9, 16
	add.n	a4, a4, a8
	add.n	a2, a4, a2
	add.n	a3, a3, a9
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
	.literal .LC144, 27030
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
	l32r	a2, .LC144
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC145, 27030
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
	l32r	a2, .LC145
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC146, 1431655765
	.literal .LC147, 858993459
	.literal .LC148, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	l32r	a10, .LC146
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L1187
	addi.n	a2, a2, -1
.L1187:
	l32r	a9, .LC147
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
	bgeu	a8, a3, .L1188
	addi.n	a10, a10, 1
.L1188:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a8, a11, .L1189
	addi.n	a9, a9, 1
.L1189:
	l32r	a10, .LC148
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
	.literal .LC149, 1431655765
	.literal .LC150, 858993459
	.literal .LC151, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	l32r	a9, .LC149
	srli	a8, a2, 1
	and	a8, a8, a9
	l32r	a10, .LC150
	sub	a2, a2, a8
	srli	a9, a2, 2
	and	a9, a9, a10
	and	a2, a2, a10
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC151
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC153, __muldf3@PLT
	.literal .LC154, __divdf3@PLT
	.literal .LC155, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a7, a4
	s32i	a4, sp, 0
	mov.n	a5, a3
	mov.n	a4, a2
	bbci	a7, 31, .L1197
	l32r	a6, .LC153
	l32r	a2, .LC155
	movi.n	a3, 0
.L1194:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L1192
.L1197:
	l32r	a2, .LC155
	movi.n	a3, 0
.L1192:
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	srai	a7, a8, 1
	beqz.n	a7, .L1193
	l32r	a6, .LC153
.L1195:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a4, a10
	mov.n	a5, a11
	bbsi	a7, 31, .L1194
	srai	a7, a8, 1
	j	.L1195
.L1193:
	l32i	a8, sp, 0
	bgez	a8, .L1191
	l32r	a10, .LC155
	l32r	a8, .LC154
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L1191:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC157, __mulsf3@PLT
	.literal .LC158, __divsf3@PLT
	.literal .LC159, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a2, .LC159
	bbci	a3, 31, .L1199
	l32r	a5, .LC157
.L1201:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
	j	.L1199
.L1199:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1200
	l32r	a5, .LC157
.L1202:
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1201
	srai	a7, a8, 1
	j	.L1202
.L1200:
	bgez	a3, .L1198
	l32r	a10, .LC159
	l32r	a8, .LC158
	mov.n	a11, a2
	callx8	a8
	mov.n	a2, a10
.L1198:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L1205
	movi.n	a2, 2
	bltu	a4, a8, .L1205
	movi.n	a2, 0
	bltu	a3, a5, .L1205
	movi.n	a2, 2
	bltu	a5, a3, .L1205
	movi.n	a2, 1
.L1205:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	bltu	a8, a4, .L1211
	movi.n	a2, 1
	bltu	a4, a8, .L1211
	movi.n	a2, -1
	bltu	a3, a5, .L1211
	movi.n	a2, 1
	bltu	a5, a3, .L1211
	movi.n	a2, 0
.L1211:
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
