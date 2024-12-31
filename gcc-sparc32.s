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
	 nop
	add	%i1, %i2, %i1
	add	%i0, %i2, %g4
	mov	%i2, %g2
	b,a	.L3
.L4:
	sub	%g0, %i2, %g1
	sub	%i1, %i2, %g3
	add	%g3, -1, %g3
	ldub	[%g3+%g2], %g3
	add	%g4, %g1, %g1
	add	%g1, -1, %g1
	stb	%g3, [%g1+%g2]
	add	%g2, -1, %g2
.L3:
	cmp	%g2, 0
	bne	.L4
	 nop
	restore
	jmp	%o7+8
	 nop
.L2:
	cmp	%i0, %i1
	bne	.L8
	 nop
	restore
	jmp	%o7+8
	 nop
.L7:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	b,a	.L6
.L8:
	mov	0, %g1
.L6:
	cmp	%g1, %i2
	bne	.L7
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	save	%sp, -96, %sp
	and	%i2, 0xff, %i2
	b,a	.L10
.L12:
	add	%i3, -1, %i3
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L10:
	cmp	%i3, 0
	be	.L11
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%i2, %g1
	bne	.L12
	 nop
.L11:
	cmp	%i3, 0
	be	.L14
	 nop
	add	%i0, 1, %i0
	restore
	jmp	%o7+8
	 nop
.L14:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -96, %sp
	and	%i1, 0xff, %i1
	b,a	.L16
.L18:
	add	%i0, 1, %i0
	add	%i2, -1, %i2
.L16:
	cmp	%i2, 0
	be	.L17
	 nop
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne	.L18
	 nop
.L17:
	cmp	%i2, 0
	bne	.L19
	 nop
	mov	0, %i0
.L19:
	restore
	jmp	%o7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -96, %sp
	b,a	.L22
.L24:
	add	%i2, -1, %i2
	add	%i0, 1, %i0
	add	%i1, 1, %i1
.L22:
	cmp	%i2, 0
	be	.L23
	 nop
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be	.L24
	 nop
.L23:
	cmp	%i2, 0
	be	.L26
	 nop
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	restore
	jmp	%o7+8
	 nop
.L26:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L28
.L29:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L28:
	cmp	%g1, %i2
	bne	.L29
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	save	%sp, -96, %sp
	and	%i1, 0xff, %i1
	add	%i2, -1, %i2
	b,a	.L31
.L33:
	ldub	[%i0+%i2], %g2
	add	%i2, -1, %g1
	cmp	%i1, %g2
	bne	.L34
	 nop
	add	%i0, %i2, %i0
	restore
	jmp	%o7+8
	 nop
.L34:
	mov	%g1, %i2
.L31:
	cmp	%i2, -1
	bne	.L33
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -96, %sp
	add	%i0, %i2, %i2
	mov	%i0, %g1
	b,a	.L36
.L37:
	stb	%i1, [%g1]
	add	%g1, 1, %g1
.L36:
	cmp	%g1, %i2
	bne	.L37
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	save	%sp, -96, %sp
	b,a	.L39
.L40:
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L39:
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L40
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	save	%sp, -96, %sp
	and	%i1, 0xff, %i1
	b,a	.L42
.L44:
	add	%i0, 1, %i0
.L42:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be	.L43
	 nop
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne	.L44
	 nop
.L43:
	restore
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	save	%sp, -96, %sp
.L47:
	ldsb	[%i0], %g1
	cmp	%i1, %g1
	be	.L46
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne	.L47
	 nop
	mov	0, %i0
.L46:
	restore
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -96, %sp
	b,a	.L50
.L52:
	add	%i0, 1, %i0
	add	%i1, 1, %i1
.L50:
	ldsb	[%i0], %g2
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne	.L51
	 nop
	mov	%g2, %g1
	cmp	%g1, 0
	bne	.L52
	 nop
.L51:
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b,a	.L54
.L55:
	add	%g1, 1, %g1
.L54:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L55
	 nop
	sub	%g1, %i0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L61
	 nop
	mov	%i0, %g1
	b,a	.L58
.L60:
	add	%g1, 1, %g1
	add	%i1, 1, %i1
.L58:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be	.L59
	 nop
	add	%i2, -1, %g2
	add	%g2, %i0, %g2
	sub	%g2, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%i1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L59
	 nop
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be	.L60
	 nop
.L59:
	ldub	[%g1], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	restore
	jmp	%o7+8
	 nop
.L61:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b,a	.L63
.L64:
	ldub	[%g1+1], %g2
	stb	%g2, [%i1]
	ldub	[%g1], %g2
	stb	%g2, [%i1+1]
	add	%i1, 2, %i1
	add	%g1, 2, %g1
.L63:
	add	%i0, %i2, %g2
	sub	%g2, %g1, %g2
	cmp	%g2, 1
	bg	.L64
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	swab, .-swab
	.align 4
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	save	%sp, -96, %sp
	or	%i0, 32, %g1
	add	%g1, -97, %g1
	mov	1, %i0
	cmp	%g1, 25
	bleu	.L66
	 nop
	mov	0, %i0
.L66:
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	save	%sp, -96, %sp
	mov	1, %g1
	cmp	%i0, 127
	bleu	.L68
	 nop
	mov	0, %g1
.L68:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isascii, .-isascii
	.align 4
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	save	%sp, -96, %sp
	xor	%i0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	xor	%i0, 9, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %g2
	or	%g1, %g2, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isblank, .-isblank
	.align 4
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	save	%sp, -96, %sp
	mov	1, %g1
	cmp	%i0, 31
	bleu	.L71
	 nop
	mov	0, %g1
.L71:
	xor	%i0, 127, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %i0
	or	%i0, %g1, %i0
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %i0
	mov	1, %g1
	cmp	%i0, 9
	bleu	.L73
	 nop
	mov	0, %g1
.L73:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	save	%sp, -96, %sp
	add	%i0, -33, %i0
	mov	1, %g1
	cmp	%i0, 93
	bleu	.L75
	 nop
	mov	0, %g1
.L75:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	save	%sp, -96, %sp
	add	%i0, -97, %i0
	mov	1, %g1
	cmp	%i0, 25
	bleu	.L77
	 nop
	mov	0, %g1
.L77:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	save	%sp, -96, %sp
	add	%i0, -32, %i0
	mov	1, %g1
	cmp	%i0, 94
	bleu	.L79
	 nop
	mov	0, %g1
.L79:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isprint, .-isprint
	.align 4
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	save	%sp, -96, %sp
	xor	%i0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	add	%i0, -9, %i0
	mov	1, %g1
	cmp	%i0, 4
	bleu	.L81
	 nop
	mov	0, %g1
.L81:
	or	%g1, %g2, %i0
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	save	%sp, -96, %sp
	add	%i0, -65, %i0
	mov	1, %g1
	cmp	%i0, 25
	bleu	.L83
	 nop
	mov	0, %g1
.L83:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	save	%sp, -96, %sp
	mov	1, %g1
	cmp	%i0, 31
	bleu	.L85
	 nop
	mov	0, %g1
.L85:
	add	%i0, -127, %g2
	mov	1, %g3
	cmp	%g2, 32
	bleu	.L86
	 nop
	mov	0, %g3
.L86:
	or	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L88
	 nop
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu	.L89
	 nop
	sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 2
	bgu	.L90
	 nop
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L88:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L89:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L90:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %i0
	mov	1, %g1
	cmp	%i0, 9
	bleu	.L92
	 nop
	mov	0, %g1
.L92:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	save	%sp, -96, %sp
	cmp	%i0, 254
	bgu	.L94
	 nop
	add	%i0, 1, %i0
	and	%i0, 127, %i0
	mov	1, %g1
	cmp	%i0, 32
	bgu	.L95
	 nop
	mov	0, %g1
.L95:
	and	%g1, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
.L94:
	sethi	%hi(8192), %g1
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
	bne	.L97
	 nop
	sethi	%hi(-57344), %g2
	add	%i0, %g2, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bleu	.L98
	 nop
	sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%i0, %g1, %g1
	sethi	%hi(1048576), %g2
	or	%g2, 3, %g2
	cmp	%g1, %g2
	bgu	.L99
	 nop
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%i0, %g1, %i0
	cmp	%i0, %g1
	be	.L100
	 nop
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L97:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L98:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L99:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L100:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %g1
	cmp	%g1, 9
	bleu	.L103
	 nop
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 5
	bgu	.L104
	 nop
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L103:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L104:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	save	%sp, -96, %sp
	and	%i0, 127, %i0
	restore
	jmp	%o7+8
	 nop
	.size	toascii, .-toascii
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f8
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f0
	fcmpd	%f8, %f8
	nop
	fbu	.L109
	 nop
	fcmpd	%f0, %f0
	nop
	fbu	.L107
	 nop
	fcmped	%f8, %f0
	nop
	fbule	.L113
	 nop
	fsubd	%f8, %f0, %f0
	restore
	jmp	%o7+8
	 nop
.L109:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L113:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f0
.L107:
	restore
	jmp	%o7+8
	 nop
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
	ld	[%fp-4], %f8
	st	%i1, [%fp-4]
	ld	[%fp-4], %f0
	fcmps	%f8, %f8
	nop
	fbu	.L117
	 nop
	fcmps	%f0, %f0
	nop
	fbu	.L115
	 nop
	fcmpes	%f8, %f0
	nop
	fbule	.L121
	 nop
	fsubs	%f8, %f0, %f0
	restore
	jmp	%o7+8
	 nop
.L117:
	fmovs	%f8, %f0
	restore
	jmp	%o7+8
	 nop
.L121:
	sethi	%hi(.LC2), %g1
	ld	[%g1+%lo(.LC2)], %f0
.L115:
	restore
	jmp	%o7+8
	 nop
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
	ldd	[%fp-8], %f8
	fcmpd	%f0, %f0
	nop
	fbu	.L126
	 nop
	fcmpd	%f8, %f8
	nop
	fbu	.L123
	 nop
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L124
	 nop
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L123
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L124:
	fcmped	%f0, %f8
	nop
	fbuge	.L123
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L126:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L123:
	restore
	jmp	%o7+8
	 nop
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
	ld	[%fp-4], %f8
	fcmps	%f0, %f0
	nop
	fbu	.L136
	 nop
	fcmps	%f8, %f8
	nop
	fbu	.L133
	 nop
	st	%f0, [%fp-4]
	ld	[%fp-4], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L134
	 nop
	st	%f0, [%fp-4]
	ld	[%fp-4], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L133
	 nop
	fmovs	%f8, %f0
	restore
	jmp	%o7+8
	 nop
.L134:
	fcmpes	%f0, %f8
	nop
	fbuge	.L133
	 nop
	fmovs	%f8, %f0
	restore
	jmp	%o7+8
	 nop
.L136:
	fmovs	%f8, %f0
.L133:
	restore
	jmp	%o7+8
	 nop
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
	ldd	[%fp-8], %f8
	fcmpd	%f0, %f0
	nop
	fbu	.L146
	 nop
	fcmpd	%f8, %f8
	nop
	fbu	.L143
	 nop
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L144
	 nop
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L143
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L144:
	fcmped	%f0, %f8
	nop
	fbuge	.L143
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L146:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L143:
	restore
	jmp	%o7+8
	 nop
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
	ldd	[%fp-8], %f0
	fcmpd	%f8, %f8
	nop
	fbu	.L153
	 nop
	fcmpd	%f0, %f0
	nop
	fbu	.L157
	 nop
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f0, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L154
	 nop
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L153
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L154:
	fcmped	%f8, %f0
	nop
	fbuge	.L153
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L157:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L153:
	restore
	jmp	%o7+8
	 nop
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
	ld	[%fp-4], %f0
	fcmps	%f8, %f8
	nop
	fbu	.L163
	 nop
	fcmps	%f0, %f0
	nop
	fbu	.L167
	 nop
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f0, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L164
	 nop
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L163
	 nop
	fmovs	%f8, %f0
	restore
	jmp	%o7+8
	 nop
.L164:
	fcmpes	%f8, %f0
	nop
	fbuge	.L163
	 nop
	fmovs	%f8, %f0
	restore
	jmp	%o7+8
	 nop
.L167:
	fmovs	%f8, %f0
.L163:
	restore
	jmp	%o7+8
	 nop
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
	ldd	[%fp-8], %f0
	fcmpd	%f8, %f8
	nop
	fbu	.L173
	 nop
	fcmpd	%f0, %f0
	nop
	fbu	.L177
	 nop
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f0, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L174
	 nop
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L173
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L174:
	fcmped	%f8, %f0
	nop
	fbuge	.L173
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
.L177:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L173:
	restore
	jmp	%o7+8
	 nop
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
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	b,a	.L183
.L184:
	and	%i0, 63, %g3
	sethi	%hi(digits), %g2
	or	%g2, %lo(digits), %g2
	ldub	[%g2+%g3], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%i0, 6, %i0
.L183:
	cmp	%i0, 0
	bne	.L184
	 nop
	stb	%g0, [%g1]
	sethi	%hi(s.0), %i0
	or	%i0, %lo(s.0), %i0
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -96, %sp
	sethi	%hi(seed), %i5
	or	%i5, %lo(seed), %i5
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	or	%o3, 813, %o3
	ldd	[%i5], %o0
	call	__muldi3, 0
	 nop
	addcc	%o1, 1, %i3
	addx	%o0, 0, %i2
	std	%i2, [%i5]
	mov	0, %g2
	mov	0, %g3
	srl	%i2, 1, %g3
	mov	0, %g2
	mov	%g3, %i0
	restore
	jmp	%o7+8
	 nop
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -96, %sp
	cmp	%i1, 0
	bne	.L188
	 nop
	st	%g0, [%i0+4]
	st	%g0, [%i0]
	restore
	jmp	%o7+8
	 nop
.L188:
	ld	[%i1], %g1
	st	%g1, [%i0]
	st	%i1, [%i0+4]
	st	%i0, [%i1]
	ld	[%i0], %g1
	cmp	%g1, 0
	be	.L187
	 nop
	st	%i0, [%g1+4]
.L187:
	restore
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -96, %sp
	ld	[%i0], %g1
	cmp	%g1, 0
	be	.L191
	 nop
	ld	[%i0+4], %g2
	st	%g2, [%g1+4]
.L191:
	ld	[%i0+4], %g1
	cmp	%g1, 0
	be	.L190
	 nop
	ld	[%i0], %g2
	st	%g2, [%g1]
.L190:
	restore
	jmp	%o7+8
	 nop
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -96, %sp
	ld	[%i2], %l0
	mov	%i1, %l1
	mov	0, %i5
	b,a	.L194
.L197:
	mov	%l1, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	add	%l1, %i3, %l1
	cmp	%o0, 0
	bne	.L195
	 nop
	mov	%i3, %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	add	%i1, %o0, %i0
	restore
	jmp	%o7+8
	 nop
.L195:
	add	%i5, 1, %i5
.L194:
	cmp	%i5, %l0
	bne	.L197
	 nop
	add	%l0, 1, %g1
	st	%g1, [%i2]
	mov	%l0, %o1
	mov	%i3, %o0
	call	.umul, 0
	 nop
	add	%i1, %o0, %o0
	mov	%i3, %o2
	mov	%i0, %o1
	call	memcpy, 0
	 nop
	mov	%o0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -96, %sp
	ld	[%i2], %l0
	mov	%i1, %i2
	mov	0, %i5
	b,a	.L199
.L202:
	mov	%i2, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	add	%i2, %i3, %i2
	cmp	%o0, 0
	bne	.L200
	 nop
	mov	%i3, %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	add	%i1, %o0, %i0
	restore
	jmp	%o7+8
	 nop
.L200:
	add	%i5, 1, %i5
.L199:
	cmp	%i5, %l0
	bne	.L202
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -96, %sp
	b,a	.L205
.L206:
	add	%i0, 1, %i0
.L205:
	ldsb	[%i0], %o0
	call	isspace, 0
	 nop
	cmp	%o0, 0
	bne	.L206
	 nop
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L212
	 nop
	cmp	%g1, 45
	bne	.L213
	 nop
	mov	1, %g3
	b,a	.L207
.L212:
	mov	0, %g3
.L207:
	add	%i0, 1, %i0
	b,a	.L208
.L213:
	mov	0, %g3
.L208:
	mov	0, %g1
	b,a	.L209
.L210:
	sll	%g1, 2, %g2
	add	%g2, %g1, %g2
	sll	%g2, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g2
	add	%g2, -48, %g2
	sub	%g1, %g2, %g1
.L209:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L210
	 nop
	cmp	%g3, 0
	bne	.L214
	 nop
	sub	%g0, %g1, %i0
	restore
	jmp	%o7+8
	 nop
.L214:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
	b,a	.L216
.L217:
	add	%i0, 1, %i0
.L216:
	ldsb	[%i0], %o0
	call	isspace, 0
	 nop
	cmp	%o0, 0
	bne	.L217
	 nop
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L223
	 nop
	cmp	%g1, 45
	bne	.L224
	 nop
	mov	1, %g3
	b,a	.L218
.L223:
	mov	0, %g3
.L218:
	add	%i0, 1, %i0
	b,a	.L219
.L224:
	mov	0, %g3
.L219:
	mov	0, %g1
	b,a	.L220
.L221:
	sll	%g1, 2, %g2
	add	%g2, %g1, %g2
	sll	%g2, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g2
	add	%g2, -48, %g2
	sub	%g1, %g2, %g1
.L220:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L221
	 nop
	cmp	%g3, 0
	bne	.L225
	 nop
	sub	%g0, %g1, %i0
	restore
	jmp	%o7+8
	 nop
.L225:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	b,a	.L227
.L228:
	add	%i0, 1, %i0
.L227:
	ldsb	[%i0], %o0
	call	isspace, 0
	 nop
	cmp	%o0, 0
	bne	.L228
	 nop
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L234
	 nop
	cmp	%g1, 45
	bne	.L235
	 nop
	mov	1, %g4
	b,a	.L229
.L234:
	mov	0, %g4
.L229:
	add	%i0, 1, %i0
	b,a	.L230
.L235:
	mov	0, %g4
.L230:
	mov	0, %g2
	mov	0, %g3
	b,a	.L231
.L232:
	srl	%g3, 30, %g1
	sll	%g2, 2, %i2
	or	%g1, %i2, %i2
	sll	%g3, 2, %i3
	addcc	%i3, %g3, %o5
	addx	%i2, %g2, %o4
	srl	%o5, 31, %g1
	sll	%o4, 1, %i4
	or	%g1, %i4, %i4
	sll	%o5, 1, %i5
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	mov	%g1, %l1
	sra	%g1, 31, %l0
	subcc	%i5, %l1, %g3
	subx	%i4, %l0, %g2
.L231:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L232
	 nop
	cmp	%g4, 0
	bne	.L236
	 nop
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
	restore
	jmp	%o7+8
	 nop
.L236:
	mov	%g2, %i0
	mov	%g3, %i1
	restore
	jmp	%o7+8
	 nop
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b,a	.L238
.L242:
	mov	%i3, %o1
	srl	%i2, 1, %o0
	call	.umul, 0
	 nop
	add	%i1, %o0, %i5
	mov	%i5, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	cmp	%o0, 0
	bge	.L239
	 nop
	srl	%i2, 1, %i2
	b,a	.L238
.L239:
	cmp	%o0, 0
	ble	.L243
	 nop
	add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L238:
	cmp	%i2, 0
	bne	.L242
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L243:
	mov	%i5, %i0
	restore
	jmp	%o7+8
	 nop
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b,a	.L245
.L248:
	sra	%i2, 1, %o0
	mov	%i3, %o1
	call	.umul, 0
	 nop
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	cmp	%o0, 0
	be	.L249
	 nop
	ble	.L247
	 nop
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
.L247:
	sra	%i2, 1, %i2
.L245:
	cmp	%i2, 0
	bne	.L248
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L249:
	mov	%l0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global div
	.type	div, #function
	.proc	010
div:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i1, %o1
	mov	%i0, %o0
	call	.div, 0
	 nop
	mov	%o0, %i4
	mov	%i1, %o1
	mov	%i0, %o0
	call	.rem, 0
	 nop
	st	%i4, [%i5]
	st	%o0, [%i5+4]
	mov	%i5, %i0
	restore
	jmp	%o7+12
	 nop
	.size	div, .-div
	.align 4
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	save	%sp, -96, %sp
	mov	0, %g2
	mov	0, %g3
	sra	%i0, 31, %g3
	mov	%g3, %g2
	mov	0, %i4
	mov	0, %i5
	xor	%g2, %i0, %i4
	xor	%g3, %i1, %i5
	mov	%i4, %i0
	mov	%i5, %i1
	subcc	%i1, %g3, %i5
	subx	%i0, %g2, %i4
	mov	%i4, %i0
	mov	%i5, %i1
	restore
	jmp	%o7+8
	 nop
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
	mov	%i1, %o1
	call	__divdi3, 0
	 nop
	mov	%o0, %l0
	mov	%o1, %l1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	__moddi3, 0
	 nop
	std	%l0, [%i5]
	std	%o0, [%i5+8]
	mov	%i5, %i0
	restore
	jmp	%o7+12
	 nop
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
	restore
	jmp	%o7+8
	 nop
	.size	labs, .-labs
	.align 4
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i1, %o1
	mov	%i0, %o0
	call	.div, 0
	 nop
	mov	%o0, %i4
	mov	%i1, %o1
	mov	%i0, %o0
	call	.rem, 0
	 nop
	st	%i4, [%i5]
	st	%o0, [%i5+4]
	mov	%i5, %i0
	restore
	jmp	%o7+12
	 nop
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	save	%sp, -96, %sp
	mov	0, %g2
	mov	0, %g3
	sra	%i0, 31, %g3
	mov	%g3, %g2
	mov	0, %i4
	mov	0, %i5
	xor	%g2, %i0, %i4
	xor	%g3, %i1, %i5
	mov	%i4, %i0
	mov	%i5, %i1
	subcc	%i1, %g3, %i5
	subx	%i0, %g2, %i4
	mov	%i4, %i0
	mov	%i5, %i1
	restore
	jmp	%o7+8
	 nop
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
	mov	%i1, %o1
	call	__divdi3, 0
	 nop
	mov	%o0, %l0
	mov	%o1, %l1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	__moddi3, 0
	 nop
	std	%l0, [%i5]
	std	%o0, [%i5+8]
	mov	%i5, %i0
	restore
	jmp	%o7+12
	 nop
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -96, %sp
	b,a	.L258
.L260:
	add	%i0, 4, %i0
.L258:
	ld	[%i0], %g1
	cmp	%g1, 0
	be	.L259
	 nop
	cmp	%i1, %g1
	bne	.L260
	 nop
.L259:
	ld	[%i0], %g1
	cmp	%g1, 0
	bne	.L261
	 nop
	mov	0, %i0
.L261:
	restore
	jmp	%o7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -96, %sp
	b,a	.L264
.L266:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L264:
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bne	.L265
	 nop
	mov	%g2, %g1
	cmp	%g1, 0
	be	.L265
	 nop
	ld	[%i1], %g1
	cmp	%g1, 0
	bne	.L266
	 nop
.L265:
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L269
	 nop
	mov	1, %i0
	bg	.L268
	 nop
	mov	0, %i0
.L268:
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
.L269:
	mov	-1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -96, %sp
	mov	0, %g1
.L271:
	ld	[%i1+%g1], %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	ld	[%g2+%g1], %g2
	cmp	%g2, 0
	bne	.L271
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b,a	.L273
.L274:
	add	%g1, 4, %g1
.L273:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne	.L274
	 nop
	sub	%g1, %i0, %i0
	sra	%i0, 2, %i0
	restore
	jmp	%o7+8
	 nop
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	save	%sp, -96, %sp
	b,a	.L276
.L278:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L276:
	cmp	%i2, 0
	be	.L277
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bne	.L277
	 nop
	mov	%g2, %g1
	cmp	%g1, 0
	be	.L277
	 nop
	ld	[%i1], %g1
	cmp	%g1, 0
	bne	.L278
	 nop
.L277:
	cmp	%i2, 0
	be	.L281
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L282
	 nop
	mov	1, %i0
	bg	.L280
	 nop
	mov	0, %i0
.L280:
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
.L281:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L282:
	mov	-1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -96, %sp
	b,a	.L284
.L286:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
.L284:
	cmp	%i2, 0
	be	.L285
	 nop
	ld	[%i0], %g1
	cmp	%i1, %g1
	bne	.L286
	 nop
.L285:
	cmp	%i2, 0
	bne	.L287
	 nop
	mov	0, %i0
.L287:
	restore
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -96, %sp
	b,a	.L290
.L292:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L290:
	cmp	%i2, 0
	be	.L291
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	be	.L292
	 nop
.L291:
	cmp	%i2, 0
	be	.L295
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L296
	 nop
	mov	1, %i0
	bg	.L294
	 nop
	mov	0, %i0
.L294:
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
.L295:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L296:
	mov	-1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L298
.L299:
	ld	[%i1+%g1], %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L298:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L299
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	be	.L301
	 nop
	sub	%i0, %i1, %g1
	sll	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L306
	 nop
	add	%i2, -1, %i2
	sll	%i2, 2, %i2
	b,a	.L303
.L304:
	ld	[%i1+%i2], %g1
	st	%g1, [%i0+%i2]
	add	%i2, -4, %i2
.L303:
	cmp	%i2, -4
	bne	.L304
	 nop
	restore
	jmp	%o7+8
	 nop
.L305:
	ld	[%i1+%g1], %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	b,a	.L302
.L306:
	mov	0, %g1
.L302:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L305
	 nop
.L301:
	restore
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b,a	.L308
.L309:
	add	%g1, 4, %g1
	st	%i1, [%g1-4]
.L308:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L309
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	bgeu	.L311
	 nop
	add	%i0, %i2, %i0
	add	%i1, %i2, %i1
	mov	%i2, %g2
	b,a	.L312
.L313:
	sub	%g0, %i2, %g1
	sub	%i0, %i2, %g3
	add	%g3, -1, %g3
	ldub	[%g3+%g2], %g3
	add	%i1, %g1, %g1
	add	%g1, -1, %g1
	stb	%g3, [%g1+%g2]
	add	%g2, -1, %g2
.L312:
	cmp	%g2, 0
	bne	.L313
	 nop
	restore
	jmp	%o7+8
	 nop
.L311:
	cmp	%i0, %i1
	bne	.L317
	 nop
	restore
	jmp	%o7+8
	 nop
.L316:
	ldub	[%i0+%g1], %g2
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
	b,a	.L315
.L317:
	mov	0, %g1
.L315:
	cmp	%g1, %i2
	bne	.L316
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L319
	 nop
	mov	0, %i4
	mov	0, %i5
	sll	%i1, %i2, %i4
	mov	0, %i5
	b,a	.L320
.L319:
	srl	%i1, 1, %g1
	xnor	%g0, %i2, %g2
	srl	%g1, %g2, %g1
	mov	0, %i4
	mov	0, %i5
	sll	%i0, %i2, %i4
	or	%g1, %i4, %i4
	sll	%i1, %i2, %i5
.L320:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be	.L321
	 nop
	mov	%g1, %i2
	mov	0, %g2
	mov	0, %g3
	srl	%i0, %i2, %g3
	mov	0, %g2
	b,a	.L322
.L321:
	sll	%i0, 1, %g1
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g2
	sll	%g1, %g2, %g1
	mov	0, %g2
	mov	0, %g3
	srl	%i1, %i2, %g3
	or	%g1, %g3, %g3
	srl	%i0, %i2, %g2
.L322:
	mov	0, %i0
	mov	0, %i1
	or	%g2, %i4, %i0
	or	%g3, %i5, %i1
	restore
	jmp	%o7+8
	 nop
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L324
	 nop
	mov	0, %i4
	mov	0, %i5
	srl	%i0, %i2, %i5
	mov	0, %i4
	b,a	.L325
.L324:
	sll	%i0, 1, %g1
	xnor	%g0, %i2, %g2
	sll	%g1, %g2, %g1
	mov	0, %i4
	mov	0, %i5
	srl	%i1, %i2, %i5
	or	%g1, %i5, %i5
	srl	%i0, %i2, %i4
.L325:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be	.L326
	 nop
	mov	%g1, %i2
	mov	0, %g2
	mov	0, %g3
	sll	%i1, %i2, %g2
	mov	0, %g3
	b,a	.L327
.L326:
	srl	%i1, 1, %g1
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g2
	srl	%g1, %g2, %g1
	mov	0, %g2
	mov	0, %g3
	sll	%i0, %i2, %g2
	or	%g1, %g2, %g2
	sll	%i1, %i2, %g3
.L327:
	mov	0, %i0
	mov	0, %i1
	or	%g2, %i4, %i0
	or	%g3, %i5, %i1
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	save	%sp, -96, %sp
	sll	%i0, %i1, %g2
	mov	16, %g1
	sub	%g1, %i1, %g1
	srl	%i0, %g1, %i0
	or	%i0, %g2, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	restore
	jmp	%o7+8
	 nop
	.size	rotl16, .-rotl16
	.align 4
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	save	%sp, -96, %sp
	srl	%i0, %i1, %g2
	mov	16, %g1
	sub	%g1, %i1, %g1
	sll	%i0, %g1, %i0
	or	%i0, %g2, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	restore
	jmp	%o7+8
	 nop
	.size	rotr16, .-rotr16
	.align 4
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	save	%sp, -96, %sp
	sll	%i0, %i1, %g2
	mov	8, %g1
	sub	%g1, %i1, %g1
	srl	%i0, %g1, %i0
	or	%i0, %g2, %i0
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	save	%sp, -96, %sp
	srl	%i0, %i1, %g2
	mov	8, %g1
	sub	%g1, %i1, %g1
	sll	%i0, %g1, %i0
	or	%i0, %g2, %i0
	and	%i0, 0xff, %i0
	restore
	jmp	%o7+8
	 nop
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
	and	%i0, 0xff, %i0
	sll	%i0, 8, %i0
	or	%g1, %i0, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	save	%sp, -96, %sp
	mov	%i0, %o2
	mov	%i1, %o3
	sethi	%hi(-16777216), %o7
	mov	0, %i4
	mov	0, %i5
	and	%o2, %o7, %i4
	mov	0, %i5
	mov	0, %g2
	mov	0, %g3
	srl	%i4, 24, %g3
	mov	0, %g2
	sethi	%hi(16711680), %g4
	mov	0, %i2
	mov	0, %i3
	and	%o2, %g4, %i2
	mov	0, %i3
	mov	0, %i4
	mov	0, %i5
	srl	%i2, 8, %i5
	mov	0, %i4
	mov	0, %o4
	mov	0, %o5
	or	%i5, %g3, %o5
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	mov	0, %i4
	mov	0, %i5
	and	%o2, %g1, %i4
	mov	0, %i5
	mov	0, %g2
	mov	0, %g3
	sll	%i4, 8, %g3
	srl	%i4, 24, %g2
	mov	0, %i2
	mov	0, %i3
	or	%o4, %g2, %i2
	or	%o5, %g3, %i3
	mov	0, %i4
	mov	0, %i5
	and	%o2, 255, %i4
	mov	0, %i5
	mov	0, %g2
	mov	0, %g3
	sll	%i4, 24, %g3
	srl	%i4, 8, %g2
	mov	0, %i4
	mov	0, %i5
	or	%i2, %g2, %i4
	or	%i3, %g3, %i5
	mov	0, %i2
	mov	0, %i3
	and	%o3, %o7, %i3
	srl	%i3, 24, %i0
	mov	0, %g2
	mov	0, %g3
	sll	%i2, 8, %g2
	or	%i0, %g2, %g2
	sll	%i3, 8, %g3
	mov	0, %i2
	mov	0, %i3
	or	%i4, %g2, %i2
	or	%i5, %g3, %i3
	mov	0, %i4
	mov	0, %i5
	and	%o3, %g4, %i5
	srl	%i5, 8, %g4
	mov	0, %g2
	mov	0, %g3
	sll	%i4, 24, %g2
	or	%g4, %g2, %g2
	sll	%i5, 24, %g3
	mov	0, %i4
	mov	0, %i5
	or	%i2, %g2, %i4
	or	%i3, %g3, %i5
	mov	0, %g2
	mov	0, %g3
	and	%o3, %g1, %g3
	mov	0, %i2
	mov	0, %i3
	sll	%g3, 8, %i2
	mov	0, %i3
	mov	0, %g2
	mov	0, %g3
	or	%i4, %i2, %g2
	mov	%i5, %g3
	mov	0, %i2
	mov	0, %i3
	and	%o3, 255, %i3
	mov	0, %i4
	mov	0, %i5
	sll	%i3, 24, %i4
	mov	0, %i5
	mov	0, %i0
	mov	0, %i1
	or	%g2, %i4, %i0
	mov	%g3, %i1
	restore
	jmp	%o7+8
	 nop
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L340
.L343:
	srl	%i0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L341
	 nop
	add	%g1, 1, %i0
	restore
	jmp	%o7+8
	 nop
.L341:
	add	%g1, 1, %g1
.L340:
	cmp	%g1, 32
	bne	.L343
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -96, %sp
	cmp	%i0, 0
	be	.L348
	 nop
	mov	1, %g1
	b,a	.L346
.L347:
	sra	%i0, 1, %i0
	add	%g1, 1, %g1
.L346:
	andcc	%i0, 1, %g0
	be	.L347
	 nop
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
.L348:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
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
	fbl	.L352
	 nop
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L355
	 nop
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L352:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L355:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
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
	fbl	.L359
	 nop
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L362
	 nop
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L359:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L362:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
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
	fbl	.L366
	 nop
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L369
	 nop
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L366:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
.L369:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
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
	fbu	.L372
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L372
	 nop
	cmp	%i1, 0
	bge	.L376
	 nop
	sethi	%hi(.LC16), %g1
	ld	[%g1+%lo(.LC16)], %f8
	b,a	.L375
.L376:
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L375:
	andcc	%i1, 1, %g0
	be	.L374
	 nop
	fmuls	%f0, %f8, %f0
.L374:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L372
	 nop
	fmuls	%f8, %f8, %f8
	b,a	.L375
.L372:
	restore
	jmp	%o7+8
	 nop
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
	fbu	.L378
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L378
	 nop
	cmp	%i2, 0
	bge	.L382
	 nop
	sethi	%hi(.LC20), %g1
	ldd	[%g1+%lo(.LC20)], %f8
	b,a	.L381
.L382:
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L381:
	andcc	%i2, 1, %g0
	be	.L380
	 nop
	fmuld	%f0, %f8, %f0
.L380:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L378
	 nop
	fmuld	%f8, %f8, %f8
	b,a	.L381
.L378:
	restore
	jmp	%o7+8
	 nop
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
	fbu	.L384
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L384
	 nop
	cmp	%i2, 0
	bge	.L388
	 nop
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	b,a	.L387
.L388:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
.L387:
	andcc	%i2, 1, %g0
	be	.L386
	 nop
	fmuld	%f0, %f8, %f0
.L386:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L384
	 nop
	fmuld	%f8, %f8, %f8
	b,a	.L387
.L384:
	restore
	jmp	%o7+8
	 nop
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L390
.L391:
	ldub	[%i1+%g1], %g3
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L390:
	cmp	%g1, %i2
	bne	.L391
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -96, %sp
	mov	%i0, %o0
	call	strlen, 0
	 nop
	add	%i0, %o0, %o0
	b,a	.L393
.L395:
	add	%i1, 1, %i1
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L393:
	cmp	%i2, 0
	be	.L394
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L395
	 nop
.L394:
	cmp	%i2, 0
	bne	.L396
	 nop
	stb	%g0, [%o0]
.L396:
	restore
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L398
.L400:
	add	%g1, 1, %g1
.L398:
	cmp	%g1, %i1
	be	.L399
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne	.L400
	 nop
.L399:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -96, %sp
	b,a	.L402
.L404:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	be	.L403
	 nop
	b,a	.L405
.L407:
	mov	%i1, %g1
.L405:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L404
	 nop
	add	%i0, 1, %i0
.L402:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	bne	.L407
	 nop
	mov	0, %i0
.L403:
	restore
	jmp	%o7+8
	 nop
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	save	%sp, -96, %sp
	mov	%i0, %g1
	mov	0, %i0
.L410:
	ldsb	[%g1], %g2
	cmp	%i1, %g2
	bne	.L409
	 nop
	mov	%g1, %i0
.L409:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne	.L410
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -96, %sp
	mov	%i1, %o0
	call	strlen, 0
	 nop
	mov	%o0, %i5
	cmp	%i5, 0
	be	.L413
	 nop
	ldsb	[%i1], %i4
	b,a	.L414
.L415:
	mov	%i5, %o2
	mov	%i1, %o1
	mov	%i0, %o0
	call	strncmp, 0
	 nop
	cmp	%o0, 0
	be	.L413
	 nop
	add	%i0, 1, %i0
.L414:
	mov	%i4, %o1
	mov	%i0, %o0
	call	strchr, 0
	 nop
	mov	%o0, %i0
	cmp	%i0, 0
	bne	.L415
	 nop
.L413:
	restore
	jmp	%o7+8
	 nop
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f0
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f8
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f10
	fcmped	%f0, %f10
	nop
	fbuge	.L419
	 nop
	fcmped	%f8, %f10
	nop
	fbg	.L421
	 nop
.L419:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f10
	fcmped	%f0, %f10
	nop
	fbule	.L422
	 nop
	fcmped	%f8, %f10
	nop
	fbuge	.L422
	 nop
.L421:
	fnegs	%f0, %f0
.L422:
	restore
	jmp	%o7+8
	 nop
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	sub	%i1, %i3, %i5
	add	%i0, %i5, %i5
	cmp	%i3, 0
	be	.L432
	 nop
	cmp	%i1, %i3
	blu	.L437
	 nop
	b,a	.L433
.L435:
	ldsb	[%i0], %g2
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne	.L434
	 nop
	add	%i0, 1, %o0
	add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 nop
	cmp	%o0, 0
	be	.L432
	 nop
.L434:
	add	%i0, 1, %i0
.L433:
	cmp	%i0, %i5
	bleu	.L435
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L437:
	mov	0, %i0
.L432:
	restore
	jmp	%o7+8
	 nop
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i1, %o1
	mov	%i0, %o0
	call	memcpy, 0
	 nop
	add	%o0, %i2, %i0
	restore
	jmp	%o7+8
	 nop
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
	fbuge	.L456
	 nop
	fnegs	%f0, %f0
	mov	1, %g2
	b,a	.L441
.L456:
	mov	0, %g2
.L441:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge	.L453
	 nop
	b,a	.L457
.L445:
	add	%g1, 1, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fmuld	%f0, %f8, %f0
	b,a	.L443
.L453:
	mov	0, %g1
.L443:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge	.L445
	 nop
	b,a	.L446
.L457:
	mov	1, %g3
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L447
	 nop
	mov	0, %g3
.L447:
	mov	1, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L448
	 nop
	mov	0, %g1
.L448:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L454
	 nop
	mov	0, %g1
	b,a	.L446
.L450:
	add	%g1, -1, %g1
	faddd	%f0, %f0, %f0
	b,a	.L449
.L454:
	mov	0, %g1
.L449:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L450
	 nop
.L446:
	st	%g1, [%i2]
	cmp	%g2, 0
	be	.L451
	 nop
	fnegs	%f0, %f0
.L451:
	restore
	jmp	%o7+8
	 nop
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
	mov	0, %i1
	b,a	.L459
.L462:
	mov	0, %o2
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L460
	 nop
	mov	%i0, %o0
	mov	%i1, %o1
	addcc	%o1, %i3, %i1
	addx	%o0, %i2, %i0
.L460:
	srl	%i3, 31, %g1
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
.L459:
	orcc	%g2, %g3, %g0
	bne	.L462
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -96, %sp
	mov	1, %g1
	b,a	.L464
.L466:
	sll	%i1, 1, %i1
	sll	%g1, 1, %g1
.L464:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L471
	 nop
	cmp	%i1, 0
	bge	.L466
	 nop
	mov	0, %g2
	b,a	.L468
.L469:
	cmp	%i0, %i1
	blu	.L467
	 nop
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
.L467:
	srl	%g1, 1, %g1
	srl	%i1, 1, %i1
	b,a	.L468
.L471:
	mov	0, %g2
.L468:
	cmp	%g1, 0
	bne	.L469
	 nop
	cmp	%i2, 0
	bne	.L470
	 nop
	mov	%g2, %i0
.L470:
	restore
	jmp	%o7+8
	 nop
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L474
	 nop
	xnor	%g0, %i0, %i0
.L474:
	cmp	%i0, 0
	be	.L476
	 nop
	sll	%i0, 8, %o0
	call	__clzsi2, 0
	 nop
	add	%o0, -1, %i0
	restore
	jmp	%o7+8
	 nop
.L476:
	mov	7, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L478
	 nop
	mov	0, %g2
	mov	0, %g3
	xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
.L478:
	orcc	%i0, %i1, %g0
	be	.L482
	 nop
	mov	%i0, %o0
	mov	%i1, %o1
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
	restore
	jmp	%o7+8
	 nop
.L482:
	mov	63, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -96, %sp
	mov	%i0, %g1
	mov	0, %i0
	b,a	.L484
.L486:
	andcc	%g1, 1, %g0
	be	.L485
	 nop
	add	%i0, %i1, %i0
.L485:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L484:
	cmp	%g1, 0
	bne	.L486
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -96, %sp
	srl	%i2, 3, %g3
	and	%i2, -8, %g1
	cmp	%i0, %i1
	blu	.L488
	 nop
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu	.L489
	 nop
.L488:
	sll	%g3, 3, %g3
	mov	0, %g2
	b,a	.L490
.L491:
	add	%i1, %g2, %g4
	ldd	[%g4], %i4
	add	%i0, %g2, %g4
	std	%i4, [%g4]
	add	%g2, 8, %g2
.L490:
	cmp	%g2, %g3
	bne	.L491
	 nop
	b,a	.L492
.L493:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L492:
	cmp	%i2, %g1
	bgu	.L493
	 nop
	restore
	jmp	%o7+8
	 nop
.L495:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L489:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L495
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -96, %sp
	srl	%i2, 1, %g2
	cmp	%i0, %i1
	blu	.L497
	 nop
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu	.L498
	 nop
.L497:
	sll	%g2, 1, %g2
	mov	0, %g1
	b,a	.L499
.L500:
	lduh	[%i1+%g1], %g3
	sth	%g3, [%i0+%g1]
	add	%g1, 2, %g1
.L499:
	cmp	%g1, %g2
	bne	.L500
	 nop
	andcc	%i2, 1, %g0
	be	.L496
	 nop
	add	%i2, -1, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	restore
	jmp	%o7+8
	 nop
.L502:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L498:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L502
	 nop
.L496:
	restore
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -96, %sp
	srl	%i2, 2, %g3
	and	%i2, -4, %g1
	cmp	%i0, %i1
	blu	.L504
	 nop
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu	.L505
	 nop
.L504:
	sll	%g3, 2, %g3
	mov	0, %g2
	b,a	.L506
.L507:
	ld	[%i1+%g2], %g4
	st	%g4, [%i0+%g2]
	add	%g2, 4, %g2
.L506:
	cmp	%g2, %g3
	bne	.L507
	 nop
	b,a	.L508
.L509:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L508:
	cmp	%i2, %g1
	bgu	.L509
	 nop
	restore
	jmp	%o7+8
	 nop
.L511:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L505:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L511
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	save	%sp, -96, %sp
	mov	%i1, %o1
	mov	%i0, %o0
	call	.rem, 0
	 nop
	mov	%o0, %i0
	restore
	jmp	%o7+8
	 nop
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
	fitod	%f8, %f0
	cmp	%i0, 0
	bge	.L514
	 nop
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L514:
	restore
	jmp	%o7+8
	 nop
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
	fitod	%f8, %f0
	cmp	%i0, 0
	bge	.L516
	 nop
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L516:
	fdtos	%f0, %f0
	restore
	jmp	%o7+8
	 nop
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	call	__floatundidf, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	call	__floatundisf, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__ulltof, .-__ulltof
	.align 4
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	save	%sp, -96, %sp
	mov	%i1, %o1
	mov	%i0, %o0
	call	.urem, 0
	 nop
	mov	%o0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L521
.L523:
	mov	15, %g2
	sub	%g2, %g1, %g2
	sra	%i0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L522
	 nop
	add	%g1, 1, %g1
.L521:
	cmp	%g1, 16
	bne	.L523
	 nop
.L522:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -96, %sp
	mov	0, %g1
	b,a	.L525
.L527:
	sra	%i0, %g1, %g2
	andcc	%g2, 1, %g0
	bne	.L526
	 nop
	add	%g1, 1, %g1
.L525:
	cmp	%g1, 16
	bne	.L527
	 nop
.L526:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
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
	fbul	.L533
	 nop
	fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	add	%g2, %g1, %i0
	restore
	jmp	%o7+8
	 nop
.L533:
	fstoi	%f8, %f8
	st	%f8, [%fp-4]
	ld	[%fp-4], %i0
	restore
	jmp	%o7+8
	 nop
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	save	%sp, -96, %sp
	mov	0, %g1
	mov	0, %g2
	b,a	.L535
.L537:
	sra	%i0, %g2, %g3
	andcc	%g3, 1, %g0
	be	.L536
	 nop
	add	%g1, 1, %g1
.L536:
	add	%g2, 1, %g2
.L535:
	cmp	%g2, 16
	bne	.L537
	 nop
	and	%g1, 1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -96, %sp
	mov	0, %g2
	mov	0, %g1
	b,a	.L539
.L541:
	sra	%i0, %g1, %g3
	andcc	%g3, 1, %g0
	be	.L540
	 nop
	add	%g2, 1, %g2
.L540:
	add	%g1, 1, %g1
.L539:
	cmp	%g1, 16
	bne	.L541
	 nop
	mov	%g2, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -96, %sp
	mov	%i0, %g1
	mov	0, %i0
	b,a	.L543
.L545:
	andcc	%g1, 1, %g0
	be	.L544
	 nop
	add	%i0, %i1, %i0
.L544:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L543:
	cmp	%g1, 0
	bne	.L545
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -96, %sp
	cmp	%i0, 0
	be	.L551
	 nop
	mov	0, %g1
	b,a	.L548
.L550:
	andcc	%i1, 1, %g0
	be	.L549
	 nop
	add	%g1, %i0, %g1
.L549:
	sll	%i0, 1, %i0
	srl	%i1, 1, %i1
.L548:
	cmp	%i1, 0
	bne	.L550
	 nop
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
.L551:
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -96, %sp
	mov	1, %g1
	b,a	.L553
.L555:
	sll	%i1, 1, %i1
	sll	%g1, 1, %g1
.L553:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L560
	 nop
	cmp	%i1, 0
	bge	.L555
	 nop
	mov	0, %g2
	b,a	.L557
.L558:
	cmp	%i0, %i1
	blu	.L556
	 nop
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
.L556:
	srl	%g1, 1, %g1
	srl	%i1, 1, %i1
	b,a	.L557
.L560:
	mov	0, %g2
.L557:
	cmp	%g1, 0
	bne	.L558
	 nop
	cmp	%i2, 0
	bne	.L559
	 nop
	mov	%g2, %i0
.L559:
	restore
	jmp	%o7+8
	 nop
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
	fbl	.L564
	 nop
	nop
	fbg	.L565
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L564:
	mov	-1, %i0
	restore
	jmp	%o7+8
	 nop
.L565:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
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
	fbl	.L568
	 nop
	nop
	fbg	.L569
	 nop
	mov	0, %i0
	restore
	jmp	%o7+8
	 nop
.L568:
	mov	-1, %i0
	restore
	jmp	%o7+8
	 nop
.L569:
	mov	1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -96, %sp
	mov	0, %o0
	mov	0, %o1
	mov	%i0, %o1
	sra	%i0, 31, %o0
	mov	0, %o2
	mov	0, %o3
	mov	%i1, %o3
	sra	%i1, 31, %o2
	call	__muldi3, 0
	 nop
	mov	%o0, %i0
	mov	%o1, %i1
	restore
	jmp	%o7+8
	 nop
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
	mov	0, %o0
	call	__muldi3, 0
	 nop
	mov	%o0, %i0
	mov	%o1, %i1
	restore
	jmp	%o7+8
	 nop
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	save	%sp, -96, %sp
	cmp	%i1, 0
	bge	.L579
	 nop
	sub	%g0, %i1, %i1
	mov	1, %i5
	b,a	.L573
.L579:
	mov	0, %i5
.L573:
	mov	0, %g1
	mov	0, %g2
	b,a	.L574
.L577:
	andcc	%i1, 1, %g0
	be	.L575
	 nop
	add	%g1, %i0, %g1
.L575:
	sll	%i0, 1, %i0
	sra	%i1, 1, %i1
	add	%g2, 1, %g2
.L574:
	cmp	%g0, %i1
	addx	%g0, 0, %g4
	mov	1, %g3
	and	%g2, 0xff, %i4
	cmp	%i4, 31
	bleu	.L576
	 nop
	mov	0, %g3
.L576:
	and	%g3, %g4, %g3
	andcc	%g3, 0xff, %g0
	bne	.L577
	 nop
	cmp	%i5, 0
	be	.L580
	 nop
	sub	%g0, %g1, %i0
	restore
	jmp	%o7+8
	 nop
.L580:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L585
	 nop
	sub	%g0, %i0, %i0
	mov	1, %i5
	b,a	.L582
.L585:
	mov	0, %i5
.L582:
	cmp	%i1, 0
	bge	.L583
	 nop
	sub	%g0, %i1, %i1
	cmp	%g0, %i5
	subx	%g0, -1, %i5
.L583:
	mov	0, %o2
	mov	%i1, %o1
	mov	%i0, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %i0
	cmp	%i5, 0
	be	.L584
	 nop
	sub	%g0, %i0, %i0
.L584:
	restore
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L590
	 nop
	sub	%g0, %i0, %i0
	mov	1, %i5
	b,a	.L587
.L590:
	mov	0, %i5
.L587:
	cmp	%i1, 0
	bge	.L588
	 nop
	sub	%g0, %i1, %i1
.L588:
	mov	1, %o2
	mov	%i1, %o1
	mov	%i0, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %i0
	cmp	%i5, 0
	be	.L589
	 nop
	sub	%g0, %i0, %i0
.L589:
	restore
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -96, %sp
	mov	1, %g1
	b,a	.L592
.L594:
	sll	%i1, 17, %i1
	srl	%i1, 16, %i1
	sll	%g1, 1, %g1
.L592:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L599
	 nop
	sll	%i1, 16, %g2
	cmp	%g2, 0
	bge	.L594
	 nop
	mov	0, %g2
	b,a	.L596
.L597:
	cmp	%i0, %i1
	blu	.L595
	 nop
	sub	%i0, %i1, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	or	%g2, %g1, %g2
.L595:
	sll	%g1, 16, %g1
	srl	%g1, 17, %g1
	srl	%i1, 1, %i1
	b,a	.L596
.L599:
	mov	0, %g2
.L596:
	sll	%g1, 16, %g3
	cmp	%g3, 0
	bne	.L597
	 nop
	cmp	%i2, 0
	bne	.L598
	 nop
	mov	%g2, %i0
.L598:
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	save	%sp, -96, %sp
	mov	1, %g1
	b,a	.L602
.L604:
	sll	%i1, 1, %i1
	sll	%g1, 1, %g1
.L602:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L609
	 nop
	cmp	%i1, 0
	bge	.L604
	 nop
	mov	0, %g2
	b,a	.L606
.L607:
	cmp	%i0, %i1
	blu	.L605
	 nop
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
.L605:
	srl	%g1, 1, %g1
	srl	%i1, 1, %i1
	b,a	.L606
.L609:
	mov	0, %g2
.L606:
	cmp	%g1, 0
	bne	.L607
	 nop
	cmp	%i2, 0
	bne	.L608
	 nop
	mov	%g2, %i0
.L608:
	restore
	jmp	%o7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -96, %sp
	mov	%i0, %i4
	mov	%i1, %i5
	andcc	%i2, 32, %g0
	be	.L612
	 nop
	mov	0, %g2
	mov	0, %g3
	sll	%i5, %i2, %i2
	mov	%i2, %g2
	b,a	.L613
.L612:
	cmp	%i2, 0
	be	.L614
	 nop
	mov	%i5, %g1
	mov	0, %g2
	mov	0, %g3
	sll	%g1, %i2, %g3
	sll	%i4, %i2, %i4
	sub	%g0, %i2, %i2
	srl	%g1, %i2, %g1
	or	%g1, %i4, %g1
	mov	%g1, %g2
.L613:
	mov	%g2, %i0
	mov	%g3, %i1
.L614:
	restore
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -96, %sp
	mov	%i0, %i4
	mov	%i1, %i5
	andcc	%i2, 32, %g0
	be	.L617
	 nop
	mov	0, %g2
	mov	0, %g3
	sra	%i4, 31, %g2
	sra	%i4, %i2, %i4
	mov	%i4, %g3
	b,a	.L618
.L617:
	cmp	%i2, 0
	be	.L619
	 nop
	mov	%i4, %g1
	mov	0, %g2
	mov	0, %g3
	sra	%g1, %i2, %g2
	sub	%g0, %i2, %g4
	sll	%g1, %g4, %g1
	srl	%i5, %i2, %i2
	or	%g1, %i2, %g3
.L618:
	mov	%g2, %i0
	mov	%g3, %i1
.L619:
	restore
	jmp	%o7+8
	 nop
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -96, %sp
	mov	0, %l0
	mov	0, %l1
	srl	%i0, 24, %l1
	mov	0, %l0
	mov	0, %g2
	mov	0, %g3
	srl	%i0, 8, %g3
	mov	0, %g2
	mov	0, %o4
	mov	0, %o5
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g3, %g1, %o5
	sll	%i0, 8, %o1
	mov	0, %g2
	mov	0, %g3
	srl	%i1, 24, %g3
	or	%o1, %g3, %g3
	mov	%l1, %g2
	mov	0, %i2
	mov	0, %i3
	sethi	%hi(16711680), %g4
	and	%g3, %g4, %i3
	sll	%i0, 24, %o7
	mov	0, %i4
	mov	0, %i5
	srl	%i1, 8, %i5
	or	%o7, %i5, %i5
	srl	%i0, 8, %i4
	mov	0, %o2
	mov	0, %o3
	sethi	%hi(-16777216), %g2
	and	%i5, %g2, %o3
	srl	%i1, 24, %g2
	mov	0, %l2
	mov	0, %l3
	mov	%o1, %l2
	mov	%g3, %l2
	sll	%i1, 8, %l3
	mov	0, %o0
	mov	0, %o1
	and	%l2, 255, %o0
	mov	0, %o1
	srl	%i1, 8, %i4
	mov	0, %g2
	mov	0, %g3
	mov	%o7, %g2
	mov	%i5, %g2
	sll	%i1, 24, %g3
	mov	0, %i0
	mov	0, %i1
	and	%g2, %g1, %i0
	mov	0, %i1
	mov	0, %l4
	mov	0, %l5
	mov	%l3, %l4
	mov	0, %l5
	mov	0, %l2
	mov	0, %l3
	and	%l4, %g4, %l2
	mov	0, %l3
	mov	0, %i4
	mov	0, %i5
	mov	%g3, %i4
	mov	0, %i5
	mov	0, %g2
	mov	0, %g3
	mov	%i4, %g2
	mov	%l1, %g3
	mov	0, %l0
	mov	0, %l1
	or	%g2, %o4, %l0
	or	%g3, %o5, %l1
	mov	0, %i4
	mov	0, %i5
	or	%l0, %i2, %i4
	or	%l1, %i3, %i5
	mov	0, %g2
	mov	0, %g3
	or	%i4, %o2, %g2
	or	%i5, %o3, %g3
	mov	0, %i4
	mov	0, %i5
	or	%g2, %o0, %i4
	mov	%g3, %i5
	mov	0, %g2
	mov	0, %g3
	or	%i4, %i0, %g2
	mov	%i5, %g3
	mov	0, %i0
	mov	0, %i1
	or	%g2, %l2, %i0
	mov	%g3, %i1
	restore
	jmp	%o7+8
	 nop
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
	restore
	jmp	%o7+8
	 nop
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
	bgu	.L628
	 nop
	mov	16, %i5
	b,a	.L624
.L628:
	mov	0, %i5
.L624:
	mov	16, %g1
	sub	%g1, %i5, %g1
	srl	%i0, %g1, %i0
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	andcc	%i0, %g1, %g0
	bne	.L629
	 nop
	mov	8, %g1
	b,a	.L625
.L629:
	mov	0, %g1
.L625:
	mov	8, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	add	%i5, %g1, %i5
	andcc	%i0, 240, %g0
	bne	.L630
	 nop
	mov	4, %g1
	b,a	.L626
.L630:
	mov	0, %g1
.L626:
	mov	4, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	add	%i5, %g1, %i5
	andcc	%i0, 12, %g0
	bne	.L631
	 nop
	mov	2, %g1
	b,a	.L627
.L631:
	mov	0, %g1
.L627:
	mov	2, %o1
	sub	%o1, %g1, %g2
	srl	%i0, %g2, %i0
	add	%i5, %g1, %i5
	and	%i0, 2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %o0
	sub	%o1, %i0, %o1
	call	.umul, 0
	 nop
	add	%i5, %o0, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	save	%sp, -96, %sp
	cmp	%i2, %i0
	bg	.L634
	 nop
	bl	.L635
	 nop
	cmp	%i3, %i1
	bgu	.L636
	 nop
	blu	.L637
	 nop
	mov	1, %g1
	b,a	.L633
.L634:
	mov	0, %g1
	b,a	.L633
.L635:
	mov	2, %g1
	b,a	.L633
.L636:
	mov	0, %g1
	b,a	.L633
.L637:
	mov	2, %g1
.L633:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
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
	mov	%i1, %o1
	call	__cmpdi2, 0
	 nop
	add	%o0, -1, %i0
	restore
	jmp	%o7+8
	 nop
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
	bne	.L644
	 nop
	mov	16, %g1
	b,a	.L640
.L644:
	mov	0, %g1
.L640:
	srl	%i0, %g1, %i0
	andcc	%i0, 0xff, %g0
	bne	.L645
	 nop
	mov	8, %g2
	b,a	.L641
.L645:
	mov	0, %g2
.L641:
	srl	%i0, %g2, %i0
	add	%g1, %g2, %g1
	andcc	%i0, 15, %g0
	bne	.L646
	 nop
	mov	4, %g2
	b,a	.L642
.L646:
	mov	0, %g2
.L642:
	srl	%i0, %g2, %i0
	add	%g1, %g2, %g1
	andcc	%i0, 3, %g0
	bne	.L647
	 nop
	mov	2, %g2
	b,a	.L643
.L647:
	mov	0, %g2
.L643:
	srl	%i0, %g2, %i0
	and	%i0, 3, %i0
	add	%g1, %g2, %g1
	xnor	%g0, %i0, %g3
	and	%g3, 1, %g3
	srl	%i0, 1, %i0
	mov	2, %g2
	sub	%g2, %i0, %g2
	sub	%g0, %g3, %g3
	and	%g2, %g3, %g2
	add	%g1, %g2, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -96, %sp
	mov	%i0, %i4
	mov	%i1, %i5
	andcc	%i2, 32, %g0
	be	.L649
	 nop
	mov	0, %g2
	mov	0, %g3
	srl	%i4, %i2, %g3
	b,a	.L650
.L649:
	cmp	%i2, 0
	be	.L651
	 nop
	mov	%i4, %g1
	mov	0, %g2
	mov	0, %g3
	srl	%g1, %i2, %g2
	sub	%g0, %i2, %g4
	sll	%g1, %g4, %g1
	srl	%i5, %i2, %i2
	or	%g1, %i2, %g3
.L650:
	mov	%g2, %i0
	mov	%g3, %i1
.L651:
	restore
	jmp	%o7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %l0
	or	%l0, 1023, %l0
	and	%i0, %l0, %l1
	and	%i1, %l0, %l2
	mov	%l2, %o1
	mov	%l1, %o0
	call	.umul, 0
	 nop
	mov	0, %i2
	mov	0, %i3
	mov	%o0, %i3
	srl	%o0, 16, %i5
	and	%o0, %l0, %i4
	mov	%i4, %i3
	srl	%i0, 16, %i0
	mov	%l2, %o1
	mov	%i0, %o0
	call	.umul, 0
	 nop
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %i4, %i3
	srl	%i5, 16, %i5
	mov	%i5, %i2
	mov	%i3, %i4
	srl	%i4, 16, %i5
	and	%i4, %l0, %i4
	mov	%i4, %i3
	srl	%i1, 16, %i1
	mov	%i1, %o1
	mov	%l1, %o0
	call	.umul, 0
	 nop
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %i4, %i3
	srl	%i5, 16, %i5
	add	%i5, %i2, %i5
	mov	%i5, %i2
	mov	%i1, %o1
	mov	%i0, %o0
	call	.umul, 0
	 nop
	add	%o0, %i5, %o0
	mov	%o0, %i2
	mov	%i2, %i0
	mov	%i3, %i1
	restore
	jmp	%o7+8
	 nop
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -96, %sp
	mov	%i3, %o1
	mov	%i1, %o0
	call	__muldsi3, 0
	 nop
	mov	%o0, %l0
	mov	%o1, %l1
	mov	%o0, %i4
	mov	%i3, %o1
	mov	%i0, %o0
	call	.umul, 0
	 nop
	mov	%o0, %i5
	mov	%i1, %o1
	mov	%i2, %o0
	call	.umul, 0
	 nop
	add	%i5, %o0, %i5
	add	%i5, %i4, %o0
	mov	%o0, %l0
	mov	%l0, %i0
	mov	%l1, %i1
	restore
	jmp	%o7+8
	 nop
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	save	%sp, -96, %sp
	subcc	%g0, %i1, %g3
	subx	%g0, %i0, %g2
	mov	%g2, %i0
	mov	%g3, %i1
	restore
	jmp	%o7+8
	 nop
	.size	__negdi2, .-__negdi2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -96, %sp
	xor	%i1, %i0, %i0
	srl	%i0, 16, %g1
	xor	%i0, %g1, %i0
	srl	%i0, 8, %g1
	xor	%i0, %g1, %i0
	srl	%i0, 4, %g1
	xor	%i0, %g1, %i0
	and	%i0, 15, %i0
	sethi	%hi(26624), %g1
	or	%g1, 406, %g1
	sra	%g1, %i0, %i0
	and	%i0, 1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	save	%sp, -96, %sp
	srl	%i0, 16, %g1
	xor	%i0, %g1, %g1
	srl	%g1, 8, %g2
	xor	%g1, %g2, %g1
	srl	%g1, 4, %g2
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %i0
	or	%i0, 406, %i0
	sra	%i0, %g1, %i0
	and	%i0, 1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	save	%sp, -96, %sp
	sll	%i0, 31, %g1
	mov	0, %g2
	mov	0, %g3
	srl	%i1, 1, %g3
	or	%g1, %g3, %g3
	srl	%i0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	mov	0, %i4
	mov	0, %i5
	and	%g2, %g1, %i4
	and	%g3, %g1, %i5
	subcc	%i1, %i5, %g3
	subx	%i0, %i4, %g2
	sll	%g2, 30, %g1
	mov	0, %i4
	mov	0, %i5
	srl	%g3, 2, %i5
	or	%g1, %i5, %i5
	srl	%g2, 2, %i4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	mov	0, %i2
	mov	0, %i3
	and	%i4, %g1, %i2
	and	%i5, %g1, %i3
	mov	0, %i4
	mov	0, %i5
	and	%g2, %g1, %i4
	and	%g3, %g1, %i5
	addcc	%i3, %i5, %g3
	addx	%i2, %i4, %g2
	sll	%g2, 28, %g1
	mov	0, %i4
	mov	0, %i5
	srl	%g3, 4, %i5
	or	%g1, %i5, %i5
	srl	%g2, 4, %i4
	addcc	%i5, %g3, %i3
	addx	%i4, %g2, %i2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%i2, %g1, %g2
	and	%i3, %g1, %g3
	mov	0, %i4
	mov	0, %i5
	mov	%g2, %i5
	mov	0, %i4
	add	%i5, %g3, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	and	%i0, 127, %i0
	restore
	jmp	%o7+8
	 nop
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
	sub	%i0, %g1, %g1
	srl	%g1, 2, %g3
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	and	%g3, %g2, %g3
	and	%g1, %g2, %g1
	add	%g3, %g1, %g1
	srl	%g1, 4, %g2
	add	%g2, %g1, %g1
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	and	%g1, %g2, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	and	%i0, 63, %i0
	restore
	jmp	%o7+8
	 nop
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
	srl	%i2, 31, %g1
	sethi	%hi(.LC42), %g2
	ldd	[%g2+%lo(.LC42)], %f0
.L663:
	andcc	%i2, 1, %g0
	be	.L661
	 nop
	fmuld	%f0, %f8, %f0
.L661:
	srl	%i2, 31, %g2
	add	%g2, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L662
	 nop
	fmuld	%f8, %f8, %f8
	b,a	.L663
.L662:
	cmp	%g1, 0
	be	.L664
	 nop
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
.L664:
	restore
	jmp	%o7+8
	 nop
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
	srl	%i1, 31, %g1
	sethi	%hi(.LC44), %g2
	ld	[%g2+%lo(.LC44)], %f0
.L669:
	andcc	%i1, 1, %g0
	be	.L667
	 nop
	fmuls	%f0, %f8, %f0
.L667:
	srl	%i1, 31, %g2
	add	%g2, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L668
	 nop
	fmuls	%f8, %f8, %f8
	b,a	.L669
.L668:
	cmp	%g1, 0
	be	.L670
	 nop
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
.L670:
	restore
	jmp	%o7+8
	 nop
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	save	%sp, -96, %sp
	cmp	%i2, %i0
	bgu	.L674
	 nop
	blu	.L675
	 nop
	cmp	%i3, %i1
	bgu	.L676
	 nop
	blu	.L677
	 nop
	mov	1, %g1
	b,a	.L673
.L674:
	mov	0, %g1
	b,a	.L673
.L675:
	mov	2, %g1
	b,a	.L673
.L676:
	mov	0, %g1
	b,a	.L673
.L677:
	mov	2, %g1
.L673:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
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
	mov	%i1, %o1
	call	__ucmpdi2, 0
	 nop
	add	%o0, -1, %i0
	restore
	jmp	%o7+8
	 nop
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
