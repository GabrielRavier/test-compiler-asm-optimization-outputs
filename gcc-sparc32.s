	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cmp	%o0, %o1
	bleu	.L2
	 add	%o0, -1, %g2
	b	.L3
	 add	%o1, -1, %o1
.L4:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
.L3:
	cmp	%o2, 0
	bne,a	.L4
	 ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L2:
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
	b	.L11
	 mov	%o0, %g2
.L13:
	add	%o1, 1, %o1
	add	%g2, 1, %g2
.L11:
	cmp	%o3, 0
	be	.L16
	 mov	0, %o0
	ldub	[%o1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%o2, %g1
	bne,a	.L13
	 add	%o3, -1, %o3
	cmp	%o3, 0
	bne,a	.L16
	 add	%g2, 1, %o0
.L16:
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	b	.L18
	 and	%o1, 0xff, %o1
.L20:
	add	%o2, -1, %o2
.L18:
	cmp	%o2, 0
	be	.L23
	 cmp	%g0, %o2
	ldub	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L20
	 add	%o0, 1, %o0
	cmp	%g0, %o2
.L23:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	b	.L25
	 mov	%o0, %g1
.L27:
	add	%g1, 1, %g1
	add	%o1, 1, %o1
.L25:
	cmp	%o2, 0
	be	.L30
	 mov	0, %o0
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L27
	 add	%o2, -1, %o2
	cmp	%o2, 0
	be	.L30
	 nop
	ldub	[%g1], %o0
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L30:
	jmp	%o7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	b	.L32
	 mov	0, %g1
.L33:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L32:
	cmp	%g1, %o2
	bne,a	.L33
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
.L35:
	cmp	%o2, -1
	be	.L39
	 nop
	ldub	[%o0+%o2], %g1
	cmp	%o1, %g1
	be	.L40
	 add	%o2, -1, %g2
	b	.L35
	 mov	%g2, %o2
.L40:
	jmp	%o7+8
	 add	%o0, %o2, %o0
.L39:
	jmp	%o7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	add	%o0, %o2, %o2
	b	.L42
	 mov	%o0, %g1
.L43:
	add	%g1, 1, %g1
.L42:
	cmp	%g1, %o2
	bne,a	.L43
	 stb	%o1, [%g1]
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	b	.L47
	 ldub	[%o1], %g1
.L46:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
.L47:
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L46
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
.L51:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L52
	 nop
	ldub	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L51
	 add	%o0, 1, %o0
.L52:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	ldsb	[%o0], %g1
.L58:
	cmp	%o1, %g1
	be	.L59
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0-1], %g1
	cmp	%g1, 0
	bne,a	.L58
	 ldsb	[%o0], %g1
	mov	0, %o0
.L59:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	b	.L64
	 ldsb	[%o0], %g2
.L63:
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
.L64:
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	bne	.L62
	 cmp	%g2, 0
	bne,a	.L63
	 add	%o0, 1, %o0
.L62:
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
.L67:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L67
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
	be	.L75
	 mov	0, %o0
	mov	%g2, %g1
	add	%o2, -1, %o2
	add	%o2, %g2, %o0
.L70:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be	.L71
	 sub	%o0, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%o1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,a	.L74
	 ldub	[%g1], %o0
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	bne,a	.L74
	 ldub	[%g1], %o0
	add	%g1, 1, %g1
	b	.L70
	 add	%o1, 1, %o1
.L71:
	ldub	[%g1], %o0
.L74:
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L75:
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	mov	%o0, %g1
	b	.L77
	 add	%o0, %o2, %o2
.L78:
	stb	%g2, [%o1]
	ldub	[%g1], %g2
	stb	%g2, [%o1+1]
	add	%o1, 2, %o1
	add	%g1, 2, %g1
.L77:
	sub	%o2, %g1, %g2
	cmp	%g2, 1
	bg,a	.L78
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
	bne	.L105
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L105
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L105:
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
	bleu	.L116
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
	bne	.L117
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L117
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L117
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L117:
	jmp	%o7+8
	 nop
.L116:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L110
	 mov	1, %o0
	mov	0, %o0
.L110:
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
	bleu	.L122
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L122:
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
	fbu	.L125
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L128
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L131
	 nop
	fsubd	%f0, %f8, %f0
.L125:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L128:
	b	.L125
	 fmovs	%f9, %f1
.L131:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L125
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
	fbu	.L133
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L140
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L139
	 nop
	fsubs	%f0, %f8, %f0
.L133:
.L140:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L139:
	sethi	%hi(.LC2), %g1
	b	.L133
	 ld	[%g1+%lo(.LC2)], %f0
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
	fbu	.L145
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L146
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L143
	 fmovs	%f10, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L142
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L142:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L143:
	fcmped	%f8, %f10
	nop
	fbl	.L142
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	b	.L142
	 fmovs	%f9, %f1
.L145:
	fmovs	%f10, %f0
	b	.L142
	 fmovs	%f11, %f1
.L146:
	fmovs	%f8, %f0
	b	.L142
	 fmovs	%f9, %f1
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
	fbu	.L155
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L156
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L153
	 fcmpes	%f8, %f9
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bge	.L152
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
.L152:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L153:
	nop
	fbl	.L152
	 fmovs	%f9, %f0
	b	.L152
	 fmovs	%f8, %f0
.L155:
	b	.L152
	 fmovs	%f9, %f0
.L156:
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
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	fcmpd	%f8, %f8
	nop
	fbu	.L165
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L166
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L163
	 fmovs	%f10, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L162
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L162:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L163:
	fcmped	%f8, %f10
	nop
	fbl	.L162
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	b	.L162
	 fmovs	%f9, %f1
.L165:
	fmovs	%f10, %f0
	b	.L162
	 fmovs	%f11, %f1
.L166:
	fmovs	%f8, %f0
	b	.L162
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
	fbu	.L175
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L176
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L173
	 fmovs	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L172
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L172:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L173:
	fcmped	%f8, %f10
	nop
	fbl	.L172
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	b	.L172
	 fmovs	%f11, %f1
.L175:
	fmovs	%f10, %f0
	b	.L172
	 fmovs	%f11, %f1
.L176:
	fmovs	%f8, %f0
	b	.L172
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
	fbu	.L185
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L186
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L183
	 fcmpes	%f8, %f9
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bge	.L182
	 fmovs	%f9, %f0
	fmovs	%f8, %f0
.L182:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L183:
	nop
	fbl	.L182
	 fmovs	%f8, %f0
	b	.L182
	 fmovs	%f9, %f0
.L185:
	b	.L182
	 fmovs	%f9, %f0
.L186:
	b	.L182
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
	fbu	.L195
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L196
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L193
	 fmovs	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L192
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L192:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L193:
	fcmped	%f8, %f10
	nop
	fbl	.L192
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	b	.L192
	 fmovs	%f11, %f1
.L195:
	fmovs	%f10, %f0
	b	.L192
	 fmovs	%f11, %f1
.L196:
	fmovs	%f8, %f0
	b	.L192
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
	b	.L202
	 or	%g3, %lo(digits), %g3
.L203:
	ldub	[%g3+%g2], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%o0, 6, %o0
.L202:
	cmp	%o0, 0
	bne	.L203
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
	mov	%o0, %o1
	mov	0, %o0
	sethi	%hi(seed), %g1
	jmp	%o7+8
	 std	%o0, [%g1+%lo(seed)]
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -96, %sp
	sethi	%hi(seed), %i3
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	or	%o3, 813, %o3
	call	__muldi3, 0
	 ldd	[%i3+%lo(seed)], %o0
	addcc	%o1, 1, %i5
	addx	%o0, 0, %i4
	std	%i4, [%i3+%lo(seed)]
	srl	%i4, 1, %g3
	jmp	%i7+8
	 restore %g0, %g3, %o0
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	cmp	%o1, 0
	be,a	.L209
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L211
	 st	%o0, [%g1+4]
.L211:
	jmp	%o7+8
	 nop
.L209:
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
	be,a	.L215
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L215:
	cmp	%g1, 0
	be	.L216
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L216:
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
	b	.L218
	 mov	0, %i5
.L219:
	add	%i5, 1, %i5
.L218:
	cmp	%i5, %l1
	be	.L222
	 mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L219
	 add	%l0, %i3, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L222:
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
	b	.L224
	 mov	0, %i5
.L225:
	add	%i5, 1, %i5
.L224:
	cmp	%i5, %l0
	be	.L228
	 nop
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L225
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L228:
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
.L232:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L232
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L238
	 cmp	%g1, 45
	bne	.L234
	 mov	0, %g3
	mov	1, %g3
.L233:
	add	%i0, 1, %i0
.L234:
	b	.L235
	 mov	0, %g1
.L238:
	b	.L233
	 mov	0, %g3
.L236:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L235:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L236
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L241
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L241:
	jmp	%i7+8
	 restore
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L244:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L244
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L250
	 cmp	%g1, 45
	bne	.L246
	 mov	0, %g3
	mov	1, %g3
.L245:
	add	%i0, 1, %i0
.L246:
	b	.L247
	 mov	0, %g1
.L250:
	b	.L245
	 mov	0, %g3
.L248:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L247:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L248
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L253
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L253:
	jmp	%i7+8
	 restore
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L256:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L256
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L262
	 cmp	%g1, 45
	bne	.L258
	 mov	0, %g4
	mov	1, %g4
.L257:
	add	%i0, 1, %i0
.L258:
	mov	0, %g2
	b	.L259
	 mov	0, %g3
.L262:
	b	.L257
	 mov	0, %g4
.L260:
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
.L259:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,a	.L260
	 srl	%g3, 30, %g1
	mov	%g2, %i0
	cmp	%g4, 0
	bne	.L265
	 mov	%g3, %i1
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
.L265:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L275
	 cmp	%i2, 0
.L274:
.L267:
	cmp	%i2, 0
.L275:
	be	.L273
	 nop
	mov	%i3, %o1
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L274
	 srl	%i2, 1, %i2
	ble	.L272
	 nop
	add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	b	.L267
	 sub	%i2, %g1, %i2
.L273:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L272:
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
.L279:
	sra	%i2, 1, %i2
.L284:
	cmp	%i2, 0
.L283:
	be	.L282
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
	be	.L281
	 nop
	ble,a	.L284
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	b	.L279
	 add	%i2, -1, %i2
.L282:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L281:
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
	xor	%g3, %o1, %o5
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
	xor	%g3, %o1, %o5
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
	b	.L298
	 ld	[%o0], %g1
.L295:
	ld	[%o0], %g1
.L298:
	cmp	%g1, 0
	be	.L294
	 cmp	%o1, %g1
	bne,a	.L295
	 add	%o0, 4, %o0
.L294:
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
	b	.L300
	 mov	%o0, %g1
.L302:
	add	%o1, 4, %o1
.L300:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L306
	 cmp	%g3, 0
	be	.L307
	 cmp	%g2, 0
	bne,a	.L302
	 add	%g1, 4, %g1
	ld	[%g1], %g3
.L306:
.L307:
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L308
	 mov	-1, %o0
	bg	.L304
	 mov	1, %o0
	mov	0, %o0
.L304:
	and	%o0, 0xff, %o0
.L308:
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
.L312:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	ld	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a	.L312
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
.L315:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L315
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
.L317:
	cmp	%o2, 0
	be	.L324
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L318
	 cmp	%g3, 0
	be	.L318
	 cmp	%g2, 0
	be	.L325
	 cmp	%o2, 0
	add	%o2, -1, %o2
	add	%g1, 4, %g1
	b	.L317
	 add	%o1, 4, %o1
.L318:
	cmp	%o2, 0
.L325:
	be	.L324
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L324
	 mov	-1, %o0
	bg	.L321
	 mov	1, %o0
	mov	0, %o0
.L321:
	and	%o0, 0xff, %o0
.L324:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	b	.L332
	 cmp	%o2, 0
.L329:
	add	%o0, 4, %o0
	cmp	%o2, 0
.L332:
	be	.L333
	 cmp	%g0, %o2
	ld	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L329
	 add	%o2, -1, %o2
	cmp	%g0, %o2
.L333:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	b	.L335
	 mov	%o0, %g1
.L337:
	add	%g1, 4, %g1
	add	%o1, 4, %o1
.L335:
	cmp	%o2, 0
	be	.L342
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L337
	 add	%o2, -1, %o2
	cmp	%o2, 0
	be	.L342
	 nop
	cmp	%g3, %g2
	bl	.L342
	 mov	-1, %o0
	bg	.L339
	 mov	1, %o0
	mov	0, %o0
.L339:
	and	%o0, 0xff, %o0
.L342:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	b	.L344
	 mov	0, %g1
.L345:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L344:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L345
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
	be	.L353
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L348
	 mov	0, %g1
	add	%o2, -1, %o2
	b	.L349
	 sll	%o2, 2, %o2
.L350:
	st	%g1, [%o0+%o2]
	add	%o2, -4, %o2
.L349:
	cmp	%o2, -4
	bne,a	.L350
	 ld	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L351:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L348:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L351
	 ld	[%o1+%g1], %g2
.L353:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	b	.L356
	 mov	%o0, %g1
.L357:
	st	%o1, [%g1-4]
.L356:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L357
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
	bgeu	.L359
	 nop
	add	%o0, -1, %o0
	b	.L360
	 add	%o1, -1, %o1
.L361:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
.L360:
	cmp	%o2, 0
	bne,a	.L361
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L359:
	bne	.L363
	 mov	0, %g1
	jmp	%o7+8
	 nop
.L364:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
.L363:
	cmp	%g1, %o2
	bne,a	.L364
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
	be	.L368
	 srl	%o1, 1, %g1
	sll	%o1, %o2, %g2
	mov	0, %g3
.L369:
	sub	%g0, %o2, %g1
	andcc	%g1, 32, %g0
	be,a	.L370
	 sll	%o0, 1, %g1
	srl	%o0, %g1, %o5
	mov	0, %o4
.L371:
	or	%o4, %g2, %o0
	jmp	%o7+8
	 or	%o5, %g3, %o1
.L368:
	xnor	%g0, %o2, %g2
	srl	%g1, %g2, %g1
	sll	%o0, %o2, %g2
	or	%g1, %g2, %g2
	b	.L369
	 sll	%o1, %o2, %g3
.L370:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g1, %g4, %g1
	srl	%o1, %o2, %o5
	or	%g1, %o5, %o5
	b	.L371
	 srl	%o0, %o2, %o4
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L373
	 sll	%o0, 1, %g1
	srl	%o0, %o2, %g3
	mov	0, %g2
.L374:
	sub	%g0, %o2, %g1
	andcc	%g1, 32, %g0
	be,a	.L375
	 srl	%o1, 1, %g1
	sll	%o1, %g1, %o4
	mov	0, %o5
.L376:
	or	%o4, %g2, %o0
	jmp	%o7+8
	 or	%o5, %g3, %o1
.L373:
	xnor	%g0, %o2, %g2
	sll	%g1, %g2, %g1
	srl	%o1, %o2, %g3
	or	%g1, %g3, %g3
	b	.L374
	 srl	%o0, %o2, %g2
.L375:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g1, %g4, %g1
	sll	%o0, %o2, %o4
	or	%g1, %o4, %o4
	b	.L376
	 sll	%o1, %o2, %o5
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
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%o0, %g1, %g1
	srl	%g1, 8, %g1
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
	mov	0, %g1
.L389:
	cmp	%g1, 32
	be	.L393
	 nop
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	bne	.L394
	 nop
	b	.L389
	 add	%g1, 1, %g1
.L394:
	jmp	%o7+8
	 add	%g1, 1, %o0
.L393:
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
	be	.L400
	 mov	0, %o0
	b	.L397
	 mov	1, %o0
.L398:
	add	%o0, 1, %o0
.L397:
	andcc	%g1, 1, %g0
	be,a	.L398
	 sra	%g1, 1, %g1
.L400:
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
	fbl	.L402
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L402
	 mov	0, %o0
.L402:
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
	fbl	.L408
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L408
	 mov	0, %o0
.L408:
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
	fbl	.L414
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L414
	 mov	0, %o0
.L414:
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L421
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L421
	 sethi	%hi(.LC17), %g1
	cmp	%o1, 0
	bge	.L424
	 ld	[%g1+%lo(.LC17)], %f8
	sethi	%hi(.LC16), %g1
	b	.L424
	 ld	[%g1+%lo(.LC16)], %f8
.L423:
	srl	%o1, 31, %g1
.L426:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L421
	 nop
	fmuls	%f8, %f8, %f8
.L424:
	andcc	%o1, 1, %g0
	bne,a	.L423
	 fmuls	%f0, %f8, %f0
	b	.L426
	 srl	%o1, 31, %g1
.L421:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L428
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L428
	 sethi	%hi(.LC21), %g1
	cmp	%o2, 0
	bge	.L431
	 ldd	[%g1+%lo(.LC21)], %f8
	sethi	%hi(.LC20), %g1
	b	.L431
	 ldd	[%g1+%lo(.LC20)], %f8
.L430:
	srl	%o2, 31, %g1
.L433:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L428
	 nop
	fmuld	%f8, %f8, %f8
.L431:
	andcc	%o2, 1, %g0
	bne,a	.L430
	 fmuld	%f0, %f8, %f0
	b	.L433
	 srl	%o2, 31, %g1
.L428:
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
	fbu	.L435
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L435
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L438
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	b	.L438
	 ldd	[%g1+%lo(.LC24)], %f8
.L437:
	srl	%o2, 31, %g1
.L440:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L435
	 nop
	fmuld	%f8, %f8, %f8
.L438:
	andcc	%o2, 1, %g0
	bne,a	.L437
	 fmuld	%f0, %f8, %f0
	b	.L440
	 srl	%o2, 31, %g1
.L435:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	b	.L442
	 mov	0, %g1
.L443:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L442:
	cmp	%g1, %o2
	bne,a	.L443
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
	b	.L445
	 add	%i0, %o0, %o0
.L447:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L445:
	cmp	%i2, 0
	be,a	.L449
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	.L447
	 add	%i1, 1, %i1
	cmp	%i2, 0
	be,a	.L449
	 stb	%g0, [%o0]
.L449:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	mov	0, %g1
.L451:
	cmp	%g1, %o1
	be	.L452
	 nop
	ldsb	[%o0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L451
	 add	%g1, 1, %g1
.L452:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L455:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L461
	 nop
	mov	%o1, %g1
	ldsb	[%o1], %g2
.L463:
	cmp	%g2, 0
	be	.L462
	 add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%o0], %g2
	cmp	%g3, %g2
	bne,a	.L463
	 ldsb	[%g1], %g2
	jmp	%o7+8
	 nop
.L462:
	b	.L455
	 add	%o0, 1, %o0
.L461:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	b	.L466
	 mov	0, %o0
.L465:
	add	%g1, 1, %g1
.L470:
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	be	.L471
	 nop
.L466:
	ldsb	[%g1], %g2
	cmp	%o1, %g2
	be,a	.L465
	 mov	%g1, %o0
	b	.L470
	 add	%g1, 1, %g1
.L471:
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
	be	.L473
	 mov	%i0, %g1
	ldsb	[%i1], %i4
.L474:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L478
	 mov	%o0, %i0
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L479
	 mov	%i0, %g1
	b	.L474
	 add	%i0, 1, %i0
.L478:
	mov	0, %g1
.L473:
.L479:
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
	fbl,a	.L493
	 std	%o2, [%sp+72]
.L481:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L484
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L494
	 fnegs	%f0, %f0
.L484:
.L494:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L493:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L481
	 nop
	b	.L484
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
	be	.L496
	 mov	%i0, %g1
	cmp	%i1, %i3
	blu	.L501
	 add	%i2, 1, %i4
	add	%i3, -1, %i3
.L498:
.L497:
	cmp	%i0, %i5
	bgu	.L503
	 mov	0, %g1
	ldsb	[%i0], %g2
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a	.L497
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i4, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	bne,a	.L498
	 add	%i0, 1, %i0
	mov	%i0, %g1
.L503:
.L496:
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L501:
	b	.L496
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
	fbl,a	.L524
	 fnegs	%f0, %f0
	mov	0, %g2
.L506:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L523
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	b	.L526
	 ldd	[%g3+%lo(.LC32)], %f10
.L524:
	b	.L506
	 mov	1, %g2
.L510:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
.L526:
	nop
	fbge,a	.L510
	 add	%g1, 1, %g1
	cmp	%g2, 0
.L525:
	be	.L516
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L516:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L523:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L512
	 mov	1, %g3
	mov	0, %g3
.L512:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L513
	 mov	1, %g1
	mov	0, %g1
.L513:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L519
	 mov	0, %g1
	b	.L525
	 cmp	%g2, 0
.L515:
	faddd	%f0, %f0, %f0
.L514:
	fcmped	%f0, %f8
	nop
	fbl,a	.L515
	 add	%g1, -1, %g1
	b	.L525
	 cmp	%g2, 0
.L519:
	sethi	%hi(.LC32), %g3
	b	.L514
	 ldd	[%g3+%lo(.LC32)], %f8
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
	b	.L528
	 mov	0, %i1
.L533:
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
.L528:
	orcc	%g2, %g3, %g0
	be	.L534
	 nop
	mov	0, %o2
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L533
	 srl	%i3, 31, %g1
	addcc	%i1, %i3, %i1
	b	.L533
	 addx	%i0, %i2, %i0
.L534:
	jmp	%i7+8
	 restore
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	b	.L536
	 mov	1, %g1
.L539:
	sll	%g1, 1, %g1
.L536:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L545
	 cmp	%o1, 0
	bge,a	.L539
	 sll	%o1, 1, %o1
	b	.L538
	 mov	0, %g2
.L545:
	b	.L538
	 mov	0, %g2
.L541:
	srl	%g1, 1, %g1
.L548:
	srl	%o1, 1, %o1
.L538:
	cmp	%g1, 0
	be	.L546
	 cmp	%o0, %o1
	blu,a	.L548
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L541
	 or	%g2, %g1, %g2
.L546:
	cmp	%o2, 0
	be,a	.L547
	 mov	%g2, %o0
.L547:
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
	xor	%i0, %g1, %o0
	cmp	%o0, 0
	be	.L553
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L553:
	jmp	%i7+8
	 restore
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	mov	%i0, %o0
	cmp	%i0, 0
	bl	.L560
	 mov	%i1, %o1
.L555:
	orcc	%o0, %o1, %g0
	be	.L561
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L561:
	jmp	%i7+8
	 restore
.L560:
	xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %o0
	b	.L555
	 mov	%g3, %o1
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	mov	%o0, %g1
	b	.L563
	 mov	0, %o0
.L564:
	srl	%g1, 1, %g1
.L567:
	sll	%o1, 1, %o1
.L563:
	cmp	%g1, 0
	be	.L568
	 nop
	andcc	%g1, 1, %g0
	bne,a	.L564
	 add	%o0, %o1, %o0
	b	.L567
	 srl	%g1, 1, %g1
.L568:
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
	blu	.L570
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	bgeu,a	.L580
	 add	%o2, -1, %o2
.L570:
	sll	%g3, 3, %g3
	b	.L572
	 mov	0, %g2
.L573:
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	std	%o4, [%g4]
	add	%g2, 8, %g2
.L572:
	cmp	%g2, %g3
	bne	.L573
	 add	%o1, %g2, %g4
	b	.L579
	 cmp	%o2, %g1
.L575:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
.L579:
	bgu,a	.L575
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L577:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L580:
	cmp	%o2, -1
	bne,a	.L577
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
	blu	.L582
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	bgeu,a	.L589
	 add	%o2, -1, %o2
.L582:
	sll	%g3, 1, %g3
	b	.L584
	 mov	0, %g1
.L585:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
.L584:
	cmp	%g1, %g3
	bne,a	.L585
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L590
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L587:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L589:
	cmp	%o2, -1
	bne,a	.L587
	 ldub	[%o1+%o2], %g1
.L590:
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
	blu	.L592
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	bgeu,a	.L602
	 add	%o2, -1, %o2
.L592:
	sll	%g4, 2, %g4
	b	.L594
	 mov	0, %g2
.L595:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
.L594:
	cmp	%g2, %g4
	bne,a	.L595
	 ld	[%o1+%g2], %g3
	b	.L601
	 cmp	%o2, %g1
.L597:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
.L601:
	bgu,a	.L597
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L599:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L602:
	cmp	%o2, -1
	bne,a	.L599
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
	bl	.L606
	 fitod	%f8, %f0
.L605:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L606:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L605
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
	bl	.L609
	 fitod	%f8, %f0
.L608:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L609:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L608
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
.L614:
	cmp	%g1, 16
	be	.L615
	 nop
	sub	%g3, %g1, %g2
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L615
	 nop
	b	.L614
	 add	%g1, 1, %g1
.L615:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	mov	0, %g1
.L618:
	cmp	%g1, 16
	be	.L619
	 nop
	sra	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	bne	.L619
	 nop
	b	.L618
	 add	%g1, 1, %g1
.L619:
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
	fbge,a	.L627
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L624:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L627:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L624
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	b	.L629
	 mov	0, %g1
.L631:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L629:
	cmp	%g1, 16
	bne,a	.L631
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
	b	.L633
	 mov	0, %g1
.L635:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L633:
	cmp	%g1, 16
	bne,a	.L635
	 sra	%o0, %g1, %g2
	jmp	%o7+8
	 mov	%g3, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	mov	%o0, %g1
	b	.L637
	 mov	0, %o0
.L638:
	srl	%g1, 1, %g1
.L641:
	sll	%o1, 1, %o1
.L637:
	cmp	%g1, 0
	be	.L642
	 nop
	andcc	%g1, 1, %g0
	bne,a	.L638
	 add	%o0, %o1, %o0
	b	.L641
	 srl	%g1, 1, %g1
.L642:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L645
	 mov	0, %o0
.L650:
	jmp	%o7+8
	 nop
.L646:
	sll	%g1, 1, %g1
.L649:
	srl	%o1, 1, %o1
.L645:
	cmp	%o1, 0
	be	.L650
	 nop
	andcc	%o1, 1, %g0
	bne,a	.L646
	 add	%o0, %g1, %o0
	b	.L649
	 sll	%g1, 1, %g1
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	b	.L652
	 mov	1, %g1
.L655:
	sll	%g1, 1, %g1
.L652:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L661
	 cmp	%o1, 0
	bge,a	.L655
	 sll	%o1, 1, %o1
	b	.L654
	 mov	0, %g2
.L661:
	b	.L654
	 mov	0, %g2
.L657:
	srl	%g1, 1, %g1
.L664:
	srl	%o1, 1, %o1
.L654:
	cmp	%g1, 0
	be	.L662
	 cmp	%o0, %o1
	blu,a	.L664
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L657
	 or	%g2, %g1, %g2
.L662:
	cmp	%o2, 0
	be,a	.L663
	 mov	%g2, %o0
.L663:
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
	fbl	.L666
	 mov	-1, %o0
	nop
	fbg	.L666
	 mov	1, %o0
	mov	0, %o0
.L666:
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
	fbl	.L670
	 mov	-1, %o0
	nop
	fbg	.L670
	 mov	1, %o0
	mov	0, %o0
.L670:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	cmp	%o1, 0
	bl	.L684
	 mov	0, %o5
.L676:
	mov	0, %g4
	b	.L677
	 mov	0, %g1
.L684:
	sub	%g0, %o1, %o1
	b	.L676
	 mov	1, %o5
.L678:
	sll	%o0, 1, %o0
.L686:
	sra	%o1, 1, %o1
	add	%g1, 1, %g1
.L677:
	cmp	%g0, %o1
	addx	%g0, 0, %g3
	and	%g1, 0xff, %g2
	cmp	%g2, 32
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L685
	 andcc	%o1, 1, %g0
	bne,a	.L678
	 add	%g4, %o0, %g4
	b	.L686
	 sll	%o0, 1, %o0
.L685:
	cmp	%o5, 0
	be	.L687
	 mov	%g4, %o0
	sub	%g0, %g4, %o0
.L687:
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
	bl	.L693
	 mov	0, %i5
.L689:
	cmp	%i1, 0
	bl,a	.L694
	 sub	%g0, %i1, %i1
.L690:
	mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L695
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L695:
	jmp	%i7+8
	 restore
.L693:
	sub	%g0, %i0, %i0
	b	.L689
	 mov	1, %i5
.L694:
	b	.L690
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L701
	 mov	0, %i5
.L697:
	sra	%i1, 31, %o1
	xor	%i1, %o1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L702
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L702:
	jmp	%i7+8
	 restore
.L701:
	sub	%g0, %i0, %i0
	b	.L697
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	b	.L704
	 mov	1, %g1
.L707:
	srl	%o1, 16, %o1
	sll	%g1, 1, %g1
.L704:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L713
	 sll	%o1, 16, %g2
	cmp	%g2, 0
	bge,a	.L707
	 sll	%o1, 17, %o1
	b	.L706
	 mov	0, %g3
.L713:
	b	.L706
	 mov	0, %g3
.L709:
	sll	%g1, 16, %g1
.L715:
	srl	%g1, 17, %g1
	srl	%o1, 1, %o1
.L706:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	be	.L714
	 cmp	%o0, %o1
	blu,a	.L715
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L709
	 or	%g3, %g1, %g3
.L714:
	cmp	%o2, 0
	be,a	.L711
	 mov	%g3, %o0
.L711:
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	b	.L717
	 mov	1, %g1
.L720:
	sll	%g1, 1, %g1
.L717:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L726
	 cmp	%o1, 0
	bge,a	.L720
	 sll	%o1, 1, %o1
	b	.L719
	 mov	0, %g2
.L726:
	b	.L719
	 mov	0, %g2
.L722:
	srl	%g1, 1, %g1
.L729:
	srl	%o1, 1, %o1
.L719:
	cmp	%g1, 0
	be	.L727
	 cmp	%o0, %o1
	blu,a	.L729
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L722
	 or	%g2, %g1, %g2
.L727:
	cmp	%o2, 0
	be,a	.L728
	 mov	%g2, %o0
.L728:
	jmp	%o7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L731
	 mov	%o0, %g2
	mov	0, %g3
	sll	%o1, %o2, %g2
.L733:
	mov	%g2, %o0
	jmp	%o7+8
	 mov	%g3, %o1
.L731:
	cmp	%o2, 0
	be	.L733
	 mov	%o1, %g3
	sll	%o1, %o2, %g3
	sll	%o0, %o2, %g1
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o2
	b	.L733
	 or	%o2, %g1, %g2
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L736
	 mov	%o0, %g2
	sra	%o0, 31, %g2
	sra	%o0, %o2, %g3
.L738:
	mov	%g2, %o0
	jmp	%o7+8
	 mov	%g3, %o1
.L736:
	cmp	%o2, 0
	be	.L738
	 mov	%o1, %g3
	sra	%o0, %o2, %g2
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o2
	b	.L738
	 or	%g1, %o2, %g3
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
	mov	0, %l0
	sethi	%hi(-16777216), %g2
	and	%i5, %g2, %l1
	sll	%i1, 8, %l5
	and	%g3, 255, %o0
	sll	%i1, 24, %g3
	and	%i5, %g1, %i2
	and	%l5, %g4, %l4
	or	%g3, %o2, %g2
	or	%l3, %o3, %g3
	or	%g2, %o4, %i4
	or	%g3, %o5, %i5
	or	%i4, %l0, %g2
	or	%i5, %l1, %g3
	or	%g2, %o0, %i4
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
	save	%sp, -96, %sp
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%g1, %i0
	subx	%g0, -1, %i5
	sll	%i5, 4, %i5
	mov	16, %g1
	sub	%g1, %i5, %g1
	srl	%i0, %g1, %g1
	sethi	%hi(64512), %g2
	or	%g2, 768, %g2
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g3
	sub	%g3, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i5, %g2, %i5
	and	%g1, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g3
	sub	%g3, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i5, %g2, %i5
	and	%g1, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 1, %g2
	mov	2, %o1
	sub	%o1, %g2, %g3
	srl	%g1, %g3, %g1
	add	%i5, %g2, %i5
	and	%g1, 2, %g2
	sub	%o1, %g1, %o1
	cmp	%g0, %g2
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
	cmp	%o0, %o2
	bl	.L752
	 mov	0, %g1
	bg	.L752
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L752
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L752:
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
	be	.L768
	 mov	%o0, %g2
	mov	0, %g2
	srl	%o0, %o2, %g3
.L770:
	mov	%g2, %o0
	jmp	%o7+8
	 mov	%g3, %o1
.L768:
	cmp	%o2, 0
	be	.L770
	 mov	%o1, %g3
	srl	%o0, %o2, %g2
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o2
	b	.L770
	 or	%g1, %o2, %g3
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i4
	or	%i4, 1023, %i4
	and	%i0, %i4, %l1
	and	%i1, %i4, %l2
	mov	%l2, %o1
	call	.umul, 0
	 mov	%l1, %o0
	srl	%o0, 16, %i5
	and	%o0, %i4, %l0
	srl	%i0, 16, %i0
	mov	%l2, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i5, %o0, %i5
	sll	%i5, 16, %g1
	add	%g1, %l0, %i3
	srl	%i5, 16, %i2
	srl	%i3, 16, %i5
	and	%i4, %i3, %i4
	srl	%i1, 16, %i1
	mov	%i1, %o1
	call	.umul, 0
	 mov	%l1, %o0
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
	mov	%o0, %l2
	mov	%o1, %l3
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	mov	%o0, %i5
	mov	%i1, %o1
	call	.umul, 0
	 mov	%i2, %o0
	add	%i5, %o0, %i5
	add	%i5, %l2, %l0
	mov	%l0, %i0
	jmp	%i7+8
	 restore %g0, %l3, %o1
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
	srl	%o1, 1, %g3
	or	%g1, %g3, %g3
	srl	%o0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%g2, %g1, %o4
	and	%g3, %g1, %o5
	subcc	%o1, %o5, %g3
	subx	%o0, %o4, %g2
	sll	%g2, 30, %g1
	srl	%g3, 2, %o5
	or	%g1, %o5, %o5
	srl	%g2, 2, %o4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%o4, %g1, %o2
	and	%o5, %g1, %o3
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
	add	%g2, %g3, %g1
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
	b	.L782
	 ldd	[%g1+%lo(.LC42)], %f10
.L780:
	srl	%o2, 31, %g1
.L785:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L781
	 fmovs	%f10, %f0
	fmuld	%f8, %f8, %f8
.L782:
	andcc	%o2, 1, %g0
	bne,a	.L780
	 fmuld	%f10, %f8, %f10
	b	.L785
	 srl	%o2, 31, %g1
.L781:
	cmp	%g2, 0
	be	.L783
	 fmovs	%f11, %f1
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
	fdivd	%f0, %f10, %f0
.L783:
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
	b	.L789
	 ld	[%g1+%lo(.LC44)], %f9
.L787:
	srl	%o1, 31, %g1
.L792:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L788
	 cmp	%g2, 0
	fmuls	%f8, %f8, %f8
.L789:
	andcc	%o1, 1, %g0
	bne,a	.L787
	 fmuls	%f9, %f8, %f9
	b	.L792
	 srl	%o1, 31, %g1
.L788:
	be	.L790
	 fmovs	%f9, %f0
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
	fdivs	%f0, %f9, %f0
.L790:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L794
	 mov	0, %g1
	bgu	.L794
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L794
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L794:
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
