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
	b	.L365
	 mov	%i0, %g1
.L362:
	add	%g1, 1, %g1
.L365:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g3
	add	%g3, -9, %g3
	cmp	%g3, 4
	bleu	.L362
	 sra	%g2, 24, %g3
	cmp	%g3, 32
	be,a	.L365
	 add	%g1, 1, %g1
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be	.L350
	 mov	0, %o7
	cmp	%g2, 45
	bne,a	.L366
	 ldub	[%g1], %g2
	mov	1, %o7
.L350:
	add	%g1, 1, %g1
	ldub	[%g1], %g2
.L366:
	ldsb	[%g1], %g3
	add	%g3, -48, %g3
	mov	0, %i0
	cmp	%g3, 9
	bgu	.L353
	 mov	0, %i1
.L352:
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
	bleu	.L352
	 ldub	[%g1], %g2
.L353:
	cmp	%o7, 0
	bne	.L367
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L367:
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
.L373:
.L378:
	cmp	%i2, 0
	be	.L369
	 srl	%i2, 1, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	add	%i1, %o0, %i0
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bl,a	.L373
	 mov	%i5, %i2
	ble	.L379
	 nop
	add	%i0, %i3, %i1
	add	%i2, -1, %i2
	b	.L378
	 sub	%i2, %i5, %i2
.L369:
	mov	0, %i0
.L379:
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
	bne	.L384
	 mov	%i0, %l1
.L381:
	mov	0, %i0
.L393:
	jmp	%i7+8
	 restore
.L383:
	cmp	%l0, 0
.L392:
	be	.L381
	 mov	%l0, %i2
.L384:
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
	be	.L393
	 nop
	ble	.L392
	 cmp	%l0, 0
	add	%i0, %i3, %i1
	add	%i2, -1, %i2
	b	.L383
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
	be	.L417
	 cmp	%g0, %g1
	cmp	%g1, 0
.L418:
	be	.L417
	 cmp	%g0, %g1
	add	%o0, 4, %o0
	ld	[%o0], %g1
	cmp	%g1, %o1
	bne	.L418
	 cmp	%g1, 0
	cmp	%g0, %g1
.L417:
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
	be	.L420
	 cmp	%g3, 0
	be	.L436
	 cmp	%g2, %g3
	mov	4, %g1
	ld	[%o0+%g1], %g2
.L437:
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	xor	%g2, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	be	.L420
	 add	%g1, 4, %g1
	cmp	%g3, 0
	bne,a	.L437
	 ld	[%o0+%g1], %g2
.L420:
	cmp	%g2, %g3
.L436:
	bl	.L438
	 mov	-1, %o0
	bg	.L438
	 mov	1, %o0
	mov	0, %o0
.L438:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L440:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L440
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
	be	.L443
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L447:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L447
	 add	%g1, 4, %g1
.L443:
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
	be,a	.L465
	 mov	0, %o0
.L449:
	ld	[%o0], %g1
	ld	[%o1], %g2
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	be	.L450
	 cmp	%g2, 0
	be	.L466
	 cmp	%o2, 0
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	bne	.L449
	 add	%o1, 4, %o1
	mov	0, %o0
.L465:
	jmp	%o7+8
	 nop
.L450:
	cmp	%o2, 0
.L466:
	be,a	.L465
	 mov	0, %o0
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L465
	 mov	-1, %o0
	bg	.L465
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
	be	.L473
	 nop
.L468:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L476
	 cmp	%o2, 0
	addcc	%o2, -1, %o2
	bne	.L468
	 add	%o0, 4, %o0
.L473:
	jmp	%o7+8
	 mov	0, %o0
.L476:
	be	.L473
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
	be,a	.L491
	 mov	0, %o0
.L478:
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bne	.L490
	 add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	bne	.L478
	 add	%o1, 4, %o1
	mov	0, %o0
.L491:
	jmp	%o7+8
	 nop
.L490:
	cmp	%o2, 0
	be,a	.L491
	 mov	0, %o0
	cmp	%g2, %g1
	bl	.L491
	 mov	-1, %o0
	bg	.L491
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
	be	.L497
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L497:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L512
	 nop
	sub	%o0, %o1, %g2
	sll	%o2, 2, %g3
	cmp	%g2, %g3
	blu	.L500
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L513
	 mov	0, %g2
.L501:
	ld	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L501
	 add	%g2, 4, %g2
.L513:
	jmp	%o7+8
	 nop
.L500:
	cmp	%o2, 0
	be	.L512
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L511:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L511
	 ld	[%o1+%g1], %g2
.L512:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L521
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L516:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L516
	 st	%o1, [%g2-4]
.L521:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L523
	 nop
	cmp	%o2, 0
	be	.L537
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L535:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L535
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L523:
	be	.L537
	 nop
	cmp	%o2, 0
	be	.L537
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L536:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L536
	 ldub	[%o0+%g1], %g2
.L537:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be,a	.L540
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g3
.L541:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L542
	 and	%o2, 63, %g2
	srl	%o0, %g2, %o1
	mov	0, %o0
.L543:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g3, %o1
.L540:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L541
	 sll	%o1, %o2, %g3
.L542:
	sll	%o0, 1, %g4
	xnor	%g0, %g2, %o5
	sll	%g4, %o5, %g4
	srl	%o1, %g2, %o1
	or	%g4, %o1, %o1
	b	.L543
	 srl	%o0, %g2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be,a	.L545
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g3
.L546:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L547
	 and	%o2, 63, %g2
	sll	%o1, %g2, %o0
	mov	0, %o1
.L548:
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L545:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L546
	 srl	%o0, %o2, %g3
.L547:
	srl	%o1, 1, %g4
	xnor	%g0, %g2, %o5
	srl	%g4, %o5, %g4
	sll	%o0, %g2, %o0
	or	%g4, %o0, %o0
	b	.L548
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
.L566:
	andcc	%g2, 1, %g0
	bne	.L565
	 add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L566
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L565:
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
	be	.L574
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L574
	 nop
	mov	1, %o0
.L569:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L569
	 add	%o0, 1, %o0
.L574:
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
	fbl	.L575
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L575
	 mov	0, %o0
.L575:
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
	fbl	.L579
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L579
	 mov	0, %o0
.L579:
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
	fbl	.L583
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L583
	 mov	0, %o0
.L583:
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
	fbu	.L589
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L589
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L592
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L592
	 ld	[%g1+%lo(.LC17)], %f8
.L591:
	srl	%o1, 31, %g1
.L600:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L589
	 nop
	fmuls	%f8, %f8, %f8
.L592:
	andcc	%o1, 1, %g0
	bne,a	.L591
	 fmuls	%f0, %f8, %f0
	b	.L600
	 srl	%o1, 31, %g1
.L589:
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
	fbu	.L602
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L602
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L605
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L605
	 ldd	[%g1+%lo(.LC21)], %f8
.L604:
	srl	%o2, 31, %g1
.L613:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L602
	 nop
	fmuld	%f8, %f8, %f8
.L605:
	andcc	%o2, 1, %g0
	bne,a	.L604
	 fmuld	%f0, %f8, %f0
	b	.L613
	 srl	%o2, 31, %g1
.L602:
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
	fbu	.L615
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L615
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L618
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	b	.L618
	 ldd	[%g1+%lo(.LC24)], %f8
.L617:
	srl	%o2, 31, %g1
.L626:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L615
	 nop
	fmuld	%f8, %f8, %f8
.L618:
	andcc	%o2, 1, %g0
	bne,a	.L617
	 fmuld	%f0, %f8, %f0
	b	.L626
	 srl	%o2, 31, %g1
.L615:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L635
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L634:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L634
	 ldub	[%o0+%g1], %g2
.L635:
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
	be	.L637
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L651:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L651
	 add	%g1, 1, %g1
.L637:
	cmp	%o2, 0
	be,a	.L650
	 stb	%g0, [%g1]
.L639:
	ldub	[%o1], %g2
	stb	%g2, [%g1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be	.L649
	 add	%o1, 1, %o1
	addcc	%o2, -1, %o2
	bne	.L639
	 add	%g1, 1, %g1
	jmp	%o7+8
	 stb	%g0, [%g1]
.L649:
	cmp	%o2, 0
	be,a	.L650
	 stb	%g0, [%g1]
.L650:
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L652
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L659:
	cmp	%g2, 0
	bne,a	.L655
	 add	%g1, 1, %g1
.L652:
	jmp	%o7+8
	 mov	%g1, %o0
.L655:
	cmp	%o1, %g1
	bne,a	.L659
	 ldsb	[%o0+%g1], %g2
	b,a	.L652
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L668:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be	.L665
	 nop
	mov	%o1, %g1
	sra	%g3, 24, %g3
.L664:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	be	.L669
	 cmp	%g2, %g3
	bne	.L664
	 add	%g1, 1, %g1
.L662:
	jmp	%o7+8
	 nop
.L669:
	b	.L668
	 add	%o0, 1, %o0
.L665:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g2
	b	.L672
	 mov	0, %o0
.L671:
	cmp	%g1, 0
.L676:
	be	.L677
	 add	%g2, 1, %g2
.L672:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%g3, %o1
	be,a	.L671
	 mov	%g2, %o0
	b	.L676
	 cmp	%g1, 0
.L677:
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
	be	.L679
	 mov	%o1, %g1
	add	%g1, 1, %g1
.L704:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L704
	 add	%g1, 1, %g1
.L679:
	subcc	%g1, %o1, %g1
	be	.L706
	 nop
	sra	%o4, 24, %o4
	add	%o1, -1, %o3
	b	.L688
	 add	%o3, %g1, %o3
.L687:
	cmp	%o0, 0
	be	.L706
	 nop
	ldub	[%o0], %g3
	mov	%o1, %g2
	cmp	%g3, 0
	be	.L684
	 mov	%o0, %g4
.L683:
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o5
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%o5, %g1, %g0
	be	.L684
	 cmp	%g2, %o3
	be,a	.L705
	 ldub	[%g2], %g1
	add	%g4, 1, %g4
	ldub	[%g4], %g3
	cmp	%g3, 0
	bne	.L683
	 add	%g2, 1, %g2
.L684:
	ldub	[%g2], %g1
.L705:
	cmp	%g1, %g3
	be	.L706
	 nop
	add	%o0, 1, %o0
.L688:
	ldsb	[%o0], %g1
	cmp	%g1, %o4
	be	.L687
	 cmp	%g1, 0
	bne	.L688
	 add	%o0, 1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L706:
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
	fbl,a	.L716
	 std	%o2, [%sp+72]
.L708:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L711
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L717
	 fnegs	%f0, %f0
.L711:
.L717:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L716:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L708
	 nop
	b	.L711
	 fnegs	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	cmp	%i3, 0
	be	.L743
	 mov	%i0, %i4
	cmp	%i1, %i3
	blu	.L728
	 sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu	.L743
	 mov	0, %i0
	b	.L725
	 ldsb	[%i2], %o7
.L741:
	cmp	%g1, 0
	be	.L742
	 nop
	cmp	%i5, %g4
	be	.L742
	 nop
.L720:
	cmp	%i4, %i1
	bgu	.L743
	 mov	0, %i0
.L725:
	ldub	[%i4], %g1
	mov	%i4, %i0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o7
	bne	.L720
	 add	%i4, 1, %i4
	addcc	%i3, -1, %g1
	be	.L743
	 add	%i2, 1, %g2
	mov	%i4, %g3
.L721:
	ldub	[%g3], %i5
	ldub	[%g2], %g4
	cmp	%i5, %g4
	bne	.L741
	 add	%g3, 1, %g3
	addcc	%g1, -1, %g1
	bne	.L721
	 add	%g2, 1, %g2
.L743:
	jmp	%i7+8
	 restore
.L728:
	mov	0, %i0
.L742:
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
	be	.L745
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L745:
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
	fbl,a	.L778
	 fnegs	%f0, %f0
	mov	0, %g2
.L750:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L777
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L754:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L754
	 add	%g1, 1, %g1
.L755:
	cmp	%g2, 0
.L780:
	be	.L759
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L759:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L778:
	b	.L750
	 mov	1, %g2
.L777:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L756
	 mov	1, %g1
	mov	0, %g1
.L756:
	andcc	%g1, 1, %g0
	be	.L761
	 sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L757
	 mov	1, %g1
	mov	0, %g1
.L757:
	andcc	%g1, 1, %g0
	bne,a	.L779
	 mov	0, %g1
.L761:
	b	.L755
	 mov	0, %g1
.L779:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L758:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L758
	 add	%g1, -1, %g1
	b	.L780
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
	be	.L789
	 mov	0, %i1
	mov	0, %i4
.L788:
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
	bne	.L788
	 sll	%i3, 1, %i3
.L789:
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
	bgeu	.L800
	 mov	1, %g1
	cmp	%o1, 0
.L810:
	bl	.L809
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L792
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L810
	 cmp	%o1, 0
.L792:
	cmp	%g1, 0
.L809:
	be	.L795
	 mov	0, %o0
.L800:
	b	.L794
	 mov	0, %o0
.L797:
	srl	%g1, 1, %g1
.L811:
	cmp	%g1, 0
	be	.L795
	 srl	%o1, 1, %o1
.L794:
	cmp	%g2, %o1
	blu,a	.L811
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L797
	 or	%o0, %g1, %o0
.L795:
	cmp	%o2, 0
	bne	.L808
	 nop
.L790:
	jmp	%o7+8
	 nop
.L808:
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
	be	.L815
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L815:
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
	be	.L822
	 xor	%i1, %g1, %o1
.L820:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L822:
	cmp	%i1, %i0
	bne	.L820
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
	be	.L829
	 mov	0, %o0
.L825:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L825
	 sll	%o1, 1, %o1
.L829:
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
	blu	.L831
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L845
	 cmp	%g3, 0
	cmp	%o2, 0
	be	.L850
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L846:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L846
	 ldub	[%o1+%g1], %g2
.L850:
	jmp	%o7+8
	 nop
.L831:
	cmp	%g3, 0
.L845:
	be	.L847
	 cmp	%o2, %g1
	sll	%g3, 3, %g3
	mov	0, %g2
.L835:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L835
	 std	%o4, [%g4]
	cmp	%o2, %g1
.L847:
	bleu	.L849
	 nop
	ldub	[%o1+%g1], %g2
.L848:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L848
	 ldub	[%o1+%g1], %g2
.L849:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L852
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bgu	.L867
	 cmp	%g3, 0
	cmp	%o2, 0
	be	.L872
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L868:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L868
	 ldub	[%o1+%g1], %g2
.L872:
	jmp	%o7+8
	 nop
.L871:
	jmp	%o7+8
	 nop
.L852:
	cmp	%g3, 0
.L867:
	be	.L869
	 andcc	%o2, 1, %g0
	sll	%g3, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L870:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L870
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L869:
	be	.L871
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
	blu	.L874
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L888
	 cmp	%g4, 0
	cmp	%o2, 0
	be	.L894
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L889:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L889
	 ldub	[%o1+%g1], %g2
.L894:
	jmp	%o7+8
	 nop
.L874:
	cmp	%g4, 0
.L888:
	be	.L890
	 cmp	%o2, %g1
	sll	%g4, 2, %g4
	mov	0, %g2
	ld	[%o1+%g2], %g3
.L891:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L891
	 ld	[%o1+%g2], %g3
	cmp	%o2, %g1
.L890:
	bleu	.L893
	 nop
	ldub	[%o1+%g1], %g2
.L892:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L892
	 ldub	[%o1+%g1], %g2
.L893:
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
	bl	.L898
	 fitod	%f8, %f0
.L897:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L898:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L897
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
	bl	.L901
	 fitod	%f8, %f0
.L900:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L901:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L900
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
.L909:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L905
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L909
	 sub	%g3, %g1, %g2
.L905:
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
.L914:
	andcc	%g2, 1, %g0
	bne	.L910
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L914
	 sra	%o0, %g1, %g2
.L910:
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
	fbge,a	.L921
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L915:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L921:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L915
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L923:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L923
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
.L926:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L926
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
	be	.L934
	 mov	0, %o0
.L930:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L930
	 sll	%o1, 1, %o1
.L934:
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
	be	.L943
	 mov	0, %o0
	cmp	%o1, 0
	be	.L942
	 nop
.L937:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L937
	 sll	%g2, 1, %g2
.L943:
	jmp	%o7+8
	 nop
.L942:
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
	bleu	.L954
	 mov	1, %g1
	cmp	%o1, 0
.L964:
	bl	.L963
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L946
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L964
	 cmp	%o1, 0
.L946:
	cmp	%g1, 0
.L963:
	be	.L949
	 mov	0, %o0
.L954:
	b	.L948
	 mov	0, %o0
.L951:
	srl	%g1, 1, %g1
.L965:
	cmp	%g1, 0
	be	.L949
	 srl	%o1, 1, %o1
.L948:
	cmp	%g2, %o1
	blu,a	.L965
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L951
	 or	%o0, %g1, %o0
.L949:
	cmp	%o2, 0
	bne	.L962
	 nop
.L944:
	jmp	%o7+8
	 nop
.L962:
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
	fbl	.L966
	 mov	-1, %g1
	nop
	fbg	.L966
	 mov	1, %g1
	mov	0, %g1
.L966:
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
	fbl	.L970
	 mov	-1, %g1
	nop
	fbg	.L970
	 mov	1, %g1
	mov	0, %g1
.L970:
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
	bl	.L988
	 mov	0, %o5
.L977:
	cmp	%o1, 0
	be	.L978
	 mov	0, %o0
	mov	1, %g3
.L980:
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
	bne	.L980
	 add	%g3, 1, %g3
.L978:
	cmp	%o5, 0
	bne,a	.L989
	 sub	%g0, %o0, %o0
.L989:
	jmp	%o7+8
	 nop
.L988:
	sub	%g0, %o1, %o1
	b	.L977
	 mov	1, %o5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	bl	.L1012
	 mov	0, %g4
.L991:
	cmp	%o1, 0
	bl,a	.L1013
	 sub	%g0, %o1, %o1
.L992:
	mov	%o0, %g2
	cmp	%o0, %o1
	bleu	.L1011
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1015:
	cmp	%o1, %o0
	bgeu	.L993
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1015
	 sll	%o1, 1, %o1
.L993:
	cmp	%g1, 0
	be,a	.L1002
	 mov	0, %g3
.L1011:
	b	.L998
	 mov	0, %g3
.L1012:
	sub	%g0, %o0, %o0
	b	.L991
	 mov	1, %g4
.L1013:
	b	.L992
	 xor	%g4, 1, %g4
.L1014:
	or	%g3, %g1, %g3
	srl	%g1, 1, %g1
.L1016:
	cmp	%g1, 0
	be	.L996
	 srl	%o1, 1, %o1
.L998:
	cmp	%g2, %o1
	blu,a	.L1016
	 srl	%g1, 1, %g1
	b	.L1014
	 sub	%g2, %o1, %g2
.L1002:
.L996:
	cmp	%g4, 0
	be	.L1017
	 mov	%g3, %o0
	sub	%g0, %g3, %o0
.L1017:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bl	.L1042
	 mov	0, %g3
.L1019:
	mov	%o0, %g2
	sra	%o1, 31, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu	.L1035
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1046:
	cmp	%o1, %o0
	bgeu	.L1041
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1046
	 sll	%o1, 1, %o1
	b,a	.L1045
.L1042:
	sub	%g0, %o0, %o0
	b	.L1019
	 mov	1, %g3
.L1044:
	srl	%g1, 1, %g1
.L1047:
	srl	%o1, 1, %o1
.L1041:
	cmp	%g1, 0
.L1045:
	be	.L1043
	 cmp	%g3, 0
.L1035:
	cmp	%g2, %o1
	blu,a	.L1047
	 srl	%g1, 1, %g1
	b	.L1044
	 sub	%g2, %o1, %g2
.L1043:
	be	.L1048
	 mov	%g2, %o0
	sub	%g0, %g2, %o0
.L1048:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu	.L1051
	 mov	1, %g2
	sll	%o1, 16, %g1
.L1069:
	cmp	%g1, 0
	bl	.L1051
	 sll	%g2, 1, %g1
	sll	%o1, 17, %o1
	srl	%o1, 16, %o1
	cmp	%o1, %o0
	bgeu	.L1051
	 mov	%g1, %g2
	sll	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L1069
	 sll	%o1, 16, %g1
.L1051:
	sll	%g2, 16, %g1
	cmp	%g1, 0
	bne	.L1053
	 mov	0, %g3
	mov	%g2, %g3
.L1054:
	cmp	%o2, 0
	bne,a	.L1057
	 mov	%o0, %g3
.L1057:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L1056:
	srl	%g1, 17, %g1
.L1070:
	mov	%g1, %g2
	cmp	%g1, 0
	be	.L1054
	 srl	%o1, 1, %o1
	sll	%g2, 16, %g1
.L1053:
	cmp	%o0, %o1
	blu,a	.L1070
	 srl	%g1, 17, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L1056
	 or	%g2, %g3, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bleu	.L1081
	 mov	1, %g1
	cmp	%o1, 0
.L1091:
	bl	.L1090
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L1073
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1091
	 cmp	%o1, 0
.L1073:
	cmp	%g1, 0
.L1090:
	be	.L1076
	 mov	0, %o0
.L1081:
	b	.L1075
	 mov	0, %o0
.L1078:
	srl	%g1, 1, %g1
.L1092:
	cmp	%g1, 0
	be	.L1076
	 srl	%o1, 1, %o1
.L1075:
	cmp	%g2, %o1
	blu,a	.L1092
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L1078
	 or	%o0, %g1, %o0
.L1076:
	cmp	%o2, 0
	bne	.L1089
	 nop
.L1071:
	jmp	%o7+8
	 nop
.L1089:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L1094
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	mov	0, %g1
.L1095:
	mov	%g1, %o1
.L1098:
	jmp	%o7+8
	 nop
.L1094:
	be	.L1098
	 nop
	sll	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srl	%o1, %g2, %o1
	sll	%o0, %o2, %o0
	b	.L1095
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1100
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L1101:
	mov	%g1, %o0
.L1104:
	jmp	%o7+8
	 nop
.L1100:
	be	.L1104
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L1101
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
	bne	.L1109
	 mov	0, %o0
	sub	%g4, %g1, %o0
.L1109:
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
	bl	.L1111
	 mov	0, %g1
	bg	.L1111
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1111
	 mov	0, %g1
	bgu	.L1111
	 mov	2, %g1
	mov	1, %g1
.L1111:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1118
	 mov	0, %g1
	bg	.L1118
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1118
	 mov	0, %g1
	bgu	.L1118
	 mov	2, %g1
	mov	1, %g1
.L1118:
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
	be	.L1125
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %g1
.L1126:
	mov	%g1, %o0
.L1129:
	jmp	%o7+8
	 nop
.L1125:
	be	.L1129
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L1126
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
	b	.L1140
	 ldd	[%g2+%lo(.LC42)], %f0
.L1138:
	srl	%g1, 31, %g2
.L1146:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1139
	 cmp	%o2, 0
	fmuld	%f8, %f8, %f8
.L1140:
	andcc	%g1, 1, %g0
	bne,a	.L1138
	 fmuld	%f0, %f8, %f0
	b	.L1146
	 srl	%g1, 31, %g2
.L1139:
	bl	.L1145
	 sethi	%hi(.LC42), %g1
.L1137:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1145:
	ldd	[%g1+%lo(.LC42)], %f8
	b	.L1137
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
	b	.L1150
	 ld	[%g2+%lo(.LC44)], %f0
.L1148:
	srl	%g1, 31, %g2
.L1156:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1149
	 cmp	%o1, 0
	fmuls	%f8, %f8, %f8
.L1150:
	andcc	%g1, 1, %g0
	bne,a	.L1148
	 fmuls	%f0, %f8, %f0
	b	.L1156
	 srl	%g1, 31, %g2
.L1149:
	bl	.L1155
	 sethi	%hi(.LC44), %g1
.L1147:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1155:
	ld	[%g1+%lo(.LC44)], %f8
	b	.L1147
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1157
	 mov	0, %g1
	bgu	.L1157
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1157
	 mov	0, %g1
	bgu	.L1157
	 mov	2, %g1
	mov	1, %g1
.L1157:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
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
