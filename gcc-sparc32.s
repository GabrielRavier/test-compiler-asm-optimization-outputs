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
	and	%o1, 0xff, %o1
	add	%o2, -1, %o2
	add	%o0, %o2, %o2
	b	.L62
	 add	%o0, -1, %g2
.L64:
	ldub	[%o0], %g1
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
	be	.L85
	 add	%o1, 1, %o1
.L84:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L84
	 add	%o1, 1, %o1
.L85:
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
	bne	.L87
	 ldub	[%o0], %g1
.L94:
	jmp	%o7+8
	 nop
.L89:
	ldsb	[%o0], %g2
	cmp	%g2, 0
	be	.L94
	 ldub	[%o0], %g1
.L87:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a	.L89
	 add	%o0, 1, %o0
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L97:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L99
	 cmp	%g1, 0
	bne	.L97
	 add	%o0, 1, %o0
	mov	0, %o0
.L99:
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
	be	.L101
	 ldub	[%o0], %g4
	sll	%g3, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne,a	.L115
	 and	%g4, 0xff, %o0
	b	.L102
	 mov	1, %g1
.L114:
	sll	%g3, 24, %g2
	sra	%g2, 24, %g2
	cmp	%o5, %g2
	bne,a	.L115
	 and	%g4, 0xff, %o0
.L102:
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %g3
	add	%g1, 1, %g1
	sll	%g4, 24, %g2
	cmp	%g2, 0
	bne	.L114
	 sra	%g2, 24, %o5
.L101:
	and	%g4, 0xff, %o0
.L115:
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
	be	.L117
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L121:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L121
	 add	%g1, 1, %g1
.L117:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L122
	 mov	0, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be,a	.L138
	 ldub	[%o1], %g1
	add	%o2, -1, %o2
	b	.L125
	 add	%o1, %o2, %o2
.L137:
	be,a	.L138
	 ldub	[%o1], %g1
	add	%o0, 1, %o0
	ldub	[%o0], %g2
	cmp	%g2, 0
	be	.L124
	 add	%o1, 1, %o1
.L125:
	ldub	[%o1], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	bne	.L137
	 cmp	%o1, %o2
.L124:
	ldub	[%o1], %g1
.L138:
	sub	%g2, %g1, %g2
.L122:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L143
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L141:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L141
	 add	%o1, 2, %o1
.L143:
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
	bleu	.L168
	 mov	%o0, %g1
	cmp	%o0, 31
	bleu	.L168
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%o0, %g2, %g2
	cmp	%g2, 1
	bleu	.L170
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L168:
	mov	1, %o0
.L170:
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
	bleu	.L180
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%o0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	bgeu	.L177
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L177
	 sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L181
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L181
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L177:
	mov	1, %o0
.L181:
	jmp	%o7+8
	 nop
.L180:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L181
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
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu	.L186
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L186:
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
	fbu	.L188
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L192
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L195
	 nop
	fsubd	%f0, %f8, %f0
.L188:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L195:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L192:
	b	.L188
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
	fbu	.L196
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L204
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L203
	 nop
	fsubs	%f0, %f8, %f0
.L196:
.L204:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L203:
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
	fbu	.L211
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L212
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L215
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L210
	 mov	1, %g1
	mov	0, %g1
.L210:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L211
	 fmovs	%f9, %f1
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L215:
	cmp	%g1, 0
	bne	.L205
	 fmovs	%f11, %f1
.L212:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L211:
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
	fbu	.L222
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L223
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L226
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L221
	 mov	1, %g1
	mov	0, %g1
.L221:
	andcc	%g1, 1, %g0
	bne	.L222
	 fmovs	%f8, %f0
.L216:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L226:
	bne	.L216
	 fmovs	%f9, %f0
.L223:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L222:
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
	fbu	.L233
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L234
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L237
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L232
	 mov	1, %g1
	mov	0, %g1
.L232:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L233
	 fmovs	%f9, %f1
.L227:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L237:
	cmp	%g1, 0
	bne	.L227
	 fmovs	%f11, %f1
.L234:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L233:
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
	fbu	.L244
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L245
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L248
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L243
	 mov	1, %g1
	mov	0, %g1
.L243:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L245
	 fmovs	%f11, %f1
.L238:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L248:
	cmp	%g1, 0
	bne	.L238
	 fmovs	%f9, %f1
.L244:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L245:
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
	fbu	.L255
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L256
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L259
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L254
	 mov	1, %g1
	mov	0, %g1
.L254:
	andcc	%g1, 1, %g0
	bne	.L256
	 fmovs	%f9, %f0
.L249:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L259:
	bne	.L249
	 fmovs	%f8, %f0
.L255:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L256:
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
	fbu	.L266
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L267
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L270
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L265
	 mov	1, %g1
	mov	0, %g1
.L265:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L267
	 fmovs	%f11, %f1
.L260:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L270:
	cmp	%g1, 0
	bne	.L260
	 fmovs	%f9, %f1
.L266:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L267:
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
	or	%o0, %lo(s.0), %o0
	cmp	%g1, 0
	be	.L272
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L273:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L273
	 add	%g2, 1, %g2
.L272:
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
	be,a	.L284
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L286
	 st	%o0, [%g1+4]
.L286:
	jmp	%o7+8
	 nop
.L284:
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
	be,a	.L296
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L296:
	cmp	%g1, 0
	be	.L297
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L297:
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
	be	.L299
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L301
	 mov	0, %l0
.L313:
	cmp	%l1, %l0
	be	.L299
	 add	%i5, %i3, %i5
.L301:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	bne,a	.L313
	 add	%l0, 1, %l0
.L315:
	jmp	%i7+8
	 restore
.L299:
	add	%l1, 1, %g1
	st	%g1, [%i2]
	mov	%l1, %o1
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L315
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
	be	.L317
	 mov	%i0, %l0
	b	.L319
	 mov	0, %i5
.L327:
	cmp	%i2, %i5
	be	.L317
	 add	%i1, %i3, %i1
.L319:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bne,a	.L327
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore
.L317:
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
	mov	%o0, %g2
.L350:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	add	%g3, -9, %g4
	cmp	%g4, 4
	bleu	.L347
	 cmp	%g3, 32
	bne	.L330
	 sra	%g1, 24, %g1
.L347:
	b	.L350
	 add	%g2, 1, %g2
.L330:
	cmp	%g1, 43
	be	.L335
	 mov	0, %g4
	cmp	%g1, 45
	be,a	.L351
	 mov	1, %g4
.L336:
	ldub	[%g2], %g1
	ldsb	[%g2], %g3
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L338
	 mov	0, %o0
.L337:
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
	bleu	.L337
	 ldub	[%g2], %g1
.L338:
	cmp	%g4, 0
	be,a	.L352
	 sub	%g0, %o0, %o0
.L352:
	jmp	%o7+8
	 nop
.L351:
.L335:
	b	.L336
	 add	%g2, 1, %g2
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
.L375:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g3
	add	%g3, -9, %g4
	cmp	%g4, 4
	bleu	.L372
	 cmp	%g3, 32
	bne	.L355
	 sra	%g2, 24, %g2
.L372:
	b	.L375
	 add	%g1, 1, %g1
.L355:
	cmp	%g2, 43
	be	.L360
	 mov	0, %o7
	cmp	%g2, 45
	be,a	.L376
	 mov	1, %o7
.L361:
	ldub	[%g1], %g2
	ldsb	[%g1], %g3
	add	%g3, -48, %g3
	mov	0, %i0
	cmp	%g3, 9
	bgu	.L363
	 mov	0, %i1
.L362:
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
	bleu	.L362
	 ldub	[%g1], %g2
.L363:
	cmp	%o7, 0
	bne	.L377
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L377:
	jmp	%i7+8
	 restore
.L376:
.L360:
	b	.L361
	 add	%g1, 1, %g1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	mov	%i0, %l0
.L388:
	cmp	%i2, 0
	be	.L390
	 mov	0, %i0
.L389:
	srl	%i2, 1, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	add	%i1, %o0, %i0
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bl,a	.L388
	 mov	%i5, %i2
	ble	.L390
	 nop
	add	%i2, -1, %i2
	sub	%i2, %i5, %i2
	cmp	%i2, 0
	bne	.L389
	 add	%i0, %i3, %i1
	mov	0, %i0
.L390:
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
	bne	.L395
	 mov	%i0, %l1
	jmp	%i7+8
	 restore %g0, 0, %o0
.L403:
	ble	.L394
	 add	%i2, -1, %i2
	add	%i0, %i3, %i1
	sra	%i2, 1, %l0
.L394:
	orcc	%l0, 0, %i2
	be	.L405
	 mov	0, %i0
.L395:
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
	bne	.L403
	 nop
.L405:
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
	bne,a	.L431
	 cmp	%g1, 0
	b	.L430
	 cmp	%g0, %g1
.L429:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L414
	 cmp	%g1, 0
.L431:
	bne,a	.L429
	 add	%o0, 4, %o0
.L414:
	cmp	%g0, %g1
.L430:
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
	be	.L433
	 cmp	%g3, 0
	be	.L451
	 cmp	%g2, %g3
	b	.L434
	 mov	4, %g1
.L449:
	cmp	%g3, 0
	be	.L451
	 cmp	%g2, %g3
.L434:
	ld	[%o0+%g1], %g2
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	xor	%g2, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L449
	 add	%g1, 4, %g1
.L433:
	cmp	%g2, %g3
.L451:
	bl	.L452
	 mov	-1, %o0
	ble	.L450
	 mov	1, %o0
.L452:
	jmp	%o7+8
	 nop
.L450:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L454:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L454
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
	be	.L457
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L461:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L461
	 add	%g1, 4, %g1
.L457:
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
	bne,a	.L481
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L479:
	be	.L482
	 cmp	%o2, 0
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L469
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L481:
	ld	[%o1], %g2
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	bne	.L479
	 cmp	%g2, 0
	cmp	%o2, 0
.L482:
	be,a	.L480
	 mov	0, %o0
	ld	[%o0], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L480
	 mov	-1, %o0
	bg	.L480
	 mov	1, %o0
.L469:
	mov	0, %o0
.L480:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	bne,a	.L493
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L486:
	be	.L489
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L493:
	cmp	%g1, %o1
	bne,a	.L486
	 addcc	%o2, -1, %o2
	cmp	%o2, 0
	be,a	.L494
	 mov	0, %o0
.L494:
	jmp	%o7+8
	 nop
.L489:
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
	bne,a	.L509
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L498:
	addcc	%o2, -1, %o2
	be	.L501
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L509:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be,a	.L498
	 add	%o0, 4, %o0
	cmp	%o2, 0
	be,a	.L508
	 mov	0, %o0
	cmp	%g2, %g1
	bl	.L508
	 mov	-1, %o0
	bg	.L508
	 mov	1, %o0
.L501:
	mov	0, %o0
.L508:
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
	be	.L515
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L515:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L531
	 nop
	sub	%o0, %o1, %g2
	sll	%o2, 2, %g3
	cmp	%g2, %g3
	bgeu	.L528
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L531
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L530:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L530
	 ld	[%o1+%g1], %g2
.L532:
	jmp	%o7+8
	 nop
.L528:
	cmp	%o2, 0
	be	.L532
	 mov	0, %g2
.L519:
	ld	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L519
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L531:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L540
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L535:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L535
	 st	%o1, [%g2-4]
.L540:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L542
	 nop
	cmp	%o2, 0
	be	.L556
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L554:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L554
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L542:
	be	.L556
	 nop
	cmp	%o2, 0
	be	.L556
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L555:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L555
	 ldub	[%o0+%g1], %g2
.L556:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be,a	.L559
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L561
	 and	%o2, 63, %g2
.L563:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g3, %o1
.L559:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	sll	%o1, %o2, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L563
	 and	%o2, 63, %g2
.L561:
	sll	%o0, 1, %g4
	xnor	%g0, %g2, %o5
	sll	%g4, %o5, %g4
	srl	%o1, %g2, %o1
	or	%g4, %o1, %o1
	srl	%o0, %g2, %o0
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
	be,a	.L565
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L567
	 and	%o2, 63, %g2
.L569:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L565:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	srl	%o0, %o2, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L569
	 and	%o2, 63, %g2
.L567:
	srl	%o1, 1, %g4
	xnor	%g0, %g2, %o5
	srl	%g4, %o5, %g4
	sll	%o0, %g2, %o0
	or	%g4, %o0, %o0
	sll	%o1, %g2, %o1
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
	b	.L584
	 mov	0, %g1
.L582:
	cmp	%g1, 32
	be	.L586
	 nop
.L584:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L582
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L586:
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
	be	.L594
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L594
	 nop
	mov	1, %o0
.L589:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L589
	 add	%o0, 1, %o0
.L594:
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
	fbl	.L595
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
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
	fbl	.L600
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
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
	fbl	.L605
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L609
	 nop
.L605:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L609:
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
	ld	[%g1+%lo(.LC17)], %f8
.L623:
.L615:
	andcc	%o1, 1, %g0
	bne,a	.L614
	 fmuls	%f0, %f8, %f0
.L614:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	bne,a	.L623
	 fmuls	%f8, %f8, %f8
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
	ldd	[%g1+%lo(.LC21)], %f8
.L636:
.L628:
	andcc	%o2, 1, %g0
	bne,a	.L627
	 fmuld	%f0, %f8, %f0
.L627:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	bne,a	.L636
	 fmuld	%f8, %f8, %f8
.L625:
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
	fbu	.L638
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L638
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L641
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L649:
.L641:
	andcc	%o2, 1, %g0
	bne,a	.L640
	 fmuld	%f0, %f8, %f0
.L640:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	bne,a	.L649
	 fmuld	%f8, %f8, %f8
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
.L673:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L673
	 add	%g1, 1, %g1
.L660:
	cmp	%o2, 0
	bne,a	.L674
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L664:
	addcc	%o2, -1, %o2
	be	.L668
	 add	%g1, 1, %g1
	ldub	[%o1], %g2
.L674:
	stb	%g2, [%g1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L664
	 add	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L672
	 nop
.L668:
	stb	%g0, [%g1]
.L672:
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
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L693
	 mov	0, %o0
	mov	%o1, %g1
.L694:
	b	.L687
	 sra	%g3, 24, %g3
.L686:
	be	.L693
	 add	%g1, 1, %g1
.L687:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L686
	 cmp	%g2, %g3
	add	%o0, 1, %o0
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,a	.L694
	 mov	%o1, %g1
	mov	0, %o0
.L693:
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
.L697:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%g3, %o1
	be,a	.L696
	 mov	%g2, %o0
.L696:
	cmp	%g1, 0
	bne	.L697
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
	be	.L701
	 mov	%o1, %g1
	add	%g1, 1, %g1
.L730:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L730
	 add	%g1, 1, %g1
.L701:
	subcc	%g1, %o1, %g1
	be	.L731
	 nop
	sra	%o4, 24, %o4
	add	%o1, -1, %o3
	b	.L710
	 add	%o3, %g1, %o3
.L727:
	cmp	%g2, 0
	be	.L726
	 add	%o0, 1, %o0
.L710:
	ldsb	[%o0], %g2
	cmp	%g2, %o4
	bne	.L727
	 ldub	[%o0], %g1
	cmp	%o0, 0
	be	.L731
	 nop
	mov	%o1, %g3
	andcc	%g1, 0xff, %g1
	bne	.L705
	 mov	%o0, %g4
	b	.L729
	 ldub	[%g3], %g2
.L728:
	be,a	.L729
	 ldub	[%g3], %g2
	add	%g4, 1, %g4
	ldub	[%g4], %g1
	cmp	%g1, 0
	be	.L706
	 add	%g3, 1, %g3
.L705:
	ldub	[%g3], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	xor	%g2, %g1, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	andcc	%o5, %g2, %g0
	bne	.L728
	 cmp	%g3, %o3
.L706:
	ldub	[%g3], %g2
.L729:
	cmp	%g2, %g1
	be	.L731
	 nop
	b	.L710
	 add	%o0, 1, %o0
.L726:
	jmp	%o7+8
	 mov	0, %o0
.L731:
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
	fbl,a	.L741
	 std	%o2, [%sp+72]
.L733:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L736
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L742
	 fnegs	%f0, %f0
.L736:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L741:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L733
	 nop
	fnegs	%f0, %f0
.L742:
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
	be	.L769
	 mov	%i0, %i4
	cmp	%i1, %i3
	blu	.L753
	 nop
	sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu	.L753
	 nop
	b	.L750
	 ldsb	[%i2], %o7
.L745:
	cmp	%i4, %i1
.L767:
	bgu	.L753
	 nop
.L750:
	ldub	[%i4], %g1
	mov	%i4, %i0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o7
	bne	.L745
	 add	%i4, 1, %i4
	addcc	%i3, -1, %g1
	be	.L769
	 add	%i2, 1, %g2
	b	.L746
	 mov	%i4, %g3
.L748:
	addcc	%g1, -1, %g1
	be	.L769
	 add	%g2, 1, %g2
.L746:
	ldub	[%g3], %i5
	ldub	[%g2], %g4
	cmp	%i5, %g4
	be,a	.L748
	 add	%g3, 1, %g3
	cmp	%g1, 0
	be	.L768
	 nop
	cmp	%i5, %g4
	bne,a	.L767
	 cmp	%i4, %i1
.L769:
	jmp	%i7+8
	 restore
.L753:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L768:
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
	be	.L771
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L771:
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
	fbl	.L804
	 mov	0, %g2
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	mov	0, %g1
	sethi	%hi(.LC32), %g3
	fcmped	%f0, %f8
	nop
	fbul	.L803
	 ldd	[%g3+%lo(.LC32)], %f10
.L780:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L780
	 add	%g1, 1, %g1
.L808:
	cmp	%g2, 0
.L807:
	be	.L785
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L785:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L804:
	fnegs	%f0, %f0
	mov	1, %g2
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	mov	0, %g1
	sethi	%hi(.LC32), %g3
	fcmped	%f0, %f8
	nop
	fbge	.L780
	 ldd	[%g3+%lo(.LC32)], %f10
.L803:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L782
	 mov	1, %g1
	mov	0, %g1
.L782:
	andcc	%g1, 1, %g0
	be,a	.L808
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbuge	.L805
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L809
	 mov	0, %g1
	b	.L807
	 cmp	%g2, 0
.L805:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L808
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L784:
.L809:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L784
	 add	%g1, -1, %g1
	b	.L807
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
	be	.L818
	 mov	0, %i1
	mov	0, %i4
.L817:
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
	srl	%g2, 1, %g2
	or	%g3, %g1, %g1
	orcc	%g2, %g1, %g0
	bne	.L817
	 sll	%i3, 1, %i3
.L818:
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
	blu	.L820
	 mov	1, %g1
	b	.L823
	 mov	0, %o0
.L825:
	cmp	%o1, %g2
	bgeu	.L821
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L824
	 mov	0, %o0
.L820:
	cmp	%o1, 0
	bge,a	.L825
	 sll	%o1, 1, %o1
.L821:
	cmp	%g1, 0
	be	.L824
	 mov	0, %o0
	mov	0, %o0
.L823:
	cmp	%g2, %o1
	blu,a	.L838
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L838:
	cmp	%g1, 0
	bne	.L823
	 srl	%o1, 1, %o1
.L824:
	cmp	%o2, 0
	bne	.L837
	 nop
	jmp	%o7+8
	 nop
.L837:
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
	be	.L842
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L842:
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
	be	.L849
	 xor	%i1, %g1, %o1
.L847:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L849:
	cmp	%i1, %i0
	bne	.L847
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
	be	.L856
	 mov	0, %o0
.L852:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L852
	 sll	%o1, 1, %o1
.L856:
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
	blu	.L858
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L871
	 cmp	%o2, 0
.L858:
	cmp	%g3, 0
	be	.L873
	 cmp	%o2, %g1
	sll	%g3, 3, %g3
	mov	0, %g2
.L862:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L862
	 std	%o4, [%g4]
	cmp	%o2, %g1
.L873:
	bleu	.L876
	 nop
	ldub	[%o1+%g1], %g2
.L874:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L874
	 ldub	[%o1+%g1], %g2
.L877:
	jmp	%o7+8
	 nop
.L871:
	be	.L877
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L875:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L875
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L876:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L879
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L893
	 cmp	%o2, 0
.L879:
	cmp	%g3, 0
	be	.L895
	 andcc	%o2, 1, %g0
	sll	%g3, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L896:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L896
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L895:
	be	.L898
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L893:
	be	.L899
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L897:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L897
	 ldub	[%o1+%g1], %g2
.L899:
	jmp	%o7+8
	 nop
.L898:
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
	blu	.L901
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L914
	 cmp	%o2, 0
.L901:
	cmp	%g4, 0
	be	.L916
	 cmp	%o2, %g1
	sll	%g4, 2, %g4
	mov	0, %g2
	ld	[%o1+%g2], %g3
.L917:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L917
	 ld	[%o1+%g2], %g3
	cmp	%o2, %g1
.L916:
	bleu	.L920
	 nop
	ldub	[%o1+%g1], %g2
.L918:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L918
	 ldub	[%o1+%g1], %g2
.L921:
	jmp	%o7+8
	 nop
.L914:
	be	.L921
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L919:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L919
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L920:
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
	bge	.L924
	 fitod	%f8, %f0
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	faddd	%f0, %f8, %f0
.L924:
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
	bge	.L926
	 fitod	%f8, %f0
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	faddd	%f0, %f8, %f0
.L926:
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
.L934:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L930
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L934
	 sub	%g3, %g1, %g2
.L930:
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
.L939:
	andcc	%g2, 1, %g0
	bne	.L935
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L939
	 sra	%o0, %g1, %g2
.L935:
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
	fbge,a	.L946
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L946:
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
.L948:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L948
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
.L951:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L951
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
	be	.L959
	 mov	0, %o0
.L955:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L955
	 sll	%o1, 1, %o1
.L959:
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
	bne	.L967
	 mov	0, %o0
	jmp	%o7+8
	 nop
.L962:
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	sll	%g2, 1, %g2
	srl	%o1, 1, %o1
.L967:
	cmp	%o1, 0
	bne,a	.L962
	 and	%o1, 1, %g1
.L960:
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
	bgu	.L969
	 mov	1, %g1
	b	.L972
	 mov	0, %o0
.L974:
	cmp	%o1, %g2
	bgeu	.L970
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L973
	 mov	0, %o0
.L969:
	cmp	%o1, 0
	bge,a	.L974
	 sll	%o1, 1, %o1
.L970:
	cmp	%g1, 0
	be	.L973
	 mov	0, %o0
	mov	0, %o0
.L972:
	cmp	%g2, %o1
	blu,a	.L987
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L987:
	cmp	%g1, 0
	bne	.L972
	 srl	%o1, 1, %o1
.L973:
	cmp	%o2, 0
	bne	.L986
	 nop
	jmp	%o7+8
	 nop
.L986:
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
	fbl	.L988
	 mov	-1, %g1
	nop
	fbule	.L992
	 mov	1, %g1
.L988:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L992:
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
	fbl	.L993
	 mov	-1, %g1
	nop
	fbule	.L997
	 mov	1, %g1
.L993:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L997:
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
	bge	.L1013
	 mov	0, %o5
	sub	%g0, %o1, %o1
	mov	1, %o5
	cmp	%o1, 0
.L1013:
	be	.L1002
	 mov	0, %o0
	mov	1, %g3
.L1004:
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
	bne	.L1004
	 add	%g3, 1, %g3
.L1002:
	cmp	%o5, 0
	bne,a	.L1012
	 sub	%g0, %o0, %o0
.L1012:
	jmp	%o7+8
	 nop
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	bge	.L1015
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	1, %g3
.L1015:
	cmp	%o1, 0
	bge	.L1038
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	xor	%g3, 1, %g3
.L1038:
	cmp	%o0, %o1
	bgu	.L1018
	 mov	1, %g1
	b	.L1022
	 mov	0, %o0
.L1036:
	cmp	%g1, 0
	be,a	.L1020
	 mov	0, %o0
.L1018:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1036
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1020
	 mov	0, %o0
.L1022:
	cmp	%g2, %o1
	blu,a	.L1040
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1040:
	cmp	%g1, 0
	bne	.L1022
	 srl	%o1, 1, %o1
.L1020:
	cmp	%g3, 0
	bne,a	.L1037
	 sub	%g0, %o0, %o0
.L1037:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1042
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	1, %g3
.L1042:
	mov	%o0, %g2
	sra	%o1, 31, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bgu	.L1044
	 mov	1, %g1
	b	.L1067
	 cmp	%g2, %o1
.L1065:
	cmp	%g1, 0
	be	.L1069
	 cmp	%g3, 0
.L1044:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1065
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1069
	 cmp	%g3, 0
.L1058:
	cmp	%g2, %o1
.L1067:
	bgeu,a	.L1047
	 sub	%g2, %o1, %g2
.L1047:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1058
	 srl	%o1, 1, %o1
	cmp	%g3, 0
.L1069:
	be	.L1070
	 mov	%g2, %o0
	sub	%g0, %g2, %o0
.L1070:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1072
	 mov	1, %g2
	b	.L1092
	 sll	%g2, 16, %g1
.L1077:
	srl	%o1, 16, %o1
	sll	%g2, 1, %g1
	cmp	%o1, %o0
	bgeu	.L1073
	 mov	%g1, %g2
	sll	%g1, 16, %g1
	cmp	%g1, 0
	be	.L1094
	 sll	%g2, 16, %g1
.L1072:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge,a	.L1077
	 sll	%o1, 17, %o1
.L1073:
	sll	%g2, 16, %g1
.L1092:
.L1094:
	cmp	%g1, 0
	bne	.L1075
	 mov	0, %g3
	b	.L1090
	 mov	%g2, %g3
.L1091:
	sll	%g2, 16, %g1
.L1075:
	cmp	%o0, %o1
	blu	.L1095
	 srl	%g1, 17, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	or	%g2, %g3, %g3
.L1095:
	mov	%g1, %g2
	cmp	%g1, 0
	bne	.L1091
	 srl	%o1, 1, %o1
	cmp	%o2, 0
.L1093:
	bne,a	.L1079
	 mov	%o0, %g3
.L1079:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L1090:
	b	.L1093
	 cmp	%o2, 0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1097
	 mov	1, %g1
	b	.L1100
	 mov	0, %o0
.L1102:
	cmp	%o1, %g2
	bgeu	.L1098
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1101
	 mov	0, %o0
.L1097:
	cmp	%o1, 0
	bge,a	.L1102
	 sll	%o1, 1, %o1
.L1098:
	cmp	%g1, 0
	be	.L1101
	 mov	0, %o0
	mov	0, %o0
.L1100:
	cmp	%g2, %o1
	blu,a	.L1115
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1115:
	cmp	%g1, 0
	bne	.L1100
	 srl	%o1, 1, %o1
.L1101:
	cmp	%o2, 0
	bne	.L1114
	 nop
	jmp	%o7+8
	 nop
.L1114:
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
	or	%o1, %o0, %o0
	jmp	%o7+8
	 mov	%g1, %o1
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
	or	%o0, %o1, %o1
	jmp	%o7+8
	 mov	%g1, %o0
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
	or	%o0, %o1, %o1
	jmp	%o7+8
	 mov	%g1, %o0
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
	ldd	[%g2+%lo(.LC42)], %f0
.L1168:
	andcc	%g1, 1, %g0
	bne,a	.L1161
	 fmuld	%f0, %f8, %f0
.L1161:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1168
	 fmuld	%f8, %f8, %f8
	cmp	%o2, 0
	bge	.L1160
	 sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
.L1160:
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
.L1177:
	andcc	%g1, 1, %g0
	bne,a	.L1170
	 fmuls	%f0, %f8, %f0
.L1170:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	bne,a	.L1177
	 fmuls	%f8, %f8, %f8
	cmp	%o1, 0
	bge	.L1169
	 sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
.L1169:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1178
	 mov	0, %g1
	bgu	.L1178
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1178
	 mov	0, %g1
	bgu	.L1178
	 mov	2, %g1
	mov	1, %g1
.L1178:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1185
	 mov	0, %g1
	bgu	.L1185
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1185
	 mov	0, %g1
	bgu	.L1185
	 mov	2, %g1
	mov	1, %g1
.L1185:
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
