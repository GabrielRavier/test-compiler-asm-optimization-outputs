	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.align 32
	.global make_ti
	.type	make_ti, #function
	.proc	05
make_ti:
	jmp	%o7+8
	 nop
	.size	make_ti, .-make_ti
	.align 4
	.align 32
	.global make_tu
	.type	make_tu, #function
	.proc	017
make_tu:
	jmp	%o7+8
	 nop
	.size	make_tu, .-make_tu
	.align 4
	.align 32
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	.register	%g2, #scratch
	cmp	%o0, %o1
	bleu,pt	%xcc, .L4
	 nop
	brz,pn	%o2, .L13
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L10:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L10
	 ldub	[%o1+%o2], %g1
.L13:
	jmp	%o7+8
	 nop
.L4:
	be,pn	%xcc, .L12
	 nop
	brz,pn	%o2, .L13
	 mov	0, %g1
	ldub	[%o1+%g1], %g2
.L11:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L11
	 ldub	[%o1+%g1], %g2
.L12:
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.align 32
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	brz,pn	%o3, .L16
	 and	%o2, 0xff, %o2
.L15:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	be,pn	%icc, .L21
	 add	%o0, 1, %g1
	add	%o3, -1, %o3
	add	%o1, 1, %o1
	brnz,pt	%o3, .L15
	 add	%o0, 1, %o0
.L16:
	add	%o0, 1, %g1
.L21:
	mov	0, %o0
	jmp	%o7+8
	 movrne	%o3, %g1, %o0
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	brz,pn	%o2, .L24
	 and	%o1, 0xff, %o1
.L23:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L24
	 nop
	add	%o2, -1, %o2
	brnz,pt	%o2, .L23
	 add	%o0, 1, %o0
.L24:
	jmp	%o7+8
	 movre	%o2, %g0, %o0
	.size	memchr, .-memchr
	.align 4
	.align 32
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	brz,pn	%o2, .L36
	 mov	0, %g1
.L30:
	ldub	[%o0], %g2
	ldub	[%o1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L31
	 nop
	add	%o2, -1, %o2
	add	%o0, 1, %o0
	brnz,pt	%o2, .L30
	 add	%o1, 1, %o1
.L31:
	brz,pt	%o2, .L33
	 mov	0, %g1
	ldub	[%o0], %g1
	ldub	[%o1], %g2
	sub	%g1, %g2, %g1
.L33:
.L36:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L39
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L39:
	return	%i7+8
	 nop
	.size	memcpy, .-memcpy
	.align 4
	.align 32
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	and	%o1, 0xff, %o1
	add	%o2, -1, %o2
	add	%o0, %o2, %o2
	add	%o0, -1, %g2
.L41:
	cmp	%o2, %g2
	be,pn	%xcc, .L46
	 mov	0, %o0
	mov	%o2, %o0
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L41
	 add	%o2, -1, %o2
.L46:
	jmp	%o7+8
	 nop
.L40:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.align 32
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	brz,pn	%o2, .L52
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L51:
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L51
	 stb	%o1, [%g1]
.L52:
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.align 32
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be,pn	%icc, .L58
	 add	%o1, 1, %o1
.L57:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L57
	 add	%o1, 1, %o1
.L58:
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.align 32
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	and	%o1, 0xff, %o1
	ldsb	[%o0], %g2
	cmp	%g2, 0
	be,pn	%icc, .L67
	 ldub	[%o0], %g1
.L60:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	be,pn	%icc, .L66
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L60
	 ldub	[%o0], %g1
.L67:
	jmp	%o7+8
	 nop
.L66:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.align 32
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L70:
	ldsb	[%o0], %g2
	cmp	%g2, %o1
	be,pn	%icc, .L72
	 ldub	[%o0], %g1
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L70
	 add	%o0, 1, %o0
	mov	0, %o0
.L72:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.align 32
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	.register	%g3, #scratch
	ldub	[%o0], %g4
	ldsb	[%o0], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	ldsb	[%o1], %g3
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g2, %g1, %g0
	be,pn	%icc, .L74
	 ldub	[%o1], %g5
	mov	1, %g2
.L75:
	ldub	[%o0+%g2], %g4
	ldub	[%o1+%g2], %g5
	sll	%g4, 24, %g3
	cmp	%g0, %g3
	addx	%g0, 0, %o5
	sll	%g5, 24, %g1
	xor	%g1, %g3, %g1
	sra	%g1, 24, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%o5, %g1, %g0
	bne,pt	%icc, .L75
	 add	%g2, 1, %g2
.L74:
	and	%g4, 0xff, %o0
	and	%g5, 0xff, %g5
	sub	%o0, %g5, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	strcmp, .-strcmp
	.align 4
	.align 32
	.global strlen
	.type	strlen, #function
	.proc	017
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L82
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L83:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L83
	 add	%g1, 1, %g1
.L78:
.L82:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L85
	 mov	0, %g5
	ldub	[%o0], %g5
	andcc	%g5, 0xff, %g0
	be,pn	%icc, .L90
	 add	%o2, -1, %o2
	mov	%o1, %g2
	add	%o1, %o2, %o1
.L87:
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	and	%g5, 0xff, %g4
	xor	%g1, %g4, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g3, %g1, %g3
	xor	%g2, %o1, %g4
	mov	0, %g1
	movrne	%g4, 1, %g1
	andcc	%g3, %g1, %g0
	be,pn	%icc, .L91
	 and	%g5, 0xff, %g5
	add	%o0, 1, %o0
	ldub	[%o0], %g5
	andcc	%g5, 0xff, %g0
	bne,pt	%icc, .L87
	 add	%g2, 1, %g2
.L86:
	and	%g5, 0xff, %g5
.L91:
	ldub	[%g2], %g1
	sub	%g5, %g1, %g5
.L85:
	jmp	%o7+8
	 sra	%g5, 0, %o0
.L90:
	ba,pt	%xcc, .L86
	 mov	%o1, %g2
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L96
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L94:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne,pt	%xcc, .L94
	 add	%o1, 2, %o1
.L96:
	jmp	%o7+8
	 nop
	.size	swab, .-swab
	.align 4
	.align 32
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	or	%o0, 32, %o0
	add	%o0, -97, %o0
	cmp	%o0, 25
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isalpha, .-isalpha
	.align 4
	.align 32
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	cmp	%o0, 127
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isascii, .-isascii
	.align 4
	.align 32
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	xor	%o0, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	xor	%o0, 9, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	isblank, .-isblank
	.align 4
	.align 32
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
	.align 32
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	add	%o0, -48, %o0
	cmp	%o0, 9
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isdigit, .-isdigit
	.align 4
	.align 32
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	add	%o0, -33, %o0
	cmp	%o0, 93
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isgraph, .-isgraph
	.align 4
	.align 32
	.global islower
	.type	islower, #function
	.proc	04
islower:
	add	%o0, -97, %o0
	cmp	%o0, 25
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	islower, .-islower
	.align 4
	.align 32
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	add	%o0, -32, %o0
	cmp	%o0, 94
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isprint, .-isprint
	.align 4
	.align 32
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	add	%o0, -9, %g1
	cmp	%g1, 4
	mov	0, %g1
	movleu	%icc, 1, %g1
	xor	%o0, 32, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	isspace, .-isspace
	.align 4
	.align 32
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	add	%o0, -65, %o0
	cmp	%o0, 25
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isupper, .-isupper
	.align 4
	.align 32
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	add	%o0, -127, %g1
	cmp	%g1, 32
	mov	0, %g2
	movleu	%icc, 1, %g2
	cmp	%o0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	orcc	%g2, %g1, %g0
	bne,pt	%icc, .L108
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L108
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%o0, %g1, %o0
	cmp	%o0, 2
	mov	0, %g3
	movleu	%icc, 1, %g3
.L108:
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.align 32
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	add	%o0, -48, %o0
	cmp	%o0, 9
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	iswdigit, .-iswdigit
	.align 4
	.align 32
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	cmp	%o0, 254
	bleu,pn	%icc, .L118
	 sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%o0, %g1, %g1
	sethi	%hi(46080), %g2
	or	%g2, 981, %g2
	cmp	%g2, %g1
	subx	%g0, -1, %g3
	sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L114
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L114
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%o0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L114
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	ba,pt	%xcc, .L114
	 addx	%g0, 0, %g1
.L118:
	add	%o0, 1, %o0
	and	%o0, 127, %o0
	cmp	%o0, 32
	mov	0, %g1
	movgu	%icc, 1, %g1
.L114:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.align 32
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L120
	 mov	1, %g1
	or	%o0, 32, %o0
	add	%o0, -97, %o0
	cmp	%o0, 5
	mov	0, %g1
	movleu	%icc, 1, %g1
.L120:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	iswxdigit, .-iswxdigit
	.align 4
	.align 32
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	jmp	%o7+8
	 and	%o0, 127, %o0
	.size	toascii, .-toascii
	.align 4
	.align 32
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L131
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L127
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L130
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L127:
	jmp	%o7+8
	 fmovd	%f2, %f0
.L130:
	fzero	%f0
.L131:
	jmp	%o7+8
	 nop
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L135
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L136
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L139
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L135:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L136:
	jmp	%o7+8
	 fmovs	%f3, %f0
.L139:
	jmp	%o7+8
	 fzeros	%f0
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -144, %sp
	fcmpd	%fcc2, %f0, %f0
	fbu,a,pn %fcc2, .L146
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L140
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L142
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L140:
.L146:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L142:
	ba,pt	%xcc, .L140
	 fmovdl	%fcc0, %f2, %f0
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -144, %sp
	fcmps	%fcc1, %f1, %f1
	fbu,pn	%fcc1, .L153
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L153
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L149
	 fcmpes	%fcc3, %f1, %f3
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f1
	fmovs	%f1, %f0
.L147:
.L153:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L149:
	fmovsl	%fcc3, %f3, %f1
	ba,pt	%xcc, .L147
	 fmovs	%f1, %f0
	ba,pt	%xcc, .L147
	 fmovs	%f1, %f0
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
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
	be,pn	%xcc, .L157
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
	be,pn	%xcc, .L158
	 ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g1
	srlx	%g1, 63, %g1
	ldd	[%fp+1919], %f12
	ldd	[%fp+1927], %f14
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L156
	 ldx	[%fp+1935], %g2
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L156:
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
.L157:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L158:
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -144, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu,a,pn %fcc0, .L166
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L160
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L162
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L160:
	fmovd	%f2, %f0
.L166:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L162:
	ba,pt	%xcc, .L160
	 fmovdl	%fcc2, %f0, %f2
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -144, %sp
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L173
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L173
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L169
	 fcmpes	%fcc1, %f1, %f3
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	fmovs	%f3, %f0
.L167:
.L173:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L169:
	fmovsl	%fcc1, %f1, %f3
	ba,pt	%xcc, .L167
	 fmovs	%f3, %f0
	ba,pt	%xcc, .L167
	 fmovs	%f1, %f0
	.size	fminf, .-fminf
	.align 4
	.align 32
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
	be,pn	%xcc, .L177
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
	be,pn	%xcc, .L178
	 ldd	[%fp+1935], %f12
	ldd	[%fp+1943], %f14
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g1
	srlx	%g1, 63, %g1
	ldd	[%fp+1919], %f8
	ldd	[%fp+1927], %f10
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L176
	 ldx	[%fp+1935], %g2
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L176:
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
.L177:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L178:
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	cmp	%o0, 0
	be,pn	%icc, .L183
	 mov	%o0, %g1
	sethi	%hi(s.0), %g2
	or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L182:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L182
	 add	%g2, 1, %g2
.L181:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
.L183:
	sethi	%hi(s.0), %g2
	ba,pt	%xcc, .L181
	 or	%g2, %lo(s.0), %g2
	.size	l64a, .-l64a
	.align 4
	.align 32
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
	.align 32
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
	.align 32
	.global insque
	.type	insque, #function
	.proc	020
insque:
	brz,a,pn %o1, .L190
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%g1, [%o0]
	stx	%o1, [%o0+8]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L192
	 stx	%o0, [%g1+8]
.L192:
	jmp	%o7+8
	 nop
.L190:
	stx	%g0, [%o0]
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.align 32
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ldx	[%o0], %g1
	brz,a,pn %g1, .L196
	 ldx	[%o0+8], %g1
	ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g1
.L196:
	brz,pn	%g1, .L197
	 nop
	ldx	[%o0], %g2
	stx	%g2, [%g1]
.L197:
	jmp	%o7+8
	 nop
	.size	remque, .-remque
	.align 4
	.align 32
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -176, %sp
	ldx	[%i2], %l1
	brz,pn	%l1, .L199
	 mov	%i0, %l2
	mov	%i1, %i5
	mov	0, %l0
.L201:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be,pn	%icc, .L203
	 nop
	add	%l0, 1, %l0
	cmp	%l1, %l0
	bne,pt	%xcc, .L201
	 add	%i5, %i3, %i5
.L199:
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %o0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memcpy, 0
	 add	%i1, %o0, %o0
	mov	%o0, %i0
.L203:
	return	%i7+8
	 nop
	.size	lsearch, .-lsearch
	.align 4
	.align 32
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -176, %sp
	ldx	[%i2], %i2
	brz,pn	%i2, .L205
	 mov	%i0, %l0
	mov	0, %i5
.L207:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L209
	 nop
	add	%i5, 1, %i5
	cmp	%i2, %i5
	bne,pt	%xcc, .L207
	 add	%i1, %i3, %i1
.L205:
	mov	0, %i0
.L209:
	return	%i7+8
	 nop
	.size	lfind, .-lfind
	.align 4
	.align 32
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
	.align 32
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L223
	 ldub	[%i0], %i5
.L213:
	add	%i0, 1, %i0
	ldub	[%i0], %i5
.L223:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,pt	%icc, .L213
	 mov	%o0, %g3
	sll	%i5, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L214
	 cmp	%g1, 45
	bne,a,pt %icc, .L224
	 ldsb	[%i0], %g2
	mov	1, %o0
.L214:
	add	%i0, 1, %i0
	ldsb	[%i0], %g2
.L224:
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L217
	 ldub	[%i0], %g1
.L216:
	sll	%g3, 2, %g2
	add	%g2, %g3, %g2
	add	%g2, %g2, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g2, %g1, %g3
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L216
	 ldub	[%i0], %g1
.L217:
	sub	%g0, %g3, %g1
	cmp	%o0, 0
	move	%icc, %g1, %g3
	return	%i7+8
	 sra	%g3, 0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L236
	 ldub	[%i0], %i5
.L227:
	add	%i0, 1, %i0
	ldub	[%i0], %i5
.L236:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,pt	%icc, .L227
	 mov	%o0, %g4
	sll	%i5, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L228
	 cmp	%g1, 45
	bne,a,pt %icc, .L237
	 ldub	[%i0], %g1
	mov	1, %g4
.L228:
	add	%i0, 1, %i0
	ldub	[%i0], %g1
.L237:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L231
	 mov	0, %g3
.L230:
	sllx	%g3, 2, %g2
	add	%g2, %g3, %g2
	add	%g2, %g2, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sllx	%g1, 56, %g1
	srax	%g1, 56, %g1
	sub	%g2, %g1, %g3
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L230
	 ldub	[%i0], %g1
.L231:
	sub	%g0, %g3, %g1
	cmp	%g4, 0
	move	%icc, %g1, %g3
	return	%i7+8
	 mov	%g3, %o0
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -176, %sp
	ba,pt	%xcc, .L249
	 ldub	[%i0], %i5
.L240:
	add	%i0, 1, %i0
	ldub	[%i0], %i5
.L249:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,pt	%icc, .L240
	 mov	%o0, %g4
	sll	%i5, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L241
	 cmp	%g1, 45
	bne,a,pt %icc, .L250
	 ldub	[%i0], %g1
	mov	1, %g4
.L241:
	add	%i0, 1, %i0
	ldub	[%i0], %g1
.L250:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L244
	 mov	0, %g3
.L243:
	sllx	%g3, 2, %g2
	add	%g2, %g3, %g2
	add	%g2, %g2, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sllx	%g1, 56, %g1
	srax	%g1, 56, %g1
	sub	%g2, %g1, %g3
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L243
	 ldub	[%i0], %g1
.L244:
	sub	%g0, %g3, %g1
	cmp	%g4, 0
	move	%icc, %g1, %g3
	return	%i7+8
	 mov	%g3, %o0
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
	brnz,pt	%i2, .L258
	 srlx	%i2, 1, %l0
.L252:
	mov	0, %i5
.L251:
	return	%i7+8
	 mov	%o5, %o0
.L256:
.L253:
	brz,pn	%i2, .L252
	 srlx	%i2, 1, %l0
.L258:
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a,pn	%icc, .L256
	 mov	%l0, %i2
	ble,pn	%icc, .L251
	 nop
	add	%i5, %i3, %i1
	add	%i2, -1, %i2
	ba,pt	%xcc, .L253
	 sub	%i2, %l0, %i2
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	cmp	%i2, 0
	bne,pt	%icc, .L263
	 mov	%i2, %l0
	mov	0, %i2
.L259:
.L265:
	return	%i7+8
	 mov	%o2, %o0
.L262:
	sra	%l0, 1, %l0
.L266:
	cmp	%l0, 0
	be,pn	%icc, .L265
	 mov	0, %i2
.L263:
	sra	%l0, 1, %i2
	mulx	%i2, %i3, %i2
	add	%i1, %i2, %i2
	mov	%i5, %o2
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L259
	 nop
	ble,a,pn %icc, .L266
	 sra	%l0, 1, %l0
	add	%i2, %i3, %i1
	ba,pt	%xcc, .L262
	 add	%l0, -1, %l0
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	add	%sp, -160, %sp
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	st	%g1, [%sp+2199]
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %g1
	sub	%o0, %g1, %o0
	st	%o0, [%sp+2203]
	ldx	[%sp+2199], %o0
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	div, .-div
	.align 4
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	lduw	[%o0], %g1
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L279
	 cmp	%g1, 0
	add	%o0, 4, %o0
.L280:
	lduw	[%o0], %g1
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L280
	 add	%o0, 4, %o0
	cmp	%g1, 0
.L279:
	jmp	%o7+8
	 move	%icc, 0, %o0
	.size	wcschr, .-wcschr
	.align 4
	.align 32
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	lduw	[%o0], %g4
	lduw	[%o1], %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g1
	xor	%g4, %g3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	and	%g1, %g2, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	be,pn	%icc, .L287
	 cmp	%g4, %g3
	mov	4, %g1
.L283:
	lduw	[%o0+%g1], %g4
	lduw	[%o1+%g1], %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	xor	%g4, %g3, %g5
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	and	%g2, %g5, %g2
	cmp	%g0, %g3
	addx	%g0, 0, %g5
	andcc	%g2, %g5, %g0
	bne,pt	%icc, .L283
	 add	%g1, 4, %g1
	cmp	%g4, %g3
.L287:
	bl,pt	%icc, .L284
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L284:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.align 32
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L289:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L289
	 add	%g1, 4, %g1
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.align 32
	.global wcslen
	.type	wcslen, #function
	.proc	017
wcslen:
	lduw	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L292
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L296:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L296
	 add	%g1, 4, %g1
.L292:
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	brz,pn	%o2, .L305
	 mov	0, %g1
.L298:
	lduw	[%o0], %g1
	lduw	[%o1], %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g2, %g1, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	be,pn	%icc, .L299
	 nop
	add	%o2, -1, %o2
	add	%o0, 4, %o0
	brnz,pt	%o2, .L298
	 add	%o1, 4, %o1
.L299:
	brz,pt	%o2, .L301
	 mov	0, %g1
	lduw	[%o0], %g3
	lduw	[%o1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L301
	 mov	-1, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L301:
.L305:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L308
	 nop
.L307:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L308
	 nop
	add	%o2, -1, %o2
	brnz,pt	%o2, .L307
	 add	%o0, 4, %o0
.L308:
	jmp	%o7+8
	 movre	%o2, %g0, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	brz,pn	%o2, .L321
	 mov	0, %g1
.L314:
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L315
	 nop
	add	%o2, -1, %o2
	add	%o0, 4, %o0
	brnz,pt	%o2, .L314
	 add	%o1, 4, %o1
.L315:
	brz,pt	%o2, .L317
	 mov	0, %g1
	lduw	[%o0], %g3
	lduw	[%o1], %g2
	cmp	%g3, %g2
	bl,pt	%icc, .L317
	 mov	-1, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
.L317:
.L321:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L324
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L324:
	return	%i7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.align 32
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be,pn	%xcc, .L336
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	blu,pt	%xcc, .L327
	 add	%o2, -1, %g1
	brz,pn	%o2, .L337
	 mov	0, %g2
.L328:
	lduw	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,pt	%xcc, .L328
	 add	%g2, 4, %g2
.L337:
	jmp	%o7+8
	 nop
.L327:
	brz,pn	%o2, .L336
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L335:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L335
	 lduw	[%o1+%g1], %g2
.L336:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	brz,pn	%o2, .L342
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L340:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,pt	%xcc, .L340
	 st	%o1, [%g2-4]
.L342:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L344
	 nop
	brz,pn	%o2, .L352
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L350:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L350
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L344:
	be,pn	%xcc, .L352
	 nop
	brz,pn	%o2, .L352
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L351:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L351
	 ldub	[%o0+%g1], %g2
.L352:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	and	%o1, 15, %o1
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 15, %o1
	srl	%o0, %o1, %o0
	or	%g1, %o0, %o0
	sllx	%o0, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	rotl16, .-rotl16
	.align 4
	.align 32
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	and	%o1, 15, %o1
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 15, %o1
	sll	%o0, %o1, %o0
	or	%g1, %o0, %o0
	sllx	%o0, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	rotr16, .-rotr16
	.align 4
	.align 32
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	and	%o1, 7, %o1
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 7, %o1
	srl	%o0, %o1, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	rotl8, .-rotl8
	.align 4
	.align 32
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	and	%o1, 7, %o1
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 7, %o1
	sll	%o0, %o1, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	rotr8, .-rotr8
	.align 4
	.align 32
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	srlx	%o0, 8, %g1
	sll	%o0, 8, %o0
	or	%o0, %g1, %o0
	sllx	%o0, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.align 32
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	sll	%o0, 8, %g1
	sethi	%hi(16711680), %g2
	and	%g1, %g2, %g1
	sll	%o0, 24, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 24, %g3
	or	%g1, %g3, %g1
	and	%o0, %g2, %o0
	srlx	%o0, 8, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	sllx	%o0, 56, %g1
	srlx	%o0, 56, %g2
	or	%g1, %g2, %g1
	srlx	%o0, 40, %g3
	mov	255, %g2
	sllx	%g2, 8, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 24, %g3
	sethi	%hi(16711680), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 8, %g3
	sethi	%hi(4278190080), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 8, %g3
	sllx	%g2, 32, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	sllx	%g2, 40, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 40, %o0
	sllx	%g2, 48, %g2
	and	%o0, %g2, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.align 32
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	mov	0, %g1
	srl	%o0, %g1, %g2
.L372:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L369
	 add	%g1, 1, %g1
	cmp	%g1, 32
	bne,pt	%icc, .L372
	 srl	%o0, %g1, %g2
	mov	0, %g1
.L369:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L374
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L374
	 nop
	mov	1, %g2
.L375:
	sra	%o0, 1, %g1
	sra	%g1, 0, %o0
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L375
	 add	%g2, 1, %g2
.L374:
	jmp	%o7+8
	 sra	%g2, 0, %o0
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
	.align 32
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	sethi	%hi(.LC0), %g1
	ld	[%g1+%lo(.LC0)], %f8
	fcmpes	%fcc2, %f1, %f8
	fbl,pt	%fcc2, .L379
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L379:
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
	.align 32
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	sethi	%hi(.LC4), %g1
	ldd	[%g1+%lo(.LC4)], %f8
	fcmped	%fcc0, %f0, %f8
	fbl,pt	%fcc0, .L382
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L382:
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
	.align 32
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	save	%sp, -256, %sp
	std	%f0, [%fp+2031]
	std	%f2, [%fp+2039]
	std	%f0, [%fp+1967]
	std	%f2, [%fp+1975]
	sethi	%hi(.LC8), %g1
	ldx	[%g1+%lo(.LC8)], %g2
	ldx	[%g1+%lo(.LC8+8)], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_flt, 0
	 add	%fp, 2031, %o0
	brnz,pt	%o0, .L385
	 mov	1, %i0
	ldd	[%fp+1967], %f0
	ldd	[%fp+1975], %f2
	std	%f0, [%fp+1999]
	std	%f2, [%fp+2007]
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
.L385:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.align 32
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	save	%sp, -192, %sp
	st	%i1, [%fp+2043]
	ld	[%fp+2043], %f8
	fitod	%f8, %f2
	call	_Qp_dtoq, 0
	 mov	%i0, %o0
	return	%i7+8
	 nop
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC12:
	.long	1073741824
	.align 4
.LC13:
	.long	1056964608
	.section	".text"
	.align 4
	.align 32
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	fcmps	%fcc2, %f1, %f1
	fbu,pn	%fcc2, .L389
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L389
	 nop
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	ba,pt	%xcc, .L392
	 fmovsl	%icc, %f9, %f8
.L391:
	srl	%o1, 31, %g1
.L394:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L389
	 nop
	fmuls	%f8, %f8, %f8
.L392:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L391
	 fmuls	%f1, %f8, %f1
	ba,pt	%xcc, .L394
	 srl	%o1, 31, %g1
.L389:
	jmp	%o7+8
	 fmovs	%f1, %f0
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	1073741824
	.long	0
	.align 8
.LC17:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L402
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L402
	 nop
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	ba,pt	%xcc, .L399
	 fmovdl	%icc, %f10, %f8
.L398:
	srl	%o1, 31, %g1
.L401:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L402
	 nop
	fmuld	%f8, %f8, %f8
.L399:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L398
	 fmuld	%f0, %f8, %f0
	ba,pt	%xcc, .L401
	 srl	%o1, 31, %g1
.L402:
	jmp	%o7+8
	 nop
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
	.align 16
.LC20:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 16
.LC21:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	save	%sp, -496, %sp
	std	%f0, [%fp+2031]
	std	%f2, [%fp+2039]
	std	%f0, [%fp+2015]
	std	%f2, [%fp+2023]
	std	%f0, [%fp+1727]
	std	%f2, [%fp+1735]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	ldd	[%fp+1727], %f0
	be,pn	%xcc, .L411
	 ldd	[%fp+1735], %f2
	std	%f0, [%fp+1983]
	std	%f2, [%fp+1991]
	std	%f0, [%fp+1967]
	std	%f2, [%fp+1975]
	add	%fp, 1967, %o2
	add	%fp, 1983, %o1
	call	_Qp_add, 0
	 add	%fp, 1999, %o0
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	ldd	[%fp+1727], %f0
	ldd	[%fp+1735], %f2
	std	%f0, [%fp+1935]
	std	%f2, [%fp+1943]
	add	%fp, 1935, %o1
	call	_Qp_feq, 0
	 add	%fp, 1951, %o0
	ldd	[%fp+1727], %f0
	brnz,pt	%o0, .L411
	 ldd	[%fp+1735], %f2
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	cmp	%i2, 0
	bl,pn	%icc, .L409
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L405:
	add	%fp, 1871, %l2
	add	%fp, 1855, %l1
	add	%fp, 1839, %l0
	add	%fp, 1775, %i0
	add	%fp, 1759, %i1
	ba,pt	%xcc, .L407
	 add	%fp, 1743, %i3
.L409:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L405
	 ldx	[%g1+%lo(.LC21+8)], %i5
.L406:
	srl	%i2, 31, %g1
.L410:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L411
	 nop
	std	%f0, [%fp+1727]
	std	%f2, [%fp+1735]
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	stx	%i5, [%fp+1751]
	mov	%i3, %o2
	mov	%i1, %o1
	call	_Qp_mul, 0
	 mov	%i0, %o0
	ldx	[%fp+1775], %i4
	ldx	[%fp+1783], %i5
	ldd	[%fp+1727], %f0
	ldd	[%fp+1735], %f2
.L407:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L410
	 srl	%i2, 31, %g1
	std	%f0, [%fp+1855]
	std	%f2, [%fp+1863]
	stx	%i4, [%fp+1839]
	stx	%i5, [%fp+1847]
	mov	%l0, %o2
	mov	%l1, %o1
	call	_Qp_mul, 0
	 mov	%l2, %o0
	ldd	[%fp+1871], %f0
	ba,pt	%xcc, .L406
	 ldd	[%fp+1879], %f2
.L411:
	return	%i7+8
	 nop
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L417
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L416:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a,pt %xcc, .L416
	 ldub	[%o0+%g1], %g2
.L417:
	jmp	%o7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.align 32
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -176, %sp
	call	strlen, 0
	 mov	%i0, %o0
	brz,pn	%i2, .L420
	 add	%i0, %o0, %o0
.L419:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be,pn	%icc, .L420
	 nop
	add	%i1, 1, %i1
	add	%i2, -1, %i2
	brnz,pt	%i2, .L419
	 add	%o0, 1, %o0
.L420:
	brz,a,pt %i2, .L424
	 stb	%g0, [%o0]
.L424:
	return	%i7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L432
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L434:
	cmp	%g2, 0
	bne,a,pn %icc, .L433
	 add	%g1, 1, %g1
.L425:
	jmp	%o7+8
	 mov	%g1, %o0
.L432:
	ba,pt	%xcc, .L425
	 mov	%o1, %g1
.L433:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L434
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L425
	 mov	%o1, %g1
	.size	strnlen, .-strnlen
	.align 4
	.align 32
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L442
	 ldub	[%o0], %g4
.L436:
	mov	%o1, %g2
	sll	%g4, 24, %g4
	sra	%g4, 24, %g4
.L439:
	ldsb	[%g2], %g3
	cmp	%g3, 0
	be,pn	%icc, .L443
	 ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %g4
	bne,pt	%icc, .L439
	 add	%g2, 1, %g2
.L437:
	jmp	%o7+8
	 nop
.L442:
	jmp	%o7+8
	 mov	0, %o0
.L443:
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L436
	 ldub	[%o0], %g4
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.align 32
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	mov	0, %o0
.L446:
	ldub	[%g1], %g2
	ldsb	[%g1], %g3
	cmp	%g3, %o1
	move	%icc, %g1, %o0
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L446
	 add	%g1, 1, %g1
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.align 32
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -176, %sp
	mov	%i0, %i5
	call	strlen, 0
	 mov	%i1, %o0
	brz,pn	%o0, .L454
	 mov	%o0, %i4
	ldsb	[%i1], %i3
.L451:
	mov	%i3, %o1
	call	strchr, 0
	 mov	%i5, %o0
	brz,pn	%o0, .L454
	 mov	%o0, %i0
	mov	%i4, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L454
	 nop
	ba,pt	%xcc, .L451
	 add	%i0, 1, %i5
.L454:
	return	%i7+8
	 nop
	.size	strstr, .-strstr
	.align 4
	.align 32
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbl,a,pn %fcc2, .L464
	 fcmped	%fcc3, %f2, %f8
.L456:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L465
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L458
	 nop
.L465:
	jmp	%o7+8
	 nop
.L464:
	fbule,pt %fcc3, .L456
	 nop
.L458:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -176, %sp
	brz,pn	%i3, .L476
	 mov	%i0, %i5
	cmp	%i1, %i3
	blu,pn	%xcc, .L471
	 nop
	sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu,pn	%xcc, .L472
	 nop
	ldsb	[%i2], %i4
	add	%i3, -1, %i3
	ba,pt	%xcc, .L469
	 add	%i2, 1, %i2
.L468:
	cmp	%i5, %i1
.L475:
	bgu,pn	%xcc, .L474
	 nop
.L469:
	ldub	[%i5], %g1
	mov	%i5, %i0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %i4
	bne,pt	%icc, .L468
	 add	%i5, 1, %i5
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L475
	 cmp	%i5, %i1
.L476:
	return	%i7+8
	 nop
.L474:
	return	%i7+8
	 mov	0, %o0
.L471:
	return	%i7+8
	 mov	0, %o0
.L472:
	return	%i7+8
	 mov	0, %o0
	.size	memmem, .-memmem
	.align 4
	.align 32
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
	.align 32
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	fzero	%f8
	fcmped	%fcc2, %f0, %f8
	fbl,a,pn %fcc2, .L496
	 fnegd	%f0, %f0
	mov	0, %g2
.L479:
	sethi	%hi(.LC24), %g3
	ldd	[%g3+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbul,pn	%fcc3, .L495
	 mov	0, %g1
	sethi	%hi(.LC25), %g4
	ldd	[%g4+%lo(.LC25)], %f10
.L483:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L483
	 add	%g1, 1, %g1
.L484:
	st	%g1, [%o1]
.L497:
	fnegd	%f0, %f8
	cmp	%g2, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L496:
	ba,pt	%xcc, .L479
	 mov	1, %g2
.L495:
	fzero	%f8
	fcmpd	%fcc1, %f0, %f8
	mov	0, %g4
	movne	%fcc1, 1, %g4
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g3
	movl	%fcc2, 1, %g3
	andcc	%g4, %g3, %g0
	be,pt	%icc, .L484
	 mov	0, %g1
.L485:
	faddd	%f0, %f0, %f0
	fcmped	%fcc3, %f0, %f8
	fbl,pt	%fcc3, .L485
	 add	%g1, -1, %g1
	ba,pt	%xcc, .L497
	 st	%g1, [%o1]
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	brz,pn	%o0, .L501
	 mov	%o0, %g2
	mov	0, %o0
.L500:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srlx	%g2, 1, %g2
	brnz,pt	%g2, .L500
	 add	%o1, %o1, %o1
	jmp	%o7+8
	 nop
.L501:
	jmp	%o7+8
	 mov	0, %o0
	.size	__muldi3, .-__muldi3
	.align 4
	.align 32
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	cmp	%o1, %o0
	bgeu,pn	%icc, .L505
	 mov	1, %g1
	cmp	%o1, 0
.L519:
	bl,pn	%icc, .L518
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	srl	%g2, 0, %o1
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L519
	 cmp	%o1, 0
.L505:
	cmp	%g1, 0
.L518:
	bne,pt	%icc, .L506
	 mov	0, %g2
	mov	%g1, %g2
.L507:
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L509:
	srl	%g1, 1, %g1
.L520:
	cmp	%g1, 0
	be,pn	%icc, .L507
	 srlx	%o1, 1, %o1
.L506:
	cmp	%o0, %o1
	blu,a,pt %icc, .L520
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	ba,pt	%xcc, .L509
	 or	%g2, %g1, %g2
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	sra	%i0, 7, %g2
	xor	%g2, %i0, %g1
	cmp	%g0, %g2
	subx	%g0, 0, %g2
	cmp	%g2, %i0
	be,pn	%icc, .L522
	 mov	7, %o0
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L522:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.align 32
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -176, %sp
	srax	%i0, 63, %g2
	xor	%i0, %g2, %o0
	cmp	%i0, %g2
	be,pn	%xcc, .L525
	 mov	63, %g1
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L525:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L532
	 mov	0, %g2
.L529:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%g2, %g1, %g2
	srlx	%o0, 1, %o0
	add	%o1, %o1, %o1
	brnz,pt	%o0, .L529
	 srl	%o1, 0, %o1
.L528:
.L532:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L534
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu,pt	%xcc, .L546
	 cmp	%g4, 0
	add	%o2, -1, %g1
	brz,pn	%o2, .L552
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L547:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L547
	 ldub	[%o1+%g1], %g2
.L552:
	jmp	%o7+8
	 nop
.L534:
	cmp	%g4, 0
.L546:
	be,pn	%icc, .L548
	 cmp	%g1, %o2
	sllx	%g4, 3, %g4
	mov	0, %g2
	ldx	[%o1+%g2], %g3
.L549:
	stx	%g3, [%o0+%g2]
	add	%g2, 8, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L549
	 ldx	[%o1+%g2], %g3
	cmp	%g1, %o2
.L548:
	bgeu,pn	%icc, .L551
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L550:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L550
	 ldub	[%o1+%g1], %g2
.L551:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.align 32
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu,pt	%xcc, .L554
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bgu,pt	%xcc, .L564
	 cmp	%g3, 0
	add	%o2, -1, %g1
	brz,pn	%o2, .L569
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L565:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L565
	 ldub	[%o1+%g1], %g2
.L569:
	jmp	%o7+8
	 nop
.L568:
	jmp	%o7+8
	 nop
.L554:
	cmp	%g3, 0
.L564:
	be,pn	%icc, .L566
	 andcc	%o2, 1, %g0
	add	%g3, %g3, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L567:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L567
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L566:
	be,pt	%xcc, .L568
	 nop
	add	%o2, -1, %o2
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L571
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu,pt	%xcc, .L583
	 cmp	%g4, 0
	add	%o2, -1, %g1
	brz,pn	%o2, .L589
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L584:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L584
	 ldub	[%o1+%g1], %g2
.L589:
	jmp	%o7+8
	 nop
.L571:
	cmp	%g4, 0
.L583:
	be,pn	%icc, .L585
	 cmp	%g1, %o2
	sllx	%g4, 2, %g4
	mov	0, %g2
	lduw	[%o1+%g2], %g3
.L586:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L586
	 lduw	[%o1+%g2], %g3
	cmp	%g1, %o2
.L585:
	bgeu,pn	%icc, .L588
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L587:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L587
	 ldub	[%o1+%g1], %g2
.L588:
	jmp	%o7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L598
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
.L599:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L598:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	ba,pt	%xcc, .L599
	 faddd	%f0, %f0, %f0
	.size	__ulltod, .-__ulltod
	.align 4
	.align 32
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L601
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
.L602:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L601:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	ba,pt	%xcc, .L602
	 fadds	%f0, %f0, %f0
	.size	__ulltof, .-__ulltof
	.align 4
	.align 32
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
	.align 32
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	mov	0, %g1
	mov	15, %g3
	sub	%g3, %g1, %g2
.L608:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L605
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L608
	 sub	%g3, %g1, %g2
.L605:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	mov	0, %g1
	sra	%o0, %g1, %g2
.L613:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L610
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L613
	 sra	%o0, %g1, %g2
.L610:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC28:
	.long	1191182336
	.section	".text"
	.align 4
	.align 32
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	05
__fixunssfsi:
	add	%sp, -144, %sp
	sethi	%hi(.LC28), %g1
	ld	[%g1+%lo(.LC28)], %f8
	fcmpes	%fcc0, %f1, %f8
	fbge,a,pn %fcc0, .L620
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
.L614:
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L620:
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	sethi	%hi(32768), %g1
	ldx	[%sp+2183], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L614
	 stx	%g1, [%sp+2183]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.align 32
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L622:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,pt	%icc, .L622
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.align 32
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	mov	0, %g3
	mov	0, %g1
.L625:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,pt	%icc, .L625
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	brz,pn	%o0, .L632
	 mov	0, %g2
.L629:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%g2, %g1, %g2
	srlx	%o0, 1, %o0
	add	%o1, %o1, %o1
	brnz,pt	%o0, .L629
	 srl	%o1, 0, %o1
.L628:
.L632:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L634
	 mov	0, %g2
	brz,pn	%o1, .L639
	 nop
.L635:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%g2, %g1, %g2
	add	%o0, %o0, %o0
	srlx	%o1, 1, %o1
	brnz,pt	%o1, .L635
	 srl	%o0, 0, %o0
.L634:
.L639:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.align 32
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	cmp	%o1, %o0
	bgeu,pn	%icc, .L642
	 mov	1, %g1
	cmp	%o1, 0
.L656:
	bl,pn	%icc, .L655
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	srl	%g2, 0, %o1
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L656
	 cmp	%o1, 0
.L642:
	cmp	%g1, 0
.L655:
	bne,pt	%icc, .L643
	 mov	0, %g2
	mov	%g1, %g2
.L644:
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L646:
	srl	%g1, 1, %g1
.L657:
	cmp	%g1, 0
	be,pn	%icc, .L644
	 srlx	%o1, 1, %o1
.L643:
	cmp	%o0, %o1
	blu,a,pt %icc, .L657
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	ba,pt	%xcc, .L646
	 or	%g2, %g1, %g2
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	fcmpes	%fcc1, %f1, %f3
	fbl,pn	%fcc1, .L659
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L659:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	fcmped	%fcc2, %f0, %f2
	fbl,pn	%fcc2, .L662
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc2, 1, %o0
.L662:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.align 32
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	jmp	%o7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.align 32
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	jmp	%o7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.align 32
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl,pn	%icc, .L674
	 mov	0, %g5
.L667:
	brz,pn	%o1, .L668
	 mov	0, %g3
	mov	1, %g2
.L669:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%g3, %g1, %g3
	add	%o0, %o0, %o0
	sra	%o0, 0, %o0
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g2, 0xff, %g1
	cmp	%g1, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	bne,pt	%icc, .L669
	 add	%g2, 1, %g2
.L668:
	sub	%g0, %g3, %g1
	cmp	%g5, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
.L674:
	sub	%g0, %o1, %o1
	sra	%o1, 0, %o1
	ba,pt	%xcc, .L667
	 mov	1, %g5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	save	%sp, -176, %sp
	brlz,pn	%i0, .L680
	 mov	0, %i5
.L676:
	brlz,a,pn %i1, .L681
	 sub	%g0, %i1, %i1
.L677:
	mov	0, %o2
	srl	%i1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%i5, 0
	mov	%o0, %i0
	return	%i7+8
	 movne	%icc, %g1, %o0
.L680:
	sub	%g0, %i0, %i0
	ba,pt	%xcc, .L676
	 mov	1, %i5
.L681:
	ba,pt	%xcc, .L677
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	save	%sp, -176, %sp
	brlz,pn	%i0, .L686
	 mov	0, %i5
.L683:
	srax	%i1, 63, %g1
	xor	%g1, %i1, %i1
	sub	%i1, %g1, %o1
	mov	1, %o2
	srl	%o1, 0, %o1
	call	__udivmodsi4, 0
	 srl	%i0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%i5, 0
	mov	%o0, %i0
	return	%i7+8
	 movne	%icc, %g1, %o0
.L686:
	sub	%g0, %i0, %i0
	ba,pt	%xcc, .L683
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu,pn	%icc, .L689
	 mov	1, %g1
	sll	%o1, 16, %g2
.L702:
	cmp	%g2, 0
	bl,pn	%icc, .L689
	 add	%g1, %g1, %g2
	add	%o1, %o1, %o1
	sllx	%o1, 48, %o1
	srlx	%o1, 48, %o1
	mov	%g2, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g2, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L702
	 sll	%o1, 16, %g2
.L689:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L690
	 mov	0, %g3
	mov	%g1, %g3
.L691:
	mov	%o0, %g1
	movre	%o2, %g3, %g1
	mov	%g1, %g3
	sllx	%g3, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
.L693:
	sll	%g1, 16, %g1
.L703:
	srl	%g1, 17, %g2
	mov	%g2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L691
	 srlx	%o1, 1, %o1
.L690:
	cmp	%o0, %o1
	blu,a,pt %icc, .L703
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
	ba,pt	%xcc, .L693
	 or	%g1, %g3, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	cmp	%o1, %o0
	bgeu,pn	%xcc, .L706
	 sethi	%hi(2147483648), %g4
	and	%o1, %g4, %g2
.L719:
	brnz,pn	%g2, .L706
	 mov	0, %g3
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g3
	mov	0, %g2
	movrne	%g1, 1, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L719
	 and	%o1, %g4, %g2
.L706:
	brnz,pt	%g1, .L707
	 mov	0, %g2
	mov	%g1, %g2
.L708:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
.L710:
	srlx	%g1, 1, %g1
.L720:
	brz,pn	%g1, .L708
	 srlx	%o1, 1, %o1
.L707:
	cmp	%o0, %o1
	blu,a,pt %xcc, .L720
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	ba,pt	%xcc, .L710
	 or	%g2, %g1, %g2
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L722
	 mov	%o0, %g1
	sll	%o0, %o1, %g1
	mov	0, %o0
.L723:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L726:
	jmp	%o7+8
	 nop
.L722:
	brz,pn	%o1, .L726
	 nop
	sll	%o0, %o1, %o0
	sub	%g0, %o1, %g2
	srl	%g1, %g2, %g2
	srax	%g1, 32, %g1
	sll	%g1, %o1, %g1
	ba,pt	%xcc, .L723
	 or	%g2, %g1, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L728
	 mov	0, %g1
	sllx	%o1, %o2, %o0
.L729:
	mov	%g1, %o1
.L732:
	jmp	%o7+8
	 nop
.L728:
	brz,pn	%o2, .L732
	 nop
	sllx	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srlx	%o1, %g2, %o1
	sllx	%o0, %o2, %o0
	ba,pt	%xcc, .L729
	 or	%o1, %o0, %o0
	.size	__ashlti3, .-__ashlti3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L734
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L735:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L738:
	jmp	%o7+8
	 nop
.L734:
	brz,pn	%o1, .L738
	 nop
	srax	%o0, 32, %g2
	sra	%g2, %o1, %o0
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %o1, %g1
	ba,pt	%xcc, .L735
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L740
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
.L741:
	mov	%g1, %o0
.L744:
	jmp	%o7+8
	 nop
.L740:
	brz,pn	%o2, .L744
	 nop
	srax	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L741
	 or	%o0, %o1, %o1
	.size	__ashrti3, .-__ashrti3
	.align 4
	.align 32
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srlx	%o0, 56, %g1
	sllx	%o0, 56, %g2
	or	%g1, %g2, %g1
	srlx	%o0, 40, %g3
	mov	255, %g2
	sllx	%g2, 8, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 24, %g3
	sethi	%hi(16711680), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 8, %g3
	sethi	%hi(4278190080), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 8, %g3
	sllx	%g2, 32, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	sllx	%g2, 40, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 40, %o0
	sllx	%g2, 48, %g2
	and	%o0, %g2, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.align 32
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	srl	%o0, 24, %g1
	sll	%o0, 24, %g2
	or	%g1, %g2, %g1
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
	sll	%o0, 8, %o0
	sethi	%hi(16711680), %g2
	and	%o0, %g2, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.align 32
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	sethi	%hi(64512), %g2
	or	%g2, 1023, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g3
	sll	%g3, 4, %g3
	mov	16, %g1
	sub	%g1, %g3, %g1
	srl	%o0, %g1, %g1
	or	%g2, 768, %g2
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g4
	sub	%g4, %g2, %g4
	srl	%g1, %g4, %g1
	add	%g2, %g3, %g3
	and	%g1, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g4
	sub	%g4, %g2, %g4
	srl	%g1, %g4, %g1
	add	%g2, %g3, %g3
	and	%g1, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	add	%g2, %g2, %g2
	mov	2, %o0
	sub	%o0, %g2, %g4
	srl	%g1, %g4, %g1
	sub	%o0, %g1, %o0
	andcc	%g1, 2, %g0
	movne	%xcc, 0, %o0
	add	%g2, %g3, %g2
	add	%o0, %g2, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.align 32
	.global __clzti2
	.type	__clzti2, #function
	.proc	04
__clzti2:
	save	%sp, -176, %sp
	mov	0, %i5
	movre	%i0, 1, %i5
	mov	0, %g1
	movrne	%i0, -1, %g1
	and	%g1, %i0, %g1
	movrne	%i0, %g0, %i1
	call	__clzdi2, 0
	 or	%g1, %i1, %o0
	sll	%i5, 6, %i5
	add	%i5, %o0, %i5
	return	%i7+8
	 sra	%o5, 0, %o0
	.size	__clzti2, .-__clzti2
	.align 4
	.align 32
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	srax	%o0, 32, %g3
	srax	%o1, 32, %g2
	cmp	%g3, %g2
	bl,pn	%icc, .L750
	 mov	0, %g1
	bg,pn	%icc, .L750
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L750
	 mov	0, %g1
	cmp	%o1, %o0
	addx	%g0, 1, %g1
.L750:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.align 32
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
	.align 32
	.global __cmpti2
	.type	__cmpti2, #function
	.proc	04
__cmpti2:
	cmp	%o0, %o2
	bl,pn	%xcc, .L757
	 mov	0, %g1
	bg,pn	%xcc, .L757
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L757
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L757:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__cmpti2, .-__cmpti2
	.align 4
	.align 32
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%o0, %g1, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g3
	sll	%g3, 4, %g3
	srl	%o0, %g3, %g1
	and	%g1, 255, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	srl	%g1, %g2, %g1
	add	%g2, %g3, %g3
	and	%g1, 15, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	srl	%g1, %g2, %g1
	add	%g2, %g3, %g3
	and	%g1, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	add	%g2, %g2, %g2
	srl	%g1, %g2, %g1
	and	%g1, 3, %g1
	xnor	%g0, %g1, %o0
	and	%o0, 1, %o0
	srl	%g1, 1, %g1
	mov	2, %g4
	sub	%g4, %g1, %g1
	sub	%g0, %o0, %o0
	and	%o0, %g1, %o0
	add	%g2, %g3, %g2
	add	%o0, %g2, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.align 32
	.global __ctzti2
	.type	__ctzti2, #function
	.proc	04
__ctzti2:
	save	%sp, -176, %sp
	mov	0, %o0
	movre	%i1, %i0, %o0
	mov	0, %i0
	movre	%i1, 1, %i0
	mov	0, %g1
	movrne	%i1, -1, %g1
	and	%g1, %i1, %g1
	call	__ctzdi2, 0
	 or	%o0, %g1, %o0
	sll	%i0, 6, %i0
	add	%i0, %o0, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__ctzti2, .-__ctzti2
	.align 4
	.align 32
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -176, %sp
	brnz,pt	%i1, .L765
	 nop
	brz,pt	%i0, .L766
	 mov	0, %o0
	call	__ctzdi2, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L766
	 add	%o0, 65, %o0
.L765:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
.L766:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__ffsti2, .-__ffsti2
	.align 4
	.align 32
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L769
	 mov	%o0, %g1
	srlx	%o0, 32, %g1
	srl	%g1, %o1, %g1
	mov	0, %o0
.L770:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L773:
	jmp	%o7+8
	 nop
.L769:
	brz,pn	%o1, .L773
	 nop
	srlx	%o0, 32, %g2
	srl	%g2, %o1, %o0
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %o1, %g1
	ba,pt	%xcc, .L770
	 or	%g2, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L775
	 mov	0, %g1
	srlx	%o0, %o2, %o1
.L776:
	mov	%g1, %o0
.L779:
	jmp	%o7+8
	 nop
.L775:
	brz,pn	%o2, .L779
	 nop
	srlx	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L776
	 or	%o0, %o1, %o1
	.size	__lshrti3, .-__lshrti3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	sethi	%hi(64512), %g5
	or	%g5, 1023, %g5
	and	%o0, %g5, %g3
	and	%o1, %g5, %g1
	smul	%g3, %g1, %g2
	srl	%g2, 16, %o5
	srl	%o0, 16, %g4
	smul	%g1, %g4, %g1
	add	%g1, %o5, %g1
	and	%g2, %g5, %g2
	sll	%g1, 16, %o5
	add	%g2, %o5, %g2
	srl	%o5, 16, %o5
	srl	%o1, 16, %o1
	smul	%g3, %o1, %g3
	add	%g3, %o5, %g3
	and	%g2, %g5, %o0
	sll	%g3, 16, %g2
	add	%o0, %g2, %o0
	srl	%g1, 16, %g1
	smul	%g4, %o1, %g4
	add	%g1, %g4, %g1
	srl	%g3, 16, %g3
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -176, %sp
	srl	%i1, 0, %o1
	call	__muldsi3, 0
	 srl	%i0, 0, %o0
	srax	%i0, 32, %g1
	smul	%i1, %g1, %g1
	srax	%i1, 32, %i1
	smul	%i0, %i1, %i0
	add	%g1, %i0, %g1
	srax	%o0, 32, %g2
	add	%g1, %g2, %g1
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %i0
	return	%i7+8
	 nop
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.align 32
	.global __mulddi3
	.type	__mulddi3, #function
	.proc	05
__mulddi3:
	mov	-1, %g4
	srlx	%g4, 32, %g4
	and	%o0, %g4, %g2
	and	%o1, %g4, %g1
	mulx	%g2, %g1, %g3
	srlx	%g3, 32, %g5
	srlx	%o0, 32, %o0
	mulx	%g1, %o0, %g1
	add	%g1, %g5, %g1
	and	%g3, %g4, %g3
	sllx	%g1, 32, %g5
	add	%g3, %g5, %g3
	srlx	%g5, 32, %g5
	srlx	%o1, 32, %o1
	mulx	%g2, %o1, %g2
	add	%g2, %g5, %g2
	and	%g3, %g4, %g3
	sllx	%g2, 32, %g4
	srlx	%g1, 32, %g1
	mulx	%o0, %o1, %o0
	add	%g1, %o0, %o0
	srlx	%g2, 32, %g2
	add	%o0, %g2, %o0
	jmp	%o7+8
	 add	%g3, %g4, %o1
	.size	__mulddi3, .-__mulddi3
	.align 4
	.align 32
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
	mulx	%i3, %i0, %i3
	mulx	%i5, %i2, %i5
	add	%i3, %i5, %i3
	jmp	%i7+8
	 restore %i3, %o0, %o0
	.size	__multi3, .-__multi3
	.align 4
	.align 32
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	jmp	%o7+8
	 sub	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.align 32
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
	.align 32
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	srlx	%o0, 32, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 16, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 8, %g2
	xor	%g2, %o0, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o0
	sra	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.align 32
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	xor	%o1, %o0, %o1
	srax	%o1, 32, %g1
	xor	%g1, %o1, %o1
	srl	%o1, 16, %g1
	xor	%g1, %o1, %g1
	srl	%g1, 8, %g2
	xor	%g2, %g1, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o0
	sra	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__parityti2, .-__parityti2
	.align 4
	.align 32
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	srl	%o0, 16, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 8, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 4, %g1
	xor	%g1, %o0, %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o0
	sra	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.align 32
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
	srlx	%o0, 2, %g2
	sethi	%hi(858992640), %g3
	or	%g3, 819, %g3
	sllx	%g3, 32, %g1
	add	%g1, %g3, %g1
	and	%g2, %g1, %g2
	and	%o0, %g1, %o0
	add	%g2, %o0, %g2
	srlx	%g2, 4, %g1
	add	%g1, %g2, %g1
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	sllx	%g2, 32, %g3
	add	%g3, %g2, %g2
	and	%g1, %g2, %g1
	srlx	%g1, 32, %g2
	add	%g2, %g1, %g2
	srl	%g2, 16, %g1
	add	%g1, %g2, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 127, %o0
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.align 32
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
	add	%g2, %o0, %g2
	srl	%g2, 4, %g1
	add	%g1, %g2, %g1
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	and	%g1, %g2, %g1
	srl	%g1, 16, %g2
	add	%g2, %g1, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.align 32
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
	add	%g1, %g2, %g2
	srl	%g2, 16, %g1
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
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	fmovd	%f0, %f8
	mov	%o1, %g1
	sethi	%hi(.LC30), %g2
	ba,pt	%xcc, .L795
	 ldd	[%g2+%lo(.LC30)], %f0
.L793:
	srl	%g1, 31, %g2
.L798:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L794
	 cmp	%o1, 0
	fmuld	%f8, %f8, %f8
.L795:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L793
	 fmuld	%f0, %f8, %f0
	ba,pt	%xcc, .L798
	 srl	%g1, 31, %g2
.L794:
	bl,a,pn	%icc, .L797
	 sethi	%hi(.LC30), %g1
.L792:
	jmp	%o7+8
	 nop
.L797:
	ldd	[%g1+%lo(.LC30)], %f8
	jmp	%o7+8
	 fdivd	%f8, %f0, %f0
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC32:
	.long	1065353216
	.section	".text"
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	mov	%o1, %g1
	sethi	%hi(.LC32), %g2
	ba,pt	%xcc, .L802
	 ld	[%g2+%lo(.LC32)], %f0
.L800:
	srl	%g1, 31, %g2
.L805:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L801
	 cmp	%o1, 0
	fmuls	%f1, %f1, %f1
.L802:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L800
	 fmuls	%f0, %f1, %f0
	ba,pt	%xcc, .L805
	 srl	%g1, 31, %g2
.L801:
	bl,a,pn	%icc, .L804
	 sethi	%hi(.LC32), %g1
.L799:
	jmp	%o7+8
	 nop
.L804:
	ld	[%g1+%lo(.LC32)], %f8
	jmp	%o7+8
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.align 32
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	srlx	%o0, 32, %g3
	srlx	%o1, 32, %g2
	cmp	%g3, %g2
	blu,pn	%icc, .L807
	 mov	0, %g1
	bgu,pn	%icc, .L807
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L807
	 mov	0, %g1
	cmp	%o1, %o0
	addx	%g0, 1, %g1
.L807:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.align 32
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
	.align 32
	.global __ucmpti2
	.type	__ucmpti2, #function
	.proc	04
__ucmpti2:
	cmp	%o0, %o2
	blu,pn	%xcc, .L814
	 mov	0, %g1
	bgu,pn	%xcc, .L814
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L814
	 mov	0, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	add	%g1, 1, %g1
.L814:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.common	s.0,7,8
	.local	seed
	.common	seed,8,8
	.section	".rodata"
	.align 8
	.type	digits, #object
	.size	digits, 65
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
