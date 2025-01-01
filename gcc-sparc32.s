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
	mov	%o0, %g2
	cmp	%o3, 0
	be	.L14
	 and	%o2, 0xff, %o2
.L13:
	ldub	[%o1], %g1
	stb	%g1, [%g2]
	and	%g1, 0xff, %g1
	cmp	%o2, %g1
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
	cmp	%o1, %g1
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
	cmp	%o2, 0
	be	.L43
	 mov	0, %g1
	ldub	[%o1+%g1], %g2
.L42:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L42
	 ldub	[%o1+%g1], %g2
.L43:
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
.L45:
	cmp	%o2, -1
	be	.L49
	 nop
	ldub	[%o0+%o2], %g1
	cmp	%o1, %g1
	be	.L50
	 add	%o2, -1, %g2
	b	.L45
	 mov	%g2, %o2
.L50:
	jmp	%o7+8
	 add	%o0, %o2, %o0
.L49:
	jmp	%o7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	cmp	%o2, 0
	be	.L56
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L55:
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L55
	 stb	%o1, [%g1]
.L56:
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
	be	.L62
	 add	%o1, 1, %o1
.L61:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L61
	 add	%o1, 1, %o1
.L62:
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
	be	.L72
	 and	%o1, 0xff, %o1
	ldub	[%o0], %g1
.L70:
	cmp	%o1, %g1
	be	.L71
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L70
	 ldub	[%o0], %g1
.L72:
	jmp	%o7+8
	 nop
.L71:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	ldsb	[%o0], %g1
.L77:
	cmp	%o1, %g1
	be	.L78
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0-1], %g1
	cmp	%g1, 0
	bne,a	.L77
	 ldsb	[%o0], %g1
	mov	0, %o0
.L78:
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
	bne,a	.L84
	 ldub	[%o0], %o0
	ldsb	[%o0], %g1
.L85:
	cmp	%g1, 0
	be,a	.L84
	 ldub	[%o0], %o0
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	ldsb	[%o0], %g2
	ldsb	[%o1], %g1
	cmp	%g2, %g1
	be,a	.L85
	 ldsb	[%o0], %g1
	ldub	[%o0], %o0
.L84:
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
	be	.L91
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L92:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L92
	 add	%g1, 1, %g1
.L87:
.L91:
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
	be	.L102
	 mov	0, %o0
	ldub	[%g2], %g3
	mov	%g2, %g1
	add	%o2, -1, %o2
	cmp	%g3, 0
	be	.L96
	 add	%o2, %g2, %o2
.L95:
	sub	%o2, %g1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	ldub	[%o1], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,a	.L101
	 ldub	[%g1], %o0
	ldub	[%g1], %g3
	ldub	[%o1], %g2
	cmp	%g3, %g2
	bne,a	.L101
	 ldub	[%g1], %o0
	add	%g1, 1, %g1
	ldub	[%g1], %g2
	cmp	%g2, 0
	bne	.L95
	 add	%o1, 1, %o1
.L96:
	ldub	[%g1], %o0
.L101:
	ldub	[%o1], %g1
	sub	%o0, %g1, %o0
.L102:
	jmp	%o7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L107
	 add	%o2, -2, %g1
	and	%g1, -2, %g1
	add	%g1, 2, %g1
	add	%o0, %g1, %g1
.L105:
	ldub	[%o0+1], %g2
	stb	%g2, [%o1]
	ldub	[%o0], %g2
	stb	%g2, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %g1
	bne	.L105
	 add	%o1, 2, %o1
.L107:
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
	bne	.L134
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L134
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L134:
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
	bleu	.L144
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
	bne	.L145
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	add	%g1, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L145
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%g1, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu	.L145
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L145:
	jmp	%o7+8
	 nop
.L144:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L139
	 mov	1, %o0
	mov	0, %o0
.L139:
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
	bleu	.L150
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L150:
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
	fbu	.L152
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L156
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L159
	 nop
	fsubd	%f0, %f8, %f0
.L152:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L156:
	b	.L152
	 fmovs	%f9, %f1
.L159:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	b	.L152
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
	fbu	.L160
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L168
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L167
	 nop
	fsubs	%f0, %f8, %f0
.L160:
.L168:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L167:
	sethi	%hi(.LC2), %g1
	b	.L160
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
	fbu	.L175
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L169
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L171
	 fcmped	%f0, %f8
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L169
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L169:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L171:
	nop
	fbl	.L172
	 mov	1, %g1
	mov	0, %g1
.L172:
	andcc	%g1, 0xff, %g0
	be	.L169
	 nop
	fmovs	%f8, %f0
	b	.L169
	 fmovs	%f9, %f1
.L175:
	fmovs	%f8, %f0
	b	.L169
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
	fbu	.L184
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu	.L178
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L180
	 fcmpes	%f0, %f8
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bl,a	.L178
	 fmovs	%f8, %f0
.L178:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L180:
	nop
	fbl	.L181
	 mov	1, %g1
	mov	0, %g1
.L181:
	andcc	%g1, 0xff, %g0
	bne,a	.L178
	 fmovs	%f8, %f0
	b,a	.L178
.L184:
	b	.L178
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
	fbu	.L193
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L187
	 sethi	%hi(-2147483648), %g3
	st	%f0, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L189
	 fcmped	%f0, %f8
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L187
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L187:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L189:
	nop
	fbl	.L190
	 mov	1, %g1
	mov	0, %g1
.L190:
	andcc	%g1, 0xff, %g0
	be	.L187
	 nop
	fmovs	%f8, %f0
	b	.L187
	 fmovs	%f9, %f1
.L193:
	fmovs	%f8, %f0
	b	.L187
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
	fbu	.L196
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L203
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L198
	 fcmped	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L196
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L196:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L198:
	nop
	fbl	.L199
	 mov	1, %g1
	mov	0, %g1
.L199:
	andcc	%g1, 0xff, %g0
	be	.L196
	 nop
	fmovs	%f8, %f0
	b	.L196
	 fmovs	%f9, %f1
.L203:
	fmovs	%f8, %f0
	b	.L196
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
	fbu	.L205
	 ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L212
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+76]
	ld	[%sp+76], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L207
	 fcmpes	%f8, %f0
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bl,a	.L205
	 fmovs	%f8, %f0
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L207:
	nop
	fbl	.L208
	 mov	1, %g1
	mov	0, %g1
.L208:
	andcc	%g1, 0xff, %g0
	bne,a	.L205
	 fmovs	%f8, %f0
	b,a	.L205
.L212:
	b	.L205
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
	fbu	.L214
	 ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L221
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	and	%g2, %g3, %g2
	st	%f0, [%sp+72]
	ld	[%sp+72], %g1
	and	%g1, %g3, %g1
	cmp	%g2, %g1
	be,a	.L216
	 fcmped	%f8, %f0
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	cmp	%g1, 0
	bge	.L214
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L214:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L216:
	nop
	fbl	.L217
	 mov	1, %g1
	mov	0, %g1
.L217:
	andcc	%g1, 0xff, %g0
	be	.L214
	 nop
	fmovs	%f8, %f0
	b	.L214
	 fmovs	%f9, %f1
.L221:
	fmovs	%f8, %f0
	b	.L214
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
	be	.L226
	 mov	%o0, %g1
	sethi	%hi(s.0), %g2
	or	%g2, %lo(s.0), %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L225:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne	.L225
	 add	%g2, 1, %g2
.L224:
	stb	%g0, [%g2]
	sethi	%hi(s.0), %o0
	jmp	%o7+8
	 or	%o0, %lo(s.0), %o0
.L226:
	sethi	%hi(s.0), %g2
	b	.L224
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
	be,a	.L233
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%g1, [%o0]
	st	%o1, [%o0+4]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L235
	 st	%o0, [%g1+4]
.L235:
	jmp	%o7+8
	 nop
.L233:
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
	be,a	.L239
	 ld	[%o0+4], %g1
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g1
.L239:
	cmp	%g1, 0
	be	.L240
	 nop
	ld	[%o0], %g2
	st	%g2, [%g1]
.L240:
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
	be	.L248
	 add	%l1, 1, %g1
	mov	%i1, %l0
	mov	0, %i5
.L245:
	mov	%l0, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L247
	 mov	%i3, %o1
	add	%i5, 1, %i5
	cmp	%i5, %l1
	bne	.L245
	 add	%l0, %i3, %l0
	add	%l1, 1, %g1
.L248:
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
.L247:
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
	be	.L253
	 nop
	mov	%i1, %i2
	mov	0, %i5
.L252:
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L255
	 mov	%i3, %o1
	add	%i5, 1, %i5
	cmp	%i5, %l0
	bne	.L252
	 add	%i2, %i3, %i2
	jmp	%i7+8
	 restore %g0, 0, %o0
.L255:
	call	.umul, 0
	 mov	%i5, %o0
	jmp	%i7+8
	 restore %i1, %o0, %o0
.L253:
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
	mov	%i0, %i5
.L259:
	call	isspace, 0
	 ldsb	[%i5], %o0
	cmp	%o0, 0
	bne,a	.L259
	 add	%i5, 1, %i5
	ldsb	[%i5], %g1
	cmp	%g1, 43
	be	.L265
	 cmp	%g1, 45
	bne	.L271
	 mov	0, %g2
	mov	1, %g2
.L260:
	add	%i5, 1, %i5
	ldsb	[%i5], %g1
.L271:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L262
	 mov	0, %i0
	sll	%i0, 2, %g1
.L270:
	add	%g1, %i0, %g1
	sll	%g1, 1, %g1
	add	%i5, 1, %i5
	ldsb	[%i5-1], %i0
	add	%i0, -48, %i0
	sub	%g1, %i0, %i0
	ldsb	[%i5], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L270
	 sll	%i0, 2, %g1
.L262:
	cmp	%g2, 0
	be,a	.L269
	 sub	%g0, %i0, %i0
.L269:
	jmp	%i7+8
	 restore
.L265:
	b	.L260
	 mov	0, %g2
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -96, %sp
	mov	%i0, %i5
.L274:
	call	isspace, 0
	 ldsb	[%i5], %o0
	cmp	%o0, 0
	bne,a	.L274
	 add	%i5, 1, %i5
	ldsb	[%i5], %g1
	cmp	%g1, 43
	be	.L280
	 cmp	%g1, 45
	bne	.L286
	 mov	0, %g2
	mov	1, %g2
.L275:
	add	%i5, 1, %i5
	ldsb	[%i5], %g1
.L286:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L277
	 mov	0, %i0
	sll	%i0, 2, %g1
.L285:
	add	%g1, %i0, %g1
	sll	%g1, 1, %g1
	add	%i5, 1, %i5
	ldsb	[%i5-1], %i0
	add	%i0, -48, %i0
	sub	%g1, %i0, %i0
	ldsb	[%i5], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L285
	 sll	%i0, 2, %g1
.L277:
	cmp	%g2, 0
	be,a	.L284
	 sub	%g0, %i0, %i0
.L284:
	jmp	%i7+8
	 restore
.L280:
	b	.L275
	 mov	0, %g2
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	%i0, %i5
.L289:
	call	isspace, 0
	 ldsb	[%i5], %o0
	cmp	%o0, 0
	bne,a	.L289
	 add	%i5, 1, %i5
	ldsb	[%i5], %g1
	cmp	%g1, 43
	be	.L295
	 cmp	%g1, 45
	bne	.L300
	 mov	0, %o7
	mov	1, %o7
.L290:
	add	%i5, 1, %i5
	ldsb	[%i5], %g1
.L300:
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu	.L297
	 mov	0, %i0
	mov	0, %i1
	srl	%i1, 30, %g2
.L299:
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
	bleu	.L299
	 srl	%i1, 30, %g2
.L292:
	cmp	%o7, 0
	bne	.L301
	 nop
	subcc	%g0, %i1, %i1
	subx	%g0, %i0, %i0
.L301:
	jmp	%i7+8
	 restore
.L295:
	b	.L290
	 mov	0, %o7
.L297:
	b	.L292
	 mov	0, %i1
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	cmp	%i2, 0
	bne	.L311
	 mov	%i3, %o1
	b	.L302
	 mov	0, %i5
.L310:
.L305:
	cmp	%i2, 0
	be	.L309
	 mov	%i3, %o1
.L311:
	call	.umul, 0
	 srl	%i2, 1, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a	.L310
	 srl	%i2, 1, %i2
	ble	.L302
	 nop
	add	%i5, %i3, %i1
	srl	%i2, 1, %g1
	add	%i2, -1, %i2
	b	.L305
	 sub	%i2, %g1, %i2
.L309:
	mov	0, %i5
.L302:
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
	bne	.L315
	 mov	%i2, %l0
	mov	0, %i0
.L320:
	jmp	%i7+8
	 restore
.L314:
	sra	%l0, 1, %l0
.L319:
	cmp	%l0, 0
	be	.L318
	 nop
.L315:
	mov	%i3, %o1
	call	.umul, 0
	 sra	%l0, 1, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	cmp	%o0, 0
	be	.L320
	 nop
	ble,a	.L319
	 sra	%l0, 1, %l0
	add	%i0, %i3, %i1
	b	.L314
	 add	%l0, -1, %l0
.L318:
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
	be	.L335
	 cmp	%g0, %g1
	ld	[%o0], %g1
	cmp	%o1, %g1
.L336:
	be	.L335
	 cmp	%g0, %g1
	add	%o0, 4, %o0
	ld	[%o0], %g1
	cmp	%g1, 0
	bne	.L336
	 cmp	%o1, %g1
	ld	[%o0], %g1
	cmp	%g0, %g1
.L335:
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
	bne	.L339
	 mov	%o0, %g1
	ld	[%g1], %g2
.L347:
	cmp	%g2, 0
	be,a	.L345
	 ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g2, 0
	be,a	.L346
	 ld	[%g1], %g3
	add	%g1, 4, %g1
	add	%o1, 4, %o1
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	be,a	.L347
	 ld	[%g1], %g2
.L339:
	ld	[%g1], %g3
.L345:
	ld	[%o1], %g2
.L346:
	cmp	%g3, %g2
	bl	.L348
	 mov	-1, %o0
	bg	.L342
	 mov	1, %o0
	mov	0, %o0
.L342:
	and	%o0, 0xff, %o0
.L348:
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
.L352:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	ld	[%g3+%g1], %g2
	cmp	%g2, 0
	bne,a	.L352
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
	be	.L354
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L358:
	ld	[%g1], %g2
	cmp	%g2, 0
	bne,a	.L358
	 add	%g1, 4, %g1
.L354:
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
	be	.L361
	 mov	%o0, %g1
.L360:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L361
	 cmp	%g3, 0
	be	.L361
	 cmp	%g2, 0
	be	.L368
	 cmp	%o2, 0
	add	%g1, 4, %g1
	addcc	%o2, -1, %o2
	bne	.L360
	 add	%o1, 4, %o1
.L361:
	cmp	%o2, 0
.L368:
	be	.L369
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L369
	 mov	-1, %o0
	bg	.L364
	 mov	1, %o0
	mov	0, %o0
.L364:
	and	%o0, 0xff, %o0
.L369:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	be	.L377
	 cmp	%g0, %o2
.L371:
	ld	[%o0], %g1
	cmp	%o1, %g1
	be	.L377
	 cmp	%g0, %o2
	addcc	%o2, -1, %o2
	bne	.L371
	 add	%o0, 4, %o0
	cmp	%g0, %o2
.L377:
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
	be	.L380
	 mov	%o0, %g1
.L379:
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bne	.L387
	 cmp	%o2, 0
	add	%g1, 4, %g1
	addcc	%o2, -1, %o2
	bne	.L379
	 add	%o1, 4, %o1
.L380:
	cmp	%o2, 0
.L387:
	be	.L388
	 mov	0, %o0
	ld	[%g1], %g3
	ld	[%o1], %g2
	cmp	%g3, %g2
	bl	.L388
	 mov	-1, %o0
	bg	.L383
	 mov	1, %o0
	mov	0, %o0
.L383:
	and	%o0, 0xff, %o0
.L388:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	cmp	%o2, 0
	be	.L393
	 add	%o2, -1, %g2
	mov	0, %g1
.L391:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L391
	 add	%g1, 4, %g1
.L393:
	jmp	%o7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L405
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu	.L396
	 cmp	%o2, 0
	add	%o2, -1, %g2
	be	.L406
	 mov	0, %g1
.L397:
	ld	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne	.L397
	 add	%g1, 4, %g1
.L406:
	jmp	%o7+8
	 nop
.L396:
	be	.L405
	 nop
	add	%o2, -1, %o2
	sll	%o2, 2, %o2
	ld	[%o1+%o2], %g1
.L404:
	st	%g1, [%o0+%o2]
	add	%o2, -4, %o2
	cmp	%o2, -4
	bne,a	.L404
	 ld	[%o1+%o2], %g1
.L405:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L411
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L409:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L409
	 st	%o1, [%g2-4]
.L411:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L413
	 nop
	cmp	%o2, 0
	be	.L421
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L419:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L419
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L413:
	be	.L421
	 nop
	cmp	%o2, 0
	be	.L421
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L420:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L420
	 ldub	[%o0+%g1], %g2
.L421:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L424
	 srl	%o1, 1, %g2
	sll	%o1, %o2, %g1
	mov	0, %g2
.L425:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L426
	 sll	%o0, 1, %g3
	srl	%o0, %g3, %o1
	mov	0, %o0
.L427:
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o1, %g2, %o1
.L424:
	xnor	%g0, %o2, %g1
	srl	%g2, %g1, %g2
	sll	%o0, %o2, %g1
	or	%g2, %g1, %g1
	b	.L425
	 sll	%o1, %o2, %g2
.L426:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	sll	%g3, %g4, %g3
	srl	%o1, %o2, %o1
	or	%g3, %o1, %o1
	b	.L427
	 srl	%o0, %o2, %o0
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	be	.L429
	 sll	%o0, 1, %g2
	srl	%o0, %o2, %g1
	mov	0, %g2
.L430:
	sub	%g0, %o2, %g3
	andcc	%g3, 32, %g0
	be,a	.L431
	 srl	%o1, 1, %g3
	sll	%o1, %g3, %o0
	mov	0, %o1
.L432:
	or	%o0, %g2, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L429:
	xnor	%g0, %o2, %g1
	sll	%g2, %g1, %g2
	srl	%o1, %o2, %g1
	or	%g2, %g1, %g1
	b	.L430
	 srl	%o0, %o2, %g2
.L431:
	sub	%g0, %o2, %o2
	and	%o2, 63, %o2
	xnor	%g0, %o2, %g4
	srl	%g3, %g4, %g3
	sll	%o0, %o2, %o0
	or	%g3, %o0, %o0
	b	.L432
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
.L450:
	andcc	%g2, 1, %g0
	bne	.L449
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 32
	bne,a	.L450
	 srl	%o0, %g1, %g2
	jmp	%o7+8
	 mov	0, %o0
.L449:
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
	be	.L458
	 mov	0, %o0
	andcc	%g1, 1, %g0
	bne	.L458
	 mov	1, %o0
.L453:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L453
	 add	%o0, 1, %o0
.L458:
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
	fbl	.L459
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule,a	.L461
	 mov	0, %o0
.L461:
	and	%o0, 0xff, %o0
.L459:
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
	fbl	.L463
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L465
	 mov	0, %o0
.L465:
	and	%o0, 0xff, %o0
.L463:
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
	fbl	.L467
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule,a	.L469
	 mov	0, %o0
.L469:
	and	%o0, 0xff, %o0
.L467:
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
	fbu	.L473
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f0, %f8
	nop
	fbe	.L473
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L476
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	b	.L476
	 ld	[%g1+%lo(.LC17)], %f8
.L475:
	srl	%o1, 31, %g1
.L478:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L473
	 nop
	fmuls	%f8, %f8, %f8
.L476:
	andcc	%o1, 1, %g0
	bne,a	.L475
	 fmuls	%f0, %f8, %f0
	b	.L478
	 srl	%o1, 31, %g1
.L473:
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
	fbu	.L480
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L480
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L483
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	b	.L483
	 ldd	[%g1+%lo(.LC21)], %f8
.L482:
	srl	%o2, 31, %g1
.L485:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L480
	 nop
	fmuld	%f8, %f8, %f8
.L483:
	andcc	%o2, 1, %g0
	bne,a	.L482
	 fmuld	%f0, %f8, %f0
	b	.L485
	 srl	%o2, 31, %g1
.L480:
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
	fbu	.L487
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L487
	 sethi	%hi(.LC24), %g1
	cmp	%o2, 0
	bge	.L490
	 ldd	[%g1+%lo(.LC24)], %f8
	sethi	%hi(.LC25), %g1
	b	.L490
	 ldd	[%g1+%lo(.LC25)], %f8
.L489:
	srl	%o2, 31, %g1
.L492:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L487
	 nop
	fmuld	%f8, %f8, %f8
.L490:
	andcc	%o2, 1, %g0
	bne,a	.L489
	 fmuld	%f0, %f8, %f0
	b	.L492
	 srl	%o2, 31, %g1
.L487:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L498
	 nop
	mov	0, %g1
	ldub	[%o1+%g1], %g3
.L497:
	ldub	[%o0+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L497
	 ldub	[%o1+%g1], %g3
.L498:
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
	be	.L506
	 add	%i0, %o0, %o0
.L500:
	ldub	[%i1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L506
	 cmp	%i2, 0
	add	%i1, 1, %i1
	addcc	%i2, -1, %i2
	bne	.L500
	 add	%o0, 1, %o0
	cmp	%i2, 0
.L506:
	be,a	.L505
	 stb	%g0, [%o0]
.L505:
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L507
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L513:
	cmp	%g2, 0
	bne,a	.L510
	 add	%g1, 1, %g1
.L507:
	jmp	%o7+8
	 mov	%g1, %o0
.L510:
	cmp	%g1, %o1
	bne,a	.L513
	 ldsb	[%o0+%g1], %g2
	b,a	.L507
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L521
	 nop
	mov	%o1, %g1
.L524:
	ldsb	[%g1], %g2
.L523:
	cmp	%g2, 0
	be	.L522
	 add	%g1, 1, %g1
	ldsb	[%g1-1], %g3
	ldsb	[%o0], %g2
	cmp	%g3, %g2
	bne,a	.L523
	 ldsb	[%g1], %g2
.L516:
	jmp	%o7+8
	 nop
.L521:
	jmp	%o7+8
	 mov	0, %o0
.L522:
	add	%o0, 1, %o0
	ldsb	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L524
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
	b	.L527
	 mov	0, %o0
.L526:
	add	%g1, 1, %g1
.L531:
	ldsb	[%g1-1], %g2
	cmp	%g2, 0
	be	.L532
	 nop
.L527:
	ldsb	[%g1], %g2
	cmp	%o1, %g2
	be,a	.L526
	 mov	%g1, %o0
	b	.L531
	 add	%g1, 1, %g1
.L532:
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
	be	.L538
	 mov	%o0, %i4
	ldsb	[%i1], %i3
.L535:
	mov	%i3, %o1
	call	strchr, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	be	.L538
	 mov	%o0, %i0
	mov	%i4, %o2
	mov	%i1, %o1
	call	strncmp, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L538
	 nop
	b	.L535
	 add	%i0, 1, %i5
.L538:
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
	fbl,a	.L548
	 std	%o2, [%sp+72]
.L540:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L543
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L549
	 fnegs	%f0, %f0
.L543:
.L549:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L548:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L540
	 nop
	b	.L543
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
	be	.L561
	 add	%i0, %i4, %i4
	cmp	%i1, %i3
	blu	.L555
	 nop
	cmp	%i0, %i4
	bgu	.L556
	 nop
	ldsb	[%i2], %i1
	add	%i2, 1, %i2
	b	.L553
	 add	%i3, -1, %i3
.L552:
.L560:
	cmp	%i4, %i5
	blu	.L559
	 nop
.L553:
	ldsb	[%i5], %g1
	cmp	%g1, %i1
	bne,a	.L560
	 add	%i5, 1, %i5
	mov	%i3, %o2
	mov	%i2, %o1
	call	memcmp, 0
	 add	%i5, 1, %o0
	cmp	%o0, 0
	bne,a	.L552
	 add	%i5, 1, %i5
	mov	%i5, %i0
.L561:
	jmp	%i7+8
	 restore
.L559:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L555:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L556:
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
	fbl,a	.L583
	 fnegs	%f0, %f0
	mov	0, %g2
.L564:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbul	.L582
	 mov	0, %g1
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f10
.L568:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L568
	 add	%g1, 1, %g1
.L569:
	cmp	%g2, 0
.L584:
	be	.L573
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L573:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L583:
	b	.L564
	 mov	1, %g2
.L582:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbne	.L570
	 mov	1, %g3
	mov	0, %g3
.L570:
	sethi	%hi(.LC32), %g4
	ldd	[%g4+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L571
	 mov	1, %g1
	mov	0, %g1
.L571:
	and	%g1, %g3, %g3
	andcc	%g3, 0xff, %g0
	be	.L569
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
.L572:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L572
	 add	%g1, -1, %g1
	b	.L584
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
	be	.L589
	 mov	%i1, %g3
	mov	0, %i0
	mov	0, %i1
	mov	0, %i4
.L591:
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
	bne	.L591
	 mov	%g1, %g3
	jmp	%i7+8
	 restore
.L589:
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
	bgeu	.L594
	 mov	1, %g1
	cmp	%o1, 0
.L609:
	bl	.L608
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L609
	 cmp	%o1, 0
.L594:
	cmp	%g1, 0
.L608:
	bne	.L595
	 mov	0, %o0
.L596:
	cmp	%o2, 0
	bne	.L607
	 nop
.L592:
	jmp	%o7+8
	 nop
.L598:
	srl	%g1, 1, %g1
.L610:
	cmp	%g1, 0
	be	.L596
	 srl	%o1, 1, %o1
.L595:
	cmp	%g2, %o1
	blu,a	.L610
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L598
	 or	%o0, %g1, %o0
.L607:
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
	be	.L611
	 mov	7, %o0
	call	__clzsi2, 0
	 sll	%i0, 8, %o0
	add	%o0, -1, %o0
.L611:
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
	be	.L618
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L618:
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	cmp	%o0, 0
	be	.L622
	 mov	%o0, %g2
	mov	0, %o0
.L621:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L621
	 sll	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L622:
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
	bgeu	.L625
	 and	%o2, -8, %g1
	sll	%g4, 3, %g3
.L640:
	cmp	%g4, 0
	be	.L627
	 mov	0, %g2
.L631:
	add	%o1, %g2, %g4
	ldd	[%g4], %o4
	add	%o0, %g2, %g4
	add	%g2, 8, %g2
	cmp	%g2, %g3
	bne	.L631
	 std	%o4, [%g4]
.L627:
	cmp	%o2, %g1
	bleu	.L642
	 nop
	ldub	[%o1+%g1], %g2
.L639:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L639
	 ldub	[%o1+%g1], %g2
.L643:
	jmp	%o7+8
	 nop
.L625:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L640
	 sll	%g4, 3, %g3
	cmp	%o2, 0
	be	.L643
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L641:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L641
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L642:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	bgeu	.L645
	 srl	%o2, 1, %g2
	sll	%g2, 1, %g3
.L658:
	cmp	%g2, 0
	be	.L647
	 mov	0, %g1
	lduh	[%o1+%g1], %g2
.L657:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L657
	 lduh	[%o1+%g1], %g2
.L647:
	andcc	%o2, 1, %g0
	be	.L660
	 nop
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L645:
	add	%o1, %o2, %g1
	cmp	%g1, %o0
	blu	.L658
	 sll	%g2, 1, %g3
	cmp	%o2, 0
	be	.L661
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L659:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L659
	 ldub	[%o1+%g1], %g2
.L661:
	jmp	%o7+8
	 nop
.L660:
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
	bgeu	.L663
	 and	%o2, -4, %g1
	sll	%g3, 2, %g4
.L679:
	cmp	%g3, 0
	be	.L665
	 mov	0, %g2
	ld	[%o1+%g2], %g3
.L677:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g2, %g4
	bne,a	.L677
	 ld	[%o1+%g2], %g3
.L665:
	cmp	%o2, %g1
	bleu	.L681
	 nop
	ldub	[%o1+%g1], %g2
.L678:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a	.L678
	 ldub	[%o1+%g1], %g2
.L682:
	jmp	%o7+8
	 nop
.L663:
	add	%o1, %o2, %g2
	cmp	%g2, %o0
	blu	.L679
	 sll	%g3, 2, %g4
	cmp	%o2, 0
	be	.L682
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L680:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L680
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L681:
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
	bl	.L686
	 fitod	%f8, %f0
.L684:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L686:
	sethi	%hi(.LC36), %g1
	ldd	[%g1+%lo(.LC36)], %f8
	b	.L684
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
	bl	.L689
	 fitod	%f8, %f0
.L688:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L689:
	sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	b	.L688
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
.L697:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne	.L693
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L697
	 sub	%g3, %g1, %g2
.L693:
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
.L702:
	andcc	%g2, 1, %g0
	bne	.L698
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a	.L702
	 sra	%o0, %g1, %g2
.L698:
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
	fbge,a	.L709
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
.L703:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L709:
	fstoi	%f8, %f8
	sethi	%hi(32768), %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	b	.L703
	 add	%g2, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L711:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L711
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
.L714:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne	.L714
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
	be	.L719
	 mov	%o0, %g2
	mov	0, %o0
.L718:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne	.L718
	 sll	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L719:
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
	be	.L728
	 mov	0, %o0
	cmp	%o1, 0
	be	.L727
	 nop
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
.L727:
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
	bgeu	.L731
	 mov	1, %g1
	cmp	%o1, 0
.L746:
	bl	.L745
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L746
	 cmp	%o1, 0
.L731:
	cmp	%g1, 0
.L745:
	bne	.L732
	 mov	0, %o0
.L733:
	cmp	%o2, 0
	bne	.L744
	 nop
.L729:
	jmp	%o7+8
	 nop
.L735:
	srl	%g1, 1, %g1
.L747:
	cmp	%g1, 0
	be	.L733
	 srl	%o1, 1, %o1
.L732:
	cmp	%g2, %o1
	blu,a	.L747
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L735
	 or	%o0, %g1, %o0
.L744:
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
	fbl	.L748
	 mov	-1, %o0
	nop
	fbg	.L750
	 mov	1, %o0
	mov	0, %o0
.L750:
	and	%o0, 0xff, %o0
.L748:
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
	fbl	.L752
	 mov	-1, %o0
	nop
	fbg	.L754
	 mov	1, %o0
	mov	0, %o0
.L754:
	and	%o0, 0xff, %o0
.L752:
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
	bl	.L767
	 mov	0, %o5
.L759:
	cmp	%o1, 0
	be	.L760
	 mov	0, %o0
	mov	0, %g3
.L762:
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
	bne	.L762
	 sll	%g2, 1, %g2
.L760:
	cmp	%o5, 0
	bne,a	.L768
	 sub	%g0, %o0, %o0
.L768:
	jmp	%o7+8
	 nop
.L767:
	sub	%g0, %o1, %o1
	b	.L759
	 mov	1, %o5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L774
	 mov	0, %i5
.L770:
	cmp	%i1, 0
	bl,a	.L775
	 sub	%g0, %i1, %i1
.L771:
	mov	0, %o2
	mov	%i1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L776
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L776:
	jmp	%i7+8
	 restore
.L774:
	sub	%g0, %i0, %i0
	b	.L770
	 mov	1, %i5
.L775:
	b	.L771
	 xor	%i5, 1, %i5
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -96, %sp
	cmp	%i0, 0
	bl	.L781
	 mov	0, %i5
.L778:
	sra	%i1, 31, %o1
	xor	%o1, %i1, %i1
	mov	1, %o2
	sub	%i1, %o1, %o1
	call	__udivmodsi4, 0
	 mov	%i0, %o0
	cmp	%i5, 0
	be	.L782
	 mov	%o0, %i0
	sub	%g0, %o0, %i0
.L782:
	jmp	%i7+8
	 restore
.L781:
	sub	%g0, %i0, %i0
	b	.L778
	 mov	1, %i5
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	bgeu	.L785
	 mov	1, %g1
	sll	%o1, 16, %g2
.L799:
	cmp	%g2, 0
	bl	.L785
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
	bne	.L799
	 sll	%o1, 16, %g2
.L785:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne	.L786
	 mov	0, %g3
.L787:
	cmp	%o2, 0
	bne,a	.L790
	 mov	%o0, %g3
.L790:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
.L789:
	sll	%g1, 16, %g1
.L800:
	srl	%g1, 17, %g2
	mov	%g2, %g1
	cmp	%g2, 0
	be	.L787
	 srl	%o1, 1, %o1
.L786:
	cmp	%o0, %o1
	blu,a	.L800
	 sll	%g1, 16, %g1
	sub	%o0, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L789
	 or	%g3, %g1, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o1, %o0
	bgeu	.L803
	 mov	1, %g1
	cmp	%o1, 0
.L818:
	bl	.L817
	 cmp	%g1, 0
	sll	%o1, 1, %o1
	sll	%g1, 1, %g1
	cmp	%o1, %g2
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne	.L818
	 cmp	%o1, 0
.L803:
	cmp	%g1, 0
.L817:
	bne	.L804
	 mov	0, %o0
.L805:
	cmp	%o2, 0
	bne	.L816
	 nop
.L801:
	jmp	%o7+8
	 nop
.L807:
	srl	%g1, 1, %g1
.L819:
	cmp	%g1, 0
	be	.L805
	 srl	%o1, 1, %o1
.L804:
	cmp	%g2, %o1
	blu,a	.L819
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	b	.L807
	 or	%o0, %g1, %o0
.L816:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be	.L821
	 cmp	%o2, 0
	mov	0, %g1
	sll	%o1, %o2, %o0
.L822:
	mov	%g1, %o1
.L825:
	jmp	%o7+8
	 nop
.L821:
	be	.L825
	 nop
	sll	%o1, %o2, %g1
	sll	%o0, %o2, %o0
	sub	%g0, %o2, %o2
	srl	%o1, %o2, %o1
	b	.L822
	 or	%o1, %o0, %o0
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L827
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
.L828:
	mov	%g1, %o0
.L831:
	jmp	%o7+8
	 nop
.L827:
	be	.L831
	 nop
	sra	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L828
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
	bl	.L836
	 mov	0, %g1
	bg	.L836
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L836
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L836:
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
	be	.L844
	 cmp	%o2, 0
	mov	0, %g1
	srl	%o0, %o2, %o1
.L845:
	mov	%g1, %o0
.L848:
	jmp	%o7+8
	 nop
.L844:
	be	.L848
	 nop
	srl	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sll	%o0, %g2, %o0
	srl	%o1, %o2, %o1
	b	.L845
	 or	%o0, %o1, %o1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i4
	or	%i4, 1023, %i4
	and	%i0, %i4, %l0
	and	%i1, %i4, %i3
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	srl	%o0, 16, %i2
	and	%o0, %i4, %i5
	srl	%i0, 16, %i0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%i0, %o0
	add	%o0, %i2, %o0
	sll	%o0, 16, %g1
	add	%g1, %i5, %i5
	srl	%o0, 16, %i2
	srl	%g1, 16, %i3
	and	%i5, %i4, %i5
	srl	%i1, 16, %i4
	mov	%i4, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%o0, %i3, %o0
	sll	%o0, 16, %i1
	add	%i1, %i5, %i1
	srl	%o0, 16, %o0
	add	%o0, %i2, %i2
	mov	%i4, %o1
	call	.umul, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %o0, %i2, %o0
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
	b	.L859
	 ldd	[%g1+%lo(.LC42)], %f0
.L857:
	srl	%o2, 31, %g1
.L861:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L858
	 cmp	%g2, 0
	fmuld	%f8, %f8, %f8
.L859:
	andcc	%o2, 1, %g0
	bne,a	.L857
	 fmuld	%f0, %f8, %f0
	b	.L861
	 srl	%o2, 31, %g1
.L858:
	be	.L856
	 sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	fdivd	%f8, %f0, %f0
.L856:
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
	b	.L865
	 ld	[%g1+%lo(.LC44)], %f0
.L863:
	srl	%o1, 31, %g1
.L867:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L864
	 cmp	%g2, 0
	fmuls	%f8, %f8, %f8
.L865:
	andcc	%o1, 1, %g0
	bne,a	.L863
	 fmuls	%f0, %f8, %f0
	b	.L867
	 srl	%o1, 31, %g1
.L864:
	be	.L862
	 sethi	%hi(.LC44), %g1
	ld	[%g1+%lo(.LC44)], %f8
	fdivs	%f8, %f0, %f0
.L862:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L869
	 mov	0, %g1
	bgu	.L869
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L869
	 mov	0, %g1
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L869:
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
