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
	and	%o2, 0xff, %o2
	cmp	%o3, 0
	be	.L14
	 mov	%o0, %g2
.L13:
	ldub	[%o1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%o2, %g1
	be	.L20
	 cmp	%o3, 0
	add	%o1, 1, %o1
	addcc	%o3, -1, %o3
	bne	.L13
	 add	%g2, 1, %g2
.L14:
	cmp	%o3, 0
.L20:
	be	.L21
	 mov	0, %o0
	add	%g2, 1, %o0
.L21:
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	and	%o1, 0xff, %o1
	cmp	%o2, 0
	be	.L24
	 mov	%o0, %g1
.L23:
	ldub	[%g1], %g2
	cmp	%o1, %g2
	be	.L30
	 cmp	%g0, %o2
	addcc	%o2, -1, %o2
	bne	.L23
	 add	%g1, 1, %g1
.L24:
	cmp	%g0, %o2
.L30:
	subx	%g0, 0, %o0
	jmp	%o7+8
	 and	%g1, %o0, %o0
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	mov	%o1, %g1
	cmp	%o2, 0
	be	.L33
	 mov	%o0, %g2
.L32:
	ldub	[%g2], %g4
	ldub	[%g1], %g3
	cmp	%g4, %g3
	bne	.L39
	 cmp	%o2, 0
	add	%g2, 1, %g2
	addcc	%o2, -1, %o2
	bne	.L32
	 add	%g1, 1, %g1
.L33:
	cmp	%o2, 0
.L39:
	be	.L40
	 mov	0, %o0
	ldub	[%g2], %o0
	ldub	[%g1], %g1
	sub	%o0, %g1, %o0
.L40:
	jmp	%o7+8
	 nop
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
.L48:
	cmp	%o2, -1
	be	.L52
	 nop
	ldub	[%o0+%o2], %g1
	cmp	%o1, %g1
	be	.L53
	 add	%o2, -1, %g2
	b	.L48
	 mov	%g2, %o2
.L53:
	jmp	%o7+8
	 add	%o0, %o2, %o0
.L52:
	jmp	%o7+8
	 mov	0, %o0
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
	cmp	%g1, %o2
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
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L74
	 and	%o1, 0xff, %o1
	ldub	[%o0], %g1
.L72:
	cmp	%o1, %g1
	be	.L73
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L72
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
	ldsb	[%o0], %g1
.L80:
	cmp	%o1, %g1
	be	.L81
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0-1], %g1
	cmp	%g1, 0
	bne,a	.L80
	 ldsb	[%o0], %g1
	mov	0, %o0
.L81:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldsb	[%o0], %g2
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	bne,a	.L87
	 ldub	[%o0], %o0
	ldsb	[%o0], %g1
.L88:
	cmp	%g1, 0
	be,a	.L87
	 ldub	[%o0], %o0
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	be,a	.L88
	 ldsb	[%o0], %g1
	ldub	[%o0], %o0
.L87:
	ldub	[%o1], %g1
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L94
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L95:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L95
	 add	%g1, 1, %g1
.L90:
.L94:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	mov	%o0, %g3
	cmp	%o2, 0
	be	.L105
	 mov	0, %o0
	ldub	[%g3], %g4
	mov	%o1, %g2
	mov	%g3, %g1
	add	%o2, -1, %o2
	cmp	%g4, 0
	be	.L99
	 add	%o2, %g3, %o2
.L98:
	sub	%o2, %g1, %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g4
	ldub	[%g2], %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	be,a	.L104
	 ldub	[%g1], %o0
	ldub	[%g1], %g4
	ldub	[%g2], %g3
	cmp	%g4, %g3
	bne,a	.L104
	 ldub	[%g1], %o0
	add	%g1, 1, %g1
	ldub	[%g1], %g3
	cmp	%g3, 0
	bne	.L98
	 add	%g2, 1, %g2
.L99:
	ldub	[%g1], %o0
.L104:
	ldub	[%g2], %g1
	sub	%o0, %g1, %o0
.L105:
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L110
	 add	%o2, -2, %g1
	and	%g1, -2, %g1
	add	%g1, 2, %g1
	add	%o0, %g1, %g1
.L108:
	ldub	[%o0+1], %g2
	stb	%g2, [%o1]
	ldub	[%o0], %g2
	stb	%g2, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %g1
	bne	.L108
	 add	%o1, 2, %o1
.L110:
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
	bne	.L137
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L137
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L137:
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
	bleu	.L147
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
	bne	.L148
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L148
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L148
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L148:
	jmp	%o7+8
	 nop
.L147:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L142
	 mov	1, %o0
	mov	0, %o0
.L142:
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
	bleu	.L153
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L153:
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
	fbu	.L156
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L159
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L162
	 nop
	fsubd	%f0, %f8, %f0
.L156:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L159:
	b	.L156
	 fmovs	%f9, %f1
.L162:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L156
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
	fbu	.L164
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L171
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L170
	 nop
	fsubs	%f0, %f8, %f0
.L164:
.L171:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L170:
	sethi	%hi(.LC2), %g1
	b	.L164
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
	fbu	.L178
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L173
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L174
	 fcmped	%f0, %f8
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L173
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L173:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L174:
	nop
	fbl	.L175
	 mov	1, %g1
	mov	0, %g1
.L175:
	andcc	%g1, 0xff, %g0
	be	.L173
	 nop
	fmovs	%f8, %f0
	b	.L173
	 fmovs	%f9, %f1
.L178:
	fmovs	%f8, %f0
	b	.L173
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
	fbu	.L187
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L182
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L183
	 fcmpes	%f0, %f8
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bl,a	.L182
	 fmovs	%f8, %f0
.L182:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L183:
	nop
	fbl	.L184
	 mov	1, %g1
	mov	0, %g1
.L184:
	andcc	%g1, 0xff, %g0
	bne,a	.L182
	 fmovs	%f8, %f0
	b,a	.L182
.L187:
	b	.L182
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
	fbu	.L196
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L191
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L192
	 fcmped	%f0, %f8
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L191
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L191:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L192:
	nop
	fbl	.L193
	 mov	1, %g1
	mov	0, %g1
.L193:
	andcc	%g1, 0xff, %g0
	be	.L191
	 nop
	fmovs	%f8, %f0
	b	.L191
	 fmovs	%f9, %f1
.L196:
	fmovs	%f8, %f0
	b	.L191
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
	fbu	.L200
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L206
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L201
	 fcmped	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L200
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L200:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L201:
	nop
	fbl	.L202
	 mov	1, %g1
	mov	0, %g1
.L202:
	andcc	%g1, 0xff, %g0
	be	.L200
	 nop
	fmovs	%f8, %f0
	b	.L200
	 fmovs	%f9, %f1
.L206:
	fmovs	%f8, %f0
	b	.L200
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
	fbu	.L209
	 ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L215
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L210
	 fcmpes	%f8, %f0
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bl,a	.L209
	 fmovs	%f8, %f0
.L209:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L210:
	nop
	fbl	.L211
	 mov	1, %g1
	mov	0, %g1
.L211:
	andcc	%g1, 0xff, %g0
	bne,a	.L209
	 fmovs	%f8, %f0
	b,a	.L209
.L215:
	b	.L209
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
	fbu	.L218
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L224
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L219
	 fcmped	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L218
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L218:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L219:
	nop
	fbl	.L220
	 mov	1, %g1
	mov	0, %g1
.L220:
	andcc	%g1, 0xff, %g0
	be	.L218
	 nop
	fmovs	%f8, %f0
	b	.L218
	 fmovs	%f9, %f1
.L224:
	fmovs	%f8, %f0
	b	.L218
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
	be	.L229
	 mov	%o0, %g1
	sethi	%hi(s.0), %g2
	or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L228:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L228
	 add	%g2, 1, %g2
.L227:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
.L229:
	sethi	%hi(s.0), %g2
	b	.L227
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
	be,a	.L236
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L238
	 st	%o0, [%g1+4]
.L238:
	jmp	%o7+8
	 nop
.L236:
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
	be,a	.L242
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L242:
	cmp	%g1, 0
	be	.L243
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L243:
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
	be	.L251
	 add	%l1, 1, %g1
	mov	%i1, %l0
	mov	0, %i5
.L248:
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L250
	 mov	%i3, %o1
	add	%i5, 1, %i5
	cmp	%i5, %l1
	bne	.L248
	 add	%l0, %i3, %l0
	add	%l1, 1, %g1
.L251:
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
.L250:
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -96, %sp
	ld	[%i2], %l0
	cmp	%l0, 0
	be	.L256
	 nop
	mov	%i1, %i2
	mov	0, %i5
.L255:
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L258
	 mov	%i3, %o1
	add	%i5, 1, %i5
	cmp	%i5, %l0
	bne	.L255
	 add	%i2, %i3, %i2
	jmp	%i7+8
	 restore %g0, 0, %o0
.L258:
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L256:
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
.L262:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L262
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L268
	 cmp	%g1, 45
	bne	.L275
	 mov	0, %g3
	mov	1, %g3
.L263:
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L275:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L273
	 mov	0, %g1
	sll	%g1, 2, %g2
.L274:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L274
	 sll	%g1, 2, %g2
.L265:
.L273:
	cmp	%g3, 0
	bne	.L276
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L276:
	jmp	%i7+8
	 restore
.L268:
	b	.L263
	 mov	0, %g3
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L279:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L279
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L285
	 cmp	%g1, 45
	bne	.L292
	 mov	0, %g3
	mov	1, %g3
.L280:
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L292:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L290
	 mov	0, %g1
	sll	%g1, 2, %g2
.L291:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L291
	 sll	%g1, 2, %g2
.L282:
.L290:
	cmp	%g3, 0
	bne	.L293
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L293:
	jmp	%i7+8
	 restore
.L285:
	b	.L280
	 mov	0, %g3
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
.L296:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L296
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L302
	 cmp	%g1, 45
	bne	.L308
	 mov	0, %o7
	mov	1, %o7
.L297:
	add	%i0, 1, %i0
	ldsb	[%i0], %g1
.L308:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L304
	 mov	0, %i4
	mov	0, %i5
	srl	%i5, 30, %g2
.L307:
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
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L307
	 srl	%i5, 30, %g2
.L299:
	mov	%i4, %i0
	cmp	%o7, 0
	bne	.L309
	 mov	%i5, %i1
	subcc	%g0, %i5, %i1
	subx	%g0, %i4, %i0
.L309:
	jmp	%i7+8
	 restore
.L302:
	b	.L297
	 mov	0, %o7
.L304:
	b	.L299
	 mov	0, %i5
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	cmp	%i2, 0
	bne,a	.L320
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L319:
.L313:
	cmp	%i2, 0
	be	.L318
	 nop
	mov	%i3, %o1
.L320:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L319
	 srl	%i2, 1, %i2
	ble	.L316
	 nop
	add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	b	.L313
	 sub	%i2, %g1, %i2
.L318:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L316:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	cmp	%i2, 0
	bne	.L324
	 mov	%i2, %l0
	jmp	%i7+8
	 restore %g0, 0, %o0
.L323:
	sra	%l0, 1, %l0
.L329:
	cmp	%l0, 0
	be	.L328
	 nop
.L324:
	mov	%i3, %o1
	call	.umul, 0
	 sra	%l0, 1, %o0
	add	%i1, %o0, %i2
	mov	%i5, %o2
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L326
	 nop
	ble,a	.L329
	 sra	%l0, 1, %l0
	add	%i2, %i3, %i1
	b	.L323
	 add	%l0, -1, %l0
.L328:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L326:
	jmp	%i7+8
	 restore %g0, %i2, %o0
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
	cmp	%g1, 0
	be	.L344
	 cmp	%g0, %g1
	ld	[%o0], %g1
	cmp	%o1, %g1
.L345:
	be	.L344
	 cmp	%g0, %g1
	add	%o0, 4, %o0
	ld	[%o0], %g1
	cmp	%g1, 0
	bne	.L345
	 cmp	%o1, %g1
	ld	[%o0], %g1
	cmp	%g0, %g1
.L344:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o0], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L348
	 mov	%o0, %g1
	ld	[%g1], %g2
.L356:
	cmp	%g2, 0
	be,a	.L354
	 ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g2, 0
	be,a	.L355
	 ld	[%g1], %g3
	add	%g1, 4, %g1
	add	%o1, 4, %o1
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L356
	 ld	[%g1], %g2
.L348:
	ld	[%g1], %g3
.L354:
	ld	[%o1], %g2
.L355:
	cmp	%g3, %g2
	bl	.L357
	 mov	-1, %o0
	bg	.L351
	 mov	1, %o0
	mov	0, %o0
.L351:
	and	%o0, 0xff, %o0
.L357:
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
.L361:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	ld	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a	.L361
	 ld	[%o1+%g1], %g2
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
	be	.L363
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L367:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L367
	 add	%g1, 4, %g1
.L363:
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
	be	.L370
	 mov	%o0, %g1
.L369:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L370
	 cmp	%g3, 0
	be	.L370
	 cmp	%g2, 0
	be	.L377
	 cmp	%o2, 0
	add	%g1, 4, %g1
	addcc	%o2, -1, %o2
	bne	.L369
	 add	%o1, 4, %o1
.L370:
	cmp	%o2, 0
.L377:
	be	.L378
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L378
	 mov	-1, %o0
	bg	.L373
	 mov	1, %o0
	mov	0, %o0
.L373:
	and	%o0, 0xff, %o0
.L378:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	be	.L386
	 cmp	%g0, %o2
.L380:
	ld	[%o0], %g1
	cmp	%o1, %g1
	be	.L386
	 cmp	%g0, %o2
	addcc	%o2, -1, %o2
	bne	.L380
	 add	%o0, 4, %o0
	cmp	%g0, %o2
.L386:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	be	.L389
	 mov	%o0, %g1
.L388:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L396
	 cmp	%o2, 0
	add	%g1, 4, %g1
	addcc	%o2, -1, %o2
	bne	.L388
	 add	%o1, 4, %o1
.L389:
	cmp	%o2, 0
.L396:
	be	.L397
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L397
	 mov	-1, %o0
	bg	.L392
	 mov	1, %o0
	mov	0, %o0
.L392:
	and	%o0, 0xff, %o0
.L397:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	cmp	%o2, 0
	be	.L402
	 add	%o2, -1, %g1
	mov	%g1, %o2
	mov	0, %g1
.L400:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne	.L400
	 add	%g1, 4, %g1
.L402:
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L413
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu	.L405
	 cmp	%o2, 0
	be	.L414
	 add	%o2, -1, %g1
	mov	%g1, %o2
	mov	0, %g1
.L406:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne	.L406
	 add	%g1, 4, %g1
.L414:
	jmp	%o7+8
	 nop
.L405:
	be	.L413
	 nop
	add	%o2, -1, %o2
	sll	%o2, 2, %o2
	ld	[%o1+%o2], %g1
.L412:
	st	%g1, [%o0+%o2]
	add	%o2, -4, %o2
	cmp	%o2, -4
	bne,a	.L412
	 ld	[%o1+%o2], %g1
.L413:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L419
	 add	%o2, -1, %g1
	mov	%g1, %o2
	mov	%o0, %g1
.L417:
	add	%g1, 4, %g1
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne	.L417
	 st	%o1, [%g1-4]
.L419:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L421
	 nop
	cmp	%o2, 0
	be	.L429
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L427:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L427
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L421:
	be	.L429
	 nop
	cmp	%o2, 0
	be	.L429
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L428:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L428
	 ldub	[%o0+%g1], %g2
.L429:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L432
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g2
.L433:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L434
	 sll	%o0, 1, %g3
	srl	%o0, %g3, %o1
	mov	0, %o0
.L435:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g2, %o1
.L432:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L433
	 sll	%o1, %o2, %g2
.L434:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g3, %g4, %g3
	srl	%o1, %o2, %o1
	or	%g3, %o1, %o1
	b	.L435
	 srl	%o0, %o2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L437
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g2
.L438:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L439
	 srl	%o1, 1, %g3
	sll	%o1, %g3, %o0
	mov	0, %o1
.L440:
	or	%o0, %g2, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L437:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L438
	 srl	%o0, %o2, %g2
.L439:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g3, %g4, %g3
	sll	%o0, %o2, %o0
	or	%g3, %o0, %o0
	b	.L440
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
	srl	%o0, %g1, %g2
.L458:
	andcc	%g2, 1, %g0
	bne	.L457
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L458
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L457:
	jmp	%o7+8
	 add	%g1, 1, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	mov	%o0, %g1
	cmp	%g1, 0
	be	.L466
	 mov	0, %o0
	andcc	%g1, 1, %g0
	bne	.L466
	 mov	1, %o0
.L461:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L461
	 add	%o0, 1, %o0
.L466:
	jmp	%o7+8
	 nop
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
	fbl	.L468
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L469
	 mov	0, %o0
.L469:
	and	%o0, 0xff, %o0
.L468:
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
	fbl	.L472
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L473
	 mov	0, %o0
.L473:
	and	%o0, 0xff, %o0
.L472:
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
	fbl	.L476
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L477
	 mov	0, %o0
.L477:
	and	%o0, 0xff, %o0
.L476:
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
	fbu	.L481
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L481
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L484
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L484
	 ld	[%g1+%lo(.LC17)], %f8
.L483:
	srl	%o1, 31, %g1
.L486:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L481
	 nop
	fmuls	%f8, %f8, %f8
.L484:
	andcc	%o1, 1, %g0
	bne,a	.L483
	 fmuls	%f0, %f8, %f0
	b	.L486
	 srl	%o1, 31, %g1
.L481:
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
	fbu	.L488
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L488
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L491
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L491
	 ldd	[%g1+%lo(.LC21)], %f8
.L490:
	srl	%o2, 31, %g1
.L493:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L488
	 nop
	fmuld	%f8, %f8, %f8
.L491:
	andcc	%o2, 1, %g0
	bne,a	.L490
	 fmuld	%f0, %f8, %f0
	b	.L493
	 srl	%o2, 31, %g1
.L488:
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
	fbu	.L495
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L495
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L498
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L498
	 ldd	[%g1+%lo(.LC25)], %f8
.L497:
	srl	%o2, 31, %g1
.L500:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L495
	 nop
	fmuld	%f8, %f8, %f8
.L498:
	andcc	%o2, 1, %g0
	bne,a	.L497
	 fmuld	%f0, %f8, %f0
	b	.L500
	 srl	%o2, 31, %g1
.L495:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L506
	 nop
	mov	0, %g1
	ldub	[%o1+%g1], %g3
.L505:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L505
	 ldub	[%o1+%g1], %g3
.L506:
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
	be	.L514
	 add	%i0, %o0, %o0
.L508:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L514
	 cmp	%i2, 0
	add	%i1, 1, %i1
	addcc	%i2, -1, %i2
	bne	.L508
	 add	%o0, 1, %o0
	cmp	%i2, 0
.L514:
	be,a	.L513
	 stb	%g0, [%o0]
.L513:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L517
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L521:
	cmp	%g2, 0
	bne,a	.L518
	 add	%g1, 1, %g1
.L517:
	jmp	%o7+8
	 mov	%g1, %o0
.L518:
	cmp	%g1, %o1
	bne,a	.L521
	 ldsb	[%o0+%g1], %g2
	b,a	.L517
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L530
	 nop
	mov	%o1, %g1
.L533:
	ldsb	[%g1], %g2
.L532:
	cmp	%g2, 0
	be	.L531
	 add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%o0], %g2
	cmp	%g3, %g2
	bne,a	.L532
	 ldsb	[%g1], %g2
.L524:
	jmp	%o7+8
	 nop
.L530:
	jmp	%o7+8
	 mov	0, %o0
.L531:
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L533
	 mov	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	b	.L536
	 mov	0, %o0
.L535:
	add	%g1, 1, %g1
.L540:
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	be	.L541
	 nop
.L536:
	ldsb	[%g1], %g2
	cmp	%o1, %g2
	be,a	.L535
	 mov	%g1, %o0
	b	.L540
	 add	%g1, 1, %g1
.L541:
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
	be	.L543
	 mov	%i0, %g1
	ldsb	[%i1], %i4
.L544:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L548
	 mov	%o0, %i0
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L549
	 mov	%i0, %g1
	b	.L544
	 add	%i0, 1, %i0
.L548:
	mov	0, %g1
.L543:
.L549:
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
	fbl,a	.L563
	 std	%o2, [%sp+72]
.L551:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L554
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L564
	 fnegs	%f0, %f0
.L554:
.L564:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L563:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L551
	 nop
	b	.L554
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
	be	.L566
	 mov	%i0, %g1
	cmp	%i1, %i3
	blu	.L570
	 cmp	%i0, %i5
	bgu	.L571
	 add	%i3, -1, %i3
	ldsb	[%i2], %i4
	b	.L568
	 add	%i2, 1, %i2
.L567:
.L575:
	cmp	%i5, %i0
	blu	.L574
	 mov	0, %g1
.L568:
	ldsb	[%i0], %g1
	cmp	%g1, %i4
	bne,a	.L575
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	bne,a	.L567
	 add	%i0, 1, %i0
	mov	%i0, %g1
.L574:
.L566:
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L570:
	b	.L566
	 mov	0, %g1
.L571:
	b	.L566
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
	fbl,a	.L597
	 fnegs	%f0, %f0
	mov	0, %g2
.L578:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L596
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L582:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L582
	 add	%g1, 1, %g1
.L583:
	cmp	%g2, 0
.L598:
	be	.L587
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L587:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L597:
	b	.L578
	 mov	1, %g2
.L596:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L584
	 mov	1, %g3
	mov	0, %g3
.L584:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L585
	 mov	1, %g1
	mov	0, %g1
.L585:
	and	%g1, %g3, %g3
	andcc	%g3, 0xff, %g0
	be	.L583
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L586:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L586
	 add	%g1, -1, %g1
	b	.L598
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
	be	.L603
	 mov	%i1, %g3
	mov	0, %i0
	b	.L602
	 mov	0, %i1
.L604:
	mov	%o2, %i0
	mov	%o3, %i1
.L602:
	mov	0, %i4
	and	%g3, 1, %i5
	subcc	%g0, %i5, %o3
	subx	%g0, %i4, %o2
	and	%i2, %o2, %o4
	and	%i3, %o3, %o5
	addcc	%i1, %o5, %o3
	addx	%i0, %o4, %o2
	srl	%i3, 31, %g1
	sll	%i2, 1, %i2
	or	%g1, %i2, %i2
	sll	%i3, 1, %i3
	sll	%g2, 31, %g4
	srl	%g3, 1, %g1
	or	%g4, %g1, %g1
	srl	%g2, 1, %g2
	orcc	%g2, %g1, %g0
	bne	.L604
	 mov	%g1, %g3
	mov	%o2, %i0
	jmp	%i7+8
	 restore %g0, %o3, %o1
.L603:
	mov	0, %i0
	jmp	%i7+8
	 restore %g0, 0, %o1
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	cmp	%o1, %o0
	bgeu	.L607
	 mov	1, %g1
	cmp	%o1, 0
.L622:
	bl	.L621
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L622
	 cmp	%o1, 0
.L607:
	cmp	%g1, 0
.L621:
	bne	.L608
	 mov	0, %g2
.L609:
	cmp	%o2, 0
	be,a	.L620
	 mov	%g2, %o0
.L620:
	jmp	%o7+8
	 nop
.L611:
	srl	%g1, 1, %g1
.L623:
	cmp	%g1, 0
	be	.L609
	 srl	%o1, 1, %o1
.L608:
	cmp	%o0, %o1
	blu,a	.L623
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L611
	 or	%g2, %g1, %g2
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xorcc	%g1, %i0, %i0
	be	.L625
	 mov	7, %o0
	call	__clzsi2, 0
	 sll	%i0, 8, %o0
	add	%o0, -1, %o0
.L625:
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
	be	.L631
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L631:
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	cmp	%o0, 0
	be	.L635
	 mov	%o0, %g2
	mov	0, %o0
.L634:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L634
	 sll	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L635:
	jmp	%o7+8
	 mov	0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g4
	cmp	%o0, %o1
	bgeu	.L638
	 and	%o2, -8, %g1
	sll	%g4, 3, %g3
.L653:
	cmp	%g4, 0
	be	.L640
	 mov	0, %g2
.L644:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g2, %g3
	bne	.L644
	 std	%o4, [%g4]
.L640:
	cmp	%o2, %g1
	bleu	.L655
	 nop
	ldub	[%o1+%g1], %g2
.L652:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L652
	 ldub	[%o1+%g1], %g2
.L656:
	jmp	%o7+8
	 nop
.L638:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L653
	 sll	%g4, 3, %g3
	cmp	%o2, 0
	be	.L656
	 add	%o2, -1, %g1
	mov	%g1, %o2
	ldub	[%o1+%o2], %g1
.L654:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L654
	 ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L655:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	bgeu	.L658
	 srl	%o2, 1, %g2
	sll	%g2, 1, %g3
.L671:
	cmp	%g2, 0
	be	.L660
	 mov	0, %g1
	lduh	[%o1+%g1], %g2
.L670:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L670
	 lduh	[%o1+%g1], %g2
.L660:
	andcc	%o2, 1, %g0
	be	.L673
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L658:
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	blu	.L671
	 sll	%g2, 1, %g3
	cmp	%o2, 0
	be	.L674
	 add	%o2, -1, %g1
	mov	%g1, %o2
	ldub	[%o1+%o2], %g1
.L672:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L672
	 ldub	[%o1+%o2], %g1
.L674:
	jmp	%o7+8
	 nop
.L673:
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
	bgeu	.L676
	 and	%o2, -4, %g1
	sll	%g3, 2, %g4
.L692:
	cmp	%g3, 0
	be	.L678
	 mov	0, %g2
	ld	[%o1+%g2], %g3
.L690:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g2, %g4
	bne,a	.L690
	 ld	[%o1+%g2], %g3
.L678:
	cmp	%o2, %g1
	bleu	.L694
	 nop
	ldub	[%o1+%g1], %g2
.L691:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L691
	 ldub	[%o1+%g1], %g2
.L695:
	jmp	%o7+8
	 nop
.L676:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L692
	 sll	%g3, 2, %g4
	cmp	%o2, 0
	be	.L695
	 add	%o2, -1, %g1
	mov	%g1, %o2
	ldub	[%o1+%o2], %g1
.L693:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L693
	 ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L694:
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
	bl	.L699
	 fitod	%f8, %f0
.L698:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L699:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L698
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
	bl	.L702
	 fitod	%f8, %f0
.L701:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L702:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L701
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
.L710:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L707
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L710
	 sub	%g3, %g1, %g2
.L707:
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
.L715:
	andcc	%g2, 1, %g0
	bne	.L712
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L715
	 sra	%o0, %g1, %g2
.L712:
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
	fbge,a	.L722
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L719:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L722:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L719
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	%o0, %g3
	mov	0, %o0
	mov	0, %g1
.L724:
	sra	%g3, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L724
	 add	%g2, %o0, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	mov	%o0, %g3
	mov	0, %o0
	mov	0, %g1
.L727:
	sra	%g3, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L727
	 add	%g2, %o0, %o0
	jmp	%o7+8
	 nop
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	cmp	%o0, 0
	be	.L732
	 mov	%o0, %g2
	mov	0, %o0
.L731:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L731
	 sll	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L732:
	jmp	%o7+8
	 mov	0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	mov	%o0, %g2
	cmp	%g2, 0
	be	.L741
	 mov	0, %o0
	cmp	%o1, 0
	be	.L740
	 nop
.L736:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L736
	 sll	%g2, 1, %g2
.L741:
	jmp	%o7+8
	 nop
.L740:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	cmp	%o1, %o0
	bgeu	.L744
	 mov	1, %g1
	cmp	%o1, 0
.L759:
	bl	.L758
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L759
	 cmp	%o1, 0
.L744:
	cmp	%g1, 0
.L758:
	bne	.L745
	 mov	0, %g2
.L746:
	cmp	%o2, 0
	be,a	.L757
	 mov	%g2, %o0
.L757:
	jmp	%o7+8
	 nop
.L748:
	srl	%g1, 1, %g1
.L760:
	cmp	%g1, 0
	be	.L746
	 srl	%o1, 1, %o1
.L745:
	cmp	%o0, %o1
	blu,a	.L760
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L748
	 or	%g2, %g1, %g2
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
	fbl	.L762
	 mov	-1, %o0
	nop
	fbg	.L763
	 mov	1, %o0
	mov	0, %o0
.L763:
	and	%o0, 0xff, %o0
.L762:
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
	fbl	.L766
	 mov	-1, %o0
	nop
	fbg	.L767
	 mov	1, %o0
	mov	0, %o0
.L767:
	and	%o0, 0xff, %o0
.L766:
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
	bl	.L781
	 mov	0, %o5
.L772:
	cmp	%o1, 0
	be	.L782
	 mov	0, %g2
	mov	0, %g3
.L775:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%g2, %g1, %g2
	sra	%o1, 1, %o1
	add	%g3, 1, %g1
	mov	%g1, %g3
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g1, 0xff, %g1
	cmp	%g1, 32
	addx	%g0, 0, %g1
	andcc	%g4, %g1, %g0
	bne	.L775
	 sll	%o0, 1, %o0
.L773:
.L782:
	cmp	%o5, 0
	be	.L783
	 mov	%g2, %o0
	sub	%g0, %g2, %o0
.L783:
	jmp	%o7+8
	 nop
.L781:
	sub	%g0, %o1, %o1
	b	.L772
	 mov	1, %o5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L789
	 mov	0, %i5
.L785:
	cmp	%i1, 0
	bl,a	.L790
	 sub	%g0, %i1, %i1
.L786:
	mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L791
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L791:
	jmp	%i7+8
	 restore
.L789:
	sub	%g0, %i0, %i0
	b	.L785
	 mov	1, %i5
.L790:
	b	.L786
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L796
	 mov	0, %i5
.L793:
	sra	%i1, 31, %o1
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L797
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L797:
	jmp	%i7+8
	 restore
.L796:
	sub	%g0, %i0, %i0
	b	.L793
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu	.L800
	 mov	1, %g1
	sll	%o1, 16, %g2
.L813:
	cmp	%g2, 0
	bl	.L800
	 sll	%g1, 1, %g2
	sll	%o1, 17, %o1
	srl	%o1, 16, %o1
	mov	%g2, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g2, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L813
	 sll	%o1, 16, %g2
.L800:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L801
	 mov	0, %g3
.L802:
	cmp	%o2, 0
	be,a	.L805
	 mov	%g3, %o0
.L805:
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L804:
	sll	%g1, 16, %g1
.L814:
	srl	%g1, 17, %g2
	mov	%g2, %g1
	cmp	%g2, 0
	be	.L802
	 srl	%o1, 1, %o1
.L801:
	cmp	%o0, %o1
	blu,a	.L814
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L804
	 or	%g3, %g1, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	cmp	%o1, %o0
	bgeu	.L817
	 mov	1, %g1
	cmp	%o1, 0
.L832:
	bl	.L831
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L832
	 cmp	%o1, 0
.L817:
	cmp	%g1, 0
.L831:
	bne	.L818
	 mov	0, %g2
.L819:
	cmp	%o2, 0
	be,a	.L830
	 mov	%g2, %o0
.L830:
	jmp	%o7+8
	 nop
.L821:
	srl	%g1, 1, %g1
.L833:
	cmp	%g1, 0
	be	.L819
	 srl	%o1, 1, %o1
.L818:
	cmp	%o0, %o1
	blu,a	.L833
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	b	.L821
	 or	%g2, %g1, %g2
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L835
	 cmp	%o2, 0
	mov	0, %g1
	sll	%o1, %o2, %o0
.L836:
	mov	%g1, %o1
.L839:
	jmp	%o7+8
	 nop
.L835:
	be	.L839
	 nop
	sll	%o1, %o2, %g1
	sll	%o0, %o2, %o0
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o1
	b	.L836
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L841
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L842:
	mov	%g1, %o0
.L845:
	jmp	%o7+8
	 nop
.L841:
	be	.L845
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L842
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
	bl	.L850
	 mov	0, %g1
	bg	.L850
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L850
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L850:
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
	be	.L858
	 cmp	%o2, 0
	mov	0, %g1
	srl	%o0, %o2, %o1
.L859:
	mov	%g1, %o0
.L862:
	jmp	%o7+8
	 nop
.L858:
	be	.L862
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L859
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
	b	.L873
	 ldd	[%g1+%lo(.LC42)], %f10
.L871:
	srl	%o2, 31, %g1
.L876:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L872
	 fmovs	%f10, %f0
	fmuld	%f8, %f8, %f8
.L873:
	andcc	%o2, 1, %g0
	bne,a	.L871
	 fmuld	%f10, %f8, %f10
	b	.L876
	 srl	%o2, 31, %g1
.L872:
	cmp	%g2, 0
	be	.L874
	 fmovs	%f11, %f1
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
	fdivd	%f0, %f10, %f0
.L874:
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
	b	.L880
	 ld	[%g1+%lo(.LC44)], %f9
.L878:
	srl	%o1, 31, %g1
.L883:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L879
	 cmp	%g2, 0
	fmuls	%f8, %f8, %f8
.L880:
	andcc	%o1, 1, %g0
	bne,a	.L878
	 fmuls	%f9, %f8, %f9
	b	.L883
	 srl	%o1, 31, %g1
.L879:
	be	.L881
	 fmovs	%f9, %f0
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
	fdivs	%f0, %f9, %f0
.L881:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L885
	 mov	0, %g1
	bgu	.L885
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L885
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L885:
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
