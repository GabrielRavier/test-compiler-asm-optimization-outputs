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
	cmp	%o2, %g1
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
	mov	%o0, %g2
	cmp	%o3, 0
	be	.L14
	 and	%o2, 0xff, %o2
.L13:
	ldub	[%o1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	be	.L19
	 cmp	%o3, 0
	add	%o1, 1, %o1
	addcc	%o3, -1, %o3
	bne	.L13
	 add	%g2, 1, %g2
.L14:
	cmp	%o3, 0
.L19:
	be	.L20
	 mov	0, %o0
	add	%g2, 1, %o0
.L20:
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	cmp	%o2, 0
	be	.L23
	 and	%o1, 0xff, %o1
.L22:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L28
	 cmp	%g0, %o2
	addcc	%o2, -1, %o2
	bne	.L22
	 add	%o0, 1, %o0
.L23:
	cmp	%g0, %o2
.L28:
	subx	%g0, 0, %g1
	jmp	%o7+8
	 and	%o0, %g1, %o0
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	cmp	%o2, 0
	be	.L31
	 mov	%o0, %g1
.L30:
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	bne	.L36
	 cmp	%o2, 0
	add	%g1, 1, %g1
	addcc	%o2, -1, %o2
	bne	.L30
	 add	%o1, 1, %o1
.L31:
	cmp	%o2, 0
.L36:
	be	.L37
	 mov	0, %o0
	ldub	[%g1], %o0
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L37:
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
	be	.L40
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L40:
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
.L42:
	cmp	%o2, %g2
	be	.L47
	 mov	0, %o0
	mov	%o2, %o0
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L42
	 add	%o2, -1, %o2
.L47:
	jmp	%o7+8
	 nop
.L41:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	cmp	%o2, 0
	be	.L53
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L52:
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L52
	 stb	%o1, [%g1]
.L53:
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
.L58:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L59
	 add	%o1, 1, %o1
	b	.L58
	 add	%o0, 1, %o0
.L59:
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
	be	.L68
	 ldub	[%o0], %g1
.L61:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	be	.L67
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g2
	cmp	%g2, 0
	bne	.L61
	 ldub	[%o0], %g1
.L68:
	jmp	%o7+8
	 nop
.L67:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L71:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L73
	 cmp	%g1, 0
	bne	.L71
	 add	%o0, 1, %o0
	mov	0, %o0
.L73:
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
	be	.L75
	 ldub	[%o0], %g4
	sll	%g3, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne,a	.L79
	 and	%g4, 0xff, %o0
	mov	1, %g1
	ldub	[%o0+%g1], %g4
.L80:
	ldub	[%o1+%g1], %g3
	add	%g1, 1, %g1
	sll	%g4, 24, %g2
	cmp	%g2, 0
	be	.L75
	 sra	%g2, 24, %o5
	sll	%g3, 24, %g2
	sra	%g2, 24, %g2
	cmp	%o5, %g2
	be,a	.L80
	 ldub	[%o0+%g1], %g4
.L75:
	and	%g4, 0xff, %o0
.L79:
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
	be	.L82
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L86:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L86
	 add	%g1, 1, %g1
.L82:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L87
	 mov	0, %g3
	ldub	[%o0], %g3
	andcc	%g3, 0xff, %g0
	be	.L94
	 add	%o2, -1, %o2
	mov	%o1, %g2
	add	%o1, %o2, %o1
.L90:
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g3, 0xff, %o5
	xor	%g1, %o5, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g4, %g1, %g0
	be	.L89
	 cmp	%g2, %o1
	be	.L95
	 and	%g3, 0xff, %g3
	add	%o0, 1, %o0
	ldub	[%o0], %g3
	andcc	%g3, 0xff, %g0
	bne	.L90
	 add	%g2, 1, %g2
.L89:
	and	%g3, 0xff, %g3
.L95:
	ldub	[%g2], %g1
	sub	%g3, %g1, %g3
.L87:
	jmp	%o7+8
	 mov	%g3, %o0
.L94:
	b	.L89
	 mov	%o1, %g2
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L100
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L98:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L98
	 add	%o1, 2, %o1
.L100:
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
	bleu	.L125
	 mov	%o0, %g1
	cmp	%o0, 31
	bleu	.L125
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%o0, %g2, %g2
	cmp	%g2, 1
	bleu	.L127
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L125:
	mov	1, %o0
.L127:
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
	bleu	.L137
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g2
	add	%o0, %g2, %g2
	sethi	%hi(46080), %g3
	or	%g3, 981, %g3
	cmp	%g3, %g2
	bgeu	.L134
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L134
	 sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L138
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L138
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L137:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L138
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L134:
	mov	1, %o0
.L138:
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
	bleu	.L143
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L143:
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
	fbu	.L145
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L149
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L152
	 nop
	fsubd	%f0, %f8, %f0
.L145:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L149:
	b	.L145
	 fmovs	%f9, %f1
.L152:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L145
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
	fbu	.L153
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L161
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L160
	 nop
	fsubs	%f0, %f8, %f0
.L153:
.L161:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L160:
	sethi	%hi(.LC2), %g1
	b	.L153
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
	fbu	.L168
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L169
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L164
	 fcmped	%f8, %f10
	fmovs	%f10, %f0
	cmp	%g1, 0
	bne	.L162
	 fmovs	%f11, %f1
.L169:
	fmovs	%f8, %f0
	b	.L162
	 fmovs	%f9, %f1
.L164:
	nop
	fbl	.L167
	 mov	1, %g1
	mov	0, %g1
.L167:
	fmovs	%f8, %f0
	andcc	%g1, 0xff, %g0
	be	.L162
	 fmovs	%f9, %f1
.L168:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L162:
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
	fbu	.L177
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L178
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L173
	 fcmpes	%f8, %f9
	cmp	%g1, 0
	bne	.L171
	 fmovs	%f9, %f0
.L178:
	b	.L171
	 fmovs	%f8, %f0
.L173:
	nop
	fbl	.L176
	 mov	1, %g1
	mov	0, %g1
.L176:
	andcc	%g1, 0xff, %g0
	be	.L171
	 fmovs	%f8, %f0
.L177:
	fmovs	%f9, %f0
.L171:
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
	fbu	.L186
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L187
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L182
	 fcmped	%f8, %f10
	fmovs	%f10, %f0
	cmp	%g1, 0
	bne	.L180
	 fmovs	%f11, %f1
.L187:
	fmovs	%f8, %f0
	b	.L180
	 fmovs	%f9, %f1
.L182:
	nop
	fbl	.L185
	 mov	1, %g1
	mov	0, %g1
.L185:
	fmovs	%f8, %f0
	andcc	%g1, 0xff, %g0
	be	.L180
	 fmovs	%f9, %f1
.L186:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L180:
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
	fbu	.L195
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L196
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L191
	 fcmped	%f8, %f10
	fmovs	%f8, %f0
	cmp	%g1, 0
	bne	.L189
	 fmovs	%f9, %f1
.L195:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L189:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L191:
	nop
	fbl	.L194
	 mov	1, %g1
	mov	0, %g1
.L194:
	fmovs	%f10, %f0
	andcc	%g1, 0xff, %g0
	be	.L189
	 fmovs	%f11, %f1
.L196:
	fmovs	%f8, %f0
	b	.L189
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
	fbu	.L204
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L205
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L200
	 fcmpes	%f8, %f9
	cmp	%g1, 0
	bne	.L198
	 fmovs	%f8, %f0
.L204:
	fmovs	%f9, %f0
.L198:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L200:
	nop
	fbl	.L203
	 mov	1, %g1
	mov	0, %g1
.L203:
	andcc	%g1, 0xff, %g0
	be	.L198
	 fmovs	%f9, %f0
.L205:
	b	.L198
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
	fbu	.L213
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L214
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a	.L209
	 fcmped	%f8, %f10
	fmovs	%f8, %f0
	cmp	%g1, 0
	bne	.L207
	 fmovs	%f9, %f1
.L213:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
.L207:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L209:
	nop
	fbl	.L212
	 mov	1, %g1
	mov	0, %g1
.L212:
	fmovs	%f10, %f0
	andcc	%g1, 0xff, %g0
	be	.L207
	 fmovs	%f11, %f1
.L214:
	fmovs	%f8, %f0
	b	.L207
	 fmovs	%f9, %f1
	.size	fminl, .-fminl
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	mov	%o0, %g1
	sethi	%hi(s.0), %g2
	cmp	%o0, 0
	be	.L217
	 or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L218:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L218
	 add	%g2, 1, %g2
.L217:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
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
	be,a	.L226
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L228
	 st	%o0, [%g1+4]
.L228:
	jmp	%o7+8
	 nop
.L226:
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
	be,a	.L232
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L232:
	cmp	%g1, 0
	be	.L233
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L233:
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
	be	.L235
	 mov	%i0, %l2
	mov	%i1, %i5
	mov	0, %l0
.L237:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be	.L239
	 nop
	add	%l0, 1, %l0
	cmp	%l1, %l0
	bne	.L237
	 add	%i5, %i3, %i5
.L235:
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
.L239:
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
	be	.L241
	 mov	%i0, %l0
	mov	0, %i5
.L243:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be	.L245
	 nop
	add	%i5, 1, %i5
	cmp	%i2, %i5
	bne	.L243
	 add	%i1, %i3, %i1
.L241:
	mov	0, %i0
.L245:
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
	b	.L259
	 ldsb	[%i0], %i5
.L249:
	ldsb	[%i0], %i5
.L259:
	call	isspace, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	bne,a	.L249
	 add	%i0, 1, %i0
	cmp	%i5, 43
	be	.L250
	 mov	0, %g3
	cmp	%i5, 45
	bne,a	.L260
	 ldsb	[%i0], %g2
	mov	1, %g3
.L250:
	b	.L251
	 add	%i0, 1, %i0
.L252:
	sll	%o0, 2, %g2
	add	%g2, %o0, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g2, %g1, %o0
.L251:
	ldsb	[%i0], %g2
.L260:
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L252
	 ldub	[%i0], %g1
	cmp	%g3, 0
	be,a	.L247
	 sub	%g0, %o0, %o0
.L247:
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
	b	.L273
	 ldsb	[%i0], %i5
.L263:
	ldsb	[%i0], %i5
.L273:
	call	isspace, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	bne,a	.L263
	 add	%i0, 1, %i0
	cmp	%i5, 43
	be	.L264
	 mov	0, %g3
	cmp	%i5, 45
	bne,a	.L274
	 ldsb	[%i0], %g2
	mov	1, %g3
.L264:
	b	.L265
	 add	%i0, 1, %i0
.L266:
	sll	%o0, 2, %g2
	add	%g2, %o0, %g2
	sll	%g2, 1, %g2
	add	%i0, 1, %i0
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g2, %g1, %o0
.L265:
	ldsb	[%i0], %g2
.L274:
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu	.L266
	 ldub	[%i0], %g1
	cmp	%g3, 0
	be,a	.L261
	 sub	%g0, %o0, %o0
.L261:
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	%i0, %i5
.L277:
	ldsb	[%i5], %i4
	call	isspace, 0
	 mov	%i4, %o0
	cmp	%o0, 0
	bne,a	.L277
	 add	%i5, 1, %i5
	cmp	%i4, 43
	be	.L278
	 cmp	%i4, 45
	bne,a	.L286
	 ldub	[%i5], %g1
	mov	1, %o0
.L278:
	add	%i5, 1, %i5
	ldub	[%i5], %g1
.L286:
	ldsb	[%i5], %g2
	add	%g2, -48, %g2
	mov	0, %i0
	cmp	%g2, 9
	bgu	.L281
	 mov	0, %i1
.L280:
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
	bleu	.L280
	 ldub	[%i5], %g1
.L281:
	cmp	%o0, 0
	bne	.L287
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L287:
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
.L293:
.L295:
	cmp	%i2, 0
	be	.L289
	 srl	%i2, 1, %i5
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	add	%i1, %o0, %i0
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bl,a	.L293
	 mov	%i5, %i2
	ble	.L296
	 nop
	add	%i0, %i3, %i1
	add	%i2, -1, %i2
	b	.L295
	 sub	%i2, %i5, %i2
.L289:
	mov	0, %i0
.L296:
	jmp	%i7+8
	 restore
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	mov	%i0, %l1
	cmp	%i2, 0
	bne	.L301
	 mov	%i2, %l0
	mov	0, %i0
.L303:
	jmp	%i7+8
	 restore
.L300:
	sra	%l0, 1, %l0
.L304:
	cmp	%l0, 0
	be	.L303
	 mov	0, %i0
.L301:
	mov	%i3, %o1
	call	.umul, 0
	 sra	%l0, 1, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	cmp	%o0, 0
	be	.L303
	 nop
	ble,a	.L304
	 sra	%l0, 1, %l0
	add	%i0, %i3, %i1
	b	.L300
	 add	%l0, -1, %l0
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
	be	.L319
	 cmp	%g0, %g1
	cmp	%g1, 0
.L320:
	be	.L319
	 cmp	%g0, %g1
	add	%o0, 4, %o0
	ld	[%o0], %g1
	cmp	%g1, %o1
	bne	.L320
	 cmp	%g1, 0
	cmp	%g0, %g1
.L319:
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
	be	.L322
	 cmp	%g3, 0
	be	.L329
	 cmp	%g2, %g3
	mov	4, %g1
	ld	[%o0+%g1], %g2
.L330:
	ld	[%o1+%g1], %g3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	xor	%g2, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	be	.L322
	 add	%g1, 4, %g1
	cmp	%g3, 0
	bne,a	.L330
	 ld	[%o0+%g1], %g2
.L322:
	cmp	%g2, %g3
.L329:
	bl	.L331
	 mov	-1, %o0
	bg	.L331
	 mov	1, %o0
	mov	0, %o0
.L331:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L333:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L333
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
	be	.L336
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L340:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L340
	 add	%g1, 4, %g1
.L336:
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
	be	.L343
	 mov	%o0, %g2
.L342:
	ld	[%g2], %g1
	ld	[%o1], %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g4, %g1, %g0
	be	.L343
	 cmp	%g3, 0
	be	.L351
	 cmp	%o2, 0
	add	%g2, 4, %g2
	addcc	%o2, -1, %o2
	bne	.L342
	 add	%o1, 4, %o1
.L343:
	cmp	%o2, 0
.L351:
	be	.L352
	 mov	0, %o0
	ld	[%g2], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L352
	 mov	-1, %o0
	bg	.L352
	 mov	1, %o0
	mov	0, %o0
.L352:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	be	.L360
	 cmp	%g0, %o2
.L354:
	ld	[%o0], %g1
	cmp	%g1, %o1
	be	.L360
	 cmp	%g0, %o2
	addcc	%o2, -1, %o2
	bne	.L354
	 add	%o0, 4, %o0
	cmp	%g0, %o2
.L360:
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
	be	.L363
	 mov	%o0, %g1
.L362:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L370
	 cmp	%o2, 0
	add	%g1, 4, %g1
	addcc	%o2, -1, %o2
	bne	.L362
	 add	%o1, 4, %o1
.L363:
	cmp	%o2, 0
.L370:
	be	.L371
	 mov	0, %o0
	ld	[%g1], %g2
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L371
	 mov	-1, %o0
	bg	.L371
	 mov	1, %o0
	mov	0, %o0
.L371:
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
	be	.L374
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L374:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L386
	 nop
	sub	%o0, %o1, %g2
	sll	%o2, 2, %g3
	cmp	%g2, %g3
	blu	.L377
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L387
	 mov	0, %g2
.L378:
	ld	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L378
	 add	%g2, 4, %g2
.L387:
	jmp	%o7+8
	 nop
.L377:
	cmp	%o2, 0
	be	.L386
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L385:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L385
	 ld	[%o1+%g1], %g2
.L386:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L392
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L390:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L390
	 st	%o1, [%g2-4]
.L392:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L394
	 nop
	cmp	%o2, 0
	be	.L402
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L400:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L400
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L394:
	be	.L402
	 nop
	cmp	%o2, 0
	be	.L402
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L401:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L401
	 ldub	[%o0+%g1], %g2
.L402:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be,a	.L405
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g3
.L406:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L407
	 and	%o2, 63, %g2
	srl	%o0, %g2, %o1
	mov	0, %o0
.L408:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g3, %o1
.L405:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L406
	 sll	%o1, %o2, %g3
.L407:
	sll	%o0, 1, %g4
	xnor	%g0, %g2, %o5
	sll	%g4, %o5, %g4
	srl	%o1, %g2, %o1
	or	%g4, %o1, %o1
	b	.L408
	 srl	%o0, %g2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be,a	.L410
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g3
.L411:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L412
	 and	%o2, 63, %g2
	sll	%o1, %g2, %o0
	mov	0, %o1
.L413:
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L410:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L411
	 srl	%o0, %o2, %g3
.L412:
	srl	%o1, 1, %g4
	xnor	%g0, %g2, %o5
	srl	%g4, %o5, %g4
	sll	%o0, %g2, %o0
	or	%g4, %o0, %o0
	b	.L413
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
	sll	%o1, 24, %g4
	srl	%o0, 24, %g3
	srl	%o0, 8, %g1
	sethi	%hi(64512), %o5
	or	%o5, 768, %o5
	and	%g1, %o5, %g1
	or	%g3, %g1, %g3
	sll	%o0, 8, %g2
	srl	%o1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o3
	and	%g1, %o3, %g1
	or	%g3, %g1, %g3
	sll	%o0, 24, %o0
	srl	%o1, 8, %g1
	or	%o0, %g1, %g1
	sethi	%hi(-16777216), %g2
	and	%g1, %g2, %g2
	sll	%o1, 8, %o4
	srl	%o1, 24, %g1
	or	%g4, %g1, %g4
	srl	%o1, 8, %g1
	or	%g1, %o0, %g1
	and	%g1, %o5, %g1
	or	%g4, %g1, %g4
	and	%o4, %o3, %o0
	or	%g4, %o0, %o0
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
.L431:
	andcc	%g2, 1, %g0
	bne	.L430
	 add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L431
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L430:
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
	be	.L437
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L437
	 nop
	mov	1, %o0
.L434:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L434
	 add	%o0, 1, %o0
.L437:
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
	fbl	.L438
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L438
	 mov	0, %o0
.L438:
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
	fbl	.L442
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L442
	 mov	0, %o0
.L442:
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
	fbl	.L446
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L446
	 mov	0, %o0
.L446:
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
	fbu	.L452
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L452
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L455
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L455
	 ld	[%g1+%lo(.LC17)], %f8
.L454:
	srl	%o1, 31, %g1
.L457:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L452
	 nop
	fmuls	%f8, %f8, %f8
.L455:
	andcc	%o1, 1, %g0
	bne,a	.L454
	 fmuls	%f0, %f8, %f0
	b	.L457
	 srl	%o1, 31, %g1
.L452:
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
	fbu	.L459
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L459
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L462
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L462
	 ldd	[%g1+%lo(.LC21)], %f8
.L461:
	srl	%o2, 31, %g1
.L464:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L459
	 nop
	fmuld	%f8, %f8, %f8
.L462:
	andcc	%o2, 1, %g0
	bne,a	.L461
	 fmuld	%f0, %f8, %f0
	b	.L464
	 srl	%o2, 31, %g1
.L459:
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
	fbu	.L466
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L466
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L469
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L469
	 ldd	[%g1+%lo(.LC25)], %f8
.L468:
	srl	%o2, 31, %g1
.L471:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L466
	 nop
	fmuld	%f8, %f8, %f8
.L469:
	andcc	%o2, 1, %g0
	bne,a	.L468
	 fmuld	%f0, %f8, %f0
	b	.L471
	 srl	%o2, 31, %g1
.L466:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L477
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L476:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L476
	 ldub	[%o0+%g1], %g2
.L477:
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
	be	.L485
	 add	%i0, %o0, %o0
.L479:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L485
	 cmp	%i2, 0
	add	%i1, 1, %i1
	addcc	%i2, -1, %i2
	bne	.L479
	 add	%o0, 1, %o0
	cmp	%i2, 0
.L485:
	be,a	.L484
	 stb	%g0, [%o0]
.L484:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L486
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L493:
	cmp	%g2, 0
	bne,a	.L489
	 add	%g1, 1, %g1
.L486:
	jmp	%o7+8
	 mov	%g1, %o0
.L489:
	cmp	%o1, %g1
	bne,a	.L493
	 ldsb	[%o0+%g1], %g2
	b,a	.L486
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L502:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L499
	 ldub	[%o0], %g3
	mov	%o1, %g1
	sll	%g3, 24, %g3
	sra	%g3, 24, %g3
.L498:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	be	.L503
	 cmp	%g2, %g3
	bne	.L498
	 add	%g1, 1, %g1
.L496:
	jmp	%o7+8
	 nop
.L503:
	b	.L502
	 add	%o0, 1, %o0
.L499:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	b	.L506
	 mov	0, %o0
.L505:
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be	.L510
	 add	%g1, 1, %g1
.L506:
	ldsb	[%g1], %g3
	cmp	%g3, %o1
	bne	.L505
	 ldub	[%g1], %g2
	b	.L505
	 mov	%g1, %o0
.L510:
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
	be	.L516
	 mov	%o0, %i4
	ldsb	[%i1], %i3
.L513:
	mov	%i3, %o1
	call	strchr, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	be	.L516
	 mov	%o0, %i0
	mov	%i4, %o2
	call	strncmp, 0
	 mov	%i1, %o1
	cmp	%o0, 0
	be	.L516
	 nop
	b	.L513
	 add	%i0, 1, %i5
.L516:
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
	fbl,a	.L526
	 std	%o2, [%sp+72]
.L518:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L521
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L527
	 fnegs	%f0, %f0
.L521:
.L527:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L526:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L518
	 nop
	b	.L521
	 fnegs	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -96, %sp
	cmp	%i3, 0
	be	.L538
	 mov	%i0, %i5
	cmp	%i1, %i3
	blu	.L534
	 sub	%i1, %i3, %i1
	add	%i0, %i1, %i1
	cmp	%i0, %i1
	bgu	.L534
	 add	%i3, -1, %i3
	ldsb	[%i2], %i4
	b	.L531
	 add	%i2, 1, %i2
.L530:
	cmp	%i5, %i1
.L537:
	bgu	.L538
	 mov	0, %i0
.L531:
	ldub	[%i5], %g1
	mov	%i5, %i0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %i4
	bne	.L530
	 add	%i5, 1, %i5
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	bne,a	.L537
	 cmp	%i5, %i1
.L538:
	jmp	%i7+8
	 restore
.L534:
	mov	0, %i0
	jmp	%i7+8
	 restore
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
	fbl,a	.L560
	 fnegs	%f0, %f0
	mov	0, %g2
.L541:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L559
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L545:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L545
	 add	%g1, 1, %g1
.L546:
	cmp	%g2, 0
.L562:
	be	.L550
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L550:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L560:
	b	.L541
	 mov	1, %g2
.L559:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L547
	 mov	1, %g1
	mov	0, %g1
.L547:
	andcc	%g1, 0xff, %g0
	be	.L552
	 sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L548
	 mov	1, %g1
	mov	0, %g1
.L548:
	andcc	%g1, 0xff, %g0
	bne,a	.L561
	 mov	0, %g1
.L552:
	b	.L546
	 mov	0, %g1
.L561:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L549:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L549
	 add	%g1, -1, %g1
	b	.L562
	 cmp	%g2, 0
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	mov	%i0, %g2
	mov	%i1, %g3
	orcc	%i1, %i0, %g0
	mov	0, %i0
	be	.L571
	 mov	0, %i1
	mov	0, %i4
.L570:
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
	bne	.L570
	 mov	%g1, %g3
.L571:
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
	bgeu	.L574
	 mov	1, %g1
	cmp	%o1, 0
.L590:
	bl	.L589
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L574
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L590
	 cmp	%o1, 0
.L574:
	cmp	%g1, 0
.L589:
	bne	.L576
	 mov	0, %o0
.L577:
	cmp	%o2, 0
	bne	.L588
	 nop
.L572:
	jmp	%o7+8
	 nop
.L579:
	srl	%g1, 1, %g1
.L591:
	cmp	%g1, 0
	be	.L577
	 srl	%o1, 1, %o1
.L576:
	cmp	%g2, %o1
	blu,a	.L591
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L579
	 or	%o0, %g1, %o0
.L588:
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
	be	.L595
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L595:
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
	be	.L602
	 xor	%i1, %g1, %o1
.L600:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L602:
	cmp	%i1, %i0
	bne	.L600
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
	be	.L609
	 mov	0, %o0
.L605:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L605
	 sll	%o1, 1, %o1
.L609:
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
	blu	.L611
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L622
	 cmp	%g3, 0
	cmp	%o2, 0
	be	.L627
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L623:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L623
	 ldub	[%o1+%g1], %g2
.L627:
	jmp	%o7+8
	 nop
.L611:
	cmp	%g3, 0
.L622:
	be	.L624
	 cmp	%o2, %g1
	sll	%g3, 3, %g3
	mov	0, %g2
.L615:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g3, %g2
	bne	.L615
	 std	%o4, [%g4]
	cmp	%o2, %g1
.L624:
	bleu	.L626
	 nop
	ldub	[%o1+%g1], %g2
.L625:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L625
	 ldub	[%o1+%g1], %g2
.L626:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L629
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bgu	.L638
	 cmp	%g3, 0
	cmp	%o2, 0
	be	.L643
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L639:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L639
	 ldub	[%o1+%g1], %g2
.L643:
	jmp	%o7+8
	 nop
.L642:
	jmp	%o7+8
	 nop
.L629:
	cmp	%g3, 0
.L638:
	be	.L640
	 andcc	%o2, 1, %g0
	sll	%g3, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L641:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L641
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L640:
	be	.L642
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
	blu	.L645
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu	.L656
	 cmp	%g4, 0
	cmp	%o2, 0
	be	.L662
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L657:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L657
	 ldub	[%o1+%g1], %g2
.L662:
	jmp	%o7+8
	 nop
.L645:
	cmp	%g4, 0
.L656:
	be	.L658
	 cmp	%o2, %g1
	sll	%g4, 2, %g4
	mov	0, %g2
	ld	[%o1+%g2], %g3
.L659:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a	.L659
	 ld	[%o1+%g2], %g3
	cmp	%o2, %g1
.L658:
	bleu	.L661
	 nop
	ldub	[%o1+%g1], %g2
.L660:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L660
	 ldub	[%o1+%g1], %g2
.L661:
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
	bl	.L666
	 fitod	%f8, %f0
.L665:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L666:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L665
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
	bl	.L669
	 fitod	%f8, %f0
.L668:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L669:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L668
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
.L677:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L673
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L677
	 sub	%g3, %g1, %g2
.L673:
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
.L682:
	andcc	%g2, 1, %g0
	bne	.L678
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L682
	 sra	%o0, %g1, %g2
.L678:
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
	fbge,a	.L689
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L683:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L689:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L683
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L691:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L691
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
.L694:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L694
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
	be	.L702
	 mov	0, %o0
.L698:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L698
	 sll	%o1, 1, %o1
.L702:
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
	be	.L710
	 mov	0, %o0
	cmp	%o1, 0
	be	.L709
	 nop
.L705:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	add	%o0, %g1, %o0
	srl	%o1, 1, %o1
	cmp	%o1, 0
	bne	.L705
	 sll	%g2, 1, %g2
.L710:
	jmp	%o7+8
	 nop
.L709:
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
	bgeu	.L713
	 mov	1, %g1
	cmp	%o1, 0
.L729:
	bl	.L728
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L713
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L729
	 cmp	%o1, 0
.L713:
	cmp	%g1, 0
.L728:
	bne	.L715
	 mov	0, %o0
.L716:
	cmp	%o2, 0
	bne	.L727
	 nop
.L711:
	jmp	%o7+8
	 nop
.L718:
	srl	%g1, 1, %g1
.L730:
	cmp	%g1, 0
	be	.L716
	 srl	%o1, 1, %o1
.L715:
	cmp	%g2, %o1
	blu,a	.L730
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L718
	 or	%o0, %g1, %o0
.L727:
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
	fbl	.L731
	 mov	-1, %g1
	nop
	fbg	.L731
	 mov	1, %g1
	mov	0, %g1
.L731:
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
	fbl	.L735
	 mov	-1, %g1
	nop
	fbg	.L735
	 mov	1, %g1
	mov	0, %g1
.L735:
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
	bl	.L750
	 mov	0, %o5
.L742:
	cmp	%o1, 0
	be	.L743
	 mov	0, %o0
	mov	1, %g3
.L745:
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
	bne	.L745
	 add	%g3, 1, %g3
.L743:
	cmp	%o5, 0
	bne,a	.L751
	 sub	%g0, %o0, %o0
.L751:
	jmp	%o7+8
	 nop
.L750:
	sub	%g0, %o1, %o1
	b	.L742
	 mov	1, %o5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L757
	 mov	0, %i5
.L753:
	cmp	%i1, 0
	bl,a	.L758
	 sub	%g0, %i1, %i1
.L754:
	mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L759
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L759:
	jmp	%i7+8
	 restore
.L757:
	sub	%g0, %i0, %i0
	b	.L753
	 mov	1, %i5
.L758:
	b	.L754
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L764
	 mov	0, %i5
.L761:
	sra	%i1, 31, %o1
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L765
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L765:
	jmp	%i7+8
	 restore
.L764:
	sub	%g0, %i0, %i0
	b	.L761
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu	.L768
	 mov	1, %g1
	sll	%o1, 16, %g2
.L783:
	cmp	%g2, 0
	bl	.L768
	 sll	%g1, 1, %g2
	sll	%o1, 17, %o1
	srl	%o1, 16, %o1
	cmp	%o1, %o0
	bgeu	.L768
	 mov	%g2, %g1
	sll	%g2, 16, %g2
	cmp	%g2, 0
	bne	.L783
	 sll	%o1, 16, %g2
.L768:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L770
	 mov	0, %g3
	mov	%g1, %g3
.L771:
	cmp	%o2, 0
	bne,a	.L774
	 mov	%o0, %g3
.L774:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L773:
	sll	%g1, 16, %g1
.L784:
	srl	%g1, 17, %g2
	mov	%g2, %g1
	cmp	%g2, 0
	be	.L771
	 srl	%o1, 1, %o1
.L770:
	cmp	%o0, %o1
	blu,a	.L784
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L773
	 or	%g1, %g3, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L787
	 mov	1, %g1
	cmp	%o1, 0
.L803:
	bl	.L802
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	bgeu	.L787
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L803
	 cmp	%o1, 0
.L787:
	cmp	%g1, 0
.L802:
	bne	.L789
	 mov	0, %o0
.L790:
	cmp	%o2, 0
	bne	.L801
	 nop
.L785:
	jmp	%o7+8
	 nop
.L792:
	srl	%g1, 1, %g1
.L804:
	cmp	%g1, 0
	be	.L790
	 srl	%o1, 1, %o1
.L789:
	cmp	%g2, %o1
	blu,a	.L804
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L792
	 or	%o0, %g1, %o0
.L801:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L806
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	mov	0, %g1
.L807:
	mov	%g1, %o1
.L810:
	jmp	%o7+8
	 nop
.L806:
	be	.L810
	 nop
	sll	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srl	%o1, %g2, %o1
	sll	%o0, %o2, %o0
	b	.L807
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L812
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L813:
	mov	%g1, %o0
.L816:
	jmp	%o7+8
	 nop
.L812:
	be	.L816
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L813
	 or	%o0, %o1, %o1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srl	%o0, 24, %g3
	sll	%o1, 24, %g4
	srl	%o0, 8, %g1
	sethi	%hi(64512), %o5
	or	%o5, 768, %o5
	and	%g1, %o5, %g1
	or	%g3, %g1, %g3
	sll	%o0, 8, %g2
	srl	%o1, 24, %g1
	or	%g2, %g1, %g1
	sethi	%hi(16711680), %o3
	and	%g1, %o3, %g1
	or	%g3, %g1, %g3
	sll	%o0, 24, %o0
	srl	%o1, 8, %g1
	or	%o0, %g1, %g1
	sethi	%hi(-16777216), %g2
	and	%g1, %g2, %g2
	sll	%o1, 8, %o4
	srl	%o1, 24, %g1
	or	%g4, %g1, %g4
	srl	%o1, 8, %g1
	or	%g1, %o0, %g1
	and	%g1, %o5, %g1
	or	%g4, %g1, %g4
	and	%o4, %o3, %o0
	or	%g4, %o0, %o0
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
	bne	.L821
	 mov	0, %o0
	sub	%g4, %g1, %o0
.L821:
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
	bl	.L822
	 mov	0, %g1
	bg	.L822
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L822
	 mov	0, %g1
	bgu	.L822
	 mov	2, %g1
	mov	1, %g1
.L822:
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
	be	.L831
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %g1
.L832:
	mov	%g1, %o0
.L835:
	jmp	%o7+8
	 nop
.L831:
	be	.L835
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L832
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
	mov	%i3, %o1
	call	__muldsi3, 0
	 mov	%i1, %o0
	mov	%o0, %i4
	mov	%o1, %i1
	mov	%i0, %o1
	call	.umul, 0
	 mov	%i3, %o0
	mov	%o0, %i5
	mov	%i2, %o1
	call	.umul, 0
	 mov	%l0, %o0
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
	b	.L846
	 ldd	[%g2+%lo(.LC42)], %f0
.L844:
	srl	%g1, 31, %g2
.L849:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L845
	 cmp	%o2, 0
	fmuld	%f8, %f8, %f8
.L846:
	andcc	%g1, 1, %g0
	bne,a	.L844
	 fmuld	%f0, %f8, %f0
	b	.L849
	 srl	%g1, 31, %g2
.L845:
	bl	.L848
	 sethi	%hi(.LC42), %g1
.L843:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L848:
	ldd	[%g1+%lo(.LC42)], %f8
	b	.L843
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
	b	.L853
	 ld	[%g2+%lo(.LC44)], %f0
.L851:
	srl	%g1, 31, %g2
.L856:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L852
	 cmp	%o1, 0
	fmuls	%f8, %f8, %f8
.L853:
	andcc	%g1, 1, %g0
	bne,a	.L851
	 fmuls	%f0, %f8, %f0
	b	.L856
	 srl	%g1, 31, %g2
.L852:
	bl	.L855
	 sethi	%hi(.LC44), %g1
.L850:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L855:
	ld	[%g1+%lo(.LC44)], %f8
	b	.L850
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L857
	 mov	0, %g1
	bgu	.L857
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L857
	 mov	0, %g1
	bgu	.L857
	 mov	2, %g1
	mov	1, %g1
.L857:
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
