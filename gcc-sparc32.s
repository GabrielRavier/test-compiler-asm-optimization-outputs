	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cmp	%o0, %o1
	bleu	.L2
	 nop
	cmp	%o2, 0
	be	.L11
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L8:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L8
	 ldub	[%o1+%o2], %g1
.L11:
	jmp	%o7+8
	 nop
.L2:
	be	.L11
	 cmp	%o2, 0
	be	.L11
	 mov	0, %g1
	ldub	[%o1+%g1], %g2
.L9:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L9
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	cmp	%o3, 0
	be	.L20
	 and	%o2, 0xff, %o2
.L13:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	be	.L21
	 add	%o1, 1, %o1
	addcc	%o3, -1, %o3
	bne	.L13
	 add	%o0, 1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L20:
	jmp	%o7+8
	 mov	0, %o0
.L21:
	jmp	%o7+8
	 add	%o0, 1, %o0
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	cmp	%o2, 0
	be	.L28
	 and	%o1, 0xff, %o1
.L23:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L30
	 addcc	%o2, -1, %o2
	bne	.L23
	 add	%o0, 1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L28:
	jmp	%o7+8
	 mov	0, %o0
.L30:
	jmp	%o7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	cmp	%o2, 0
	be	.L39
	 nop
.L32:
	ldub	[%o0], %g2
	ldub	[%o1], %g1
	cmp	%g2, %g1
	bne	.L40
	 addcc	%o2, -1, %o2
	add	%o0, 1, %o0
	bne	.L32
	 add	%o1, 1, %o1
	jmp	%o7+8
	 mov	0, %o0
.L39:
	jmp	%o7+8
	 mov	0, %o0
.L40:
	ldub	[%o0], %o0
	ldub	[%o1], %g1
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	cmp	%o2, 0
	be	.L46
	 mov	0, %g1
	ldub	[%o1+%g1], %g2
.L45:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L45
	 ldub	[%o1+%g1], %g2
.L46:
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
	add	%o0, %o2, %o2
	add	%o0, -1, %g2
.L48:
	cmp	%o2, %g2
	be	.L53
	 mov	0, %o0
	mov	%o2, %o0
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L48
	 add	%o2, -1, %o2
.L53:
	jmp	%o7+8
	 nop
.L47:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	cmp	%o2, 0
	be	.L59
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L58:
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L58
	 stb	%o1, [%g1]
.L59:
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L65
	 add	%o1, 1, %o1
.L64:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L64
	 add	%o1, 1, %o1
.L65:
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	and	%o1, 0xff, %o1
	ldsb	[%o0], %g2
	cmp	%g2, 0
	be	.L74
	 ldub	[%o0], %g1
.L67:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	be	.L73
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g2
	cmp	%g2, 0
	bne	.L67
	 ldub	[%o0], %g1
.L74:
	jmp	%o7+8
	 nop
.L73:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L77:
	ldsb	[%o0], %g2
	cmp	%g2, %o1
	be	.L79
	 ldub	[%o0], %g1
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L77
	 add	%o0, 1, %o0
	mov	0, %o0
.L79:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldub	[%o1], %g4
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L81
	 ldub	[%o0], %g3
	xor	%g4, %g3, %g1
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L85
	 and	%g3, 0xff, %g3
	mov	1, %g1
	ldub	[%o0+%g1], %g3
.L86:
	ldub	[%o1+%g1], %g4
	sll	%g3, 24, %g2
	cmp	%g2, 0
	be	.L81
	 add	%g1, 1, %g1
	xor	%g4, %g3, %g2
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be,a	.L86
	 ldub	[%o0+%g1], %g3
.L81:
	and	%g3, 0xff, %g3
.L85:
	and	%g4, 0xff, %o0
	jmp	%o7+8
	 sub	%g3, %o0, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L92
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L93:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L93
	 add	%g1, 1, %g1
.L88:
.L92:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L94
	 mov	0, %g3
	ldub	[%o0], %g3
	andcc	%g3, 0xff, %g0
	be	.L101
	 add	%o2, -1, %o2
	mov	%o1, %g2
	add	%o1, %o2, %o1
.L97:
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g3, 0xff, %o5
	xor	%g1, %o5, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g4, %g1, %g0
	be	.L96
	 cmp	%g2, %o1
	be	.L102
	 and	%g3, 0xff, %g3
	add	%o0, 1, %o0
	ldub	[%o0], %g3
	andcc	%g3, 0xff, %g0
	bne	.L97
	 add	%g2, 1, %g2
.L96:
	and	%g3, 0xff, %g3
.L102:
	ldub	[%g2], %g1
	sub	%g3, %g1, %g3
.L94:
	jmp	%o7+8
	 mov	%g3, %o0
.L101:
	b	.L96
	 mov	%o1, %g2
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L107
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L105:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L105
	 add	%o1, 2, %o1
.L107:
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
	add	%o0, -9, %g1
	cmp	%g1, 5
	addx	%g0, 0, %g1
	xor	%o0, 32, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
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
	add	%o0, -127, %g2
	cmp	%g2, 32
	bleu	.L132
	 mov	%o0, %g1
	cmp	%o0, 31
	bleu	.L132
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%o0, %g2, %g2
	cmp	%g2, 1
	bleu	.L134
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L132:
	mov	1, %o0
.L134:
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
	bleu	.L144
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%o0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	bgeu	.L141
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L141
	 sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L145
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L145
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L144:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L145
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L141:
	mov	1, %o0
.L145:
	jmp	%o7+8
	 nop
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	mov	%o0, %g1
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu	.L150
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L150:
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
	fbu	.L152
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L156
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L159
	 nop
	fsubd	%f0, %f8, %f0
.L152:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L156:
	b	.L152
	 fmovs	%f9, %f1
.L159:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L152
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
	fbu	.L160
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L168
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L167
	 nop
	fsubs	%f0, %f8, %f0
.L160:
.L168:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L167:
	sethi	%hi(.LC2), %g1
	b	.L160
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
	fbu	.L175
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L169
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L171
	 fcmped	%f0, %f8
	cmp	%g1, 0
	be	.L169
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L169:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L171:
	nop
	fbl	.L174
	 mov	1, %g1
	mov	0, %g1
.L174:
	andcc	%g1, 0xff, %g0
	be	.L169
	 nop
	fmovs	%f8, %f0
	b	.L169
	 fmovs	%f9, %f1
.L175:
	fmovs	%f8, %f0
	b	.L169
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
	fbu	.L184
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L178
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L180
	 fcmpes	%f0, %f8
	cmp	%g1, 0
	bne,a	.L178
	 fmovs	%f8, %f0
.L178:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L180:
	nop
	fbl	.L183
	 mov	1, %g1
	mov	0, %g1
.L183:
	andcc	%g1, 0xff, %g0
	bne,a	.L178
	 fmovs	%f8, %f0
	b,a	.L178
.L184:
	b	.L178
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
	fbu	.L193
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L187
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L189
	 fcmped	%f0, %f8
	cmp	%g1, 0
	be	.L187
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L187:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L189:
	nop
	fbl	.L192
	 mov	1, %g1
	mov	0, %g1
.L192:
	andcc	%g1, 0xff, %g0
	be	.L187
	 nop
	fmovs	%f8, %f0
	b	.L187
	 fmovs	%f9, %f1
.L193:
	fmovs	%f8, %f0
	b	.L187
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
	fbu	.L196
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L203
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L198
	 fcmped	%f8, %f0
	cmp	%g1, 0
	be	.L196
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L196:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L198:
	nop
	fbl	.L201
	 mov	1, %g1
	mov	0, %g1
.L201:
	andcc	%g1, 0xff, %g0
	be	.L196
	 nop
	fmovs	%f8, %f0
	b	.L196
	 fmovs	%f9, %f1
.L203:
	fmovs	%f8, %f0
	b	.L196
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
	fbu	.L205
	 ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L212
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L207
	 fcmpes	%f8, %f0
	cmp	%g1, 0
	bne,a	.L205
	 fmovs	%f8, %f0
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L207:
	nop
	fbl	.L210
	 mov	1, %g1
	mov	0, %g1
.L210:
	andcc	%g1, 0xff, %g0
	bne,a	.L205
	 fmovs	%f8, %f0
	b,a	.L205
.L212:
	b	.L205
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
	fbu	.L214
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L221
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L216
	 fcmped	%f8, %f0
	cmp	%g1, 0
	be	.L214
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L214:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L216:
	nop
	fbl	.L219
	 mov	1, %g1
	mov	0, %g1
.L219:
	andcc	%g1, 0xff, %g0
	be	.L214
	 nop
	fmovs	%f8, %f0
	b	.L214
	 fmovs	%f9, %f1
.L221:
	fmovs	%f8, %f0
	b	.L214
	 fmovs	%f9, %f1
	.size	fminl, .-fminl
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	cmp	%o0, 0
	be	.L226
	 mov	%o0, %g1
	sethi	%hi(s.0), %g2
	or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L225:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L225
	 add	%g2, 1, %g2
.L224:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
.L226:
	sethi	%hi(s.0), %g2
	b	.L224
	 or	%g2, %lo(s.0), %g2
	.size	l64a, .-l64a
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g2
	add	%o0, -1, %o0
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
	be,a	.L233
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L235
	 st	%o0, [%g1+4]
.L235:
	jmp	%o7+8
	 nop
.L233:
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
	be,a	.L239
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L239:
	cmp	%g1, 0
	be	.L240
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L240:
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
	cmp	%l1, 0
	be	.L242
	 mov	%i0, %l2
	mov	%i1, %i5
	mov	0, %l0
.L244:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be	.L246
	 nop
	add	%l0, 1, %l0
	cmp	%l1, %l0
	bne	.L244
	 add	%i5, %i3, %i5
.L242:
	add	%l1, 1, %g1
	st	%g1, [%i2]
	mov	%l1, %o1
	call	.umul, 0
	 mov	%i3, %o0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memcpy, 0
	 add	%i1, %o0, %o0
	mov	%o0, %i0
.L246:
	jmp	%i7+8
	 restore
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -96, %sp
	ld	[%i2], %i2
	cmp	%i2, 0
	be	.L250
	 mov	%i0, %l0
	mov	0, %i5
.L249:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be	.L252
	 nop
	add	%i5, 1, %i5
	cmp	%i2, %i5
	bne	.L249
	 add	%i1, %i3, %i1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L250:
	mov	0, %i0
.L252:
	jmp	%i7+8
	 restore
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
	b	.L266
	 ldub	[%i0], %i4
.L256:
	ldub	[%i0], %i4
.L266:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L256
	 add	%i0, 1, %i0
	sll	%i4, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L262
	 cmp	%g1, 45
	bne	.L258
	 mov	%o0, %g3
	mov	1, %g3
.L257:
	add	%i0, 1, %i0
.L258:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu	.L260
	 ldub	[%i0], %g1
.L259:
	sll	%o0, 2, %g2
	add	%g2, %o0, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g2, %g1, %o0
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L259
	 ldub	[%i0], %g1
.L260:
	cmp	%g3, 0
	be,a	.L254
	 sub	%g0, %o0, %o0
.L254:
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L262:
	b	.L257
	 mov	%o0, %g3
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
	b	.L279
	 ldub	[%i0], %i4
.L269:
	ldub	[%i0], %i4
.L279:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L269
	 add	%i0, 1, %i0
	sll	%i4, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L275
	 cmp	%g1, 45
	bne	.L271
	 mov	%o0, %g3
	mov	1, %g3
.L270:
	add	%i0, 1, %i0
.L271:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu	.L273
	 ldub	[%i0], %g1
.L272:
	sll	%o0, 2, %g2
	add	%g2, %o0, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g2, %g1, %o0
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L272
	 ldub	[%i0], %g1
.L273:
	cmp	%g3, 0
	be,a	.L267
	 sub	%g0, %o0, %o0
.L267:
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L275:
	b	.L270
	 mov	%o0, %g3
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	%i0, %i5
.L282:
	ldub	[%i5], %i4
	call	isspace, 0
	 ldsb	[%i5], %o0
	cmp	%o0, 0
	bne,a	.L282
	 add	%i5, 1, %i5
	sll	%i4, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L283
	 cmp	%g1, 45
	bne,a	.L291
	 ldub	[%i5], %g1
	mov	1, %o0
.L283:
	add	%i5, 1, %i5
	ldub	[%i5], %g1
.L291:
	ldsb	[%i5], %g2
	add	%g2, -48, %g2
	mov	0, %i0
	cmp	%g2, 9
	bgu	.L286
	 mov	0, %i1
.L285:
	srl	%i1, 30, %g3
	sll	%i0, 2, %g2
	or	%g3, %g2, %o4
	sll	%i1, 2, %o5
	addcc	%o5, %i1, %g3
	addx	%o4, %i0, %g2
	srl	%g3, 31, %i1
	sll	%g2, 1, %i4
	sll	%g3, 1, %g4
	or	%i1, %i4, %g2
	add	%i5, 1, %i5
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %i3
	sra	%g1, 31, %i2
	subcc	%g4, %i3, %i1
	subx	%g2, %i2, %i0
	ldsb	[%i5], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L285
	 ldub	[%i5], %g1
.L286:
	cmp	%o0, 0
	bne	.L292
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L292:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	cmp	%i2, 0
	bne	.L301
	 srl	%i2, 1, %l0
	b	.L293
	 mov	0, %i5
.L298:
.L295:
	cmp	%i2, 0
	be	.L300
	 srl	%i2, 1, %l0
.L301:
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L298
	 mov	%l0, %i2
	ble	.L293
	 nop
	add	%i5, %i3, %i1
	add	%i2, -1, %i2
	b	.L295
	 sub	%i2, %l0, %i2
.L300:
	mov	0, %i5
.L293:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	mov	%i0, %l1
	cmp	%i2, 0
	bne	.L305
	 mov	%i2, %l0
	mov	0, %i0
.L310:
	jmp	%i7+8
	 restore
.L304:
	sra	%l0, 1, %l0
.L309:
	cmp	%l0, 0
	be	.L308
	 nop
.L305:
	mov	%i3, %o1
	call	.umul, 0
	 sra	%l0, 1, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	cmp	%o0, 0
	be	.L310
	 nop
	ble,a	.L309
	 sra	%l0, 1, %l0
	add	%i0, %i3, %i1
	b	.L304
	 add	%l0, -1, %l0
.L308:
	jmp	%i7+8
	 restore %g0, 0, %o0
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
	st	%o0, [%i5]
	mov	%i1, %o1
	call	.rem, 0
	 mov	%i0, %o0
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
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5]
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
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
	st	%o0, [%i5]
	mov	%i1, %o1
	call	.rem, 0
	 mov	%i0, %o0
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
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5]
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ld	[%o0], %g1
	cmp	%o1, %g1
	be	.L319
	 cmp	%g1, 0
	be	.L324
	 cmp	%g0, %g1
	add	%o0, 4, %o0
.L325:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L319
	 cmp	%g1, 0
	bne,a	.L325
	 add	%o0, 4, %o0
.L319:
	cmp	%g0, %g1
.L324:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o0], %g2
	ld	[%o1], %g3
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	xor	%g2, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g4, %g1, %g0
	be	.L327
	 cmp	%g3, 0
	be	.L334
	 cmp	%g2, %g3
	mov	4, %g1
	ld	[%o0+%g1], %g2
.L335:
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	xor	%g2, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	be	.L327
	 add	%g1, 4, %g1
	cmp	%g3, 0
	bne,a	.L335
	 ld	[%o0+%g1], %g2
.L327:
	cmp	%g2, %g3
.L334:
	bl	.L336
	 mov	-1, %o0
	bg	.L336
	 mov	1, %o0
	mov	0, %o0
.L336:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L338:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L338
	 add	%g1, 4, %g1
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	ld	[%o0], %g1
	cmp	%g1, 0
	be	.L341
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L345:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L345
	 add	%g1, 4, %g1
.L341:
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	be	.L356
	 nop
.L347:
	ld	[%o0], %g1
	ld	[%o1], %g2
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	be	.L351
	 cmp	%g2, 0
	be	.L351
	 addcc	%o2, -1, %o2
	add	%o0, 4, %o0
	bne	.L347
	 add	%o1, 4, %o1
	jmp	%o7+8
	 mov	0, %o0
.L356:
	jmp	%o7+8
	 mov	0, %o0
.L353:
	bg	.L357
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L351:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bge	.L353
	 nop
	mov	-1, %o0
.L357:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	be	.L364
	 nop
.L359:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L366
	 nop
	addcc	%o2, -1, %o2
	bne	.L359
	 add	%o0, 4, %o0
	jmp	%o7+8
	 mov	0, %o0
.L364:
	jmp	%o7+8
	 mov	0, %o0
.L366:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	be	.L377
	 nop
.L368:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bne	.L379
	 addcc	%o2, -1, %o2
	add	%o0, 4, %o0
	bne	.L368
	 add	%o1, 4, %o1
	jmp	%o7+8
	 mov	0, %o0
.L377:
	jmp	%o7+8
	 mov	0, %o0
.L373:
	bg	.L380
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L379:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bge	.L373
	 nop
	mov	-1, %o0
.L380:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	cmp	%o2, 0
	be	.L385
	 add	%o2, -1, %g2
	mov	0, %g1
.L383:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L383
	 add	%g1, 4, %g1
.L385:
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L397
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu	.L388
	 cmp	%o2, 0
	add	%o2, -1, %g2
	be	.L398
	 mov	0, %g1
.L389:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L389
	 add	%g1, 4, %g1
.L398:
	jmp	%o7+8
	 nop
.L388:
	be	.L398
	 add	%o2, -1, %g1
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L396:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L396
	 ld	[%o1+%g1], %g2
.L397:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L403
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L401:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L401
	 st	%o1, [%g2-4]
.L403:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L405
	 nop
	cmp	%o2, 0
	be	.L413
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L411:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L411
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L405:
	be	.L413
	 nop
	cmp	%o2, 0
	be	.L413
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L412:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L412
	 ldub	[%o0+%g1], %g2
.L413:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L416
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g2
.L417:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L418
	 sll	%o0, 1, %g3
	srl	%o0, %g3, %o1
	mov	0, %o0
.L419:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g2, %o1
.L416:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L417
	 sll	%o1, %o2, %g2
.L418:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g3, %g4, %g3
	srl	%o1, %o2, %o1
	or	%g3, %o1, %o1
	b	.L419
	 srl	%o0, %o2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L421
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g2
.L422:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L423
	 srl	%o1, 1, %g3
	sll	%o1, %g3, %o0
	mov	0, %o1
.L424:
	or	%o0, %g2, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L421:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L422
	 srl	%o0, %o2, %g2
.L423:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g3, %g4, %g3
	sll	%o0, %o2, %o0
	or	%g3, %o0, %o0
	b	.L424
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
	and	%o1, 15, %o1
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 15, %o1
	srl	%o0, %o1, %o0
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
	and	%o1, 15, %o1
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 15, %o1
	sll	%o0, %o1, %o0
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
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	srl	%o0, 8, %g1
	sll	%o0, 8, %o0
	or	%g1, %o0, %o0
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	sll	%o0, 24, %g1
	srl	%o0, 24, %g2
	or	%g1, %g2, %g1
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
	sll	%o0, 8, %o0
	sethi	%hi(16711680), %g2
	and	%o0, %g2, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	sll	%o1, 24, %g4
	srl	%o0, 24, %g3
	srl	%o0, 8, %g1
	sethi	%hi(64512), %o5
	or	%o5, 768, %o5
	and	%g1, %o5, %g1
	or	%g3, %g1, %g3
	sll	%o0, 8, %g2
	srl	%o1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o3
	and	%g1, %o3, %g1
	or	%g3, %g1, %g3
	sll	%o0, 24, %o0
	srl	%o1, 8, %g1
	or	%o0, %g1, %g1
	sethi	%hi(-16777216), %g2
	and	%g1, %g2, %g2
	sll	%o1, 8, %o4
	srl	%o1, 24, %g1
	or	%g4, %g1, %g4
	srl	%o1, 8, %g1
	or	%g1, %o0, %g1
	and	%g1, %o5, %g1
	or	%g4, %g1, %g4
	and	%o4, %o3, %o0
	or	%g4, %o0, %o0
	jmp	%o7+8
	 or	%g3, %g2, %o1
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	mov	0, %g1
	srl	%o0, %g1, %g2
.L442:
	andcc	%g2, 1, %g0
	bne	.L441
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L442
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L441:
	jmp	%o7+8
	 add	%g1, 1, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	cmp	%o0, 0
	be	.L448
	 mov	%o0, %g1
	andcc	%o0, 1, %o0
	bne	.L448
	 nop
	mov	1, %o0
.L445:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L445
	 add	%o0, 1, %o0
.L448:
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
	fbl	.L449
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L449
	 mov	0, %o0
.L449:
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
	fbl	.L453
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L453
	 mov	0, %o0
.L453:
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
	fbl	.L457
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L457
	 mov	0, %o0
.L457:
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
	fbu	.L463
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L463
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L466
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L466
	 ld	[%g1+%lo(.LC17)], %f8
.L465:
	srl	%o1, 31, %g1
.L468:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L463
	 nop
	fmuls	%f8, %f8, %f8
.L466:
	andcc	%o1, 1, %g0
	bne,a	.L465
	 fmuls	%f0, %f8, %f0
	b	.L468
	 srl	%o1, 31, %g1
.L463:
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
	fbu	.L470
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L470
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L473
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L473
	 ldd	[%g1+%lo(.LC21)], %f8
.L472:
	srl	%o2, 31, %g1
.L475:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L470
	 nop
	fmuld	%f8, %f8, %f8
.L473:
	andcc	%o2, 1, %g0
	bne,a	.L472
	 fmuld	%f0, %f8, %f0
	b	.L475
	 srl	%o2, 31, %g1
.L470:
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
	fbu	.L477
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L477
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L480
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L480
	 ldd	[%g1+%lo(.LC25)], %f8
.L479:
	srl	%o2, 31, %g1
.L482:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L477
	 nop
	fmuld	%f8, %f8, %f8
.L480:
	andcc	%o2, 1, %g0
	bne,a	.L479
	 fmuld	%f0, %f8, %f0
	b	.L482
	 srl	%o2, 31, %g1
.L477:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L488
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L487:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L487
	 ldub	[%o0+%g1], %g2
.L488:
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
	cmp	%i2, 0
	be	.L491
	 add	%i0, %o0, %o0
.L490:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L496
	 nop
	add	%i1, 1, %i1
	addcc	%i2, -1, %i2
	bne	.L490
	 add	%o0, 1, %o0
.L491:
	stb	%g0, [%o0]
	jmp	%i7+8
	 restore
.L496:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L505
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L507:
	cmp	%g2, 0
	bne,a	.L506
	 add	%g1, 1, %g1
.L498:
	jmp	%o7+8
	 mov	%g1, %o0
.L505:
	b	.L498
	 mov	%o1, %g1
.L506:
	cmp	%o1, %g1
	bne,a	.L507
	 ldsb	[%o0+%g1], %g2
	b	.L498
	 mov	%o1, %g1
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L515
	 ldub	[%o0], %g4
.L509:
	mov	%o1, %g2
	sll	%g4, 24, %g4
	sra	%g4, 24, %g4
.L512:
	ldsb	[%g2], %g3
	cmp	%g3, 0
	be	.L516
	 ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %g4
	bne	.L512
	 add	%g2, 1, %g2
.L510:
	jmp	%o7+8
	 nop
.L515:
	jmp	%o7+8
	 mov	0, %o0
.L516:
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne	.L509
	 ldub	[%o0], %g4
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	b	.L519
	 mov	0, %o0
.L518:
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be	.L523
	 add	%g1, 1, %g1
.L519:
	ldsb	[%g1], %g3
	cmp	%g3, %o1
	bne	.L518
	 ldub	[%g1], %g2
	b	.L518
	 mov	%g1, %o0
.L523:
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -96, %sp
	mov	%i0, %i5
	call	strlen, 0
	 mov	%i1, %o0
	cmp	%o0, 0
	be	.L529
	 mov	%o0, %i4
	ldsb	[%i1], %i3
.L526:
	mov	%i3, %o1
	call	strchr, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	be	.L529
	 mov	%o0, %i0
	mov	%i4, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L529
	 nop
	b	.L526
	 add	%i0, 1, %i5
.L529:
	jmp	%i7+8
	 restore
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
	fbl,a	.L540
	 std	%o2, [%sp+72]
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L534
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L541
	 fnegs	%f0, %f0
.L534:
.L541:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L540:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L534
	 nop
	b	.L534
	 fnegs	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	cmp	%i3, 0
	be	.L553
	 mov	%i0, %i5
	cmp	%i1, %i3
	blu	.L547
	 nop
	sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu	.L548
	 nop
	ldsb	[%i2], %i4
	add	%i3, -1, %i3
	b	.L545
	 add	%i2, 1, %i2
.L544:
.L552:
	cmp	%i1, %i5
	blu	.L551
	 nop
.L545:
	ldsb	[%i5], %g1
	cmp	%g1, %i4
	bne,a	.L552
	 add	%i5, 1, %i5
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 add	%i5, 1, %o0
	cmp	%o0, 0
	bne,a	.L544
	 add	%i5, 1, %i5
	mov	%i5, %i0
.L553:
	jmp	%i7+8
	 restore
.L551:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L547:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L548:
	jmp	%i7+8
	 restore %g0, 0, %o0
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
	fbl,a	.L575
	 fnegs	%f0, %f0
	mov	0, %g2
.L556:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L574
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L560:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L560
	 add	%g1, 1, %g1
.L561:
	cmp	%g2, 0
.L577:
	be	.L565
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L565:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L575:
	b	.L556
	 mov	1, %g2
.L574:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L562
	 mov	1, %g1
	mov	0, %g1
.L562:
	andcc	%g1, 0xff, %g0
	be	.L567
	 sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L563
	 mov	1, %g1
	mov	0, %g1
.L563:
	andcc	%g1, 0xff, %g0
	bne,a	.L576
	 mov	0, %g1
.L567:
	b	.L561
	 mov	0, %g1
.L576:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L564:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L564
	 add	%g1, -1, %g1
	b	.L577
	 cmp	%g2, 0
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	%i0, %g2
	orcc	%i1, %i0, %g0
	be	.L582
	 mov	%i1, %g3
	mov	0, %i0
	mov	0, %i1
	mov	0, %i4
.L584:
	and	%g3, 1, %i5
	subcc	%g0, %i5, %o3
	subx	%g0, %i4, %o2
	and	%o2, %i2, %o4
	and	%o3, %i3, %o5
	addcc	%i1, %o5, %i1
	addx	%i0, %o4, %i0
	srl	%i3, 31, %g1
	sll	%i2, 1, %i2
	or	%g1, %i2, %i2
	sll	%i3, 1, %i3
	sll	%g2, 31, %g4
	srl	%g3, 1, %g1
	or	%g4, %g1, %g1
	srl	%g2, 1, %g2
	orcc	%g2, %g1, %g0
	bne	.L584
	 mov	%g1, %g3
	jmp	%i7+8
	 restore
.L582:
	mov	0, %i0
	jmp	%i7+8
	 restore %g0, 0, %o1
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L593
	 mov	1, %g1
	cmp	%o1, 0
.L601:
	bl	.L591
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L588
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L601
	 cmp	%o1, 0
.L588:
	cmp	%g1, 0
	be,a	.L599
	 mov	%g1, %o0
.L593:
	b	.L591
	 mov	0, %o0
.L590:
	srl	%g1, 1, %g1
.L602:
	cmp	%g1, 0
	be	.L592
	 srl	%o1, 1, %o1
.L591:
	cmp	%g2, %o1
	blu,a	.L602
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L590
	 or	%o0, %g1, %o0
.L599:
.L592:
	cmp	%o2, 0
	bne	.L600
	 nop
.L585:
	jmp	%o7+8
	 nop
.L600:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	mov	%i0, %g1
	sra	%i0, 7, %g2
	xor	%i0, %g2, %o0
	cmp	%g0, %g2
	subx	%g0, 0, %g2
	cmp	%g2, %g1
	be	.L606
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L606:
	jmp	%i7+8
	 restore
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xor	%i0, %g1, %o0
	cmp	%i0, %g1
	be	.L613
	 xor	%i1, %g1, %o1
.L611:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L613:
	cmp	%i1, %g1
	bne	.L611
	 nop
	jmp	%i7+8
	 restore %g0, 63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	cmp	%o0, 0
	be	.L620
	 mov	%o0, %g2
	mov	0, %o0
.L616:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L616
	 sll	%o1, 1, %o1
.L620:
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g4
	cmp	%o0, %o1
	bgeu	.L622
	 and	%o2, -8, %g1
	sll	%g4, 3, %g3
.L637:
	cmp	%g4, 0
	be	.L624
	 mov	0, %g2
.L628:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L628
	 std	%o4, [%g4]
.L624:
	cmp	%o2, %g1
	bleu	.L639
	 nop
	ldub	[%o1+%g1], %g2
.L636:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L636
	 ldub	[%o1+%g1], %g2
.L640:
	jmp	%o7+8
	 nop
.L622:
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L637
	 sll	%g4, 3, %g3
	cmp	%o2, 0
	be	.L640
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L638:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L638
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L639:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	bgeu	.L642
	 srl	%o2, 1, %g2
	sll	%g2, 1, %g3
.L655:
	cmp	%g2, 0
	be	.L644
	 mov	0, %g1
	lduh	[%o1+%g1], %g2
.L654:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L654
	 lduh	[%o1+%g1], %g2
.L644:
	andcc	%o2, 1, %g0
	be	.L657
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L642:
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bgu	.L655
	 sll	%g2, 1, %g3
	cmp	%o2, 0
	be	.L658
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L656:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L656
	 ldub	[%o1+%g1], %g2
.L658:
	jmp	%o7+8
	 nop
.L657:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g3
	cmp	%o0, %o1
	bgeu	.L660
	 and	%o2, -4, %g1
	sll	%g3, 2, %g4
.L676:
	cmp	%g3, 0
	be	.L662
	 mov	0, %g2
	ld	[%o1+%g2], %g3
.L674:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L674
	 ld	[%o1+%g2], %g3
.L662:
	cmp	%o2, %g1
	bleu	.L678
	 nop
	ldub	[%o1+%g1], %g2
.L675:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L675
	 ldub	[%o1+%g1], %g2
.L679:
	jmp	%o7+8
	 nop
.L660:
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L676
	 sll	%g3, 2, %g4
	cmp	%o2, 0
	be	.L679
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L677:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L677
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L678:
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
	bl	.L683
	 fitod	%f8, %f0
.L682:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L683:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L682
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
	bl	.L686
	 fitod	%f8, %f0
.L685:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L686:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L685
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
	sub	%g3, %g1, %g2
.L694:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L690
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L694
	 sub	%g3, %g1, %g2
.L690:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	mov	0, %g1
	sra	%o0, %g1, %g2
.L699:
	andcc	%g2, 1, %g0
	bne	.L695
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L699
	 sra	%o0, %g1, %g2
.L695:
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
	fbge,a	.L706
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L700:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L706:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L700
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L708:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L708
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	mov	0, %g3
	mov	0, %g1
.L711:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L711
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 mov	%g3, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	cmp	%o0, 0
	be	.L719
	 mov	%o0, %g2
	mov	0, %o0
.L715:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L715
	 sll	%o1, 1, %o1
.L719:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	cmp	%o0, 0
	be	.L727
	 mov	%o0, %g2
	cmp	%o1, 0
	be	.L727
	 mov	%o1, %o0
	mov	0, %o0
.L722:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L722
	 sll	%g2, 1, %g2
.L727:
	jmp	%o7+8
	 nop
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L736
	 mov	1, %g1
	cmp	%o1, 0
.L744:
	bl	.L734
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L731
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L744
	 cmp	%o1, 0
.L731:
	cmp	%g1, 0
	be,a	.L742
	 mov	%g1, %o0
.L736:
	b	.L734
	 mov	0, %o0
.L733:
	srl	%g1, 1, %g1
.L745:
	cmp	%g1, 0
	be	.L735
	 srl	%o1, 1, %o1
.L734:
	cmp	%g2, %o1
	blu,a	.L745
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L733
	 or	%o0, %g1, %o0
.L742:
.L735:
	cmp	%o2, 0
	bne	.L743
	 nop
.L728:
	jmp	%o7+8
	 nop
.L743:
	jmp	%o7+8
	 mov	%g2, %o0
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
	fbl	.L746
	 mov	-1, %o0
	nop
	fbg	.L746
	 mov	1, %o0
	mov	0, %o0
.L746:
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
	fbl	.L750
	 mov	-1, %o0
	nop
	fbg	.L750
	 mov	1, %o0
	mov	0, %o0
.L750:
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
	bl	.L765
	 mov	%o0, %g2
	cmp	%o1, 0
	be	.L763
	 mov	%o1, %o5
	mov	0, %o5
.L758:
	mov	1, %g3
	mov	0, %o0
.L761:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	sll	%g2, 1, %g2
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g3, 0xff, %g1
	cmp	%g1, 32
	addx	%g0, 0, %g1
	andcc	%g4, %g1, %g0
	bne	.L761
	 add	%g3, 1, %g3
.L759:
	cmp	%o5, 0
	bne,a	.L766
	 sub	%g0, %o0, %o0
.L766:
	jmp	%o7+8
	 nop
.L765:
	sub	%g0, %o1, %o1
	b	.L758
	 mov	1, %o5
.L763:
	b	.L759
	 mov	%o1, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L775
	 cmp	%i1, 0
	bl	.L776
	 mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L775:
	bl	.L777
	 sub	%g0, %i0, %o0
	mov	0, %o2
	call	__udivmodsi4, 0
	 mov	%i1, %o1
	sub	%g0, %o0, %i0
	jmp	%i7+8
	 restore
.L776:
	sub	%g0, %i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	sub	%g0, %o0, %i0
	jmp	%i7+8
	 restore
.L777:
	mov	0, %o2
	call	__udivmodsi4, 0
	 sub	%g0, %i1, %o1
	mov	%o0, %i0
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
	bl	.L783
	 sra	%i1, 31, %o1
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L783:
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 sub	%g0, %i0, %o0
	sub	%g0, %o0, %i0
	jmp	%i7+8
	 restore
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu	.L792
	 mov	1, %g1
	sll	%o1, 16, %g2
.L799:
	cmp	%g2, 0
	bl	.L790
	 mov	0, %g2
	sll	%o1, 17, %o1
	srl	%o1, 16, %o1
	sll	%g1, 1, %g2
	cmp	%o1, %o0
	bgeu	.L787
	 mov	%g2, %g1
	sll	%g2, 16, %g3
	cmp	%g3, 0
	bne,a	.L799
	 sll	%o1, 16, %g2
.L787:
	sll	%g2, 16, %g3
	cmp	%g3, 0
	be	.L800
	 cmp	%o2, 0
.L792:
	b	.L790
	 mov	0, %g2
.L789:
	sll	%g1, 16, %g1
.L801:
	srl	%g1, 17, %g3
	mov	%g3, %g1
	cmp	%g3, 0
	be	.L791
	 srl	%o1, 1, %o1
.L790:
	cmp	%o0, %o1
	blu,a	.L801
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L789
	 or	%g1, %g2, %g2
.L791:
	cmp	%o2, 0
.L800:
	bne,a	.L793
	 mov	%o0, %g2
.L793:
	sll	%g2, 16, %g2
	jmp	%o7+8
	 srl	%g2, 16, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L810
	 mov	1, %g1
	cmp	%o1, 0
.L818:
	bl	.L808
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L805
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L818
	 cmp	%o1, 0
.L805:
	cmp	%g1, 0
	be,a	.L816
	 mov	%g1, %o0
.L810:
	b	.L808
	 mov	0, %o0
.L807:
	srl	%g1, 1, %g1
.L819:
	cmp	%g1, 0
	be	.L809
	 srl	%o1, 1, %o1
.L808:
	cmp	%g2, %o1
	blu,a	.L819
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L807
	 or	%o0, %g1, %o0
.L816:
.L809:
	cmp	%o2, 0
	bne	.L817
	 nop
.L802:
	jmp	%o7+8
	 nop
.L817:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L821
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	mov	0, %g1
.L822:
	mov	%g1, %o1
.L825:
	jmp	%o7+8
	 nop
.L821:
	be	.L825
	 nop
	sll	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srl	%o1, %g2, %o1
	sll	%o0, %o2, %o0
	b	.L822
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L827
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L828:
	mov	%g1, %o0
.L831:
	jmp	%o7+8
	 nop
.L827:
	be	.L831
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L828
	 or	%o0, %o1, %o1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srl	%o0, 24, %g3
	sll	%o1, 24, %g4
	srl	%o0, 8, %g1
	sethi	%hi(64512), %o5
	or	%o5, 768, %o5
	and	%g1, %o5, %g1
	or	%g3, %g1, %g3
	sll	%o0, 8, %g2
	srl	%o1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o3
	and	%g1, %o3, %g1
	or	%g3, %g1, %g3
	sll	%o0, 24, %o0
	srl	%o1, 8, %g1
	or	%o0, %g1, %g1
	sethi	%hi(-16777216), %g2
	and	%g1, %g2, %g2
	sll	%o1, 8, %o4
	srl	%o1, 24, %g1
	or	%g4, %g1, %g4
	srl	%o1, 8, %g1
	or	%g1, %o0, %g1
	and	%g1, %o5, %g1
	or	%g4, %g1, %g4
	and	%o4, %o3, %o0
	or	%g4, %o0, %o0
	jmp	%o7+8
	 or	%g3, %g2, %o1
	.size	__bswapdi2, .-__bswapdi2
	.align 4
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
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
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
	sll	%g2, 1, %g2
	mov	2, %g4
	sub	%g4, %g2, %g4
	srl	%g1, %g4, %g1
	andcc	%g1, 2, %g0
	bne	.L836
	 mov	0, %o0
	mov	2, %o0
	sub	%o0, %g1, %o0
.L836:
	add	%g2, %g3, %g2
	jmp	%o7+8
	 add	%o0, %g2, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o2, %o0
	bg	.L837
	 mov	0, %g1
	bl	.L837
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L837
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L837:
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
	sll	%g2, 1, %g2
	srl	%g1, %g2, %g1
	and	%g1, 3, %g1
	xnor	%g0, %g1, %o0
	and	%o0, 1, %o0
	srl	%g1, 1, %g1
	mov	2, %g4
	sub	%g4, %g1, %g4
	sub	%g0, %o0, %g1
	and	%g1, %g4, %g1
	add	%g2, %g3, %o0
	jmp	%o7+8
	 add	%g1, %o0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	andcc	%o2, 32, %g0
	be	.L846
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %g1
.L847:
	mov	%g1, %o0
.L850:
	jmp	%o7+8
	 nop
.L846:
	be	.L850
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L847
	 or	%o0, %o1, %o1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i2
	or	%i2, 1023, %i2
	and	%i0, %i2, %l1
	and	%i1, %i2, %i4
	mov	%i4, %o1
	call	.umul, 0
	 mov	%l1, %o0
	mov	%o0, %i5
	srl	%o0, 16, %i3
	srl	%i0, 16, %i0
	mov	%i0, %o1
	call	.umul, 0
	 mov	%i4, %o0
	add	%o0, %i3, %i4
	and	%i5, %i2, %i5
	sll	%i4, 16, %g1
	add	%i5, %g1, %i5
	srl	%g1, 16, %i3
	srl	%i1, 16, %l0
	mov	%l0, %o1
	call	.umul, 0
	 mov	%l1, %o0
	add	%o0, %i3, %i3
	and	%i5, %i2, %i1
	sll	%i3, 16, %g1
	add	%i1, %g1, %i1
	srl	%i4, 16, %i4
	mov	%l0, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i4, %o0, %i4
	srl	%i3, 16, %i3
	jmp	%i7+8
	 restore %i4, %i3, %o0
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
	mov	%i0, %o1
	call	.umul, 0
	 mov	%i3, %o0
	mov	%o0, %i5
	mov	%i2, %o1
	call	.umul, 0
	 mov	%l0, %o0
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
	xor	%o0, %o1, %o1
	srl	%o1, 16, %g1
	xor	%g1, %o1, %o1
	srl	%o1, 8, %g2
	xor	%g2, %o1, %g2
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
	and	%o5, %g1, %o0
	and	%g4, %g1, %o1
	and	%g2, %g1, %o2
	and	%g3, %g1, %o3
	addcc	%o1, %o3, %o5
	addx	%o0, %o2, %o4
	sll	%o4, 28, %g1
	srl	%o5, 4, %g3
	or	%g1, %g3, %g3
	srl	%o4, 4, %g2
	addcc	%g3, %o5, %o3
	addx	%g2, %o4, %o2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%o2, %g1, %g2
	and	%o3, %g1, %g1
	add	%g2, %g1, %g2
	srl	%g2, 16, %g1
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
	mov	%o2, %g1
	sethi	%hi(.LC42), %g2
	b	.L861
	 ldd	[%g2+%lo(.LC42)], %f0
.L859:
	srl	%g1, 31, %g2
.L864:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L860
	 cmp	%o2, 0
	fmuld	%f8, %f8, %f8
.L861:
	andcc	%g1, 1, %g0
	bne,a	.L859
	 fmuld	%f0, %f8, %f0
	b	.L864
	 srl	%g1, 31, %g2
.L860:
	bl	.L863
	 sethi	%hi(.LC42), %g1
.L858:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L863:
	ldd	[%g1+%lo(.LC42)], %f8
	b	.L858
	 fdivd	%f8, %f0, %f0
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
	mov	%o1, %g1
	sethi	%hi(.LC44), %g2
	b	.L868
	 ld	[%g2+%lo(.LC44)], %f0
.L866:
	srl	%g1, 31, %g2
.L871:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L867
	 cmp	%o1, 0
	fmuls	%f8, %f8, %f8
.L868:
	andcc	%g1, 1, %g0
	bne,a	.L866
	 fmuls	%f0, %f8, %f0
	b	.L871
	 srl	%g1, 31, %g2
.L867:
	bl	.L870
	 sethi	%hi(.LC44), %g1
.L865:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L870:
	ld	[%g1+%lo(.LC44)], %f8
	b	.L865
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o2, %o0
	bgu	.L872
	 mov	0, %g1
	blu	.L872
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L872
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L872:
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
	.local	seed
	.common	seed,8,8
	.section	".rodata"
	.align 8
	.type	digits, #object
	.size	digits, 65
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
