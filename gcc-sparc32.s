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
	 add	%i0, -1, %g2
	b	.L3
	 add	%i1, -1, %i1
.L4:
	stb	%g1, [%g2+%i2]
	add	%i2, -1, %i2
.L3:
	cmp	%i2, 0
	bne,a	.L4
	 ldub	[%i1+%i2], %g1
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
	b	.L11
	 mov	%i0, %g2
.L13:
	add	%i1, 1, %i1
	add	%g2, 1, %g2
.L11:
	cmp	%i3, 0
	be	.L16
	 mov	0, %i0
	ldub	[%i1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%i2, %g1
	bne,a	.L13
	 add	%i3, -1, %i3
	cmp	%i3, 0
	bne,a	.L16
	 add	%g2, 1, %i0
.L16:
	jmp	%i7+8
	 restore
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -96, %sp
	b	.L18
	 and	%i1, 0xff, %i1
.L20:
	add	%i2, -1, %i2
.L18:
	cmp	%i2, 0
	be	.L23
	 cmp	%g0, %i2
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L20
	 add	%i0, 1, %i0
	cmp	%g0, %i2
.L23:
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
	b	.L25
	 mov	%i0, %g1
.L27:
	add	%g1, 1, %g1
	add	%i1, 1, %i1
.L25:
	cmp	%i2, 0
	be	.L30
	 mov	0, %i0
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be,a	.L27
	 add	%i2, -1, %i2
	cmp	%i2, 0
	be	.L30
	 nop
	ldub	[%g1], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
.L30:
	jmp	%i7+8
	 restore
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
.L56:
	cmp	%i1, %g1
	be	.L57
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne,a	.L56
	 ldsb	[%i0], %g1
	mov	0, %i0
.L57:
	jmp	%i7+8
	 restore
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -96, %sp
	b	.L62
	 ldsb	[%i0], %g2
.L61:
	add	%i1, 1, %i1
	ldsb	[%i0], %g2
.L62:
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne	.L60
	 cmp	%g2, 0
	bne,a	.L61
	 add	%i0, 1, %i0
.L60:
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
.L65:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L65
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
	mov	%i0, %g2
	cmp	%i2, 0
	be	.L73
	 mov	0, %i0
	mov	%g2, %g1
	add	%i2, -1, %i2
	b	.L68
	 add	%i2, %g2, %i0
.L70:
	add	%i1, 1, %i1
.L68:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be	.L69
	 sub	%i0, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%i1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,a	.L72
	 ldub	[%g1], %i0
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be,a	.L70
	 add	%g1, 1, %g1
.L69:
	ldub	[%g1], %i0
.L72:
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
.L73:
	jmp	%i7+8
	 restore
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b	.L75
	 add	%i0, %i2, %i2
.L76:
	stb	%g2, [%i1]
	ldub	[%g1], %g2
	stb	%g2, [%i1+1]
	add	%i1, 2, %i1
	add	%g1, 2, %g1
.L75:
	sub	%i2, %g1, %g2
	cmp	%g2, 1
	bg,a	.L76
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
	bne	.L103
	 mov	1, %i0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L103
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %i0
.L103:
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
	bgu	.L107
	 mov	%i0, %g1
	add	%i0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L108
	 mov	1, %i0
	mov	0, %i0
.L108:
	and	%i0, 0xff, %i0
.L115:
	jmp	%i7+8
	 restore
.L107:
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
	bne	.L115
	 mov	1, %i0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L115
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L115
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
	bleu	.L120
	 mov	1, %i0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %i0
.L120:
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
	fbu	.L131
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L126
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L129
	 nop
	fsubd	%f0, %f8, %f0
.L131:
	jmp	%i7+8
	 restore
.L126:
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L129:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f0
	jmp	%i7+8
	 restore
	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
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
	fbu	.L141
	 ld	[%fp-4], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L141
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L139
	 nop
	fsubs	%f0, %f8, %f0
.L141:
	jmp	%i7+8
	 restore
.L139:
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
	fbu	.L146
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L147
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L144
	 fmovs	%f10, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L153
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L153:
	jmp	%i7+8
	 restore
.L144:
	fcmped	%f8, %f10
	nop
	fbl	.L153
	 fmovs	%f11, %f1
	b	.L151
	 fmovs	%f8, %f0
.L146:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L147:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L151:
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
	fbu	.L158
	 ld	[%fp-4], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L159
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	st	%f9, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L156
	 fcmpes	%f8, %f9
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L165
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
.L165:
	jmp	%i7+8
	 restore
.L156:
	nop
	fbl	.L165
	 fmovs	%f9, %f0
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L158:
	fmovs	%f9, %f0
	jmp	%i7+8
	 restore
.L159:
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
	fbu	.L170
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L171
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L168
	 fmovs	%f10, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L177
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L177:
	jmp	%i7+8
	 restore
.L168:
	fcmped	%f8, %f10
	nop
	fbl	.L177
	 fmovs	%f11, %f1
	b	.L175
	 fmovs	%f8, %f0
.L170:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L171:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L175:
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
	fbu	.L182
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L183
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L180
	 fmovs	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L189
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L189:
	jmp	%i7+8
	 restore
.L180:
	fcmped	%f8, %f10
	nop
	fbl	.L189
	 fmovs	%f9, %f1
	b	.L187
	 fmovs	%f10, %f0
.L182:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L183:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L187:
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
	fbu	.L194
	 ld	[%fp-4], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L195
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	st	%f9, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L192
	 fcmpes	%f8, %f9
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L201
	 fmovs	%f9, %f0
	fmovs	%f8, %f0
.L201:
	jmp	%i7+8
	 restore
.L192:
	nop
	fbl	.L201
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
	jmp	%i7+8
	 restore
.L194:
	fmovs	%f9, %f0
	jmp	%i7+8
	 restore
.L195:
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
	fbu	.L206
	 ldd	[%fp-8], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L207
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	st	%f10, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L204
	 fmovs	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L213
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L213:
	jmp	%i7+8
	 restore
.L204:
	fcmped	%f8, %f10
	nop
	fbl	.L213
	 fmovs	%f9, %f1
	b	.L211
	 fmovs	%f10, %f0
.L206:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%i7+8
	 restore
.L207:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L211:
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
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	sethi	%hi(digits), %g3
	b	.L215
	 or	%g3, %lo(digits), %g3
.L216:
	ldub	[%g3+%g2], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%i0, 6, %i0
.L215:
	cmp	%i0, 0
	bne	.L216
	 and	%i0, 63, %g2
	stb	%g0, [%g1]
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
	bne,a	.L220
	 ld	[%i1], %g1
	st	%g0, [%i0+4]
	st	%g0, [%i0]
.L223:
	jmp	%i7+8
	 restore
.L220:
	st	%g1, [%i0]
	st	%i1, [%i0+4]
	st	%i0, [%i1]
	ld	[%i0], %g1
	cmp	%g1, 0
	bne,a	.L223
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
	be,a	.L227
	 ld	[%i0+4], %g1
	ld	[%i0+4], %g2
	st	%g2, [%g1+4]
	ld	[%i0+4], %g1
.L227:
	cmp	%g1, 0
	be	.L228
	 nop
	ld	[%i0], %g2
	st	%g2, [%g1]
.L228:
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
	b	.L230
	 mov	0, %i5
.L233:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L231
	 add	%l0, %i3, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L231:
	add	%i5, 1, %i5
.L230:
	cmp	%i5, %l1
	bne	.L233
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
	b	.L235
	 mov	0, %i5
.L238:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L236
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L236:
	add	%i5, 1, %i5
.L235:
	cmp	%i5, %l0
	bne	.L238
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
.L242:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L242
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L248
	 cmp	%g1, 45
	bne	.L244
	 mov	0, %g3
	b	.L243
	 mov	1, %g3
.L248:
	mov	0, %g3
.L243:
	add	%i0, 1, %i0
.L244:
	b	.L245
	 mov	0, %g1
.L246:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L245:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L246
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L251
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L251:
	jmp	%i7+8
	 restore
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L254:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L254
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L260
	 cmp	%g1, 45
	bne	.L256
	 mov	0, %g3
	b	.L255
	 mov	1, %g3
.L260:
	mov	0, %g3
.L255:
	add	%i0, 1, %i0
.L256:
	b	.L257
	 mov	0, %g1
.L258:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L257:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L258
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L263
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L263:
	jmp	%i7+8
	 restore
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L266:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L266
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L272
	 cmp	%g1, 45
	bne	.L268
	 mov	0, %g4
	b	.L267
	 mov	1, %g4
.L272:
	mov	0, %g4
.L267:
	add	%i0, 1, %i0
.L268:
	mov	0, %g2
	b	.L269
	 mov	0, %g3
.L270:
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
.L269:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,a	.L270
	 srl	%g3, 30, %g1
	mov	%g2, %i0
	cmp	%g4, 0
	bne	.L275
	 mov	%g3, %i1
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
.L275:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L283
	 cmp	%i2, 0
.L281:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge	.L278
	 nop
	b	.L277
	 srl	%i2, 1, %i2
.L278:
	ble	.L282
	 add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L277:
	cmp	%i2, 0
.L283:
	bne	.L281
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L282:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b	.L290
	 cmp	%i2, 0
.L288:
	call	.umul, 0
	 sra	%i2, 1, %o0
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L289
	 nop
	ble,a	.L291
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L291:
	cmp	%i2, 0
.L290:
	bne	.L288
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L289:
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
	b	.L305
	 ld	[%i0], %g1
.L302:
	ld	[%i0], %g1
.L305:
	cmp	%g1, 0
	be	.L301
	 cmp	%i1, %g1
	bne,a	.L302
	 add	%i0, 4, %i0
.L301:
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
	b	.L307
	 mov	%i0, %g1
.L309:
	add	%i1, 4, %i1
.L307:
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	bne	.L313
	 cmp	%g3, 0
	be	.L314
	 cmp	%g2, 0
	bne,a	.L309
	 add	%g1, 4, %g1
	ld	[%g1], %g3
.L313:
.L314:
	ld	[%i1], %g2
	cmp	%g3, %g2
	bl	.L315
	 mov	-1, %i0
	bg	.L311
	 mov	1, %i0
	mov	0, %i0
.L311:
	and	%i0, 0xff, %i0
.L315:
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
	add	%i0, -4, %g3
	ld	[%i1+%g1], %g2
.L319:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	ld	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a	.L319
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
.L322:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L322
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
	b	.L324
	 mov	%i0, %g1
.L326:
	add	%g1, 4, %g1
	add	%i1, 4, %i1
.L324:
	cmp	%i2, 0
	be	.L331
	 mov	0, %i0
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	bne	.L325
	 cmp	%g3, 0
	be	.L325
	 cmp	%g2, 0
	bne,a	.L326
	 add	%i2, -1, %i2
.L325:
	cmp	%i2, 0
	be	.L331
	 mov	0, %i0
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	bl	.L331
	 mov	-1, %i0
	bg	.L328
	 mov	1, %i0
	mov	0, %i0
.L328:
	and	%i0, 0xff, %i0
.L331:
	jmp	%i7+8
	 restore
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -96, %sp
	b	.L338
	 cmp	%i2, 0
.L335:
	add	%i0, 4, %i0
	cmp	%i2, 0
.L338:
	be	.L339
	 cmp	%g0, %i2
	ld	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L335
	 add	%i2, -1, %i2
	cmp	%g0, %i2
.L339:
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
	b	.L341
	 mov	%i0, %g1
.L343:
	add	%g1, 4, %g1
	add	%i1, 4, %i1
.L341:
	cmp	%i2, 0
	be	.L348
	 mov	0, %i0
	ld	[%g1], %g3
	ld	[%i1], %g2
	cmp	%g3, %g2
	be,a	.L343
	 add	%i2, -1, %i2
	cmp	%i2, 0
	be	.L348
	 cmp	%g3, %g2
	bl	.L348
	 mov	-1, %i0
	bg	.L345
	 mov	1, %i0
	mov	0, %i0
.L345:
	and	%i0, 0xff, %i0
.L348:
	jmp	%i7+8
	 restore
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	b	.L350
	 mov	0, %g1
.L351:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L350:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L351
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
	be	.L360
	 sub	%i0, %i1, %g1
	sll	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L358
	 mov	0, %g1
	add	%i2, -1, %i2
	b	.L355
	 sll	%i2, 2, %i2
.L356:
	st	%g1, [%i0+%i2]
	add	%i2, -4, %i2
.L355:
	cmp	%i2, -4
	bne,a	.L356
	 ld	[%i1+%i2], %g1
.L360:
	jmp	%i7+8
	 restore
.L357:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L358:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L357
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
	b	.L362
	 mov	%i0, %g1
.L363:
	st	%i1, [%g1-4]
.L362:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L363
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
	bgeu	.L365
	 nop
	add	%i0, -1, %i0
	b	.L366
	 add	%i1, -1, %i1
.L367:
	stb	%g1, [%i1+%i2]
	add	%i2, -1, %i2
.L366:
	cmp	%i2, 0
	bne,a	.L367
	 ldub	[%i0+%i2], %g1
	jmp	%i7+8
	 restore
.L365:
	bne	.L369
	 mov	0, %g1
	jmp	%i7+8
	 restore
.L370:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L369:
	cmp	%g1, %i2
	bne,a	.L370
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
	be	.L374
	 srl	%i1, 1, %g1
	sll	%i1, %i2, %g2
	b	.L375
	 mov	0, %g3
.L374:
	xnor	%g0, %i2, %g2
	srl	%g1, %g2, %g1
	sll	%i0, %i2, %g2
	or	%g1, %g2, %g2
	sll	%i1, %i2, %g3
.L375:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be,a	.L376
	 sll	%i0, 1, %g1
	srl	%i0, %g1, %i5
	b	.L377
	 mov	0, %i4
.L376:
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	sll	%g1, %g4, %g1
	srl	%i1, %i2, %i5
	or	%g1, %i5, %i5
	srl	%i0, %i2, %i4
.L377:
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
	be	.L379
	 sll	%i0, 1, %g1
	srl	%i0, %i2, %g3
	b	.L380
	 mov	0, %g2
.L379:
	xnor	%g0, %i2, %g2
	sll	%g1, %g2, %g1
	srl	%i1, %i2, %g3
	or	%g1, %g3, %g3
	srl	%i0, %i2, %g2
.L380:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be,a	.L381
	 srl	%i1, 1, %g1
	sll	%i1, %g1, %i4
	b	.L382
	 mov	0, %i5
.L381:
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	srl	%g1, %g4, %g1
	sll	%i0, %i2, %i4
	or	%g1, %i4, %i4
	sll	%i1, %i2, %i5
.L382:
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
	b	.L395
	 mov	0, %g1
.L398:
	andcc	%g2, 1, %g0
	be,a	.L396
	 add	%g1, 1, %g1
	jmp	%i7+8
	 restore %g1, 1, %o0
.L396:
.L395:
	cmp	%g1, 32
	bne	.L398
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
	be	.L404
	 mov	0, %i0
	b	.L401
	 mov	1, %i0
.L402:
	add	%i0, 1, %i0
.L401:
	andcc	%g1, 1, %g0
	be	.L402
	 sra	%g1, 1, %g1
.L404:
	jmp	%i7+8
	 restore
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4
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
	fbl	.L411
	 mov	1, %i0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L411
	 mov	0, %i0
.L411:
	jmp	%i7+8
	 restore
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8,"aM",@progbits,8
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
	fbl	.L418
	 mov	1, %i0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L418
	 mov	0, %i0
.L418:
	jmp	%i7+8
	 restore
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst8
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
	fbl	.L425
	 mov	1, %i0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L425
	 mov	0, %i0
.L425:
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
	.section	.rodata.cst4
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
	fbu	.L433
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L433
	 sethi	%hi(.LC17), %g1
	cmp	%i1, 0
	bge	.L431
	 ld	[%g1+%lo(.LC17)], %f8
	sethi	%hi(.LC16), %g1
	ld	[%g1+%lo(.LC16)], %f8
.L431:
	andcc	%i1, 1, %g0
	bne,a	.L430
	 fmuls	%f0, %f8, %f0
.L430:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L433
	 nop
	b	.L431
	 fmuls	%f8, %f8, %f8
.L433:
	jmp	%i7+8
	 restore
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
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
	fbu	.L440
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L440
	 sethi	%hi(.LC21), %g1
	cmp	%i2, 0
	bge	.L438
	 ldd	[%g1+%lo(.LC21)], %f8
	sethi	%hi(.LC20), %g1
	ldd	[%g1+%lo(.LC20)], %f8
.L438:
	andcc	%i2, 1, %g0
	bne,a	.L437
	 fmuld	%f0, %f8, %f0
.L437:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L440
	 nop
	b	.L438
	 fmuld	%f8, %f8, %f8
.L440:
	jmp	%i7+8
	 restore
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
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
	fbu	.L447
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L447
	 sethi	%hi(.LC25), %g1
	cmp	%i2, 0
	bge	.L445
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L445:
	andcc	%i2, 1, %g0
	bne,a	.L444
	 fmuld	%f0, %f8, %f0
.L444:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L447
	 nop
	b	.L445
	 fmuld	%f8, %f8, %f8
.L447:
	jmp	%i7+8
	 restore
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -96, %sp
	b	.L449
	 mov	0, %g1
.L450:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L449:
	cmp	%g1, %i2
	bne,a	.L450
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
	b	.L452
	 add	%i0, %o0, %o0
.L454:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L452:
	cmp	%i2, 0
	be,a	.L456
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	.L454
	 add	%i1, 1, %i1
	cmp	%i2, 0
	be,a	.L456
	 stb	%g0, [%o0]
.L456:
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
.L460:
	cmp	%g1, %i1
	be	.L459
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L460
	 add	%g1, 1, %g1
.L459:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -96, %sp
	b	.L468
	 ldsb	[%i0], %g1
.L464:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	bne,a	.L469
	 ldsb	[%g1], %g2
	jmp	%i7+8
	 restore
.L467:
	ldsb	[%g1], %g2
.L469:
	cmp	%g2, 0
	bne	.L464
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L468:
	cmp	%g1, 0
	bne	.L467
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
.L475:
	cmp	%i1, %g2
	be,a	.L471
	 mov	%g1, %i0
.L471:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a	.L475
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
	be	.L477
	 mov	%i0, %g1
	b	.L478
	 ldsb	[%i1], %i4
.L479:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L481
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L478:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L479
	 mov	%o0, %i0
	mov	0, %g1
.L481:
.L477:
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
	fbuge	.L483
	 nop
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f10
	fcmped	%f10, %f8
	nop
	fbg,a	.L495
	 fnegs	%f0, %f0
.L483:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L495
	 nop
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L495
	 fnegs	%f0, %f0
.L495:
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
	be	.L497
	 mov	%i0, %g1
	cmp	%i1, %i3
	blu	.L502
	 add	%i2, 1, %i4
	b	.L498
	 add	%i3, -1, %i3
.L500:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a	.L498
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i4, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be	.L503
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L498:
	cmp	%i0, %i5
	bleu,a	.L500
	 ldsb	[%i0], %g2
	b	.L497
	 mov	0, %g1
.L502:
	mov	0, %g1
.L503:
.L497:
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
	.section	.rodata.cst8
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
	fbuge	.L522
	 nop
	fnegs	%f0, %f0
	b	.L506
	 mov	1, %g2
.L522:
	mov	0, %g2
.L506:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L523
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	b	.L526
	 ldd	[%g3+%lo(.LC32)], %f10
.L510:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
.L526:
	nop
	fbge,a	.L510
	 add	%g1, 1, %g1
	b	.L524
	 st	%g1, [%i2]
.L523:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L512
	 mov	1, %g3
	mov	0, %g3
.L512:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L513
	 mov	1, %g1
	mov	0, %g1
.L513:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L519
	 mov	0, %g1
	b	.L524
	 st	%g1, [%i2]
.L515:
	b	.L514
	 faddd	%f0, %f0, %f0
.L519:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L514:
	fcmped	%f0, %f8
	nop
	fbl,a	.L515
	 add	%g1, -1, %g1
	st	%g1, [%i2]
.L524:
	cmp	%g2, 0
	bne,a	.L525
	 fnegs	%f0, %f0
.L525:
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
	b	.L528
	 mov	0, %i1
.L531:
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L532
	 srl	%i3, 31, %g1
	addcc	%i1, %i3, %i1
	addx	%i0, %i2, %i0
.L532:
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
.L528:
	orcc	%g2, %g3, %g0
	bne	.L531
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
	b	.L534
	 mov	1, %g1
.L537:
	sll	%g1, 1, %g1
.L534:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L535
	 cmp	%i1, 0
	b	.L536
	 mov	0, %g2
.L535:
	bge,a	.L537
	 sll	%i1, 1, %i1
	b	.L536
	 mov	0, %g2
.L540:
	blu,a	.L544
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L544:
	srl	%i1, 1, %i1
.L536:
	cmp	%g1, 0
	bne	.L540
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L543
	 mov	%g2, %i0
.L543:
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
	be	.L549
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L549:
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
	bge	.L551
	 mov	%i1, %o1
	xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %o0
	mov	%g3, %o1
.L551:
	orcc	%o0, %o1, %g0
	be	.L556
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L556:
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
	b	.L558
	 mov	0, %i0
.L560:
	bne,a	.L559
	 add	%i0, %i1, %i0
.L559:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L558:
	cmp	%g1, 0
	bne	.L560
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
	blu	.L562
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L572
	 add	%i2, -1, %i2
.L562:
	sll	%g3, 3, %g3
	b	.L564
	 mov	0, %g2
.L565:
	ldd	[%g4], %i4
	add	%i0, %g2, %g4
	std	%i4, [%g4]
	add	%g2, 8, %g2
.L564:
	cmp	%g2, %g3
	bne	.L565
	 add	%i1, %g2, %g4
	b	.L571
	 cmp	%i2, %g1
.L567:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L571:
	bgu,a	.L567
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L569:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L572:
	cmp	%i2, -1
	bne,a	.L569
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
	blu	.L574
	 srl	%i2, 1, %g3
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu,a	.L581
	 add	%i2, -1, %i2
.L574:
	sll	%g3, 1, %g3
	b	.L576
	 mov	0, %g1
.L577:
	sth	%g2, [%i0+%g1]
	add	%g1, 2, %g1
.L576:
	cmp	%g1, %g3
	bne,a	.L577
	 lduh	[%i1+%g1], %g2
	andcc	%i2, 1, %g0
	be	.L583
	 add	%i2, -1, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L583:
	jmp	%i7+8
	 restore
.L579:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L581:
	cmp	%i2, -1
	bne,a	.L579
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
	blu	.L585
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L595
	 add	%i2, -1, %i2
.L585:
	sll	%g4, 2, %g4
	b	.L587
	 mov	0, %g2
.L588:
	st	%g3, [%i0+%g2]
	add	%g2, 4, %g2
.L587:
	cmp	%g2, %g4
	bne,a	.L588
	 ld	[%i1+%g2], %g3
	b	.L594
	 cmp	%i2, %g1
.L590:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L594:
	bgu,a	.L590
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L592:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L595:
	cmp	%i2, -1
	bne,a	.L592
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
	.section	.rodata.cst8
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
	bge	.L599
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L599:
	jmp	%i7+8
	 restore
	.size	__uitod, .-__uitod
	.section	.rodata.cst8
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
	bge	.L601
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L601:
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
	mov	0, %g1
	b	.L606
	 mov	15, %g3
.L608:
	sra	%i0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L607
	 nop
	add	%g1, 1, %g1
.L606:
	cmp	%g1, 16
	bne	.L608
	 sub	%g3, %g1, %g2
.L607:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -96, %sp
	b	.L610
	 mov	0, %g1
.L612:
	andcc	%g2, 1, %g0
	bne	.L611
	 nop
	add	%g1, 1, %g1
.L610:
	cmp	%g1, 16
	bne	.L612
	 sra	%i0, %g1, %g2
.L611:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
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
	fbul	.L618
	 nop
	fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	jmp	%i7+8
	 restore %g2, %g1, %o0
.L618:
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
	b	.L620
	 mov	0, %g1
.L622:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L620:
	cmp	%g1, 16
	bne	.L622
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
	b	.L624
	 mov	0, %g1
.L626:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L624:
	cmp	%g1, 16
	bne	.L626
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
	b	.L628
	 mov	0, %i0
.L630:
	bne,a	.L629
	 add	%i0, %i1, %i0
.L629:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L628:
	cmp	%g1, 0
	bne	.L630
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
	be	.L638
	 mov	0, %i0
	b	.L637
	 cmp	%i1, 0
.L635:
	bne,a	.L634
	 add	%i0, %g1, %i0
.L634:
	sll	%g1, 1, %g1
	srl	%i1, 1, %i1
	cmp	%i1, 0
.L637:
	bne	.L635
	 andcc	%i1, 1, %g0
.L638:
	jmp	%i7+8
	 restore
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -96, %sp
	b	.L640
	 mov	1, %g1
.L643:
	sll	%g1, 1, %g1
.L640:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L641
	 cmp	%i1, 0
	b	.L642
	 mov	0, %g2
.L641:
	bge,a	.L643
	 sll	%i1, 1, %i1
	b	.L642
	 mov	0, %g2
.L646:
	blu,a	.L650
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L650:
	srl	%i1, 1, %i1
.L642:
	cmp	%g1, 0
	bne	.L646
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L649
	 mov	%g2, %i0
.L649:
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
	fbl	.L655
	 mov	-1, %i0
	nop
	fbg	.L655
	 mov	1, %i0
	mov	0, %i0
.L655:
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
	fbl	.L660
	 mov	-1, %i0
	nop
	fbg	.L660
	 mov	1, %i0
	mov	0, %i0
.L660:
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
	bge	.L664
	 mov	0, %i5
	sub	%g0, %i1, %i1
	mov	1, %i5
.L664:
	mov	0, %g4
	b	.L665
	 mov	0, %g1
.L668:
	bne,a	.L666
	 add	%g4, %i0, %g4
.L666:
	sll	%i0, 1, %i0
	sra	%i1, 1, %i1
	add	%g1, 1, %g1
.L665:
	cmp	%g0, %i1
	addx	%g0, 0, %g3
	and	%g1, 0xff, %g2
	cmp	%g2, 32
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L668
	 andcc	%i1, 1, %g0
	cmp	%i5, 0
	be	.L672
	 mov	%g4, %i0
	sub	%g0, %g4, %i0
.L672:
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
	bge	.L674
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L674:
	cmp	%i1, 0
	bge	.L678
	 mov	0, %o2
	sub	%g0, %i1, %i1
	xor	%i5, 1, %i5
.L678:
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L679
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L679:
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
	bge	.L681
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L681:
	sra	%i1, 31, %o1
	xor	%i1, %o1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L685
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L685:
	jmp	%i7+8
	 restore
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -96, %sp
	b	.L687
	 mov	1, %g1
.L690:
	srl	%i1, 16, %i1
	sll	%g1, 1, %g1
.L687:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L688
	 sll	%i1, 16, %g2
	b	.L689
	 mov	0, %g3
.L688:
	cmp	%g2, 0
	bge,a	.L690
	 sll	%i1, 17, %i1
	b	.L689
	 mov	0, %g3
.L693:
	blu,a	.L696
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	or	%g3, %g1, %g3
	sll	%g1, 16, %g1
.L696:
	srl	%g1, 17, %g1
	srl	%i1, 1, %i1
.L689:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L693
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L694
	 mov	%g3, %i0
.L694:
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
	b	.L698
	 mov	1, %g1
.L701:
	sll	%g1, 1, %g1
.L698:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L699
	 cmp	%i1, 0
	b	.L700
	 mov	0, %g2
.L699:
	bge,a	.L701
	 sll	%i1, 1, %i1
	b	.L700
	 mov	0, %g2
.L704:
	blu,a	.L708
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L708:
	srl	%i1, 1, %i1
.L700:
	cmp	%g1, 0
	bne	.L704
	 cmp	%i0, %i1
	cmp	%i2, 0
	be,a	.L707
	 mov	%g2, %i0
.L707:
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
	be,a	.L710
	 mov	%i0, %g2
	mov	0, %g3
	b	.L712
	 sll	%i1, %i2, %g2
.L710:
	cmp	%i2, 0
	be	.L712
	 mov	%i1, %g3
	sll	%i1, %i2, %g3
	sll	%i0, %i2, %g1
	sub	%g0, %i2, %i2
	srl	%i1, %i2, %i2
	or	%i2, %g1, %g2
.L712:
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
	be,a	.L715
	 mov	%i0, %g2
	sra	%i0, 31, %g2
	b	.L717
	 sra	%i0, %i2, %g3
.L715:
	cmp	%i2, 0
	be	.L717
	 mov	%i1, %g3
	sra	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sll	%i0, %g1, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L717:
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
	bl	.L731
	 mov	0, %g1
	bg	.L731
	 mov	2, %g1
	cmp	%i1, %i3
	blu	.L731
	 mov	0, %g1
	cmp	%i3, %i1
	addx	%g0, 1, %g1
.L731:
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
	be,a	.L747
	 mov	%i0, %g2
	mov	0, %g2
	b	.L749
	 srl	%i0, %i2, %g3
.L747:
	cmp	%i2, 0
	be	.L749
	 mov	%i1, %g3
	srl	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sll	%i0, %g1, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L749:
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
	.section	.rodata.cst8
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
.L761:
	andcc	%i2, 1, %g0
	bne,a	.L759
	 fmuld	%f10, %f8, %f10
.L759:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L760
	 fmovs	%f10, %f0
	b	.L761
	 fmuld	%f8, %f8, %f8
.L760:
	cmp	%g2, 0
	be	.L764
	 fmovs	%f11, %f1
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
	fdivd	%f0, %f10, %f0
.L764:
	jmp	%i7+8
	 restore
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
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
.L768:
	andcc	%i1, 1, %g0
	bne,a	.L766
	 fmuls	%f9, %f8, %f9
.L766:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L767
	 cmp	%g2, 0
	b	.L768
	 fmuls	%f8, %f8, %f8
.L767:
	be	.L771
	 fmovs	%f9, %f0
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
	fdivs	%f0, %f9, %f0
.L771:
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
	blu	.L773
	 mov	0, %g1
	bgu	.L773
	 mov	2, %g1
	cmp	%i1, %i3
	blu	.L773
	 mov	0, %g1
	cmp	%i3, %i1
	addx	%g0, 1, %g1
.L773:
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
