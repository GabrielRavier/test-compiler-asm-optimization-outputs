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
	addi.n	a9, a9, 1
	mov.n	a8, a3
	mov.n	a10, a2
	slli	a13, a11, 2
	addx4	a12, a11, a3
	blti	a9, 3, .L39
	addi.n	a9, a9, -1
	l32i	a11, a3, 0
	s32i	a11, a2, 0
	loop	a9, .L7_LEND
.L7:
	addi.n	a8, a8, 4
	l32i	a11, a8, 0
	addi.n	a10, a10, 4
	s32i	a11, a10, 0
	.L7_LEND:
.L40:
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
	blti	a4, 3, .L41
	addi.n	a4, a4, -1
	l8ui	a10, a3, 0
	s8i	a10, a2, 0
.L10:
	addi.n	a8, a8, 1
	l8ui	a10, a8, 0
	addi.n	a9, a9, 1
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L10
.L3:
	retw.n
.L41:
	l8ui	a10, a8, 0
	addi.n	a8, a8, 1
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L41
	j	.L3
.L39:
	l32i	a11, a8, 0
	addi.n	a8, a8, 4
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L39
	j	.L40
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 32
	extui	a4, a4, 0, 8
	bnez.n	a5, .L45
.L47:
	movi.n	a2, 0
	j	.L44
.L48:
	addi.n	a5, a5, -1
	bnez.n	a5, .L45
	j	.L47
.L45:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a2, 0
	addi.n	a2, a2, 1
	bne	a8, a4, .L48
.L44:
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	mov.n	a8, a4
	bnez.n	a4, .L57
	j	.L66
.L59:
	addi.n	a2, a2, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L57
	j	.L66
.L57:
	l8ui	a9, a2, 0
	bne	a9, a3, .L59
	j	.L56
.L66:
	movi.n	a2, 0
.L56:
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L69
	j	.L80
.L71:
	addi.n	a3, a3, 1
	addi.n	a8, a8, -1
	bnez.n	a8, .L69
	j	.L80
.L69:
	l8ui	a9, a2, 0
	l8ui	a10, a3, 0
	addi.n	a2, a2, 1
	beq	a9, a10, .L71
	j	.L81
.L80:
	movi.n	a2, 0
	j	.L68
.L81:
	sub	a2, a9, a10
.L68:
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
	beqz.n	a4, .L84
	l32r	a8, .LC0
	mov.n	a10, a2
	callx8	a8
.L84:
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
	j	.L89
.L91:
	l8ui	a9, a2, 0
	addi.n	a8, a8, -1
	beq	a9, a3, .L88
.L89:
	mov.n	a2, a8
	bne	a8, a10, .L91
	movi.n	a2, 0
.L88:
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
	beqz.n	a4, .L95
	l32r	a8, .LC1
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	callx8	a8
.L95:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L97
.L98:
	l8ui	a8, a3, 1
	addi.n	a2, a2, 1
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	bnez.n	a8, .L98
.L97:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	l8ui	a8, a2, 0
	extui	a3, a3, 0, 8
	beqz.n	a8, .L103
	j	.L104
.L106:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a8, .L103
.L104:
	bne	a8, a3, .L106
.L103:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L113:
	l8ui	a8, a2, 0
	beq	a8, a3, .L112
	addi.n	a2, a2, 1
	bnez.n	a8, .L113
	mov.n	a2, a8
.L112:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	bne	a8, a9, .L117
	j	.L116
.L118:
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	bne	a8, a9, .L117
.L116:
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	bnez.n	a8, .L118
.L117:
	sub	a2, a8, a9
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L125
	mov.n	a8, a2
.L124:
	l8ui	a9, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a9, .L124
	sub	a2, a8, a2
	j	.L122
.L125:
	mov.n	a2, a8
.L122:
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a4, .L127
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	mov.n	a8, a3
	movi.n	a12, 1
	add.n	a13, a3, a4
	bnez.n	a10, .L131
	l8ui	a11, a3, 0
	j	.L130
.L132:
	l8ui	a10, a9, 0
	addi.n	a11, a8, 1
	bnez.n	a10, .L135
	l8ui	a11, a8, 1
	j	.L130
.L135:
	mov.n	a8, a11
.L131:
	l8ui	a11, a8, 0
	mov.n	a15, a2
	sub	a4, a11, a10
	mov.n	a14, a2
	movnez	a15, a12, a11
	moveqz	a14, a12, a4
	addi.n	a9, a9, 1
	bnone	a15, a14, .L130
	bne	a8, a13, .L132
.L130:
	sub	a2, a10, a11
.L127:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L144
	srli	a4, a4, 1
	add.n	a4, a4, a4
	addi	a8, a4, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	blti	a8, 3, .L151
	addi.n	a8, a8, -1
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	loop	a8, .L146_LEND
.L146:
	addi.n	a3, a3, 2
	addi.n	a2, a2, 2
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	.L146_LEND:
.L144:
	retw.n
.L151:
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	addi.n	a2, a2, 2
	addi.n	a3, a3, 2
	addi.n	a8, a8, -1
	bnez.n	a8, .L151
	j	.L144
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
	bgeu	a9, a8, .L153
	movi.n	a2, 0
.L153:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi	a9, 0x7f
	movi.n	a8, 1
	bgeu	a9, a2, .L155
	movi.n	a8, 0
.L155:
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
	bgeu	a9, a2, .L158
	movi.n	a8, 0
.L158:
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
	bgeu	a9, a8, .L160
	movi.n	a2, 0
.L160:
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
	bgeu	a9, a8, .L162
	movi.n	a2, 0
.L162:
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
	bgeu	a9, a8, .L164
	movi.n	a2, 0
.L164:
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
	bgeu	a9, a8, .L166
	movi.n	a2, 0
.L166:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L168
	movi.n	a8, 0
.L168:
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
	bgeu	a9, a8, .L170
	movi.n	a2, 0
.L170:
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
	bgeu	a10, a9, .L176
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L176
	l32r	a9, .LC2
	movi.n	a2, 1
	add.n	a9, a8, a9
	bltui	a9, 2, .L171
	l32r	a9, .LC3
	add.n	a8, a8, a9
	bltui	a8, 3, .L171
	movi.n	a2, 0
	j	.L171
.L176:
	movi.n	a2, 1
.L171:
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
	bgeu	a9, a8, .L181
	movi.n	a2, 0
.L181:
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
	bltu	a9, a2, .L183
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a9, 0x20
	movi.n	a2, 1
	bltu	a9, a8, .L182
	movi.n	a2, 0
	j	.L182
.L183:
	l32r	a9, .LC4
	l32r	a10, .LC5
	add.n	a9, a2, a9
	bgeu	a10, a9, .L188
	l32r	a9, .LC6
	bgeu	a9, a2, .L188
	l32r	a9, .LC7
	l32r	a10, .LC8
	add.n	a9, a2, a9
	movi.n	a11, 0
	movi.n	a2, 1
	bgeu	a10, a9, .L182
	l32r	a9, .LC9
	l32r	a10, .LC10
	add.n	a9, a8, a9
	mov.n	a2, a11
	bltu	a10, a9, .L182
	l32r	a9, .LC11
	extui	a8, a8, 1, 15
	add.n	a8, a8, a8
	sub	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
	j	.L182
.L188:
	movi.n	a2, 1
.L182:
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
	bgeu	a10, a9, .L193
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L193
	movi.n	a2, 0
.L193:
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
	bnez.n	a10, .L198
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L202
	l32r	a8, .LC14
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L205
	l32r	a8, .LC15
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L198
.L202:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L198
.L205:
	movi.n	a2, 0
	movi.n	a3, 0
.L198:
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
	bnez.n	a10, .L206
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L210
	l32r	a8, .LC18
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	blti	a10, 1, .L213
	l32r	a8, .LC19
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a2, a10
	j	.L206
.L210:
	mov.n	a2, a3
	j	.L206
.L213:
	movi.n	a2, 0
.L206:
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
	l32r	a8, .LC22
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
	bnez.n	a10, .L231
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a6
	bnez.n	a10, .L225
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L227
	movnez	a2, a3, a8
	j	.L225
.L227:
	l32r	a8, .LC25
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movltz	a2, a3, a10
	j	.L225
.L231:
	mov.n	a2, a3
.L225:
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
	bnez.n	a10, .L242
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L243
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L238
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a8, .L236
	j	.L243
.L238:
	l32r	a8, .LC28
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a8
	bltz	a10, .L242
	mov.n	a4, a2
	mov.n	a5, a7
.L242:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L236
.L243:
	mov.n	a2, a6
	mov.n	a3, a7
.L236:
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
	l32r	a8, .LC31
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
	bnez.n	a10, .L264
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L258
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L260
	moveqz	a2, a3, a8
	j	.L258
.L260:
	l32r	a8, .LC34
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	movgez	a2, a3, a10
	j	.L258
.L264:
	mov.n	a2, a3
.L258:
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
	bnez.n	a10, .L275
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L269
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a8, a8, 31
	slli	a9, a9, 31
	beq	a8, a9, .L271
	bnez.n	a8, .L269
	j	.L275
.L271:
	l32r	a8, .LC37
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	bltz	a10, .L269
.L275:
	mov.n	a2, a4
	mov.n	a3, a5
.L269:
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
	beqz.n	a8, .L283
	l32r	a11, .LC39
	mov.n	a10, a2
.L282:
	extui	a9, a8, 0, 6
	add.n	a9, a11, a9
	l8ui	a9, a9, 0
	srli	a8, a8, 6
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	bnez.n	a8, .L282
	j	.L281
.L283:
	mov.n	a10, a2
.L281:
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
	l32r	a9, .LC43
	mull	a2, a2, a11
	mull	a9, a10, a9
	l32r	a8, .LC44
	add.n	a2, a2, a9
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
	bnez.n	a3, .L289
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L288
.L289:
	l32i	a8, a3, 0
	s32i	a3, a2, 4
	s32i	a8, a2, 0
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L288
	s32i	a2, a8, 4
.L288:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L295
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L295:
	l32i	a9, a2, 4
	beqz.n	a9, .L294
	s32i	a8, a9, 0
.L294:
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
	beqz.n	a7, .L304
	mov.n	a2, a3
	movi.n	a4, 0
.L306:
	l32i	a10, sp, 0
	mov.n	a11, a2
	callx8	a6
	mov.n	a3, a2
	addi.n	a4, a4, 1
	beqz.n	a10, .L303
	add.n	a2, a2, a5
	bne	a7, a4, .L306
.L304:
	l32i	a8, sp, 8
	mull	a3, a5, a7
	addi.n	a7, a7, 1
	s32i	a7, a8, 0
	l32i	a8, sp, 4
	add.n	a3, a8, a3
	beqz.n	a5, .L303
	l32r	a8, .LC45
	l32i	a11, sp, 0
	mov.n	a12, a5
	mov.n	a10, a3
	callx8	a8
.L303:
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
	beqz.n	a7, .L319
	movi.n	a4, 0
.L321:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	beqz.n	a10, .L318
	add.n	a3, a3, a5
	bne	a7, a4, .L321
.L319:
	movi.n	a2, 0
.L318:
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
	l8ui	a8, a2, 0
	addi	a9, a8, -9
	bltui	a9, 5, .L357
.L360:
	bnei	a8, 32, .L331
.L357:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	addi	a9, a8, -9
	bltui	a9, 5, .L357
	j	.L360
.L331:
	movi.n	a9, 0x2b
	beq	a8, a9, .L336
	movi.n	a9, 0x2d
	beq	a8, a9, .L337
	j	.L358
.L336:
	l8ui	a8, a2, 1
	movi.n	a9, 9
	addi	a8, a8, -48
	addi.n	a2, a2, 1
	movi.n	a14, 0
	bgeu	a9, a8, .L339
	j	.L345
.L337:
	l8ui	a8, a2, 1
	movi.n	a9, 9
	addi	a8, a8, -48
	addi.n	a2, a2, 1
	bltu	a9, a8, .L345
	movi.n	a14, 1
.L339:
	movi.n	a10, 0
	movi.n	a13, 9
.L342:
	l8ui	a12, a2, 1
	addx4	a9, a10, a10
	subx2	a10, a9, a8
	mov.n	a11, a8
	addi	a8, a12, -48
	addi.n	a2, a2, 1
	add.n	a9, a9, a9
	bgeu	a13, a8, .L342
	j	.L359
.L358:
	addi	a8, a8, -48
	movi.n	a9, 9
	movi.n	a14, 0
	bgeu	a9, a8, .L339
	j	.L345
.L359:
	sub	a2, a11, a9
	movnez	a2, a10, a14
	j	.L330
.L345:
	movi.n	a2, 0
.L330:
	retw.n
	.size	atoi, .-atoi
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l8ui	a8, a2, 0
	addi	a9, a8, -9
	bltui	a9, 5, .L386
.L388:
	bnei	a8, 32, .L362
.L386:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	addi	a9, a8, -9
	bltui	a9, 5, .L386
	j	.L388
.L362:
	movi.n	a9, 0x2b
	beq	a8, a9, .L367
	movi.n	a9, 0x2d
	bne	a8, a9, .L368
	l8ui	a8, a2, 1
	movi.n	a9, 9
	addi	a8, a8, -48
	addi.n	a2, a2, 1
	movi.n	a14, 1
	bgeu	a9, a8, .L369
	j	.L375
.L367:
	l8ui	a8, a2, 1
	movi.n	a9, 9
	addi	a8, a8, -48
	addi.n	a2, a2, 1
	bltu	a9, a8, .L375
	movi.n	a14, 0
.L369:
	movi.n	a10, 0
	movi.n	a13, 9
.L372:
	l8ui	a12, a2, 1
	addx4	a9, a10, a10
	subx2	a10, a9, a8
	mov.n	a11, a8
	addi	a8, a12, -48
	addi.n	a2, a2, 1
	add.n	a9, a9, a9
	bgeu	a13, a8, .L372
	j	.L387
.L368:
	addi	a8, a8, -48
	movi.n	a9, 9
	movi.n	a14, 0
	bgeu	a9, a8, .L369
	j	.L375
.L387:
	sub	a2, a11, a9
	movnez	a2, a10, a14
	j	.L361
.L375:
	movi.n	a2, 0
.L361:
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
	bltui	a8, 5, .L418
.L421:
	bnei	a7, 32, .L390
.L418:
	l8ui	a7, a2, 1
	addi.n	a2, a2, 1
	addi	a8, a7, -9
	bltui	a8, 5, .L418
	j	.L421
.L390:
	movi.n	a8, 0x2b
	beq	a7, a8, .L395
	movi.n	a8, 0x2d
	beq	a7, a8, .L396
	j	.L419
.L395:
	l8ui	a7, a2, 1
	movi.n	a9, 0
	movi.n	a8, 9
	addi	a7, a7, -48
	s32i	a9, sp, 0
	addi.n	a3, a2, 1
	bgeu	a8, a7, .L398
	j	.L422
.L396:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bltu	a8, a7, .L406
	movi.n	a8, 1
	s32i	a8, sp, 0
.L398:
	movi.n	a11, 0
	l32r	a4, .LC46
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L402:
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
	bgeu	a8, a7, .L401
	addi.n	a2, a2, -1
.L401:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L402
	j	.L420
.L419:
	movi.n	a9, 0
	addi	a7, a7, -48
	movi.n	a8, 9
	s32i	a9, sp, 0
	mov.n	a3, a2
	bgeu	a8, a7, .L398
.L422:
	mov.n	a11, a9
	mov.n	a2, a9
	j	.L389
.L420:
	l32i	a9, sp, 0
	bnez.n	a9, .L389
	sub	a2, a12, a10
	bgeu	a13, a8, .L404
	addi.n	a2, a2, -1
.L404:
	sub	a11, a13, a8
	j	.L389
.L406:
	movi.n	a11, 0
	mov.n	a2, a11
.L389:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L436:
	beqz.n	a4, .L424
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L428
	beqz.n	a10, .L423
	add.n	a3, a2, a5
	sub	a4, a4, a7
	j	.L436
.L428:
	mov.n	a4, a7
	j	.L436
.L424:
	movi.n	a2, 0
.L423:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	bnez.n	a4, .L450
.L442:
	movi.n	a2, 0
	j	.L437
.L450:
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	addi.n	a4, a4, -1
	callx8	a6
	srai	a4, a4, 1
	beqz.n	a10, .L437
	blti	a10, 1, .L440
	add.n	a3, a2, a5
	bnez.n	a4, .L450
	j	.L442
.L440:
	beqz.n	a7, .L442
	mov.n	a4, a7
	j	.L450
.L437:
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
	bgeu	a3, a8, .L455
	addi.n	a2, a2, -1
.L455:
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
	bgeu	a3, a8, .L461
	addi.n	a2, a2, -1
.L461:
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
	bnez.n	a8, .L464
	j	.L467
.L466:
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	beqz.n	a8, .L467
.L464:
	bne	a3, a8, .L466
	j	.L463
.L467:
	mov.n	a2, a8
.L463:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L473
	j	.L472
.L474:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L473
.L472:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnez.n	a8, .L474
.L473:
	movi.n	a2, -1
	blt	a8, a9, .L471
	movi.n	a2, 1
	blt	a9, a8, .L471
	movi.n	a2, 0
.L471:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L481:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L481
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L486
	mov.n	a8, a2
.L485:
	l32i	a9, a8, 4
	addi.n	a8, a8, 4
	bnez.n	a9, .L485
	sub	a8, a8, a2
	srai	a2, a8, 2
	j	.L483
.L486:
	mov.n	a2, a8
.L483:
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	bnez.n	a4, .L489
	j	.L505
.L491:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L489
	j	.L505
.L489:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a10, a8, .L493
	bnez.n	a8, .L491
	j	.L493
.L495:
	movi.n	a2, 1
	blt	a8, a9, .L488
.L505:
	movi.n	a2, 0
	j	.L488
.L493:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L495
	movi.n	a2, -1
.L488:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L509
	j	.L518
.L511:
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L509
	j	.L518
.L509:
	l32i	a9, a2, 0
	bne	a9, a3, .L511
	j	.L508
.L518:
	movi.n	a2, 0
.L508:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L521
	j	.L534
.L523:
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L521
	j	.L534
.L521:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	beq	a10, a9, .L523
	j	.L535
.L526:
	movi.n	a2, 1
	blt	a9, a10, .L520
.L534:
	movi.n	a2, 0
	j	.L520
.L535:
	bge	a10, a9, .L526
	movi.n	a2, -1
.L520:
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
	beqz.n	a4, .L539
	l32r	a8, .LC51
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L539:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L550
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a9, a2
	addi.n	a10, a4, -1
	bltu	a12, a11, .L545
	beqz.n	a4, .L550
	blti	a4, 3, .L563
	mov.n	a4, a10
	l32i	a10, a3, 0
	s32i	a10, a2, 0
	j	.L546
.L545:
	beqz.n	a4, .L550
	slli	a9, a10, 2
	srli	a9, a9, 2
	addi.n	a9, a9, 1
	addx4	a8, a10, a3
	addx4	a10, a10, a2
	blti	a9, 3, .L564
	addi.n	a9, a9, -1
	l32i	a11, a8, 0
	s32i	a11, a10, 0
	loop	a9, .L548_LEND
.L548:
	addi	a8, a8, -4
	l32i	a11, a8, 0
	addi	a10, a10, -4
	s32i	a11, a10, 0
	.L548_LEND:
	j	.L550
.L546:
	addi.n	a8, a8, 4
	l32i	a10, a8, 0
	addi.n	a9, a9, 4
	s32i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L546
.L550:
	retw.n
.L564:
	l32i	a11, a8, 0
	addi	a10, a10, -4
	s32i	a11, a10, 4
	addi	a8, a8, -4
	addi.n	a9, a9, -1
	bnez.n	a9, .L564
	j	.L550
.L563:
	l32i	a10, a8, 0
	addi.n	a8, a8, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L563
	j	.L550
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L566
	mov.n	a8, a2
	blti	a4, 3, .L575
	addi.n	a4, a4, -1
	s32i	a3, a2, 0
.L567:
	addi.n	a8, a8, 4
	s32i	a3, a8, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L567
.L566:
	retw.n
.L575:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L575
	j	.L566
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	bgeu	a2, a3, .L577
	add.n	a8, a2, a4
	add.n	a3, a3, a4
	beqz.n	a4, .L576
	sub	a2, a8, a2
.L579:
	addi.n	a8, a8, -1
	l8ui	a9, a8, 0
	addi.n	a3, a3, -1
	s8i	a9, a3, 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L579
	j	.L576
.L577:
	beq	a2, a3, .L576
	beqz.n	a4, .L576
	addi.n	a8, a4, -1
	bltui	a8, 7, .L618
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L618
	addi.n	a8, a2, 1
	sub	a8, a3, a8
	bltui	a8, 3, .L618
	srli	a10, a4, 2
	slli	a8, a10, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	mov.n	a9, a3
	slli	a12, a10, 2
	addx4	a11, a10, a2
	blti	a8, 3, .L614
	addi.n	a8, a8, -1
	l32i	a10, a2, 0
	s32i	a10, a3, 0
	loop	a8, .L582_LEND
.L582:
	addi.n	a2, a2, 4
	l32i	a10, a2, 0
	addi.n	a9, a9, 4
	s32i	a10, a9, 0
	.L582_LEND:
.L615:
	add.n	a3, a3, a12
	sub	a8, a4, a12
	beq	a4, a12, .L576
	l8ui	a9, a11, 0
	s8i	a9, a3, 0
	beqi	a8, 1, .L576
	l8ui	a9, a11, 1
	s8i	a9, a3, 1
	beqi	a8, 2, .L576
	l8ui	a8, a11, 2
	s8i	a8, a3, 2
	j	.L576
.L618:
	blti	a4, 3, .L616
	addi.n	a4, a4, -1
	l8ui	a8, a2, 0
	s8i	a8, a3, 0
.L585:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	addi.n	a3, a3, 1
	s8i	a8, a3, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L585
.L576:
	retw.n
.L616:
	l8ui	a8, a2, 0
	addi.n	a2, a2, 1
	s8i	a8, a3, 0
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L616
	j	.L576
.L614:
	l32i	a10, a2, 0
	addi.n	a2, a2, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L614
	j	.L615
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	movi.n	a13, -1
	neg	a9, a4
	xor	a13, a4, a13
	srli	a8, a3, 1
	extui	a12, a9, 0, 6
	ssr	a13
	srl	a8, a8
	movi.n	a13, -1
	mov.n	a11, a3
	xor	a13, a12, a13
	movi.n	a10, 0x20
	add.n	a3, a2, a2
	and	a9, a9, a10
	ssl	a13
	sll	a3, a3
	and	a10, a4, a10
	ssl	a4
	sll	a13, a2
	ssl	a4
	sll	a4, a11
	ssr	a12
	srl	a11, a11
	ssr	a12
	srl	a2, a2
	or	a8, a8, a13
	or	a3, a3, a11
	movi.n	a11, 0
	movnez	a8, a4, a10
	movnez	a3, a2, a9
	movnez	a4, a11, a10
	movnez	a2, a11, a9
	or	a2, a2, a8
	or	a3, a3, a4
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	neg	a10, a4
	movi.n	a9, -1
	extui	a12, a10, 0, 6
	xor	a9, a4, a9
	add.n	a8, a2, a2
	movi.n	a13, -1
	xor	a13, a12, a13
	movi.n	a11, 0x20
	ssl	a9
	sll	a8, a8
	srli	a9, a3, 1
	and	a10, a10, a11
	ssr	a13
	srl	a9, a9
	and	a11, a4, a11
	ssr	a4
	srl	a13, a3
	ssr	a4
	srl	a4, a2
	ssl	a12
	sll	a2, a2
	ssl	a12
	sll	a3, a3
	or	a8, a8, a13
	or	a2, a9, a2
	movi.n	a9, 0
	movnez	a8, a4, a11
	movnez	a2, a3, a10
	movnez	a4, a9, a11
	movnez	a3, a9, a10
	or	a2, a2, a4
	or	a3, a3, a8
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
	loop	a10, .L635_LEND
.L635:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L633
	mov.n	a2, a8
	j	.L632
.L633:
	nop.n
	.L635_LEND:
	mov.n	a2, a11
.L632:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L638
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L638
	movi.n	a2, 1
.L640:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L640
.L638:
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
	l32r	a8, .LC53
	l32r	a11, .LC57
	mov.n	a10, a2
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, 1
	bltz	a10, .L645
	l32r	a8, .LC55
	l32r	a11, .LC56
	mov.n	a10, a7
	callx8	a8
	bgei	a10, 1, .L645
	movi.n	a2, 0
.L645:
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
	l32r	a8, .LC59
	l32r	a12, .LC63
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L649
	l32r	a8, .LC61
	l32r	a12, .LC62
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L649
	movi.n	a2, 0
.L649:
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
	l32r	a8, .LC65
	l32r	a12, .LC69
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L653
	l32r	a8, .LC67
	l32r	a12, .LC68
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L653
	movi.n	a2, 0
.L653:
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
	.literal .LC77, 1073741824
	.literal .LC78, 1056964608
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	l32r	a8, .LC73
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	bnez.n	a10, .L659
	l32r	a8, .LC74
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC75
	mov.n	a11, a2
	callx8	a8
	beqz.n	a10, .L659
	l32r	a8, .LC77
	l32r	a7, .LC78
	movgez	a7, a8, a3
	bbci	a3, 31, .L662
	l32r	a6, .LC76
.L663:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L662:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L659
	l32r	a6, .LC76
.L664:
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L663
	srai	a3, a8, 1
	j	.L664
.L659:
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
	bnez.n	a10, .L674
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
	beqz.n	a10, .L674
	l32r	a6, .LC86
	movi.n	a7, 0
	bgez	a4, .L676
	l32r	a6, .LC85
	movi.n	a7, 0
.L676:
	bbci	a4, 31, .L677
	l32r	a5, .LC84
.L678:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L677:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L674
	l32r	a5, .LC84
.L679:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L678
	srai	a4, a8, 1
	j	.L679
.L674:
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
	bnez.n	a10, .L689
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
	beqz.n	a10, .L689
	l32r	a6, .LC94
	movi.n	a7, 0
	bgez	a4, .L691
	l32r	a6, .LC93
	movi.n	a7, 0
.L691:
	bbci	a4, 31, .L692
	l32r	a5, .LC92
.L693:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L692:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L689
	l32r	a5, .LC92
.L694:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L693
	srai	a4, a8, 1
	j	.L694
.L689:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L704
	addi.n	a8, a4, -1
	bltui	a8, 4, .L705
	or	a8, a2, a3
	extui	a8, a8, 0, 2
	bnez.n	a8, .L705
	srli	a8, a4, 2
	slli	a10, a8, 2
	addi	a10, a10, -4
	srli	a10, a10, 2
	addi.n	a10, a10, 1
	mov.n	a9, a2
	slli	a12, a8, 2
	addx4	a13, a8, a3
	blti	a10, 3, .L727
	addi.n	a10, a10, -1
	l32i	a8, a3, 0
	l32i	a11, a2, 0
	loop	a10, .L706_LEND
.L706:
	xor	a8, a8, a11
	s32i	a8, a9, 0
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	l32i	a8, a3, 0
	l32i	a11, a9, 0
	.L706_LEND:
	xor	a8, a8, a11
	s32i	a8, a9, 0
.L728:
	add.n	a8, a2, a12
	sub	a10, a4, a12
	beq	a4, a12, .L704
	l8ui	a9, a8, 0
	l8ui	a11, a13, 0
	xor	a9, a9, a11
	s8i	a9, a8, 0
	beqi	a10, 1, .L704
	l8ui	a11, a8, 1
	l8ui	a9, a13, 1
	xor	a9, a9, a11
	s8i	a9, a8, 1
	beqi	a10, 2, .L704
	l8ui	a10, a8, 2
	l8ui	a9, a13, 2
	xor	a9, a9, a10
	s8i	a9, a8, 2
	j	.L704
.L705:
	mov.n	a9, a2
	blti	a4, 3, .L729
	addi.n	a4, a4, -1
	l8ui	a8, a3, 0
	l8ui	a10, a2, 0
.L708:
	xor	a8, a8, a10
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
	l8ui	a8, a3, 0
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L708
	xor	a8, a8, a10
	s8i	a8, a9, 0
.L704:
	retw.n
.L729:
	l8ui	a10, a9, 0
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	xor	a8, a8, a10
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L729
	j	.L704
.L727:
	l32i	a11, a9, 0
	l32i	a8, a3, 0
	addi.n	a3, a3, 4
	xor	a8, a8, a11
	s32i	a8, a9, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, -1
	bnez.n	a10, .L727
	j	.L728
	.size	memxor, .-memxor
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L737
	mov.n	a8, a2
.L732:
	l8ui	a9, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a9, .L732
	j	.L731
.L737:
	mov.n	a8, a2
.L731:
	beqz.n	a4, .L734
	j	.L733
.L735:
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L733
	j	.L734
.L733:
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	s8i	a9, a8, 0
	bnez.n	a9, .L735
	j	.L736
.L734:
	movi.n	a9, 0
	s8i	a9, a8, 0
.L736:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a3, .L745
	j	.L746
.L748:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L746
	j	.L745
.L746:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L748
.L745:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L756
	j	.L760
.L758:
	beq	a9, a10, .L757
.L759:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L758
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a10, .L760
.L756:
	mov.n	a8, a3
	j	.L759
.L760:
	mov.n	a2, a10
.L757:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L766:
	l8ui	a9, a8, 0
	sub	a10, a3, a9
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L766
	retw.n
	.size	strrchr, .-strrchr
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 32
	l8ui	a7, a3, 0
	mov.n	a10, a2
	beqz.n	a7, .L780
	mov.n	a8, a3
.L770:
	l8ui	a11, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a11, .L770
	sub	a9, a8, a3
	mov.n	a2, a10
	beq	a8, a3, .L768
	addi.n	a5, a3, -1
	add.n	a5, a5, a9
	movi.n	a13, 1
	j	.L788
.L774:
	l8ui	a2, a14, 0
	l8ui	a12, a9, 1
	addi.n	a8, a9, 1
	bnez.n	a2, .L772
	j	.L773
.L772:
	mov.n	a9, a8
	j	.L776
.L781:
	mov.n	a12, a7
	mov.n	a9, a3
	mov.n	a14, a10
.L776:
	sub	a8, a9, a5
	mov.n	a15, a11
	sub	a6, a2, a12
	movnez	a15, a13, a8
	mov.n	a4, a11
	mov.n	a8, a11
	addi.n	a14, a14, 1
	movnez	a4, a13, a12
	moveqz	a8, a13, a6
	beqz.n	a15, .L773
	bany	a4, a8, .L774
.L773:
	beq	a2, a12, .L780
	addi.n	a10, a10, 1
.L788:
	l8ui	a2, a10, 0
	beq	a2, a7, .L781
	addi.n	a10, a10, 1
	bnez.n	a2, .L788
	j	.L768
.L780:
	mov.n	a2, a10
.L768:
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
	l32r	a8, .LC97
	movi.n	a12, 0
	movi.n	a13, 0
	bgez	a10, .L798
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a8
	blti	a10, 1, .L793
	j	.L792
.L798:
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L793
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L793
.L792:
	l32r	a10, .LC98
	xor	a2, a2, a10
.L793:
	retw.n
	.size	copysign, .-copysign
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	beqz.n	a5, .L799
	bltu	a3, a5, .L810
	sub	a3, a3, a5
	add.n	a13, a2, a3
	bltu	a13, a2, .L810
	l8ui	a15, a4, 0
	addi.n	a5, a5, -1
	addi.n	a4, a4, 1
.L805:
	l8ui	a8, a2, 0
	addi.n	a14, a2, 1
	bne	a8, a15, .L809
	mov.n	a9, a4
	beqz.n	a5, .L799
.L804:
	mov.n	a8, a14
	mov.n	a10, a5
	j	.L802
.L803:
	addi.n	a9, a9, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L802
	j	.L799
.L802:
	l8ui	a12, a8, 0
	l8ui	a11, a9, 0
	addi.n	a8, a8, 1
	beq	a12, a11, .L803
	bltu	a13, a14, .L810
	l8ui	a8, a14, 0
	addi.n	a2, a14, 1
	bne	a8, a15, .L801
	mov.n	a8, a14
	mov.n	a9, a4
	mov.n	a14, a2
	mov.n	a2, a8
	j	.L804
.L809:
	mov.n	a2, a14
.L801:
	bgeu	a13, a2, .L805
.L810:
	movi.n	a2, 0
.L799:
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
	beqz.n	a4, .L819
	l32r	a8, .LC99
	mov.n	a12, a4
	mov.n	a10, a2
	callx8	a8
.L819:
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
	.literal .LC112, __adddf3@PLT
	.literal .LC113, 1071644672
	.literal .LC114, 1072693248
	.literal .LC115, -1075838976
	.literal .LC116, -1074790400
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	l32r	a8, .LC101
	mov.n	a6, a2
	s32i	a8, sp, 12
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	mov.n	a7, a3
	mov.n	a2, a4
	callx8	a8
	bgez	a10, .L845
	l32r	a10, .LC102
	l32r	a14, .LC104
	l32r	a12, .LC116
	xor	a4, a6, a10
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	mov.n	a5, a3
	callx8	a14
	blti	a10, 1, .L835
	l32r	a14, .LC106
	l32r	a12, .LC115
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a14
	bgei	a10, 1, .L836
	j	.L829
.L845:
	l32r	a8, .LC114
	movi.n	a9, 0
	l32r	a3, .LC108
	s32i.n	a8, sp, 0
	mov.n	a12, a8
	s32i.n	a9, sp, 4
	mov.n	a13, a9
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a3
	movi.n	a8, 0
	s32i	a8, sp, 8
	bgez	a10, .L826
	l32r	a8, .LC113
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	mov.n	a12, a8
	l32i	a8, sp, 12
	s32i.n	a9, sp, 4
	mov.n	a13, a9
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a8
	bgez	a10, .L829
	l32r	a8, .LC110
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a8
	bnez.n	a10, .L838
.L829:
	movi.n	a8, 0
	s32i	a8, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	j	.L823
.L835:
	movi.n	a8, 1
	s32i	a8, sp, 8
	l32r	a8, .LC114
	movi.n	a9, 0
	l32r	a3, .LC108
	mov.n	a6, a4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L826:
	l32r	a5, .LC111
	movi.n	a4, 0
	mov.n	a8, a3
	mov.n	a3, a5
	mov.n	a5, a4
	mov.n	a4, a2
	mov.n	a2, a8
.L832:
	l32r	a12, .LC113
	mov.n	a10, a6
	mov.n	a11, a7
	movi.n	a13, 0
	callx8	a3
	mov.n	a6, a10
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	mov.n	a10, a6
	addi.n	a5, a5, 1
	mov.n	a7, a11
	callx8	a2
	bgez	a10, .L832
	mov.n	a2, a4
	mov.n	a4, a5
	j	.L833
.L836:
	movi.n	a8, 1
	s32i	a8, sp, 8
	l32r	a8, .LC113
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	j	.L827
.L838:
	mov.n	a4, a6
	mov.n	a5, a7
.L827:
	mov.n	a7, a5
	l32i	a3, sp, 12
	l32r	a5, .LC112
	mov.n	a6, a4
	movi.n	a4, 0
.L834:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	mov.n	a10, a6
	addi.n	a4, a4, -1
	mov.n	a7, a11
	callx8	a3
	bltz	a10, .L834
.L833:
	l32i	a8, sp, 8
	s32i	a4, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	beqz.n	a8, .L823
	l32r	a8, .LC102
	xor	a2, a6, a8
.L823:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC117, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	or	a9, a3, a2
	mov.n	a8, a2
	mov.n	a6, a3
	beqz.n	a9, .L851
	l32r	a9, .LC117
	movi.n	a3, 0
	s32i	a9, sp, 4
	mov.n	a2, a3
.L850:
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
	bltu	a11, a3, .L849
	movi.n	a13, 0
.L849:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L850
	j	.L846
.L851:
	mov.n	a3, a9
	mov.n	a2, a9
.L846:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L855
	j	.L854
.L858:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L856
	beqz.n	a8, .L856
.L854:
	bgez	a3, .L858
	j	.L855
.L856:
	movi.n	a9, 0
	beqz.n	a8, .L859
.L855:
	movi.n	a9, 0
.L861:
	bltu	a2, a3, .L860
	sub	a2, a2, a3
	or	a9, a9, a8
.L860:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L861
.L859:
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
	bne	a2, a9, .L885
	beq	a3, a2, .L886
.L885:
	nsau	a2, a8
	addi	a2, a2, 32
	nsau	a8, a10
	movnez	a2, a8, a10
	addi.n	a2, a2, -1
	j	.L879
.L886:
	movi.n	a2, 0x3f
.L879:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L890
	movi.n	a2, 0
.L889:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L889
	j	.L887
.L890:
.L887:
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	movi.n	a10, -8
	srli	a8, a4, 3
	and	a10, a4, a10
	bgeu	a2, a3, .L893
.L896:
	bnez.n	a8, .L894
	j	.L936
.L893:
	add.n	a9, a3, a4
	bltu	a9, a2, .L896
	addi.n	a8, a4, -1
	beqz.n	a4, .L892
	blti	a4, 3, .L937
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	j	.L897
.L894:
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	mov.n	a11, a3
	mov.n	a9, a2
	blti	a8, 3, .L938
	addi.n	a8, a8, -1
	l32i	a12, a3, 0
	l32i	a13, a3, 4
	s32i	a12, a2, 0
	s32i	a13, a2, 4
	loop	a8, .L899_LEND
.L899:
	addi.n	a9, a9, 8
	addi.n	a11, a11, 8
	l32i	a12, a11, 0
	l32i	a13, a11, 4
	s32i	a12, a9, 0
	s32i	a13, a9, 4
	.L899_LEND:
	j	.L939
.L936:
	add.n	a11, a2, a10
	add.n	a8, a3, a10
	bnez.n	a4, .L901
	j	.L892
.L939:
	bgeu	a10, a4, .L892
	sub	a13, a4, a10
	addi.n	a8, a13, -1
	add.n	a11, a2, a10
	bgeui	a8, 7, .L922
	add.n	a8, a3, a10
	j	.L901
.L922:
	addi.n	a9, a10, 1
	add.n	a9, a3, a9
	sub	a9, a11, a9
	add.n	a8, a3, a10
	bltui	a9, 3, .L901
	or	a9, a8, a11
	extui	a9, a9, 0, 2
	bnez.n	a9, .L901
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	addi.n	a9, a9, 1
	slli	a14, a14, 2
	blti	a9, 3, .L940
	addi.n	a9, a9, -1
	l32i	a12, a8, 0
	s32i	a12, a11, 0
	loop	a9, .L903_LEND
.L903:
	addi.n	a8, a8, 4
	l32i	a12, a8, 0
	addi.n	a11, a11, 4
	s32i	a12, a11, 0
	.L903_LEND:
.L941:
	add.n	a10, a10, a14
	beq	a13, a14, .L892
	add.n	a8, a3, a10
	l8ui	a9, a8, 0
	add.n	a8, a2, a10
	s8i	a9, a8, 0
	addi.n	a8, a10, 1
	bgeu	a8, a4, .L892
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a10, a10, 2
	bgeu	a10, a4, .L892
	add.n	a3, a3, a10
	l8ui	a8, a3, 0
	add.n	a10, a2, a10
	s8i	a8, a10, 0
	j	.L892
.L901:
	add.n	a3, a3, a4
	sub	a3, a3, a8
	blti	a3, 3, .L942
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a11, 0
.L905:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	addi.n	a11, a11, 1
	s8i	a9, a11, 0
	addi.n	a3, a3, -1
	bnez.n	a3, .L905
	j	.L892
.L897:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L897
.L892:
	retw.n
.L942:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a11, 0
	addi.n	a11, a11, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L942
	j	.L892
.L940:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a11, 0
	addi.n	a11, a11, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L940
	j	.L941
.L938:
	l32i	a12, a11, 0
	l32i	a13, a11, 4
	s32i	a12, a9, 0
	s32i	a13, a9, 4
	addi.n	a11, a11, 8
	addi.n	a9, a9, 8
	addi.n	a8, a8, -1
	bnez.n	a8, .L938
	j	.L939
.L937:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L937
	j	.L892
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a12, a4, 1
	bgeu	a2, a3, .L944
.L947:
	bnez.n	a12, .L945
	j	.L946
.L944:
	add.n	a8, a3, a4
	bltu	a8, a2, .L947
	addi.n	a8, a4, -1
	beqz.n	a4, .L943
	blti	a4, 3, .L979
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	j	.L948
.L945:
	addi.n	a8, a12, -1
	movi.n	a9, 8
	bgeu	a9, a8, .L950
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L950
	addi.n	a8, a3, 2
	beq	a2, a8, .L950
	srli	a13, a4, 2
	slli	a8, a13, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a14, a13, 2
	blti	a8, 3, .L980
	addi.n	a8, a8, -1
	l32i	a11, a3, 0
	s32i	a11, a2, 0
	loop	a8, .L951_LEND
.L951:
	addi.n	a10, a10, 4
	l32i	a11, a10, 0
	addi.n	a9, a9, 4
	s32i	a11, a9, 0
	.L951_LEND:
.L981:
	add.n	a13, a13, a13
	beq	a12, a13, .L946
	add.n	a8, a3, a14
	l16ui	a8, a8, 0
	add.n	a14, a2, a14
	s16i	a8, a14, 0
	j	.L946
.L950:
	add.n	a8, a12, a12
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	blti	a8, 3, .L982
	addi.n	a8, a8, -1
	l16ui	a11, a3, 0
	s16i	a11, a2, 0
	loop	a8, .L953_LEND
.L953:
	addi.n	a10, a10, 2
	l16ui	a11, a10, 0
	addi.n	a9, a9, 2
	s16i	a11, a9, 0
	.L953_LEND:
.L946:
	bbci	a4, 31, .L943
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a4, a2, a4
	s8i	a8, a4, 0
	j	.L943
.L948:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L948
.L943:
	retw.n
.L982:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	addi.n	a8, a8, -1
	bnez.n	a8, .L982
	j	.L946
.L980:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L980
	j	.L981
.L979:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L979
	j	.L943
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	movi.n	a10, -4
	srli	a8, a4, 2
	and	a10, a4, a10
	bgeu	a2, a3, .L984
.L987:
	bnez.n	a8, .L985
	j	.L1027
.L984:
	add.n	a9, a3, a4
	bltu	a9, a2, .L987
	addi.n	a8, a4, -1
	beqz.n	a4, .L983
	blti	a4, 3, .L1028
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	j	.L988
.L985:
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	mov.n	a11, a3
	mov.n	a9, a2
	blti	a8, 3, .L1029
	addi.n	a8, a8, -1
	l32i	a12, a3, 0
	s32i	a12, a2, 0
	loop	a8, .L990_LEND
.L990:
	addi.n	a11, a11, 4
	l32i	a12, a11, 0
	addi.n	a9, a9, 4
	s32i	a12, a9, 0
	.L990_LEND:
	j	.L1030
.L1027:
	add.n	a11, a2, a10
	add.n	a8, a3, a10
	bnez.n	a4, .L992
	j	.L983
.L1030:
	bgeu	a10, a4, .L983
	sub	a13, a4, a10
	addi.n	a8, a13, -1
	add.n	a11, a2, a10
	bgeui	a8, 7, .L1013
	add.n	a8, a3, a10
	j	.L992
.L1013:
	addi.n	a9, a10, 1
	add.n	a9, a3, a9
	sub	a9, a11, a9
	add.n	a8, a3, a10
	bltui	a9, 3, .L992
	or	a9, a8, a11
	extui	a9, a9, 0, 2
	bnez.n	a9, .L992
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	addi.n	a9, a9, 1
	slli	a14, a14, 2
	blti	a9, 3, .L1031
	addi.n	a9, a9, -1
	l32i	a12, a8, 0
	s32i	a12, a11, 0
	loop	a9, .L994_LEND
.L994:
	addi.n	a8, a8, 4
	l32i	a12, a8, 0
	addi.n	a11, a11, 4
	s32i	a12, a11, 0
	.L994_LEND:
.L1032:
	add.n	a10, a10, a14
	beq	a13, a14, .L983
	add.n	a8, a3, a10
	l8ui	a9, a8, 0
	add.n	a8, a2, a10
	s8i	a9, a8, 0
	addi.n	a8, a10, 1
	bgeu	a8, a4, .L983
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a10, a10, 2
	bgeu	a10, a4, .L983
	add.n	a3, a3, a10
	l8ui	a8, a3, 0
	add.n	a10, a2, a10
	s8i	a8, a10, 0
	j	.L983
.L992:
	add.n	a3, a3, a4
	sub	a3, a3, a8
	blti	a3, 3, .L1033
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a11, 0
.L996:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	addi.n	a11, a11, 1
	s8i	a9, a11, 0
	addi.n	a3, a3, -1
	bnez.n	a3, .L996
	j	.L983
.L988:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L988
.L983:
	retw.n
.L1033:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a11, 0
	addi.n	a11, a11, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L1033
	j	.L983
.L1031:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a11, 0
	addi.n	a11, a11, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L1031
	j	.L1032
.L1029:
	l32i	a12, a11, 0
	addi.n	a11, a11, 4
	s32i	a12, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L1029
	j	.L1030
.L1028:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L1028
	j	.L983
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
	l32r	a8, .LC118
	mov.n	a10, a2
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
	l32r	a8, .LC119
	mov.n	a10, a2
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
	l32r	a8, .LC120
	mov.n	a10, a2
	mov.n	a11, a3
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
	l32r	a8, .LC121
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
	bbsi	a2, 16, .L1043
	srai	a2, a8, 14
	bnez.n	a2, .L1040
	srai	a9, a8, 13
	bnez.n	a9, .L1044
	srai	a9, a8, 12
	bnez.n	a9, .L1045
	srai	a9, a8, 11
	bnez.n	a9, .L1046
	srai	a9, a8, 10
	bnez.n	a9, .L1047
	srai	a9, a8, 9
	bnez.n	a9, .L1048
	srai	a9, a8, 8
	bnez.n	a9, .L1049
	srai	a9, a8, 7
	bnez.n	a9, .L1050
	srai	a9, a8, 6
	bnez.n	a9, .L1051
	srai	a9, a8, 5
	bnez.n	a9, .L1052
	srai	a9, a8, 4
	bnez.n	a9, .L1053
	srai	a9, a8, 3
	bnez.n	a9, .L1054
	srai	a9, a8, 2
	bnez.n	a9, .L1055
	srai	a9, a8, 1
	bnez.n	a9, .L1056
	nsau	a8, a8
	srli	a8, a8, 5
	addi.n	a2, a8, 15
	j	.L1040
.L1043:
	movi.n	a2, 0
	j	.L1040
.L1044:
	movi.n	a2, 2
	j	.L1040
.L1045:
	movi.n	a2, 3
	j	.L1040
.L1046:
	movi.n	a2, 4
	j	.L1040
.L1047:
	movi.n	a2, 5
	j	.L1040
.L1048:
	movi.n	a2, 6
	j	.L1040
.L1049:
	movi.n	a2, 7
	j	.L1040
.L1050:
	movi.n	a2, 8
	j	.L1040
.L1051:
	movi.n	a2, 9
	j	.L1040
.L1052:
	movi.n	a2, 0xa
	j	.L1040
.L1053:
	movi.n	a2, 0xb
	j	.L1040
.L1054:
	movi.n	a2, 0xc
	j	.L1040
.L1055:
	movi.n	a2, 0xd
	j	.L1040
.L1056:
	movi.n	a2, 0xe
.L1040:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	bbsi	a2, 31, .L1061
	bbsi	a8, 30, .L1062
	bbsi	a8, 29, .L1063
	bbsi	a8, 28, .L1064
	bbsi	a8, 27, .L1065
	bbsi	a8, 26, .L1066
	bbsi	a8, 25, .L1067
	bbsi	a8, 24, .L1068
	bbsi	a8, 23, .L1069
	bbsi	a8, 22, .L1070
	bbsi	a8, 21, .L1071
	bbsi	a8, 20, .L1072
	bbsi	a8, 19, .L1073
	bbsi	a8, 18, .L1074
	bbsi	a8, 17, .L1075
	srai	a2, a8, 15
	nsau	a2, a2
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L1058
.L1061:
	movi.n	a2, 0
	j	.L1058
.L1062:
	movi.n	a2, 1
	j	.L1058
.L1063:
	movi.n	a2, 2
	j	.L1058
.L1064:
	movi.n	a2, 3
	j	.L1058
.L1065:
	movi.n	a2, 4
	j	.L1058
.L1066:
	movi.n	a2, 5
	j	.L1058
.L1067:
	movi.n	a2, 6
	j	.L1058
.L1068:
	movi.n	a2, 7
	j	.L1058
.L1069:
	movi.n	a2, 8
	j	.L1058
.L1070:
	movi.n	a2, 9
	j	.L1058
.L1071:
	movi.n	a2, 0xa
	j	.L1058
.L1072:
	movi.n	a2, 0xb
	j	.L1058
.L1073:
	movi.n	a2, 0xc
	j	.L1058
.L1074:
	movi.n	a2, 0xd
	j	.L1058
.L1075:
	movi.n	a2, 0xe
.L1058:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC126, 0x47000000
	.literal .LC127, __gesf2@PLT
	.literal .LC128, __subsf3@PLT
	.literal .LC129, __fixsfsi@PLT
	.literal .LC130, 32768
	.literal .LC131, .LC126
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a9, .LC131
	l32r	a8, .LC127
	l32i.n	a11, a9, 0
	mov.n	a10, a2
	callx8	a8
	bltz	a10, .L1082
	l32r	a9, .LC131
	l32r	a8, .LC128
	l32i.n	a11, a9, 0
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC129
	callx8	a8
	l32r	a8, .LC130
	add.n	a2, a10, a8
	j	.L1077
.L1082:
	l32r	a8, .LC129
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
.L1077:
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
	beqz.n	a2, .L1088
	movi.n	a2, 0
.L1087:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L1087
	j	.L1085
.L1088:
.L1085:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L1090
	j	.L1097
.L1092:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srli	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
.L1097:
	bnez.n	a3, .L1092
.L1090:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L1100
	j	.L1099
.L1103:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1101
	beqz.n	a8, .L1101
.L1099:
	bgez	a3, .L1103
	j	.L1100
.L1101:
	movi.n	a9, 0
	beqz.n	a8, .L1104
.L1100:
	movi.n	a9, 0
.L1106:
	bltu	a2, a3, .L1105
	sub	a2, a2, a3
	or	a9, a9, a8
.L1105:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1106
.L1104:
	moveqz	a2, a9, a4
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
	l32r	a8, .LC132
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, -1
	bltz	a10, .L1121
	l32r	a8, .LC133
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L1121
	movi.n	a2, 0
.L1121:
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
	l32r	a8, .LC134
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, -1
	bltz	a10, .L1125
	l32r	a8, .LC135
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L1125
	movi.n	a2, 0
.L1125:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC136, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	l32r	a8, .LC136
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
	.literal .LC137, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	l32r	a8, .LC137
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
	bgez	a3, .L1132
	neg	a3, a3
	movi.n	a11, 1
	j	.L1133
.L1132:
	beqz.n	a3, .L1137
	movi.n	a11, 0
.L1133:
	movi.n	a10, 0
	mov.n	a9, a10
.L1135:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a2
	addi.n	a9, a9, 1
	srai	a3, a3, 1
	extui	a9, a9, 0, 8
	add.n	a10, a10, a8
	add.n	a2, a2, a2
	beqz.n	a3, .L1138
	bnei	a9, 32, .L1135
.L1138:
	neg	a3, a10
	movnez	a10, a3, a11
	mov.n	a2, a10
	j	.L1131
.L1137:
	mov.n	a2, a3
.L1131:
	retw.n
	.size	__mulhi3, .-__mulhi3
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a10, 0
	bgez	a2, .L1146
	mov.n	a8, a10
	neg	a2, a2
	movi.n	a10, 1
.L1146:
	bgez	a3, .L1147
	neg	a3, a3
	mov.n	a10, a8
.L1147:
	mov.n	a9, a2
	movi.n	a8, 1
	bgeu	a3, a2, .L1149
	j	.L1148
.L1167:
	bnez.n	a8, .L1149
.L1168:
	mov.n	a2, a8
	j	.L1150
.L1148:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1167
	bnez.n	a8, .L1148
	j	.L1168
.L1149:
	movi.n	a2, 0
.L1155:
	bltu	a9, a3, .L1154
	sub	a9, a9, a3
	or	a2, a2, a8
.L1154:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1155
.L1150:
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
	bgez	a2, .L1171
	neg	a2, a2
	movi.n	a11, 1
.L1171:
	abs	a8, a3
	mov.n	a10, a2
	movi.n	a9, 1
	bgeu	a8, a2, .L1193
	j	.L1172
.L1191:
	bnez.n	a9, .L1193
.L1192:
	mov.n	a10, a2
	j	.L1174
.L1172:
	add.n	a8, a8, a8
	add.n	a9, a9, a9
	bgeu	a8, a2, .L1191
	bnez.n	a9, .L1172
	j	.L1192
.L1193:
	srli	a9, a9, 1
	bltu	a10, a8, .L1178
	sub	a10, a10, a8
.L1178:
	srli	a8, a8, 1
	bnez.n	a9, .L1193
.L1174:
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
	bltu	a11, a13, .L1196
	bne	a11, a13, .L1225
	mov.n	a9, a12
	movi.n	a2, 0
	j	.L1202
.L1200:
	extui	a9, a9, 0, 16
	bgeu	a8, a13, .L1198
	beqz.n	a9, .L1198
	mov.n	a12, a9
	mov.n	a11, a8
.L1196:
	add.n	a8, a11, a11
	sext	a10, a11, 15
	add.n	a9, a12, a12
	extui	a8, a8, 0, 16
	bgez	a10, .L1200
	j	.L1255
.L1198:
	mov.n	a2, a13
	beqz.n	a9, .L1202
	bltu	a13, a8, .L1203
	sub	a13, a13, a8
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	extui	a13, a13, 0, 16
	mov.n	a11, a8
	mov.n	a12, a9
	j	.L1204
.L1203:
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	mov.n	a12, a9
	mov.n	a11, a8
	movi.n	a9, 0
	j	.L1204
.L1222:
	sub	a13, a13, a11
	extui	a13, a13, 0, 16
	mov.n	a9, a12
.L1223:
	extui	a14, a12, 1, 16
	srli	a10, a11, 1
	beqz.n	a14, .L1240
.L1204:
	bltu	a13, a10, .L1205
	sub	a10, a13, a10
	or	a14, a9, a14
	extui	a13, a10, 0, 16
	extui	a9, a14, 0, 16
.L1205:
	extui	a8, a12, 2, 16
	srli	a10, a11, 2
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1206
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1206:
	extui	a8, a12, 3, 16
	srli	a10, a11, 3
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1207
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1207:
	extui	a8, a12, 4, 16
	srli	a10, a11, 4
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1208
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1208:
	extui	a8, a12, 5, 16
	srli	a10, a11, 5
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1209
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1209:
	extui	a8, a12, 6, 16
	srli	a10, a11, 6
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1210
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1210:
	extui	a8, a12, 7, 16
	srli	a10, a11, 7
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1211
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1211:
	extui	a8, a12, 8, 16
	srli	a10, a11, 8
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1212
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1212:
	extui	a8, a12, 9, 16
	srli	a10, a11, 9
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1213
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1213:
	extui	a8, a12, 10, 16
	srli	a10, a11, 10
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1214
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1214:
	extui	a8, a12, 11, 16
	srli	a10, a11, 11
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1215
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1215:
	extui	a8, a12, 12, 16
	srli	a10, a11, 12
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1216
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1216:
	extui	a8, a12, 13, 16
	srli	a10, a11, 13
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1217
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1217:
	extui	a8, a12, 14, 16
	srli	a10, a11, 14
	beqz.n	a8, .L1240
	bltu	a13, a10, .L1218
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1218:
	extui	a12, a12, 15, 16
	srli	a11, a11, 15
	bnez.n	a12, .L1219
	j	.L1240
.L1225:
	mov.n	a2, a13
	movi.n	a9, 0
	j	.L1202
.L1240:
	mov.n	a2, a13
	j	.L1202
.L1219:
	movi.n	a2, 0
	bltu	a13, a11, .L1202
	movi.n	a8, 1
	sub	a11, a13, a11
	or	a8, a9, a8
	extui	a2, a11, 0, 16
	extui	a9, a8, 0, 16
	j	.L1202
.L1255:
	movi.n	a9, 0
	bltu	a13, a11, .L1223
	j	.L1222
.L1202:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L1259
	j	.L1258
.L1262:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1260
	beqz.n	a8, .L1260
.L1258:
	bgez	a3, .L1262
	j	.L1259
.L1260:
	movi.n	a9, 0
	beqz.n	a8, .L1263
.L1259:
	movi.n	a9, 0
.L1265:
	bltu	a2, a3, .L1264
	sub	a2, a2, a3
	or	a9, a9, a8
.L1264:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1265
.L1263:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L1281
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L1282
.L1281:
	beqz.n	a4, .L1283
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L1282:
	mov.n	a3, a8
.L1283:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1286
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L1287
.L1286:
	beqz.n	a4, .L1288
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1287:
	mov.n	a2, a8
.L1288:
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
	.literal .LC138, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	l32r	a8, .LC138
	movi.n	a12, 1
	bgeu	a8, a2, .L1293
	movi.n	a12, 0
.L1293:
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
	add.n	a11, a11, a12
	addi	a12, a9, -2
	neg	a12, a12
	ssr	a12
	srl	a8, a8
	movi.n	a14, 2
	addi	a2, a8, -2
	add.n	a10, a10, a11
	and	a8, a8, a14
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
	blt	a8, a4, .L1294
	movi.n	a2, 2
	blt	a4, a8, .L1294
	movi.n	a2, 0
	bltu	a3, a5, .L1294
	movi.n	a2, 2
	bltu	a5, a3, .L1294
	movi.n	a2, 1
.L1294:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	blt	a8, a4, .L1300
	movi.n	a2, 1
	blt	a4, a8, .L1300
	movi.n	a2, -1
	bltu	a3, a5, .L1300
	movi.n	a2, 1
	bltu	a5, a3, .L1300
	movi.n	a2, 0
.L1300:
	retw.n
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	entry	sp, 32
	movi.n	a10, 0
	extui	a8, a2, 0, 16
	movi.n	a12, 1
	movnez	a12, a10, a8
	slli	a12, a12, 4
	ssr	a12
	srl	a8, a2
	extui	a9, a8, 0, 8
	movi.n	a11, 1
	movnez	a11, a10, a9
	ssa8l	a11
	srl	a8, a8
	extui	a13, a8, 0, 4
	movi.n	a9, 1
	movnez	a9, a10, a13
	slli	a9, a9, 2
	ssr	a9
	srl	a8, a8
	addx8	a11, a11, a12
	add.n	a9, a9, a11
	movi.n	a2, 1
	extui	a11, a8, 0, 2
	movnez	a2, a10, a11
	add.n	a2, a2, a2
	ssr	a2
	srl	a8, a8
	extui	a8, a8, 0, 2
	movi.n	a11, -1
	srli	a10, a8, 1
	addi	a10, a10, -2
	xor	a8, a8, a11
	neg	a10, a10
	extui	a8, a8, 0, 1
	mul16u	a8, a8, a10
	add.n	a2, a2, a9
	add.n	a2, a8, a2
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1308
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L1309
.L1308:
	beqz.n	a4, .L1310
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1309:
	mov.n	a2, a8
.L1310:
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
	mul16u	a11, a3, a5
	extui	a10, a3, 16, 16
	mul16u	a9, a5, a10
	extui	a8, a11, 16, 16
	mull	a2, a5, a2
	extui	a5, a5, 16, 16
	add.n	a9, a9, a8
	mul16u	a8, a3, a5
	mul16u	a10, a10, a5
	extui	a12, a9, 0, 16
	add.n	a8, a8, a12
	extui	a9, a9, 16, 16
	mull	a4, a3, a4
	add.n	a9, a9, a10
	extui	a10, a8, 16, 16
	add.n	a9, a9, a10
	extui	a11, a11, 0, 16
	slli	a8, a8, 16
	add.n	a9, a4, a9
	add.n	a2, a9, a2
	add.n	a3, a11, a8
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
	l32r	a2, .LC140
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
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
	xor	a2, a8, a2
	srli	a9, a2, 8
	xor	a9, a9, a2
	srli	a8, a9, 4
	l32r	a2, .LC141
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
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
	l32r	a10, .LC142
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L1321
	addi.n	a2, a2, -1
.L1321:
	l32r	a9, .LC143
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
	bgeu	a8, a3, .L1322
	addi.n	a10, a10, 1
.L1322:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a8, a11, .L1323
	addi.n	a9, a9, 1
.L1323:
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
	l32r	a9, .LC145
	srli	a8, a2, 1
	and	a8, a8, a9
	l32r	a10, .LC146
	sub	a2, a2, a8
	srli	a9, a2, 2
	and	a9, a9, a10
	and	a2, a2, a10
	add.n	a9, a9, a2
	l32r	a10, .LC147
	srli	a8, a9, 4
	add.n	a8, a8, a9
	and	a8, a8, a10
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
	mov.n	a7, a4
	s32i	a4, sp, 0
	mov.n	a5, a3
	mov.n	a4, a2
	bbci	a7, 31, .L1331
	l32r	a6, .LC149
	l32r	a2, .LC151
	movi.n	a3, 0
.L1328:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L1326
.L1331:
	l32r	a2, .LC151
	movi.n	a3, 0
.L1326:
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	srai	a7, a8, 1
	beqz.n	a7, .L1327
	l32r	a6, .LC149
.L1329:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a4, a10
	mov.n	a5, a11
	bbsi	a7, 31, .L1328
	srai	a7, a8, 1
	j	.L1329
.L1327:
	l32i	a8, sp, 0
	bgez	a8, .L1325
	l32r	a8, .LC150
	l32r	a10, .LC151
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L1325:
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
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a2, .LC155
	bbci	a3, 31, .L1333
	l32r	a5, .LC153
.L1335:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
	j	.L1333
.L1333:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1334
	l32r	a5, .LC153
.L1336:
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1335
	srai	a7, a8, 1
	j	.L1336
.L1334:
	bgez	a3, .L1332
	l32r	a8, .LC154
	l32r	a10, .LC155
	mov.n	a11, a2
	callx8	a8
	mov.n	a2, a10
.L1332:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L1339
	movi.n	a2, 2
	bltu	a4, a8, .L1339
	movi.n	a2, 0
	bltu	a3, a5, .L1339
	movi.n	a2, 2
	bltu	a5, a3, .L1339
	movi.n	a2, 1
.L1339:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	bltu	a8, a4, .L1345
	movi.n	a2, 1
	bltu	a4, a8, .L1345
	movi.n	a2, -1
	bltu	a3, a5, .L1345
	movi.n	a2, 1
	bltu	a5, a3, .L1345
	movi.n	a2, 0
.L1345:
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
