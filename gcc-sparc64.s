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
	mov	0, %g2
	mov	0, %g3
	mov	%i0, %g2
	mov	%i1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	make_ti, .-make_ti
	.align 4
	.global make_tu
	.type	make_tu, #function
	.proc	017
make_tu:
	save	%sp, -176, %sp
	mov	0, %g2
	mov	0, %g3
	mov	%i0, %g2
	mov	%i1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
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
	bleu	%xcc, .L4
	 nop
	add	%i1, %i2, %i1
	add	%i0, %i2, %g4
	mov	%i2, %g2
	ba,pt	%xcc, .L5
	 nop
.L6:
	sub	%g0, %i2, %g1
	sub	%i1, %i2, %g3
	add	%g3, -1, %g3
	ldub	[%g3+%g2], %g3
	add	%g4, %g1, %g1
	add	%g1, -1, %g1
	stb	%g3, [%g1+%g2]
	add	%g2, -1, %g2
.L5:
	brnz	%g2, .L6
	 nop
	return	%i7+8
	 nop
.L4:
	cmp	%i0, %i1
	bne	%xcc, .L10
	 nop
	return	%i7+8
	 nop
.L9:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	ba,pt	%xcc, .L8
	 nop
.L10:
	mov	0, %g1
.L8:
	cmp	%g1, %i2
	bne	%xcc, .L9
	 nop
	return	%i7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	save	%sp, -176, %sp
	and	%i2, 0xff, %i2
	ba,pt	%xcc, .L12
	 nop
.L14:
	add	%i3, -1, %i3
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L12:
	brz	%i3, .L13
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%g1, %i2
	bne	%icc, .L14
	 nop
.L13:
	brz	%i3, .L16
	 nop
	add	%i0, 1, %i0
	return	%i7+8
	 nop
.L16:
	mov	0, %i0
	return	%i7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -176, %sp
	and	%i1, 0xff, %i1
	ba,pt	%xcc, .L18
	 nop
.L20:
	add	%i0, 1, %i0
	add	%i2, -1, %i2
.L18:
	brz	%i2, .L19
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne	%icc, .L20
	 nop
.L19:
	brnz	%i2, .L21
	 nop
	mov	0, %i0
.L21:
	return	%i7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L24
	 nop
.L26:
	add	%i2, -1, %i2
	add	%i0, 1, %i0
	add	%i1, 1, %i1
.L24:
	brz	%i2, .L25
	 nop
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be	%icc, .L26
	 nop
.L25:
	brz	%i2, .L28
	 nop
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	ba,pt	%xcc, .L27
	 nop
.L28:
	mov	0, %i0
.L27:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L30
	 nop
.L31:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L30:
	cmp	%g1, %i2
	bne	%xcc, .L31
	 nop
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
	add	%i2, -1, %i2
	ba,pt	%xcc, .L33
	 nop
.L35:
	ldub	[%i0+%i2], %g2
	add	%i2, -1, %g1
	cmp	%g2, %i1
	bne	%icc, .L36
	 nop
	add	%i0, %i2, %i0
	return	%i7+8
	 nop
.L36:
	mov	%g1, %i2
.L33:
	cmp	%i2, -1
	bne	%xcc, .L35
	 nop
	mov	0, %i0
	return	%i7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -176, %sp
	add	%i0, %i2, %i2
	mov	%i0, %g1
	ba,pt	%xcc, .L38
	 nop
.L39:
	stb	%i1, [%g1]
	add	%g1, 1, %g1
.L38:
	cmp	%g1, %i2
	bne	%xcc, .L39
	 nop
	return	%i7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L41
	 nop
.L42:
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L41:
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L42
	 nop
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
	ba,pt	%xcc, .L44
	 nop
.L46:
	add	%i0, 1, %i0
.L44:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be	%icc, .L45
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne	%icc, .L46
	 nop
.L45:
	return	%i7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	save	%sp, -176, %sp
.L49:
	ldsb	[%i0], %g1
	cmp	%g1, %i1
	be	%icc, .L48
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne	%icc, .L49
	 nop
	mov	0, %i0
.L48:
	return	%i7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L52
	 nop
.L54:
	add	%i0, 1, %i0
	add	%i1, 1, %i1
.L52:
	ldsb	[%i0], %g2
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne	%icc, .L53
	 nop
	mov	%g2, %g1
	cmp	%g1, 0
	bne	%icc, .L54
	 nop
.L53:
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	017
strlen:
	save	%sp, -176, %sp
	mov	%i0, %g1
	ba,pt	%xcc, .L56
	 nop
.L57:
	add	%g1, 1, %g1
.L56:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	%icc, .L57
	 nop
	sub	%g1, %i0, %i0
	return	%i7+8
	 nop
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	save	%sp, -176, %sp
	brz	%i2, .L63
	 nop
	mov	%i0, %g1
	ba,pt	%xcc, .L60
	 nop
.L62:
	add	%g1, 1, %g1
	add	%i1, 1, %i1
.L60:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be	%icc, .L61
	 nop
	add	%i2, -1, %g2
	add	%g2, %i0, %g2
	sub	%g2, %g1, %g2
	mov	0, %g3
	movrne	%g2, 1, %g3
	ldub	[%i1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L61
	 nop
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be	%icc, .L62
	 nop
.L61:
	ldub	[%g1], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	ba,pt	%xcc, .L59
	 nop
.L63:
	mov	0, %i0
.L59:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -176, %sp
	mov	%i0, %g1
	ba,pt	%xcc, .L65
	 nop
.L66:
	ldub	[%g1+1], %g2
	stb	%g2, [%i1]
	ldub	[%g1], %g2
	stb	%g2, [%i1+1]
	add	%i1, 2, %i1
	add	%g1, 2, %g1
.L65:
	add	%i0, %i2, %g2
	sub	%g2, %g1, %g2
	cmp	%g2, 1
	bg	%xcc, .L66
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	and	%i0, 1, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	and	%i0, 1, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	bne	%icc, .L79
	 nop
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu	%icc, .L80
	 nop
	sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 2
	bgu	%icc, .L81
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L78
	 nop
.L79:
	mov	1, %i0
	ba,pt	%xcc, .L78
	 nop
.L80:
	mov	1, %i0
	ba,pt	%xcc, .L78
	 nop
.L81:
	mov	0, %i0
.L78:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	save	%sp, -176, %sp
	cmp	%i0, 254
	bgu	%icc, .L84
	 nop
	add	%i0, 1, %i0
	and	%i0, 127, %i0
	cmp	%i0, 32
	mov	0, %i0
	movgu	%icc, 1, %i0
	ba,pt	%xcc, .L85
	 nop
.L84:
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
	bne	%icc, .L86
	 nop
	sethi	%hi(-57344), %g2
	add	%i0, %g2, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bleu	%icc, .L87
	 nop
	sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%i0, %g1, %g1
	sethi	%hi(1048576), %g2
	or	%g2, 3, %g2
	cmp	%g1, %g2
	bgu	%icc, .L88
	 nop
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%i0, %g1, %i0
	cmp	%i0, %g1
	be	%icc, .L89
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L85
	 nop
.L86:
	mov	1, %i0
	ba,pt	%xcc, .L85
	 nop
.L87:
	mov	1, %i0
	ba,pt	%xcc, .L85
	 nop
.L88:
	mov	0, %i0
	ba,pt	%xcc, .L85
	 nop
.L89:
	mov	0, %i0
.L85:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -176, %sp
	add	%i0, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L92
	 nop
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 5
	bgu	%icc, .L93
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L91
	 nop
.L92:
	mov	1, %i0
	ba,pt	%xcc, .L91
	 nop
.L93:
	mov	0, %i0
.L91:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	save	%sp, -176, %sp
	and	%i0, 127, %i0
	return	%i7+8
	 nop
	.size	toascii, .-toascii
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	save	%sp, -176, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu	%fcc0, .L96
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu	%fcc1, .L99
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule	%fcc2, .L102
	 nop
	fsubd	%f0, %f2, %f0
	return	%i7+8
	 nop
.L99:
	fmovd	%f2, %f0
	return	%i7+8
	 nop
.L102:
	fzero	%f0
.L96:
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
	fbu	%fcc3, .L106
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu	%fcc0, .L107
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule	%fcc1, .L110
	 nop
	fsubs	%f1, %f3, %f0
	return	%i7+8
	 nop
.L106:
	fmovs	%f1, %f0
	return	%i7+8
	 nop
.L107:
	fmovs	%f3, %f0
	return	%i7+8
	 nop
.L110:
	fzeros	%f0
	return	%i7+8
	 nop
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	save	%sp, -192, %sp
	fcmpd	%fcc2, %f0, %f0
	fbu	%fcc2, .L115
	 nop
	fcmpd	%fcc3, %f2, %f2
	fbu	%fcc3, .L112
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be	%icc, .L113
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	mov	%g2, %g1
	cmp	%g1, 0
	be	%icc, .L112
	 nop
	fmovd	%f2, %f0
	return	%i7+8
	 nop
.L113:
	fcmped	%fcc0, %f0, %f2
	fbuge	%fcc0, .L112
	 nop
	fmovd	%f2, %f0
	return	%i7+8
	 nop
.L115:
	fmovd	%f2, %f0
.L112:
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
	fbu	%fcc1, .L122
	 nop
	fcmps	%fcc2, %f3, %f3
	fbu	%fcc2, .L126
	 nop
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	%icc, .L123
	 nop
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	%icc, .L127
	 nop
	ba,pt	%xcc, .L122
	 nop
.L123:
	fcmpes	%fcc3, %f1, %f3
	fbuge	%fcc3, .L130
	 nop
	ba,pt	%xcc, .L122
	 nop
.L126:
	fmovs	%f1, %f3
	ba,pt	%xcc, .L122
	 nop
.L127:
	fmovs	%f1, %f3
	ba,pt	%xcc, .L122
	 nop
.L130:
	fmovs	%f1, %f3
.L122:
	fmovs	%f3, %f0
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
	add	%fp, 2031, %o0
	call	_Qp_cmp, 0
	 nop
	cmp	%o0, 3
	be	%xcc, .L135
	 nop
	stx	%i2, [%fp+1999]
	stx	%i3, [%fp+2007]
	stx	%i2, [%fp+1983]
	stx	%i3, [%fp+1991]
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	call	_Qp_cmp, 0
	 nop
	cmp	%o0, 3
	be	%xcc, .L136
	 nop
	mov	%i4, %g2
	srlx	%g2, 63, %g2
	mov	%i2, %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be	%icc, .L133
	 nop
	mov	%i4, %g1
	mov	%g2, %g1
	cmp	%g1, 0
	be	%icc, .L137
	 nop
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L133:
	stx	%i4, [%fp+1967]
	stx	%i5, [%fp+1975]
	stx	%i2, [%fp+1951]
	stx	%i3, [%fp+1959]
	add	%fp, 1951, %o1
	add	%fp, 1967, %o0
	call	_Qp_flt, 0
	 nop
	brz	%o0, .L140
	 nop
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L135:
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L136:
	stx	%i4, [%fp+1935]
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L137:
	stx	%i4, [%fp+1935]
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L140:
	stx	%i4, [%fp+1935]
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
	fbu	%fcc0, .L145
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu	%fcc1, .L142
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be	%icc, .L143
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	mov	%g2, %g1
	cmp	%g1, 0
	be	%icc, .L147
	 nop
	return	%i7+8
	 nop
.L143:
	fcmped	%fcc2, %f0, %f2
	fbuge	%fcc2, .L150
	 nop
	return	%i7+8
	 nop
.L145:
	fmovd	%f2, %f0
	return	%i7+8
	 nop
.L147:
	fmovd	%f2, %f0
	return	%i7+8
	 nop
.L150:
	fmovd	%f2, %f0
.L142:
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
	fbu	%fcc3, .L152
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu	%fcc0, .L156
	 nop
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	%icc, .L153
	 nop
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	cmp	%g1, 0
	be	%icc, .L152
	 nop
	fmovs	%f1, %f3
	ba,pt	%xcc, .L152
	 nop
.L153:
	fcmpes	%fcc1, %f1, %f3
	fbuge	%fcc1, .L152
	 nop
	fmovs	%f1, %f3
	ba,pt	%xcc, .L152
	 nop
.L156:
	fmovs	%f1, %f3
.L152:
	fmovs	%f3, %f0
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
	add	%fp, 2031, %o0
	call	_Qp_cmp, 0
	 nop
	cmp	%o0, 3
	be	%xcc, .L165
	 nop
	stx	%i4, [%fp+1999]
	stx	%i5, [%fp+2007]
	stx	%i4, [%fp+1983]
	stx	%i5, [%fp+1991]
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	call	_Qp_cmp, 0
	 nop
	cmp	%o0, 3
	be	%xcc, .L166
	 nop
	mov	%i2, %g2
	srlx	%g2, 63, %g2
	mov	%i4, %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be	%icc, .L163
	 nop
	mov	%i2, %g1
	mov	%g2, %g1
	cmp	%g1, 0
	be	%icc, .L167
	 nop
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L163:
	stx	%i2, [%fp+1967]
	stx	%i3, [%fp+1975]
	stx	%i4, [%fp+1951]
	stx	%i5, [%fp+1959]
	add	%fp, 1951, %o1
	add	%fp, 1967, %o0
	call	_Qp_flt, 0
	 nop
	brz	%o0, .L170
	 nop
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L165:
	stx	%i4, [%fp+1935]
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L166:
	stx	%i2, [%fp+1935]
	stx	%i3, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L167:
	stx	%i4, [%fp+1935]
	stx	%i5, [%fp+1943]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
.L170:
	stx	%i4, [%fp+1935]
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
	or	%g1, %lo(s.0), %g1
	ba,pt	%xcc, .L172
	 nop
.L173:
	and	%i0, 63, %g3
	sethi	%hi(digits), %g2
	or	%g2, %lo(digits), %g2
	ldub	[%g2+%g3], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%i0, 6, %i0
.L172:
	cmp	%i0, 0
	bne	%icc, .L173
	 nop
	stb	%g0, [%g1]
	sethi	%hi(s.0), %i0
	or	%i0, %lo(s.0), %i0
	return	%i7+8
	 nop
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
	srlx	%i0, 33, %i0
	return	%i7+8
	 nop
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -176, %sp
	brnz	%i1, .L177
	 nop
	stx	%g0, [%i0+8]
	stx	%g0, [%i0]
	return	%i7+8
	 nop
.L177:
	ldx	[%i1], %g1
	stx	%g1, [%i0]
	stx	%i1, [%i0+8]
	stx	%i0, [%i1]
	ldx	[%i0], %g1
	brz	%g1, .L176
	 nop
	stx	%i0, [%g1+8]
.L176:
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
	brz	%g1, .L180
	 nop
	ldx	[%i0+8], %g2
	stx	%g2, [%g1+8]
.L180:
	ldx	[%i0+8], %g1
	brz	%g1, .L179
	 nop
	ldx	[%i0], %g2
	stx	%g2, [%g1]
.L179:
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
	mov	0, %i5
	ba,pt	%xcc, .L183
	 nop
.L186:
	mov	%l1, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	add	%l1, %i3, %l1
	cmp	%o0, 0
	bne	%icc, .L184
	 nop
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i0
	return	%i7+8
	 nop
.L184:
	add	%i5, 1, %i5
.L183:
	cmp	%i5, %l0
	bne	%xcc, .L186
	 nop
	add	%l0, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l0, %l0
	add	%i1, %l0, %o0
	mov	%i3, %o2
	mov	%i0, %o1
	call	memcpy, 0
	 nop
	mov	%o0, %i0
	return	%i7+8
	 nop
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -176, %sp
	ldx	[%i2], %l0
	mov	%i1, %i2
	mov	0, %i5
	ba,pt	%xcc, .L188
	 nop
.L191:
	mov	%i2, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	add	%i2, %i3, %i2
	cmp	%o0, 0
	bne	%icc, .L189
	 nop
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i0
	return	%i7+8
	 nop
.L189:
	add	%i5, 1, %i5
.L188:
	cmp	%i5, %l0
	bne	%xcc, .L191
	 nop
	mov	0, %i0
	return	%i7+8
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L194
	 nop
.L195:
	add	%i0, 1, %i0
.L194:
	ldsb	[%i0], %o0
	call	isspace, 0
	 nop
	cmp	%o0, 0
	bne	%icc, .L195
	 nop
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	%icc, .L201
	 nop
	cmp	%g1, 45
	bne	%icc, .L202
	 nop
	mov	1, %g3
	ba,pt	%xcc, .L196
	 nop
.L201:
	mov	0, %g3
.L196:
	add	%i0, 1, %i0
	ba,pt	%xcc, .L197
	 nop
.L202:
	mov	0, %g3
.L197:
	mov	0, %g1
	ba,pt	%xcc, .L198
	 nop
.L199:
	sll	%g1, 2, %g2
	add	%g2, %g1, %g2
	add	%g2, %g2, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g2
	add	%g2, -48, %g2
	sub	%g1, %g2, %g1
.L198:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	%icc, .L199
	 nop
	cmp	%g3, 0
	bne	%icc, .L200
	 nop
	sub	%g0, %g1, %g1
.L200:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	05
atol:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L205
	 nop
.L206:
	add	%i0, 1, %i0
.L205:
	ldsb	[%i0], %o0
	call	isspace, 0
	 nop
	cmp	%o0, 0
	bne	%icc, .L206
	 nop
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	%icc, .L212
	 nop
	cmp	%g1, 45
	bne	%icc, .L213
	 nop
	mov	1, %g3
	ba,pt	%xcc, .L207
	 nop
.L212:
	mov	0, %g3
.L207:
	add	%i0, 1, %i0
	ba,pt	%xcc, .L208
	 nop
.L213:
	mov	0, %g3
.L208:
	mov	0, %g1
	ba,pt	%xcc, .L209
	 nop
.L210:
	sllx	%g1, 2, %g2
	add	%g2, %g1, %g2
	add	%g2, %g2, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g2
	add	%g2, -48, %g2
	sra	%g2, 0, %g2
	sub	%g1, %g2, %g1
.L209:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	%icc, .L210
	 nop
	cmp	%g3, 0
	bne	%icc, .L214
	 nop
	sub	%g0, %g1, %i0
	return	%i7+8
	 nop
.L214:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L216
	 nop
.L217:
	add	%i0, 1, %i0
.L216:
	ldsb	[%i0], %o0
	call	isspace, 0
	 nop
	cmp	%o0, 0
	bne	%icc, .L217
	 nop
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	%icc, .L223
	 nop
	cmp	%g1, 45
	bne	%icc, .L224
	 nop
	mov	1, %g3
	ba,pt	%xcc, .L218
	 nop
.L223:
	mov	0, %g3
.L218:
	add	%i0, 1, %i0
	ba,pt	%xcc, .L219
	 nop
.L224:
	mov	0, %g3
.L219:
	mov	0, %g1
	ba,pt	%xcc, .L220
	 nop
.L221:
	sllx	%g1, 2, %g2
	add	%g2, %g1, %g2
	add	%g2, %g2, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g2
	add	%g2, -48, %g2
	sra	%g2, 0, %g2
	sub	%g1, %g2, %g1
.L220:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	%icc, .L221
	 nop
	cmp	%g3, 0
	bne	%icc, .L225
	 nop
	sub	%g0, %g1, %i0
	return	%i7+8
	 nop
.L225:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L227
	 nop
.L231:
	srlx	%i2, 1, %i5
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	cmp	%o0, 0
	bge	%icc, .L228
	 nop
	srlx	%i2, 1, %i2
	ba,pt	%xcc, .L227
	 nop
.L228:
	cmp	%o0, 0
	ble	%icc, .L232
	 nop
	add	%i5, %i3, %i1
	srlx	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L227:
	brnz	%i2, .L231
	 nop
	mov	0, %i0
	return	%i7+8
	 nop
.L232:
	mov	%i5, %i0
	return	%i7+8
	 nop
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L234
	 nop
.L237:
	sra	%i2, 1, %l0
	mulx	%l0, %i3, %l0
	add	%i1, %l0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	mov	%i0, %o0
	call	%i4, 0
	 nop
	cmp	%o0, 0
	be	%icc, .L238
	 nop
	ble	%icc, .L236
	 nop
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
.L236:
	sra	%i2, 1, %i2
.L234:
	cmp	%i2, 0
	bne	%icc, .L237
	 nop
	mov	0, %i0
	return	%i7+8
	 nop
.L238:
	mov	%l0, %i0
	return	%i7+8
	 nop
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
	sub	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	05
labs:
	save	%sp, -176, %sp
	srax	%i0, 63, %g1
	xor	%g1, %i0, %i0
	sub	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	save	%sp, -176, %sp
	srax	%i0, 63, %g1
	xor	%g1, %i0, %i0
	sub	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L247
	 nop
.L249:
	add	%i0, 4, %i0
.L247:
	lduw	[%i0], %g1
	cmp	%g1, 0
	be	%icc, .L248
	 nop
	lduw	[%i0], %g1
	cmp	%g1, %i1
	bne	%icc, .L249
	 nop
.L248:
	lduw	[%i0], %g1
	cmp	%g1, 0
	bne	%icc, .L250
	 nop
	mov	0, %i0
.L250:
	return	%i7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L253
	 nop
.L255:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L253:
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne	%icc, .L254
	 nop
	lduw	[%i0], %g1
	cmp	%g1, 0
	be	%icc, .L254
	 nop
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne	%icc, .L255
	 nop
.L254:
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bl	%icc, .L257
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %i0
	movg	%icc, 1, %i0
	ba,pt	%xcc, .L256
	 nop
.L257:
	mov	-1, %i0
.L256:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -176, %sp
	mov	0, %g1
.L259:
	lduw	[%i1+%g1], %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	lduw	[%g2+%g1], %g2
	cmp	%g2, 0
	bne	%icc, .L259
	 nop
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
	ba,pt	%xcc, .L261
	 nop
.L262:
	add	%g1, 4, %g1
.L261:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne	%icc, .L262
	 nop
	sub	%g1, %i0, %i0
	srax	%i0, 2, %i0
	return	%i7+8
	 nop
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L264
	 nop
.L266:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L264:
	brz	%i2, .L265
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne	%icc, .L265
	 nop
	lduw	[%i0], %g1
	cmp	%g1, 0
	be	%icc, .L265
	 nop
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne	%icc, .L266
	 nop
.L265:
	brz	%i2, .L268
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bl	%icc, .L269
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %i0
	movg	%icc, 1, %i0
	ba,pt	%xcc, .L267
	 nop
.L268:
	mov	0, %i0
	ba,pt	%xcc, .L267
	 nop
.L269:
	mov	-1, %i0
.L267:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L271
	 nop
.L273:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
.L271:
	brz	%i2, .L272
	 nop
	lduw	[%i0], %g1
	cmp	%g1, %i1
	bne	%icc, .L273
	 nop
.L272:
	brnz	%i2, .L274
	 nop
	mov	0, %i0
.L274:
	return	%i7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L277
	 nop
.L279:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L277:
	brz	%i2, .L278
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	be	%icc, .L279
	 nop
.L278:
	brz	%i2, .L281
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bl	%icc, .L282
	 nop
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %i0
	movg	%icc, 1, %i0
	ba,pt	%xcc, .L280
	 nop
.L281:
	mov	0, %i0
	ba,pt	%xcc, .L280
	 nop
.L282:
	mov	-1, %i0
.L280:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L284
	 nop
.L285:
	lduw	[%i1+%g1], %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L284:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	%xcc, .L285
	 nop
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
	be	%xcc, .L287
	 nop
	sub	%i0, %i1, %g1
	sllx	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	%xcc, .L292
	 nop
	mov	%g2, %i2
	ba,pt	%xcc, .L289
	 nop
.L290:
	lduw	[%i1+%i2], %g1
	st	%g1, [%i0+%i2]
.L289:
	add	%i2, -4, %i2
	cmp	%i2, -4
	bne	%xcc, .L290
	 nop
	return	%i7+8
	 nop
.L291:
	lduw	[%i1+%g1], %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	ba,pt	%xcc, .L288
	 nop
.L292:
	mov	0, %g1
.L288:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	%xcc, .L291
	 nop
.L287:
	return	%i7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	save	%sp, -176, %sp
	mov	%i0, %g1
	ba,pt	%xcc, .L294
	 nop
.L295:
	add	%g1, 4, %g1
	st	%i1, [%g1-4]
.L294:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	%xcc, .L295
	 nop
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
	bgeu	%xcc, .L297
	 nop
	add	%i0, %i2, %i0
	add	%i1, %i2, %i1
	mov	%i2, %g2
	ba,pt	%xcc, .L298
	 nop
.L299:
	sub	%g0, %i2, %g1
	sub	%i0, %i2, %g3
	add	%g3, -1, %g3
	ldub	[%g3+%g2], %g3
	add	%i1, %g1, %g1
	add	%g1, -1, %g1
	stb	%g3, [%g1+%g2]
	add	%g2, -1, %g2
.L298:
	brnz	%g2, .L299
	 nop
	return	%i7+8
	 nop
.L297:
	cmp	%i0, %i1
	bne	%xcc, .L303
	 nop
	return	%i7+8
	 nop
.L302:
	ldub	[%i0+%g1], %g2
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
	ba,pt	%xcc, .L301
	 nop
.L303:
	mov	0, %g1
.L301:
	cmp	%g1, %i2
	bne	%xcc, .L302
	 nop
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
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
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
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
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
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	srlx	%i0, 48, %i0
	return	%i7+8
	 nop
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
	srlx	%i0, 48, %i0
	return	%i7+8
	 nop
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
	and	%i0, 0xff, %i0
	return	%i7+8
	 nop
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
	and	%i0, 0xff, %i0
	return	%i7+8
	 nop
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
	srlx	%i0, 48, %i0
	return	%i7+8
	 nop
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
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
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
	or	%g1, %i0, %i0
	return	%i7+8
	 nop
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L318
	 nop
.L321:
	srl	%i0, %g1, %g2
	andcc	%g2, 1, %g0
	be	%xcc, .L319
	 nop
	add	%g1, 1, %g1
	ba,pt	%xcc, .L320
	 nop
.L319:
	add	%g1, 1, %g1
.L318:
	cmp	%g1, 32
	bne	%icc, .L321
	 nop
	mov	0, %g1
.L320:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -176, %sp
	brz	%i0, .L326
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L324
	 nop
.L325:
	sra	%i0, 1, %i0
	add	%g1, 1, %g1
.L324:
	andcc	%i0, 1, %g0
	be	%xcc, .L325
	 nop
	ba,pt	%xcc, .L323
	 nop
.L326:
	mov	0, %g1
.L323:
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
	fbl	%fcc2, .L330
	 nop
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	fbule	%fcc3, .L333
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L328
	 nop
.L330:
	mov	1, %i0
	ba,pt	%xcc, .L328
	 nop
.L333:
	mov	0, %i0
.L328:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	fbl	%fcc0, .L337
	 nop
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	fbule	%fcc1, .L340
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L335
	 nop
.L337:
	mov	1, %i0
	ba,pt	%xcc, .L335
	 nop
.L340:
	mov	0, %i0
.L335:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	add	%fp, 2031, %o0
	call	_Qp_flt, 0
	 nop
	brnz	%o0, .L344
	 nop
	stx	%i4, [%fp+1999]
	stx	%i5, [%fp+2007]
	sethi	%hi(.LC9), %g1
	ldx	[%g1+%lo(.LC9)], %g2
	ldx	[%g1+%lo(.LC9+8)], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	call	_Qp_fgt, 0
	 nop
	brz	%o0, .L347
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L342
	 nop
.L344:
	mov	1, %i0
	ba,pt	%xcc, .L342
	 nop
.L347:
	mov	0, %i0
.L342:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	add	%fp, 2031, %o0
	call	_Qp_dtoq, 0
	 nop
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
	fbu	%fcc2, .L350
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f1, %f8
	fbe	%fcc3, .L350
	 nop
	cmp	%i1, 0
	bge	%icc, .L354
	 nop
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f8
	ba,pt	%xcc, .L353
	 nop
.L354:
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f8
.L353:
	andcc	%i1, 1, %g0
	be	%xcc, .L352
	 nop
	fmuls	%f1, %f8, %f1
.L352:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L350
	 nop
	fmuls	%f8, %f8, %f8
	ba,pt	%xcc, .L353
	 nop
.L350:
	fmovs	%f1, %f0
	return	%i7+8
	 nop
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
	fbu	%fcc0, .L356
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f0, %f8
	fbe	%fcc1, .L356
	 nop
	cmp	%i1, 0
	bge	%icc, .L360
	 nop
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f8
	ba,pt	%xcc, .L359
	 nop
.L360:
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f8
.L359:
	andcc	%i1, 1, %g0
	be	%xcc, .L358
	 nop
	fmuld	%f0, %f8, %f0
.L358:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L356
	 nop
	fmuld	%f8, %f8, %f8
	ba,pt	%xcc, .L359
	 nop
.L356:
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
	add	%fp, 2031, %o0
	call	_Qp_cmp, 0
	 nop
	cmp	%o0, 3
	be	%xcc, .L362
	 nop
	stx	%i4, [%fp+1983]
	stx	%i5, [%fp+1991]
	stx	%i4, [%fp+1967]
	stx	%i5, [%fp+1975]
	add	%fp, 1967, %o2
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	call	_Qp_add, 0
	 nop
	stx	%i4, [%fp+1951]
	stx	%i5, [%fp+1959]
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	add	%fp, 1935, %o1
	add	%fp, 1951, %o0
	call	_Qp_feq, 0
	 nop
	brnz	%o0, .L362
	 nop
	cmp	%i2, 0
	bge	%icc, .L366
	 nop
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i0
	ldx	[%g1+%lo(.LC20+8)], %i1
	ba,pt	%xcc, .L365
	 nop
.L366:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i0
	ldx	[%g1+%lo(.LC21+8)], %i1
.L365:
	andcc	%i2, 1, %g0
	be	%xcc, .L364
	 nop
	stx	%i4, [%fp+1855]
	stx	%i5, [%fp+1863]
	stx	%i0, [%fp+1839]
	stx	%i1, [%fp+1847]
	add	%fp, 1839, %o2
	add	%fp, 1855, %o1
	add	%fp, 1871, %o0
	call	_Qp_mul, 0
	 nop
	ldx	[%fp+1871], %i4
	ldx	[%fp+1879], %i5
.L364:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz	%i2, .L362
	 nop
	stx	%i0, [%fp+1759]
	stx	%i1, [%fp+1767]
	stx	%i0, [%fp+1743]
	stx	%i1, [%fp+1751]
	add	%fp, 1743, %o2
	add	%fp, 1759, %o1
	add	%fp, 1775, %o0
	call	_Qp_mul, 0
	 nop
	ldx	[%fp+1775], %i0
	ldx	[%fp+1783], %i1
	ba,pt	%xcc, .L365
	 nop
.L362:
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
	mov	0, %g1
	ba,pt	%xcc, .L368
	 nop
.L369:
	ldub	[%i1+%g1], %g3
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L368:
	cmp	%g1, %i2
	bne	%xcc, .L369
	 nop
	return	%i7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -176, %sp
	mov	%i0, %o0
	call	strlen, 0
	 nop
	add	%i0, %o0, %o0
	ba,pt	%xcc, .L371
	 nop
.L373:
	add	%i1, 1, %i1
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L371:
	brz	%i2, .L372
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L373
	 nop
.L372:
	brnz	%i2, .L374
	 nop
	stb	%g0, [%o0]
.L374:
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
	ba,pt	%xcc, .L376
	 nop
.L378:
	add	%g1, 1, %g1
.L376:
	cmp	%g1, %i1
	be	%xcc, .L377
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne	%icc, .L378
	 nop
.L377:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L380
	 nop
.L382:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	be	%icc, .L381
	 nop
	ba,pt	%xcc, .L383
	 nop
.L385:
	mov	%i1, %g1
.L383:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	%icc, .L382
	 nop
	add	%i0, 1, %i0
.L380:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	bne	%icc, .L385
	 nop
	mov	0, %i0
.L381:
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
.L388:
	ldsb	[%g1], %g2
	cmp	%g2, %i1
	bne	%icc, .L387
	 nop
	mov	%g1, %i0
.L387:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne	%icc, .L388
	 nop
	return	%i7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -176, %sp
	mov	%i1, %o0
	call	strlen, 0
	 nop
	mov	%o0, %i5
	brz	%i5, .L391
	 nop
	ldsb	[%i1], %i4
	ba,pt	%xcc, .L392
	 nop
.L393:
	mov	%i5, %o2
	mov	%i1, %o1
	mov	%i0, %o0
	call	strncmp, 0
	 nop
	cmp	%o0, 0
	be	%icc, .L391
	 nop
	add	%i0, 1, %i0
.L392:
	sra	%i4, 0, %o1
	mov	%i0, %o0
	call	strchr, 0
	 nop
	mov	%o0, %i0
	brnz	%i0, .L393
	 nop
.L391:
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
	fbuge	%fcc2, .L397
	 nop
	fcmped	%fcc3, %f2, %f8
	fbg	%fcc3, .L399
	 nop
.L397:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule	%fcc0, .L400
	 nop
	fcmped	%fcc1, %f2, %f8
	fbuge	%fcc1, .L400
	 nop
.L399:
	fnegd	%f0, %f0
.L400:
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
	brz	%i3, .L410
	 nop
	cmp	%i1, %i3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brnz	%g1, .L415
	 nop
	ba,pt	%xcc, .L411
	 nop
.L413:
	ldsb	[%i0], %g2
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne	%icc, .L412
	 nop
	add	%i0, 1, %o0
	add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 nop
	cmp	%o0, 0
	be	%icc, .L410
	 nop
.L412:
	add	%i0, 1, %i0
.L411:
	cmp	%i0, %i5
	bleu	%xcc, .L413
	 nop
	mov	0, %i0
	return	%i7+8
	 nop
.L415:
	mov	0, %i0
.L410:
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
	mov	%i0, %o0
	call	memcpy, 0
	 nop
	add	%o0, %i2, %i0
	return	%i7+8
	 nop
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
	fbuge	%fcc2, .L432
	 nop
	fnegd	%f0, %f0
	mov	1, %g3
	ba,pt	%xcc, .L419
	 nop
.L432:
	mov	0, %g3
.L419:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbge	%fcc3, .L429
	 nop
	ba,pt	%xcc, .L433
	 nop
.L423:
	add	%g1, 1, %g1
	sethi	%hi(.LC25), %g2
	ldd	[%g2+%lo(.LC25)], %f8
	fmuld	%f0, %f8, %f0
	ba,pt	%xcc, .L421
	 nop
.L429:
	mov	0, %g1
.L421:
	sethi	%hi(.LC24), %g2
	ldd	[%g2+%lo(.LC24)], %f8
	fcmped	%fcc0, %f0, %f8
	fbge	%fcc0, .L423
	 nop
	ba,pt	%xcc, .L424
	 nop
.L433:
	fzero	%f8
	fcmpd	%fcc1, %f0, %f8
	mov	0, %g2
	movne	%fcc1, 1, %g2
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g1
	movl	%fcc2, 1, %g1
	and	%g1, %g2, %g1
	andcc	%g1, 0xff, %g0
	bne	%icc, .L430
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L424
	 nop
.L426:
	add	%g1, -1, %g1
	faddd	%f0, %f0, %f0
	ba,pt	%xcc, .L425
	 nop
.L430:
	mov	0, %g1
.L425:
	sethi	%hi(.LC25), %g2
	ldd	[%g2+%lo(.LC25)], %f8
	fcmped	%fcc3, %f0, %f8
	fbl	%fcc3, .L426
	 nop
.L424:
	st	%g1, [%i1]
	cmp	%g3, 0
	be	%icc, .L427
	 nop
	fnegd	%f0, %f0
.L427:
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
	mov	0, %i0
	ba,pt	%xcc, .L435
	 nop
.L437:
	and	%g1, 1, %g2
	brz	%g2, .L436
	 nop
	add	%i0, %i1, %i0
.L436:
	add	%i1, %i1, %i1
	srlx	%g1, 1, %g1
.L435:
	brnz	%g1, .L437
	 nop
	return	%i7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -176, %sp
	mov	1, %g1
	ba,pt	%xcc, .L439
	 nop
.L441:
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L439:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L446
	 nop
	cmp	%i1, 0
	bge	%icc, .L441
	 nop
	mov	0, %g2
	ba,pt	%xcc, .L443
	 nop
.L444:
	cmp	%i0, %i1
	blu	%icc, .L442
	 nop
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
.L442:
	srl	%g1, 1, %g1
	srlx	%i1, 1, %i1
	ba,pt	%xcc, .L443
	 nop
.L446:
	mov	0, %g2
.L443:
	cmp	%g1, 0
	bne	%icc, .L444
	 nop
	brnz	%i2, .L445
	 nop
	mov	%g2, %i0
.L445:
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	cmp	%i0, 0
	bge	%icc, .L449
	 nop
	xnor	%g0, %i0, %i0
	sllx	%i0, 56, %i0
	srax	%i0, 56, %i0
.L449:
	brz	%i0, .L451
	 nop
	sll	%i0, 8, %i0
	srl	%i0, 0, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -33, %i0
	ba,pt	%xcc, .L450
	 nop
.L451:
	mov	7, %i0
.L450:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -176, %sp
	brgez	%i0, .L453
	 nop
	xnor	%g0, %i0, %i0
.L453:
	brz	%i0, .L455
	 nop
	mov	%i0, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %o0
	ba,pt	%xcc, .L454
	 nop
.L455:
	mov	63, %o0
.L454:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L457
	 nop
.L459:
	andcc	%i0, 1, %g0
	be	%xcc, .L458
	 nop
	add	%g1, %i1, %g1
.L458:
	srlx	%i0, 1, %i0
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
.L457:
	brnz	%i0, .L459
	 nop
	srl	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -176, %sp
	srl	%i2, 3, %g3
	and	%i2, -8, %g1
	cmp	%i0, %i1
	blu	%xcc, .L461
	 nop
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu	%xcc, .L462
	 nop
.L461:
	srl	%g3, 0, %g3
	sllx	%g3, 3, %g3
	mov	0, %g2
	ba,pt	%xcc, .L463
	 nop
.L464:
	ldx	[%i1+%g2], %g4
	stx	%g4, [%i0+%g2]
	add	%g2, 8, %g2
.L463:
	cmp	%g2, %g3
	bne	%xcc, .L464
	 nop
	srl	%g1, 0, %g1
	ba,pt	%xcc, .L465
	 nop
.L466:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L465:
	cmp	%g1, %i2
	blu	%icc, .L466
	 nop
	return	%i7+8
	 nop
.L468:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L462:
	add	%i2, -1, %g1
	srl	%g1, 0, %i2
	cmp	%g1, -1
	bne	%icc, .L468
	 nop
	return	%i7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -176, %sp
	srl	%i2, 1, %g1
	cmp	%i0, %i1
	blu	%xcc, .L470
	 nop
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu	%xcc, .L471
	 nop
.L470:
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	mov	0, %g2
	ba,pt	%xcc, .L472
	 nop
.L473:
	lduh	[%i1+%g2], %g3
	sth	%g3, [%i0+%g2]
	add	%g2, 2, %g2
.L472:
	cmp	%g2, %g1
	bne	%xcc, .L473
	 nop
	andcc	%i2, 1, %g0
	be	%xcc, .L469
	 nop
	add	%i2, -1, %i2
	srl	%i2, 0, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	return	%i7+8
	 nop
.L475:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L471:
	add	%i2, -1, %g1
	srl	%g1, 0, %i2
	cmp	%g1, -1
	bne	%icc, .L475
	 nop
.L469:
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
	and	%i2, -4, %g1
	cmp	%i0, %i1
	blu	%xcc, .L477
	 nop
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu	%xcc, .L478
	 nop
.L477:
	srl	%g3, 0, %g3
	sllx	%g3, 2, %g3
	mov	0, %g2
	ba,pt	%xcc, .L479
	 nop
.L480:
	lduw	[%i1+%g2], %g4
	st	%g4, [%i0+%g2]
	add	%g2, 4, %g2
.L479:
	cmp	%g2, %g3
	bne	%xcc, .L480
	 nop
	srl	%g1, 0, %g1
	ba,pt	%xcc, .L481
	 nop
.L482:
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L481:
	cmp	%g1, %i2
	blu	%icc, .L482
	 nop
	return	%i7+8
	 nop
.L484:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L478:
	add	%i2, -1, %g1
	srl	%g1, 0, %i2
	cmp	%g1, -1
	bne	%icc, .L484
	 nop
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__modi, .-__modi
	.align 4
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f0
	return	%i7+8
	 nop
	.size	__uitod, .-__uitod
	.align 4
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f0
	return	%i7+8
	 nop
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -192, %sp
	brlz	%i0, .L493
	 nop
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f0
	return	%i7+8
	 nop
.L493:
	srlx	%i0, 1, %g1
	and	%i0, 1, %i0
	or	%g1, %i0, %g1
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f0
	faddd	%f0, %f0, %f0
	return	%i7+8
	 nop
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -192, %sp
	brlz	%i0, .L496
	 nop
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f0
	return	%i7+8
	 nop
.L496:
	srlx	%i0, 1, %g1
	and	%i0, 1, %i0
	or	%g1, %i0, %g1
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f0
	fadds	%f0, %f0, %f0
	return	%i7+8
	 nop
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
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L500
	 nop
.L502:
	mov	15, %g2
	sub	%g2, %g1, %g2
	sra	%i0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	%xcc, .L501
	 nop
	add	%g1, 1, %g1
.L500:
	cmp	%g1, 16
	bne	%icc, .L502
	 nop
.L501:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L504
	 nop
.L506:
	sra	%i0, %g1, %g2
	andcc	%g2, 1, %g0
	bne	%xcc, .L505
	 nop
	add	%g1, 1, %g1
.L504:
	cmp	%g1, 16
	bne	%icc, .L506
	 nop
.L505:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
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
	fbul	%fcc0, .L512
	 nop
	fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
	sethi	%hi(32768), %g1
	ldx	[%fp+2039], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L510
	 nop
.L512:
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
.L510:
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
	mov	0, %g1
	mov	0, %g2
	ba,pt	%xcc, .L514
	 nop
.L516:
	sra	%i0, %g2, %g3
	andcc	%g3, 1, %g0
	be	%xcc, .L515
	 nop
	add	%g1, 1, %g1
.L515:
	add	%g2, 1, %g2
.L514:
	cmp	%g2, 16
	bne	%icc, .L516
	 nop
	and	%g1, 1, %i0
	return	%i7+8
	 nop
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -176, %sp
	mov	0, %g1
	mov	0, %g2
	ba,pt	%xcc, .L518
	 nop
.L520:
	sra	%i0, %g2, %g3
	andcc	%g3, 1, %g0
	be	%xcc, .L519
	 nop
	add	%g1, 1, %g1
.L519:
	add	%g2, 1, %g2
.L518:
	cmp	%g2, 16
	bne	%icc, .L520
	 nop
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -176, %sp
	mov	0, %g1
	ba,pt	%xcc, .L522
	 nop
.L524:
	andcc	%i0, 1, %g0
	be	%xcc, .L523
	 nop
	add	%g1, %i1, %g1
.L523:
	srlx	%i0, 1, %i0
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
.L522:
	brnz	%i0, .L524
	 nop
	srl	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -176, %sp
	brz	%i0, .L530
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L527
	 nop
.L529:
	andcc	%i1, 1, %g0
	be	%xcc, .L528
	 nop
	add	%g1, %i0, %g1
.L528:
	sll	%i0, 1, %i0
	srl	%i0, 0, %i0
	srlx	%i1, 1, %i1
.L527:
	brnz	%i1, .L529
	 nop
	ba,pt	%xcc, .L526
	 nop
.L530:
	mov	0, %g1
.L526:
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
	mov	1, %g1
	ba,pt	%xcc, .L532
	 nop
.L534:
	sll	%i1, 1, %i1
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L532:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L539
	 nop
	cmp	%i1, 0
	bge	%icc, .L534
	 nop
	mov	0, %g2
	ba,pt	%xcc, .L536
	 nop
.L537:
	cmp	%i0, %i1
	blu	%icc, .L535
	 nop
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
.L535:
	srl	%g1, 1, %g1
	srlx	%i1, 1, %i1
	ba,pt	%xcc, .L536
	 nop
.L539:
	mov	0, %g2
.L536:
	cmp	%g1, 0
	bne	%icc, .L537
	 nop
	brnz	%i2, .L538
	 nop
	mov	%g2, %i0
.L538:
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	save	%sp, -176, %sp
	fcmpes	%fcc1, %f1, %f3
	fbl	%fcc1, .L543
	 nop
	fbg	%fcc1, .L544
	 nop
	mov	0, %i0
	ba,pt	%xcc, .L542
	 nop
.L543:
	mov	-1, %i0
	ba,pt	%xcc, .L542
	 nop
.L544:
	mov	1, %i0
.L542:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	save	%sp, -176, %sp
	fcmped	%fcc2, %f0, %f2
	fbl	%fcc2, .L547
	 nop
	fbg	%fcc2, .L548
	 nop
	mov	0, %i0
	ba,pt	%xcc, .L546
	 nop
.L547:
	mov	-1, %i0
	ba,pt	%xcc, .L546
	 nop
.L548:
	mov	1, %i0
.L546:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -176, %sp
	mulx	%i0, %i1, %i0
	return	%i7+8
	 nop
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	save	%sp, -176, %sp
	mulx	%i0, %i1, %i0
	return	%i7+8
	 nop
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	save	%sp, -176, %sp
	cmp	%i1, 0
	bge	%icc, .L557
	 nop
	sub	%g0, %i1, %i1
	sra	%i1, 0, %i1
	mov	1, %g4
	ba,pt	%xcc, .L552
	 nop
.L557:
	mov	0, %g4
.L552:
	mov	0, %g1
	mov	0, %g2
	ba,pt	%xcc, .L553
	 nop
.L555:
	andcc	%i1, 1, %g0
	be	%xcc, .L554
	 nop
	add	%g1, %i0, %g1
.L554:
	sll	%i0, 1, %i0
	sra	%i0, 0, %i0
	sra	%i1, 1, %i1
	add	%g2, 1, %g2
.L553:
	cmp	%g0, %i1
	addx	%g0, 0, %g5
	and	%g2, 0xff, %g3
	cmp	%g3, 31
	mov	0, %g3
	movleu	%icc, 1, %g3
	andcc	%g3, %g5, %g0
	bne	%icc, .L555
	 nop
	cmp	%g4, 0
	be	%icc, .L556
	 nop
	sub	%g0, %g1, %g1
.L556:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	save	%sp, -176, %sp
	brgez	%i0, .L563
	 nop
	sub	%g0, %i0, %i0
	mov	1, %i5
	ba,pt	%xcc, .L560
	 nop
.L563:
	mov	0, %i5
.L560:
	brgez	%i1, .L561
	 nop
	sub	%g0, %i1, %i1
	cmp	%g0, %i5
	subx	%g0, -1, %i5
.L561:
	mov	0, %o2
	srl	%i1, 0, %o1
	srl	%i0, 0, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %i0
	cmp	%i5, 0
	be	%icc, .L562
	 nop
	sub	%g0, %i0, %i0
.L562:
	return	%i7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	save	%sp, -176, %sp
	brgez	%i0, .L568
	 nop
	sub	%g0, %i0, %i0
	mov	1, %i5
	ba,pt	%xcc, .L565
	 nop
.L568:
	mov	0, %i5
.L565:
	brgez	%i1, .L566
	 nop
	sub	%g0, %i1, %i1
.L566:
	mov	1, %o2
	srl	%i1, 0, %o1
	srl	%i0, 0, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %i0
	cmp	%i5, 0
	be	%icc, .L567
	 nop
	sub	%g0, %i0, %i0
.L567:
	return	%i7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -176, %sp
	mov	1, %g1
	ba,pt	%xcc, .L570
	 nop
.L572:
	sll	%i1, 1, %i1
	sllx	%i1, 48, %i1
	srlx	%i1, 48, %i1
	add	%g1, %g1, %g1
.L570:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L577
	 nop
	sll	%i1, 16, %g2
	cmp	%g2, 0
	bge	%icc, .L572
	 nop
	mov	0, %g2
	ba,pt	%xcc, .L574
	 nop
.L575:
	cmp	%i0, %i1
	blu	%icc, .L573
	 nop
	sub	%i0, %i1, %i0
	sllx	%i0, 48, %i0
	srlx	%i0, 48, %i0
	or	%g2, %g1, %g2
.L573:
	sll	%g1, 16, %g1
	srl	%g1, 17, %g1
	srlx	%i1, 1, %i1
	ba,pt	%xcc, .L574
	 nop
.L577:
	mov	0, %g2
.L574:
	sll	%g1, 16, %g3
	cmp	%g3, 0
	bne	%icc, .L575
	 nop
	brnz	%i2, .L576
	 nop
	mov	%g2, %i0
.L576:
	sllx	%i0, 48, %i0
	srlx	%i0, 48, %i0
	return	%i7+8
	 nop
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	save	%sp, -176, %sp
	mov	1, %g1
	ba,pt	%xcc, .L580
	 nop
.L582:
	add	%i1, %i1, %i1
	add	%g1, %g1, %g1
.L580:
	cmp	%i1, %i0
	mov	0, %g3
	movlu	%xcc, 1, %g3
	mov	0, %g2
	movrne	%g1, 1, %g2
	andcc	%g3, %g2, %g0
	be	%icc, .L587
	 nop
	sethi	%hi(2147483648), %g2
	and	%i1, %g2, %g2
	brz	%g2, .L582
	 nop
	mov	0, %g2
	ba,pt	%xcc, .L584
	 nop
.L585:
	cmp	%i0, %i1
	blu	%xcc, .L583
	 nop
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
.L583:
	srlx	%g1, 1, %g1
	srlx	%i1, 1, %i1
	ba,pt	%xcc, .L584
	 nop
.L587:
	mov	0, %g2
.L584:
	brnz	%g1, .L585
	 nop
	brnz	%i2, .L586
	 nop
	mov	%g2, %i0
.L586:
	return	%i7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -176, %sp
	mov	%i0, %g1
	andcc	%i1, 32, %g0
	be	%xcc, .L590
	 nop
	sll	%g1, %i1, %g1
	sllx	%g1, 32, %i0
	return	%i7+8
	 nop
.L590:
	brz	%i1, .L592
	 nop
	mov	%g1, %g2
	sll	%g2, %i1, %g3
	srl	%g3, 0, %i0
	srax	%g1, 32, %g1
	sll	%g1, %i1, %g1
	sub	%g0, %i1, %i1
	srl	%g2, %i1, %g2
	or	%g2, %g1, %g2
	sllx	%g2, 32, %g2
	or	%i0, %g2, %i0
.L592:
	return	%i7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	save	%sp, -176, %sp
	mov	%i0, %g4
	mov	%i1, %g5
	andcc	%i2, 64, %g0
	be	%xcc, .L595
	 nop
	mov	0, %g2
	mov	0, %g3
	sllx	%g5, %i2, %i2
	mov	%i2, %g2
	ba,pt	%xcc, .L596
	 nop
.L595:
	brz	%i2, .L597
	 nop
	mov	%g5, %g1
	mov	0, %g2
	mov	0, %g3
	sllx	%g1, %i2, %g3
	sllx	%g4, %i2, %g4
	sub	%g0, %i2, %i2
	srlx	%g1, %i2, %g1
	or	%g1, %g4, %g1
	mov	%g1, %g2
.L596:
	mov	%g2, %i0
	mov	%g3, %i1
.L597:
	return	%i7+8
	 nop
	.size	__ashlti3, .-__ashlti3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -176, %sp
	mov	%i0, %g1
	andcc	%i1, 32, %g0
	be	%xcc, .L600
	 nop
	srax	%g1, 32, %g1
	sra	%g1, 31, %g2
	sllx	%g2, 32, %i0
	sra	%g1, %i1, %g1
	srl	%g1, 0, %g1
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
.L600:
	brz	%i1, .L602
	 nop
	srax	%g1, 32, %g2
	sra	%g2, %i1, %g3
	sllx	%g3, 32, %i0
	sub	%g0, %i1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %i1, %g1
	or	%g2, %g1, %g2
	srl	%g2, 0, %g2
	or	%i0, %g2, %i0
.L602:
	return	%i7+8
	 nop
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	save	%sp, -176, %sp
	mov	%i0, %o4
	mov	%i1, %o5
	andcc	%i2, 64, %g0
	be	%xcc, .L605
	 nop
	mov	%o4, %g4
	mov	0, %g2
	mov	0, %g3
	srax	%g4, 63, %g2
	srax	%g4, %i2, %g4
	mov	%g4, %g3
	ba,pt	%xcc, .L606
	 nop
.L605:
	brz	%i2, .L607
	 nop
	mov	%o4, %g1
	mov	0, %g2
	mov	0, %g3
	srax	%g1, %i2, %g2
	sub	%g0, %i2, %g4
	sllx	%g1, %g4, %g1
	srlx	%o5, %i2, %i2
	or	%g1, %i2, %g3
.L606:
	mov	%g2, %i0
	mov	%g3, %i1
.L607:
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
	and	%g2, %g1, %g1
	sllx	%i0, 56, %i0
	or	%i0, %i3, %i0
	or	%i0, %i4, %i0
	or	%i0, %i5, %i0
	or	%i0, %g5, %i0
	or	%i0, %g4, %i0
	or	%i0, %g3, %i0
	or	%i0, %g1, %i0
	return	%i7+8
	 nop
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
	srl	%i0, 0, %i0
	return	%i7+8
	 nop
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
	bgu	%icc, .L616
	 nop
	mov	16, %g1
	ba,pt	%xcc, .L612
	 nop
.L616:
	mov	0, %g1
.L612:
	mov	16, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	andcc	%i0, %g2, %g0
	bne	%icc, .L617
	 nop
	mov	8, %g2
	ba,pt	%xcc, .L613
	 nop
.L617:
	mov	0, %g2
.L613:
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%i0, %g3, %i0
	add	%g1, %g2, %g1
	andcc	%i0, 240, %g0
	bne	%icc, .L618
	 nop
	mov	4, %g2
	ba,pt	%xcc, .L614
	 nop
.L618:
	mov	0, %g2
.L614:
	mov	4, %g3
	sub	%g3, %g2, %g3
	srl	%i0, %g3, %i0
	add	%g1, %g2, %g1
	andcc	%i0, 12, %g0
	bne	%icc, .L619
	 nop
	mov	2, %g3
	ba,pt	%xcc, .L615
	 nop
.L619:
	mov	0, %g3
.L615:
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __clzti2
	.type	__clzti2, #function
	.proc	04
__clzti2:
	save	%sp, -176, %sp
	mov	%i0, %o0
	mov	0, %i5
	movre	%o0, -1, %i5
	andn	%o0, %i5, %o0
	and	%i5, %i1, %g1
	or	%o0, %g1, %o0
	call	__clzdi2, 0
	 nop
	and	%i5, 64, %i5
	add	%o0, %i5, %i0
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
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
	bl	%icc, .L623
	 nop
	cmp	%g2, %g1
	bg	%icc, .L624
	 nop
	cmp	%i1, %i0
	bgu	%icc, .L625
	 nop
	blu	%icc, .L626
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L622
	 nop
.L623:
	mov	0, %i0
	ba,pt	%xcc, .L622
	 nop
.L624:
	mov	2, %i0
	ba,pt	%xcc, .L622
	 nop
.L625:
	mov	0, %i0
	ba,pt	%xcc, .L622
	 nop
.L626:
	mov	2, %i0
.L622:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	save	%sp, -176, %sp
	mov	%i1, %o1
	mov	%i0, %o0
	call	__cmpdi2, 0
	 nop
	add	%o0, -1, %i0
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global __cmpti2
	.type	__cmpti2, #function
	.proc	04
__cmpti2:
	save	%sp, -176, %sp
	cmp	%i2, %i0
	bg	%xcc, .L630
	 nop
	bl	%xcc, .L631
	 nop
	cmp	%i3, %i1
	bgu	%xcc, .L632
	 nop
	blu	%xcc, .L633
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L629
	 nop
.L630:
	mov	0, %g1
	ba,pt	%xcc, .L629
	 nop
.L631:
	mov	2, %g1
	ba,pt	%xcc, .L629
	 nop
.L632:
	mov	0, %g1
	ba,pt	%xcc, .L629
	 nop
.L633:
	mov	2, %g1
.L629:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
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
	bne	%icc, .L639
	 nop
	mov	16, %g1
	ba,pt	%xcc, .L635
	 nop
.L639:
	mov	0, %g1
.L635:
	srl	%i0, %g1, %i0
	andcc	%i0, 0xff, %g0
	bne	%icc, .L640
	 nop
	mov	8, %g2
	ba,pt	%xcc, .L636
	 nop
.L640:
	mov	0, %g2
.L636:
	srl	%i0, %g2, %i0
	add	%g1, %g2, %g1
	andcc	%i0, 15, %g0
	bne	%xcc, .L641
	 nop
	mov	4, %g2
	ba,pt	%xcc, .L637
	 nop
.L641:
	mov	0, %g2
.L637:
	srl	%i0, %g2, %i0
	add	%g1, %g2, %g1
	andcc	%i0, 3, %g0
	bne	%xcc, .L642
	 nop
	mov	2, %g2
	ba,pt	%xcc, .L638
	 nop
.L642:
	mov	0, %g2
.L638:
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
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __ctzti2
	.type	__ctzti2, #function
	.proc	04
__ctzti2:
	save	%sp, -176, %sp
	mov	%i1, %o0
	mov	0, %i5
	movre	%o0, -1, %i5
	and	%i5, %i0, %i0
	andn	%o0, %i5, %o0
	or	%o0, %i0, %o0
	call	__ctzdi2, 0
	 nop
	and	%i5, 64, %i5
	add	%o0, %i5, %i0
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__ctzti2, .-__ctzti2
	.align 4
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -176, %sp
	brnz	%i1, .L645
	 nop
	brz	%i0, .L647
	 nop
	mov	%i0, %o0
	call	__ctzdi2, 0
	 nop
	add	%o0, 65, %g1
	ba,pt	%xcc, .L646
	 nop
.L645:
	mov	%i1, %o0
	call	__ctzdi2, 0
	 nop
	add	%o0, 1, %g1
	ba,pt	%xcc, .L646
	 nop
.L647:
	mov	0, %g1
.L646:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
	.size	__ffsti2, .-__ffsti2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -176, %sp
	mov	%i0, %g2
	andcc	%i1, 32, %g0
	be	%xcc, .L649
	 nop
	srlx	%g2, 32, %g2
	srl	%g2, %i1, %i0
	return	%i7+8
	 nop
.L649:
	brz	%i1, .L651
	 nop
	srlx	%g2, 32, %g1
	srl	%g1, %i1, %g3
	sllx	%g3, 32, %i0
	sub	%g0, %i1, %g3
	sll	%g1, %g3, %g1
	srl	%g2, %i1, %g2
	or	%g1, %g2, %g1
	srl	%g1, 0, %g1
	or	%i0, %g1, %i0
.L651:
	return	%i7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	save	%sp, -176, %sp
	mov	%i0, %o4
	mov	%i1, %o5
	andcc	%i2, 64, %g0
	be	%xcc, .L654
	 nop
	mov	0, %g2
	mov	0, %g3
	srlx	%o4, %i2, %g3
	ba,pt	%xcc, .L655
	 nop
.L654:
	brz	%i2, .L656
	 nop
	mov	%o4, %g1
	mov	0, %g2
	mov	0, %g3
	srlx	%g1, %i2, %g2
	sub	%g0, %i2, %g4
	sllx	%g1, %g4, %g1
	srlx	%o5, %i2, %i2
	or	%g1, %i2, %g3
.L655:
	mov	%g2, %i0
	mov	%g3, %i1
.L656:
	return	%i7+8
	 nop
	.size	__lshrti3, .-__lshrti3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -176, %sp
	sethi	%hi(64512), %g4
	or	%g4, 1023, %g4
	and	%i0, %g4, %g5
	and	%i1, %g4, %g3
	smul	%g5, %g3, %g2
	mov	-1, %i5
	sllx	%i5, 32, %i4
	srl	%g2, 0, %g1
	srl	%g1, 16, %g2
	and	%g1, %g4, %g1
	srl	%g1, 0, %g1
	srl	%i0, 16, %i0
	smul	%i0, %g3, %g3
	add	%g2, %g3, %g2
	sll	%g2, 16, %g3
	add	%g3, %g1, %g3
	srl	%g3, 0, %g1
	srl	%g2, 16, %g3
	sllx	%g3, 32, %g3
	srlx	%i5, 32, %i5
	and	%g1, %i5, %g1
	or	%g1, %g3, %g1
	mov	%g1, %g3
	srl	%g3, 16, %g2
	and	%g3, %g4, %g3
	srl	%g3, 0, %g3
	and	%g1, %i4, %g1
	or	%g1, %g3, %g1
	srl	%i1, 16, %i1
	smul	%g5, %i1, %g5
	add	%g2, %g5, %g2
	sll	%g2, 16, %g3
	add	%g3, %g1, %g3
	srl	%g3, 0, %g3
	and	%g1, %i4, %g4
	or	%g4, %g3, %g1
	srax	%g1, 32, %g3
	srl	%g2, 16, %g2
	add	%g2, %g3, %g2
	sllx	%g2, 32, %g2
	and	%g1, %i5, %g1
	or	%g1, %g2, %g1
	srax	%g1, 32, %g3
	smul	%i0, %i1, %g2
	add	%g2, %g3, %g2
	sllx	%g2, 32, %g2
	and	%g1, %i5, %g1
	or	%g1, %g2, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -176, %sp
	mov	%i0, %i4
	mov	%i1, %i5
	srl	%i5, 0, %o1
	srl	%i4, 0, %o0
	call	__muldsi3, 0
	 nop
	srax	%o0, 32, %g1
	srax	%i0, 32, %i0
	smul	%i5, %i0, %i5
	srax	%i1, 32, %i1
	smul	%i4, %i1, %i4
	add	%i5, %i4, %i5
	add	%i5, %g1, %i5
	sllx	%i5, 32, %i5
	srl	%o0, 0, %o0
	or	%o0, %i5, %i0
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
	mov	0, %g2
	mov	0, %g3
	mov	%g5, %g3
	srlx	%g5, 32, %g1
	and	%g5, %g4, %g5
	mov	%g5, %g3
	srlx	%i0, 32, %i0
	mulx	%i0, %i4, %i4
	add	%g1, %i4, %g1
	sllx	%g1, 32, %i4
	add	%i4, %g5, %g3
	srlx	%g1, 32, %g1
	mov	%g1, %g2
	mov	%g3, %g5
	srlx	%g5, 32, %g1
	and	%g5, %g4, %g4
	mov	%g4, %g3
	srlx	%i1, 32, %i1
	mulx	%i5, %i1, %i5
	add	%g1, %i5, %g1
	sllx	%g1, 32, %g5
	add	%g5, %g4, %g3
	srlx	%g1, 32, %g1
	add	%g1, %g2, %g1
	mov	%g1, %g2
	mulx	%i0, %i1, %i0
	add	%i0, %g1, %i0
	mov	%i0, %g2
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__mulddi3, .-__mulddi3
	.align 4
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	save	%sp, -176, %sp
	mov	%i1, %i4
	mov	%i3, %i5
	mov	%i3, %o1
	mov	%i1, %o0
	call	__mulddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mulx	%i5, %i0, %i5
	mulx	%i4, %i2, %i4
	add	%i5, %i4, %i5
	add	%i5, %o0, %i5
	mov	%i5, %g2
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__multi3, .-__multi3
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	save	%sp, -176, %sp
	sub	%g0, %i0, %i0
	return	%i7+8
	 nop
	.size	__negdi2, .-__negdi2
	.align 4
	.global __negti2
	.type	__negti2, #function
	.proc	05
__negti2:
	save	%sp, -176, %sp
	sub	%g0, %i1, %g3
	cmp	%g3, 0
	mov	0, %g1
	movrne	%g3, 1, %g1
	sub	%g0, %i0, %g2
	sub	%g2, %g1, %g2
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__negti2, .-__negti2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -176, %sp
	srax	%i0, 32, %g1
	xor	%i0, %g1, %i0
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
	return	%i7+8
	 nop
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	save	%sp, -176, %sp
	xor	%i1, %i0, %i0
	srax	%i0, 32, %g1
	xor	%i0, %g1, %i0
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
	return	%i7+8
	 nop
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
	and	%i0, 1, %i0
	return	%i7+8
	 nop
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	save	%sp, -176, %sp
	srlx	%i0, 1, %g1
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	sllx	%g2, 32, %g3
	add	%g3, %g2, %g2
	and	%g1, %g2, %g1
	sub	%i0, %g1, %g1
	srlx	%g1, 2, %g4
	sethi	%hi(858992640), %g3
	or	%g3, 819, %g3
	sllx	%g3, 32, %g2
	add	%g2, %g3, %g2
	and	%g4, %g2, %g3
	and	%g1, %g2, %g1
	add	%g3, %g1, %g1
	srlx	%g1, 4, %g2
	add	%g2, %g1, %g1
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	sllx	%g2, 32, %g3
	add	%g3, %g2, %g2
	and	%g1, %g2, %g1
	srlx	%g1, 32, %g2
	add	%g2, %g1, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	and	%i0, 127, %i0
	return	%i7+8
	 nop
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
	and	%i0, 63, %i0
	return	%i7+8
	 nop
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	save	%sp, -176, %sp
	sllx	%i0, 63, %g1
	mov	0, %g2
	mov	0, %g3
	srlx	%i1, 1, %g3
	or	%g1, %g3, %g3
	srlx	%i0, 1, %g2
	sethi	%hi(1431655424), %g4
	or	%g4, 341, %g4
	sllx	%g4, 32, %g1
	add	%g1, %g4, %g1
	mov	0, %g4
	mov	0, %g5
	and	%g2, %g1, %g4
	and	%g3, %g1, %g5
	sub	%i1, %g5, %g3
	cmp	%g3, %i1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	sub	%i0, %g4, %g2
	sub	%g2, %g1, %g2
	sllx	%g2, 62, %g1
	mov	0, %g4
	mov	0, %g5
	srlx	%g3, 2, %g5
	or	%g1, %g5, %g5
	srlx	%g2, 2, %g4
	sethi	%hi(858992640), %i5
	or	%i5, 819, %i5
	sllx	%i5, 32, %g1
	add	%g1, %i5, %g1
	mov	0, %i4
	mov	0, %i5
	and	%g4, %g1, %i4
	and	%g5, %g1, %i5
	mov	0, %g4
	mov	0, %g5
	and	%g2, %g1, %g4
	and	%g3, %g1, %g5
	add	%i5, %g5, %g3
	cmp	%g3, %i5
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%i4, %g4, %g2
	add	%g1, %g2, %g2
	mov	%g2, %i2
	mov	%g3, %i3
	sllx	%g2, 60, %g1
	mov	0, %g4
	mov	0, %g5
	srlx	%g3, 4, %g5
	or	%g1, %g5, %g5
	srlx	%g2, 4, %g4
	add	%g5, %g3, %i5
	cmp	%i5, %g5
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%g4, %g2, %i4
	add	%g1, %i4, %i4
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	sllx	%g2, 32, %g1
	add	%g1, %g2, %g1
	and	%i4, %g1, %i2
	and	%i5, %g1, %i3
	mov	0, %g2
	mov	0, %g3
	mov	%i2, %g3
	mov	0, %g2
	add	%g3, %i3, %g2
	srlx	%g2, 32, %g1
	add	%g1, %g2, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %i0
	add	%i0, %g1, %i0
	and	%i0, 0xff, %i0
	return	%i7+8
	 nop
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
.L673:
	andcc	%i1, 1, %g0
	be	%xcc, .L671
	 nop
	fmuld	%f8, %f0, %f8
.L671:
	srl	%i1, 31, %g2
	add	%g2, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L672
	 nop
	fmuld	%f0, %f0, %f0
	ba,pt	%xcc, .L673
	 nop
.L672:
	cmp	%g1, 0
	be	%icc, .L675
	 nop
	sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f0
	fdivd	%f0, %f8, %f0
	return	%i7+8
	 nop
.L675:
	fmovd	%f8, %f0
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
	srlx	%i1, 63, %g1
	and	%g1, 0xff, %g1
	sethi	%hi(.LC32), %g2
	ld	[%g2+%lo(.LC32)], %f0
.L679:
	andcc	%i1, 1, %g0
	be	%xcc, .L677
	 nop
	fmuls	%f0, %f1, %f0
.L677:
	srl	%i1, 31, %g2
	add	%g2, %i1, %i1
	sra	%i1, 1, %i1
	brz	%i1, .L678
	 nop
	fmuls	%f1, %f1, %f1
	ba,pt	%xcc, .L679
	 nop
.L678:
	cmp	%g1, 0
	be	%icc, .L680
	 nop
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f8
	fdivs	%f8, %f0, %f0
.L680:
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
	blu	%icc, .L684
	 nop
	cmp	%g2, %g1
	bgu	%icc, .L685
	 nop
	cmp	%i1, %i0
	bgu	%icc, .L686
	 nop
	blu	%icc, .L687
	 nop
	mov	1, %i0
	ba,pt	%xcc, .L683
	 nop
.L684:
	mov	0, %i0
	ba,pt	%xcc, .L683
	 nop
.L685:
	mov	2, %i0
	ba,pt	%xcc, .L683
	 nop
.L686:
	mov	0, %i0
	ba,pt	%xcc, .L683
	 nop
.L687:
	mov	2, %i0
.L683:
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	save	%sp, -176, %sp
	mov	%i1, %o1
	mov	%i0, %o0
	call	__ucmpdi2, 0
	 nop
	add	%o0, -1, %i0
	sra	%i0, 0, %i0
	return	%i7+8
	 nop
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 4
	.global __ucmpti2
	.type	__ucmpti2, #function
	.proc	04
__ucmpti2:
	save	%sp, -176, %sp
	cmp	%i2, %i0
	bgu	%xcc, .L691
	 nop
	blu	%xcc, .L692
	 nop
	cmp	%i3, %i1
	bgu	%xcc, .L693
	 nop
	blu	%xcc, .L694
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L690
	 nop
.L691:
	mov	0, %g1
	ba,pt	%xcc, .L690
	 nop
.L692:
	mov	2, %g1
	ba,pt	%xcc, .L690
	 nop
.L693:
	mov	0, %g1
	ba,pt	%xcc, .L690
	 nop
.L694:
	mov	2, %g1
.L690:
	sra	%g1, 0, %i0
	return	%i7+8
	 nop
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
