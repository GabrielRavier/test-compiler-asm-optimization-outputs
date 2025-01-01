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
	bne	.L6
	 mov	0, %g1
	jmp	%i7+8
	 restore
.L7:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L6:
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
	and	%i2, 0xff, %i2
	b	.L10
	 mov	%i0, %g2
.L12:
	add	%i1, 1, %i1
	add	%g2, 1, %g2
.L10:
	cmp	%i3, 0
	be	.L15
	 mov	0, %i0
	ldub	[%i1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%i2, %g1
	bne,a	.L12
	 add	%i3, -1, %i3
	cmp	%i3, 0
	bne,a	.L15
	 add	%g2, 1, %i0
.L15:
	jmp	%i7+8
	 restore
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
	be	.L22
	 cmp	%g0, %i2
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L19
	 add	%i0, 1, %i0
	cmp	%g0, %i2
.L22:
	subx	%g0, 0, %g1
	and	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -96, %sp
	b	.L24
	 mov	%i0, %g1
.L26:
	add	%g1, 1, %g1
	add	%i1, 1, %i1
.L24:
	cmp	%i2, 0
	be	.L29
	 mov	0, %i0
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be,a	.L26
	 add	%i2, -1, %i2
	cmp	%i2, 0
	be	.L29
	 nop
	ldub	[%g1], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
.L29:
	jmp	%i7+8
	 restore
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	b	.L31
	 mov	0, %g1
.L32:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L31:
	cmp	%g1, %i2
	bne,a	.L32
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
	b	.L34
	 add	%i2, -1, %i2
.L36:
	cmp	%i1, %g1
	bne	.L37
	 add	%i2, -1, %g2
	jmp	%i7+8
	 restore %i0, %i2, %o0
.L37:
	mov	%g2, %i2
.L34:
	cmp	%i2, -1
	bne,a	.L36
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
	b	.L39
	 mov	%i0, %g1
.L40:
	add	%g1, 1, %g1
.L39:
	cmp	%g1, %i2
	bne,a	.L40
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
	b	.L44
	 ldub	[%i1], %g1
.L43:
	add	%i0, 1, %i0
	ldub	[%i1], %g1
.L44:
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L43
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
.L48:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be	.L49
	 nop
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L48
	 add	%i0, 1, %i0
.L49:
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
.L54:
	cmp	%i1, %g1
	be	.L55
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne,a	.L54
	 ldsb	[%i0], %g1
	mov	0, %i0
.L55:
	jmp	%i7+8
	 restore
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -96, %sp
	b	.L60
	 ldsb	[%i0], %g2
.L59:
	add	%i1, 1, %i1
	ldsb	[%i0], %g2
.L60:
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne	.L58
	 cmp	%g2, 0
	bne,a	.L59
	 add	%i0, 1, %i0
.L58:
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
.L63:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L63
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
	mov	%i0, %g4
	mov	0, %i0
	cmp	%i2, 0
	bne	.L66
	 mov	%g4, %g2
	b,a	.L71
.L68:
	add	%i1, 1, %i1
.L66:
	ldub	[%g2], %g1
	cmp	%g1, 0
	be	.L67
	 add	%i2, -1, %g1
	add	%g1, %g4, %g1
	sub	%g1, %g2, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	ldub	[%i1], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%g3, %g1, %g0
	be,a	.L70
	 ldub	[%g2], %i0
	ldub	[%g2], %g3
	ldub	[%i1], %g1
	cmp	%g3, %g1
	be,a	.L68
	 add	%g2, 1, %g2
.L67:
	ldub	[%g2], %i0
.L70:
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
.L71:
	jmp	%i7+8
	 restore
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -96, %sp
	b	.L73
	 mov	%i0, %g1
.L74:
	stb	%g2, [%i1]
	ldub	[%g1], %g2
	stb	%g2, [%i1+1]
	add	%i1, 2, %i1
	add	%g1, 2, %g1
.L73:
	add	%i0, %i2, %g2
	sub	%g2, %g1, %g2
	cmp	%g2, 1
	bg,a	.L74
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
	add	%i0, -97, %i0
	cmp	%i0, 26
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	save	%sp, -96, %sp
	cmp	%i0, 128
	addx	%g0, 0, %i0
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
	cmp	%i0, 32
	addx	%g0, 0, %g1
	xor	%i0, 127, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %i0
	or	%i0, %g1, %i0
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
	cmp	%i0, 10
	addx	%g0, 0, %i0
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
	cmp	%i0, 94
	addx	%g0, 0, %i0
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
	cmp	%i0, 26
	addx	%g0, 0, %i0
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
	cmp	%i0, 95
	addx	%g0, 0, %i0
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
	subx	%g0, -1, %g2
	add	%i0, -9, %i0
	cmp	%i0, 5
	addx	%g0, 0, %i0
	or	%g2, %i0, %i0
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
	cmp	%i0, 26
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	save	%sp, -96, %sp
	mov	%i0, %g1
	cmp	%i0, 32
	addx	%g0, 0, %g3
	add	%i0, -127, %g2
	cmp	%g2, 33
	addx	%g0, 0, %g2
	orcc	%g3, %g2, %g0
	bne	.L101
	 mov	1, %i0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L101
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %i0
.L101:
	jmp	%i7+8
	 restore
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	save	%sp, -96, %sp
	add	%i0, -48, %i0
	cmp	%i0, 10
	addx	%g0, 0, %i0
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
	 mov	%i0, %g1
	add	%i0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L106
	 mov	1, %i0
	mov	0, %i0
.L106:
	and	%i0, 0xff, %i0
.L113:
	jmp	%i7+8
	 restore
.L105:
	sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %i0
	subx	%g0, -1, %g4
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%i0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	subx	%g0, -1, %g2
	orcc	%g4, %g2, %g0
	bne	.L113
	 mov	1, %i0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L113
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L113
	 mov	0, %i0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -96, %sp
	mov	%i0, %g1
	add	%i0, -48, %g2
	cmp	%g2, 9
	bleu	.L118
	 mov	1, %i0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %i0
.L118:
	jmp	%i7+8
	 restore
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
	fbu	.L129
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L124
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L127
	 nop
	fsubd	%f0, %f8, %f0
.L129:
	jmp	%i7+8
	 restore
.L124:
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L127:
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
	fbu	.L139
	 ld	[%fp-4], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L139
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L137
	 nop
	fsubs	%f0, %f8, %f0
.L139:
	jmp	%i7+8
	 restore
.L137:
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
	ldd	[%fp-8], %f8
	std	%i2, [%fp-8]
	fcmpd	%f8, %f8
	nop
	fbu	.L144
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L145
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L142
	 fmovs	%f10, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L151
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L151:
	jmp	%i7+8
	 restore
.L142:
	fcmped	%f8, %f10
	nop
	fbl	.L151
	 fmovs	%f11, %f1
	b	.L149
	 fmovs	%f8, %f0
.L144:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L145:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L149:
	fmovs	%f9, %f1
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
	ld	[%fp-4], %f8
	st	%i1, [%fp-4]
	fcmps	%f8, %f8
	nop
	fbu	.L156
	 ld	[%fp-4], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L157
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	st	%f9, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L154
	 fcmpes	%f8, %f9
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L163
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
.L163:
	jmp	%i7+8
	 restore
.L154:
	nop
	fbl	.L163
	 fmovs	%f9, %f0
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L156:
	fmovs	%f9, %f0
	jmp	%i7+8
	 restore
.L157:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
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
	ldd	[%fp-8], %f8
	std	%i2, [%fp-8]
	fcmpd	%f8, %f8
	nop
	fbu	.L168
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L169
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L166
	 fmovs	%f10, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L175
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L175:
	jmp	%i7+8
	 restore
.L166:
	fcmped	%f8, %f10
	nop
	fbl	.L175
	 fmovs	%f11, %f1
	b	.L173
	 fmovs	%f8, %f0
.L168:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L169:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L173:
	fmovs	%f9, %f1
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
	fbu	.L180
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L181
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L178
	 fmovs	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L187
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L187:
	jmp	%i7+8
	 restore
.L178:
	fcmped	%f8, %f10
	nop
	fbl	.L187
	 fmovs	%f9, %f1
	b	.L185
	 fmovs	%f10, %f0
.L180:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L181:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L185:
	fmovs	%f11, %f1
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
	fbu	.L192
	 ld	[%fp-4], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L193
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	st	%f9, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L190
	 fcmpes	%f8, %f9
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L199
	 fmovs	%f9, %f0
	fmovs	%f8, %f0
.L199:
	jmp	%i7+8
	 restore
.L190:
	nop
	fbl	.L199
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
	jmp	%i7+8
	 restore
.L192:
	fmovs	%f9, %f0
	jmp	%i7+8
	 restore
.L193:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
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
	fbu	.L204
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L205
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L202
	 fmovs	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L211
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L211:
	jmp	%i7+8
	 restore
.L202:
	fcmped	%f8, %f10
	nop
	fbl	.L211
	 fmovs	%f9, %f1
	b	.L209
	 fmovs	%f10, %f0
.L204:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L205:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L209:
	fmovs	%f11, %f1
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
	b	.L213
	 or	%g2, %lo(s.0), %g2
.L214:
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ldub	[%g1+%g3], %g1
	stb	%g1, [%g2]
	add	%g2, 1, %g2
	srl	%i0, 6, %i0
.L213:
	cmp	%i0, 0
	bne	.L214
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
	bne,a	.L218
	 ld	[%i1], %g1
	st	%g0, [%i0+4]
	st	%g0, [%i0]
.L221:
	jmp	%i7+8
	 restore
.L218:
	st	%g1, [%i0]
	st	%i1, [%i0+4]
	st	%i0, [%i1]
	ld	[%i0], %g1
	cmp	%g1, 0
	bne,a	.L221
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
	be,a	.L225
	 ld	[%i0+4], %g1
	ld	[%i0+4], %g2
	st	%g2, [%g1+4]
	ld	[%i0+4], %g1
.L225:
	cmp	%g1, 0
	be	.L226
	 nop
	ld	[%i0], %g2
	st	%g2, [%g1]
.L226:
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
	b	.L228
	 mov	0, %i5
.L231:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L229
	 add	%l0, %i3, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L229:
	add	%i5, 1, %i5
.L228:
	cmp	%i5, %l1
	bne	.L231
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
	b	.L233
	 mov	0, %i5
.L236:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L234
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L234:
	add	%i5, 1, %i5
.L233:
	cmp	%i5, %l0
	bne	.L236
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
.L240:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L240
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L246
	 cmp	%g1, 45
	bne	.L242
	 mov	0, %g3
	b	.L241
	 mov	1, %g3
.L246:
	mov	0, %g3
.L241:
	add	%i0, 1, %i0
.L242:
	b	.L243
	 mov	0, %g1
.L244:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L243:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L244
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L249
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L249:
	jmp	%i7+8
	 restore
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L252:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L252
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L258
	 cmp	%g1, 45
	bne	.L254
	 mov	0, %g3
	b	.L253
	 mov	1, %g3
.L258:
	mov	0, %g3
.L253:
	add	%i0, 1, %i0
.L254:
	b	.L255
	 mov	0, %g1
.L256:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L255:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L256
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L261
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L261:
	jmp	%i7+8
	 restore
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L264:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L264
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L270
	 cmp	%g1, 45
	bne	.L266
	 mov	0, %g4
	b	.L265
	 mov	1, %g4
.L270:
	mov	0, %g4
.L265:
	add	%i0, 1, %i0
.L266:
	mov	0, %g2
	b	.L267
	 mov	0, %g3
.L268:
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
.L267:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,a	.L268
	 srl	%g3, 30, %g1
	mov	%g2, %i0
	cmp	%g4, 0
	bne	.L273
	 mov	%g3, %i1
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
.L273:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L281
	 cmp	%i2, 0
.L279:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge	.L276
	 nop
	b	.L275
	 srl	%i2, 1, %i2
.L276:
	ble	.L280
	 add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L275:
	cmp	%i2, 0
.L281:
	bne	.L279
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L280:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b	.L288
	 cmp	%i2, 0
.L286:
	call	.umul, 0
	 sra	%i2, 1, %o0
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L287
	 nop
	ble,a	.L289
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L289:
	cmp	%i2, 0
.L288:
	bne	.L286
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L287:
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
	b	.L303
	 ld	[%i0], %g1
.L300:
	ld	[%i0], %g1
.L303:
	cmp	%g1, 0
	be	.L299
	 cmp	%i1, %g1
	bne,a	.L300
	 add	%i0, 4, %i0
.L299:
	ld	[%i0], %g1
	cmp	%g0, %g1
	subx	%g0, 0, %g1
	and	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -96, %sp
	b	.L305
	 mov	%i0, %g1
.L307:
	add	%i1, 4, %i1
.L305:
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	bne	.L311
	 cmp	%g3, 0
	be	.L312
	 cmp	%g2, 0
	bne,a	.L307
	 add	%g1, 4, %g1
	ld	[%g1], %g3
.L311:
.L312:
	ld	[%i1], %g2
	cmp	%g3, %g2
	bl	.L313
	 mov	-1, %i0
	bg	.L309
	 mov	1, %i0
	mov	0, %i0
.L309:
	and	%i0, 0xff, %i0
.L313:
	jmp	%i7+8
	 restore
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -96, %sp
	mov	0, %g1
	ld	[%i1+%g1], %g2
.L316:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	ld	[%g2+%g1], %g2
	cmp	%g2, 0
	bne,a	.L316
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
.L319:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L319
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
	 mov	%i0, %g1
.L323:
	add	%g1, 4, %g1
	add	%i1, 4, %i1
.L321:
	cmp	%i2, 0
	be	.L328
	 mov	0, %i0
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	bne	.L322
	 cmp	%g3, 0
	be	.L322
	 cmp	%g2, 0
	bne,a	.L323
	 add	%i2, -1, %i2
.L322:
	cmp	%i2, 0
	be	.L328
	 mov	0, %i0
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	bl	.L328
	 mov	-1, %i0
	bg	.L325
	 mov	1, %i0
	mov	0, %i0
.L325:
	and	%i0, 0xff, %i0
.L328:
	jmp	%i7+8
	 restore
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -96, %sp
	b	.L335
	 cmp	%i2, 0
.L332:
	add	%i0, 4, %i0
	cmp	%i2, 0
.L335:
	be	.L336
	 cmp	%g0, %i2
	ld	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L332
	 add	%i2, -1, %i2
	cmp	%g0, %i2
.L336:
	subx	%g0, 0, %g1
	and	%i0, %g1, %i0
	jmp	%i7+8
	 restore
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -96, %sp
	b	.L338
	 mov	%i0, %g1
.L340:
	add	%g1, 4, %g1
	add	%i1, 4, %i1
.L338:
	cmp	%i2, 0
	be	.L345
	 mov	0, %i0
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	be,a	.L340
	 add	%i2, -1, %i2
	cmp	%i2, 0
	be	.L345
	 cmp	%g3, %g2
	bl	.L345
	 mov	-1, %i0
	bg	.L342
	 mov	1, %i0
	mov	0, %i0
.L342:
	and	%i0, 0xff, %i0
.L345:
	jmp	%i7+8
	 restore
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	b	.L347
	 mov	0, %g1
.L348:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L347:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L348
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
	be	.L357
	 sub	%i0, %i1, %g1
	sll	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L355
	 mov	0, %g1
	add	%i2, -1, %i2
	b	.L352
	 sll	%i2, 2, %i2
.L353:
	st	%g1, [%i0+%i2]
	add	%i2, -4, %i2
.L352:
	cmp	%i2, -4
	bne,a	.L353
	 ld	[%i1+%i2], %g1
.L357:
	jmp	%i7+8
	 restore
.L354:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L355:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L354
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
	b	.L359
	 mov	%i0, %g1
.L360:
	st	%i1, [%g1-4]
.L359:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L360
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
	bgeu	.L362
	 nop
	add	%i0, %i2, %i0
	add	%i1, %i2, %i1
	b	.L363
	 mov	%i2, %g1
.L364:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%i1, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L363:
	cmp	%g1, 0
	bne	.L364
	 sub	%i0, %i2, %g2
	jmp	%i7+8
	 restore
.L362:
	bne	.L366
	 mov	0, %g1
	jmp	%i7+8
	 restore
.L367:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L366:
	cmp	%g1, %i2
	bne,a	.L367
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
	be	.L370
	 srl	%i1, 1, %g1
	sll	%i1, %i2, %g2
	b	.L371
	 mov	0, %g3
.L370:
	xnor	%g0, %i2, %g2
	srl	%g1, %g2, %g1
	sll	%i0, %i2, %g2
	or	%g1, %g2, %g2
	sll	%i1, %i2, %g3
.L371:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be,a	.L372
	 sll	%i0, 1, %g1
	srl	%i0, %g1, %i5
	b	.L373
	 mov	0, %i4
.L372:
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	sll	%g1, %g4, %g1
	srl	%i1, %i2, %i5
	or	%g1, %i5, %i5
	srl	%i0, %i2, %i4
.L373:
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
	be	.L375
	 sll	%i0, 1, %g1
	srl	%i0, %i2, %g3
	b	.L376
	 mov	0, %g2
.L375:
	xnor	%g0, %i2, %g2
	sll	%g1, %g2, %g1
	srl	%i1, %i2, %g3
	or	%g1, %g3, %g3
	srl	%i0, %i2, %g2
.L376:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be,a	.L377
	 srl	%i1, 1, %g1
	sll	%i1, %g1, %i4
	b	.L378
	 mov	0, %i5
.L377:
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	srl	%g1, %g4, %g1
	sll	%i0, %i2, %i4
	or	%g1, %i4, %i4
	sll	%i1, %i2, %i5
.L378:
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
	b	.L391
	 mov	0, %g1
.L394:
	andcc	%g2, 1, %g0
	be,a	.L392
	 add	%g1, 1, %g1
	jmp	%i7+8
	 restore %g1, 1, %o0
.L392:
.L391:
	cmp	%g1, 32
	bne	.L394
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
	mov	%i0, %g1
	cmp	%g1, 0
	be	.L400
	 mov	0, %i0
	b	.L397
	 mov	1, %i0
.L398:
	add	%i0, 1, %i0
.L397:
	andcc	%g1, 1, %g0
	be	.L398
	 sra	%g1, 1, %g1
.L400:
	jmp	%i7+8
	 restore
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
	fbl	.L407
	 mov	1, %i0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L407
	 mov	0, %i0
.L407:
	jmp	%i7+8
	 restore
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
	fbl	.L414
	 mov	1, %i0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L414
	 mov	0, %i0
.L414:
	jmp	%i7+8
	 restore
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
	fbl	.L421
	 mov	1, %i0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L421
	 mov	0, %i0
.L421:
	jmp	%i7+8
	 restore
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
	fbu	.L429
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L429
	 sethi	%hi(.LC17), %g1
	cmp	%i1, 0
	bge	.L427
	 ld	[%g1+%lo(.LC17)], %f8
	sethi	%hi(.LC16), %g1
	ld	[%g1+%lo(.LC16)], %f8
.L427:
	andcc	%i1, 1, %g0
	bne,a	.L426
	 fmuls	%f0, %f8, %f0
.L426:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L429
	 nop
	b	.L427
	 fmuls	%f8, %f8, %f8
.L429:
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
	fbu	.L436
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L436
	 sethi	%hi(.LC21), %g1
	cmp	%i2, 0
	bge	.L434
	 ldd	[%g1+%lo(.LC21)], %f8
	sethi	%hi(.LC20), %g1
	ldd	[%g1+%lo(.LC20)], %f8
.L434:
	andcc	%i2, 1, %g0
	bne,a	.L433
	 fmuld	%f0, %f8, %f0
.L433:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L436
	 nop
	b	.L434
	 fmuld	%f8, %f8, %f8
.L436:
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
	fbu	.L443
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L443
	 sethi	%hi(.LC25), %g1
	cmp	%i2, 0
	bge	.L441
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L441:
	andcc	%i2, 1, %g0
	bne,a	.L440
	 fmuld	%f0, %f8, %f0
.L440:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L443
	 nop
	b	.L441
	 fmuld	%f8, %f8, %f8
.L443:
	jmp	%i7+8
	 restore
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -96, %sp
	b	.L445
	 mov	0, %g1
.L446:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L445:
	cmp	%g1, %i2
	bne,a	.L446
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
	b	.L448
	 add	%i0, %o0, %o0
.L450:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L448:
	cmp	%i2, 0
	be,a	.L452
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	.L450
	 add	%i1, 1, %i1
	cmp	%i2, 0
	be,a	.L452
	 stb	%g0, [%o0]
.L452:
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
.L456:
	cmp	%g1, %i1
	be	.L455
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L456
	 add	%g1, 1, %g1
.L455:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -96, %sp
	b	.L464
	 ldsb	[%i0], %g1
.L460:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	bne,a	.L465
	 ldsb	[%g1], %g2
	jmp	%i7+8
	 restore
.L463:
	ldsb	[%g1], %g2
.L465:
	cmp	%g2, 0
	bne	.L460
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L464:
	cmp	%g1, 0
	bne	.L463
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
.L470:
	cmp	%i1, %g2
	be,a	.L467
	 mov	%g1, %i0
.L467:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a	.L470
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
	mov	%o0, %i5
	cmp	%o0, 0
	be	.L472
	 mov	%i0, %g1
	b	.L473
	 ldsb	[%i1], %i4
.L474:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L476
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L473:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L474
	 mov	%o0, %i0
	mov	0, %g1
.L476:
.L472:
	jmp	%i7+8
	 restore %g0, %g1, %o0
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
	fbuge	.L478
	 nop
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f10
	fcmped	%f10, %f8
	nop
	fbg,a	.L490
	 fnegs	%f0, %f0
.L478:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L490
	 nop
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L490
	 fnegs	%f0, %f0
.L490:
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
	add	%i0, %i5, %i5
	cmp	%i3, 0
	be	.L492
	 mov	%i0, %g1
	cmp	%i1, %i3
	blu	.L497
	 cmp	%i0, %i5
	b,a	.L499
.L495:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a	.L500
	 add	%i0, 1, %i0
	add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be	.L498
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L500:
	cmp	%i0, %i5
.L499:
	bleu,a	.L495
	 ldsb	[%i0], %g2
	b	.L492
	 mov	0, %g1
.L497:
	mov	0, %g1
.L498:
.L492:
	jmp	%i7+8
	 restore %g0, %g1, %o0
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
	fbuge	.L518
	 nop
	fnegs	%f0, %f0
	b	.L503
	 mov	1, %g2
.L518:
	mov	0, %g2
.L503:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge	.L522
	 mov	0, %g1
	b	.L519
	 mov	1, %g3
.L507:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fmuld	%f0, %f8, %f0
	sethi	%hi(.LC31), %g3
.L522:
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge,a	.L507
	 add	%g1, 1, %g1
	b	.L520
	 st	%g1, [%i2]
.L519:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmpd	%f0, %f8
	nop
	fbe,a	.L509
	 mov	0, %g3
.L509:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L510
	 mov	1, %g1
	mov	0, %g1
.L510:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L516
	 mov	0, %g1
	b	.L520
	 st	%g1, [%i2]
.L512:
	faddd	%f0, %f0, %f0
.L516:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl,a	.L512
	 add	%g1, -1, %g1
	st	%g1, [%i2]
.L520:
	cmp	%g2, 0
	bne,a	.L521
	 fnegs	%f0, %f0
.L521:
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
	b	.L524
	 mov	0, %i1
.L527:
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L528
	 srl	%i3, 31, %g1
	addcc	%i1, %i3, %i1
	addx	%i0, %i2, %i0
.L528:
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
.L524:
	orcc	%g2, %g3, %g0
	bne	.L527
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
	b	.L530
	 mov	1, %g1
.L532:
	sll	%g1, 1, %g1
.L530:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L537
	 cmp	%i1, 0
	bge,a	.L532
	 sll	%i1, 1, %i1
	b	.L534
	 mov	0, %g2
.L535:
	blu,a	.L540
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L540:
	b	.L534
	 srl	%i1, 1, %i1
.L537:
	mov	0, %g2
.L534:
	cmp	%g1, 0
	bne	.L535
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L539
	 mov	%g2, %i0
.L539:
	jmp	%i7+8
	 restore
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xor	%i0, %g1, %o0
	cmp	%o0, 0
	be	.L545
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L545:
	jmp	%i7+8
	 restore
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	mov	%i0, %o0
	cmp	%i0, 0
	bge	.L547
	 mov	%i1, %o1
	xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %o0
	mov	%g3, %o1
.L547:
	orcc	%o0, %o1, %g0
	be	.L552
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L552:
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b	.L554
	 mov	0, %i0
.L556:
	bne,a	.L555
	 add	%i0, %i1, %i0
.L555:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L554:
	cmp	%g1, 0
	bne	.L556
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
	blu	.L558
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L567
	 add	%i2, -1, %i2
.L558:
	sll	%g3, 3, %g3
	b	.L560
	 mov	0, %g2
.L561:
	ldd	[%g4], %i4
	add	%i0, %g2, %g4
	std	%i4, [%g4]
	add	%g2, 8, %g2
.L560:
	cmp	%g2, %g3
	bne	.L561
	 add	%i1, %g2, %g4
	b	.L566
	 cmp	%i2, %g1
.L563:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L566:
	bgu,a	.L563
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L565:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L567:
	cmp	%i2, -1
	bne,a	.L565
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
	blu	.L569
	 srl	%i2, 1, %g3
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu,a	.L575
	 add	%i2, -1, %i2
.L569:
	sll	%g3, 1, %g3
	b	.L571
	 mov	0, %g1
.L572:
	sth	%g2, [%i0+%g1]
	add	%g1, 2, %g1
.L571:
	cmp	%g1, %g3
	bne,a	.L572
	 lduh	[%i1+%g1], %g2
	andcc	%i2, 1, %g0
	be	.L577
	 add	%i2, -1, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L577:
	jmp	%i7+8
	 restore
.L574:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L575:
	cmp	%i2, -1
	bne,a	.L574
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
	blu	.L579
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L588
	 add	%i2, -1, %i2
.L579:
	sll	%g4, 2, %g4
	b	.L581
	 mov	0, %g2
.L582:
	st	%g3, [%i0+%g2]
	add	%g2, 4, %g2
.L581:
	cmp	%g2, %g4
	bne,a	.L582
	 ld	[%i1+%g2], %g3
	b	.L587
	 cmp	%i2, %g1
.L584:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L587:
	bgu,a	.L584
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L586:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L588:
	cmp	%i2, -1
	bne,a	.L586
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
	bge	.L592
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L592:
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
	bge	.L594
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L594:
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
	b	.L599
	 mov	0, %g2
.L601:
	sub	%g1, %g2, %g1
	sra	%i0, %g1, %g1
	andcc	%g1, 1, %g0
	bne	.L600
	 nop
	add	%g2, 1, %g2
.L599:
	cmp	%g2, 16
	bne	.L601
	 mov	15, %g1
.L600:
	jmp	%i7+8
	 restore %g0, %g2, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -96, %sp
	b	.L603
	 mov	0, %g1
.L605:
	andcc	%g2, 1, %g0
	bne	.L604
	 nop
	add	%g1, 1, %g1
.L603:
	cmp	%g1, 16
	bne	.L605
	 sra	%i0, %g1, %g2
.L604:
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
	fbul	.L611
	 nop
	fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	jmp	%i7+8
	 restore %g2, %g1, %o0
.L611:
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
	b	.L613
	 mov	0, %g1
.L615:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L613:
	cmp	%g1, 16
	bne	.L615
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
	b	.L617
	 mov	0, %g1
.L619:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L617:
	cmp	%g1, 16
	bne	.L619
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
	b	.L621
	 mov	0, %i0
.L623:
	bne,a	.L622
	 add	%i0, %i1, %i0
.L622:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L621:
	cmp	%g1, 0
	bne	.L623
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
	mov	%i0, %g1
	cmp	%g1, 0
	be	.L631
	 mov	0, %i0
	b	.L630
	 cmp	%i1, 0
.L628:
	bne,a	.L627
	 add	%i0, %g1, %i0
.L627:
	sll	%g1, 1, %g1
	srl	%i1, 1, %i1
	cmp	%i1, 0
.L630:
	bne	.L628
	 andcc	%i1, 1, %g0
.L631:
	jmp	%i7+8
	 restore
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -96, %sp
	b	.L633
	 mov	1, %g1
.L635:
	sll	%g1, 1, %g1
.L633:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L640
	 cmp	%i1, 0
	bge,a	.L635
	 sll	%i1, 1, %i1
	b	.L637
	 mov	0, %g2
.L638:
	blu,a	.L643
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L643:
	b	.L637
	 srl	%i1, 1, %i1
.L640:
	mov	0, %g2
.L637:
	cmp	%g1, 0
	bne	.L638
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L642
	 mov	%g2, %i0
.L642:
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
	fbl	.L648
	 mov	-1, %i0
	nop
	fbg	.L648
	 mov	1, %i0
	mov	0, %i0
.L648:
	jmp	%i7+8
	 restore
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
	fbl	.L653
	 mov	-1, %i0
	nop
	fbg	.L653
	 mov	1, %i0
	mov	0, %i0
.L653:
	jmp	%i7+8
	 restore
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
	bge	.L657
	 mov	0, %i5
	sub	%g0, %i1, %i1
	mov	1, %i5
.L657:
	mov	0, %g4
	b	.L658
	 mov	0, %g1
.L661:
	bne,a	.L659
	 add	%g4, %i0, %g4
.L659:
	sll	%i0, 1, %i0
	sra	%i1, 1, %i1
	add	%g1, 1, %g1
.L658:
	cmp	%g0, %i1
	addx	%g0, 0, %g3
	and	%g1, 0xff, %g2
	cmp	%g2, 32
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L661
	 andcc	%i1, 1, %g0
	cmp	%i5, 0
	be	.L665
	 mov	%g4, %i0
	sub	%g0, %g4, %i0
.L665:
	jmp	%i7+8
	 restore
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L667
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L667:
	cmp	%i1, 0
	bge	.L671
	 mov	0, %o2
	sub	%g0, %i1, %i1
	xor	%i5, 1, %i5
.L671:
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L672
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L672:
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
	bge	.L674
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L674:
	sra	%i1, 31, %o1
	xor	%i1, %o1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L678
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L678:
	jmp	%i7+8
	 restore
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -96, %sp
	b	.L680
	 mov	1, %g1
.L682:
	srl	%i1, 16, %i1
	sll	%g1, 1, %g1
.L680:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L687
	 sll	%i1, 16, %g2
	cmp	%g2, 0
	bge,a	.L682
	 sll	%i1, 17, %i1
	b	.L684
	 mov	0, %g3
.L685:
	blu,a	.L689
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	or	%g3, %g1, %g3
	sll	%g1, 16, %g1
.L689:
	srl	%g1, 17, %g1
	b	.L684
	 srl	%i1, 1, %i1
.L687:
	mov	0, %g3
.L684:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L685
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L686
	 mov	%g3, %i0
.L686:
	sll	%i0, 16, %i0
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
	b	.L691
	 mov	1, %g1
.L693:
	sll	%g1, 1, %g1
.L691:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L698
	 cmp	%i1, 0
	bge,a	.L693
	 sll	%i1, 1, %i1
	b	.L695
	 mov	0, %g2
.L696:
	blu,a	.L701
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L701:
	b	.L695
	 srl	%i1, 1, %i1
.L698:
	mov	0, %g2
.L695:
	cmp	%g1, 0
	bne	.L696
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L700
	 mov	%g2, %i0
.L700:
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
	be,a	.L703
	 mov	%i0, %g2
	mov	0, %g3
	b	.L705
	 sll	%i1, %i2, %g2
.L703:
	cmp	%i2, 0
	be	.L705
	 mov	%i1, %g3
	sll	%i1, %i2, %g3
	sll	%i0, %i2, %g1
	sub	%g0, %i2, %i2
	srl	%i1, %i2, %i2
	or	%i2, %g1, %g2
.L705:
	mov	%g2, %i0
	jmp	%i7+8
	 restore %g0, %g3, %o1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be,a	.L708
	 mov	%i0, %g2
	sra	%i0, 31, %g2
	b	.L710
	 sra	%i0, %i2, %g3
.L708:
	cmp	%i2, 0
	be	.L710
	 mov	%i1, %g3
	sra	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sll	%i0, %g1, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L710:
	mov	%g2, %i0
	jmp	%i7+8
	 restore %g0, %g3, %o1
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
	cmp	%g1, %i0
	subx	%g0, -1, %i5
	sll	%i5, 4, %i5
	mov	16, %g1
	sub	%g1, %i5, %g1
	srl	%i0, %g1, %g1
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i5, %g2, %i5
	and	%g1, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g3
	sub	%g3, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i5, %g2, %i5
	and	%g1, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 1, %g2
	mov	2, %o1
	sub	%o1, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i5, %g2, %i5
	and	%g1, 2, %g2
	sub	%o1, %g1, %o1
	cmp	%g0, %g2
	call	.umul, 0
	 subx	%g0, -1, %o0
	jmp	%i7+8
	 restore %i5, %o0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	save	%sp, -96, %sp
	cmp	%i0, %i2
	bl	.L724
	 mov	0, %g1
	bg	.L724
	 mov	2, %g1
	cmp	%i1, %i3
	blu	.L724
	 mov	0, %g1
	cmp	%i3, %i1
	addx	%g0, 1, %g1
.L724:
	jmp	%i7+8
	 restore %g0, %g1, %o0
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
	and	%i0, %g1, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	sll	%g2, 4, %g2
	srl	%i0, %g2, %g1
	and	%g1, 255, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 3, %g3
	srl	%g1, %g3, %g1
	add	%g2, %g3, %g2
	and	%g1, 15, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 2, %g3
	srl	%g1, %g3, %g1
	add	%g2, %g3, %g2
	and	%g1, 3, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 1, %g3
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
	be,a	.L740
	 mov	%i0, %g2
	mov	0, %g2
	b	.L742
	 srl	%i0, %i2, %g3
.L740:
	cmp	%i2, 0
	be	.L742
	 mov	%i1, %g3
	srl	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sll	%i0, %g1, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L742:
	mov	%g2, %i0
	jmp	%i7+8
	 restore %g0, %g3, %o1
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
	ldd	[%g1+%lo(.LC42)], %f10
.L754:
	andcc	%i2, 1, %g0
	bne,a	.L752
	 fmuld	%f10, %f8, %f10
.L752:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L753
	 fmovs	%f10, %f0
	b	.L754
	 fmuld	%f8, %f8, %f8
.L753:
	cmp	%g2, 0
	be	.L757
	 fmovs	%f11, %f1
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
	fdivd	%f0, %f10, %f0
.L757:
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
	ld	[%g1+%lo(.LC44)], %f9
.L761:
	andcc	%i1, 1, %g0
	bne,a	.L759
	 fmuls	%f9, %f8, %f9
.L759:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L760
	 cmp	%g2, 0
	b	.L761
	 fmuls	%f8, %f8, %f8
.L760:
	be	.L764
	 fmovs	%f9, %f0
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
	fdivs	%f0, %f9, %f0
.L764:
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
	blu	.L766
	 mov	0, %g1
	bgu	.L766
	 mov	2, %g1
	cmp	%i1, %i3
	blu	.L766
	 mov	0, %g1
	cmp	%i3, %i1
	addx	%g0, 1, %g1
.L766:
	jmp	%i7+8
	 restore %g0, %g1, %o0
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
