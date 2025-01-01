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
	bleu,pt	%xcc, .L4
	 add	%i0, %i2, %g4
	add	%i1, %i2, %i1
	ba,pt	%xcc, .L5
	 mov	%i2, %g1
.L6:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%g4, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L5:
	brnz,pt	%g1, .L6
	 sub	%i1, %i2, %g2
	return	%i7+8
	 nop
.L4:
	bne,pt	%xcc, .L8
	 mov	0, %g1
	return	%i7+8
	 nop
.L9:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L8:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L9
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
	ba,pt	%xcc, .L12
	 and	%i2, 0xff, %i2
.L14:
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L12:
	brz,pn	%i3, .L17
	 add	%i0, 1, %g1
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%g1, %i2
	bne,a,pt %icc, .L14
	 add	%i3, -1, %i3
	add	%i0, 1, %g1
.L17:
	mov	0, %i0
	return	%i7+8
	 movrne	%o3, %g1, %o0
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
	brz,pn	%i2, .L20
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L21
	 add	%i0, 1, %i0
.L20:
	return	%i7+8
	 movre	%o2, %g0, %o0
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L25
	 nop
.L27:
	add	%i0, 1, %i0
	add	%i1, 1, %i1
.L25:
	brz,pn	%i2, .L30
	 mov	0, %g1
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L27
	 add	%i2, -1, %i2
	brz,pt	%i2, .L28
	 mov	0, %g1
	ldub	[%i0], %g1
	ldub	[%i1], %g2
	sub	%g1, %g2, %g1
.L28:
.L30:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L32
	 mov	0, %g1
.L33:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L32:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L33
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
	ba,pt	%xcc, .L35
	 add	%i2, -1, %i2
.L37:
	cmp	%g1, %i1
	bne,pt	%icc, .L38
	 add	%i2, -1, %g2
	return	%i7+8
	 add	%o0, %o2, %o0
.L38:
	mov	%g2, %i2
.L35:
	cmp	%i2, -1
	bne,a,pt %xcc, .L37
	 ldub	[%i0+%i2], %g1
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
	ba,pt	%xcc, .L40
	 mov	%i0, %g1
.L41:
	add	%g1, 1, %g1
.L40:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L41
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
	ba,pt	%xcc, .L45
	 ldub	[%i1], %g1
.L44:
	add	%i0, 1, %i0
	ldub	[%i1], %g1
.L45:
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L44
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
.L49:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L50
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L49
	 add	%i0, 1, %i0
.L50:
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
.L55:
	cmp	%g1, %i1
	be,pn	%icc, .L56
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L55
	 ldsb	[%i0], %g1
	mov	0, %i0
.L56:
	return	%i7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L61
	 ldsb	[%i0], %g2
.L60:
	add	%i1, 1, %i1
	ldsb	[%i0], %g2
.L61:
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L59
	 cmp	%g2, 0
	bne,a,pt %icc, .L60
	 add	%i0, 1, %i0
.L59:
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
.L64:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L64
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
	brz,pn	%i2, .L66
	 mov	0, %g1
	ba,pt	%xcc, .L67
	 mov	%i0, %g2
.L69:
	add	%i1, 1, %i1
.L67:
	ldub	[%g2], %g1
	cmp	%g1, 0
	be,pn	%icc, .L68
	 add	%i2, -1, %g1
	add	%g1, %i0, %g1
	sub	%g1, %g2, %g1
	mov	0, %g3
	movrne	%g1, 1, %g3
	ldub	[%i1], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%g3, %g1, %g0
	be,a,pn	%icc, .L71
	 ldub	[%g2], %g1
	ldub	[%g2], %g3
	ldub	[%i1], %g1
	cmp	%g3, %g1
	be,a,pt	%icc, .L69
	 add	%g2, 1, %g2
.L68:
	ldub	[%g2], %g1
.L71:
	ldub	[%i1], %g2
	sub	%g1, %g2, %g1
.L66:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L73
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
	bg,a,pt	%xcc, .L74
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
	subx	%g0, -1, %i0
	return	%i7+8
	 or	%g1, %o0, %o0
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
	subx	%g0, -1, %g2
	add	%i0, -9, %i0
	cmp	%i0, 4
	mov	0, %i0
	movleu	%icc, 1, %i0
	return	%i7+8
	 or	%o0, %g2, %o0
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
	mov	0, %g2
	movleu	%icc, 1, %g2
	add	%i0, -127, %g1
	cmp	%g1, 32
	mov	0, %g1
	movleu	%icc, 1, %g1
	orcc	%g2, %g1, %g0
	bne,pt	%icc, .L86
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L86
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 3
	addx	%g0, 0, %g3
.L86:
	return	%i7+8
	 sra	%g3, 0, %o0
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
	bgu,a,pt %icc, .L92
	 sethi	%hi(8192), %g1
	add	%i0, 1, %i0
	and	%i0, 127, %i0
	cmp	%i0, 32
	mov	0, %g1
	ba,pt	%xcc, .L93
	 movgu	%icc, 1, %g1
.L92:
	or	%g1, 39, %g1
	cmp	%g1, %i0
	subx	%g0, -1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%i0, %g1, %g1
	sethi	%hi(46080), %g2
	or	%g2, 981, %g2
	cmp	%g2, %g1
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L93
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%i0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L93
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%i0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L93
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %i0, %i0
	cmp	%g0, %i0
	addx	%g0, 0, %g1
.L93:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -176, %sp
	add	%i0, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L99
	 mov	1, %g1
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 6
	addx	%g0, 0, %g1
.L99:
	return	%i7+8
	 sra	%g1, 0, %o0
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
	fbu,pn	%fcc0, .L111
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L107
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L110
	 nop
	return	%i7+8
	 fsubd	%f0, %f2, %f0
.L107:
	return	%i7+8
	 fmovd	%f2, %f0
.L110:
	fzero	%f0
.L111:
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
	fbu,pn	%fcc3, .L115
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L116
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L119
	 nop
	return	%i7+8
	 fsubs	%f1, %f3, %f0
.L115:
	return	%i7+8
	 fmovs	%f1, %f0
.L116:
	return	%i7+8
	 fmovs	%f3, %f0
.L119:
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
	fbu,pn	%fcc2, .L124
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L129
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L122
	 fcmped	%fcc0, %f0, %f2
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	fmovrdgez	%g1, %f0, %f2
	return	%i7+8
	 fmovd	%f2, %f0
.L122:
	fmovdl	%fcc0, %f2, %f8
	return	%i7+8
	 fmovd	%f8, %f0
.L124:
	return	%i7+8
	 fmovd	%f2, %f0
.L129:
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
	fbu,pn	%fcc1, .L134
	 nop
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L135
	 sethi	%hi(-2147483648), %g3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L132
	 fcmpes	%fcc3, %f1, %f3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	cmp	%g1, 0
	fmovsge	%icc, %f1, %f3
	return	%i7+8
	 fmovs	%f3, %f0
.L132:
	fmovsl	%fcc3, %f3, %f1
	return	%i7+8
	 fmovs	%f1, %f0
.L134:
	return	%i7+8
	 fmovs	%f3, %f0
.L135:
	return	%i7+8
	 fmovs	%f1, %f0
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -320, %sp
	std	%f0, [%fp+1935]
	std	%f2, [%fp+1943]
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L143
	 ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_cmp, 0
	 add	%fp, 1999, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L144
	 ldd	[%fp+1935], %f12
	ldd	[%fp+1943], %f14
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g2, 63, %g2
	ldd	[%fp+1919], %f8
	ldd	[%fp+1927], %f10
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L141
	 ldx	[%fp+1935], %g2
	std	%f12, [%fp+1935]
	ldx	[%fp+1935], %g1
	fmovrdgez	%g1, %f12, %f8
	fmovrdgez	%g1, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L141:
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1951, %o1
	call	_Qp_flt, 0
	 add	%fp, 1967, %o0
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	ldd	[%fp+1919], %f8
	ldd	[%fp+1927], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L143:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L144:
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
	fbu,pn	%fcc0, .L152
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L157
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L150
	 fcmped	%fcc2, %f0, %f2
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	fmovrdgez	%g1, %f2, %f8
	return	%i7+8
	 fmovd	%f8, %f0
.L150:
	fmovdl	%fcc2, %f0, %f2
	return	%i7+8
	 fmovd	%f2, %f0
.L152:
	return	%i7+8
	 fmovd	%f2, %f0
.L157:
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
	fbu,pn	%fcc3, .L162
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L163
	 sethi	%hi(-2147483648), %g3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L160
	 fcmpes	%fcc1, %f1, %f3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	cmp	%g1, 0
	fmovsge	%icc, %f3, %f1
	return	%i7+8
	 fmovs	%f1, %f0
.L160:
	fmovsl	%fcc1, %f1, %f3
	return	%i7+8
	 fmovs	%f3, %f0
.L162:
	return	%i7+8
	 fmovs	%f3, %f0
.L163:
	return	%i7+8
	 fmovs	%f1, %f0
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -320, %sp
	std	%f0, [%fp+1935]
	std	%f2, [%fp+1943]
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L171
	 ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_cmp, 0
	 add	%fp, 1999, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L172
	 ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g2, 63, %g2
	ldd	[%fp+1919], %f12
	ldd	[%fp+1927], %f14
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L169
	 ldx	[%fp+1935], %g2
	std	%f8, [%fp+1935]
	ldx	[%fp+1935], %g1
	fmovd	%f8, %f0
	fmovd	%f10, %f2
	fmovrdgez	%g1, %f12, %f0
	return	%i7+8
	 fmovrdgez	%g1, %f14, %f2
.L169:
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1951, %o1
	call	_Qp_flt, 0
	 add	%fp, 1967, %o0
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L171:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L172:
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
	sethi	%hi(s.0), %g2
	ba,pt	%xcc, .L177
	 or	%g2, %lo(s.0), %g2
.L178:
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ldub	[%g1+%g3], %g1
	stb	%g1, [%g2]
	add	%g2, 1, %g2
	srl	%i0, 6, %i0
.L177:
	cmp	%i0, 0
	bne,pt	%icc, .L178
	 and	%i0, 63, %g3
	stb	%g0, [%g2]
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
	sethi	%hi(seed), %g3
	ldx	[%g3+%lo(seed)], %i0
	sethi	%hi(1481765888), %g1
	or	%g1, 45, %g1
	sethi	%hi(1284865024), %g2
	or	%g2, 813, %g2
	sllx	%g1, 32, %g1
	add	%g1, %g2, %g1
	mulx	%i0, %g1, %i0
	add	%i0, 1, %i0
	stx	%i0, [%g3+%lo(seed)]
	return	%i7+8
	 srlx	%o0, 33, %o0
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -176, %sp
	brnz,a,pt %i1, .L182
	 ldx	[%i1], %g1
	stx	%g0, [%i0+8]
	stx	%g0, [%i0]
.L185:
	return	%i7+8
	 nop
.L182:
	stx	%g1, [%i0]
	stx	%i1, [%i0+8]
	stx	%i0, [%i1]
	ldx	[%i0], %g1
	brnz,a,pt %g1, .L185
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
	brz,a,pn %g1, .L189
	 ldx	[%i0+8], %g1
	ldx	[%i0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%i0+8], %g1
.L189:
	brz,pn	%g1, .L190
	 nop
	ldx	[%i0], %g2
	stx	%g2, [%g1]
.L190:
	return	%i7+8
	 nop
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -176, %sp
	ldx	[%i2], %l1
	mov	%i1, %l0
	ba,pt	%xcc, .L192
	 mov	0, %i5
.L195:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L193
	 add	%l0, %i3, %l0
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L193:
	add	%i5, 1, %i5
.L192:
	cmp	%i5, %l1
	bne,pt	%xcc, .L195
	 mov	%l0, %o1
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	mov	%i3, %o2
	mov	%i0, %o1
	call	memcpy, 0
	 add	%i1, %l1, %o0
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
	ba,pt	%xcc, .L197
	 mov	0, %i5
.L200:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L198
	 add	%i2, %i3, %i2
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L198:
	add	%i5, 1, %i5
.L197:
	cmp	%i5, %l0
	bne,pt	%xcc, .L200
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
.L204:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L204
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L210
	 cmp	%g1, 45
	bne,pt	%icc, .L206
	 mov	0, %g3
	ba,pt	%xcc, .L205
	 mov	1, %g3
.L210:
	mov	0, %g3
.L205:
	add	%i0, 1, %i0
.L206:
	ba,pt	%xcc, .L207
	 mov	0, %g1
.L208:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L207:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L208
	 sll	%g1, 2, %g2
	sub	%g0, %g1, %g2
	cmp	%g3, 0
	move	%icc, %g2, %g1
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	05
atol:
	save	%sp, -176, %sp
.L215:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L215
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L221
	 cmp	%g1, 45
	bne,pt	%icc, .L217
	 mov	0, %g3
	ba,pt	%xcc, .L216
	 mov	1, %g3
.L221:
	mov	0, %g3
.L216:
	add	%i0, 1, %i0
.L217:
	ba,pt	%xcc, .L218
	 mov	0, %g1
.L219:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L218:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L219
	 sllx	%g1, 2, %g2
	sub	%g0, %g1, %g2
	cmp	%g3, 0
	move	%icc, %g2, %g1
	return	%i7+8
	 mov	%g1, %o0
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -176, %sp
.L226:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L226
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L232
	 cmp	%g1, 45
	bne,pt	%icc, .L228
	 mov	0, %g3
	ba,pt	%xcc, .L227
	 mov	1, %g3
.L232:
	mov	0, %g3
.L227:
	add	%i0, 1, %i0
.L228:
	ba,pt	%xcc, .L229
	 mov	0, %g1
.L230:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L229:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L230
	 sllx	%g1, 2, %g2
	sub	%g0, %g1, %g2
	cmp	%g3, 0
	move	%icc, %g2, %g1
	return	%i7+8
	 mov	%g1, %o0
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L236
	 nop
.L240:
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge,pt	%icc, .L237
	 nop
	ba,pt	%xcc, .L236
	 srlx	%i2, 1, %i2
.L237:
	ble,pn	%icc, .L241
	 add	%i5, %i3, %i1
	srlx	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L236:
	brnz,pt	%i2, .L240
	 srlx	%i2, 1, %i5
	return	%i7+8
	 mov	0, %o0
.L241:
	return	%i7+8
	 mov	%o5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L248
	 cmp	%i2, 0
.L246:
	mulx	%l0, %i3, %l0
	add	%i1, %l0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L247
	 nop
	ble,a,pn %icc, .L249
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L249:
	cmp	%i2, 0
.L248:
	bne,pt	%icc, .L246
	 sra	%i2, 1, %l0
	return	%i7+8
	 mov	0, %o0
.L247:
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
	mov	%i0, %g1
	sdivx	%i0, %i1, %i0
	mulx	%i0, %i1, %i1
	return	%i7+8
	 sub	%g1, %o1, %o1
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
	mov	%i0, %g1
	sdivx	%i0, %i1, %i0
	mulx	%i0, %i1, %i1
	return	%i7+8
	 sub	%g1, %o1, %o1
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
	mov	%i0, %g1
	sdivx	%i0, %i1, %i0
	mulx	%i0, %i1, %i1
	return	%i7+8
	 sub	%g1, %o1, %o1
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L263
	 lduw	[%i0], %g1
.L260:
	lduw	[%i0], %g1
.L263:
	cmp	%g1, 0
	be,pn	%icc, .L264
	 lduw	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L260
	 add	%i0, 4, %i0
	lduw	[%i0], %g1
.L264:
	cmp	%g1, 0
	mov	0, %g1
	movne	%icc, %i0, %g1
	return	%i7+8
	 mov	%g1, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L271
	 lduw	[%i0], %g2
.L268:
	add	%i1, 4, %i1
	lduw	[%i0], %g2
.L271:
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne,a,pn %icc, .L272
	 lduw	[%i0], %g3
	lduw	[%i0], %g1
	cmp	%g1, 0
	be,a,pn	%icc, .L272
	 lduw	[%i0], %g3
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L268
	 add	%i0, 4, %i0
	lduw	[%i0], %g3
.L272:
	lduw	[%i1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L269
	 mov	-1, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L269:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -176, %sp
	mov	0, %g1
	lduw	[%i1+%g1], %g2
.L275:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	lduw	[%g2+%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L275
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
.L278:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L278
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
	ba,pt	%xcc, .L280
	 nop
.L282:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L280:
	brz,pn	%i2, .L286
	 mov	0, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L281
	 nop
	lduw	[%i0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L281
	 nop
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L282
	 add	%i2, -1, %i2
.L281:
	brz,pt	%i2, .L283
	 mov	0, %g1
	lduw	[%i0], %g3
	lduw	[%i1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L283
	 mov	-1, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L283:
.L286:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L288
	 nop
.L290:
	add	%i0, 4, %i0
.L288:
	brz,pn	%i2, .L289
	 nop
	lduw	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L290
	 add	%i2, -1, %i2
.L289:
	return	%i7+8
	 movre	%o2, %g0, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L294
	 nop
.L296:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L294:
	brz,pn	%i2, .L300
	 mov	0, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L296
	 add	%i2, -1, %i2
	brz,pt	%i2, .L297
	 mov	0, %g1
	lduw	[%i0], %g3
	lduw	[%i1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L297
	 mov	-1, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L297:
.L300:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L302
	 mov	0, %g1
.L303:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L302:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a,pt %xcc, .L303
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
	be,pn	%xcc, .L312
	 sub	%i0, %i1, %g1
	sllx	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu,pt	%xcc, .L310
	 mov	0, %g1
	ba,pt	%xcc, .L307
	 mov	%g2, %i2
.L308:
	st	%g1, [%i0+%i2]
.L307:
	add	%i2, -4, %i2
	cmp	%i2, -4
	bne,a,pt %xcc, .L308
	 lduw	[%i1+%i2], %g1
.L312:
	return	%i7+8
	 nop
.L309:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L310:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a,pt %xcc, .L309
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
	ba,pt	%xcc, .L314
	 mov	%i0, %g1
.L315:
	st	%i1, [%g1-4]
.L314:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,pt	%xcc, .L315
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
	bgeu,pt	%xcc, .L317
	 nop
	add	%i0, %i2, %i0
	add	%i1, %i2, %i1
	ba,pt	%xcc, .L318
	 mov	%i2, %g1
.L319:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%i1, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L318:
	brnz,pt	%g1, .L319
	 sub	%i0, %i2, %g2
	return	%i7+8
	 nop
.L317:
	bne,pt	%xcc, .L321
	 mov	0, %g1
	return	%i7+8
	 nop
.L322:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L321:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L322
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
	sll	%i0, %i1, %g1
	mov	16, %g2
	sub	%g2, %i1, %g2
	srl	%i0, %g2, %i0
	or	%g1, %i0, %i0
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
	srl	%i0, %i1, %g1
	mov	16, %g2
	sub	%g2, %i1, %g2
	sll	%i0, %g2, %i0
	or	%g1, %i0, %i0
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
	sll	%i0, %i1, %g1
	mov	8, %g2
	sub	%g2, %i1, %g2
	srl	%i0, %g2, %i0
	or	%g1, %i0, %i0
	return	%i7+8
	 and	%o0, 0xff, %o0
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	save	%sp, -176, %sp
	srl	%i0, %i1, %g1
	mov	8, %g2
	sub	%g2, %i1, %g2
	sll	%i0, %g2, %i0
	or	%g1, %i0, %i0
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
	and	%i0, 255, %i0
	sll	%i0, 8, %i0
	or	%i0, %g1, %i0
	return	%i7+8
	 srl	%o0, 0, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	save	%sp, -176, %sp
	srlx	%i0, 24, %g3
	sethi	%hi(16711680), %g2
	and	%i0, %g2, %g2
	srlx	%g2, 8, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g1, %i0, %g1
	sll	%g1, 8, %g1
	sll	%i0, 24, %i0
	or	%i0, %g1, %i0
	or	%i0, %g3, %i0
	or	%i0, %g2, %i0
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
	ba,pt	%xcc, .L338
	 mov	0, %g1
.L341:
	andcc	%g2, 1, %g0
	be,a,pt	%xcc, .L339
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L340
	 add	%g1, 1, %i0
.L339:
.L338:
	cmp	%g1, 32
	bne,pt	%icc, .L341
	 srl	%i0, %g1, %g2
	mov	0, %i0
.L340:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -176, %sp
	brz,pn	%i0, .L343
	 mov	0, %g1
	ba,pt	%xcc, .L344
	 mov	1, %g1
.L345:
	add	%g1, 1, %g1
.L344:
	andcc	%i0, 1, %g0
	be,a,pt	%xcc, .L345
	 sra	%i0, 1, %i0
.L343:
	return	%i7+8
	 sra	%g1, 0, %o0
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
	fbl,pt	%fcc2, .L348
	 mov	1, %i0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %i0
	movg	%fcc3, 1, %i0
.L348:
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
	fbl,pt	%fcc0, .L354
	 mov	1, %i0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %i0
	movg	%fcc1, 1, %i0
.L354:
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
	ldx	[%fp+1967], %g2
	ldx	[%fp+1975], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	sethi	%hi(.LC8), %g1
	ldx	[%g1+%lo(.LC8)], %g2
	ldx	[%g1+%lo(.LC8+8)], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_flt, 0
	 add	%fp, 2031, %o0
	brnz,pt	%o0, .L360
	 mov	1, %i0
	ldx	[%fp+1967], %g2
	ldx	[%fp+1975], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	sethi	%hi(.LC9), %g1
	ldx	[%g1+%lo(.LC9)], %g2
	ldx	[%g1+%lo(.LC9+8)], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_fgt, 0
	 add	%fp, 1999, %o0
	mov	0, %i0
	movrne	%o0, 1, %i0
.L360:
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
	fbu,pn	%fcc2, .L367
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f1, %f8
	fbe,pt	%fcc3, .L367
	 sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f8
	cmp	%i1, 0
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	fmovsl	%icc, %f9, %f8
.L370:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L369
	 fmuls	%f1, %f8, %f1
.L369:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L367
	 nop
	ba,pt	%xcc, .L370
	 fmuls	%f8, %f8, %f8
.L367:
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
	fbu,pn	%fcc0, .L378
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f0, %f8
	fbe,pt	%fcc1, .L378
	 sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f8
	cmp	%i1, 0
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f10
	fmovdl	%icc, %f10, %f8
.L376:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L375
	 fmuld	%f0, %f8, %f0
.L375:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L378
	 nop
	ba,pt	%xcc, .L376
	 fmuld	%f8, %f8, %f8
.L378:
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
	ldx	[%fp+1727], %i0
	ldx	[%fp+1735], %i1
	stx	%i0, [%fp+2031]
	stx	%i1, [%fp+2039]
	stx	%i0, [%fp+2015]
	stx	%i1, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L380
	 add	%fp, 1967, %o2
	stx	%i0, [%fp+1983]
	stx	%i1, [%fp+1991]
	stx	%i0, [%fp+1967]
	stx	%i1, [%fp+1975]
	add	%fp, 1983, %o1
	call	_Qp_add, 0
	 add	%fp, 1999, %o0
	stx	%i0, [%fp+1951]
	stx	%i1, [%fp+1959]
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	add	%fp, 1935, %o1
	call	_Qp_feq, 0
	 add	%fp, 1951, %o0
	brnz,a,pt %o0, .L385
	 stx	%i0, [%fp+1727]
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	cmp	%i2, 0
	bge,pt	%icc, .L383
	 ldx	[%g1+%lo(.LC21+8)], %i5
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	ldx	[%g1+%lo(.LC20+8)], %i5
.L383:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L386
	 srl	%i2, 31, %g1
	stx	%i0, [%fp+1855]
	stx	%i1, [%fp+1863]
	stx	%i4, [%fp+1839]
	stx	%i5, [%fp+1847]
	add	%fp, 1839, %o2
	add	%fp, 1855, %o1
	call	_Qp_mul, 0
	 add	%fp, 1871, %o0
	ldx	[%fp+1871], %i0
	ldx	[%fp+1879], %i1
	srl	%i2, 31, %g1
.L386:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L380
	 add	%fp, 1743, %o2
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	stx	%i5, [%fp+1751]
	add	%fp, 1759, %o1
	call	_Qp_mul, 0
	 add	%fp, 1775, %o0
	ldx	[%fp+1775], %i4
	ba,pt	%xcc, .L383
	 ldx	[%fp+1783], %i5
.L380:
	stx	%i0, [%fp+1727]
.L385:
	stx	%i1, [%fp+1735]
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
	ba,pt	%xcc, .L388
	 mov	0, %g1
.L389:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L388:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L389
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
	ba,pt	%xcc, .L391
	 add	%i0, %o0, %o0
.L393:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L391:
	brz,a,pn %i2, .L395
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L393
	 add	%i1, 1, %i1
	brz,a,pt %i2, .L395
	 stb	%g0, [%o0]
.L395:
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
.L399:
	cmp	%g1, %i1
	be,pn	%xcc, .L398
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a,pn %icc, .L399
	 add	%g1, 1, %g1
.L398:
	return	%i7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L407
	 ldsb	[%i0], %g1
.L403:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	bne,a,pt %icc, .L408
	 ldsb	[%g1], %g2
	return	%i7+8
	 nop
.L406:
	ldsb	[%g1], %g2
.L408:
	cmp	%g2, 0
	bne,pt	%icc, .L403
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L407:
	cmp	%g1, 0
	bne,pt	%icc, .L406
	 mov	%i1, %g1
	return	%i7+8
	 mov	0, %o0
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
.L413:
	cmp	%g2, %i1
	move	%icc, %g1, %i0
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L413
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
	mov	%o0, %i5
	brz,pn	%o0, .L415
	 mov	%i0, %g1
	ba,pt	%xcc, .L416
	 ldsb	[%i1], %i4
.L417:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L419
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L416:
	sra	%i4, 0, %o1
	call	strchr, 0
	 mov	%i0, %o0
	brnz,pt	%o0, .L417
	 mov	%o0, %i0
	mov	0, %g1
.L419:
.L415:
	return	%i7+8
	 mov	%g1, %o0
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	save	%sp, -176, %sp
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbuge,pt %fcc2, .L421
	 nop
	fcmped	%fcc3, %f2, %f8
	fbg,a,pn %fcc3, .L433
	 fnegd	%f0, %f0
.L421:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L433
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,a,pn %fcc1, .L433
	 fnegd	%f0, %f0
.L433:
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
	add	%i0, %i5, %i5
	brz,pn	%i3, .L435
	 mov	%i0, %g1
	cmp	%i1, %i3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brnz,pn	%g1, .L440
	 cmp	%i0, %i5
	ba,pt	%xcc, .L442
	 nop
.L438:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a,pt %icc, .L443
	 add	%i0, 1, %i0
	add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be,pn	%icc, .L441
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L443:
	cmp	%i0, %i5
.L442:
	bleu,a,pt %xcc, .L438
	 ldsb	[%i0], %g2
	ba,pt	%xcc, .L435
	 mov	0, %g1
.L440:
	mov	0, %g1
.L441:
.L435:
	return	%i7+8
	 mov	%g1, %o0
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
	fbuge,pt %fcc2, .L459
	 nop
	fnegd	%f0, %f0
	ba,pt	%xcc, .L446
	 mov	1, %g2
.L459:
	mov	0, %g2
.L446:
	sethi	%hi(.LC24), %g3
	ldd	[%g3+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbge,pt	%fcc3, .L462
	 mov	0, %g1
	ba,pt	%xcc, .L460
	 fzero	%f8
.L450:
	sethi	%hi(.LC25), %g3
	ldd	[%g3+%lo(.LC25)], %f8
	fmuld	%f0, %f8, %f0
	sethi	%hi(.LC24), %g3
.L462:
	ldd	[%g3+%lo(.LC24)], %f8
	fcmped	%fcc0, %f0, %f8
	fbge,a,pt %fcc0, .L450
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L461
	 st	%g1, [%i1]
.L460:
	fcmpd	%fcc1, %f0, %f8
	mov	0, %g1
	movne	%fcc1, 1, %g1
	sethi	%hi(.LC25), %g3
	ldd	[%g3+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g3
	movl	%fcc2, 1, %g3
	andcc	%g3, %g1, %g0
	bne,pn	%icc, .L457
	 mov	0, %g1
	ba,pt	%xcc, .L461
	 st	%g1, [%i1]
.L453:
	faddd	%f0, %f0, %f0
.L457:
	sethi	%hi(.LC25), %g3
	ldd	[%g3+%lo(.LC25)], %f8
	fcmped	%fcc3, %f0, %f8
	fbl,a,pt %fcc3, .L453
	 add	%g1, -1, %g1
	st	%g1, [%i1]
.L461:
	fnegd	%f0, %f8
	cmp	%g2, 0
	return	%i7+8
	 fmovdne	%icc, %f8, %f0
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -176, %sp
	mov	%i0, %g1
	ba,pt	%xcc, .L464
	 mov	0, %i0
.L466:
	mov	%i1, %g2
	movre	%g3, %g0, %g2
	add	%i0, %g2, %i0
	add	%i1, %i1, %i1
	srlx	%g1, 1, %g1
.L464:
	brnz,pt	%g1, .L466
	 and	%g1, 1, %g3
	return	%i7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L468
	 mov	1, %g1
.L470:
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L468:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L475
	 cmp	%i1, 0
	bge,a,pt %icc, .L470
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L472
	 mov	0, %g2
.L473:
	blu,a,pt %icc, .L477
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L477:
	ba,pt	%xcc, .L472
	 srlx	%i1, 1, %i1
.L475:
	mov	0, %g2
.L472:
	cmp	%g1, 0
	bne,a,pt %icc, .L473
	 cmp	%i0, %i1
	movrne	%i2, %i0, %g2
	return	%i7+8
	 srl	%g2, 0, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	cmp	%i0, 0
	bge,pt	%icc, .L479
	 nop
	xnor	%g0, %i0, %i0
	sllx	%i0, 56, %i0
	srax	%i0, 56, %i0
.L479:
	brz,pn	%i0, .L480
	 mov	7, %o0
	sll	%i0, 8, %i0
	call	__clzdi2, 0
	 srl	%i0, 0, %o0
	add	%o0, -33, %o0
.L480:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -176, %sp
	srax	%i0, 63, %o0
	xor	%o0, %i0, %o0
	brz,pn	%o0, .L484
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L484:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L487
	 mov	0, %g1
.L489:
	andcc	%i0, 1, %g0
	movne	%xcc, %g2, %g1
	srlx	%i0, 1, %i0
	add	%i1, %i1, %i1
	srl	%i1, 0, %i1
.L487:
	brnz,pt	%i0, .L489
	 add	%g1, %i1, %g2
	return	%i7+8
	 srl	%g1, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -176, %sp
	srl	%i2, 3, %g4
	cmp	%i0, %i1
	blu,pt	%xcc, .L491
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a,pt %xcc, .L499
	 add	%i2, -1, %g1
.L491:
	srl	%g4, 0, %g4
	sllx	%g4, 3, %g4
	ba,pt	%xcc, .L493
	 mov	0, %g2
.L494:
	stx	%g3, [%i0+%g2]
	add	%g2, 8, %g2
.L493:
	cmp	%g2, %g4
	bne,a,pt %xcc, .L494
	 ldx	[%i1+%g2], %g3
	ba,pt	%xcc, .L495
	 srl	%g1, 0, %g1
.L496:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L495:
	cmp	%g1, %i2
	blu,a,pt %icc, .L496
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L498:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L499:
	cmp	%g1, -1
	bne,pt	%icc, .L498
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
	blu,pt	%xcc, .L501
	 srl	%i2, 1, %g3
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu,a,pt %xcc, .L507
	 add	%i2, -1, %g1
.L501:
	srl	%g3, 0, %g3
	add	%g3, %g3, %g3
	ba,pt	%xcc, .L503
	 mov	0, %g1
.L504:
	sth	%g2, [%i0+%g1]
	add	%g1, 2, %g1
.L503:
	cmp	%g1, %g3
	bne,a,pt %xcc, .L504
	 lduh	[%i1+%g1], %g2
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L509
	 add	%i2, -1, %i2
	srl	%i2, 0, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L509:
	return	%i7+8
	 nop
.L506:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L507:
	cmp	%g1, -1
	bne,pt	%icc, .L506
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
	srl	%i2, 2, %g4
	cmp	%i0, %i1
	blu,pt	%xcc, .L511
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a,pt %xcc, .L519
	 add	%i2, -1, %g1
.L511:
	srl	%g4, 0, %g4
	sllx	%g4, 2, %g4
	ba,pt	%xcc, .L513
	 mov	0, %g2
.L514:
	st	%g3, [%i0+%g2]
	add	%g2, 4, %g2
.L513:
	cmp	%g2, %g4
	bne,a,pt %xcc, .L514
	 lduw	[%i1+%g2], %g3
	ba,pt	%xcc, .L515
	 srl	%g1, 0, %g1
.L516:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L515:
	cmp	%g1, %i2
	blu,a,pt %icc, .L516
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L518:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L519:
	cmp	%g1, -1
	bne,pt	%icc, .L518
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
	brlz,pn	%i0, .L528
	 srlx	%i0, 1, %g1
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtod	%f8, %f0
.L528:
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
	brlz,pn	%i0, .L531
	 srlx	%i0, 1, %g1
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtos	%f8, %f0
.L531:
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
	ba,pt	%xcc, .L535
	 mov	0, %g2
.L537:
	sub	%g1, %g2, %g1
	sra	%i0, %g1, %g1
	andcc	%g1, 1, %g0
	bne,pn	%xcc, .L536
	 nop
	add	%g2, 1, %g2
.L535:
	cmp	%g2, 16
	bne,pt	%icc, .L537
	 mov	15, %g1
.L536:
	return	%i7+8
	 sra	%g2, 0, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L539
	 mov	0, %g1
.L541:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L540
	 nop
	add	%g1, 1, %g1
.L539:
	cmp	%g1, 16
	bne,pt	%icc, .L541
	 sra	%i0, %g1, %g2
.L540:
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
	fbul,pt	%fcc0, .L547
	 nop
	fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
	sethi	%hi(32768), %g1
	ldx	[%fp+2039], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L545
	 stx	%g1, [%fp+2039]
.L547:
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
.L545:
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
	mov	0, %g3
	ba,pt	%xcc, .L549
	 mov	0, %g1
.L551:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L549:
	cmp	%g1, 16
	bne,pt	%icc, .L551
	 sra	%i0, %g1, %g2
	return	%i7+8
	 and	%g3, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -176, %sp
	mov	0, %g3
	ba,pt	%xcc, .L553
	 mov	0, %g1
.L555:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L553:
	cmp	%g1, 16
	bne,pt	%icc, .L555
	 sra	%i0, %g1, %g2
	return	%i7+8
	 sra	%g3, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L557
	 mov	0, %g1
.L559:
	andcc	%i0, 1, %g0
	movne	%xcc, %g2, %g1
	srlx	%i0, 1, %i0
	add	%i1, %i1, %i1
	srl	%i1, 0, %i1
.L557:
	brnz,pt	%i0, .L559
	 add	%g1, %i1, %g2
	return	%i7+8
	 srl	%g1, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -176, %sp
	brz,pn	%i0, .L561
	 mov	0, %g1
	ba,pt	%xcc, .L562
	 nop
.L564:
	andcc	%i1, 1, %g0
	movne	%xcc, %g2, %g1
	add	%i0, %i0, %i0
	srl	%i0, 0, %i0
	srlx	%i1, 1, %i1
.L562:
	brnz,pt	%i1, .L564
	 add	%g1, %i0, %g2
.L561:
	return	%i7+8
	 srl	%g1, 0, %o0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L567
	 mov	1, %g1
.L569:
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L567:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L574
	 cmp	%i1, 0
	bge,a,pt %icc, .L569
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L571
	 mov	0, %g2
.L572:
	blu,a,pt %icc, .L576
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L576:
	ba,pt	%xcc, .L571
	 srlx	%i1, 1, %i1
.L574:
	mov	0, %g2
.L571:
	cmp	%g1, 0
	bne,a,pt %icc, .L572
	 cmp	%i0, %i1
	movrne	%i2, %i0, %g2
	return	%i7+8
	 srl	%g2, 0, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	save	%sp, -176, %sp
	fcmpes	%fcc1, %f1, %f3
	fbl,pn	%fcc1, .L578
	 mov	-1, %i0
	mov	0, %i0
	movg	%fcc1, 1, %i0
.L578:
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
	fbl,pn	%fcc2, .L582
	 mov	-1, %i0
	mov	0, %i0
	movg	%fcc2, 1, %i0
.L582:
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
	bge,pt	%icc, .L588
	 mov	0, %g5
	sub	%g0, %i1, %i1
	sra	%i1, 0, %i1
	mov	1, %g5
.L588:
	mov	0, %g2
	ba,pt	%xcc, .L589
	 mov	0, %g3
.L591:
	andcc	%i1, 1, %g0
	movne	%xcc, %g1, %g2
	add	%i0, %i0, %i0
	sra	%i0, 0, %i0
	sra	%i1, 1, %i1
	add	%g3, 1, %g3
.L589:
	cmp	%g0, %i1
	addx	%g0, 0, %g4
	and	%g3, 0xff, %g1
	cmp	%g1, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	andcc	%g1, %g4, %g0
	bne,pt	%icc, .L591
	 add	%g2, %i0, %g1
	sub	%g0, %g2, %g1
	cmp	%g5, 0
	movne	%icc, %g1, %g2
	return	%i7+8
	 sra	%g2, 0, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	save	%sp, -176, %sp
	brgez,pt %i0, .L596
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L596:
	brgez,pt %i1, .L600
	 mov	0, %o2
	sub	%g0, %i1, %i1
	xor	%i5, 1, %i5
.L600:
	srl	%i1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%i5, 0
	mov	%o0, %i0
	return	%i7+8
	 movne	%icc, %g1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	save	%sp, -176, %sp
	brgez,pt %i0, .L602
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L602:
	srax	%i1, 63, %g1
	xor	%i1, %g1, %i1
	sub	%i1, %g1, %i1
	mov	1, %o2
	srl	%i1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%i5, 0
	mov	%o0, %i0
	return	%i7+8
	 movne	%icc, %g1, %o0
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L607
	 mov	1, %g1
.L609:
	sllx	%i1, 48, %i1
	srlx	%i1, 48, %i1
	add	%g1, %g1, %g1
.L607:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L614
	 sll	%i1, 16, %g2
	cmp	%g2, 0
	bge,a,pt %icc, .L609
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L611
	 mov	0, %g3
.L612:
	blu,a,pt %icc, .L616
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sllx	%i0, 48, %i0
	srlx	%i0, 48, %i0
	or	%g3, %g1, %g3
	sll	%g1, 16, %g1
.L616:
	srl	%g1, 17, %g1
	ba,pt	%xcc, .L611
	 srlx	%i1, 1, %i1
.L614:
	mov	0, %g3
.L611:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L612
	 cmp	%i0, %i1
	movrne	%i2, %i0, %g3
	sllx	%g3, 48, %g3
	return	%i7+8
	 srlx	%g3, 48, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L618
	 mov	1, %g1
.L620:
	add	%g1, %g1, %g1
.L618:
	cmp	%i1, %i0
	mov	0, %g3
	movlu	%xcc, 1, %g3
	mov	0, %g2
	movrne	%g1, 1, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L625
	 sethi	%hi(2147483648), %g2
	and	%i1, %g2, %g2
	brz,a,pt %g2, .L620
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L622
	 mov	0, %g2
.L623:
	blu,a,pt %xcc, .L627
	 srlx	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L627:
	ba,pt	%xcc, .L622
	 srlx	%i1, 1, %i1
.L625:
	mov	0, %g2
.L622:
	brnz,pt	%g1, .L623
	 cmp	%i0, %i1
	movrne	%i2, %i0, %g2
	return	%i7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -176, %sp
	andcc	%i1, 32, %g0
	be,pt	%xcc, .L629
	 mov	%i0, %g1
	sll	%i0, %i1, %i0
	return	%i7+8
	 sllx	%o0, 32, %o0
.L629:
	brz,pn	%i1, .L633
	 srax	%g1, 32, %g2
	sll	%i0, %i1, %i0
	sll	%g2, %i1, %g2
	sub	%g0, %i1, %i1
	srl	%g1, %i1, %g1
	or	%g1, %g2, %g1
	sllx	%g1, 32, %g1
	srl	%i0, 0, %i0
	or	%i0, %g1, %i0
.L633:
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
	be,a,pt	%xcc, .L635
	 mov	%i0, %g2
	mov	0, %g3
	ba,pt	%xcc, .L637
	 sllx	%i1, %i2, %g2
.L635:
	brz,pn	%i2, .L637
	 mov	%i1, %g3
	sllx	%i1, %i2, %g3
	sllx	%i0, %i2, %g1
	sub	%g0, %i2, %i2
	srlx	%i1, %i2, %i2
	or	%i2, %g1, %g2
.L637:
	mov	%g2, %i0
	return	%i7+8
	 mov	%g3, %o1
	.size	__ashlti3, .-__ashlti3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -176, %sp
	andcc	%i1, 32, %g0
	be,pt	%xcc, .L640
	 mov	%i0, %g1
	srax	%i0, 32, %g1
	sra	%g1, %i1, %i1
	srl	%i1, 0, %i1
	sra	%g1, 31, %g1
	sllx	%g1, 32, %g1
	return	%i7+8
	 or	%g1, %o1, %o0
.L640:
	brz,pn	%i1, .L644
	 sub	%g0, %i1, %g2
	srax	%i0, 32, %i0
	sll	%i0, %g2, %g2
	srl	%g1, %i1, %g1
	or	%g2, %g1, %g2
	srl	%g2, 0, %g2
	sra	%i0, %i1, %i0
	sllx	%i0, 32, %i0
	or	%i0, %g2, %i0
.L644:
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
	be,a,pt	%xcc, .L646
	 mov	%i0, %g2
	srax	%i0, 63, %g2
	ba,pt	%xcc, .L648
	 srax	%i0, %i2, %g3
.L646:
	brz,pn	%i2, .L648
	 mov	%i1, %g3
	srax	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sllx	%i0, %g1, %g1
	srlx	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L648:
	mov	%g2, %i0
	return	%i7+8
	 mov	%g3, %o1
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
	cmp	%g1, %i0
	subx	%g0, -1, %g1
	sll	%g1, 4, %g1
	mov	16, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	and	%i0, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%i0, %g3, %i0
	add	%g1, %g2, %g1
	and	%i0, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g3
	sub	%g3, %g2, %g3
	srl	%i0, %g3, %i0
	add	%g1, %g2, %g1
	and	%i0, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g3
	sll	%g3, 1, %g3
	mov	2, %g2
	sub	%g2, %g3, %g4
	srl	%i0, %g4, %i0
	add	%g1, %g3, %g1
	and	%i0, 2, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sub	%g2, %i0, %g2
	smul	%g3, %g2, %g2
	add	%g1, %g2, %i0
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
	sra	%i5, 0, %g1
	andn	%i0, %g1, %o0
	and	%g1, %i1, %g1
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
	srax	%i0, 32, %g3
	srax	%i1, 32, %g2
	cmp	%g3, %g2
	bl,pn	%icc, .L663
	 mov	0, %g1
	cmp	%g3, %g2
	bg,pn	%icc, .L663
	 mov	2, %g1
	cmp	%i0, %i1
	blu,pn	%icc, .L663
	 mov	0, %g1
	cmp	%i1, %i0
	addx	%g0, 1, %g1
.L663:
	return	%i7+8
	 sra	%g1, 0, %o0
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
	cmp	%i0, %i2
	bl,pn	%xcc, .L670
	 mov	0, %g1
	bg,pn	%xcc, .L670
	 mov	2, %g1
	cmp	%i1, %i3
	blu,pn	%xcc, .L670
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L670:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__cmpti2, .-__cmpti2
	.align 4
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	save	%sp, -176, %sp
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%g1, %i0, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	sll	%g1, 4, %g1
	srl	%i0, %g1, %i0
	and	%i0, 255, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	srl	%i0, %g2, %i0
	add	%g1, %g2, %g1
	and	%i0, 15, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	srl	%i0, %g2, %i0
	add	%g1, %g2, %g1
	and	%i0, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 1, %g2
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
	sra	%i5, 0, %g1
	and	%g1, %i0, %o0
	andn	%i1, %g1, %g1
	call	__ctzdi2, 0
	 or	%g1, %o0, %o0
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
	brnz,pt	%i1, .L686
	 nop
	brz,pt	%i0, .L687
	 mov	0, %o0
	call	__ctzdi2, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L687
	 add	%o0, 65, %o0
.L686:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
.L687:
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
	be,pt	%xcc, .L690
	 srlx	%i0, 32, %g2
	return	%i7+8
	 srl	%g2, %o1, %o0
.L690:
	brz,pn	%i1, .L694
	 srlx	%i0, 32, %g1
	sub	%g0, %i1, %g3
	sll	%g1, %g3, %g3
	srl	%i0, %i1, %g2
	or	%g3, %g2, %g3
	srl	%g3, 0, %g3
	srl	%g1, %i1, %i0
	sllx	%i0, 32, %i0
	or	%i0, %g3, %i0
.L694:
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
	be,a,pt	%xcc, .L696
	 mov	%i0, %g2
	mov	0, %g2
	ba,pt	%xcc, .L698
	 srlx	%i0, %i2, %g3
.L696:
	brz,pn	%i2, .L698
	 mov	%i1, %g3
	srlx	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sllx	%i0, %g1, %g1
	srlx	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L698:
	mov	%g2, %i0
	return	%i7+8
	 mov	%g3, %o1
	.size	__lshrti3, .-__lshrti3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -176, %sp
	sethi	%hi(64512), %g5
	or	%g5, 1023, %g5
	and	%i0, %g5, %i5
	and	%i1, %g5, %g3
	smul	%i5, %g3, %g2
	mov	-1, %g4
	sllx	%g4, 32, %i4
	srl	%g2, 16, %g1
	and	%g5, %g2, %g2
	srl	%i0, 16, %i0
	smul	%i0, %g3, %g3
	add	%g1, %g3, %g1
	sll	%g1, 16, %g3
	add	%g3, %g2, %g3
	srl	%g1, 16, %g1
	sllx	%g1, 32, %g1
	srlx	%g4, 32, %g4
	and	%g4, %g3, %g3
	or	%g3, %g1, %g2
	srl	%g3, 16, %g1
	and	%g3, %g5, %g3
	and	%g2, %i4, %g2
	or	%g2, %g3, %g2
	srl	%i1, 16, %i1
	smul	%i5, %i1, %i5
	add	%g1, %i5, %g1
	sll	%g1, 16, %g5
	add	%g5, %g3, %g3
	srl	%g3, 0, %g3
	and	%g2, %i4, %g2
	or	%g2, %g3, %g2
	srax	%g2, 32, %g3
	srl	%g1, 16, %g1
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	and	%g2, %g4, %g2
	or	%g2, %g1, %g2
	srax	%g2, 32, %g1
	smul	%i0, %i1, %i0
	add	%i0, %g1, %i0
	sllx	%i0, 32, %i0
	and	%g2, %g4, %g2
	return	%i7+8
	 or	%g2, %o0, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -176, %sp
	srl	%i1, 0, %o1
	call	__muldsi3, 0
	 srl	%i0, 0, %o0
	srax	%o0, 32, %g2
	srax	%i0, 32, %g1
	smul	%g1, %i1, %g1
	srax	%i1, 32, %i1
	smul	%i1, %i0, %i1
	add	%g1, %i1, %g1
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
	and	%g4, %g3, %g4
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
	mov	%i1, %i5
	mov	%i3, %o1
	call	__mulddi3, 0
	 mov	%i1, %o0
	mov	%o1, %i1
	mulx	%i0, %i3, %g1
	mulx	%i2, %i5, %i2
	add	%g1, %i2, %g1
	jmp	%i7+8
	 restore %g1, %o0, %o0
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
	srax	%i1, 32, %g1
	xor	%i1, %g1, %i1
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
	srl	%i1, 31, %g2
	sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f8
.L715:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L713
	 fmuld	%f8, %f0, %f8
.L713:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L714
	 cmp	%g2, 0
	ba,pt	%xcc, .L715
	 fmuld	%f0, %f0, %f0
.L714:
	be,pt	%icc, .L718
	 fmovd	%f8, %f0
	sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f0
	fdivd	%f0, %f8, %f0
.L718:
	return	%i7+8
	 nop
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
	srl	%i1, 31, %g2
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f8
.L722:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L720
	 fmuls	%f8, %f1, %f8
.L720:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L721
	 cmp	%g2, 0
	ba,pt	%xcc, .L722
	 fmuls	%f1, %f1, %f1
.L721:
	be,pt	%icc, .L725
	 fmovs	%f8, %f0
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f0
	fdivs	%f0, %f8, %f0
.L725:
	return	%i7+8
	 nop
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	save	%sp, -176, %sp
	srlx	%i0, 32, %g3
	srlx	%i1, 32, %g2
	cmp	%g3, %g2
	blu,pn	%icc, .L727
	 mov	0, %g1
	cmp	%g3, %g2
	bgu,pn	%icc, .L727
	 mov	2, %g1
	cmp	%i0, %i1
	blu,pn	%icc, .L727
	 mov	0, %g1
	cmp	%i1, %i0
	addx	%g0, 1, %g1
.L727:
	return	%i7+8
	 sra	%g1, 0, %o0
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
	cmp	%i0, %i2
	blu,pn	%xcc, .L734
	 mov	0, %g1
	bgu,pn	%xcc, .L734
	 mov	2, %g1
	cmp	%i1, %i3
	blu,pn	%xcc, .L734
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L734:
	return	%i7+8
	 sra	%g1, 0, %o0
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
