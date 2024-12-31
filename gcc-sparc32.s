	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	bleu	.L9
	 add	%i0, %i2, %g3
	add	%i1, %i2, %i1
	b	.L3
	 mov	%i2, %g1
.L4:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g4
	sub	%g3, %i2, %g2
	add	%g2, -1, %g2
	stb	%g4, [%g2+%g1]
	add	%g1, -1, %g1
.L3:
	cmp	%g1, 0
	bne	.L4
	 sub	%i1, %i2, %g2
	jmp	%i7+8
	 restore
.L9:
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
	b	.L11
	 and	%i2, 0xff, %i2
.L13:
	add	%i3, -1, %i3
	add	%i1, 1, %i1
	add	%i0, 1, %i0
.L11:
	cmp	%i3, 0
	be	.L16
	 nop
	ldub	[%i1], %g1
	stb	%g1, [%i0]
	and	%g1, 0xff, %g1
	cmp	%i2, %g1
	bne	.L13
	 cmp	%i3, 0
.L16:
	be	.L15
	 nop
	jmp	%i7+8
	 restore %i0, 1, %o0
.L15:
	jmp	%i7+8
	 restore %g0, 0, %o0
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
	add	%i0, 1, %i0
	add	%i2, -1, %i2
.L18:
	cmp	%i2, 0
	be,a	.L23
	 mov	0, %i0
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne	.L20
	 cmp	%i2, 0
	be,a	.L23
	 mov	0, %i0
.L23:
	jmp	%i7+8
	 restore
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -96, %sp
	b	.L30
	 cmp	%i2, 0
.L27:
	add	%i2, -1, %i2
	add	%i0, 1, %i0
	add	%i1, 1, %i1
	cmp	%i2, 0
.L30:
	be	.L31
	 cmp	%i2, 0
	ldub	[%i0], %g2
	ldub	[%i1], %g1
	cmp	%g2, %g1
	be	.L27
	 cmp	%i2, 0
.L31:
	be	.L29
	 nop
	ldub	[%i0], %i0
	ldub	[%i1], %g1
	sub	%i0, %g1, %i0
	jmp	%i7+8
	 restore
.L29:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	b	.L33
	 mov	0, %g1
.L34:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L33:
	cmp	%g1, %i2
	bne,a	.L34
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
	b	.L36
	 add	%i2, -1, %i2
.L38:
	cmp	%i1, %g2
	bne	.L39
	 add	%i2, -1, %g1
	jmp	%i7+8
	 restore %i0, %i2, %o0
.L39:
	mov	%g1, %i2
.L36:
	cmp	%i2, -1
	bne,a	.L38
	 ldub	[%i0+%i2], %g2
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
	b	.L41
	 mov	%i0, %g1
.L42:
	add	%g1, 1, %g1
.L41:
	cmp	%g1, %i2
	bne,a	.L42
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
	b	.L46
	 ldub	[%i1], %g1
.L45:
	add	%i0, 1, %i0
	ldub	[%i1], %g1
.L46:
	stb	%g1, [%i0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L45
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
.L50:
	ldsb	[%i0], %g1
	cmp	%g1, 0
	be	.L51
	 nop
	ldub	[%i0], %g1
	cmp	%i1, %g1
	bne,a	.L50
	 add	%i0, 1, %i0
.L51:
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
	cmp	%i2, 0
	be	.L71
	 mov	%i0, %g1
	b	.L73
	 ldub	[%g1], %g2
.L70:
	add	%i1, 1, %i1
	ldub	[%g1], %g2
.L73:
	cmp	%g2, 0
	be	.L69
	 add	%i2, -1, %g2
	add	%g2, %i0, %g2
	sub	%g2, %g1, %g2
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
	jmp	%i7+8
	 restore
.L71:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -96, %sp
	b	.L75
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
	add	%i0, -97, %g1
	cmp	%g1, 25
	bleu	.L78
	 mov	1, %i0
	mov	0, %i0
.L78:
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
	bleu	.L80
	 mov	1, %g1
	mov	0, %g1
.L80:
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
	bleu	.L83
	 mov	1, %g1
	mov	0, %g1
.L83:
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
	bleu	.L85
	 mov	1, %g1
	mov	0, %g1
.L85:
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
	bleu	.L87
	 mov	1, %g1
	mov	0, %g1
.L87:
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
	bleu	.L89
	 mov	1, %g1
	mov	0, %g1
.L89:
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
	bleu	.L91
	 mov	1, %g1
	mov	0, %g1
.L91:
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
	subx	%g0, -1, %g2
	add	%i0, -9, %i0
	cmp	%i0, 4
	bleu	.L93
	 mov	1, %g1
	mov	0, %g1
.L93:
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
	bleu	.L95
	 mov	1, %g1
	mov	0, %g1
.L95:
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
	bleu	.L97
	 mov	1, %g1
	mov	0, %g1
.L97:
	add	%i0, -127, %g2
	cmp	%g2, 32
	bleu	.L98
	 mov	1, %g3
	mov	0, %g3
.L98:
	or	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L100
	 sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%i0, %g1, %g1
	cmp	%g1, 1
	bleu	.L101
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%i0, %g1, %i0
	cmp	%i0, 2
	bgu	.L102
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L100:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L101:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L102:
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
	bleu	.L104
	 mov	1, %g1
	mov	0, %g1
.L104:
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
	bgu,a	.L106
	 sethi	%hi(8192), %g1
	add	%i0, 1, %i0
	and	%i0, 127, %i0
	cmp	%i0, 32
	bgu	.L107
	 mov	1, %g1
	mov	0, %g1
.L107:
	and	%g1, 0xff, %i0
	jmp	%i7+8
	 restore
.L106:
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
	bne	.L109
	 sethi	%hi(-57344), %g2
	add	%i0, %g2, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bleu	.L110
	 sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%i0, %g1, %g1
	sethi	%hi(1048576), %g2
	or	%g2, 3, %g2
	cmp	%g1, %g2
	bgu	.L111
	 sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%i0, %g1, %i0
	cmp	%i0, %g1
	be	.L112
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L109:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L110:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L111:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L112:
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
	bleu	.L115
	 nop
	or	%i0, 32, %i0
	add	%i0, -97, %i0
	cmp	%i0, 5
	bgu	.L116
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L115:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L116:
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
	ldd	[%fp-8], %f8
	std	%i2, [%fp-8]
	fcmpd	%f8, %f8
	nop
	fbu	.L121
	 ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L126
	 nop
	fcmped	%f8, %f0
	nop
	fbule	.L125
	 nop
	fsubd	%f8, %f0, %f0
	jmp	%i7+8
	 restore
.L121:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L125:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f0
.L126:
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
	ld	[%fp-4], %f8
	st	%i1, [%fp-4]
	fcmps	%f8, %f8
	nop
	fbu	.L131
	 ld	[%fp-4], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L136
	 nop
	fcmpes	%f8, %f0
	nop
	fbule	.L135
	 nop
	fsubs	%f8, %f0, %f0
	jmp	%i7+8
	 restore
.L131:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L135:
	sethi	%hi(.LC2), %g1
	ld	[%g1+%lo(.LC2)], %f0
.L136:
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
	fbu	.L142
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L149
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L140
	 fcmped	%f0, %f8
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L148
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L149:
	jmp	%i7+8
	 restore
.L140:
	nop
	fbuge	.L148
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L142:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L148:
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
	fbu	.L154
	 ld	[%fp-4], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L161
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L152
	 fcmpes	%f0, %f8
	st	%f0, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L160
	 nop
	fmovs	%f8, %f0
.L161:
	jmp	%i7+8
	 restore
.L152:
	nop
	fbuge	.L160
	 nop
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L154:
	fmovs	%f8, %f0
.L160:
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
	fbu	.L166
	 ldd	[%fp-8], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L173
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	st	%f8, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L164
	 fcmped	%f0, %f8
	st	%f0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L172
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L173:
	jmp	%i7+8
	 restore
.L164:
	nop
	fbuge	.L172
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L166:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L172:
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
	fbu	.L185
	 ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L179
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	st	%f0, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L176
	 fcmped	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L184
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L185:
	jmp	%i7+8
	 restore
.L176:
	nop
	fbuge	.L184
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L179:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L184:
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
	fbu	.L197
	 ld	[%fp-4], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L191
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, %g3, %g1
	st	%f0, [%fp-4]
	ld	[%fp-4], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L188
	 fcmpes	%f8, %f0
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bge	.L196
	 nop
	fmovs	%f8, %f0
.L197:
	jmp	%i7+8
	 restore
.L188:
	nop
	fbuge	.L196
	 nop
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
.L191:
	fmovs	%f8, %f0
.L196:
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
	fbu	.L209
	 ldd	[%fp-8], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L203
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, %g3, %g1
	st	%f0, [%fp-8]
	ld	[%fp-8], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L200
	 fcmped	%f8, %f0
	st	%f8, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L208
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L209:
	jmp	%i7+8
	 restore
.L200:
	nop
	fbuge	.L208
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
.L203:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L208:
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
	b	.L211
	 or	%g1, %lo(s.0), %g1
.L212:
	sethi	%hi(digits), %g2
	or	%g2, %lo(digits), %g2
	ldub	[%g2+%g3], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%i0, 6, %i0
.L211:
	cmp	%i0, 0
	bne	.L212
	 and	%i0, 63, %g3
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
	sethi	%hi(seed), %i5
	or	%i5, %lo(seed), %i5
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	or	%o3, 813, %o3
	call	__muldi3, 0
	 ldd	[%i5], %o0
	addcc	%o1, 1, %i3
	addx	%o0, 0, %i2
	std	%i2, [%i5]
	srl	%i2, 1, %g3
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
	bne,a	.L216
	 ld	[%i1], %g1
	st	%g0, [%i0+4]
	st	%g0, [%i0]
.L219:
	jmp	%i7+8
	 restore
.L216:
	st	%g1, [%i0]
	st	%i1, [%i0+4]
	st	%i0, [%i1]
	ld	[%i0], %g1
	cmp	%g1, 0
	bne,a	.L219
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
	be,a	.L223
	 ld	[%i0+4], %g1
	ld	[%i0+4], %g2
	st	%g2, [%g1+4]
	ld	[%i0+4], %g1
.L223:
	cmp	%g1, 0
	be	.L224
	 nop
	ld	[%i0], %g2
	st	%g2, [%g1]
.L224:
	jmp	%i7+8
	 restore
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -96, %sp
	ld	[%i2], %l0
	mov	%i1, %l1
	b	.L226
	 mov	0, %i5
.L229:
	mov	%l1, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L227
	 add	%l1, %i3, %l1
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L227:
	add	%i5, 1, %i5
.L226:
	cmp	%i5, %l0
	bne	.L229
	 add	%l0, 1, %g1
	st	%g1, [%i2]
	mov	%l0, %o1
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
	b	.L231
	 mov	0, %i5
.L234:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L232
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L232:
	add	%i5, 1, %i5
.L231:
	cmp	%i5, %l0
	bne	.L234
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
.L238:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L238
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L244
	 cmp	%g1, 45
	bne,a	.L245
	 mov	0, %g3
	b	.L239
	 mov	1, %g3
.L244:
	mov	0, %g3
.L239:
	add	%i0, 1, %i0
.L245:
	b	.L241
	 mov	0, %g1
.L242:
	sll	%g1, 2, %g2
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L241:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L242
	 cmp	%g3, 0
	bne	.L246
	 nop
	sub	%g0, %g1, %i0
	jmp	%i7+8
	 restore
.L246:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L249:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L249
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L255
	 cmp	%g1, 45
	bne,a	.L256
	 mov	0, %g3
	b	.L250
	 mov	1, %g3
.L255:
	mov	0, %g3
.L250:
	add	%i0, 1, %i0
.L256:
	b	.L252
	 mov	0, %g1
.L253:
	sll	%g1, 2, %g2
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L252:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L253
	 cmp	%g3, 0
	bne	.L257
	 nop
	sub	%g0, %g1, %i0
	jmp	%i7+8
	 restore
.L257:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L260:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L260
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L266
	 cmp	%g1, 45
	bne,a	.L267
	 mov	0, %g4
	b	.L261
	 mov	1, %g4
.L266:
	mov	0, %g4
.L261:
	add	%i0, 1, %i0
.L267:
	mov	0, %g2
	b	.L263
	 mov	0, %g3
.L264:
	srl	%g3, 30, %g1
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
.L263:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L264
	 cmp	%g4, 0
	bne,a	.L268
	 mov	%g2, %i0
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
	jmp	%i7+8
	 restore
.L268:
	jmp	%i7+8
	 restore %g0, %g3, %o1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L276
	 cmp	%i2, 0
.L274:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge	.L271
	 nop
	b	.L270
	 srl	%i2, 1, %i2
.L271:
	ble	.L275
	 add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L270:
	cmp	%i2, 0
.L276:
	bne	.L274
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L275:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b	.L283
	 cmp	%i2, 0
.L281:
	call	.umul, 0
	 sra	%i2, 1, %o0
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L282
	 nop
	ble,a	.L284
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L284:
	cmp	%i2, 0
.L283:
	bne	.L281
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L282:
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
	b	.L298
	 ld	[%i0], %g1
.L295:
	ld	[%i0], %g1
.L298:
	cmp	%g1, 0
	be	.L294
	 cmp	%i1, %g1
	bne,a	.L295
	 add	%i0, 4, %i0
.L294:
	ld	[%i0], %g1
	cmp	%g1, 0
	be,a	.L299
	 mov	0, %i0
.L299:
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
	 ld	[%i0], %g2
.L303:
	add	%i1, 4, %i1
	ld	[%i0], %g2
.L307:
	ld	[%i1], %g1
	cmp	%g2, %g1
	bne	.L302
	 cmp	%g2, 0
	be	.L302
	 cmp	%g1, 0
	bne,a	.L303
	 add	%i0, 4, %i0
.L302:
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L306
	 nop
	bg	.L305
	 mov	1, %i0
	mov	0, %i0
.L305:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L306:
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
.L310:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	add	%i0, -4, %g2
	ld	[%g2+%g1], %g2
	cmp	%g2, 0
	bne,a	.L310
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
.L313:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L313
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
	b	.L322
	 cmp	%i2, 0
.L317:
	add	%i0, 4, %i0
	add	%i1, 4, %i1
	cmp	%i2, 0
.L322:
	be	.L323
	 cmp	%i2, 0
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bne	.L316
	 cmp	%g2, 0
	be	.L316
	 cmp	%g1, 0
	bne,a	.L317
	 add	%i2, -1, %i2
.L316:
	cmp	%i2, 0
.L323:
	be	.L320
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L321
	 nop
	bg	.L319
	 mov	1, %i0
	mov	0, %i0
.L319:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L320:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L321:
	jmp	%i7+8
	 restore %g0, -1, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -96, %sp
	b	.L330
	 cmp	%i2, 0
.L327:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
	cmp	%i2, 0
.L330:
	be	.L332
	 cmp	%i2, 0
	ld	[%i0], %g1
	cmp	%i1, %g1
	bne	.L327
	 cmp	%i2, 0
.L332:
	be,a	.L331
	 mov	0, %i0
.L331:
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
	 cmp	%i2, 0
.L336:
	add	%i2, -1, %i2
	add	%i0, 4, %i0
	add	%i1, 4, %i1
	cmp	%i2, 0
.L341:
	be	.L342
	 cmp	%i2, 0
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	be	.L336
	 cmp	%i2, 0
.L342:
	be	.L339
	 nop
	ld	[%i0], %g2
	ld	[%i1], %g1
	cmp	%g2, %g1
	bl	.L340
	 nop
	bg	.L338
	 mov	1, %i0
	mov	0, %i0
.L338:
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L339:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L340:
	jmp	%i7+8
	 restore %g0, -1, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	b	.L344
	 mov	0, %g1
.L345:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L344:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L345
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
	be	.L354
	 sub	%i0, %i1, %g1
	sll	%i2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L352
	 mov	0, %g1
	add	%i2, -1, %i2
	b	.L349
	 sll	%i2, 2, %i2
.L350:
	st	%g1, [%i0+%i2]
	add	%i2, -4, %i2
.L349:
	cmp	%i2, -4
	bne,a	.L350
	 ld	[%i1+%i2], %g1
.L354:
	jmp	%i7+8
	 restore
.L351:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
.L352:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne,a	.L351
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
	b	.L356
	 mov	%i0, %g1
.L357:
	st	%i1, [%g1-4]
.L356:
	add	%i2, -1, %i2
	cmp	%i2, -1
	bne	.L357
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
	bgeu	.L366
	 mov	%i2, %g1
	add	%i0, %i2, %i0
	b	.L360
	 add	%i1, %i2, %i1
.L361:
	add	%g2, -1, %g2
	ldub	[%g2+%g1], %g3
	sub	%i1, %i2, %g2
	add	%g2, -1, %g2
	stb	%g3, [%g2+%g1]
	add	%g1, -1, %g1
.L360:
	cmp	%g1, 0
	bne	.L361
	 sub	%i0, %i2, %g2
	jmp	%i7+8
	 restore
.L366:
	bne	.L365
	 mov	0, %g1
	jmp	%i7+8
	 restore
.L364:
	stb	%g2, [%i1+%g1]
	add	%g1, 1, %g1
.L365:
	cmp	%g1, %i2
	bne,a	.L364
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
	be	.L368
	 sll	%i1, %i2, %g2
	b	.L369
	 mov	0, %g3
.L368:
	srl	%i1, 1, %g1
	xnor	%g0, %i2, %g2
	srl	%g1, %g2, %g1
	sll	%i0, %i2, %g2
	or	%g1, %g2, %g2
	sll	%i1, %i2, %g3
.L369:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be	.L370
	 srl	%i0, %g1, %i5
	b	.L371
	 mov	0, %i4
.L370:
	sll	%i0, 1, %g1
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	sll	%g1, %g4, %g1
	srl	%i1, %i2, %i5
	or	%g1, %i5, %i5
	srl	%i0, %i2, %i4
.L371:
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
	be	.L373
	 srl	%i0, %i2, %g3
	b	.L374
	 mov	0, %g2
.L373:
	sll	%i0, 1, %g1
	xnor	%g0, %i2, %g2
	sll	%g1, %g2, %g1
	srl	%i1, %i2, %g3
	or	%g1, %g3, %g3
	srl	%i0, %i2, %g2
.L374:
	sub	%g0, %i2, %g1
	andcc	%g1, 32, %g0
	be	.L375
	 sll	%i1, %g1, %i4
	b	.L376
	 mov	0, %i5
.L375:
	srl	%i1, 1, %g1
	sub	%g0, %i2, %i2
	and	%i2, 63, %i2
	xnor	%g0, %i2, %g4
	srl	%g1, %g4, %g1
	sll	%i0, %i2, %i4
	or	%g1, %i4, %i4
	sll	%i1, %i2, %i5
.L376:
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
	sll	%i0, %i1, %g2
	mov	16, %g1
	sub	%g1, %i1, %g1
	srl	%i0, %g1, %i0
	or	%i0, %g2, %i0
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
	srl	%i0, %i1, %g2
	mov	16, %g1
	sub	%g1, %i1, %g1
	sll	%i0, %g1, %i0
	or	%i0, %g2, %i0
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
	sll	%i0, %i1, %g2
	mov	8, %g1
	sub	%g1, %i1, %g1
	srl	%i0, %g1, %i0
	or	%i0, %g2, %i0
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
	srl	%i0, %i1, %g2
	mov	8, %g1
	sub	%g1, %i1, %g1
	sll	%i0, %g1, %i0
	or	%i0, %g2, %i0
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
	and	%i0, 0xff, %i0
	sll	%i0, 8, %i0
	or	%g1, %i0, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
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
	b	.L389
	 mov	0, %g1
.L392:
	andcc	%g2, 1, %g0
	be,a	.L390
	 add	%g1, 1, %g1
	jmp	%i7+8
	 restore %g1, 1, %o0
.L390:
.L389:
	cmp	%g1, 32
	bne	.L392
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
	be	.L397
	 mov	1, %g1
	b	.L398
	 andcc	%i0, 1, %g0
.L396:
	add	%g1, 1, %g1
	andcc	%i0, 1, %g0
.L398:
	be,a	.L396
	 sra	%i0, 1, %i0
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L397:
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
	fbl	.L402
	 sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L405
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L402:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L405:
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
	fbl	.L409
	 sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L412
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L409:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L412:
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
	fbl	.L416
	 sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L419
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L416:
	jmp	%i7+8
	 restore %g0, 1, %o0
.L419:
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
	fbu	.L427
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L427
	 cmp	%i1, 0
	bge	.L426
	 sethi	%hi(.LC16), %g1
	b	.L425
	 ld	[%g1+%lo(.LC16)], %f8
.L426:
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L425:
	andcc	%i1, 1, %g0
	bne,a	.L424
	 fmuls	%f0, %f8, %f0
.L424:
	srl	%i1, 31, %g1
	add	%g1, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L427
	 nop
	b	.L425
	 fmuls	%f8, %f8, %f8
.L427:
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
	fbu	.L434
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L434
	 cmp	%i2, 0
	bge	.L433
	 sethi	%hi(.LC20), %g1
	b	.L432
	 ldd	[%g1+%lo(.LC20)], %f8
.L433:
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L432:
	andcc	%i2, 1, %g0
	bne,a	.L431
	 fmuld	%f0, %f8, %f0
.L431:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L434
	 nop
	b	.L432
	 fmuld	%f8, %f8, %f8
.L434:
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
	fbu	.L441
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L441
	 cmp	%i2, 0
	bge	.L440
	 sethi	%hi(.LC24), %g1
	b	.L439
	 ldd	[%g1+%lo(.LC24)], %f8
.L440:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
.L439:
	andcc	%i2, 1, %g0
	bne,a	.L438
	 fmuld	%f0, %f8, %f0
.L438:
	srl	%i2, 31, %g1
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L441
	 nop
	b	.L439
	 fmuld	%f8, %f8, %f8
.L441:
	jmp	%i7+8
	 restore
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -96, %sp
	b	.L443
	 mov	0, %g1
.L444:
	ldub	[%i0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
.L443:
	cmp	%g1, %i2
	bne,a	.L444
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
	b	.L446
	 add	%i0, %o0, %o0
.L448:
	add	%i1, 1, %i1
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L446:
	cmp	%i2, 0
	be,a	.L450
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L448
	 cmp	%i2, 0
	be,a	.L450
	 stb	%g0, [%o0]
.L450:
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
.L454:
	cmp	%g1, %i1
	be	.L453
	 nop
	ldsb	[%i0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L454
	 add	%g1, 1, %g1
.L453:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -96, %sp
	b	.L462
	 ldsb	[%i0], %g1
.L458:
	ldsb	[%g1-1], %g3
	ldsb	[%i0], %g2
	cmp	%g3, %g2
	be	.L464
	 nop
	b	.L463
	 ldsb	[%g1], %g2
.L461:
	ldsb	[%g1], %g2
.L463:
	cmp	%g2, 0
	bne	.L458
	 add	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L462:
	cmp	%g1, 0
	bne	.L461
	 mov	%i1, %g1
	mov	0, %i0
.L464:
	jmp	%i7+8
	 restore
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
.L469:
	cmp	%i1, %g2
	be,a	.L466
	 mov	%g1, %i0
.L466:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a	.L469
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
	be	.L476
	 mov	%o0, %i5
	b	.L472
	 ldsb	[%i1], %i4
.L473:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L476
	 nop
	add	%i0, 1, %i0
.L472:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L473
	 mov	%o0, %i0
.L476:
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
	std	%i2, [%fp-8]
	ldd	[%fp-8], %f8
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f10
	fcmped	%f0, %f10
	nop
	fbuge	.L478
	 nop
	fcmped	%f8, %f10
	nop
	fbg,a	.L490
	 fnegs	%f0, %f0
.L478:
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-8], %f10
	fcmped	%f0, %f10
	nop
	fbule	.L490
	 nop
	fcmped	%f8, %f10
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
	cmp	%i3, 0
	be	.L500
	 add	%i0, %i5, %i5
	cmp	%i1, %i3
	blu	.L497
	 cmp	%i0, %i5
	b,a	.L499
.L495:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne	.L494
	 add	%i3, -1, %o2
	add	%i2, 1, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be	.L500
	 nop
.L494:
	add	%i0, 1, %i0
	cmp	%i0, %i5
.L499:
	bleu,a	.L495
	 ldsb	[%i0], %g2
	jmp	%i7+8
	 restore %g0, 0, %o0
.L497:
	mov	0, %i0
.L500:
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
	fbuge	.L518
	 nop
	fnegs	%f0, %f0
	b	.L503
	 mov	1, %g2
.L518:
	mov	0, %g2
.L503:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge	.L515
	 mov	1, %g3
	b	.L519
	 st	%g0, [%fp-8]
.L507:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	b	.L505
	 fmuld	%f0, %f8, %f0
.L515:
	mov	0, %g1
.L505:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbge,a	.L507
	 add	%g1, 1, %g1
	b	.L520
	 st	%g1, [%i2]
.L519:
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
	b	.L523
	 mov	0, %i1
.L526:
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L527
	 srl	%i3, 31, %g1
	addcc	%i1, %i3, %i1
	addx	%i0, %i2, %i0
.L527:
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
.L523:
	orcc	%g2, %g3, %g0
	bne	.L526
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
	b	.L529
	 mov	1, %g1
.L531:
	sll	%i1, 1, %i1
	sll	%g1, 1, %g1
.L529:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L536
	 cmp	%i1, 0
	bge	.L531
	 mov	0, %g2
	b	.L540
	 cmp	%g1, 0
.L534:
	cmp	%i0, %i1
	blu,a	.L539
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L539:
	b	.L533
	 srl	%i1, 1, %i1
.L536:
	mov	0, %g2
.L533:
	cmp	%g1, 0
.L540:
	bne	.L534
	 cmp	%i2, 0
	be,a	.L538
	 mov	%g2, %i0
.L538:
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
	bl,a	.L542
	 xnor	%g0, %i0, %i0
.L542:
	cmp	%i0, 0
	be	.L544
	 nop
	call	__clzsi2, 0
	 sll	%i0, 8, %o0
	jmp	%i7+8
	 restore %o0, -1, %o0
.L544:
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
	bge	.L546
	 xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
.L546:
	orcc	%i0, %i1, %g0
	be	.L550
	 mov	%i0, %o0
	call	__clzdi2, 0
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %o0, -1, %o0
.L550:
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
	b	.L552
	 mov	0, %i0
.L554:
	bne,a	.L553
	 add	%i0, %i1, %i0
.L553:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L552:
	cmp	%g1, 0
	bne	.L554
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
	blu	.L556
	 and	%i2, -8, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L565
	 add	%i2, -1, %i2
.L556:
	sll	%g3, 3, %g3
	b	.L558
	 mov	0, %g2
.L559:
	add	%i1, %g2, %g4
	ldd	[%g4], %i4
	add	%i0, %g2, %g4
	std	%i4, [%g4]
	add	%g2, 8, %g2
.L558:
	cmp	%g2, %g3
	bne	.L559
	 cmp	%i2, %g1
	b,a	.L564
.L561:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L564:
	bgu,a	.L561
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L563:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L565:
	cmp	%i2, -1
	bne,a	.L563
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
	blu	.L567
	 srl	%i2, 1, %g2
	add	%i1, %i2, %g1
	cmp	%g1, %i0
	bgeu,a	.L573
	 add	%i2, -1, %i2
.L567:
	sll	%g2, 1, %g2
	b	.L569
	 mov	0, %g1
.L570:
	lduh	[%i1+%g1], %g3
	sth	%g3, [%i0+%g1]
	add	%g1, 2, %g1
.L569:
	cmp	%g1, %g2
	bne	.L570
	 andcc	%i2, 1, %g0
	be	.L575
	 add	%i2, -1, %i2
	ldub	[%i1+%i2], %g1
	stb	%g1, [%i0+%i2]
.L575:
	jmp	%i7+8
	 restore
.L572:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L573:
	cmp	%i2, -1
	bne,a	.L572
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
	srl	%i2, 2, %g3
	cmp	%i0, %i1
	blu	.L577
	 and	%i2, -4, %g1
	add	%i1, %i2, %g2
	cmp	%g2, %i0
	bgeu,a	.L586
	 add	%i2, -1, %i2
.L577:
	sll	%g3, 2, %g3
	b	.L579
	 mov	0, %g2
.L580:
	ld	[%i1+%g2], %g4
	st	%g4, [%i0+%g2]
	add	%g2, 4, %g2
.L579:
	cmp	%g2, %g3
	bne	.L580
	 cmp	%i2, %g1
	b,a	.L585
.L582:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
.L585:
	bgu,a	.L582
	 ldub	[%i1+%g1], %g2
	jmp	%i7+8
	 restore
.L584:
	stb	%g1, [%i0+%i2]
	add	%i2, -1, %i2
.L586:
	cmp	%i2, -1
	bne,a	.L584
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
	bge	.L590
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L590:
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
	bge	.L592
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L592:
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
	b	.L597
	 mov	0, %g1
.L599:
	sub	%g2, %g1, %g2
	sra	%i0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L598
	 nop
	add	%g1, 1, %g1
.L597:
	cmp	%g1, 16
	bne	.L599
	 mov	15, %g2
.L598:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -96, %sp
	b	.L601
	 mov	0, %g1
.L603:
	andcc	%g2, 1, %g0
	bne	.L602
	 nop
	add	%g1, 1, %g1
.L601:
	cmp	%g1, 16
	bne	.L603
	 sra	%i0, %g1, %g2
.L602:
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
	fbul	.L609
	 nop
	fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	jmp	%i7+8
	 restore %g2, %g1, %o0
.L609:
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
	mov	0, %g2
	b	.L611
	 mov	0, %g1
.L613:
	andcc	%g3, 1, %g0
	bne,a	.L612
	 add	%g2, 1, %g2
.L612:
	add	%g1, 1, %g1
.L611:
	cmp	%g1, 16
	bne	.L613
	 sra	%i0, %g1, %g3
	and	%g2, 1, %i0
	jmp	%i7+8
	 restore
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -96, %sp
	mov	0, %g2
	b	.L615
	 mov	0, %g1
.L617:
	andcc	%g3, 1, %g0
	bne,a	.L616
	 add	%g2, 1, %g2
.L616:
	add	%g1, 1, %g1
.L615:
	cmp	%g1, 16
	bne	.L617
	 sra	%i0, %g1, %g3
	jmp	%i7+8
	 restore %g0, %g2, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -96, %sp
	mov	%i0, %g1
	b	.L619
	 mov	0, %i0
.L621:
	bne,a	.L620
	 add	%i0, %i1, %i0
.L620:
	srl	%g1, 1, %g1
	sll	%i1, 1, %i1
.L619:
	cmp	%g1, 0
	bne	.L621
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
	be	.L627
	 mov	0, %g1
	b	.L628
	 cmp	%i1, 0
.L626:
	bne,a	.L625
	 add	%g1, %i0, %g1
.L625:
	sll	%i0, 1, %i0
	srl	%i1, 1, %i1
	cmp	%i1, 0
.L628:
	bne	.L626
	 andcc	%i1, 1, %g0
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L627:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -96, %sp
	b	.L630
	 mov	1, %g1
.L632:
	sll	%i1, 1, %i1
	sll	%g1, 1, %g1
.L630:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L637
	 cmp	%i1, 0
	bge	.L632
	 mov	0, %g2
	b	.L641
	 cmp	%g1, 0
.L635:
	cmp	%i0, %i1
	blu,a	.L640
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L640:
	b	.L634
	 srl	%i1, 1, %i1
.L637:
	mov	0, %g2
.L634:
	cmp	%g1, 0
.L641:
	bne	.L635
	 cmp	%i2, 0
	be,a	.L639
	 mov	%g2, %i0
.L639:
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
	fbl	.L644
	 nop
	nop
	fbg	.L645
	 nop
	jmp	%i7+8
	 restore %g0, 0, %o0
.L644:
	jmp	%i7+8
	 restore %g0, -1, %o0
.L645:
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
	fbl	.L648
	 nop
	nop
	fbg	.L649
	 nop
	jmp	%i7+8
	 restore %g0, 0, %o0
.L648:
	jmp	%i7+8
	 restore %g0, -1, %o0
.L649:
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
	bge,a	.L659
	 mov	0, %i5
	sub	%g0, %i1, %i1
	mov	1, %i5
.L659:
	mov	0, %g1
	b	.L654
	 mov	0, %g3
.L657:
	andcc	%i1, 1, %g0
	bne,a	.L655
	 add	%g1, %i0, %g1
.L655:
	sll	%i0, 1, %i0
	sra	%i1, 1, %i1
	add	%g3, 1, %g3
.L654:
	cmp	%g0, %i1
	addx	%g0, 0, %g4
	and	%g3, 0xff, %i4
	cmp	%i4, 31
	bleu	.L656
	 mov	1, %g2
	mov	0, %g2
.L656:
	and	%g2, %g4, %g2
	andcc	%g2, 0xff, %g0
	bne	.L657
	 cmp	%i5, 0
	be	.L660
	 nop
	sub	%g0, %g1, %i0
	jmp	%i7+8
	 restore
.L660:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bge	.L665
	 mov	1, %i5
	b	.L662
	 sub	%g0, %i0, %i0
.L665:
	mov	0, %i5
.L662:
	cmp	%i1, 0
	bge	.L663
	 cmp	%g0, %i5
	sub	%g0, %i1, %i1
	subx	%g0, -1, %i5
.L663:
	mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L666
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L666:
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
	bge	.L671
	 mov	1, %i5
	b	.L668
	 sub	%g0, %i0, %i0
.L671:
	mov	0, %i5
.L668:
	cmp	%i1, 0
	bl,a	.L669
	 sub	%g0, %i1, %i1
.L669:
	mov	1, %o2
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
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -96, %sp
	b	.L674
	 mov	1, %g1
.L676:
	sll	%i1, 17, %i1
	srl	%i1, 16, %i1
	sll	%g1, 1, %g1
.L674:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L681
	 sll	%i1, 16, %g2
	cmp	%g2, 0
	bge	.L676
	 mov	0, %g2
	b	.L684
	 sll	%g1, 16, %g3
.L679:
	cmp	%i0, %i1
	blu,a	.L683
	 sll	%g1, 16, %g1
	sub	%i0, %i1, %i0
	sll	%i0, 16, %i0
	srl	%i0, 16, %i0
	or	%g2, %g1, %g2
	sll	%g1, 16, %g1
.L683:
	srl	%g1, 17, %g1
	b	.L678
	 srl	%i1, 1, %i1
.L681:
	mov	0, %g2
.L678:
	sll	%g1, 16, %g3
.L684:
	cmp	%g3, 0
	bne	.L679
	 cmp	%i2, 0
	be,a	.L680
	 mov	%g2, %i0
.L680:
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
	b	.L686
	 mov	1, %g1
.L688:
	sll	%i1, 1, %i1
	sll	%g1, 1, %g1
.L686:
	cmp	%i1, %i0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L693
	 cmp	%i1, 0
	bge	.L688
	 mov	0, %g2
	b	.L697
	 cmp	%g1, 0
.L691:
	cmp	%i0, %i1
	blu,a	.L696
	 srl	%g1, 1, %g1
	sub	%i0, %i1, %i0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L696:
	b	.L690
	 srl	%i1, 1, %i1
.L693:
	mov	0, %g2
.L690:
	cmp	%g1, 0
.L697:
	bne	.L691
	 cmp	%i2, 0
	be,a	.L695
	 mov	%g2, %i0
.L695:
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
	be	.L699
	 mov	%i1, %g3
	sll	%g3, %i2, %i0
	jmp	%i7+8
	 restore %g0, 0, %o1
.L699:
	cmp	%i2, 0
	be	.L703
	 sll	%i0, %i2, %g2
	sll	%i1, %i2, %i1
	sub	%g0, %i2, %i2
	srl	%g3, %i2, %g1
	or	%g1, %g2, %i0
.L703:
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
	be	.L705
	 mov	%i0, %o4
	sra	%i0, 31, %i0
	sra	%o4, %i2, %i1
.L710:
	jmp	%i7+8
	 restore
.L705:
	cmp	%i2, 0
	be	.L710
	 sub	%g0, %i2, %g2
	sra	%i0, %i2, %i0
	sll	%o4, %g2, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %i1
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
	bleu	.L714
	 mov	16, %i5
	mov	0, %i5
.L714:
	mov	16, %g1
	sub	%g1, %i5, %g1
	srl	%i0, %g1, %i0
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	andcc	%i0, %g1, %g0
	be	.L715
	 mov	8, %g1
	mov	0, %g1
.L715:
	mov	8, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	andcc	%i0, 240, %g0
	bne	.L720
	 add	%i5, %g1, %i5
	b	.L716
	 mov	4, %g1
.L720:
	mov	0, %g1
.L716:
	mov	4, %g2
	sub	%g2, %g1, %g2
	srl	%i0, %g2, %i0
	andcc	%i0, 12, %g0
	bne	.L721
	 add	%i5, %g1, %i5
	b	.L717
	 mov	2, %g1
.L721:
	mov	0, %g1
.L717:
	mov	2, %o1
	sub	%o1, %g1, %g2
	srl	%i0, %g2, %i0
	add	%i5, %g1, %i5
	and	%i0, 2, %g1
	sub	%o1, %i0, %o1
	cmp	%g0, %g1
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
	cmp	%i2, %i0
	bg	.L724
	 nop
	bl	.L725
	 cmp	%i3, %i1
	bgu	.L726
	 nop
	blu	.L727
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L724:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L725:
	jmp	%i7+8
	 restore %g0, 2, %o0
.L726:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L727:
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
	be	.L730
	 mov	16, %g1
	mov	0, %g1
.L730:
	srl	%i0, %g1, %i0
	andcc	%i0, 0xff, %g0
	be	.L731
	 mov	8, %g2
	mov	0, %g2
.L731:
	srl	%i0, %g2, %i0
	andcc	%i0, 15, %g0
	bne	.L736
	 add	%g1, %g2, %g1
	b	.L732
	 mov	4, %g2
.L736:
	mov	0, %g2
.L732:
	srl	%i0, %g2, %i0
	andcc	%i0, 3, %g0
	bne	.L737
	 add	%g1, %g2, %g1
	b	.L733
	 mov	2, %g2
.L737:
	mov	0, %g2
.L733:
	srl	%i0, %g2, %i0
	and	%i0, 3, %i0
	add	%g1, %g2, %g1
	xnor	%g0, %i0, %g3
	and	%g3, 1, %g3
	srl	%i0, 1, %i0
	mov	2, %g2
	sub	%g2, %i0, %i0
	sub	%g0, %g3, %g3
	and	%i0, %g3, %i0
	jmp	%i7+8
	 restore %g1, %i0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -96, %sp
	andcc	%i2, 32, %g0
	be	.L739
	 mov	%i0, %o4
	srl	%o4, %i2, %i1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L739:
	cmp	%i2, 0
	be	.L743
	 sub	%g0, %i2, %g2
	srl	%i0, %i2, %i0
	sll	%o4, %g2, %g1
	srl	%i1, %i2, %i2
	or	%g1, %i2, %i1
.L743:
	jmp	%i7+8
	 restore
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %l0
	or	%l0, 1023, %l0
	and	%i0, %l0, %l2
	and	%i1, %l0, %l1
	mov	%l1, %o1
	call	.umul, 0
	 mov	%l2, %o0
	srl	%o0, 16, %i5
	and	%o0, %l0, %i4
	srl	%i0, 16, %i0
	mov	%l1, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %i4, %i3
	srl	%i5, 16, %i2
	srl	%i3, 16, %i5
	and	%i3, %l0, %i4
	srl	%i1, 16, %i1
	mov	%i1, %o1
	call	.umul, 0
	 mov	%l2, %o0
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
	mov	%o1, %l1
	mov	%o0, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	mov	%o0, %i4
	mov	%i1, %o1
	call	.umul, 0
	 mov	%i2, %o0
	add	%i4, %o0, %i4
	add	%i4, %i5, %l0
	mov	%l0, %i0
	jmp	%i7+8
	 restore %g0, %l1, %o1
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
	srl	%i2, 31, %g1
	sethi	%hi(.LC42), %g2
	ldd	[%g2+%lo(.LC42)], %f0
.L754:
	andcc	%i2, 1, %g0
	bne,a	.L752
	 fmuld	%f0, %f8, %f0
.L752:
	srl	%i2, 31, %g2
	add	%g2, %i2, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	be	.L753
	 cmp	%g1, 0
	b	.L754
	 fmuld	%f8, %f8, %f8
.L753:
	be	.L757
	 sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
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
	srl	%i1, 31, %g1
	sethi	%hi(.LC44), %g2
	ld	[%g2+%lo(.LC44)], %f0
.L761:
	andcc	%i1, 1, %g0
	bne,a	.L759
	 fmuls	%f0, %f8, %f0
.L759:
	srl	%i1, 31, %g2
	add	%g2, %i1, %i1
	sra	%i1, 1, %i1
	cmp	%i1, 0
	be	.L760
	 cmp	%g1, 0
	b	.L761
	 fmuls	%f8, %f8, %f8
.L760:
	be	.L764
	 sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
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
	cmp	%i2, %i0
	bgu	.L767
	 nop
	blu	.L768
	 cmp	%i3, %i1
	bgu	.L769
	 nop
	blu	.L770
	 nop
	jmp	%i7+8
	 restore %g0, 1, %o0
.L767:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L768:
	jmp	%i7+8
	 restore %g0, 2, %o0
.L769:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L770:
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
