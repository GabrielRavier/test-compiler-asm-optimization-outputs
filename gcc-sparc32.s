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
	be	.L18
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L15:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L15
	 ldub	[%o1+%o2], %g1
.L18:
	jmp	%o7+8
	 nop
.L2:
	be	.L18
	 cmp	%o2, 0
	be	.L18
	 mov	0, %g1
	ldub	[%o1+%g1], %g2
.L16:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L16
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
	bne	.L20
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L22:
	addcc	%o3, -1, %o3
	be	.L24
	 add	%o0, 1, %o0
.L20:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne,a	.L22
	 add	%o1, 1, %o1
	cmp	%o3, 0
	be,a	.L30
	 mov	0, %o0
	jmp	%o7+8
	 add	%o0, 1, %o0
.L24:
	mov	0, %o0
.L30:
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	cmp	%o2, 0
	bne	.L32
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L34:
	be	.L37
	 add	%o0, 1, %o0
.L32:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,a	.L34
	 addcc	%o2, -1, %o2
	cmp	%o2, 0
	be,a	.L41
	 mov	0, %o0
.L41:
	jmp	%o7+8
	 nop
.L37:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	cmp	%o2, 0
	bne,a	.L54
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L45:
	addcc	%o2, -1, %o2
	be	.L47
	 add	%o1, 1, %o1
	ldub	[%o0], %g1
.L54:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be,a	.L45
	 add	%o0, 1, %o0
	cmp	%o2, 0
	be,a	.L53
	 mov	0, %o0
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L47:
	mov	0, %o0
.L53:
	jmp	%o7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L60
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L60:
	jmp	%i7+8
	 restore
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	add	%o2, -1, %o2
	and	%o1, 0xff, %o1
	add	%o0, %o2, %o2
	b	.L62
	 add	%o0, -1, %g2
.L64:
	ldub	[%o2], %g1
	cmp	%g1, %o1
	be	.L65
	 add	%o2, -1, %o2
.L62:
	cmp	%o2, %g2
	bne,a	.L64
	 mov	%o2, %o0
	mov	0, %o0
.L65:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	cmp	%o2, 0
	be	.L74
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L73:
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L73
	 stb	%o1, [%g1]
.L74:
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
	be	.L82
	 nop
.L77:
	ldub	[%o1+1], %g1
	add	%o1, 1, %o1
	stb	%g1, [%o0+1]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L77
	 add	%o0, 1, %o0
.L82:
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	ldsb	[%o0], %g2
	ldub	[%o0], %g1
	cmp	%g2, 0
	bne	.L84
	 and	%o1, 0xff, %o1
.L91:
	jmp	%o7+8
	 nop
.L86:
	add	%o0, 1, %o0
	cmp	%g1, 0
	be	.L91
	 ldub	[%o0], %g1
.L84:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a	.L86
	 ldsb	[%o0+1], %g1
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L94:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L96
	 cmp	%g1, 0
	bne	.L94
	 add	%o0, 1, %o0
	mov	0, %o0
.L96:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldsb	[%o0], %g2
	ldub	[%o0], %g4
	cmp	%g2, 0
	be	.L98
	 ldub	[%o1], %g3
	sll	%g3, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne,a	.L112
	 and	%g4, 0xff, %o0
	b	.L99
	 mov	1, %g1
.L111:
	sll	%g3, 24, %g2
	sra	%g2, 24, %g2
	cmp	%o5, %g2
	bne,a	.L112
	 and	%g4, 0xff, %o0
.L99:
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	add	%g1, 1, %g1
	cmp	%g2, 0
	bne	.L111
	 sra	%g2, 24, %o5
.L98:
	and	%g4, 0xff, %o0
.L112:
	and	%g3, 0xff, %g3
	jmp	%o7+8
	 sub	%o0, %g3, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L114
	 mov	%o0, %g1
.L115:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L115
	 add	%g1, 1, %g1
.L114:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L118
	 mov	0, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be,a	.L134
	 ldub	[%o1], %g1
	add	%o2, -1, %o2
	b	.L121
	 add	%o1, %o2, %o2
.L133:
	be,a	.L134
	 ldub	[%o1], %g1
	ldub	[%o0+1], %g2
	add	%o0, 1, %o0
	cmp	%g2, 0
	be	.L120
	 add	%o1, 1, %o1
.L121:
	ldub	[%o1], %g1
	cmp	%g0, %g1
	xor	%g1, %g2, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	bne	.L133
	 cmp	%o1, %o2
.L120:
	ldub	[%o1], %g1
.L134:
	sub	%g2, %g1, %g2
.L118:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L139
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L137:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L137
	 add	%o1, 2, %o1
.L139:
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
	xor	%o0, 9, %o0
	subx	%g0, -1, %g2
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
	xor	%o0, 127, %o0
	addx	%g0, 0, %g1
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
	xor	%o0, 32, %o0
	addx	%g0, 0, %g1
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
	mov	%o0, %g1
	add	%o0, -127, %g2
	cmp	%g2, 32
	bleu	.L166
	 mov	1, %o0
	cmp	%g1, 31
	bleu	.L166
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L166
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L166:
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
	bleu	.L176
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%o0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	bgeu	.L173
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L173
	 sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L177
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L177
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L173:
	mov	1, %o0
.L177:
	jmp	%o7+8
	 nop
.L176:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L177
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	mov	%o0, %g1
	add	%g1, -48, %g2
	cmp	%g2, 9
	bleu	.L182
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L182:
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
	fbu	.L184
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L188
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L191
	 nop
	fsubd	%f0, %f8, %f0
.L184:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L191:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L188:
	b	.L184
	 fmovs	%f9, %f1
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
	fbu	.L192
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L200
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L199
	 nop
	fsubs	%f0, %f8, %f0
.L192:
.L200:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L199:
	sethi	%hi(.LC2), %g1
	ld	[%g1+%lo(.LC2)], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	fcmpd	%f8, %f8
	nop
	fbu	.L207
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L208
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L211
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L206
	 mov	1, %g1
	mov	0, %g1
.L206:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L207
	 fmovs	%f9, %f1
.L201:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L211:
	cmp	%g1, 0
	bne	.L201
	 fmovs	%f11, %f1
.L208:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L207:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	st	%o1, [%sp+76]
	fcmps	%f8, %f8
	nop
	fbu	.L218
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L219
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L222
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L217
	 mov	1, %g1
	mov	0, %g1
.L217:
	andcc	%g1, 1, %g0
	bne	.L218
	 fmovs	%f8, %f0
.L212:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L222:
	bne	.L212
	 fmovs	%f9, %f0
.L219:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L218:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	fcmpd	%f8, %f8
	nop
	fbu	.L229
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L230
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L233
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L228
	 mov	1, %g1
	mov	0, %g1
.L228:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L229
	 fmovs	%f9, %f1
.L223:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L233:
	cmp	%g1, 0
	bne	.L223
	 fmovs	%f11, %f1
.L230:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L229:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	fbu	.L240
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L241
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L244
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L239
	 mov	1, %g1
	mov	0, %g1
.L239:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L241
	 fmovs	%f11, %f1
.L234:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L244:
	cmp	%g1, 0
	bne	.L234
	 fmovs	%f9, %f1
.L240:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L241:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	fbu	.L251
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L252
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L255
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L250
	 mov	1, %g1
	mov	0, %g1
.L250:
	andcc	%g1, 1, %g0
	bne	.L252
	 fmovs	%f9, %f0
.L245:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L255:
	bne	.L245
	 fmovs	%f8, %f0
.L251:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L252:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	fbu	.L262
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L263
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L266
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L261
	 mov	1, %g1
	mov	0, %g1
.L261:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L263
	 fmovs	%f11, %f1
.L256:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L266:
	cmp	%g1, 0
	bne	.L256
	 fmovs	%f9, %f1
.L262:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L263:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fminl, .-fminl
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	mov	%o0, %g1
	sethi	%hi(s.0), %o0
	cmp	%g1, 0
	be	.L270
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
	mov	%o0, %g2
.L269:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L269
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L270:
	mov	%o0, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
	.size	l64a, .-l64a
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	sethi	%hi(seed), %g1
	add	%o0, -1, %o0
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
	ldd	[%i5+%lo(seed)], %o0
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	call	__muldi3, 0
	 or	%o3, 813, %o3
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
	be,a	.L280
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L282
	 st	%o0, [%g1+4]
.L282:
	jmp	%o7+8
	 nop
.L280:
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
	be,a	.L292
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L292:
	cmp	%g1, 0
	be	.L293
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L293:
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
	be	.L295
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L297
	 mov	0, %l0
.L309:
	cmp	%l1, %l0
	be	.L295
	 add	%i5, %i3, %i5
.L297:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	bne,a	.L309
	 add	%l0, 1, %l0
.L311:
	jmp	%i7+8
	 restore
.L295:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L311
	 add	%i1, %o0, %i0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memmove, 0
	 mov	%i0, %o0
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
	be	.L313
	 mov	%i0, %l0
	b	.L315
	 mov	0, %i5
.L323:
	cmp	%i2, %i5
	be	.L313
	 add	%i1, %i3, %i1
.L315:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bne,a	.L323
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore
.L313:
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
	mov	%o0, %g1
	ldub	[%o0], %g2
.L346:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g3
	add	%g3, -9, %g4
	cmp	%g4, 4
	bleu	.L343
	 cmp	%g3, 32
	bne,a	.L326
	 sra	%g2, 24, %g2
.L343:
	ldub	[%g1+1], %g2
	b	.L346
	 add	%g1, 1, %g1
.L326:
	cmp	%g2, 43
	be	.L331
	 mov	0, %o5
	cmp	%g2, 45
	be,a	.L347
	 mov	1, %o5
.L332:
	ldsb	[%g1], %g3
	ldub	[%g1], %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L334
	 mov	0, %o0
.L333:
	ldsb	[%g1+1], %g4
	sll	%o0, 2, %g3
	add	%g1, 1, %g1
	add	%g3, %o0, %g3
	add	%g2, -48, %g2
	sll	%g3, 1, %g3
	sll	%g2, 24, %g2
	add	%g4, -48, %g4
	sra	%g2, 24, %o0
	ldub	[%g1], %g2
	cmp	%g4, 9
	bleu	.L333
	 sub	%g3, %o0, %o0
.L334:
	cmp	%o5, 0
	be,a	.L348
	 sub	%g0, %o0, %o0
.L348:
	jmp	%o7+8
	 nop
.L347:
.L331:
	b	.L332
	 add	%g1, 1, %g1
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	or	%o7, %g0, %g1
	call	atoi, 0
	 or	%g1, %g0, %o7
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	%i0, %g1
	ldub	[%i0], %g2
.L371:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g3
	add	%g3, -9, %g4
	cmp	%g4, 4
	bleu	.L368
	 cmp	%g3, 32
	bne,a	.L351
	 sra	%g2, 24, %g2
.L368:
	ldub	[%g1+1], %g2
	b	.L371
	 add	%g1, 1, %g1
.L351:
	cmp	%g2, 43
	be	.L356
	 mov	0, %o7
	cmp	%g2, 45
	be,a	.L372
	 mov	1, %o7
.L357:
	ldsb	[%g1], %g3
	ldub	[%g1], %g2
	add	%g3, -48, %g3
	mov	0, %i0
	cmp	%g3, 9
	bgu	.L359
	 mov	0, %i1
.L358:
	ldsb	[%g1+1], %g3
	srl	%i1, 30, %i5
	sll	%i0, 2, %g4
	add	%g2, -48, %g2
	or	%i5, %g4, %o4
	sll	%g2, 24, %g2
	sll	%i1, 2, %o5
	sra	%g2, 24, %i3
	addcc	%o5, %i1, %i5
	addx	%o4, %i0, %i4
	sra	%g2, 31, %i2
	sll	%i5, 1, %g2
	srl	%i5, 31, %i1
	sll	%i4, 1, %g4
	or	%i1, %g4, %i4
	subcc	%g2, %i3, %i1
	subx	%i4, %i2, %i0
	add	%g1, 1, %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bleu	.L358
	 ldub	[%g1], %g2
.L359:
	cmp	%o7, 0
	bne	.L373
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L373:
	jmp	%i7+8
	 restore
.L372:
.L356:
	b	.L357
	 add	%g1, 1, %g1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	mov	%i0, %l0
.L384:
	cmp	%i2, 0
	be	.L386
	 mov	0, %i0
.L385:
	srl	%i2, 1, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	mov	%o0, %i0
	mov	%l0, %o0
	add	%i1, %i0, %i0
	call	%i4, 0
	 mov	%i0, %o1
	cmp	%o0, 0
	bl,a	.L384
	 mov	%i5, %i2
	ble	.L386
	 nop
	add	%i2, -1, %i2
	sub	%i2, %i5, %i2
	cmp	%i2, 0
	bne	.L385
	 add	%i0, %i3, %i1
	mov	0, %i0
.L386:
	jmp	%i7+8
	 restore
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	cmp	%i2, 0
	bne	.L391
	 mov	%i0, %l1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L399:
	ble	.L390
	 add	%i2, -1, %i2
	add	%i0, %i3, %i1
	sra	%i2, 1, %l0
.L390:
	orcc	%l0, 0, %i2
	be	.L401
	 mov	0, %i0
.L391:
	sra	%i2, 1, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	mov	%i5, %o2
	add	%i1, %o0, %i0
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	cmp	%o0, 0
	bne	.L399
	 nop
.L401:
	jmp	%i7+8
	 restore
	jmp	%i7+8
	 restore
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
	mov	%i1, %o1
	st	%o0, [%i5]
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
	mov	%i2, %o2
	mov	%i3, %o3
	std	%o0, [%i5]
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
	mov	%i1, %o1
	st	%o0, [%i5]
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
	mov	%i2, %o2
	mov	%i3, %o3
	std	%o0, [%i5]
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
	bne,a	.L427
	 cmp	%g1, 0
	b	.L426
	 cmp	%g0, %g1
.L425:
	cmp	%g1, %o1
	be	.L410
	 add	%o0, 4, %o0
	cmp	%g1, 0
.L427:
	bne,a	.L425
	 ld	[%o0+4], %g1
.L410:
	cmp	%g0, %g1
.L426:
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
	xor	%g2, %g3, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g4, %g1, %g0
	be	.L429
	 cmp	%g3, 0
	be	.L447
	 cmp	%g2, %g3
	b	.L430
	 mov	4, %g1
.L445:
	cmp	%g3, 0
	be	.L447
	 cmp	%g2, %g3
.L430:
	ld	[%o0+%g1], %g2
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	xor	%g2, %g3, %g4
	addx	%g0, 0, %o5
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L445
	 add	%g1, 4, %g1
.L429:
	cmp	%g2, %g3
.L447:
	bl	.L448
	 mov	-1, %o0
	ble	.L446
	 mov	1, %o0
.L448:
	jmp	%o7+8
	 nop
.L446:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L450:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L450
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
	be	.L453
	 mov	%o0, %g1
.L454:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L454
	 add	%g1, 4, %g1
.L453:
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
	bne,a	.L476
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L474:
	be	.L477
	 cmp	%o2, 0
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L464
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L476:
	ld	[%o1], %g2
	cmp	%g0, %g1
	xor	%g1, %g2, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	bne	.L474
	 cmp	%g2, 0
	cmp	%o2, 0
.L477:
	be,a	.L475
	 mov	0, %o0
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L475
	 mov	-1, %o0
	bg	.L475
	 mov	1, %o0
.L464:
	mov	0, %o0
.L475:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	bne,a	.L488
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L481:
	be	.L484
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L488:
	cmp	%g1, %o1
	bne,a	.L481
	 addcc	%o2, -1, %o2
	cmp	%o2, 0
	be,a	.L489
	 mov	0, %o0
.L489:
	jmp	%o7+8
	 nop
.L484:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	bne,a	.L504
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L493:
	addcc	%o2, -1, %o2
	be	.L496
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L504:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be,a	.L493
	 add	%o0, 4, %o0
	cmp	%o2, 0
	be,a	.L503
	 mov	0, %o0
	cmp	%g2, %g1
	bl	.L503
	 mov	-1, %o0
	bg	.L503
	 mov	1, %o0
.L496:
	mov	0, %o0
.L503:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L510
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L510:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L526
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L523
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L526
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L525:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L525
	 ld	[%o1+%g1], %g2
.L527:
	jmp	%o7+8
	 nop
.L523:
	cmp	%o2, 0
	be	.L527
	 mov	0, %g2
.L514:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L514
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L526:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L535
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L530:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L530
	 add	%g2, 4, %g2
.L535:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L537
	 nop
	cmp	%o2, 0
	be	.L551
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L549:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L549
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L537:
	be	.L551
	 nop
	cmp	%o2, 0
	be	.L551
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L550:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L550
	 ldub	[%o0+%g1], %g2
.L551:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be,a	.L554
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L556
	 and	%o2, 63, %g2
.L558:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g3, %o1
.L554:
	xnor	%g0, %o2, %g3
	sll	%o0, %o2, %g1
	srl	%g2, %g3, %g2
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L558
	 and	%o2, 63, %g2
.L556:
	sll	%o0, 1, %g4
	xnor	%g0, %g2, %o5
	srl	%o1, %g2, %o1
	sll	%g4, %o5, %g4
	srl	%o0, %g2, %o0
	or	%g4, %o1, %o1
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g3, %o1
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be,a	.L560
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L562
	 and	%o2, 63, %g2
.L564:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L560:
	xnor	%g0, %o2, %g3
	srl	%o1, %o2, %g1
	sll	%g2, %g3, %g2
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L564
	 and	%o2, 63, %g2
.L562:
	srl	%o1, 1, %g4
	xnor	%g0, %g2, %o5
	sll	%o0, %g2, %o0
	srl	%g4, %o5, %g4
	sll	%o1, %g2, %o1
	or	%g4, %o0, %o0
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
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
	srl	%o0, 24, %g3
	srl	%o0, 8, %g2
	or	%g1, %g3, %g1
	sll	%o0, 8, %o0
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
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
	sethi	%hi(16711680), %o3
	sll	%o0, 24, %o4
	sll	%o1, 24, %g2
	srl	%o0, 24, %g1
	srl	%o0, 8, %o5
	sll	%o0, 8, %o0
	sethi	%hi(64512), %g4
	or	%g4, 768, %g4
	srl	%o1, 24, %g3
	and	%o5, %g4, %o5
	or	%o0, %g3, %g3
	or	%g1, %o5, %g1
	and	%g3, %o3, %g3
	sll	%o1, 8, %o0
	or	%g1, %g3, %g3
	srl	%o1, 24, %o5
	srl	%o1, 8, %g1
	or	%g2, %o5, %g2
	or	%g1, %o4, %g1
	and	%o0, %o3, %o0
	and	%g1, %g4, %g1
	or	%g3, %o4, %o1
	or	%g2, %g1, %g2
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	b	.L579
	 mov	0, %g1
.L577:
	cmp	%g1, 32
	be	.L581
	 nop
.L579:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L577
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L581:
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
	be	.L589
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L589
	 nop
	mov	1, %o0
.L584:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L584
	 add	%o0, 1, %o0
.L589:
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
	fbl	.L590
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L594
	 nop
.L590:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L594:
	mov	0, %o0
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
	fbl	.L595
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L599
	 nop
.L595:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L599:
	mov	0, %o0
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
	fbl	.L600
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L604
	 nop
.L600:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L604:
	mov	0, %o0
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
	fbu	.L607
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L607
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L610
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L618:
.L610:
	andcc	%o1, 1, %g0
	bne,a	.L609
	 fmuls	%f0, %f8, %f0
.L609:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	bne,a	.L618
	 fmuls	%f8, %f8, %f8
.L607:
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
	fbu	.L620
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L620
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L623
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L631:
.L623:
	andcc	%o2, 1, %g0
	bne,a	.L622
	 fmuld	%f0, %f8, %f0
.L622:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	bne,a	.L631
	 fmuld	%f8, %f8, %f8
.L620:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L633
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L633
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L636
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L644:
.L636:
	andcc	%o2, 1, %g0
	bne,a	.L635
	 fmuld	%f0, %f8, %f0
.L635:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	bne,a	.L644
	 fmuld	%f8, %f8, %f8
.L633:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L653
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L652:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L652
	 ldub	[%o0+%g1], %g2
.L653:
	jmp	%o7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L655
	 mov	%o0, %g1
.L656:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L656
	 add	%g1, 1, %g1
.L655:
	cmp	%o2, 0
	bne,a	.L668
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L659:
	addcc	%o2, -1, %o2
	be	.L663
	 add	%g1, 1, %g1
	ldub	[%o1], %g2
.L668:
	stb	%g2, [%g1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L659
	 add	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L667
	 nop
.L663:
	stb	%g0, [%g1]
.L667:
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L669
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L676:
	cmp	%g2, 0
	bne,a	.L672
	 add	%g1, 1, %g1
.L669:
	jmp	%o7+8
	 mov	%g1, %o0
.L672:
	cmp	%o1, %g1
	bne,a	.L676
	 ldsb	[%o0+%g1], %g2
	b,a	.L669
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L684
	 mov	0, %o0
.L678:
	mov	%o1, %g1
	b	.L681
	 sra	%g3, 24, %g3
.L680:
	be	.L684
	 add	%g1, 1, %g1
.L681:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L680
	 cmp	%g2, %g3
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L678
	 add	%o0, 1, %o0
	mov	0, %o0
.L684:
	jmp	%o7+8
	 nop
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g2
	mov	0, %o0
.L687:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%g3, %o1
	be,a	.L686
	 mov	%g2, %o0
.L686:
	cmp	%g1, 0
	bne	.L687
	 add	%g2, 1, %g2
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	ldub	[%o1], %o4
	sll	%o4, 24, %o4
	cmp	%o4, 0
	be	.L691
	 mov	%o1, %g1
.L692:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L692
	 add	%g1, 1, %g1
.L691:
	subcc	%g1, %o1, %g1
	be	.L720
	 nop
	add	%o1, -1, %o3
	sra	%o4, 24, %o4
	b	.L700
	 add	%o3, %g1, %o3
.L717:
	cmp	%g2, 0
	be	.L716
	 add	%o0, 1, %o0
.L700:
	ldsb	[%o0], %g2
	cmp	%g2, %o4
	bne	.L717
	 ldub	[%o0], %g1
	cmp	%o0, 0
	be	.L720
	 nop
	mov	%o1, %g3
	andcc	%g1, 0xff, %g1
	bne	.L695
	 mov	%o0, %g4
	b	.L719
	 ldub	[%g3], %g2
.L718:
	be,a	.L719
	 ldub	[%g3], %g2
	ldub	[%g4+1], %g1
	add	%g4, 1, %g4
	cmp	%g1, 0
	be	.L696
	 add	%g3, 1, %g3
.L695:
	ldub	[%g3], %g2
	cmp	%g0, %g2
	xor	%g2, %g1, %g2
	addx	%g0, 0, %o5
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	andcc	%o5, %g2, %g0
	bne	.L718
	 cmp	%g3, %o3
.L696:
	ldub	[%g3], %g2
.L719:
	cmp	%g2, %g1
	be	.L720
	 nop
	b	.L700
	 add	%o0, 1, %o0
.L716:
	jmp	%o7+8
	 mov	0, %o0
.L720:
	jmp	%o7+8
	 nop
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
	fbl,a	.L730
	 std	%o2, [%sp+72]
.L722:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L725
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L731
	 fnegs	%f0, %f0
.L725:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L730:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L722
	 nop
	fnegs	%f0, %f0
.L731:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	cmp	%i3, 0
	be	.L758
	 mov	%i0, %i4
	cmp	%i1, %i3
	blu	.L742
	 nop
	sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu	.L742
	 nop
	b	.L739
	 ldsb	[%i2], %o7
.L734:
	cmp	%i4, %i1
.L756:
	bgu	.L742
	 nop
.L739:
	ldub	[%i4], %g1
	mov	%i4, %i0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o7
	bne	.L734
	 add	%i4, 1, %i4
	addcc	%i3, -1, %g1
	be	.L758
	 add	%i2, 1, %g2
	b	.L735
	 mov	%i4, %g3
.L737:
	addcc	%g1, -1, %g1
	be	.L758
	 add	%g2, 1, %g2
.L735:
	ldub	[%g3], %i5
	ldub	[%g2], %g4
	cmp	%i5, %g4
	be,a	.L737
	 add	%g3, 1, %g3
	cmp	%g1, 0
	be	.L757
	 nop
	cmp	%i5, %g4
	bne,a	.L756
	 cmp	%i4, %i1
.L758:
	jmp	%i7+8
	 restore
.L742:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L757:
	jmp	%i7+8
	 restore
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L760
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L760:
	jmp	%i7+8
	 restore %i0, %i2, %o0
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
	fbl	.L793
	 mov	0, %g2
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	mov	0, %g1
	sethi	%hi(.LC32), %g3
	fcmped	%f0, %f8
	nop
	fbul	.L792
	 ldd	[%g3+%lo(.LC32)], %f10
.L769:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L769
	 add	%g1, 1, %g1
.L797:
	cmp	%g2, 0
.L796:
	be	.L774
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L774:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L793:
	fnegs	%f0, %f0
	mov	1, %g2
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	mov	0, %g1
	sethi	%hi(.LC32), %g3
	fcmped	%f0, %f8
	nop
	fbge	.L769
	 ldd	[%g3+%lo(.LC32)], %f10
.L792:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L771
	 mov	1, %g1
	mov	0, %g1
.L771:
	andcc	%g1, 1, %g0
	be,a	.L797
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbuge	.L794
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L773
	 mov	0, %g1
	b	.L796
	 cmp	%g2, 0
.L794:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L797
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L773:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L773
	 add	%g1, -1, %g1
	b	.L796
	 cmp	%g2, 0
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	%i0, %g1
	mov	0, %o2
	orcc	%i1, %i0, %g0
	be	.L798
	 mov	0, %o3
	mov	0, %g2
.L804:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o5
	subx	%g0, %g2, %o4
	and	%o4, %i2, %i4
	and	%o5, %i3, %i5
	addcc	%o3, %i5, %o3
	addx	%o2, %i4, %o2
	srl	%i3, 31, %g4
	sll	%g1, 31, %i0
	sll	%i2, 1, %i2
	srl	%i1, 1, %i1
	srl	%g1, 1, %g1
	or	%i0, %i1, %i1
	or	%g4, %i2, %i2
	orcc	%g1, %i1, %g0
	bne	.L804
	 sll	%i3, 1, %i3
.L798:
	mov	%o2, %i0
	jmp	%i7+8
	 restore %g0, %o3, %o1
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	mov	%o0, %g2
	cmp	%o1, %o0
	blu	.L806
	 mov	1, %g1
	b	.L809
	 mov	0, %o0
.L811:
	cmp	%o1, %g2
	bgeu	.L807
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L810
	 mov	0, %o0
.L806:
	cmp	%o1, 0
	bge,a	.L811
	 sll	%o1, 1, %o1
.L807:
	cmp	%g1, 0
	be	.L810
	 mov	0, %o0
	mov	0, %o0
.L809:
	cmp	%g2, %o1
	blu,a	.L824
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L824:
	cmp	%g1, 0
	bne	.L809
	 srl	%o1, 1, %o1
.L810:
	cmp	%o2, 0
	bne	.L823
	 nop
	jmp	%o7+8
	 nop
.L823:
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
	mov	7, %i0
	sra	%g1, 7, %g2
	cmp	%g2, %g1
	be	.L828
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L828:
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
	be	.L835
	 xor	%i1, %g1, %o1
.L833:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L835:
	cmp	%i1, %i0
	bne	.L833
	 nop
	jmp	%i7+8
	 restore %g0, 63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	mov	%o0, %g2
	cmp	%g2, 0
	be	.L842
	 mov	0, %o0
.L838:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	bne	.L838
	 sll	%o1, 1, %o1
.L842:
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
	blu	.L844
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L857
	 cmp	%o2, 0
.L844:
	cmp	%g3, 0
	be	.L859
	 cmp	%o2, %g1
	sll	%g3, 3, %g3
	mov	0, %g2
.L848:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L848
	 std	%o4, [%g4]
	cmp	%o2, %g1
.L859:
	bleu	.L862
	 nop
	ldub	[%o1+%g1], %g2
.L860:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L860
	 ldub	[%o1+%g1], %g2
.L863:
	jmp	%o7+8
	 nop
.L857:
	be	.L863
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L861:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L861
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L862:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L865
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L879
	 cmp	%o2, 0
.L865:
	cmp	%g3, 0
	be	.L881
	 andcc	%o2, 1, %g0
	sll	%g3, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L882:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L882
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L881:
	be	.L884
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L879:
	be	.L885
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L883:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L883
	 ldub	[%o1+%g1], %g2
.L885:
	jmp	%o7+8
	 nop
.L884:
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
	blu	.L887
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L900
	 cmp	%o2, 0
.L887:
	cmp	%g4, 0
	be	.L902
	 cmp	%o2, %g1
	sll	%g4, 2, %g4
	mov	0, %g2
	ld	[%o1+%g2], %g3
.L903:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L903
	 ld	[%o1+%g2], %g3
	cmp	%o2, %g1
.L902:
	bleu	.L906
	 nop
	ldub	[%o1+%g1], %g2
.L904:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L904
	 ldub	[%o1+%g1], %g2
.L907:
	jmp	%o7+8
	 nop
.L900:
	be	.L907
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L905:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L905
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L906:
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
	bge	.L910
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L910:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	bge	.L912
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L912:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
.L920:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L916
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L920
	 sub	%g3, %g1, %g2
.L916:
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
.L925:
	andcc	%g2, 1, %g0
	bne	.L921
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L925
	 sra	%o0, %g1, %g2
.L921:
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
	fbge,a	.L932
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L932:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	add	%g2, %g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L934:
	sra	%o0, %g1, %g2
	add	%g1, 1, %g1
	and	%g2, 1, %g2
	cmp	%g1, 16
	bne	.L934
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
.L937:
	sra	%o0, %g1, %g2
	add	%g1, 1, %g1
	and	%g2, 1, %g2
	cmp	%g1, 16
	bne	.L937
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 mov	%g3, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	mov	%o0, %g2
	cmp	%g2, 0
	be	.L945
	 mov	0, %o0
.L941:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	bne	.L941
	 sll	%o1, 1, %o1
.L945:
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
	be	.L953
	 mov	0, %o0
	cmp	%o1, 0
	be	.L953
	 nop
.L948:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	bne	.L948
	 sll	%g2, 1, %g2
.L953:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L955
	 mov	1, %g1
	b	.L958
	 mov	0, %o0
.L960:
	cmp	%o1, %g2
	bgeu	.L956
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L959
	 mov	0, %o0
.L955:
	cmp	%o1, 0
	bge,a	.L960
	 sll	%o1, 1, %o1
.L956:
	cmp	%g1, 0
	be	.L959
	 mov	0, %o0
	mov	0, %o0
.L958:
	cmp	%g2, %o1
	blu,a	.L973
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L973:
	cmp	%g1, 0
	bne	.L958
	 srl	%o1, 1, %o1
.L959:
	cmp	%o2, 0
	bne	.L972
	 nop
	jmp	%o7+8
	 nop
.L972:
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
	ld	[%sp+76], %f8
	st	%o1, [%sp+76]
	ld	[%sp+76], %f9
	fcmpes	%f8, %f9
	nop
	fbl	.L974
	 mov	-1, %g1
	nop
	fbule	.L978
	 mov	1, %g1
.L974:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L978:
	mov	0, %g1
	mov	%g1, %o0
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
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L979
	 mov	-1, %g1
	nop
	fbule	.L983
	 mov	1, %g1
.L979:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L983:
	mov	0, %g1
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -96, %sp
	sra	%i0, 31, %o0
	sra	%i1, 31, %o2
	mov	%i1, %o3
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
	mov	%o0, %g2
	cmp	%o1, 0
	bge	.L999
	 mov	0, %o4
	sub	%g0, %o1, %o1
	mov	1, %o4
	cmp	%o1, 0
.L999:
	be	.L988
	 mov	0, %o0
	mov	1, %g3
.L990:
	and	%o1, 1, %g1
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	and	%g3, 0xff, %g4
	addx	%g0, 0, %o5
	cmp	%g4, 32
	sub	%g0, %g1, %g1
	addx	%g0, 0, %g4
	and	%g1, %g2, %g1
	add	%g3, 1, %g3
	add	%o0, %g1, %o0
	andcc	%o5, %g4, %g0
	bne	.L990
	 sll	%g2, 1, %g2
.L988:
	cmp	%o4, 0
	bne,a	.L998
	 sub	%g0, %o0, %o0
.L998:
	jmp	%o7+8
	 nop
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	bge	.L1001
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	1, %g3
.L1001:
	cmp	%o1, 0
	bge	.L1024
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	xor	%g3, 1, %g3
.L1024:
	cmp	%o0, %o1
	bgu	.L1004
	 mov	1, %g1
	b	.L1008
	 mov	0, %o0
.L1022:
	cmp	%g1, 0
	be,a	.L1006
	 mov	0, %o0
.L1004:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1022
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1006
	 mov	0, %o0
.L1008:
	cmp	%g2, %o1
	blu,a	.L1026
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1026:
	cmp	%g1, 0
	bne	.L1008
	 srl	%o1, 1, %o1
.L1006:
	cmp	%g3, 0
	bne,a	.L1023
	 sub	%g0, %o0, %o0
.L1023:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1028
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	1, %g3
.L1028:
	sra	%o1, 31, %g1
	mov	%o0, %g2
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bgu	.L1030
	 mov	1, %g1
	b	.L1053
	 cmp	%g2, %o1
.L1051:
	cmp	%g1, 0
	be	.L1055
	 cmp	%g3, 0
.L1030:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1051
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1055
	 cmp	%g3, 0
.L1044:
	cmp	%g2, %o1
.L1053:
	bgeu,a	.L1033
	 sub	%g2, %o1, %g2
.L1033:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1044
	 srl	%o1, 1, %o1
	cmp	%g3, 0
.L1055:
	be	.L1056
	 mov	%g2, %o0
	sub	%g0, %g2, %o0
.L1056:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1058
	 mov	1, %g2
	b	.L1078
	 sll	%g2, 16, %g1
.L1063:
	sll	%g2, 1, %g1
	srl	%o1, 16, %o1
	cmp	%o1, %o0
	bgeu	.L1059
	 mov	%g1, %g2
	sll	%g1, 16, %g1
	cmp	%g1, 0
	be	.L1080
	 sll	%g2, 16, %g1
.L1058:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge,a	.L1063
	 sll	%o1, 17, %o1
.L1059:
	sll	%g2, 16, %g1
.L1078:
.L1080:
	cmp	%g1, 0
	bne	.L1061
	 mov	0, %g3
	b	.L1076
	 mov	%g2, %g3
.L1077:
	sll	%g2, 16, %g1
.L1061:
	cmp	%o0, %o1
	blu	.L1081
	 srl	%g1, 17, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g3, %g3
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
.L1081:
	srl	%o1, 1, %o1
	cmp	%g1, 0
	bne	.L1077
	 mov	%g1, %g2
	cmp	%o2, 0
.L1079:
	bne,a	.L1065
	 mov	%o0, %g3
.L1065:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L1076:
	b	.L1079
	 cmp	%o2, 0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1083
	 mov	1, %g1
	b	.L1086
	 mov	0, %o0
.L1088:
	cmp	%o1, %g2
	bgeu	.L1084
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1087
	 mov	0, %o0
.L1083:
	cmp	%o1, 0
	bge,a	.L1088
	 sll	%o1, 1, %o1
.L1084:
	cmp	%g1, 0
	be	.L1087
	 mov	0, %o0
	mov	0, %o0
.L1086:
	cmp	%g2, %o1
	blu,a	.L1101
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1101:
	cmp	%g1, 0
	bne	.L1086
	 srl	%o1, 1, %o1
.L1087:
	cmp	%o2, 0
	bne	.L1100
	 nop
	jmp	%o7+8
	 nop
.L1100:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1103
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1103:
	be	.L1107
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1107:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1109
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1113:
	jmp	%o7+8
	 nop
.L1109:
	be	.L1113
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g2
	sra	%o0, %o2, %g1
	or	%g2, %o1, %o1
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	sethi	%hi(16711680), %o3
	sll	%o0, 24, %o4
	srl	%o0, 24, %g1
	sll	%o1, 24, %g2
	srl	%o0, 8, %o5
	sll	%o0, 8, %o0
	sethi	%hi(64512), %g4
	or	%g4, 768, %g4
	srl	%o1, 24, %g3
	and	%o5, %g4, %o5
	or	%o0, %g3, %g3
	or	%g1, %o5, %g1
	and	%g3, %o3, %g3
	sll	%o1, 8, %o0
	or	%g1, %g3, %g3
	srl	%o1, 24, %o5
	srl	%o1, 8, %g1
	or	%g2, %o5, %g2
	or	%g1, %o4, %g1
	and	%o0, %o3, %o0
	and	%g1, %g4, %g1
	or	%g3, %o4, %o1
	or	%g2, %g1, %g2
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	srl	%o0, 24, %g1
	sll	%o0, 24, %g3
	srl	%o0, 8, %g2
	or	%g1, %g3, %g1
	sll	%o0, 8, %o0
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
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
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g2
	cmp	%g2, %o0
	subx	%g0, -1, %g4
	or	%g1, 768, %g2
	sll	%g4, 4, %g4
	mov	16, %g1
	sub	%g1, %g4, %g1
	srl	%o0, %g1, %g1
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%g1, %g3, %g1
	and	%g1, 240, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 2, %g3
	mov	4, %o5
	sub	%o5, %g3, %o5
	srl	%g1, %o5, %g1
	and	%g1, 12, %o5
	cmp	%g0, %o5
	add	%g2, %g4, %g4
	subx	%g0, -1, %g2
	mov	2, %o5
	sll	%g2, 1, %g2
	add	%g3, %g4, %g3
	sub	%o5, %g2, %g4
	srl	%g1, %g4, %g1
	andcc	%g1, 2, %g0
	bne	.L1118
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1118:
	add	%g2, %g3, %g2
	jmp	%o7+8
	 add	%o0, %g2, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o0, %o2
	bl	.L1120
	 mov	0, %g1
	bg	.L1120
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1120
	 mov	0, %g1
	bgu	.L1120
	 mov	2, %g1
	mov	1, %g1
.L1120:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1127
	 mov	0, %g1
	bg	.L1127
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1127
	 mov	0, %g1
	bgu	.L1127
	 mov	2, %g1
	mov	1, %g1
.L1127:
	jmp	%o7+8
	 add	%g1, -1, %o0
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
	and	%g1, 15, %g4
	cmp	%g0, %g4
	add	%g2, %g3, %g3
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	srl	%g1, %g2, %g1
	add	%g2, %g3, %g2
	and	%g1, 3, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %o0
	sll	%o0, 1, %o0
	srl	%g1, %o0, %g1
	add	%o0, %g2, %o0
	and	%g1, 3, %g1
	xnor	%g0, %g1, %g2
	srl	%g1, 1, %g1
	and	%g2, 1, %g2
	mov	2, %g3
	sub	%g3, %g1, %g3
	sub	%g0, %g2, %g1
	and	%g1, %g3, %g1
	jmp	%o7+8
	 add	%g1, %o0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	andcc	%o2, 32, %g0
	be,a	.L1134
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1134:
	be	.L1138
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1138:
	jmp	%o7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i3
	or	%i3, 1023, %i3
	and	%i0, %i3, %l0
	and	%i1, %i3, %i4
	mov	%l0, %o0
	call	.umul, 0
	 mov	%i4, %o1
	srl	%i0, 16, %i0
	mov	%o0, %i5
	mov	%i0, %o1
	srl	%o0, 16, %i2
	call	.umul, 0
	 mov	%i4, %o0
	and	%i5, %i3, %i5
	add	%o0, %i2, %i4
	srl	%i1, 16, %i1
	sll	%i4, 16, %g1
	mov	%i1, %o1
	add	%i5, %g1, %i5
	srl	%g1, 16, %i2
	call	.umul, 0
	 mov	%l0, %o0
	and	%i5, %i3, %i5
	add	%o0, %i2, %i2
	srl	%i4, 16, %i4
	sll	%i2, 16, %g1
	mov	%i1, %o1
	add	%i5, %g1, %i1
	call	.umul, 0
	 mov	%i0, %o0
	srl	%i2, 16, %i0
	add	%i4, %o0, %i4
	jmp	%i7+8
	 restore %i4, %i0, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -96, %sp
	mov	%i1, %l0
	sethi	%hi(64512), %i1
	or	%i1, 1023, %i1
	and	%l0, %i1, %l4
	and	%i3, %i1, %i4
	mov	%l4, %o0
	call	.umul, 0
	 mov	%i4, %o1
	srl	%l0, 16, %l2
	mov	%o0, %i5
	mov	%l2, %o1
	srl	%o0, 16, %l1
	call	.umul, 0
	 mov	%i4, %o0
	and	%i5, %i1, %i4
	add	%o0, %l1, %i5
	srl	%i3, 16, %l3
	sll	%i5, 16, %g1
	mov	%l3, %o1
	add	%i4, %g1, %i4
	srl	%g1, 16, %l1
	call	.umul, 0
	 mov	%l4, %o0
	and	%i4, %i1, %i4
	add	%o0, %l1, %l1
	srl	%i5, 16, %i5
	sll	%l1, 16, %g1
	mov	%l3, %o1
	add	%i4, %g1, %i1
	call	.umul, 0
	 mov	%l2, %o0
	srl	%l1, 16, %l1
	add	%i5, %o0, %i5
	mov	%i2, %o1
	add	%i5, %l1, %i5
	call	.umul, 0
	 mov	%l0, %o0
	mov	%i0, %o1
	add	%o0, %i5, %i5
	call	.umul, 0
	 mov	%i3, %o0
	jmp	%i7+8
	 restore %i5, %o0, %o0
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
	save	%sp, -96, %sp
	sll	%i0, 31, %g4
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	srl	%i1, 1, %g3
	srl	%i0, 1, %g1
	or	%g4, %g3, %g3
	and	%g1, %g2, %i4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g3, %g2, %i5
	subcc	%i1, %i5, %g3
	subx	%i0, %i4, %g2
	sll	%g2, 30, %i4
	srl	%g3, 2, %g4
	srl	%g2, 2, %i5
	or	%i4, %g4, %g4
	and	%i5, %g1, %o4
	and	%g2, %g1, %i2
	and	%g4, %g1, %o5
	and	%g3, %g1, %i3
	addcc	%o5, %i3, %i5
	addx	%o4, %i2, %i4
	sll	%i4, 28, %g4
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	srl	%i5, 4, %g3
	or	%g4, %g3, %g3
	srl	%i4, 4, %g2
	addcc	%g3, %i5, %i3
	addx	%g2, %i4, %i2
	and	%i2, %g1, %g2
	and	%i3, %g1, %g1
	add	%g2, %g1, %g2
	srl	%g2, 16, %g1
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
	srl	%o0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%g2, %g1, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sub	%o0, %g2, %o0
	srl	%o0, 2, %g2
	and	%o0, %g1, %o0
	and	%g2, %g1, %g2
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
	ldd	[%g2+%lo(.LC42)], %f0
.L1154:
	andcc	%g1, 1, %g0
	bne,a	.L1147
	 fmuld	%f0, %f8, %f0
.L1147:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1154
	 fmuld	%f8, %f8, %f8
	cmp	%o2, 0
	bge	.L1146
	 sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
.L1146:
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
	mov	%o1, %g1
	sethi	%hi(.LC44), %g2
	ld	[%g2+%lo(.LC44)], %f0
.L1163:
	andcc	%g1, 1, %g0
	bne,a	.L1156
	 fmuls	%f0, %f8, %f0
.L1156:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1163
	 fmuls	%f8, %f8, %f8
	cmp	%o1, 0
	bge	.L1155
	 sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
.L1155:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1164
	 mov	0, %g1
	bgu	.L1164
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1164
	 mov	0, %g1
	bgu	.L1164
	 mov	2, %g1
	mov	1, %g1
.L1164:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1171
	 mov	0, %g1
	bgu	.L1171
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1171
	 mov	0, %g1
	bgu	.L1171
	 mov	2, %g1
	mov	1, %g1
.L1171:
	jmp	%o7+8
	 add	%g1, -1, %o0
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
