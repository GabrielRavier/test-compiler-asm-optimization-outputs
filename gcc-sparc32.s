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
	b	.L35
	 add	%o2, -1, %o2
.L37:
	cmp	%o1, %g1
	bne	.L38
	 add	%o2, -1, %g2
	jmp	%o7+8
	 add	%o0, %o2, %o0
.L38:
	mov	%g2, %o2
.L35:
	cmp	%o2, -1
	bne,a	.L37
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	add	%o0, %o2, %o2
	b	.L40
	 mov	%o0, %g1
.L41:
	add	%g1, 1, %g1
.L40:
	cmp	%g1, %o2
	bne,a	.L41
	 stb	%o1, [%g1]
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	b	.L45
	 ldub	[%o1], %g1
.L44:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
.L45:
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L44
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
.L49:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L50
	 nop
	ldub	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L49
	 add	%o0, 1, %o0
.L50:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	ldsb	[%o0], %g1
.L56:
	cmp	%o1, %g1
	be	.L57
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0-1], %g1
	cmp	%g1, 0
	bne,a	.L56
	 ldsb	[%o0], %g1
	mov	0, %o0
.L57:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	b	.L62
	 ldsb	[%o0], %g2
.L61:
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
.L62:
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	bne	.L60
	 cmp	%g2, 0
	bne,a	.L61
	 add	%o0, 1, %o0
.L60:
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
.L65:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L65
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
	be	.L73
	 mov	0, %o0
	mov	%g2, %g1
	add	%o2, -1, %o2
	b	.L68
	 add	%o2, %g2, %o0
.L70:
	add	%o1, 1, %o1
.L68:
	ldub	[%g1], %g2
	cmp	%g2, 0
	be	.L69
	 sub	%o0, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%o1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,a	.L72
	 ldub	[%g1], %o0
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L70
	 add	%g1, 1, %g1
.L69:
	ldub	[%g1], %o0
.L72:
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L73:
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	mov	%o0, %g1
	b	.L75
	 add	%o0, %o2, %o2
.L76:
	stb	%g2, [%o1]
	ldub	[%g1], %g2
	stb	%g2, [%o1+1]
	add	%o1, 2, %o1
	add	%g1, 2, %g1
.L75:
	sub	%o2, %g1, %g2
	cmp	%g2, 1
	bg,a	.L76
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
	bne	.L103
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L103
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L103:
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
	bgu	.L107
	 mov	%o0, %g1
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L108
	 mov	1, %o0
	mov	0, %o0
.L108:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
.L107:
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
	bne	.L114
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L114
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L114
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L114:
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
	bleu	.L119
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L119:
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
	fbu	.L122
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L125
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L128
	 nop
	b	.L122
	 fsubd	%f0, %f8, %f0
.L125:
	b	.L122
	 fmovs	%f9, %f1
.L128:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
.L122:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	fbu	.L130
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L137
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L136
	 nop
	b	.L130
	 fsubs	%f0, %f8, %f0
.L136:
	sethi	%hi(.LC2), %g1
	ld	[%g1+%lo(.LC2)], %f0
.L130:
.L137:
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
	fbu	.L142
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L143
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L140
	 fmovs	%f10, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L139
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	b	.L139
	 fmovs	%f11, %f1
.L140:
	fcmped	%f8, %f10
	nop
	fbl	.L139
	 fmovs	%f11, %f1
	b	.L147
	 fmovs	%f8, %f0
.L142:
	fmovs	%f10, %f0
	b	.L139
	 fmovs	%f11, %f1
.L143:
	fmovs	%f8, %f0
	b	.L139
	 fmovs	%f9, %f1
.L147:
	fmovs	%f9, %f1
.L139:
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
	fbu	.L152
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L153
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L150
	 fcmpes	%f8, %f9
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bge	.L149
	 fmovs	%f8, %f0
	b	.L149
	 fmovs	%f9, %f0
.L150:
	nop
	fbl	.L149
	 fmovs	%f9, %f0
	b	.L157
	 fmovs	%f8, %f0
.L152:
	b	.L149
	 fmovs	%f9, %f0
.L153:
	fmovs	%f8, %f0
.L157:
.L149:
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
	fbu	.L162
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L163
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L160
	 fmovs	%f10, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f8, %f0
	cmp	%g1, 0
	bge	.L159
	 fmovs	%f9, %f1
	fmovs	%f10, %f0
	b	.L159
	 fmovs	%f11, %f1
.L160:
	fcmped	%f8, %f10
	nop
	fbl	.L159
	 fmovs	%f11, %f1
	b	.L167
	 fmovs	%f8, %f0
.L162:
	fmovs	%f10, %f0
	b	.L159
	 fmovs	%f11, %f1
.L163:
	fmovs	%f8, %f0
	b	.L159
	 fmovs	%f9, %f1
.L167:
	fmovs	%f9, %f1
.L159:
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
	fbu	.L172
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L173
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L170
	 fmovs	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L169
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	b	.L169
	 fmovs	%f9, %f1
.L170:
	fcmped	%f8, %f10
	nop
	fbl	.L169
	 fmovs	%f9, %f1
	b	.L177
	 fmovs	%f10, %f0
.L172:
	fmovs	%f10, %f0
	b	.L169
	 fmovs	%f11, %f1
.L173:
	fmovs	%f8, %f0
	b	.L169
	 fmovs	%f9, %f1
.L177:
	fmovs	%f11, %f1
.L169:
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
	fbu	.L182
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L183
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L180
	 fcmpes	%f8, %f9
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bge	.L179
	 fmovs	%f9, %f0
	b	.L179
	 fmovs	%f8, %f0
.L180:
	nop
	fbl	.L179
	 fmovs	%f8, %f0
	b	.L187
	 fmovs	%f9, %f0
.L182:
	b	.L179
	 fmovs	%f9, %f0
.L183:
	fmovs	%f8, %f0
.L187:
.L179:
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
	fbu	.L192
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L193
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be	.L190
	 fmovs	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	fmovs	%f10, %f0
	cmp	%g1, 0
	bge	.L189
	 fmovs	%f11, %f1
	fmovs	%f8, %f0
	b	.L189
	 fmovs	%f9, %f1
.L190:
	fcmped	%f8, %f10
	nop
	fbl	.L189
	 fmovs	%f9, %f1
	b	.L197
	 fmovs	%f10, %f0
.L192:
	fmovs	%f10, %f0
	b	.L189
	 fmovs	%f11, %f1
.L193:
	fmovs	%f8, %f0
	b	.L189
	 fmovs	%f9, %f1
.L197:
	fmovs	%f11, %f1
.L189:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	b	.L199
	 or	%g3, %lo(digits), %g3
.L200:
	ldub	[%g3+%g2], %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	srl	%o0, 6, %o0
.L199:
	cmp	%o0, 0
	bne	.L200
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
	bne,a	.L204
	 ld	[%o1], %g1
	st	%g0, [%o0+4]
	jmp	%o7+8
	 st	%g0, [%o0]
.L204:
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
.L216:
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
.L214:
	add	%i5, 1, %i5
.L213:
	cmp	%i5, %l1
	bne	.L216
	 mov	%l0, %o1
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
	b	.L218
	 mov	0, %i5
.L221:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L219
	 add	%i2, %i3, %i2
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L219:
	add	%i5, 1, %i5
.L218:
	cmp	%i5, %l0
	bne,a	.L221
	 mov	%i2, %o1
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
.L225:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L225
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L231
	 cmp	%g1, 45
	bne	.L227
	 mov	0, %g3
	b	.L226
	 mov	1, %g3
.L231:
	mov	0, %g3
.L226:
	add	%i0, 1, %i0
.L227:
	b	.L228
	 mov	0, %g1
.L229:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L228:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L229
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L234
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L234:
	jmp	%i7+8
	 restore
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
.L237:
	call	isspace, 0
	 ldsb	[%i0], %o0
	cmp	%o0, 0
	bne,a	.L237
	 add	%i0, 1, %i0
	ldsb	[%i0], %g1
	cmp	%g1, 43
	be	.L243
	 cmp	%g1, 45
	bne	.L239
	 mov	0, %g3
	b	.L238
	 mov	1, %g3
.L243:
	mov	0, %g3
.L238:
	add	%i0, 1, %i0
.L239:
	b	.L240
	 mov	0, %g1
.L241:
	add	%g2, %g1, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	ldsb	[%i0-1], %g1
	add	%g1, -48, %g1
	sub	%g2, %g1, %g1
.L240:
	ldsb	[%i0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,a	.L241
	 sll	%g1, 2, %g2
	cmp	%g3, 0
	bne	.L246
	 mov	%g1, %i0
	sub	%g0, %g1, %i0
.L246:
	jmp	%i7+8
	 restore
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
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
	bne	.L251
	 mov	0, %g4
	b	.L250
	 mov	1, %g4
.L255:
	mov	0, %g4
.L250:
	add	%i0, 1, %i0
.L251:
	mov	0, %g2
	b	.L252
	 mov	0, %g3
.L253:
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
.L252:
	ldsb	[%i0], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,a	.L253
	 srl	%g3, 30, %g1
	mov	%g2, %i0
	cmp	%g4, 0
	bne	.L258
	 mov	%g3, %i1
	subcc	%g0, %g3, %i1
	subx	%g0, %g2, %i0
.L258:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	b	.L266
	 cmp	%i2, 0
.L264:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bge	.L261
	 nop
	b	.L260
	 srl	%i2, 1, %i2
.L261:
	ble	.L265
	 nop
	add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	sub	%i2, %g1, %i2
.L260:
	cmp	%i2, 0
.L266:
	bne,a	.L264
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L265:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	b	.L273
	 cmp	%i2, 0
.L271:
	call	.umul, 0
	 sra	%i2, 1, %o0
	add	%i1, %o0, %l0
	mov	%i5, %o2
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L272
	 nop
	ble,a	.L274
	 sra	%i2, 1, %i2
	add	%l0, %i3, %i1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
.L274:
	cmp	%i2, 0
.L273:
	bne,a	.L271
	 mov	%i3, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L272:
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
	b	.L288
	 ld	[%o0], %g1
.L285:
	ld	[%o0], %g1
.L288:
	cmp	%g1, 0
	be	.L284
	 cmp	%o1, %g1
	bne,a	.L285
	 add	%o0, 4, %o0
.L284:
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
	b	.L290
	 mov	%o0, %g1
.L292:
	add	%o1, 4, %o1
.L290:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L296
	 cmp	%g3, 0
	be	.L297
	 cmp	%g2, 0
	bne,a	.L292
	 add	%g1, 4, %g1
	ld	[%g1], %g3
.L296:
.L297:
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L298
	 mov	-1, %o0
	bg	.L294
	 mov	1, %o0
	mov	0, %o0
.L294:
	and	%o0, 0xff, %o0
.L298:
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
.L302:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	ld	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a	.L302
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
.L305:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L305
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
	b	.L307
	 mov	%o0, %g1
.L309:
	add	%g1, 4, %g1
	add	%o1, 4, %o1
.L307:
	cmp	%o2, 0
	be	.L314
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L308
	 cmp	%g3, 0
	be	.L308
	 cmp	%g2, 0
	bne,a	.L309
	 add	%o2, -1, %o2
.L308:
	cmp	%o2, 0
	be	.L314
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L314
	 mov	-1, %o0
	bg	.L311
	 mov	1, %o0
	mov	0, %o0
.L311:
	and	%o0, 0xff, %o0
.L314:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	b	.L321
	 cmp	%o2, 0
.L318:
	add	%o0, 4, %o0
	cmp	%o2, 0
.L321:
	be	.L322
	 cmp	%g0, %o2
	ld	[%o0], %g1
	cmp	%o1, %g1
	bne,a	.L318
	 add	%o2, -1, %o2
	cmp	%g0, %o2
.L322:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	b	.L324
	 mov	%o0, %g1
.L326:
	add	%g1, 4, %g1
	add	%o1, 4, %o1
.L324:
	cmp	%o2, 0
	be	.L331
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L326
	 add	%o2, -1, %o2
	cmp	%o2, 0
	be	.L331
	 nop
	cmp	%g3, %g2
	bl	.L331
	 mov	-1, %o0
	bg	.L328
	 mov	1, %o0
	mov	0, %o0
.L328:
	and	%o0, 0xff, %o0
.L331:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	b	.L333
	 mov	0, %g1
.L334:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L333:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L334
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
	be	.L342
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L341
	 mov	0, %g1
	add	%o2, -1, %o2
	b	.L338
	 sll	%o2, 2, %o2
.L339:
	st	%g1, [%o0+%o2]
	add	%o2, -4, %o2
.L338:
	cmp	%o2, -4
	bne,a	.L339
	 ld	[%o1+%o2], %g1
	jmp	%o7+8
	 nop
.L340:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
.L341:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L340
	 ld	[%o1+%g1], %g2
.L342:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	b	.L345
	 mov	%o0, %g1
.L346:
	st	%o1, [%g1-4]
.L345:
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L346
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
	bgeu	.L348
	 nop
	add	%o0, -1, %o0
	b	.L349
	 add	%o1, -1, %o1
.L350:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
.L349:
	cmp	%o2, 0
	bne,a	.L350
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L348:
	bne	.L352
	 mov	0, %g1
	jmp	%o7+8
	 nop
.L353:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
.L352:
	cmp	%g1, %o2
	bne,a	.L353
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
	be	.L357
	 srl	%o1, 1, %g1
	sll	%o1, %o2, %g2
	b	.L358
	 mov	0, %g3
.L357:
	xnor	%g0, %o2, %g2
	srl	%g1, %g2, %g1
	sll	%o0, %o2, %g2
	or	%g1, %g2, %g2
	sll	%o1, %o2, %g3
.L358:
	sub	%g0, %o2, %g1
	andcc	%g1, 32, %g0
	be,a	.L359
	 sll	%o0, 1, %g1
	srl	%o0, %g1, %o5
	b	.L360
	 mov	0, %o4
.L359:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g1, %g4, %g1
	srl	%o1, %o2, %o5
	or	%g1, %o5, %o5
	srl	%o0, %o2, %o4
.L360:
	or	%o4, %g2, %o0
	jmp	%o7+8
	 or	%o5, %g3, %o1
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L362
	 sll	%o0, 1, %g1
	srl	%o0, %o2, %g3
	b	.L363
	 mov	0, %g2
.L362:
	xnor	%g0, %o2, %g2
	sll	%g1, %g2, %g1
	srl	%o1, %o2, %g3
	or	%g1, %g3, %g3
	srl	%o0, %o2, %g2
.L363:
	sub	%g0, %o2, %g1
	andcc	%g1, 32, %g0
	be,a	.L364
	 srl	%o1, 1, %g1
	sll	%o1, %g1, %o4
	b	.L365
	 mov	0, %o5
.L364:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g1, %g4, %g1
	sll	%o0, %o2, %o4
	or	%g1, %o4, %o4
	sll	%o1, %o2, %o5
.L365:
	or	%o4, %g2, %o0
	jmp	%o7+8
	 or	%o5, %g3, %o1
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
	b	.L378
	 mov	0, %g1
.L381:
	andcc	%g2, 1, %g0
	be,a	.L379
	 add	%g1, 1, %g1
	jmp	%o7+8
	 add	%g1, 1, %o0
.L379:
.L378:
	cmp	%g1, 32
	bne,a	.L381
	 srl	%o0, %g1, %g2
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
	be	.L387
	 mov	0, %o0
	b	.L384
	 mov	1, %o0
.L385:
	add	%o0, 1, %o0
.L384:
	andcc	%g1, 1, %g0
	be,a	.L385
	 sra	%g1, 1, %g1
.L387:
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
	fbl	.L389
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L389
	 mov	0, %o0
.L389:
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
	fbl	.L395
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L395
	 mov	0, %o0
.L395:
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
	fbl	.L401
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L401
	 mov	0, %o0
.L401:
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
	fbu	.L408
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L408
	 sethi	%hi(.LC17), %g1
	cmp	%o1, 0
	bge	.L411
	 ld	[%g1+%lo(.LC17)], %f8
	sethi	%hi(.LC16), %g1
	ld	[%g1+%lo(.LC16)], %f8
.L411:
	andcc	%o1, 1, %g0
	bne,a	.L410
	 fmuls	%f0, %f8, %f0
.L410:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L408
	 nop
	b	.L411
	 fmuls	%f8, %f8, %f8
.L408:
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
	fbu	.L414
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L414
	 sethi	%hi(.LC21), %g1
	cmp	%o2, 0
	bge	.L417
	 ldd	[%g1+%lo(.LC21)], %f8
	sethi	%hi(.LC20), %g1
	ldd	[%g1+%lo(.LC20)], %f8
.L417:
	andcc	%o2, 1, %g0
	bne,a	.L416
	 fmuld	%f0, %f8, %f0
.L416:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L414
	 nop
	b	.L417
	 fmuld	%f8, %f8, %f8
.L414:
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
	fbu	.L420
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L420
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L423
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L423:
	andcc	%o2, 1, %g0
	bne,a	.L422
	 fmuld	%f0, %f8, %f0
.L422:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L420
	 nop
	b	.L423
	 fmuld	%f8, %f8, %f8
.L420:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	b	.L426
	 mov	0, %g1
.L427:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
.L426:
	cmp	%g1, %o2
	bne,a	.L427
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
	b	.L429
	 add	%i0, %o0, %o0
.L431:
	add	%o0, 1, %o0
	add	%i2, -1, %i2
.L429:
	cmp	%i2, 0
	be,a	.L433
	 stb	%g0, [%o0]
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,a	.L431
	 add	%i1, 1, %i1
	cmp	%i2, 0
	be,a	.L433
	 stb	%g0, [%o0]
.L433:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	mov	0, %g1
.L437:
	cmp	%g1, %o1
	be	.L436
	 nop
	ldsb	[%o0+%g1], %g2
	cmp	%g2, 0
	bne,a	.L437
	 add	%g1, 1, %g1
.L436:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	b	.L445
	 ldsb	[%o0], %g1
.L441:
	ldsb	[%g1-1], %g3
	ldsb	[%o0], %g2
	cmp	%g3, %g2
	bne,a	.L446
	 ldsb	[%g1], %g2
	jmp	%o7+8
	 nop
.L444:
	ldsb	[%g1], %g2
.L446:
	cmp	%g2, 0
	bne	.L441
	 add	%g1, 1, %g1
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
.L445:
	cmp	%g1, 0
	bne,a	.L444
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
	mov	0, %o0
	ldsb	[%g1], %g2
.L452:
	cmp	%o1, %g2
	be,a	.L448
	 mov	%g1, %o0
.L448:
	add	%g1, 1, %g1
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	bne,a	.L452
	 ldsb	[%g1], %g2
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
	be	.L454
	 mov	%i0, %g1
	b	.L455
	 ldsb	[%i1], %i4
.L456:
	mov	%i5, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L458
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L455:
	mov	%i4, %o1
	call	strchr, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L456
	 mov	%o0, %i0
	mov	0, %g1
.L458:
.L454:
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
	fbuge	.L460
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbg,a	.L472
	 fnegs	%f0, %f0
.L460:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L463
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L463
	 fnegs	%f0, %f0
.L463:
.L472:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	be	.L474
	 mov	%i0, %g1
	cmp	%i1, %i3
	blu	.L479
	 add	%i2, 1, %i4
	b	.L475
	 add	%i3, -1, %i3
.L477:
	ldsb	[%i2], %g1
	cmp	%g2, %g1
	bne,a	.L475
	 add	%i0, 1, %i0
	mov	%i3, %o2
	mov	%i4, %o1
	call	memcmp, 0
	 add	%i0, 1, %o0
	cmp	%o0, 0
	be	.L480
	 mov	%i0, %g1
	add	%i0, 1, %i0
.L475:
	cmp	%i0, %i5
	bleu,a	.L477
	 ldsb	[%i0], %g2
	b	.L474
	 mov	0, %g1
.L479:
	mov	0, %g1
.L480:
.L474:
	jmp	%i7+8
	 restore %g0, %g1, %o0
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
	fbuge	.L499
	 nop
	fnegs	%f0, %f0
	b	.L483
	 mov	1, %g2
.L499:
	mov	0, %g2
.L483:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L500
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	b	.L502
	 ldd	[%g3+%lo(.LC32)], %f10
.L487:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
.L502:
	nop
	fbge,a	.L487
	 add	%g1, 1, %g1
	b	.L501
	 st	%g1, [%o2]
.L500:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L489
	 mov	1, %g3
	mov	0, %g3
.L489:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L490
	 mov	1, %g1
	mov	0, %g1
.L490:
	and	%g1, %g3, %g1
	andcc	%g1, 0xff, %g0
	bne	.L496
	 mov	0, %g1
	b	.L501
	 st	%g1, [%o2]
.L492:
	b	.L491
	 faddd	%f0, %f0, %f0
.L496:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L491:
	fcmped	%f0, %f8
	nop
	fbl,a	.L492
	 add	%g1, -1, %g1
	st	%g1, [%o2]
.L501:
	cmp	%g2, 0
	bne,a	.L493
	 fnegs	%f0, %f0
.L493:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	b	.L504
	 mov	0, %i1
.L507:
	and	%g3, 1, %o3
	orcc	%o2, %o3, %g0
	be	.L508
	 srl	%i3, 31, %g1
	addcc	%i1, %i3, %i1
	addx	%i0, %i2, %i0
.L508:
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
.L504:
	orcc	%g2, %g3, %g0
	bne,a	.L507
	 mov	0, %o2
	jmp	%i7+8
	 restore
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	b	.L510
	 mov	1, %g1
.L513:
	sll	%g1, 1, %g1
.L510:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L511
	 cmp	%o1, 0
	b	.L512
	 mov	0, %g2
.L511:
	bge,a	.L513
	 sll	%o1, 1, %o1
	b	.L512
	 mov	0, %g2
.L516:
	blu,a	.L520
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L520:
	srl	%o1, 1, %o1
.L512:
	cmp	%g1, 0
	bne	.L516
	 cmp	%o0, %o1
	cmp	%o2, 0
	be,a	.L519
	 mov	%g2, %o0
.L519:
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
	be	.L525
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L525:
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
	bge	.L527
	 mov	%i1, %o1
	xnor	%g0, %i0, %g2
	xnor	%g0, %i1, %g3
	mov	%g2, %o0
	mov	%g3, %o1
.L527:
	orcc	%o0, %o1, %g0
	be	.L532
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L532:
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	mov	%o0, %g1
	b	.L534
	 mov	0, %o0
.L536:
	bne,a	.L535
	 add	%o0, %o1, %o0
.L535:
	srl	%g1, 1, %g1
	sll	%o1, 1, %o1
.L534:
	cmp	%g1, 0
	bne,a	.L536
	 andcc	%g1, 1, %g0
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
	blu	.L538
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	bgeu,a	.L548
	 add	%o2, -1, %o2
.L538:
	sll	%g3, 3, %g3
	b	.L540
	 mov	0, %g2
.L541:
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	std	%o4, [%g4]
	add	%g2, 8, %g2
.L540:
	cmp	%g2, %g3
	bne	.L541
	 add	%o1, %g2, %g4
	b	.L547
	 cmp	%o2, %g1
.L543:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
.L547:
	bgu,a	.L543
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L545:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L548:
	cmp	%o2, -1
	bne,a	.L545
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
	blu	.L550
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	bgeu,a	.L557
	 add	%o2, -1, %o2
.L550:
	sll	%g3, 1, %g3
	b	.L552
	 mov	0, %g1
.L553:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
.L552:
	cmp	%g1, %g3
	bne,a	.L553
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L558
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L555:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L557:
	cmp	%o2, -1
	bne,a	.L555
	 ldub	[%o1+%o2], %g1
.L558:
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
	blu	.L560
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	bgeu,a	.L570
	 add	%o2, -1, %o2
.L560:
	sll	%g4, 2, %g4
	b	.L562
	 mov	0, %g2
.L563:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
.L562:
	cmp	%g2, %g4
	bne,a	.L563
	 ld	[%o1+%g2], %g3
	b	.L569
	 cmp	%o2, %g1
.L565:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
.L569:
	bgu,a	.L565
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L567:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
.L570:
	cmp	%o2, -1
	bne,a	.L567
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
	bge	.L573
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L573:
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
	bge	.L575
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L575:
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
	b	.L580
	 mov	15, %g3
.L582:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L581
	 nop
	add	%g1, 1, %g1
.L580:
	cmp	%g1, 16
	bne,a	.L582
	 sub	%g3, %g1, %g2
.L581:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	b	.L584
	 mov	0, %g1
.L586:
	andcc	%g2, 1, %g0
	bne	.L585
	 nop
	add	%g1, 1, %g1
.L584:
	cmp	%g1, 16
	bne,a	.L586
	 sra	%o0, %g1, %g2
.L585:
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
	fbul	.L592
	 nop
	fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L590
	 add	%g2, %g1, %o0
.L592:
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L590:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	b	.L594
	 mov	0, %g1
.L596:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L594:
	cmp	%g1, 16
	bne,a	.L596
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
	b	.L598
	 mov	0, %g1
.L600:
	and	%g2, 1, %g2
	add	%g3, %g2, %g3
	add	%g1, 1, %g1
.L598:
	cmp	%g1, 16
	bne,a	.L600
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
	b	.L602
	 mov	0, %o0
.L604:
	bne,a	.L603
	 add	%o0, %o1, %o0
.L603:
	srl	%g1, 1, %g1
	sll	%o1, 1, %o1
.L602:
	cmp	%g1, 0
	bne,a	.L604
	 andcc	%g1, 1, %g0
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
	be	.L612
	 mov	0, %o0
	b	.L611
	 cmp	%o1, 0
.L609:
	bne,a	.L608
	 add	%o0, %g1, %o0
.L608:
	sll	%g1, 1, %g1
	srl	%o1, 1, %o1
	cmp	%o1, 0
.L611:
	bne,a	.L609
	 andcc	%o1, 1, %g0
.L612:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	b	.L614
	 mov	1, %g1
.L617:
	sll	%g1, 1, %g1
.L614:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L615
	 cmp	%o1, 0
	b	.L616
	 mov	0, %g2
.L615:
	bge,a	.L617
	 sll	%o1, 1, %o1
	b	.L616
	 mov	0, %g2
.L620:
	blu,a	.L624
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L624:
	srl	%o1, 1, %o1
.L616:
	cmp	%g1, 0
	bne	.L620
	 cmp	%o0, %o1
	cmp	%o2, 0
	be,a	.L623
	 mov	%g2, %o0
.L623:
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
	fbl	.L626
	 mov	-1, %o0
	nop
	fbg	.L626
	 mov	1, %o0
	mov	0, %o0
.L626:
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
	fbl	.L630
	 mov	-1, %o0
	nop
	fbg	.L630
	 mov	1, %o0
	mov	0, %o0
.L630:
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
	bge	.L636
	 mov	0, %o5
	sub	%g0, %o1, %o1
	mov	1, %o5
.L636:
	mov	0, %g4
	b	.L637
	 mov	0, %g1
.L640:
	bne,a	.L638
	 add	%g4, %o0, %g4
.L638:
	sll	%o0, 1, %o0
	sra	%o1, 1, %o1
	add	%g1, 1, %g1
.L637:
	cmp	%g0, %o1
	addx	%g0, 0, %g3
	and	%g1, 0xff, %g2
	cmp	%g2, 32
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L640
	 andcc	%o1, 1, %g0
	cmp	%o5, 0
	be	.L644
	 mov	%g4, %o0
	sub	%g0, %g4, %o0
.L644:
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
	bge	.L646
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L646:
	cmp	%i1, 0
	bge	.L650
	 mov	0, %o2
	sub	%g0, %i1, %i1
	xor	%i5, 1, %i5
.L650:
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L651
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L651:
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
	bge	.L653
	 mov	0, %i5
	sub	%g0, %i0, %i0
	mov	1, %i5
.L653:
	sra	%i1, 31, %o1
	xor	%i1, %o1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L657
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L657:
	jmp	%i7+8
	 restore
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	b	.L659
	 mov	1, %g1
.L662:
	srl	%o1, 16, %o1
	sll	%g1, 1, %g1
.L659:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g1, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L660
	 sll	%o1, 16, %g2
	b	.L661
	 mov	0, %g3
.L660:
	cmp	%g2, 0
	bge,a	.L662
	 sll	%o1, 17, %o1
	b	.L661
	 mov	0, %g3
.L665:
	blu,a	.L668
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	or	%g3, %g1, %g3
	sll	%g1, 16, %g1
.L668:
	srl	%g1, 17, %g1
	srl	%o1, 1, %o1
.L661:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L665
	 cmp	%o0, %o1
	cmp	%o2, 0
	be,a	.L666
	 mov	%g3, %o0
.L666:
	sll	%o0, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	b	.L670
	 mov	1, %g1
.L673:
	sll	%g1, 1, %g1
.L670:
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne	.L671
	 cmp	%o1, 0
	b	.L672
	 mov	0, %g2
.L671:
	bge,a	.L673
	 sll	%o1, 1, %o1
	b	.L672
	 mov	0, %g2
.L676:
	blu,a	.L680
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L680:
	srl	%o1, 1, %o1
.L672:
	cmp	%g1, 0
	bne	.L676
	 cmp	%o0, %o1
	cmp	%o2, 0
	be,a	.L679
	 mov	%g2, %o0
.L679:
	jmp	%o7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L682
	 mov	%o0, %g2
	mov	0, %g3
	b	.L684
	 sll	%o1, %o2, %g2
.L682:
	cmp	%o2, 0
	be	.L684
	 mov	%o1, %g3
	sll	%o1, %o2, %g3
	sll	%o0, %o2, %g1
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o2
	or	%o2, %g1, %g2
.L684:
	mov	%g2, %o0
	jmp	%o7+8
	 mov	%g3, %o1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be,a	.L687
	 mov	%o0, %g2
	sra	%o0, 31, %g2
	b	.L689
	 sra	%o0, %o2, %g3
.L687:
	cmp	%o2, 0
	be	.L689
	 mov	%o1, %g3
	sra	%o0, %o2, %g2
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o2
	or	%g1, %o2, %g3
.L689:
	mov	%g2, %o0
	jmp	%o7+8
	 mov	%g3, %o1
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
	bl	.L703
	 mov	0, %g1
	bg	.L703
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L703
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L703:
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
	be,a	.L719
	 mov	%o0, %g2
	mov	0, %g2
	b	.L721
	 srl	%o0, %o2, %g3
.L719:
	cmp	%o2, 0
	be	.L721
	 mov	%o1, %g3
	srl	%o0, %o2, %g2
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o2
	or	%g1, %o2, %g3
.L721:
	mov	%g2, %o0
	jmp	%o7+8
	 mov	%g3, %o1
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
	ldd	[%g1+%lo(.LC42)], %f10
.L733:
	andcc	%o2, 1, %g0
	bne,a	.L731
	 fmuld	%f10, %f8, %f10
.L731:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L732
	 fmovs	%f10, %f0
	b	.L733
	 fmuld	%f8, %f8, %f8
.L732:
	cmp	%g2, 0
	be	.L734
	 fmovs	%f11, %f1
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f0
	fdivd	%f0, %f10, %f0
.L734:
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
	ld	[%g1+%lo(.LC44)], %f9
.L739:
	andcc	%o1, 1, %g0
	bne,a	.L737
	 fmuls	%f9, %f8, %f9
.L737:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L738
	 cmp	%g2, 0
	b	.L739
	 fmuls	%f8, %f8, %f8
.L738:
	be	.L740
	 fmovs	%f9, %f0
	sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f0
	fdivs	%f0, %f9, %f0
.L740:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L743
	 mov	0, %g1
	bgu	.L743
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L743
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L743:
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
