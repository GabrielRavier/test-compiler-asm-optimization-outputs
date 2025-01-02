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
	.literal .LC13, __gtdf2@PLT
	.literal .LC14, __subdf3@PLT
	.align	4
	.global	fdim
	.type	fdim, @function
fdim:
	entry	sp, 32
	l32r	a8, .LC13
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L181
	l32r	a8, .LC14
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L176
.L181:
	movi.n	a2, 0
	movi.n	a3, 0
.L176:
	retw.n
	.size	fdim, .-fdim
	.literal_position
	.literal .LC16, __gtsf2@PLT
	.literal .LC17, __subsf3@PLT
	.align	4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	entry	sp, 32
	l32r	a8, .LC16
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	blti	a10, 1, .L187
	l32r	a8, .LC17
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	j	.L182
.L187:
	movi.n	a2, 0
.L182:
	retw.n
	.size	fdimf, .-fdimf
	.literal_position
	.literal .LC19, __ltdf2@PLT
	.literal .LC20, __gedf2@PLT
	.align	4
	.global	fmax
	.type	fmax, @function
fmax:
	entry	sp, 32
	l32r	a7, .LC19
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a7
	mov.n	a6, a10
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	extui	a6, a6, 31, 1
	extui	a8, a6, 0, 8
	extui	a10, a10, 31, 1
	beq	a8, a10, .L189
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	mov.n	a6, a4
	mov.n	a7, a5
	bgez	a10, .L197
	j	.L188
.L189:
	l32r	a8, .LC20
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a6, a2
	mov.n	a7, a3
	callx8	a8
	bgez	a10, .L188
	mov.n	a6, a4
	mov.n	a7, a5
	j	.L188
.L197:
	mov.n	a6, a2
	mov.n	a7, a3
.L188:
	mov.n	a2, a6
	mov.n	a3, a7
	retw.n
	.size	fmax, .-fmax
	.literal_position
	.literal .LC22, __ltsf2@PLT
	.literal .LC23, __gesf2@PLT
	.align	4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	entry	sp, 32
	l32r	a5, .LC22
	movi.n	a6, 0
	mov.n	a11, a6
	mov.n	a10, a2
	callx8	a5
	mov.n	a7, a10
	mov.n	a11, a6
	mov.n	a10, a3
	extui	a7, a7, 31, 1
	callx8	a5
	extui	a7, a7, 0, 8
	extui	a10, a10, 31, 1
	beq	a7, a10, .L199
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	movltz	a2, a3, a10
	j	.L198
.L199:
	l32r	a8, .LC23
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movltz	a2, a3, a10
.L198:
	retw.n
	.size	fmaxf, .-fmaxf
	.literal_position
	.literal .LC25, __ltdf2@PLT
	.literal .LC26, __gedf2@PLT
	.align	4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	entry	sp, 32
	l32r	a7, .LC25
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a7
	mov.n	a6, a10
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	extui	a6, a6, 31, 1
	extui	a8, a6, 0, 8
	extui	a10, a10, 31, 1
	beq	a8, a10, .L208
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	mov.n	a6, a4
	mov.n	a7, a5
	bgez	a10, .L216
	j	.L207
.L208:
	l32r	a8, .LC26
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a6, a2
	mov.n	a7, a3
	callx8	a8
	bgez	a10, .L207
	mov.n	a6, a4
	mov.n	a7, a5
	j	.L207
.L216:
	mov.n	a6, a2
	mov.n	a7, a3
.L207:
	mov.n	a2, a6
	mov.n	a3, a7
	retw.n
	.size	fmaxl, .-fmaxl
	.literal_position
	.literal .LC28, __ltdf2@PLT
	.literal .LC29, __ledf2@PLT
	.align	4
	.global	fmin
	.type	fmin, @function
fmin:
	entry	sp, 32
	l32r	a7, .LC28
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a7
	mov.n	a6, a10
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	extui	a6, a6, 31, 1
	extui	a8, a6, 0, 8
	extui	a10, a10, 31, 1
	beq	a8, a10, .L218
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bgez	a10, .L226
	j	.L217
.L218:
	l32r	a8, .LC29
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L217
.L226:
	mov.n	a2, a4
	mov.n	a3, a5
.L217:
	retw.n
	.size	fmin, .-fmin
	.literal_position
	.literal .LC31, __ltsf2@PLT
	.literal .LC32, __lesf2@PLT
	.align	4
	.global	fminf
	.type	fminf, @function
fminf:
	entry	sp, 32
	l32r	a5, .LC31
	movi.n	a6, 0
	mov.n	a11, a6
	mov.n	a10, a2
	callx8	a5
	mov.n	a7, a10
	mov.n	a11, a6
	mov.n	a10, a3
	extui	a7, a7, 31, 1
	callx8	a5
	extui	a7, a7, 0, 8
	extui	a10, a10, 31, 1
	beq	a7, a10, .L228
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	movgez	a2, a3, a10
	j	.L227
.L228:
	l32r	a8, .LC32
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	blti	a10, 1, .L227
	mov.n	a2, a3
.L227:
	retw.n
	.size	fminf, .-fminf
	.literal_position
	.literal .LC34, __ltdf2@PLT
	.literal .LC35, __ledf2@PLT
	.align	4
	.global	fminl
	.type	fminl, @function
fminl:
	entry	sp, 32
	l32r	a7, .LC34
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a7
	mov.n	a6, a10
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	extui	a6, a6, 31, 1
	extui	a8, a6, 0, 8
	extui	a10, a10, 31, 1
	beq	a8, a10, .L237
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bgez	a10, .L245
	j	.L236
.L237:
	l32r	a8, .LC35
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L236
.L245:
	mov.n	a2, a4
	mov.n	a3, a5
.L236:
	retw.n
	.size	fminl, .-fminl
	.literal_position
	.literal .LC36, s.0
	.literal .LC37, digits
	.align	4
	.global	l64a
	.type	l64a, @function
l64a:
	entry	sp, 32
	mov.n	a8, a2
	l32r	a2, .LC36
	beqz.n	a8, .L249
	l32r	a11, .LC37
	mov.n	a10, a2
.L248:
	extui	a9, a8, 0, 6
	add.n	a9, a11, a9
	l8ui	a9, a9, 0
	srli	a8, a8, 6
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	bnez.n	a8, .L248
	j	.L247
.L249:
	mov.n	a10, a2
.L247:
	movi.n	a8, 0
	s8i	a8, a10, 0
	retw.n
	.size	l64a, .-l64a
	.literal_position
	.literal .LC38, seed
	.align	4
	.global	srand
	.type	srand, @function
srand:
	entry	sp, 32
	l32r	a8, .LC38
	addi.n	a2, a2, -1
	movi.n	a9, 0
	s32i	a2, a8, 4
	s32i	a9, a8, 0
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
	l32r	a7, .LC39
	l32r	a11, .LC40
	l32i	a10, a7, 4
	l32i	a2, a7, 0
	l32r	a8, .LC41
	mull	a2, a2, a11
	mull	a8, a10, a8
	add.n	a2, a2, a8
	l32r	a8, .LC42
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
	bnez.n	a3, .L255
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L254
.L255:
	l32i	a8, a3, 0
	s32i	a3, a2, 4
	s32i	a8, a2, 0
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L254
	s32i	a2, a8, 4
.L254:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L261
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L261:
	l32i	a9, a2, 4
	beqz.n	a9, .L260
	s32i	a8, a9, 0
.L260:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC43, memmove@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	l32i	a7, a4, 0
	s32i	a4, sp, 8
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	beqz.n	a7, .L270
	mov.n	a2, a3
	movi.n	a4, 0
.L272:
	l32i	a10, sp, 0
	mov.n	a11, a2
	callx8	a6
	mov.n	a3, a2
	addi.n	a4, a4, 1
	beqz.n	a10, .L269
	add.n	a2, a2, a5
	bne	a7, a4, .L272
.L270:
	l32i	a8, sp, 8
	mull	a3, a5, a7
	addi.n	a7, a7, 1
	s32i	a7, a8, 0
	l32i	a8, sp, 4
	add.n	a3, a8, a3
	beqz.n	a5, .L269
	l32i	a11, sp, 0
	l32r	a8, .LC43
	mov.n	a12, a5
	mov.n	a10, a3
	callx8	a8
.L269:
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
	beqz.n	a7, .L285
	movi.n	a4, 0
.L287:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	beqz.n	a10, .L284
	add.n	a3, a3, a5
	bne	a7, a4, .L287
.L285:
	movi.n	a2, 0
.L284:
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
	bltui	a8, 5, .L318
.L322:
	bnei	a9, 32, .L297
.L318:
	l8ui	a9, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a9, -9
	bltui	a8, 5, .L318
	j	.L322
.L297:
	movi.n	a8, 0x2b
	beq	a9, a8, .L302
	movi.n	a8, 0x2d
	beq	a9, a8, .L303
	j	.L320
.L302:
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	movi.n	a14, 0
	bgeu	a10, a11, .L305
	j	.L311
.L303:
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	bltu	a10, a11, .L311
	movi.n	a14, 1
.L305:
	movi.n	a2, 0
	movi.n	a13, 9
.L308:
	l8ui	a9, a8, 1
	addx4	a10, a2, a2
	subx2	a2, a10, a11
	mov.n	a12, a11
	addi	a11, a9, -48
	addi.n	a8, a8, 1
	add.n	a10, a10, a10
	bgeu	a13, a11, .L308
	j	.L321
.L320:
	addi	a11, a9, -48
	movi.n	a9, 9
	mov.n	a8, a2
	movi.n	a14, 0
	bgeu	a9, a11, .L305
	j	.L311
.L321:
	sub	a12, a12, a10
	moveqz	a2, a12, a14
	j	.L296
.L311:
	movi.n	a2, 0
.L296:
	retw.n
	.size	atoi, .-atoi
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l8ui	a9, a2, 0
	addi	a8, a9, -9
	bltui	a8, 5, .L344
.L347:
	bnei	a9, 32, .L324
.L344:
	l8ui	a9, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a9, -9
	bltui	a8, 5, .L344
	j	.L347
.L324:
	movi.n	a8, 0x2b
	beq	a9, a8, .L329
	movi.n	a8, 0x2d
	bne	a9, a8, .L330
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	movi.n	a14, 1
	bgeu	a10, a11, .L331
	j	.L337
.L329:
	l8ui	a9, a2, 1
	movi.n	a10, 9
	addi	a11, a9, -48
	addi.n	a8, a2, 1
	bltu	a10, a11, .L337
	movi.n	a14, 0
.L331:
	movi.n	a2, 0
	movi.n	a13, 9
.L334:
	l8ui	a9, a8, 1
	addx4	a10, a2, a2
	subx2	a2, a10, a11
	mov.n	a12, a11
	addi	a11, a9, -48
	addi.n	a8, a8, 1
	add.n	a10, a10, a10
	bgeu	a13, a11, .L334
	j	.L346
.L330:
	addi	a11, a9, -48
	movi.n	a9, 9
	mov.n	a8, a2
	movi.n	a14, 0
	bgeu	a9, a11, .L331
	j	.L337
.L346:
	sub	a12, a12, a10
	moveqz	a2, a12, a14
	j	.L323
.L337:
	movi.n	a2, 0
.L323:
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC44, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 48
	l8ui	a7, a2, 0
	addi	a8, a7, -9
	bltui	a8, 5, .L372
.L376:
	bnei	a7, 32, .L349
.L372:
	l8ui	a7, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a7, -9
	bltui	a8, 5, .L372
	j	.L376
.L349:
	movi.n	a8, 0x2b
	beq	a7, a8, .L354
	movi.n	a8, 0x2d
	beq	a7, a8, .L355
	j	.L374
.L354:
	l8ui	a7, a2, 1
	movi.n	a9, 0
	movi.n	a8, 9
	addi	a7, a7, -48
	s32i	a9, sp, 0
	addi.n	a3, a2, 1
	mov.n	a11, a9
	mov.n	a2, a9
	bltu	a8, a7, .L348
	j	.L357
.L355:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bltu	a8, a7, .L365
	movi.n	a8, 1
	s32i	a8, sp, 0
.L357:
	movi.n	a11, 0
	l32r	a4, .LC44
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L361:
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
	bgeu	a8, a7, .L360
	addi.n	a2, a2, -1
.L360:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L361
	j	.L375
.L374:
	movi.n	a9, 0
	addi	a7, a7, -48
	movi.n	a8, 9
	s32i	a9, sp, 0
	mov.n	a3, a2
	bgeu	a8, a7, .L357
	j	.L365
.L375:
	l32i	a9, sp, 0
	bnez.n	a9, .L348
	sub	a2, a12, a10
	bgeu	a13, a8, .L363
	addi.n	a2, a2, -1
.L363:
	sub	a11, a13, a8
	j	.L348
.L365:
	movi.n	a11, 0
	mov.n	a2, a11
.L348:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L390:
	beqz.n	a4, .L378
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L382
	beqz.n	a10, .L377
	add.n	a3, a2, a5
	sub	a4, a4, a7
	j	.L390
.L382:
	mov.n	a4, a7
	j	.L390
.L378:
	movi.n	a2, 0
.L377:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	bnez.n	a4, .L392
.L396:
	movi.n	a2, 0
	j	.L391
.L392:
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	addi.n	a4, a4, -1
	callx8	a6
	srai	a4, a4, 1
	beqz.n	a10, .L391
	blti	a10, 1, .L394
	add.n	a3, a2, a5
	bnez.n	a4, .L392
	j	.L396
.L394:
	beqz.n	a7, .L396
	mov.n	a4, a7
	j	.L392
.L391:
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
	bgeu	a3, a8, .L407
	addi.n	a2, a2, -1
.L407:
	sub	a3, a3, a8
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC45, __divdi3@PLT
	.literal .LC46, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 48
	l32r	a8, .LC45
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC46
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
	bgeu	a3, a8, .L413
	addi.n	a2, a2, -1
.L413:
	sub	a3, a3, a8
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC47, __divdi3@PLT
	.literal .LC48, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
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
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 32
	l32i	a8, a2, 0
	bnez.n	a8, .L416
	j	.L419
.L418:
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	beqz.n	a8, .L419
.L416:
	bne	a3, a8, .L418
	j	.L415
.L419:
	mov.n	a2, a8
.L415:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	beq	a8, a9, .L422
	j	.L423
.L424:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L423
.L422:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnez.n	a8, .L424
.L423:
	movi.n	a2, -1
	blt	a8, a9, .L421
	movi.n	a2, 1
	blt	a9, a8, .L421
	movi.n	a2, 0
.L421:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L430:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L430
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L435
	mov.n	a8, a2
.L434:
	l32i	a9, a8, 4
	addi.n	a8, a8, 4
	bnez.n	a9, .L434
	sub	a8, a8, a2
	srai	a2, a8, 2
	j	.L432
.L435:
	mov.n	a2, a8
.L432:
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	bnez.n	a4, .L438
	j	.L451
.L440:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L438
	j	.L451
.L438:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a10, a8, .L442
	bnez.n	a8, .L440
	j	.L442
.L444:
	movi.n	a2, 1
	blt	a8, a9, .L437
.L451:
	movi.n	a2, 0
	j	.L437
.L442:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L444
	movi.n	a2, -1
.L437:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L454
	j	.L460
.L456:
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L454
	j	.L460
.L454:
	l32i	a9, a2, 0
	bne	a9, a3, .L456
	j	.L453
.L460:
	movi.n	a2, 0
.L453:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L463
	j	.L472
.L465:
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L463
	j	.L472
.L463:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	beq	a10, a9, .L465
	j	.L473
.L468:
	movi.n	a2, 1
	blt	a9, a10, .L462
.L472:
	movi.n	a2, 0
	j	.L462
.L473:
	bge	a10, a9, .L468
	movi.n	a2, -1
.L462:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.literal_position
	.literal .LC49, memcpy@PLT
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L476
	l32r	a8, .LC49
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L476:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L487
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a10, a2
	addi.n	a9, a4, -1
	bltu	a12, a11, .L482
	bnez.n	a4, .L483
	j	.L487
.L482:
	beqz.n	a4, .L487
	slli	a10, a9, 2
	srli	a10, a10, 2
	addx4	a8, a9, a3
	addi.n	a10, a10, 1
	addx4	a9, a9, a2
	loop	a10, .L485_LEND
.L485:
	l32i	a11, a8, 0
	addi	a9, a9, -4
	s32i	a11, a9, 4
	addi	a8, a8, -4
	.L485_LEND:
	j	.L487
.L483:
	l32i	a9, a8, 0
	addi.n	a8, a8, 4
	s32i	a9, a10, 0
	addi.n	a10, a10, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L483
.L487:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L496
	mov.n	a8, a2
.L497:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L497
.L496:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	bgeu	a2, a3, .L504
	add.n	a8, a2, a4
	add.n	a3, a3, a4
	beqz.n	a4, .L503
	sub	a2, a8, a2
.L506:
	addi.n	a8, a8, -1
	l8ui	a9, a8, 0
	addi.n	a3, a3, -1
	s8i	a9, a3, 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L506
	j	.L503
.L504:
	beq	a2, a3, .L503
	beqz.n	a4, .L503
	addi.n	a8, a4, -1
	bltui	a8, 7, .L512
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L512
	addi.n	a8, a2, 1
	sub	a8, a3, a8
	bltui	a8, 3, .L512
	srli	a10, a4, 2
	slli	a8, a10, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a9, a3
	slli	a12, a10, 2
	addx4	a11, a10, a2
	addi.n	a8, a8, 1
	loop	a8, .L509_LEND
.L509:
	l32i	a10, a2, 0
	addi.n	a2, a2, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	.L509_LEND:
	add.n	a3, a3, a12
	sub	a8, a4, a12
	beq	a4, a12, .L503
	l8ui	a9, a11, 0
	s8i	a9, a3, 0
	beqi	a8, 1, .L503
	l8ui	a9, a11, 1
	s8i	a9, a3, 1
	beqi	a8, 2, .L503
	l8ui	a8, a11, 2
	s8i	a8, a3, 2
	j	.L503
.L512:
	l8ui	a8, a2, 0
	addi.n	a2, a2, 1
	s8i	a8, a3, 0
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L512
.L503:
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
	loop	a10, .L554_LEND
.L554:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L552
	mov.n	a2, a8
	j	.L551
.L552:
	nop.n
	.L554_LEND:
	mov.n	a2, a11
.L551:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L557
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L557
	movi.n	a2, 1
.L559:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L559
.L557:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	movi.n	a2, 0
	retw.n
	.size	gl_isinff, .-gl_isinff
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	movi.n	a2, 0
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	movi.n	a2, 0
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC50, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	l32r	a8, .LC50
	mov.n	a10, a3
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC53, __addsf3@PLT
	.literal .LC54, __nesf2@PLT
	.literal .LC55, __mulsf3@PLT
	.literal .LC56, 1056964608
	.literal .LC57, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	l32r	a8, .LC53
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC54
	mov.n	a11, a2
	callx8	a8
	beqz.n	a10, .L569
	l32r	a7, .LC56
	l32r	a8, .LC57
	movgez	a7, a8, a3
	bbci	a3, 31, .L572
	l32r	a6, .LC55
.L573:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L572:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L569
	l32r	a6, .LC55
.L574:
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L573
	srai	a3, a8, 1
	j	.L574
.L569:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC60, __adddf3@PLT
	.literal .LC61, __nedf2@PLT
	.literal .LC62, __muldf3@PLT
	.literal .LC63, 1071644672
	.literal .LC64, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	l32r	a8, .LC60
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	l32r	a8, .LC61
	mov.n	a12, a2
	mov.n	a13, a3
	callx8	a8
	beqz.n	a10, .L584
	l32r	a6, .LC64
	movi.n	a7, 0
	bgez	a4, .L586
	l32r	a6, .LC63
	movi.n	a7, 0
.L586:
	bbci	a4, 31, .L587
	l32r	a5, .LC62
.L588:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L587:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L584
	l32r	a5, .LC62
.L589:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L588
	srai	a4, a8, 1
	j	.L589
.L584:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC67, __adddf3@PLT
	.literal .LC68, __nedf2@PLT
	.literal .LC69, __muldf3@PLT
	.literal .LC70, 1071644672
	.literal .LC71, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 48
	l32r	a8, .LC67
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a2, a10
	l32r	a8, .LC68
	mov.n	a3, a11
	mov.n	a13, a11
	mov.n	a12, a2
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a8
	beqz.n	a10, .L598
	l32r	a8, .LC71
	movi.n	a9, 0
	bgez	a4, .L601
	l32r	a8, .LC70
	movi.n	a9, 0
.L601:
	mov.n	a2, a6
	mov.n	a3, a7
	bbci	a4, 31, .L602
	l32r	a7, .LC69
.L603:
	mov.n	a12, a8
	mov.n	a13, a9
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	l32i	a9, sp, 4
	l32i	a8, sp, 0
	mov.n	a2, a10
	mov.n	a3, a11
.L602:
	extui	a10, a4, 31, 1
	add.n	a10, a10, a4
	srai	a4, a10, 1
	beqz.n	a4, .L598
	l32r	a7, .LC69
.L604:
	mov.n	a13, a9
	mov.n	a12, a8
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a7
	mov.n	a13, a11
	extui	a9, a4, 31, 1
	add.n	a11, a9, a4
	mov.n	a8, a10
	mov.n	a9, a13
	bbsi	a4, 31, .L603
	srai	a4, a11, 1
	j	.L604
.L598:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L613
	addi.n	a8, a4, -1
	bltui	a8, 4, .L614
	or	a8, a2, a3
	extui	a8, a8, 0, 2
	bnez.n	a8, .L614
	srli	a9, a4, 2
	slli	a10, a9, 2
	addi	a10, a10, -4
	srli	a10, a10, 2
	mov.n	a8, a2
	slli	a12, a9, 2
	addx4	a13, a9, a3
	addi.n	a10, a10, 1
	loop	a10, .L615_LEND
.L615:
	l32i	a11, a8, 0
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	xor	a9, a9, a11
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	.L615_LEND:
	add.n	a8, a2, a12
	sub	a10, a4, a12
	beq	a4, a12, .L613
	l8ui	a9, a8, 0
	l8ui	a11, a13, 0
	xor	a9, a9, a11
	s8i	a9, a8, 0
	beqi	a10, 1, .L613
	l8ui	a11, a8, 1
	l8ui	a9, a13, 1
	xor	a9, a9, a11
	s8i	a9, a8, 1
	beqi	a10, 2, .L613
	l8ui	a10, a8, 2
	l8ui	a9, a13, 2
	xor	a9, a9, a10
	s8i	a9, a8, 2
	j	.L613
.L614:
	mov.n	a8, a2
.L617:
	l8ui	a10, a8, 0
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L617
.L613:
	retw.n
	.size	memxor, .-memxor
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L639
	mov.n	a8, a2
.L634:
	l8ui	a9, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a9, .L634
	j	.L633
.L639:
	mov.n	a8, a2
.L633:
	bnez.n	a4, .L635
	j	.L636
.L637:
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L635
	j	.L636
.L635:
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	s8i	a9, a8, 0
	bnez.n	a9, .L637
	j	.L638
.L636:
	movi.n	a9, 0
	s8i	a9, a8, 0
.L638:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bnez.n	a3, .L647
	j	.L646
.L649:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L647
	j	.L646
.L647:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L649
.L646:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L656
	j	.L660
.L658:
	beq	a9, a10, .L657
.L659:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L658
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a10, .L660
.L656:
	mov.n	a8, a3
	j	.L659
.L660:
	mov.n	a2, a10
.L657:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L664:
	l8ui	a9, a8, 0
	sub	a10, a3, a9
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L664
	retw.n
	.size	strrchr, .-strrchr
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 32
	l8ui	a7, a3, 0
	mov.n	a10, a2
	beqz.n	a7, .L678
	mov.n	a8, a3
.L668:
	l8ui	a11, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a11, .L668
	sub	a9, a8, a3
	mov.n	a2, a10
	beq	a8, a3, .L666
	addi.n	a5, a3, -1
	add.n	a5, a5, a9
	movi.n	a13, 1
	j	.L675
.L672:
	l8ui	a2, a14, 0
	l8ui	a12, a9, 1
	addi.n	a8, a9, 1
	bnez.n	a2, .L670
	j	.L671
.L670:
	mov.n	a9, a8
	j	.L674
.L679:
	mov.n	a12, a7
	mov.n	a9, a3
	mov.n	a14, a10
.L674:
	sub	a8, a9, a5
	mov.n	a15, a11
	sub	a6, a2, a12
	movnez	a15, a13, a8
	mov.n	a4, a11
	mov.n	a8, a11
	addi.n	a14, a14, 1
	movnez	a4, a13, a12
	moveqz	a8, a13, a6
	beqz.n	a15, .L671
	bany	a4, a8, .L672
.L671:
	beq	a2, a12, .L678
	addi.n	a10, a10, 1
.L675:
	l8ui	a2, a10, 0
	beq	a2, a7, .L679
	addi.n	a10, a10, 1
	bnez.n	a2, .L675
	j	.L666
.L678:
	mov.n	a2, a10
.L666:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC73, __ltdf2@PLT
	.literal .LC74, __gtdf2@PLT
	.literal .LC75, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	l32r	a7, .LC73
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	l32r	a6, .LC74
	bltz	a10, .L699
	j	.L695
.L699:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	bgei	a10, 1, .L687
.L695:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	blti	a10, 1, .L694
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L694
.L687:
	l32r	a10, .LC75
	mov.n	a9, a3
	xor	a8, a2, a10
	j	.L686
.L694:
	mov.n	a8, a2
	mov.n	a9, a3
.L686:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	copysign, .-copysign
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	beqz.n	a5, .L705
	bltu	a3, a5, .L716
	sub	a3, a3, a5
	add.n	a13, a2, a3
	bltu	a13, a2, .L716
	l8ui	a15, a4, 0
	addi.n	a5, a5, -1
	addi.n	a4, a4, 1
.L711:
	l8ui	a8, a2, 0
	addi.n	a14, a2, 1
	bne	a8, a15, .L715
	mov.n	a9, a4
	beqz.n	a5, .L705
.L710:
	mov.n	a8, a14
	mov.n	a10, a5
	j	.L708
.L709:
	addi.n	a9, a9, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L708
	j	.L705
.L708:
	l8ui	a12, a8, 0
	l8ui	a11, a9, 0
	addi.n	a8, a8, 1
	beq	a12, a11, .L709
	bltu	a13, a14, .L716
	l8ui	a8, a14, 0
	addi.n	a2, a14, 1
	bne	a8, a15, .L707
	mov.n	a8, a14
	mov.n	a9, a4
	mov.n	a14, a2
	mov.n	a2, a8
	j	.L710
.L715:
	mov.n	a2, a14
.L707:
	bgeu	a13, a2, .L711
.L716:
	movi.n	a2, 0
.L705:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC76, memmove@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L725
	l32r	a8, .LC76
	mov.n	a12, a4
	mov.n	a10, a2
	callx8	a8
.L725:
	add.n	a2, a2, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC78, __ltdf2@PLT
	.literal .LC79, -2147483648
	.literal .LC81, __gedf2@PLT
	.literal .LC83, __muldf3@PLT
	.literal .LC85, __nedf2@PLT
	.literal .LC86, __adddf3@PLT
	.literal .LC88, 1070596096
	.literal .LC89, 1071644672
	.literal .LC90, 1073741824
	.literal .LC91, 1072693248
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	l32r	a7, .LC78
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	movi.n	a8, 0
	bgez	a10, .L755
	l32r	a10, .LC79
	movi.n	a8, 1
	xor	a2, a2, a10
	s32i	a8, sp, 4
	j	.L730
.L755:
	s32i	a8, sp, 4
.L730:
	l32r	a6, .LC81
	l32r	a12, .LC91
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	bltz	a10, .L756
	l32r	a7, .LC83
	movi.n	a5, 0
	s32i	a7, sp, 0
	s32i	a4, sp, 8
	mov.n	a7, a5
.L734:
	l32r	a12, .LC89
	l32i	a8, sp, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a4, a2
	mov.n	a5, a3
	l32r	a12, .LC90
	mov.n	a2, a10
	mov.n	a3, a11
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	addi.n	a7, a7, 1
	callx8	a6
	bgez	a10, .L734
	j	.L757
.L756:
	l32r	a12, .LC89
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bgez	a10, .L741
	l32r	a8, .LC85
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	beqz.n	a10, .L741
	movi.n	a5, 0
	l32r	a6, .LC86
	s32i	a7, sp, 0
	s32i	a4, sp, 8
	mov.n	a7, a5
.L738:
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	mov.n	a4, a2
	mov.n	a5, a3
	l32r	a12, .LC88
	l32i	a8, sp, 0
	mov.n	a2, a10
	mov.n	a3, a11
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	addi.n	a7, a7, -1
	callx8	a8
	bltz	a10, .L738
.L757:
	l32i	a4, sp, 8
	mov.n	a5, a7
	j	.L735
.L741:
	movi.n	a5, 0
.L735:
	l32i	a8, sp, 4
	s32i	a5, a4, 0
	beqz.n	a8, .L739
	l32r	a10, .LC79
	xor	a2, a2, a10
.L739:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC92, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	or	a9, a3, a2
	mov.n	a8, a2
	mov.n	a6, a3
	beqz.n	a9, .L763
	l32r	a9, .LC92
	movi.n	a3, 0
	s32i	a9, sp, 4
	mov.n	a2, a3
.L762:
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
	bltu	a11, a3, .L761
	movi.n	a13, 0
.L761:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L762
	j	.L758
.L763:
	mov.n	a3, a9
	mov.n	a2, a9
.L758:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L766
	j	.L767
.L770:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L768
	beqz.n	a8, .L768
.L766:
	bgez	a3, .L770
	j	.L767
.L768:
	movi.n	a9, 0
	beqz.n	a8, .L771
.L767:
	movi.n	a9, 0
.L773:
	bltu	a2, a3, .L772
	sub	a2, a2, a3
	or	a9, a9, a8
.L772:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L773
.L771:
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
	bne	a2, a9, .L796
	beq	a3, a2, .L797
.L796:
	nsau	a2, a8
	addi	a2, a2, 32
	nsau	a8, a10
	movnez	a2, a8, a10
	addi.n	a2, a2, -1
	j	.L790
.L797:
	movi.n	a2, 0x3f
.L790:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L801
	movi.n	a2, 0
.L800:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L800
	j	.L798
.L801:
.L798:
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
	bgeu	a2, a3, .L804
.L807:
	bnez.n	a8, .L805
	j	.L831
.L804:
	add.n	a9, a3, a4
	bltu	a9, a2, .L807
	addi.n	a8, a4, -1
	bnez.n	a4, .L808
	j	.L803
.L805:
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	mov.n	a13, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L810_LEND
.L810:
	l32i	a10, a13, 0
	l32i	a11, a13, 4
	s32i	a10, a9, 0
	s32i	a11, a9, 4
	addi.n	a13, a13, 8
	addi.n	a9, a9, 8
	.L810_LEND:
	j	.L832
.L831:
	add.n	a10, a2, a12
	add.n	a8, a3, a12
	bnez.n	a4, .L812
	j	.L803
.L832:
	bgeu	a12, a4, .L803
	sub	a13, a4, a12
	addi.n	a8, a13, -1
	bgeui	a8, 7, .L833
	add.n	a10, a2, a12
	add.n	a8, a3, a12
	j	.L812
.L833:
	addi.n	a9, a12, 1
	add.n	a10, a2, a12
	add.n	a9, a3, a9
	sub	a9, a10, a9
	add.n	a8, a3, a12
	bltui	a9, 3, .L812
	or	a9, a8, a10
	extui	a9, a9, 0, 2
	bnez.n	a9, .L812
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	slli	a14, a14, 2
	addi.n	a9, a9, 1
	loop	a9, .L814_LEND
.L814:
	l32i	a11, a8, 0
	addi.n	a8, a8, 4
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	.L814_LEND:
	add.n	a12, a12, a14
	beq	a13, a14, .L803
	add.n	a8, a3, a12
	l8ui	a9, a8, 0
	add.n	a8, a2, a12
	s8i	a9, a8, 0
	addi.n	a8, a12, 1
	bgeu	a8, a4, .L803
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a12, a12, 2
	bgeu	a12, a4, .L803
	add.n	a3, a3, a12
	l8ui	a8, a3, 0
	add.n	a2, a2, a12
	s8i	a8, a2, 0
	j	.L803
.L812:
	add.n	a3, a3, a4
	sub	a3, a3, a8
.L816:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L816
	j	.L803
.L808:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L808
.L803:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a12, a4, 1
	bgeu	a2, a3, .L839
.L842:
	bnez.n	a12, .L840
	j	.L841
.L839:
	add.n	a8, a3, a4
	bltu	a8, a2, .L842
	addi.n	a8, a4, -1
	bnez.n	a4, .L843
	j	.L838
.L840:
	addi.n	a8, a12, -1
	movi.n	a9, 8
	bgeu	a9, a8, .L845
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L845
	addi.n	a8, a3, 2
	beq	a2, a8, .L845
	srli	a13, a4, 2
	slli	a8, a13, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a14, a13, 2
	addi.n	a8, a8, 1
	loop	a8, .L846_LEND
.L846:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	.L846_LEND:
	add.n	a13, a13, a13
	beq	a12, a13, .L841
	add.n	a8, a3, a14
	l16ui	a8, a8, 0
	add.n	a14, a2, a14
	s16i	a8, a14, 0
	j	.L841
.L845:
	add.n	a8, a12, a12
	addi	a8, a8, -2
	srli	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L848_LEND
.L848:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	.L848_LEND:
.L841:
	bbci	a4, 31, .L838
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L838
.L843:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L843
.L838:
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
	bgeu	a2, a3, .L868
.L871:
	bnez.n	a8, .L869
	j	.L895
.L868:
	add.n	a9, a3, a4
	bltu	a9, a2, .L871
	addi.n	a8, a4, -1
	bnez.n	a4, .L872
	j	.L867
.L869:
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	mov.n	a10, a3
	mov.n	a9, a2
	addi.n	a8, a8, 1
	loop	a8, .L874_LEND
.L874:
	l32i	a12, a10, 0
	addi.n	a10, a10, 4
	s32i	a12, a9, 0
	addi.n	a9, a9, 4
	.L874_LEND:
	j	.L896
.L895:
	add.n	a10, a2, a11
	add.n	a8, a3, a11
	bnez.n	a4, .L876
	j	.L867
.L896:
	bgeu	a11, a4, .L867
	sub	a13, a4, a11
	addi.n	a8, a13, -1
	bgeui	a8, 7, .L897
	add.n	a10, a2, a11
	add.n	a8, a3, a11
	j	.L876
.L897:
	addi.n	a9, a11, 1
	add.n	a10, a2, a11
	add.n	a9, a3, a9
	sub	a9, a10, a9
	add.n	a8, a3, a11
	bltui	a9, 3, .L876
	or	a9, a8, a10
	extui	a9, a9, 0, 2
	bnez.n	a9, .L876
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	slli	a14, a14, 2
	addi.n	a9, a9, 1
	loop	a9, .L878_LEND
.L878:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a10, 0
	addi.n	a10, a10, 4
	.L878_LEND:
	add.n	a11, a11, a14
	beq	a13, a14, .L867
	add.n	a8, a3, a11
	l8ui	a9, a8, 0
	add.n	a8, a2, a11
	s8i	a9, a8, 0
	addi.n	a8, a11, 1
	bgeu	a8, a4, .L867
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a11, a11, 2
	bgeu	a11, a4, .L867
	add.n	a3, a3, a11
	l8ui	a8, a3, 0
	add.n	a2, a2, a11
	s8i	a8, a2, 0
	j	.L867
.L876:
	add.n	a3, a3, a4
	sub	a3, a3, a8
.L880:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L880
	j	.L867
.L872:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L872
.L867:
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
	.literal .LC93, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	l32r	a8, .LC93
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC94, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	l32r	a8, .LC94
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC95, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	l32r	a8, .LC95
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC96, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	l32r	a8, .LC96
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
	bbsi	a2, 16, .L911
	srai	a2, a8, 14
	bnez.n	a2, .L908
	srai	a9, a8, 13
	bnez.n	a9, .L912
	srai	a9, a8, 12
	bnez.n	a9, .L913
	srai	a9, a8, 11
	bnez.n	a9, .L914
	srai	a9, a8, 10
	bnez.n	a9, .L915
	srai	a9, a8, 9
	bnez.n	a9, .L916
	srai	a9, a8, 8
	bnez.n	a9, .L917
	srai	a9, a8, 7
	bnez.n	a9, .L918
	srai	a9, a8, 6
	bnez.n	a9, .L919
	srai	a9, a8, 5
	bnez.n	a9, .L920
	srai	a9, a8, 4
	bnez.n	a9, .L921
	srai	a9, a8, 3
	bnez.n	a9, .L922
	srai	a9, a8, 2
	bnez.n	a9, .L923
	srai	a9, a8, 1
	bnez.n	a9, .L924
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L908
.L911:
	movi.n	a2, 0
	j	.L908
.L912:
	movi.n	a2, 2
	j	.L908
.L913:
	movi.n	a2, 3
	j	.L908
.L914:
	movi.n	a2, 4
	j	.L908
.L915:
	movi.n	a2, 5
	j	.L908
.L916:
	movi.n	a2, 6
	j	.L908
.L917:
	movi.n	a2, 7
	j	.L908
.L918:
	movi.n	a2, 8
	j	.L908
.L919:
	movi.n	a2, 9
	j	.L908
.L920:
	movi.n	a2, 0xa
	j	.L908
.L921:
	movi.n	a2, 0xb
	j	.L908
.L922:
	movi.n	a2, 0xc
	j	.L908
.L923:
	movi.n	a2, 0xd
	j	.L908
.L924:
	movi.n	a2, 0xe
.L908:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	bbsi	a2, 31, .L929
	bbsi	a8, 30, .L930
	bbsi	a8, 29, .L931
	bbsi	a8, 28, .L932
	bbsi	a8, 27, .L933
	bbsi	a8, 26, .L934
	bbsi	a8, 25, .L935
	bbsi	a8, 24, .L936
	bbsi	a8, 23, .L937
	bbsi	a8, 22, .L938
	bbsi	a8, 21, .L939
	bbsi	a8, 20, .L940
	bbsi	a8, 19, .L941
	bbsi	a8, 18, .L942
	bbsi	a8, 17, .L943
	srai	a8, a8, 15
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L926
.L929:
	movi.n	a2, 0
	j	.L926
.L930:
	movi.n	a2, 1
	j	.L926
.L931:
	movi.n	a2, 2
	j	.L926
.L932:
	movi.n	a2, 3
	j	.L926
.L933:
	movi.n	a2, 4
	j	.L926
.L934:
	movi.n	a2, 5
	j	.L926
.L935:
	movi.n	a2, 6
	j	.L926
.L936:
	movi.n	a2, 7
	j	.L926
.L937:
	movi.n	a2, 8
	j	.L926
.L938:
	movi.n	a2, 9
	j	.L926
.L939:
	movi.n	a2, 0xa
	j	.L926
.L940:
	movi.n	a2, 0xb
	j	.L926
.L941:
	movi.n	a2, 0xc
	j	.L926
.L942:
	movi.n	a2, 0xd
	j	.L926
.L943:
	movi.n	a2, 0xe
.L926:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC101, 0x47000000
	.literal .LC102, __gesf2@PLT
	.literal .LC103, __subsf3@PLT
	.literal .LC104, __fixsfsi@PLT
	.literal .LC105, 32768
	.literal .LC106, .LC101
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC106
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC102
	callx8	a8
	bltz	a10, .L950
	l32r	a8, .LC106
	mov.n	a10, a2
	l32i.n	a11, a8, 0
	l32r	a8, .LC103
	callx8	a8
	l32r	a8, .LC104
	callx8	a8
	l32r	a8, .LC105
	add.n	a2, a10, a8
	j	.L945
.L950:
	l32r	a8, .LC104
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
.L945:
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
	beqz.n	a2, .L956
	movi.n	a2, 0
.L955:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L955
	j	.L953
.L956:
.L953:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L958
	j	.L965
.L960:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srli	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
.L965:
	bnez.n	a3, .L960
.L958:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L967
	j	.L968
.L971:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L969
	beqz.n	a8, .L969
.L967:
	bgez	a3, .L971
	j	.L968
.L969:
	movi.n	a9, 0
	beqz.n	a8, .L972
.L968:
	movi.n	a9, 0
.L974:
	bltu	a2, a3, .L973
	sub	a2, a2, a3
	or	a9, a9, a8
.L973:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L974
.L972:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC107, __ltsf2@PLT
	.literal .LC108, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	l32r	a8, .LC107
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, -1
	bltz	a10, .L988
	l32r	a8, .LC108
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L988
	movi.n	a2, 0
.L988:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC109, __ltdf2@PLT
	.literal .LC110, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 32
	l32r	a8, .LC109
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, -1
	bltz	a10, .L992
	l32r	a8, .LC110
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L992
	movi.n	a2, 0
.L992:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC111, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	l32r	a8, .LC111
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
	.literal .LC112, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	l32r	a8, .LC112
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
	bgez	a3, .L999
	neg	a3, a3
	movi.n	a11, 1
	j	.L1000
.L999:
	beqz.n	a3, .L1004
	movi.n	a11, 0
.L1000:
	movi.n	a2, 0
	mov.n	a9, a2
.L1002:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	addi.n	a9, a9, 1
	srai	a3, a3, 1
	extui	a9, a9, 0, 8
	add.n	a2, a2, a8
	add.n	a10, a10, a10
	beqz.n	a3, .L1005
	bnei	a9, 32, .L1002
.L1005:
	neg	a8, a2
	movnez	a2, a8, a11
	j	.L998
.L1004:
	mov.n	a2, a3
.L998:
	retw.n
	.size	__mulhi3, .-__mulhi3
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a10, 0
	bgez	a2, .L1013
	mov.n	a8, a10
	neg	a2, a2
	movi.n	a10, 1
.L1013:
	bgez	a3, .L1014
	neg	a3, a3
	mov.n	a10, a8
.L1014:
	mov.n	a9, a2
	movi.n	a8, 1
	bltu	a3, a2, .L1015
	j	.L1016
.L1034:
	bnez.n	a8, .L1016
.L1035:
	mov.n	a2, a8
	j	.L1017
.L1015:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1034
	bnez.n	a8, .L1015
	j	.L1035
.L1016:
	movi.n	a2, 0
.L1022:
	bltu	a9, a3, .L1021
	sub	a9, a9, a3
	or	a2, a2, a8
.L1021:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1022
.L1017:
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
	bgez	a2, .L1037
	neg	a2, a2
	movi.n	a11, 1
.L1037:
	abs	a8, a3
	mov.n	a10, a2
	movi.n	a9, 1
	bltu	a8, a2, .L1038
	j	.L1045
.L1057:
	bnez.n	a9, .L1045
.L1058:
	mov.n	a10, a2
	j	.L1040
.L1038:
	add.n	a8, a8, a8
	add.n	a9, a9, a9
	bgeu	a8, a2, .L1057
	bnez.n	a9, .L1038
	j	.L1058
.L1045:
	srli	a9, a9, 1
	bltu	a10, a8, .L1044
	sub	a10, a10, a8
.L1044:
	srli	a8, a8, 1
	bnez.n	a9, .L1045
.L1040:
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
	bltu	a11, a13, .L1060
	bne	a11, a13, .L1089
	mov.n	a9, a12
	movi.n	a2, 0
	j	.L1066
.L1064:
	extui	a9, a9, 0, 16
	bgeu	a8, a13, .L1062
	beqz.n	a9, .L1062
	mov.n	a12, a9
	mov.n	a11, a8
.L1060:
	add.n	a8, a11, a11
	sext	a10, a11, 15
	add.n	a9, a12, a12
	extui	a8, a8, 0, 16
	bgez	a10, .L1064
	j	.L1115
.L1062:
	mov.n	a2, a13
	beqz.n	a9, .L1066
	bltu	a13, a8, .L1067
	sub	a13, a13, a8
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	extui	a13, a13, 0, 16
	mov.n	a11, a8
	mov.n	a12, a9
	j	.L1068
.L1067:
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	mov.n	a12, a9
	mov.n	a11, a8
	movi.n	a9, 0
	j	.L1068
.L1086:
	sub	a13, a13, a11
	extui	a13, a13, 0, 16
	mov.n	a9, a12
.L1087:
	extui	a14, a12, 1, 16
	srli	a10, a11, 1
	beqz.n	a14, .L1104
.L1068:
	bltu	a13, a10, .L1069
	sub	a10, a13, a10
	or	a14, a9, a14
	extui	a13, a10, 0, 16
	extui	a9, a14, 0, 16
.L1069:
	extui	a8, a12, 2, 16
	srli	a10, a11, 2
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1070
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1070:
	extui	a8, a12, 3, 16
	srli	a10, a11, 3
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1071
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1071:
	extui	a8, a12, 4, 16
	srli	a10, a11, 4
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1072
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1072:
	extui	a8, a12, 5, 16
	srli	a10, a11, 5
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1073
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1073:
	extui	a8, a12, 6, 16
	srli	a10, a11, 6
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1074
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1074:
	extui	a8, a12, 7, 16
	srli	a10, a11, 7
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1075
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1075:
	extui	a8, a12, 8, 16
	srli	a10, a11, 8
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1076
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1076:
	extui	a8, a12, 9, 16
	srli	a10, a11, 9
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1077
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1077:
	extui	a8, a12, 10, 16
	srli	a10, a11, 10
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1078
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1078:
	extui	a8, a12, 11, 16
	srli	a10, a11, 11
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1079
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1079:
	extui	a8, a12, 12, 16
	srli	a10, a11, 12
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1080
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1080:
	extui	a8, a12, 13, 16
	srli	a10, a11, 13
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1081
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1081:
	extui	a8, a12, 14, 16
	srli	a10, a11, 14
	beqz.n	a8, .L1104
	bltu	a13, a10, .L1082
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1082:
	extui	a12, a12, 15, 16
	srli	a11, a11, 15
	bnez.n	a12, .L1083
	j	.L1104
.L1089:
	mov.n	a2, a13
	movi.n	a9, 0
	j	.L1066
.L1104:
	mov.n	a2, a13
	j	.L1066
.L1083:
	movi.n	a2, 0
	bltu	a13, a11, .L1066
	movi.n	a8, 1
	sub	a11, a13, a11
	or	a8, a9, a8
	extui	a2, a11, 0, 16
	extui	a9, a8, 0, 16
	j	.L1066
.L1115:
	movi.n	a9, 0
	bltu	a13, a11, .L1087
	j	.L1086
.L1066:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bltu	a3, a2, .L1118
	j	.L1119
.L1122:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1120
	beqz.n	a8, .L1120
.L1118:
	bgez	a3, .L1122
	j	.L1119
.L1120:
	movi.n	a9, 0
	beqz.n	a8, .L1123
.L1119:
	movi.n	a9, 0
.L1125:
	bltu	a2, a3, .L1124
	sub	a2, a2, a3
	or	a9, a9, a8
.L1124:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1125
.L1123:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L1140
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L1141
.L1140:
	beqz.n	a4, .L1142
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L1141:
	mov.n	a3, a8
.L1142:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1145
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L1146
.L1145:
	beqz.n	a4, .L1147
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1146:
	mov.n	a2, a8
.L1147:
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
	.literal .LC113, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	l32r	a8, .LC113
	movi.n	a12, 1
	bgeu	a8, a2, .L1152
	movi.n	a12, 0
.L1152:
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
	blt	a8, a4, .L1153
	movi.n	a2, 2
	blt	a4, a8, .L1153
	movi.n	a2, 0
	bltu	a3, a5, .L1153
	movi.n	a2, 2
	bltu	a5, a3, .L1153
	movi.n	a2, 1
.L1153:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	blt	a8, a4, .L1159
	movi.n	a2, 1
	blt	a4, a8, .L1159
	movi.n	a2, -1
	bltu	a3, a5, .L1159
	movi.n	a2, 1
	bltu	a5, a3, .L1159
	movi.n	a2, 0
.L1159:
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
	bbci	a4, 26, .L1167
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L1168
.L1167:
	beqz.n	a4, .L1169
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1168:
	mov.n	a2, a8
.L1169:
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
	.literal .LC115, 27030
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
	l32r	a2, .LC115
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC116, 27030
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
	l32r	a2, .LC116
	extui	a8, a8, 0, 4
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC117, 1431655765
	.literal .LC118, 858993459
	.literal .LC119, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	l32r	a10, .LC117
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L1180
	addi.n	a2, a2, -1
.L1180:
	l32r	a9, .LC118
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
	bgeu	a8, a3, .L1181
	addi.n	a10, a10, 1
.L1181:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a8, a11, .L1182
	addi.n	a9, a9, 1
.L1182:
	l32r	a10, .LC119
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
	.literal .LC120, 1431655765
	.literal .LC121, 858993459
	.literal .LC122, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	l32r	a9, .LC120
	srli	a8, a2, 1
	and	a8, a8, a9
	l32r	a10, .LC121
	sub	a2, a2, a8
	srli	a9, a2, 2
	and	a9, a9, a10
	and	a2, a2, a10
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC122
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC124, __muldf3@PLT
	.literal .LC125, __divdf3@PLT
	.literal .LC126, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a7, a4
	s32i	a4, sp, 0
	mov.n	a5, a3
	mov.n	a4, a2
	bbci	a7, 31, .L1190
	l32r	a6, .LC124
	l32r	a2, .LC126
	movi.n	a3, 0
.L1187:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L1185
.L1190:
	l32r	a2, .LC126
	movi.n	a3, 0
.L1185:
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	srai	a7, a8, 1
	beqz.n	a7, .L1186
	l32r	a6, .LC124
.L1188:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a4, a10
	mov.n	a5, a11
	bbsi	a7, 31, .L1187
	srai	a7, a8, 1
	j	.L1188
.L1186:
	l32i	a8, sp, 0
	bgez	a8, .L1184
	l32r	a10, .LC126
	l32r	a8, .LC125
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L1184:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC128, __mulsf3@PLT
	.literal .LC129, __divsf3@PLT
	.literal .LC130, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a2, .LC130
	bbci	a3, 31, .L1192
	l32r	a5, .LC128
.L1194:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
	j	.L1192
.L1192:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1193
	l32r	a5, .LC128
.L1195:
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1194
	srai	a7, a8, 1
	j	.L1195
.L1193:
	bgez	a3, .L1191
	l32r	a10, .LC130
	l32r	a8, .LC129
	mov.n	a11, a2
	callx8	a8
	mov.n	a2, a10
.L1191:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L1198
	movi.n	a2, 2
	bltu	a4, a8, .L1198
	movi.n	a2, 0
	bltu	a3, a5, .L1198
	movi.n	a2, 2
	bltu	a5, a3, .L1198
	movi.n	a2, 1
.L1198:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	bltu	a8, a4, .L1204
	movi.n	a2, 1
	bltu	a4, a8, .L1204
	movi.n	a2, -1
	bltu	a3, a5, .L1204
	movi.n	a2, 1
	bltu	a5, a3, .L1204
	movi.n	a2, 0
.L1204:
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
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__umulsidi3
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
	.global	__lesf2
	.global	__ledf2
	.global	__gesf2
	.global	__ltsf2
	.global	__gedf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
