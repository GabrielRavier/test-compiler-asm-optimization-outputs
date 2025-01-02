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
	l32i	a9, sp, 8
	mull	a10, a5, a7
	addi.n	a7, a7, 1
	s32i	a7, a9, 0
	l32i	a9, sp, 4
	l32r	a8, .LC45
	l32i	a11, sp, 0
	mov.n	a12, a5
	add.n	a10, a9, a10
	callx8	a8
	mov.n	a3, a10
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
	beqz.n	a7, .L315
	movi.n	a4, 0
.L317:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	beqz.n	a10, .L314
	add.n	a3, a3, a5
	bne	a7, a4, .L317
.L315:
	movi.n	a2, 0
.L314:
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
	j	.L327
.L328:
	addi.n	a2, a2, 1
.L327:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L328
	movi.n	a8, 0x2b
	beq	a7, a8, .L329
	movi.n	a8, 0x2d
	beq	a7, a8, .L330
	j	.L342
.L329:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	mov.n	a13, a10
	bgeu	a8, a9, .L332
	j	.L326
.L330:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	bltu	a8, a9, .L326
	movi.n	a13, 1
.L332:
	movi.n	a12, 9
.L335:
	l8ui	a7, a2, 1
	addx4	a8, a10, a10
	subx2	a10, a8, a9
	mov.n	a11, a9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	add.n	a8, a8, a8
	bgeu	a12, a9, .L335
	j	.L343
.L342:
	addi	a9, a7, -48
	movi.n	a8, 9
	mov.n	a13, a10
	bgeu	a8, a9, .L332
	j	.L326
.L343:
	sub	a11, a11, a8
	moveqz	a10, a11, a13
.L326:
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
	j	.L345
.L346:
	addi.n	a2, a2, 1
.L345:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L346
	movi.n	a8, 0x2b
	beq	a7, a8, .L347
	movi.n	a8, 0x2d
	bne	a7, a8, .L348
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	movi.n	a13, 1
	bgeu	a8, a9, .L349
	j	.L344
.L347:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	bltu	a8, a9, .L344
	mov.n	a13, a10
.L349:
	movi.n	a12, 9
.L352:
	l8ui	a7, a2, 1
	addx4	a8, a10, a10
	subx2	a10, a8, a9
	mov.n	a11, a9
	addi	a9, a7, -48
	addi.n	a2, a2, 1
	add.n	a8, a8, a8
	bgeu	a12, a9, .L352
	j	.L358
.L348:
	addi	a9, a7, -48
	movi.n	a8, 9
	mov.n	a13, a10
	bgeu	a8, a9, .L349
	j	.L344
.L358:
	sub	a11, a11, a8
	moveqz	a10, a11, a13
.L344:
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
	j	.L360
.L361:
	addi.n	a2, a2, 1
.L360:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	mov.n	a4, a10
	bnez.n	a10, .L361
	movi.n	a8, 0x2b
	beq	a7, a8, .L362
	movi.n	a8, 0x2d
	beq	a7, a8, .L363
	j	.L377
.L362:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bgeu	a8, a7, .L365
	j	.L372
.L363:
	l8ui	a7, a2, 1
	movi.n	a8, 9
	addi	a7, a7, -48
	addi.n	a3, a2, 1
	bltu	a8, a7, .L372
	movi.n	a4, 1
.L365:
	l32r	a8, .LC49
	movi.n	a11, 0
	s32i	a8, sp, 0
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L369:
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
	bgeu	a8, a7, .L368
	addi.n	a2, a2, -1
.L368:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L369
	j	.L378
.L377:
	addi	a7, a7, -48
	movi.n	a8, 9
	mov.n	a3, a2
	bgeu	a8, a7, .L365
	j	.L372
.L378:
	bnez.n	a4, .L359
	sub	a2, a13, a9
	bgeu	a10, a8, .L371
	addi.n	a2, a2, -1
.L371:
	sub	a11, a10, a8
	j	.L359
.L372:
	mov.n	a11, a4
	mov.n	a2, a4
.L359:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L392:
	beqz.n	a4, .L380
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L384
	beqz.n	a10, .L379
	add.n	a3, a2, a5
	sub	a4, a4, a7
	j	.L392
.L384:
	mov.n	a4, a7
	j	.L392
.L380:
	movi.n	a2, 0
.L379:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	bnez.n	a4, .L406
.L398:
	movi.n	a2, 0
	j	.L393
.L406:
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	addi.n	a4, a4, -1
	callx8	a6
	srai	a4, a4, 1
	beqz.n	a10, .L393
	blti	a10, 1, .L396
	add.n	a3, a2, a5
	bnez.n	a4, .L406
	j	.L398
.L396:
	beqz.n	a7, .L398
	mov.n	a4, a7
	j	.L406
.L393:
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
	bgeu	a3, a8, .L411
	addi.n	a2, a2, -1
.L411:
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
	bgeu	a3, a8, .L417
	addi.n	a2, a2, -1
.L417:
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
	bnez.n	a8, .L420
	j	.L423
.L422:
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	beqz.n	a8, .L423
.L420:
	bne	a3, a8, .L422
	j	.L419
.L423:
	mov.n	a2, a8
.L419:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L429
	j	.L428
.L430:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L429
.L428:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnez.n	a8, .L430
.L429:
	movi.n	a2, -1
	blt	a8, a9, .L427
	movi.n	a2, 1
	blt	a9, a8, .L427
	movi.n	a2, 0
.L427:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L437:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L437
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L442
	mov.n	a8, a2
.L441:
	l32i	a9, a8, 4
	addi.n	a8, a8, 4
	bnez.n	a9, .L441
	sub	a8, a8, a2
	srai	a2, a8, 2
	j	.L439
.L442:
	mov.n	a2, a8
.L439:
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	bnez.n	a4, .L445
	j	.L461
.L447:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L445
	j	.L461
.L445:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a10, a8, .L449
	bnez.n	a8, .L447
	j	.L449
.L451:
	movi.n	a2, 1
	blt	a8, a9, .L444
.L461:
	movi.n	a2, 0
	j	.L444
.L449:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bge	a9, a8, .L451
	movi.n	a2, -1
.L444:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L465
	j	.L474
.L467:
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L465
	j	.L474
.L465:
	l32i	a9, a2, 0
	bne	a9, a3, .L467
	j	.L464
.L474:
	movi.n	a2, 0
.L464:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L477
	j	.L490
.L479:
	addi.n	a3, a3, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L477
	j	.L490
.L477:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	beq	a10, a9, .L479
	j	.L491
.L482:
	movi.n	a2, 1
	blt	a9, a10, .L476
.L490:
	movi.n	a2, 0
	j	.L476
.L491:
	bge	a10, a9, .L482
	movi.n	a2, -1
.L476:
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
	beqz.n	a4, .L495
	l32r	a8, .LC54
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L495:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L506
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a9, a2
	addi.n	a10, a4, -1
	bltu	a12, a11, .L501
	beqz.n	a4, .L506
	blti	a4, 3, .L519
	mov.n	a4, a10
	l32i	a10, a3, 0
	s32i	a10, a2, 0
	j	.L502
.L501:
	beqz.n	a4, .L506
	slli	a9, a10, 2
	srli	a9, a9, 2
	addi.n	a9, a9, 1
	addx4	a8, a10, a3
	addx4	a10, a10, a2
	blti	a9, 3, .L520
	addi.n	a9, a9, -1
	l32i	a11, a8, 0
	s32i	a11, a10, 0
	loop	a9, .L504_LEND
.L504:
	addi	a8, a8, -4
	l32i	a11, a8, 0
	addi	a10, a10, -4
	s32i	a11, a10, 0
	.L504_LEND:
	j	.L506
.L502:
	addi.n	a8, a8, 4
	l32i	a10, a8, 0
	addi.n	a9, a9, 4
	s32i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L502
.L506:
	retw.n
.L520:
	l32i	a11, a8, 0
	addi	a10, a10, -4
	s32i	a11, a10, 4
	addi	a8, a8, -4
	addi.n	a9, a9, -1
	bnez.n	a9, .L520
	j	.L506
.L519:
	l32i	a10, a8, 0
	addi.n	a8, a8, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L519
	j	.L506
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L522
	mov.n	a8, a2
	blti	a4, 3, .L531
	addi.n	a4, a4, -1
	s32i	a3, a2, 0
.L523:
	addi.n	a8, a8, 4
	s32i	a3, a8, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L523
.L522:
	retw.n
.L531:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L531
	j	.L522
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	bgeu	a2, a3, .L533
	add.n	a8, a2, a4
	add.n	a3, a3, a4
	beqz.n	a4, .L532
	sub	a2, a8, a2
.L535:
	addi.n	a8, a8, -1
	l8ui	a9, a8, 0
	addi.n	a3, a3, -1
	s8i	a9, a3, 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L535
	j	.L532
.L533:
	beq	a2, a3, .L532
	beqz.n	a4, .L532
	addi.n	a8, a4, -1
	bltui	a8, 7, .L574
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L574
	addi.n	a8, a2, 1
	sub	a8, a3, a8
	bltui	a8, 3, .L574
	srli	a10, a4, 2
	slli	a8, a10, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	mov.n	a9, a3
	slli	a12, a10, 2
	addx4	a11, a10, a2
	blti	a8, 3, .L570
	addi.n	a8, a8, -1
	l32i	a10, a2, 0
	s32i	a10, a3, 0
	loop	a8, .L538_LEND
.L538:
	addi.n	a2, a2, 4
	l32i	a10, a2, 0
	addi.n	a9, a9, 4
	s32i	a10, a9, 0
	.L538_LEND:
.L571:
	add.n	a3, a3, a12
	sub	a8, a4, a12
	beq	a4, a12, .L532
	l8ui	a9, a11, 0
	s8i	a9, a3, 0
	beqi	a8, 1, .L532
	l8ui	a9, a11, 1
	s8i	a9, a3, 1
	beqi	a8, 2, .L532
	l8ui	a8, a11, 2
	s8i	a8, a3, 2
	j	.L532
.L574:
	blti	a4, 3, .L572
	addi.n	a4, a4, -1
	l8ui	a8, a2, 0
	s8i	a8, a3, 0
.L541:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	addi.n	a3, a3, 1
	s8i	a8, a3, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L541
.L532:
	retw.n
.L572:
	l8ui	a8, a2, 0
	addi.n	a2, a2, 1
	s8i	a8, a3, 0
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L572
	j	.L532
.L570:
	l32i	a10, a2, 0
	addi.n	a2, a2, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L570
	j	.L571
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	neg	a9, a4
	movi.n	a11, -1
	extui	a12, a9, 0, 6
	xor	a11, a4, a11
	srli	a13, a3, 1
	movi.n	a14, -1
	ssr	a11
	srl	a13, a13
	movi.n	a10, 0x20
	xor	a14, a12, a14
	add.n	a11, a2, a2
	and	a9, a9, a10
	ssl	a14
	sll	a11, a11
	and	a10, a4, a10
	mov.n	a8, a2
	ssl	a4
	sll	a2, a2
	ssl	a4
	sll	a4, a3
	ssr	a12
	srl	a3, a3
	ssr	a12
	srl	a8, a8
	or	a2, a13, a2
	or	a3, a11, a3
	movi.n	a11, 0
	movnez	a2, a4, a10
	movnez	a3, a8, a9
	movnez	a4, a11, a10
	movnez	a8, a11, a9
	or	a2, a8, a2
	or	a3, a3, a4
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	neg	a9, a4
	movi.n	a11, -1
	extui	a12, a9, 0, 6
	xor	a11, a4, a11
	add.n	a13, a2, a2
	movi.n	a14, -1
	ssl	a11
	sll	a13, a13
	movi.n	a10, 0x20
	xor	a14, a12, a14
	srli	a11, a3, 1
	and	a9, a9, a10
	ssr	a14
	srl	a11, a11
	and	a10, a4, a10
	mov.n	a8, a3
	ssr	a4
	srl	a3, a3
	ssr	a4
	srl	a4, a2
	ssl	a12
	sll	a2, a2
	ssl	a12
	sll	a8, a8
	or	a3, a13, a3
	or	a2, a11, a2
	movi.n	a11, 0
	movnez	a3, a4, a10
	movnez	a2, a8, a9
	movnez	a4, a11, a10
	movnez	a8, a11, a9
	or	a2, a2, a4
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
	loop	a10, .L591_LEND
.L591:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L589
	mov.n	a2, a8
	j	.L588
.L589:
	nop.n
	.L591_LEND:
	mov.n	a2, a11
.L588:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L594
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L594
	movi.n	a2, 1
.L596:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L596
.L594:
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
	l32r	a8, .LC56
	l32r	a11, .LC60
	mov.n	a10, a2
	callx8	a8
	mov.n	a7, a2
	movi.n	a2, 1
	bltz	a10, .L601
	l32r	a8, .LC58
	l32r	a11, .LC59
	mov.n	a10, a7
	callx8	a8
	bgei	a10, 1, .L601
	movi.n	a2, 0
.L601:
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
	l32r	a8, .LC62
	l32r	a12, .LC66
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L605
	l32r	a8, .LC64
	l32r	a12, .LC65
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L605
	movi.n	a2, 0
.L605:
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
	l32r	a8, .LC68
	l32r	a12, .LC72
	mov.n	a10, a2
	movi.n	a13, -1
	mov.n	a11, a3
	callx8	a8
	mov.n	a6, a2
	mov.n	a7, a3
	movi.n	a2, 1
	bltz	a10, .L609
	l32r	a8, .LC70
	l32r	a12, .LC71
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	bgei	a10, 1, .L609
	movi.n	a2, 0
.L609:
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
	.literal .LC80, 1073741824
	.literal .LC81, 1056964608
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	l32r	a8, .LC76
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	bnez.n	a10, .L615
	l32r	a8, .LC77
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC78
	mov.n	a11, a2
	callx8	a8
	beqz.n	a10, .L615
	l32r	a8, .LC80
	l32r	a7, .LC81
	movgez	a7, a8, a3
	bbci	a3, 31, .L618
	l32r	a6, .LC79
.L619:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L618:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L615
	l32r	a6, .LC79
.L620:
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L619
	srai	a3, a8, 1
	j	.L620
.L615:
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
	bnez.n	a10, .L630
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
	beqz.n	a10, .L630
	l32r	a6, .LC89
	movi.n	a7, 0
	bgez	a4, .L632
	l32r	a6, .LC88
	movi.n	a7, 0
.L632:
	bbci	a4, 31, .L633
	l32r	a5, .LC87
.L634:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L633:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L630
	l32r	a5, .LC87
.L635:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L634
	srai	a4, a8, 1
	j	.L635
.L630:
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
	bnez.n	a10, .L645
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
	beqz.n	a10, .L645
	l32r	a6, .LC97
	movi.n	a7, 0
	bgez	a4, .L647
	l32r	a6, .LC96
	movi.n	a7, 0
.L647:
	bbci	a4, 31, .L648
	l32r	a5, .LC95
.L649:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L648:
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	srai	a4, a8, 1
	beqz.n	a4, .L645
	l32r	a5, .LC95
.L650:
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a8, a4, 31, 1
	add.n	a8, a8, a4
	mov.n	a6, a10
	mov.n	a7, a11
	bbsi	a4, 31, .L649
	srai	a4, a8, 1
	j	.L650
.L645:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L660
	addi.n	a8, a4, -1
	bltui	a8, 4, .L661
	or	a8, a2, a3
	extui	a8, a8, 0, 2
	bnez.n	a8, .L661
	srli	a8, a4, 2
	slli	a10, a8, 2
	addi	a10, a10, -4
	srli	a10, a10, 2
	addi.n	a10, a10, 1
	mov.n	a9, a2
	slli	a12, a8, 2
	addx4	a13, a8, a3
	blti	a10, 3, .L683
	addi.n	a10, a10, -1
	l32i	a8, a3, 0
	l32i	a11, a2, 0
	loop	a10, .L662_LEND
.L662:
	xor	a8, a8, a11
	s32i	a8, a9, 0
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	l32i	a8, a3, 0
	l32i	a11, a9, 0
	.L662_LEND:
	xor	a8, a8, a11
	s32i	a8, a9, 0
.L684:
	add.n	a8, a2, a12
	sub	a10, a4, a12
	beq	a4, a12, .L660
	l8ui	a9, a8, 0
	l8ui	a11, a13, 0
	xor	a9, a9, a11
	s8i	a9, a8, 0
	beqi	a10, 1, .L660
	l8ui	a11, a8, 1
	l8ui	a9, a13, 1
	xor	a9, a9, a11
	s8i	a9, a8, 1
	beqi	a10, 2, .L660
	l8ui	a10, a8, 2
	l8ui	a9, a13, 2
	xor	a9, a9, a10
	s8i	a9, a8, 2
	j	.L660
.L661:
	mov.n	a9, a2
	blti	a4, 3, .L685
	addi.n	a4, a4, -1
	l8ui	a8, a3, 0
	l8ui	a10, a2, 0
.L664:
	xor	a8, a8, a10
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
	l8ui	a8, a3, 0
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L664
	xor	a8, a8, a10
	s8i	a8, a9, 0
.L660:
	retw.n
.L685:
	l8ui	a10, a9, 0
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	xor	a8, a8, a10
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L685
	j	.L660
.L683:
	l32i	a11, a9, 0
	l32i	a8, a3, 0
	addi.n	a3, a3, 4
	xor	a8, a8, a11
	s32i	a8, a9, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, -1
	bnez.n	a10, .L683
	j	.L684
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
	beqz.n	a4, .L688
	j	.L687
.L689:
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L687
	j	.L688
.L687:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a10, 0
	bnez.n	a8, .L689
	j	.L690
.L688:
	movi.n	a8, 0
	s8i	a8, a10, 0
.L690:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a3, .L697
	j	.L698
.L700:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L698
	j	.L697
.L698:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L700
.L697:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L708
	j	.L712
.L710:
	beq	a9, a10, .L709
.L711:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L710
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	beqz.n	a10, .L712
.L708:
	mov.n	a8, a3
	j	.L711
.L712:
	mov.n	a2, a10
.L709:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L718:
	l8ui	a9, a8, 0
	sub	a10, a3, a9
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L718
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
	beqz.n	a10, .L720
	l8ui	a5, a3, 0
	l32r	a6, .LC101
	l32r	a4, .LC100
	j	.L722
.L723:
	callx8	a4
	beqz.n	a10, .L720
	addi.n	a8, a2, 1
.L722:
	mov.n	a11, a5
	mov.n	a10, a8
	callx8	a6
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a2, a10
	bnez.n	a10, .L723
.L720:
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
	l32r	a8, .LC104
	movi.n	a12, 0
	movi.n	a13, 0
	bgez	a10, .L738
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a8
	blti	a10, 1, .L733
	j	.L732
.L738:
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L733
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bgez	a10, .L733
.L732:
	l32r	a10, .LC105
	xor	a2, a2, a10
.L733:
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
	beqz.n	a5, .L739
	bltu	a3, a5, .L745
	sub	a3, a3, a5
	add.n	a6, a2, a3
	bltu	a6, a2, .L745
	addi.n	a9, a5, -1
	l8ui	a3, a4, 0
	l32r	a4, .LC106
	s32i	a9, sp, 0
	addi.n	a5, a8, 1
.L742:
	l8ui	a8, a7, 0
	mov.n	a2, a7
	addi.n	a7, a7, 1
	bne	a8, a3, .L741
	l32i	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a7
	callx8	a4
	beqz.n	a10, .L739
.L741:
	bgeu	a6, a7, .L742
.L745:
	movi.n	a2, 0
.L739:
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
	l32r	a8, .LC109
	mov.n	a6, a2
	s32i	a8, sp, 12
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	mov.n	a7, a3
	mov.n	a2, a4
	callx8	a8
	bgez	a10, .L774
	l32r	a10, .LC110
	l32r	a14, .LC112
	l32r	a12, .LC124
	xor	a4, a6, a10
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	mov.n	a5, a3
	callx8	a14
	blti	a10, 1, .L764
	l32r	a14, .LC114
	l32r	a12, .LC123
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a14
	bgei	a10, 1, .L765
	j	.L758
.L774:
	l32r	a8, .LC122
	movi.n	a9, 0
	l32r	a3, .LC116
	s32i.n	a8, sp, 0
	mov.n	a12, a8
	s32i.n	a9, sp, 4
	mov.n	a13, a9
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a3
	movi.n	a8, 0
	s32i	a8, sp, 8
	bgez	a10, .L755
	l32r	a8, .LC121
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	mov.n	a12, a8
	l32i	a8, sp, 12
	s32i.n	a9, sp, 4
	mov.n	a13, a9
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a8
	bgez	a10, .L758
	l32r	a8, .LC118
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a8
	bnez.n	a10, .L767
.L758:
	movi.n	a8, 0
	s32i	a8, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	j	.L752
.L764:
	movi.n	a8, 1
	s32i	a8, sp, 8
	l32r	a8, .LC122
	movi.n	a9, 0
	l32r	a3, .LC116
	mov.n	a6, a4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L755:
	l32r	a8, .LC119
	mov.n	a4, a2
	movi.n	a5, 0
	mov.n	a2, a8
.L761:
	l32r	a12, .LC121
	mov.n	a10, a6
	mov.n	a11, a7
	movi.n	a13, 0
	callx8	a2
	mov.n	a6, a10
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	mov.n	a10, a6
	addi.n	a5, a5, 1
	mov.n	a7, a11
	callx8	a3
	bgez	a10, .L761
	mov.n	a2, a4
	mov.n	a4, a5
	j	.L762
.L765:
	movi.n	a8, 1
	s32i	a8, sp, 8
	l32r	a8, .LC121
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	j	.L756
.L767:
	mov.n	a4, a6
	mov.n	a5, a7
.L756:
	mov.n	a7, a5
	l32i	a3, sp, 12
	l32r	a5, .LC120
	mov.n	a6, a4
	movi.n	a4, 0
.L763:
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
	bltz	a10, .L763
.L762:
	l32i	a8, sp, 8
	s32i	a4, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	beqz.n	a8, .L752
	l32r	a8, .LC110
	xor	a2, a6, a8
.L752:
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
	beqz.n	a9, .L780
	l32r	a9, .LC125
	movi.n	a3, 0
	s32i	a9, sp, 4
	mov.n	a2, a3
.L779:
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
	bltu	a11, a3, .L778
	movi.n	a13, 0
.L778:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L779
	j	.L775
.L780:
	mov.n	a3, a9
	mov.n	a2, a9
.L775:
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L784
	j	.L783
.L787:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L785
	beqz.n	a8, .L785
.L783:
	bgez	a3, .L787
	j	.L784
.L785:
	movi.n	a9, 0
	beqz.n	a8, .L788
.L784:
	movi.n	a9, 0
.L790:
	bltu	a2, a3, .L789
	sub	a2, a2, a3
	or	a9, a9, a8
.L789:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L790
.L788:
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
	bne	a2, a9, .L814
	beq	a3, a2, .L815
.L814:
	nsau	a2, a8
	addi	a2, a2, 32
	nsau	a8, a10
	movnez	a2, a8, a10
	addi.n	a2, a2, -1
	j	.L808
.L815:
	movi.n	a2, 0x3f
.L808:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L819
	movi.n	a2, 0
.L818:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L818
	j	.L816
.L819:
.L816:
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
	bgeu	a2, a3, .L822
.L825:
	bnez.n	a8, .L823
	j	.L865
.L822:
	add.n	a9, a3, a4
	bltu	a9, a2, .L825
	addi.n	a8, a4, -1
	beqz.n	a4, .L821
	blti	a4, 3, .L866
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	j	.L826
.L823:
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	mov.n	a11, a3
	mov.n	a9, a2
	blti	a8, 3, .L867
	addi.n	a8, a8, -1
	l32i	a12, a3, 0
	l32i	a13, a3, 4
	s32i	a12, a2, 0
	s32i	a13, a2, 4
	loop	a8, .L828_LEND
.L828:
	addi.n	a9, a9, 8
	addi.n	a11, a11, 8
	l32i	a12, a11, 0
	l32i	a13, a11, 4
	s32i	a12, a9, 0
	s32i	a13, a9, 4
	.L828_LEND:
	j	.L868
.L865:
	add.n	a11, a2, a10
	add.n	a8, a3, a10
	bnez.n	a4, .L830
	j	.L821
.L868:
	bgeu	a10, a4, .L821
	sub	a13, a4, a10
	addi.n	a8, a13, -1
	add.n	a11, a2, a10
	bgeui	a8, 7, .L851
	add.n	a8, a3, a10
	j	.L830
.L851:
	addi.n	a9, a10, 1
	add.n	a9, a3, a9
	sub	a9, a11, a9
	add.n	a8, a3, a10
	bltui	a9, 3, .L830
	or	a9, a8, a11
	extui	a9, a9, 0, 2
	bnez.n	a9, .L830
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	addi.n	a9, a9, 1
	slli	a14, a14, 2
	blti	a9, 3, .L869
	addi.n	a9, a9, -1
	l32i	a12, a8, 0
	s32i	a12, a11, 0
	loop	a9, .L832_LEND
.L832:
	addi.n	a8, a8, 4
	l32i	a12, a8, 0
	addi.n	a11, a11, 4
	s32i	a12, a11, 0
	.L832_LEND:
.L870:
	add.n	a10, a10, a14
	beq	a13, a14, .L821
	add.n	a8, a3, a10
	l8ui	a9, a8, 0
	add.n	a8, a2, a10
	s8i	a9, a8, 0
	addi.n	a8, a10, 1
	bgeu	a8, a4, .L821
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a10, a10, 2
	bgeu	a10, a4, .L821
	add.n	a3, a3, a10
	l8ui	a8, a3, 0
	add.n	a10, a2, a10
	s8i	a8, a10, 0
	j	.L821
.L830:
	add.n	a3, a3, a4
	sub	a3, a3, a8
	blti	a3, 3, .L871
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a11, 0
.L834:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	addi.n	a11, a11, 1
	s8i	a9, a11, 0
	addi.n	a3, a3, -1
	bnez.n	a3, .L834
	j	.L821
.L826:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L826
.L821:
	retw.n
.L871:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a11, 0
	addi.n	a11, a11, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L871
	j	.L821
.L869:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a11, 0
	addi.n	a11, a11, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L869
	j	.L870
.L867:
	l32i	a12, a11, 0
	l32i	a13, a11, 4
	s32i	a12, a9, 0
	s32i	a13, a9, 4
	addi.n	a11, a11, 8
	addi.n	a9, a9, 8
	addi.n	a8, a8, -1
	bnez.n	a8, .L867
	j	.L868
.L866:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L866
	j	.L821
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a12, a4, 1
	bgeu	a2, a3, .L873
.L876:
	bnez.n	a12, .L874
	j	.L875
.L873:
	add.n	a8, a3, a4
	bltu	a8, a2, .L876
	addi.n	a8, a4, -1
	beqz.n	a4, .L872
	blti	a4, 3, .L908
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	j	.L877
.L874:
	addi.n	a8, a12, -1
	movi.n	a9, 8
	bgeu	a9, a8, .L879
	or	a8, a3, a2
	extui	a8, a8, 0, 2
	bnez.n	a8, .L879
	addi.n	a8, a3, 2
	beq	a2, a8, .L879
	srli	a13, a4, 2
	slli	a8, a13, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a14, a13, 2
	blti	a8, 3, .L909
	addi.n	a8, a8, -1
	l32i	a11, a3, 0
	s32i	a11, a2, 0
	loop	a8, .L880_LEND
.L880:
	addi.n	a10, a10, 4
	l32i	a11, a10, 0
	addi.n	a9, a9, 4
	s32i	a11, a9, 0
	.L880_LEND:
.L910:
	add.n	a13, a13, a13
	beq	a12, a13, .L875
	add.n	a8, a3, a14
	l16ui	a8, a8, 0
	add.n	a14, a2, a14
	s16i	a8, a14, 0
	j	.L875
.L879:
	add.n	a8, a12, a12
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	mov.n	a10, a3
	mov.n	a9, a2
	blti	a8, 3, .L911
	addi.n	a8, a8, -1
	l16ui	a11, a3, 0
	s16i	a11, a2, 0
	loop	a8, .L882_LEND
.L882:
	addi.n	a10, a10, 2
	l16ui	a11, a10, 0
	addi.n	a9, a9, 2
	s16i	a11, a9, 0
	.L882_LEND:
.L875:
	bbci	a4, 31, .L872
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a4, a2, a4
	s8i	a8, a4, 0
	j	.L872
.L877:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L877
.L872:
	retw.n
.L911:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	addi.n	a8, a8, -1
	bnez.n	a8, .L911
	j	.L875
.L909:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L909
	j	.L910
.L908:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L908
	j	.L872
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	movi.n	a10, -4
	srli	a8, a4, 2
	and	a10, a4, a10
	bgeu	a2, a3, .L913
.L916:
	bnez.n	a8, .L914
	j	.L956
.L913:
	add.n	a9, a3, a4
	bltu	a9, a2, .L916
	addi.n	a8, a4, -1
	beqz.n	a4, .L912
	blti	a4, 3, .L957
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	j	.L917
.L914:
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	mov.n	a11, a3
	mov.n	a9, a2
	blti	a8, 3, .L958
	addi.n	a8, a8, -1
	l32i	a12, a3, 0
	s32i	a12, a2, 0
	loop	a8, .L919_LEND
.L919:
	addi.n	a11, a11, 4
	l32i	a12, a11, 0
	addi.n	a9, a9, 4
	s32i	a12, a9, 0
	.L919_LEND:
	j	.L959
.L956:
	add.n	a11, a2, a10
	add.n	a8, a3, a10
	bnez.n	a4, .L921
	j	.L912
.L959:
	bgeu	a10, a4, .L912
	sub	a13, a4, a10
	addi.n	a8, a13, -1
	add.n	a11, a2, a10
	bgeui	a8, 7, .L942
	add.n	a8, a3, a10
	j	.L921
.L942:
	addi.n	a9, a10, 1
	add.n	a9, a3, a9
	sub	a9, a11, a9
	add.n	a8, a3, a10
	bltui	a9, 3, .L921
	or	a9, a8, a11
	extui	a9, a9, 0, 2
	bnez.n	a9, .L921
	srli	a14, a13, 2
	slli	a9, a14, 2
	addi	a9, a9, -4
	srli	a9, a9, 2
	addi.n	a9, a9, 1
	slli	a14, a14, 2
	blti	a9, 3, .L960
	addi.n	a9, a9, -1
	l32i	a12, a8, 0
	s32i	a12, a11, 0
	loop	a9, .L923_LEND
.L923:
	addi.n	a8, a8, 4
	l32i	a12, a8, 0
	addi.n	a11, a11, 4
	s32i	a12, a11, 0
	.L923_LEND:
.L961:
	add.n	a10, a10, a14
	beq	a13, a14, .L912
	add.n	a8, a3, a10
	l8ui	a9, a8, 0
	add.n	a8, a2, a10
	s8i	a9, a8, 0
	addi.n	a8, a10, 1
	bgeu	a8, a4, .L912
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	add.n	a8, a2, a8
	s8i	a9, a8, 0
	addi.n	a10, a10, 2
	bgeu	a10, a4, .L912
	add.n	a3, a3, a10
	l8ui	a8, a3, 0
	add.n	a10, a2, a10
	s8i	a8, a10, 0
	j	.L912
.L921:
	add.n	a3, a3, a4
	sub	a3, a3, a8
	blti	a3, 3, .L962
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a11, 0
.L925:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	addi.n	a11, a11, 1
	s8i	a9, a11, 0
	addi.n	a3, a3, -1
	bnez.n	a3, .L925
	j	.L912
.L917:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L917
.L912:
	retw.n
.L962:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	s8i	a9, a11, 0
	addi.n	a11, a11, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L962
	j	.L912
.L960:
	l32i	a12, a8, 0
	addi.n	a8, a8, 4
	s32i	a12, a11, 0
	addi.n	a11, a11, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L960
	j	.L961
.L958:
	l32i	a12, a11, 0
	addi.n	a11, a11, 4
	s32i	a12, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L958
	j	.L959
.L957:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L957
	j	.L912
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
	bbsi	a2, 16, .L972
	srai	a2, a8, 14
	bnez.n	a2, .L969
	srai	a9, a8, 13
	bnez.n	a9, .L973
	srai	a9, a8, 12
	bnez.n	a9, .L974
	srai	a9, a8, 11
	bnez.n	a9, .L975
	srai	a9, a8, 10
	bnez.n	a9, .L976
	srai	a9, a8, 9
	bnez.n	a9, .L977
	srai	a9, a8, 8
	bnez.n	a9, .L978
	srai	a9, a8, 7
	bnez.n	a9, .L979
	srai	a9, a8, 6
	bnez.n	a9, .L980
	srai	a9, a8, 5
	bnez.n	a9, .L981
	srai	a9, a8, 4
	bnez.n	a9, .L982
	srai	a9, a8, 3
	bnez.n	a9, .L983
	srai	a9, a8, 2
	bnez.n	a9, .L984
	srai	a9, a8, 1
	bnez.n	a9, .L985
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L969
.L972:
	movi.n	a2, 0
	j	.L969
.L973:
	movi.n	a2, 2
	j	.L969
.L974:
	movi.n	a2, 3
	j	.L969
.L975:
	movi.n	a2, 4
	j	.L969
.L976:
	movi.n	a2, 5
	j	.L969
.L977:
	movi.n	a2, 6
	j	.L969
.L978:
	movi.n	a2, 7
	j	.L969
.L979:
	movi.n	a2, 8
	j	.L969
.L980:
	movi.n	a2, 9
	j	.L969
.L981:
	movi.n	a2, 0xa
	j	.L969
.L982:
	movi.n	a2, 0xb
	j	.L969
.L983:
	movi.n	a2, 0xc
	j	.L969
.L984:
	movi.n	a2, 0xd
	j	.L969
.L985:
	movi.n	a2, 0xe
.L969:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	bbsi	a2, 31, .L990
	bbsi	a8, 30, .L991
	bbsi	a8, 29, .L992
	bbsi	a8, 28, .L993
	bbsi	a8, 27, .L994
	bbsi	a8, 26, .L995
	bbsi	a8, 25, .L996
	bbsi	a8, 24, .L997
	bbsi	a8, 23, .L998
	bbsi	a8, 22, .L999
	bbsi	a8, 21, .L1000
	bbsi	a8, 20, .L1001
	bbsi	a8, 19, .L1002
	bbsi	a8, 18, .L1003
	bbsi	a8, 17, .L1004
	srai	a8, a8, 15
	nsau	a2, a8
	srli	a2, a2, 5
	addi.n	a2, a2, 15
	j	.L987
.L990:
	movi.n	a2, 0
	j	.L987
.L991:
	movi.n	a2, 1
	j	.L987
.L992:
	movi.n	a2, 2
	j	.L987
.L993:
	movi.n	a2, 3
	j	.L987
.L994:
	movi.n	a2, 4
	j	.L987
.L995:
	movi.n	a2, 5
	j	.L987
.L996:
	movi.n	a2, 6
	j	.L987
.L997:
	movi.n	a2, 7
	j	.L987
.L998:
	movi.n	a2, 8
	j	.L987
.L999:
	movi.n	a2, 9
	j	.L987
.L1000:
	movi.n	a2, 0xa
	j	.L987
.L1001:
	movi.n	a2, 0xb
	j	.L987
.L1002:
	movi.n	a2, 0xc
	j	.L987
.L1003:
	movi.n	a2, 0xd
	j	.L987
.L1004:
	movi.n	a2, 0xe
.L987:
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
	l32r	a9, .LC139
	l32r	a8, .LC135
	l32i.n	a11, a9, 0
	mov.n	a10, a2
	callx8	a8
	bltz	a10, .L1011
	l32r	a9, .LC139
	l32r	a8, .LC136
	l32i.n	a11, a9, 0
	mov.n	a10, a2
	callx8	a8
	l32r	a8, .LC137
	callx8	a8
	l32r	a8, .LC138
	add.n	a2, a10, a8
	j	.L1006
.L1011:
	l32r	a8, .LC137
	mov.n	a10, a2
	callx8	a8
	mov.n	a2, a10
.L1006:
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
	beqz.n	a2, .L1017
	movi.n	a2, 0
.L1016:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	srli	a9, a9, 1
	add.n	a2, a2, a8
	add.n	a3, a3, a3
	bnez.n	a9, .L1016
	j	.L1014
.L1017:
.L1014:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L1019
	j	.L1026
.L1021:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	srli	a3, a3, 1
	add.n	a2, a2, a8
	add.n	a9, a9, a9
.L1026:
	bnez.n	a3, .L1021
.L1019:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L1029
	j	.L1028
.L1032:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1030
	beqz.n	a8, .L1030
.L1028:
	bgez	a3, .L1032
	j	.L1029
.L1030:
	movi.n	a9, 0
	beqz.n	a8, .L1033
.L1029:
	movi.n	a9, 0
.L1035:
	bltu	a2, a3, .L1034
	sub	a2, a2, a3
	or	a9, a9, a8
.L1034:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1035
.L1033:
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
	bltz	a10, .L1050
	l32r	a8, .LC141
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L1050
	movi.n	a2, 0
.L1050:
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
	bltz	a10, .L1054
	l32r	a8, .LC143
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a8
	bgei	a10, 1, .L1054
	movi.n	a2, 0
.L1054:
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
	bgez	a3, .L1061
	neg	a3, a3
	movi.n	a11, 1
	j	.L1062
.L1061:
	beqz.n	a3, .L1066
	movi.n	a11, 0
.L1062:
	movi.n	a2, 0
	mov.n	a9, a2
.L1064:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	addi.n	a9, a9, 1
	srai	a3, a3, 1
	extui	a9, a9, 0, 8
	add.n	a2, a2, a8
	add.n	a10, a10, a10
	beqz.n	a3, .L1067
	bnei	a9, 32, .L1064
.L1067:
	neg	a8, a2
	movnez	a2, a8, a11
	j	.L1060
.L1066:
	mov.n	a2, a3
.L1060:
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
	bltz	a2, .L1075
	l32r	a8, .LC146
	movi.n	a12, 0
	bltz	a3, .L1076
	j	.L1081
.L1075:
	l32r	a8, .LC146
	neg	a10, a2
	movi.n	a12, 0
	bltz	a3, .L1078
	j	.L1080
.L1078:
	neg	a11, a3
.L1081:
	callx8	a8
	mov.n	a2, a10
	j	.L1074
.L1076:
	neg	a11, a3
.L1080:
	callx8	a8
	neg	a2, a10
.L1074:
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC147, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	l32r	a8, .LC147
	mov.n	a10, a2
	abs	a11, a3
	movi.n	a12, 1
	bltz	a2, .L1083
	callx8	a8
	mov.n	a2, a10
	j	.L1082
.L1083:
	neg	a10, a2
	callx8	a8
	neg	a2, a10
.L1082:
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
	bltu	a11, a13, .L1086
	bne	a11, a13, .L1115
	mov.n	a9, a12
	movi.n	a2, 0
	j	.L1092
.L1090:
	extui	a9, a9, 0, 16
	bgeu	a8, a13, .L1088
	beqz.n	a9, .L1088
	mov.n	a12, a9
	mov.n	a11, a8
.L1086:
	add.n	a8, a11, a11
	sext	a10, a11, 15
	add.n	a9, a12, a12
	extui	a8, a8, 0, 16
	bgez	a10, .L1090
	j	.L1145
.L1088:
	mov.n	a2, a13
	beqz.n	a9, .L1092
	bltu	a13, a8, .L1093
	sub	a13, a13, a8
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	extui	a13, a13, 0, 16
	mov.n	a11, a8
	mov.n	a12, a9
	j	.L1094
.L1093:
	extui	a14, a12, 0, 15
	extui	a10, a11, 0, 15
	mov.n	a12, a9
	mov.n	a11, a8
	movi.n	a9, 0
	j	.L1094
.L1112:
	sub	a13, a13, a11
	extui	a13, a13, 0, 16
	mov.n	a9, a12
.L1113:
	extui	a14, a12, 1, 16
	srli	a10, a11, 1
	beqz.n	a14, .L1130
.L1094:
	bltu	a13, a10, .L1095
	sub	a10, a13, a10
	or	a14, a9, a14
	extui	a13, a10, 0, 16
	extui	a9, a14, 0, 16
.L1095:
	extui	a8, a12, 2, 16
	srli	a10, a11, 2
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1096
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1096:
	extui	a8, a12, 3, 16
	srli	a10, a11, 3
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1097
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1097:
	extui	a8, a12, 4, 16
	srli	a10, a11, 4
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1098
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1098:
	extui	a8, a12, 5, 16
	srli	a10, a11, 5
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1099
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1099:
	extui	a8, a12, 6, 16
	srli	a10, a11, 6
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1100
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1100:
	extui	a8, a12, 7, 16
	srli	a10, a11, 7
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1101
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1101:
	extui	a8, a12, 8, 16
	srli	a10, a11, 8
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1102
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1102:
	extui	a8, a12, 9, 16
	srli	a10, a11, 9
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1103
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1103:
	extui	a8, a12, 10, 16
	srli	a10, a11, 10
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1104
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1104:
	extui	a8, a12, 11, 16
	srli	a10, a11, 11
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1105
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1105:
	extui	a8, a12, 12, 16
	srli	a10, a11, 12
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1106
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1106:
	extui	a8, a12, 13, 16
	srli	a10, a11, 13
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1107
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1107:
	extui	a8, a12, 14, 16
	srli	a10, a11, 14
	beqz.n	a8, .L1130
	bltu	a13, a10, .L1108
	sub	a10, a13, a10
	or	a8, a9, a8
	extui	a13, a10, 0, 16
	extui	a9, a8, 0, 16
.L1108:
	extui	a12, a12, 15, 16
	srli	a11, a11, 15
	bnez.n	a12, .L1109
	j	.L1130
.L1115:
	mov.n	a2, a13
	movi.n	a9, 0
	j	.L1092
.L1130:
	mov.n	a2, a13
	j	.L1092
.L1109:
	movi.n	a2, 0
	bltu	a13, a11, .L1092
	movi.n	a8, 1
	sub	a11, a13, a11
	or	a8, a9, a8
	extui	a2, a11, 0, 16
	extui	a9, a8, 0, 16
	j	.L1092
.L1145:
	movi.n	a9, 0
	bltu	a13, a11, .L1113
	j	.L1112
.L1092:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L1149
	j	.L1148
.L1152:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bgeu	a3, a2, .L1150
	beqz.n	a8, .L1150
.L1148:
	bgez	a3, .L1152
	j	.L1149
.L1150:
	movi.n	a9, 0
	beqz.n	a8, .L1153
.L1149:
	movi.n	a9, 0
.L1155:
	bltu	a2, a3, .L1154
	sub	a2, a2, a3
	or	a9, a9, a8
.L1154:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L1155
.L1153:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L1171
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L1172
.L1171:
	beqz.n	a4, .L1173
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L1172:
	mov.n	a3, a8
.L1173:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1176
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L1177
.L1176:
	beqz.n	a4, .L1178
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1177:
	mov.n	a2, a8
.L1178:
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
	bgeu	a8, a2, .L1183
	movi.n	a12, 0
.L1183:
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
	blt	a8, a4, .L1184
	movi.n	a2, 2
	blt	a4, a8, .L1184
	movi.n	a2, 0
	bltu	a3, a5, .L1184
	movi.n	a2, 2
	bltu	a5, a3, .L1184
	movi.n	a2, 1
.L1184:
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
	bbci	a4, 26, .L1193
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L1194
.L1193:
	beqz.n	a4, .L1195
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L1194:
	mov.n	a2, a8
.L1195:
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
	xor	a2, a8, a2
	srli	a9, a2, 8
	xor	a9, a9, a2
	srli	a8, a9, 4
	l32r	a2, .LC153
	xor	a8, a8, a9
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
	bgeu	a3, a8, .L1206
	addi.n	a2, a2, -1
.L1206:
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
	bgeu	a8, a3, .L1207
	addi.n	a10, a10, 1
.L1207:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a8, a11, .L1208
	addi.n	a9, a9, 1
.L1208:
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
	l32r	a10, .LC159
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
	bbci	a7, 31, .L1216
	l32r	a6, .LC161
	l32r	a2, .LC163
	movi.n	a3, 0
.L1213:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L1211
.L1216:
	l32r	a2, .LC163
	movi.n	a3, 0
.L1211:
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	srai	a7, a8, 1
	beqz.n	a7, .L1212
	l32r	a6, .LC161
.L1214:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a4, a10
	mov.n	a5, a11
	bbsi	a7, 31, .L1213
	srai	a7, a8, 1
	j	.L1214
.L1212:
	l32i	a8, sp, 0
	bgez	a8, .L1210
	l32r	a8, .LC162
	l32r	a10, .LC163
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L1210:
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
	bbci	a3, 31, .L1218
	l32r	a5, .LC165
.L1220:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
	j	.L1218
.L1218:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1219
	l32r	a5, .LC165
.L1221:
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a8, a7, 31, 1
	add.n	a8, a8, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1220
	srai	a7, a8, 1
	j	.L1221
.L1219:
	bgez	a3, .L1217
	l32r	a8, .LC166
	l32r	a10, .LC167
	mov.n	a11, a2
	callx8	a8
	mov.n	a2, a10
.L1217:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L1224
	movi.n	a2, 2
	bltu	a4, a8, .L1224
	movi.n	a2, 0
	bltu	a3, a5, .L1224
	movi.n	a2, 2
	bltu	a5, a3, .L1224
	movi.n	a2, 1
.L1224:
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
