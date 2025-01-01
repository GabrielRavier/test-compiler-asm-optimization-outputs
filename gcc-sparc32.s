	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cmp	%o0, %o1
	bleu	.L11
	 add	%o0, -1, %g2
	b	.L2
	 add	%o1, -1, %o1
.L4:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
.L2:
	cmp	%o2, 0
	bne,a	.L4
	 ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L11:
	bne	.L6
	 mov	0, %g1
	jmp	%o7+8
	 nop
.L7:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L6:
	cmp	%g1, %o2
	bne,a	.L7
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	and	%o2, 0xff, %o2
	b	.L13
	 mov	%o0, %g2
.L15:
	add	%o1, 1, %o1
	add	%g2, 1, %g2
.L13:
	cmp	%o3, 0
	be	.L18
	 mov	0, %o0
	ldub	[%o1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%o2, %g1
	bne,a	.L15
	 add	%o3, -1, %o3
	cmp	%o3, 0
	bne,a	.L18
	 add	%g2, 1, %o0
.L18:
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	b	.L20
	 and	%o1, 0xff, %o1
.L22:
	add	%o2, -1, %o2
.L20:
	cmp	%o2, 0
	be	.L25
	 cmp	%g0, %o2
	ldub	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L22
	 add	%o0, 1, %o0
	cmp	%g0, %o2
.L25:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	b	.L27
	 mov	%o0, %g1
.L29:
	add	%g1, 1, %g1
	add	%o1, 1, %o1
.L27:
	cmp	%o2, 0
	be	.L32
	 mov	0, %o0
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L29
	 add	%o2, -1, %o2
	cmp	%o2, 0
	be	.L32
	 nop
	ldub	[%g1], %o0
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L32:
	jmp	%o7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	b	.L34
	 mov	0, %g1
.L35:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L34:
	cmp	%g1, %o2
	bne,a	.L35
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
.L37:
	cmp	%o2, -1
	be	.L41
	 nop
	ldub	[%o0+%o2], %g1
	cmp	%o1, %g1
	be	.L42
	 add	%o2, -1, %g2
	b	.L37
	 mov	%g2, %o2
.L42:
	jmp	%o7+8
	 add	%o0, %o2, %o0
.L41:
	jmp	%o7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	add	%o0, %o2, %o2
	b	.L44
	 mov	%o0, %g1
.L45:
	add	%g1, 1, %g1
.L44:
	cmp	%g1, %o2
	bne,a	.L45
	 stb	%o1, [%g1]
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	b	.L49
	 ldub	[%o1], %g1
.L48:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
.L49:
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L48
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
.L53:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L54
	 nop
	ldub	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L53
	 add	%o0, 1, %o0
.L54:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	ldsb	[%o0], %g1
.L60:
	cmp	%o1, %g1
	be	.L61
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0-1], %g1
	cmp	%g1, 0
	bne,a	.L60
	 ldsb	[%o0], %g1
	mov	0, %o0
.L61:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	b	.L66
	 ldsb	[%o0], %g2
.L65:
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
.L66:
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	bne	.L64
	 cmp	%g2, 0
	bne,a	.L65
	 add	%o0, 1, %o0
.L64:
	ldub	[%o0], %o0
	ldub	[%o1], %g1
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	mov	%o0, %g1
.L69:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L69
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	mov	%o0, %g2
	cmp	%o2, 0
	be	.L77
	 mov	0, %o0
	mov	%g2, %g1
	add	%o2, -1, %o2
	add	%o2, %g2, %o0
.L72:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be	.L73
	 sub	%o0, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%o1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,a	.L76
	 ldub	[%g1], %o0
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	bne,a	.L76
	 ldub	[%g1], %o0
	add	%g1, 1, %g1
	b	.L72
	 add	%o1, 1, %o1
.L73:
	ldub	[%g1], %o0
.L76:
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L77:
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	mov	%o0, %g1
	b	.L79
	 add	%o0, %o2, %o2
.L80:
	stb	%g2, [%o1]
	ldub	[%g1], %g2
	stb	%g2, [%o1+1]
	add	%o1, 2, %o1
	add	%g1, 2, %g1
.L79:
	sub	%o2, %g1, %g2
	cmp	%g2, 1
	bg,a	.L80
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
	cmp	%o0, 26
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	cmp	%o0, 128
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isascii, .-isascii
	.align 4
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
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	cmp	%o0, 32
	addx	%g0, 0, %g1
	xor	%o0, 127, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	add	%o0, -48, %o0
	cmp	%o0, 10
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	add	%o0, -33, %o0
	cmp	%o0, 94
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	add	%o0, -97, %o0
	cmp	%o0, 26
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	add	%o0, -32, %o0
	cmp	%o0, 95
	jmp	%o7+8
	 addx	%g0, 0, %o0
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
	cmp	%o0, 5
	addx	%g0, 0, %o0
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	add	%o0, -65, %o0
	cmp	%o0, 26
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	mov	%o0, %g1
	cmp	%o0, 32
	addx	%g0, 0, %g3
	add	%o0, -127, %g2
	cmp	%g2, 33
	addx	%g0, 0, %g2
	orcc	%g3, %g2, %g0
	bne	.L107
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L107
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L107:
	jmp	%o7+8
	 nop
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	add	%o0, -48, %o0
	cmp	%o0, 10
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	cmp	%o0, 254
	bleu	.L117
	 mov	%o0, %g1
	sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	subx	%g0, -1, %g4
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%o0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	subx	%g0, -1, %g2
	orcc	%g4, %g2, %g0
	bne	.L118
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L118
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L118
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L118:
	jmp	%o7+8
	 nop
.L117:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L112
	 mov	1, %o0
	mov	0, %o0
.L112:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	mov	%o0, %g1
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu	.L123
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L123:
	jmp	%o7+8
	 nop
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	std	%o2, [%sp+72]
	fcmpd	%f0, %f0
	nop
	fbu	.L126
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L129
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L132
	 nop
	fsubd	%f0, %f8, %f0
.L126:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L129:
	b	.L126
	 fmovs	%f9, %f1
.L132:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L126
	 ldd	[%sp+72], %f0
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f0
	st	%o1, [%sp+76]
	fcmps	%f0, %f0
	nop
	fbu	.L134
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L141
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L140
	 nop
	fsubs	%f0, %f8, %f0
.L134:
.L141:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L140:
	sethi	%hi(.LC2), %g1
	b	.L134
	 ld	[%g1+%lo(.LC2)], %f0
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	std	%o2, [%sp+72]
	fcmpd	%f0, %f0
	nop
	fbu	.L148
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L143
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L144
	 fcmped	%f0, %f8
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L143
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L143:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L144:
	nop
	fbl	.L145
	 mov	1, %g1
	mov	0, %g1
.L145:
	andcc	%g1, 0xff, %g0
	be	.L143
	 nop
	fmovs	%f8, %f0
	b	.L143
	 fmovs	%f9, %f1
.L148:
	fmovs	%f8, %f0
	b	.L143
	 fmovs	%f9, %f1
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f0
	st	%o1, [%sp+76]
	fcmps	%f0, %f0
	nop
	fbu	.L157
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L152
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L153
	 fcmpes	%f0, %f8
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bl,a	.L152
	 fmovs	%f8, %f0
.L152:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L153:
	nop
	fbl	.L154
	 mov	1, %g1
	mov	0, %g1
.L154:
	andcc	%g1, 0xff, %g0
	bne,a	.L152
	 fmovs	%f8, %f0
	b,a	.L152
.L157:
	b	.L152
	 fmovs	%f8, %f0
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	std	%o2, [%sp+72]
	fcmpd	%f0, %f0
	nop
	fbu	.L166
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L161
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L162
	 fcmped	%f0, %f8
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L161
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L161:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L162:
	nop
	fbl	.L163
	 mov	1, %g1
	mov	0, %g1
.L163:
	andcc	%g1, 0xff, %g0
	be	.L161
	 nop
	fmovs	%f8, %f0
	b	.L161
	 fmovs	%f9, %f1
.L166:
	fmovs	%f8, %f0
	b	.L161
	 fmovs	%f9, %f1
	.size	fmaxl, .-fmaxl
	.align 4
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	fcmpd	%f8, %f8
	nop
	fbu	.L170
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L176
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L171
	 fcmped	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L170
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L170:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L171:
	nop
	fbl	.L172
	 mov	1, %g1
	mov	0, %g1
.L172:
	andcc	%g1, 0xff, %g0
	be	.L170
	 nop
	fmovs	%f8, %f0
	b	.L170
	 fmovs	%f9, %f1
.L176:
	fmovs	%f8, %f0
	b	.L170
	 fmovs	%f9, %f1
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	st	%o1, [%sp+76]
	fcmps	%f8, %f8
	nop
	fbu	.L179
	 ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L185
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L180
	 fcmpes	%f8, %f0
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bl,a	.L179
	 fmovs	%f8, %f0
.L179:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L180:
	nop
	fbl	.L181
	 mov	1, %g1
	mov	0, %g1
.L181:
	andcc	%g1, 0xff, %g0
	bne,a	.L179
	 fmovs	%f8, %f0
	b,a	.L179
.L185:
	b	.L179
	 fmovs	%f8, %f0
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	fcmpd	%f8, %f8
	nop
	fbu	.L188
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L194
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L189
	 fcmped	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L188
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L188:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L189:
	nop
	fbl	.L190
	 mov	1, %g1
	mov	0, %g1
.L190:
	andcc	%g1, 0xff, %g0
	be	.L188
	 nop
	fmovs	%f8, %f0
	b	.L188
	 fmovs	%f9, %f1
.L194:
	fmovs	%f8, %f0
	b	.L188
	 fmovs	%f9, %f1
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
	b	.L197
	 or	%g3, %lo(digits), %g3
.L198:
	ldub	[%g3+%g2], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%o0, 6, %o0
.L197:
	cmp	%o0, 0
	bne	.L198
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
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g2
	st	%g0, [%g1+%lo(seed)]
	jmp	%o7+8
	 st	%o0, [%g2+4]
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -96, %sp
	sethi	%hi(seed), %i5
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	or	%o3, 813, %o3
	call	__muldi3, 0
	 ldd	[%i5+%lo(seed)], %o0
	addcc	%o1, 1, %i1
	addx	%o0, 0, %i0
	std	%i0, [%i5+%lo(seed)]
	srl	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	cmp	%o1, 0
	be,a	.L204
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L206
	 st	%o0, [%g1+4]
.L206:
	jmp	%o7+8
	 nop
.L204:
	st	%g0, [%o0]
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ld	[%o0], %g1
	cmp	%g1, 0
	be,a	.L210
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L210:
	cmp	%g1, 0
	be	.L211
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L211:
	jmp	%o7+8
	 nop
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -96, %sp
	ld	[%i2], %l1
	mov	%i1, %l0
	b	.L213
	 mov	0, %i5
.L214:
	add	%i5, 1, %i5
.L213:
	cmp	%i5, %l1
	be	.L217
	 mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L214
	 add	%l0, %i3, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L217:
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
	b	.L219
	 mov	0, %i5
.L220:
	add	%i5, 1, %i5
.L219:
	cmp	%i5, %l0
	be	.L223
	 nop
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L220
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L223:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	lfind, .-lfind
	.align 4
	.global abs
	.type	abs, #function
	.proc	04
abs:
	sra	%o0, 31, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -96, %sp
.L227:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L227
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L233
	 cmp	%g1, 45
	bne	.L229
	 mov	0, %g3
	mov	1, %g3
.L228:
	add	%i0, 1, %i0
.L229:
	b	.L230
	 mov	0, %g1
.L233:
	b	.L228
	 mov	0, %g3
.L231:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L230:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L231
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L236
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L236:
	jmp	%i7+8
	 restore
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L239:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L239
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L245
	 cmp	%g1, 45
	bne	.L241
	 mov	0, %g3
	mov	1, %g3
.L240:
	add	%i0, 1, %i0
.L241:
	b	.L242
	 mov	0, %g1
.L245:
	b	.L240
	 mov	0, %g3
.L243:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L242:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L243
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L248
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L248:
	jmp	%i7+8
	 restore
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L251:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L251
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L257
	 cmp	%g1, 45
	bne	.L253
	 mov	0, %o7
	mov	1, %o7
.L252:
	add	%i0, 1, %i0
.L253:
	mov	0, %i4
	b	.L254
	 mov	0, %i5
.L257:
	b	.L252
	 mov	0, %o7
.L255:
	sll	%i4, 2, %g1
	or	%g2, %g1, %o4
	sll	%i5, 2, %o5
	addcc	%o5, %i5, %g3
	addx	%o4, %i4, %g2
	srl	%g3, 31, %i5
	sll	%g2, 1, %g4
	sll	%g3, 1, %g1
	or	%i5, %g4, %g2
	mov	%g1, %g3
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 31, %i2
	subcc	%g3, %g1, %i5
	subx	%g2, %i2, %i4
.L254:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L255
	 srl	%i5, 30, %g2
	mov	%i4, %i0
	cmp	%o7, 0
	bne	.L260
	 mov	%i5, %i1
	subcc	%g0, %i5, %i1
	subx	%g0, %i4, %i0
.L260:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L270
	 cmp	%i2, 0
.L269:
.L262:
	cmp	%i2, 0
.L270:
	be	.L268
	 nop
	mov	%i3, %o1
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L269
	 srl	%i2, 1, %i2
	ble	.L267
	 nop
	add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	b	.L262
	 sub	%i2, %g1, %i2
.L268:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L267:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b	.L278
	 cmp	%i2, 0
.L274:
	sra	%i2, 1, %i2
.L279:
	cmp	%i2, 0
.L278:
	be	.L277
	 nop
	mov	%i3, %o1
	call	.umul, 0
	 sra	%i2, 1, %o0
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L276
	 nop
	ble,a	.L279
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	b	.L274
	 add	%i2, -1, %i2
.L277:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L276:
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
	sra	%o0, 31, %g3
	xor	%g3, %o0, %o4
	xor	%o1, %g3, %o5
	subcc	%o5, %g3, %o1
	jmp	%o7+8
	 subx	%o4, %g3, %o0
	.size	imaxabs, .-imaxabs
	.align 4
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i3, %l1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	mov	%o0, %i3
	mov	%o1, %i4
	mov	%i2, %o2
	mov	%l1, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	st	%i3, [%i5]
	st	%i4, [%i5+4]
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	04
labs:
	sra	%o0, 31, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
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
	sra	%o0, 31, %g3
	xor	%g3, %o0, %o4
	xor	%o1, %g3, %o5
	subcc	%o5, %g3, %o1
	jmp	%o7+8
	 subx	%o4, %g3, %o0
	.size	llabs, .-llabs
	.align 4
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -96, %sp
	ld	[%fp+64], %i5
	mov	%i3, %l1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	mov	%o0, %i3
	mov	%o1, %i4
	mov	%i2, %o2
	mov	%l1, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	st	%i3, [%i5]
	st	%i4, [%i5+4]
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	b	.L293
	 ld	[%o0], %g1
.L290:
	ld	[%o0], %g1
.L293:
	cmp	%g1, 0
	be	.L289
	 cmp	%o1, %g1
	bne,a	.L290
	 add	%o0, 4, %o0
.L289:
	ld	[%o0], %g1
	cmp	%g0, %g1
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	b	.L295
	 mov	%o0, %g1
.L297:
	add	%o1, 4, %o1
.L295:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L301
	 cmp	%g3, 0
	be	.L302
	 cmp	%g2, 0
	bne,a	.L297
	 add	%g1, 4, %g1
	ld	[%g1], %g3
.L301:
.L302:
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L303
	 mov	-1, %o0
	bg	.L299
	 mov	1, %o0
	mov	0, %o0
.L299:
	and	%o0, 0xff, %o0
.L303:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
	add	%o0, -4, %g3
	ld	[%o1+%g1], %g2
.L307:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	ld	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a	.L307
	 ld	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	mov	%o0, %g1
.L310:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L310
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	mov	%o0, %g1
.L312:
	cmp	%o2, 0
	be	.L319
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L313
	 cmp	%g3, 0
	be	.L313
	 cmp	%g2, 0
	be	.L320
	 cmp	%o2, 0
	add	%o2, -1, %o2
	add	%g1, 4, %g1
	b	.L312
	 add	%o1, 4, %o1
.L313:
	cmp	%o2, 0
.L320:
	be	.L319
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L319
	 mov	-1, %o0
	bg	.L316
	 mov	1, %o0
	mov	0, %o0
.L316:
	and	%o0, 0xff, %o0
.L319:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	b	.L327
	 cmp	%o2, 0
.L324:
	add	%o0, 4, %o0
	cmp	%o2, 0
.L327:
	be	.L328
	 cmp	%g0, %o2
	ld	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L324
	 add	%o2, -1, %o2
	cmp	%g0, %o2
.L328:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	b	.L330
	 mov	%o0, %g1
.L332:
	add	%g1, 4, %g1
	add	%o1, 4, %o1
.L330:
	cmp	%o2, 0
	be	.L337
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L332
	 add	%o2, -1, %o2
	cmp	%o2, 0
	be	.L337
	 nop
	cmp	%g3, %g2
	bl	.L337
	 mov	-1, %o0
	bg	.L334
	 mov	1, %o0
	mov	0, %o0
.L334:
	and	%o0, 0xff, %o0
.L337:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	b	.L339
	 mov	0, %g1
.L340:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L339:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L340
	 ld	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L348
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L343
	 mov	0, %g1
	add	%o2, -1, %o2
	b	.L344
	 sll	%o2, 2, %o2
.L345:
	st	%g1, [%o0+%o2]
	add	%o2, -4, %o2
.L344:
	cmp	%o2, -4
	bne,a	.L345
	 ld	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L346:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L343:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L346
	 ld	[%o1+%g1], %g2
.L348:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	b	.L351
	 mov	%o0, %g1
.L352:
	st	%o1, [%g1-4]
.L351:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L352
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
	bgeu	.L363
	 nop
	add	%o0, -1, %o0
	b	.L354
	 add	%o1, -1, %o1
.L356:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
.L354:
	cmp	%o2, 0
	bne,a	.L356
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L363:
	bne	.L358
	 mov	0, %g1
	jmp	%o7+8
	 nop
.L359:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
.L358:
	cmp	%g1, %o2
	bne,a	.L359
	 ldub	[%o0+%g1], %g2
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L365
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g2
.L366:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L367
	 sll	%o0, 1, %g3
	srl	%o0, %g3, %o1
	mov	0, %o0
.L368:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g2, %o1
.L365:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L366
	 sll	%o1, %o2, %g2
.L367:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g3, %g4, %g3
	srl	%o1, %o2, %o1
	or	%g3, %o1, %o1
	b	.L368
	 srl	%o0, %o2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L370
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g2
.L371:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L372
	 srl	%o1, 1, %g3
	sll	%o1, %g3, %o0
	mov	0, %o1
.L373:
	or	%o0, %g2, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L370:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L371
	 srl	%o0, %o2, %g2
.L372:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g3, %g4, %g3
	sll	%o0, %o2, %o0
	or	%g3, %o0, %o0
	b	.L373
	 sll	%o1, %o2, %o1
	.size	rotr64, .-rotr64
	.align 4
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srl	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotl32, .-rotl32
	.align 4
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sll	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotr32, .-rotr32
	.align 4
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	016
rotl_sz:
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srl	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	016
rotr_sz:
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sll	%o0, %o1, %o0
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
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
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
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
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
	srl	%o0, 8, %g1
	and	%o0, 255, %o0
	sll	%o0, 8, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	srl	%o0, 24, %g2
	sethi	%hi(16711680), %g1
	and	%o0, %g1, %g1
	srl	%g1, 8, %g1
	or	%g1, %g2, %g1
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	and	%o0, %g2, %g2
	sll	%g2, 8, %g2
	or	%g1, %g2, %g1
	sll	%o0, 24, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	srl	%o0, 24, %g1
	sethi	%hi(16711680), %g4
	and	%o0, %g4, %g2
	srl	%g2, 8, %g2
	or	%g2, %g1, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%o0, %g1, %g3
	sll	%g3, 8, %g3
	or	%g2, %g3, %g2
	sll	%o0, 24, %g3
	srl	%o1, 24, %o0
	and	%o1, %g4, %g4
	srl	%g4, 8, %g4
	or	%o0, %g4, %o0
	and	%o1, %g1, %g1
	sll	%g1, 8, %g1
	or	%o0, %g1, %o0
	sll	%o1, 24, %o1
	or	%o0, %o1, %o0
	jmp	%o7+8
	 or	%g2, %g3, %o1
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	mov	0, %g1
.L386:
	cmp	%g1, 32
	be	.L390
	 nop
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	bne	.L391
	 nop
	b	.L386
	 add	%g1, 1, %g1
.L391:
	jmp	%o7+8
	 add	%g1, 1, %o0
.L390:
	jmp	%o7+8
	 mov	0, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	mov	%o0, %g1
	cmp	%g1, 0
	be	.L397
	 mov	0, %o0
	b	.L394
	 mov	1, %o0
.L395:
	add	%o0, 1, %o0
.L394:
	andcc	%g1, 1, %g0
	be,a	.L395
	 sra	%g1, 1, %g1
.L397:
	jmp	%o7+8
	 nop
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	sethi	%hi(.LC4), %g1
	ld	[%g1+%lo(.LC4)], %f9
	fcmpes	%f8, %f9
	nop
	fbl	.L399
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L400
	 mov	0, %o0
.L400:
	and	%o0, 0xff, %o0
.L399:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	sethi	%hi(.LC8), %g1
	ldd	[%g1+%lo(.LC8)], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L403
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L404
	 mov	0, %o0
.L404:
	and	%o0, 0xff, %o0
.L403:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	sethi	%hi(.LC12), %g1
	ldd	[%g1+%lo(.LC12)], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L407
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L408
	 mov	0, %o0
.L408:
	and	%o0, 0xff, %o0
.L407:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	add	%sp, -80, %sp
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fitod	%f8, %f8
	std	%f8, [%o0]
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC16:
	.long	1073741824
	.align 4
.LC17:
	.long	1056964608
	.section	".text"
	.align 4
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L412
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L412
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L415
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L415
	 ld	[%g1+%lo(.LC17)], %f8
.L414:
	srl	%o1, 31, %g1
.L417:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L412
	 nop
	fmuls	%f8, %f8, %f8
.L415:
	andcc	%o1, 1, %g0
	bne,a	.L414
	 fmuls	%f0, %f8, %f0
	b	.L417
	 srl	%o1, 31, %g1
.L412:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC20:
	.long	1073741824
	.long	0
	.align 8
.LC21:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L419
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L419
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L422
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L422
	 ldd	[%g1+%lo(.LC21)], %f8
.L421:
	srl	%o2, 31, %g1
.L424:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L419
	 nop
	fmuld	%f8, %f8, %f8
.L422:
	andcc	%o2, 1, %g0
	bne,a	.L421
	 fmuld	%f0, %f8, %f0
	b	.L424
	 srl	%o2, 31, %g1
.L419:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC24:
	.long	1073741824
	.long	0
	.align 8
.LC25:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L426
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L426
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L429
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L429
	 ldd	[%g1+%lo(.LC25)], %f8
.L428:
	srl	%o2, 31, %g1
.L431:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L426
	 nop
	fmuld	%f8, %f8, %f8
.L429:
	andcc	%o2, 1, %g0
	bne,a	.L428
	 fmuld	%f0, %f8, %f0
	b	.L431
	 srl	%o2, 31, %g1
.L426:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	b	.L433
	 mov	0, %g1
.L434:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L433:
	cmp	%g1, %o2
	bne,a	.L434
	 ldub	[%o1+%g1], %g3
	jmp	%o7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -96, %sp
	call	strlen, 0
	 mov	%i0, %o0
	b	.L436
	 add	%i0, %o0, %o0
.L438:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L436:
	cmp	%i2, 0
	be,a	.L440
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	.L438
	 add	%i1, 1, %i1
	cmp	%i2, 0
	be,a	.L440
	 stb	%g0, [%o0]
.L440:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	mov	0, %g1
.L442:
	cmp	%g1, %o1
	be	.L443
	 nop
	ldsb	[%o0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L442
	 add	%g1, 1, %g1
.L443:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L446:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L452
	 nop
	mov	%o1, %g1
	ldsb	[%o1], %g2
.L454:
	cmp	%g2, 0
	be	.L453
	 add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%o0], %g2
	cmp	%g3, %g2
	bne,a	.L454
	 ldsb	[%g1], %g2
	jmp	%o7+8
	 nop
.L453:
	b	.L446
	 add	%o0, 1, %o0
.L452:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	b	.L457
	 mov	0, %o0
.L456:
	add	%g1, 1, %g1
.L461:
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	be	.L462
	 nop
.L457:
	ldsb	[%g1], %g2
	cmp	%o1, %g2
	be,a	.L456
	 mov	%g1, %o0
	b	.L461
	 add	%g1, 1, %g1
.L462:
	jmp	%o7+8
	 nop
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
	be	.L464
	 mov	%i0, %g1
	ldsb	[%i1], %i4
.L465:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L469
	 mov	%o0, %i0
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L470
	 mov	%i0, %g1
	b	.L465
	 add	%i0, 1, %i0
.L469:
	mov	0, %g1
.L464:
.L470:
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbl,a	.L484
	 std	%o2, [%sp+72]
.L472:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L475
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L485
	 fnegs	%f0, %f0
.L475:
.L485:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L484:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L472
	 nop
	b	.L475
	 fnegs	%f0, %f0
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
	be	.L487
	 mov	%i0, %g1
	cmp	%i1, %i3
	blu	.L492
	 add	%i2, 1, %i4
	add	%i3, -1, %i3
.L489:
.L488:
	cmp	%i0, %i5
	bgu	.L494
	 mov	0, %g1
	ldsb	[%i0], %g2
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a	.L488
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i4, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	bne,a	.L489
	 add	%i0, 1, %i0
	mov	%i0, %g1
.L494:
.L487:
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L492:
	b	.L487
	 mov	0, %g1
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbl,a	.L515
	 fnegs	%f0, %f0
	mov	0, %g2
.L497:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L514
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	b	.L517
	 ldd	[%g3+%lo(.LC32)], %f10
.L515:
	b	.L497
	 mov	1, %g2
.L501:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
.L517:
	nop
	fbge,a	.L501
	 add	%g1, 1, %g1
	cmp	%g2, 0
.L516:
	be	.L507
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L507:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L514:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L503
	 mov	1, %g3
	mov	0, %g3
.L503:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L504
	 mov	1, %g1
	mov	0, %g1
.L504:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L510
	 mov	0, %g1
	b	.L516
	 cmp	%g2, 0
.L506:
	faddd	%f0, %f0, %f0
.L505:
	fcmped	%f0, %f8
	nop
	fbl,a	.L506
	 add	%g1, -1, %g1
	b	.L516
	 cmp	%g2, 0
.L510:
	sethi	%hi(.LC32), %g3
	b	.L505
	 ldd	[%g3+%lo(.LC32)], %f8
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	%i0, %g1
	mov	0, %o4
	b	.L519
	 mov	0, %o5
.L520:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o3
	subx	%g0, %g2, %o2
	and	%i2, %o2, %i4
	and	%i3, %o3, %i5
	srl	%i3, 31, %g4
	sll	%i2, 1, %i2
	or	%g4, %i2, %i2
	sll	%i3, 1, %i3
	sll	%g1, 31, %g4
	srl	%i1, 1, %i1
	or	%g4, %i1, %i1
	srl	%g1, 1, %g1
	addcc	%o5, %i5, %o5
	addx	%o4, %i4, %o4
.L519:
	orcc	%g1, %i1, %g0
	bne	.L520
	 mov	0, %g2
	mov	%o4, %i0
	jmp	%i7+8
	 restore %g0, %o5, %o1
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	b	.L522
	 mov	1, %g1
.L525:
	sll	%g1, 1, %g1
.L522:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L531
	 cmp	%o1, 0
	bge,a	.L525
	 sll	%o1, 1, %o1
	b	.L524
	 mov	0, %g2
.L531:
	b	.L524
	 mov	0, %g2
.L527:
	srl	%g1, 1, %g1
.L534:
	srl	%o1, 1, %o1
.L524:
	cmp	%g1, 0
	be	.L532
	 cmp	%o0, %o1
	blu,a	.L534
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L527
	 or	%g2, %g1, %g2
.L532:
	cmp	%o2, 0
	be,a	.L533
	 mov	%g2, %o0
.L533:
	jmp	%o7+8
	 nop
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xorcc	%g1, %i0, %i0
	be	.L536
	 mov	7, %o0
	call	__clzsi2, 0
	 sll	%i0, 8, %o0
	add	%o0, -1, %o0
.L536:
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %o1
	xor	%o1, %i0, %o0
	xor	%o1, %i1, %o1
	orcc	%o0, %o1, %g0
	be	.L542
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L542:
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	mov	%o0, %g2
	b	.L544
	 mov	0, %o0
.L545:
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g2, 1, %g2
	add	%g1, %o0, %o0
	sll	%o1, 1, %o1
.L544:
	cmp	%g2, 0
	bne,a	.L545
	 and	%g2, 1, %g1
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g3
	cmp	%o0, %o1
	bgeu	.L547
	 and	%o2, -8, %g1
	sll	%g3, 3, %g3
.L558:
	b	.L548
	 mov	0, %g2
.L547:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu,a	.L558
	 sll	%g3, 3, %g3
	b	.L556
	 add	%o2, -1, %o2
.L551:
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	std	%o4, [%g4]
	add	%g2, 8, %g2
.L548:
	cmp	%g2, %g3
	bne	.L551
	 add	%o1, %g2, %g4
	b	.L557
	 cmp	%o2, %g1
.L553:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
.L557:
	bgu,a	.L553
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L555:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L556:
	cmp	%o2, -1
	bne,a	.L555
	 ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	bgeu	.L560
	 srl	%o2, 1, %g3
	sll	%g3, 1, %g3
.L568:
	b	.L561
	 mov	0, %g1
.L560:
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	blu,a	.L568
	 sll	%g3, 1, %g3
	b	.L567
	 add	%o2, -1, %o2
.L564:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
.L561:
	cmp	%g1, %g3
	bne,a	.L564
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L569
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L566:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L567:
	cmp	%o2, -1
	bne,a	.L566
	 ldub	[%o1+%o2], %g1
.L569:
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
	bgeu	.L571
	 and	%o2, -4, %g1
	sll	%g4, 2, %g4
.L582:
	b	.L572
	 mov	0, %g2
.L571:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu,a	.L582
	 sll	%g4, 2, %g4
	b	.L580
	 add	%o2, -1, %o2
.L575:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
.L572:
	cmp	%g2, %g4
	bne,a	.L575
	 ld	[%o1+%g2], %g3
	b	.L581
	 cmp	%o2, %g1
.L577:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
.L581:
	bgu,a	.L577
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L579:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L580:
	cmp	%o2, -1
	bne,a	.L579
	 ldub	[%o1+%o2], %g1
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	cmp	%o0, 0
	bl	.L586
	 fitod	%f8, %f0
.L585:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L586:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L585
	 faddd	%f0, %f8, %f0
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	cmp	%o0, 0
	bl	.L589
	 fitod	%f8, %f0
.L588:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L589:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L588
	 faddd	%f0, %f8, %f0
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
	mov	0, %g1
	mov	15, %g3
.L594:
	cmp	%g1, 16
	be	.L595
	 nop
	sub	%g3, %g1, %g2
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L595
	 nop
	b	.L594
	 add	%g1, 1, %g1
.L595:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	mov	0, %g1
.L598:
	cmp	%g1, 16
	be	.L599
	 nop
	sra	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	bne	.L599
	 nop
	b	.L598
	 add	%g1, 1, %g1
.L599:
	jmp	%o7+8
	 mov	%g1, %o0
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	sethi	%hi(.LC40), %g1
	ld	[%g1+%lo(.LC40)], %f9
	fcmpes	%f8, %f9
	nop
	fbge,a	.L607
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L604:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L607:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L604
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	b	.L609
	 mov	0, %g1
.L610:
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	add	%g2, %g3, %g3
.L609:
	cmp	%g1, 16
	bne,a	.L610
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
	b	.L612
	 mov	0, %g1
.L613:
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	add	%g2, %g3, %g3
.L612:
	cmp	%g1, 16
	bne,a	.L613
	 sra	%o0, %g1, %g2
	jmp	%o7+8
	 mov	%g3, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	mov	%o0, %g2
	b	.L615
	 mov	0, %o0
.L616:
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g2, 1, %g2
	add	%g1, %o0, %o0
	sll	%o1, 1, %o1
.L615:
	cmp	%g2, 0
	bne,a	.L616
	 and	%g2, 1, %g1
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	mov	%o0, %g2
	cmp	%g2, 0
	bne	.L619
	 mov	0, %o0
	jmp	%o7+8
	 nop
.L620:
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	srl	%o1, 1, %o1
	add	%g1, %o0, %o0
	sll	%g2, 1, %g2
.L619:
	cmp	%o1, 0
	bne,a	.L620
	 and	%o1, 1, %g1
.L618:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	b	.L623
	 mov	1, %g1
.L626:
	sll	%g1, 1, %g1
.L623:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L632
	 cmp	%o1, 0
	bge,a	.L626
	 sll	%o1, 1, %o1
	b	.L625
	 mov	0, %g2
.L632:
	b	.L625
	 mov	0, %g2
.L628:
	srl	%g1, 1, %g1
.L635:
	srl	%o1, 1, %o1
.L625:
	cmp	%g1, 0
	be	.L633
	 cmp	%o0, %o1
	blu,a	.L635
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L628
	 or	%g2, %g1, %g2
.L633:
	cmp	%o2, 0
	be,a	.L634
	 mov	%g2, %o0
.L634:
	jmp	%o7+8
	 nop
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fcmpes	%f9, %f8
	nop
	fbl	.L637
	 mov	-1, %o0
	nop
	fbg	.L638
	 mov	1, %o0
	mov	0, %o0
.L638:
	and	%o0, 0xff, %o0
.L637:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L641
	 mov	-1, %o0
	nop
	fbg	.L642
	 mov	1, %o0
	mov	0, %o0
.L642:
	and	%o0, 0xff, %o0
.L641:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -96, %sp
	sra	%i1, 31, %o2
	mov	%i1, %o3
	sra	%i0, 31, %o0
	call	__muldi3, 0
	 mov	%i0, %o1
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
	mov	0, %o2
	mov	%i1, %o3
	mov	0, %o0
	call	__muldi3, 0
	 mov	%i0, %o1
	mov	%o0, %i0
	jmp	%i7+8
	 restore %g0, %o1, %o1
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl	.L654
	 mov	0, %o5
.L647:
	mov	0, %g3
	b	.L648
	 mov	0, %g2
.L654:
	sub	%g0, %o1, %o1
	b	.L647
	 mov	1, %o5
.L650:
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	sra	%o1, 1, %o1
	add	%g2, 1, %g2
	add	%g3, %g1, %g3
	sll	%o0, 1, %o0
.L648:
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g2, 0xff, %g1
	cmp	%g1, 32
	addx	%g0, 0, %g1
	andcc	%g4, %g1, %g0
	bne,a	.L650
	 and	%o1, 1, %g1
	cmp	%o5, 0
	be	.L655
	 mov	%g3, %o0
	sub	%g0, %g3, %o0
.L655:
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
	bl	.L661
	 mov	0, %i5
.L657:
	cmp	%i1, 0
	bl,a	.L662
	 sub	%g0, %i1, %i1
.L658:
	mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L663
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L663:
	jmp	%i7+8
	 restore
.L661:
	sub	%g0, %i0, %i0
	b	.L657
	 mov	1, %i5
.L662:
	b	.L658
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L668
	 mov	0, %i5
.L665:
	sra	%i1, 31, %o1
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L669
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L669:
	jmp	%i7+8
	 restore
.L668:
	sub	%g0, %i0, %i0
	b	.L665
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	b	.L671
	 mov	1, %g1
.L674:
	srl	%o1, 16, %o1
	sll	%g1, 1, %g1
.L671:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L680
	 sll	%o1, 16, %g2
	cmp	%g2, 0
	bge,a	.L674
	 sll	%o1, 17, %o1
	b	.L673
	 mov	0, %g3
.L680:
	b	.L673
	 mov	0, %g3
.L676:
	sll	%g1, 16, %g1
.L682:
	srl	%g1, 17, %g1
	srl	%o1, 1, %o1
.L673:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	be	.L681
	 cmp	%o0, %o1
	blu,a	.L682
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L676
	 or	%g3, %g1, %g3
.L681:
	cmp	%o2, 0
	be,a	.L678
	 mov	%g3, %o0
.L678:
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	b	.L684
	 mov	1, %g1
.L687:
	sll	%g1, 1, %g1
.L684:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L693
	 cmp	%o1, 0
	bge,a	.L687
	 sll	%o1, 1, %o1
	b	.L686
	 mov	0, %g2
.L693:
	b	.L686
	 mov	0, %g2
.L689:
	srl	%g1, 1, %g1
.L696:
	srl	%o1, 1, %o1
.L686:
	cmp	%g1, 0
	be	.L694
	 cmp	%o0, %o1
	blu,a	.L696
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L689
	 or	%g2, %g1, %g2
.L694:
	cmp	%o2, 0
	be,a	.L695
	 mov	%g2, %o0
.L695:
	jmp	%o7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L698
	 cmp	%o2, 0
	mov	0, %g1
	sll	%o1, %o2, %o0
.L699:
	mov	%g1, %o1
.L702:
	jmp	%o7+8
	 nop
.L698:
	be	.L702
	 nop
	sll	%o1, %o2, %g1
	sll	%o0, %o2, %o0
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o1
	b	.L699
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L704
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L705:
	mov	%g1, %o0
.L708:
	jmp	%o7+8
	 nop
.L704:
	be	.L708
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L705
	 or	%o0, %o1, %o1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -96, %sp
	srl	%i0, 24, %g3
	srl	%i0, 8, %i2
	sethi	%hi(64512), %i4
	or	%i4, 768, %i4
	and	%i2, %i4, %i2
	sll	%i0, 8, %g2
	srl	%i1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o7
	and	%g1, %o7, %i5
	sll	%i0, 24, %i0
	srl	%i1, 8, %g1
	or	%i0, %g1, %g1
	sethi	%hi(-16777216), %g2
	and	%g1, %g2, %g2
	sll	%i1, 8, %i3
	srl	%i1, 24, %o5
	mov	%g1, %g4
	sll	%i1, 24, %g1
	and	%g4, %i4, %g4
	and	%i3, %o7, %i0
	or	%g3, %i2, %i1
	or	%i1, %i5, %i1
	or	%g1, %o5, %g1
	or	%g1, %g4, %g1
	or	%g1, %i0, %i0
	or	%i1, %g2, %i1
	jmp	%i7+8
	 restore
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
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	sethi	%hi(64512), %g3
	or	%g3, 1023, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g2
	sll	%g2, 4, %g2
	mov	16, %g1
	sub	%g1, %g2, %g1
	srl	%o0, %g1, %g1
	or	%g3, 768, %g3
	and	%g1, %g3, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 3, %g3
	mov	8, %g4
	sub	%g4, %g3, %g4
	srl	%g1, %g4, %g1
	add	%g2, %g3, %g2
	and	%g1, 240, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 2, %g3
	mov	4, %g4
	sub	%g4, %g3, %g4
	srl	%g1, %g4, %g1
	add	%g2, %g3, %g2
	and	%g1, 12, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g4
	sll	%g4, 1, %g4
	mov	2, %g3
	sub	%g3, %g4, %o5
	srl	%g1, %o5, %g1
	add	%g2, %g4, %g2
	and	%g1, 2, %g4
	sub	%g3, %g1, %g3
	cmp	%g0, %g4
	addx	%g0, -1, %o0
	and	%o0, %g3, %o0
	jmp	%o7+8
	 add	%g2, %o0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o0, %o2
	bl	.L713
	 mov	0, %g1
	bg	.L713
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L713
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L713:
	jmp	%o7+8
	 mov	%g1, %o0
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
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%o0, %g1, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	sll	%g2, 4, %g2
	srl	%o0, %g2, %g1
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
	mov	2, %o0
	sub	%o0, %g1, %o0
	sub	%g0, %g3, %g1
	and	%o0, %g1, %o0
	jmp	%o7+8
	 add	%g2, %o0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	andcc	%o2, 32, %g0
	be	.L721
	 cmp	%o2, 0
	mov	0, %g1
	srl	%o0, %o2, %o1
.L722:
	mov	%g1, %o0
.L725:
	jmp	%o7+8
	 nop
.L721:
	be	.L725
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L722
	 or	%o0, %o1, %o1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i3
	or	%i3, 1023, %i3
	and	%i0, %i3, %i2
	and	%i1, %i3, %l0
	mov	%l0, %o1
	call	.umul, 0
	 mov	%i2, %o0
	srl	%o0, 16, %i5
	and	%o0, %i3, %i4
	srl	%i0, 16, %i0
	mov	%l0, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %i4, %i4
	srl	%i5, 16, %l0
	srl	%g1, 16, %i5
	and	%i4, %i3, %i4
	srl	%i1, 16, %i3
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i2, %o0
	add	%i5, %o0, %i5
	sll	%i5, 16, %i1
	add	%i1, %i4, %i1
	srl	%i5, 16, %i5
	add	%i5, %l0, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %o0, %i5, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -96, %sp
	mov	%i1, %l0
	mov	%i3, %o1
	call	__muldsi3, 0
	 mov	%i1, %o0
	mov	%o0, %i4
	mov	%o1, %i1
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	mov	%o0, %i5
	mov	%l0, %o1
	call	.umul, 0
	 mov	%i2, %o0
	add	%i5, %o0, %i5
	jmp	%i7+8
	 restore %i5, %i4, %o0
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	subcc	%g0, %o1, %o1
	jmp	%o7+8
	 subx	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	xor	%o1, %o0, %o1
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
	.size	__paritydi2, .-__paritydi2
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
	sll	%o0, 31, %g1
	srl	%o1, 1, %g2
	or	%g1, %g2, %g2
	srl	%o0, 1, %g3
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%g3, %g1, %o4
	and	%g2, %g1, %o5
	subcc	%o1, %o5, %g3
	subx	%o0, %o4, %g2
	sll	%g2, 30, %g1
	srl	%g3, 2, %g4
	or	%g1, %g4, %g4
	srl	%g2, 2, %o5
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%o5, %g1, %o2
	and	%g4, %g1, %o3
	and	%g2, %g1, %o4
	and	%g3, %g1, %o5
	addcc	%o3, %o5, %g3
	addx	%o2, %o4, %g2
	sll	%g2, 28, %g1
	srl	%g3, 4, %o5
	or	%g1, %o5, %o5
	srl	%g2, 4, %o4
	addcc	%o5, %g3, %o3
	addx	%o4, %g2, %o2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%o2, %g1, %g2
	and	%o3, %g1, %g3
	add	%g2, %g3, %g2
	srl	%g2, 16, %g1
	add	%g2, %g1, %g2
	srl	%g2, 8, %o0
	add	%o0, %g2, %o0
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	srl	%o2, 31, %g2
	sethi	%hi(.LC42), %g1
	b	.L736
	 ldd	[%g1+%lo(.LC42)], %f10
.L734:
	srl	%o2, 31, %g1
.L739:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L735
	 fmovs	%f10, %f0
	fmuld	%f8, %f8, %f8
.L736:
	andcc	%o2, 1, %g0
	bne,a	.L734
	 fmuld	%f10, %f8, %f10
	b	.L739
	 srl	%o2, 31, %g1
.L735:
	cmp	%g2, 0
	be	.L737
	 fmovs	%f11, %f1
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
	fdivd	%f0, %f10, %f0
.L737:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	srl	%o1, 31, %g2
	sethi	%hi(.LC44), %g1
	b	.L743
	 ld	[%g1+%lo(.LC44)], %f9
.L741:
	srl	%o1, 31, %g1
.L746:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L742
	 cmp	%g2, 0
	fmuls	%f8, %f8, %f8
.L743:
	andcc	%o1, 1, %g0
	bne,a	.L741
	 fmuls	%f9, %f8, %f9
	b	.L746
	 srl	%o1, 31, %g1
.L742:
	be	.L744
	 fmovs	%f9, %f0
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
	fdivs	%f0, %f9, %f0
.L744:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L748
	 mov	0, %g1
	bgu	.L748
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L748
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L748:
	jmp	%o7+8
	 mov	%g1, %o0
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
