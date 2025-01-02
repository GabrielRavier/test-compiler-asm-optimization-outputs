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
	sub	a14, a9, a2
	loop	a14, .L4_LEND
.L4:
	addi.n	a8, a8, -1
	l8ui	a11, a8, 0
	addi.n	a9, a9, -1
	s8i	a11, a9, 0
	.L4_LEND:
.L3:
	retw.n
.L2:
	beq	a2, a3, .L3
	beqz.n	a4, .L3
	addi.n	a8, a4, -1
	bltui	a8, 7, .L5
	or	a9, a3, a2
	extui	a10, a9, 0, 2
	bnez.n	a10, .L5
	addi.n	a11, a3, 1
	sub	a12, a2, a11
	bltui	a12, 3, .L5
	srli	a14, a4, 2
	slli	a13, a14, 2
	addi	a15, a13, -4
	srli	a9, a15, 2
	addi.n	a9, a9, 1
	mov.n	a8, a3
	mov.n	a10, a2
	slli	a13, a14, 2
	addx4	a12, a14, a3
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
	sub	a14, a4, a13
	beq	a4, a13, .L3
	l8ui	a10, a12, 0
	s8i	a10, a8, 0
	beqi	a14, 1, .L3
	l8ui	a13, a12, 1
	s8i	a13, a8, 1
	beqi	a14, 2, .L3
	l8ui	a12, a12, 2
	s8i	a12, a8, 2
	retw.n
.L39:
	l32i	a11, a8, 0
	addi.n	a8, a8, 4
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L39
	j	.L40
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
	retw.n
.L41:
	l8ui	a15, a8, 0
	addi.n	a8, a8, 1
	s8i	a15, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L41
	retw.n
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 32
	extui	a4, a4, 0, 8
	beqz.n	a5, .L47
.L45:
	l8ui	a8, a3, 0
	addi.n	a3, a3, 1
	s8i	a8, a2, 0
	addi.n	a2, a2, 1
	beq	a8, a4, .L44
	addi.n	a5, a5, -1
	bnez.n	a5, .L45
.L47:
	movi.n	a2, 0
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
	beqz.n	a4, .L66
.L68:
	loop	a8, .L57_LEND
.L57:
	l8ui	a9, a2, 0
	beq	a9, a3, .L56
	addi.n	a2, a2, 1
	.L57_LEND:
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
	beqz.n	a4, .L81
.L85:
	loop	a8, .L70_LEND
.L70:
	l8ui	a9, a2, 0
	l8ui	a10, a3, 0
	addi.n	a2, a2, 1
	bne	a9, a10, .L84
	addi.n	a3, a3, 1
	.L70_LEND:
.L81:
	movi.n	a2, 0
	retw.n
.L84:
	sub	a2, a9, a10
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
	beqz.n	a4, .L87
	l32r	a8, .LC0
	mov.n	a10, a2
	callx8	a8
.L87:
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
	j	.L92
.L94:
	l8ui	a9, a2, 0
	addi.n	a8, a8, -1
	beq	a9, a3, .L91
.L92:
	mov.n	a2, a8
	bne	a8, a10, .L94
	movi.n	a2, 0
.L91:
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
	beqz.n	a4, .L98
	l32r	a8, .LC1
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	callx8	a8
.L98:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L100
.L101:
	l8ui	a9, a3, 1
	addi.n	a2, a2, 1
	s8i	a9, a2, 0
	addi.n	a3, a3, 1
	bnez.n	a9, .L101
.L100:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	l8ui	a8, a2, 0
	extui	a3, a3, 0, 8
	beqz.n	a8, .L106
.L107:
	beq	a8, a3, .L106
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	bnez.n	a8, .L107
.L106:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
	j	.L116
.L119:
	addi.n	a2, a2, 1
	beqz.n	a8, .L118
.L116:
	l8ui	a8, a2, 0
	bne	a8, a3, .L119
	retw.n
.L118:
	mov.n	a2, a8
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	beq	a8, a9, .L121
	j	.L122
.L123:
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	bne	a8, a9, .L122
.L121:
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	bnez.n	a8, .L123
.L122:
	sub	a2, a8, a9
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L130
	mov.n	a10, a2
.L129:
	l8ui	a9, a10, 1
	addi.n	a10, a10, 1
	bnez.n	a9, .L129
	sub	a2, a10, a2
	retw.n
.L130:
	mov.n	a2, a8
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a4, .L132
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	mov.n	a8, a3
	movi.n	a12, 1
	add.n	a13, a3, a4
	bnez.n	a10, .L136
	j	.L149
.L151:
	beq	a8, a13, .L135
	l8ui	a10, a9, 0
	addi.n	a11, a8, 1
	beqz.n	a10, .L150
	mov.n	a8, a11
.L136:
	l8ui	a11, a8, 0
	mov.n	a15, a2
	sub	a4, a11, a10
	mov.n	a14, a2
	movnez	a15, a12, a11
	moveqz	a14, a12, a4
	addi.n	a9, a9, 1
	bany	a15, a14, .L151
.L135:
	sub	a2, a10, a11
.L132:
	retw.n
.L150:
	l8ui	a11, a8, 1
	sub	a2, a10, a11
	j	.L132
.L149:
	l8ui	a11, a3, 0
	sub	a2, a10, a11
	j	.L132
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L152
	srli	a4, a4, 1
	add.n	a4, a4, a4
	addi	a8, a4, -2
	srli	a9, a8, 1
	addi.n	a8, a9, 1
	blti	a8, 3, .L159
	addi.n	a8, a8, -1
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	loop	a8, .L154_LEND
.L154:
	addi.n	a3, a3, 2
	addi.n	a2, a2, 2
	l8ui	a10, a2, 1
	l8ui	a9, a2, 0
	s8i	a10, a3, 0
	s8i	a9, a3, 1
	.L154_LEND:
.L152:
	retw.n
.L159:
	l8ui	a10, a2, 1
	l8ui	a11, a2, 0
	s8i	a10, a3, 0
	s8i	a11, a3, 1
	addi.n	a2, a2, 2
	addi.n	a3, a3, 2
	addi.n	a8, a8, -1
	bnez.n	a8, .L159
	retw.n
	.size	swab, .-swab
	.align	4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	entry	sp, 32
	movi.n	a8, 0x20
	or	a2, a2, a8
	addi	a10, a2, -97
	movi.n	a9, 0x19
	movi.n	a2, 1
	bgeu	a9, a10, .L161
	movi.n	a2, 0
.L161:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi	a9, 0x7f
	movi.n	a8, 1
	bgeu	a9, a2, .L163
	movi.n	a8, 0
.L163:
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
	movi.n	a11, 1
	movi.n	a2, 1
	movnez	a2, a9, a10
	moveqz	a9, a11, a8
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
	bgeu	a9, a2, .L166
	movi.n	a8, 0
.L166:
	addi	a2, a2, -127
	nsau	a10, a2
	srli	a11, a10, 5
	or	a12, a11, a8
	extui	a2, a12, 0, 1
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
	bgeu	a9, a8, .L168
	movi.n	a2, 0
.L168:
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
	bgeu	a9, a8, .L170
	movi.n	a2, 0
.L170:
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
	bgeu	a9, a8, .L172
	movi.n	a2, 0
.L172:
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
	bgeu	a9, a8, .L174
	movi.n	a2, 0
.L174:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L176
	movi.n	a8, 0
.L176:
	addi	a2, a2, -32
	nsau	a10, a2
	srli	a11, a10, 5
	or	a12, a11, a8
	extui	a2, a12, 0, 1
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
	bgeu	a9, a8, .L178
	movi.n	a2, 0
.L178:
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
	bgeu	a10, a9, .L184
	movi.n	a2, 0x1f
	bgeu	a2, a8, .L184
	l32r	a11, .LC2
	movi.n	a2, 1
	add.n	a12, a8, a11
	bltui	a12, 2, .L179
	l32r	a13, .LC3
	add.n	a14, a8, a13
	bgeui	a14, 3, .L188
.L179:
	retw.n
.L184:
	movi.n	a2, 1
	retw.n
.L188:
	movi.n	a2, 0
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
	bgeu	a9, a8, .L190
	movi.n	a2, 0
.L190:
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
	bgeu	a9, a2, .L202
	l32r	a2, .LC4
	l32r	a10, .LC5
	add.n	a11, a8, a2
	bltu	a10, a11, .L203
.L197:
	movi.n	a2, 1
.L191:
	retw.n
.L203:
	l32r	a12, .LC6
	bgeu	a12, a8, .L197
	l32r	a13, .LC7
	l32r	a14, .LC8
	add.n	a15, a8, a13
	movi.n	a11, 0
	movi.n	a2, 1
	bgeu	a14, a15, .L191
	l32r	a9, .LC9
	l32r	a10, .LC10
	add.n	a12, a8, a9
	mov.n	a2, a11
	bltu	a10, a12, .L191
	l32r	a2, .LC11
	extui	a8, a8, 1, 15
	add.n	a13, a8, a8
	sub	a14, a13, a2
	movi.n	a2, 1
	moveqz	a2, a14, a14
	retw.n
.L202:
	addi.n	a15, a2, 1
	extui	a11, a15, 0, 7
	movi.n	a9, 0x20
	movi.n	a2, 1
	bltu	a9, a11, .L191
	movi.n	a2, 0
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
	bgeu	a10, a9, .L204
	movi.n	a11, 0x20
	or	a12, a8, a11
	addi	a13, a12, -97
	bgeui	a13, 6, .L208
.L204:
	retw.n
.L208:
	movi.n	a2, 0
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
	bnez.n	a10, .L210
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L214
	l32r	a8, .LC14
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L217
	l32r	a9, .LC15
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a9
	mov.n	a2, a10
	mov.n	a3, a11
.L210:
	retw.n
.L217:
	movi.n	a2, 0
	movi.n	a3, 0
	retw.n
.L214:
	mov.n	a2, a4
	mov.n	a3, a5
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
	bnez.n	a10, .L218
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L222
	l32r	a8, .LC18
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
	blti	a10, 1, .L225
	l32r	a9, .LC19
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a9
	mov.n	a2, a10
.L218:
	retw.n
.L225:
	movi.n	a2, 0
	retw.n
.L222:
	mov.n	a2, a3
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
	bnez.n	a10, .L232
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L233
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a10, a8, 31
	slli	a2, a9, 31
	beq	a10, a2, .L228
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a10, .L226
.L233:
	mov.n	a2, a6
	mov.n	a3, a7
.L226:
	retw.n
.L228:
	l32r	a14, .LC22
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a14
	bltz	a10, .L232
	mov.n	a4, a6
	mov.n	a5, a7
.L232:
	mov.n	a2, a4
	mov.n	a3, a5
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
	bnez.n	a10, .L243
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a6
	bnez.n	a10, .L237
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a10, a8, 31
	slli	a11, a9, 31
	beq	a10, a11, .L239
	movnez	a2, a3, a10
.L237:
	retw.n
.L239:
	l32r	a12, .LC25
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a12
	movltz	a2, a3, a10
	retw.n
.L243:
	mov.n	a2, a3
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
	bnez.n	a10, .L254
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	bnez.n	a10, .L255
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a10, a8, 31
	slli	a2, a9, 31
	beq	a10, a2, .L250
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a10, .L248
.L255:
	mov.n	a2, a6
	mov.n	a3, a7
.L248:
	retw.n
.L250:
	l32r	a14, .LC28
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a14
	bltz	a10, .L254
	mov.n	a4, a6
	mov.n	a5, a7
.L254:
	mov.n	a2, a4
	mov.n	a3, a5
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
	bnez.n	a10, .L265
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L259
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a10, a8, 31
	slli	a11, a9, 31
	beq	a10, a11, .L261
	beqz.n	a10, .L265
.L259:
	retw.n
.L261:
	l32r	a14, .LC31
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a14
	bltz	a10, .L259
.L265:
	mov.n	a2, a4
	mov.n	a3, a5
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
	bnez.n	a10, .L276
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L270
	extui	a8, a2, 31, 1
	extui	a9, a3, 31, 1
	slli	a10, a8, 31
	slli	a11, a9, 31
	beq	a10, a11, .L272
	moveqz	a2, a3, a10
.L270:
	retw.n
.L272:
	l32r	a12, .LC34
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a12
	movgez	a2, a3, a10
	retw.n
.L276:
	mov.n	a2, a3
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
	bnez.n	a10, .L287
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L281
	extui	a8, a2, 31, 1
	extui	a9, a4, 31, 1
	slli	a10, a8, 31
	slli	a11, a9, 31
	beq	a10, a11, .L283
	beqz.n	a10, .L287
.L281:
	retw.n
.L283:
	l32r	a14, .LC37
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a14
	bltz	a10, .L281
.L287:
	mov.n	a2, a4
	mov.n	a3, a5
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
	beqz.n	a8, .L295
	l32r	a11, .LC39
	mov.n	a10, a2
.L294:
	extui	a9, a8, 0, 6
	add.n	a12, a11, a9
	l8ui	a13, a12, 0
	srli	a8, a8, 6
	s8i	a13, a10, 0
	addi.n	a10, a10, 1
	bnez.n	a8, .L294
	movi.n	a14, 0
	s8i	a14, a10, 0
	retw.n
.L295:
	mov.n	a10, a2
	movi.n	a14, 0
	s8i	a14, a10, 0
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
	l32r	a9, .LC43
	l32i	a2, a7, 0
	l32i	a10, a7, 4
	l32r	a11, .LC42
	mull	a13, a10, a9
	mull	a12, a2, a11
	l32r	a8, .LC44
	add.n	a2, a12, a13
	callx8	a8
	addi.n	a11, a11, 1
	nsau	a14, a11
	add.n	a10, a2, a10
	srli	a15, a14, 5
	add.n	a9, a10, a15
	s32i	a9, a7, 0
	s32i	a11, a7, 4
	srli	a2, a9, 1
	retw.n
	.size	rand, .-rand
	.align	4
	.global	insque
	.type	insque, @function
insque:
	entry	sp, 32
	beqz.n	a3, .L306
	l32i	a8, a3, 0
	s32i	a3, a2, 4
	s32i	a8, a2, 0
	s32i	a2, a3, 0
	l32i	a9, a2, 0
	beqz.n	a9, .L300
	s32i	a2, a9, 4
.L300:
	retw.n
.L306:
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L308
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L308:
	l32i	a10, a2, 4
	beqz.n	a10, .L307
	s32i	a8, a10, 0
.L307:
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
	beqz.n	a7, .L317
	mov.n	a2, a3
	movi.n	a4, 0
	j	.L319
.L331:
	add.n	a2, a2, a5
	beq	a7, a4, .L317
.L319:
	l32i	a10, sp, 0
	mov.n	a11, a2
	callx8	a6
	mov.n	a3, a2
	addi.n	a4, a4, 1
	bnez.n	a10, .L331
.L316:
	mov.n	a2, a3
	retw.n
.L317:
	l32i	a9, sp, 8
	mull	a3, a5, a7
	l32i	a10, sp, 4
	addi.n	a7, a7, 1
	s32i	a7, a9, 0
	add.n	a3, a10, a3
	beqz.n	a5, .L316
	l32r	a13, .LC45
	l32i	a11, sp, 0
	mov.n	a12, a5
	mov.n	a10, a3
	callx8	a13
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
	beqz.n	a7, .L333
	movi.n	a4, 0
	j	.L335
.L343:
	add.n	a3, a3, a5
	beq	a7, a4, .L333
.L335:
	l32i	a10, sp, 0
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a3
	addi.n	a4, a4, 1
	bnez.n	a10, .L343
	retw.n
.L333:
	movi.n	a2, 0
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
	bgeui	a9, 5, .L375
.L372:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	addi	a10, a8, -9
	bltui	a10, 5, .L372
.L375:
	beqi	a8, 32, .L372
	movi.n	a11, 0x2b
	beq	a8, a11, .L351
	movi.n	a14, 0x2d
	bne	a8, a14, .L376
	l8ui	a15, a2, 1
	movi.n	a9, 9
	addi	a8, a15, -48
	addi.n	a2, a2, 1
	bltu	a9, a8, .L360
	movi.n	a14, 1
.L354:
	movi.n	a10, 0
	movi.n	a13, 9
.L357:
	l8ui	a12, a2, 1
	addx4	a15, a10, a10
	mov.n	a11, a8
	subx2	a10, a15, a8
	addi	a8, a12, -48
	addi.n	a2, a2, 1
	add.n	a9, a15, a15
	bgeu	a13, a8, .L357
	sub	a2, a11, a9
	movnez	a2, a10, a14
	retw.n
.L376:
	addi	a8, a8, -48
	movi.n	a10, 9
	movi.n	a14, 0
	bgeu	a10, a8, .L354
.L360:
	movi.n	a2, 0
.L377:
	retw.n
.L351:
	l8ui	a12, a2, 1
	movi.n	a13, 9
	addi	a8, a12, -48
	addi.n	a2, a2, 1
	movi.n	a14, 0
	bgeu	a13, a8, .L354
	movi.n	a2, 0
	j	.L377
	.size	atoi, .-atoi
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l8ui	a8, a2, 0
	addi	a9, a8, -9
	bgeui	a9, 5, .L405
.L403:
	l8ui	a8, a2, 1
	addi.n	a2, a2, 1
	addi	a10, a8, -9
	bltui	a10, 5, .L403
.L405:
	beqi	a8, 32, .L403
	movi.n	a11, 0x2b
	beq	a8, a11, .L384
	movi.n	a14, 0x2d
	bne	a8, a14, .L385
	l8ui	a15, a2, 1
	movi.n	a9, 9
	addi	a8, a15, -48
	addi.n	a2, a2, 1
	movi.n	a14, 1
	bltu	a9, a8, .L392
.L386:
	movi.n	a10, 0
	movi.n	a13, 9
.L389:
	l8ui	a12, a2, 1
	addx4	a15, a10, a10
	mov.n	a11, a8
	subx2	a10, a15, a8
	addi	a8, a12, -48
	addi.n	a2, a2, 1
	add.n	a9, a15, a15
	bgeu	a13, a8, .L389
	sub	a2, a11, a9
	movnez	a2, a10, a14
	retw.n
.L385:
	addi	a8, a8, -48
	movi.n	a10, 9
	movi.n	a14, 0
	bgeu	a10, a8, .L386
.L392:
	movi.n	a2, 0
	retw.n
.L384:
	l8ui	a12, a2, 1
	movi.n	a13, 9
	addi	a8, a12, -48
	addi.n	a2, a2, 1
	bltu	a13, a8, .L392
	movi.n	a14, 0
	j	.L386
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
	bgeui	a8, 5, .L438
.L435:
	l8ui	a7, a2, 1
	addi.n	a2, a2, 1
	addi	a3, a7, -9
	bltui	a3, 5, .L435
.L438:
	beqi	a7, 32, .L435
	movi.n	a9, 0x2b
	beq	a7, a9, .L412
	movi.n	a12, 0x2d
	bne	a7, a12, .L440
	l8ui	a13, a2, 1
	movi.n	a14, 9
	addi	a7, a13, -48
	addi.n	a3, a2, 1
	bltu	a14, a7, .L423
	movi.n	a2, 1
	s32i	a2, sp, 0
.L415:
	movi.n	a11, 0
	l32r	a4, .LC46
	mov.n	a2, a11
	movi.n	a5, 0xa
	movi.n	a6, 9
.L419:
	mull	a2, a5, a2
	movi.n	a10, 0xa
	callx8	a4
	srai	a12, a7, 31
	mov.n	a14, a11
	add.n	a10, a2, a10
	sub	a11, a11, a7
	addi.n	a3, a3, 1
	mov.n	a13, a7
	sub	a2, a10, a12
	bgeu	a14, a7, .L418
	addi.n	a2, a2, -1
.L418:
	l8ui	a7, a3, 0
	addi	a7, a7, -48
	bgeu	a6, a7, .L419
	l32i	a9, sp, 0
	bnez.n	a9, .L406
	sub	a2, a12, a10
	bgeu	a13, a14, .L421
	addi.n	a2, a2, -1
.L421:
	sub	a11, a13, a14
.L406:
	mov.n	a3, a11
	retw.n
.L440:
	movi.n	a8, 0
	addi	a7, a7, -48
	movi.n	a15, 9
	s32i	a8, sp, 0
	mov.n	a3, a2
	bgeu	a15, a7, .L415
.L439:
	mov.n	a11, a8
	mov.n	a2, a8
	j	.L406
.L412:
	l8ui	a10, a2, 1
	movi.n	a8, 0
	movi.n	a11, 9
	addi	a7, a10, -48
	s32i	a8, sp, 0
	addi.n	a3, a2, 1
	bgeu	a11, a7, .L415
	j	.L439
.L423:
	movi.n	a11, 0
	mov.n	a2, a11
	j	.L406
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L454:
	beqz.n	a4, .L442
.L455:
	srli	a7, a4, 1
	mull	a2, a7, a5
	l32i	a10, sp, 0
	add.n	a2, a3, a2
	mov.n	a11, a2
	callx8	a6
	addi.n	a4, a4, -1
	bltz	a10, .L446
	beqz.n	a10, .L441
	sub	a4, a4, a7
	add.n	a3, a2, a5
	bnez.n	a4, .L455
.L442:
	movi.n	a2, 0
.L441:
	retw.n
.L446:
	mov.n	a4, a7
	j	.L454
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	s32i	a2, sp, 0
	beqz.n	a4, .L461
.L469:
	srai	a7, a4, 1
	mull	a11, a7, a5
	l32i	a12, sp, 4
	l32i	a10, sp, 0
	add.n	a2, a3, a11
	mov.n	a11, a2
	addi.n	a4, a4, -1
	callx8	a6
	srai	a4, a4, 1
	beqz.n	a10, .L456
	blti	a10, 1, .L459
	add.n	a3, a2, a5
	bnez.n	a4, .L469
.L461:
	movi.n	a2, 0
.L456:
	retw.n
.L459:
	beqz.n	a7, .L461
	mov.n	a4, a7
	j	.L469
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
	bgeu	a3, a8, .L474
	addi.n	a2, a2, -1
.L474:
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
	l32r	a9, .LC48
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a9
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
	bgeu	a3, a8, .L480
	addi.n	a2, a2, -1
.L480:
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
	l32r	a9, .LC50
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a9
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
	beqz.n	a8, .L486
.L483:
	beq	a3, a8, .L482
	l32i	a8, a2, 4
	addi.n	a2, a2, 4
	bnez.n	a8, .L483
.L486:
	mov.n	a2, a8
.L482:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	beq	a8, a9, .L491
	j	.L492
.L493:
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	bne	a8, a9, .L492
.L491:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	bnez.n	a8, .L493
.L492:
	movi.n	a2, -1
	blt	a8, a9, .L490
	movi.n	a2, 1
	bge	a9, a8, .L499
.L490:
	retw.n
.L499:
	movi.n	a2, 0
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L501:
	l32i	a9, a3, 0
	addi.n	a3, a3, 4
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	bnez.n	a9, .L501
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L506
	mov.n	a10, a2
.L505:
	l32i	a9, a10, 4
	addi.n	a10, a10, 4
	bnez.n	a9, .L505
	sub	a2, a10, a2
	srai	a2, a2, 2
	retw.n
.L506:
	mov.n	a2, a8
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a4
	beqz.n	a4, .L525
.L530:
	loop	a9, .L509_LEND
.L509:
	l32i	a8, a2, 0
	l32i	a10, a3, 0
	bne	a10, a8, .L513
	beqz.n	a8, .L513
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	.L509_LEND:
.L525:
	movi.n	a2, 0
	retw.n
.L513:
	l32i	a11, a2, 0
	l32i	a12, a3, 0
	blt	a11, a12, .L529
	movi.n	a2, 1
	bge	a12, a11, .L525
	retw.n
.L529:
	movi.n	a2, -1
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	beqz.n	a4, .L541
.L543:
	loop	a8, .L532_LEND
.L532:
	l32i	a9, a2, 0
	beq	a9, a3, .L531
	addi.n	a2, a2, 4
	.L532_LEND:
.L541:
	movi.n	a2, 0
.L531:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a4
	beqz.n	a4, .L558
.L565:
	loop	a8, .L545_LEND
.L545:
	l32i	a10, a2, 0
	l32i	a9, a3, 0
	addi.n	a2, a2, 4
	bne	a10, a9, .L563
	addi.n	a3, a3, 4
	.L545_LEND:
.L558:
	movi.n	a2, 0
	retw.n
.L563:
	blt	a10, a9, .L564
	movi.n	a2, 1
	bge	a9, a10, .L558
	retw.n
.L564:
	movi.n	a2, -1
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
	beqz.n	a4, .L567
	l32r	a8, .LC51
	slli	a12, a4, 2
	mov.n	a10, a2
	callx8	a8
.L567:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L578
	sub	a12, a2, a3
	slli	a11, a4, 2
	mov.n	a8, a3
	mov.n	a9, a2
	addi.n	a10, a4, -1
	bgeu	a12, a11, .L593
	beqz.n	a4, .L578
	slli	a9, a10, 2
	srli	a13, a9, 2
	addi.n	a9, a13, 1
	addx4	a8, a10, a3
	addx4	a10, a10, a2
	blti	a9, 3, .L592
	addi.n	a9, a9, -1
	l32i	a11, a8, 0
	s32i	a11, a10, 0
	loop	a9, .L576_LEND
.L576:
	addi	a8, a8, -4
	l32i	a11, a8, 0
	addi	a10, a10, -4
	s32i	a11, a10, 0
	.L576_LEND:
.L578:
	retw.n
.L593:
	beqz.n	a4, .L578
	blti	a4, 3, .L591
	mov.n	a4, a10
	l32i	a10, a3, 0
	s32i	a10, a2, 0
.L574:
	addi.n	a8, a8, 4
	l32i	a10, a8, 0
	addi.n	a9, a9, 4
	s32i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L574
	retw.n
.L591:
	l32i	a10, a8, 0
	addi.n	a8, a8, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L591
	retw.n
.L592:
	l32i	a14, a8, 0
	addi	a10, a10, -4
	s32i	a14, a10, 4
	addi	a8, a8, -4
	addi.n	a9, a9, -1
	bnez.n	a9, .L592
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L595
	mov.n	a8, a2
	blti	a4, 3, .L604
	addi.n	a4, a4, -1
	s32i	a3, a2, 0
.L596:
	addi.n	a8, a8, 4
	s32i	a3, a8, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L596
.L595:
	retw.n
.L604:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L604
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	bgeu	a2, a3, .L606
	add.n	a15, a2, a4
	add.n	a3, a3, a4
	beqz.n	a4, .L605
	sub	a2, a15, a2
.L608:
	addi.n	a15, a15, -1
	l8ui	a8, a15, 0
	addi.n	a3, a3, -1
	s8i	a8, a3, 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L608
.L605:
	retw.n
.L606:
	beq	a2, a3, .L605
	beqz.n	a4, .L605
	addi.n	a8, a4, -1
	bltui	a8, 7, .L647
	or	a9, a3, a2
	extui	a10, a9, 0, 2
	bnez.n	a10, .L647
	addi.n	a11, a2, 1
	sub	a12, a3, a11
	bltui	a12, 3, .L647
	srli	a13, a4, 2
	slli	a14, a13, 2
	addi	a15, a14, -4
	srli	a8, a15, 2
	addi.n	a8, a8, 1
	mov.n	a9, a3
	slli	a12, a13, 2
	addx4	a11, a13, a2
	blti	a8, 3, .L643
	addi.n	a8, a8, -1
	l32i	a10, a2, 0
	s32i	a10, a3, 0
	loop	a8, .L611_LEND
.L611:
	addi.n	a2, a2, 4
	l32i	a10, a2, 0
	addi.n	a9, a9, 4
	s32i	a10, a9, 0
	.L611_LEND:
.L644:
	add.n	a3, a3, a12
	sub	a13, a4, a12
	beq	a4, a12, .L605
	l8ui	a9, a11, 0
	s8i	a9, a3, 0
	beqi	a13, 1, .L605
	l8ui	a12, a11, 1
	s8i	a12, a3, 1
	beqi	a13, 2, .L605
	l8ui	a11, a11, 2
	s8i	a11, a3, 2
	retw.n
.L643:
	l32i	a10, a2, 0
	addi.n	a2, a2, 4
	s32i	a10, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L643
	j	.L644
.L647:
	blti	a4, 3, .L645
	addi.n	a4, a4, -1
	l8ui	a8, a2, 0
	s8i	a8, a3, 0
.L614:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	addi.n	a3, a3, 1
	s8i	a8, a3, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L614
	retw.n
.L645:
	l8ui	a14, a2, 0
	addi.n	a2, a2, 1
	s8i	a14, a3, 0
	addi.n	a3, a3, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L645
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	movi.n	a13, -1
	neg	a9, a4
	mov.n	a11, a3
	srli	a8, a3, 1
	xor	a3, a4, a13
	extui	a12, a9, 0, 6
	ssr	a3
	srl	a14, a8
	movi.n	a8, -1
	xor	a13, a12, a8
	movi.n	a10, 0x20
	add.n	a3, a2, a2
	and	a15, a9, a10
	ssl	a4
	sll	a8, a2
	and	a9, a4, a10
	ssl	a13
	sll	a10, a3
	ssl	a4
	sll	a4, a11
	ssr	a12
	srl	a11, a11
	ssr	a12
	srl	a2, a2
	movi.n	a13, 0
	or	a14, a14, a8
	or	a12, a10, a11
	movnez	a14, a4, a9
	movnez	a12, a2, a15
	movnez	a4, a13, a9
	movnez	a2, a13, a15
	or	a2, a2, a14
	or	a3, a12, a4
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	movi.n	a9, -1
	neg	a10, a4
	xor	a13, a4, a9
	add.n	a8, a2, a2
	extui	a12, a10, 0, 6
	ssl	a13
	sll	a14, a8
	movi.n	a8, -1
	xor	a13, a12, a8
	movi.n	a11, 0x20
	srli	a9, a3, 1
	and	a15, a10, a11
	ssr	a4
	srl	a8, a3
	and	a10, a4, a11
	ssr	a13
	srl	a11, a9
	ssr	a4
	srl	a4, a2
	ssl	a12
	sll	a2, a2
	ssl	a12
	sll	a3, a3
	movi.n	a13, 0
	or	a12, a11, a2
	or	a14, a14, a8
	movnez	a14, a4, a10
	movnez	a12, a3, a15
	movnez	a4, a13, a10
	movnez	a3, a13, a15
	or	a2, a12, a4
	or	a3, a3, a14
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
	extui	a9, a8, 0, 4
	ssl	a3
	sll	a3, a2
	ssr	a9
	srl	a10, a2
	or	a11, a3, a10
	extui	a2, a11, 0, 16
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
	extui	a9, a8, 0, 4
	ssr	a3
	srl	a3, a2
	ssl	a9
	sll	a10, a2
	or	a11, a3, a10
	extui	a2, a11, 0, 16
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
	extui	a9, a8, 0, 3
	ssl	a3
	sll	a3, a2
	ssr	a9
	srl	a10, a2
	or	a11, a3, a10
	extui	a2, a11, 0, 8
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
	extui	a9, a8, 0, 3
	ssr	a3
	srl	a3, a2
	ssl	a9
	sll	a10, a2
	or	a11, a3, a10
	extui	a2, a11, 0, 8
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
	loop	a10, .L664_LEND
.L664:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbsi	a9, 31, .L667
	.L664_LEND:
	mov.n	a2, a11
	retw.n
.L667:
	mov.n	a2, a8
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L668
	extui	a2, a8, 0, 1
	bbsi	a8, 31, .L668
	movi.n	a2, 1
.L670:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L670
.L668:
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
	bltz	a10, .L675
	l32r	a9, .LC55
	l32r	a11, .LC56
	mov.n	a10, a7
	callx8	a9
	blti	a10, 1, .L679
.L675:
	retw.n
.L679:
	movi.n	a2, 0
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
	bltz	a10, .L680
	l32r	a9, .LC61
	l32r	a12, .LC62
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a9
	blti	a10, 1, .L684
.L680:
	retw.n
.L684:
	movi.n	a2, 0
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
	bltz	a10, .L685
	l32r	a9, .LC67
	l32r	a12, .LC68
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a9
	blti	a10, 1, .L689
.L685:
	retw.n
.L689:
	movi.n	a2, 0
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
	bnez.n	a10, .L692
	l32r	a9, .LC74
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a9
	l32r	a12, .LC75
	mov.n	a11, a2
	callx8	a12
	beqz.n	a10, .L692
	l32r	a10, .LC77
	l32r	a7, .LC78
	movgez	a7, a10, a3
	bbci	a3, 31, .L695
	l32r	a6, .LC76
.L696:
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a6
	mov.n	a2, a10
.L695:
	extui	a11, a3, 31, 1
	add.n	a3, a11, a3
	srai	a3, a3, 1
	beqz.n	a3, .L692
	l32r	a6, .LC76
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a7, a3, 31, 1
	add.n	a13, a7, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L696
.L706:
	srai	a3, a13, 1
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	extui	a7, a3, 31, 1
	add.n	a13, a7, a3
	mov.n	a7, a10
	bbsi	a3, 31, .L696
	j	.L706
.L692:
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
	bnez.n	a10, .L708
	l32r	a9, .LC82
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a9
	l32r	a14, .LC83
	mov.n	a12, a2
	mov.n	a13, a3
	callx8	a14
	beqz.n	a10, .L708
	l32r	a6, .LC86
	movi.n	a7, 0
	bltz	a4, .L722
.L710:
	bbci	a4, 31, .L711
	l32r	a5, .LC84
.L712:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L711:
	extui	a10, a4, 31, 1
	add.n	a4, a10, a4
	srai	a4, a4, 1
	beqz.n	a4, .L708
	l32r	a5, .LC84
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a6, a4, 31, 1
	add.n	a12, a6, a4
	mov.n	a7, a11
	mov.n	a6, a10
	bbsi	a4, 31, .L712
.L723:
	srai	a4, a12, 1
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a6, a4, 31, 1
	add.n	a12, a6, a4
	mov.n	a7, a11
	mov.n	a6, a10
	bbsi	a4, 31, .L712
	j	.L723
.L708:
	retw.n
.L722:
	l32r	a6, .LC85
	movi.n	a7, 0
	j	.L710
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
	bnez.n	a10, .L725
	l32r	a9, .LC90
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a9
	l32r	a14, .LC91
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a14
	beqz.n	a10, .L725
	l32r	a6, .LC94
	movi.n	a7, 0
	bltz	a4, .L739
.L727:
	bbci	a4, 31, .L728
	l32r	a5, .LC92
.L729:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a13, a7
	callx8	a5
	mov.n	a2, a10
	mov.n	a3, a11
.L728:
	extui	a10, a4, 31, 1
	add.n	a4, a10, a4
	srai	a4, a4, 1
	beqz.n	a4, .L725
	l32r	a5, .LC92
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a6, a4, 31, 1
	add.n	a12, a6, a4
	mov.n	a7, a11
	mov.n	a6, a10
	bbsi	a4, 31, .L729
.L740:
	srai	a4, a12, 1
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	extui	a6, a4, 31, 1
	add.n	a12, a6, a4
	mov.n	a7, a11
	mov.n	a6, a10
	bbsi	a4, 31, .L729
	j	.L740
.L725:
	retw.n
.L739:
	l32r	a6, .LC93
	movi.n	a7, 0
	j	.L727
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L742
	addi.n	a8, a4, -1
	bltui	a8, 4, .L743
	or	a9, a2, a3
	extui	a10, a9, 0, 2
	bnez.n	a10, .L743
	srli	a11, a4, 2
	slli	a12, a11, 2
	addi	a13, a12, -4
	srli	a14, a13, 2
	addi.n	a10, a14, 1
	mov.n	a9, a2
	slli	a12, a11, 2
	addx4	a13, a11, a3
	blti	a10, 3, .L765
	addi.n	a10, a10, -1
	l32i	a8, a3, 0
	l32i	a11, a2, 0
	loop	a10, .L744_LEND
.L744:
	xor	a8, a8, a11
	s32i	a8, a9, 0
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	l32i	a8, a3, 0
	l32i	a11, a9, 0
	.L744_LEND:
	xor	a8, a8, a11
	s32i	a8, a9, 0
.L766:
	add.n	a14, a2, a12
	sub	a10, a4, a12
	beq	a4, a12, .L742
	l8ui	a9, a14, 0
	l8ui	a12, a13, 0
	xor	a15, a9, a12
	s8i	a15, a14, 0
	beqi	a10, 1, .L742
	l8ui	a8, a14, 1
	l8ui	a11, a13, 1
	xor	a9, a11, a8
	s8i	a9, a14, 1
	beqi	a10, 2, .L742
	l8ui	a10, a14, 2
	l8ui	a13, a13, 2
	xor	a12, a13, a10
	s8i	a12, a14, 2
.L742:
	retw.n
.L765:
	l32i	a15, a9, 0
	l32i	a8, a3, 0
	addi.n	a3, a3, 4
	xor	a11, a8, a15
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, -1
	bnez.n	a10, .L765
	j	.L766
.L743:
	mov.n	a9, a2
	blti	a4, 3, .L767
	addi.n	a4, a4, -1
	l8ui	a8, a3, 0
	l8ui	a10, a2, 0
.L746:
	xor	a8, a8, a10
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
	l8ui	a8, a3, 0
	l8ui	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L746
	xor	a8, a8, a10
	s8i	a8, a9, 0
	retw.n
.L767:
	l8ui	a14, a9, 0
	l8ui	a15, a3, 0
	addi.n	a3, a3, 1
	xor	a8, a15, a14
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L767
	retw.n
	.size	memxor, .-memxor
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L775
	mov.n	a11, a2
.L770:
	l8ui	a9, a11, 1
	addi.n	a11, a11, 1
	bnez.n	a9, .L770
.L769:
	beqz.n	a4, .L772
.L771:
	l8ui	a10, a3, 0
	addi.n	a3, a3, 1
	s8i	a10, a11, 0
	beqz.n	a10, .L774
	addi.n	a11, a11, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L771
.L772:
	movi.n	a12, 0
	s8i	a12, a11, 0
.L774:
	retw.n
.L775:
	mov.n	a11, a2
	j	.L769
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a3, .L783
.L784:
	add.n	a9, a8, a2
	l8ui	a10, a9, 0
	bnez.n	a10, .L786
.L783:
	retw.n
.L786:
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L784
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	beqz.n	a10, .L798
.L794:
	mov.n	a8, a3
	j	.L797
.L796:
	beq	a9, a10, .L795
.L797:
	l8ui	a9, a8, 0
	addi.n	a8, a8, 1
	bnez.n	a9, .L796
	l8ui	a10, a2, 1
	addi.n	a2, a2, 1
	bnez.n	a10, .L794
.L798:
	mov.n	a2, a10
.L795:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L803:
	l8ui	a9, a8, 0
	sub	a10, a9, a3
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L803
	retw.n
	.size	strrchr, .-strrchr
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 32
	l8ui	a7, a3, 0
	mov.n	a10, a2
	beqz.n	a7, .L817
	mov.n	a8, a3
.L807:
	l8ui	a11, a8, 1
	addi.n	a8, a8, 1
	bnez.n	a11, .L807
	sub	a9, a8, a3
	mov.n	a2, a10
	beq	a8, a3, .L805
	addi.n	a5, a3, -1
	add.n	a5, a5, a9
	movi.n	a13, 1
	j	.L825
.L826:
	addi.n	a10, a10, 1
	beqz.n	a2, .L805
.L825:
	l8ui	a2, a10, 0
	bne	a2, a7, .L826
	mov.n	a12, a7
	mov.n	a9, a3
	mov.n	a14, a10
	j	.L813
.L827:
	bnone	a4, a8, .L810
	l8ui	a2, a14, 0
	l8ui	a12, a9, 1
	addi.n	a15, a9, 1
	beqz.n	a2, .L810
	mov.n	a9, a15
.L813:
	sub	a4, a9, a5
	mov.n	a15, a11
	sub	a6, a2, a12
	movnez	a15, a13, a4
	mov.n	a8, a11
	mov.n	a4, a11
	addi.n	a14, a14, 1
	movnez	a4, a13, a12
	moveqz	a8, a13, a6
	bnez.n	a15, .L827
.L810:
	beq	a2, a12, .L817
	addi.n	a10, a10, 1
	j	.L825
.L817:
	mov.n	a2, a10
.L805:
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
	bltz	a10, .L838
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L832
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bltz	a10, .L831
.L832:
	retw.n
.L838:
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a8
	blti	a10, 1, .L832
.L831:
	l32r	a10, .LC98
	xor	a2, a2, a10
	retw.n
	.size	copysign, .-copysign
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	beqz.n	a5, .L839
	bltu	a3, a5, .L850
	sub	a3, a3, a5
	add.n	a13, a2, a3
	bltu	a13, a2, .L850
	l8ui	a15, a4, 0
	addi.n	a5, a5, -1
	addi.n	a4, a4, 1
.L845:
	l8ui	a8, a2, 0
	addi.n	a14, a2, 1
	beq	a8, a15, .L858
	mov.n	a2, a14
.L841:
	bgeu	a13, a2, .L845
.L850:
	movi.n	a2, 0
.L839:
	retw.n
.L858:
	mov.n	a9, a4
	beqz.n	a5, .L839
.L844:
	mov.n	a8, a14
	mov.n	a10, a5
	loop	a10, .L842_LEND
.L842:
	l8ui	a12, a8, 0
	l8ui	a11, a9, 0
	addi.n	a8, a8, 1
	bne	a12, a11, .L859
	addi.n	a9, a9, 1
	.L842_LEND:
	retw.n
.L859:
	bltu	a13, a14, .L850
	l8ui	a9, a14, 0
	addi.n	a2, a14, 1
	bne	a9, a15, .L841
	mov.n	a10, a14
	mov.n	a9, a4
	mov.n	a14, a2
	mov.n	a2, a10
	j	.L844
	.size	memmem, .-memmem
	.literal_position
	.literal .LC99, memmove@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L861
	l32r	a8, .LC99
	mov.n	a12, a4
	mov.n	a10, a2
	callx8	a8
.L861:
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
	bltz	a10, .L888
	l32r	a12, .LC114
	movi.n	a13, 0
	l32r	a3, .LC108
	s32i.n	a12, sp, 0
	s32i.n	a13, sp, 4
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a3
	movi.n	a9, 0
	s32i	a9, sp, 8
	bltz	a10, .L889
.L868:
	l32r	a14, .LC111
	mov.n	a10, a3
	mov.n	a4, a2
	movi.n	a5, 0
	mov.n	a3, a14
	mov.n	a2, a10
.L874:
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
	bgez	a10, .L874
	mov.n	a2, a4
	mov.n	a4, a5
.L875:
	l32i	a8, sp, 8
	s32i	a4, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	beqz.n	a8, .L865
	l32r	a11, .LC102
	xor	a2, a6, a11
.L865:
	retw.n
.L889:
	l32r	a12, .LC113
	movi.n	a13, 0
	l32i	a3, sp, 12
	s32i.n	a12, sp, 0
	s32i.n	a13, sp, 4
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a3
	bgez	a10, .L871
	l32r	a14, .LC110
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a14
	bnez.n	a10, .L880
.L871:
	movi.n	a11, 0
	s32i	a11, a2, 0
	mov.n	a3, a7
	mov.n	a2, a6
	retw.n
.L888:
	l32r	a10, .LC102
	l32r	a15, .LC104
	l32r	a12, .LC116
	xor	a4, a6, a10
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	mov.n	a5, a3
	callx8	a15
	bgei	a10, 1, .L890
	l32r	a5, .LC114
	mov.n	a6, a4
	movi.n	a12, 0
	movi.n	a4, 1
	l32r	a3, .LC108
	s32i	a4, sp, 8
	s32i.n	a5, sp, 0
	s32i.n	a12, sp, 4
	j	.L868
.L890:
	l32r	a8, .LC106
	l32r	a12, .LC115
	movi.n	a13, 0
	mov.n	a10, a6
	mov.n	a11, a3
	callx8	a8
	blti	a10, 1, .L871
	l32r	a7, .LC113
	movi.n	a6, 1
	movi.n	a9, 0
	s32i	a6, sp, 8
	s32i.n	a7, sp, 0
	s32i.n	a9, sp, 4
.L869:
	mov.n	a7, a5
	l32i	a3, sp, 12
	l32r	a5, .LC112
	mov.n	a6, a4
	movi.n	a4, 0
.L876:
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
	bltz	a10, .L876
	j	.L875
.L880:
	mov.n	a4, a6
	mov.n	a5, a7
	j	.L869
	.size	frexp, .-frexp
	.literal_position
	.literal .LC117, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	or	a9, a3, a2
	mov.n	a14, a2
	mov.n	a6, a3
	beqz.n	a9, .L896
	l32r	a2, .LC117
	movi.n	a3, 0
	s32i	a2, sp, 4
	mov.n	a2, a3
.L895:
	l32i	a8, sp, 4
	extui	a10, a6, 0, 1
	s32i	a14, sp, 0
	mov.n	a11, a5
	mull	a7, a4, a10
	callx8	a8
	l32i	a12, sp, 0
	add.n	a10, a7, a10
	ssai	1
	src	a6, a12, a6
	srli	a14, a12, 1
	add.n	a11, a3, a11
	or	a15, a14, a6
	movi.n	a13, 1
	add.n	a7, a2, a10
	bltu	a11, a3, .L894
	movi.n	a13, 0
.L894:
	ssai	31
	src	a4, a4, a5
	add.n	a2, a13, a7
	mov.n	a3, a11
	add.n	a5, a5, a5
	bnez.n	a15, .L895
	retw.n
.L896:
	mov.n	a3, a9
	mov.n	a2, a9
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L927
.L899:
	bltz	a3, .L904
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bltu	a3, a2, .L929
.L901:
	movi.n	a11, 0
	beqz.n	a8, .L905
.L904:
	movi.n	a11, 0
	movi.n	a12, 1
	mov.n	a7, a11
	mov.n	a15, a11
.L908:
	sub	a14, a2, a3
	extui	a10, a12, 0, 8
	bgeu	a2, a3, .L906
	extui	a10, a7, 0, 8
.L906:
	mov.n	a13, a15
	movnez	a13, a8, a10
	extui	a9, a12, 0, 8
	srli	a8, a8, 1
	bgeu	a2, a3, .L907
	extui	a9, a7, 0, 8
.L907:
	movnez	a2, a14, a9
	or	a11, a11, a13
	srli	a3, a3, 1
	bnez.n	a8, .L908
.L905:
	moveqz	a2, a11, a4
	retw.n
.L929:
	bnez.n	a8, .L899
	j	.L901
.L927:
	sub	a9, a2, a3
	bltu	a2, a3, .L930
.L910:
	extui	a11, a8, 0, 8
	movi.n	a10, 1
	bltu	a2, a3, .L931
	movnez	a2, a9, a10
	j	.L905
.L931:
	movi.n	a10, 0
	movnez	a2, a9, a10
	j	.L905
.L930:
	movi.n	a8, 0
	j	.L910
	.size	udivmodsi4, .-udivmodsi4
	.align	4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	entry	sp, 32
	extui	a2, a2, 0, 8
	slli	a8, a2, 8
	nsau	a10, a8
	addi.n	a11, a10, -1
	movi.n	a9, 7
	movnez	a9, a11, a2
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
	beq	a2, a9, .L943
.L941:
	nsau	a2, a8
	nsau	a11, a10
	addi	a12, a2, 32
	movnez	a12, a11, a10
	addi.n	a2, a12, -1
	retw.n
.L943:
	bne	a3, a2, .L941
	movi.n	a2, 0x3f
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L944
	movi.n	a2, 0
.L946:
	extui	a8, a9, 0, 1
	neg	a10, a8
	and	a11, a10, a3
	srli	a9, a9, 1
	add.n	a2, a2, a11
	add.n	a3, a3, a3
	bnez.n	a9, .L946
.L944:
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
	bltu	a2, a3, .L953
	add.n	a9, a3, a4
	bgeu	a9, a2, .L1000
.L953:
	beqz.n	a8, .L1001
	slli	a14, a8, 3
	addi	a15, a14, -8
	srli	a8, a15, 3
	addi.n	a8, a8, 1
	mov.n	a11, a3
	mov.n	a9, a2
	blti	a8, 3, .L995
	addi.n	a8, a8, -1
	l32i	a12, a3, 0
	l32i	a13, a3, 4
	s32i	a12, a2, 0
	s32i	a13, a2, 4
	loop	a8, .L956_LEND
.L956:
	addi.n	a9, a9, 8
	addi.n	a11, a11, 8
	l32i	a12, a11, 0
	l32i	a13, a11, 4
	s32i	a12, a9, 0
	s32i	a13, a9, 4
	.L956_LEND:
.L996:
	bgeu	a10, a4, .L949
	sub	a13, a4, a10
	addi.n	a9, a13, -1
	add.n	a11, a2, a10
	bltui	a9, 7, .L1002
	addi.n	a14, a10, 1
	add.n	a15, a3, a14
	sub	a12, a11, a15
	add.n	a8, a3, a10
	bgeui	a12, 3, .L1003
.L958:
	add.n	a3, a3, a4
	sub	a3, a3, a8
	blti	a3, 3, .L999
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a11, 0
.L962:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	addi.n	a11, a11, 1
	s8i	a9, a11, 0
	addi.n	a3, a3, -1
	bnez.n	a3, .L962
.L949:
	retw.n
.L995:
	l32i	a12, a11, 0
	l32i	a13, a11, 4
	s32i	a12, a9, 0
	s32i	a13, a9, 4
	addi.n	a11, a11, 8
	addi.n	a9, a9, 8
	addi.n	a8, a8, -1
	bnez.n	a8, .L995
	j	.L996
.L1003:
	or	a9, a8, a11
	extui	a14, a9, 0, 2
	bnez.n	a14, .L958
	srli	a15, a13, 2
	slli	a12, a15, 2
	addi	a9, a12, -4
	srli	a12, a9, 2
	addi.n	a9, a12, 1
	slli	a14, a15, 2
	blti	a9, 3, .L997
	addi.n	a9, a9, -1
	l32i	a12, a8, 0
	s32i	a12, a11, 0
	loop	a9, .L960_LEND
.L960:
	addi.n	a8, a8, 4
	l32i	a12, a8, 0
	addi.n	a11, a11, 4
	s32i	a12, a11, 0
	.L960_LEND:
	add.n	a10, a10, a14
	beq	a13, a14, .L949
.L1004:
	add.n	a11, a3, a10
	l8ui	a13, a11, 0
	add.n	a8, a2, a10
	s8i	a13, a8, 0
	addi.n	a14, a10, 1
	bgeu	a14, a4, .L949
	add.n	a9, a3, a14
	l8ui	a12, a9, 0
	add.n	a15, a2, a14
	s8i	a12, a15, 0
	addi.n	a10, a10, 2
	bgeu	a10, a4, .L949
	add.n	a3, a3, a10
	l8ui	a11, a3, 0
	add.n	a13, a2, a10
	s8i	a11, a13, 0
	retw.n
.L997:
	l32i	a15, a8, 0
	addi.n	a8, a8, 4
	s32i	a15, a11, 0
	addi.n	a11, a11, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L997
	add.n	a10, a10, a14
	bne	a13, a14, .L1004
	j	.L949
.L1000:
	addi.n	a8, a4, -1
	beqz.n	a4, .L949
	blti	a4, 3, .L994
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
.L954:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L954
	retw.n
.L994:
	add.n	a11, a3, a8
	l8ui	a12, a11, 0
	add.n	a13, a2, a8
	s8i	a12, a13, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L994
	retw.n
.L999:
	l8ui	a14, a8, 0
	addi.n	a8, a8, 1
	s8i	a14, a11, 0
	addi.n	a11, a11, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L999
	retw.n
.L1001:
	add.n	a11, a2, a10
	add.n	a8, a3, a10
	bnez.n	a4, .L958
	retw.n
.L1002:
	add.n	a8, a3, a10
	j	.L958
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a12, a4, 1
	bltu	a2, a3, .L1009
	add.n	a8, a3, a4
	bgeu	a8, a2, .L1045
.L1009:
	beqz.n	a12, .L1008
	addi.n	a13, a12, -1
	movi.n	a14, 8
	bgeu	a14, a13, .L1012
	or	a15, a3, a2
	extui	a8, a15, 0, 2
	bnez.n	a8, .L1012
	addi.n	a9, a3, 2
	beq	a2, a9, .L1012
	srli	a13, a4, 2
	slli	a11, a13, 2
	addi	a14, a11, -4
	srli	a15, a14, 2
	addi.n	a8, a15, 1
	mov.n	a10, a3
	mov.n	a9, a2
	slli	a14, a13, 2
	blti	a8, 3, .L1042
	addi.n	a8, a8, -1
	l32i	a11, a3, 0
	s32i	a11, a2, 0
	loop	a8, .L1013_LEND
.L1013:
	addi.n	a10, a10, 4
	l32i	a11, a10, 0
	addi.n	a9, a9, 4
	s32i	a11, a9, 0
	.L1013_LEND:
	add.n	a10, a13, a13
	beq	a12, a10, .L1008
.L1046:
	add.n	a12, a3, a14
	l16ui	a13, a12, 0
	add.n	a8, a2, a14
	s16i	a13, a8, 0
.L1008:
	bbci	a4, 31, .L1005
.L1047:
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a10, a3, 0
	add.n	a4, a2, a4
	s8i	a10, a4, 0
.L1005:
	retw.n
.L1042:
	l32i	a11, a10, 0
	addi.n	a10, a10, 4
	s32i	a11, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L1042
	add.n	a10, a13, a13
	bne	a12, a10, .L1046
	j	.L1008
.L1045:
	addi.n	a8, a4, -1
	beqz.n	a4, .L1005
	blti	a4, 3, .L1041
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
.L1010:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L1010
	retw.n
.L1041:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a11, a2, a8
	s8i	a10, a11, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L1041
	retw.n
.L1012:
	add.n	a9, a12, a12
	addi	a14, a9, -2
	srli	a15, a14, 1
	addi.n	a8, a15, 1
	mov.n	a10, a3
	mov.n	a9, a2
	blti	a8, 3, .L1044
	addi.n	a8, a8, -1
	l16ui	a11, a3, 0
	s16i	a11, a2, 0
	loop	a8, .L1015_LEND
.L1015:
	addi.n	a10, a10, 2
	l16ui	a11, a10, 0
	addi.n	a9, a9, 2
	s16i	a11, a9, 0
	.L1015_LEND:
	bbci	a4, 31, .L1005
	j	.L1047
.L1044:
	l16ui	a11, a10, 0
	addi.n	a10, a10, 2
	s16i	a11, a9, 0
	addi.n	a9, a9, 2
	addi.n	a8, a8, -1
	bnez.n	a8, .L1044
	bbci	a4, 31, .L1005
	j	.L1047
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	movi.n	a10, -4
	srli	a8, a4, 2
	and	a10, a4, a10
	bltu	a2, a3, .L1052
	add.n	a9, a3, a4
	bgeu	a9, a2, .L1099
.L1052:
	beqz.n	a8, .L1100
	slli	a14, a8, 2
	addi	a15, a14, -4
	srli	a8, a15, 2
	addi.n	a8, a8, 1
	mov.n	a11, a3
	mov.n	a9, a2
	blti	a8, 3, .L1094
	addi.n	a8, a8, -1
	l32i	a12, a3, 0
	s32i	a12, a2, 0
	loop	a8, .L1055_LEND
.L1055:
	addi.n	a11, a11, 4
	l32i	a12, a11, 0
	addi.n	a9, a9, 4
	s32i	a12, a9, 0
	.L1055_LEND:
.L1095:
	bgeu	a10, a4, .L1048
	sub	a13, a4, a10
	addi.n	a9, a13, -1
	add.n	a11, a2, a10
	bltui	a9, 7, .L1101
	addi.n	a14, a10, 1
	add.n	a15, a3, a14
	sub	a12, a11, a15
	add.n	a8, a3, a10
	bgeui	a12, 3, .L1102
.L1057:
	add.n	a3, a3, a4
	sub	a3, a3, a8
	blti	a3, 3, .L1098
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a11, 0
.L1061:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	addi.n	a11, a11, 1
	s8i	a9, a11, 0
	addi.n	a3, a3, -1
	bnez.n	a3, .L1061
.L1048:
	retw.n
.L1094:
	l32i	a12, a11, 0
	addi.n	a11, a11, 4
	s32i	a12, a9, 0
	addi.n	a9, a9, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L1094
	j	.L1095
.L1102:
	or	a9, a8, a11
	extui	a14, a9, 0, 2
	bnez.n	a14, .L1057
	srli	a15, a13, 2
	slli	a12, a15, 2
	addi	a9, a12, -4
	srli	a12, a9, 2
	addi.n	a9, a12, 1
	slli	a14, a15, 2
	blti	a9, 3, .L1096
	addi.n	a9, a9, -1
	l32i	a12, a8, 0
	s32i	a12, a11, 0
	loop	a9, .L1059_LEND
.L1059:
	addi.n	a8, a8, 4
	l32i	a12, a8, 0
	addi.n	a11, a11, 4
	s32i	a12, a11, 0
	.L1059_LEND:
	add.n	a10, a10, a14
	beq	a13, a14, .L1048
.L1103:
	add.n	a11, a3, a10
	l8ui	a13, a11, 0
	add.n	a8, a2, a10
	s8i	a13, a8, 0
	addi.n	a14, a10, 1
	bgeu	a14, a4, .L1048
	add.n	a9, a3, a14
	l8ui	a12, a9, 0
	add.n	a15, a2, a14
	s8i	a12, a15, 0
	addi.n	a10, a10, 2
	bgeu	a10, a4, .L1048
	add.n	a3, a3, a10
	l8ui	a11, a3, 0
	add.n	a13, a2, a10
	s8i	a11, a13, 0
	retw.n
.L1096:
	l32i	a15, a8, 0
	addi.n	a8, a8, 4
	s32i	a15, a11, 0
	addi.n	a11, a11, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L1096
	add.n	a10, a10, a14
	bne	a13, a14, .L1103
	j	.L1048
.L1099:
	addi.n	a8, a4, -1
	beqz.n	a4, .L1048
	blti	a4, 3, .L1093
	mov.n	a4, a8
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
.L1053:
	addi.n	a8, a8, -1
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a4, a4, -1
	bnez.n	a4, .L1053
	retw.n
.L1093:
	add.n	a11, a3, a8
	l8ui	a12, a11, 0
	add.n	a13, a2, a8
	s8i	a12, a13, 0
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	bnez.n	a4, .L1093
	retw.n
.L1098:
	l8ui	a14, a8, 0
	addi.n	a8, a8, 1
	s8i	a14, a11, 0
	addi.n	a11, a11, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L1098
	retw.n
.L1100:
	add.n	a11, a2, a10
	add.n	a8, a3, a10
	bnez.n	a4, .L1057
	retw.n
.L1101:
	add.n	a8, a3, a10
	j	.L1057
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
	bbsi	a2, 16, .L1113
	srai	a2, a8, 14
	bnez.n	a2, .L1110
	srai	a9, a8, 13
	bnez.n	a9, .L1114
	srai	a2, a8, 12
	bnez.n	a2, .L1115
	srai	a10, a8, 11
	bnez.n	a10, .L1116
	srai	a11, a8, 10
	bnez.n	a11, .L1117
	srai	a12, a8, 9
	bnez.n	a12, .L1118
	srai	a13, a8, 8
	bnez.n	a13, .L1119
	srai	a14, a8, 7
	bnez.n	a14, .L1120
	srai	a15, a8, 6
	bnez.n	a15, .L1121
	srai	a9, a8, 5
	bnez.n	a9, .L1122
	srai	a2, a8, 4
	bnez.n	a2, .L1123
	srai	a10, a8, 3
	bnez.n	a10, .L1124
	srai	a11, a8, 2
	bnez.n	a11, .L1125
	srai	a12, a8, 1
	bnez.n	a12, .L1126
	nsau	a8, a8
	srli	a13, a8, 5
	addi.n	a2, a13, 15
.L1110:
	retw.n
.L1113:
	movi.n	a2, 0
	retw.n
.L1124:
	movi.n	a2, 0xc
	retw.n
.L1114:
	movi.n	a2, 2
	retw.n
.L1115:
	movi.n	a2, 3
	retw.n
.L1116:
	movi.n	a2, 4
	retw.n
.L1117:
	movi.n	a2, 5
	retw.n
.L1118:
	movi.n	a2, 6
	retw.n
.L1119:
	movi.n	a2, 7
	retw.n
.L1120:
	movi.n	a2, 8
	retw.n
.L1121:
	movi.n	a2, 9
	retw.n
.L1122:
	movi.n	a2, 0xa
	retw.n
.L1123:
	movi.n	a2, 0xb
	retw.n
.L1125:
	movi.n	a2, 0xd
	retw.n
.L1126:
	movi.n	a2, 0xe
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	bbsi	a2, 31, .L1131
	bbsi	a8, 30, .L1132
	bbsi	a8, 29, .L1133
	bbsi	a8, 28, .L1134
	bbsi	a8, 27, .L1135
	bbsi	a8, 26, .L1136
	bbsi	a8, 25, .L1137
	bbsi	a8, 24, .L1138
	bbsi	a8, 23, .L1139
	bbsi	a8, 22, .L1140
	bbsi	a8, 21, .L1141
	bbsi	a8, 20, .L1142
	bbsi	a8, 19, .L1143
	bbsi	a8, 18, .L1144
	bbsi	a8, 17, .L1145
	srai	a2, a8, 15
	nsau	a9, a2
	srli	a10, a9, 5
	addi.n	a2, a10, 15
	retw.n
.L1131:
	movi.n	a2, 0
	retw.n
.L1132:
	movi.n	a2, 1
	retw.n
.L1143:
	movi.n	a2, 0xc
	retw.n
.L1133:
	movi.n	a2, 2
	retw.n
.L1134:
	movi.n	a2, 3
	retw.n
.L1135:
	movi.n	a2, 4
	retw.n
.L1136:
	movi.n	a2, 5
	retw.n
.L1137:
	movi.n	a2, 6
	retw.n
.L1138:
	movi.n	a2, 7
	retw.n
.L1139:
	movi.n	a2, 8
	retw.n
.L1140:
	movi.n	a2, 9
	retw.n
.L1141:
	movi.n	a2, 0xa
	retw.n
.L1142:
	movi.n	a2, 0xb
	retw.n
.L1144:
	movi.n	a2, 0xd
	retw.n
.L1145:
	movi.n	a2, 0xe
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
	bgez	a10, .L1153
	l32r	a11, .LC129
	mov.n	a10, a2
	callx8	a11
	mov.n	a2, a10
	retw.n
.L1153:
	l32r	a10, .LC131
	l32r	a12, .LC128
	l32i.n	a11, a10, 0
	mov.n	a10, a2
	callx8	a12
	l32r	a2, .LC129
	callx8	a2
	l32r	a13, .LC130
	add.n	a2, a10, a13
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	extui	a8, a2, 1, 1
	extui	a9, a2, 0, 1
	add.n	a10, a8, a9
	extui	a11, a2, 2, 1
	add.n	a12, a10, a11
	extui	a13, a2, 3, 1
	add.n	a14, a12, a13
	extui	a15, a2, 4, 1
	add.n	a8, a14, a15
	extui	a9, a2, 5, 1
	add.n	a10, a8, a9
	extui	a11, a2, 6, 1
	add.n	a12, a10, a11
	extui	a13, a2, 7, 1
	add.n	a14, a12, a13
	extui	a15, a2, 8, 1
	add.n	a8, a14, a15
	extui	a9, a2, 9, 1
	add.n	a10, a8, a9
	extui	a11, a2, 10, 1
	add.n	a12, a10, a11
	extui	a13, a2, 11, 1
	add.n	a14, a12, a13
	extui	a15, a2, 12, 1
	extui	a9, a2, 13, 1
	add.n	a8, a14, a15
	extui	a11, a2, 14, 1
	add.n	a10, a8, a9
	add.n	a12, a10, a11
	extui	a2, a2, 15, 1
	add.n	a13, a12, a2
	extui	a2, a13, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	extui	a8, a2, 1, 1
	extui	a9, a2, 0, 1
	add.n	a10, a8, a9
	extui	a11, a2, 2, 1
	add.n	a12, a10, a11
	extui	a13, a2, 3, 1
	add.n	a14, a12, a13
	extui	a15, a2, 4, 1
	add.n	a8, a14, a15
	extui	a9, a2, 5, 1
	add.n	a10, a8, a9
	extui	a11, a2, 6, 1
	add.n	a12, a10, a11
	extui	a13, a2, 7, 1
	add.n	a14, a12, a13
	extui	a15, a2, 8, 1
	add.n	a8, a14, a15
	extui	a9, a2, 9, 1
	add.n	a10, a8, a9
	extui	a11, a2, 10, 1
	add.n	a12, a10, a11
	extui	a13, a2, 11, 1
	add.n	a14, a12, a13
	extui	a15, a2, 12, 1
	extui	a9, a2, 13, 1
	add.n	a8, a14, a15
	extui	a11, a2, 14, 1
	add.n	a10, a8, a9
	add.n	a12, a10, a11
	extui	a2, a2, 15, 1
	add.n	a2, a12, a2
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L1156
	movi.n	a2, 0
.L1158:
	extui	a8, a9, 0, 1
	neg	a10, a8
	and	a11, a10, a3
	srli	a9, a9, 1
	add.n	a2, a2, a11
	add.n	a3, a3, a3
	bnez.n	a9, .L1158
.L1156:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a2, 0
	beqz.n	a9, .L1161
	beqz.n	a3, .L1161
.L1163:
	extui	a8, a3, 0, 1
	neg	a10, a8
	and	a11, a10, a9
	srli	a3, a3, 1
	add.n	a2, a2, a11
	add.n	a9, a9, a9
	bnez.n	a3, .L1163
.L1161:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L1202
.L1170:
	bltz	a3, .L1175
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bltu	a3, a2, .L1204
.L1172:
	movi.n	a11, 0
	beqz.n	a8, .L1176
.L1175:
	movi.n	a11, 0
	movi.n	a12, 1
	mov.n	a7, a11
	mov.n	a15, a11
.L1179:
	sub	a14, a2, a3
	extui	a10, a12, 0, 8
	bgeu	a2, a3, .L1177
	extui	a10, a7, 0, 8
.L1177:
	mov.n	a13, a15
	movnez	a13, a8, a10
	extui	a9, a12, 0, 8
	srli	a8, a8, 1
	bgeu	a2, a3, .L1178
	extui	a9, a7, 0, 8
.L1178:
	movnez	a2, a14, a9
	or	a11, a11, a13
	srli	a3, a3, 1
	bnez.n	a8, .L1179
.L1176:
	moveqz	a2, a11, a4
	retw.n
.L1204:
	bnez.n	a8, .L1170
	j	.L1172
.L1202:
	sub	a9, a2, a3
	bltu	a2, a3, .L1205
.L1181:
	extui	a11, a8, 0, 8
	mov.n	a10, a9
	bltu	a2, a3, .L1206
	mov.n	a2, a10
	j	.L1176
.L1206:
	mov.n	a10, a2
	mov.n	a2, a10
	j	.L1176
.L1205:
	movi.n	a8, 0
	j	.L1181
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
	bltz	a10, .L1207
	l32r	a9, .LC133
	mov.n	a11, a3
	mov.n	a10, a7
	movi.n	a2, 1
	callx8	a9
	blti	a10, 1, .L1211
.L1207:
	retw.n
.L1211:
	movi.n	a2, 0
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
	bltz	a10, .L1212
	l32r	a9, .LC135
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	movi.n	a2, 1
	callx8	a9
	blti	a10, 1, .L1216
.L1212:
	retw.n
.L1216:
	movi.n	a2, 0
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
	srai	a7, a2, 31
	and	a9, a7, a3
	srai	a7, a3, 31
	sub	a10, a10, a9
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
	bltz	a3, .L1233
	beqz.n	a3, .L1225
	movi.n	a11, 0
.L1221:
	movi.n	a10, 0
	mov.n	a14, a10
.L1223:
	extui	a8, a3, 0, 1
	neg	a12, a8
	and	a13, a12, a2
	addi.n	a9, a14, 1
	srai	a3, a3, 1
	extui	a14, a9, 0, 8
	add.n	a10, a10, a13
	add.n	a2, a2, a2
	beqz.n	a3, .L1226
	bnei	a14, 32, .L1223
.L1226:
	neg	a3, a10
	movnez	a10, a3, a11
	mov.n	a2, a10
	retw.n
.L1233:
	neg	a3, a3
	movi.n	a11, 1
	j	.L1221
.L1225:
	mov.n	a2, a3
	retw.n
	.size	__mulhi3, .-__mulhi3
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a7, 0
	bltz	a2, .L1269
.L1235:
	bgez	a3, .L1236
	neg	a3, a3
	mov.n	a7, a8
.L1236:
	mov.n	a10, a2
	mov.n	a8, a3
	movi.n	a9, 1
	bgeu	a3, a2, .L1265
.L1237:
	add.n	a8, a8, a8
	add.n	a9, a9, a9
	bltu	a8, a2, .L1270
	movi.n	a13, 0
	movi.n	a14, 1
	mov.n	a5, a13
	mov.n	a6, a13
	beqz.n	a9, .L1268
.L1239:
	sub	a2, a10, a8
	extui	a12, a14, 0, 8
	bgeu	a10, a8, .L1244
	extui	a12, a5, 0, 8
.L1244:
	mov.n	a15, a6
	movnez	a15, a9, a12
	extui	a11, a14, 0, 8
	srli	a9, a9, 1
	bgeu	a10, a8, .L1245
	extui	a11, a5, 0, 8
.L1245:
	movnez	a10, a2, a11
	or	a13, a13, a15
	srli	a8, a8, 1
	bnez.n	a9, .L1239
.L1240:
	neg	a2, a13
	moveqz	a2, a13, a7
	retw.n
.L1270:
	bnez.n	a9, .L1237
	movi.n	a13, 0
	movi.n	a14, 1
	mov.n	a5, a13
	mov.n	a6, a13
	bnez.n	a9, .L1239
.L1268:
	movi.n	a13, 0
	neg	a2, a13
	moveqz	a2, a13, a7
	retw.n
.L1269:
	mov.n	a8, a7
	neg	a2, a2
	movi.n	a7, 1
	j	.L1235
.L1265:
	mov.n	a13, a9
	bgeu	a2, a3, .L1240
	j	.L1268
	.size	__divsi3, .-__divsi3
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	movi.n	a15, 0
	bgez	a2, .L1272
	neg	a2, a2
	movi.n	a15, 1
.L1272:
	abs	a8, a3
	mov.n	a10, a2
	movi.n	a9, 1
	bgeu	a8, a2, .L1303
.L1273:
	add.n	a8, a8, a8
	add.n	a9, a9, a9
	bltu	a8, a2, .L1307
	movi.n	a13, 1
	movi.n	a14, 0
	beqz.n	a9, .L1306
.L1275:
	srli	a9, a9, 1
	sub	a12, a10, a8
	extui	a11, a13, 0, 8
	bgeu	a10, a8, .L1280
	extui	a11, a14, 0, 8
.L1280:
	movnez	a10, a12, a11
	srli	a8, a8, 1
	bnez.n	a9, .L1275
.L1276:
	neg	a2, a10
	moveqz	a2, a10, a15
	retw.n
.L1307:
	bnez.n	a9, .L1273
	movi.n	a13, 1
	movi.n	a14, 0
	bnez.n	a9, .L1275
.L1306:
	mov.n	a10, a2
	neg	a2, a10
	moveqz	a2, a10, a15
	retw.n
.L1303:
	sub	a10, a2, a8
	bgeu	a2, a8, .L1276
	j	.L1306
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 32
	extui	a13, a2, 0, 16
	extui	a11, a3, 0, 16
	movi.n	a12, 1
	bgeu	a11, a13, .L1419
	add.n	a14, a11, a11
	sext	a15, a11, 15
	add.n	a9, a12, a12
	extui	a8, a14, 0, 16
	bltz	a15, .L1420
.L1313:
	extui	a9, a9, 0, 16
	bltu	a8, a13, .L1421
.L1311:
	mov.n	a2, a13
	beqz.n	a9, .L1315
	sub	a3, a13, a8
	extui	a2, a3, 0, 16
	movi.n	a15, 1
	bltu	a13, a8, .L1422
	moveqz	a2, a13, a15
	extui	a10, a9, 0, 16
	bltu	a13, a8, .L1423
.L1318:
	extui	a13, a12, 0, 15
	extui	a14, a11, 0, 15
	mov.n	a12, a9
	mov.n	a11, a8
.L1355:
	sub	a8, a2, a14
	extui	a3, a8, 0, 16
	movi.n	a15, 1
	bgeu	a2, a14, .L1320
	movi.n	a15, 0
.L1320:
	movi.n	a9, 1
	bgeu	a2, a14, .L1321
	movi.n	a9, 0
.L1321:
	movnez	a2, a3, a9
	movi.n	a3, 0
	moveqz	a13, a3, a15
	extui	a8, a12, 2, 16
	or	a9, a10, a13
	srli	a14, a11, 2
	beqz.n	a8, .L1315
	sub	a10, a2, a14
	extui	a15, a10, 0, 16
	movi.n	a10, 1
	bgeu	a2, a14, .L1322
	extui	a10, a3, 0, 8
.L1322:
	movi.n	a13, 1
	bgeu	a2, a14, .L1323
	movi.n	a13, 0
.L1323:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 3, 16
	srli	a14, a11, 3
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bgeu	a2, a14, .L1324
	extui	a10, a13, 0, 8
.L1324:
	movi.n	a13, 1
	bgeu	a2, a14, .L1325
	movi.n	a13, 0
.L1325:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 4, 16
	srli	a14, a11, 4
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bgeu	a2, a14, .L1326
	extui	a10, a13, 0, 8
.L1326:
	movi.n	a13, 1
	bgeu	a2, a14, .L1327
	movi.n	a13, 0
.L1327:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 5, 16
	srli	a14, a11, 5
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bgeu	a2, a14, .L1328
	extui	a10, a13, 0, 8
.L1328:
	movi.n	a13, 1
	bgeu	a2, a14, .L1329
	movi.n	a13, 0
.L1329:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 6, 16
	srli	a14, a11, 6
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bgeu	a2, a14, .L1330
	extui	a10, a13, 0, 8
.L1330:
	movi.n	a13, 1
	bgeu	a2, a14, .L1331
	movi.n	a13, 0
.L1331:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 7, 16
	srli	a14, a11, 7
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bltu	a2, a14, .L1424
	movi.n	a13, 1
	bltu	a2, a14, .L1425
.L1333:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 8, 16
	srli	a14, a11, 8
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bltu	a2, a14, .L1426
	movi.n	a13, 1
	bltu	a2, a14, .L1427
.L1335:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 9, 16
	srli	a14, a11, 9
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bltu	a2, a14, .L1428
	movi.n	a13, 1
	bltu	a2, a14, .L1429
.L1337:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 10, 16
	srli	a14, a11, 10
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bltu	a2, a14, .L1430
	movi.n	a13, 1
	bltu	a2, a14, .L1431
.L1339:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 11, 16
	srli	a14, a11, 11
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bltu	a2, a14, .L1432
	movi.n	a13, 1
	bltu	a2, a14, .L1433
.L1341:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 12, 16
	srli	a14, a11, 12
	beqz.n	a8, .L1315
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bltu	a2, a14, .L1434
	movi.n	a13, 1
	bltu	a2, a14, .L1435
.L1343:
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 13, 16
	srli	a14, a11, 13
	beqz.n	a8, .L1315
.L1436:
	sub	a15, a2, a14
	extui	a15, a15, 0, 16
	movi.n	a10, 1
	bgeu	a2, a14, .L1344
	extui	a10, a13, 0, 8
.L1344:
	movi.n	a13, 1
	bgeu	a2, a14, .L1345
	movi.n	a13, 0
.L1345:
	movnez	a2, a15, a13
	movi.n	a15, 0
	moveqz	a8, a15, a10
	or	a9, a9, a8
	extui	a8, a12, 14, 16
	srli	a13, a11, 14
	beqz.n	a8, .L1315
	sub	a14, a2, a13
	extui	a14, a14, 0, 16
	movi.n	a10, 1
	bgeu	a2, a13, .L1346
	mov.n	a10, a15
.L1346:
	extui	a15, a10, 0, 8
	movi.n	a10, 1
	bgeu	a2, a13, .L1347
	movi.n	a10, 0
.L1347:
	movi.n	a13, 0
	moveqz	a8, a13, a15
	extui	a12, a12, 15, 16
	movnez	a2, a14, a10
	srli	a11, a11, 15
	or	a9, a9, a8
	beqz.n	a12, .L1315
	sub	a8, a2, a11
	extui	a14, a8, 0, 16
	movi.n	a15, 1
	bgeu	a2, a11, .L1348
	extui	a15, a13, 0, 8
.L1348:
	movi.n	a10, 1
	bgeu	a2, a11, .L1349
	movi.n	a10, 0
.L1349:
	movnez	a2, a14, a10
	or	a9, a15, a9
.L1315:
	moveqz	a2, a9, a4
	retw.n
.L1421:
	beqz.n	a9, .L1311
	mov.n	a11, a8
	mov.n	a12, a9
	add.n	a14, a11, a11
	sext	a15, a11, 15
	add.n	a9, a12, a12
	extui	a8, a14, 0, 16
	bgez	a15, .L1313
.L1420:
	sub	a2, a13, a11
	extui	a2, a2, 0, 16
	movi.n	a10, 1
	bgeu	a13, a11, .L1351
	movi.n	a10, 0
.L1351:
	moveqz	a2, a13, a10
	extui	a10, a12, 0, 16
	bgeu	a13, a11, .L1353
	movi.n	a10, 0
.L1353:
	extui	a13, a12, 1, 16
	srli	a14, a11, 1
	bnez.n	a13, .L1355
	mov.n	a9, a10
	j	.L1315
.L1425:
	movi.n	a13, 0
	j	.L1333
.L1424:
	extui	a10, a13, 0, 8
	movi.n	a13, 1
	bgeu	a2, a14, .L1333
	j	.L1425
.L1422:
	movi.n	a15, 0
	moveqz	a2, a13, a15
	extui	a10, a9, 0, 16
	bgeu	a13, a8, .L1318
.L1423:
	movi.n	a10, 0
	j	.L1318
.L1427:
	movi.n	a13, 0
	j	.L1335
.L1426:
	extui	a10, a13, 0, 8
	movi.n	a13, 1
	bgeu	a2, a14, .L1335
	j	.L1427
.L1429:
	movi.n	a13, 0
	j	.L1337
.L1428:
	extui	a10, a13, 0, 8
	movi.n	a13, 1
	bgeu	a2, a14, .L1337
	j	.L1429
.L1431:
	movi.n	a13, 0
	j	.L1339
.L1430:
	extui	a10, a13, 0, 8
	movi.n	a13, 1
	bgeu	a2, a14, .L1339
	j	.L1431
.L1433:
	movi.n	a13, 0
	j	.L1341
.L1432:
	extui	a10, a13, 0, 8
	movi.n	a13, 1
	bgeu	a2, a14, .L1341
	j	.L1433
.L1435:
	movi.n	a13, 0
	movnez	a2, a15, a13
	movi.n	a13, 0
	moveqz	a8, a13, a10
	or	a9, a9, a8
	extui	a8, a12, 13, 16
	srli	a14, a11, 13
	bnez.n	a8, .L1436
	j	.L1315
.L1434:
	extui	a10, a13, 0, 8
	movi.n	a13, 1
	bgeu	a2, a14, .L1343
	j	.L1435
.L1419:
	sub	a8, a11, a13
	movi.n	a9, 0
	moveqz	a9, a12, a8
	sub	a2, a13, a11
	extui	a10, a9, 0, 8
	extui	a2, a2, 0, 16
	moveqz	a2, a13, a10
	extui	a9, a9, 0, 16
	j	.L1315
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L1470
.L1438:
	bltz	a3, .L1443
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	bltu	a3, a2, .L1472
.L1440:
	movi.n	a11, 0
	beqz.n	a8, .L1444
.L1443:
	movi.n	a11, 0
	movi.n	a12, 1
	mov.n	a7, a11
	mov.n	a15, a11
.L1447:
	sub	a14, a2, a3
	extui	a10, a12, 0, 8
	bgeu	a2, a3, .L1445
	extui	a10, a7, 0, 8
.L1445:
	mov.n	a13, a15
	movnez	a13, a8, a10
	extui	a9, a12, 0, 8
	srli	a8, a8, 1
	bgeu	a2, a3, .L1446
	extui	a9, a7, 0, 8
.L1446:
	movnez	a2, a14, a9
	or	a11, a11, a13
	srli	a3, a3, 1
	bnez.n	a8, .L1447
.L1444:
	moveqz	a2, a11, a4
	retw.n
.L1472:
	bnez.n	a8, .L1438
	j	.L1440
.L1470:
	sub	a9, a2, a3
	bltu	a2, a3, .L1473
.L1449:
	extui	a11, a8, 0, 8
	mov.n	a10, a9
	bltu	a2, a3, .L1474
	mov.n	a2, a10
	j	.L1444
.L1474:
	mov.n	a10, a2
	mov.n	a2, a10
	j	.L1444
.L1473:
	movi.n	a8, 0
	j	.L1449
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L1476
	movi.n	a8, 0
	ssl	a4
	sll	a2, a3
	mov.n	a3, a8
.L1478:
	retw.n
.L1476:
	beqz.n	a4, .L1478
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
	mov.n	a3, a8
	j	.L1478
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1481
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	mov.n	a2, a8
.L1483:
	retw.n
.L1481:
	beqz.n	a4, .L1483
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
	mov.n	a2, a8
	j	.L1483
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
	bgeu	a8, a2, .L1488
	movi.n	a12, 0
.L1488:
	slli	a15, a12, 4
	addi	a9, a15, -16
	neg	a10, a9
	ssr	a10
	srl	a2, a2
	extui	a11, a2, 8, 8
	movi.n	a13, 0
	slli	a14, a11, 8
	movi.n	a8, 1
	movnez	a8, a13, a14
	slli	a12, a8, 3
	addi	a9, a12, -8
	neg	a10, a9
	ssr	a10
	srl	a2, a2
	movi	a11, 0xf0
	and	a14, a2, a11
	movi.n	a8, 1
	movnez	a8, a13, a14
	slli	a10, a8, 2
	addi	a9, a10, -4
	neg	a11, a9
	ssr	a11
	srl	a2, a2
	movi.n	a14, 0xc
	and	a8, a2, a14
	movi.n	a9, 1
	movnez	a9, a13, a8
	add.n	a9, a9, a9
	add.n	a15, a12, a15
	addi	a12, a9, -2
	neg	a14, a12
	ssr	a14
	srl	a8, a2
	addi	a2, a8, -2
	movi.n	a11, 2
	add.n	a10, a10, a15
	and	a11, a8, a11
	neg	a15, a2
	movnez	a15, a13, a11
	add.n	a13, a9, a10
	add.n	a2, a15, a13
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	blt	a8, a4, .L1489
	movi.n	a2, 2
	blt	a4, a8, .L1489
	movi.n	a2, 0
	bltu	a3, a5, .L1489
	movi.n	a2, 2
	bltu	a5, a3, .L1489
	movi.n	a2, 1
.L1489:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	blt	a8, a4, .L1495
	movi.n	a2, 1
	blt	a4, a8, .L1495
	movi.n	a2, -1
	bltu	a3, a5, .L1495
	movi.n	a2, 1
	bgeu	a5, a3, .L1501
.L1495:
	retw.n
.L1501:
	movi.n	a2, 0
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
	slli	a14, a12, 4
	ssr	a14
	srl	a2, a2
	extui	a9, a2, 0, 8
	movi.n	a11, 1
	movnez	a11, a10, a9
	ssa8l	a11
	srl	a15, a2
	extui	a13, a15, 0, 4
	movi.n	a8, 1
	movnez	a8, a10, a13
	slli	a12, a8, 2
	ssr	a12
	srl	a15, a15
	addx8	a14, a11, a14
	movi.n	a2, 1
	extui	a11, a15, 0, 2
	movnez	a2, a10, a11
	add.n	a13, a2, a2
	ssr	a13
	srl	a10, a15
	extui	a8, a10, 0, 2
	add.n	a9, a12, a14
	srli	a15, a8, 1
	movi.n	a12, -1
	xor	a14, a8, a12
	addi	a11, a15, -2
	extui	a2, a14, 0, 1
	neg	a10, a11
	mul16u	a8, a2, a10
	add.n	a9, a13, a9
	add.n	a2, a8, a9
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L1504
	movi.n	a8, 0
	ssr	a4
	srl	a3, a2
	mov.n	a2, a8
.L1506:
	retw.n
.L1504:
	beqz.n	a4, .L1506
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
	mov.n	a2, a8
	j	.L1506
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
	add.n	a12, a9, a11
	mul16u	a2, a2, a3
	mul16u	a13, a8, a3
	extui	a14, a12, 0, 16
	add.n	a15, a2, a14
	extui	a8, a12, 16, 16
	add.n	a3, a8, a13
	extui	a10, a10, 0, 16
	slli	a9, a15, 16
	extui	a11, a15, 16, 16
	add.n	a2, a3, a11
	add.n	a3, a10, a9
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
	add.n	a13, a9, a8
	mull	a4, a3, a4
	mul16u	a3, a3, a5
	mul16u	a14, a10, a5
	extui	a12, a13, 0, 16
	extui	a15, a11, 0, 16
	extui	a10, a13, 16, 16
	add.n	a11, a3, a12
	add.n	a9, a10, a14
	extui	a8, a11, 16, 16
	add.n	a13, a9, a8
	slli	a3, a11, 16
	add.n	a14, a4, a13
	add.n	a2, a14, a2
	add.n	a3, a15, a3
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
	xor	a10, a8, a2
	srli	a9, a10, 8
	xor	a11, a9, a10
	srli	a12, a11, 4
	l32r	a13, .LC140
	xor	a14, a12, a11
	extui	a15, a14, 0, 4
	ssr	a15
	sra	a2, a13
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
	xor	a10, a9, a2
	srli	a11, a10, 4
	l32r	a12, .LC141
	xor	a13, a11, a10
	extui	a14, a13, 0, 4
	ssr	a14
	sra	a15, a12
	extui	a2, a15, 0, 1
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
	and	a11, a9, a10
	and	a12, a8, a10
	sub	a2, a2, a11
	bgeu	a3, a12, .L1517
	addi.n	a2, a2, -1
.L1517:
	l32r	a13, .LC143
	sub	a3, a3, a12
	ssai	2
	src	a14, a2, a3
	srli	a15, a2, 2
	and	a8, a14, a13
	and	a3, a3, a13
	and	a10, a15, a13
	and	a9, a2, a13
	add.n	a12, a8, a3
	add.n	a2, a10, a9
	bgeu	a12, a3, .L1518
	addi.n	a2, a2, 1
.L1518:
	ssai	4
	src	a11, a2, a12
	srli	a13, a2, 4
	add.n	a14, a11, a12
	add.n	a15, a13, a2
	bgeu	a14, a11, .L1519
	addi.n	a15, a15, 1
.L1519:
	l32r	a8, .LC144
	and	a9, a14, a8
	and	a10, a15, a8
	add.n	a12, a10, a9
	extui	a2, a12, 16, 16
	add.n	a11, a2, a12
	srli	a13, a11, 8
	add.n	a14, a13, a11
	extui	a2, a14, 0, 7
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
	and	a11, a8, a9
	l32r	a10, .LC146
	sub	a2, a2, a11
	srli	a12, a2, 2
	and	a13, a12, a10
	and	a14, a2, a10
	add.n	a15, a13, a14
	l32r	a9, .LC147
	srli	a8, a15, 4
	add.n	a11, a8, a15
	and	a10, a11, a9
	extui	a2, a10, 16, 16
	add.n	a12, a2, a10
	srli	a13, a12, 8
	add.n	a14, a13, a12
	extui	a2, a14, 0, 6
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
	bbci	a7, 31, .L1527
	l32r	a6, .LC149
	l32r	a2, .LC151
	movi.n	a3, 0
.L1524:
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
.L1522:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1523
	l32r	a6, .LC149
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a4, a7, 31, 1
	add.n	a9, a4, a7
	mov.n	a5, a11
	mov.n	a4, a10
	bbsi	a7, 31, .L1524
.L1528:
	srai	a7, a9, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a6
	extui	a4, a7, 31, 1
	add.n	a9, a4, a7
	mov.n	a5, a11
	mov.n	a4, a10
	bbsi	a7, 31, .L1524
	j	.L1528
.L1523:
	l32i	a10, sp, 0
	bltz	a10, .L1529
	retw.n
.L1527:
	l32r	a2, .LC151
	movi.n	a3, 0
	j	.L1522
.L1529:
	l32r	a14, .LC150
	l32r	a10, .LC151
	mov.n	a12, a2
	mov.n	a13, a3
	movi.n	a11, 0
	callx8	a14
	mov.n	a2, a10
	mov.n	a3, a11
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
	bbci	a3, 31, .L1531
	l32r	a5, .LC153
.L1533:
	mov.n	a10, a2
	mov.n	a11, a6
	callx8	a5
	mov.n	a2, a10
.L1531:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L1532
	l32r	a5, .LC153
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a6, a7, 31, 1
	add.n	a9, a6, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1533
.L1537:
	srai	a7, a9, 1
	mov.n	a11, a6
	mov.n	a10, a6
	callx8	a5
	extui	a6, a7, 31, 1
	add.n	a9, a6, a7
	mov.n	a6, a10
	bbsi	a7, 31, .L1533
	j	.L1537
.L1532:
	bltz	a3, .L1538
	retw.n
.L1538:
	l32r	a12, .LC154
	l32r	a10, .LC155
	mov.n	a11, a2
	callx8	a12
	mov.n	a2, a10
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L1539
	movi.n	a2, 2
	bltu	a4, a8, .L1539
	movi.n	a2, 0
	bltu	a3, a5, .L1539
	movi.n	a2, 2
	bltu	a5, a3, .L1539
	movi.n	a2, 1
.L1539:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, -1
	bltu	a8, a4, .L1545
	movi.n	a2, 1
	bltu	a4, a8, .L1545
	movi.n	a2, -1
	bltu	a3, a5, .L1545
	movi.n	a2, 1
	bgeu	a5, a3, .L1551
.L1545:
	retw.n
.L1551:
	movi.n	a2, 0
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
