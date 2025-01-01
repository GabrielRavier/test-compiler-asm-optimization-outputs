	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	bleu	.L2
	 add	%i0, %i2, %g4
	add	%i1, %i2, %i1
	b	.L3
	 mov	%i2, %g1
.L4:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%g4, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L3:
	cmp	%g1, 0
	bne	.L4
	 sub	%i1, %i2, %g2
	jmp	%i7+8
	 restore
.L2:
	bne	.L8
	 mov	0, %g1
	jmp	%i7+8
	 restore
.L7:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L8:
	cmp	%g1, %i2
	bne,a	.L7
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	save	%sp, -96, %sp
	b	.L10
	 and	%i2, 0xff, %i2
.L12:
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L10:
	cmp	%i3, 0
	be	.L15
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%i2, %g1
	bne,a	.L12
	 add	%i3, -1, %i3
	cmp	%i3, 0
.L15:
	be	.L14
	 nop
	jmp	%i7+8
	 restore %i0, 1, %o0
.L14:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -96, %sp
	b	.L17
	 and	%i1, 0xff, %i1
.L19:
	add	%i2, -1, %i2
.L17:
	cmp	%i2, 0
	be,a	.L22
	 mov	0, %i0
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L19
	 add	%i0, 1, %i0
	cmp	%i2, 0
	be,a	.L22
	 mov	0, %i0
.L22:
	jmp	%i7+8
	 restore
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -96, %sp
	b	.L29
	 cmp	%i2, 0
.L26:
	add	%i0, 1, %i0
	add	%i1, 1, %i1
	cmp	%i2, 0
.L29:
	be	.L30
	 cmp	%i2, 0
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be,a	.L26
	 add	%i2, -1, %i2
	cmp	%i2, 0
.L30:
	be	.L28
	 nop
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	jmp	%i7+8
	 restore
.L28:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	b	.L32
	 mov	0, %g1
.L33:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L32:
	cmp	%g1, %i2
	bne,a	.L33
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	save	%sp, -96, %sp
	and	%i1, 0xff, %i1
	b	.L35
	 add	%i2, -1, %i2
.L37:
	cmp	%i1, %g1
	bne	.L38
	 add	%i2, -1, %g2
	jmp	%i7+8
	 restore %i0, %i2, %o0
.L38:
	mov	%g2, %i2
.L35:
	cmp	%i2, -1
	bne,a	.L37
	 ldub	[%i0+%i2], %g1
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -96, %sp
	add	%i0, %i2, %i2
	b	.L40
	 mov	%i0, %g1
.L41:
	add	%g1, 1, %g1
.L40:
	cmp	%g1, %i2
	bne,a	.L41
	 stb	%i1, [%g1]
	jmp	%i7+8
	 restore
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	save	%sp, -96, %sp
	b	.L45
	 ldub	[%i1], %g1
.L44:
	add	%i0, 1, %i0
	ldub	[%i1], %g1
.L45:
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L44
	 add	%i1, 1, %i1
	jmp	%i7+8
	 restore
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	save	%sp, -96, %sp
	and	%i1, 0xff, %i1
.L49:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be	.L50
	 nop
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L49
	 add	%i0, 1, %i0
.L50:
	jmp	%i7+8
	 restore
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	save	%sp, -96, %sp
	ldsb	[%i0], %g1
.L55:
	cmp	%i1, %g1
	be	.L56
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne,a	.L55
	 ldsb	[%i0], %g1
	mov	0, %i0
.L56:
	jmp	%i7+8
	 restore
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -96, %sp
	b	.L61
	 ldsb	[%i0], %g2
.L60:
	add	%i1, 1, %i1
	ldsb	[%i0], %g2
.L61:
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne	.L59
	 cmp	%g2, 0
	bne,a	.L60
	 add	%i0, 1, %i0
.L59:
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	save	%sp, -96, %sp
	mov	%i0, %g1
.L64:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L64
	 add	%g1, 1, %g1
	sub	%g1, %i0, %i0
	jmp	%i7+8
	 restore
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L70
	 mov	%i0, %g2
	b	.L72
	 ldub	[%g2], %g1
.L69:
	add	%i1, 1, %i1
	ldub	[%g2], %g1
.L72:
	cmp	%g1, 0
	be	.L68
	 add	%i2, -1, %g1
	add	%g1, %i0, %g1
	sub	%g1, %g2, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	ldub	[%i1], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%g3, %g1, %g0
	be,a	.L71
	 ldub	[%g2], %i0
	ldub	[%g2], %g3
	ldub	[%i1], %g1
	cmp	%g3, %g1
	be,a	.L69
	 add	%g2, 1, %g2
.L68:
	ldub	[%g2], %i0
.L71:
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	jmp	%i7+8
	 restore
.L70:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -96, %sp
	b	.L74
	 mov	%i0, %g1
.L75:
	stb	%g2, [%i1]
	ldub	[%g1], %g2
	stb	%g2, [%i1+1]
	add	%i1, 2, %i1
	add	%g1, 2, %g1
.L74:
	add	%i0, %i2, %g2
	sub	%g2, %g1, %g2
	cmp	%g2, 1
	bg,a	.L75
	 ldub	[%g1+1], %g2
	jmp	%i7+8
	 restore
	.size	swab, .-swab
	.align 4
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	save	%sp, -96, %sp
	or	%i0, 32, %i0
	add	%i0, -97, %g1
	cmp	%g1, 25
	bleu	.L77
	 mov	1, %i0
	mov	0, %i0
.L77:
	and	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	save	%sp, -96, %sp
	cmp	%i0, 127
	bleu	.L79
	 mov	1, %g1
	mov	0, %g1
.L79:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	isascii, .-isascii
	.align 4
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	save	%sp, -96, %sp
	xor	%i0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	xor	%i0, 9, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %i0
	or	%g2, %i0, %i0
	jmp	%i7+8
	 restore
	.size	isblank, .-isblank
	.align 4
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	save	%sp, -96, %sp
	cmp	%i0, 31
	bleu	.L82
	 mov	1, %g1
	mov	0, %g1
.L82:
	xor	%i0, 127, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %i0
	or	%i0, %g1, %i0
	and	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %i0
	cmp	%i0, 9
	bleu	.L84
	 mov	1, %g1
	mov	0, %g1
.L84:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	save	%sp, -96, %sp
	add	%i0, -33, %i0
	cmp	%i0, 93
	bleu	.L86
	 mov	1, %g1
	mov	0, %g1
.L86:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	save	%sp, -96, %sp
	add	%i0, -97, %i0
	cmp	%i0, 25
	bleu	.L88
	 mov	1, %g1
	mov	0, %g1
.L88:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	save	%sp, -96, %sp
	add	%i0, -32, %i0
	cmp	%i0, 94
	bleu	.L90
	 mov	1, %g1
	mov	0, %g1
.L90:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	isprint, .-isprint
	.align 4
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	save	%sp, -96, %sp
	xor	%i0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	add	%i0, -9, %i0
	cmp	%i0, 4
	bleu	.L92
	 mov	1, %g2
	mov	0, %g2
.L92:
	or	%g1, %g2, %i0
	and	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	save	%sp, -96, %sp
	add	%i0, -65, %i0
	cmp	%i0, 25
	bleu	.L94
	 mov	1, %g1
	mov	0, %g1
.L94:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	save	%sp, -96, %sp
	cmp	%i0, 31
	bleu	.L96
	 mov	1, %g1
	mov	0, %g1
.L96:
	add	%i0, -127, %g2
	cmp	%g2, 32
	bleu	.L97
	 mov	1, %g3
	mov	0, %g3
.L97:
	or	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L99
	 sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu	.L100
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 2
	bgu	.L101
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L99:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L100:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L101:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %i0
	cmp	%i0, 9
	bleu	.L103
	 mov	1, %g1
	mov	0, %g1
.L103:
	and	%g1, 1, %i0
	jmp	%i7+8
	 restore
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	save	%sp, -96, %sp
	cmp	%i0, 254
	bgu	.L105
	 sethi	%hi(8192), %g1
	add	%i0, 1, %i0
	and	%i0, 127, %g1
	cmp	%g1, 32
	bgu	.L106
	 mov	1, %i0
	mov	0, %i0
.L106:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L105:
	or	%g1, 39, %g1
	cmp	%g1, %i0
	subx	%g0, -1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%i0, %g1, %g1
	sethi	%hi(46080), %g2
	or	%g2, 981, %g2
	cmp	%g2, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne	.L108
	 sethi	%hi(-57344), %g2
	add	%i0, %g2, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bleu	.L109
	 sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%i0, %g1, %g1
	sethi	%hi(1048576), %g2
	or	%g2, 3, %g2
	cmp	%g1, %g2
	bgu	.L110
	 sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%i0, %g1, %i0
	cmp	%i0, %g1
	be	.L111
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L108:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L109:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L110:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L111:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %g1
	cmp	%g1, 9
	bleu	.L114
	 nop
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 5
	bgu	.L115
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L114:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L115:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	save	%sp, -96, %sp
	and	%i0, 127, %i0
	jmp	%i7+8
	 restore
	.size	toascii, .-toascii
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	std	%i2, [%fp-8]
	fcmpd	%f0, %f0
	nop
	fbu	.L126
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L121
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L124
	 nop
	fsubd	%f0, %f8, %f0
.L126:
	jmp	%i7+8
	 restore
.L121:
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L124:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f0
	jmp	%i7+8
	 restore
	.size	fdim, .-fdim
	.section	".rodata"
	.align 4
.LC2:
	.long	0
	.section	".text"
	.align 4
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f0
	st	%i1, [%fp-4]
	fcmps	%f0, %f0
	nop
	fbu	.L136
	 ld	[%fp-4], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L136
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L134
	 nop
	fsubs	%f0, %f8, %f0
.L136:
	jmp	%i7+8
	 restore
.L134:
	sethi	%hi(.LC2), %g1
	ld	[%g1+%lo(.LC2)], %f0
	jmp	%i7+8
	 restore
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	std	%i2, [%fp-8]
	fcmpd	%f0, %f0
	nop
	fbu	.L141
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L148
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L139
	 fcmped	%f0, %f8
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L147
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L148:
	jmp	%i7+8
	 restore
.L139:
	nop
	fbuge	.L147
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L141:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L147:
	jmp	%i7+8
	 restore
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f0
	st	%i1, [%fp-4]
	fcmps	%f0, %f0
	nop
	fbu	.L153
	 ld	[%fp-4], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L160
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L151
	 fcmpes	%f0, %f8
	st	%f0, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L159
	 nop
	fmovs	%f8, %f0
.L160:
	jmp	%i7+8
	 restore
.L151:
	nop
	fbuge	.L159
	 nop
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L153:
	fmovs	%f8, %f0
.L159:
	jmp	%i7+8
	 restore
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	std	%i2, [%fp-8]
	fcmpd	%f0, %f0
	nop
	fbu	.L165
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L172
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L163
	 fcmped	%f0, %f8
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L171
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L172:
	jmp	%i7+8
	 restore
.L163:
	nop
	fbuge	.L171
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L165:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L171:
	jmp	%i7+8
	 restore
	.size	fmaxl, .-fmaxl
	.align 4
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f8
	std	%i2, [%fp-8]
	fcmpd	%f8, %f8
	nop
	fbu	.L184
	 ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L178
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L175
	 fcmped	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L183
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L184:
	jmp	%i7+8
	 restore
.L175:
	nop
	fbuge	.L183
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L178:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L183:
	jmp	%i7+8
	 restore
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f8
	st	%i1, [%fp-4]
	fcmps	%f8, %f8
	nop
	fbu	.L196
	 ld	[%fp-4], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L190
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	st	%f0, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L187
	 fcmpes	%f8, %f0
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L195
	 nop
	fmovs	%f8, %f0
.L196:
	jmp	%i7+8
	 restore
.L187:
	nop
	fbuge	.L195
	 nop
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L190:
	fmovs	%f8, %f0
.L195:
	jmp	%i7+8
	 restore
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f8
	std	%i2, [%fp-8]
	fcmpd	%f8, %f8
	nop
	fbu	.L208
	 ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L202
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L199
	 fcmped	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L207
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L208:
	jmp	%i7+8
	 restore
.L199:
	nop
	fbuge	.L207
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L202:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L207:
	jmp	%i7+8
	 restore
	.size	fminl, .-fminl
	.section	".rodata"
	.align 8
	.type	digits, #object
	.size	digits, 65
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	save	%sp, -96, %sp
	sethi	%hi(s.0), %g2
	b	.L210
	 or	%g2, %lo(s.0), %g2
.L211:
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ldub	[%g1+%g3], %g1
	stb	%g1, [%g2]
	add	%g2, 1, %g2
	srl	%i0, 6, %i0
.L210:
	cmp	%i0, 0
	bne	.L211
	 and	%i0, 63, %g3
	stb	%g0, [%g2]
	sethi	%hi(s.0), %i0
	jmp	%i7+8
	 restore %i0, %lo(s.0), %o0
	.size	l64a, .-l64a
	.local	seed
	.common	seed,8,8
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	save	%sp, -96, %sp
	add	%i0, -1, %i0
	mov	%i0, %i1
	mov	0, %i0
	sethi	%hi(seed), %g1
	std	%i0, [%g1+%lo(seed)]
	jmp	%i7+8
	 restore
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -96, %sp
	sethi	%hi(seed), %i3
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	or	%o3, 813, %o3
	call	__muldi3, 0
	 ldd	[%i3+%lo(seed)], %o0
	addcc	%o1, 1, %i5
	addx	%o0, 0, %i4
	std	%i4, [%i3+%lo(seed)]
	srl	%i4, 1, %g3
	jmp	%i7+8
	 restore %g0, %g3, %o0
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -96, %sp
	cmp	%i1, 0
	bne,a	.L215
	 ld	[%i1], %g1
	st	%g0, [%i0+4]
	st	%g0, [%i0]
.L218:
	jmp	%i7+8
	 restore
.L215:
	st	%g1, [%i0]
	st	%i1, [%i0+4]
	st	%i0, [%i1]
	ld	[%i0], %g1
	cmp	%g1, 0
	bne,a	.L218
	 st	%i0, [%g1+4]
	jmp	%i7+8
	 restore
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -96, %sp
	ld	[%i0], %g1
	cmp	%g1, 0
	be,a	.L222
	 ld	[%i0+4], %g1
	ld	[%i0+4], %g2
	st	%g2, [%g1+4]
	ld	[%i0+4], %g1
.L222:
	cmp	%g1, 0
	be	.L223
	 nop
	ld	[%i0], %g2
	st	%g2, [%g1]
.L223:
	jmp	%i7+8
	 restore
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -96, %sp
	ld	[%i2], %l1
	mov	%i1, %l0
	b	.L225
	 mov	0, %i5
.L228:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L226
	 add	%l0, %i3, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L226:
	add	%i5, 1, %i5
.L225:
	cmp	%i5, %l1
	bne	.L228
	 mov	%l0, %o1
	add	%l1, 1, %g1
	st	%g1, [%i2]
	mov	%l1, %o1
	call	.umul, 0
	 mov	%i3, %o0
	mov	%i3, %o2
	mov	%i0, %o1
	call	memcpy, 0
	 add	%i1, %o0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -96, %sp
	ld	[%i2], %l0
	mov	%i1, %i2
	b	.L230
	 mov	0, %i5
.L233:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L231
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L231:
	add	%i5, 1, %i5
.L230:
	cmp	%i5, %l0
	bne	.L233
	 mov	%i2, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	lfind, .-lfind
	.align 4
	.global abs
	.type	abs, #function
	.proc	04
abs:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xor	%g1, %i0, %i0
	sub	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -96, %sp
.L237:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L237
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L243
	 cmp	%g1, 45
	bne,a	.L244
	 mov	0, %g3
	b	.L238
	 mov	1, %g3
.L243:
	mov	0, %g3
.L238:
	add	%i0, 1, %i0
.L244:
	b	.L240
	 mov	0, %g1
.L241:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L240:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L241
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L245
	 nop
	sub	%g0, %g1, %i0
	jmp	%i7+8
	 restore
.L245:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L248:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L248
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L254
	 cmp	%g1, 45
	bne,a	.L255
	 mov	0, %g3
	b	.L249
	 mov	1, %g3
.L254:
	mov	0, %g3
.L249:
	add	%i0, 1, %i0
.L255:
	b	.L251
	 mov	0, %g1
.L252:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L251:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L252
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L256
	 nop
	sub	%g0, %g1, %i0
	jmp	%i7+8
	 restore
.L256:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L259:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L259
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L265
	 cmp	%g1, 45
	bne,a	.L266
	 mov	0, %g4
	b	.L260
	 mov	1, %g4
.L265:
	mov	0, %g4
.L260:
	add	%i0, 1, %i0
.L266:
	mov	0, %g2
	b	.L262
	 mov	0, %g3
.L263:
	sll	%g2, 2, %i4
	or	%g1, %i4, %i4
	sll	%g3, 2, %i5
	addcc	%i5, %g3, %o5
	addx	%i4, %g2, %o4
	srl	%o5, 31, %g1
	sll	%o4, 1, %i2
	or	%g1, %i2, %i2
	sll	%o5, 1, %i3
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 31, %l0
	subcc	%i3, %g1, %g3
	subx	%i2, %l0, %g2
.L262:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,a	.L263
	 srl	%g3, 30, %g1
	cmp	%g4, 0
	bne,a	.L267
	 mov	%g2, %i0
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
	jmp	%i7+8
	 restore
.L267:
	jmp	%i7+8
	 restore %g0, %g3, %o1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L275
	 cmp	%i2, 0
.L273:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge	.L270
	 nop
	b	.L269
	 srl	%i2, 1, %i2
.L270:
	ble	.L274
	 add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L269:
	cmp	%i2, 0
.L275:
	bne	.L273
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L274:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b	.L282
	 cmp	%i2, 0
.L280:
	call	.umul, 0
	 sra	%i2, 1, %o0
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L281
	 nop
	ble,a	.L283
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L283:
	cmp	%i2, 0
.L282:
	bne	.L280
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L281:
	jmp	%i7+8
	 restore %g0, %l0, %o0
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global div
	.type	div, #function
	.proc	010
div:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i1, %o1
	call	.div, 0
	 mov	%i0, %o0
	mov	%o0, %i4
	mov	%i1, %o1
	call	.rem, 0
	 mov	%i0, %o0
	st	%i4, [%i5]
	st	%o0, [%i5+4]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	div, .-div
	.align 4
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	save	%sp, -96, %sp
	sra	%i0, 31, %g3
	xor	%g3, %i0, %i4
	xor	%g3, %i1, %i5
	subcc	%i5, %g3, %i1
	subx	%i4, %g3, %i0
	jmp	%i7+8
	 restore
	.size	imaxabs, .-imaxabs
	.align 4
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	mov	%o0, %l0
	mov	%o1, %l1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%l0, [%i5]
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	04
labs:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xor	%g1, %i0, %i0
	sub	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	labs, .-labs
	.align 4
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i1, %o1
	call	.div, 0
	 mov	%i0, %o0
	mov	%o0, %i4
	mov	%i1, %o1
	call	.rem, 0
	 mov	%i0, %o0
	st	%i4, [%i5]
	st	%o0, [%i5+4]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	save	%sp, -96, %sp
	sra	%i0, 31, %g3
	xor	%g3, %i0, %i4
	xor	%g3, %i1, %i5
	subcc	%i5, %g3, %i1
	subx	%i4, %g3, %i0
	jmp	%i7+8
	 restore
	.size	llabs, .-llabs
	.align 4
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	mov	%o0, %l0
	mov	%o1, %l1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%l0, [%i5]
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -96, %sp
	b	.L297
	 ld	[%i0], %g1
.L294:
	ld	[%i0], %g1
.L297:
	cmp	%g1, 0
	be	.L293
	 cmp	%i1, %g1
	bne,a	.L294
	 add	%i0, 4, %i0
.L293:
	ld	[%i0], %g1
	cmp	%g1, 0
	be,a	.L298
	 mov	0, %i0
.L298:
	jmp	%i7+8
	 restore
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -96, %sp
	b	.L306
	 ld	[%i0], %g2
.L302:
	add	%i1, 4, %i1
	ld	[%i0], %g2
.L306:
	ld	[%i1], %g1
	cmp	%g2, %g1
	bne	.L301
	 cmp	%g2, 0
	be	.L301
	 cmp	%g1, 0
	bne,a	.L302
	 add	%i0, 4, %i0
.L301:
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L305
	 nop
	bg	.L304
	 mov	1, %i0
	mov	0, %i0
.L304:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L305:
	jmp	%i7+8
	 restore %g0, -1, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -96, %sp
	mov	0, %g1
	ld	[%i1+%g1], %g2
.L309:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	ld	[%g2+%g1], %g2
	cmp	%g2, 0
	bne,a	.L309
	 ld	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	save	%sp, -96, %sp
	mov	%i0, %g1
.L312:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L312
	 add	%g1, 4, %g1
	sub	%g1, %i0, %i0
	sra	%i0, 2, %i0
	jmp	%i7+8
	 restore
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	save	%sp, -96, %sp
	b	.L321
	 cmp	%i2, 0
.L316:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
	cmp	%i2, 0
.L321:
	be	.L322
	 cmp	%i2, 0
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bne	.L315
	 cmp	%g2, 0
	be	.L315
	 cmp	%g1, 0
	bne,a	.L316
	 add	%i2, -1, %i2
.L315:
	cmp	%i2, 0
.L322:
	be	.L319
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L320
	 nop
	bg	.L318
	 mov	1, %i0
	mov	0, %i0
.L318:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L319:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L320:
	jmp	%i7+8
	 restore %g0, -1, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -96, %sp
	b	.L329
	 cmp	%i2, 0
.L326:
	add	%i0, 4, %i0
	cmp	%i2, 0
.L329:
	be	.L331
	 cmp	%i2, 0
	ld	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L326
	 add	%i2, -1, %i2
	cmp	%i2, 0
.L331:
	be,a	.L330
	 mov	0, %i0
.L330:
	jmp	%i7+8
	 restore
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -96, %sp
	b	.L340
	 cmp	%i2, 0
.L335:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
	cmp	%i2, 0
.L340:
	be	.L341
	 cmp	%i2, 0
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	be,a	.L335
	 add	%i2, -1, %i2
	cmp	%i2, 0
.L341:
	be	.L338
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L339
	 nop
	bg	.L337
	 mov	1, %i0
	mov	0, %i0
.L337:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L338:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L339:
	jmp	%i7+8
	 restore %g0, -1, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	b	.L343
	 mov	0, %g1
.L344:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L343:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L344
	 ld	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	be	.L353
	 sub	%i0, %i1, %g1
	sll	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L351
	 mov	0, %g1
	add	%i2, -1, %i2
	b	.L348
	 sll	%i2, 2, %i2
.L349:
	st	%g1, [%i0+%i2]
	add	%i2, -4, %i2
.L348:
	cmp	%i2, -4
	bne,a	.L349
	 ld	[%i1+%i2], %g1
.L353:
	jmp	%i7+8
	 restore
.L350:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L351:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L350
	 ld	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	save	%sp, -96, %sp
	b	.L355
	 mov	%i0, %g1
.L356:
	st	%i1, [%g1-4]
.L355:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L356
	 add	%g1, 4, %g1
	jmp	%i7+8
	 restore
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	bgeu	.L358
	 mov	%i2, %g1
	add	%i0, %i2, %i0
	b	.L359
	 add	%i1, %i2, %i1
.L360:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%i1, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L359:
	cmp	%g1, 0
	bne	.L360
	 sub	%i0, %i2, %g2
	jmp	%i7+8
	 restore
.L358:
	bne	.L364
	 mov	0, %g1
	jmp	%i7+8
	 restore
.L363:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L364:
	cmp	%g1, %i2
	bne,a	.L363
	 ldub	[%i0+%g1], %g2
	jmp	%i7+8
	 restore
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L366
	 srl	%i1, 1, %g1
	sll	%i1, %i2, %g2
	b	.L367
	 mov	0, %g3
.L366:
	xnor	%g0, %i2, %g2
	srl	%g1, %g2, %g1
	sll	%i0, %i2, %g2
	or	%g1, %g2, %g2
	sll	%i1, %i2, %g3
.L367:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be,a	.L368
	 sll	%i0, 1, %g1
	srl	%i0, %g1, %i5
	b	.L369
	 mov	0, %i4
.L368:
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	sll	%g1, %g4, %g1
	srl	%i1, %i2, %i5
	or	%g1, %i5, %i5
	srl	%i0, %i2, %i4
.L369:
	or	%i4, %g2, %i0
	or	%i5, %g3, %i1
	jmp	%i7+8
	 restore
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L371
	 sll	%i0, 1, %g1
	srl	%i0, %i2, %g3
	b	.L372
	 mov	0, %g2
.L371:
	xnor	%g0, %i2, %g2
	sll	%g1, %g2, %g1
	srl	%i1, %i2, %g3
	or	%g1, %g3, %g3
	srl	%i0, %i2, %g2
.L372:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be,a	.L373
	 srl	%i1, 1, %g1
	sll	%i1, %g1, %i4
	b	.L374
	 mov	0, %i5
.L373:
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	srl	%g1, %g4, %g1
	sll	%i0, %i2, %i4
	or	%g1, %i4, %i4
	sll	%i1, %i2, %i5
.L374:
	or	%i4, %g2, %i0
	or	%i5, %g3, %i1
	jmp	%i7+8
	 restore
	.size	rotr64, .-rotr64
	.align 4
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	save	%sp, -96, %sp
	sll	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	srl	%i0, %i1, %i0
	or	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	rotl32, .-rotl32
	.align 4
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	save	%sp, -96, %sp
	srl	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	sll	%i0, %i1, %i0
	or	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	rotr32, .-rotr32
	.align 4
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	016
rotl_sz:
	save	%sp, -96, %sp
	sll	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	srl	%i0, %i1, %i0
	or	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	016
rotr_sz:
	save	%sp, -96, %sp
	srl	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	sll	%i0, %i1, %i0
	or	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	save	%sp, -96, %sp
	sll	%i0, %i1, %g1
	mov	16, %g2
	sub	%g2, %i1, %g2
	srl	%i0, %g2, %i0
	or	%g1, %i0, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	jmp	%i7+8
	 restore
	.size	rotl16, .-rotl16
	.align 4
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	save	%sp, -96, %sp
	srl	%i0, %i1, %g1
	mov	16, %g2
	sub	%g2, %i1, %g2
	sll	%i0, %g2, %i0
	or	%g1, %i0, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	jmp	%i7+8
	 restore
	.size	rotr16, .-rotr16
	.align 4
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	save	%sp, -96, %sp
	sll	%i0, %i1, %g1
	mov	8, %g2
	sub	%g2, %i1, %g2
	srl	%i0, %g2, %i0
	or	%g1, %i0, %i0
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	save	%sp, -96, %sp
	srl	%i0, %i1, %g1
	mov	8, %g2
	sub	%g2, %i1, %g2
	sll	%i0, %g2, %i0
	or	%g1, %i0, %i0
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
	.size	rotr8, .-rotr8
	.align 4
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	save	%sp, -96, %sp
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%i0, %g1, %g1
	srl	%g1, 8, %g1
	and	%i0, 255, %i0
	sll	%i0, 8, %i0
	or	%g1, %i0, %i0
	jmp	%i7+8
	 restore
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	save	%sp, -96, %sp
	srl	%i0, 24, %g2
	sethi	%hi(16711680), %g1
	and	%i0, %g1, %g1
	srl	%g1, 8, %g1
	or	%g1, %g2, %g1
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	and	%i0, %g2, %g2
	sll	%g2, 8, %g2
	or	%g1, %g2, %g1
	sll	%i0, 24, %i0
	or	%g1, %i0, %i0
	jmp	%i7+8
	 restore
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	save	%sp, -96, %sp
	sethi	%hi(-16777216), %o7
	and	%i0, %o7, %i4
	srl	%i4, 24, %g3
	sethi	%hi(16711680), %g4
	and	%i0, %g4, %i2
	srl	%i2, 8, %i5
	mov	0, %o4
	or	%i5, %g3, %o5
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%i0, %g1, %i4
	sll	%i4, 8, %g3
	srl	%i4, 24, %g2
	or	%o4, %g2, %i2
	or	%o5, %g3, %i3
	and	%i0, 255, %i4
	sll	%i4, 24, %g3
	srl	%i4, 8, %g2
	or	%i2, %g2, %i4
	or	%i3, %g3, %i5
	mov	0, %i2
	and	%i1, %o7, %i3
	srl	%i3, 24, %i0
	sll	%i2, 8, %g2
	or	%i0, %g2, %g2
	sll	%i3, 8, %g3
	or	%i4, %g2, %i2
	or	%i5, %g3, %i3
	mov	0, %i4
	and	%i1, %g4, %i5
	srl	%i5, 8, %g4
	sll	%i4, 24, %g2
	or	%g4, %g2, %g2
	sll	%i5, 24, %g3
	or	%i2, %g2, %i4
	or	%i3, %g3, %i5
	and	%i1, %g1, %g3
	sll	%g3, 8, %i2
	or	%i4, %i2, %g2
	and	%i1, 255, %i3
	sll	%i3, 24, %i4
	or	%g2, %i4, %i0
	jmp	%i7+8
	 restore %g0, %i5, %o1
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	save	%sp, -96, %sp
	b	.L387
	 mov	0, %g1
.L390:
	andcc	%g2, 1, %g0
	be,a	.L388
	 add	%g1, 1, %g1
	jmp	%i7+8
	 restore %g1, 1, %o0
.L388:
.L387:
	cmp	%g1, 32
	bne	.L390
	 srl	%i0, %g1, %g2
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -96, %sp
	cmp	%i0, 0
	be	.L395
	 mov	1, %g1
	b	.L396
	 andcc	%i0, 1, %g0
.L394:
	add	%g1, 1, %g1
	andcc	%i0, 1, %g0
.L396:
	be,a	.L394
	 sra	%i0, 1, %i0
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L395:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	libiberty_ffs, .-libiberty_ffs
	.section	".rodata"
	.align 4
.LC4:
	.long	-8388609
	.align 4
.LC5:
	.long	2139095039
	.section	".text"
	.align 4
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f8
	sethi	%hi(.LC4), %g1
	ld	[%g1+%lo(.LC4)], %f9
	fcmpes	%f8, %f9
	nop
	fbl	.L400
	 sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L403
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L400:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L403:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	gl_isinff, .-gl_isinff
	.section	".rodata"
	.align 8
.LC8:
	.long	-1048577
	.long	-1
	.align 8
.LC9:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f8
	sethi	%hi(.LC8), %g1
	ldd	[%g1+%lo(.LC8)], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L407
	 sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L410
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L407:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L410:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	gl_isinfd, .-gl_isinfd
	.section	".rodata"
	.align 8
.LC12:
	.long	-1048577
	.long	-1
	.align 8
.LC13:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f8
	sethi	%hi(.LC12), %g1
	ldd	[%g1+%lo(.LC12)], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L414
	 sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L417
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L414:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L417:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	save	%sp, -104, %sp
	st	%i1, [%fp-4]
	ld	[%fp-4], %f8
	fitod	%f8, %f8
	std	%f8, [%i0]
	jmp	%i7+8
	 restore
	.size	_Qp_itoq, .-_Qp_itoq
	.section	".rodata"
	.align 4
.LC16:
	.long	1056964608
	.align 4
.LC17:
	.long	1073741824
	.section	".text"
	.align 4
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L425
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L425
	 cmp	%i1, 0
	bge	.L424
	 sethi	%hi(.LC17), %g1
	sethi	%hi(.LC16), %g1
	b	.L423
	 ld	[%g1+%lo(.LC16)], %f8
.L424:
	ld	[%g1+%lo(.LC17)], %f8
.L423:
	andcc	%i1, 1, %g0
	bne,a	.L422
	 fmuls	%f0, %f8, %f0
.L422:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L425
	 nop
	b	.L423
	 fmuls	%f8, %f8, %f8
.L425:
	jmp	%i7+8
	 restore
	.size	ldexpf, .-ldexpf
	.section	".rodata"
	.align 8
.LC20:
	.long	1071644672
	.long	0
	.align 8
.LC21:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L432
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L432
	 cmp	%i2, 0
	bge	.L431
	 sethi	%hi(.LC21), %g1
	sethi	%hi(.LC20), %g1
	b	.L430
	 ldd	[%g1+%lo(.LC20)], %f8
.L431:
	ldd	[%g1+%lo(.LC21)], %f8
.L430:
	andcc	%i2, 1, %g0
	bne,a	.L429
	 fmuld	%f0, %f8, %f0
.L429:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L432
	 nop
	b	.L430
	 fmuld	%f8, %f8, %f8
.L432:
	jmp	%i7+8
	 restore
	.size	ldexp, .-ldexp
	.section	".rodata"
	.align 8
.LC24:
	.long	1071644672
	.long	0
	.align 8
.LC25:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L439
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L439
	 cmp	%i2, 0
	bge	.L438
	 sethi	%hi(.LC25), %g1
	sethi	%hi(.LC24), %g1
	b	.L437
	 ldd	[%g1+%lo(.LC24)], %f8
.L438:
	ldd	[%g1+%lo(.LC25)], %f8
.L437:
	andcc	%i2, 1, %g0
	bne,a	.L436
	 fmuld	%f0, %f8, %f0
.L436:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L439
	 nop
	b	.L437
	 fmuld	%f8, %f8, %f8
.L439:
	jmp	%i7+8
	 restore
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -96, %sp
	b	.L441
	 mov	0, %g1
.L442:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L441:
	cmp	%g1, %i2
	bne,a	.L442
	 ldub	[%i1+%g1], %g3
	jmp	%i7+8
	 restore
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -96, %sp
	call	strlen, 0
	 mov	%i0, %o0
	b	.L444
	 add	%i0, %o0, %o0
.L446:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L444:
	cmp	%i2, 0
	be,a	.L448
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	.L446
	 add	%i1, 1, %i1
	cmp	%i2, 0
	be,a	.L448
	 stb	%g0, [%o0]
.L448:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	save	%sp, -96, %sp
	mov	0, %g1
.L452:
	cmp	%g1, %i1
	be	.L451
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L452
	 add	%g1, 1, %g1
.L451:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -96, %sp
	b	.L460
	 ldsb	[%i0], %g1
.L456:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	bne,a	.L461
	 ldsb	[%g1], %g2
	jmp	%i7+8
	 restore
.L459:
	ldsb	[%g1], %g2
.L461:
	cmp	%g2, 0
	bne	.L456
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L460:
	cmp	%g1, 0
	bne	.L459
	 mov	%i1, %g1
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	save	%sp, -96, %sp
	mov	%i0, %g1
	mov	0, %i0
	ldsb	[%g1], %g2
.L466:
	cmp	%i1, %g2
	be,a	.L463
	 mov	%g1, %i0
.L463:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a	.L466
	 ldsb	[%g1], %g2
	jmp	%i7+8
	 restore
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -96, %sp
	call	strlen, 0
	 mov	%i1, %o0
	cmp	%o0, 0
	be	.L473
	 mov	%o0, %i5
	b	.L469
	 ldsb	[%i1], %i4
.L470:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L473
	 nop
	add	%i0, 1, %i0
.L469:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L470
	 mov	%o0, %i0
.L473:
	jmp	%i7+8
	 restore
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmped	%f0, %f8
	nop
	fbuge	.L475
	 nop
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f10
	fcmped	%f10, %f8
	nop
	fbg,a	.L487
	 fnegs	%f0, %f0
.L475:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L487
	 nop
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L487
	 fnegs	%f0, %f0
.L487:
	jmp	%i7+8
	 restore
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	sub	%i1, %i3, %i5
	cmp	%i3, 0
	be	.L498
	 add	%i0, %i5, %i5
	cmp	%i1, %i3
	blu	.L494
	 cmp	%i0, %i5
	b,a	.L496
.L492:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a	.L497
	 add	%i0, 1, %i0
	add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be	.L498
	 nop
	add	%i0, 1, %i0
.L497:
	cmp	%i0, %i5
.L496:
	bleu,a	.L492
	 ldsb	[%i0], %g2
	jmp	%i7+8
	 restore %g0, 0, %o0
.L494:
	mov	0, %i0
.L498:
	jmp	%i7+8
	 restore
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %o0, %i2, %o0
	.size	mempcpy, .-mempcpy
	.section	".rodata"
	.align 8
.LC31:
	.long	1072693248
	.long	0
	.align 8
.LC32:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmped	%f0, %f8
	nop
	fbuge	.L516
	 nop
	fnegs	%f0, %f0
	b	.L501
	 mov	1, %g2
.L516:
	mov	0, %g2
.L501:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge	.L513
	 mov	0, %g1
	b	.L517
	 mov	1, %g3
.L505:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fmuld	%f0, %f8, %f0
.L513:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge,a	.L505
	 add	%g1, 1, %g1
	b	.L518
	 st	%g1, [%i2]
.L517:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmpd	%f0, %f8
	nop
	fbe,a	.L507
	 mov	0, %g3
.L507:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L508
	 mov	1, %g1
	mov	0, %g1
.L508:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L514
	 mov	0, %g1
	b	.L518
	 st	%g1, [%i2]
.L510:
	faddd	%f0, %f0, %f0
.L514:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl,a	.L510
	 add	%g1, -1, %g1
	st	%g1, [%i2]
.L518:
	cmp	%g2, 0
	bne,a	.L519
	 fnegs	%f0, %f0
.L519:
	jmp	%i7+8
	 restore
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	%i0, %g2
	mov	%i1, %g3
	mov	0, %i0
	b	.L521
	 mov	0, %i1
.L524:
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L525
	 srl	%i3, 31, %g1
	addcc	%i1, %i3, %i1
	addx	%i0, %i2, %i0
.L525:
	sll	%i2, 1, %i4
	or	%g1, %i4, %i4
	sll	%i3, 1, %i5
	mov	%i4, %i2
	mov	%i5, %i3
	sll	%g2, 31, %g1
	srl	%g3, 1, %o5
	or	%g1, %o5, %o5
	srl	%g2, 1, %o4
	mov	%o4, %g2
	mov	%o5, %g3
.L521:
	orcc	%g2, %g3, %g0
	bne	.L524
	 mov	0, %o2
	jmp	%i7+8
	 restore
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -96, %sp
	b	.L527
	 mov	1, %g1
.L529:
	sll	%g1, 1, %g1
.L527:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L534
	 cmp	%i1, 0
	bge,a	.L529
	 sll	%i1, 1, %i1
	b	.L531
	 mov	0, %g2
.L532:
	blu,a	.L537
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L537:
	b	.L531
	 srl	%i1, 1, %i1
.L534:
	mov	0, %g2
.L531:
	cmp	%g1, 0
	bne	.L532
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L536
	 mov	%g2, %i0
.L536:
	jmp	%i7+8
	 restore
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl,a	.L539
	 xnor	%g0, %i0, %i0
.L539:
	cmp	%i0, 0
	be	.L541
	 nop
	call	__clzsi2, 0
	 sll	%i0, 8, %o0
	jmp	%i7+8
	 restore %o0, -1, %o0
.L541:
	jmp	%i7+8
	 restore %g0, 7, %o0
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L548
	 orcc	%i0, %i1, %g0
	xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	orcc	%i0, %i1, %g0
.L548:
	be	.L547
	 mov	%i0, %o0
	call	__clzdi2, 0
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %o0, -1, %o0
.L547:
	jmp	%i7+8
	 restore %g0, 63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b	.L550
	 mov	0, %i0
.L552:
	bne,a	.L551
	 add	%i0, %i1, %i0
.L551:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L550:
	cmp	%g1, 0
	bne	.L552
	 andcc	%g1, 1, %g0
	jmp	%i7+8
	 restore
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -96, %sp
	srl	%i2, 3, %g3
	cmp	%i0, %i1
	blu	.L554
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L563
	 add	%i2, -1, %i2
.L554:
	sll	%g3, 3, %g3
	b	.L556
	 mov	0, %g2
.L557:
	ldd	[%g4], %i4
	add	%i0, %g2, %g4
	std	%i4, [%g4]
	add	%g2, 8, %g2
.L556:
	cmp	%g2, %g3
	bne	.L557
	 add	%i1, %g2, %g4
	b	.L562
	 cmp	%i2, %g1
.L559:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L562:
	bgu,a	.L559
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L561:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L563:
	cmp	%i2, -1
	bne,a	.L561
	 ldub	[%i1+%i2], %g1
	jmp	%i7+8
	 restore
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	blu	.L565
	 srl	%i2, 1, %g3
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu,a	.L571
	 add	%i2, -1, %i2
.L565:
	sll	%g3, 1, %g3
	b	.L567
	 mov	0, %g1
.L568:
	sth	%g2, [%i0+%g1]
	add	%g1, 2, %g1
.L567:
	cmp	%g1, %g3
	bne,a	.L568
	 lduh	[%i1+%g1], %g2
	andcc	%i2, 1, %g0
	be	.L573
	 add	%i2, -1, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L573:
	jmp	%i7+8
	 restore
.L570:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L571:
	cmp	%i2, -1
	bne,a	.L570
	 ldub	[%i1+%i2], %g1
	jmp	%i7+8
	 restore
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -96, %sp
	srl	%i2, 2, %g4
	cmp	%i0, %i1
	blu	.L575
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L584
	 add	%i2, -1, %i2
.L575:
	sll	%g4, 2, %g4
	b	.L577
	 mov	0, %g2
.L578:
	st	%g3, [%i0+%g2]
	add	%g2, 4, %g2
.L577:
	cmp	%g2, %g4
	bne,a	.L578
	 ld	[%i1+%g2], %g3
	b	.L583
	 cmp	%i2, %g1
.L580:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L583:
	bgu,a	.L580
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L582:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L584:
	cmp	%i2, -1
	bne,a	.L582
	 ldub	[%i1+%i2], %g1
	jmp	%i7+8
	 restore
	.size	__cmovw, .-__cmovw
	.align 4
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	save	%sp, -96, %sp
	mov	%i1, %o1
	call	.rem, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	__modi, .-__modi
	.section	".rodata"
	.align 8
.LC36:
	.long	1106247680
	.long	0
	.section	".text"
	.align 4
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f8
	cmp	%i0, 0
	bge	.L588
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L588:
	jmp	%i7+8
	 restore
	.size	__uitod, .-__uitod
	.section	".rodata"
	.align 8
.LC38:
	.long	1106247680
	.long	0
	.section	".text"
	.align 4
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f8
	cmp	%i0, 0
	bge	.L590
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L590:
	fdtos	%f0, %f0
	jmp	%i7+8
	 restore
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -96, %sp
	mov	%i0, %o0
	call	__floatundidf, 0
	 mov	%i1, %o1
	jmp	%i7+8
	 restore
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -96, %sp
	mov	%i0, %o0
	call	__floatundisf, 0
	 mov	%i1, %o1
	jmp	%i7+8
	 restore
	.size	__ulltof, .-__ulltof
	.align 4
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	save	%sp, -96, %sp
	mov	%i1, %o1
	call	.urem, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	save	%sp, -96, %sp
	b	.L595
	 mov	0, %g2
.L597:
	sub	%g1, %g2, %g1
	sra	%i0, %g1, %g1
	andcc	%g1, 1, %g0
	bne	.L596
	 nop
	add	%g2, 1, %g2
.L595:
	cmp	%g2, 16
	bne	.L597
	 mov	15, %g1
.L596:
	jmp	%i7+8
	 restore %g0, %g2, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -96, %sp
	b	.L599
	 mov	0, %g1
.L601:
	andcc	%g2, 1, %g0
	bne	.L600
	 nop
	add	%g1, 1, %g1
.L599:
	cmp	%g1, 16
	bne	.L601
	 sra	%i0, %g1, %g2
.L600:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	".rodata"
	.align 4
.LC40:
	.long	1191182336
	.section	".text"
	.align 4
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	04
__fixunssfsi:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f8
	sethi	%hi(.LC40), %g1
	ld	[%g1+%lo(.LC40)], %f9
	fcmpes	%f8, %f9
	nop
	fbul	.L607
	 nop
	fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	jmp	%i7+8
	 restore %g2, %g1, %o0
.L607:
	fstoi	%f8, %f8
	st	%f8, [%fp-4]
	ld	[%fp-4], %i0
	jmp	%i7+8
	 restore
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	save	%sp, -96, %sp
	mov	0, %g3
	b	.L609
	 mov	0, %g1
.L611:
	andcc	%g2, 1, %g0
	bne,a	.L610
	 add	%g3, 1, %g3
.L610:
	add	%g1, 1, %g1
.L609:
	cmp	%g1, 16
	bne	.L611
	 sra	%i0, %g1, %g2
	and	%g3, 1, %i0
	jmp	%i7+8
	 restore
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -96, %sp
	mov	0, %g3
	b	.L613
	 mov	0, %g1
.L615:
	andcc	%g2, 1, %g0
	bne,a	.L614
	 add	%g3, 1, %g3
.L614:
	add	%g1, 1, %g1
.L613:
	cmp	%g1, 16
	bne	.L615
	 sra	%i0, %g1, %g2
	jmp	%i7+8
	 restore %g0, %g3, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b	.L617
	 mov	0, %i0
.L619:
	bne,a	.L618
	 add	%i0, %i1, %i0
.L618:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L617:
	cmp	%g1, 0
	bne	.L619
	 andcc	%g1, 1, %g0
	jmp	%i7+8
	 restore
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -96, %sp
	cmp	%i0, 0
	be	.L625
	 mov	0, %g1
	b	.L626
	 cmp	%i1, 0
.L624:
	bne,a	.L623
	 add	%g1, %i0, %g1
.L623:
	sll	%i0, 1, %i0
	srl	%i1, 1, %i1
	cmp	%i1, 0
.L626:
	bne	.L624
	 andcc	%i1, 1, %g0
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L625:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -96, %sp
	b	.L628
	 mov	1, %g1
.L630:
	sll	%g1, 1, %g1
.L628:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L635
	 cmp	%i1, 0
	bge,a	.L630
	 sll	%i1, 1, %i1
	b	.L632
	 mov	0, %g2
.L633:
	blu,a	.L638
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L638:
	b	.L632
	 srl	%i1, 1, %i1
.L635:
	mov	0, %g2
.L632:
	cmp	%g1, 0
	bne	.L633
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L637
	 mov	%g2, %i0
.L637:
	jmp	%i7+8
	 restore
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f9
	st	%i1, [%fp-4]
	ld	[%fp-4], %f8
	fcmpes	%f9, %f8
	nop
	fbl	.L641
	 nop
	nop
	fbg	.L642
	 nop
	jmp	%i7+8
	 restore %g0, 0, %o0
.L641:
	jmp	%i7+8
	 restore %g0, -1, %o0
.L642:
	jmp	%i7+8
	 restore %g0, 1, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f10
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L645
	 nop
	nop
	fbg	.L646
	 nop
	jmp	%i7+8
	 restore %g0, 0, %o0
.L645:
	jmp	%i7+8
	 restore %g0, -1, %o0
.L646:
	jmp	%i7+8
	 restore %g0, 1, %o0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -96, %sp
	mov	%i0, %o1
	sra	%i0, 31, %o0
	mov	%i1, %o3
	call	__muldi3, 0
	 sra	%i1, 31, %o2
	mov	%o0, %i0
	jmp	%i7+8
	 restore %g0, %o1, %o1
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	save	%sp, -96, %sp
	mov	%i1, %o3
	mov	0, %o2
	mov	%i0, %o1
	call	__muldi3, 0
	 mov	0, %o0
	mov	%o0, %i0
	jmp	%i7+8
	 restore %g0, %o1, %o1
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	save	%sp, -96, %sp
	cmp	%i1, 0
	bge,a	.L656
	 mov	0, %i4
	sub	%g0, %i1, %i1
	mov	1, %i4
.L656:
	mov	0, %i5
	b	.L651
	 mov	0, %g1
.L654:
	bne,a	.L652
	 add	%i5, %i0, %i5
.L652:
	sll	%i0, 1, %i0
	sra	%i1, 1, %i1
	add	%g1, 1, %g1
.L651:
	cmp	%g0, %i1
	addx	%g0, 0, %g3
	and	%g1, 0xff, %g4
	cmp	%g4, 31
	bleu	.L653
	 mov	1, %g2
	mov	0, %g2
.L653:
	andcc	%g3, %g2, %g0
	bne	.L654
	 andcc	%i1, 1, %g0
	cmp	%i4, 0
	be	.L657
	 nop
	sub	%g0, %i5, %i0
	jmp	%i7+8
	 restore
.L657:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge,a	.L662
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L662:
	cmp	%i1, 0
	bge	.L663
	 mov	0, %o2
	sub	%g0, %i1, %i1
	xor	%i5, 1, %i5
.L663:
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L664
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L664:
	jmp	%i7+8
	 restore
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge,a	.L669
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L669:
	cmp	%i1, 0
	bl,a	.L667
	 sub	%g0, %i1, %i1
.L667:
	mov	1, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L670
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L670:
	jmp	%i7+8
	 restore
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -96, %sp
	b	.L672
	 mov	1, %g1
.L674:
	srl	%i1, 16, %i1
	sll	%g1, 1, %g1
.L672:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L679
	 sll	%i1, 16, %g2
	cmp	%g2, 0
	bge,a	.L674
	 sll	%i1, 17, %i1
	b	.L676
	 mov	0, %g3
.L677:
	blu,a	.L681
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	or	%g3, %g1, %g3
	sll	%g1, 16, %g1
.L681:
	srl	%g1, 17, %g1
	b	.L676
	 srl	%i1, 1, %i1
.L679:
	mov	0, %g3
.L676:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L677
	 cmp	%i0, %i1
	cmp	%i2, 0
	bne,a	.L678
	 mov	%i0, %g3
.L678:
	sll	%g3, 16, %i0
	srl	%i0, 16, %i0
	jmp	%i7+8
	 restore
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	save	%sp, -96, %sp
	b	.L683
	 mov	1, %g1
.L685:
	sll	%g1, 1, %g1
.L683:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L690
	 cmp	%i1, 0
	bge,a	.L685
	 sll	%i1, 1, %i1
	b	.L687
	 mov	0, %g2
.L688:
	blu,a	.L693
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L693:
	b	.L687
	 srl	%i1, 1, %i1
.L690:
	mov	0, %g2
.L687:
	cmp	%g1, 0
	bne	.L688
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L692
	 mov	%g2, %i0
.L692:
	jmp	%i7+8
	 restore
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L695
	 cmp	%i2, 0
	mov	0, %g3
	b	.L696
	 sll	%i1, %i2, %g2
.L695:
	be	.L699
	 sll	%i1, %i2, %g3
	sll	%i0, %i2, %g1
	sub	%g0, %i2, %i2
	srl	%i1, %i2, %i2
	or	%i2, %g1, %g2
.L696:
	mov	%g2, %i0
	mov	%g3, %i1
.L699:
	jmp	%i7+8
	 restore
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L701
	 cmp	%i2, 0
	sra	%i0, 31, %g2
	b	.L702
	 sra	%i0, %i2, %g3
.L701:
	be	.L705
	 sra	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sll	%i0, %g1, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L702:
	mov	%g2, %i0
	mov	%g3, %i1
.L705:
	jmp	%i7+8
	 restore
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -96, %sp
	srl	%i0, 24, %l3
	srl	%i0, 8, %g3
	mov	0, %o2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g3, %g1, %o3
	sll	%i0, 8, %i2
	srl	%i1, 24, %g3
	or	%i2, %g3, %g3
	mov	0, %o4
	sethi	%hi(16711680), %g4
	and	%g3, %g4, %o5
	sll	%i0, 24, %i3
	srl	%i1, 8, %i5
	or	%i3, %i5, %i5
	mov	0, %o0
	sethi	%hi(-16777216), %g2
	and	%i5, %g2, %o1
	sll	%i1, 8, %l5
	and	%g3, 255, %l0
	sll	%i1, 24, %g3
	and	%i5, %g1, %i2
	and	%l5, %g4, %l4
	or	%g3, %o2, %g2
	or	%l3, %o3, %g3
	or	%g2, %o4, %i4
	or	%g3, %o5, %i5
	or	%i4, %o0, %g2
	or	%i5, %o1, %g3
	or	%g2, %l0, %i4
	or	%i4, %i2, %g2
	or	%g2, %l4, %i0
	jmp	%i7+8
	 restore %g0, %g3, %o1
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	save	%sp, -96, %sp
	srl	%i0, 24, %g3
	srl	%i0, 8, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g2
	sll	%i0, 8, %g1
	sethi	%hi(16711680), %g4
	and	%g1, %g4, %g1
	sll	%i0, 24, %i0
	or	%i0, %g3, %i0
	or	%i0, %g2, %i0
	or	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	save	%sp, -96, %sp
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%i0, %g1
	bgu,a	.L713
	 mov	0, %g2
	mov	16, %g2
.L713:
	mov	16, %g1
	sub	%g1, %g2, %g1
	srl	%i0, %g1, %g1
	mov	%g2, %i0
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	andcc	%g1, %g2, %g0
	bne,a	.L714
	 mov	0, %g3
	mov	8, %g3
.L714:
	mov	8, %g2
	sub	%g2, %g3, %g2
	srl	%g1, %g2, %g1
	andcc	%g1, 240, %g0
	bne	.L715
	 add	%i0, %g3, %i0
	b	.L711
	 mov	4, %g3
.L715:
	mov	0, %g3
.L711:
	mov	4, %g2
	sub	%g2, %g3, %g2
	srl	%g1, %g2, %g1
	andcc	%g1, 12, %g0
	bne	.L716
	 add	%i0, %g3, %i0
	b	.L712
	 mov	2, %g2
.L716:
	mov	0, %g2
.L712:
	mov	2, %o1
	sub	%o1, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i0, %g2, %i0
	and	%g1, 2, %g2
	sub	%o1, %g1, %o1
	cmp	%g0, %g2
	call	.umul, 0
	 subx	%g0, -1, %o0
	jmp	%i7+8
	 restore %i0, %o0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	save	%sp, -96, %sp
	cmp	%i0, %i2
	bl	.L719
	 nop
	bg	.L720
	 cmp	%i1, %i3
	blu	.L721
	 nop
	bgu	.L722
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L719:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L720:
	jmp	%i7+8
	 restore %g0, 2, %o0
.L721:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L722:
	jmp	%i7+8
	 restore %g0, 2, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__cmpdi2, 0
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %o0, -1, %o0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	save	%sp, -96, %sp
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	andcc	%i0, %g1, %g0
	bne,a	.L729
	 mov	0, %g2
	mov	16, %g2
.L729:
	srl	%i0, %g2, %g1
	andcc	%g1, 0xff, %g0
	bne,a	.L730
	 mov	0, %g3
	mov	8, %g3
.L730:
	srl	%g1, %g3, %g1
	andcc	%g1, 15, %g0
	bne	.L731
	 add	%g2, %g3, %g2
	b	.L727
	 mov	4, %g3
.L731:
	mov	0, %g3
.L727:
	srl	%g1, %g3, %g1
	andcc	%g1, 3, %g0
	bne	.L732
	 add	%g2, %g3, %g2
	b	.L728
	 mov	2, %g3
.L732:
	mov	0, %g3
.L728:
	srl	%g1, %g3, %g1
	and	%g1, 3, %g1
	add	%g2, %g3, %g2
	xnor	%g0, %g1, %g3
	and	%g3, 1, %g3
	srl	%g1, 1, %g1
	mov	2, %i0
	sub	%i0, %g1, %i0
	sub	%g0, %g3, %g1
	and	%i0, %g1, %i0
	jmp	%i7+8
	 restore %g2, %i0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L734
	 cmp	%i2, 0
	mov	0, %g2
	b	.L735
	 srl	%i0, %i2, %g3
.L734:
	be	.L738
	 srl	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sll	%i0, %g1, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L735:
	mov	%g2, %i0
	mov	%g3, %i1
.L738:
	jmp	%i7+8
	 restore
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i4
	or	%i4, 1023, %i4
	and	%i0, %i4, %l1
	and	%i1, %i4, %l2
	mov	%l2, %o1
	call	.umul, 0
	 mov	%l1, %o0
	srl	%o0, 16, %i5
	and	%o0, %i4, %l0
	srl	%i0, 16, %i0
	mov	%l2, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %l0, %i3
	srl	%i5, 16, %i2
	srl	%i3, 16, %i5
	and	%i4, %i3, %i4
	srl	%i1, 16, %i1
	mov	%i1, %o1
	call	.umul, 0
	 mov	%l1, %o0
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %i4, %i3
	srl	%i5, 16, %i5
	add	%i5, %i2, %i5
	mov	%i1, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%o0, %i5, %i2
	mov	%i2, %i0
	jmp	%i7+8
	 restore %g0, %i3, %o1
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -96, %sp
	mov	%i3, %o1
	call	__muldsi3, 0
	 mov	%i1, %o0
	mov	%o0, %l2
	mov	%o1, %l3
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	mov	%o0, %i5
	mov	%i1, %o1
	call	.umul, 0
	 mov	%i2, %o0
	add	%i5, %o0, %i5
	add	%i5, %l2, %l0
	mov	%l0, %i0
	jmp	%i7+8
	 restore %g0, %l3, %o1
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	save	%sp, -96, %sp
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
	jmp	%i7+8
	 restore
	.size	__negdi2, .-__negdi2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -96, %sp
	xor	%i1, %i0, %i1
	srl	%i1, 16, %g1
	xor	%i1, %g1, %i1
	srl	%i1, 8, %g1
	xor	%i1, %g1, %i1
	srl	%i1, 4, %g1
	xor	%i1, %g1, %i1
	and	%i1, 15, %i1
	sethi	%hi(26624), %i0
	or	%i0, 406, %i0
	sra	%i0, %i1, %i0
	and	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	save	%sp, -96, %sp
	srl	%i0, 16, %g1
	xor	%g1, %i0, %i0
	srl	%i0, 8, %g1
	xor	%i0, %g1, %i0
	srl	%i0, 4, %g1
	xor	%i0, %g1, %i0
	and	%i0, 15, %i0
	sethi	%hi(26624), %g1
	or	%g1, 406, %g1
	sra	%g1, %i0, %i0
	and	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	save	%sp, -96, %sp
	sll	%i0, 31, %g1
	srl	%i1, 1, %g3
	or	%g1, %g3, %g3
	srl	%i0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%g2, %g1, %i4
	and	%g3, %g1, %i5
	subcc	%i1, %i5, %g3
	subx	%i0, %i4, %g2
	sll	%g2, 30, %g1
	srl	%g3, 2, %i5
	or	%g1, %i5, %i5
	srl	%g2, 2, %i4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%i4, %g1, %i2
	and	%i5, %g1, %i3
	and	%g2, %g1, %i4
	and	%g3, %g1, %i5
	addcc	%i3, %i5, %g3
	addx	%i2, %i4, %g2
	sll	%g2, 28, %g1
	srl	%g3, 4, %i5
	or	%g1, %i5, %i5
	srl	%g2, 4, %i4
	addcc	%i5, %g3, %i3
	addx	%i4, %g2, %i2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%i2, %g1, %g2
	and	%i3, %g1, %g3
	add	%g2, %g3, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	and	%i0, 127, %i0
	jmp	%i7+8
	 restore
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	save	%sp, -96, %sp
	srl	%i0, 1, %g1
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	and	%g1, %g2, %g1
	sub	%i0, %g1, %i0
	srl	%i0, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	and	%i0, %g1, %i0
	add	%g2, %i0, %i0
	srl	%i0, 4, %g1
	add	%g1, %i0, %i0
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%i0, %g1, %i0
	srl	%i0, 16, %g1
	add	%i0, %g1, %i0
	srl	%i0, 8, %g1
	add	%g1, %i0, %i0
	and	%i0, 63, %i0
	jmp	%i7+8
	 restore
	.size	__popcountsi2, .-__popcountsi2
	.section	".rodata"
	.align 8
.LC42:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f8
	srl	%i2, 31, %g2
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
.L749:
	andcc	%i2, 1, %g0
	bne,a	.L747
	 fmuld	%f0, %f8, %f0
.L747:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L748
	 cmp	%g2, 0
	b	.L749
	 fmuld	%f8, %f8, %f8
.L748:
	be	.L752
	 sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
.L752:
	jmp	%i7+8
	 restore
	.size	__powidf2, .-__powidf2
	.section	".rodata"
	.align 4
.LC44:
	.long	1065353216
	.section	".text"
	.align 4
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	save	%sp, -104, %sp
	st	%i0, [%fp-4]
	ld	[%fp-4], %f8
	srl	%i1, 31, %g2
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
.L756:
	andcc	%i1, 1, %g0
	bne,a	.L754
	 fmuls	%f0, %f8, %f0
.L754:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L755
	 cmp	%g2, 0
	b	.L756
	 fmuls	%f8, %f8, %f8
.L755:
	be	.L759
	 sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
.L759:
	jmp	%i7+8
	 restore
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	save	%sp, -96, %sp
	cmp	%i0, %i2
	blu	.L762
	 nop
	bgu	.L763
	 cmp	%i1, %i3
	blu	.L764
	 nop
	bgu	.L765
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L762:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L763:
	jmp	%i7+8
	 restore %g0, 2, %o0
.L764:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L765:
	jmp	%i7+8
	 restore %g0, 2, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__ucmpdi2, 0
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %o0, -1, %o0
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.common	s.0,7,8
	.global .urem
	.global __floatundisf
	.global __floatundidf
	.global __clzdi2
	.global __clzsi2
	.global __moddi3
	.global __divdi3
	.global .rem
	.global .div
	.global .umul
	.global __muldi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
