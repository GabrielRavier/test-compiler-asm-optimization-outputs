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
	beqz.n	a7, .L293
	movi.n	a4, 0
.L295:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	beqz.n	a10, .L292
	add.n	a3, a3, a5
	bne	a7, a4, .L295
.L293:
	movi.n	a2, 0
.L292:
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
	j	.L305
.L306:
	addi.n	a2, a2, 1
.L305:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L306
	movi.n	a8, 0x2b
	beq	a7, a8, .L307
	movi.n	a8, 0x2d
	beq	a7, a8, .L308
	j	.L318
.L307:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	mov.n	a13, a10
	bgeu	a8, a9, .L310
	j	.L304
.L308:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	bltu	a8, a9, .L304
	movi.n	a13, 1
.L310:
	movi.n	a12, 9
.L313:
	l8ui	a7, a2, 1
	addx4	a8, a10, a10
	subx2	a10, a8, a9
	mov.n	a11, a9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	add.n	a8, a8, a8
	bgeu	a12, a9, .L313
	j	.L319
.L318:
	addi	a9, a7, -48
	movi.n	a8, 9
	mov.n	a13, a10
	bgeu	a8, a9, .L310
	j	.L304
.L319:
	sub	a11, a11, a8
	moveqz	a10, a11, a13
.L304:
	mov.n	a2, a10
	retw.n
	.size	atoi, .-atoi
	.literal_position
	.literal .LC47, isspace@PLT
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l32r	a6, .LC47
	j	.L321
.L322:
	addi.n	a2, a2, 1
.L321:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L322
	movi.n	a8, 0x2b
	beq	a7, a8, .L323
	movi.n	a8, 0x2d
	bne	a7, a8, .L324
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	movi.n	a13, 1
	bgeu	a8, a9, .L325
	j	.L320
.L323:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	bltu	a8, a9, .L320
	mov.n	a13, a10
.L325:
	movi.n	a12, 9
.L328:
	l8ui	a7, a2, 1
	addx4	a8, a10, a10
	subx2	a10, a8, a9
	mov.n	a11, a9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	add.n	a8, a8, a8
	bgeu	a12, a9, .L328
	j	.L333
.L324:
	addi	a9, a7, -48
	movi.n	a8, 9
	mov.n	a13, a10
	bgeu	a8, a9, .L325
	j	.L320
.L333:
	sub	a11, a11, a8
	moveqz	a10, a11, a13
.L320:
	mov.n	a2, a10
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC48, isspace@PLT
	.literal .LC49, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 48
	l32r	a6, .LC48
	j	.L335
.L336:
	addi.n	a2, a2, 1
.L335:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	mov.n	a4, a10
	bnez.n	a10, .L336
	movi.n	a8, 0x2b
	beq	a7, a8, .L337
	movi.n	a8, 0x2d
	beq	a7, a8, .L338
	j	.L350
.L337:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bgeu	a8, a7, .L340
	j	.L347
.L338:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bltu	a8, a7, .L347
	movi.n	a4, 1
.L340:
	l32r	a8, .LC49
	movi.n	a11, 0
	s32i	a8, sp, 0
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L344:
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
	bgeu	a8, a7, .L343
	addi.n	a2, a2, -1
.L343:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L344
	j	.L351
.L350:
	addi	a7, a7, -48
	movi.n	a8, 9
	mov.n	a3, a2
	bgeu	a8, a7, .L340
	j	.L347
.L351:
	bnez.n	a4, .L334
	sub	a2, a13, a9
	bgeu	a10, a8, .L346
	addi.n	a2, a2, -1
.L346:
	sub	a11, a10, a8
	j	.L334
.L347:
	mov.n	a11, a4
	mov.n	a2, a4
.L334:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L365:
	beqz.n	a4, .L353
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L357
	beqz.n	a10, .L352
	add.n	a3, a2, a5
	sub	a4, a4, a7
	j	.L365
.L357:
	mov.n	a4, a7
	j	.L365
.L353:
	movi.n	a2, 0
.L352:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	bnez.n	a4, .L367
.L371:
	movi.n	a2, 0
	j	.L366
.L367:
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	addi.n	a4, a4, -1
	callx8	a6
	srai	a4, a4, 1
	beqz.n	a10, .L366
	blti	a10, 1, .L369
	add.n	a3, a2, a5
	bnez.n	a4, .L367
	j	.L371
.L369:
	beqz.n	a7, .L371
	mov.n	a4, a7
	j	.L367
.L366:
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
	bgeu	a3, a8, .L382
	addi.n	a2, a2, -1
.L382:
	sub	a3, a3, a8
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC50, __divdi3@PLT
	.literal .LC51, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 48
	l32r	a8, .LC50
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC51
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
	bgeu	a3, a8, .L388
	addi.n	a2, a2, -1
.L388:
	sub	a3, a3, a8
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC52, __divdi3@PLT
	.literal .LC53, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	entry	sp, 48
	l32r	a8, .LC52
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC53
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
	bnez.n	a8, .L391
	j	.L394
.L393:
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	beqz.n	a8, .L394
.L391:
	bne	a3, a8, .L393
	j	.L390
.L394:
	mov.n	a2, a8
.L390:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	beq	a8, a9, .L397
	j	.L398
.L399:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L398
.L397:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnez.n	a8, .L399
.L398:
	movi.n	a2, -1
	blt	a8, a9, .L396
	movi.n	a2, 1
	blt	a9, a8, .L396
	movi.n	a2, 0
.L396:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L405:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L405
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L410
	mov.n	a8, a2
.L409:
	l32i	a9, a8, 4
	addi.n	a8, a8, 4
	bnez.n	a9, .L409
	sub	a8, a8, a2
	srai	a2, a8, 2
	j	.L407
.L410:
	mov.n	a2, a8
.L407:
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	bnez.n	a4, .L413
	j	.L426
.L415:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L413
	j	.L426
.L413:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a10, a8, .L417
	bnez.n	a8, .L415
	j	.L417
.L419:
	movi.n	a2, 1
	blt	a8, a9, .L412
.L426:
	movi.n	a2, 0
	j	.L412
.L417:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L419
	movi.n	a2, -1
.L412:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L429
	j	.L435
.L431:
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L429
	j	.L435
.L429:
	l32i	a9, a2, 0
	bne	a9, a3, .L431
	j	.L428
.L435:
	movi.n	a2, 0
.L428:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L438
	j	.L447
.L440:
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L438
	j	.L447
.L438:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	beq	a10, a9, .L440
	j	.L448
.L443:
	movi.n	a2, 1
	blt	a9, a10, .L437
.L447:
	movi.n	a2, 0
	j	.L437
.L448:
	bge	a10, a9, .L443
	movi.n	a2, -1
.L437:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.literal_position
	.literal .LC54, memcpy@PLT
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L451
	l32r	a8, .LC54
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L451:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L462
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a10, a2
	addi.n	a9, a4, -1
	bltu	a12, a11, .L457
	bnez.n	a4, .L458
	j	.L462
.L457:
	beqz.n	a4, .L462
	slli	a10, a9, 2
	srli	a10, a10, 2
	addx4	a8, a9, a3
	addi.n	a10, a10, 1
	addx4	a9, a9, a2
	loop	a10, .L460_LEND
.L460:
	l32i	a11, a8, 0
	addi	a9, a9, -4
	s32i	a11, a9, 4
	addi	a8, a8, -4
	.L460_LEND:
	j	.L462
.L458:
	l32i	a9, a8, 0
	addi.n	a8, a8, 4
	s32i	a9, a10, 0
	addi.n	a10, a10, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L458
.L462:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L471
	mov.n	a8, a2
.L472:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L472
.L471:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	bgeu	a2, a3, .L479
	add.n	a8, a2, a4
	add.n	a3, a3, a4
	beqz.n	a4, .L478
	sub	a2, a8, a2
.L481:
	addi.n	a8, a8, -1
	l8ui	a9, a8, 0
	addi.n	a3, a3, -1
	s8i	a9, a3, 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L481
	j	.L478
.L479:
	beq	a2, a3, .L478
	beqz.n	a4, .L478
	addi.n	a8, a4, -1
	bltui	a8, 7, .L487
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L487
	addi.n	a8, a2, 1
	sub	a8, a3, a8
	bltui	a8, 3, .L487
	srli	a10, a4, 2
	slli	a8, a10, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a9, a3
	slli	a12, a10, 2
	addx4	a11, a10, a2
	addi.n	a8, a8, 1
	loop	a8, .L484_LEND
.L484:
	l32i	a10, a2, 0
	addi.n	a2, a2, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	.L484_LEND:
	add.n	a3, a3, a12
	sub	a8, a4, a12
	beq	a4, a12, .L478
	l8ui	a9, a11, 0
	s8i	a9, a3, 0
	beqi	a8, 1, .L478
	l8ui	a9, a11, 1
	s8i	a9, a3, 1
	beqi	a8, 2, .L478
	l8ui	a8, a11, 2
	s8i	a8, a3, 2
	j	.L478
.L487:
	l8ui	a8, a2, 0
	addi.n	a2, a2, 1
	s8i	a8, a3, 0
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L487
.L478:
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
	loop	a10, .L529_LEND
.L529:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L527
	mov.n	a2, a8
	j	.L526
.L527:
	nop.n
	.L529_LEND:
	mov.n	a2, a11
.L526:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L532
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L532
	movi.n	a2, 1
.L534:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L534
.L532:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC56, __ltsf2@PLT
	.literal .LC58, __gtsf2@PLT
	.literal .LC59, 2139095039
	.literal .LC60, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	l32r	a11, .LC60
	l32r	a8, .LC56
	mov.n	a10, a2
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, 1
	bltz	a10, .L539
	l32r	a11, .LC59
	l32r	a8, .LC58
	mov.n	a10, a7
	callx8	a8
	bgei	a10, 1, .L539
	movi.n	a2, 0
.L539:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC62, __ltdf2@PLT
	.literal .LC64, __gtdf2@PLT
	.literal .LC65, 2146435071
	.literal .LC66, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	l32r	a12, .LC66
	l32r	a8, .LC62
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L543
	l32r	a12, .LC65
	l32r	a8, .LC64
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L543
	movi.n	a2, 0
.L543:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC68, __ltdf2@PLT
	.literal .LC70, __gtdf2@PLT
	.literal .LC71, 2146435071
	.literal .LC72, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	l32r	a12, .LC72
	l32r	a8, .LC68
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L547
	l32r	a12, .LC71
	l32r	a8, .LC70
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L547
	movi.n	a2, 0
.L547:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC73, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	l32r	a8, .LC73
	mov.n	a10, a3
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC76, __unordsf2@PLT
	.literal .LC77, __addsf3@PLT
	.literal .LC78, __nesf2@PLT
	.literal .LC79, __mulsf3@PLT
	.literal .LC80, 1056964608
	.literal .LC81, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	l32r	a8, .LC76
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	bnez.n	a10, .L553
	l32r	a8, .LC77
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC78
	mov.n	a11, a2
	callx8	a8
	beqz.n	a10, .L553
	l32r	a7, .LC80
	l32r	a8, .LC81
	movgez	a7, a8, a3
	bbci	a3, 31, .L556
	l32r	a6, .LC79
.L557:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L556:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L553
	l32r	a6, .LC79
.L558:
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L557
	srai	a3, a8, 1
	j	.L558
.L553:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC84, __unorddf2@PLT
	.literal .LC85, __adddf3@PLT
	.literal .LC86, __nedf2@PLT
	.literal .LC87, __muldf3@PLT
	.literal .LC88, 1071644672
	.literal .LC89, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	l32r	a8, .LC84
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L568
	l32r	a8, .LC85
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC86
	mov.n	a12, a2
	mov.n	a13, a3
	callx8	a8
	beqz.n	a10, .L568
	l32r	a6, .LC89
	movi.n	a7, 0
	bgez	a4, .L570
	l32r	a6, .LC88
	movi.n	a7, 0
.L570:
	bbci	a4, 31, .L571
	l32r	a5, .LC87
.L572:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L571:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L568
	l32r	a5, .LC87
.L573:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L572
	srai	a4, a8, 1
	j	.L573
.L568:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC92, __unorddf2@PLT
	.literal .LC93, __adddf3@PLT
	.literal .LC94, __nedf2@PLT
	.literal .LC95, __muldf3@PLT
	.literal .LC96, 1071644672
	.literal .LC97, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	l32r	a8, .LC92
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L583
	l32r	a8, .LC93
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC94
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	beqz.n	a10, .L583
	l32r	a6, .LC97
	movi.n	a7, 0
	bgez	a4, .L585
	l32r	a6, .LC96
	movi.n	a7, 0
.L585:
	bbci	a4, 31, .L586
	l32r	a5, .LC95
.L587:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L586:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L583
	l32r	a5, .LC95
.L588:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L587
	srai	a4, a8, 1
	j	.L588
.L583:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L598
	addi.n	a8, a4, -1
	bltui	a8, 4, .L599
	or	a8, a2, a3
	extui	a8, a8, 0, 2
	bnez.n	a8, .L599
	srli	a9, a4, 2
	slli	a10, a9, 2
	addi	a10, a10, -4
	srli	a10, a10, 2
	mov.n	a8, a2
	slli	a12, a9, 2
	addx4	a13, a9, a3
	addi.n	a10, a10, 1
	loop	a10, .L600_LEND
.L600:
	l32i	a11, a8, 0
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	xor	a9, a9, a11
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	.L600_LEND:
	add.n	a8, a2, a12
	sub	a10, a4, a12
	beq	a4, a12, .L598
	l8ui	a9, a8, 0
	l8ui	a11, a13, 0
	xor	a9, a9, a11
	s8i	a9, a8, 0
	beqi	a10, 1, .L598
	l8ui	a11, a8, 1
	l8ui	a9, a13, 1
	xor	a9, a9, a11
	s8i	a9, a8, 1
	beqi	a10, 2, .L598
	l8ui	a10, a8, 2
	l8ui	a9, a13, 2
	xor	a9, a9, a10
	s8i	a9, a8, 2
	j	.L598
.L599:
	mov.n	a8, a2
.L602:
	l8ui	a10, a8, 0
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L602
.L598:
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC98, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	l32r	a8, .LC98
	mov.n	a10, a2
	callx8	a8
	add.n	a10, a2, a10
	bnez.n	a4, .L618
	j	.L619
.L620:
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L618
	j	.L619
.L618:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a10, 0
	bnez.n	a8, .L620
	j	.L621
.L619:
	movi.n	a8, 0
	s8i	a8, a10, 0
.L621:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bnez.n	a3, .L628
	j	.L627
.L630:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L628
	j	.L627
.L628:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L630
.L627:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L637
	j	.L641
.L639:
	beq	a9, a10, .L638
.L640:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L639
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a10, .L641
.L637:
	mov.n	a8, a3
	j	.L640
.L641:
	mov.n	a2, a10
.L638:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L645:
	l8ui	a9, a8, 0
	sub	a10, a3, a9
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L645
	retw.n
	.size	strrchr, .-strrchr
	.literal_position
	.literal .LC99, strlen@PLT
	.literal .LC100, strncmp@PLT
	.literal .LC101, strchr@PLT
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 48
	l32r	a9, .LC99
	mov.n	a10, a3
	s32i	a2, sp, 0
	callx8	a9
	mov.n	a7, a10
	mov.n	a8, a2
	beqz.n	a10, .L647
	l8ui	a5, a3, 0
	l32r	a6, .LC101
	l32r	a4, .LC100
	j	.L649
.L650:
	callx8	a4
	beqz.n	a10, .L647
	addi.n	a8, a2, 1
.L649:
	mov.n	a11, a5
	mov.n	a10, a8
	callx8	a6
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a2, a10
	bnez.n	a10, .L650
.L647:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC103, __ltdf2@PLT
	.literal .LC104, __gtdf2@PLT
	.literal .LC105, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	l32r	a7, .LC103
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	movi.n	a12, 0
	movi.n	a13, 0
	bgez	a10, .L665
	l32r	a8, .LC104
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a8
	blti	a10, 1, .L660
	j	.L659
.L665:
	l32r	a8, .LC104
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L660
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L660
.L659:
	l32r	a10, .LC105
	xor	a2, a2, a10
.L660:
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC106, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 48
	mov.n	a7, a2
	mov.n	a8, a4
	beqz.n	a5, .L666
	bltu	a3, a5, .L672
	sub	a3, a3, a5
	add.n	a6, a2, a3
	bltu	a6, a2, .L672
	addi.n	a9, a5, -1
	l8ui	a3, a4, 0
	l32r	a4, .LC106
	s32i	a9, sp, 0
	addi.n	a5, a8, 1
.L669:
	l8ui	a8, a7, 0
	mov.n	a2, a7
	addi.n	a7, a7, 1
	bne	a8, a3, .L668
	l32i	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a7
	callx8	a4
	beqz.n	a10, .L666
.L668:
	bgeu	a6, a7, .L669
.L672:
	movi.n	a2, 0
.L666:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC107, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	l32r	a8, .LC107
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC109, __ltdf2@PLT
	.literal .LC110, -2147483648
	.literal .LC112, __ledf2@PLT
	.literal .LC114, __gtdf2@PLT
	.literal .LC116, __gedf2@PLT
	.literal .LC118, __nedf2@PLT
	.literal .LC119, __muldf3@PLT
	.literal .LC120, __adddf3@PLT
	.literal .LC121, 1071644672
	.literal .LC122, 1072693248
	.literal .LC123, -1075838976
	.literal .LC124, -1074790400
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	l32r	a5, .LC109
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	s32i	a4, sp, 8
	mov.n	a6, a2
	mov.n	a7, a3
	callx8	a5
	bgez	a10, .L701
	l32r	a10, .LC110
	l32r	a12, .LC124
	l32r	a14, .LC112
	xor	a2, a2, a10
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a14
	blti	a10, 1, .L691
	l32r	a12, .LC123
	l32r	a14, .LC114
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a14
	bgei	a10, 1, .L692
	movi.n	a8, 0
	s32i	a8, a4, 0
	mov.n	a2, a6
	j	.L679
.L701:
	l32r	a8, .LC122
	movi.n	a9, 0
	l32r	a4, .LC116
	s32i.n	a8, sp, 0
	mov.n	a12, a8
	s32i.n	a9, sp, 4
	mov.n	a13, a9
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a4
	movi.n	a8, 0
	s32i	a8, sp, 12
	bgez	a10, .L682
	l32r	a8, .LC121
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a5
	bgez	a10, .L685
	l32r	a8, .LC118
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bnez.n	a10, .L694
.L685:
	l32i	a9, sp, 8
	movi.n	a8, 0
	s32i	a8, a9, 0
	mov.n	a2, a6
	mov.n	a3, a7
	j	.L679
.L691:
	movi.n	a8, 1
	s32i	a8, sp, 12
	l32r	a8, .LC122
	movi.n	a9, 0
	l32r	a4, .LC116
	mov.n	a6, a2
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L682:
	l32r	a5, .LC119
	movi.n	a3, 0
	mov.n	a2, a4
.L688:
	l32r	a12, .LC121
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
	bgez	a10, .L688
	j	.L689
.L692:
	movi.n	a8, 1
	s32i	a8, sp, 12
	l32r	a8, .LC121
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	j	.L683
.L694:
.L683:
	l32r	a4, .LC120
	mov.n	a7, a3
	mov.n	a6, a2
	movi.n	a3, 0
.L690:
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
	bltz	a10, .L690
.L689:
	l32i	a8, sp, 8
	mov.n	a2, a6
	s32i	a3, a8, 0
	l32i	a8, sp, 12
	mov.n	a3, a7
	beqz.n	a8, .L679
	l32r	a8, .LC110
	xor	a2, a6, a8
.L679:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC125, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	or	a9, a3, a2
	mov.n	a8, a2
	mov.n	a6, a3
	beqz.n	a9, .L707
	l32r	a9, .LC125
	movi.n	a3, 0
	s32i	a9, sp, 4
	mov.n	a2, a3
.L706:
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
	bltu	a11, a3, .L705
	movi.n	a13, 0
.L705:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L706
	j	.L702
.L707:
	mov.n	a3, a9
	mov.n	a2, a9
.L702:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L710
	j	.L711
.L714:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L712
	beqz.n	a8, .L712
.L710:
	bgez	a3, .L714
	j	.L711
.L712:
	movi.n	a9, 0
	beqz.n	a8, .L715
.L711:
	movi.n	a9, 0
.L717:
	bltu	a2, a3, .L716
	sub	a2, a2, a3
	or	a9, a9, a8
.L716:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L717
.L715:
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
	bne	a2, a9, .L740
	beq	a3, a2, .L741
.L740:
	nsau	a2, a8
	addi	a2, a2, 32
	nsau	a8, a10
	movnez	a2, a8, a10
	addi.n	a2, a2, -1
	j	.L734
.L741:
	movi.n	a2, 0x3f
.L734:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L745
	movi.n	a2, 0
.L744:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L744
	j	.L742
.L745:
.L742:
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
	bgeu	a2, a3, .L748
.L751:
	bnez.n	a8, .L749
	j	.L775
.L748:
	add.n	a9, a3, a4
	bltu	a9, a2, .L751
	addi.n	a8, a4, -1
	bnez.n	a4, .L752
	j	.L747
.L749:
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	mov.n	a13, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L754_LEND
.L754:
	l32i	a10, a13, 0
	l32i	a11, a13, 4
	s32i	a10, a9, 0
	s32i	a11, a9, 4
	addi.n	a13, a13, 8
	addi.n	a9, a9, 8
	.L754_LEND:
	j	.L776
.L775:
	add.n	a10, a2, a12
	add.n	a8, a3, a12
	bnez.n	a4, .L756
	j	.L747
.L776:
	bgeu	a12, a4, .L747
	sub	a13, a4, a12
	addi.n	a8, a13, -1
	bgeui	a8, 7, .L777
	add.n	a10, a2, a12
	add.n	a8, a3, a12
	j	.L756
.L777:
	addi.n	a9, a12, 1
	add.n	a10, a2, a12
	add.n	a9, a3, a9
	sub	a9, a10, a9
	add.n	a8, a3, a12
	bltui	a9, 3, .L756
	or	a9, a8, a10
	extui	a9, a9, 0, 2
	bnez.n	a9, .L756
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	slli	a14, a14, 2
	addi.n	a9, a9, 1
	loop	a9, .L758_LEND
.L758:
	l32i	a11, a8, 0
	addi.n	a8, a8, 4
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	.L758_LEND:
	add.n	a12, a12, a14
	beq	a13, a14, .L747
	add.n	a8, a3, a12
	l8ui	a9, a8, 0
	add.n	a8, a2, a12
	s8i	a9, a8, 0
	addi.n	a8, a12, 1
	bgeu	a8, a4, .L747
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a12, a12, 2
	bgeu	a12, a4, .L747
	add.n	a3, a3, a12
	l8ui	a8, a3, 0
	add.n	a2, a2, a12
	s8i	a8, a2, 0
	j	.L747
.L756:
	add.n	a3, a3, a4
	sub	a3, a3, a8
.L760:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L760
	j	.L747
.L752:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L752
.L747:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a12, a4, 1
	bgeu	a2, a3, .L783
.L786:
	bnez.n	a12, .L784
	j	.L785
.L783:
	add.n	a8, a3, a4
	bltu	a8, a2, .L786
	addi.n	a8, a4, -1
	bnez.n	a4, .L787
	j	.L782
.L784:
	addi.n	a8, a12, -1
	movi.n	a9, 8
	bgeu	a9, a8, .L789
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L789
	addi.n	a8, a3, 2
	beq	a2, a8, .L789
	srli	a13, a4, 2
	slli	a8, a13, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a14, a13, 2
	addi.n	a8, a8, 1
	loop	a8, .L790_LEND
.L790:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	.L790_LEND:
	add.n	a13, a13, a13
	beq	a12, a13, .L785
	add.n	a8, a3, a14
	l16ui	a8, a8, 0
	add.n	a14, a2, a14
	s16i	a8, a14, 0
	j	.L785
.L789:
	add.n	a8, a12, a12
	addi	a8, a8, -2
	srli	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L792_LEND
.L792:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	.L792_LEND:
.L785:
	bbci	a4, 31, .L782
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L782
.L787:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L787
.L782:
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
	bgeu	a2, a3, .L812
.L815:
	bnez.n	a8, .L813
	j	.L839
.L812:
	add.n	a9, a3, a4
	bltu	a9, a2, .L815
	addi.n	a8, a4, -1
	bnez.n	a4, .L816
	j	.L811
.L813:
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L818_LEND
.L818:
	l32i	a12, a10, 0
	addi.n	a10, a10, 4
	s32i	a12, a9, 0
	addi.n	a9, a9, 4
	.L818_LEND:
	j	.L840
.L839:
	add.n	a10, a2, a11
	add.n	a8, a3, a11
	bnez.n	a4, .L820
	j	.L811
.L840:
	bgeu	a11, a4, .L811
	sub	a13, a4, a11
	addi.n	a8, a13, -1
	bgeui	a8, 7, .L841
	add.n	a10, a2, a11
	add.n	a8, a3, a11
	j	.L820
.L841:
	addi.n	a9, a11, 1
	add.n	a10, a2, a11
	add.n	a9, a3, a9
	sub	a9, a10, a9
	add.n	a8, a3, a11
	bltui	a9, 3, .L820
	or	a9, a8, a10
	extui	a9, a9, 0, 2
	bnez.n	a9, .L820
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	slli	a14, a14, 2
	addi.n	a9, a9, 1
	loop	a9, .L822_LEND
.L822:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a10, 0
	addi.n	a10, a10, 4
	.L822_LEND:
	add.n	a11, a11, a14
	beq	a13, a14, .L811
	add.n	a8, a3, a11
	l8ui	a9, a8, 0
	add.n	a8, a2, a11
	s8i	a9, a8, 0
	addi.n	a8, a11, 1
	bgeu	a8, a4, .L811
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a11, a11, 2
	bgeu	a11, a4, .L811
	add.n	a3, a3, a11
	l8ui	a8, a3, 0
	add.n	a2, a2, a11
	s8i	a8, a2, 0
	j	.L811
.L820:
	add.n	a3, a3, a4
	sub	a3, a3, a8
.L824:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L824
	j	.L811
.L816:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L816
.L811:
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
	.literal .LC126, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	l32r	a8, .LC126
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC127, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	l32r	a8, .LC127
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC128, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	l32r	a8, .LC128
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC129, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	l32r	a8, .LC129
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
	bbsi	a2, 16, .L855
	srai	a2, a8, 14
	bnez.n	a2, .L852
	srai	a9, a8, 13
	bnez.n	a9, .L856
	srai	a9, a8, 12
	bnez.n	a9, .L857
	srai	a9, a8, 11
	bnez.n	a9, .L858
	srai	a9, a8, 10
	bnez.n	a9, .L859
	srai	a9, a8, 9
	bnez.n	a9, .L860
	srai	a9, a8, 8
	bnez.n	a9, .L861
	srai	a9, a8, 7
	bnez.n	a9, .L862
	srai	a9, a8, 6
	bnez.n	a9, .L863
	srai	a9, a8, 5
	bnez.n	a9, .L864
	srai	a9, a8, 4
	bnez.n	a9, .L865
	srai	a9, a8, 3
	bnez.n	a9, .L866
	srai	a9, a8, 2
	bnez.n	a9, .L867
	srai	a9, a8, 1
	bnez.n	a9, .L868
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L852
.L855:
	movi.n	a2, 0
	j	.L852
.L856:
	movi.n	a2, 2
	j	.L852
.L857:
	movi.n	a2, 3
	j	.L852
.L858:
	movi.n	a2, 4
	j	.L852
.L859:
	movi.n	a2, 5
	j	.L852
.L860:
	movi.n	a2, 6
	j	.L852
.L861:
	movi.n	a2, 7
	j	.L852
.L862:
	movi.n	a2, 8
	j	.L852
.L863:
	movi.n	a2, 9
	j	.L852
.L864:
	movi.n	a2, 0xa
	j	.L852
.L865:
	movi.n	a2, 0xb
	j	.L852
.L866:
	movi.n	a2, 0xc
	j	.L852
.L867:
	movi.n	a2, 0xd
	j	.L852
.L868:
	movi.n	a2, 0xe
.L852:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	bbsi	a2, 31, .L873
	bbsi	a8, 30, .L874
	bbsi	a8, 29, .L875
	bbsi	a8, 28, .L876
	bbsi	a8, 27, .L877
	bbsi	a8, 26, .L878
	bbsi	a8, 25, .L879
	bbsi	a8, 24, .L880
	bbsi	a8, 23, .L881
	bbsi	a8, 22, .L882
	bbsi	a8, 21, .L883
	bbsi	a8, 20, .L884
	bbsi	a8, 19, .L885
	bbsi	a8, 18, .L886
	bbsi	a8, 17, .L887
	srai	a8, a8, 15
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L870
.L873:
	movi.n	a2, 0
	j	.L870
.L874:
	movi.n	a2, 1
	j	.L870
.L875:
	movi.n	a2, 2
	j	.L870
.L876:
	movi.n	a2, 3
	j	.L870
.L877:
	movi.n	a2, 4
	j	.L870
.L878:
	movi.n	a2, 5
	j	.L870
.L879:
	movi.n	a2, 6
	j	.L870
.L880:
	movi.n	a2, 7
	j	.L870
.L881:
	movi.n	a2, 8
	j	.L870
.L882:
	movi.n	a2, 9
	j	.L870
.L883:
	movi.n	a2, 0xa
	j	.L870
.L884:
	movi.n	a2, 0xb
	j	.L870
.L885:
	movi.n	a2, 0xc
	j	.L870
.L886:
	movi.n	a2, 0xd
	j	.L870
.L887:
	movi.n	a2, 0xe
.L870:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC134, 0x47000000
	.literal .LC135, __gesf2@PLT
	.literal .LC136, __subsf3@PLT
	.literal .LC137, __fixsfsi@PLT
	.literal .LC138, 32768
	.literal .LC139, .LC134
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC139
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC135
	callx8	a8
	bltz	a10, .L894
	l32r	a8, .LC139
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC136
	callx8	a8
	l32r	a8, .LC137
	callx8	a8
	l32r	a8, .LC138
	add.n	a2, a10, a8
	j	.L889
.L894:
	l32r	a8, .LC137
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
.L889:
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
	beqz.n	a2, .L900
	movi.n	a2, 0
.L899:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L899
	j	.L897
.L900:
.L897:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L902
	j	.L909
.L904:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srli	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
.L909:
	bnez.n	a3, .L904
.L902:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L911
	j	.L912
.L915:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L913
	beqz.n	a8, .L913
.L911:
	bgez	a3, .L915
	j	.L912
.L913:
	movi.n	a9, 0
	beqz.n	a8, .L916
.L912:
	movi.n	a9, 0
.L918:
	bltu	a2, a3, .L917
	sub	a2, a2, a3
	or	a9, a9, a8
.L917:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L918
.L916:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC140, __ltsf2@PLT
	.literal .LC141, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	l32r	a8, .LC140
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, -1
	bltz	a10, .L932
	l32r	a8, .LC141
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L932
	movi.n	a2, 0
.L932:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC142, __ltdf2@PLT
	.literal .LC143, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 32
	l32r	a8, .LC142
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, -1
	bltz	a10, .L936
	l32r	a8, .LC143
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L936
	movi.n	a2, 0
.L936:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC144, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	l32r	a8, .LC144
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
	.literal .LC145, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	l32r	a8, .LC145
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
	bgez	a3, .L943
	neg	a3, a3
	movi.n	a11, 1
	j	.L944
.L943:
	beqz.n	a3, .L948
	movi.n	a11, 0
.L944:
	movi.n	a2, 0
	mov.n	a9, a2
.L946:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	addi.n	a9, a9, 1
	srai	a3, a3, 1
	extui	a9, a9, 0, 8
	add.n	a2, a2, a8
	add.n	a10, a10, a10
	beqz.n	a3, .L949
	bnei	a9, 32, .L946
.L949:
	neg	a8, a2
	movnez	a2, a8, a11
	j	.L942
.L948:
	mov.n	a2, a3
.L942:
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC146, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	bltz	a2, .L957
	movi.n	a12, 0
	bltz	a3, .L958
	j	.L963
.L957:
	neg	a10, a2
	movi.n	a12, 0
	bltz	a3, .L960
	j	.L962
.L960:
	neg	a11, a3
.L963:
	l32r	a8, .LC146
	callx8	a8
	mov.n	a2, a10
	j	.L956
.L958:
	neg	a11, a3
.L962:
	l32r	a8, .LC146
	callx8	a8
	neg	a2, a10
.L956:
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC147, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a10, a2
	abs	a11, a3
	movi.n	a12, 1
	bltz	a2, .L965
	l32r	a8, .LC147
	callx8	a8
	mov.n	a2, a10
	j	.L964
.L965:
	l32r	a8, .LC147
	neg	a10, a2
	callx8	a8
	neg	a2, a10
.L964:
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
	bltu	a11, a13, .L968
	bne	a11, a13, .L997
	mov.n	a9, a12
	movi.n	a2, 0
	j	.L974
.L972:
	extui	a9, a9, 0, 16
	bgeu	a8, a13, .L970
	beqz.n	a9, .L970
	mov.n	a12, a9
	mov.n	a11, a8
.L968:
	add.n	a8, a11, a11
	sext	a10, a11, 15
	add.n	a9, a12, a12
	extui	a8, a8, 0, 16
	bgez	a10, .L972
	j	.L1023
.L970:
	mov.n	a2, a13
	beqz.n	a9, .L974
	bltu	a13, a8, .L975
	sub	a13, a13, a8
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	extui	a13, a13, 0, 16
	mov.n	a11, a8
	mov.n	a12, a9
	j	.L976
.L975:
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	mov.n	a12, a9
	mov.n	a11, a8
	movi.n	a9, 0
	j	.L976
.L994:
	sub	a13, a13, a11
	extui	a13, a13, 0, 16
	mov.n	a9, a12
.L995:
	extui	a14, a12, 1, 16
	srli	a10, a11, 1
	beqz.n	a14, .L1012
.L976:
	bltu	a13, a10, .L977
	sub	a10, a13, a10
	or	a14, a9, a14
	extui	a13, a10, 0, 16
	extui	a9, a14, 0, 16
.L977:
	extui	a8, a12, 2, 16
	srli	a10, a11, 2
	beqz.n	a8, .L1012
	bltu	a13, a10, .L978
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L978:
	extui	a8, a12, 3, 16
	srli	a10, a11, 3
	beqz.n	a8, .L1012
	bltu	a13, a10, .L979
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L979:
	extui	a8, a12, 4, 16
	srli	a10, a11, 4
	beqz.n	a8, .L1012
	bltu	a13, a10, .L980
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L980:
	extui	a8, a12, 5, 16
	srli	a10, a11, 5
	beqz.n	a8, .L1012
	bltu	a13, a10, .L981
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L981:
	extui	a8, a12, 6, 16
	srli	a10, a11, 6
	beqz.n	a8, .L1012
	bltu	a13, a10, .L982
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L982:
	extui	a8, a12, 7, 16
	srli	a10, a11, 7
	beqz.n	a8, .L1012
	bltu	a13, a10, .L983
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L983:
	extui	a8, a12, 8, 16
	srli	a10, a11, 8
	beqz.n	a8, .L1012
	bltu	a13, a10, .L984
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L984:
	extui	a8, a12, 9, 16
	srli	a10, a11, 9
	beqz.n	a8, .L1012
	bltu	a13, a10, .L985
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L985:
	extui	a8, a12, 10, 16
	srli	a10, a11, 10
	beqz.n	a8, .L1012
	bltu	a13, a10, .L986
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L986:
	extui	a8, a12, 11, 16
	srli	a10, a11, 11
	beqz.n	a8, .L1012
	bltu	a13, a10, .L987
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L987:
	extui	a8, a12, 12, 16
	srli	a10, a11, 12
	beqz.n	a8, .L1012
	bltu	a13, a10, .L988
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L988:
	extui	a8, a12, 13, 16
	srli	a10, a11, 13
	beqz.n	a8, .L1012
	bltu	a13, a10, .L989
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L989:
	extui	a8, a12, 14, 16
	srli	a10, a11, 14
	beqz.n	a8, .L1012
	bltu	a13, a10, .L990
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L990:
	extui	a12, a12, 15, 16
	srli	a11, a11, 15
	bnez.n	a12, .L991
	j	.L1012
.L997:
	mov.n	a2, a13
	movi.n	a9, 0
	j	.L974
.L1012:
	mov.n	a2, a13
	j	.L974
.L991:
	movi.n	a2, 0
	bltu	a13, a11, .L974
	movi.n	a8, 1
	sub	a11, a13, a11
	or	a8, a9, a8
	extui	a2, a11, 0, 16
	extui	a9, a8, 0, 16
	j	.L974
.L1023:
	movi.n	a9, 0
	bltu	a13, a11, .L995
	j	.L994
.L974:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L1026
	j	.L1027
.L1030:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1028
	beqz.n	a8, .L1028
.L1026:
	bgez	a3, .L1030
	j	.L1027
.L1028:
	movi.n	a9, 0
	beqz.n	a8, .L1031
.L1027:
	movi.n	a9, 0
.L1033:
	bltu	a2, a3, .L1032
	sub	a2, a2, a3
	or	a9, a9, a8
.L1032:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1033
.L1031:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L1048
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L1049
.L1048:
	beqz.n	a4, .L1050
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L1049:
	mov.n	a3, a8
.L1050:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1053
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L1054
.L1053:
	beqz.n	a4, .L1055
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1054:
	mov.n	a2, a8
.L1055:
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
	.literal .LC148, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	l32r	a8, .LC148
	movi.n	a12, 1
	bgeu	a8, a2, .L1060
	movi.n	a12, 0
.L1060:
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
	blt	a8, a4, .L1061
	movi.n	a2, 2
	blt	a4, a8, .L1061
	movi.n	a2, 0
	bltu	a3, a5, .L1061
	movi.n	a2, 2
	bltu	a5, a3, .L1061
	movi.n	a2, 1
.L1061:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC150, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	l32r	a8, .LC150
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
	bbci	a4, 26, .L1070
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L1071
.L1070:
	beqz.n	a4, .L1072
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1071:
	mov.n	a2, a8
.L1072:
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
	.literal .LC151, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mull	a7, a3, a4
	l32r	a8, .LC151
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
	.literal .LC152, 27030
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
	l32r	a2, .LC152
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC153, 27030
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
	l32r	a2, .LC153
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC154, 1431655765
	.literal .LC155, 858993459
	.literal .LC156, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	l32r	a10, .LC154
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L1083
	addi.n	a2, a2, -1
.L1083:
	l32r	a9, .LC155
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
	bgeu	a8, a3, .L1084
	addi.n	a10, a10, 1
.L1084:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a8, a11, .L1085
	addi.n	a9, a9, 1
.L1085:
	l32r	a10, .LC156
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
	.literal .LC157, 1431655765
	.literal .LC158, 858993459
	.literal .LC159, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	l32r	a9, .LC157
	srli	a8, a2, 1
	and	a8, a8, a9
	l32r	a10, .LC158
	sub	a2, a2, a8
	srli	a9, a2, 2
	and	a9, a9, a10
	and	a2, a2, a10
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC159
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC161, __muldf3@PLT
	.literal .LC162, __divdf3@PLT
	.literal .LC163, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a7, a4
	s32i	a4, sp, 0
	mov.n	a5, a3
	mov.n	a4, a2
	bbci	a7, 31, .L1093
	l32r	a6, .LC161
	l32r	a2, .LC163
	movi.n	a3, 0
.L1090:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L1088
.L1093:
	l32r	a2, .LC163
	movi.n	a3, 0
.L1088:
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	srai	a7, a8, 1
	beqz.n	a7, .L1089
	l32r	a6, .LC161
.L1091:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a4, a10
	mov.n	a5, a11
	bbsi	a7, 31, .L1090
	srai	a7, a8, 1
	j	.L1091
.L1089:
	l32i	a8, sp, 0
	bgez	a8, .L1087
	l32r	a10, .LC163
	l32r	a8, .LC162
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L1087:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC165, __mulsf3@PLT
	.literal .LC166, __divsf3@PLT
	.literal .LC167, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a2, .LC167
	bbci	a3, 31, .L1095
	l32r	a5, .LC165
.L1097:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
	j	.L1095
.L1095:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1096
	l32r	a5, .LC165
.L1098:
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1097
	srai	a7, a8, 1
	j	.L1098
.L1096:
	bgez	a3, .L1094
	l32r	a10, .LC167
	l32r	a8, .LC166
	mov.n	a11, a2
	callx8	a8
	mov.n	a2, a10
.L1094:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L1101
	movi.n	a2, 2
	bltu	a4, a8, .L1101
	movi.n	a2, 0
	bltu	a3, a5, .L1101
	movi.n	a2, 2
	bltu	a5, a3, .L1101
	movi.n	a2, 1
.L1101:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC168, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	l32r	a8, .LC168
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
