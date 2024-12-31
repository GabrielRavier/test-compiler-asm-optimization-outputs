	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global make_ti
	.type	make_ti, #function
	.proc	05
make_ti:
	.register	%g2, #scratch
	.register	%g3, #scratch
	save	%sp, -176, %sp
	return	%i7+8
	 nop
	.size	make_ti, .-make_ti
	.align 4
	.global make_tu
	.type	make_tu, #function
	.proc	017
make_tu:
	save	%sp, -176, %sp
	return	%i7+8
	 nop
	.size	make_tu, .-make_tu
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	save	%sp, -176, %sp
	cmp	%i0, %i1
	bleu	%xcc, .L11
	 add	%i0, %i2, %g3
	add	%i1, %i2, %i1
	ba,pt	%xcc, .L5
	 mov	%i2, %g1
.L6:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g4
	sub	%g3, %i2, %g2
	add	%g2, -1, %g2
	stb	%g4, [%g2+%g1]
	add	%g1, -1, %g1
.L5:
	brnz	%g1, .L6
	 sub	%i1, %i2, %g2
	return	%i7+8
	 nop
.L11:
	bne	%xcc, .L10
	 mov	0, %g1
	return	%i7+8
	 nop
.L9:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L10:
	cmp	%g1, %i2
	bne,a	%xcc, .L9
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L13
	 and	%i2, 0xff, %i2
.L15:
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L13:
	brz	%i3, .L14
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%g1, %i2
	bne,a	%icc, .L15
	 add	%i3, -1, %i3
.L14:
	brz	%i3, .L17
	 nop
	return	%i7+8
	 add	%o0, 1, %o0
.L17:
	return	%i7+8
	 mov	0, %o0
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L19
	 and	%i1, 0xff, %i1
.L21:
	add	%i2, -1, %i2
.L19:
	brz,a	%i2, .L24
	 mov	0, %i0
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne,a	%icc, .L21
	 add	%i0, 1, %i0
	brz,a	%i2, .L24
	 mov	0, %i0
.L24:
	return	%i7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L26
	 nop
.L28:
	add	%i0, 1, %i0
	add	%i1, 1, %i1
.L26:
	brz,a	%i2, .L31
	 mov	0, %i0
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be,a	%icc, .L28
	 add	%i2, -1, %i2
	brz,a	%i2, .L30
	 mov	0, %i0
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
.L30:
.L31:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L33
	 mov	0, %g1
.L34:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L33:
	cmp	%g1, %i2
	bne,a	%xcc, .L34
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	save	%sp, -176, %sp
	and	%i1, 0xff, %i1
	ba,pt	%xcc, .L36
	 add	%i2, -1, %i2
.L38:
	cmp	%g2, %i1
	bne	%icc, .L39
	 add	%i2, -1, %g1
	return	%i7+8
	 add	%o0, %o2, %o0
.L39:
	mov	%g1, %i2
.L36:
	cmp	%i2, -1
	bne,a	%xcc, .L38
	 ldub	[%i0+%i2], %g2
	return	%i7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -176, %sp
	add	%i0, %i2, %i2
	ba,pt	%xcc, .L41
	 mov	%i0, %g1
.L42:
	add	%g1, 1, %g1
.L41:
	cmp	%g1, %i2
	bne,a	%xcc, .L42
	 stb	%i1, [%g1]
	return	%i7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L46
	 ldub	[%i1], %g1
.L45:
	add	%i0, 1, %i0
	ldub	[%i1], %g1
.L46:
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L45
	 add	%i1, 1, %i1
	return	%i7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	save	%sp, -176, %sp
	and	%i1, 0xff, %i1
.L50:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be	%icc, .L51
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne,a	%icc, .L50
	 add	%i0, 1, %i0
.L51:
	return	%i7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	save	%sp, -176, %sp
	ldsb	[%i0], %g1
.L56:
	cmp	%g1, %i1
	be	%icc, .L57
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne,a	%icc, .L56
	 ldsb	[%i0], %g1
	mov	0, %i0
.L57:
	return	%i7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L62
	 ldsb	[%i0], %g2
.L61:
	add	%i1, 1, %i1
	ldsb	[%i0], %g2
.L62:
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne	%icc, .L60
	 cmp	%g2, 0
	bne,a	%icc, .L61
	 add	%i0, 1, %i0
.L60:
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	017
strlen:
	save	%sp, -176, %sp
	mov	%i0, %g1
.L65:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	%icc, .L65
	 add	%g1, 1, %g1
	return	%i7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	save	%sp, -176, %sp
	brz	%i2, .L71
	 mov	%i0, %g1
	ba,pt	%xcc, .L73
	 ldub	[%g1], %g2
.L70:
	add	%i1, 1, %i1
	ldub	[%g1], %g2
.L73:
	cmp	%g2, 0
	be	%icc, .L69
	 add	%i2, -1, %g2
	add	%g2, %i0, %g2
	sub	%g2, %g1, %g2
	mov	0, %g3
	movrne	%g2, 1, %g3
	ldub	[%i1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,a	%icc, .L72
	 ldub	[%g1], %i0
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be,a	%icc, .L70
	 add	%g1, 1, %g1
.L69:
	ldub	[%g1], %i0
.L72:
	ldub	[%i1], %g1
	ba,pt	%xcc, .L67
	 sub	%i0, %g1, %i0
.L71:
	mov	0, %i0
.L67:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L75
	 mov	%i0, %g1
.L76:
	stb	%g2, [%i1]
	ldub	[%g1], %g2
	stb	%g2, [%i1+1]
	add	%i1, 2, %i1
	add	%g1, 2, %g1
.L75:
	add	%i0, %i2, %g2
	sub	%g2, %g1, %g2
	cmp	%g2, 1
	bg,a	%xcc, .L76
	 ldub	[%g1+1], %g2
	return	%i7+8
	 nop
	.size	swab, .-swab
	.align 4
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	save	%sp, -176, %sp
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 25
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	save	%sp, -176, %sp
	cmp	%i0, 127
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	isascii, .-isascii
	.align 4
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	save	%sp, -176, %sp
	xor	%i0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	xor	%i0, 9, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %i0
	return	%i7+8
	 or	%o0, %g1, %o0
	.size	isblank, .-isblank
	.align 4
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	save	%sp, -176, %sp
	cmp	%i0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	xor	%i0, 127, %i0
	cmp	%g0, %i0
	subx	%g0, -1, %g2
	or	%g1, %g2, %i0
	return	%i7+8
	 and	%o0, 1, %o0
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	save	%sp, -176, %sp
	add	%i0, -48, %i0
	cmp	%i0, 9
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	save	%sp, -176, %sp
	add	%i0, -33, %i0
	cmp	%i0, 93
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	save	%sp, -176, %sp
	add	%i0, -97, %i0
	cmp	%i0, 25
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	save	%sp, -176, %sp
	add	%i0, -32, %i0
	cmp	%i0, 94
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	isprint, .-isprint
	.align 4
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	save	%sp, -176, %sp
	xor	%i0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	add	%i0, -9, %i0
	cmp	%i0, 4
	mov	0, %i0
	movleu	%icc, 1, %i0
	or	%i0, %g1, %i0
	return	%i7+8
	 and	%o0, 1, %o0
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	save	%sp, -176, %sp
	add	%i0, -65, %i0
	cmp	%i0, 25
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	save	%sp, -176, %sp
	cmp	%i0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	add	%i0, -127, %g2
	cmp	%g2, 32
	mov	0, %g2
	movleu	%icc, 1, %g2
	or	%g1, %g2, %g1
	andcc	%g1, 0xff, %g0
	bne	%icc, .L89
	 sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu	%icc, .L90
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 2
	bgu,a	%icc, .L91
	 mov	0, %i0
	ba,pt	%xcc, .L88
	 mov	1, %i0
.L89:
	ba,pt	%xcc, .L88
	 mov	1, %i0
.L90:
	mov	1, %i0
.L91:
.L88:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	save	%sp, -176, %sp
	add	%i0, -48, %i0
	cmp	%i0, 9
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	save	%sp, -176, %sp
	cmp	%i0, 254
	bgu	%icc, .L94
	 sethi	%hi(8192), %g1
	add	%i0, 1, %i0
	and	%i0, 127, %i0
	cmp	%i0, 32
	mov	0, %i0
	ba,pt	%xcc, .L95
	 movgu	%icc, 1, %i0
.L94:
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
	bne	%icc, .L96
	 sethi	%hi(-57344), %g2
	add	%i0, %g2, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bleu	%icc, .L97
	 sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%i0, %g1, %g1
	sethi	%hi(1048576), %g2
	or	%g2, 3, %g2
	cmp	%g1, %g2
	bgu	%icc, .L98
	 sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%i0, %g1, %i0
	cmp	%i0, %g1
	be,a	%icc, .L99
	 mov	0, %i0
	ba,pt	%xcc, .L95
	 mov	1, %i0
.L96:
	ba,pt	%xcc, .L95
	 mov	1, %i0
.L97:
	ba,pt	%xcc, .L95
	 mov	1, %i0
.L98:
	mov	0, %i0
.L99:
.L95:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -176, %sp
	add	%i0, -48, %g1
	cmp	%g1, 9
	bleu,a	%icc, .L104
	 mov	1, %i0
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 5
	bgu,a	%icc, .L103
	 mov	0, %i0
	mov	1, %i0
.L103:
.L101:
.L104:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	save	%sp, -176, %sp
	return	%i7+8
	 and	%o0, 127, %o0
	.size	toascii, .-toascii
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	save	%sp, -176, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu	%fcc0, .L114
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu	%fcc1, .L110
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule	%fcc2, .L113
	 nop
	return	%i7+8
	 fsubd	%f0, %f2, %f0
.L110:
	return	%i7+8
	 fmovd	%f2, %f0
.L113:
	fzero	%f0
.L114:
	return	%i7+8
	 nop
	.size	fdim, .-fdim
	.align 4
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	save	%sp, -176, %sp
	fcmps	%fcc3, %f1, %f1
	fbu	%fcc3, .L118
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu	%fcc0, .L119
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule	%fcc1, .L122
	 nop
	return	%i7+8
	 fsubs	%f1, %f3, %f0
.L118:
	return	%i7+8
	 fmovs	%f1, %f0
.L119:
	return	%i7+8
	 fmovs	%f3, %f0
.L122:
	return	%i7+8
	 fzeros	%f0
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	save	%sp, -192, %sp
	fcmpd	%fcc2, %f0, %f0
	fbu,a	%fcc2, .L133
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu	%fcc3, .L133
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a	%icc, .L125
	 fcmped	%fcc0, %f0, %f2
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	brgez	%g1, .L133
	 nop
	return	%i7+8
	 fmovd	%f2, %f0
.L125:
	fbuge	%fcc0, .L133
	 nop
	return	%i7+8
	 fmovd	%f2, %f0
.L133:
	return	%i7+8
	 nop
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	save	%sp, -192, %sp
	fcmps	%fcc1, %f1, %f1
	fbu	%fcc1, .L144
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu	%fcc2, .L139
	 sethi	%hi(-2147483648), %g3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	and	%g1, %g3, %g1
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	%icc, .L136
	 fcmpes	%fcc3, %f1, %f3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	cmp	%g1, 0
	bge,a	%icc, .L135
	 fmovs	%f1, %f3
	ba,pt	%xcc, .L144
	 nop
.L136:
	fbuge	%fcc3, .L143
	 nop
	return	%i7+8
	 fmovs	%f3, %f0
.L139:
	ba,pt	%xcc, .L135
	 fmovs	%f1, %f3
.L143:
	fmovs	%f1, %f3
.L135:
	fmovs	%f3, %f0
.L144:
	return	%i7+8
	 nop
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -288, %sp
	std	%f0, [%fp+1935]
	std	%f2, [%fp+1943]
	ldx	[%fp+1935], %i4
	ldx	[%fp+1943], %i5
	std	%f4, [%fp+1935]
	std	%f6, [%fp+1943]
	ldx	[%fp+1935], %i2
	ldx	[%fp+1943], %i3
	stx	%i4, [%fp+2031]
	stx	%i5, [%fp+2039]
	stx	%i4, [%fp+2015]
	stx	%i5, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be	%xcc, .L149
	 add	%fp, 1983, %o1
	stx	%i2, [%fp+1999]
	stx	%i3, [%fp+2007]
	stx	%i2, [%fp+1983]
	stx	%i3, [%fp+1991]
	call	_Qp_cmp, 0
	 add	%fp, 1999, %o0
	cmp	%o0, 3
	be	%xcc, .L150
	 srlx	%i4, 63, %g2
	srlx	%i2, 63, %g1
	cmp	%g2, %g1
	be,a	%icc, .L147
	 stx	%i4, [%fp+1967]
	brgez,a	%i4, .L151
	 stx	%i4, [%fp+1935]
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L147:
	stx	%i5, [%fp+1975]
	stx	%i2, [%fp+1951]
	stx	%i3, [%fp+1959]
	add	%fp, 1951, %o1
	call	_Qp_flt, 0
	 add	%fp, 1967, %o0
	brz,a	%o0, .L154
	 stx	%i4, [%fp+1935]
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L149:
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L150:
	stx	%i4, [%fp+1935]
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L151:
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L154:
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
	.size	fmaxl, .-fmaxl
	.align 4
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	save	%sp, -192, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu	%fcc0, .L159
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu	%fcc1, .L165
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a	%icc, .L157
	 fcmped	%fcc2, %f0, %f2
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	brgez	%g1, .L161
	 nop
	return	%i7+8
	 nop
.L157:
	fbuge	%fcc2, .L164
	 nop
	return	%i7+8
	 nop
.L159:
	return	%i7+8
	 fmovd	%f2, %f0
.L161:
	return	%i7+8
	 fmovd	%f2, %f0
.L164:
	fmovd	%f2, %f0
.L165:
	return	%i7+8
	 nop
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	save	%sp, -192, %sp
	fcmps	%fcc3, %f1, %f1
	fbu	%fcc3, .L177
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu	%fcc0, .L172
	 sethi	%hi(-2147483648), %g3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	and	%g1, %g3, %g1
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	%icc, .L169
	 fcmpes	%fcc1, %f1, %f3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	cmp	%g1, 0
	bl,a	%icc, .L168
	 fmovs	%f1, %f3
	ba,pt	%xcc, .L177
	 nop
.L169:
	fbl,a	%fcc1, .L168
	 fmovs	%f1, %f3
	return	%i7+8
	 fmovs	%f3, %f0
.L172:
	fmovs	%f1, %f3
.L168:
	fmovs	%f3, %f0
.L177:
	return	%i7+8
	 nop
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -288, %sp
	std	%f0, [%fp+1935]
	std	%f2, [%fp+1943]
	ldx	[%fp+1935], %i2
	ldx	[%fp+1943], %i3
	std	%f4, [%fp+1935]
	std	%f6, [%fp+1943]
	ldx	[%fp+1935], %i4
	ldx	[%fp+1943], %i5
	stx	%i2, [%fp+2031]
	stx	%i3, [%fp+2039]
	stx	%i2, [%fp+2015]
	stx	%i3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be	%xcc, .L182
	 add	%fp, 1983, %o1
	stx	%i4, [%fp+1999]
	stx	%i5, [%fp+2007]
	stx	%i4, [%fp+1983]
	stx	%i5, [%fp+1991]
	call	_Qp_cmp, 0
	 add	%fp, 1999, %o0
	cmp	%o0, 3
	be	%xcc, .L183
	 srlx	%i2, 63, %g2
	srlx	%i4, 63, %g1
	cmp	%g2, %g1
	be,a	%icc, .L180
	 stx	%i2, [%fp+1967]
	brgez,a	%i2, .L184
	 stx	%i4, [%fp+1935]
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L180:
	stx	%i3, [%fp+1975]
	stx	%i4, [%fp+1951]
	stx	%i5, [%fp+1959]
	add	%fp, 1951, %o1
	call	_Qp_flt, 0
	 add	%fp, 1967, %o0
	brz,a	%o0, .L187
	 stx	%i4, [%fp+1935]
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L182:
	stx	%i4, [%fp+1935]
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L183:
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L184:
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L187:
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
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
	save	%sp, -176, %sp
	sethi	%hi(s.0), %g1
	ba,pt	%xcc, .L189
	 or	%g1, %lo(s.0), %g1
.L190:
	sethi	%hi(digits), %g2
	or	%g2, %lo(digits), %g2
	ldub	[%g2+%g3], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%i0, 6, %i0
.L189:
	cmp	%i0, 0
	bne	%icc, .L190
	 and	%i0, 63, %g3
	stb	%g0, [%g1]
	sethi	%hi(s.0), %i0
	return	%i7+8
	 or	%o0, %lo(s.0), %o0
	.size	l64a, .-l64a
	.local	seed
	.common	seed,8,8
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	save	%sp, -176, %sp
	add	%i0, -1, %i0
	srl	%i0, 0, %i0
	sethi	%hi(seed), %g1
	stx	%i0, [%g1+%lo(seed)]
	return	%i7+8
	 nop
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -176, %sp
	sethi	%hi(seed), %g2
	or	%g2, %lo(seed), %g2
	ldx	[%g2], %i0
	sethi	%hi(1481765888), %g1
	or	%g1, 45, %g1
	sethi	%hi(1284865024), %g3
	or	%g3, 813, %g3
	sllx	%g1, 32, %g1
	add	%g1, %g3, %g1
	mulx	%i0, %g1, %i0
	add	%i0, 1, %i0
	stx	%i0, [%g2]
	return	%i7+8
	 srlx	%o0, 33, %o0
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -176, %sp
	brnz,a	%i1, .L194
	 ldx	[%i1], %g1
	stx	%g0, [%i0+8]
	stx	%g0, [%i0]
.L197:
	return	%i7+8
	 nop
.L194:
	stx	%g1, [%i0]
	stx	%i1, [%i0+8]
	stx	%i0, [%i1]
	ldx	[%i0], %g1
	brnz,a	%g1, .L197
	 stx	%i0, [%g1+8]
	return	%i7+8
	 nop
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -176, %sp
	ldx	[%i0], %g1
	brz,a	%g1, .L201
	 ldx	[%i0+8], %g1
	ldx	[%i0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%i0+8], %g1
.L201:
	brz	%g1, .L202
	 nop
	ldx	[%i0], %g2
	stx	%g2, [%g1]
.L202:
	return	%i7+8
	 nop
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -176, %sp
	ldx	[%i2], %l0
	mov	%i1, %l1
	ba,pt	%xcc, .L204
	 mov	0, %i5
.L207:
	mov	%l1, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	%icc, .L205
	 add	%l1, %i3, %l1
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L205:
	add	%i5, 1, %i5
.L204:
	cmp	%i5, %l0
	bne	%xcc, .L207
	 add	%l0, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l0, %o0
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
	save	%sp, -176, %sp
	ldx	[%i2], %l0
	mov	%i1, %i2
	ba,pt	%xcc, .L209
	 mov	0, %i5
.L212:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	%icc, .L210
	 add	%i2, %i3, %i2
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L210:
	add	%i5, 1, %i5
.L209:
	cmp	%i5, %l0
	bne	%xcc, .L212
	 mov	%i2, %o1
	return	%i7+8
	 mov	0, %o0
	.size	lfind, .-lfind
	.align 4
	.global abs
	.type	abs, #function
	.proc	04
abs:
	save	%sp, -176, %sp
	sra	%i0, 31, %g1
	xor	%g1, %i0, %i0
	sub	%i0, %g1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -176, %sp
.L216:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	%icc, .L216
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	%icc, .L222
	 cmp	%g1, 45
	bne,a	%icc, .L223
	 mov	0, %g3
	ba,pt	%xcc, .L217
	 mov	1, %g3
.L222:
	mov	0, %g3
.L217:
	add	%i0, 1, %i0
.L223:
	ba,pt	%xcc, .L219
	 mov	0, %g1
.L220:
	sll	%g1, 2, %g2
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L219:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	%icc, .L220
	 cmp	%g3, 0
	be,a	%icc, .L221
	 sub	%g0, %g1, %g1
.L221:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	05
atol:
	save	%sp, -176, %sp
.L227:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	%icc, .L227
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	%icc, .L233
	 cmp	%g1, 45
	bne,a	%icc, .L234
	 mov	0, %g3
	ba,pt	%xcc, .L228
	 mov	1, %g3
.L233:
	mov	0, %g3
.L228:
	add	%i0, 1, %i0
.L234:
	ba,pt	%xcc, .L230
	 mov	0, %g1
.L231:
	sllx	%g1, 2, %g2
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L230:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	%icc, .L231
	 cmp	%g3, 0
	bne	%icc, .L235
	 nop
	return	%i7+8
	 sub	%g0, %g1, %o0
.L235:
	return	%i7+8
	 mov	%g1, %o0
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -176, %sp
.L238:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	%icc, .L238
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	%icc, .L244
	 cmp	%g1, 45
	bne,a	%icc, .L245
	 mov	0, %g3
	ba,pt	%xcc, .L239
	 mov	1, %g3
.L244:
	mov	0, %g3
.L239:
	add	%i0, 1, %i0
.L245:
	ba,pt	%xcc, .L241
	 mov	0, %g1
.L242:
	sllx	%g1, 2, %g2
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L241:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	%icc, .L242
	 cmp	%g3, 0
	bne	%icc, .L246
	 nop
	return	%i7+8
	 sub	%g0, %g1, %o0
.L246:
	return	%i7+8
	 mov	%g1, %o0
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L248
	 nop
.L252:
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge	%icc, .L249
	 nop
	ba,pt	%xcc, .L248
	 srlx	%i2, 1, %i2
.L249:
	ble	%icc, .L253
	 add	%i5, %i3, %i1
	srlx	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L248:
	brnz	%i2, .L252
	 srlx	%i2, 1, %i5
	return	%i7+8
	 mov	0, %o0
.L253:
	return	%i7+8
	 mov	%o5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L260
	 cmp	%i2, 0
.L258:
	mulx	%l0, %i3, %l0
	add	%i1, %l0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	%icc, .L259
	 nop
	ble,a	%icc, .L261
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L261:
	cmp	%i2, 0
.L260:
	bne	%icc, .L258
	 sra	%i2, 1, %l0
	return	%i7+8
	 mov	0, %o0
.L259:
	jmp	%i7+8
	 restore %g0, %l0, %o0
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global div
	.type	div, #function
	.proc	010
div:
	save	%sp, -208, %sp
	sra	%i0, 31, %g2
	wr	%g0, %g2, %y
	sdiv	%i0, %i1, %g2
	sra	%i0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%i0, %i1, %g1
	smul	%g1, %i1, %g1
	sub	%i0, %g1, %i0
	st	%g2, [%fp+2039]
	st	%i0, [%fp+2043]
	ldx	[%fp+2039], %i0
	return	%i7+8
	 nop
	.size	div, .-div
	.align 4
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	save	%sp, -176, %sp
	srax	%i0, 63, %g1
	xor	%g1, %i0, %i0
	return	%i7+8
	 sub	%o0, %g1, %o0
	.size	imaxabs, .-imaxabs
	.align 4
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -208, %sp
	sdivx	%i0, %i1, %g1
	mulx	%g1, %i1, %i1
	sub	%i0, %i1, %i1
	stx	%g1, [%fp+2031]
	stx	%i1, [%fp+2039]
	return	%i7+8
	 mov	%g1, %o0
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	05
labs:
	save	%sp, -176, %sp
	srax	%i0, 63, %g1
	xor	%g1, %i0, %i0
	return	%i7+8
	 sub	%o0, %g1, %o0
	.size	labs, .-labs
	.align 4
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	save	%sp, -208, %sp
	sdivx	%i0, %i1, %g1
	mulx	%g1, %i1, %i1
	sub	%i0, %i1, %i1
	stx	%g1, [%fp+2031]
	stx	%i1, [%fp+2039]
	return	%i7+8
	 mov	%g1, %o0
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	save	%sp, -176, %sp
	srax	%i0, 63, %g1
	xor	%g1, %i0, %i0
	return	%i7+8
	 sub	%o0, %g1, %o0
	.size	llabs, .-llabs
	.align 4
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -208, %sp
	sdivx	%i0, %i1, %g1
	mulx	%g1, %i1, %i1
	sub	%i0, %i1, %i1
	stx	%g1, [%fp+2031]
	stx	%i1, [%fp+2039]
	return	%i7+8
	 mov	%g1, %o0
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L275
	 lduw	[%i0], %g1
.L272:
	lduw	[%i0], %g1
.L275:
	cmp	%g1, 0
	be	%icc, .L277
	 lduw	[%i0], %g1
	cmp	%g1, %i1
	bne,a	%icc, .L272
	 add	%i0, 4, %i0
.L277:
	cmp	%g1, 0
	be,a	%icc, .L276
	 mov	0, %i0
.L276:
	return	%i7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L284
	 lduw	[%i0], %g2
.L281:
	add	%i1, 4, %i1
	lduw	[%i0], %g2
.L284:
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne,a	%icc, .L285
	 lduw	[%i0], %g2
	lduw	[%i0], %g1
	cmp	%g1, 0
	be,a	%icc, .L286
	 lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne,a	%icc, .L281
	 add	%i0, 4, %i0
	lduw	[%i0], %g2
.L286:
	lduw	[%i1], %g1
.L285:
	cmp	%g2, %g1
	bl,a	%icc, .L283
	 mov	-1, %i0
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %i0
	movg	%icc, 1, %i0
.L283:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -176, %sp
	mov	0, %g1
	lduw	[%i1+%g1], %g2
.L289:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	lduw	[%g2+%g1], %g2
	cmp	%g2, 0
	bne,a	%icc, .L289
	 lduw	[%i1+%g1], %g2
	return	%i7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	017
wcslen:
	save	%sp, -176, %sp
	mov	%i0, %g1
.L292:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a	%icc, .L292
	 add	%g1, 4, %g1
	sub	%g1, %i0, %i0
	return	%i7+8
	 srax	%o0, 2, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L294
	 nop
.L296:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L294:
	brz,a	%i2, .L300
	 mov	0, %i0
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne	%icc, .L295
	 nop
	lduw	[%i0], %g1
	cmp	%g1, 0
	be	%icc, .L295
	 nop
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne,a	%icc, .L296
	 add	%i2, -1, %i2
.L295:
	brz,a	%i2, .L300
	 mov	0, %i0
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bl,a	%icc, .L299
	 mov	-1, %i0
	mov	0, %i0
	movg	%icc, 1, %i0
.L299:
.L297:
.L300:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L302
	 nop
.L304:
	add	%i0, 4, %i0
.L302:
	brz,a	%i2, .L307
	 mov	0, %i0
	lduw	[%i0], %g1
	cmp	%g1, %i1
	bne,a	%icc, .L304
	 add	%i2, -1, %i2
	brz,a	%i2, .L307
	 mov	0, %i0
.L307:
	return	%i7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L309
	 nop
.L311:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L309:
	brz,a	%i2, .L315
	 mov	0, %i0
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	be,a	%icc, .L311
	 add	%i2, -1, %i2
	brz,a	%i2, .L315
	 mov	0, %i0
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bl,a	%icc, .L314
	 mov	-1, %i0
	mov	0, %i0
	movg	%icc, 1, %i0
.L314:
.L312:
.L315:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L317
	 mov	0, %g1
.L318:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L317:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	%xcc, .L318
	 lduw	[%i1+%g1], %g2
	return	%i7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	save	%sp, -176, %sp
	cmp	%i0, %i1
	be	%xcc, .L327
	 sub	%i0, %i1, %g1
	sllx	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	%xcc, .L325
	 mov	0, %g1
	ba,pt	%xcc, .L322
	 mov	%g2, %i2
.L323:
	st	%g1, [%i0+%i2]
.L322:
	add	%i2, -4, %i2
	cmp	%i2, -4
	bne,a	%xcc, .L323
	 lduw	[%i1+%i2], %g1
.L327:
	return	%i7+8
	 nop
.L324:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L325:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	%xcc, .L324
	 lduw	[%i1+%g1], %g2
	return	%i7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L329
	 mov	%i0, %g1
.L330:
	st	%i1, [%g1-4]
.L329:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	%xcc, .L330
	 add	%g1, 4, %g1
	return	%i7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	save	%sp, -176, %sp
	cmp	%i0, %i1
	bgeu	%xcc, .L339
	 mov	%i2, %g1
	add	%i0, %i2, %i0
	ba,pt	%xcc, .L333
	 add	%i1, %i2, %i1
.L334:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%i1, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L333:
	brnz	%g1, .L334
	 sub	%i0, %i2, %g2
	return	%i7+8
	 nop
.L339:
	bne	%xcc, .L338
	 mov	0, %g1
	return	%i7+8
	 nop
.L337:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L338:
	cmp	%g1, %i2
	bne,a	%xcc, .L337
	 ldub	[%i0+%g1], %g2
	return	%i7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	save	%sp, -176, %sp
	sllx	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	srlx	%i0, %i1, %i0
	return	%i7+8
	 or	%o0, %g1, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	save	%sp, -176, %sp
	srlx	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	sllx	%i0, %i1, %i0
	return	%i7+8
	 or	%o0, %g1, %o0
	.size	rotr64, .-rotr64
	.align 4
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	save	%sp, -176, %sp
	sll	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	srl	%i0, %i1, %i0
	or	%i0, %g1, %i0
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	rotl32, .-rotl32
	.align 4
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	save	%sp, -176, %sp
	srl	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	sll	%i0, %i1, %i0
	or	%i0, %g1, %i0
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	rotr32, .-rotr32
	.align 4
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	017
rotl_sz:
	save	%sp, -176, %sp
	sllx	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	srlx	%i0, %i1, %i0
	return	%i7+8
	 or	%o0, %g1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	017
rotr_sz:
	save	%sp, -176, %sp
	srlx	%i0, %i1, %g1
	sub	%g0, %i1, %i1
	sllx	%i0, %i1, %i0
	return	%i7+8
	 or	%o0, %g1, %o0
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	save	%sp, -176, %sp
	sll	%i0, %i1, %g2
	mov	16, %g1
	sub	%g1, %i1, %g1
	srl	%i0, %g1, %i0
	or	%i0, %g2, %i0
	sllx	%i0, 48, %i0
	return	%i7+8
	 srlx	%o0, 48, %o0
	.size	rotl16, .-rotl16
	.align 4
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	save	%sp, -176, %sp
	srl	%i0, %i1, %g2
	mov	16, %g1
	sub	%g1, %i1, %g1
	sll	%i0, %g1, %i0
	or	%i0, %g2, %i0
	sllx	%i0, 48, %i0
	return	%i7+8
	 srlx	%o0, 48, %o0
	.size	rotr16, .-rotr16
	.align 4
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	save	%sp, -176, %sp
	sll	%i0, %i1, %g2
	mov	8, %g1
	sub	%g1, %i1, %g1
	srl	%i0, %g1, %i0
	or	%i0, %g2, %i0
	return	%i7+8
	 and	%o0, 0xff, %o0
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	save	%sp, -176, %sp
	srl	%i0, %i1, %g2
	mov	8, %g1
	sub	%g1, %i1, %g1
	sll	%i0, %g1, %i0
	or	%i0, %g2, %i0
	return	%i7+8
	 and	%o0, 0xff, %o0
	.size	rotr8, .-rotr8
	.align 4
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	save	%sp, -176, %sp
	mov	255, %g1
	sllx	%g1, 8, %g1
	and	%i0, %g1, %g1
	srlx	%g1, 8, %g1
	and	%i0, 0xff, %i0
	sll	%i0, 8, %i0
	or	%g1, %i0, %i0
	sllx	%i0, 48, %i0
	return	%i7+8
	 srlx	%o0, 48, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	save	%sp, -176, %sp
	srlx	%i0, 24, %g4
	sethi	%hi(16711680), %g3
	and	%i0, %g3, %g3
	srlx	%g3, 8, %g3
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	and	%g2, %i0, %g2
	sll	%g2, 8, %g2
	sll	%i0, 24, %g1
	or	%g1, %g2, %g1
	or	%g1, %g4, %i0
	or	%i0, %g3, %i0
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	save	%sp, -176, %sp
	mov	-1, %g3
	sllx	%g3, 56, %g3
	and	%i0, %g3, %g3
	srlx	%g3, 56, %g3
	mov	255, %g2
	sllx	%g2, 48, %g1
	and	%i0, %g1, %g1
	srlx	%g1, 40, %g1
	or	%g1, %g3, %g1
	sllx	%g2, 40, %g3
	and	%i0, %g3, %g3
	srlx	%g3, 24, %g3
	or	%g1, %g3, %g1
	sllx	%g2, 32, %g3
	and	%i0, %g3, %g3
	srlx	%g3, 8, %g3
	or	%g1, %g3, %g1
	sethi	%hi(4278190080), %g3
	and	%i0, %g3, %g3
	sllx	%g3, 8, %g3
	or	%g1, %g3, %g1
	sethi	%hi(16711680), %g3
	and	%i0, %g3, %g3
	sllx	%g3, 24, %g3
	or	%g1, %g3, %g1
	sllx	%g2, 8, %g2
	and	%i0, %g2, %g2
	sllx	%g2, 40, %g2
	or	%g1, %g2, %g1
	sllx	%i0, 56, %i0
	return	%i7+8
	 or	%g1, %o0, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L354
	 mov	0, %g1
.L357:
	andcc	%g2, 1, %g0
	be,a	%xcc, .L355
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L356
	 add	%g1, 1, %i0
.L355:
.L354:
	cmp	%g1, 32
	bne	%icc, .L357
	 srl	%i0, %g1, %g2
	mov	0, %i0
.L356:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -176, %sp
	brz	%i0, .L362
	 mov	1, %g1
	ba,pt	%xcc, .L364
	 andcc	%i0, 1, %g0
.L361:
	add	%g1, 1, %g1
	andcc	%i0, 1, %g0
.L364:
	be,a	%xcc, .L361
	 sra	%i0, 1, %i0
	return	%i7+8
	 sra	%g1, 0, %o0
.L362:
	mov	0, %g1
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	libiberty_ffs, .-libiberty_ffs
	.section	".rodata"
	.align 4
.LC0:
	.long	-8388609
	.align 4
.LC1:
	.long	2139095039
	.section	".text"
	.align 4
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	save	%sp, -176, %sp
	sethi	%hi(.LC0), %g1
	ld	[%g1+%lo(.LC0)], %f8
	fcmpes	%fcc2, %f1, %f8
	fbl	%fcc2, .L368
	 sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	fbule	%fcc3, .L371
	 nop
	ba,pt	%xcc, .L366
	 mov	1, %i0
.L368:
	ba,pt	%xcc, .L366
	 mov	1, %i0
.L371:
	mov	0, %i0
.L366:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	gl_isinff, .-gl_isinff
	.section	".rodata"
	.align 8
.LC4:
	.long	-1048577
	.long	-1
	.align 8
.LC5:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	save	%sp, -176, %sp
	sethi	%hi(.LC4), %g1
	ldd	[%g1+%lo(.LC4)], %f8
	fcmped	%fcc0, %f0, %f8
	fbl	%fcc0, .L375
	 sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	fbule	%fcc1, .L378
	 nop
	ba,pt	%xcc, .L373
	 mov	1, %i0
.L375:
	ba,pt	%xcc, .L373
	 mov	1, %i0
.L378:
	mov	0, %i0
.L373:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	gl_isinfd, .-gl_isinfd
	.section	".rodata"
	.align 16
.LC8:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align 16
.LC9:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	save	%sp, -256, %sp
	std	%f0, [%fp+1967]
	std	%f2, [%fp+1975]
	ldx	[%fp+1967], %i4
	ldx	[%fp+1975], %i5
	stx	%i4, [%fp+2031]
	stx	%i5, [%fp+2039]
	sethi	%hi(.LC8), %g1
	ldx	[%g1+%lo(.LC8)], %g2
	ldx	[%g1+%lo(.LC8+8)], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_flt, 0
	 add	%fp, 2031, %o0
	brnz	%o0, .L382
	 sethi	%hi(.LC9), %g1
	stx	%i4, [%fp+1999]
	stx	%i5, [%fp+2007]
	ldx	[%g1+%lo(.LC9)], %g2
	ldx	[%g1+%lo(.LC9+8)], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_fgt, 0
	 add	%fp, 1999, %o0
	brz,a	%o0, .L385
	 mov	0, %i0
	ba,pt	%xcc, .L380
	 mov	1, %i0
.L382:
	mov	1, %i0
.L385:
.L380:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	save	%sp, -208, %sp
	st	%i1, [%fp+2027]
	ld	[%fp+2027], %f8
	fitod	%f8, %f2
	call	_Qp_dtoq, 0
	 add	%fp, 2031, %o0
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g3
	stx	%g2, [%i0]
	stx	%g3, [%i0+8]
	return	%i7+8
	 nop
	.size	_Qp_itoq, .-_Qp_itoq
	.section	".rodata"
	.align 4
.LC12:
	.long	1056964608
	.align 4
.LC13:
	.long	1073741824
	.section	".text"
	.align 4
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	save	%sp, -176, %sp
	fcmps	%fcc2, %f1, %f1
	fbu	%fcc2, .L388
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f1, %f8
	fbe	%fcc3, .L388
	 cmp	%i1, 0
	bge	%icc, .L392
	 sethi	%hi(.LC12), %g1
	ba,pt	%xcc, .L391
	 ld	[%g1+%lo(.LC12)], %f8
.L392:
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f8
.L391:
	andcc	%i1, 1, %g0
	bne,a	%xcc, .L390
	 fmuls	%f1, %f8, %f1
.L390:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L388
	 nop
	ba,pt	%xcc, .L391
	 fmuls	%f8, %f8, %f8
.L388:
	return	%i7+8
	 fmovs	%f1, %f0
	.size	ldexpf, .-ldexpf
	.section	".rodata"
	.align 8
.LC16:
	.long	1071644672
	.long	0
	.align 8
.LC17:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	save	%sp, -176, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu	%fcc0, .L399
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f0, %f8
	fbe	%fcc1, .L399
	 cmp	%i1, 0
	bge	%icc, .L398
	 sethi	%hi(.LC16), %g1
	ba,pt	%xcc, .L397
	 ldd	[%g1+%lo(.LC16)], %f8
.L398:
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f8
.L397:
	andcc	%i1, 1, %g0
	bne,a	%xcc, .L396
	 fmuld	%f0, %f8, %f0
.L396:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L399
	 nop
	ba,pt	%xcc, .L397
	 fmuld	%f8, %f8, %f8
.L399:
	return	%i7+8
	 nop
	.size	ldexp, .-ldexp
	.section	".rodata"
	.align 16
.LC20:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.align 16
.LC21:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	save	%sp, -496, %sp
	std	%f0, [%fp+1727]
	std	%f2, [%fp+1735]
	ldx	[%fp+1727], %i4
	ldx	[%fp+1735], %i5
	stx	%i4, [%fp+2031]
	stx	%i5, [%fp+2039]
	stx	%i4, [%fp+2015]
	stx	%i5, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be	%xcc, .L401
	 add	%fp, 1967, %o2
	stx	%i4, [%fp+1983]
	stx	%i5, [%fp+1991]
	stx	%i4, [%fp+1967]
	stx	%i5, [%fp+1975]
	add	%fp, 1983, %o1
	call	_Qp_add, 0
	 add	%fp, 1999, %o0
	stx	%i4, [%fp+1951]
	stx	%i5, [%fp+1959]
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	add	%fp, 1935, %o1
	call	_Qp_feq, 0
	 add	%fp, 1951, %o0
	brnz	%o0, .L401
	 cmp	%i2, 0
	bge	%icc, .L405
	 sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i0
	ba,pt	%xcc, .L404
	 ldx	[%g1+%lo(.LC20+8)], %i1
.L405:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i0
	ldx	[%g1+%lo(.LC21+8)], %i1
.L404:
	andcc	%i2, 1, %g0
	be	%xcc, .L403
	 add	%fp, 1839, %o2
	stx	%i4, [%fp+1855]
	stx	%i5, [%fp+1863]
	stx	%i0, [%fp+1839]
	stx	%i1, [%fp+1847]
	add	%fp, 1855, %o1
	call	_Qp_mul, 0
	 add	%fp, 1871, %o0
	ldx	[%fp+1871], %i4
	ldx	[%fp+1879], %i5
.L403:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz	%i2, .L401
	 add	%fp, 1743, %o2
	stx	%i0, [%fp+1759]
	stx	%i1, [%fp+1767]
	stx	%i0, [%fp+1743]
	stx	%i1, [%fp+1751]
	add	%fp, 1759, %o1
	call	_Qp_mul, 0
	 add	%fp, 1775, %o0
	ldx	[%fp+1775], %i0
	ba,pt	%xcc, .L404
	 ldx	[%fp+1783], %i1
.L401:
	stx	%i4, [%fp+1727]
	stx	%i5, [%fp+1735]
	ldd	[%fp+1727], %f0
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L407
	 mov	0, %g1
.L408:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L407:
	cmp	%g1, %i2
	bne,a	%xcc, .L408
	 ldub	[%i1+%g1], %g3
	return	%i7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -176, %sp
	call	strlen, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L410
	 add	%i0, %o0, %o0
.L412:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L410:
	brz,a	%i2, .L414
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	%icc, .L412
	 add	%i1, 1, %i1
	brz,a	%i2, .L414
	 stb	%g0, [%o0]
.L414:
	return	%i7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	save	%sp, -176, %sp
	mov	0, %g1
.L418:
	cmp	%g1, %i1
	be	%xcc, .L417
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a	%icc, .L418
	 add	%g1, 1, %g1
.L417:
	return	%i7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L426
	 ldsb	[%i0], %g1
.L422:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	be	%icc, .L428
	 nop
	ba,pt	%xcc, .L427
	 ldsb	[%g1], %g2
.L425:
	ldsb	[%g1], %g2
.L427:
	cmp	%g2, 0
	bne	%icc, .L422
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L426:
	cmp	%g1, 0
	bne	%icc, .L425
	 mov	%i1, %g1
	mov	0, %i0
.L428:
	return	%i7+8
	 nop
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	0, %i0
	ldsb	[%g1], %g2
.L433:
	cmp	%g2, %i1
	be,a	%icc, .L430
	 mov	%g1, %i0
.L430:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a	%icc, .L433
	 ldsb	[%g1], %g2
	return	%i7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -176, %sp
	call	strlen, 0
	 mov	%i1, %o0
	brz	%o0, .L440
	 mov	%o0, %i5
	ba,pt	%xcc, .L436
	 ldsb	[%i1], %i4
.L437:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	%icc, .L440
	 nop
	add	%i0, 1, %i0
.L436:
	sra	%i4, 0, %o1
	call	strchr, 0
	 mov	%i0, %o0
	brnz	%o0, .L437
	 mov	%o0, %i0
.L440:
	return	%i7+8
	 nop
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	save	%sp, -176, %sp
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbuge	%fcc2, .L442
	 nop
	fcmped	%fcc3, %f2, %f8
	fbg,a	%fcc3, .L454
	 fnegd	%f0, %f0
.L442:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule	%fcc0, .L454
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,a	%fcc1, .L454
	 fnegd	%f0, %f0
.L454:
	return	%i7+8
	 nop
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -176, %sp
	sub	%i1, %i3, %i5
	brz	%i3, .L464
	 add	%i0, %i5, %i5
	cmp	%i1, %i3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brnz	%g1, .L461
	 cmp	%i0, %i5
	ba,pt	%xcc, .L463
	 nop
.L459:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne	%icc, .L458
	 add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be	%icc, .L464
	 nop
.L458:
	add	%i0, 1, %i0
	cmp	%i0, %i5
.L463:
	bleu,a	%xcc, .L459
	 ldsb	[%i0], %g2
	return	%i7+8
	 mov	0, %o0
.L461:
	mov	0, %i0
.L464:
	return	%i7+8
	 nop
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -176, %sp
	mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %o0, %i2, %o0
	.size	mempcpy, .-mempcpy
	.section	".rodata"
	.align 8
.LC24:
	.long	1072693248
	.long	0
	.align 8
.LC25:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	save	%sp, -176, %sp
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbuge	%fcc2, .L480
	 nop
	fnegd	%f0, %f0
	ba,pt	%xcc, .L467
	 mov	1, %g3
.L480:
	mov	0, %g3
.L467:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbge	%fcc3, .L477
	 fzero	%f8
	ba,pt	%xcc, .L481
	 fcmpd	%fcc1, %f0, %f8
.L471:
	sethi	%hi(.LC25), %g2
	ldd	[%g2+%lo(.LC25)], %f8
	ba,pt	%xcc, .L469
	 fmuld	%f0, %f8, %f0
.L477:
	mov	0, %g1
.L469:
	sethi	%hi(.LC24), %g2
	ldd	[%g2+%lo(.LC24)], %f8
	fcmped	%fcc0, %f0, %f8
	fbge,a	%fcc0, .L471
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L482
	 st	%g1, [%i1]
.L481:
	mov	0, %g2
	movne	%fcc1, 1, %g2
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g1
	movl	%fcc2, 1, %g1
	and	%g1, %g2, %g1
	andcc	%g1, 0xff, %g0
	bne	%icc, .L478
	 mov	0, %g1
	ba,pt	%xcc, .L482
	 st	%g1, [%i1]
.L474:
	faddd	%f0, %f0, %f0
.L478:
	sethi	%hi(.LC25), %g2
	ldd	[%g2+%lo(.LC25)], %f8
	fcmped	%fcc3, %f0, %f8
	fbl,a	%fcc3, .L474
	 add	%g1, -1, %g1
	st	%g1, [%i1]
.L482:
	cmp	%g3, 0
	bne,a	%icc, .L483
	 fnegd	%f0, %f0
.L483:
	return	%i7+8
	 nop
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -176, %sp
	mov	%i0, %g1
	ba,pt	%xcc, .L485
	 mov	0, %i0
.L487:
	brnz,a	%g2, .L486
	 add	%i0, %i1, %i0
.L486:
	add	%i1, %i1, %i1
	srlx	%g1, 1, %g1
.L485:
	brnz	%g1, .L487
	 and	%g1, 1, %g2
	return	%i7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L489
	 mov	1, %g1
.L491:
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L489:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L496
	 cmp	%i1, 0
	bge	%icc, .L491
	 mov	0, %g2
	ba,pt	%xcc, .L499
	 cmp	%g1, 0
.L494:
	blu,a	%icc, .L498
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L498:
	ba,pt	%xcc, .L493
	 srlx	%i1, 1, %i1
.L496:
	mov	0, %g2
.L493:
	cmp	%g1, 0
.L499:
	bne,a	%icc, .L494
	 cmp	%i0, %i1
	brz,a	%i2, .L495
	 mov	%g2, %i0
.L495:
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	cmp	%i0, 0
	bge	%icc, .L501
	 nop
	xnor	%g0, %i0, %i0
	sllx	%i0, 56, %i0
	srax	%i0, 56, %i0
.L501:
	brz,a	%i0, .L503
	 mov	7, %i0
	sll	%i0, 8, %i0
	call	__clzdi2, 0
	 srl	%i0, 0, %o0
	add	%o0, -33, %i0
.L503:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -176, %sp
	brlz,a	%i0, .L505
	 xnor	%g0, %i0, %i0
.L505:
	brz,a	%i0, .L507
	 mov	63, %i0
	call	__clzdi2, 0
	 mov	%i0, %o0
	add	%o0, -1, %i0
.L507:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L509
	 mov	0, %g1
.L511:
	bne,a	%xcc, .L510
	 add	%g1, %i1, %g1
.L510:
	srlx	%i0, 1, %i0
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
.L509:
	brnz	%i0, .L511
	 andcc	%i0, 1, %g0
	return	%i7+8
	 srl	%g1, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -176, %sp
	srl	%i2, 3, %g3
	cmp	%i0, %i1
	blu	%xcc, .L513
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	%xcc, .L521
	 add	%i2, -1, %g1
.L513:
	srl	%g3, 0, %g3
	sllx	%g3, 3, %g3
	ba,pt	%xcc, .L515
	 mov	0, %g2
.L516:
	stx	%g4, [%i0+%g2]
	add	%g2, 8, %g2
.L515:
	cmp	%g2, %g3
	bne,a	%xcc, .L516
	 ldx	[%i1+%g2], %g4
	ba,pt	%xcc, .L517
	 srl	%g1, 0, %g1
.L518:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L517:
	cmp	%g1, %i2
	blu,a	%icc, .L518
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L520:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L521:
	cmp	%g1, -1
	bne	%icc, .L520
	 srl	%g1, 0, %i2
	return	%i7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -176, %sp
	cmp	%i0, %i1
	blu	%xcc, .L523
	 srl	%i2, 1, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	%xcc, .L529
	 add	%i2, -1, %g1
.L523:
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	ba,pt	%xcc, .L525
	 mov	0, %g2
.L526:
	lduh	[%i1+%g2], %g3
	sth	%g3, [%i0+%g2]
	add	%g2, 2, %g2
.L525:
	cmp	%g2, %g1
	bne	%xcc, .L526
	 andcc	%i2, 1, %g0
	be	%xcc, .L531
	 add	%i2, -1, %i2
	srl	%i2, 0, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L531:
	return	%i7+8
	 nop
.L528:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L529:
	cmp	%g1, -1
	bne	%icc, .L528
	 srl	%g1, 0, %i2
	return	%i7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -176, %sp
	srl	%i2, 2, %g3
	cmp	%i0, %i1
	blu	%xcc, .L533
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	%xcc, .L541
	 add	%i2, -1, %g1
.L533:
	srl	%g3, 0, %g3
	sllx	%g3, 2, %g3
	ba,pt	%xcc, .L535
	 mov	0, %g2
.L536:
	st	%g4, [%i0+%g2]
	add	%g2, 4, %g2
.L535:
	cmp	%g2, %g3
	bne,a	%xcc, .L536
	 lduw	[%i1+%g2], %g4
	ba,pt	%xcc, .L537
	 srl	%g1, 0, %g1
.L538:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L537:
	cmp	%g1, %i2
	blu,a	%icc, .L538
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L540:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L541:
	cmp	%g1, -1
	bne	%icc, .L540
	 srl	%g1, 0, %i2
	return	%i7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	save	%sp, -176, %sp
	sra	%i0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%i0, %i1, %g1
	smul	%g1, %i1, %g1
	sub	%i0, %g1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__modi, .-__modi
	.align 4
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtod	%f8, %f0
	.size	__uitod, .-__uitod
	.align 4
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtos	%f8, %f0
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -192, %sp
	brlz	%i0, .L550
	 srlx	%i0, 1, %g1
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtod	%f8, %f0
.L550:
	and	%i0, 1, %i0
	or	%g1, %i0, %g1
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f0
	return	%i7+8
	 faddd	%f0, %f0, %f0
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -192, %sp
	brlz	%i0, .L553
	 srlx	%i0, 1, %g1
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtos	%f8, %f0
.L553:
	and	%i0, 1, %i0
	or	%g1, %i0, %g1
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f0
	return	%i7+8
	 fadds	%f0, %f0, %f0
	.size	__ulltof, .-__ulltof
	.align 4
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	save	%sp, -176, %sp
	wr	%g0, 0, %y
	udiv	%i0, %i1, %g1
	smul	%g1, %i1, %i1
	sub	%i0, %i1, %i0
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L557
	 mov	0, %g1
.L559:
	sub	%g2, %g1, %g2
	sra	%i0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	%xcc, .L558
	 nop
	add	%g1, 1, %g1
.L557:
	cmp	%g1, 16
	bne	%icc, .L559
	 mov	15, %g2
.L558:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L561
	 mov	0, %g1
.L563:
	andcc	%g2, 1, %g0
	bne	%xcc, .L562
	 nop
	add	%g1, 1, %g1
.L561:
	cmp	%g1, 16
	bne	%icc, .L563
	 sra	%i0, %g1, %g2
.L562:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	".rodata"
	.align 4
.LC28:
	.long	1191182336
	.section	".text"
	.align 4
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	05
__fixunssfsi:
	save	%sp, -192, %sp
	sethi	%hi(.LC28), %g1
	ld	[%g1+%lo(.LC28)], %f8
	fcmpes	%fcc0, %f1, %f8
	fbul	%fcc0, .L569
	 nop
	fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
	sethi	%hi(32768), %g1
	ldx	[%fp+2039], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L567
	 stx	%g1, [%fp+2039]
.L569:
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
.L567:
	ldx	[%fp+2039], %i0
	return	%i7+8
	 nop
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	save	%sp, -176, %sp
	mov	0, %g2
	ba,pt	%xcc, .L571
	 mov	0, %g1
.L573:
	andcc	%g3, 1, %g0
	bne,a	%xcc, .L572
	 add	%g2, 1, %g2
.L572:
	add	%g1, 1, %g1
.L571:
	cmp	%g1, 16
	bne	%icc, .L573
	 sra	%i0, %g1, %g3
	return	%i7+8
	 and	%g2, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -176, %sp
	mov	0, %g2
	ba,pt	%xcc, .L575
	 mov	0, %g1
.L577:
	andcc	%g3, 1, %g0
	bne,a	%xcc, .L576
	 add	%g2, 1, %g2
.L576:
	add	%g1, 1, %g1
.L575:
	cmp	%g1, 16
	bne	%icc, .L577
	 sra	%i0, %g1, %g3
	return	%i7+8
	 sra	%g2, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L579
	 mov	0, %g1
.L581:
	bne,a	%xcc, .L580
	 add	%g1, %i1, %g1
.L580:
	srlx	%i0, 1, %i0
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
.L579:
	brnz	%i0, .L581
	 andcc	%i0, 1, %g0
	return	%i7+8
	 srl	%g1, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -176, %sp
	brz	%i0, .L587
	 mov	0, %g1
	ba,pt	%xcc, .L584
	 nop
.L586:
	bne,a	%xcc, .L585
	 add	%g1, %i0, %g1
.L585:
	sll	%i0, 1, %i0
	srl	%i0, 0, %i0
	srlx	%i1, 1, %i1
.L584:
	brnz	%i1, .L586
	 andcc	%i1, 1, %g0
	return	%i7+8
	 srl	%g1, 0, %o0
.L587:
	srl	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L590
	 mov	1, %g1
.L592:
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L590:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L597
	 cmp	%i1, 0
	bge	%icc, .L592
	 mov	0, %g2
	ba,pt	%xcc, .L600
	 cmp	%g1, 0
.L595:
	blu,a	%icc, .L599
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L599:
	ba,pt	%xcc, .L594
	 srlx	%i1, 1, %i1
.L597:
	mov	0, %g2
.L594:
	cmp	%g1, 0
.L600:
	bne,a	%icc, .L595
	 cmp	%i0, %i1
	brz,a	%i2, .L596
	 mov	%g2, %i0
.L596:
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	save	%sp, -176, %sp
	fcmpes	%fcc1, %f1, %f3
	fbl	%fcc1, .L605
	 mov	-1, %i0
	fbg,a	%fcc1, .L604
	 mov	1, %i0
	mov	0, %i0
.L604:
.L602:
.L605:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	save	%sp, -176, %sp
	fcmped	%fcc2, %f0, %f2
	fbl	%fcc2, .L610
	 mov	-1, %i0
	fbg,a	%fcc2, .L609
	 mov	1, %i0
	mov	0, %i0
.L609:
.L607:
.L610:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -176, %sp
	return	%i7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	save	%sp, -176, %sp
	return	%i7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	save	%sp, -176, %sp
	cmp	%i1, 0
	bge,a	%icc, .L619
	 mov	0, %g4
	sub	%g0, %i1, %i1
	sra	%i1, 0, %i1
	mov	1, %g4
.L619:
	mov	0, %g1
	ba,pt	%xcc, .L615
	 mov	0, %g2
.L617:
	andcc	%i1, 1, %g0
	bne,a	%xcc, .L616
	 add	%g1, %i0, %g1
.L616:
	sll	%i0, 1, %i0
	sra	%i0, 0, %i0
	sra	%i1, 1, %i1
	add	%g2, 1, %g2
.L615:
	cmp	%g0, %i1
	addx	%g0, 0, %g5
	and	%g2, 0xff, %g3
	cmp	%g3, 31
	mov	0, %g3
	movleu	%icc, 1, %g3
	andcc	%g3, %g5, %g0
	bne	%icc, .L617
	 cmp	%g4, 0
	bne,a	%icc, .L618
	 sub	%g0, %g1, %g1
.L618:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	save	%sp, -176, %sp
	brgez	%i0, .L625
	 mov	1, %i5
	ba,pt	%xcc, .L622
	 sub	%g0, %i0, %i0
.L625:
	mov	0, %i5
.L622:
	brgez	%i1, .L623
	 cmp	%g0, %i5
	sub	%g0, %i1, %i1
	subx	%g0, -1, %i5
.L623:
	mov	0, %o2
	srl	%i1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	cmp	%i5, 0
	be	%icc, .L626
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L626:
	return	%i7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	save	%sp, -176, %sp
	brgez	%i0, .L631
	 mov	1, %i5
	ba,pt	%xcc, .L628
	 sub	%g0, %i0, %i0
.L631:
	mov	0, %i5
.L628:
	brlz,a	%i1, .L629
	 sub	%g0, %i1, %i1
.L629:
	mov	1, %o2
	srl	%i1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	cmp	%i5, 0
	be	%icc, .L632
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L632:
	return	%i7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L634
	 mov	1, %g1
.L636:
	sll	%i1, 1, %i1
	sllx	%i1, 48, %i1
	srlx	%i1, 48, %i1
	add	%g1, %g1, %g1
.L634:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L641
	 sll	%i1, 16, %g2
	cmp	%g2, 0
	bge	%icc, .L636
	 mov	0, %g2
	ba,pt	%xcc, .L644
	 sll	%g1, 16, %g3
.L639:
	blu,a	%icc, .L643
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sllx	%i0, 48, %i0
	srlx	%i0, 48, %i0
	or	%g2, %g1, %g2
	sll	%g1, 16, %g1
.L643:
	srl	%g1, 17, %g1
	ba,pt	%xcc, .L638
	 srlx	%i1, 1, %i1
.L641:
	mov	0, %g2
.L638:
	sll	%g1, 16, %g3
.L644:
	cmp	%g3, 0
	bne,a	%icc, .L639
	 cmp	%i0, %i1
	brz,a	%i2, .L640
	 mov	%g2, %i0
.L640:
	sllx	%i0, 48, %i0
	return	%i7+8
	 srlx	%o0, 48, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L646
	 mov	1, %g1
.L648:
	add	%i1, %i1, %i1
	add	%g1, %g1, %g1
.L646:
	cmp	%i1, %i0
	mov	0, %g3
	movlu	%xcc, 1, %g3
	mov	0, %g2
	movrne	%g1, 1, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L653
	 sethi	%hi(2147483648), %g2
	and	%i1, %g2, %g2
	brz	%g2, .L648
	 mov	0, %g2
	ba,pt	%xcc, .L650
	 nop
.L651:
	blu,a	%xcc, .L656
	 srlx	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L656:
	ba,pt	%xcc, .L650
	 srlx	%i1, 1, %i1
.L653:
	mov	0, %g2
.L650:
	brnz	%g1, .L651
	 cmp	%i0, %i1
	brz,a	%i2, .L655
	 mov	%g2, %i0
.L655:
	return	%i7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -176, %sp
	andcc	%i1, 32, %g0
	be	%xcc, .L658
	 mov	%i0, %g1
	sll	%i0, %i1, %g1
	return	%i7+8
	 sllx	%g1, 32, %o0
.L658:
	brz	%i1, .L662
	 mov	%i0, %g2
	sll	%i0, %i1, %i0
	srlx	%g1, 32, %g1
	sll	%g1, %i1, %g1
	sub	%g0, %i1, %i1
	srl	%g2, %i1, %g2
	or	%g2, %g1, %g2
	sllx	%g2, 32, %g2
	srl	%i0, 0, %i0
	or	%i0, %g2, %i0
.L662:
	return	%i7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	save	%sp, -176, %sp
	andcc	%i2, 64, %g0
	be	%xcc, .L664
	 mov	%i1, %g3
	mov	0, %i1
	return	%i7+8
	 sllx	%g3, %o2, %o0
.L664:
	brz	%i2, .L668
	 sllx	%i0, %i2, %g2
	sllx	%i1, %i2, %i1
	sub	%g0, %i2, %i2
	srlx	%g3, %i2, %g1
	or	%g1, %g2, %i0
.L668:
	return	%i7+8
	 nop
	.size	__ashlti3, .-__ashlti3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -176, %sp
	andcc	%i1, 32, %g0
	be	%xcc, .L670
	 mov	%i0, %g2
	srlx	%i0, 32, %g1
	srax	%i0, 31, %i0
	sra	%g1, %i1, %g1
	srl	%g1, 0, %g1
	mov	-1, %g2
	sllx	%g2, 32, %g2
	and	%i0, %g2, %i0
	return	%i7+8
	 or	%o0, %g1, %o0
.L670:
	brz	%i1, .L674
	 sub	%g0, %i1, %g1
	srlx	%i0, 32, %i0
	sll	%i0, %g1, %g1
	srl	%g2, %i1, %g2
	or	%g1, %g2, %g1
	srl	%g1, 0, %g1
	sra	%i0, %i1, %i0
	sllx	%i0, 32, %i0
	or	%i0, %g1, %i0
.L674:
	return	%i7+8
	 nop
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	save	%sp, -176, %sp
	andcc	%i2, 64, %g0
	be	%xcc, .L676
	 mov	%i0, %g4
	srax	%i0, 63, %i0
	return	%i7+8
	 srax	%g4, %o2, %o1
.L676:
	brz	%i2, .L680
	 sub	%g0, %i2, %g2
	srax	%i0, %i2, %i0
	sllx	%g4, %g2, %g1
	srlx	%i1, %i2, %i2
	or	%g1, %i2, %i1
.L680:
	return	%i7+8
	 nop
	.size	__ashrti3, .-__ashrti3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -176, %sp
	srlx	%i0, 56, %i3
	srlx	%i0, 40, %i4
	mov	255, %g1
	sllx	%g1, 8, %g2
	and	%i4, %g2, %i4
	srlx	%i0, 24, %i5
	sethi	%hi(16711680), %g2
	and	%i5, %g2, %i5
	srlx	%i0, 8, %g5
	sethi	%hi(4278190080), %g2
	and	%g5, %g2, %g5
	sllx	%i0, 8, %g4
	sllx	%g1, 32, %g2
	and	%g4, %g2, %g4
	sllx	%i0, 24, %g3
	sllx	%g1, 40, %g2
	and	%g3, %g2, %g3
	sllx	%i0, 40, %g2
	sllx	%g1, 48, %g1
	and	%g2, %g1, %g2
	sllx	%i0, 56, %g1
	or	%g1, %i3, %g1
	or	%g1, %i4, %g1
	or	%g1, %i5, %g1
	or	%g1, %g5, %g1
	or	%g1, %g4, %g1
	or	%g1, %g3, %g1
	return	%i7+8
	 or	%g1, %g2, %o0
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	save	%sp, -176, %sp
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
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	save	%sp, -176, %sp
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%i0, %g1
	bleu	%icc, .L684
	 mov	16, %g1
	mov	0, %g1
.L684:
	mov	16, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	andcc	%i0, %g2, %g0
	be	%icc, .L685
	 mov	8, %g2
	mov	0, %g2
.L685:
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%i0, %g3, %i0
	andcc	%i0, 240, %g0
	bne	%icc, .L690
	 add	%g1, %g2, %g1
	ba,pt	%xcc, .L686
	 mov	4, %g2
.L690:
	mov	0, %g2
.L686:
	mov	4, %g3
	sub	%g3, %g2, %g3
	srl	%i0, %g3, %i0
	andcc	%i0, 12, %g0
	bne	%icc, .L691
	 add	%g1, %g2, %g1
	ba,pt	%xcc, .L687
	 mov	2, %g3
.L691:
	mov	0, %g3
.L687:
	mov	2, %g2
	sub	%g2, %g3, %g4
	srl	%i0, %g4, %i0
	add	%g1, %g3, %g1
	and	%i0, 2, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sub	%g2, %i0, %g2
	smul	%g3, %g2, %g3
	add	%g1, %g3, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __clzti2
	.type	__clzti2, #function
	.proc	04
__clzti2:
	save	%sp, -176, %sp
	mov	0, %i5
	movre	%i0, -1, %i5
	andn	%i0, %i5, %o0
	and	%i5, %i1, %g1
	call	__clzdi2, 0
	 or	%o0, %g1, %o0
	and	%i5, 64, %i5
	add	%o0, %i5, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clzti2, .-__clzti2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	save	%sp, -176, %sp
	srlx	%i0, 32, %g2
	srlx	%i1, 32, %g1
	cmp	%g2, %g1
	bl,a	%icc, .L699
	 mov	0, %i0
	bg,a	%icc, .L699
	 mov	2, %i0
	cmp	%i1, %i0
	bgu,a	%icc, .L699
	 mov	0, %i0
	blu,a	%icc, .L698
	 mov	2, %i0
	ba,pt	%xcc, .L694
	 mov	1, %i0
	mov	2, %i0
.L698:
.L694:
.L699:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	save	%sp, -176, %sp
	mov	%i1, %o1
	call	__cmpdi2, 0
	 mov	%i0, %o0
	add	%o0, -1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global __cmpti2
	.type	__cmpti2, #function
	.proc	04
__cmpti2:
	save	%sp, -176, %sp
	cmp	%i2, %i0
	bg,a	%xcc, .L707
	 mov	0, %i0
	bl,a	%xcc, .L707
	 mov	2, %i0
	cmp	%i3, %i1
	bgu,a	%xcc, .L707
	 mov	0, %i0
	blu,a	%xcc, .L706
	 mov	2, %i0
	ba,pt	%xcc, .L702
	 mov	1, %i0
	mov	2, %i0
.L706:
.L702:
.L707:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__cmpti2, .-__cmpti2
	.align 4
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	save	%sp, -176, %sp
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	andcc	%i0, %g1, %g0
	be	%icc, .L709
	 mov	16, %g1
	mov	0, %g1
.L709:
	srl	%i0, %g1, %i0
	andcc	%i0, 0xff, %g0
	be	%icc, .L710
	 mov	8, %g2
	mov	0, %g2
.L710:
	srl	%i0, %g2, %i0
	andcc	%i0, 15, %g0
	bne	%xcc, .L715
	 add	%g1, %g2, %g1
	ba,pt	%xcc, .L711
	 mov	4, %g2
.L715:
	mov	0, %g2
.L711:
	srl	%i0, %g2, %i0
	andcc	%i0, 3, %g0
	bne	%xcc, .L716
	 add	%g1, %g2, %g1
	ba,pt	%xcc, .L712
	 mov	2, %g2
.L716:
	mov	0, %g2
.L712:
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
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __ctzti2
	.type	__ctzti2, #function
	.proc	04
__ctzti2:
	save	%sp, -176, %sp
	mov	0, %i5
	movre	%i1, -1, %i5
	and	%i5, %i0, %i0
	andn	%i1, %i5, %o0
	call	__ctzdi2, 0
	 or	%o0, %i0, %o0
	and	%i5, 64, %i5
	add	%o0, %i5, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__ctzti2, .-__ctzti2
	.align 4
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -176, %sp
	brnz	%i1, .L719
	 nop
	brz,a	%i0, .L721
	 mov	0, %o0
	call	__ctzdi2, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L720
	 add	%o0, 65, %o0
.L719:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
.L721:
.L720:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__ffsti2, .-__ffsti2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -176, %sp
	andcc	%i1, 32, %g0
	be	%xcc, .L723
	 srlx	%i0, 32, %g3
	return	%i7+8
	 srl	%g3, %o1, %o0
.L723:
	brz	%i1, .L727
	 srlx	%i0, 32, %g1
	sub	%g0, %i1, %g2
	sll	%g1, %g2, %g2
	srl	%i0, %i1, %g3
	or	%g2, %g3, %g2
	srl	%g2, 0, %g2
	srl	%g1, %i1, %i0
	sllx	%i0, 32, %i0
	or	%i0, %g2, %i0
.L727:
	return	%i7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	save	%sp, -176, %sp
	andcc	%i2, 64, %g0
	be	%xcc, .L729
	 mov	%i0, %g4
	mov	0, %i0
	return	%i7+8
	 srlx	%g4, %o2, %o1
.L729:
	brz	%i2, .L733
	 sub	%g0, %i2, %g2
	srlx	%i0, %i2, %i0
	sllx	%g4, %g2, %g1
	srlx	%i1, %i2, %i2
	or	%g1, %i2, %i1
.L733:
	return	%i7+8
	 nop
	.size	__lshrti3, .-__lshrti3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -176, %sp
	sethi	%hi(64512), %i5
	or	%i5, 1023, %i5
	and	%i0, %i5, %i4
	and	%i1, %i5, %i3
	mov	-1, %g5
	sllx	%g5, 32, %g3
	smul	%i4, %i3, %g2
	srl	%g2, 16, %g1
	and	%g2, %i5, %g4
	srl	%i0, 16, %i0
	smul	%i0, %i3, %i3
	add	%g1, %i3, %g1
	sll	%g1, 16, %g2
	add	%g2, %g4, %g2
	srl	%g1, 16, %g1
	sllx	%g1, 32, %g1
	srlx	%g5, 32, %g5
	and	%g5, %g2, %g2
	or	%g2, %g1, %g2
	srl	%g2, 16, %g1
	and	%g2, %i5, %g4
	srl	%g4, 0, %g4
	and	%g2, %g3, %g2
	or	%g2, %g4, %g2
	srl	%i1, 16, %i1
	smul	%i4, %i1, %i4
	add	%g1, %i4, %g1
	sll	%g1, 16, %i5
	add	%i5, %g4, %g4
	srl	%g4, 0, %g4
	and	%g2, %g3, %g3
	or	%g3, %g4, %g2
	srlx	%g3, 32, %g3
	srl	%g1, 16, %g1
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	and	%g2, %g5, %g2
	or	%g2, %g1, %g2
	srlx	%g1, 32, %g1
	smul	%i0, %i1, %i0
	add	%i0, %g1, %i0
	sllx	%i0, 32, %i0
	and	%g2, %g5, %g2
	return	%i7+8
	 or	%g2, %o0, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -176, %sp
	mov	%i0, %i5
	srl	%i1, 0, %o1
	call	__muldsi3, 0
	 srl	%i0, 0, %o0
	srlx	%o0, 32, %g2
	srlx	%i0, 32, %i0
	smul	%i0, %i1, %i0
	srlx	%i1, 32, %i1
	smul	%i1, %i5, %i1
	add	%i0, %i1, %g1
	add	%g1, %g2, %g1
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %i0
	return	%i7+8
	 nop
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global __mulddi3
	.type	__mulddi3, #function
	.proc	05
__mulddi3:
	save	%sp, -176, %sp
	mov	-1, %g4
	srlx	%g4, 32, %g4
	and	%i0, %g4, %i5
	and	%i1, %g4, %i4
	mulx	%i5, %i4, %g5
	srlx	%g5, 32, %g1
	and	%g5, %g4, %g5
	srlx	%i0, 32, %i0
	mulx	%i0, %i4, %i4
	add	%g1, %i4, %g1
	sllx	%g1, 32, %i4
	add	%i4, %g5, %g3
	srlx	%g1, 32, %g2
	srlx	%g3, 32, %g1
	and	%g3, %g4, %g4
	srlx	%i1, 32, %i1
	mulx	%i5, %i1, %i5
	add	%g1, %i5, %g1
	sllx	%g1, 32, %g5
	add	%g5, %g4, %g3
	srlx	%g1, 32, %g1
	add	%g1, %g2, %g1
	mulx	%i0, %i1, %i0
	add	%i0, %g1, %g2
	mov	%g2, %i0
	return	%i7+8
	 mov	%g3, %o1
	.size	__mulddi3, .-__mulddi3
	.align 4
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	save	%sp, -176, %sp
	mov	%i3, %o1
	call	__mulddi3, 0
	 mov	%i1, %o0
	mulx	%i3, %i0, %i5
	mulx	%i1, %i2, %i4
	add	%i5, %i4, %i5
	add	%i5, %o0, %g2
	mov	%g2, %i0
	jmp	%i7+8
	 restore %g0, %o1, %o1
	.size	__multi3, .-__multi3
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	save	%sp, -176, %sp
	return	%i7+8
	 sub	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.global __negti2
	.type	__negti2, #function
	.proc	05
__negti2:
	save	%sp, -176, %sp
	sub	%g0, %i1, %g3
	mov	0, %g1
	movrne	%g3, 1, %g1
	sub	%g0, %i0, %g2
	sub	%g2, %g1, %g2
	mov	%g2, %i0
	return	%i7+8
	 mov	%g3, %o1
	.size	__negti2, .-__negti2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -176, %sp
	srlx	%i0, 32, %g1
	xor	%g1, %i0, %i0
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
	return	%i7+8
	 and	%o0, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	save	%sp, -176, %sp
	xor	%i1, %i0, %i1
	srlx	%i1, 32, %g1
	xor	%g1, %i1, %i1
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
	return	%i7+8
	 and	%o0, 1, %o0
	.size	__parityti2, .-__parityti2
	.align 4
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	save	%sp, -176, %sp
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
	return	%i7+8
	 and	%o0, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	save	%sp, -176, %sp
	srlx	%i0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %g3
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	sub	%i0, %g1, %i0
	srlx	%i0, 2, %g3
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	sllx	%g2, 32, %g1
	add	%g1, %g2, %g1
	and	%g3, %g1, %g2
	and	%i0, %g1, %i0
	add	%g2, %i0, %i0
	srlx	%i0, 4, %g1
	add	%g1, %i0, %i0
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g2
	add	%g2, %g1, %g1
	and	%i0, %g1, %i0
	srlx	%i0, 32, %g1
	add	%g1, %i0, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	return	%i7+8
	 and	%o0, 127, %o0
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	save	%sp, -176, %sp
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
	return	%i7+8
	 and	%o0, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	save	%sp, -176, %sp
	sllx	%i0, 63, %g1
	srlx	%i1, 1, %g3
	or	%g1, %g3, %g3
	srlx	%i0, 1, %g2
	sethi	%hi(1431655424), %g4
	or	%g4, 341, %g4
	sllx	%g4, 32, %g1
	add	%g1, %g4, %g1
	and	%g2, %g1, %g4
	and	%g3, %g1, %g5
	sub	%i1, %g5, %g3
	cmp	%g3, %i1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	sub	%i0, %g4, %g2
	sub	%g2, %g1, %g2
	sllx	%g2, 62, %g1
	srlx	%g3, 2, %g5
	or	%g1, %g5, %g5
	srlx	%g2, 2, %g4
	sethi	%hi(858992640), %i5
	or	%i5, 819, %i5
	sllx	%i5, 32, %g1
	add	%g1, %i5, %g1
	and	%g4, %g1, %i4
	and	%g5, %g1, %i5
	and	%g2, %g1, %g4
	and	%g3, %g1, %g5
	add	%i5, %g5, %g3
	cmp	%g3, %i5
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%i4, %g4, %g2
	add	%g1, %g2, %g2
	sllx	%g2, 60, %g1
	srlx	%g3, 4, %i5
	or	%g1, %i5, %i5
	srlx	%g2, 4, %i4
	add	%i5, %g3, %g5
	cmp	%g5, %i5
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%i4, %g2, %g4
	add	%g1, %g4, %g4
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	sllx	%g2, 32, %g1
	add	%g1, %g2, %g1
	and	%g4, %g1, %i2
	and	%g5, %g1, %i3
	add	%i2, %i3, %g2
	srlx	%g2, 32, %g1
	add	%g1, %g2, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	return	%i7+8
	 and	%o0, 0xff, %o0
	.size	__popcountti2, .-__popcountti2
	.section	".rodata"
	.align 8
.LC30:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	save	%sp, -176, %sp
	srlx	%i1, 63, %g1
	and	%g1, 0xff, %g1
	sethi	%hi(.LC30), %g2
	ldd	[%g2+%lo(.LC30)], %f8
.L749:
	andcc	%i1, 1, %g0
	bne,a	%xcc, .L747
	 fmuld	%f8, %f0, %f8
.L747:
	srl	%i1, 31, %g2
	add	%g2, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L748
	 cmp	%g1, 0
	ba,pt	%xcc, .L749
	 fmuld	%f0, %f0, %f0
.L748:
	be	%icc, .L751
	 sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f0
	return	%i7+8
	 fdivd	%f0, %f8, %f0
.L751:
	return	%i7+8
	 fmovd	%f8, %f0
	.size	__powidf2, .-__powidf2
	.section	".rodata"
	.align 4
.LC32:
	.long	1065353216
	.section	".text"
	.align 4
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	save	%sp, -176, %sp
	srlx	%i1, 63, %g1
	and	%g1, 0xff, %g1
	sethi	%hi(.LC32), %g2
	ld	[%g2+%lo(.LC32)], %f0
.L755:
	andcc	%i1, 1, %g0
	bne,a	%xcc, .L753
	 fmuls	%f0, %f1, %f0
.L753:
	srl	%i1, 31, %g2
	add	%g2, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L754
	 cmp	%g1, 0
	ba,pt	%xcc, .L755
	 fmuls	%f1, %f1, %f1
.L754:
	be	%icc, .L758
	 sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f8
	fdivs	%f8, %f0, %f0
.L758:
	return	%i7+8
	 nop
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	save	%sp, -176, %sp
	srlx	%i0, 32, %g2
	srlx	%i1, 32, %g1
	cmp	%g2, %g1
	blu,a	%icc, .L765
	 mov	0, %i0
	bgu,a	%icc, .L765
	 mov	2, %i0
	cmp	%i1, %i0
	bgu,a	%icc, .L765
	 mov	0, %i0
	blu,a	%icc, .L764
	 mov	2, %i0
	ba,pt	%xcc, .L760
	 mov	1, %i0
	mov	2, %i0
.L764:
.L760:
.L765:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	save	%sp, -176, %sp
	mov	%i1, %o1
	call	__ucmpdi2, 0
	 mov	%i0, %o0
	add	%o0, -1, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 4
	.global __ucmpti2
	.type	__ucmpti2, #function
	.proc	04
__ucmpti2:
	save	%sp, -176, %sp
	cmp	%i2, %i0
	bgu,a	%xcc, .L773
	 mov	0, %i0
	blu,a	%xcc, .L773
	 mov	2, %i0
	cmp	%i3, %i1
	bgu,a	%xcc, .L773
	 mov	0, %i0
	blu,a	%xcc, .L772
	 mov	2, %i0
	ba,pt	%xcc, .L768
	 mov	1, %i0
	mov	2, %i0
.L772:
.L768:
.L773:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.common	s.0,7,8
	.global __ctzdi2
	.global __clzdi2
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_feq
	.global _Qp_add
	.global _Qp_cmp
	.global _Qp_dtoq
	.global _Qp_fgt
	.global _Qp_flt
	.global _Qp_flt
	.global _Qp_cmp
	.global _Qp_cmp
	.global _Qp_flt
	.global _Qp_cmp
	.global _Qp_cmp
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
