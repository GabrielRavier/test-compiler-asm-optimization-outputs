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
	 add	%i0, -1, %g2
	ba,pt	%xcc, .L5
	 add	%i1, -1, %i1
.L6:
	stb	%g1, [%g2+%i2]
	add	%i2, -1, %i2
.L5:
	brnz,a,pt %i2, .L6
	 ldub	[%i1+%i2], %g1
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
	ba,pt	%xcc, .L13
	 and	%i2, 0xff, %i2
.L15:
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L13:
	brz,pn	%i3, .L18
	 add	%i0, 1, %g1
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%g1, %i2
	bne,a,pt %icc, .L15
	 add	%i3, -1, %i3
	add	%i0, 1, %g1
.L18:
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
	ba,pt	%xcc, .L20
	 and	%i1, 0xff, %i1
.L22:
	add	%i2, -1, %i2
.L20:
	brz,pn	%i2, .L21
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L22
	 add	%i0, 1, %i0
.L21:
	return	%i7+8
	 movre	%o2, %g0, %o0
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
	brz,pn	%i2, .L31
	 mov	0, %g1
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L28
	 add	%i2, -1, %i2
	brz,pt	%i2, .L29
	 mov	0, %g1
	ldub	[%i0], %g1
	ldub	[%i1], %g2
	sub	%g1, %g2, %g1
.L29:
.L31:
	return	%i7+8
	 sra	%g1, 0, %o0
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
	bne,a,pt %xcc, .L34
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
	cmp	%g1, %i1
	bne,pt	%icc, .L39
	 add	%i2, -1, %g2
	return	%i7+8
	 add	%o0, %o2, %o0
.L39:
	mov	%g2, %i2
.L36:
	cmp	%i2, -1
	bne,a,pt %xcc, .L38
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
	ba,pt	%xcc, .L41
	 mov	%i0, %g1
.L42:
	add	%g1, 1, %g1
.L41:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L42
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
	bne,pt	%icc, .L45
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
	be,pn	%icc, .L51
	 nop
	ldub	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L50
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
.L57:
	cmp	%g1, %i1
	be,pn	%icc, .L58
	 nop
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L57
	 ldsb	[%i0], %g1
	mov	0, %i0
.L58:
	return	%i7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L63
	 ldsb	[%i0], %g2
.L62:
	add	%i1, 1, %i1
	ldsb	[%i0], %g2
.L63:
	ldsb	[%i1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L61
	 cmp	%g2, 0
	bne,a,pt %icc, .L62
	 add	%i0, 1, %i0
.L61:
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
.L66:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L66
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
	brz,pn	%i2, .L68
	 mov	0, %g1
	mov	%i0, %g1
	add	%i2, -1, %i2
	ba,pt	%xcc, .L69
	 add	%i2, %i0, %i0
.L71:
	add	%i1, 1, %i1
.L69:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be,pn	%icc, .L70
	 sub	%i0, %g1, %g3
	mov	0, %g2
	movrne	%g3, 1, %g2
	ldub	[%i1], %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	andcc	%g2, %g3, %g0
	be,a,pn	%icc, .L73
	 ldub	[%g1], %g1
	ldub	[%g1], %g3
	ldub	[%i1], %g2
	cmp	%g3, %g2
	be,a,pt	%icc, .L71
	 add	%g1, 1, %g1
.L70:
	ldub	[%g1], %g1
.L73:
	ldub	[%i1], %g2
	sub	%g1, %g2, %g1
.L68:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -176, %sp
	mov	%i0, %g1
	ba,pt	%xcc, .L75
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
	bg,a,pt	%xcc, .L76
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
	bne,pt	%icc, .L88
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L88
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 3
	addx	%g0, 0, %g3
.L88:
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
	bgu,a,pt %icc, .L94
	 sethi	%hi(8192), %g1
	add	%i0, 1, %i0
	and	%i0, 127, %i0
	cmp	%i0, 32
	mov	0, %g1
	ba,pt	%xcc, .L95
	 movgu	%icc, 1, %g1
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
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L95
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%i0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L95
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%i0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L95
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %i0, %i0
	cmp	%g0, %i0
	addx	%g0, 0, %g1
.L95:
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
	bleu,pt	%icc, .L101
	 mov	1, %g1
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 6
	addx	%g0, 0, %g1
.L101:
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
	fbu,pn	%fcc0, .L113
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L109
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L112
	 nop
	return	%i7+8
	 fsubd	%f0, %f2, %f0
.L109:
	return	%i7+8
	 fmovd	%f2, %f0
.L112:
	fzero	%f0
.L113:
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
	fbu,pn	%fcc3, .L117
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L118
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L121
	 nop
	return	%i7+8
	 fsubs	%f1, %f3, %f0
.L117:
	return	%i7+8
	 fmovs	%f1, %f0
.L118:
	return	%i7+8
	 fmovs	%f3, %f0
.L121:
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
	fbu,pn	%fcc2, .L126
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L131
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L124
	 fcmped	%fcc0, %f0, %f2
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	fmovrdgez	%g1, %f0, %f2
	return	%i7+8
	 fmovd	%f2, %f0
.L124:
	fmovdl	%fcc0, %f2, %f8
	return	%i7+8
	 fmovd	%f8, %f0
.L126:
	return	%i7+8
	 fmovd	%f2, %f0
.L131:
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
	fbu,pn	%fcc1, .L136
	 nop
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L137
	 sethi	%hi(-2147483648), %g3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L134
	 fcmpes	%fcc3, %f1, %f3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	cmp	%g1, 0
	fmovsge	%icc, %f1, %f3
	return	%i7+8
	 fmovs	%f3, %f0
.L134:
	fmovsl	%fcc3, %f3, %f1
	return	%i7+8
	 fmovs	%f1, %f0
.L136:
	return	%i7+8
	 fmovs	%f3, %f0
.L137:
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
	be,pn	%xcc, .L145
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
	be,pn	%xcc, .L146
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
	be,a,pt	%icc, .L143
	 ldx	[%fp+1935], %g2
	std	%f12, [%fp+1935]
	ldx	[%fp+1935], %g1
	fmovrdgez	%g1, %f12, %f8
	fmovrdgez	%g1, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L143:
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
.L145:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L146:
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
	fbu,pn	%fcc0, .L154
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L159
	 nop
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L152
	 fcmped	%fcc2, %f0, %f2
	std	%f0, [%fp+2039]
	ldx	[%fp+2039], %g1
	fmovrdgez	%g1, %f2, %f8
	return	%i7+8
	 fmovd	%f8, %f0
.L152:
	fmovdl	%fcc2, %f0, %f2
	return	%i7+8
	 fmovd	%f2, %f0
.L154:
	return	%i7+8
	 fmovd	%f2, %f0
.L159:
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
	fbu,pn	%fcc3, .L164
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L165
	 sethi	%hi(-2147483648), %g3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g2
	and	%g2, %g3, %g2
	st	%f3, [%fp+2043]
	lduw	[%fp+2043], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L162
	 fcmpes	%fcc1, %f1, %f3
	st	%f1, [%fp+2043]
	lduw	[%fp+2043], %g1
	cmp	%g1, 0
	fmovsge	%icc, %f3, %f1
	return	%i7+8
	 fmovs	%f1, %f0
.L162:
	fmovsl	%fcc1, %f1, %f3
	return	%i7+8
	 fmovs	%f3, %f0
.L164:
	return	%i7+8
	 fmovs	%f3, %f0
.L165:
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
	be,pn	%xcc, .L173
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
	be,pn	%xcc, .L174
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
	be,a,pt	%icc, .L171
	 ldx	[%fp+1935], %g2
	std	%f8, [%fp+1935]
	ldx	[%fp+1935], %g1
	fmovd	%f8, %f0
	fmovd	%f10, %f2
	fmovrdgez	%g1, %f12, %f0
	return	%i7+8
	 fmovrdgez	%g1, %f14, %f2
.L171:
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
.L173:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L174:
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
	sethi	%hi(digits), %g3
	ba,pt	%xcc, .L179
	 or	%g3, %lo(digits), %g3
.L180:
	ldub	[%g3+%g2], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%i0, 6, %i0
.L179:
	cmp	%i0, 0
	bne,pt	%icc, .L180
	 and	%i0, 63, %g2
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
	brnz,a,pt %i1, .L184
	 ldx	[%i1], %g1
	stx	%g0, [%i0+8]
	stx	%g0, [%i0]
.L187:
	return	%i7+8
	 nop
.L184:
	stx	%g1, [%i0]
	stx	%i1, [%i0+8]
	stx	%i0, [%i1]
	ldx	[%i0], %g1
	brnz,a,pt %g1, .L187
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
	brz,a,pn %g1, .L191
	 ldx	[%i0+8], %g1
	ldx	[%i0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%i0+8], %g1
.L191:
	brz,pn	%g1, .L192
	 nop
	ldx	[%i0], %g2
	stx	%g2, [%g1]
.L192:
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
	ba,pt	%xcc, .L194
	 mov	0, %i5
.L197:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L195
	 add	%l0, %i3, %l0
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L195:
	add	%i5, 1, %i5
.L194:
	cmp	%i5, %l1
	bne,pt	%xcc, .L197
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
	ba,pt	%xcc, .L199
	 mov	0, %i5
.L202:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L200
	 add	%i2, %i3, %i2
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L200:
	add	%i5, 1, %i5
.L199:
	cmp	%i5, %l0
	bne,pt	%xcc, .L202
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
.L206:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L206
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L212
	 cmp	%g1, 45
	bne,pt	%icc, .L208
	 mov	0, %g3
	ba,pt	%xcc, .L207
	 mov	1, %g3
.L212:
	mov	0, %g3
.L207:
	add	%i0, 1, %i0
.L208:
	ba,pt	%xcc, .L209
	 mov	0, %g1
.L210:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L209:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L210
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
.L217:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L217
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L223
	 cmp	%g1, 45
	bne,pt	%icc, .L219
	 mov	0, %g3
	ba,pt	%xcc, .L218
	 mov	1, %g3
.L223:
	mov	0, %g3
.L218:
	add	%i0, 1, %i0
.L219:
	ba,pt	%xcc, .L220
	 mov	0, %g1
.L221:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L220:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L221
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
.L228:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L228
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L234
	 cmp	%g1, 45
	bne,pt	%icc, .L230
	 mov	0, %g3
	ba,pt	%xcc, .L229
	 mov	1, %g3
.L234:
	mov	0, %g3
.L229:
	add	%i0, 1, %i0
.L230:
	ba,pt	%xcc, .L231
	 mov	0, %g1
.L232:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L231:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L232
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
	ba,pt	%xcc, .L238
	 nop
.L242:
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge,pt	%icc, .L239
	 nop
	ba,pt	%xcc, .L238
	 srlx	%i2, 1, %i2
.L239:
	ble,pn	%icc, .L243
	 add	%i5, %i3, %i1
	srlx	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L238:
	brnz,pt	%i2, .L242
	 srlx	%i2, 1, %i5
	return	%i7+8
	 mov	0, %o0
.L243:
	return	%i7+8
	 mov	%o5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L250
	 cmp	%i2, 0
.L248:
	mulx	%l0, %i3, %l0
	add	%i1, %l0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L249
	 nop
	ble,a,pn %icc, .L251
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L251:
	cmp	%i2, 0
.L250:
	bne,pt	%icc, .L248
	 sra	%i2, 1, %l0
	return	%i7+8
	 mov	0, %o0
.L249:
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
	ba,pt	%xcc, .L265
	 lduw	[%i0], %g1
.L262:
	lduw	[%i0], %g1
.L265:
	cmp	%g1, 0
	be,pn	%icc, .L266
	 lduw	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L262
	 add	%i0, 4, %i0
	lduw	[%i0], %g1
.L266:
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
	ba,pt	%xcc, .L273
	 lduw	[%i0], %g2
.L270:
	add	%i1, 4, %i1
	lduw	[%i0], %g2
.L273:
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne,a,pn %icc, .L274
	 lduw	[%i0], %g3
	lduw	[%i0], %g1
	cmp	%g1, 0
	be,a,pn	%icc, .L274
	 lduw	[%i0], %g3
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L270
	 add	%i0, 4, %i0
	lduw	[%i0], %g3
.L274:
	lduw	[%i1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L271
	 mov	-1, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L271:
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
	add	%i0, -4, %g3
	lduw	[%i1+%g1], %g2
.L278:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	lduw	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L278
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
.L281:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L281
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
	ba,pt	%xcc, .L283
	 nop
.L285:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L283:
	brz,pn	%i2, .L289
	 mov	0, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L284
	 nop
	lduw	[%i0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L284
	 nop
	lduw	[%i1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L285
	 add	%i2, -1, %i2
.L284:
	brz,pt	%i2, .L286
	 mov	0, %g1
	lduw	[%i0], %g3
	lduw	[%i1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L286
	 mov	-1, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L286:
.L289:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L291
	 nop
.L293:
	add	%i0, 4, %i0
.L291:
	brz,pn	%i2, .L292
	 nop
	lduw	[%i0], %g1
	cmp	%g1, %i1
	bne,a,pt %icc, .L293
	 add	%i2, -1, %i2
.L292:
	return	%i7+8
	 movre	%o2, %g0, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L297
	 nop
.L299:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
.L297:
	brz,pn	%i2, .L303
	 mov	0, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L299
	 add	%i2, -1, %i2
	brz,pt	%i2, .L300
	 mov	0, %g1
	lduw	[%i0], %g3
	lduw	[%i1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L300
	 mov	-1, %g1
	lduw	[%i0], %g2
	lduw	[%i1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L300:
.L303:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L305
	 mov	0, %g1
.L306:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L305:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a,pt %xcc, .L306
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
	be,pn	%xcc, .L315
	 sub	%i0, %i1, %g1
	sllx	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu,pt	%xcc, .L313
	 mov	0, %g1
	ba,pt	%xcc, .L310
	 mov	%g2, %i2
.L311:
	st	%g1, [%i0+%i2]
.L310:
	add	%i2, -4, %i2
	cmp	%i2, -4
	bne,a,pt %xcc, .L311
	 lduw	[%i1+%i2], %g1
.L315:
	return	%i7+8
	 nop
.L312:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L313:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a,pt %xcc, .L312
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
	ba,pt	%xcc, .L317
	 mov	%i0, %g1
.L318:
	st	%i1, [%g1-4]
.L317:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,pt	%xcc, .L318
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
	bgeu,pt	%xcc, .L320
	 nop
	add	%i0, -1, %i0
	ba,pt	%xcc, .L321
	 add	%i1, -1, %i1
.L322:
	stb	%g1, [%i1+%i2]
	add	%i2, -1, %i2
.L321:
	brnz,a,pt %i2, .L322
	 ldub	[%i0+%i2], %g1
	return	%i7+8
	 nop
.L320:
	bne,pt	%xcc, .L324
	 mov	0, %g1
	return	%i7+8
	 nop
.L325:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L324:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L325
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
	ba,pt	%xcc, .L342
	 mov	0, %g1
.L345:
	andcc	%g2, 1, %g0
	be,a,pt	%xcc, .L343
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L344
	 add	%g1, 1, %i0
.L343:
.L342:
	cmp	%g1, 32
	bne,pt	%icc, .L345
	 srl	%i0, %g1, %g2
	mov	0, %i0
.L344:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -176, %sp
	brz,pn	%i0, .L347
	 mov	0, %g1
	ba,pt	%xcc, .L348
	 mov	1, %g1
.L349:
	add	%g1, 1, %g1
.L348:
	andcc	%i0, 1, %g0
	be,a,pt	%xcc, .L349
	 sra	%i0, 1, %i0
.L347:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4,"aM",@progbits,4
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
	fbl,pt	%fcc2, .L352
	 mov	1, %i0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %i0
	movg	%fcc3, 1, %i0
.L352:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8,"aM",@progbits,8
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
	fbl,pt	%fcc0, .L358
	 mov	1, %i0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %i0
	movg	%fcc1, 1, %i0
.L358:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst16,"aM",@progbits,16
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
	brnz,pt	%o0, .L364
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
.L364:
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
	.section	.rodata.cst4
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
	fbu,pn	%fcc2, .L371
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f1, %f8
	fbe,pt	%fcc3, .L371
	 sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f8
	cmp	%i1, 0
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	fmovsl	%icc, %f9, %f8
.L374:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L373
	 fmuls	%f1, %f8, %f1
.L373:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L371
	 nop
	ba,pt	%xcc, .L374
	 fmuls	%f8, %f8, %f8
.L371:
	return	%i7+8
	 fmovs	%f1, %f0
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
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
	fbu,pn	%fcc0, .L382
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f0, %f8
	fbe,pt	%fcc1, .L382
	 sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f8
	cmp	%i1, 0
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f10
	fmovdl	%icc, %f10, %f8
.L380:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L379
	 fmuld	%f0, %f8, %f0
.L379:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L382
	 nop
	ba,pt	%xcc, .L380
	 fmuld	%f8, %f8, %f8
.L382:
	return	%i7+8
	 nop
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
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
	be,pn	%xcc, .L384
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
	brnz,a,pt %o0, .L389
	 stx	%i0, [%fp+1727]
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	cmp	%i2, 0
	bge,pt	%icc, .L385
	 ldx	[%g1+%lo(.LC21+8)], %i5
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	ldx	[%g1+%lo(.LC20+8)], %i5
.L385:
	add	%fp, 1871, %l4
	add	%fp, 1855, %l3
	add	%fp, 1839, %l2
	add	%fp, 1775, %l1
	add	%fp, 1759, %l0
	add	%fp, 1743, %i3
.L387:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L390
	 srl	%i2, 31, %g1
	stx	%i0, [%fp+1855]
	stx	%i1, [%fp+1863]
	stx	%i4, [%fp+1839]
	stx	%i5, [%fp+1847]
	mov	%l2, %o2
	mov	%l3, %o1
	call	_Qp_mul, 0
	 mov	%l4, %o0
	ldx	[%fp+1871], %i0
	ldx	[%fp+1879], %i1
	srl	%i2, 31, %g1
.L390:
	add	%g1, %i2, %g1
	sra	%g1, 1, %i2
	brz,pn	%i2, .L384
	 mov	%i3, %o2
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	stx	%i5, [%fp+1751]
	mov	%l0, %o1
	call	_Qp_mul, 0
	 mov	%l1, %o0
	ldx	[%fp+1775], %i4
	ba,pt	%xcc, .L387
	 ldx	[%fp+1783], %i5
.L384:
	stx	%i0, [%fp+1727]
.L389:
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
	ba,pt	%xcc, .L392
	 mov	0, %g1
.L393:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L392:
	cmp	%g1, %i2
	bne,a,pt %xcc, .L393
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
	ba,pt	%xcc, .L395
	 add	%i0, %o0, %o0
.L397:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L395:
	brz,a,pn %i2, .L399
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L397
	 add	%i1, 1, %i1
	brz,a,pt %i2, .L399
	 stb	%g0, [%o0]
.L399:
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
.L403:
	cmp	%g1, %i1
	be,pn	%xcc, .L402
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a,pn %icc, .L403
	 add	%g1, 1, %g1
.L402:
	return	%i7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L411
	 ldsb	[%i0], %g1
.L407:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	bne,a,pt %icc, .L412
	 ldsb	[%g1], %g2
	return	%i7+8
	 nop
.L410:
	ldsb	[%g1], %g2
.L412:
	cmp	%g2, 0
	bne,pt	%icc, .L407
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L411:
	cmp	%g1, 0
	bne,pt	%icc, .L410
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
.L418:
	cmp	%g2, %i1
	move	%icc, %g1, %i0
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L418
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
	brz,pn	%o0, .L420
	 mov	%i0, %g1
	ba,pt	%xcc, .L421
	 ldsb	[%i1], %i4
.L422:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L424
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L421:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	brnz,pt	%o0, .L422
	 mov	%o0, %i0
	mov	0, %g1
.L424:
.L420:
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
	fbuge,pt %fcc2, .L426
	 nop
	fcmped	%fcc3, %f2, %f8
	fbg,a,pn %fcc3, .L438
	 fnegd	%f0, %f0
.L426:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L438
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,a,pn %fcc1, .L438
	 fnegd	%f0, %f0
.L438:
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
	brz,pn	%i3, .L440
	 mov	%i0, %g1
	cmp	%i1, %i3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brnz,pn	%g1, .L445
	 add	%i2, 1, %i4
	ba,pt	%xcc, .L441
	 add	%i3, -1, %i3
.L443:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a,pt %icc, .L441
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i4, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be,pn	%icc, .L446
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L441:
	cmp	%i0, %i5
	bleu,a,pt %xcc, .L443
	 ldsb	[%i0], %g2
	ba,pt	%xcc, .L440
	 mov	0, %g1
.L445:
	mov	0, %g1
.L446:
.L440:
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
	.section	.rodata.cst8
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
	fbuge,pt %fcc2, .L463
	 nop
	fnegd	%f0, %f0
	ba,pt	%xcc, .L449
	 mov	1, %g2
.L463:
	mov	0, %g2
.L449:
	sethi	%hi(.LC24), %g3
	ldd	[%g3+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbul,pn	%fcc3, .L464
	 mov	0, %g1
	sethi	%hi(.LC25), %g3
	ba,pt	%xcc, .L451
	 ldd	[%g3+%lo(.LC25)], %f10
.L453:
	fmuld	%f0, %f10, %f0
.L451:
	fcmped	%fcc0, %f0, %f8
	fbge,a,pt %fcc0, .L453
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L465
	 st	%g1, [%i1]
.L464:
	fzero	%f8
	fcmpd	%fcc1, %f0, %f8
	mov	0, %g1
	movne	%fcc1, 1, %g1
	sethi	%hi(.LC25), %g3
	ldd	[%g3+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g3
	movl	%fcc2, 1, %g3
	andcc	%g3, %g1, %g0
	bne,pn	%icc, .L460
	 mov	0, %g1
	ba,pt	%xcc, .L465
	 st	%g1, [%i1]
.L456:
	ba,pt	%xcc, .L455
	 faddd	%f0, %f0, %f0
.L460:
	sethi	%hi(.LC25), %g3
	ldd	[%g3+%lo(.LC25)], %f8
.L455:
	fcmped	%fcc3, %f0, %f8
	fbl,a,pt %fcc3, .L456
	 add	%g1, -1, %g1
	st	%g1, [%i1]
.L465:
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
	ba,pt	%xcc, .L467
	 mov	0, %i0
.L469:
	mov	%i1, %g2
	movre	%g3, %g0, %g2
	add	%i0, %g2, %i0
	add	%i1, %i1, %i1
	srlx	%g1, 1, %g1
.L467:
	brnz,pt	%g1, .L469
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
	ba,pt	%xcc, .L471
	 mov	1, %g1
.L474:
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L471:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L472
	 cmp	%i1, 0
	ba,pt	%xcc, .L473
	 mov	0, %g2
.L472:
	bge,a,pt %icc, .L474
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L473
	 mov	0, %g2
.L477:
	blu,a,pt %icc, .L480
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L480:
	srlx	%i1, 1, %i1
.L473:
	cmp	%g1, 0
	bne,a,pt %icc, .L477
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
	bge,pt	%icc, .L482
	 nop
	xnor	%g0, %i0, %i0
	sllx	%i0, 56, %i0
	srax	%i0, 56, %i0
.L482:
	brz,pn	%i0, .L483
	 mov	7, %o0
	sll	%i0, 8, %i0
	call	__clzdi2, 0
	 srl	%i0, 0, %o0
	add	%o0, -33, %o0
.L483:
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
	brz,pn	%o0, .L487
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L487:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L490
	 mov	0, %g1
.L492:
	andcc	%i0, 1, %g0
	movne	%xcc, %g2, %g1
	srlx	%i0, 1, %i0
	add	%i1, %i1, %i1
	srl	%i1, 0, %i1
.L490:
	brnz,pt	%i0, .L492
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
	blu,pt	%xcc, .L494
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a,pt %xcc, .L503
	 add	%i2, -1, %g1
.L494:
	srl	%g4, 0, %g4
	sllx	%g4, 3, %g4
	ba,pt	%xcc, .L496
	 mov	0, %g2
.L497:
	stx	%g3, [%i0+%g2]
	add	%g2, 8, %g2
.L496:
	cmp	%g2, %g4
	bne,a,pt %xcc, .L497
	 ldx	[%i1+%g2], %g3
	ba,pt	%xcc, .L498
	 srl	%g1, 0, %g1
.L499:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L498:
	cmp	%g1, %i2
	blu,a,pt %icc, .L499
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L501:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L503:
	cmp	%g1, -1
	bne,pt	%icc, .L501
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
	blu,pt	%xcc, .L505
	 srl	%i2, 1, %g3
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu,a,pt %xcc, .L512
	 add	%i2, -1, %g1
.L505:
	srl	%g3, 0, %g3
	add	%g3, %g3, %g3
	ba,pt	%xcc, .L507
	 mov	0, %g1
.L508:
	sth	%g2, [%i0+%g1]
	add	%g1, 2, %g1
.L507:
	cmp	%g1, %g3
	bne,a,pt %xcc, .L508
	 lduh	[%i1+%g1], %g2
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L514
	 add	%i2, -1, %i2
	srl	%i2, 0, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L514:
	return	%i7+8
	 nop
.L510:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L512:
	cmp	%g1, -1
	bne,pt	%icc, .L510
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
	blu,pt	%xcc, .L516
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a,pt %xcc, .L525
	 add	%i2, -1, %g1
.L516:
	srl	%g4, 0, %g4
	sllx	%g4, 2, %g4
	ba,pt	%xcc, .L518
	 mov	0, %g2
.L519:
	st	%g3, [%i0+%g2]
	add	%g2, 4, %g2
.L518:
	cmp	%g2, %g4
	bne,a,pt %xcc, .L519
	 lduw	[%i1+%g2], %g3
	ba,pt	%xcc, .L520
	 srl	%g1, 0, %g1
.L521:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L520:
	cmp	%g1, %i2
	blu,a,pt %icc, .L521
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L523:
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %g1
.L525:
	cmp	%g1, -1
	bne,pt	%icc, .L523
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
	brlz,pn	%i0, .L534
	 srlx	%i0, 1, %g1
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtod	%f8, %f0
.L534:
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
	brlz,pn	%i0, .L537
	 srlx	%i0, 1, %g1
	stx	%i0, [%fp+2039]
	ldd	[%fp+2039], %f8
	return	%i7+8
	 fxtos	%f8, %f0
.L537:
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
	mov	0, %g1
	ba,pt	%xcc, .L541
	 mov	15, %g3
.L543:
	sra	%i0, %g2, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L542
	 nop
	add	%g1, 1, %g1
.L541:
	cmp	%g1, 16
	bne,pt	%icc, .L543
	 sub	%g3, %g1, %g2
.L542:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L545
	 mov	0, %g1
.L547:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L546
	 nop
	add	%g1, 1, %g1
.L545:
	cmp	%g1, 16
	bne,pt	%icc, .L547
	 sra	%i0, %g1, %g2
.L546:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
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
	fbul,pt	%fcc0, .L553
	 nop
	fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
	sethi	%hi(32768), %g1
	ldx	[%fp+2039], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L551
	 stx	%g1, [%fp+2039]
.L553:
	fstox	%f1, %f8
	std	%f8, [%fp+2039]
.L551:
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
	ba,pt	%xcc, .L555
	 mov	0, %g1
.L557:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L555:
	cmp	%g1, 16
	bne,pt	%icc, .L557
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
	ba,pt	%xcc, .L559
	 mov	0, %g1
.L561:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L559:
	cmp	%g1, 16
	bne,pt	%icc, .L561
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
	ba,pt	%xcc, .L563
	 mov	0, %g1
.L565:
	andcc	%i0, 1, %g0
	movne	%xcc, %g2, %g1
	srlx	%i0, 1, %i0
	add	%i1, %i1, %i1
	srl	%i1, 0, %i1
.L563:
	brnz,pt	%i0, .L565
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
	brz,pn	%i0, .L567
	 mov	0, %g1
	ba,pt	%xcc, .L568
	 nop
.L570:
	andcc	%i1, 1, %g0
	movne	%xcc, %g2, %g1
	add	%i0, %i0, %i0
	srl	%i0, 0, %i0
	srlx	%i1, 1, %i1
.L568:
	brnz,pt	%i1, .L570
	 add	%g1, %i0, %g2
.L567:
	return	%i7+8
	 srl	%g1, 0, %o0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L573
	 mov	1, %g1
.L576:
	srl	%i1, 0, %i1
	add	%g1, %g1, %g1
.L573:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L574
	 cmp	%i1, 0
	ba,pt	%xcc, .L575
	 mov	0, %g2
.L574:
	bge,a,pt %icc, .L576
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L575
	 mov	0, %g2
.L579:
	blu,a,pt %icc, .L582
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	srl	%i0, 0, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L582:
	srlx	%i1, 1, %i1
.L575:
	cmp	%g1, 0
	bne,a,pt %icc, .L579
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
	fbl,pn	%fcc1, .L584
	 mov	-1, %i0
	mov	0, %i0
	movg	%fcc1, 1, %i0
.L584:
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
	fbl,pn	%fcc2, .L588
	 mov	-1, %i0
	mov	0, %i0
	movg	%fcc2, 1, %i0
.L588:
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
	bge,pt	%icc, .L594
	 mov	0, %g5
	sub	%g0, %i1, %i1
	sra	%i1, 0, %i1
	mov	1, %g5
.L594:
	mov	0, %g2
	ba,pt	%xcc, .L595
	 mov	0, %g3
.L597:
	andcc	%i1, 1, %g0
	movne	%xcc, %g1, %g2
	add	%i0, %i0, %i0
	sra	%i0, 0, %i0
	sra	%i1, 1, %i1
	add	%g3, 1, %g3
.L595:
	cmp	%g0, %i1
	addx	%g0, 0, %g4
	and	%g3, 0xff, %g1
	cmp	%g1, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	andcc	%g1, %g4, %g0
	bne,pt	%icc, .L597
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
	brgez,pt %i0, .L602
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L602:
	brgez,pt %i1, .L606
	 mov	0, %o2
	sub	%g0, %i1, %i1
	xor	%i5, 1, %i5
.L606:
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
	brgez,pt %i0, .L608
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L608:
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
	ba,pt	%xcc, .L613
	 mov	1, %g1
.L616:
	sllx	%i1, 48, %i1
	srlx	%i1, 48, %i1
	add	%g1, %g1, %g1
.L613:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L614
	 sll	%i1, 16, %g2
	ba,pt	%xcc, .L615
	 mov	0, %g3
.L614:
	cmp	%g2, 0
	bge,a,pt %icc, .L616
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L615
	 mov	0, %g3
.L619:
	blu,a,pt %icc, .L622
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sllx	%i0, 48, %i0
	srlx	%i0, 48, %i0
	or	%g3, %g1, %g3
	sll	%g1, 16, %g1
.L622:
	srl	%g1, 17, %g1
	srlx	%i1, 1, %i1
.L615:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L619
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
	mov	1, %g1
	ba,pt	%xcc, .L624
	 sethi	%hi(2147483648), %g4
.L627:
	add	%g1, %g1, %g1
.L624:
	cmp	%i1, %i0
	mov	0, %g3
	movlu	%xcc, 1, %g3
	mov	0, %g2
	movrne	%g1, 1, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L625
	 and	%i1, %g4, %g2
	ba,pt	%xcc, .L626
	 mov	0, %g2
.L625:
	brz,a,pt %g2, .L627
	 add	%i1, %i1, %i1
	ba,pt	%xcc, .L626
	 mov	0, %g2
.L630:
	blu,a,pt %xcc, .L633
	 srlx	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L633:
	srlx	%i1, 1, %i1
.L626:
	brnz,pt	%g1, .L630
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
	be,pt	%xcc, .L635
	 mov	%i0, %g1
	sll	%i0, %i1, %i0
	return	%i7+8
	 sllx	%o0, 32, %o0
.L635:
	brz,pn	%i1, .L639
	 srax	%g1, 32, %g2
	sll	%i0, %i1, %i0
	sll	%g2, %i1, %g2
	sub	%g0, %i1, %i1
	srl	%g1, %i1, %g1
	or	%g1, %g2, %g1
	sllx	%g1, 32, %g1
	srl	%i0, 0, %i0
	or	%i0, %g1, %i0
.L639:
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
	be,a,pt	%xcc, .L641
	 mov	%i0, %g2
	mov	0, %g3
	ba,pt	%xcc, .L643
	 sllx	%i1, %i2, %g2
.L641:
	brz,pn	%i2, .L643
	 mov	%i1, %g3
	sllx	%i1, %i2, %g3
	sllx	%i0, %i2, %g1
	sub	%g0, %i2, %i2
	srlx	%i1, %i2, %i2
	or	%i2, %g1, %g2
.L643:
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
	be,pt	%xcc, .L646
	 mov	%i0, %g1
	srax	%i0, 32, %g1
	sra	%g1, %i1, %i1
	srl	%i1, 0, %i1
	sra	%g1, 31, %g1
	sllx	%g1, 32, %g1
	return	%i7+8
	 or	%g1, %o1, %o0
.L646:
	brz,pn	%i1, .L650
	 sub	%g0, %i1, %g2
	srax	%i0, 32, %i0
	sll	%i0, %g2, %g2
	srl	%g1, %i1, %g1
	or	%g2, %g1, %g2
	srl	%g2, 0, %g2
	sra	%i0, %i1, %i0
	sllx	%i0, 32, %i0
	or	%i0, %g2, %i0
.L650:
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
	be,a,pt	%xcc, .L652
	 mov	%i0, %g2
	srax	%i0, 63, %g2
	ba,pt	%xcc, .L654
	 srax	%i0, %i2, %g3
.L652:
	brz,pn	%i2, .L654
	 mov	%i1, %g3
	srax	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sllx	%i0, %g1, %g1
	srlx	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L654:
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
	bl,pn	%icc, .L669
	 mov	0, %g1
	cmp	%g3, %g2
	bg,pn	%icc, .L669
	 mov	2, %g1
	cmp	%i0, %i1
	blu,pn	%icc, .L669
	 mov	0, %g1
	cmp	%i1, %i0
	addx	%g0, 1, %g1
.L669:
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
	bl,pn	%xcc, .L676
	 mov	0, %g1
	bg,pn	%xcc, .L676
	 mov	2, %g1
	cmp	%i1, %i3
	blu,pn	%xcc, .L676
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L676:
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
	brnz,pt	%i1, .L692
	 nop
	brz,pt	%i0, .L693
	 mov	0, %o0
	call	__ctzdi2, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L693
	 add	%o0, 65, %o0
.L692:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
.L693:
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
	be,pt	%xcc, .L696
	 srlx	%i0, 32, %g2
	return	%i7+8
	 srl	%g2, %o1, %o0
.L696:
	brz,pn	%i1, .L700
	 srlx	%i0, 32, %g1
	sub	%g0, %i1, %g3
	sll	%g1, %g3, %g3
	srl	%i0, %i1, %g2
	or	%g3, %g2, %g3
	srl	%g3, 0, %g3
	srl	%g1, %i1, %i0
	sllx	%i0, 32, %i0
	or	%i0, %g3, %i0
.L700:
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
	be,a,pt	%xcc, .L702
	 mov	%i0, %g2
	mov	0, %g2
	ba,pt	%xcc, .L704
	 srlx	%i0, %i2, %g3
.L702:
	brz,pn	%i2, .L704
	 mov	%i1, %g3
	srlx	%i0, %i2, %g2
	sub	%g0, %i2, %g1
	sllx	%i0, %g1, %g1
	srlx	%i1, %i2, %i2
	or	%g1, %i2, %g3
.L704:
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
	.section	.rodata.cst8
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
.L721:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L719
	 fmuld	%f8, %f0, %f8
.L719:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L720
	 cmp	%g2, 0
	ba,pt	%xcc, .L721
	 fmuld	%f0, %f0, %f0
.L720:
	be,pt	%icc, .L724
	 fmovd	%f8, %f0
	sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f0
	fdivd	%f0, %f8, %f0
.L724:
	return	%i7+8
	 nop
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
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
.L728:
	andcc	%i1, 1, %g0
	bne,a,pt %xcc, .L726
	 fmuls	%f8, %f1, %f8
.L726:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	brz,pn	%i1, .L727
	 cmp	%g2, 0
	ba,pt	%xcc, .L728
	 fmuls	%f1, %f1, %f1
.L727:
	be,pt	%icc, .L731
	 fmovs	%f8, %f0
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f0
	fdivs	%f0, %f8, %f0
.L731:
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
	blu,pn	%icc, .L733
	 mov	0, %g1
	cmp	%g3, %g2
	bgu,pn	%icc, .L733
	 mov	2, %g1
	cmp	%i0, %i1
	blu,pn	%icc, .L733
	 mov	0, %g1
	cmp	%i1, %i0
	addx	%g0, 1, %g1
.L733:
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
	blu,pn	%xcc, .L740
	 mov	0, %g1
	bgu,pn	%xcc, .L740
	 mov	2, %g1
	cmp	%i1, %i3
	blu,pn	%xcc, .L740
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L740:
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
