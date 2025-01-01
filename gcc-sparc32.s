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
	ldsb	[%o0], %g2
	ldub	[%o0], %g4
	cmp	%g2, 0
	be	.L88
	 ldub	[%o1], %g3
	sll	%g3, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne,a	.L102
	 and	%g4, 0xff, %o0
	b	.L89
	 mov	1, %g1
.L101:
	sll	%g3, 24, %g2
	sra	%g2, 24, %g2
	cmp	%o5, %g2
	bne,a	.L102
	 and	%g4, 0xff, %o0
.L89:
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	add	%g1, 1, %g1
	cmp	%g2, 0
	bne	.L101
	 sra	%g2, 24, %o5
.L88:
	and	%g4, 0xff, %o0
.L102:
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
	be	.L106
	 mov	%o0, %g1
.L105:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L105
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L106:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L108
	 mov	0, %g2
	ldub	[%o0], %g2
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g2, 0
	bne	.L112
	 add	%o1, %o2, %o2
	b	.L123
	 ldub	[%o1], %g3
.L125:
	cmp	%g1, %o2
	be	.L126
	 sub	%g2, %g3, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be	.L124
	 add	%g1, 1, %g3
	mov	%g3, %g1
.L112:
	ldub	[%g1], %g3
	cmp	%g0, %g3
	xor	%g3, %g2, %g4
	addx	%g0, 0, %o5
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L125
	 add	%o0, 1, %o0
.L111:
	sub	%g2, %g3, %g2
.L108:
.L126:
	jmp	%o7+8
	 mov	%g2, %o0
.L124:
	b	.L111
	 ldub	[%g1+1], %g3
.L123:
	b	.L126
	 sub	%g2, %g3, %g2
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L131
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L129:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L129
	 add	%o1, 2, %o1
.L131:
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
	bleu	.L158
	 mov	1, %o0
	cmp	%g1, 31
	bleu	.L158
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L158
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L158:
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
	bleu	.L168
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	sethi	%hi(46080), %g3
	or	%g2, 982, %g2
	or	%g3, 981, %g3
	add	%o0, %g2, %g2
	cmp	%g3, %g2
	bgeu	.L165
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L165
	 sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g2
	add	%o0, %g3, %g3
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L169
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	sethi	%hi(1048576), %g3
	or	%g2, 4, %g2
	or	%g3, 3, %g3
	add	%g1, %g2, %g2
	cmp	%g2, %g3
	bgu	.L169
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L165:
	mov	1, %o0
.L169:
	jmp	%o7+8
	 nop
.L168:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L169
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
	bleu	.L174
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L174:
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
	fbu	.L176
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L180
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L183
	 nop
	fsubd	%f0, %f8, %f0
.L176:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L183:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L180:
	b	.L176
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
	fbu	.L184
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L184
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L191
	 nop
	fsubs	%f0, %f8, %f0
.L184:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L191:
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
	fbu	.L198
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L199
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L202
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L197
	 mov	1, %g1
	mov	0, %g1
.L197:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L198
	 fmovs	%f9, %f1
.L192:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L202:
	cmp	%g1, 0
	bne	.L192
	 fmovs	%f11, %f1
.L199:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L198:
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
	fbu	.L209
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L210
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L213
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L208
	 mov	1, %g1
	mov	0, %g1
.L208:
	andcc	%g1, 1, %g0
	bne	.L209
	 fmovs	%f8, %f0
.L203:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L213:
	bne	.L203
	 fmovs	%f9, %f0
.L210:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L209:
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
	fbu	.L220
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L221
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L224
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L219
	 mov	1, %g1
	mov	0, %g1
.L219:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L220
	 fmovs	%f9, %f1
.L214:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L224:
	cmp	%g1, 0
	bne	.L214
	 fmovs	%f11, %f1
.L221:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L220:
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
	fbu	.L231
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L232
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L235
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L230
	 mov	1, %g1
	mov	0, %g1
.L230:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L232
	 fmovs	%f11, %f1
.L225:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L235:
	cmp	%g1, 0
	bne	.L225
	 fmovs	%f9, %f1
.L231:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L232:
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
	fbu	.L242
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L243
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L246
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L241
	 mov	1, %g1
	mov	0, %g1
.L241:
	andcc	%g1, 1, %g0
	bne	.L243
	 fmovs	%f9, %f0
.L236:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L246:
	bne	.L236
	 fmovs	%f8, %f0
.L242:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L243:
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
	fbu	.L253
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L254
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L257
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L252
	 mov	1, %g1
	mov	0, %g1
.L252:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L254
	 fmovs	%f11, %f1
.L247:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L257:
	cmp	%g1, 0
	bne	.L247
	 fmovs	%f9, %f1
.L253:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L254:
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
	be	.L261
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L260:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L260
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L261:
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
	be,a	.L271
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L273
	 st	%o0, [%g1+4]
.L273:
	jmp	%o7+8
	 nop
.L271:
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
	be	.L284
	 ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g2
.L284:
	cmp	%g2, 0
	bne,a	.L283
	 st	%g1, [%g2]
.L283:
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
	be	.L286
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L288
	 mov	0, %l0
.L300:
	cmp	%l1, %l0
	be	.L286
	 add	%i5, %i3, %i5
.L288:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a	.L300
	 add	%l0, 1, %l0
.L302:
	jmp	%i7+8
	 restore
.L286:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L302
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
	be	.L304
	 mov	0, %i5
	b	.L315
	 mov	%i1, %o1
.L314:
	cmp	%l0, %i5
	be	.L304
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L315:
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cmp	%o0, 0
	bne,a	.L314
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L304:
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
.L342:
	sll	%g1, 24, %g1
	sra	%g1, 24, %g2
	add	%g2, -9, %g3
	cmp	%g3, 4
	bleu	.L337
	 cmp	%g2, 32
	bne,a	.L318
	 sra	%g1, 24, %g1
.L337:
	ldub	[%o0+1], %g1
	b	.L342
	 add	%o0, 1, %o0
.L318:
	cmp	%g1, 43
	be	.L323
	 cmp	%g1, 45
	bne,a	.L343
	 ldsb	[%o0], %g3
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L332
	 add	%o0, 1, %g1
	mov	1, %o4
.L326:
	mov	0, %o0
.L329:
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
	bleu	.L329
	 ldub	[%g1], %g2
	cmp	%o4, 0
	bne	.L344
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L343:
	ldub	[%o0], %g2
	add	%g3, -48, %g3
	mov	%o0, %g1
	cmp	%g3, 9
	bleu	.L326
	 mov	0, %o4
.L332:
	mov	0, %o0
.L344:
	jmp	%o7+8
	 nop
.L323:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g2
	add	%g3, -48, %g3
	add	%o0, 1, %g1
	cmp	%g3, 9
	bleu	.L326
	 mov	0, %o4
	jmp	%o7+8
	 mov	0, %o0
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
	ldub	[%i0], %g1
.L371:
	sll	%g1, 24, %g1
	sra	%g1, 24, %g2
	add	%g2, -9, %g3
	cmp	%g3, 4
	bleu	.L366
	 cmp	%g2, 32
	bne,a	.L347
	 sra	%g1, 24, %g1
.L366:
	ldub	[%i0+1], %g1
	b	.L371
	 add	%i0, 1, %i0
.L347:
	cmp	%g1, 43
	be	.L352
	 cmp	%g1, 45
	bne,a	.L372
	 ldsb	[%i0], %g3
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L361
	 add	%i0, 1, %g1
	mov	1, %o7
.L355:
	mov	0, %i0
	mov	0, %i1
.L358:
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
	bleu	.L358
	 ldub	[%g1], %g2
	cmp	%o7, 0
	bne	.L373
	 nop
	subcc	%i3, %i5, %i1
	subx	%i2, %i4, %i0
	jmp	%i7+8
	 restore
.L372:
	ldub	[%i0], %g2
	add	%g3, -48, %g3
	mov	%i0, %g1
	cmp	%g3, 9
	bleu	.L355
	 mov	0, %o7
.L361:
	mov	0, %i0
	mov	0, %i1
.L373:
	jmp	%i7+8
	 restore
.L352:
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g2
	add	%g3, -48, %g3
	add	%i0, 1, %g1
	cmp	%g3, 9
	bleu	.L355
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
.L385:
	cmp	%i2, 0
	be	.L387
	 mov	0, %i5
.L386:
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
	bl,a	.L385
	 mov	%l0, %i2
	ble	.L375
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L386
	 add	%i5, %i3, %i1
	mov	0, %i5
.L375:
.L387:
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
.L400:
	cmp	%i2, 0
	be	.L401
	 nop
.L389:
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
	be	.L402
	 nop
	ble,a	.L400
	 mov	%l0, %i2
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	bne	.L389
	 add	%i0, %i3, %i1
.L401:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L402:
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
	cmp	%o1, %g1
	bne,a	.L428
	 cmp	%g1, 0
	b	.L427
	 cmp	%g0, %g1
.L426:
	cmp	%g1, %o1
	be	.L411
	 add	%o0, 4, %o0
	cmp	%g1, 0
.L428:
	bne,a	.L426
	 ld	[%o0+4], %g1
.L411:
	cmp	%g0, %g1
.L427:
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
	be	.L430
	 cmp	%g3, 0
	be	.L448
	 cmp	%g2, %g3
	b	.L431
	 mov	4, %g1
.L446:
	cmp	%g3, 0
	be	.L448
	 cmp	%g2, %g3
.L431:
	ld	[%o0+%g1], %g2
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	xor	%g2, %g3, %g4
	addx	%g0, 0, %o5
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L446
	 add	%g1, 4, %g1
.L430:
	cmp	%g2, %g3
.L448:
	bl	.L449
	 mov	-1, %o0
	ble	.L447
	 mov	1, %o0
.L449:
	jmp	%o7+8
	 nop
.L447:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L451:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L451
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
	be	.L456
	 nop
	mov	%o0, %g1
.L455:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L455
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
.L456:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L475
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L472:
	be,a	.L476
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L466
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L475:
	ld	[%o1], %g2
	cmp	%g0, %g1
	xor	%g1, %g2, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	bne	.L472
	 cmp	%g2, 0
	ld	[%o0], %g2
.L476:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L473
	 nop
	ble	.L466
	 mov	1, %o0
	jmp	%o7+8
	 nop
.L473:
	jmp	%o7+8
	 mov	-1, %o0
.L466:
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
	bne,a	.L485
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L481:
	be	.L482
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L485:
	cmp	%g1, %o1
	bne,a	.L481
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L482:
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
	bne,a	.L500
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L490:
	addcc	%o2, -1, %o2
	be	.L494
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L500:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be	.L490
	 add	%o0, 4, %o0
	bl,a	.L499
	 mov	-1, %o0
	bg	.L499
	 mov	1, %o0
.L494:
	jmp	%o7+8
	 mov	0, %o0
.L499:
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
	be	.L506
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L506:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L524
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L521
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L524
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L523:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L523
	 ld	[%o1+%g1], %g2
.L525:
	jmp	%o7+8
	 nop
.L521:
	cmp	%o2, 0
	be	.L525
	 mov	0, %g2
.L510:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L510
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L524:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L533
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L528:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L528
	 add	%g2, 4, %g2
.L533:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L535
	 nop
	cmp	%o2, 0
	be	.L549
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L547:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L547
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L535:
	be	.L549
	 nop
	cmp	%o2, 0
	be	.L549
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L548:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L548
	 ldub	[%o0+%g1], %g2
.L549:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L552
	 xnor	%g0, %o2, %g3
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L554
	 and	%o2, 63, %g2
.L556:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o1, %g3, %o1
	jmp	%o7+8
	 or	%o0, %g1, %o0
.L552:
	srl	%o1, 1, %g2
	srl	%g2, %g3, %g2
	sll	%o0, %o2, %g1
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L556
	 and	%o2, 63, %g2
.L554:
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
	be	.L558
	 xnor	%g0, %o2, %g3
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L560
	 and	%o2, 63, %g2
.L562:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L558:
	sll	%o0, 1, %g2
	sll	%g2, %g3, %g2
	srl	%o1, %o2, %g1
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L562
	 and	%o2, 63, %g2
.L560:
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
	b	.L577
	 mov	0, %g1
.L575:
	cmp	%g1, 32
	be	.L579
	 nop
.L577:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L575
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L579:
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
	be	.L587
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L587
	 nop
	mov	1, %o0
.L582:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L582
	 add	%o0, 1, %o0
.L587:
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
	fbl	.L588
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L592
	 nop
.L588:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L592:
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
	fbl	.L593
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L597
	 nop
.L593:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L597:
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
	fbl	.L598
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L602
	 nop
.L598:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L602:
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
	fbu	.L605
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L605
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L606
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L606:
	andcc	%o1, 1, %g0
	be	.L619
	 srl	%o1, 31, %g1
.L608:
	fmuls	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L619:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L605
	 andcc	%o1, 1, %g0
	bne	.L608
	 fmuls	%f8, %f8, %f8
	srl	%o1, 31, %g1
.L618:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne	.L608
	 fmuls	%f8, %f8, %f8
	b	.L618
	 srl	%o1, 31, %g1
.L605:
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
	fbu	.L621
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L621
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L622
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L622:
	andcc	%o2, 1, %g0
	be	.L635
	 srl	%o2, 31, %g1
.L624:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L635:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L621
	 andcc	%o2, 1, %g0
	bne	.L624
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L634:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L624
	 fmuld	%f8, %f8, %f8
	b	.L634
	 srl	%o2, 31, %g1
.L621:
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
	fbu	.L637
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L637
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L638
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L638:
	andcc	%o2, 1, %g0
	be	.L651
	 srl	%o2, 31, %g1
.L640:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L651:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L637
	 andcc	%o2, 1, %g0
	bne	.L640
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L650:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L640
	 fmuld	%f8, %f8, %f8
	b	.L650
	 srl	%o2, 31, %g1
.L637:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L660
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L659:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L659
	 ldub	[%o0+%g1], %g2
.L660:
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
	be	.L662
	 mov	%o0, %g1
.L663:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L663
	 add	%g1, 1, %g1
.L662:
	cmp	%o2, 0
	bne,a	.L675
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L666:
	be	.L665
	 add	%o1, 1, %o1
	ldub	[%o1], %g2
.L675:
	add	%g1, 1, %g1
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L666
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L665:
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
	be	.L677
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L684:
	cmp	%g2, 0
	bne,a	.L680
	 add	%g1, 1, %g1
.L677:
	jmp	%o7+8
	 mov	%g1, %o0
.L680:
	cmp	%o1, %g1
	bne,a	.L684
	 ldsb	[%o0+%g1], %g2
	b,a	.L677
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L692
	 mov	0, %o0
.L686:
	mov	%o1, %g1
	b	.L689
	 sra	%g3, 24, %g3
.L688:
	cmp	%g2, %g3
	be	.L692
	 nop
.L689:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L688
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L686
	 add	%o0, 1, %o0
	mov	0, %o0
.L692:
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
.L695:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%o1, %g3
	be,a	.L694
	 mov	%g2, %o0
.L694:
	cmp	%g1, 0
	bne	.L695
	 add	%g2, 1, %g2
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	ldub	[%o1], %o2
	sll	%o2, 24, %o2
	cmp	%o2, 0
	be	.L709
	 mov	%o0, %g1
	mov	%o1, %g2
.L699:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne	.L699
	 add	%g2, 1, %g2
	subcc	%g2, %o1, %g2
	be	.L723
	 mov	%g1, %o0
	add	%o1, -1, %o0
	sra	%o2, 24, %o2
	b	.L706
	 add	%o0, %g2, %o0
.L720:
	cmp	%g3, 0
	be	.L719
	 add	%g1, 1, %g1
.L706:
	ldsb	[%g1], %g3
	cmp	%g3, %o2
	bne	.L720
	 ldub	[%g1], %g2
	mov	%o1, %g4
	mov	%g1, %o5
	b	.L701
	 and	%g2, 0xff, %g2
.L721:
	cmp	%g0, %g3
	addx	%g0, 0, %o3
	cmp	%g0, %o4
	subx	%g0, -1, %g3
	andcc	%o3, %g3, %g0
	be,a	.L722
	 ldub	[%g4], %g3
	ldub	[%o5], %g2
	cmp	%g2, 0
	be	.L702
	 add	%g4, 1, %g4
.L701:
	ldub	[%g4], %g3
	add	%o5, 1, %o5
	cmp	%g4, %o0
	bne	.L721
	 xor	%g3, %g2, %o4
.L702:
	ldub	[%g4], %g3
.L722:
	cmp	%g3, %g2
	be,a	.L723
	 mov	%g1, %o0
	b	.L706
	 add	%g1, 1, %g1
.L719:
	jmp	%o7+8
	 mov	0, %o0
.L709:
	mov	%g1, %o0
.L723:
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
	fbl,a	.L734
	 std	%o2, [%sp+72]
	nop
	fbule	.L728
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L735
	 fnegs	%f0, %f0
.L728:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L734:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L728
	 nop
	fnegs	%f0, %f0
.L735:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L751
	 mov	%o0, %g4
	cmp	%o1, %o3
	blu	.L744
	 sub	%o1, %o3, %o5
	add	%o0, %o5, %o5
	cmp	%o0, %o5
	bgu	.L751
	 mov	0, %o0
	b	.L741
	 ldsb	[%o2], %o4
.L738:
	cmp	%o5, %g4
	blu	.L751
	 mov	0, %o0
.L741:
	ldub	[%g4], %g1
	mov	%g4, %o0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o4
	bne	.L738
	 add	%g4, 1, %g4
	cmp	%o3, 1
	be	.L749
	 nop
	mov	1, %g1
	ldub	[%o0+%g1], %g3
.L750:
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	bne	.L738
	 add	%g1, 1, %g1
	cmp	%o3, %g1
	bne,a	.L750
	 ldub	[%o0+%g1], %g3
.L751:
	jmp	%o7+8
	 nop
.L744:
	jmp	%o7+8
	 mov	0, %o0
.L749:
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
	be	.L753
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L753:
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
	fbl	.L780
	 sethi	%hi(.LC33), %g1
	ldd	[%g1+%lo(.LC33)], %f10
	fcmped	%f0, %f10
	nop
	fbul	.L781
	 mov	0, %g2
.L760:
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f10
	sethi	%hi(.LC33), %g3
	ldd	[%g3+%lo(.LC33)], %f8
	mov	0, %g1
.L766:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L766
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be	.L757
	 st	%g1, [%o2]
.L783:
	fnegs	%f0, %f0
.L757:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L781:
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f10
	fcmped	%f0, %f10
	nop
	fbuge	.L763
	 nop
	fcmpd	%f0, %f8
	nop
	fbne	.L772
	 fmovs	%f0, %f10
.L763:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L780:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fnegs	%f0, %f10
	fcmped	%f0, %f8
	nop
	fbug	.L782
	 fmovs	%f1, %f11
	fmovs	%f10, %f0
	b	.L760
	 mov	1, %g2
.L782:
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L763
	 nop
	mov	1, %g2
.L761:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f8
	mov	0, %g1
.L768:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L768
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne	.L783
	 st	%g1, [%o2]
	b,a	.L757
.L772:
	b	.L761
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
	be	.L784
	 mov	0, %o3
.L787:
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
	bne	.L787
	 sll	%i3, 1, %i3
.L784:
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
	blu	.L791
	 mov	1, %g1
	b	.L797
	 mov	0, %o0
.L794:
	cmp	%o1, %g2
	bgeu	.L793
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L813
	 nop
.L791:
	cmp	%o1, 0
	bge,a	.L794
	 sll	%o1, 1, %o1
.L792:
	mov	0, %o0
.L797:
	cmp	%o1, %g2
	bgu,a	.L814
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L814:
	cmp	%g1, 0
	bne	.L797
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L812
	 nop
.L815:
	jmp	%o7+8
	 nop
.L812:
	jmp	%o7+8
	 mov	%g2, %o0
.L793:
	cmp	%g1, 0
.L813:
	bne	.L792
	 mov	0, %o0
	cmp	%o2, 0
	be	.L815
	 nop
	b,a	.L812
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
	be	.L819
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L819:
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
	be	.L826
	 xor	%i1, %g1, %o1
.L824:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L826:
	cmp	%i1, %i0
	bne	.L824
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
	be	.L833
	 mov	0, %o0
.L829:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L829
	 add	%o0, %g1, %o0
.L833:
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
	blu	.L835
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L848
	 cmp	%o2, 0
.L835:
	cmp	%g3, 0
	be	.L850
	 cmp	%o2, %g1
	sll	%g3, 3, %g3
	mov	0, %g2
.L839:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L839
	 std	%o4, [%g4]
	cmp	%o2, %g1
.L850:
	bleu	.L853
	 nop
	ldub	[%o1+%g1], %g2
.L851:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L851
	 ldub	[%o1+%g1], %g2
.L854:
	jmp	%o7+8
	 nop
.L848:
	be	.L854
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L852:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L852
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L853:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L856
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L871
	 cmp	%o2, 0
.L856:
	cmp	%g3, 0
	be	.L873
	 andcc	%o2, 1, %g0
	sll	%g3, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L874:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L874
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L873:
	be	.L876
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
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
.L877:
	jmp	%o7+8
	 nop
.L876:
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
	blu	.L879
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu	.L892
	 cmp	%o2, 0
.L879:
	cmp	%g4, 0
	be	.L894
	 cmp	%o2, %g1
	sll	%g4, 2, %g4
	mov	0, %g2
	ld	[%o1+%g2], %g3
.L895:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L895
	 ld	[%o1+%g2], %g3
	cmp	%o2, %g1
.L894:
	bleu	.L898
	 nop
	ldub	[%o1+%g1], %g2
.L896:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L896
	 ldub	[%o1+%g1], %g2
.L899:
	jmp	%o7+8
	 nop
.L892:
	be	.L899
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L897:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L897
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L898:
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
	bge	.L902
	 fitod	%f8, %f0
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f8
	faddd	%f0, %f8, %f0
.L902:
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
	bge	.L904
	 fitod	%f8, %f0
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	faddd	%f0, %f8, %f0
.L904:
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
.L912:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L908
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L912
	 sub	%g3, %g1, %g2
.L908:
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
.L917:
	andcc	%g2, 1, %g0
	bne	.L913
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L917
	 sra	%o0, %g1, %g2
.L913:
	jmp	%o7+8
	 mov	%g1, %o0
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
	fbge,a	.L924
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L924:
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
	mov	0, %g3
	mov	0, %g1
.L926:
	sra	%o0, %g1, %g2
	add	%g1, 1, %g1
	and	%g2, 1, %g2
	cmp	%g1, 16
	bne	.L926
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
.L929:
	sra	%o0, %g1, %g2
	add	%g1, 1, %g1
	and	%g2, 1, %g2
	cmp	%g1, 16
	bne	.L929
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
	be	.L937
	 mov	0, %o0
.L933:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L933
	 add	%o0, %g1, %o0
.L937:
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
	be	.L945
	 mov	0, %o0
	cmp	%o1, 0
	be	.L945
	 nop
.L940:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	sll	%g2, 1, %g2
	bne	.L940
	 add	%o0, %g1, %o0
.L945:
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
	bgu	.L947
	 mov	1, %g1
	b	.L953
	 mov	0, %o0
.L950:
	cmp	%o1, %g2
	bgeu	.L949
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L969
	 nop
.L947:
	cmp	%o1, 0
	bge,a	.L950
	 sll	%o1, 1, %o1
.L948:
	mov	0, %o0
.L953:
	cmp	%o1, %g2
	bgu,a	.L970
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L970:
	cmp	%g1, 0
	bne	.L953
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L968
	 nop
.L971:
	jmp	%o7+8
	 nop
.L968:
	jmp	%o7+8
	 mov	%g2, %o0
.L949:
	cmp	%g1, 0
.L969:
	bne	.L948
	 mov	0, %o0
	cmp	%o2, 0
	be	.L971
	 nop
	b,a	.L968
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
	fbl	.L972
	 mov	-1, %g1
	nop
	fbule	.L976
	 mov	1, %g1
.L972:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L976:
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
	fbl	.L977
	 mov	-1, %g1
	nop
	fbule	.L981
	 mov	1, %g1
.L977:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L981:
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
	bl	.L995
	 mov	%o0, %g2
	be	.L990
	 mov	0, %o4
.L986:
	mov	1, %g3
	mov	0, %o0
.L989:
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
	bne	.L989
	 sll	%g2, 1, %g2
	cmp	%o4, 0
	be	.L996
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L990:
	mov	0, %o0
.L996:
	jmp	%o7+8
	 nop
.L995:
	sub	%g0, %o1, %o1
	b	.L986
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	bge	.L998
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	1, %g3
.L998:
	cmp	%o1, 0
	bge	.L1022
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	xor	%g3, 1, %g3
.L1022:
	cmp	%o0, %o1
	bgu	.L1000
	 mov	1, %g1
	b	.L1006
	 mov	0, %o0
.L1020:
	cmp	%g1, 0
	be,a	.L1002
	 mov	0, %o0
.L1000:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1020
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1002
	 mov	0, %o0
.L1006:
	cmp	%o1, %g2
	bgu,a	.L1023
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1023:
	cmp	%g1, 0
	bne	.L1006
	 srl	%o1, 1, %o1
.L1002:
	cmp	%g3, 0
	bne,a	.L1021
	 sub	%g0, %o0, %o0
.L1021:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1025
	 mov	0, %g4
	sub	%g0, %o0, %o0
	mov	1, %g4
.L1025:
	sra	%o1, 31, %g3
	mov	%o0, %g2
	xor	%g3, %o1, %o1
	sub	%o1, %g3, %o1
	cmp	%o0, %o1
	bgu	.L1026
	 mov	1, %g1
	b	.L1047
	 cmp	%o1, %g2
.L1046:
	cmp	%g1, 0
	be	.L1049
	 cmp	%g4, 0
.L1026:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1046
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1049
	 cmp	%g4, 0
.L1032:
	cmp	%o1, %g2
.L1047:
	bleu,a	.L1031
	 sub	%g2, %o1, %g2
.L1031:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1032
	 srl	%o1, 1, %o1
	mov	%g2, %o0
	cmp	%g4, 0
.L1049:
	bne,a	.L1048
	 sub	%g0, %o0, %o0
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
	blu	.L1051
	 mov	1, %g1
	b	.L1071
	 mov	0, %g2
.L1054:
	sll	%o1, 17, %o1
	mov	%g2, %g1
	srl	%o1, 16, %o1
	cmp	%o1, %o0
	bgeu	.L1053
	 sll	%g2, 16, %g3
	cmp	%g3, 0
	be	.L1073
	 nop
.L1051:
	sll	%o1, 16, %g2
	cmp	%g2, 0
	bge	.L1054
	 sll	%g1, 1, %g2
	mov	0, %g2
.L1057:
	cmp	%o1, %o0
.L1071:
	bgu,a	.L1074
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	sll	%g1, 16, %g1
.L1074:
	srl	%o1, 1, %o1
	srl	%g1, 17, %g3
	cmp	%g3, 0
	bne	.L1057
	 mov	%g3, %g1
	cmp	%o2, 0
.L1072:
	bne,a	.L1058
	 mov	%o0, %g2
.L1058:
	sll	%g2, 16, %g2
	jmp	%o7+8
	 srl	%g2, 16, %o0
.L1053:
	cmp	%g3, 0
.L1073:
	bne,a	.L1057
	 mov	0, %g2
	b	.L1072
	 cmp	%o2, 0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1076
	 mov	1, %g1
	b	.L1082
	 mov	0, %o0
.L1079:
	cmp	%o1, %g2
	bgeu	.L1078
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1098
	 nop
.L1076:
	cmp	%o1, 0
	bge,a	.L1079
	 sll	%o1, 1, %o1
.L1077:
	mov	0, %o0
.L1082:
	cmp	%o1, %g2
	bgu,a	.L1099
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1099:
	cmp	%g1, 0
	bne	.L1082
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1097
	 nop
.L1100:
	jmp	%o7+8
	 nop
.L1097:
	jmp	%o7+8
	 mov	%g2, %o0
.L1078:
	cmp	%g1, 0
.L1098:
	bne	.L1077
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1100
	 nop
	b,a	.L1097
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1102
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1102:
	be	.L1106
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1106:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1108
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1112:
	jmp	%o7+8
	 nop
.L1108:
	be	.L1112
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
	bne	.L1117
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1117:
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
	bl	.L1119
	 mov	0, %g1
	bg	.L1119
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1119
	 mov	0, %g1
	bgu	.L1119
	 mov	2, %g1
	mov	1, %g1
.L1119:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1125
	 mov	-1, %g1
	bg	.L1125
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1125
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1125:
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
	be,a	.L1132
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1132:
	be	.L1136
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1136:
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
	be	.L1145
	 mov	%o2, %g1
.L1147:
	fmuld	%f0, %f8, %f0
.L1145:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1146
	 andcc	%g1, 1, %g0
	bne	.L1147
	 fmuld	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1152:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1147
	 fmuld	%f8, %f8, %f8
	b	.L1152
	 srl	%g1, 31, %g2
.L1146:
	cmp	%o2, 0
	bge	.L1144
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f8
	fdivd	%f8, %f0, %f0
.L1144:
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
	be	.L1154
	 mov	%o1, %g1
.L1156:
	fmuls	%f0, %f8, %f0
.L1154:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1155
	 andcc	%g1, 1, %g0
	bne	.L1156
	 fmuls	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1161:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1156
	 fmuls	%f8, %f8, %f8
	b	.L1161
	 srl	%g1, 31, %g2
.L1155:
	cmp	%o1, 0
	bge	.L1153
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f8
	fdivs	%f8, %f0, %f0
.L1153:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1162
	 mov	0, %g1
	bgu	.L1162
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1162
	 mov	0, %g1
	bgu	.L1162
	 mov	2, %g1
	mov	1, %g1
.L1162:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1168
	 mov	-1, %g1
	bgu	.L1168
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1168
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1168:
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
