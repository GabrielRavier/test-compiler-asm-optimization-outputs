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
.L23:
	addcc	%o3, -1, %o3
	be,a	.L30
	 mov	0, %o0
.L20:
	ldub	[%o1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0-1]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne	.L23
	 add	%o1, 1, %o1
.L30:
	jmp	%o7+8
	 nop
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
	be	.L35
	 add	%o0, 1, %o0
.L32:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L34
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L35:
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
	bne,a	.L48
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L42:
	addcc	%o2, -1, %o2
	be	.L44
	 add	%o1, 1, %o1
	ldub	[%o0], %g1
.L48:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be	.L42
	 add	%o0, 1, %o0
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L44:
	mov	0, %o0
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
	be	.L54
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L54:
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
	b	.L56
	 add	%o0, -1, %g2
.L58:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L59
	 add	%o2, -1, %o2
.L56:
	cmp	%o2, %g2
	bne	.L58
	 mov	%o2, %o0
	mov	0, %o0
.L59:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L64
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L64:
	jmp	%i7+8
	 restore
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
	be	.L72
	 nop
.L67:
	ldub	[%o1+1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L67
	 add	%o1, 1, %o1
.L72:
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
	bne	.L74
	 and	%o1, 0xff, %o1
.L81:
	jmp	%o7+8
	 nop
.L76:
	add	%o0, 1, %o0
	cmp	%g1, 0
	be	.L81
	 ldub	[%o0], %g1
.L74:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a	.L76
	 ldsb	[%o0+1], %g1
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L84:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L86
	 cmp	%g1, 0
	bne	.L84
	 add	%o0, 1, %o0
	mov	0, %o0
.L86:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldsb	[%o1], %g4
	ldub	[%o0], %g3
	ldub	[%o1], %o4
	sll	%g3, 24, %g2
	mov	1, %g1
	sra	%g2, 24, %o5
	cmp	%o5, %g4
	be	.L88
	 add	%o1, -1, %o1
	b	.L95
	 and	%g3, 0xff, %g3
.L90:
	add	%g1, 1, %g1
	ldsb	[%o1+%g1], %g4
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g4
	bne	.L94
	 ldub	[%o1+%g1], %o4
.L88:
	cmp	%g2, 0
	bne,a	.L90
	 ldub	[%o0+%g1], %g3
	mov	0, %g3
	and	%o4, 0xff, %o0
	jmp	%o7+8
	 sub	%g3, %o0, %o0
.L94:
	and	%g3, 0xff, %g3
.L95:
	and	%o4, 0xff, %o0
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
	be	.L99
	 mov	%o0, %g1
.L98:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L98
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L99:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L101
	 mov	0, %g2
	ldub	[%o0], %g2
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g2, 0
	bne	.L105
	 add	%o1, %o2, %o2
	b	.L116
	 ldub	[%o1], %g3
.L118:
	cmp	%g1, %o2
	be	.L119
	 sub	%g2, %g3, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be	.L117
	 add	%g1, 1, %g3
	mov	%g3, %g1
.L105:
	ldub	[%g1], %g3
	cmp	%g0, %g3
	xor	%g3, %g2, %g4
	addx	%g0, 0, %o5
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L118
	 add	%o0, 1, %o0
.L104:
	sub	%g2, %g3, %g2
.L101:
.L119:
	jmp	%o7+8
	 mov	%g2, %o0
.L117:
	b	.L104
	 ldub	[%g1+1], %g3
.L116:
	b	.L119
	 sub	%g2, %g3, %g2
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L124
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L122:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L122
	 add	%o1, 2, %o1
.L124:
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
	xor	%o0, 9, %o0
	cmp	%g0, %g1
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
	xor	%o0, 32, %o0
	cmp	%g1, 5
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
	add	%o0, -127, %g2
	mov	%o0, %g1
	cmp	%g2, 32
	bleu	.L151
	 mov	1, %o0
	cmp	%g1, 31
	bleu	.L151
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L151
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L151:
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
	bleu	.L161
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	sethi	%hi(46080), %g3
	or	%g2, 982, %g2
	or	%g3, 981, %g3
	add	%o0, %g2, %g2
	cmp	%g3, %g2
	bgeu	.L158
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L158
	 sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g2
	add	%o0, %g3, %g3
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L162
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	sethi	%hi(1048576), %g3
	or	%g2, 4, %g2
	or	%g3, 3, %g3
	add	%g1, %g2, %g2
	cmp	%g2, %g3
	bgu	.L162
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L158:
	mov	1, %o0
.L162:
	jmp	%o7+8
	 nop
.L161:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L162
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
	bleu	.L167
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L167:
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
	fbu	.L169
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L173
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L176
	 nop
	fsubd	%f0, %f8, %f0
.L169:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L176:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L173:
	b	.L169
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
	fbu	.L177
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L177
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L184
	 nop
	fsubs	%f0, %f8, %f0
.L177:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L184:
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
	fbu	.L191
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L192
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L195
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L190
	 mov	1, %g1
	mov	0, %g1
.L190:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L191
	 fmovs	%f9, %f1
.L185:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L195:
	cmp	%g1, 0
	bne	.L185
	 fmovs	%f11, %f1
.L192:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L191:
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
	fbu	.L202
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L203
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L206
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L201
	 mov	1, %g1
	mov	0, %g1
.L201:
	andcc	%g1, 1, %g0
	bne	.L202
	 fmovs	%f8, %f0
.L196:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L206:
	bne	.L196
	 fmovs	%f9, %f0
.L203:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L202:
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
	fbu	.L213
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L214
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L217
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L212
	 mov	1, %g1
	mov	0, %g1
.L212:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L213
	 fmovs	%f9, %f1
.L207:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L217:
	cmp	%g1, 0
	bne	.L207
	 fmovs	%f11, %f1
.L214:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L213:
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
	fbu	.L224
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L225
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L228
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L223
	 mov	1, %g1
	mov	0, %g1
.L223:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L225
	 fmovs	%f11, %f1
.L218:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L228:
	cmp	%g1, 0
	bne	.L218
	 fmovs	%f9, %f1
.L224:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L225:
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
	fbu	.L235
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L236
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L239
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L234
	 mov	1, %g1
	mov	0, %g1
.L234:
	andcc	%g1, 1, %g0
	bne	.L236
	 fmovs	%f9, %f0
.L229:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L239:
	bne	.L229
	 fmovs	%f8, %f0
.L235:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L236:
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
	fbu	.L246
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L247
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L250
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L245
	 mov	1, %g1
	mov	0, %g1
.L245:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L247
	 fmovs	%f11, %f1
.L240:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L250:
	cmp	%g1, 0
	bne	.L240
	 fmovs	%f9, %f1
.L246:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L247:
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
	be	.L254
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L253:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L253
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L254:
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
	sethi	%hi(1284865024), %o3
	or	%o2, 45, %o2
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
	be,a	.L264
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L266
	 st	%o0, [%g1+4]
.L266:
	jmp	%o7+8
	 nop
.L264:
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
	be	.L277
	 ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g2
.L277:
	cmp	%g2, 0
	bne,a	.L276
	 st	%g1, [%g2]
.L276:
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
	be	.L279
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L281
	 mov	0, %l0
.L293:
	cmp	%l1, %l0
	be	.L279
	 add	%i5, %i3, %i5
.L281:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a	.L293
	 add	%l0, 1, %l0
.L295:
	jmp	%i7+8
	 restore
.L279:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L295
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
	ld	[%i2], %l0
	cmp	%l0, 0
	be	.L297
	 mov	0, %i5
	b	.L308
	 mov	%i1, %o1
.L307:
	cmp	%l0, %i5
	be	.L297
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L308:
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cmp	%o0, 0
	bne,a	.L307
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L297:
	mov	0, %i2
	jmp	%i7+8
	 restore %g0, %i2, %o0
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
	ldub	[%o0], %g1
.L335:
	sll	%g1, 24, %g1
	sra	%g1, 24, %g2
	add	%g2, -9, %g3
	cmp	%g3, 4
	bleu	.L330
	 cmp	%g2, 32
	bne,a	.L311
	 sra	%g1, 24, %g1
.L330:
	ldub	[%o0+1], %g1
	b	.L335
	 add	%o0, 1, %o0
.L311:
	cmp	%g1, 43
	be	.L316
	 cmp	%g1, 45
	bne,a	.L336
	 ldsb	[%o0], %g3
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L325
	 add	%o0, 1, %g1
	mov	1, %o4
.L319:
	mov	0, %o0
.L322:
	ldsb	[%g1+1], %g4
	add	%g2, -48, %g2
	sll	%g2, 24, %g2
	sll	%o0, 2, %g3
	sra	%g2, 24, %o5
	add	%g3, %o0, %g3
	add	%g1, 1, %g1
	sll	%g3, 1, %g3
	add	%g4, -48, %g4
	sub	%g3, %o5, %o0
	cmp	%g4, 9
	bleu	.L322
	 ldub	[%g1], %g2
	cmp	%o4, 0
	bne	.L337
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L336:
	ldub	[%o0], %g2
	add	%g3, -48, %g3
	mov	%o0, %g1
	cmp	%g3, 9
	bleu	.L319
	 mov	0, %o4
.L325:
	mov	0, %o0
.L337:
	jmp	%o7+8
	 nop
.L316:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g2
	add	%g3, -48, %g3
	add	%o0, 1, %g1
	cmp	%g3, 9
	bleu	.L319
	 mov	0, %o4
	jmp	%o7+8
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	ldub	[%o0], %g1
.L361:
	sll	%g1, 24, %g1
	sra	%g1, 24, %g2
	add	%g2, -9, %g3
	cmp	%g3, 4
	bleu	.L357
	 cmp	%g2, 32
	bne,a	.L339
	 sra	%g1, 24, %g1
.L357:
	ldub	[%o0+1], %g1
	b	.L361
	 add	%o0, 1, %o0
.L339:
	cmp	%g1, 43
	be	.L344
	 cmp	%g1, 45
	be,a	.L362
	 ldsb	[%o0+1], %g3
	ldsb	[%o0], %g3
	ldub	[%o0], %g2
	add	%g3, -48, %g3
	mov	%o0, %g1
	cmp	%g3, 9
	bgu	.L352
	 mov	0, %o4
.L346:
	mov	0, %o0
.L349:
	ldsb	[%g1+1], %g4
	add	%g2, -48, %g2
	sll	%g2, 24, %g2
	sll	%o0, 2, %g3
	sra	%g2, 24, %o5
	add	%g3, %o0, %g3
	add	%g1, 1, %g1
	sll	%g3, 1, %g3
	add	%g4, -48, %g4
	sub	%g3, %o5, %o0
	cmp	%g4, 9
	bleu	.L349
	 ldub	[%g1], %g2
	cmp	%o4, 0
	bne	.L363
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L362:
	ldub	[%o0+1], %g2
	add	%g3, -48, %g3
	add	%o0, 1, %g1
	cmp	%g3, 9
	bleu	.L346
	 mov	1, %o4
.L352:
	mov	0, %o0
.L363:
	jmp	%o7+8
	 nop
.L344:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L352
	 add	%o0, 1, %g1
	b	.L346
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	ldub	[%i0], %g1
.L389:
	sll	%g1, 24, %g1
	sra	%g1, 24, %g2
	add	%g2, -9, %g3
	cmp	%g3, 4
	bleu	.L384
	 cmp	%g2, 32
	bne,a	.L365
	 sra	%g1, 24, %g1
.L384:
	ldub	[%i0+1], %g1
	b	.L389
	 add	%i0, 1, %i0
.L365:
	cmp	%g1, 43
	be	.L370
	 cmp	%g1, 45
	bne,a	.L390
	 ldsb	[%i0], %g3
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L379
	 add	%i0, 1, %g1
	mov	1, %o7
.L373:
	mov	0, %i0
	mov	0, %i1
.L376:
	srl	%i1, 30, %i5
	ldsb	[%g1+1], %g3
	sll	%i0, 2, %g4
	sll	%i1, 2, %o5
	or	%i5, %g4, %o4
	add	%g2, -48, %g2
	addcc	%o5, %i1, %i5
	sll	%g2, 24, %g2
	addx	%o4, %i0, %i4
	srl	%i5, 31, %i1
	sra	%g2, 24, %i3
	sra	%g2, 31, %i2
	sll	%i4, 1, %g4
	sll	%i5, 1, %g2
	or	%i1, %g4, %i4
	subcc	%g2, %i3, %i1
	mov	%g2, %i5
	subx	%i4, %i2, %i0
	add	%g1, 1, %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bleu	.L376
	 ldub	[%g1], %g2
	cmp	%o7, 0
	bne	.L391
	 nop
	subcc	%i3, %i5, %i1
	subx	%i2, %i4, %i0
	jmp	%i7+8
	 restore
.L390:
	ldub	[%i0], %g2
	add	%g3, -48, %g3
	mov	%i0, %g1
	cmp	%g3, 9
	bleu	.L373
	 mov	0, %o7
.L379:
	mov	0, %i0
	mov	0, %i1
.L391:
	jmp	%i7+8
	 restore
.L370:
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g2
	add	%g3, -48, %g3
	add	%i0, 1, %g1
	cmp	%g3, 9
	bleu	.L373
	 mov	0, %o7
	mov	0, %i0
	jmp	%i7+8
	 restore %g0, 0, %o1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
.L403:
	cmp	%i2, 0
	be	.L405
	 mov	0, %i5
.L404:
	mov	%i3, %o1
	srl	%i2, 1, %l0
	call	.umul, 0
	 mov	%l0, %o0
	mov	%o0, %i5
	mov	%i0, %o0
	add	%i1, %i5, %i5
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,a	.L403
	 mov	%l0, %i2
	be	.L393
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L404
	 add	%i5, %i3, %i1
	mov	0, %i5
.L393:
.L405:
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
.L418:
	cmp	%i2, 0
	be	.L419
	 nop
.L407:
	mov	%i3, %o1
	sra	%i2, 1, %l0
	call	.umul, 0
	 mov	%l0, %o0
	mov	%i5, %o2
	add	%i1, %o0, %i0
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	cmp	%o0, 0
	be	.L420
	 nop
	ble,a	.L418
	 mov	%l0, %i2
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	bne	.L407
	 add	%i0, %i3, %i1
.L419:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L420:
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
	mov	%i0, %o0
	call	.rem, 0
	 mov	%i5, %i0
	st	%o0, [%i5+4]
	jmp	%i7+12
	 restore
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
	std	%o0, [%i5]
	mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	__moddi3, 0
	 mov	%i5, %i0
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore
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
	mov	%i0, %o0
	call	.rem, 0
	 mov	%i5, %i0
	st	%o0, [%i5+4]
	jmp	%i7+12
	 restore
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
	std	%o0, [%i5]
	mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	__moddi3, 0
	 mov	%i5, %i0
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ld	[%o0], %g1
	cmp	%g1, 0
	bne	.L435
	 cmp	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
.L431:
	cmp	%g1, 0
	be	.L432
	 add	%o0, 4, %o0
	cmp	%o1, %g1
.L435:
	bne,a	.L431
	 ld	[%o0+4], %g1
	jmp	%o7+8
	 nop
.L432:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o1], %g3
	ld	[%o0], %g2
	mov	4, %g1
	cmp	%g2, %g3
	be	.L438
	 add	%o1, -4, %o1
	b	.L447
	 mov	-1, %o0
.L440:
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	bne,a	.L447
	 mov	-1, %o0
.L438:
	cmp	%g2, 0
	bne,a	.L440
	 ld	[%o0+%g1], %g2
	mov	-1, %o0
	cmp	%g2, %g3
.L447:
	bl	.L448
	 nop
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
	be	.L455
	 nop
	mov	%o0, %g1
.L454:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L454
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
.L455:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L474
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L471:
	be,a	.L475
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L465
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L474:
	ld	[%o1], %g2
	cmp	%g2, %g1
	be	.L471
	 cmp	%g1, 0
	ld	[%o0], %g2
.L475:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L472
	 nop
	ble	.L465
	 mov	1, %o0
	jmp	%o7+8
	 nop
.L472:
	jmp	%o7+8
	 mov	-1, %o0
.L465:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	bne,a	.L484
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L480:
	be	.L481
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L484:
	cmp	%g1, %o1
	bne,a	.L480
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L481:
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
	bne,a	.L499
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L489:
	addcc	%o2, -1, %o2
	be	.L493
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L499:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be	.L489
	 add	%o0, 4, %o0
	bl,a	.L498
	 mov	-1, %o0
	bg	.L498
	 mov	1, %o0
.L493:
	jmp	%o7+8
	 mov	0, %o0
.L498:
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
	be	.L505
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L505:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L523
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L520
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L523
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L522:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L522
	 ld	[%o1+%g1], %g2
.L524:
	jmp	%o7+8
	 nop
.L520:
	cmp	%o2, 0
	be	.L524
	 mov	0, %g2
.L509:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L509
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L523:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L532
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L527:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L527
	 add	%g2, 4, %g2
.L532:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L534
	 nop
	cmp	%o2, 0
	be	.L548
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L546:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L546
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L534:
	be	.L548
	 nop
	cmp	%o2, 0
	be	.L548
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L547:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L547
	 ldub	[%o0+%g1], %g2
.L548:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L551
	 xnor	%g0, %o2, %g3
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L553
	 and	%o2, 63, %g2
.L555:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o1, %g3, %o1
	jmp	%o7+8
	 or	%o0, %g1, %o0
.L551:
	srl	%o1, 1, %g2
	srl	%g2, %g3, %g2
	sll	%o0, %o2, %g1
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L555
	 and	%o2, 63, %g2
.L553:
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
	be	.L557
	 xnor	%g0, %o2, %g3
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L559
	 and	%o2, 63, %g2
.L561:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L557:
	sll	%o0, 1, %g2
	sll	%g2, %g3, %g2
	srl	%o1, %o2, %g1
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L561
	 and	%o2, 63, %g2
.L559:
	srl	%o1, 1, %g4
	xnor	%g0, %g2, %o5
	sll	%o0, %g2, %o0
	srl	%g4, %o5, %g4
	sll	%o1, %g2, %o1
	or	%g4, %o0, %o0
	or	%o1, %g1, %o1
	jmp	%o7+8
	 or	%o0, %g3, %o0
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
	srl	%o0, 24, %g3
	sll	%o0, 24, %g1
	srl	%o0, 8, %g2
	or	%g1, %g3, %g1
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	sll	%o0, 8, %o0
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
	sll	%o0, 24, %o4
	srl	%o0, 24, %g1
	srl	%o0, 8, %o5
	sethi	%hi(64512), %g4
	sll	%o0, 8, %o0
	or	%g4, 768, %g4
	and	%o5, %g4, %o5
	or	%g1, %o5, %g1
	sethi	%hi(16711680), %o3
	srl	%o1, 24, %o5
	sll	%o1, 24, %g2
	srl	%o1, 24, %g3
	or	%g2, %o5, %g2
	or	%o0, %g3, %g3
	sll	%o1, 8, %o0
	and	%g3, %o3, %g3
	and	%o0, %o3, %o0
	or	%g1, %g3, %g3
	srl	%o1, 8, %g1
	or	%g3, %o4, %o1
	or	%g1, %o4, %g1
	and	%g1, %g4, %g1
	or	%g2, %g1, %g2
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	b	.L576
	 mov	0, %g1
.L574:
	cmp	%g1, 32
	be	.L578
	 nop
.L576:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L574
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L578:
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
	be	.L586
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L586
	 nop
	mov	1, %o0
.L581:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L581
	 add	%o0, 1, %o0
.L586:
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
	sethi	%hi(.LC4), %g1
	ld	[%sp+76], %f8
	ld	[%g1+%lo(.LC4)], %f9
	fcmpes	%f8, %f9
	nop
	fbl	.L587
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L591
	 nop
.L587:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L591:
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
	sethi	%hi(.LC8), %g1
	ldd	[%sp+72], %f8
	ldd	[%g1+%lo(.LC8)], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L592
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L596
	 nop
.L592:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L596:
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
	sethi	%hi(.LC12), %g1
	ldd	[%sp+72], %f8
	ldd	[%g1+%lo(.LC12)], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L597
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L601
	 nop
.L597:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L601:
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
	fbu	.L604
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L604
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L605
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L605:
	andcc	%o1, 1, %g0
	be	.L618
	 srl	%o1, 31, %g1
.L607:
	fmuls	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L618:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L604
	 andcc	%o1, 1, %g0
	bne	.L607
	 fmuls	%f8, %f8, %f8
	srl	%o1, 31, %g1
.L617:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne	.L607
	 fmuls	%f8, %f8, %f8
	b	.L617
	 srl	%o1, 31, %g1
.L604:
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
	bge	.L621
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L621:
	andcc	%o2, 1, %g0
	be	.L634
	 srl	%o2, 31, %g1
.L623:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L634:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L620
	 andcc	%o2, 1, %g0
	bne	.L623
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L633:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L623
	 fmuld	%f8, %f8, %f8
	b	.L633
	 srl	%o2, 31, %g1
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
	fbu	.L636
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L636
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L637
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L637:
	andcc	%o2, 1, %g0
	be	.L650
	 srl	%o2, 31, %g1
.L639:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L650:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L636
	 andcc	%o2, 1, %g0
	bne	.L639
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L649:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L639
	 fmuld	%f8, %f8, %f8
	b	.L649
	 srl	%o2, 31, %g1
.L636:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L659
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L658:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L658
	 ldub	[%o0+%g1], %g2
.L659:
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
	be	.L661
	 mov	%o0, %g1
.L662:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L662
	 add	%g1, 1, %g1
.L661:
	cmp	%o2, 0
	bne,a	.L674
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L665:
	be	.L664
	 add	%o1, 1, %o1
	ldub	[%o1], %g2
.L674:
	add	%g1, 1, %g1
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L665
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L664:
	stb	%g0, [%g1]
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L676
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L683:
	cmp	%g2, 0
	bne,a	.L679
	 add	%g1, 1, %g1
.L676:
	jmp	%o7+8
	 mov	%g1, %o0
.L679:
	cmp	%o1, %g1
	bne,a	.L683
	 ldsb	[%o0+%g1], %g2
	b,a	.L676
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L691
	 mov	0, %o0
.L685:
	mov	%o1, %g1
	b	.L688
	 sra	%g3, 24, %g3
.L687:
	cmp	%g2, %g3
	be	.L691
	 nop
.L688:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L687
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L685
	 add	%o0, 1, %o0
	mov	0, %o0
.L691:
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
.L694:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%o1, %g3
	be,a	.L693
	 mov	%g2, %o0
.L693:
	cmp	%g1, 0
	bne	.L694
	 add	%g2, 1, %g2
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	ldub	[%o1], %o3
	sll	%o3, 24, %o3
	cmp	%o3, 0
	be	.L708
	 mov	%o0, %g1
	mov	%o1, %g2
.L698:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne	.L698
	 add	%g2, 1, %g2
	subcc	%g2, %o1, %g2
	be	.L722
	 mov	%g1, %o0
	add	%o1, -1, %o2
	sra	%o3, 24, %o3
	b	.L705
	 add	%o2, %g2, %o2
.L719:
	cmp	%g3, 0
	be	.L718
	 add	%g1, 1, %g1
.L705:
	ldsb	[%g1], %g3
	cmp	%g3, %o3
	bne	.L719
	 ldub	[%g1], %g2
	mov	%o1, %g4
	mov	%g1, %o5
	b	.L700
	 and	%g2, 0xff, %g2
.L720:
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	andcc	%o4, %g3, %g0
	be,a	.L721
	 ldub	[%g4], %g3
	ldub	[%o5], %g2
	cmp	%g2, 0
	be	.L701
	 add	%g4, 1, %g4
.L700:
	ldub	[%g4], %g3
	add	%o5, 1, %o5
	cmp	%g4, %o2
	bne	.L720
	 xor	%g3, %g2, %o4
.L701:
	ldub	[%g4], %g3
.L721:
	cmp	%g2, %g3
	be	.L722
	 mov	%g1, %o0
	b	.L705
	 add	%g1, 1, %g1
.L718:
	jmp	%o7+8
	 mov	0, %o0
.L708:
	mov	%g1, %o0
.L722:
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
	fbl,a	.L733
	 std	%o2, [%sp+72]
	nop
	fbule	.L727
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L734
	 fnegs	%f0, %f0
.L727:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L733:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L727
	 nop
	fnegs	%f0, %f0
.L734:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L750
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu	.L743
	 sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu	.L750
	 mov	0, %o0
	b	.L740
	 ldsb	[%o2], %o5
.L737:
	cmp	%o1, %g2
	blu	.L750
	 mov	0, %o0
.L740:
	ldub	[%g2], %g1
	mov	%g2, %o0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o5
	bne	.L737
	 add	%g2, 1, %g2
	cmp	%o3, 1
	be	.L748
	 nop
	mov	1, %g1
	ldub	[%o0+%g1], %g4
.L749:
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	bne	.L737
	 add	%g1, 1, %g1
	cmp	%o3, %g1
	bne,a	.L749
	 ldub	[%o0+%g1], %g4
.L750:
	jmp	%o7+8
	 nop
.L743:
	jmp	%o7+8
	 mov	0, %o0
.L748:
	jmp	%o7+8
	 nop
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L752
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L752:
	jmp	%i7+8
	 restore %i0, %i2, %o0
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC31:
	.long	-1074790400
	.long	0
	.align 8
.LC32:
	.long	-1075838976
	.long	0
	.align 8
.LC33:
	.long	1072693248
	.long	0
	.align 8
.LC34:
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
	fbl	.L779
	 sethi	%hi(.LC33), %g1
	ldd	[%g1+%lo(.LC33)], %f10
	fcmped	%f0, %f10
	nop
	fbul	.L780
	 mov	0, %g2
.L759:
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f10
	sethi	%hi(.LC33), %g3
	ldd	[%g3+%lo(.LC33)], %f8
	mov	0, %g1
.L765:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L765
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be	.L756
	 st	%g1, [%o2]
.L782:
	fnegs	%f0, %f0
.L756:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L780:
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f10
	fcmped	%f0, %f10
	nop
	fbuge	.L762
	 nop
	fcmpd	%f0, %f8
	nop
	fbne	.L771
	 fmovs	%f0, %f10
.L762:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L779:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fnegs	%f0, %f10
	fcmped	%f0, %f8
	nop
	fbug	.L781
	 fmovs	%f1, %f11
	fmovs	%f10, %f0
	b	.L759
	 mov	1, %g2
.L781:
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L762
	 nop
	mov	1, %g2
.L760:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f8
	mov	0, %g1
.L767:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L767
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne	.L782
	 st	%g1, [%o2]
	b,a	.L756
.L771:
	b	.L760
	 fmovs	%f1, %f11
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	0, %o2
	mov	%i0, %g1
	orcc	%i1, %i0, %g0
	be	.L783
	 mov	0, %o3
.L786:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o5
	mov	0, %g2
	and	%o5, %i3, %i5
	subx	%g0, %g2, %o4
	addcc	%o3, %i5, %o3
	and	%o4, %i2, %i4
	srl	%i3, 31, %g4
	sll	%g1, 31, %i0
	addx	%o2, %i4, %o2
	sll	%i2, 1, %i2
	srl	%i1, 1, %i1
	srl	%g1, 1, %g1
	or	%i0, %i1, %i1
	or	%g4, %i2, %i2
	orcc	%g1, %i1, %g0
	bne	.L786
	 sll	%i3, 1, %i3
.L783:
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
	blu	.L790
	 mov	1, %g1
	b	.L796
	 mov	0, %o0
.L793:
	cmp	%o1, %g2
	bgeu	.L792
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L812
	 nop
.L790:
	cmp	%o1, 0
	bge,a	.L793
	 sll	%o1, 1, %o1
.L791:
	mov	0, %o0
.L796:
	cmp	%g2, %o1
	blu,a	.L813
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L813:
	cmp	%g1, 0
	bne	.L796
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L811
	 nop
.L814:
	jmp	%o7+8
	 nop
.L811:
	jmp	%o7+8
	 mov	%g2, %o0
.L792:
	cmp	%g1, 0
.L812:
	bne	.L791
	 mov	0, %o0
	cmp	%o2, 0
	be	.L814
	 nop
	b,a	.L811
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
	be	.L818
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L818:
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
	be	.L825
	 xor	%i1, %g1, %o1
.L823:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L825:
	cmp	%i1, %i0
	bne	.L823
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
	be	.L832
	 mov	0, %o0
.L828:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L828
	 add	%o0, %g1, %o0
.L832:
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
	blu	.L837
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L847
	 cmp	%o2, 0
.L837:
	sll	%g4, 3, %g3
	cmp	%g4, 0
	be	.L836
	 mov	0, %g2
.L840:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L840
	 std	%o4, [%g4]
.L836:
	cmp	%o2, %g1
	bleu	.L851
	 nop
	ldub	[%o1+%g1], %g2
.L849:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L849
	 ldub	[%o1+%g1], %g2
.L852:
	jmp	%o7+8
	 nop
.L847:
	be	.L852
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L850:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L850
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L851:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L857
	 srl	%o2, 1, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L869
	 cmp	%o2, 0
.L857:
	sll	%g2, 1, %g3
	cmp	%g2, 0
	be	.L856
	 mov	0, %g1
	lduh	[%o1+%g1], %g2
.L871:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L871
	 lduh	[%o1+%g1], %g2
.L856:
	andcc	%o2, 1, %g0
	be	.L873
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L869:
	be	.L874
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L872:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L872
	 ldub	[%o1+%g1], %g2
.L874:
	jmp	%o7+8
	 nop
.L873:
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
	blu	.L879
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L889
	 cmp	%o2, 0
.L879:
	sll	%g3, 2, %g4
	cmp	%g3, 0
	be	.L878
	 mov	0, %g2
	ld	[%o1+%g2], %g3
.L891:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L891
	 ld	[%o1+%g2], %g3
.L878:
	cmp	%o2, %g1
	bleu	.L894
	 nop
	ldub	[%o1+%g1], %g2
.L892:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L892
	 ldub	[%o1+%g1], %g2
.L895:
	jmp	%o7+8
	 nop
.L889:
	be	.L895
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L893:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L893
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L894:
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
.LC40:
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
	bge	.L898
	 fitod	%f8, %f0
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f8
	faddd	%f0, %f8, %f0
.L898:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__uitod, .-__uitod
	.section	.rodata.cst8
	.align 8
.LC42:
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
	bge	.L900
	 fitod	%f8, %f0
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	faddd	%f0, %f8, %f0
.L900:
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
	sra	%o0, 15, %g2
	cmp	%g2, 0
	bne	.L907
	 mov	%o0, %g1
	sra	%o0, 14, %o0
	cmp	%o0, 0
	bne	.L922
	 nop
	sra	%g1, 13, %g2
	cmp	%g2, 0
	bne	.L908
	 nop
	sra	%g1, 12, %g2
	cmp	%g2, 0
	bne	.L909
	 nop
	sra	%g1, 11, %g2
	cmp	%g2, 0
	bne	.L910
	 nop
	sra	%g1, 10, %g2
	cmp	%g2, 0
	bne	.L911
	 nop
	sra	%g1, 9, %g2
	cmp	%g2, 0
	bne	.L912
	 nop
	sra	%g1, 8, %g2
	cmp	%g2, 0
	bne	.L913
	 nop
	sra	%g1, 7, %g2
	cmp	%g2, 0
	bne	.L914
	 nop
	sra	%g1, 6, %g2
	cmp	%g2, 0
	bne	.L915
	 nop
	sra	%g1, 5, %g2
	cmp	%g2, 0
	bne	.L916
	 nop
	sra	%g1, 4, %g2
	cmp	%g2, 0
	bne	.L917
	 nop
	sra	%g1, 3, %g2
	cmp	%g2, 0
	bne	.L918
	 nop
	sra	%g1, 2, %g2
	cmp	%g2, 0
	bne	.L919
	 nop
	sra	%g1, 1, %g2
	cmp	%g2, 0
	bne	.L920
	 cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L920:
	mov	14, %o0
.L922:
	jmp	%o7+8
	 nop
.L907:
	jmp	%o7+8
	 mov	0, %o0
.L918:
	jmp	%o7+8
	 mov	12, %o0
.L908:
	jmp	%o7+8
	 mov	2, %o0
.L909:
	jmp	%o7+8
	 mov	3, %o0
.L910:
	jmp	%o7+8
	 mov	4, %o0
.L911:
	jmp	%o7+8
	 mov	5, %o0
.L912:
	jmp	%o7+8
	 mov	6, %o0
.L913:
	jmp	%o7+8
	 mov	7, %o0
.L914:
	jmp	%o7+8
	 mov	8, %o0
.L915:
	jmp	%o7+8
	 mov	9, %o0
.L916:
	jmp	%o7+8
	 mov	10, %o0
.L917:
	jmp	%o7+8
	 mov	11, %o0
.L919:
	jmp	%o7+8
	 mov	13, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne	.L926
	 nop
	andcc	%o0, 2, %g0
	bne	.L927
	 nop
	andcc	%o0, 4, %g0
	bne	.L928
	 nop
	andcc	%o0, 8, %g0
	bne	.L929
	 nop
	andcc	%o0, 16, %g0
	bne	.L930
	 nop
	andcc	%o0, 32, %g0
	bne	.L931
	 nop
	andcc	%o0, 64, %g0
	bne	.L932
	 nop
	andcc	%o0, 128, %g0
	bne	.L933
	 nop
	andcc	%o0, 256, %g0
	bne	.L934
	 nop
	andcc	%o0, 512, %g0
	bne	.L935
	 nop
	andcc	%o0, 1024, %g0
	bne	.L936
	 nop
	andcc	%o0, 2048, %g0
	bne	.L937
	 nop
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne	.L938
	 nop
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne	.L939
	 nop
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne	.L940
	 nop
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L926:
	jmp	%o7+8
	 mov	0, %o0
.L927:
	jmp	%o7+8
	 mov	1, %o0
.L938:
	jmp	%o7+8
	 mov	12, %o0
.L928:
	jmp	%o7+8
	 mov	2, %o0
.L929:
	jmp	%o7+8
	 mov	3, %o0
.L930:
	jmp	%o7+8
	 mov	4, %o0
.L931:
	jmp	%o7+8
	 mov	5, %o0
.L932:
	jmp	%o7+8
	 mov	6, %o0
.L933:
	jmp	%o7+8
	 mov	7, %o0
.L934:
	jmp	%o7+8
	 mov	8, %o0
.L935:
	jmp	%o7+8
	 mov	9, %o0
.L936:
	jmp	%o7+8
	 mov	10, %o0
.L937:
	jmp	%o7+8
	 mov	11, %o0
.L939:
	jmp	%o7+8
	 mov	13, %o0
.L940:
	jmp	%o7+8
	 mov	14, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC44:
	.long	1191182336
	.section	".text"
	.align 4
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	04
__fixunssfsi:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC44), %g1
	ld	[%sp+76], %f8
	ld	[%g1+%lo(.LC44)], %f9
	fcmpes	%f8, %f9
	nop
	fbge,a	.L948
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L948:
	sethi	%hi(32768), %g1
	fstoi	%f8, %f8
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
	and	%o0, 1, %g3
	sra	%o0, 2, %g2
	and	%g2, 1, %g2
	sra	%o0, 1, %g1
	and	%g1, 1, %g1
	add	%g1, %g3, %g1
	sra	%o0, 3, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 4, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 5, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 6, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 7, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 8, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 9, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 10, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 11, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 12, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 13, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 14, %g2
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 15, %o0
	add	%g1, %g2, %g1
	add	%g1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	and	%o0, 1, %g3
	sra	%o0, 2, %g2
	and	%g2, 1, %g2
	sra	%o0, 1, %g1
	and	%g1, 1, %g1
	add	%g1, %g3, %g1
	sra	%o0, 3, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 4, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 5, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 6, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 7, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 8, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 9, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 10, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 11, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 12, %g2
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	sra	%o0, 13, %g3
	add	%g1, %g2, %g1
	and	%g3, 1, %g3
	sra	%o0, 14, %g2
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 15, %o0
	add	%g1, %g2, %g1
	jmp	%o7+8
	 add	%g1, %o0, %o0
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
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L953
	 add	%o0, %g1, %o0
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
	be	.L965
	 mov	0, %o0
	cmp	%o1, 0
	be	.L965
	 nop
.L960:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	sll	%g2, 1, %g2
	bne	.L960
	 add	%o0, %g1, %o0
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
	cmp	%o0, %o1
	bgu	.L967
	 mov	1, %g1
	b	.L973
	 mov	0, %o0
.L970:
	cmp	%o1, %g2
	bgeu	.L969
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L989
	 nop
.L967:
	cmp	%o1, 0
	bge,a	.L970
	 sll	%o1, 1, %o1
.L968:
	mov	0, %o0
.L973:
	cmp	%g2, %o1
	blu,a	.L990
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L990:
	cmp	%g1, 0
	bne	.L973
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L988
	 nop
.L991:
	jmp	%o7+8
	 nop
.L988:
	jmp	%o7+8
	 mov	%g2, %o0
.L969:
	cmp	%g1, 0
.L989:
	bne	.L968
	 mov	0, %o0
	cmp	%o2, 0
	be	.L991
	 nop
	b,a	.L988
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
	fbl	.L992
	 mov	-1, %g1
	nop
	fbule	.L996
	 mov	1, %g1
.L992:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L996:
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
	fbl	.L997
	 mov	-1, %g1
	nop
	fbule	.L1001
	 mov	1, %g1
.L997:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1001:
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
	bl	.L1014
	 mov	%o0, %g3
	be	.L1009
	 mov	0, %o4
.L1006:
	mov	1, %g4
	mov	0, %o0
.L1008:
	and	%o1, 1, %g1
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	and	%g4, 0xff, %g2
	addx	%g0, 0, %o5
	xor	%g2, 32, %g2
	cmp	%g0, %g2
	sub	%g0, %g1, %g1
	addx	%g0, 0, %g2
	and	%g1, %g3, %g1
	add	%g4, 1, %g4
	add	%o0, %g1, %o0
	andcc	%o5, %g2, %g0
	bne	.L1008
	 sll	%g3, 1, %g3
	cmp	%o4, 0
	be	.L1015
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1009:
	mov	0, %o0
.L1015:
	jmp	%o7+8
	 nop
.L1014:
	sub	%g0, %o1, %o1
	b	.L1006
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	bge	.L1017
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	1, %g3
.L1017:
	cmp	%o1, 0
	bge	.L1041
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	xor	%g3, 1, %g3
.L1041:
	cmp	%o0, %o1
	bgu	.L1019
	 mov	1, %g1
	b	.L1025
	 mov	0, %o0
.L1039:
	cmp	%g1, 0
	be,a	.L1021
	 mov	0, %o0
.L1019:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1039
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1021
	 mov	0, %o0
.L1025:
	cmp	%o1, %g2
	bgu,a	.L1042
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1042:
	cmp	%g1, 0
	bne	.L1025
	 srl	%o1, 1, %o1
.L1021:
	cmp	%g3, 0
	bne,a	.L1040
	 sub	%g0, %o0, %o0
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
	bge	.L1044
	 mov	0, %g4
	sub	%g0, %o0, %o0
	mov	1, %g4
.L1044:
	sra	%o1, 31, %g3
	mov	%o0, %g2
	xor	%g3, %o1, %o1
	sub	%o1, %g3, %o1
	cmp	%o0, %o1
	bgu	.L1045
	 mov	1, %g1
	b	.L1066
	 cmp	%o1, %g2
.L1065:
	cmp	%g1, 0
	be	.L1068
	 cmp	%g4, 0
.L1045:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1065
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1068
	 cmp	%g4, 0
.L1051:
	cmp	%o1, %g2
.L1066:
	bleu,a	.L1050
	 sub	%g2, %o1, %g2
.L1050:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1051
	 srl	%o1, 1, %o1
	mov	%g2, %o0
	cmp	%g4, 0
.L1068:
	bne,a	.L1067
	 sub	%g0, %o0, %o0
.L1067:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1070
	 mov	1, %g2
	b	.L1156
	 mov	0, %g4
.L1073:
	sll	%g2, 1, %g3
	srl	%g1, 16, %g1
	mov	%g3, %g4
	cmp	%g1, %o0
	bgeu	.L1157
	 sll	%g2, 17, %o5
	cmp	%o5, 0
	be	.L1075
	 mov	%g3, %g2
	mov	%g1, %o1
.L1070:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge	.L1073
	 sll	%o1, 17, %g1
	cmp	%o0, %o1
	blu	.L1096
	 mov	0, %g4
	sub	%o0, %o1, %o0
	mov	%g2, %g4
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
.L1096:
	sll	%g2, 16, %g3
	srl	%o1, 1, %o5
	srl	%g3, 17, %g1
	cmp	%g1, 0
	be	.L1075
	 mov	%g1, %g2
.L1077:
	cmp	%o0, %o5
	blu,a	.L1163
	 srl	%g3, 18, %g2
	sub	%o0, %o5, %o5
	or	%g4, %g2, %g4
	sll	%o5, 16, %o5
	srl	%o5, 16, %o0
	srl	%g3, 18, %g2
.L1163:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 2, %g1
	cmp	%o0, %g1
	blu,a	.L1164
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 19, %g2
.L1164:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 3, %g1
	cmp	%o0, %g1
	blu,a	.L1165
	 srl	%g3, 20, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 20, %g2
.L1165:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a	.L1166
	 srl	%g3, 21, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 21, %g2
.L1166:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a	.L1167
	 srl	%g3, 22, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 22, %g2
.L1167:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a	.L1168
	 srl	%g3, 23, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 23, %g2
.L1168:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a	.L1158
	 sub	%o0, %g1, %g1
.L1084:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a	.L1159
	 sub	%o0, %g1, %g1
.L1085:
	srl	%g3, 25, %g2
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a	.L1160
	 sub	%o0, %g1, %g1
.L1086:
	srl	%g3, 26, %g2
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a	.L1161
	 sub	%o0, %g1, %g1
.L1087:
	srl	%g3, 27, %g2
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a	.L1162
	 sub	%o0, %g1, %g1
.L1088:
	srl	%g3, 28, %g2
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a	.L1169
	 srl	%g3, 29, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 29, %g2
.L1169:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a	.L1170
	 srl	%g3, 30, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 30, %g2
.L1170:
	cmp	%g2, 0
	be	.L1075
	 srl	%o1, 14, %g1
	cmp	%o0, %g1
	blu	.L1171
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
.L1171:
	bge	.L1075
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a	.L1075
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%g4, 1, %g4
	sll	%o1, 16, %g1
	srl	%g1, 16, %o0
.L1075:
	cmp	%o2, 0
.L1172:
	bne,a	.L1094
	 mov	%o0, %g4
.L1094:
	sll	%g4, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
.L1157:
	cmp	%o5, 0
	be	.L1075
	 cmp	%o0, %g1
	blu	.L1076
	 sethi	%hi(31744), %o4
	sub	%o0, %g1, %o0
	sll	%o0, 16, %o0
	or	%o4, 1023, %o4
	srl	%o0, 16, %o0
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	mov	%g1, %o1
	b	.L1077
	 sll	%g3, 16, %g3
.L1158:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1084
	 srl	%g1, 16, %o0
.L1076:
	mov	0, %g4
	or	%o4, 1023, %o4
	sll	%g3, 16, %g3
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	b	.L1077
	 mov	%g1, %o1
.L1159:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1085
	 srl	%g1, 16, %o0
.L1160:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1086
	 srl	%g1, 16, %o0
.L1161:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1087
	 srl	%g1, 16, %o0
.L1162:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1088
	 srl	%g1, 16, %o0
.L1156:
	bne	.L1172
	 cmp	%o2, 0
	mov	1, %g4
	b	.L1172
	 mov	0, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1174
	 mov	1, %g1
	b	.L1180
	 mov	0, %o0
.L1177:
	cmp	%o1, %g2
	bgeu	.L1176
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1196
	 nop
.L1174:
	cmp	%o1, 0
	bge,a	.L1177
	 sll	%o1, 1, %o1
.L1175:
	mov	0, %o0
.L1180:
	cmp	%g2, %o1
	blu,a	.L1197
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1197:
	cmp	%g1, 0
	bne	.L1180
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1195
	 nop
.L1198:
	jmp	%o7+8
	 nop
.L1195:
	jmp	%o7+8
	 mov	%g2, %o0
.L1176:
	cmp	%g1, 0
.L1196:
	bne	.L1175
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1198
	 nop
	b,a	.L1195
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1200
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1200:
	be	.L1204
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1204:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1206
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1210:
	jmp	%o7+8
	 nop
.L1206:
	be	.L1210
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
	sll	%o0, 24, %o4
	srl	%o0, 24, %g1
	srl	%o0, 8, %o5
	sethi	%hi(64512), %g4
	sll	%o0, 8, %o0
	or	%g4, 768, %g4
	and	%o5, %g4, %o5
	or	%g1, %o5, %g1
	sethi	%hi(16711680), %o3
	srl	%o1, 24, %o5
	sll	%o1, 24, %g2
	srl	%o1, 24, %g3
	or	%g2, %o5, %g2
	or	%o0, %g3, %g3
	sll	%o1, 8, %o0
	and	%g3, %o3, %g3
	and	%o0, %o3, %o0
	or	%g1, %g3, %g3
	srl	%o1, 8, %g1
	or	%g3, %o4, %o1
	or	%g1, %o4, %g1
	and	%g1, %g4, %g1
	or	%g2, %g1, %g2
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	sll	%o0, 24, %g3
	srl	%o0, 24, %g1
	srl	%o0, 8, %g2
	or	%g1, %g3, %g1
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	sll	%o0, 8, %o0
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
	or	%g1, 768, %g2
	subx	%g0, -1, %g4
	mov	16, %g1
	sll	%g4, 4, %g4
	sub	%g1, %g4, %g1
	srl	%o0, %g1, %g1
	and	%g1, %g2, %g2
	mov	8, %g3
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	sub	%g3, %g2, %g3
	srl	%g1, %g3, %g1
	and	%g1, 240, %g3
	mov	4, %o5
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 2, %g3
	sub	%o5, %g3, %o5
	add	%g2, %g4, %g4
	srl	%g1, %o5, %g1
	and	%g1, 12, %o5
	cmp	%g0, %o5
	add	%g3, %g4, %g3
	subx	%g0, -1, %g2
	mov	2, %o5
	sll	%g2, 1, %g2
	sub	%o5, %g2, %g4
	srl	%g1, %g4, %g1
	andcc	%g1, 2, %g0
	bne	.L1215
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1215:
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
	bl	.L1217
	 mov	0, %g1
	bg	.L1217
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1217
	 mov	0, %g1
	bgu	.L1217
	 mov	2, %g1
	mov	1, %g1
.L1217:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1223
	 mov	-1, %g1
	bg	.L1223
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1223
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1223:
	jmp	%o7+8
	 mov	%g1, %o0
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
	and	%g1, 15, %g4
	cmp	%g0, %g4
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
	be,a	.L1230
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1230:
	be	.L1234
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1234:
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
	and	%i1, %i3, %i4
	and	%i0, %i3, %l0
	mov	%i4, %o1
	call	.umul, 0
	 mov	%l0, %o0
	srl	%i0, 16, %i0
	srl	%o0, 16, %i2
	mov	%i0, %o1
	mov	%o0, %i5
	call	.umul, 0
	 mov	%i4, %o0
	add	%o0, %i2, %i4
	sll	%i4, 16, %g1
	srl	%i1, 16, %i1
	srl	%g1, 16, %i2
	mov	%i1, %o1
	and	%i5, %i3, %i5
	mov	%l0, %o0
	call	.umul, 0
	 add	%i5, %g1, %i5
	add	%o0, %i2, %i2
	sll	%i2, 16, %g1
	mov	%i1, %o1
	and	%i5, %i3, %i5
	mov	%i0, %o0
	add	%i5, %g1, %i1
	call	.umul, 0
	 srl	%i2, 16, %i0
	srl	%i4, 16, %i4
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
	and	%i3, %i1, %i4
	and	%l0, %i1, %l4
	mov	%i4, %o1
	call	.umul, 0
	 mov	%l4, %o0
	srl	%l0, 16, %l2
	mov	%o0, %i5
	mov	%l2, %o1
	srl	%o0, 16, %l1
	call	.umul, 0
	 mov	%i4, %o0
	and	%i5, %i1, %i4
	add	%o0, %l1, %i5
	sll	%i5, 16, %g1
	srl	%i3, 16, %l3
	add	%i4, %g1, %i4
	mov	%l3, %o1
	srl	%g1, 16, %l1
	call	.umul, 0
	 mov	%l4, %o0
	add	%o0, %l1, %l1
	sll	%l1, 16, %g1
	mov	%l3, %o1
	and	%i4, %i1, %i4
	mov	%l2, %o0
	call	.umul, 0
	 add	%i4, %g1, %i1
	mov	%i2, %o1
	srl	%i5, 16, %i5
	add	%i5, %o0, %i5
	call	.umul, 0
	 mov	%l0, %o0
	mov	%i0, %o1
	srl	%l1, 16, %l1
	add	%i5, %l1, %i5
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
	sethi	%hi(26624), %o0
	xor	%g1, %o1, %o1
	or	%o0, 406, %o0
	srl	%o1, 8, %g2
	xor	%g2, %o1, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
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
	sethi	%hi(26624), %o0
	and	%g1, 15, %g1
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
	sethi	%hi(1431655424), %g2
	sll	%i0, 31, %g4
	or	%g2, 341, %g2
	srl	%i0, 1, %g1
	srl	%i1, 1, %g3
	and	%g1, %g2, %i4
	or	%g4, %g3, %g3
	and	%g3, %g2, %i5
	subcc	%i1, %i5, %g3
	subx	%i0, %i4, %g2
	sll	%g2, 30, %i4
	srl	%g2, 2, %i5
	srl	%g3, 2, %g4
	sethi	%hi(858992640), %g1
	or	%i4, %g4, %g4
	or	%g1, 819, %g1
	and	%i5, %g1, %o4
	and	%g2, %g1, %i2
	and	%g4, %g1, %o5
	and	%g3, %g1, %i3
	addcc	%o5, %i3, %i5
	addx	%o4, %i2, %i4
	srl	%i4, 4, %g2
	sll	%i4, 28, %g4
	srl	%i5, 4, %g3
	sethi	%hi(252644352), %g1
	or	%g4, %g3, %g3
	or	%g1, 783, %g1
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
	sub	%o0, %g2, %o0
	or	%g1, 819, %g1
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
.LC46:
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
	sethi	%hi(.LC46), %g2
	ldd	[%sp+72], %f8
	ldd	[%g2+%lo(.LC46)], %f0
	andcc	%o2, 1, %g0
	be	.L1243
	 mov	%o2, %g1
.L1245:
	fmuld	%f0, %f8, %f0
.L1243:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1244
	 andcc	%g1, 1, %g0
	bne	.L1245
	 fmuld	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1250:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1245
	 fmuld	%f8, %f8, %f8
	b	.L1250
	 srl	%g1, 31, %g2
.L1244:
	cmp	%o2, 0
	bge	.L1242
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f8
	fdivd	%f8, %f0, %f0
.L1242:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC48:
	.long	1065353216
	.section	".text"
	.align 4
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC48), %g2
	ld	[%sp+76], %f8
	ld	[%g2+%lo(.LC48)], %f0
	andcc	%o1, 1, %g0
	be	.L1252
	 mov	%o1, %g1
.L1254:
	fmuls	%f0, %f8, %f0
.L1252:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1253
	 andcc	%g1, 1, %g0
	bne	.L1254
	 fmuls	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1259:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1254
	 fmuls	%f8, %f8, %f8
	b	.L1259
	 srl	%g1, 31, %g2
.L1253:
	cmp	%o1, 0
	bge	.L1251
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f8
	fdivs	%f8, %f0, %f0
.L1251:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1260
	 mov	0, %g1
	bgu	.L1260
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1260
	 mov	0, %g1
	bgu	.L1260
	 mov	2, %g1
	mov	1, %g1
.L1260:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1266
	 mov	-1, %g1
	bgu	.L1266
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1266
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1266:
	jmp	%o7+8
	 mov	%g1, %o0
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
