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
	be	.L24
	 and	%o2, 0xff, %o2
.L20:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	be	.L30
	 add	%o1, 1, %o1
	addcc	%o3, -1, %o3
	bne	.L20
	 add	%o0, 1, %o0
.L24:
	jmp	%o7+8
	 mov	0, %o0
.L30:
	cmp	%o3, 0
	be	.L24
	 nop
	jmp	%o7+8
	 add	%o0, 1, %o0
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	cmp	%o2, 0
	be	.L37
	 and	%o1, 0xff, %o1
.L32:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L40
	 cmp	%o2, 0
	addcc	%o2, -1, %o2
	bne	.L32
	 add	%o0, 1, %o0
.L37:
	jmp	%o7+8
	 mov	0, %o0
.L40:
	be	.L37
	 nop
	jmp	%o7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	cmp	%o2, 0
	be	.L46
	 nop
.L42:
	ldub	[%o0], %g2
	ldub	[%o1], %g1
	cmp	%g2, %g1
	bne	.L52
	 add	%o0, 1, %o0
	addcc	%o2, -1, %o2
	bne	.L42
	 add	%o1, 1, %o1
.L46:
	jmp	%o7+8
	 mov	0, %o0
.L52:
	cmp	%o2, 0
	be	.L46
	 nop
	jmp	%o7+8
	 sub	%g2, %g1, %o0
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L58
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L58:
	jmp	%i7+8
	 restore
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
.L60:
	cmp	%o2, %g2
	be	.L65
	 mov	0, %o0
	mov	%o2, %o0
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L60
	 add	%o2, -1, %o2
.L65:
	jmp	%o7+8
	 nop
.L59:
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
.L82:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L83
	 add	%o1, 1, %o1
	b	.L82
	 add	%o0, 1, %o0
.L83:
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
	be	.L93
	 ldub	[%o0], %g1
.L85:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	be	.L92
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g2
	cmp	%g2, 0
	bne	.L85
	 ldub	[%o0], %g1
.L93:
	jmp	%o7+8
	 nop
.L92:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L96:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L98
	 cmp	%g1, 0
	bne	.L96
	 add	%o0, 1, %o0
	mov	0, %o0
.L98:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldub	[%o1], %g3
	ldsb	[%o0], %g2
	cmp	%g2, 0
	be	.L100
	 ldub	[%o0], %g4
	sll	%g3, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne,a	.L113
	 and	%g4, 0xff, %o0
	mov	1, %g1
	ldub	[%o0+%g1], %g4
.L114:
	ldub	[%o1+%g1], %g3
	add	%g1, 1, %g1
	sll	%g4, 24, %g2
	cmp	%g2, 0
	be	.L100
	 sra	%g2, 24, %o5
	sll	%g3, 24, %g2
	sra	%g2, 24, %g2
	cmp	%o5, %g2
	be,a	.L114
	 ldub	[%o0+%g1], %g4
.L100:
	and	%g4, 0xff, %o0
.L113:
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
	be	.L116
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L120:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L120
	 add	%g1, 1, %g1
.L116:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L121
	 mov	0, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be,a	.L136
	 ldub	[%o1], %g1
	add	%o2, -1, %o2
	add	%o1, %o2, %o2
.L124:
	ldub	[%o1], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	be	.L123
	 cmp	%o1, %o2
	be,a	.L136
	 ldub	[%o1], %g1
	add	%o0, 1, %o0
	ldub	[%o0], %g2
	cmp	%g2, 0
	bne	.L124
	 add	%o1, 1, %o1
.L123:
	ldub	[%o1], %g1
.L136:
	sub	%g2, %g1, %g2
.L121:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L141
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L139:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L139
	 add	%o1, 2, %o1
.L141:
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
	bleu	.L166
	 mov	%o0, %g1
	cmp	%o0, 31
	bleu	.L166
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%o0, %g2, %g2
	cmp	%g2, 1
	bleu	.L168
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L166:
	mov	1, %o0
.L168:
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
	bleu	.L178
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%o0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	bgeu	.L175
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L175
	 sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L179
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L179
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L178:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L179
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L175:
	mov	1, %o0
.L179:
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
	bleu	.L184
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L184:
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
	fbu	.L186
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L190
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L193
	 nop
	fsubd	%f0, %f8, %f0
.L186:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L190:
	b	.L186
	 fmovs	%f9, %f1
.L193:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L186
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
	fbu	.L194
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L202
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L201
	 nop
	fsubs	%f0, %f8, %f0
.L194:
.L202:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L201:
	sethi	%hi(.LC2), %g1
	b	.L194
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
	fbu	.L209
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L210
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L205
	 fcmped	%f8, %f10
	fmovs	%f10, %f0
	cmp	%g1, 0
	bne	.L203
	 fmovs	%f11, %f1
.L210:
	fmovs	%f8, %f0
	b	.L203
	 fmovs	%f9, %f1
.L205:
	nop
	fbl	.L208
	 mov	1, %g1
	mov	0, %g1
.L208:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	be	.L203
	 fmovs	%f9, %f1
.L209:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L203:
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
	fbu	.L219
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L220
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L215
	 fcmpes	%f8, %f9
	cmp	%g1, 0
	bne	.L213
	 fmovs	%f9, %f0
.L220:
	b	.L213
	 fmovs	%f8, %f0
.L215:
	nop
	fbl	.L218
	 mov	1, %g1
	mov	0, %g1
.L218:
	andcc	%g1, 1, %g0
	be	.L213
	 fmovs	%f8, %f0
.L219:
	fmovs	%f9, %f0
.L213:
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
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L225
	 fcmped	%f8, %f10
	fmovs	%f10, %f0
	cmp	%g1, 0
	bne	.L223
	 fmovs	%f11, %f1
.L230:
	fmovs	%f8, %f0
	b	.L223
	 fmovs	%f9, %f1
.L225:
	nop
	fbl	.L228
	 mov	1, %g1
	mov	0, %g1
.L228:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	be	.L223
	 fmovs	%f9, %f1
.L229:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L223:
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
	fbu	.L239
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L240
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L235
	 fcmped	%f8, %f10
	fmovs	%f8, %f0
	cmp	%g1, 0
	bne	.L233
	 fmovs	%f9, %f1
.L239:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L233:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L235:
	nop
	fbl	.L238
	 mov	1, %g1
	mov	0, %g1
.L238:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	be	.L233
	 fmovs	%f11, %f1
.L240:
	fmovs	%f8, %f0
	b	.L233
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
	fbu	.L249
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L250
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L245
	 fcmpes	%f8, %f9
	cmp	%g1, 0
	bne	.L243
	 fmovs	%f8, %f0
.L249:
	fmovs	%f9, %f0
.L243:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L245:
	nop
	fbl	.L248
	 mov	1, %g1
	mov	0, %g1
.L248:
	andcc	%g1, 1, %g0
	be	.L243
	 fmovs	%f9, %f0
.L250:
	b	.L243
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
	fbu	.L259
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L260
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L255
	 fcmped	%f8, %f10
	fmovs	%f8, %f0
	cmp	%g1, 0
	bne	.L253
	 fmovs	%f9, %f1
.L259:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L253:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L255:
	nop
	fbl	.L258
	 mov	1, %g1
	mov	0, %g1
.L258:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	be	.L253
	 fmovs	%f11, %f1
.L260:
	fmovs	%f8, %f0
	b	.L253
	 fmovs	%f9, %f1
	.size	fminl, .-fminl
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	mov	%o0, %g1
	sethi	%hi(s.0), %o0
	or	%o0, %lo(s.0), %o0
	cmp	%g1, 0
	be	.L264
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L265:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L265
	 add	%g2, 1, %g2
.L264:
	jmp	%o7+8
	 stb	%g0, [%g2]
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
	be,a	.L276
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L278
	 st	%o0, [%g1+4]
.L278:
	jmp	%o7+8
	 nop
.L276:
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
	be,a	.L288
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L288:
	cmp	%g1, 0
	be	.L289
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L289:
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
	be	.L291
	 mov	%i0, %l2
	mov	%i1, %i5
	mov	0, %l0
.L293:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be	.L305
	 nop
	add	%l0, 1, %l0
	cmp	%l1, %l0
	bne	.L293
	 add	%i5, %i3, %i5
.L291:
	add	%l1, 1, %g1
	st	%g1, [%i2]
	mov	%l1, %o1
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L305
	 add	%i1, %o0, %i0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L305:
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
	be	.L307
	 mov	%i0, %l0
	mov	0, %i5
.L309:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be	.L317
	 nop
	add	%i5, 1, %i5
	cmp	%i2, %i5
	bne	.L309
	 add	%i1, %i3, %i1
.L307:
	mov	0, %i0
.L317:
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
	b	.L340
	 mov	%o0, %g2
.L337:
	add	%g2, 1, %g2
.L340:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	add	%g3, -9, %g3
	cmp	%g3, 4
	bleu	.L337
	 sra	%g1, 24, %g3
	cmp	%g3, 32
	be,a	.L340
	 add	%g2, 1, %g2
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L325
	 mov	0, %g4
	cmp	%g1, 45
	bne,a	.L342
	 ldub	[%g2], %g1
	mov	1, %g4
.L325:
	add	%g2, 1, %g2
	ldub	[%g2], %g1
.L342:
	ldsb	[%g2], %g3
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L328
	 mov	0, %o0
.L327:
	sll	%o0, 2, %g3
	add	%g3, %o0, %g3
	sll	%g3, 1, %g3
	add	%g2, 1, %g2
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g3, %g1, %o0
	ldsb	[%g2], %g3
	add	%g3, -48, %g3
	cmp	%g3, 9
	bleu	.L327
	 ldub	[%g2], %g1
.L328:
	cmp	%g4, 0
	be,a	.L341
	 sub	%g0, %o0, %o0
.L341:
	jmp	%o7+8
	 nop
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	b	.L364
	 mov	%o0, %g2
.L361:
	add	%g2, 1, %g2
.L364:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	add	%g3, -9, %g3
	cmp	%g3, 4
	bleu	.L361
	 sra	%g1, 24, %g3
	cmp	%g3, 32
	be,a	.L364
	 add	%g2, 1, %g2
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L349
	 mov	0, %g4
	cmp	%g1, 45
	bne,a	.L366
	 ldub	[%g2], %g1
	mov	1, %g4
.L349:
	add	%g2, 1, %g2
	ldub	[%g2], %g1
.L366:
	ldsb	[%g2], %g3
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L352
	 mov	0, %o0
.L351:
	sll	%o0, 2, %g3
	add	%g3, %o0, %g3
	sll	%g3, 1, %g3
	add	%g2, 1, %g2
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g3, %g1, %o0
	ldsb	[%g2], %g3
	add	%g3, -48, %g3
	cmp	%g3, 9
	bleu	.L351
	 ldub	[%g2], %g1
.L352:
	cmp	%g4, 0
	be,a	.L365
	 sub	%g0, %o0, %o0
.L365:
	jmp	%o7+8
	 nop
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	b	.L388
	 mov	%i0, %g1
.L385:
	add	%g1, 1, %g1
.L388:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g3
	add	%g3, -9, %g3
	cmp	%g3, 4
	bleu	.L385
	 sra	%g2, 24, %g3
	cmp	%g3, 32
	be,a	.L388
	 add	%g1, 1, %g1
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be	.L373
	 mov	0, %o7
	cmp	%g2, 45
	bne,a	.L389
	 ldub	[%g1], %g2
	mov	1, %o7
.L373:
	add	%g1, 1, %g1
	ldub	[%g1], %g2
.L389:
	ldsb	[%g1], %g3
	add	%g3, -48, %g3
	mov	0, %i0
	cmp	%g3, 9
	bgu	.L376
	 mov	0, %i1
.L375:
	srl	%i1, 30, %g4
	sll	%i0, 2, %g3
	or	%g4, %g3, %o4
	sll	%i1, 2, %o5
	addcc	%o5, %i1, %i5
	addx	%o4, %i0, %i4
	srl	%i5, 31, %i1
	sll	%i4, 1, %g4
	sll	%i5, 1, %g3
	or	%i1, %g4, %i4
	add	%g1, 1, %g1
	add	%g2, -48, %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %i3
	sra	%g2, 31, %i2
	subcc	%g3, %i3, %i1
	subx	%i4, %i2, %i0
	ldsb	[%g1], %g3
	add	%g3, -48, %g3
	cmp	%g3, 9
	bleu	.L375
	 ldub	[%g1], %g2
.L376:
	cmp	%o7, 0
	bne	.L390
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L390:
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	mov	%i0, %l0
.L396:
.L401:
	cmp	%i2, 0
	be	.L392
	 srl	%i2, 1, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	add	%i1, %o0, %i0
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bl,a	.L396
	 mov	%i5, %i2
	ble	.L402
	 nop
	add	%i0, %i3, %i1
	add	%i2, -1, %i2
	b	.L401
	 sub	%i2, %i5, %i2
.L392:
	mov	0, %i0
.L402:
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
	bne	.L407
	 mov	%i0, %l1
.L404:
	mov	0, %i0
.L416:
	jmp	%i7+8
	 restore
.L406:
	cmp	%l0, 0
.L415:
	be	.L404
	 mov	%l0, %i2
.L407:
	sra	%i2, 1, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	cmp	%o0, 0
	be	.L416
	 nop
	ble	.L415
	 cmp	%l0, 0
	add	%i0, %i3, %i1
	add	%i2, -1, %i2
	b	.L406
	 sra	%i2, 1, %l0
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
	be	.L440
	 cmp	%g0, %g1
	cmp	%g1, 0
.L441:
	be	.L440
	 cmp	%g0, %g1
	add	%o0, 4, %o0
	ld	[%o0], %g1
	cmp	%g1, %o1
	bne	.L441
	 cmp	%g1, 0
	cmp	%g0, %g1
.L440:
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
	be	.L443
	 cmp	%g3, 0
	be	.L459
	 cmp	%g2, %g3
	mov	4, %g1
	ld	[%o0+%g1], %g2
.L460:
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	xor	%g2, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	be	.L443
	 add	%g1, 4, %g1
	cmp	%g3, 0
	bne,a	.L460
	 ld	[%o0+%g1], %g2
.L443:
	cmp	%g2, %g3
.L459:
	bl	.L461
	 mov	-1, %o0
	bg	.L461
	 mov	1, %o0
	mov	0, %o0
.L461:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L463:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L463
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
	be	.L466
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L470:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L470
	 add	%g1, 4, %g1
.L466:
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
	be,a	.L488
	 mov	0, %o0
.L472:
	ld	[%o0], %g1
	ld	[%o1], %g2
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	be	.L473
	 cmp	%g2, 0
	be	.L489
	 cmp	%o2, 0
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	bne	.L472
	 add	%o1, 4, %o1
	mov	0, %o0
.L488:
	jmp	%o7+8
	 nop
.L473:
	cmp	%o2, 0
.L489:
	be,a	.L488
	 mov	0, %o0
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L488
	 mov	-1, %o0
	bg	.L488
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	be	.L496
	 nop
.L491:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L499
	 cmp	%o2, 0
	addcc	%o2, -1, %o2
	bne	.L491
	 add	%o0, 4, %o0
.L496:
	jmp	%o7+8
	 mov	0, %o0
.L499:
	be	.L496
	 nop
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	be,a	.L514
	 mov	0, %o0
.L501:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bne	.L513
	 add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	bne	.L501
	 add	%o1, 4, %o1
	mov	0, %o0
.L514:
	jmp	%o7+8
	 nop
.L513:
	cmp	%o2, 0
	be,a	.L514
	 mov	0, %o0
	cmp	%g2, %g1
	bl	.L514
	 mov	-1, %o0
	bg	.L514
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L520
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L520:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L535
	 nop
	sub	%o0, %o1, %g2
	sll	%o2, 2, %g3
	cmp	%g2, %g3
	blu	.L523
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L536
	 mov	0, %g2
.L524:
	ld	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L524
	 add	%g2, 4, %g2
.L536:
	jmp	%o7+8
	 nop
.L523:
	cmp	%o2, 0
	be	.L535
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L534:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L534
	 ld	[%o1+%g1], %g2
.L535:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L544
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L539:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L539
	 st	%o1, [%g2-4]
.L544:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L546
	 nop
	cmp	%o2, 0
	be	.L560
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L558:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L558
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L546:
	be	.L560
	 nop
	cmp	%o2, 0
	be	.L560
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L559:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L559
	 ldub	[%o0+%g1], %g2
.L560:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be,a	.L563
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g3
.L564:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L565
	 and	%o2, 63, %g2
	srl	%o0, %g2, %o1
	mov	0, %o0
.L566:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g3, %o1
.L563:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L564
	 sll	%o1, %o2, %g3
.L565:
	sll	%o0, 1, %g4
	xnor	%g0, %g2, %o5
	sll	%g4, %o5, %g4
	srl	%o1, %g2, %o1
	or	%g4, %o1, %o1
	b	.L566
	 srl	%o0, %g2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be,a	.L568
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g3
.L569:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L570
	 and	%o2, 63, %g2
	sll	%o1, %g2, %o0
	mov	0, %o1
.L571:
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L568:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L569
	 srl	%o0, %o2, %g3
.L570:
	srl	%o1, 1, %g4
	xnor	%g0, %g2, %o5
	srl	%g4, %o5, %g4
	sll	%o0, %g2, %o0
	or	%g4, %o0, %o0
	b	.L571
	 sll	%o1, %g2, %o1
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
	sll	%o1, 24, %g1
	srl	%o0, 24, %g3
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g4
	or	%g4, 768, %g4
	and	%g2, %g4, %g2
	or	%g3, %g2, %g3
	sll	%o0, 8, %o5
	srl	%o1, 24, %g2
	or	%o5, %g2, %g2
	sethi	%hi(16711680), %o4
	and	%g2, %o4, %g2
	or	%g3, %g2, %g3
	sll	%o0, 24, %g2
	sll	%o1, 8, %o5
	srl	%o1, 24, %o3
	or	%g1, %o3, %o0
	srl	%o1, 8, %g1
	or	%g1, %g2, %g1
	and	%g1, %g4, %g1
	or	%o0, %g1, %g1
	and	%o5, %o4, %o0
	or	%g1, %o0, %o0
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
.L589:
	andcc	%g2, 1, %g0
	bne	.L588
	 add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L589
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L588:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	mov	%o0, %g1
	cmp	%g1, 0
	be	.L597
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L597
	 nop
	mov	1, %o0
.L592:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L592
	 add	%o0, 1, %o0
.L597:
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
	fbl	.L598
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L598
	 mov	0, %o0
.L598:
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
	fbl	.L602
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L602
	 mov	0, %o0
.L602:
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
	fbl	.L606
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L606
	 mov	0, %o0
.L606:
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
	fbu	.L612
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L612
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L615
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L615
	 ld	[%g1+%lo(.LC17)], %f8
.L614:
	srl	%o1, 31, %g1
.L623:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L612
	 nop
	fmuls	%f8, %f8, %f8
.L615:
	andcc	%o1, 1, %g0
	bne,a	.L614
	 fmuls	%f0, %f8, %f0
	b	.L623
	 srl	%o1, 31, %g1
.L612:
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
	fbu	.L625
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L625
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L628
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L628
	 ldd	[%g1+%lo(.LC21)], %f8
.L627:
	srl	%o2, 31, %g1
.L636:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L625
	 nop
	fmuld	%f8, %f8, %f8
.L628:
	andcc	%o2, 1, %g0
	bne,a	.L627
	 fmuld	%f0, %f8, %f0
	b	.L636
	 srl	%o2, 31, %g1
.L625:
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
	fbu	.L638
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L638
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L641
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L641
	 ldd	[%g1+%lo(.LC25)], %f8
.L640:
	srl	%o2, 31, %g1
.L649:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L638
	 nop
	fmuld	%f8, %f8, %f8
.L641:
	andcc	%o2, 1, %g0
	bne,a	.L640
	 fmuld	%f0, %f8, %f0
	b	.L649
	 srl	%o2, 31, %g1
.L638:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L658
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L657:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L657
	 ldub	[%o0+%g1], %g2
.L658:
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
	be	.L660
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L674:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L674
	 add	%g1, 1, %g1
.L660:
	cmp	%o2, 0
	be,a	.L673
	 stb	%g0, [%g1]
.L662:
	ldub	[%o1], %g2
	stb	%g2, [%g1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be	.L672
	 add	%o1, 1, %o1
	addcc	%o2, -1, %o2
	bne	.L662
	 add	%g1, 1, %g1
	jmp	%o7+8
	 stb	%g0, [%g1]
.L672:
	cmp	%o2, 0
	be,a	.L673
	 stb	%g0, [%g1]
.L673:
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L675
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L682:
	cmp	%g2, 0
	bne,a	.L678
	 add	%g1, 1, %g1
.L675:
	jmp	%o7+8
	 mov	%g1, %o0
.L678:
	cmp	%o1, %g1
	bne,a	.L682
	 ldsb	[%o0+%g1], %g2
	b,a	.L675
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L691:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be	.L688
	 nop
	mov	%o1, %g1
	sra	%g3, 24, %g3
.L687:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	be	.L692
	 cmp	%g2, %g3
	bne	.L687
	 add	%g1, 1, %g1
.L685:
	jmp	%o7+8
	 nop
.L692:
	b	.L691
	 add	%o0, 1, %o0
.L688:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g2
	b	.L695
	 mov	0, %o0
.L694:
	cmp	%g1, 0
.L699:
	be	.L700
	 add	%g2, 1, %g2
.L695:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%g3, %o1
	be,a	.L694
	 mov	%g2, %o0
	b	.L699
	 cmp	%g1, 0
.L700:
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
	be	.L702
	 mov	%o1, %g1
	add	%g1, 1, %g1
.L727:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L727
	 add	%g1, 1, %g1
.L702:
	subcc	%g1, %o1, %g1
	be	.L729
	 nop
	sra	%o4, 24, %o4
	add	%o1, -1, %o3
	b	.L711
	 add	%o3, %g1, %o3
.L710:
	cmp	%o0, 0
	be	.L729
	 nop
	ldub	[%o0], %g3
	mov	%o1, %g2
	cmp	%g3, 0
	be	.L707
	 mov	%o0, %g4
.L706:
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o5
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%o5, %g1, %g0
	be	.L707
	 cmp	%g2, %o3
	be,a	.L728
	 ldub	[%g2], %g1
	add	%g4, 1, %g4
	ldub	[%g4], %g3
	cmp	%g3, 0
	bne	.L706
	 add	%g2, 1, %g2
.L707:
	ldub	[%g2], %g1
.L728:
	cmp	%g1, %g3
	be	.L729
	 nop
	add	%o0, 1, %o0
.L711:
	ldsb	[%o0], %g1
	cmp	%g1, %o4
	be	.L710
	 cmp	%g1, 0
	bne	.L711
	 add	%o0, 1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L729:
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
	fbl,a	.L739
	 std	%o2, [%sp+72]
.L731:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L734
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L740
	 fnegs	%f0, %f0
.L734:
.L740:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L739:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L731
	 nop
	b	.L734
	 fnegs	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	cmp	%i3, 0
	be	.L766
	 mov	%i0, %i4
	cmp	%i1, %i3
	blu	.L751
	 sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu	.L766
	 mov	0, %i0
	b	.L748
	 ldsb	[%i2], %o7
.L764:
	cmp	%g1, 0
	be	.L765
	 nop
	cmp	%i5, %g4
	be	.L765
	 nop
.L743:
	cmp	%i4, %i1
	bgu	.L766
	 mov	0, %i0
.L748:
	ldub	[%i4], %g1
	mov	%i4, %i0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o7
	bne	.L743
	 add	%i4, 1, %i4
	addcc	%i3, -1, %g1
	be	.L766
	 add	%i2, 1, %g2
	mov	%i4, %g3
.L744:
	ldub	[%g3], %i5
	ldub	[%g2], %g4
	cmp	%i5, %g4
	bne	.L764
	 add	%g3, 1, %g3
	addcc	%g1, -1, %g1
	bne	.L744
	 add	%g2, 1, %g2
.L766:
	jmp	%i7+8
	 restore
.L751:
	mov	0, %i0
.L765:
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
	be	.L768
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L768:
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
	fbl,a	.L801
	 fnegs	%f0, %f0
	mov	0, %g2
.L773:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L800
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L777:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L777
	 add	%g1, 1, %g1
.L778:
	cmp	%g2, 0
.L803:
	be	.L782
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L782:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L801:
	b	.L773
	 mov	1, %g2
.L800:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L779
	 mov	1, %g1
	mov	0, %g1
.L779:
	andcc	%g1, 1, %g0
	be	.L784
	 sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L780
	 mov	1, %g1
	mov	0, %g1
.L780:
	andcc	%g1, 1, %g0
	bne,a	.L802
	 mov	0, %g1
.L784:
	b	.L778
	 mov	0, %g1
.L802:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L781:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L781
	 add	%g1, -1, %g1
	b	.L803
	 cmp	%g2, 0
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	%i0, %g2
	mov	%i1, %g1
	orcc	%i1, %i0, %g0
	mov	0, %i0
	be	.L812
	 mov	0, %i1
	mov	0, %i4
.L811:
	and	%g1, 1, %i5
	subcc	%g0, %i5, %o3
	subx	%g0, %i4, %o2
	and	%o2, %i2, %o4
	and	%o3, %i3, %o5
	addcc	%i1, %o5, %i1
	addx	%i0, %o4, %i0
	srl	%i3, 31, %g3
	sll	%i2, 1, %i2
	or	%g3, %i2, %i2
	sll	%g2, 31, %g3
	srl	%g1, 1, %g1
	or	%g3, %g1, %g1
	srl	%g2, 1, %g2
	orcc	%g2, %g1, %g0
	bne	.L811
	 sll	%i3, 1, %i3
.L812:
	jmp	%i7+8
	 restore
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L823
	 mov	1, %g1
	cmp	%o1, 0
.L833:
	bl	.L832
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L815
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L833
	 cmp	%o1, 0
.L815:
	cmp	%g1, 0
.L832:
	be	.L818
	 mov	0, %o0
.L823:
	b	.L817
	 mov	0, %o0
.L820:
	srl	%g1, 1, %g1
.L834:
	cmp	%g1, 0
	be	.L818
	 srl	%o1, 1, %o1
.L817:
	cmp	%g2, %o1
	blu,a	.L834
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L820
	 or	%o0, %g1, %o0
.L818:
	cmp	%o2, 0
	bne	.L831
	 nop
.L813:
	jmp	%o7+8
	 nop
.L831:
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
	cmp	%g2, %g1
	be	.L838
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L838:
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
	be	.L845
	 xor	%i1, %g1, %o1
.L843:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L845:
	cmp	%i1, %i0
	bne	.L843
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
	be	.L852
	 mov	0, %o0
.L848:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L848
	 sll	%o1, 1, %o1
.L852:
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
	blu	.L854
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L868
	 cmp	%g3, 0
	cmp	%o2, 0
	be	.L873
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L869:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L869
	 ldub	[%o1+%g1], %g2
.L873:
	jmp	%o7+8
	 nop
.L854:
	cmp	%g3, 0
.L868:
	be	.L870
	 cmp	%o2, %g1
	sll	%g3, 3, %g3
	mov	0, %g2
.L858:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L858
	 std	%o4, [%g4]
	cmp	%o2, %g1
.L870:
	bleu	.L872
	 nop
	ldub	[%o1+%g1], %g2
.L871:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L871
	 ldub	[%o1+%g1], %g2
.L872:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L875
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bgu	.L890
	 cmp	%g3, 0
	cmp	%o2, 0
	be	.L895
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L891:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L891
	 ldub	[%o1+%g1], %g2
.L895:
	jmp	%o7+8
	 nop
.L894:
	jmp	%o7+8
	 nop
.L875:
	cmp	%g3, 0
.L890:
	be	.L892
	 andcc	%o2, 1, %g0
	sll	%g3, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L893:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L893
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L892:
	be	.L894
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g4
	cmp	%o0, %o1
	blu	.L897
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L911
	 cmp	%g4, 0
	cmp	%o2, 0
	be	.L917
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L912:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L912
	 ldub	[%o1+%g1], %g2
.L917:
	jmp	%o7+8
	 nop
.L897:
	cmp	%g4, 0
.L911:
	be	.L913
	 cmp	%o2, %g1
	sll	%g4, 2, %g4
	mov	0, %g2
	ld	[%o1+%g2], %g3
.L914:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L914
	 ld	[%o1+%g2], %g3
	cmp	%o2, %g1
.L913:
	bleu	.L916
	 nop
	ldub	[%o1+%g1], %g2
.L915:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L915
	 ldub	[%o1+%g1], %g2
.L916:
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
	bl	.L921
	 fitod	%f8, %f0
.L920:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L921:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L920
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
	bl	.L924
	 fitod	%f8, %f0
.L923:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L924:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L923
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
.L932:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L928
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L932
	 sub	%g3, %g1, %g2
.L928:
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
.L937:
	andcc	%g2, 1, %g0
	bne	.L933
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L937
	 sra	%o0, %g1, %g2
.L933:
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
	fbge,a	.L944
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L938:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L944:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L938
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L946:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L946
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
.L949:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L949
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
	be	.L957
	 mov	0, %o0
.L953:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L953
	 sll	%o1, 1, %o1
.L957:
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
	be	.L966
	 mov	0, %o0
	cmp	%o1, 0
	be	.L965
	 nop
.L960:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L960
	 sll	%g2, 1, %g2
.L966:
	jmp	%o7+8
	 nop
.L965:
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
	bgeu	.L977
	 mov	1, %g1
	cmp	%o1, 0
.L987:
	bl	.L986
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L969
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L987
	 cmp	%o1, 0
.L969:
	cmp	%g1, 0
.L986:
	be	.L972
	 mov	0, %o0
.L977:
	b	.L971
	 mov	0, %o0
.L974:
	srl	%g1, 1, %g1
.L988:
	cmp	%g1, 0
	be	.L972
	 srl	%o1, 1, %o1
.L971:
	cmp	%g2, %o1
	blu,a	.L988
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L974
	 or	%o0, %g1, %o0
.L972:
	cmp	%o2, 0
	bne	.L985
	 nop
.L967:
	jmp	%o7+8
	 nop
.L985:
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
	fbl	.L989
	 mov	-1, %g1
	nop
	fbg	.L989
	 mov	1, %g1
	mov	0, %g1
.L989:
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
	fbl	.L993
	 mov	-1, %g1
	nop
	fbg	.L993
	 mov	1, %g1
	mov	0, %g1
.L993:
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
	mov	%o0, %g2
	cmp	%o1, 0
	bl	.L1011
	 mov	0, %o5
.L1000:
	cmp	%o1, 0
	be	.L1001
	 mov	0, %o0
	mov	1, %g3
.L1003:
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
	bne	.L1003
	 add	%g3, 1, %g3
.L1001:
	cmp	%o5, 0
	bne,a	.L1012
	 sub	%g0, %o0, %o0
.L1012:
	jmp	%o7+8
	 nop
.L1011:
	sub	%g0, %o1, %o1
	b	.L1000
	 mov	1, %o5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	bl	.L1035
	 mov	0, %g4
.L1014:
	cmp	%o1, 0
	bl,a	.L1036
	 sub	%g0, %o1, %o1
.L1015:
	mov	%o0, %g2
	cmp	%o0, %o1
	bleu	.L1034
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1038:
	cmp	%o1, %o0
	bgeu	.L1016
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1038
	 sll	%o1, 1, %o1
.L1016:
	cmp	%g1, 0
	be,a	.L1025
	 mov	0, %g3
.L1034:
	b	.L1021
	 mov	0, %g3
.L1035:
	sub	%g0, %o0, %o0
	b	.L1014
	 mov	1, %g4
.L1036:
	b	.L1015
	 xor	%g4, 1, %g4
.L1037:
	or	%g3, %g1, %g3
	srl	%g1, 1, %g1
.L1039:
	cmp	%g1, 0
	be	.L1019
	 srl	%o1, 1, %o1
.L1021:
	cmp	%g2, %o1
	blu,a	.L1039
	 srl	%g1, 1, %g1
	b	.L1037
	 sub	%g2, %o1, %g2
.L1025:
.L1019:
	cmp	%g4, 0
	be	.L1040
	 mov	%g3, %o0
	sub	%g0, %g3, %o0
.L1040:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bl	.L1065
	 mov	0, %g3
.L1042:
	mov	%o0, %g2
	sra	%o1, 31, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu	.L1058
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1069:
	cmp	%o1, %o0
	bgeu	.L1064
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1069
	 sll	%o1, 1, %o1
	b,a	.L1068
.L1065:
	sub	%g0, %o0, %o0
	b	.L1042
	 mov	1, %g3
.L1067:
	srl	%g1, 1, %g1
.L1070:
	srl	%o1, 1, %o1
.L1064:
	cmp	%g1, 0
.L1068:
	be	.L1066
	 cmp	%g3, 0
.L1058:
	cmp	%g2, %o1
	blu,a	.L1070
	 srl	%g1, 1, %g1
	b	.L1067
	 sub	%g2, %o1, %g2
.L1066:
	be	.L1071
	 mov	%g2, %o0
	sub	%g0, %g2, %o0
.L1071:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu	.L1074
	 mov	1, %g2
	sll	%o1, 16, %g1
.L1092:
	cmp	%g1, 0
	bl	.L1074
	 sll	%g2, 1, %g1
	sll	%o1, 17, %o1
	srl	%o1, 16, %o1
	cmp	%o1, %o0
	bgeu	.L1074
	 mov	%g1, %g2
	sll	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L1092
	 sll	%o1, 16, %g1
.L1074:
	sll	%g2, 16, %g1
	cmp	%g1, 0
	bne	.L1076
	 mov	0, %g3
	mov	%g2, %g3
.L1077:
	cmp	%o2, 0
	bne,a	.L1080
	 mov	%o0, %g3
.L1080:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L1079:
	srl	%g1, 17, %g1
.L1093:
	mov	%g1, %g2
	cmp	%g1, 0
	be	.L1077
	 srl	%o1, 1, %o1
	sll	%g2, 16, %g1
.L1076:
	cmp	%o0, %o1
	blu,a	.L1093
	 srl	%g1, 17, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L1079
	 or	%g2, %g3, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L1104
	 mov	1, %g1
	cmp	%o1, 0
.L1114:
	bl	.L1113
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L1096
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1114
	 cmp	%o1, 0
.L1096:
	cmp	%g1, 0
.L1113:
	be	.L1099
	 mov	0, %o0
.L1104:
	b	.L1098
	 mov	0, %o0
.L1101:
	srl	%g1, 1, %g1
.L1115:
	cmp	%g1, 0
	be	.L1099
	 srl	%o1, 1, %o1
.L1098:
	cmp	%g2, %o1
	blu,a	.L1115
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L1101
	 or	%o0, %g1, %o0
.L1099:
	cmp	%o2, 0
	bne	.L1112
	 nop
.L1094:
	jmp	%o7+8
	 nop
.L1112:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L1117
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	mov	0, %g1
.L1118:
	mov	%g1, %o1
.L1121:
	jmp	%o7+8
	 nop
.L1117:
	be	.L1121
	 nop
	sll	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srl	%o1, %g2, %o1
	sll	%o0, %o2, %o0
	b	.L1118
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1123
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L1124:
	mov	%g1, %o0
.L1127:
	jmp	%o7+8
	 nop
.L1123:
	be	.L1127
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L1124
	 or	%o0, %o1, %o1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srl	%o0, 24, %g3
	sll	%o1, 24, %g1
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g4
	or	%g4, 768, %g4
	and	%g2, %g4, %g2
	or	%g3, %g2, %g3
	sll	%o0, 8, %o5
	srl	%o1, 24, %g2
	or	%o5, %g2, %g2
	sethi	%hi(16711680), %o4
	and	%g2, %o4, %g2
	or	%g3, %g2, %g3
	sll	%o0, 24, %g2
	sll	%o1, 8, %o5
	srl	%o1, 24, %o3
	or	%g1, %o3, %o0
	srl	%o1, 8, %g1
	or	%g1, %g2, %g1
	and	%g1, %g4, %g1
	or	%o0, %g1, %g1
	and	%o5, %o4, %o0
	or	%g1, %o0, %o0
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
	sub	%g4, %g2, %o5
	srl	%g1, %o5, %g1
	andcc	%g1, 2, %g0
	bne	.L1132
	 mov	0, %o0
	sub	%g4, %g1, %o0
.L1132:
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
	bl	.L1134
	 mov	0, %g1
	bg	.L1134
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1134
	 mov	0, %g1
	bgu	.L1134
	 mov	2, %g1
	mov	1, %g1
.L1134:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1141
	 mov	0, %g1
	bg	.L1141
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1141
	 mov	0, %g1
	bgu	.L1141
	 mov	2, %g1
	mov	1, %g1
.L1141:
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
	be	.L1148
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %g1
.L1149:
	mov	%g1, %o0
.L1152:
	jmp	%o7+8
	 nop
.L1148:
	be	.L1152
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L1149
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
	and	%i5, %i2, %i5
	sll	%i3, 16, %g1
	add	%i5, %g1, %i1
	srl	%i4, 16, %i4
	mov	%l0, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%i4, %o0, %i4
	srl	%i3, 16, %i0
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
	and	%i3, %i1, %i5
	mov	%i5, %o1
	call	.umul, 0
	 mov	%l4, %o0
	mov	%o0, %i4
	srl	%o0, 16, %l1
	srl	%l0, 16, %l2
	mov	%l2, %o1
	call	.umul, 0
	 mov	%i5, %o0
	add	%o0, %l1, %i5
	and	%i4, %i1, %i4
	sll	%i5, 16, %g1
	add	%i4, %g1, %i4
	srl	%g1, 16, %l1
	srl	%i3, 16, %l3
	mov	%l3, %o1
	call	.umul, 0
	 mov	%l4, %o0
	add	%o0, %l1, %l1
	and	%i4, %i1, %i4
	sll	%l1, 16, %g1
	add	%i4, %g1, %i1
	srl	%i5, 16, %i5
	mov	%l3, %o1
	call	.umul, 0
	 mov	%l2, %o0
	add	%i5, %o0, %i5
	srl	%l1, 16, %l1
	add	%i5, %l1, %i5
	mov	%i2, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%o0, %i5, %i5
	mov	%i0, %o1
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
	b	.L1163
	 ldd	[%g2+%lo(.LC42)], %f0
.L1161:
	srl	%g1, 31, %g2
.L1169:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1162
	 cmp	%o2, 0
	fmuld	%f8, %f8, %f8
.L1163:
	andcc	%g1, 1, %g0
	bne,a	.L1161
	 fmuld	%f0, %f8, %f0
	b	.L1169
	 srl	%g1, 31, %g2
.L1162:
	bl	.L1168
	 sethi	%hi(.LC42), %g1
.L1160:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1168:
	ldd	[%g1+%lo(.LC42)], %f8
	b	.L1160
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
	b	.L1173
	 ld	[%g2+%lo(.LC44)], %f0
.L1171:
	srl	%g1, 31, %g2
.L1179:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1172
	 cmp	%o1, 0
	fmuls	%f8, %f8, %f8
.L1173:
	andcc	%g1, 1, %g0
	bne,a	.L1171
	 fmuls	%f0, %f8, %f0
	b	.L1179
	 srl	%g1, 31, %g2
.L1172:
	bl	.L1178
	 sethi	%hi(.LC44), %g1
.L1170:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1178:
	ld	[%g1+%lo(.LC44)], %f8
	b	.L1170
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1180
	 mov	0, %g1
	bgu	.L1180
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1180
	 mov	0, %g1
	bgu	.L1180
	 mov	2, %g1
	mov	1, %g1
.L1180:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1187
	 mov	0, %g1
	bgu	.L1187
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1187
	 mov	0, %g1
	bgu	.L1187
	 mov	2, %g1
	mov	1, %g1
.L1187:
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
