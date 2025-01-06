	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.align 32
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cmp	%o0, %o1
	bleu	.L2
	 nop
	cmp	%o2, 0
	be	.L37
	 add	%o1, -1, %g3
	add	%o0, -1, %g2
	ldub	[%g3+%o2], %g1
.L33:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L33
	 ldub	[%g3+%o2], %g1
.L37:
	jmp	%o7+8
	 nop
.L2:
	be	.L37
	 cmp	%o2, 0
	be	.L37
	 add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L13
	 or	%o1, %o0, %g2
	and	%g2, 3, %g3
	add	%o1, 1, %g1
	cmp	%g0, %g3
	sub	%o0, %g1, %g1
	subx	%g0, -1, %g4
	cmp	%g1, 2
	bleu	.L32
	 mov	1, %g1
.L6:
	andcc	%g4, %g1, %g0
	be	.L13
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L34:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L34
	 ld	[%o1+%g1], %g2
	cmp	%o2, %g1
	add	%o1, %g1, %g3
	add	%o0, %g1, %g2
	be	.L37
	 sub	%o2, %g1, %o2
	ldub	[%o1+%g1], %o1
	cmp	%o2, 1
	be	.L37
	 stb	%o1, [%o0+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be	.L37
	 stb	%g1, [%g2+1]
	ldub	[%g3+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g2+2]
.L32:
	b	.L6
	 mov	0, %g1
.L13:
	mov	0, %g1
	ldub	[%o1+%g1], %g4
.L35:
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L35
	 ldub	[%o1+%g1], %g4
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.align 32
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	cmp	%o3, 0
	bne	.L39
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L42:
	addcc	%o3, -1, %o3
	be	.L41
	 add	%o0, 1, %o0
.L39:
	ldub	[%o1], %g1
	and	%g1, 0xff, %g2
	stb	%g1, [%o0]
	cmp	%g2, %o2
	bne	.L42
	 add	%o1, 1, %o1
	jmp	%o7+8
	 add	%o0, 1, %o0
.L41:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	cmp	%o2, 0
	bne	.L51
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L53:
	be	.L54
	 add	%o0, 1, %o0
.L51:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L53
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L54:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.align 32
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	cmp	%o2, 0
	bne,a	.L72
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L63:
	addcc	%o2, -1, %o2
	be,a	.L71
	 mov	0, %o0
	ldub	[%o0], %g1
.L72:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	add	%o0, 1, %o0
	be	.L63
	 add	%o1, 1, %o1
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L71:
	jmp	%o7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L78
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L78:
	jmp	%i7+8
	 restore
	.size	memcpy, .-memcpy
	.align 4
	.align 32
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	add	%o2, -1, %o2
	and	%o1, 0xff, %o1
	add	%o0, %o2, %g3
	b	.L80
	 add	%o0, -1, %g2
.L82:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L83
	 add	%g3, -1, %g3
.L80:
	cmp	%g3, %g2
	bne	.L82
	 mov	%g3, %o0
	mov	0, %o0
.L83:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.align 32
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L88
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L88:
	jmp	%i7+8
	 restore
	.size	memset, .-memset
	.align 4
	.align 32
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	ldub	[%o1], %g1
	sll	%g1, 24, %g2
	cmp	%g2, 0
	be	.L96
	 stb	%g1, [%o0]
.L91:
	ldub	[%o1+1], %g1
	sll	%g1, 24, %g3
	cmp	%g3, 0
	stb	%g1, [%o0+1]
	add	%o0, 1, %o0
	bne	.L91
	 add	%o1, 1, %o1
.L96:
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.align 32
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	ldub	[%o0], %g1
	sll	%g1, 24, %g2
	cmp	%g2, 0
	bne	.L98
	 and	%o1, 0xff, %o1
.L106:
	jmp	%o7+8
	 nop
.L100:
	sll	%g1, 24, %g3
	cmp	%g3, 0
	be	.L106
	 add	%o0, 1, %o0
.L98:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a	.L100
	 ldub	[%o0+1], %g1
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.align 32
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L109:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L111
	 cmp	%g1, 0
	bne	.L109
	 add	%o0, 1, %o0
	mov	0, %o0
.L111:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.align 32
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldub	[%o1], %g3
	ldub	[%o0], %g4
	sll	%g3, 24, %o5
	sll	%g4, 24, %g2
	cmp	%o5, %g2
	mov	1, %g1
	be	.L113
	 add	%o1, -1, %o1
	b	.L122
	 and	%g4, 0xff, %o0
.L115:
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	sll	%g3, 24, %o5
	cmp	%o5, %g2
	bne,a	.L121
	 and	%g4, 0xff, %o0
.L113:
	cmp	%g2, 0
	bne,a	.L115
	 ldub	[%o0+%g1], %g4
	and	%g3, 0xff, %o1
	mov	0, %o0
	jmp	%o7+8
	 sub	%o0, %o1, %o0
.L121:
.L122:
	and	%g3, 0xff, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
	.size	strcmp, .-strcmp
	.align 4
	.align 32
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L123
	 mov	0, %g1
	mov	%o0, %g1
.L125:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L125
	 add	%g1, 1, %g1
	sub	%g1, %o0, %g1
.L123:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L129
	 mov	0, %g3
	ldub	[%o0], %g4
	add	%o2, -1, %o2
	cmp	%g4, 0
	mov	%o1, %g3
	bne	.L133
	 add	%o1, %o2, %o2
	b	.L141
	 ldub	[%o1], %o5
.L134:
	ldub	[%o0], %g4
	cmp	%g4, 0
	be	.L142
	 add	%g3, 1, %g1
	mov	%g1, %g3
.L133:
	ldub	[%g3], %o5
	cmp	%g0, %o5
	xor	%o5, %g4, %o4
	xor	%g3, %o2, %g2
	addx	%g0, 0, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %o1
	cmp	%g0, %g2
	and	%g1, %o1, %g1
	addx	%g0, 0, %g2
	andcc	%g2, %g1, %g0
	bne	.L134
	 add	%o0, 1, %o0
.L132:
	sub	%g4, %o5, %g3
.L129:
.L143:
	jmp	%o7+8
	 mov	%g3, %o0
.L142:
	b	.L132
	 ldub	[%g3+1], %o5
.L141:
	b	.L143
	 sub	%g4, %o5, %g3
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L148
	 and	%o2, -2, %o2
	add	%o0, %o2, %g3
.L146:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	add	%o0, 2, %o0
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	cmp	%o0, %g3
	bne	.L146
	 add	%o1, 2, %o1
.L148:
	jmp	%o7+8
	 nop
	.size	swab, .-swab
	.align 4
	.align 32
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	or	%o0, 32, %o0
	add	%o0, -97, %g1
	cmp	%g1, 26
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isalpha, .-isalpha
	.align 4
	.align 32
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	cmp	%o0, 128
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	isascii, .-isascii
	.align 4
	.align 32
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	xor	%o0, 32, %g1
	cmp	%g0, %g1
	xor	%o0, 9, %o0
	subx	%g0, -1, %g2
	cmp	%g0, %o0
	subx	%g0, -1, %g3
	jmp	%o7+8
	 or	%g2, %g3, %o0
	.size	isblank, .-isblank
	.align 4
	.align 32
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	cmp	%o0, 32
	xor	%o0, 127, %o0
	addx	%g0, 0, %g1
	cmp	%g0, %o0
	subx	%g0, -1, %g2
	jmp	%o7+8
	 or	%g2, %g1, %o0
	.size	iscntrl, .-iscntrl
	.align 4
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	add	%o0, -9, %g1
	cmp	%g1, 5
	xor	%o0, 32, %o0
	addx	%g0, 0, %g1
	cmp	%g0, %o0
	subx	%g0, -1, %g2
	jmp	%o7+8
	 or	%g2, %g1, %o0
	.size	isspace, .-isspace
	.align 4
	.align 32
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
	.align 32
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	add	%o0, -127, %g2
	cmp	%g2, 33
	addx	%g0, 0, %g3
	cmp	%o0, 32
	addx	%g0, 0, %g4
	orcc	%g3, %g4, %g0
	mov	%o0, %g1
	bne	.L175
	 mov	1, %o0
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g3
	add	%g1, %g3, %g4
	cmp	%g4, 1
	bleu	.L175
	 nop
	sethi	%hi(-65536), %o0
	or	%o0, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	addx	%g0, 0, %o0
.L175:
	jmp	%o7+8
	 nop
	.size	iswcntrl, .-iswcntrl
	.align 4
	.align 32
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
	.align 32
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	cmp	%o0, 254
	bleu	.L185
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g3
	sethi	%hi(46080), %g4
	add	%o0, %g3, %o0
	or	%g4, 981, %g2
	sethi	%hi(8192), %g3
	cmp	%g2, %o0
	or	%g3, 39, %g4
	subx	%g0, -1, %o0
	cmp	%g4, %g1
	subx	%g0, -1, %g2
	orcc	%o0, %g2, %g0
	bne	.L186
	 mov	1, %o0
	sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g4
	add	%g1, %g3, %g3
	or	%g4, 1016, %g2
	cmp	%g3, %g2
	bleu	.L186
	 sethi	%hi(1048576), %g3
	sethi	%hi(-65536), %o0
	or	%o0, 4, %g4
	or	%g3, 3, %o0
	add	%g1, %g4, %g2
	cmp	%g2, %o0
	bgu	.L186
	 mov	0, %o0
	sethi	%hi(64512), %g4
	or	%g4, 1022, %g3
	andn	%g3, %g1, %g1
	cmp	%g0, %g1
	addx	%g0, 0, %o0
.L186:
	jmp	%o7+8
	 nop
.L185:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L186
	 mov	1, %o0
	jmp	%o7+8
	 mov	0, %o0
	.size	iswprint, .-iswprint
	.align 4
	.align 32
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g2
	cmp	%g2, 9
	mov	%o0, %g1
	bleu	.L191
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L191:
	jmp	%o7+8
	 nop
	.size	iswxdigit, .-iswxdigit
	.align 4
	.align 32
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	jmp	%o7+8
	 and	%o0, 127, %o0
	.size	toascii, .-toascii
	.align 4
	.align 32
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	add	%sp, -88, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L193
	 std	%o2, [%sp+80]
	ldd	[%sp+80], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L193
	 ldd	[%sp+72], %f8
	fcmped	%f8, %f0
	nop
	fbule	.L200
	 nop
	fsubd	%f8, %f0, %f0
.L193:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L200:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 88, %sp
	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	add	%sp, -80, %sp
	st	%o0, [%sp+72]
	ld	[%sp+72], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L201
	 st	%o1, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L201
	 ld	[%sp+72], %f8
	fcmpes	%f8, %f0
	nop
	fbule	.L208
	 nop
	fsubs	%f8, %f0, %f0
.L201:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L208:
	sethi	%hi(.LC2), %g1
	ld	[%g1+%lo(.LC2)], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	std	%o2, [%sp+72]
	nop
	fbu	.L209
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L209
	 std	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne	.L220
	 cmp	%g1, 0
	fcmped	%f8, %f10
	nop
	fbl	.L214
	 mov	1, %g1
	mov	0, %g1
.L214:
	andcc	%g1, 1, %g0
	be,a	.L209
	 std	%f8, [%sp+72]
	fmovs	%f10, %f8
	fmovs	%f11, %f9
.L213:
	std	%f8, [%sp+72]
.L209:
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L220:
	be	.L213
	 std	%f10, [%sp+72]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f9
	fcmps	%f9, %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	nop
	fbu	.L221
	 fmovs	%f8, %f0
	fcmps	%f8, %f8
	nop
	fbu	.L221
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne	.L231
	 cmp	%g1, 0
	fcmpes	%f9, %f8
	nop
	fbl	.L226
	 mov	1, %g1
	mov	0, %g1
.L226:
	andcc	%g1, 1, %g0
	be	.L221
	 fmovs	%f9, %f0
	fmovs	%f8, %f0
.L221:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L231:
	bne	.L221
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	std	%o2, [%sp+72]
	nop
	fbu	.L232
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L232
	 std	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne	.L243
	 cmp	%g1, 0
	fcmped	%f8, %f10
	nop
	fbl	.L237
	 mov	1, %g1
	mov	0, %g1
.L237:
	andcc	%g1, 1, %g0
	be,a	.L232
	 std	%f8, [%sp+72]
	fmovs	%f10, %f8
	fmovs	%f11, %f9
.L236:
	std	%f8, [%sp+72]
.L232:
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L243:
	be	.L236
	 std	%f10, [%sp+72]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -88, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	std	%o2, [%sp+72]
	nop
	fbu	.L244
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L244
	 std	%f10, [%sp+72]
	st	%f8, [%sp+84]
	ld	[%sp+72], %g1
	ld	[%sp+84], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne	.L255
	 cmp	%g1, 0
	fcmped	%f10, %f8
	nop
	fbl	.L249
	 mov	1, %g1
	mov	0, %g1
.L249:
	andcc	%g1, 1, %g0
	be,a	.L244
	 std	%f8, [%sp+72]
	fmovs	%f10, %f8
	fmovs	%f11, %f9
	std	%f8, [%sp+72]
.L244:
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 88, %sp
.L255:
	be,a	.L244
	 std	%f8, [%sp+72]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 88, %sp
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f9
	fcmps	%f9, %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	nop
	fbu	.L256
	 fmovs	%f8, %f0
	fcmps	%f8, %f8
	nop
	fbu	.L256
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne	.L266
	 cmp	%g1, 0
	fcmpes	%f9, %f8
	nop
	fbl	.L261
	 mov	1, %g1
	mov	0, %g1
.L261:
	andcc	%g1, 1, %g0
	be	.L256
	 fmovs	%f8, %f0
	fmovs	%f9, %f0
.L256:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L266:
	bne	.L256
	 nop
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	add	%sp, -88, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	std	%o2, [%sp+72]
	nop
	fbu	.L267
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu	.L267
	 std	%f10, [%sp+72]
	st	%f8, [%sp+84]
	ld	[%sp+72], %g1
	ld	[%sp+84], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne	.L278
	 cmp	%g1, 0
	fcmped	%f10, %f8
	nop
	fbl	.L272
	 mov	1, %g1
	mov	0, %g1
.L272:
	andcc	%g1, 1, %g0
	be,a	.L267
	 std	%f8, [%sp+72]
	fmovs	%f10, %f8
	fmovs	%f11, %f9
	std	%f8, [%sp+72]
.L267:
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 88, %sp
.L278:
	be,a	.L267
	 std	%f8, [%sp+72]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 88, %sp
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	mov	%o0, %g1
	sethi	%hi(s.0), %o0
	or	%o0, %lo(s.0), %o0
	cmp	%g1, 0
	be	.L280
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L281:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L281
	 add	%g2, 1, %g2
.L280:
	jmp	%o7+8
	 stb	%g0, [%g2]
	.size	l64a, .-l64a
	.align 4
	.align 32
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
	.align 32
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
	.align 32
	.global insque
	.type	insque, #function
	.proc	020
insque:
	cmp	%o1, 0
	be,a	.L292
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L294
	 st	%o0, [%g1+4]
.L294:
	jmp	%o7+8
	 nop
.L292:
	st	%g0, [%o0]
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.align 32
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ld	[%o0], %g1
	cmp	%g1, 0
	be,a	.L305
	 ld	[%o0+4], %g3
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g3
.L305:
	cmp	%g3, 0
	bne,a	.L304
	 st	%g1, [%g3]
.L304:
	jmp	%o7+8
	 nop
	.size	remque, .-remque
	.align 4
	.align 32
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -96, %sp
	ld	[%i2], %l1
	cmp	%l1, 0
	be	.L307
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L309
	 mov	0, %l0
.L321:
	cmp	%l1, %l0
	be	.L307
	 add	%i5, %i3, %i5
.L309:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	mov	%i5, %i0
	bne	.L321
	 add	%l0, 1, %l0
.L323:
	jmp	%i7+8
	 restore
.L307:
	add	%l1, 1, %g1
	st	%g1, [%i2]
	mov	%l1, %o1
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L323
	 add	%i1, %o0, %i0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memmove, 0
	 mov	%i0, %o0
	jmp	%i7+8
	 restore
	.size	lsearch, .-lsearch
	.align 4
	.align 32
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -96, %sp
	ld	[%i2], %l0
	cmp	%l0, 0
	be	.L325
	 mov	0, %i5
	b	.L336
	 mov	%i1, %o1
.L335:
	cmp	%l0, %i5
	be	.L325
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L336:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	mov	%i1, %i2
	bne	.L335
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L325:
	mov	0, %i2
	jmp	%i7+8
	 restore %g0, %i2, %o0
	.size	lfind, .-lfind
	.align 4
	.align 32
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
	.align 32
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	b	.L363
	 ldub	[%o0], %o5
.L365:
	add	%o0, 1, %o0
.L363:
	sll	%o5, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 5
	xor	%g1, 32, %g4
	addx	%g0, 0, %o4
	cmp	%g0, %g4
	subx	%g0, -1, %g3
	orcc	%g3, %o4, %g0
	bne,a	.L365
	 ldub	[%o0+1], %o5
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be	.L343
	 cmp	%g2, 45
	bne	.L366
	 add	%g1, -48, %g1
	ldub	[%o0+1], %o5
	sll	%o5, 24, %o4
	sra	%o4, 24, %g2
	add	%g2, -48, %g4
	cmp	%g4, 9
	add	%o0, 1, %g1
	bgu	.L368
	 mov	0, %o0
	mov	1, %o4
.L346:
	mov	0, %o0
.L349:
	add	%g1, 1, %g1
	add	%o5, -48, %g3
	ldub	[%g1], %o5
	sll	%o0, 2, %g2
	sll	%o5, 24, %g4
	add	%g2, %o0, %o0
	sra	%g4, 24, %g2
	add	%g2, -48, %g4
	sll	%g3, 24, %g3
	sll	%o0, 1, %g2
	sra	%g3, 24, %g3
	cmp	%g4, 9
	bleu	.L349
	 sub	%g2, %g3, %o0
	cmp	%o4, 0
	be,a	.L368
	 sub	%g3, %g2, %o0
.L368:
	jmp	%o7+8
	 nop
.L366:
	cmp	%g1, 9
	mov	0, %o4
	bleu	.L346
	 mov	%o0, %g1
	mov	0, %o0
	jmp	%o7+8
	 nop
.L343:
	ldub	[%o0+1], %o5
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	bleu	.L346
	 mov	0, %o4
	jmp	%o7+8
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	04
atol:
	b	.L391
	 ldub	[%o0], %o5
.L393:
	add	%o0, 1, %o0
.L391:
	sll	%o5, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 5
	xor	%g1, 32, %g4
	addx	%g0, 0, %o4
	cmp	%g0, %g4
	subx	%g0, -1, %g3
	orcc	%g3, %o4, %g0
	bne,a	.L393
	 ldub	[%o0+1], %o5
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be	.L374
	 cmp	%g2, 45
	be,a	.L394
	 ldub	[%o0+1], %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	mov	0, %o4
	bgu	.L392
	 mov	%o0, %g1
.L376:
	mov	0, %o0
.L379:
	add	%g1, 1, %g1
	add	%o5, -48, %g3
	ldub	[%g1], %o5
	sll	%o0, 2, %g2
	sll	%o5, 24, %g4
	add	%g2, %o0, %o0
	sra	%g4, 24, %g2
	add	%g2, -48, %g4
	sll	%g3, 24, %g3
	sll	%o0, 1, %g2
	sra	%g3, 24, %g3
	cmp	%g4, 9
	bleu	.L379
	 sub	%g2, %g3, %o0
	cmp	%o4, 0
	be,a	.L396
	 sub	%g3, %g2, %o0
.L396:
	jmp	%o7+8
	 nop
.L394:
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g2
	add	%g2, -48, %g4
	cmp	%g4, 9
	bleu	.L376
	 mov	1, %o4
.L392:
	mov	0, %o0
	jmp	%o7+8
	 nop
.L374:
	ldub	[%o0+1], %o5
	sll	%o5, 24, %g4
	sra	%g4, 24, %o4
	add	%o4, -48, %g3
	cmp	%g3, 9
	add	%o0, 1, %g1
	bgu	.L396
	 mov	0, %o0
	b	.L379
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	b	.L422
	 ldub	[%i0], %o7
.L424:
	add	%i0, 1, %i0
.L422:
	sll	%o7, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 5
	xor	%g1, 32, %g4
	addx	%g0, 0, %i1
	cmp	%g0, %g4
	subx	%g0, -1, %i2
	orcc	%i2, %i1, %g0
	bne,a	.L424
	 ldub	[%i0+1], %o7
	sra	%g2, 24, %i3
	cmp	%i3, 43
	be	.L402
	 cmp	%i3, 45
	bne	.L425
	 add	%g1, -48, %g1
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	mov	0, %o4
	bgu	.L397
	 mov	0, %o5
	mov	1, %i0
.L405:
	mov	0, %o4
	mov	0, %o5
	add	%i1, 1, %i1
.L426:
	srl	%o5, 30, %i4
	sll	%o4, 2, %g1
	sll	%o5, 2, %i5
	add	%o7, -48, %g4
	ldub	[%i1], %o7
	addcc	%i5, %o5, %g3
	or	%i4, %g1, %g2
	addx	%g2, %o4, %i2
	srl	%g3, 31, %i4
	sll	%i2, 1, %g1
	sll	%g4, 24, %g4
	or	%i4, %g1, %g2
	sll	%o7, 24, %g1
	sll	%g3, 1, %g3
	sra	%g4, 24, %i3
	sra	%g1, 24, %g1
	subcc	%g3, %i3, %o5
	sra	%g4, 31, %i5
	add	%g1, -48, %g1
	subx	%g2, %i5, %o4
	cmp	%g1, 9
	bleu,a	.L426
	 add	%i1, 1, %i1
	cmp	%i0, 0
	bne,a	.L427
	 mov	%o4, %i0
	subcc	%i3, %g3, %o5
	subx	%i5, %g2, %o4
.L397:
	mov	%o4, %i0
.L427:
	jmp	%i7+8
	 restore %g0, %o5, %o1
.L425:
	cmp	%g1, 9
	mov	%i0, %i1
	bleu	.L405
	 mov	0, %i0
	mov	0, %o4
	b	.L397
	 mov	0, %o5
.L402:
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	bleu	.L405
	 mov	0, %i0
	mov	0, %o4
	b	.L397
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
.L438:
	cmp	%i2, 0
	be	.L440
	 mov	0, %i5
.L439:
	srl	%i2, 1, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl	.L433
	 add	%i2, -1, %i2
	be	.L428
	 nop
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L439
	 add	%i5, %i3, %i1
	mov	0, %i5
.L428:
.L440:
	jmp	%i7+8
	 restore %g0, %i5, %o0
.L433:
	b	.L438
	 mov	%l0, %i2
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L446
	 mov	%i0, %l1
.L454:
	sra	%i2, 1, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	add	%i2, -1, %i2
	cmp	%o0, 0
	be	.L457
	 sra	%i2, 1, %i2
.L456:
	ble	.L444
	 cmp	%i2, 0
	bne	.L454
	 add	%i0, %i3, %i1
.L446:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L444:
	cmp	%l0, 0
	be	.L446
	 nop
	mov	%l0, %i2
	sra	%i2, 1, %l0
	mov	%i3, %o1
	call	.umul, 0
	 mov	%l0, %o0
	add	%i1, %o0, %i0
	mov	%i5, %o2
	mov	%i0, %o1
	call	%i4, 0
	 mov	%l1, %o0
	add	%i2, -1, %i2
	cmp	%o0, 0
	bne	.L456
	 sra	%i2, 1, %i2
.L457:
	jmp	%i7+8
	 restore
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	save	%sp, -96, %sp
	mov	%i1, %o1
	call	.div, 0
	 mov	%i0, %o0
	ld	[%fp+64], %i5
	mov	%i1, %o1
	st	%o0, [%i5]
	call	.rem, 0
	 mov	%i0, %o0
	st	%o0, [%i5+4]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	div, .-div
	.align 4
	.align 32
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	sra	%o0, 31, %g3
	xor	%o1, %g3, %o5
	xor	%g3, %o0, %o4
	subcc	%o5, %g3, %o1
	jmp	%o7+8
	 subx	%o4, %g3, %o0
	.size	imaxabs, .-imaxabs
	.align 4
	.align 32
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	ld	[%fp+64], %i5
	mov	%i2, %o2
	std	%o0, [%i5]
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	imaxdiv, .-imaxdiv
	.align 4
	.align 32
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
	.align 32
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	save	%sp, -96, %sp
	mov	%i1, %o1
	call	.div, 0
	 mov	%i0, %o0
	ld	[%fp+64], %i5
	mov	%i1, %o1
	st	%o0, [%i5]
	call	.rem, 0
	 mov	%i0, %o0
	st	%o0, [%i5+4]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	ldiv, .-ldiv
	.align 4
	.align 32
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	sra	%o0, 31, %g3
	xor	%o1, %g3, %o5
	xor	%g3, %o0, %o4
	subcc	%o5, %g3, %o1
	jmp	%o7+8
	 subx	%o4, %g3, %o0
	.size	llabs, .-llabs
	.align 4
	.align 32
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	ld	[%fp+64], %i5
	mov	%i2, %o2
	std	%o0, [%i5]
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5+8]
	jmp	%i7+12
	 restore %g0, %i5, %o0
	.size	lldiv, .-lldiv
	.align 4
	.align 32
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ld	[%o0], %g1
	cmp	%g1, 0
	bne	.L474
	 cmp	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
.L468:
	cmp	%g1, 0
	be	.L469
	 add	%o0, 4, %o0
	cmp	%o1, %g1
.L474:
	bne,a	.L468
	 ld	[%o0+4], %g1
	jmp	%o7+8
	 nop
.L469:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.align 32
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o1], %g3
	ld	[%o0], %g2
	cmp	%g2, %g3
	mov	4, %g1
	be	.L477
	 add	%o1, -4, %o1
	b	.L487
	 mov	-1, %o0
.L479:
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	bne,a	.L487
	 mov	-1, %o0
.L477:
	cmp	%g2, 0
	bne,a	.L479
	 ld	[%o0+%g1], %g2
	cmp	%g2, %g3
	mov	-1, %o0
.L487:
	bl	.L488
	 nop
	ble	.L486
	 mov	1, %o0
.L488:
	jmp	%o7+8
	 nop
.L486:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.align 32
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L490:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L490
	 add	%g1, 4, %g1
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.align 32
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	ld	[%o0], %g2
	cmp	%g2, 0
	be	.L492
	 mov	0, %g1
	mov	%o0, %g1
.L494:
	ld	[%g1+4], %g3
	cmp	%g3, 0
	bne	.L494
	 add	%g1, 4, %g1
	sub	%g1, %o0, %g1
	sra	%g1, 2, %g1
.L492:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L514
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L501:
	addcc	%o2, -1, %o2
	be,a	.L515
	 mov	0, %o0
	ld	[%o0], %g1
.L514:
	ld	[%o1], %g2
	xor	%g2, %g1, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	add	%o0, 4, %o0
	bne	.L501
	 add	%o1, 4, %o1
	cmp	%g1, %g2
	bl	.L512
	 nop
	ble	.L505
	 mov	1, %o0
.L515:
	jmp	%o7+8
	 nop
.L512:
	jmp	%o7+8
	 mov	-1, %o0
.L505:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	bne,a	.L525
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L519:
	be	.L520
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L525:
	cmp	%g1, %o1
	bne,a	.L519
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L520:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	bne,a	.L543
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L530:
	addcc	%o2, -1, %o2
	be	.L534
	 nop
	ld	[%o0], %g2
.L543:
	ld	[%o1], %g1
	cmp	%g2, %g1
	add	%o0, 4, %o0
	be	.L530
	 add	%o1, 4, %o1
	bl,a	.L542
	 mov	-1, %o0
	bg	.L542
	 mov	1, %o0
.L534:
	jmp	%o7+8
	 mov	0, %o0
.L542:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L549
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L549:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.align 32
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L567
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	bgeu	.L565
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L567
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %o2
.L566:
	st	%o2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L566
	 ld	[%o1+%g1], %o2
.L568:
	jmp	%o7+8
	 nop
.L565:
	cmp	%o2, 0
	be	.L568
	 mov	0, %g4
.L553:
	ld	[%o1+%g4], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g4]
	cmp	%g1, -1
	bne	.L553
	 add	%g4, 4, %g4
.L567:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L576
	 add	%o2, -1, %o2
	mov	%o0, %g1
.L571:
	add	%o2, -1, %o2
	st	%o1, [%g1]
	cmp	%o2, -1
	bne	.L571
	 add	%g1, 4, %g1
.L576:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L578
	 nop
	cmp	%o2, 0
	be	.L611
	 nop
	add	%o0, -1, %g2
	add	%o1, -1, %o1
	ldub	[%g2+%o2], %g1
.L608:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L608
	 ldub	[%g2+%o2], %g1
.L612:
	jmp	%o7+8
	 nop
.L578:
	bne,a	.L606
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L606:
	be	.L611
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L589
	 or	%o1, %o0, %g2
	and	%g2, 3, %g3
	add	%o0, 1, %g1
	cmp	%g0, %g3
	sub	%o1, %g1, %g1
	subx	%g0, -1, %g4
	cmp	%g1, 2
	bleu	.L607
	 mov	1, %g1
.L582:
	andcc	%g4, %g1, %g0
	be	.L589
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o0+%g1], %g2
.L609:
	st	%g2, [%o1+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L609
	 ld	[%o0+%g1], %g2
	cmp	%o2, %g1
	add	%o1, %g1, %g2
	add	%o0, %g1, %g3
	be	.L612
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %o0
	cmp	%o2, 1
	be	.L612
	 stb	%o0, [%o1+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be	.L612
	 stb	%g1, [%g2+1]
	ldub	[%g3+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g2+2]
.L607:
	b	.L582
	 mov	0, %g1
.L589:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L610:
	stb	%g4, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L610
	 ldub	[%o0+%g1], %g4
.L611:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.align 32
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	sll	%o1, %o2, %g1
	bne	.L615
	 mov	0, %g4
	srl	%o1, 1, %g1
	xnor	%g0, %o2, %g2
	srl	%g1, %g2, %g1
	sll	%o0, %o2, %g3
	or	%g1, %g3, %g1
	sll	%o1, %o2, %g4
.L615:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L616
	 and	%o2, 63, %o2
	srl	%o0, %o2, %g3
	mov	0, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%g3, %g4, %o1
.L616:
	xnor	%g0, %o2, %g3
	sll	%o0, 1, %g2
	srl	%o1, %o2, %o1
	sll	%g2, %g3, %g2
	or	%g2, %o1, %g3
	srl	%o0, %o2, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 or	%g3, %g4, %o1
	.size	rotl64, .-rotl64
	.align 4
	.align 32
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	andcc	%o2, 32, %g0
	srl	%o0, %o2, %g1
	bne	.L620
	 mov	0, %g4
	sll	%o0, 1, %g1
	xnor	%g0, %o2, %g2
	sll	%g1, %g2, %g1
	srl	%o1, %o2, %g3
	or	%g1, %g3, %g1
	srl	%o0, %o2, %g4
.L620:
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L621
	 and	%o2, 63, %o2
	sll	%o1, %o2, %g3
	mov	0, %o1
	or	%g3, %g4, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L621:
	xnor	%g0, %o2, %g3
	srl	%o1, 1, %g2
	sll	%o0, %o2, %o0
	srl	%g2, %g3, %g2
	or	%g2, %o0, %g3
	sll	%o1, %o2, %o1
	or	%g3, %g4, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
	.size	rotr64, .-rotr64
	.align 4
	.align 32
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	sub	%g0, %o1, %g1
	sll	%o0, %o1, %o1
	srl	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotl32, .-rotl32
	.align 4
	.align 32
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	sub	%g0, %o1, %g1
	srl	%o0, %o1, %o1
	sll	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotr32, .-rotr32
	.align 4
	.align 32
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	016
rotl_sz:
	sub	%g0, %o1, %g1
	sll	%o0, %o1, %o1
	srl	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.align 32
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	016
rotr_sz:
	sub	%g0, %o1, %g1
	srl	%o0, %o1, %o1
	sll	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotr_sz, .-rotr_sz
	.align 4
	.align 32
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	and	%o1, 15, %o1
	sub	%g0, %o1, %g1
	and	%g1, 15, %g1
	sll	%o0, %o1, %g2
	srl	%o0, %g1, %o0
	or	%g2, %o0, %g3
	sll	%g3, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
	.size	rotl16, .-rotl16
	.align 4
	.align 32
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	and	%o1, 15, %o1
	sub	%g0, %o1, %g1
	and	%g1, 15, %g1
	srl	%o0, %o1, %g2
	sll	%o0, %g1, %o0
	or	%g2, %o0, %g3
	sll	%g3, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
	.size	rotr16, .-rotr16
	.align 4
	.align 32
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	and	%o1, 7, %o1
	sub	%g0, %o1, %g1
	and	%g1, 7, %g1
	sll	%o0, %o1, %g2
	srl	%o0, %g1, %o0
	or	%g2, %o0, %g3
	jmp	%o7+8
	 and	%g3, 0xff, %o0
	.size	rotl8, .-rotl8
	.align 4
	.align 32
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	and	%o1, 7, %o1
	sub	%g0, %o1, %g1
	and	%g1, 7, %g1
	srl	%o0, %o1, %g2
	sll	%o0, %g1, %o0
	or	%g2, %o0, %g3
	jmp	%o7+8
	 and	%g3, 0xff, %o0
	.size	rotr8, .-rotr8
	.align 4
	.align 32
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	srl	%o0, 8, %g1
	sll	%o0, 8, %o0
	or	%g1, %o0, %g2
	sll	%g2, 16, %g3
	jmp	%o7+8
	 srl	%g3, 16, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.align 32
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	sethi	%hi(64512), %g3
	srl	%o0, 24, %g4
	srl	%o0, 8, %g2
	sll	%o0, 24, %g1
	or	%g3, 768, %g3
	or	%g1, %g4, %g1
	sll	%o0, 8, %o0
	and	%g2, %g3, %g4
	sethi	%hi(16711680), %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %g3
	jmp	%o7+8
	 or	%g1, %g3, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	srl	%o1, 24, %g1
	sll	%o0, 8, %g2
	sethi	%hi(64512), %o5
	sll	%o0, 24, %o3
	or	%g2, %g1, %g2
	or	%o5, 768, %o5
	srl	%o0, 8, %o4
	srl	%o1, 8, %g4
	and	%o4, %o5, %o4
	sethi	%hi(16711680), %o2
	sll	%o1, 24, %g3
	srl	%o0, 24, %g1
	or	%o3, %g4, %g4
	and	%g2, 255, %o0
	or	%g3, %o0, %g3
	and	%g2, %o2, %g2
	or	%g1, %o4, %g1
	sll	%o1, 8, %o1
	and	%g4, %o5, %o5
	and	%o1, %o2, %o2
	or	%g1, %g2, %g1
	or	%g3, %o5, %o4
	or	%o4, %o2, %o0
	jmp	%o7+8
	 or	%g1, %o3, %o1
	.size	bswap_64, .-bswap_64
	.align 4
	.align 32
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	b	.L637
	 mov	0, %g1
.L635:
	cmp	%g1, 32
	be	.L639
	 nop
.L637:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L635
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L639:
	jmp	%o7+8
	 mov	0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	orcc	%o0, 0, %g1
	be	.L647
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L647
	 nop
	mov	1, %o0
.L642:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L642
	 add	%o0, 1, %o0
.L647:
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
	.align 32
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC4), %g1
	ld	[%g1+%lo(.LC4)], %f8
	ld	[%sp+76], %f9
	fcmpes	%f9, %f8
	nop
	fbl	.L648
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f0
	fcmpes	%f9, %f0
	nop
	fbule	.L652
	 nop
.L648:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L652:
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
	.align 32
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC8), %g1
	ldd	[%g1+%lo(.LC8)], %f8
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl	.L653
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f0
	fcmped	%f10, %f0
	nop
	fbule	.L657
	 nop
.L653:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L657:
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
	.align 32
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC12), %g1
	ldd	[%g1+%lo(.LC12)], %f8
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl	.L658
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f0
	fcmped	%f10, %f0
	nop
	fbule	.L662
	 nop
.L658:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L662:
	mov	0, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.align 32
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	add	%sp, -80, %sp
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fitod	%f8, %f0
	std	%f0, [%o0]
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
	.align 32
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%f0, %f0
	nop
	fbu	.L665
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L665
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L666
	 ld	[%g1+%lo(.LC16)], %f1
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f1
.L666:
	andcc	%o1, 1, %g0
	be	.L679
	 srl	%o1, 31, %g1
.L668:
	fmuls	%f0, %f1, %f0
	srl	%o1, 31, %g1
.L679:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L665
	 srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne	.L668
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L678:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne	.L668
	 add	%g1, %o1, %g1
	b	.L678
	 sra	%g1, 1, %o1
.L665:
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
	.align 32
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L681
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L681
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L682
	 ldd	[%g1+%lo(.LC20)], %f2
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f2
.L682:
	andcc	%o2, 1, %g0
	be	.L695
	 srl	%o2, 31, %g1
.L684:
	fmuld	%f0, %f2, %f0
	srl	%o2, 31, %g1
.L695:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L681
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne	.L684
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L694:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne	.L684
	 add	%g1, %o2, %g1
	b	.L694
	 sra	%g1, 1, %o2
.L681:
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
	.align 32
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%f0, %f0
	nop
	fbu	.L697
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L697
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L698
	 ldd	[%g1+%lo(.LC25)], %f2
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f2
.L698:
	andcc	%o2, 1, %g0
	be	.L711
	 srl	%o2, 31, %g1
.L700:
	fmuld	%f0, %f2, %f0
	srl	%o2, 31, %g1
.L711:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L697
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne	.L700
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L710:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne	.L700
	 add	%g1, %o2, %g1
	b	.L710
	 sra	%g1, 1, %o2
.L697:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L735
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 3
	bleu	.L720
	 or	%o0, %o1, %g1
	andcc	%g1, 3, %g0
	bne	.L720
	 and	%o2, -4, %g4
	mov	0, %g1
	ld	[%o0+%g1], %g3
.L733:
	ld	[%o1+%g1], %g2
	xor	%g2, %g3, %o5
	st	%o5, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L733
	 ld	[%o0+%g1], %g3
	cmp	%o2, %g1
	add	%o0, %g1, %g3
	add	%o1, %g1, %g4
	be	.L735
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %g2
	ldub	[%o1+%g1], %o1
	xor	%g2, %o1, %o5
	cmp	%o2, 1
	be	.L735
	 stb	%o5, [%o0+%g1]
	ldub	[%g3+1], %g2
	ldub	[%g4+1], %g1
	xor	%g1, %g2, %g1
	cmp	%o2, 2
	be	.L735
	 stb	%g1, [%g3+1]
	ldub	[%g3+2], %o2
	ldub	[%g4+2], %g1
	xor	%g1, %o2, %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L720:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L734:
	ldub	[%o1+%g1], %g4
	xor	%g4, %g3, %o5
	stb	%o5, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L734
	 ldub	[%o0+%g1], %g3
.L735:
	jmp	%o7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.align 32
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be	.L737
	 mov	%o0, %g1
.L738:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L738
	 add	%g1, 1, %g1
.L737:
	cmp	%o2, 0
	bne,a	.L752
	 ldub	[%o1], %g4
	jmp	%o7+8
	 stb	%g0, [%g1]
.L741:
	addcc	%o2, -1, %o2
	be,a	.L753
	 stb	%g0, [%g1]
	ldub	[%o1], %g4
.L752:
	sll	%g4, 24, %g3
	cmp	%g3, 0
	stb	%g4, [%g1]
	add	%g1, 1, %g1
	bne	.L741
	 add	%o1, 1, %o1
.L753:
	jmp	%o7+8
	 nop
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be	.L754
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L762:
	cmp	%g2, 0
	bne,a	.L757
	 add	%g1, 1, %g1
.L754:
	jmp	%o7+8
	 mov	%g1, %o0
.L757:
	cmp	%o1, %g1
	bne,a	.L762
	 ldsb	[%o0+%g1], %g2
	b	.L754
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.align 32
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	be,a	.L772
	 mov	0, %o0
.L764:
	mov	%o1, %g1
	b	.L767
	 sra	%g4, 24, %g4
.L766:
	be	.L772
	 add	%g1, 1, %g1
.L767:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L766
	 cmp	%g2, %g4
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	bne	.L764
	 add	%o0, 1, %o0
	mov	0, %o0
.L772:
	jmp	%o7+8
	 nop
	.size	strpbrk, .-strpbrk
	.align 4
	.align 32
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g2
	mov	0, %g4
.L776:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%g3, %o1
	bne	.L775
	 mov	%g4, %o0
	mov	%g2, %o0
.L775:
	cmp	%g1, 0
	mov	%o0, %g4
	bne	.L776
	 add	%g2, 1, %g2
	jmp	%o7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.align 32
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	ldub	[%o1], %o2
	sll	%o2, 24, %g3
	cmp	%g3, 0
	be	.L801
	 mov	%o0, %g4
	mov	%o1, %g1
.L781:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L781
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be	.L801
	 mov	%g4, %o0
	add	%o1, -1, %o0
	sra	%g3, 24, %o2
	b	.L798
	 add	%o0, %g1, %o0
.L800:
	be	.L799
	 add	%g4, 1, %g4
.L798:
	ldub	[%g4], %g1
	sll	%g1, 24, %o3
	sra	%o3, 24, %o4
	cmp	%o4, %o2
	bne	.L800
	 cmp	%o4, 0
	mov	%o1, %g2
	mov	%g4, %o5
	b	.L783
	 and	%g1, 0xff, %g1
.L785:
	ldub	[%o5], %g1
	cmp	%g1, 0
	be	.L784
	 add	%g2, 1, %g2
.L783:
	ldub	[%g2], %g3
	xor	%g2, %o0, %o3
	cmp	%g0, %o3
	addx	%g0, 0, %o4
	xor	%g3, %g1, %o3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	cmp	%g0, %o3
	subx	%g0, -1, %o3
	and	%g3, %o3, %g3
	andcc	%o4, %g3, %g0
	bne	.L785
	 add	%o5, 1, %o5
.L784:
	ldub	[%g2], %o5
	cmp	%g1, %o5
	be,a	.L801
	 mov	%g4, %o0
	b	.L798
	 add	%g4, 1, %g4
.L799:
	jmp	%o7+8
	 mov	0, %o0
.L801:
	jmp	%o7+8
	 nop
	.size	strstr, .-strstr
	.align 4
	.align 32
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
	fbl	.L812
	 std	%o2, [%sp+72]
	nop
	fbule	.L806
	 nop
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L813
	 fnegs	%f0, %f0
.L806:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L812:
	ldd	[%sp+72], %f2
	fcmped	%f2, %f8
	nop
	fbule	.L806
	 nop
	fnegs	%f0, %f0
.L813:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L814
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu	.L814
	 mov	0, %g2
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu	.L814
	 nop
	ldub	[%o2], %g1
	mov	%o0, %g2
	sll	%g1, 24, %o0
	b	.L820
	 sra	%o0, 24, %o4
.L824:
	mov	%o5, %g2
.L816:
	cmp	%o1, %g2
	blu,a	.L834
	 mov	0, %g2
.L820:
	ldsb	[%g2], %g1
	cmp	%g1, %o4
	bne	.L824
	 add	%g2, 1, %o5
	cmp	%o3, 1
	be	.L814
	 nop
.L819:
	b	.L817
	 mov	1, %g1
.L818:
	cmp	%g1, %o3
	be	.L814
	 nop
.L817:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be	.L818
	 add	%g1, 1, %g1
	cmp	%o1, %o5
	blu	.L825
	 sra	%o0, 24, %g1
	ldsb	[%o5], %g2
	cmp	%g1, %g2
	bne	.L816
	 add	%o5, 1, %g2
	mov	%o5, %g1
	mov	%g2, %o5
	b	.L819
	 mov	%g1, %g2
.L825:
	mov	0, %g2
.L814:
.L834:
	jmp	%o7+8
	 mov	%g2, %o0
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L836
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L836:
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
	.align 32
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
	fbl	.L863
	 sethi	%hi(.LC33), %g1
	ldd	[%g1+%lo(.LC33)], %f10
	fcmped	%f0, %f10
	nop
	fbul	.L864
	 mov	0, %g2
.L843:
	sethi	%hi(.LC34), %g4
	sethi	%hi(.LC33), %o0
	ldd	[%g4+%lo(.LC34)], %f14
	ldd	[%o0+%lo(.LC33)], %f16
	mov	0, %g1
.L849:
	fmuld	%f0, %f14, %f0
	fcmped	%f0, %f16
	nop
	fbge	.L849
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be	.L840
	 st	%g1, [%o2]
.L866:
	fnegs	%f0, %f0
.L840:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L864:
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f2
	fcmped	%f0, %f2
	nop
	fbuge	.L846
	 nop
	fcmpd	%f0, %f8
	nop
	fbne	.L855
	 fmovs	%f0, %f3
.L846:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L863:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f4
	fcmped	%f0, %f4
	fnegs	%f0, %f3
	nop
	fbug	.L865
	 fmovs	%f1, %f9
	fmovs	%f3, %f0
	b	.L843
	 mov	1, %g2
.L865:
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f6
	fcmped	%f0, %f6
	nop
	fbule	.L846
	 nop
	mov	1, %g2
.L844:
	fmovs	%f3, %f0
	fmovs	%f9, %f1
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f12
	mov	0, %g1
.L851:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f12
	nop
	fbl	.L851
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne	.L866
	 st	%g1, [%o2]
	b	.L840
	 nop
.L855:
	b	.L844
	 fmovs	%f1, %f9
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	orcc	%i1, %i0, %g0
	mov	%i0, %g1
	mov	0, %o2
	be	.L867
	 mov	0, %o3
.L870:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o5
	and	%o5, %i3, %i5
	sll	%g1, 31, %g4
	mov	0, %g2
	srl	%i1, 1, %i1
	subx	%g0, %g2, %o4
	srl	%g1, 1, %g1
	and	%o4, %i2, %i4
	addcc	%o3, %i5, %o3
	or	%g4, %i1, %i1
	srl	%i3, 31, %g3
	sll	%i2, 1, %i2
	addx	%o2, %i4, %o2
	orcc	%g1, %i1, %g0
	or	%g3, %i2, %i2
	bne	.L870
	 sll	%i3, 1, %i3
.L867:
	mov	%o2, %i0
	jmp	%i7+8
	 restore %g0, %o3, %o1
	.size	__muldi3, .-__muldi3
	.align 4
	.align 32
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	cmp	%o1, %o0
	blu	.L875
	 mov	1, %g1
	b	.L899
	 cmp	%o0, %o1
.L878:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L877
	 cmp	%g1, 0
.L875:
	cmp	%o1, 0
	bge,a	.L878
	 sll	%o1, 1, %o1
.L879:
	mov	0, %g4
.L885:
	cmp	%o0, %o1
	subx	%g0, -1, %g3
	sub	%g0, %g3, %g2
	cmp	%g3, 0
	and	%g1, %g2, %g2
	sub	%o0, %o1, %g3
	be	.L882
	 srl	%g1, 1, %g1
	mov	%g3, %o0
.L882:
	cmp	%g1, 0
	or	%g4, %g2, %g4
	bne	.L885
	 srl	%o1, 1, %o1
.L880:
	cmp	%o2, 0
.L900:
	bne,a	.L874
	 mov	%o0, %g4
.L874:
	jmp	%o7+8
	 mov	%g4, %o0
.L877:
	bne	.L879
	 mov	0, %g4
	b	.L900
	 cmp	%o2, 0
.L899:
	subx	%g0, -1, %g4
	cmp	%g4, 0
	be	.L880
	 sub	%o0, %o1, %o1
	b	.L880
	 mov	%o1, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	sra	%i0, 7, %g1
	cmp	%g1, %i0
	xor	%i0, %g1, %g1
	be	.L904
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%g1, 8, %o0
	add	%o0, -1, %i0
.L904:
	jmp	%i7+8
	 restore
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.align 32
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %o1
	cmp	%i0, %o1
	xor	%i0, %o1, %o0
	be	.L911
	 xor	%i1, %o1, %o1
.L909:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L911:
	cmp	%i1, %i0
	bne	.L909
	 nop
	jmp	%i7+8
	 restore %g0, 63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	orcc	%o0, 0, %g2
	be	.L918
	 mov	0, %o0
.L914:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne	.L914
	 sll	%o1, 1, %o1
.L918:
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	cmp	%o0, %o1
	srl	%o2, 3, %g4
	blu	.L923
	 and	%o2, -8, %o5
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L953
	 cmp	%o2, 0
.L923:
	cmp	%g4, 0
	sll	%g4, 3, %o3
	be	.L950
	 mov	0, %g1
.L926:
	add	%o1, %g1, %g3
	ldd	[%g3], %g2
	add	%o0, %g1, %o4
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne	.L926
	 std	%g2, [%o4]
	cmp	%o2, %o5
	bleu	.L958
	 nop
	sub	%o2, %o5, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L952
	 add	%o5, 1, %g1
	add	%o1, %g1, %g3
	add	%o0, %o5, %g4
	sub	%g4, %g3, %g2
	cmp	%g2, 2
	add	%o1, %o5, %o4
	bleu	.L954
	 mov	1, %g3
.L929:
	or	%o4, %g4, %g2
	and	%g2, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	andcc	%g2, %g3, %g0
	be	.L952
	 and	%o3, -4, %g3
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L956:
	st	%g2, [%g4+%g1]
	add	%g1, 4, %g1
	cmp	%g3, %g1
	bne,a	.L956
	 ld	[%o4+%g1], %g2
	cmp	%g3, %o3
	be	.L959
	 add	%g3, %o5, %o5
	ldub	[%o1+%o5], %o3
	add	%o5, 1, %g1
	cmp	%o2, %g1
	bleu	.L959
	 stb	%o3, [%o0+%o5]
	ldub	[%o1+%g1], %g4
	add	%o5, 2, %o4
	cmp	%o2, %o4
	bleu	.L959
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%o4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o4]
.L955:
	add	%g1, 1, %g1
.L952:
	ldub	[%o1+%o5], %g3
	cmp	%o2, %g1
	stb	%g3, [%o0+%o5]
	bne	.L955
	 mov	%g1, %o5
.L959:
	jmp	%o7+8
	 nop
.L954:
	b	.L929
	 mov	0, %g3
.L953:
	be	.L959
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L957:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L957
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L950:
	cmp	%o2, 0
	bne	.L952
	 add	%o5, 1, %g1
.L958:
	jmp	%o7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.align 32
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L964
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L984
	 cmp	%o2, 0
.L964:
	cmp	%g4, 0
	be	.L963
	 add	%g4, -1, %g1
	cmp	%g1, 8
	bleu	.L967
	 or	%o1, %o0, %g2
	and	%g2, 3, %g3
	add	%o1, 2, %g1
	cmp	%g0, %g3
	xor	%o0, %g1, %g1
	subx	%g0, -1, %o5
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%o5, %g1, %g0
	be	.L967
	 srl	%o2, 2, %o5
	and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L987:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L987
	 ld	[%o1+%g1], %g2
	sll	%o5, 1, %o5
	cmp	%g4, %o5
	be	.L988
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g4
	sth	%g4, [%o0+%g1]
.L963:
	andcc	%o2, 1, %g0
.L988:
	be	.L991
	 nop
	add	%o2, -1, %o2
.L986:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L984:
	be	.L991
	 add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
.L989:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a	.L989
	 ldub	[%o1+%o2], %g1
.L991:
	jmp	%o7+8
	 nop
.L967:
	sll	%g4, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L990:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a	.L990
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L991
	 nop
	b	.L986
	 add	%o2, -1, %o2
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	cmp	%o0, %o1
	srl	%o2, 2, %g3
	blu	.L996
	 and	%o2, -4, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L1026
	 cmp	%o2, 0
.L996:
	cmp	%g3, 0
	sll	%g3, 2, %o3
	be	.L1023
	 mov	0, %g1
	ld	[%o1+%g1], %o4
.L1029:
	st	%o4, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %o3
	bne,a	.L1029
	 ld	[%o1+%g1], %o4
	cmp	%o2, %g4
	bleu	.L1032
	 nop
	sub	%o2, %g4, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L1025
	 add	%g4, 1, %g1
	add	%o1, %g1, %g3
	add	%o0, %g4, %o5
	sub	%o5, %g3, %g2
	cmp	%g2, 2
	add	%o1, %g4, %o4
	bleu	.L1027
	 mov	1, %g3
.L1002:
	or	%o4, %o5, %g2
	and	%g2, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	andcc	%g2, %g3, %g0
	be	.L1025
	 and	%o3, -4, %g3
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L1030:
	st	%g2, [%o5+%g1]
	add	%g1, 4, %g1
	cmp	%g3, %g1
	bne,a	.L1030
	 ld	[%o4+%g1], %g2
	cmp	%g3, %o3
	be	.L1033
	 add	%g3, %g4, %g4
	ldub	[%o1+%g4], %o3
	add	%g4, 1, %g1
	cmp	%o2, %g1
	bleu	.L1033
	 stb	%o3, [%o0+%g4]
	ldub	[%o1+%g1], %o5
	add	%g4, 2, %o4
	cmp	%o2, %o4
	bleu	.L1033
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%o4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o4]
.L1028:
	add	%g1, 1, %g1
.L1025:
	ldub	[%o1+%g4], %g3
	cmp	%o2, %g1
	stb	%g3, [%o0+%g4]
	bne	.L1028
	 mov	%g1, %g4
.L1033:
	jmp	%o7+8
	 nop
.L1027:
	b	.L1002
	 mov	0, %g3
.L1026:
	be	.L1033
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1031:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L1031
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L1023:
	cmp	%o2, 0
	bne	.L1025
	 add	%g4, 1, %g1
.L1032:
	jmp	%o7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.align 32
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
	.align 32
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	orcc	%o0, 0, %g1
	bge	.L1036
	 fitod	%f8, %f0
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f2
	faddd	%f0, %f2, %f0
.L1036:
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
	.align 32
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	orcc	%o0, 0, %g1
	bge	.L1038
	 fitod	%f8, %f0
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f2
	faddd	%f0, %f2, %f0
.L1038:
	fdtos	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__uitof, .-__uitof
	.align 4
	.align 32
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
	.align 32
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
	.align 32
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
	.align 32
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	sra	%o0, 15, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne	.L1042
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	13, %g1
	sra	%o0, 1, %g1
	cmp	%g1, 0
	bne	.L1042
	 mov	14, %g1
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L1042:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne	.L1060
	 mov	0, %g1
	andcc	%o0, 2, %g0
	bne	.L1060
	 mov	1, %g1
	andcc	%o0, 4, %g0
	bne	.L1060
	 mov	2, %g1
	andcc	%o0, 8, %g0
	bne	.L1060
	 mov	3, %g1
	andcc	%o0, 16, %g0
	bne	.L1060
	 mov	4, %g1
	andcc	%o0, 32, %g0
	bne	.L1060
	 mov	5, %g1
	andcc	%o0, 64, %g0
	bne	.L1060
	 mov	6, %g1
	andcc	%o0, 128, %g0
	bne	.L1060
	 mov	7, %g1
	andcc	%o0, 256, %g0
	bne	.L1060
	 mov	8, %g1
	andcc	%o0, 512, %g0
	bne	.L1060
	 mov	9, %g1
	andcc	%o0, 1024, %g0
	bne	.L1060
	 mov	10, %g1
	andcc	%o0, 2048, %g0
	bne	.L1060
	 mov	11, %g1
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne	.L1060
	 mov	12, %g1
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne	.L1060
	 mov	13, %g1
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne	.L1060
	 mov	14, %g1
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L1060:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC44:
	.long	1191182336
	.section	".text"
	.align 4
	.align 32
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
	fbge,a	.L1085
	 fsubs	%f8, %f9, %f1
	fstoi	%f8, %f0
	st	%f0, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1085:
	fstoi	%f1, %f2
	st	%f2, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(32768), %g1
	add	%g2, %g1, %g1
	st	%g1, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.align 32
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	sra	%o0, 1, %g1
	and	%o0, 1, %g3
	sra	%o0, 2, %g2
	and	%g1, 1, %g1
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 3, %g3
	sra	%o0, 4, %g2
	add	%g1, %g4, %g1
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 5, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 6, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 7, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 8, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 9, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 10, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 11, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 12, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 13, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 14, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	and	%g2, 1, %g3
	add	%g1, %g3, %g1
	sra	%o0, 15, %o0
	add	%g1, %o0, %g4
	jmp	%o7+8
	 and	%g4, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.align 32
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	sra	%o0, 1, %g1
	and	%o0, 1, %g3
	sra	%o0, 2, %g2
	and	%g1, 1, %g1
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 3, %g3
	sra	%o0, 4, %g2
	add	%g1, %g4, %g1
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 5, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 6, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 7, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 8, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 9, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 10, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 11, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 12, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 13, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 14, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	and	%g2, 1, %g3
	add	%g1, %g3, %g1
	sra	%o0, 15, %o0
	jmp	%o7+8
	 add	%g1, %o0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	orcc	%o0, 0, %g2
	be	.L1094
	 mov	0, %o0
.L1090:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne	.L1090
	 sll	%o1, 1, %o1
.L1094:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	orcc	%o0, 0, %g2
	be	.L1103
	 mov	0, %o0
	cmp	%o1, 0
	be	.L1103
	 nop
.L1097:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	srl	%o1, 1, %o1
	and	%g1, %g2, %g1
	cmp	%o1, 0
	add	%o0, %g1, %o0
	bne	.L1097
	 sll	%g2, 1, %g2
.L1103:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.align 32
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	cmp	%o0, %o1
	bgu	.L1105
	 mov	1, %g1
	b	.L1129
	 subx	%g0, -1, %g4
.L1108:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L1107
	 cmp	%g1, 0
.L1105:
	cmp	%o1, 0
	bge,a	.L1108
	 sll	%o1, 1, %o1
.L1109:
	mov	0, %g4
.L1115:
	cmp	%o0, %o1
	subx	%g0, -1, %g3
	sub	%g0, %g3, %g2
	cmp	%g3, 0
	and	%g1, %g2, %g2
	sub	%o0, %o1, %g3
	be	.L1112
	 srl	%g1, 1, %g1
	mov	%g3, %o0
.L1112:
	cmp	%g1, 0
	or	%g4, %g2, %g4
	bne	.L1115
	 srl	%o1, 1, %o1
.L1110:
	cmp	%o2, 0
.L1130:
	bne,a	.L1104
	 mov	%o0, %g4
.L1104:
	jmp	%o7+8
	 mov	%g4, %o0
.L1107:
	bne	.L1109
	 mov	0, %g4
	b	.L1130
	 cmp	%o2, 0
.L1129:
	cmp	%g4, 0
	be	.L1110
	 sub	%o0, %o1, %o1
	b	.L1110
	 mov	%o1, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
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
	fbl	.L1131
	 mov	-1, %o0
	nop
	fbule	.L1135
	 mov	1, %o0
.L1131:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1135:
	mov	0, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
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
	fbl	.L1136
	 mov	-1, %o0
	nop
	fbule	.L1140
	 mov	1, %o0
.L1136:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1140:
	mov	0, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.align 32
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
	.align 32
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
	.align 32
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl	.L1153
	 mov	%o0, %g3
	be	.L1154
	 mov	0, %o0
	mov	0, %o4
.L1145:
	mov	1, %g4
	mov	0, %o0
.L1147:
	and	%o1, 1, %g1
	and	%g4, 0xff, %g2
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	xor	%g2, 32, %g2
	addx	%g0, 0, %o5
	sub	%g0, %g1, %g1
	cmp	%g0, %g2
	and	%g1, %g3, %g1
	addx	%g0, 0, %g2
	andcc	%o5, %g2, %g0
	add	%o0, %g1, %o0
	sll	%g3, 1, %g3
	bne	.L1147
	 add	%g4, 1, %g4
	cmp	%o4, 0
	bne,a	.L1154
	 sub	%g0, %o0, %o0
.L1154:
	jmp	%o7+8
	 nop
.L1153:
	sub	%g0, %o1, %o1
	b	.L1145
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	mov	1, %g1
	bge	.L1156
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	0, %g1
	mov	1, %o5
.L1156:
	cmp	%o1, 0
	bge	.L1187
	 cmp	%o0, %o1
	sub	%g0, %o1, %o1
	mov	%g1, %o5
	cmp	%o0, %o1
.L1187:
	mov	%o0, %g2
	bleu	.L1184
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1188:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,a	.L1188
	 sll	%o1, 1, %o1
	cmp	%g1, 0
	be	.L1161
	 mov	0, %o0
.L1160:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	sub	%g0, %g4, %g3
	cmp	%g4, 0
	and	%g1, %g3, %g3
	sub	%g2, %o1, %g4
	be	.L1164
	 srl	%g1, 1, %g1
	mov	%g4, %g2
.L1164:
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne	.L1160
	 srl	%o1, 1, %o1
.L1161:
	cmp	%o5, 0
	be	.L1189
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1189:
	jmp	%o7+8
	 nop
.L1184:
	b	.L1161
	 subx	%g0, -1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1191
	 mov	0, %o4
	sub	%g0, %o0, %o0
	mov	1, %o4
.L1191:
	sra	%o1, 31, %g2
	xor	%g2, %o1, %g1
	sub	%g1, %g2, %g1
	cmp	%o0, %g1
	mov	%o0, %g3
	bleu	.L1218
	 mov	1, %o1
	sll	%g1, 1, %g1
.L1221:
	cmp	%g1, %o0
	sll	%o1, 1, %o1
	addx	%g0, 0, %o5
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	andcc	%o5, %g4, %g0
	bne,a	.L1221
	 sll	%g1, 1, %g1
	cmp	%o1, 0
	be	.L1222
	 cmp	%o4, 0
.L1194:
	cmp	%g3, %g1
	srl	%o1, 1, %o1
	blu	.L1198
	 sub	%g3, %g1, %o0
	mov	%o0, %g3
.L1198:
	cmp	%o1, 0
	bne	.L1194
	 srl	%g1, 1, %g1
.L1202:
	mov	%g3, %o0
	cmp	%o4, 0
.L1222:
	be	.L1223
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1223:
	jmp	%o7+8
	 nop
.L1218:
	blu	.L1202
	 sub	%o0, %g1, %g1
	b	.L1202
	 mov	%g1, %g3
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1225
	 mov	1, %g3
	b	.L1387
	 xor	%o1, %o0, %g2
.L1230:
	cmp	%g1, %o0
	addx	%g0, 0, %g2
	cmp	%g0, %o3
	addx	%g0, 0, %o4
	andcc	%g2, %o4, %g0
	mov	%g4, %o5
	be	.L1229
	 srl	%o3, 16, %o3
	mov	%g4, %g3
	mov	%g1, %o1
.L1225:
	sll	%o1, 16, %g4
	sll	%o1, 17, %g1
	cmp	%g4, 0
	srl	%g1, 16, %g1
	sll	%g3, 17, %o3
	bge	.L1230
	 sll	%g3, 1, %g4
	cmp	%o0, %o1
	sub	%o0, %o1, %g1
	sll	%g1, 16, %g1
	subx	%g0, -1, %o4
	cmp	%o4, 0
	be	.L1297
	 srl	%g1, 16, %g1
	mov	%g1, %o0
.L1297:
	sll	%g3, 16, %g4
	sub	%g0, %o4, %o5
	srl	%g4, 17, %g2
	sll	%o0, 16, %o0
	and	%g3, %o5, %g3
	cmp	%g2, 0
	srl	%o0, 16, %o0
	mov	%g3, %o4
	be	.L1388
	 srl	%o1, 1, %o3
.L1300:
	cmp	%o0, %o3
	sub	%o0, %o3, %g1
	sll	%g1, 16, %g3
	subx	%g0, -1, %g1
	cmp	%g1, 0
	be	.L1238
	 srl	%g3, 16, %o3
	mov	%o3, %o0
.L1238:
	sub	%g0, %g1, %g1
	and	%g2, %g1, %g1
	srl	%g4, 18, %o3
	or	%g1, %o4, %g1
	sll	%o0, 16, %o0
	cmp	%o3, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 2, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	be	.L1242
	 srl	%g2, 16, %o4
	mov	%o4, %o0
.L1242:
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1244
	 mov	0, %o5
	mov	%o3, %o5
.L1244:
	srl	%g4, 19, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 3, %g2
	cmp	%o0, %g2
	sub	%o0, %g2, %g3
	sll	%g3, 16, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	be	.L1246
	 srl	%o4, 16, %g2
	mov	%g2, %o0
.L1246:
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	be	.L1248
	 mov	0, %g3
	mov	%o3, %g3
.L1248:
	srl	%g4, 20, %o3
	or	%g1, %g3, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 4, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	be	.L1250
	 srl	%g2, 16, %o4
	mov	%o4, %o0
.L1250:
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1252
	 mov	0, %o5
	mov	%o3, %o5
.L1252:
	srl	%g4, 21, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 5, %g2
	cmp	%o0, %g2
	sub	%o0, %g2, %g3
	sll	%g3, 16, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	be	.L1254
	 srl	%o4, 16, %g2
	mov	%g2, %o0
.L1254:
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	be	.L1256
	 mov	0, %g3
	mov	%o3, %g3
.L1256:
	srl	%g4, 22, %o3
	or	%g1, %g3, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 6, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	be	.L1258
	 srl	%g2, 16, %o4
	mov	%o4, %o0
.L1258:
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1260
	 mov	0, %o5
	mov	%o3, %o5
.L1260:
	srl	%g4, 23, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 7, %g2
	cmp	%o0, %g2
	sub	%o0, %g2, %g3
	sll	%g3, 16, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	bne	.L1389
	 srl	%o4, 16, %g2
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	bne	.L1390
	 mov	0, %g3
.L1264:
	srl	%g4, 24, %o3
	or	%g1, %g3, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 8, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	bne	.L1391
	 srl	%g2, 16, %o4
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	bne	.L1392
	 mov	0, %o5
.L1268:
	srl	%g4, 25, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 9, %g2
	cmp	%o0, %g2
	sub	%o0, %g2, %g3
	sll	%g3, 16, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	bne	.L1393
	 srl	%o4, 16, %g2
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	bne	.L1394
	 mov	0, %g3
.L1272:
	srl	%g4, 26, %o3
	or	%g1, %g3, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 10, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	bne	.L1395
	 srl	%g2, 16, %o4
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	bne	.L1396
	 mov	0, %o5
.L1276:
	srl	%g4, 27, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 11, %g2
	cmp	%o0, %g2
	sub	%o0, %g2, %g3
	sll	%g3, 16, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	bne	.L1397
	 srl	%o4, 16, %g2
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	bne	.L1398
	 mov	0, %g3
.L1280:
	srl	%g4, 28, %o3
	or	%g1, %g3, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 12, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	bne	.L1399
	 srl	%g2, 16, %o4
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	bne	.L1400
	 mov	0, %o5
.L1284:
	srl	%g4, 29, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 13, %g2
.L1403:
	cmp	%o0, %g2
	sub	%o0, %g2, %g3
	sll	%g3, 16, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	be	.L1286
	 srl	%o4, 16, %g2
	mov	%g2, %o0
.L1286:
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	be	.L1288
	 mov	0, %g3
	mov	%o3, %g3
.L1288:
	srl	%g4, 30, %o3
	or	%g1, %g3, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	be	.L1232
	 srl	%o1, 14, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %g3
	cmp	%g3, 0
	be	.L1290
	 srl	%g2, 16, %o4
	mov	%o4, %o0
.L1290:
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1292
	 mov	0, %o4
	mov	%o3, %o4
.L1292:
	or	%g1, %o4, %g1
	cmp	%g4, 0
	mov	%g1, %o5
	bge	.L1232
	 srl	%o1, 15, %o1
	sub	%o0, %o1, %g4
	sll	%g4, 16, %o3
	cmp	%o0, %o1
	srl	%o3, 16, %g2
	blu	.L1294
	 subx	%g0, -1, %o5
	mov	%g2, %o0
.L1294:
	sll	%o0, 16, %g3
	srl	%g3, 16, %o0
	or	%g1, %o5, %o5
.L1232:
	cmp	%o2, 0
.L1406:
	bne,a	.L1295
	 mov	%o0, %o5
.L1295:
	sll	%o5, 16, %o2
	jmp	%o7+8
	 srl	%o2, 16, %o0
.L1229:
	cmp	%o3, 0
	be	.L1232
	 cmp	%o0, %g1
	sub	%o0, %g1, %o5
	sll	%o5, 16, %g2
	subx	%g0, -1, %o4
	cmp	%o4, 0
	bne	.L1401
	 srl	%g2, 16, %o3
	sll	%o0, 16, %o0
	cmp	%o4, 0
	srl	%o0, 16, %o0
	bne	.L1402
	 mov	0, %o4
.L1236:
	sethi	%hi(31744), %o5
	or	%o5, 1023, %g2
	and	%o1, %g2, %o3
	sll	%g4, 16, %g4
	and	%g2, %g3, %g2
	b	.L1300
	 mov	%g1, %o1
.L1390:
	b	.L1264
	 mov	%o3, %g3
.L1389:
	mov	%g2, %o0
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	be	.L1264
	 mov	0, %g3
	b	.L1264
	 mov	%o3, %g3
.L1402:
	sethi	%hi(31744), %o5
.L1405:
	or	%o5, 1023, %g2
	and	%o1, %g2, %o3
	mov	%g4, %o4
	and	%g2, %g3, %g2
	mov	%g1, %o1
	b	.L1300
	 sll	%g4, 16, %g4
.L1401:
	mov	%o3, %o0
	sll	%o0, 16, %o0
	cmp	%o4, 0
	srl	%o0, 16, %o0
	be	.L1236
	 mov	0, %o4
	b	.L1405
	 sethi	%hi(31744), %o5
.L1392:
	b	.L1268
	 mov	%o3, %o5
.L1391:
	mov	%o4, %o0
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1268
	 mov	0, %o5
	b	.L1268
	 mov	%o3, %o5
.L1394:
	b	.L1272
	 mov	%o3, %g3
.L1393:
	mov	%g2, %o0
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	be	.L1272
	 mov	0, %g3
	b	.L1272
	 mov	%o3, %g3
.L1396:
	b	.L1276
	 mov	%o3, %o5
.L1395:
	mov	%o4, %o0
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1276
	 mov	0, %o5
	b	.L1276
	 mov	%o3, %o5
.L1398:
	b	.L1280
	 mov	%o3, %g3
.L1397:
	mov	%g2, %o0
	sll	%o0, 16, %o0
	cmp	%o5, 0
	srl	%o0, 16, %o0
	be	.L1280
	 mov	0, %g3
	b	.L1280
	 mov	%o3, %g3
.L1400:
	mov	%o3, %o5
.L1407:
	srl	%g4, 29, %o3
	or	%g1, %o5, %g1
	cmp	%o3, 0
	mov	%g1, %o5
	bne	.L1403
	 srl	%o1, 13, %g2
	b	.L1406
	 cmp	%o2, 0
.L1399:
	mov	%o4, %o0
	sll	%o0, 16, %o0
	cmp	%g3, 0
	srl	%o0, 16, %o0
	be	.L1284
	 mov	0, %o5
	b	.L1407
	 mov	%o3, %o5
.L1387:
	cmp	%g0, %g2
	sub	%o0, %o1, %g1
	sll	%g1, 16, %g1
	subx	%g0, -1, %o5
	cmp	%g2, 0
	be	.L1404
	 srl	%g1, 16, %g1
.L1227:
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	b	.L1232
	 and	%o5, 0xff, %o5
.L1404:
	b	.L1227
	 mov	%g1, %o0
.L1388:
	b	.L1232
	 mov	%g3, %o5
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	cmp	%o0, %o1
	bgu	.L1409
	 mov	1, %g1
	b	.L1433
	 subx	%g0, -1, %g4
.L1412:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be	.L1411
	 cmp	%g1, 0
.L1409:
	cmp	%o1, 0
	bge,a	.L1412
	 sll	%o1, 1, %o1
.L1413:
	mov	0, %g4
.L1419:
	cmp	%o0, %o1
	subx	%g0, -1, %g3
	sub	%g0, %g3, %g2
	cmp	%g3, 0
	and	%g1, %g2, %g2
	sub	%o0, %o1, %g3
	be	.L1416
	 srl	%g1, 1, %g1
	mov	%g3, %o0
.L1416:
	cmp	%g1, 0
	or	%g4, %g2, %g4
	bne	.L1419
	 srl	%o1, 1, %o1
.L1414:
	cmp	%o2, 0
.L1434:
	bne,a	.L1408
	 mov	%o0, %g4
.L1408:
	jmp	%o7+8
	 mov	%g4, %o0
.L1411:
	bne	.L1413
	 mov	0, %g4
	b	.L1434
	 cmp	%o2, 0
.L1433:
	cmp	%g4, 0
	be	.L1414
	 sub	%o0, %o1, %o1
	b	.L1414
	 mov	%o1, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1436
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1436:
	be	.L1441
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %g1, %g1
	sll	%o0, %o2, %g4
	sll	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1441:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1443
	 cmp	%o2, 0
	sra	%o0, 31, %g4
	sra	%o0, %o2, %o1
	mov	%g4, %o0
.L1448:
	jmp	%o7+8
	 nop
.L1443:
	be	.L1448
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o1
	sra	%o0, %o2, %g4
	or	%g1, %o1, %o1
	jmp	%o7+8
	 mov	%g4, %o0
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srl	%o1, 24, %g1
	sll	%o0, 8, %g2
	sethi	%hi(64512), %g4
	sll	%o0, 24, %o4
	or	%g2, %g1, %g2
	or	%g4, 768, %g4
	srl	%o0, 8, %o5
	srl	%o1, 8, %g3
	and	%o5, %g4, %o5
	and	%g2, 255, %o2
	sethi	%hi(16711680), %o3
	srl	%o0, 24, %g1
	or	%o4, %g3, %g3
	sll	%o1, 24, %o0
	and	%g2, %o3, %g2
	or	%o0, %o2, %o0
	or	%g1, %o5, %g1
	sll	%o1, 8, %o1
	and	%g3, %g4, %g4
	and	%o1, %o3, %o3
	or	%g1, %g2, %g1
	or	%o0, %g4, %o5
	or	%o5, %o3, %o0
	jmp	%o7+8
	 or	%g1, %o4, %o1
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.align 32
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	sethi	%hi(64512), %g3
	sll	%o0, 24, %g4
	srl	%o0, 8, %g2
	srl	%o0, 24, %g1
	or	%g3, 768, %g3
	or	%g1, %g4, %g1
	sll	%o0, 8, %o0
	and	%g2, %g3, %g4
	sethi	%hi(16711680), %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %g3
	jmp	%o7+8
	 or	%g1, %g3, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.align 32
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	sethi	%hi(64512), %g2
	or	%g2, 1023, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %o5
	mov	16, %g1
	sll	%o5, 4, %o5
	sub	%g1, %o5, %g1
	srl	%o0, %g1, %g1
	or	%g2, 768, %g3
	and	%g1, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %o0
	mov	8, %o3
	sll	%o0, 3, %g4
	sub	%o3, %g4, %o4
	srl	%g1, %o4, %g1
	and	%g1, 240, %g2
	cmp	%g0, %g2
	mov	4, %o0
	subx	%g0, -1, %g3
	sll	%g3, 2, %g3
	sub	%o0, %g3, %o3
	srl	%g1, %o3, %g1
	and	%g1, 12, %o4
	cmp	%g0, %o4
	subx	%g0, -1, %g2
	mov	2, %o4
	sll	%g2, 1, %g2
	sub	%o4, %g2, %o0
	srl	%g1, %o0, %g1
	add	%g4, %o5, %o5
	andcc	%g1, 2, %g0
	add	%g3, %o5, %g4
	bne	.L1453
	 mov	0, %g3
	sub	%o4, %g1, %g3
.L1453:
	add	%g2, %g4, %o3
	jmp	%o7+8
	 add	%g3, %o3, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.align 32
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o0, %o2
	bl	.L1461
	 mov	0, %o0
	bg	.L1461
	 mov	2, %o0
	cmp	%o1, %o3
	blu	.L1461
	 mov	0, %o0
	bgu	.L1461
	 mov	2, %o0
	mov	1, %o0
.L1461:
	jmp	%o7+8
	 nop
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.align 32
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1467
	 mov	-1, %o0
	bg	.L1467
	 mov	1, %o0
	cmp	%o1, %o3
	blu	.L1467
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1467:
	jmp	%o7+8
	 nop
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.align 32
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%o0, %g1, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %o5
	sll	%o5, 4, %o5
	srl	%o0, %o5, %g1
	and	%g1, 255, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g4
	sll	%g4, 3, %g4
	srl	%g1, %g4, %g1
	and	%g1, 15, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %o0
	sll	%o0, 2, %g3
	srl	%g1, %g3, %g1
	and	%g1, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %o0
	sll	%o0, 1, %g2
	srl	%g1, %g2, %g1
	and	%g1, 3, %g1
	xnor	%g0, %g1, %o0
	add	%g4, %o5, %g4
	and	%o0, 1, %o0
	srl	%g1, 1, %g1
	mov	2, %o5
	add	%g3, %g4, %g3
	sub	%o5, %g1, %g4
	sub	%g0, %o0, %g1
	and	%g1, %g4, %g1
	add	%g2, %g3, %g2
	jmp	%o7+8
	 add	%g1, %g2, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.align 32
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	andcc	%o2, 32, %g0
	be,a	.L1470
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1470:
	be	.L1475
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %g4
	srl	%o0, %o2, %o0
	or	%g1, %g4, %o1
.L1475:
	jmp	%o7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -96, %sp
	sethi	%hi(64512), %i2
	or	%i2, 1023, %i2
	and	%i0, %i2, %i3
	and	%i1, %i2, %i4
	mov	%i4, %o1
	call	.umul, 0
	 mov	%i3, %o0
	srl	%i0, 16, %i0
	mov	%o0, %i5
	mov	%i0, %o1
	call	.umul, 0
	 mov	%i4, %o0
	srl	%i5, 16, %i4
	add	%o0, %i4, %i4
	srl	%i1, 16, %i1
	sll	%i4, 16, %g1
	and	%i5, %i2, %g2
	mov	%i1, %o1
	mov	%i3, %o0
	add	%g2, %g1, %i5
	call	.umul, 0
	 srl	%g1, 16, %i3
	add	%o0, %i3, %i3
	and	%i5, %i2, %g3
	sll	%i3, 16, %g1
	mov	%i1, %o1
	mov	%i0, %o0
	call	.umul, 0
	 add	%g3, %g1, %i1
	srl	%i4, 16, %i2
	add	%i2, %o0, %g4
	srl	%i3, 16, %o0
	jmp	%i7+8
	 restore %g4, %o0, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -96, %sp
	sethi	%hi(64512), %l2
	or	%l2, 1023, %l2
	and	%i3, %l2, %i5
	mov	%i1, %l0
	and	%i1, %l2, %i1
	mov	%i5, %o1
	call	.umul, 0
	 mov	%i1, %o0
	srl	%l0, 16, %l3
	mov	%o0, %i4
	mov	%l3, %o1
	call	.umul, 0
	 mov	%i5, %o0
	srl	%i4, 16, %l1
	add	%o0, %l1, %i5
	srl	%i3, 16, %l4
	and	%i4, %l2, %g2
	sll	%i5, 16, %g1
	mov	%l4, %o1
	mov	%i1, %o0
	srl	%g1, 16, %i4
	call	.umul, 0
	 add	%g2, %g1, %i1
	add	%o0, %i4, %l1
	and	%i1, %l2, %g3
	sll	%l1, 16, %g1
	mov	%l4, %o1
	mov	%l3, %o0
	call	.umul, 0
	 add	%g3, %g1, %i1
	srl	%i5, 16, %l2
	add	%l2, %o0, %g4
	srl	%l1, 16, %o2
	mov	%i2, %o1
	mov	%l0, %o0
	call	.umul, 0
	 add	%g4, %o2, %i2
	mov	%i0, %o1
	mov	%o0, %g1
	mov	%i3, %o0
	call	.umul, 0
	 add	%g1, %i2, %i0
	jmp	%i7+8
	 restore %i0, %o0, %o0
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.align 32
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	subcc	%g0, %o1, %o1
	jmp	%o7+8
	 subx	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.align 32
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	xor	%o0, %o1, %o1
	srl	%o1, 16, %g1
	xor	%g1, %o1, %g3
	srl	%g3, 8, %g2
	xor	%g2, %g3, %g4
	srl	%g4, 4, %g1
	xor	%g1, %g4, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o1
	and	%g1, 15, %g1
	sra	%o1, %g1, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.align 32
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	srl	%o0, 16, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 8, %g1
	xor	%g1, %o0, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	sethi	%hi(26624), %g3
	and	%g1, 15, %g1
	or	%g3, 406, %g4
	sra	%g4, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.align 32
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	sll	%o0, 31, %g2
	srl	%o1, 1, %g4
	sethi	%hi(1431655424), %g1
	or	%g2, %g4, %o2
	or	%g1, 341, %g1
	and	%o2, %g1, %o5
	srl	%o0, 1, %g3
	and	%g3, %g1, %o4
	subcc	%o1, %o5, %g3
	subx	%o0, %o4, %g2
	sethi	%hi(858992640), %g1
	sll	%g2, 30, %g4
	srl	%g3, 2, %o4
	or	%g1, 819, %g1
	or	%g4, %o4, %o1
	and	%g2, %g1, %o2
	and	%g3, %g1, %o3
	srl	%g2, 2, %o5
	and	%o1, %g1, %g2
	addcc	%g2, %o3, %g4
	and	%o5, %g1, %o0
	addx	%o0, %o2, %o4
	srl	%g4, 4, %g3
	sll	%o4, 28, %g1
	or	%g1, %g3, %o5
	sethi	%hi(252644352), %g1
	addcc	%o5, %g4, %o0
	srl	%o4, 4, %o1
	or	%g1, 783, %g1
	addx	%o1, %o4, %o2
	and	%o2, %g1, %g2
	and	%o0, %g1, %g1
	add	%g2, %g1, %o3
	srl	%o3, 16, %g1
	add	%g1, %o3, %g1
	srl	%g1, 8, %g4
	add	%g4, %g1, %o4
	jmp	%o7+8
	 and	%o4, 127, %o0
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.align 32
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g3
	srl	%o0, 1, %g1
	and	%g1, %g3, %g1
	sub	%o0, %g1, %o0
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	srl	%o0, 2, %g4
	and	%g4, %g1, %g2
	and	%o0, %g1, %g3
	add	%g2, %g3, %o0
	srl	%o0, 4, %g1
	sethi	%hi(252644352), %g4
	or	%g4, 783, %g2
	add	%g1, %o0, %g1
	and	%g1, %g2, %g1
	srl	%g1, 16, %g3
	add	%g3, %g1, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %g4
	jmp	%o7+8
	 and	%g4, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
	.align 8
.LC46:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC46), %g2
	andcc	%o2, 1, %g0
	ldd	[%sp+72], %f8
	ldd	[%g2+%lo(.LC46)], %f0
	be	.L1484
	 mov	%o2, %g1
.L1486:
	fmuld	%f0, %f8, %f0
.L1484:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1485
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne	.L1486
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1492:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne	.L1486
	 add	%g4, %g1, %o0
	b	.L1492
	 sra	%o0, 1, %g1
.L1485:
	cmp	%o2, 0
	bge	.L1483
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f2
	fdivd	%f2, %f0, %f0
.L1483:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC48:
	.long	1065353216
	.section	".text"
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC48), %g2
	andcc	%o1, 1, %g0
	ld	[%sp+76], %f8
	ld	[%g2+%lo(.LC48)], %f0
	be	.L1494
	 mov	%o1, %g1
.L1496:
	fmuls	%f0, %f8, %f0
.L1494:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1495
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne	.L1496
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1502:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne	.L1496
	 add	%g4, %g1, %o0
	b	.L1502
	 sra	%o0, 1, %g1
.L1495:
	cmp	%o1, 0
	bge	.L1493
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f1
	fdivs	%f1, %f0, %f0
.L1493:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.align 32
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1509
	 mov	0, %o0
	bgu	.L1509
	 mov	2, %o0
	cmp	%o1, %o3
	blu	.L1509
	 mov	0, %o0
	bgu	.L1509
	 mov	2, %o0
	mov	1, %o0
.L1509:
	jmp	%o7+8
	 nop
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.align 32
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1515
	 mov	-1, %o0
	bgu	.L1515
	 mov	1, %o0
	cmp	%o1, %o3
	blu	.L1515
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1515:
	jmp	%o7+8
	 nop
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
