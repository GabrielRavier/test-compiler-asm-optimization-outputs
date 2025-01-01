	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global make_ti
	.type	make_ti, #function
	.proc	05
make_ti:
	jmp	%o7+8
	 nop
	.size	make_ti, .-make_ti
	.align 4
	.global make_tu
	.type	make_tu, #function
	.proc	017
make_tu:
	jmp	%o7+8
	 nop
	.size	make_tu, .-make_tu
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	.register	%g2, #scratch
	cmp	%o0, %o1
	bleu,pt	%xcc, .L4
	 add	%o0, -1, %g2
	ba,pt	%xcc, .L5
	 add	%o1, -1, %o1
.L6:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
.L5:
	brnz,a,pt %o2, .L6
	 ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L4:
	bne,pt	%xcc, .L8
	 mov	0, %g1
	jmp	%o7+8
	 nop
.L9:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L8:
	cmp	%g1, %o2
	bne,a,pt %xcc, .L9
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	ba,pt	%xcc, .L13
	 and	%o2, 0xff, %o2
.L15:
	add	%o1, 1, %o1
	add	%o0, 1, %o0
.L13:
	brz,pn	%o3, .L18
	 add	%o0, 1, %g1
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne,a,pt %icc, .L15
	 add	%o3, -1, %o3
	add	%o0, 1, %g1
.L18:
	mov	0, %o0
	jmp	%o7+8
	 movrne	%o3, %g1, %o0
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	ba,pt	%xcc, .L20
	 and	%o1, 0xff, %o1
.L22:
	add	%o2, -1, %o2
.L20:
	brz,pn	%o2, .L21
	 nop
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L22
	 add	%o0, 1, %o0
.L21:
	jmp	%o7+8
	 movre	%o2, %g0, %o0
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	ba,pt	%xcc, .L26
	 nop
.L28:
	add	%o0, 1, %o0
	add	%o1, 1, %o1
.L26:
	brz,pn	%o2, .L31
	 mov	0, %g1
	ldub	[%o0], %g2
	ldub	[%o1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L28
	 add	%o2, -1, %o2
	brz,pt	%o2, .L29
	 mov	0, %g1
	ldub	[%o0], %g1
	ldub	[%o1], %g2
	sub	%g1, %g2, %g1
.L29:
.L31:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	ba,pt	%xcc, .L33
	 mov	0, %g1
.L34:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L33:
	cmp	%g1, %o2
	bne,a,pt %xcc, .L34
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	and	%o1, 0xff, %o1
	add	%o2, -1, %o2
.L36:
	cmp	%o2, -1
	be,pn	%xcc, .L40
	 nop
	ldub	[%o0+%o2], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L41
	 add	%o2, -1, %g2
	ba,pt	%xcc, .L36
	 mov	%g2, %o2
.L41:
	jmp	%o7+8
	 add	%o0, %o2, %o0
.L40:
	jmp	%o7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	add	%o0, %o2, %o2
	ba,pt	%xcc, .L43
	 mov	%o0, %g1
.L44:
	add	%g1, 1, %g1
.L43:
	cmp	%g1, %o2
	bne,a,pt %xcc, .L44
	 stb	%o1, [%g1]
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	ba,pt	%xcc, .L48
	 ldub	[%o1], %g1
.L47:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
.L48:
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L47
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	and	%o1, 0xff, %o1
.L52:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L53
	 nop
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L52
	 add	%o0, 1, %o0
.L53:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	ldsb	[%o0], %g1
.L59:
	cmp	%g1, %o1
	be,pn	%icc, .L60
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0-1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L59
	 ldsb	[%o0], %g1
	mov	0, %o0
.L60:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ba,pt	%xcc, .L65
	 ldsb	[%o0], %g2
.L64:
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
.L65:
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L63
	 cmp	%g2, 0
	bne,a,pt %icc, .L64
	 add	%o0, 1, %o0
.L63:
	ldub	[%o0], %o0
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	017
strlen:
	mov	%o0, %g1
.L68:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L68
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	.register	%g3, #scratch
	brz,pn	%o2, .L70
	 mov	0, %g1
	mov	%o0, %g1
	add	%o2, -1, %o2
	add	%o2, %o0, %o0
.L71:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be,pn	%icc, .L72
	 sub	%o0, %g1, %g3
	mov	0, %g2
	movrne	%g3, 1, %g2
	ldub	[%o1], %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	andcc	%g2, %g3, %g0
	be,a,pn	%icc, .L75
	 ldub	[%g1], %g1
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	bne,a,pn %icc, .L76
	 ldub	[%g1], %g1
	add	%g1, 1, %g1
	ba,pt	%xcc, .L71
	 add	%o1, 1, %o1
.L72:
	ldub	[%g1], %g1
.L75:
	ldub	[%o1], %g2
.L76:
	sub	%g1, %g2, %g1
.L70:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	mov	%o0, %g1
	ba,pt	%xcc, .L78
	 add	%o0, %o2, %o2
.L79:
	stb	%g2, [%o1]
	ldub	[%g1], %g2
	stb	%g2, [%o1+1]
	add	%o1, 2, %o1
	add	%g1, 2, %g1
.L78:
	sub	%o2, %g1, %g2
	cmp	%g2, 1
	bg,a,pt	%xcc, .L79
	 ldub	[%g1+1], %g2
	jmp	%o7+8
	 nop
	.size	swab, .-swab
	.align 4
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	or	%o0, 32, %o0
	add	%o0, -97, %o0
	cmp	%o0, 25
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	cmp	%o0, 127
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	isascii, .-isascii
	.align 4
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	xor	%o0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	xor	%o0, 9, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	isblank, .-isblank
	.align 4
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	cmp	%o0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	xor	%o0, 127, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	add	%o0, -48, %o0
	cmp	%o0, 9
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	add	%o0, -33, %o0
	cmp	%o0, 93
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	add	%o0, -97, %o0
	cmp	%o0, 25
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	add	%o0, -32, %o0
	cmp	%o0, 94
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	isprint, .-isprint
	.align 4
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	xor	%o0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	add	%o0, -9, %o0
	cmp	%o0, 4
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 or	%o0, %g2, %o0
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	add	%o0, -65, %o0
	cmp	%o0, 25
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	cmp	%o0, 31
	mov	0, %g2
	movleu	%icc, 1, %g2
	add	%o0, -127, %g1
	cmp	%g1, 32
	mov	0, %g1
	movleu	%icc, 1, %g1
	orcc	%g2, %g1, %g0
	bne,pt	%icc, .L91
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L91
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%o0, %g1, %o0
	cmp	%o0, 2
	mov	0, %g3
	movleu	%icc, 1, %g3
.L91:
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	add	%o0, -48, %o0
	cmp	%o0, 9
	mov	0, %o0
	movleu	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	cmp	%o0, 254
	bleu,pn	%icc, .L101
	 sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%o0, %g1, %g1
	sethi	%hi(46080), %g2
	or	%g2, 981, %g2
	cmp	%g2, %g1
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L97
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L97
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%o0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L97
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	ba,pt	%xcc, .L97
	 addx	%g0, 0, %g1
.L101:
	add	%o0, 1, %o0
	and	%o0, 127, %o0
	cmp	%o0, 32
	mov	0, %g1
	movgu	%icc, 1, %g1
.L97:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L103
	 mov	1, %g1
	or	%o0, 32, %o0
	add	%o0, -97, %o0
	cmp	%o0, 5
	mov	0, %g1
	movleu	%icc, 1, %g1
.L103:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	jmp	%o7+8
	 and	%o0, 127, %o0
	.size	toascii, .-toascii
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L114
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L110
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L113
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L110:
	jmp	%o7+8
	 fmovd	%f2, %f0
.L113:
	fzero	%f0
.L114:
	jmp	%o7+8
	 nop
	.size	fdim, .-fdim
	.align 4
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L118
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L119
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L122
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L118:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L119:
	jmp	%o7+8
	 fmovs	%f3, %f0
.L122:
	jmp	%o7+8
	 fzeros	%f0
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -144, %sp
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L126
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L124
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L125
	 fcmped	%fcc0, %f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	fmovrdgez	%g1, %f0, %f2
	fmovd	%f2, %f0
.L124:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L125:
	mov	0, %g1
	movl	%fcc0, 1, %g1
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f8
	ba,pt	%xcc, .L124
	 fmovd	%f8, %f0
.L126:
	ba,pt	%xcc, .L124
	 fmovd	%f2, %f0
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -144, %sp
	fcmps	%fcc1, %f1, %f1
	fbu,pn	%fcc1, .L135
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L135
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g2
	sethi	%hi(-2147483648), %g3
	and	%g2, %g3, %g2
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L131
	 fcmpes	%fcc3, %f1, %f3
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	cmp	%g1, 0
	fmovsge	%icc, %f1, %f3
	fmovs	%f3, %f0
.L130:
.L135:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L131:
	mov	0, %g1
	movl	%fcc3, 1, %g1
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f1
	ba,pt	%xcc, .L130
	 fmovs	%f1, %f0
	ba,pt	%xcc, .L130
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
	be,pn	%xcc, .L139
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
	be,pn	%xcc, .L140
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
	be,a,pt	%icc, .L138
	 ldx	[%fp+1935], %g2
	std	%f12, [%fp+1935]
	ldx	[%fp+1935], %g1
	fmovrdgez	%g1, %f12, %f8
	fmovrdgez	%g1, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L138:
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
.L139:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L140:
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
	add	%sp, -144, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L145
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L143
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L144
	 fcmped	%fcc2, %f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	fmovrdgez	%g1, %f2, %f8
	fmovd	%f8, %f0
.L143:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L144:
	mov	0, %g1
	movl	%fcc2, 1, %g1
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
	ba,pt	%xcc, .L143
	 fmovd	%f2, %f0
.L145:
	ba,pt	%xcc, .L143
	 fmovd	%f2, %f0
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -144, %sp
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L154
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L154
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g2
	sethi	%hi(-2147483648), %g3
	and	%g2, %g3, %g2
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L150
	 fcmpes	%fcc1, %f1, %f3
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	cmp	%g1, 0
	fmovsge	%icc, %f3, %f1
	fmovs	%f1, %f0
.L149:
.L154:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L150:
	mov	0, %g1
	movl	%fcc1, 1, %g1
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	ba,pt	%xcc, .L149
	 fmovs	%f3, %f0
	ba,pt	%xcc, .L149
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
	be,pn	%xcc, .L158
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
	be,pn	%xcc, .L159
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
	be,a,pt	%icc, .L157
	 ldx	[%fp+1935], %g2
	std	%f8, [%fp+1935]
	ldx	[%fp+1935], %g1
	fmovd	%f8, %f0
	fmovd	%f10, %f2
	fmovrdgez	%g1, %f12, %f0
	return	%i7+8
	 fmovrdgez	%g1, %f14, %f2
.L157:
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
.L158:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L159:
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
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	sethi	%hi(digits), %g3
	ba,pt	%xcc, .L162
	 or	%g3, %lo(digits), %g3
.L163:
	ldub	[%g3+%g2], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%o0, 6, %o0
.L162:
	cmp	%o0, 0
	bne,pt	%icc, .L163
	 and	%o0, 63, %g2
	stb	%g0, [%g1]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
	.size	l64a, .-l64a
	.local	seed
	.common	seed,8,8
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	add	%o0, -1, %o0
	srl	%o0, 0, %o0
	sethi	%hi(seed), %g1
	jmp	%o7+8
	 stx	%o0, [%g1+%lo(seed)]
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	sethi	%hi(seed), %g3
	ldx	[%g3+%lo(seed)], %o0
	sethi	%hi(1481765888), %g1
	or	%g1, 45, %g1
	sethi	%hi(1284865024), %g2
	or	%g2, 813, %g2
	sllx	%g1, 32, %g1
	add	%g1, %g2, %g1
	mulx	%o0, %g1, %o0
	add	%o0, 1, %o0
	stx	%o0, [%g3+%lo(seed)]
	jmp	%o7+8
	 srlx	%o0, 33, %o0
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	brz,a,pn %o1, .L169
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%g1, [%o0]
	stx	%o1, [%o0+8]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L171
	 stx	%o0, [%g1+8]
.L171:
	jmp	%o7+8
	 nop
.L169:
	stx	%g0, [%o0]
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ldx	[%o0], %g1
	brz,a,pn %g1, .L175
	 ldx	[%o0+8], %g1
	ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g1
.L175:
	brz,pn	%g1, .L176
	 nop
	ldx	[%o0], %g2
	stx	%g2, [%g1]
.L176:
	jmp	%o7+8
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
	ba,pt	%xcc, .L178
	 mov	0, %i5
.L179:
	add	%i5, 1, %i5
.L178:
	cmp	%i5, %l1
	be,pn	%xcc, .L182
	 mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L179
	 add	%l0, %i3, %l0
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L182:
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
	ba,pt	%xcc, .L184
	 mov	0, %i5
.L185:
	add	%i5, 1, %i5
.L184:
	cmp	%i5, %l0
	be,pn	%xcc, .L188
	 nop
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L185
	 add	%i2, %i3, %i2
	mulx	%i5, %i3, %i5
	return	%i7+8
	 add	%o1, %o5, %o0
.L188:
	return	%i7+8
	 mov	0, %o0
	.size	lfind, .-lfind
	.align 4
	.global abs
	.type	abs, #function
	.proc	04
abs:
	sra	%o0, 31, %g1
	xor	%g1, %o0, %o0
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -176, %sp
.L192:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L192
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L198
	 cmp	%g1, 45
	bne,pt	%icc, .L194
	 mov	0, %g3
	mov	1, %g3
.L193:
	add	%i0, 1, %i0
.L194:
	ba,pt	%xcc, .L195
	 mov	0, %g1
.L198:
	ba,pt	%xcc, .L193
	 mov	0, %g3
.L196:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L195:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L196
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
.L203:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L203
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L209
	 cmp	%g1, 45
	bne,pt	%icc, .L205
	 mov	0, %g3
	mov	1, %g3
.L204:
	add	%i0, 1, %i0
.L205:
	ba,pt	%xcc, .L206
	 mov	0, %g1
.L209:
	ba,pt	%xcc, .L204
	 mov	0, %g3
.L207:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L206:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L207
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
.L214:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L214
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be,pn	%icc, .L220
	 cmp	%g1, 45
	bne,pt	%icc, .L216
	 mov	0, %g3
	mov	1, %g3
.L215:
	add	%i0, 1, %i0
.L216:
	ba,pt	%xcc, .L217
	 mov	0, %g1
.L220:
	ba,pt	%xcc, .L215
	 mov	0, %g3
.L218:
	add	%g2, %g1, %g1
	add	%g1, %g1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g2, %g1, %g1
.L217:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L218
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
.L231:
.L224:
	brz,pn	%i2, .L230
	 nop
	srlx	%i2, 1, %i5
	mulx	%i5, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a,pn	%icc, .L231
	 srlx	%i2, 1, %i2
	ble,pn	%icc, .L229
	 nop
	add	%i5, %i3, %i1
	srlx	%i2, 1, %g1
	add	%i2, -1, %i2
	ba,pt	%xcc, .L224
	 sub	%i2, %g1, %i2
.L230:
	return	%i7+8
	 mov	0, %o0
.L229:
	return	%i7+8
	 mov	%o5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L239
	 cmp	%i2, 0
.L235:
	sra	%i2, 1, %i2
.L240:
	cmp	%i2, 0
.L239:
	be,pn	%icc, .L238
	 nop
	sra	%i2, 1, %l0
	mulx	%l0, %i3, %l0
	add	%i1, %l0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L237
	 nop
	ble,a,pn %icc, .L240
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	ba,pt	%xcc, .L235
	 add	%i2, -1, %i2
.L238:
	return	%i7+8
	 mov	0, %o0
.L237:
	jmp	%i7+8
	 restore %g0, %l0, %o0
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global div
	.type	div, #function
	.proc	010
div:
	add	%sp, -160, %sp
	sra	%o0, 31, %g2
	wr	%g0, %g2, %y
	sdiv	%o0, %o1, %g2
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %g1
	sub	%o0, %g1, %o0
	st	%g2, [%sp+2199]
	st	%o0, [%sp+2203]
	ldx	[%sp+2199], %o0
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	div, .-div
	.align 4
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	srax	%o0, 63, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	imaxabs, .-imaxabs
	.align 4
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	add	%sp, -160, %sp
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	sub	%g1, %o1, %o1
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	05
labs:
	srax	%o0, 63, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	labs, .-labs
	.align 4
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	add	%sp, -160, %sp
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	sub	%g1, %o1, %o1
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	srax	%o0, 63, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	llabs, .-llabs
	.align 4
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	add	%sp, -160, %sp
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	sub	%g1, %o1, %o1
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ba,pt	%xcc, .L254
	 lduw	[%o0], %g1
.L251:
	lduw	[%o0], %g1
.L254:
	cmp	%g1, 0
	be,pn	%icc, .L255
	 lduw	[%o0], %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L251
	 add	%o0, 4, %o0
	lduw	[%o0], %g1
.L255:
	cmp	%g1, 0
	mov	0, %g1
	movne	%icc, %o0, %g1
	jmp	%o7+8
	 mov	%g1, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ba,pt	%xcc, .L262
	 lduw	[%o0], %g2
.L259:
	add	%o1, 4, %o1
	lduw	[%o0], %g2
.L262:
	lduw	[%o1], %g1
	cmp	%g2, %g1
	bne,a,pn %icc, .L263
	 lduw	[%o0], %g3
	lduw	[%o0], %g1
	cmp	%g1, 0
	be,a,pn	%icc, .L263
	 lduw	[%o0], %g3
	lduw	[%o1], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L259
	 add	%o0, 4, %o0
	lduw	[%o0], %g3
.L263:
	lduw	[%o1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L260
	 mov	-1, %g1
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L260:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
	add	%o0, -4, %g3
	lduw	[%o1+%g1], %g2
.L267:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	lduw	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L267
	 lduw	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	017
wcslen:
	mov	%o0, %g1
.L270:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L270
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
.L272:
	brz,pn	%o2, .L278
	 mov	0, %g1
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L273
	 nop
	lduw	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L273
	 nop
	lduw	[%o1], %g1
	cmp	%g1, 0
	be,pn	%icc, .L273
	 nop
	add	%o2, -1, %o2
	add	%o0, 4, %o0
	ba,pt	%xcc, .L272
	 add	%o1, 4, %o1
.L273:
	brz,pt	%o2, .L275
	 mov	0, %g1
	lduw	[%o0], %g3
	lduw	[%o1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L275
	 mov	-1, %g1
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L275:
.L278:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	ba,pt	%xcc, .L280
	 nop
.L282:
	add	%o0, 4, %o0
.L280:
	brz,pn	%o2, .L281
	 nop
	lduw	[%o0], %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L282
	 add	%o2, -1, %o2
.L281:
	jmp	%o7+8
	 movre	%o2, %g0, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	ba,pt	%xcc, .L286
	 nop
.L288:
	add	%o0, 4, %o0
	add	%o1, 4, %o1
.L286:
	brz,pn	%o2, .L292
	 mov	0, %g1
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L288
	 add	%o2, -1, %o2
	brz,pt	%o2, .L289
	 mov	0, %g1
	lduw	[%o0], %g3
	lduw	[%o1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L289
	 mov	-1, %g1
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L289:
.L292:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	ba,pt	%xcc, .L294
	 mov	0, %g1
.L295:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L294:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a,pt %xcc, .L295
	 lduw	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be,pn	%xcc, .L303
	 nop
	sub	%o0, %o1, %g1
	sllx	%o2, 2, %g2
	cmp	%g1, %g2
	bgeu,pt	%xcc, .L298
	 mov	0, %g1
	ba,pt	%xcc, .L299
	 mov	%g2, %o2
.L300:
	st	%g1, [%o0+%o2]
.L299:
	add	%o2, -4, %o2
	cmp	%o2, -4
	bne,a,pt %xcc, .L300
	 lduw	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L301:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L298:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a,pt %xcc, .L301
	 lduw	[%o1+%g1], %g2
.L303:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	ba,pt	%xcc, .L306
	 mov	%o0, %g1
.L307:
	st	%o1, [%g1-4]
.L306:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a,pt %xcc, .L307
	 add	%g1, 4, %g1
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L309
	 nop
	add	%o0, -1, %o0
	ba,pt	%xcc, .L310
	 add	%o1, -1, %o1
.L311:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
.L310:
	brnz,a,pt %o2, .L311
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L309:
	bne,pt	%xcc, .L313
	 mov	0, %g1
	jmp	%o7+8
	 nop
.L314:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
.L313:
	cmp	%g1, %o2
	bne,a,pt %xcc, .L314
	 ldub	[%o0+%g1], %g2
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	sllx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srlx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	srlx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sllx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotr64, .-rotr64
	.align 4
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srl	%o0, %o1, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	rotl32, .-rotl32
	.align 4
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sll	%o0, %o1, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	rotr32, .-rotr32
	.align 4
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	017
rotl_sz:
	sllx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srlx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	017
rotr_sz:
	srlx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sllx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	sll	%o0, %o1, %g1
	mov	16, %g2
	sub	%g2, %o1, %g2
	srl	%o0, %g2, %o0
	or	%g1, %o0, %o0
	sllx	%o0, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	rotl16, .-rotl16
	.align 4
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	srl	%o0, %o1, %g1
	mov	16, %g2
	sub	%g2, %o1, %g2
	sll	%o0, %g2, %o0
	or	%g1, %o0, %o0
	sllx	%o0, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	rotr16, .-rotr16
	.align 4
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	sll	%o0, %o1, %g1
	mov	8, %g2
	sub	%g2, %o1, %g2
	srl	%o0, %g2, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	srl	%o0, %o1, %g1
	mov	8, %g2
	sub	%g2, %o1, %g2
	sll	%o0, %g2, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	rotr8, .-rotr8
	.align 4
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	mov	255, %g1
	sllx	%g1, 8, %g1
	and	%o0, %g1, %g1
	srlx	%g1, 8, %g1
	and	%o0, 255, %o0
	sll	%o0, 8, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	srlx	%o0, 24, %g3
	sethi	%hi(16711680), %g2
	and	%o0, %g2, %g2
	srlx	%g2, 8, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g1, %o0, %g1
	sll	%g1, 8, %g1
	sll	%o0, 24, %o0
	or	%o0, %g1, %o0
	or	%o0, %g3, %o0
	or	%o0, %g2, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	mov	-1, %g3
	sllx	%g3, 56, %g3
	and	%o0, %g3, %g3
	srlx	%g3, 56, %g3
	mov	255, %g2
	sllx	%g2, 48, %g1
	and	%o0, %g1, %g1
	srlx	%g1, 40, %g1
	or	%g1, %g3, %g1
	sllx	%g2, 40, %g3
	and	%o0, %g3, %g3
	srlx	%g3, 24, %g3
	or	%g1, %g3, %g1
	sllx	%g2, 32, %g3
	and	%o0, %g3, %g3
	srlx	%g3, 8, %g3
	or	%g1, %g3, %g1
	sethi	%hi(4278190080), %g3
	and	%o0, %g3, %g3
	sllx	%g3, 8, %g3
	or	%g1, %g3, %g1
	sethi	%hi(16711680), %g3
	and	%o0, %g3, %g3
	sllx	%g3, 24, %g3
	or	%g1, %g3, %g1
	sllx	%g2, 8, %g2
	and	%o0, %g2, %g2
	sllx	%g2, 40, %g2
	or	%g1, %g2, %g1
	sllx	%o0, 56, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	mov	0, %g1
.L331:
	cmp	%g1, 32
	be,pn	%icc, .L335
	 srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	bne,a,pn %xcc, .L336
	 add	%g1, 1, %o0
	ba,pt	%xcc, .L331
	 add	%g1, 1, %g1
.L336:
.L333:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L335:
	ba,pt	%xcc, .L333
	 mov	0, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L338
	 mov	0, %g1
	ba,pt	%xcc, .L339
	 mov	1, %g1
.L340:
	add	%g1, 1, %g1
.L339:
	andcc	%o0, 1, %g0
	be,a,pt	%xcc, .L340
	 sra	%o0, 1, %o0
.L338:
	jmp	%o7+8
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
	sethi	%hi(.LC0), %g1
	ld	[%g1+%lo(.LC0)], %f8
	fcmpes	%fcc2, %f1, %f8
	fbl,pt	%fcc2, .L343
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L343:
	jmp	%o7+8
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
	sethi	%hi(.LC4), %g1
	ldd	[%g1+%lo(.LC4)], %f8
	fcmped	%fcc0, %f0, %f8
	fbl,pt	%fcc0, .L346
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L346:
	jmp	%o7+8
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
	brnz,pt	%o0, .L349
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
.L349:
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
	fcmps	%fcc2, %f1, %f1
	fbu,pn	%fcc2, .L353
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f1, %f8
	fbe,pt	%fcc3, .L353
	 nop
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	ba,pt	%xcc, .L356
	 fmovsl	%icc, %f9, %f8
.L355:
	srl	%o1, 31, %g1
.L358:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L353
	 nop
	fmuls	%f8, %f8, %f8
.L356:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L355
	 fmuls	%f1, %f8, %f1
	ba,pt	%xcc, .L358
	 srl	%o1, 31, %g1
.L353:
	jmp	%o7+8
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
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L366
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f0, %f8
	fbe,pt	%fcc1, .L366
	 nop
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f10
	ba,pt	%xcc, .L363
	 fmovdl	%icc, %f10, %f8
.L362:
	srl	%o1, 31, %g1
.L365:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L366
	 nop
	fmuld	%f8, %f8, %f8
.L363:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L362
	 fmuld	%f0, %f8, %f0
	ba,pt	%xcc, .L365
	 srl	%o1, 31, %g1
.L366:
	jmp	%o7+8
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
	be,pn	%xcc, .L368
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
	brnz,a,pt %o0, .L374
	 stx	%i0, [%fp+1727]
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	cmp	%i2, 0
	bl,pn	%icc, .L373
	 ldx	[%g1+%lo(.LC21+8)], %i5
.L369:
	add	%fp, 1871, %l4
	add	%fp, 1855, %l3
	add	%fp, 1839, %l2
	add	%fp, 1775, %l1
	add	%fp, 1759, %l0
	ba,pt	%xcc, .L371
	 add	%fp, 1743, %i3
.L373:
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	ba,pt	%xcc, .L369
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L370:
	srl	%i2, 31, %g1
.L375:
	add	%g1, %i2, %g1
	sra	%g1, 1, %i2
	brz,pn	%i2, .L368
	 mov	%i3, %o2
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	stx	%i5, [%fp+1751]
	mov	%l0, %o1
	call	_Qp_mul, 0
	 mov	%l1, %o0
	ldx	[%fp+1775], %i4
	ldx	[%fp+1783], %i5
.L371:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L375
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
	ba,pt	%xcc, .L370
	 ldx	[%fp+1879], %i1
.L368:
	stx	%i0, [%fp+1727]
.L374:
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
	ba,pt	%xcc, .L377
	 mov	0, %g1
.L378:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L377:
	cmp	%g1, %o2
	bne,a,pt %xcc, .L378
	 ldub	[%o1+%g1], %g3
	jmp	%o7+8
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
	ba,pt	%xcc, .L380
	 add	%i0, %o0, %o0
.L382:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L380:
	brz,a,pn %i2, .L384
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L382
	 add	%i1, 1, %i1
	brz,a,pt %i2, .L384
	 stb	%g0, [%o0]
.L384:
	return	%i7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	mov	0, %g1
.L386:
	cmp	%g1, %o1
	be,pn	%xcc, .L387
	 nop
	ldsb	[%o0+%g1], %g2
	cmp	%g2, 0
	bne,a,pn %icc, .L386
	 add	%g1, 1, %g1
.L387:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L390:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L396
	 nop
	mov	%o1, %g1
	ldsb	[%o1], %g2
.L398:
	cmp	%g2, 0
	be,pn	%icc, .L397
	 add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%o0], %g2
	cmp	%g3, %g2
	bne,a,pt %icc, .L398
	 ldsb	[%g1], %g2
	jmp	%o7+8
	 nop
.L397:
	ba,pt	%xcc, .L390
	 add	%o0, 1, %o0
.L396:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	mov	0, %o0
	ldsb	[%g1], %g2
.L404:
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L404
	 ldsb	[%g1], %g2
	jmp	%o7+8
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
	brz,pn	%o0, .L406
	 mov	%i0, %g1
	ldsb	[%i1], %i4
.L407:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	brz,pn	%o0, .L411
	 mov	%o0, %i0
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L412
	 mov	%i0, %g1
	ba,pt	%xcc, .L407
	 add	%i0, 1, %i0
.L411:
	mov	0, %g1
.L406:
.L412:
	return	%i7+8
	 mov	%g1, %o0
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbl,a,pn %fcc2, .L426
	 fcmped	%fcc3, %f2, %f8
.L414:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L427
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L416
	 nop
.L427:
	jmp	%o7+8
	 nop
.L426:
	fbule,pt %fcc3, .L414
	 nop
.L416:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -176, %sp
	sub	%i1, %i3, %i5
	add	%i0, %i5, %i5
	brz,pn	%i3, .L429
	 mov	%i0, %g1
	cmp	%i1, %i3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brnz,pn	%g1, .L434
	 add	%i2, 1, %i4
	add	%i3, -1, %i3
.L431:
.L430:
	cmp	%i0, %i5
	bgu,pn	%xcc, .L436
	 mov	0, %g1
	ldsb	[%i0], %g2
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a,pt %icc, .L430
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i4, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L431
	 add	%i0, 1, %i0
	mov	%i0, %g1
.L436:
.L429:
	return	%i7+8
	 mov	%g1, %o0
.L434:
	ba,pt	%xcc, .L429
	 mov	0, %g1
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
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbl,a,pn %fcc2, .L455
	 fnegd	%f0, %f0
	mov	0, %g2
.L439:
	sethi	%hi(.LC24), %g3
	ldd	[%g3+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbul,pn	%fcc3, .L454
	 mov	0, %g1
	sethi	%hi(.LC25), %g3
	ba,pt	%xcc, .L441
	 ldd	[%g3+%lo(.LC25)], %f10
.L455:
	ba,pt	%xcc, .L439
	 mov	1, %g2
.L443:
	fmuld	%f0, %f10, %f0
.L441:
	fcmped	%fcc0, %f0, %f8
	fbge,a,pt %fcc0, .L443
	 add	%g1, 1, %g1
	st	%g1, [%o1]
.L456:
	fnegd	%f0, %f8
	cmp	%g2, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L454:
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
	bne,pn	%icc, .L450
	 mov	0, %g1
	ba,pt	%xcc, .L456
	 st	%g1, [%o1]
.L446:
	faddd	%f0, %f0, %f0
.L445:
	fcmped	%fcc3, %f0, %f8
	fbl,a,pt %fcc3, .L446
	 add	%g1, -1, %g1
	ba,pt	%xcc, .L456
	 st	%g1, [%o1]
.L450:
	sethi	%hi(.LC25), %g3
	ba,pt	%xcc, .L445
	 ldd	[%g3+%lo(.LC25)], %f8
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g1
	ba,pt	%xcc, .L458
	 mov	0, %o0
.L459:
	mulx	%o1, %g2, %g2
	add	%o1, %o1, %o1
	srlx	%g1, 1, %g1
	add	%o0, %g2, %o0
.L458:
	brnz,a,pt %g1, .L459
	 and	%g1, 1, %g2
	jmp	%o7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	ba,pt	%xcc, .L461
	 mov	1, %g1
.L464:
	srl	%o1, 0, %o1
	add	%g1, %g1, %g1
.L461:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L470
	 cmp	%o1, 0
	bge,a,pt %icc, .L464
	 add	%o1, %o1, %o1
	ba,pt	%xcc, .L463
	 mov	0, %g2
.L470:
	ba,pt	%xcc, .L463
	 mov	0, %g2
.L466:
	srl	%g1, 1, %g1
.L472:
	srlx	%o1, 1, %o1
.L463:
	cmp	%g1, 0
	be,pn	%icc, .L471
	 cmp	%o0, %o1
	blu,a,pt %icc, .L472
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	ba,pt	%xcc, .L466
	 or	%g2, %g1, %g2
.L471:
	movrne	%o2, %o0, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	sra	%i0, 31, %g1
	xorcc	%g1, %i0, %i0
	be,pn	%icc, .L474
	 mov	7, %o0
	sll	%i0, 8, %i0
	call	__clzdi2, 0
	 srl	%i0, 0, %o0
	add	%o0, -33, %o0
.L474:
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
	brz,pn	%o0, .L477
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L477:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	ba,pt	%xcc, .L480
	 mov	0, %g2
.L481:
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srlx	%o0, 1, %o0
	add	%o1, %o1, %o1
	srl	%o1, 0, %o1
	add	%g1, %g2, %g2
.L480:
	brnz,a,pt %o0, .L481
	 and	%o0, 1, %g1
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L483
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	bgeu,a,pt %xcc, .L492
	 add	%o2, -1, %g1
.L483:
	srl	%g4, 0, %g4
	sllx	%g4, 3, %g4
	ba,pt	%xcc, .L485
	 mov	0, %g2
.L486:
	stx	%g3, [%o0+%g2]
	add	%g2, 8, %g2
.L485:
	cmp	%g2, %g4
	bne,a,pt %xcc, .L486
	 ldx	[%o1+%g2], %g3
	ba,pt	%xcc, .L487
	 srl	%g1, 0, %g1
.L488:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L487:
	cmp	%g1, %o2
	blu,a,pt %icc, .L488
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L490:
	ldub	[%o1+%o2], %g1
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %g1
.L492:
	cmp	%g1, -1
	bne,pt	%icc, .L490
	 srl	%g1, 0, %o2
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu,pt	%xcc, .L494
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	bgeu,a,pt %xcc, .L501
	 add	%o2, -1, %g1
.L494:
	srl	%g3, 0, %g3
	add	%g3, %g3, %g3
	ba,pt	%xcc, .L496
	 mov	0, %g1
.L497:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
.L496:
	cmp	%g1, %g3
	bne,a,pt %xcc, .L497
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L502
	 nop
	add	%o2, -1, %o2
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L499:
	ldub	[%o1+%o2], %g1
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %g1
.L501:
	cmp	%g1, -1
	bne,pt	%icc, .L499
	 srl	%g1, 0, %o2
.L502:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L504
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	bgeu,a,pt %xcc, .L513
	 add	%o2, -1, %g1
.L504:
	srl	%g4, 0, %g4
	sllx	%g4, 2, %g4
	ba,pt	%xcc, .L506
	 mov	0, %g2
.L507:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
.L506:
	cmp	%g2, %g4
	bne,a,pt %xcc, .L507
	 lduw	[%o1+%g2], %g3
	ba,pt	%xcc, .L508
	 srl	%g1, 0, %g1
.L509:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L508:
	cmp	%g1, %o2
	blu,a,pt %icc, .L509
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L511:
	ldub	[%o1+%o2], %g1
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %g1
.L513:
	cmp	%g1, -1
	bne,pt	%icc, .L511
	 srl	%g1, 0, %o2
	jmp	%o7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %g1
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__modi, .-__modi
	.align 4
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	add	%sp, -144, %sp
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	__uitod, .-__uitod
	.align 4
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	add	%sp, -144, %sp
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L522
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
.L523:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L522:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	ba,pt	%xcc, .L523
	 faddd	%f0, %f0, %f0
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L525
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
.L526:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L525:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	ba,pt	%xcc, .L526
	 fadds	%f0, %f0, %f0
	.size	__ulltof, .-__ulltof
	.align 4
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	wr	%g0, 0, %y
	udiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	sub	%o0, %o1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	mov	0, %g1
	mov	15, %g3
.L529:
	cmp	%g1, 16
	be,pn	%icc, .L530
	 nop
	sub	%g3, %g1, %g2
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L530
	 nop
	ba,pt	%xcc, .L529
	 add	%g1, 1, %g1
.L530:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	mov	0, %g1
.L533:
	cmp	%g1, 16
	be,pn	%icc, .L534
	 nop
	sra	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L534
	 nop
	ba,pt	%xcc, .L533
	 add	%g1, 1, %g1
.L534:
	jmp	%o7+8
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
	add	%sp, -144, %sp
	sethi	%hi(.LC28), %g1
	ld	[%g1+%lo(.LC28)], %f8
	fcmpes	%fcc0, %f1, %f8
	fbge,a,pn %fcc0, .L542
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
.L539:
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L542:
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	sethi	%hi(32768), %g1
	ldx	[%sp+2183], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L539
	 stx	%g1, [%sp+2183]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	ba,pt	%xcc, .L544
	 mov	0, %g1
.L545:
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	add	%g2, %g3, %g3
.L544:
	cmp	%g1, 16
	bne,a,pt %icc, .L545
	 sra	%o0, %g1, %g2
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	mov	0, %g3
	ba,pt	%xcc, .L547
	 mov	0, %g1
.L548:
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	add	%g2, %g3, %g3
.L547:
	cmp	%g1, 16
	bne,a,pt %icc, .L548
	 sra	%o0, %g1, %g2
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	ba,pt	%xcc, .L550
	 mov	0, %g2
.L551:
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srlx	%o0, 1, %o0
	add	%o1, %o1, %o1
	srl	%o1, 0, %o1
	add	%g1, %g2, %g2
.L550:
	brnz,a,pt %o0, .L551
	 and	%o0, 1, %g1
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brnz,pt	%o0, .L554
	 mov	0, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
.L555:
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%o0, %o0, %o0
	srl	%o0, 0, %o0
	srlx	%o1, 1, %o1
	add	%g1, %g2, %g2
.L554:
	brnz,pt	%o1, .L555
	 and	%o1, 1, %g1
	srl	%g2, 0, %o0
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	ba,pt	%xcc, .L559
	 mov	1, %g1
.L562:
	srl	%o1, 0, %o1
	add	%g1, %g1, %g1
.L559:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L568
	 cmp	%o1, 0
	bge,a,pt %icc, .L562
	 add	%o1, %o1, %o1
	ba,pt	%xcc, .L561
	 mov	0, %g2
.L568:
	ba,pt	%xcc, .L561
	 mov	0, %g2
.L564:
	srl	%g1, 1, %g1
.L570:
	srlx	%o1, 1, %o1
.L561:
	cmp	%g1, 0
	be,pn	%icc, .L569
	 cmp	%o0, %o1
	blu,a,pt %icc, .L570
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	ba,pt	%xcc, .L564
	 or	%g2, %g1, %g2
.L569:
	movrne	%o2, %o0, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	fcmpes	%fcc1, %f1, %f3
	fbl,pn	%fcc1, .L572
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L572:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	fcmped	%fcc2, %f0, %f2
	fbl,pn	%fcc2, .L575
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc2, 1, %o0
.L575:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	jmp	%o7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	jmp	%o7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl,pn	%icc, .L586
	 mov	0, %g5
.L580:
	mov	0, %g3
	ba,pt	%xcc, .L581
	 mov	0, %g2
.L586:
	sub	%g0, %o1, %o1
	sra	%o1, 0, %o1
	ba,pt	%xcc, .L580
	 mov	1, %g5
.L582:
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%o0, %o0, %o0
	sra	%o0, 0, %o0
	sra	%o1, 1, %o1
	add	%g2, 1, %g2
	add	%g3, %g1, %g3
.L581:
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g2, 0xff, %g1
	cmp	%g1, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	andcc	%g1, %g4, %g0
	bne,pt	%icc, .L582
	 and	%o1, 1, %g1
	sub	%g0, %g3, %g1
	cmp	%g5, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	save	%sp, -176, %sp
	brlz,pn	%i0, .L592
	 mov	0, %i5
.L588:
	brlz,a,pn %i1, .L593
	 sub	%g0, %i1, %i1
.L589:
	mov	0, %o2
	srl	%i1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%i5, 0
	mov	%o0, %i0
	return	%i7+8
	 movne	%icc, %g1, %o0
.L592:
	sub	%g0, %i0, %i0
	ba,pt	%xcc, .L588
	 mov	1, %i5
.L593:
	ba,pt	%xcc, .L589
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	save	%sp, -176, %sp
	brlz,pn	%i0, .L598
	 mov	0, %i5
.L595:
	srax	%i1, 63, %g1
	xor	%g1, %i1, %o1
	sub	%o1, %g1, %o1
	mov	1, %o2
	srl	%o1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%i5, 0
	mov	%o0, %i0
	return	%i7+8
	 movne	%icc, %g1, %o0
.L598:
	sub	%g0, %i0, %i0
	ba,pt	%xcc, .L595
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	ba,pt	%xcc, .L600
	 mov	1, %g1
.L603:
	sllx	%o1, 48, %o1
	srlx	%o1, 48, %o1
	add	%g1, %g1, %g1
.L600:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L609
	 sll	%o1, 16, %g2
	cmp	%g2, 0
	bge,a,pt %icc, .L603
	 add	%o1, %o1, %o1
	ba,pt	%xcc, .L602
	 mov	0, %g3
.L609:
	ba,pt	%xcc, .L602
	 mov	0, %g3
.L605:
	sll	%g1, 16, %g1
.L611:
	srl	%g1, 17, %g1
	srlx	%o1, 1, %o1
.L602:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	be,pn	%icc, .L610
	 cmp	%o0, %o1
	blu,a,pt %icc, .L611
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
	ba,pt	%xcc, .L605
	 or	%g3, %g1, %g3
.L610:
	movrne	%o2, %o0, %g3
	sllx	%g3, 48, %g3
	jmp	%o7+8
	 srlx	%g3, 48, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	ba,pt	%xcc, .L613
	 sethi	%hi(2147483648), %g4
.L616:
	add	%g1, %g1, %g1
.L613:
	cmp	%o1, %o0
	mov	0, %g3
	movlu	%xcc, 1, %g3
	mov	0, %g2
	movrne	%g1, 1, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L615
	 mov	0, %g2
	and	%o1, %g4, %g2
	brz,a,pt %g2, .L616
	 add	%o1, %o1, %o1
	ba,pt	%xcc, .L615
	 mov	0, %g2
.L618:
	srlx	%g1, 1, %g1
.L624:
	srlx	%o1, 1, %o1
.L615:
	brz,pn	%g1, .L623
	 cmp	%o0, %o1
	blu,a,pt %xcc, .L624
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	ba,pt	%xcc, .L618
	 or	%g2, %g1, %g2
.L623:
	movrne	%o2, %o0, %g2
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L626
	 mov	%o0, %g1
	sll	%o0, %o1, %o0
	jmp	%o7+8
	 sllx	%o0, 32, %o0
.L626:
	brz,pn	%o1, .L630
	 nop
	sll	%o0, %o1, %o0
	srax	%g1, 32, %g2
	sll	%g2, %o1, %g2
	sub	%g0, %o1, %o1
	srl	%g1, %o1, %g1
	or	%g1, %g2, %g1
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L630:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L632
	 mov	0, %g1
	sllx	%o1, %o2, %o0
.L633:
	mov	%g1, %o1
.L636:
	jmp	%o7+8
	 nop
.L632:
	brz,pn	%o2, .L636
	 nop
	sllx	%o1, %o2, %g1
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %o2
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L633
	 or	%o1, %o0, %o0
	.size	__ashlti3, .-__ashlti3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L638
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, %o1, %o1
	srl	%o1, 0, %o1
	sra	%g1, 31, %g1
	sllx	%g1, 32, %g1
	jmp	%o7+8
	 or	%g1, %o1, %o0
.L638:
	brz,pn	%o1, .L642
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	or	%g2, %g1, %g2
	srl	%g2, 0, %g2
	sra	%o0, %o1, %o0
	sllx	%o0, 32, %o0
	or	%o0, %g2, %o0
.L642:
	jmp	%o7+8
	 nop
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L644
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
.L645:
	mov	%g1, %o0
.L648:
	jmp	%o7+8
	 nop
.L644:
	brz,pn	%o2, .L648
	 nop
	srax	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L645
	 or	%o0, %o1, %o1
	.size	__ashrti3, .-__ashrti3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srlx	%o0, 56, %o3
	srlx	%o0, 40, %o4
	mov	255, %g1
	sllx	%g1, 8, %g2
	and	%o4, %g2, %o4
	srlx	%o0, 24, %o5
	sethi	%hi(16711680), %g2
	and	%o5, %g2, %o5
	srlx	%o0, 8, %g5
	sethi	%hi(4278190080), %g2
	and	%g5, %g2, %g5
	sllx	%o0, 8, %g4
	sllx	%g1, 32, %g2
	and	%g4, %g2, %g4
	sllx	%o0, 24, %g3
	sllx	%g1, 40, %g2
	and	%g3, %g2, %g3
	sllx	%o0, 40, %g2
	sllx	%g1, 48, %g1
	and	%g2, %g1, %g2
	sllx	%o0, 56, %g1
	or	%g1, %o3, %g1
	or	%g1, %o4, %g1
	or	%g1, %o5, %g1
	or	%g1, %g5, %g1
	or	%g1, %g4, %g1
	or	%g1, %g3, %g1
	jmp	%o7+8
	 or	%g1, %g2, %o0
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	srl	%o0, 24, %g3
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g2
	sll	%o0, 8, %g1
	sethi	%hi(16711680), %g4
	and	%g1, %g4, %g1
	sll	%o0, 24, %o0
	or	%o0, %g3, %o0
	or	%o0, %g2, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	sethi	%hi(64512), %g2
	or	%g2, 1023, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g1
	sll	%g1, 4, %g1
	mov	16, %g3
	sub	%g3, %g1, %g3
	srl	%o0, %g3, %o0
	or	%g2, 768, %g2
	and	%o0, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%o0, %g3, %o0
	add	%g1, %g2, %g1
	and	%o0, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g3
	sub	%g3, %g2, %g3
	srl	%o0, %g3, %o0
	add	%g1, %g2, %g1
	and	%o0, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	add	%g2, %g2, %g2
	mov	2, %g3
	sub	%g3, %g2, %g4
	srl	%o0, %g4, %o0
	add	%g1, %g2, %g1
	and	%o0, 2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sub	%g3, %o0, %g3
	smul	%g2, %g3, %g2
	add	%g1, %g2, %o0
	jmp	%o7+8
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
	andn	%i0, %g1, %i0
	and	%g1, %i1, %g1
	call	__clzdi2, 0
	 or	%i0, %g1, %o0
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
	srax	%o0, 32, %g3
	srax	%o1, 32, %g2
	cmp	%g3, %g2
	bl,pn	%icc, .L654
	 mov	0, %g1
	cmp	%g3, %g2
	bg,pn	%icc, .L654
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L654
	 mov	0, %g1
	cmp	%o1, %o0
	addx	%g0, 1, %g1
.L654:
	jmp	%o7+8
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
	cmp	%o0, %o2
	bl,pn	%xcc, .L661
	 mov	0, %g1
	bg,pn	%xcc, .L661
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L661
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L661:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__cmpti2, .-__cmpti2
	.align 4
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%g1, %o0, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	sll	%g1, 4, %g1
	srl	%o0, %g1, %o0
	and	%o0, 255, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	srl	%o0, %g2, %o0
	add	%g1, %g2, %g1
	and	%o0, 15, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	srl	%o0, %g2, %o0
	add	%g1, %g2, %g1
	and	%o0, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	add	%g2, %g2, %g2
	srl	%o0, %g2, %o0
	and	%o0, 3, %o0
	add	%g1, %g2, %g1
	xnor	%g0, %o0, %g3
	and	%g3, 1, %g3
	srl	%o0, 1, %o0
	mov	2, %g2
	sub	%g2, %o0, %g2
	sub	%g0, %g3, %g3
	and	%g2, %g3, %g2
	add	%g1, %g2, %o0
	jmp	%o7+8
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
	and	%g1, %i0, %i0
	andn	%i1, %g1, %g1
	call	__ctzdi2, 0
	 or	%g1, %i0, %o0
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
	brnz,pt	%i1, .L669
	 nop
	brz,pt	%i0, .L670
	 mov	0, %o0
	call	__ctzdi2, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L670
	 add	%o0, 65, %o0
.L669:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
.L670:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__ffsti2, .-__ffsti2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L673
	 srlx	%o0, 32, %g2
	jmp	%o7+8
	 srl	%g2, %o1, %o0
.L673:
	brz,pn	%o1, .L677
	 nop
	srlx	%o0, 32, %g1
	sub	%g0, %o1, %g3
	sll	%g1, %g3, %g3
	srl	%o0, %o1, %g2
	or	%g3, %g2, %g3
	srl	%g3, 0, %g3
	srl	%g1, %o1, %o0
	sllx	%o0, 32, %o0
	or	%o0, %g3, %o0
.L677:
	jmp	%o7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L679
	 mov	0, %g1
	srlx	%o0, %o2, %o1
.L680:
	mov	%g1, %o0
.L683:
	jmp	%o7+8
	 nop
.L679:
	brz,pn	%o2, .L683
	 nop
	srlx	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L680
	 or	%o0, %o1, %o1
	.size	__lshrti3, .-__lshrti3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	sethi	%hi(64512), %g5
	or	%g5, 1023, %g5
	and	%o0, %g5, %o5
	and	%o1, %g5, %g3
	smul	%o5, %g3, %g2
	mov	-1, %g4
	sllx	%g4, 32, %o4
	srl	%g2, 16, %g1
	and	%g5, %g2, %g2
	srl	%o0, 16, %o0
	smul	%o0, %g3, %g3
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
	and	%g2, %o4, %g2
	or	%g2, %g3, %g2
	srl	%o1, 16, %o1
	smul	%o5, %o1, %o5
	add	%g1, %o5, %g1
	sll	%g1, 16, %g5
	add	%g5, %g3, %g3
	srl	%g3, 0, %g3
	and	%g2, %o4, %g2
	or	%g2, %g3, %g2
	srax	%g2, 32, %g3
	srl	%g1, 16, %g1
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	and	%g2, %g4, %g2
	or	%g2, %g1, %g2
	srax	%g2, 32, %g1
	smul	%o0, %o1, %o0
	add	%o0, %g1, %o0
	sllx	%o0, 32, %o0
	and	%g2, %g4, %g2
	jmp	%o7+8
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
	mov	-1, %g3
	srlx	%g3, 32, %g3
	and	%o0, %g3, %g4
	and	%o1, %g3, %g5
	mulx	%g4, %g5, %g2
	srlx	%g2, 32, %g1
	and	%g2, %g3, %g2
	srlx	%o0, 32, %o0
	mulx	%o0, %g5, %g5
	add	%g1, %g5, %g1
	sllx	%g1, 32, %g5
	add	%g5, %g2, %g2
	srlx	%g1, 32, %o5
	srlx	%g5, 32, %g1
	and	%g2, %g3, %g2
	srlx	%o1, 32, %o1
	mulx	%g4, %o1, %g4
	add	%g1, %g4, %g1
	sllx	%g1, 32, %g3
	srlx	%g1, 32, %g1
	add	%g1, %o5, %g1
	mulx	%o0, %o1, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 add	%g3, %g2, %o1
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
	mulx	%i3, %i0, %i3
	mulx	%i2, %i1, %i2
	add	%i3, %i2, %i3
	add	%i3, %o0, %i0
	jmp	%i7+8
	 restore %g0, %o1, %o1
	.size	__multi3, .-__multi3
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	jmp	%o7+8
	 sub	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.global __negti2
	.type	__negti2, #function
	.proc	05
__negti2:
	mov	0, %g1
	movrne	%o1, 1, %g1
	sub	%g0, %o0, %o0
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sub	%g0, %o1, %o1
	.size	__negti2, .-__negti2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	srlx	%o0, 32, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 16, %g1
	xor	%o0, %g1, %o0
	srl	%o0, 8, %g1
	xor	%o0, %g1, %o0
	srl	%o0, 4, %g1
	xor	%o0, %g1, %o0
	and	%o0, 15, %o0
	sethi	%hi(26624), %g1
	or	%g1, 406, %g1
	sra	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	xor	%o1, %o0, %o1
	srax	%o1, 32, %g1
	xor	%o1, %g1, %o1
	srl	%o1, 16, %g1
	xor	%o1, %g1, %o1
	srl	%o1, 8, %g1
	xor	%o1, %g1, %o1
	srl	%o1, 4, %g1
	xor	%o1, %g1, %o1
	and	%o1, 15, %o1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o0
	sra	%o0, %o1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__parityti2, .-__parityti2
	.align 4
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	srl	%o0, 16, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 8, %g1
	xor	%o0, %g1, %o0
	srl	%o0, 4, %g1
	xor	%o0, %g1, %o0
	and	%o0, 15, %o0
	sethi	%hi(26624), %g1
	or	%g1, 406, %g1
	sra	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	srlx	%o0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %g3
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	sub	%o0, %g1, %o0
	srlx	%o0, 2, %g3
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	sllx	%g2, 32, %g1
	add	%g1, %g2, %g1
	and	%g3, %g1, %g2
	and	%o0, %g1, %o0
	add	%g2, %o0, %o0
	srlx	%o0, 4, %g1
	add	%g1, %o0, %o0
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g2
	add	%g2, %g1, %g1
	and	%o0, %g1, %o0
	srlx	%o0, 32, %g1
	add	%g1, %o0, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 127, %o0
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	srl	%o0, 1, %g1
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	and	%g1, %g2, %g1
	sub	%o0, %g1, %o0
	srl	%o0, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	and	%o0, %g1, %o0
	add	%g2, %o0, %o0
	srl	%o0, 4, %g1
	add	%g1, %o0, %o0
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%o0, %g1, %o0
	srl	%o0, 16, %g1
	add	%o0, %g1, %o0
	srl	%o0, 8, %g1
	add	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	sllx	%o0, 63, %g2
	srlx	%o1, 1, %g1
	or	%g2, %g1, %g1
	srlx	%o0, 1, %g4
	sethi	%hi(1431655424), %g3
	or	%g3, 341, %g3
	sllx	%g3, 32, %g2
	add	%g2, %g3, %g2
	and	%g4, %g2, %g3
	and	%g1, %g2, %g1
	sub	%o1, %g1, %g1
	cmp	%g1, %o1
	mov	0, %g2
	movgu	%xcc, 1, %g2
	sub	%o0, %g3, %o0
	sub	%o0, %g2, %o0
	sllx	%o0, 62, %g3
	srlx	%g1, 2, %g2
	or	%g3, %g2, %g2
	srlx	%o0, 2, %g4
	sethi	%hi(858992640), %g5
	or	%g5, 819, %g5
	sllx	%g5, 32, %g3
	add	%g3, %g5, %g3
	and	%g4, %g3, %g4
	and	%g2, %g3, %g2
	and	%o0, %g3, %o0
	and	%g1, %g3, %g1
	add	%g2, %g1, %g1
	cmp	%g1, %g2
	mov	0, %g3
	movlu	%xcc, 1, %g3
	add	%g4, %o0, %g2
	add	%g3, %g2, %g3
	sllx	%g3, 60, %g4
	srlx	%g1, 4, %g2
	or	%g4, %g2, %g2
	srlx	%g3, 4, %g4
	add	%g2, %g1, %g1
	cmp	%g1, %g2
	mov	0, %g2
	movlu	%xcc, 1, %g2
	add	%g4, %g3, %g3
	add	%g2, %g3, %g2
	sethi	%hi(252644352), %g4
	or	%g4, 783, %g4
	sllx	%g4, 32, %g3
	add	%g3, %g4, %g3
	and	%g2, %g3, %g2
	and	%g1, %g3, %g1
	add	%g2, %g1, %g2
	srlx	%g2, 32, %g1
	add	%g1, %g2, %g1
	srl	%g1, 16, %g2
	add	%g1, %g2, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
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
	srl	%o1, 31, %g2
	sethi	%hi(.LC30), %g1
	ba,pt	%xcc, .L699
	 ldd	[%g1+%lo(.LC30)], %f8
.L697:
	srl	%o1, 31, %g1
.L702:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L698
	 cmp	%g2, 0
	fmuld	%f0, %f0, %f0
.L699:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L697
	 fmuld	%f8, %f0, %f8
	ba,pt	%xcc, .L702
	 srl	%o1, 31, %g1
.L698:
	be,pt	%icc, .L703
	 fmovd	%f8, %f0
	sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f0
	fdivd	%f0, %f8, %f0
.L703:
	jmp	%o7+8
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
	srl	%o1, 31, %g2
	sethi	%hi(.LC32), %g1
	ba,pt	%xcc, .L707
	 ld	[%g1+%lo(.LC32)], %f8
.L705:
	srl	%o1, 31, %g1
.L710:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L706
	 cmp	%g2, 0
	fmuls	%f1, %f1, %f1
.L707:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L705
	 fmuls	%f8, %f1, %f8
	ba,pt	%xcc, .L710
	 srl	%o1, 31, %g1
.L706:
	be,pt	%icc, .L711
	 fmovs	%f8, %f0
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f0
	fdivs	%f0, %f8, %f0
.L711:
	jmp	%o7+8
	 nop
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	srlx	%o0, 32, %g3
	srlx	%o1, 32, %g2
	cmp	%g3, %g2
	blu,pn	%icc, .L713
	 mov	0, %g1
	cmp	%g3, %g2
	bgu,pn	%icc, .L713
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L713
	 mov	0, %g1
	cmp	%o1, %o0
	addx	%g0, 1, %g1
.L713:
	jmp	%o7+8
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
	cmp	%o0, %o2
	blu,pn	%xcc, .L720
	 mov	0, %g1
	bgu,pn	%xcc, .L720
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L720
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L720:
	jmp	%o7+8
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
