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
	cmp	%g1, %o2
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
	ldub	[%o2], %g1
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
	ldub	[%o0], %o4
	ldsb	[%o0], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	ldsb	[%o1], %g3
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g2, %g1, %g0
	be	.L81
	 ldub	[%o1], %o5
	mov	1, %g1
.L82:
	ldub	[%o0+%g1], %o4
	ldsb	[%o0+%g1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%o1+%g1], %o5
	ldsb	[%o1+%g1], %g4
	xor	%g2, %g4, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	andcc	%g3, %g2, %g0
	bne	.L82
	 add	%g1, 1, %g1
.L81:
	and	%o4, 0xff, %o0
	and	%o5, 0xff, %o5
	jmp	%o7+8
	 sub	%o0, %o5, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L89
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L90:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L90
	 add	%g1, 1, %g1
.L85:
.L89:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	add	%o2, -1, %o3
	cmp	%o2, 0
	be	.L91
	 mov	0, %g4
	ldub	[%o0], %g4
	mov	%o1, %g2
	andcc	%g4, 0xff, %g0
	be	.L94
	 add	%o1, %o3, %o3
.L93:
	xor	%g2, %o3, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o5
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	and	%g4, 0xff, %o4
	xor	%g1, %o4, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g3, %g1, %g1
	andcc	%g1, %o5, %g0
	be	.L99
	 and	%g4, 0xff, %g4
	add	%o0, 1, %o0
	ldub	[%o0], %g4
	andcc	%g4, 0xff, %g0
	bne	.L93
	 add	%g2, 1, %g2
.L94:
	and	%g4, 0xff, %g4
.L99:
	ldub	[%g2], %g1
	sub	%g4, %g1, %g4
.L91:
	jmp	%o7+8
	 mov	%g4, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L104
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L102:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L102
	 add	%o1, 2, %o1
.L104:
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
	bne	.L131
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L131
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L131:
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
	bleu	.L141
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
	bne	.L142
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L142
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L142
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L142:
	jmp	%o7+8
	 nop
.L141:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L136
	 mov	1, %o0
	mov	0, %o0
.L136:
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
	bleu	.L147
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L147:
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
	fbu	.L149
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L153
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L156
	 nop
	fsubd	%f0, %f8, %f0
.L149:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L153:
	b	.L149
	 fmovs	%f9, %f1
.L156:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L149
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
	fbu	.L157
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L165
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L164
	 nop
	fsubs	%f0, %f8, %f0
.L157:
.L165:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L164:
	sethi	%hi(.LC2), %g1
	b	.L157
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
	fbu	.L172
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L166
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L168
	 fcmped	%f0, %f8
	cmp	%g1, 0
	be	.L166
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L166:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L168:
	nop
	fbl	.L169
	 mov	1, %g1
	mov	0, %g1
.L169:
	andcc	%g1, 0xff, %g0
	be	.L166
	 nop
	fmovs	%f8, %f0
	b	.L166
	 fmovs	%f9, %f1
.L172:
	fmovs	%f8, %f0
	b	.L166
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
	fbu	.L181
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L175
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L177
	 fcmpes	%f0, %f8
	cmp	%g1, 0
	bne,a	.L175
	 fmovs	%f8, %f0
.L175:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L177:
	nop
	fbl	.L178
	 mov	1, %g1
	mov	0, %g1
.L178:
	andcc	%g1, 0xff, %g0
	bne,a	.L175
	 fmovs	%f8, %f0
	b,a	.L175
.L181:
	b	.L175
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
	fbu	.L190
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L184
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L186
	 fcmped	%f0, %f8
	cmp	%g1, 0
	be	.L184
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L184:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L186:
	nop
	fbl	.L187
	 mov	1, %g1
	mov	0, %g1
.L187:
	andcc	%g1, 0xff, %g0
	be	.L184
	 nop
	fmovs	%f8, %f0
	b	.L184
	 fmovs	%f9, %f1
.L190:
	fmovs	%f8, %f0
	b	.L184
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
	fbu	.L193
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L200
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L195
	 fcmped	%f8, %f0
	cmp	%g1, 0
	be	.L193
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L193:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L195:
	nop
	fbl	.L196
	 mov	1, %g1
	mov	0, %g1
.L196:
	andcc	%g1, 0xff, %g0
	be	.L193
	 nop
	fmovs	%f8, %f0
	b	.L193
	 fmovs	%f9, %f1
.L200:
	fmovs	%f8, %f0
	b	.L193
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
	fbu	.L202
	 ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L209
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L204
	 fcmpes	%f8, %f0
	cmp	%g1, 0
	bne,a	.L202
	 fmovs	%f8, %f0
.L202:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L204:
	nop
	fbl	.L205
	 mov	1, %g1
	mov	0, %g1
.L205:
	andcc	%g1, 0xff, %g0
	bne,a	.L202
	 fmovs	%f8, %f0
	b,a	.L202
.L209:
	b	.L202
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
	fbu	.L211
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L218
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L213
	 fcmped	%f8, %f0
	cmp	%g1, 0
	be	.L211
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L211:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L213:
	nop
	fbl	.L214
	 mov	1, %g1
	mov	0, %g1
.L214:
	andcc	%g1, 0xff, %g0
	be	.L211
	 nop
	fmovs	%f8, %f0
	b	.L211
	 fmovs	%f9, %f1
.L218:
	fmovs	%f8, %f0
	b	.L211
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
	cmp	%o0, 0
	be	.L223
	 mov	%o0, %g1
	sethi	%hi(s.0), %g2
	or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L222:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L222
	 add	%g2, 1, %g2
.L221:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
.L223:
	sethi	%hi(s.0), %g2
	b	.L221
	 or	%g2, %lo(s.0), %g2
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
	be,a	.L230
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L232
	 st	%o0, [%g1+4]
.L232:
	jmp	%o7+8
	 nop
.L230:
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
	be,a	.L236
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L236:
	cmp	%g1, 0
	be	.L237
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L237:
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
	be	.L239
	 mov	%i0, %l2
	mov	%i1, %i5
	mov	0, %l0
.L241:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be	.L243
	 nop
	add	%l0, 1, %l0
	cmp	%l1, %l0
	bne	.L241
	 add	%i5, %i3, %i5
.L239:
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
.L243:
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
	be	.L247
	 mov	%i0, %l0
	mov	0, %i5
.L246:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be	.L249
	 nop
	add	%i5, 1, %i5
	cmp	%i2, %i5
	bne	.L246
	 add	%i1, %i3, %i1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L247:
	mov	0, %i0
.L249:
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
	b	.L263
	 ldub	[%i0], %i4
.L253:
	ldub	[%i0], %i4
.L263:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L253
	 add	%i0, 1, %i0
	sll	%i4, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L259
	 cmp	%g1, 45
	bne	.L255
	 mov	%o0, %g3
	mov	1, %g3
.L254:
	add	%i0, 1, %i0
.L255:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu	.L257
	 ldub	[%i0], %g1
.L256:
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
	bleu	.L256
	 ldub	[%i0], %g1
.L257:
	cmp	%g3, 0
	be,a	.L251
	 sub	%g0, %o0, %o0
.L251:
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L259:
	b	.L254
	 mov	%o0, %g3
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
	b	.L276
	 ldub	[%i0], %i4
.L266:
	ldub	[%i0], %i4
.L276:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L266
	 add	%i0, 1, %i0
	sll	%i4, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L272
	 cmp	%g1, 45
	bne	.L268
	 mov	%o0, %g3
	mov	1, %g3
.L267:
	add	%i0, 1, %i0
.L268:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu	.L270
	 ldub	[%i0], %g1
.L269:
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
	bleu	.L269
	 ldub	[%i0], %g1
.L270:
	cmp	%g3, 0
	be,a	.L264
	 sub	%g0, %o0, %o0
.L264:
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L272:
	b	.L267
	 mov	%o0, %g3
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	%i0, %i5
.L279:
	ldub	[%i5], %i4
	call	isspace, 0
	 ldsb	[%i5], %o0
	cmp	%o0, 0
	bne,a	.L279
	 add	%i5, 1, %i5
	sll	%i4, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L280
	 cmp	%g1, 45
	bne,a	.L288
	 ldub	[%i5], %g1
	mov	1, %o0
.L280:
	add	%i5, 1, %i5
	ldub	[%i5], %g1
.L288:
	ldsb	[%i5], %g2
	add	%g2, -48, %g2
	mov	0, %i0
	cmp	%g2, 9
	bgu	.L283
	 mov	0, %i1
.L282:
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
	bleu	.L282
	 ldub	[%i5], %g1
.L283:
	cmp	%o0, 0
	bne	.L289
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L289:
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
	bne	.L298
	 srl	%i2, 1, %l0
	b	.L290
	 mov	0, %i5
.L295:
.L292:
	cmp	%i2, 0
	be	.L297
	 srl	%i2, 1, %l0
.L298:
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L295
	 mov	%l0, %i2
	ble	.L290
	 nop
	add	%i5, %i3, %i1
	add	%i2, -1, %i2
	b	.L292
	 sub	%i2, %l0, %i2
.L297:
	mov	0, %i5
.L290:
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
	bne	.L302
	 mov	%i2, %l0
	mov	0, %i0
.L307:
	jmp	%i7+8
	 restore
.L301:
	sra	%l0, 1, %l0
.L306:
	cmp	%l0, 0
	be	.L305
	 nop
.L302:
	mov	%i3, %o1
	call	.umul, 0
	 sra	%l0, 1, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	cmp	%o0, 0
	be	.L307
	 nop
	ble,a	.L306
	 sra	%l0, 1, %l0
	add	%i0, %i3, %i1
	b	.L301
	 add	%l0, -1, %l0
.L305:
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
	ld	[%o0], %g1
	xor	%o1, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L320
	 cmp	%g0, %g1
	add	%o0, 4, %o0
.L321:
	ld	[%o0], %g1
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a	.L321
	 add	%o0, 4, %o0
	cmp	%g0, %g1
.L320:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o0], %g4
	ld	[%o1], %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g1
	xor	%g4, %g3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	and	%g1, %g2, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	be	.L329
	 cmp	%g4, %g3
	mov	4, %g1
.L324:
	ld	[%o0+%g1], %g4
	ld	[%o1+%g1], %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	xor	%g4, %g3, %o5
	cmp	%g0, %o5
	subx	%g0, -1, %o5
	and	%g2, %o5, %g2
	cmp	%g0, %g3
	addx	%g0, 0, %o5
	andcc	%g2, %o5, %g0
	bne	.L324
	 add	%g1, 4, %g1
	cmp	%g4, %g3
.L329:
	bl	.L330
	 mov	-1, %o0
	bg	.L326
	 mov	1, %o0
	mov	0, %o0
.L326:
	and	%o0, 0xff, %o0
.L330:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L332:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L332
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
	be	.L335
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L339:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L339
	 add	%g1, 4, %g1
.L335:
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
	be	.L350
	 nop
.L341:
	ld	[%o0], %g1
	ld	[%o1], %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g2, %g1, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	be	.L351
	 addcc	%o2, -1, %o2
	add	%o0, 4, %o0
	bne	.L341
	 add	%o1, 4, %o1
	jmp	%o7+8
	 mov	0, %o0
.L350:
	jmp	%o7+8
	 mov	0, %o0
.L346:
	bg	.L345
	 mov	1, %o0
	mov	0, %o0
.L345:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
.L351:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bge	.L346
	 nop
	jmp	%o7+8
	 mov	-1, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	be	.L358
	 nop
.L353:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L360
	 nop
	addcc	%o2, -1, %o2
	bne	.L353
	 add	%o0, 4, %o0
	jmp	%o7+8
	 mov	0, %o0
.L358:
	jmp	%o7+8
	 mov	0, %o0
.L360:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	be	.L371
	 nop
.L362:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bne	.L373
	 addcc	%o2, -1, %o2
	add	%o0, 4, %o0
	bne	.L362
	 add	%o1, 4, %o1
	jmp	%o7+8
	 mov	0, %o0
.L371:
	jmp	%o7+8
	 mov	0, %o0
.L367:
	bg	.L366
	 mov	1, %o0
	mov	0, %o0
.L366:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
.L373:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bge	.L367
	 nop
	jmp	%o7+8
	 mov	-1, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	cmp	%o2, 0
	be	.L378
	 add	%o2, -1, %g2
	mov	0, %g1
.L376:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L376
	 add	%g1, 4, %g1
.L378:
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L390
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu	.L381
	 cmp	%o2, 0
	add	%o2, -1, %g2
	be	.L391
	 mov	0, %g1
.L382:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L382
	 add	%g1, 4, %g1
.L391:
	jmp	%o7+8
	 nop
.L381:
	be	.L391
	 add	%o2, -1, %g1
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L389:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L389
	 ld	[%o1+%g1], %g2
.L390:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L396
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L394:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L394
	 st	%o1, [%g2-4]
.L396:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L398
	 nop
	cmp	%o2, 0
	be	.L406
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L404:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L404
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L398:
	be	.L406
	 nop
	cmp	%o2, 0
	be	.L406
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L405:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L405
	 ldub	[%o0+%g1], %g2
.L406:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L409
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g2
.L410:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L411
	 sll	%o0, 1, %g3
	srl	%o0, %g3, %o1
	mov	0, %o0
.L412:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g2, %o1
.L409:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L410
	 sll	%o1, %o2, %g2
.L411:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g3, %g4, %g3
	srl	%o1, %o2, %o1
	or	%g3, %o1, %o1
	b	.L412
	 srl	%o0, %o2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L414
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g2
.L415:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L416
	 srl	%o1, 1, %g3
	sll	%o1, %g3, %o0
	mov	0, %o1
.L417:
	or	%o0, %g2, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L414:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L415
	 srl	%o0, %o2, %g2
.L416:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g3, %g4, %g3
	sll	%o0, %o2, %o0
	or	%g3, %o0, %o0
	b	.L417
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
	srl	%o0, 24, %g4
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g2
	sll	%o0, 8, %g3
	sethi	%hi(16711680), %g1
	and	%g3, %g1, %g3
	sll	%o0, 24, %g1
	or	%g1, %g4, %g1
	or	%g2, %g1, %g2
	jmp	%o7+8
	 or	%g3, %g2, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	save	%sp, -96, %sp
	srl	%i0, 24, %o5
	srl	%i0, 8, %i5
	sethi	%hi(64512), %i4
	or	%i4, 768, %i4
	and	%i5, %i4, %i5
	sll	%i0, 8, %g2
	srl	%i1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o7
	and	%g1, %o7, %g2
	sll	%i0, 24, %i0
	srl	%i1, 8, %g1
	or	%i0, %g1, %g1
	sethi	%hi(-16777216), %g3
	and	%g1, %g3, %g4
	sll	%i1, 8, %i3
	srl	%i1, 24, %i2
	mov	%g1, %g3
	sll	%i1, 24, %g1
	and	%g3, %i4, %g3
	and	%i3, %o7, %i0
	or	%i5, %o5, %i5
	or	%g2, %i5, %i1
	or	%i2, %g1, %i2
	or	%g3, %i2, %g3
	or	%i0, %g3, %i0
	or	%g4, %i1, %i1
	jmp	%i7+8
	 restore
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	mov	0, %g1
	srl	%o0, %g1, %g2
.L435:
	andcc	%g2, 1, %g0
	bne	.L434
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L435
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L434:
	jmp	%o7+8
	 add	%g1, 1, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	cmp	%o0, 0
	be	.L441
	 mov	%o0, %g1
	andcc	%o0, 1, %o0
	bne	.L441
	 nop
	mov	1, %o0
.L438:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L438
	 add	%o0, 1, %o0
.L441:
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
	fbl	.L442
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L444
	 mov	0, %o0
.L444:
	and	%o0, 0xff, %o0
.L442:
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
	fbl	.L446
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L448
	 mov	0, %o0
.L448:
	and	%o0, 0xff, %o0
.L446:
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
	fbl	.L450
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L452
	 mov	0, %o0
.L452:
	and	%o0, 0xff, %o0
.L450:
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
	fbu	.L456
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L456
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L459
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L459
	 ld	[%g1+%lo(.LC17)], %f8
.L458:
	srl	%o1, 31, %g1
.L461:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L456
	 nop
	fmuls	%f8, %f8, %f8
.L459:
	andcc	%o1, 1, %g0
	bne,a	.L458
	 fmuls	%f0, %f8, %f0
	b	.L461
	 srl	%o1, 31, %g1
.L456:
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
	fbu	.L463
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L463
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L466
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L466
	 ldd	[%g1+%lo(.LC21)], %f8
.L465:
	srl	%o2, 31, %g1
.L468:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L463
	 nop
	fmuld	%f8, %f8, %f8
.L466:
	andcc	%o2, 1, %g0
	bne,a	.L465
	 fmuld	%f0, %f8, %f0
	b	.L468
	 srl	%o2, 31, %g1
.L463:
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
	fbu	.L470
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L470
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L473
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L473
	 ldd	[%g1+%lo(.LC25)], %f8
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
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L481
	 nop
	mov	0, %g1
	ldub	[%o1+%g1], %g3
.L480:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L480
	 ldub	[%o1+%g1], %g3
.L481:
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
	be	.L484
	 add	%i0, %o0, %o0
.L483:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L489
	 nop
	add	%i1, 1, %i1
	addcc	%i2, -1, %i2
	bne	.L483
	 add	%o0, 1, %o0
.L484:
	stb	%g0, [%o0]
	jmp	%i7+8
	 restore
.L489:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L498
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L500:
	cmp	%g2, 0
	bne,a	.L499
	 add	%g1, 1, %g1
.L491:
	jmp	%o7+8
	 mov	%g1, %o0
.L498:
	b	.L491
	 mov	%o1, %g1
.L499:
	cmp	%o1, %g1
	bne,a	.L500
	 ldsb	[%o0+%g1], %g2
	b	.L491
	 mov	%o1, %g1
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L508
	 ldub	[%o0], %g4
.L502:
	mov	%o1, %g2
	sll	%g4, 24, %g4
	sra	%g4, 24, %g4
.L505:
	ldsb	[%g2], %g3
	cmp	%g3, 0
	be	.L509
	 ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %g4
	bne	.L505
	 add	%g2, 1, %g2
.L503:
	jmp	%o7+8
	 nop
.L508:
	jmp	%o7+8
	 mov	0, %o0
.L509:
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne	.L502
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
	b	.L512
	 mov	0, %o0
.L511:
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be	.L516
	 add	%g1, 1, %g1
.L512:
	ldsb	[%g1], %g3
	cmp	%g3, %o1
	bne	.L511
	 ldub	[%g1], %g2
	b	.L511
	 mov	%g1, %o0
.L516:
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
	be	.L522
	 mov	%o0, %i4
	ldsb	[%i1], %i3
.L519:
	mov	%i3, %o1
	call	strchr, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	be	.L522
	 mov	%o0, %i0
	mov	%i4, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L522
	 nop
	b	.L519
	 add	%i0, 1, %i5
.L522:
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
	fbl,a	.L533
	 std	%o2, [%sp+72]
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L527
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L534
	 fnegs	%f0, %f0
.L527:
.L534:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L533:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L527
	 nop
	b	.L527
	 fnegs	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	mov	%i0, %i5
	sub	%i1, %i3, %i4
	cmp	%i3, 0
	be	.L546
	 add	%i0, %i4, %i4
	cmp	%i1, %i3
	blu	.L540
	 nop
	cmp	%i0, %i4
	bgu	.L541
	 nop
	ldsb	[%i2], %i1
	add	%i2, 1, %i2
	b	.L538
	 add	%i3, -1, %i3
.L537:
.L545:
	cmp	%i4, %i5
	blu	.L544
	 nop
.L538:
	ldsb	[%i5], %g1
	cmp	%g1, %i1
	bne,a	.L545
	 add	%i5, 1, %i5
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 add	%i5, 1, %o0
	cmp	%o0, 0
	bne,a	.L537
	 add	%i5, 1, %i5
	mov	%i5, %i0
.L546:
	jmp	%i7+8
	 restore
.L544:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L540:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L541:
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
	fbl,a	.L568
	 fnegs	%f0, %f0
	mov	0, %g2
.L549:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L567
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L553:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L553
	 add	%g1, 1, %g1
.L554:
	cmp	%g2, 0
.L569:
	be	.L558
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L558:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L568:
	b	.L549
	 mov	1, %g2
.L567:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L555
	 mov	1, %g1
	mov	0, %g1
.L555:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L556
	 mov	1, %g3
	mov	0, %g3
.L556:
	and	%g1, %g3, %g3
	andcc	%g3, 0xff, %g0
	be	.L554
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L557:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L557
	 add	%g1, -1, %g1
	b	.L569
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
	be	.L574
	 mov	%i1, %g3
	mov	0, %i0
	mov	0, %i1
	mov	0, %i4
.L576:
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
	bne	.L576
	 mov	%g1, %g3
	jmp	%i7+8
	 restore
.L574:
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
	bgeu	.L585
	 mov	1, %g1
	cmp	%o1, 0
.L593:
	bl	.L583
	 mov	0, %o0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L593
	 cmp	%o1, 0
	cmp	%g1, 0
	be,a	.L591
	 mov	%g1, %o0
.L585:
	b	.L583
	 mov	0, %o0
.L582:
	srl	%g1, 1, %g1
.L594:
	cmp	%g1, 0
	be	.L584
	 srl	%o1, 1, %o1
.L583:
	cmp	%g2, %o1
	blu,a	.L594
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L582
	 or	%o0, %g1, %o0
.L591:
.L584:
	cmp	%o2, 0
	bne	.L592
	 nop
.L577:
	jmp	%o7+8
	 nop
.L592:
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
	be	.L598
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L598:
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
	be	.L605
	 xor	%i1, %g1, %o1
.L603:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L605:
	cmp	%i1, %g1
	bne	.L603
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
	be	.L612
	 mov	%o0, %g2
	mov	0, %o0
.L608:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L608
	 sll	%o1, 1, %o1
.L612:
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
	bgeu	.L614
	 and	%o2, -8, %g1
	sll	%g4, 3, %g3
.L629:
	cmp	%g4, 0
	be	.L616
	 mov	0, %g2
.L620:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g2, %g3
	bne	.L620
	 std	%o4, [%g4]
.L616:
	cmp	%o2, %g1
	bleu	.L631
	 nop
	ldub	[%o1+%g1], %g2
.L628:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L628
	 ldub	[%o1+%g1], %g2
.L632:
	jmp	%o7+8
	 nop
.L614:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L629
	 sll	%g4, 3, %g3
	cmp	%o2, 0
	be	.L632
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L630:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L630
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L631:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	bgeu	.L634
	 srl	%o2, 1, %g2
	sll	%g2, 1, %g3
.L647:
	cmp	%g2, 0
	be	.L636
	 mov	0, %g1
	lduh	[%o1+%g1], %g2
.L646:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L646
	 lduh	[%o1+%g1], %g2
.L636:
	andcc	%o2, 1, %g0
	be	.L649
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L634:
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	blu	.L647
	 sll	%g2, 1, %g3
	cmp	%o2, 0
	be	.L650
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L648:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L648
	 ldub	[%o1+%g1], %g2
.L650:
	jmp	%o7+8
	 nop
.L649:
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
	bgeu	.L652
	 and	%o2, -4, %g1
	sll	%g3, 2, %g4
.L668:
	cmp	%g3, 0
	be	.L654
	 mov	0, %g2
	ld	[%o1+%g2], %g3
.L666:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g2, %g4
	bne,a	.L666
	 ld	[%o1+%g2], %g3
.L654:
	cmp	%o2, %g1
	bleu	.L670
	 nop
	ldub	[%o1+%g1], %g2
.L667:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L667
	 ldub	[%o1+%g1], %g2
.L671:
	jmp	%o7+8
	 nop
.L652:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L668
	 sll	%g3, 2, %g4
	cmp	%o2, 0
	be	.L671
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L669:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L669
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L670:
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
	bl	.L675
	 fitod	%f8, %f0
.L673:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L675:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L673
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
	bl	.L678
	 fitod	%f8, %f0
.L677:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L678:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L677
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
.L686:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L682
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L686
	 sub	%g3, %g1, %g2
.L682:
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
.L691:
	andcc	%g2, 1, %g0
	bne	.L687
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L691
	 sra	%o0, %g1, %g2
.L687:
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
	fbge,a	.L698
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L692:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L698:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L692
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L700:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L700
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
.L703:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L703
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
	be	.L711
	 mov	%o0, %g2
	mov	0, %o0
.L707:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L707
	 sll	%o1, 1, %o1
.L711:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	cmp	%o0, 0
	be	.L719
	 mov	%o0, %g2
	cmp	%o1, 0
	be	.L719
	 mov	%o1, %o0
	mov	0, %o0
.L714:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L714
	 sll	%g2, 1, %g2
.L719:
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
	bgeu	.L728
	 mov	1, %g1
	cmp	%o1, 0
.L736:
	bl	.L726
	 mov	0, %o0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L736
	 cmp	%o1, 0
	cmp	%g1, 0
	be,a	.L734
	 mov	%g1, %o0
.L728:
	b	.L726
	 mov	0, %o0
.L725:
	srl	%g1, 1, %g1
.L737:
	cmp	%g1, 0
	be	.L727
	 srl	%o1, 1, %o1
.L726:
	cmp	%g2, %o1
	blu,a	.L737
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L725
	 or	%o0, %g1, %o0
.L734:
.L727:
	cmp	%o2, 0
	bne	.L735
	 nop
.L720:
	jmp	%o7+8
	 nop
.L735:
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
	fbl	.L738
	 mov	-1, %o0
	nop
	fbg	.L740
	 mov	1, %o0
	mov	0, %o0
.L740:
	and	%o0, 0xff, %o0
.L738:
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
	fbl	.L742
	 mov	-1, %o0
	nop
	fbg	.L744
	 mov	1, %o0
	mov	0, %o0
.L744:
	and	%o0, 0xff, %o0
.L742:
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
	bl	.L757
	 mov	%o0, %g2
	cmp	%o1, 0
	be	.L755
	 mov	%o1, %o5
	mov	0, %o5
.L750:
	mov	1, %g3
	mov	0, %o0
.L753:
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
	bne	.L753
	 add	%g3, 1, %g3
.L751:
	cmp	%o5, 0
	bne,a	.L758
	 sub	%g0, %o0, %o0
.L758:
	jmp	%o7+8
	 nop
.L757:
	sub	%g0, %o1, %o1
	b	.L750
	 mov	1, %o5
.L755:
	b	.L751
	 mov	%o1, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L767
	 cmp	%i1, 0
	bl	.L768
	 mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L767:
	bl	.L769
	 sub	%g0, %i0, %o0
	mov	0, %o2
	call	__udivmodsi4, 0
	 mov	%i1, %o1
	sub	%g0, %o0, %i0
	jmp	%i7+8
	 restore
.L768:
	sub	%g0, %i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	sub	%g0, %o0, %i0
	jmp	%i7+8
	 restore
.L769:
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
	bl	.L775
	 sra	%i1, 31, %o1
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L775:
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
	bgeu	.L784
	 mov	1, %g1
.L777:
	sll	%o1, 16, %g2
	cmp	%g2, 0
	bl	.L782
	 mov	0, %g2
	sll	%o1, 17, %o1
	srl	%o1, 16, %o1
	sll	%g1, 1, %g2
	cmp	%o1, %o0
	addx	%g0, 0, %g4
	sll	%g2, 16, %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L777
	 mov	%g2, %g1
	sll	%g2, 16, %g3
	cmp	%g3, 0
	be	.L791
	 cmp	%o2, 0
.L784:
	b	.L782
	 mov	0, %g2
.L781:
	sll	%g1, 16, %g1
.L792:
	srl	%g1, 17, %g3
	mov	%g3, %g1
	cmp	%g3, 0
	be	.L783
	 srl	%o1, 1, %o1
.L782:
	cmp	%o0, %o1
	blu,a	.L792
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L781
	 or	%g1, %g2, %g2
.L783:
	cmp	%o2, 0
.L791:
	bne,a	.L785
	 mov	%o0, %g2
.L785:
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
	bgeu	.L801
	 mov	1, %g1
	cmp	%o1, 0
.L809:
	bl	.L799
	 mov	0, %o0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L809
	 cmp	%o1, 0
	cmp	%g1, 0
	be,a	.L807
	 mov	%g1, %o0
.L801:
	b	.L799
	 mov	0, %o0
.L798:
	srl	%g1, 1, %g1
.L810:
	cmp	%g1, 0
	be	.L800
	 srl	%o1, 1, %o1
.L799:
	cmp	%g2, %o1
	blu,a	.L810
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L798
	 or	%o0, %g1, %o0
.L807:
.L800:
	cmp	%o2, 0
	bne	.L808
	 nop
.L793:
	jmp	%o7+8
	 nop
.L808:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L812
	 cmp	%o2, 0
	mov	0, %g1
	sll	%o1, %o2, %o0
.L813:
	mov	%g1, %o1
.L816:
	jmp	%o7+8
	 nop
.L812:
	be	.L816
	 nop
	sll	%o1, %o2, %g1
	sll	%o0, %o2, %o0
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o1
	b	.L813
	 or	%o0, %o1, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L818
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L819:
	mov	%g1, %o0
.L822:
	jmp	%o7+8
	 nop
.L818:
	be	.L822
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L819
	 or	%o0, %o1, %o1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -96, %sp
	srl	%i0, 24, %o5
	srl	%i0, 8, %i5
	sethi	%hi(64512), %i4
	or	%i4, 768, %i4
	and	%i5, %i4, %i5
	sll	%i0, 8, %g2
	srl	%i1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o7
	and	%g1, %o7, %g2
	sll	%i0, 24, %i0
	srl	%i1, 8, %g1
	or	%i0, %g1, %g1
	sethi	%hi(-16777216), %g3
	and	%g1, %g3, %g4
	sll	%i1, 8, %i3
	srl	%i1, 24, %i2
	mov	%g1, %g3
	sll	%i1, 24, %g1
	and	%g3, %i4, %g3
	and	%i3, %o7, %i0
	or	%i5, %o5, %i5
	or	%g2, %i5, %i1
	or	%i2, %g1, %i2
	or	%g3, %i2, %g3
	or	%i0, %g3, %i0
	or	%g4, %i1, %i1
	jmp	%i7+8
	 restore
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	srl	%o0, 24, %g4
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g2
	sll	%o0, 8, %g3
	sethi	%hi(16711680), %g1
	and	%g3, %g1, %g3
	sll	%o0, 24, %g1
	or	%g4, %g1, %g4
	or	%g2, %g4, %g2
	jmp	%o7+8
	 or	%g3, %g2, %o0
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
	subx	%g0, -1, %o0
	sll	%o0, 1, %o0
	mov	2, %g2
	sub	%g2, %o0, %g4
	srl	%g1, %g4, %g1
	add	%o0, %g3, %o0
	and	%g1, 2, %g3
	sub	%g2, %g1, %g2
	cmp	%g0, %g3
	addx	%g0, -1, %g1
	and	%g2, %g1, %g2
	jmp	%o7+8
	 add	%g2, %o0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o2, %o0
	bg	.L828
	 mov	0, %g1
	bl	.L828
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L828
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L828:
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
	add	%g2, %g3, %g2
	and	%g1, 3, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %o0
	sll	%o0, 1, %o0
	srl	%g1, %o0, %g1
	and	%g1, 3, %g1
	add	%o0, %g2, %o0
	xnor	%g0, %g1, %g2
	and	%g2, 1, %g2
	srl	%g1, 1, %g1
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
	be	.L837
	 cmp	%o2, 0
	mov	0, %g1
	srl	%o0, %o2, %o1
.L838:
	mov	%g1, %o0
.L841:
	jmp	%o7+8
	 nop
.L837:
	be	.L841
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L838
	 or	%o0, %o1, %o1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %l0
	or	%l0, 1023, %l0
	and	%i0, %l0, %l1
	and	%i1, %l0, %i4
	mov	%i4, %o1
	call	.umul, 0
	 mov	%l1, %o0
	srl	%o0, 16, %i3
	and	%o0, %l0, %i5
	srl	%i0, 16, %i2
	mov	%i2, %o1
	call	.umul, 0
	 mov	%i4, %o0
	add	%o0, %i3, %o0
	sll	%o0, 16, %g1
	add	%i5, %g1, %i5
	srl	%o0, 16, %i0
	srl	%g1, 16, %i3
	and	%i5, %l0, %i5
	srl	%i1, 16, %i4
	mov	%i4, %o1
	call	.umul, 0
	 mov	%l1, %o0
	add	%o0, %i3, %o0
	sll	%o0, 16, %g1
	add	%i5, %g1, %i1
	srl	%o0, 16, %i5
	mov	%i4, %o1
	call	.umul, 0
	 mov	%i2, %o0
	add	%i0, %o0, %i0
	jmp	%i7+8
	 restore %i5, %i0, %o0
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
	 restore %i4, %i5, %o0
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
	add	%g1, %g2, %g1
	srl	%g1, 16, %g2
	add	%g2, %g1, %g1
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
	b	.L852
	 ldd	[%g2+%lo(.LC42)], %f0
.L850:
	srl	%g1, 31, %g2
.L855:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L851
	 cmp	%o2, 0
	fmuld	%f8, %f8, %f8
.L852:
	andcc	%g1, 1, %g0
	bne,a	.L850
	 fmuld	%f0, %f8, %f0
	b	.L855
	 srl	%g1, 31, %g2
.L851:
	bl	.L854
	 sethi	%hi(.LC42), %g1
.L849:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L854:
	ldd	[%g1+%lo(.LC42)], %f8
	b	.L849
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
	b	.L859
	 ld	[%g2+%lo(.LC44)], %f0
.L857:
	srl	%g1, 31, %g2
.L862:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L858
	 cmp	%o1, 0
	fmuls	%f8, %f8, %f8
.L859:
	andcc	%g1, 1, %g0
	bne,a	.L857
	 fmuls	%f0, %f8, %f0
	b	.L862
	 srl	%g1, 31, %g2
.L858:
	bl	.L861
	 sethi	%hi(.LC44), %g1
.L856:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L861:
	ld	[%g1+%lo(.LC44)], %f8
	b	.L856
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o2, %o0
	bgu	.L863
	 mov	0, %g1
	blu	.L863
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L863
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L863:
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
