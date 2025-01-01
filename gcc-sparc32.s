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
	cmp	%o2, %g1
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
	cmp	%o1, %g1
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
	cmp	%o1, %g1
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
	be	.L75
	 and	%o1, 0xff, %o1
	ldub	[%o0], %g1
.L73:
	cmp	%o1, %g1
	be	.L74
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L73
	 ldub	[%o0], %g1
.L75:
	jmp	%o7+8
	 nop
.L74:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L78:
	ldsb	[%o0], %g2
	cmp	%o1, %g2
	be	.L80
	 ldub	[%o0], %g1
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L78
	 add	%o0, 1, %o0
	mov	0, %o0
.L80:
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
	bne,a	.L86
	 ldub	[%o0], %o0
	ldsb	[%o0], %g1
.L87:
	cmp	%g1, 0
	be,a	.L86
	 ldub	[%o0], %o0
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	be,a	.L87
	 ldsb	[%o0], %g1
	ldub	[%o0], %o0
.L86:
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
	be	.L93
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L94:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L94
	 add	%g1, 1, %g1
.L89:
.L93:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	mov	%o0, %g2
	add	%o2, -1, %o5
	cmp	%o2, 0
	be	.L104
	 mov	0, %o0
	ldub	[%g2], %g3
	mov	%g2, %g1
	cmp	%g3, 0
	be	.L98
	 add	%g2, %o5, %o5
.L97:
	ldub	[%o1], %g2
	sub	%o5, %g1, %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g4
	and	%g2, 0xff, %g3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	be	.L98
	 and	%g2, 0xff, %g2
	ldub	[%g1], %g3
	cmp	%g2, %g3
	bne,a	.L103
	 ldub	[%g1], %o0
	add	%g1, 1, %g1
	ldub	[%g1], %g2
	cmp	%g2, 0
	bne	.L97
	 add	%o1, 1, %o1
.L98:
	ldub	[%g1], %o0
.L103:
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L104:
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L109
	 add	%o2, -2, %g1
	and	%g1, -2, %g1
	add	%g1, 2, %g1
	add	%o0, %g1, %g1
.L107:
	ldub	[%o0+1], %g2
	stb	%g2, [%o1]
	ldub	[%o0], %g2
	stb	%g2, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %g1
	bne	.L107
	 add	%o1, 2, %o1
.L109:
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
	bne	.L136
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L136
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L136:
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
	bleu	.L146
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
	bne	.L147
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L147
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L147
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L147:
	jmp	%o7+8
	 nop
.L146:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L141
	 mov	1, %o0
	mov	0, %o0
.L141:
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
	bleu	.L152
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L152:
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
	fbu	.L154
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L158
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L161
	 nop
	fsubd	%f0, %f8, %f0
.L154:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L158:
	b	.L154
	 fmovs	%f9, %f1
.L161:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L154
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
	fbu	.L162
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L170
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L169
	 nop
	fsubs	%f0, %f8, %f0
.L162:
.L170:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L169:
	sethi	%hi(.LC2), %g1
	b	.L162
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
	fbu	.L177
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L171
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L173
	 fcmped	%f0, %f8
	cmp	%g1, 0
	be	.L171
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L171:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L173:
	nop
	fbl	.L174
	 mov	1, %g1
	mov	0, %g1
.L174:
	andcc	%g1, 0xff, %g0
	be	.L171
	 nop
	fmovs	%f8, %f0
	b	.L171
	 fmovs	%f9, %f1
.L177:
	fmovs	%f8, %f0
	b	.L171
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
	fbu	.L186
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L180
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L182
	 fcmpes	%f0, %f8
	cmp	%g1, 0
	bne,a	.L180
	 fmovs	%f8, %f0
.L180:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L182:
	nop
	fbl	.L183
	 mov	1, %g1
	mov	0, %g1
.L183:
	andcc	%g1, 0xff, %g0
	bne,a	.L180
	 fmovs	%f8, %f0
	b,a	.L180
.L186:
	b	.L180
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
	fbu	.L195
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L189
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L191
	 fcmped	%f0, %f8
	cmp	%g1, 0
	be	.L189
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L189:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L191:
	nop
	fbl	.L192
	 mov	1, %g1
	mov	0, %g1
.L192:
	andcc	%g1, 0xff, %g0
	be	.L189
	 nop
	fmovs	%f8, %f0
	b	.L189
	 fmovs	%f9, %f1
.L195:
	fmovs	%f8, %f0
	b	.L189
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
	fbu	.L198
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L205
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L200
	 fcmped	%f8, %f0
	cmp	%g1, 0
	be	.L198
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L198:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L200:
	nop
	fbl	.L201
	 mov	1, %g1
	mov	0, %g1
.L201:
	andcc	%g1, 0xff, %g0
	be	.L198
	 nop
	fmovs	%f8, %f0
	b	.L198
	 fmovs	%f9, %f1
.L205:
	fmovs	%f8, %f0
	b	.L198
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
	fbu	.L207
	 ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L214
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L209
	 fcmpes	%f8, %f0
	cmp	%g1, 0
	bne,a	.L207
	 fmovs	%f8, %f0
.L207:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L209:
	nop
	fbl	.L210
	 mov	1, %g1
	mov	0, %g1
.L210:
	andcc	%g1, 0xff, %g0
	bne,a	.L207
	 fmovs	%f8, %f0
	b,a	.L207
.L214:
	b	.L207
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
	fbu	.L216
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L223
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L218
	 fcmped	%f8, %f0
	cmp	%g1, 0
	be	.L216
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L216:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L218:
	nop
	fbl	.L219
	 mov	1, %g1
	mov	0, %g1
.L219:
	andcc	%g1, 0xff, %g0
	be	.L216
	 nop
	fmovs	%f8, %f0
	b	.L216
	 fmovs	%f9, %f1
.L223:
	fmovs	%f8, %f0
	b	.L216
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
	be	.L228
	 mov	%o0, %g1
	sethi	%hi(s.0), %g2
	or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L227:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L227
	 add	%g2, 1, %g2
.L226:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
.L228:
	sethi	%hi(s.0), %g2
	b	.L226
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
	be,a	.L235
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L237
	 st	%o0, [%g1+4]
.L237:
	jmp	%o7+8
	 nop
.L235:
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
	be,a	.L241
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L241:
	cmp	%g1, 0
	be	.L242
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L242:
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
	be	.L244
	 mov	%i0, %l2
	mov	%i1, %i5
	mov	0, %l0
.L246:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be	.L248
	 nop
	add	%l0, 1, %l0
	cmp	%l0, %l1
	bne	.L246
	 add	%i5, %i3, %i5
.L244:
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
.L248:
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
	be	.L252
	 mov	%i0, %l0
	mov	0, %i5
.L251:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be	.L254
	 nop
	add	%i5, 1, %i5
	cmp	%i5, %i2
	bne	.L251
	 add	%i1, %i3, %i1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L252:
	mov	0, %i0
.L254:
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
	b	.L267
	 ldsb	[%i0], %i5
.L258:
	ldsb	[%i0], %i5
.L267:
	call	isspace, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	bne,a	.L258
	 add	%i0, 1, %i0
	cmp	%i5, 43
	be	.L264
	 cmp	%i5, 45
	bne	.L260
	 mov	%o0, %g2
	mov	1, %g2
.L259:
	add	%i0, 1, %i0
.L260:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L268
	 cmp	%g2, 0
	sll	%o0, 2, %g1
.L269:
	add	%g1, %o0, %g1
	sll	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %o0
	add	%o0, -48, %o0
	sub	%g1, %o0, %o0
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L269
	 sll	%o0, 2, %g1
	cmp	%g2, 0
.L268:
	be,a	.L256
	 sub	%g0, %o0, %o0
.L256:
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L264:
	b	.L259
	 mov	%o0, %g2
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
	b	.L281
	 ldsb	[%i0], %i5
.L272:
	ldsb	[%i0], %i5
.L281:
	call	isspace, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	bne,a	.L272
	 add	%i0, 1, %i0
	cmp	%i5, 43
	be	.L278
	 cmp	%i5, 45
	bne	.L274
	 mov	%o0, %g2
	mov	1, %g2
.L273:
	add	%i0, 1, %i0
.L274:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L282
	 cmp	%g2, 0
	sll	%o0, 2, %g1
.L283:
	add	%g1, %o0, %g1
	sll	%g1, 1, %g1
	add	%i0, 1, %i0
	ldsb	[%i0-1], %o0
	add	%o0, -48, %o0
	sub	%g1, %o0, %o0
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L283
	 sll	%o0, 2, %g1
	cmp	%g2, 0
.L282:
	be,a	.L270
	 sub	%g0, %o0, %o0
.L270:
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L278:
	b	.L273
	 mov	%o0, %g2
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	%i0, %i5
.L286:
	ldsb	[%i5], %i4
	call	isspace, 0
	 mov	%i4, %o0
	cmp	%o0, 0
	bne,a	.L286
	 add	%i5, 1, %i5
	cmp	%i4, 43
	be	.L287
	 cmp	%i4, 45
	bne,a	.L294
	 ldsb	[%i5], %g1
	mov	1, %o0
.L287:
	add	%i5, 1, %i5
	ldsb	[%i5], %g1
.L294:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L292
	 mov	0, %i0
	mov	0, %i1
	srl	%i1, 30, %g2
.L295:
	sll	%i0, 2, %g1
	or	%g2, %g1, %o4
	sll	%i1, 2, %o5
	addcc	%o5, %i1, %g3
	addx	%o4, %i0, %g2
	srl	%g3, 31, %i4
	sll	%g2, 1, %g4
	sll	%g3, 1, %g1
	or	%i4, %g4, %g2
	mov	%g1, %g3
	add	%i5, 1, %i5
	ldsb	[%i5-1], %g1
	add	%g1, -48, %g1
	sra	%g1, 31, %i2
	subcc	%g3, %g1, %i1
	subx	%g2, %i2, %i0
	ldsb	[%i5], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L295
	 srl	%i1, 30, %g2
.L289:
	cmp	%o0, 0
	bne	.L296
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L296:
	jmp	%i7+8
	 restore
.L292:
	b	.L289
	 mov	0, %i1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	cmp	%i2, 0
	bne	.L305
	 srl	%i2, 1, %l0
	b	.L297
	 mov	0, %i5
.L302:
.L299:
	cmp	%i2, 0
	be	.L304
	 srl	%i2, 1, %l0
.L305:
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L302
	 mov	%l0, %i2
	ble	.L297
	 nop
	add	%i5, %i3, %i1
	add	%i2, -1, %i2
	b	.L299
	 sub	%i2, %l0, %i2
.L304:
	mov	0, %i5
.L297:
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
	bne	.L309
	 mov	%i2, %l0
	mov	0, %i0
.L314:
	jmp	%i7+8
	 restore
.L308:
	sra	%l0, 1, %l0
.L313:
	cmp	%l0, 0
	be	.L312
	 nop
.L309:
	mov	%i3, %o1
	call	.umul, 0
	 sra	%l0, 1, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	cmp	%o0, 0
	be	.L314
	 nop
	ble,a	.L313
	 sra	%l0, 1, %l0
	add	%i0, %i3, %i1
	b	.L308
	 add	%l0, -1, %l0
.L312:
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
	cmp	%g1, 0
	be	.L329
	 nop
	cmp	%o1, %g1
.L331:
	be	.L330
	 cmp	%g0, %g1
	add	%o0, 4, %o0
	ld	[%o0], %g1
	cmp	%g1, 0
	bne	.L331
	 cmp	%o1, %g1
	ld	[%o0], %g1
	cmp	%g0, %g1
.L330:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
.L329:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bne	.L340
	 nop
	ld	[%o0], %g1
.L343:
	cmp	%g1, 0
	be,a	.L341
	 ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g1, 0
	be,a	.L342
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	add	%o1, 4, %o1
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	be,a	.L343
	 ld	[%o0], %g1
	ld	[%o0], %g2
.L341:
	ld	[%o1], %g1
.L342:
	cmp	%g2, %g1
.L340:
	bl	.L344
	 mov	-1, %o0
	bg	.L337
	 mov	1, %o0
	mov	0, %o0
.L337:
	and	%o0, 0xff, %o0
.L344:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L346:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L346
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
	be	.L349
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L353:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L353
	 add	%g1, 4, %g1
.L349:
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
	be	.L363
	 nop
.L355:
	ld	[%o0], %g1
	ld	[%o1], %g2
	cmp	%g1, %g2
	bne	.L357
	 cmp	%g1, 0
	be	.L357
	 addcc	%o2, -1, %o2
	add	%o0, 4, %o0
	bne	.L355
	 add	%o1, 4, %o1
	jmp	%o7+8
	 mov	0, %o0
.L363:
	jmp	%o7+8
	 mov	0, %o0
.L360:
	bg	.L359
	 mov	1, %o0
	mov	0, %o0
.L359:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
.L357:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bge	.L360
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
	be	.L370
	 nop
.L365:
	ld	[%o0], %g1
	cmp	%o1, %g1
	be	.L372
	 nop
	addcc	%o2, -1, %o2
	bne	.L365
	 add	%o0, 4, %o0
	jmp	%o7+8
	 mov	0, %o0
.L370:
	jmp	%o7+8
	 mov	0, %o0
.L372:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	be	.L383
	 nop
.L374:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bne	.L385
	 addcc	%o2, -1, %o2
	add	%o0, 4, %o0
	bne	.L374
	 add	%o1, 4, %o1
	jmp	%o7+8
	 mov	0, %o0
.L383:
	jmp	%o7+8
	 mov	0, %o0
.L379:
	bg	.L378
	 mov	1, %o0
	mov	0, %o0
.L378:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
.L385:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bge	.L379
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
	be	.L390
	 add	%o2, -1, %g2
	mov	0, %g1
.L388:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L388
	 add	%g1, 4, %g1
.L390:
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L402
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu	.L393
	 cmp	%o2, 0
	add	%o2, -1, %g2
	be	.L403
	 mov	0, %g1
.L394:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L394
	 add	%g1, 4, %g1
.L403:
	jmp	%o7+8
	 nop
.L393:
	be	.L403
	 add	%o2, -1, %g1
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L401:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L401
	 ld	[%o1+%g1], %g2
.L402:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L408
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L406:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L406
	 st	%o1, [%g2-4]
.L408:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L410
	 nop
	cmp	%o2, 0
	be	.L418
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L416:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L416
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L410:
	be	.L418
	 nop
	cmp	%o2, 0
	be	.L418
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L417:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L417
	 ldub	[%o0+%g1], %g2
.L418:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L421
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g2
.L422:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L423
	 sll	%o0, 1, %g3
	srl	%o0, %g3, %o1
	mov	0, %o0
.L424:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g2, %o1
.L421:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L422
	 sll	%o1, %o2, %g2
.L423:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g3, %g4, %g3
	srl	%o1, %o2, %o1
	or	%g3, %o1, %o1
	b	.L424
	 srl	%o0, %o2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L426
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g2
.L427:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L428
	 srl	%o1, 1, %g3
	sll	%o1, %g3, %o0
	mov	0, %o1
.L429:
	or	%o0, %g2, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L426:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L427
	 srl	%o0, %o2, %g2
.L428:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g3, %g4, %g3
	sll	%o0, %o2, %o0
	or	%g3, %o0, %o0
	b	.L429
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
.L447:
	andcc	%g2, 1, %g0
	bne	.L446
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L447
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L446:
	jmp	%o7+8
	 add	%g1, 1, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	cmp	%o0, 0
	be	.L453
	 mov	%o0, %g1
	andcc	%o0, 1, %o0
	bne	.L453
	 nop
	mov	1, %o0
.L450:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L450
	 add	%o0, 1, %o0
.L453:
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
	fbl	.L454
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L456
	 mov	0, %o0
.L456:
	and	%o0, 0xff, %o0
.L454:
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
	fbl	.L458
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L460
	 mov	0, %o0
.L460:
	and	%o0, 0xff, %o0
.L458:
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
	fbl	.L462
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L464
	 mov	0, %o0
.L464:
	and	%o0, 0xff, %o0
.L462:
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
	fbu	.L468
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L468
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L471
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L471
	 ld	[%g1+%lo(.LC17)], %f8
.L470:
	srl	%o1, 31, %g1
.L473:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L468
	 nop
	fmuls	%f8, %f8, %f8
.L471:
	andcc	%o1, 1, %g0
	bne,a	.L470
	 fmuls	%f0, %f8, %f0
	b	.L473
	 srl	%o1, 31, %g1
.L468:
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
	fbu	.L475
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L475
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L478
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L478
	 ldd	[%g1+%lo(.LC21)], %f8
.L477:
	srl	%o2, 31, %g1
.L480:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L475
	 nop
	fmuld	%f8, %f8, %f8
.L478:
	andcc	%o2, 1, %g0
	bne,a	.L477
	 fmuld	%f0, %f8, %f0
	b	.L480
	 srl	%o2, 31, %g1
.L475:
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
	fbu	.L482
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L482
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L485
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L485
	 ldd	[%g1+%lo(.LC25)], %f8
.L484:
	srl	%o2, 31, %g1
.L487:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L482
	 nop
	fmuld	%f8, %f8, %f8
.L485:
	andcc	%o2, 1, %g0
	bne,a	.L484
	 fmuld	%f0, %f8, %f0
	b	.L487
	 srl	%o2, 31, %g1
.L482:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L493
	 nop
	mov	0, %g1
	ldub	[%o1+%g1], %g3
.L492:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L492
	 ldub	[%o1+%g1], %g3
.L493:
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
	be	.L496
	 add	%i0, %o0, %o0
.L495:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L501
	 nop
	add	%i1, 1, %i1
	addcc	%i2, -1, %i2
	bne	.L495
	 add	%o0, 1, %o0
.L496:
	stb	%g0, [%o0]
	jmp	%i7+8
	 restore
.L501:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L510
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L512:
	cmp	%g2, 0
	bne,a	.L511
	 add	%g1, 1, %g1
.L503:
	jmp	%o7+8
	 mov	%g1, %o0
.L510:
	b	.L503
	 mov	%o1, %g1
.L511:
	cmp	%g1, %o1
	bne,a	.L512
	 ldsb	[%o0+%g1], %g2
	b	.L503
	 mov	%o1, %g1
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L520
	 nop
	mov	%o1, %g2
.L517:
.L522:
	ldsb	[%g2], %g3
	cmp	%g3, 0
	be	.L521
	 ldub	[%g2], %g1
	ldsb	[%o0], %g3
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g3, %g1
	bne	.L517
	 add	%g2, 1, %g2
.L515:
	jmp	%o7+8
	 nop
.L520:
	jmp	%o7+8
	 mov	0, %o0
.L521:
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L522
	 mov	%o1, %g2
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	b	.L525
	 mov	0, %o0
.L524:
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be	.L529
	 add	%g1, 1, %g1
.L525:
	ldsb	[%g1], %g3
	cmp	%o1, %g3
	bne	.L524
	 ldub	[%g1], %g2
	b	.L524
	 mov	%g1, %o0
.L529:
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
	be	.L535
	 mov	%o0, %i4
	ldsb	[%i1], %i3
.L532:
	mov	%i3, %o1
	call	strchr, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	be	.L535
	 mov	%o0, %i0
	mov	%i4, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L535
	 nop
	b	.L532
	 add	%i0, 1, %i5
.L535:
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
	fbl,a	.L546
	 std	%o2, [%sp+72]
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L540
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L547
	 fnegs	%f0, %f0
.L540:
.L547:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L546:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L540
	 nop
	b	.L540
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
	be	.L559
	 add	%i0, %i4, %i4
	cmp	%i1, %i3
	blu	.L553
	 nop
	cmp	%i0, %i4
	bgu	.L554
	 nop
	ldsb	[%i2], %i1
	add	%i2, 1, %i2
	b	.L551
	 add	%i3, -1, %i3
.L550:
.L558:
	cmp	%i4, %i5
	blu	.L557
	 nop
.L551:
	ldsb	[%i5], %g1
	cmp	%g1, %i1
	bne,a	.L558
	 add	%i5, 1, %i5
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 add	%i5, 1, %o0
	cmp	%o0, 0
	bne,a	.L550
	 add	%i5, 1, %i5
	mov	%i5, %i0
.L559:
	jmp	%i7+8
	 restore
.L557:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L553:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L554:
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
	fbl,a	.L581
	 fnegs	%f0, %f0
	mov	0, %g2
.L562:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L580
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L566:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L566
	 add	%g1, 1, %g1
.L567:
	cmp	%g2, 0
.L582:
	be	.L571
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L571:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L581:
	b	.L562
	 mov	1, %g2
.L580:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L568
	 mov	1, %g3
	mov	0, %g3
.L568:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L569
	 mov	1, %g1
	mov	0, %g1
.L569:
	and	%g1, %g3, %g3
	andcc	%g3, 0xff, %g0
	be	.L567
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L570:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L570
	 add	%g1, -1, %g1
	b	.L582
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
	be	.L587
	 mov	%i1, %g3
	mov	0, %i0
	mov	0, %i1
	mov	0, %i4
.L589:
	and	%g3, 1, %i5
	subcc	%g0, %i5, %o3
	subx	%g0, %i4, %o2
	and	%i2, %o2, %o4
	and	%i3, %o3, %o5
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
	bne	.L589
	 mov	%g1, %g3
	jmp	%i7+8
	 restore
.L587:
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
.L605:
	bl	.L597
	 mov	0, %o0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L605
	 cmp	%o1, 0
	cmp	%g1, 0
	be	.L594
	 mov	%g1, %o0
.L593:
	b	.L597
	 mov	0, %o0
.L596:
	srl	%g1, 1, %g1
.L606:
	cmp	%g1, 0
	be	.L594
	 srl	%o1, 1, %o1
.L597:
	cmp	%g2, %o1
	blu,a	.L606
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L596
	 or	%o0, %g1, %o0
.L594:
	cmp	%o2, 0
	bne	.L604
	 nop
.L590:
	jmp	%o7+8
	 nop
.L604:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %g1
	xorcc	%g1, %i0, %i0
	be	.L607
	 mov	7, %o0
	call	__clzsi2, 0
	 sll	%i0, 8, %o0
	add	%o0, -1, %o0
.L607:
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
	be	.L614
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L614:
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	cmp	%o0, 0
	be	.L621
	 mov	%o0, %g2
	mov	0, %o0
.L617:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L617
	 sll	%o1, 1, %o1
.L621:
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
	bgeu	.L623
	 and	%o2, -8, %g1
	sll	%g4, 3, %g3
.L638:
	cmp	%g4, 0
	be	.L625
	 mov	0, %g2
.L629:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g2, %g3
	bne	.L629
	 std	%o4, [%g4]
.L625:
	cmp	%o2, %g1
	bleu	.L640
	 nop
	ldub	[%o1+%g1], %g2
.L637:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L637
	 ldub	[%o1+%g1], %g2
.L641:
	jmp	%o7+8
	 nop
.L623:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L638
	 sll	%g4, 3, %g3
	cmp	%o2, 0
	be	.L641
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L639:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L639
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L640:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	bgeu	.L643
	 srl	%o2, 1, %g2
	sll	%g2, 1, %g3
.L656:
	cmp	%g2, 0
	be	.L645
	 mov	0, %g1
	lduh	[%o1+%g1], %g2
.L655:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L655
	 lduh	[%o1+%g1], %g2
.L645:
	andcc	%o2, 1, %g0
	be	.L658
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L643:
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	blu	.L656
	 sll	%g2, 1, %g3
	cmp	%o2, 0
	be	.L659
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L657:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L657
	 ldub	[%o1+%g1], %g2
.L659:
	jmp	%o7+8
	 nop
.L658:
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
	bgeu	.L661
	 and	%o2, -4, %g1
	sll	%g3, 2, %g4
.L677:
	cmp	%g3, 0
	be	.L663
	 mov	0, %g2
	ld	[%o1+%g2], %g3
.L675:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g2, %g4
	bne,a	.L675
	 ld	[%o1+%g2], %g3
.L663:
	cmp	%o2, %g1
	bleu	.L679
	 nop
	ldub	[%o1+%g1], %g2
.L676:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L676
	 ldub	[%o1+%g1], %g2
.L680:
	jmp	%o7+8
	 nop
.L661:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L677
	 sll	%g3, 2, %g4
	cmp	%o2, 0
	be	.L680
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L678:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L678
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L679:
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
	bl	.L684
	 fitod	%f8, %f0
.L682:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L684:
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
	bl	.L687
	 fitod	%f8, %f0
.L686:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L687:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L686
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
.L695:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L691
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L695
	 sub	%g3, %g1, %g2
.L691:
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
.L700:
	andcc	%g2, 1, %g0
	bne	.L696
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L700
	 sra	%o0, %g1, %g2
.L696:
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
	fbge,a	.L707
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L701:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L707:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L701
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L709:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L709
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
.L712:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L712
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
	be	.L720
	 mov	%o0, %g2
	mov	0, %o0
.L716:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L716
	 sll	%o1, 1, %o1
.L720:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	cmp	%o0, 0
	be	.L728
	 mov	%o0, %g2
	cmp	%o1, 0
	be	.L728
	 mov	%o1, %o0
	mov	0, %o0
.L723:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L723
	 sll	%g2, 1, %g2
.L728:
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
	bgeu	.L732
	 mov	1, %g1
	cmp	%o1, 0
.L744:
	bl	.L736
	 mov	0, %o0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L744
	 cmp	%o1, 0
	cmp	%g1, 0
	be	.L733
	 mov	%g1, %o0
.L732:
	b	.L736
	 mov	0, %o0
.L735:
	srl	%g1, 1, %g1
.L745:
	cmp	%g1, 0
	be	.L733
	 srl	%o1, 1, %o1
.L736:
	cmp	%g2, %o1
	blu,a	.L745
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L735
	 or	%o0, %g1, %o0
.L733:
	cmp	%o2, 0
	bne	.L743
	 nop
.L729:
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
	fbg	.L748
	 mov	1, %o0
	mov	0, %o0
.L748:
	and	%o0, 0xff, %o0
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
	fbg	.L752
	 mov	1, %o0
	mov	0, %o0
.L752:
	and	%o0, 0xff, %o0
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
	 mov	0, %o5
.L758:
	mov	0, %o0
	mov	0, %g3
.L761:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	sra	%o1, 1, %o1
	add	%g3, 1, %g1
	mov	%g1, %g3
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g1, 0xff, %g1
	cmp	%g1, 32
	addx	%g0, 0, %g1
	andcc	%g4, %g1, %g0
	bne	.L761
	 sll	%g2, 1, %g2
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
	 mov	0, %o0
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
	bgeu	.L787
	 mov	1, %g1
.L785:
	sll	%o1, 16, %g2
	cmp	%g2, 0
	bl	.L791
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
	bne	.L785
	 mov	%g2, %g1
	sll	%g2, 16, %g3
	cmp	%g3, 0
	be	.L799
	 cmp	%o2, 0
.L787:
	b	.L791
	 mov	0, %g2
.L790:
	sll	%g1, 16, %g1
.L800:
	srl	%g1, 17, %g3
	mov	%g3, %g1
	cmp	%g3, 0
	be	.L788
	 srl	%o1, 1, %o1
.L791:
	cmp	%o0, %o1
	blu,a	.L800
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L790
	 or	%g2, %g1, %g2
.L788:
	cmp	%o2, 0
.L799:
	bne,a	.L792
	 mov	%o0, %g2
.L792:
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
	bgeu	.L804
	 mov	1, %g1
	cmp	%o1, 0
.L816:
	bl	.L808
	 mov	0, %o0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L816
	 cmp	%o1, 0
	cmp	%g1, 0
	be	.L805
	 mov	%g1, %o0
.L804:
	b	.L808
	 mov	0, %o0
.L807:
	srl	%g1, 1, %g1
.L817:
	cmp	%g1, 0
	be	.L805
	 srl	%o1, 1, %o1
.L808:
	cmp	%g2, %o1
	blu,a	.L817
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L807
	 or	%o0, %g1, %o0
.L805:
	cmp	%o2, 0
	bne	.L815
	 nop
.L801:
	jmp	%o7+8
	 nop
.L815:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L819
	 cmp	%o2, 0
	mov	0, %g1
	sll	%o1, %o2, %o0
.L820:
	mov	%g1, %o1
.L823:
	jmp	%o7+8
	 nop
.L819:
	be	.L823
	 nop
	sll	%o1, %o2, %g1
	sll	%o0, %o2, %o0
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o1
	b	.L820
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L825
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L826:
	mov	%g1, %o0
.L829:
	jmp	%o7+8
	 nop
.L825:
	be	.L829
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L826
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
	subx	%g0, -1, %o0
	sll	%o0, 3, %o0
	mov	8, %g2
	sub	%g2, %o0, %g2
	srl	%g1, %g2, %g1
	add	%o0, %g3, %g2
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
	bl	.L834
	 mov	0, %g1
	bg	.L834
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L834
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L834:
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
	subx	%g0, -1, %o0
	sll	%o0, 3, %o0
	srl	%g1, %o0, %g1
	add	%o0, %g2, %g2
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
	be	.L842
	 cmp	%o2, 0
	mov	0, %g1
	srl	%o0, %o2, %o1
.L843:
	mov	%g1, %o0
.L846:
	jmp	%o7+8
	 nop
.L842:
	be	.L846
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L843
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
	and	%i1, %l0, %i3
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l1, %o0
	srl	%o0, 16, %i4
	and	%o0, %l0, %i5
	srl	%i0, 16, %i0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i4, %o0, %g2
	sll	%g2, 16, %g1
	add	%g1, %i5, %o0
	srl	%g2, 16, %i2
	srl	%g1, 16, %i5
	and	%o0, %l0, %l0
	srl	%i1, 16, %i3
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l1, %o0
	add	%i5, %o0, %o0
	sll	%o0, 16, %i1
	add	%i1, %l0, %i1
	srl	%o0, 16, %o0
	add	%o0, %i2, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %i2, %o0, %o0
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
	srl	%o2, 31, %g2
	sethi	%hi(.LC42), %g1
	b	.L857
	 ldd	[%g1+%lo(.LC42)], %f0
.L855:
	srl	%o2, 31, %g1
.L859:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L856
	 cmp	%g2, 0
	fmuld	%f8, %f8, %f8
.L857:
	andcc	%o2, 1, %g0
	bne,a	.L855
	 fmuld	%f0, %f8, %f0
	b	.L859
	 srl	%o2, 31, %g1
.L856:
	be	.L854
	 sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
.L854:
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
	b	.L863
	 ld	[%g1+%lo(.LC44)], %f0
.L861:
	srl	%o1, 31, %g1
.L865:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L862
	 cmp	%g2, 0
	fmuls	%f8, %f8, %f8
.L863:
	andcc	%o1, 1, %g0
	bne,a	.L861
	 fmuls	%f0, %f8, %f0
	b	.L865
	 srl	%o1, 31, %g1
.L862:
	be	.L860
	 sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
.L860:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L867
	 mov	0, %g1
	bgu	.L867
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L867
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L867:
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
