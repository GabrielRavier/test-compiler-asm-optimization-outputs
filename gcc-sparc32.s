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
	be	.L42
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L38:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L38
	 ldub	[%o1+%o2], %g1
.L42:
	jmp	%o7+8
	 nop
.L2:
	be	.L42
	 cmp	%o2, 0
	be	.L42
	 add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L13
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L13
	 add	%o1, 1, %g1
	sub	%o0, %g1, %g1
	cmp	%g1, 2
	bleu	.L37
	 mov	1, %g2
.L6:
	andcc	%g2, 1, %g0
	be	.L13
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L39:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L39
	 ld	[%o1+%g1], %g2
	add	%o1, %g1, %g4
	add	%o0, %g1, %g3
	cmp	%o2, %g1
	be	.L42
	 sub	%o2, %g1, %g2
	ldub	[%o1+%g1], %o5
	cmp	%g2, 1
	be	.L42
	 stb	%o5, [%o0+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be	.L42
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L37:
	b	.L6
	 mov	0, %g2
.L13:
	mov	0, %g1
	ldub	[%o1+%g1], %g2
.L40:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L40
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
	bne	.L44
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L47:
	addcc	%o3, -1, %o3
	be,a	.L54
	 mov	0, %o0
.L44:
	ldub	[%o1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0-1]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne	.L47
	 add	%o1, 1, %o1
.L54:
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
	bne	.L56
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L58:
	be	.L59
	 add	%o0, 1, %o0
.L56:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L58
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L59:
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
	bne,a	.L72
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L66:
	addcc	%o2, -1, %o2
	be	.L68
	 add	%o1, 1, %o1
	ldub	[%o0], %g1
.L72:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be	.L66
	 add	%o0, 1, %o0
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L68:
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
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	add	%o2, -1, %o2
	and	%o1, 0xff, %o1
	add	%o0, %o2, %o2
	b	.L80
	 add	%o0, -1, %g2
.L82:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L83
	 add	%o2, -1, %o2
.L80:
	cmp	%o2, %g2
	bne	.L82
	 mov	%o2, %o0
	mov	0, %o0
.L83:
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
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be	.L96
	 nop
.L91:
	ldub	[%o1+1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L91
	 add	%o1, 1, %o1
.L96:
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
	bne	.L98
	 and	%o1, 0xff, %o1
.L105:
	jmp	%o7+8
	 nop
.L100:
	add	%o0, 1, %o0
	cmp	%g1, 0
	be	.L105
	 ldub	[%o0], %g1
.L98:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a	.L100
	 ldsb	[%o0+1], %g1
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L108:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L110
	 cmp	%g1, 0
	bne	.L108
	 add	%o0, 1, %o0
	mov	0, %o0
.L110:
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
	be	.L112
	 add	%o1, -1, %o1
	b	.L119
	 and	%g3, 0xff, %g3
.L114:
	add	%g1, 1, %g1
	ldsb	[%o1+%g1], %g4
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g4
	bne	.L118
	 ldub	[%o1+%g1], %o4
.L112:
	cmp	%g2, 0
	bne,a	.L114
	 ldub	[%o0+%g1], %g3
	mov	0, %g3
	and	%o4, 0xff, %o0
	jmp	%o7+8
	 sub	%g3, %o0, %o0
.L118:
	and	%g3, 0xff, %g3
.L119:
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
	be	.L123
	 mov	%o0, %g1
.L122:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L122
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L123:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L125
	 mov	0, %g2
	ldub	[%o0], %g2
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g2, 0
	bne	.L129
	 add	%o1, %o2, %o2
	b	.L140
	 ldub	[%o1], %g3
.L142:
	cmp	%g1, %o2
	be	.L143
	 sub	%g2, %g3, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be	.L141
	 add	%g1, 1, %g3
	mov	%g3, %g1
.L129:
	ldub	[%g1], %g3
	cmp	%g0, %g3
	xor	%g3, %g2, %g4
	addx	%g0, 0, %o5
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L142
	 add	%o0, 1, %o0
.L128:
	sub	%g2, %g3, %g2
.L125:
.L143:
	jmp	%o7+8
	 mov	%g2, %o0
.L141:
	b	.L128
	 ldub	[%g1+1], %g3
.L140:
	b	.L143
	 sub	%g2, %g3, %g2
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L148
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L146:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L146
	 add	%o1, 2, %o1
.L148:
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
	bleu	.L175
	 mov	1, %o0
	cmp	%g1, 31
	bleu	.L175
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L175
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L175:
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
	bleu	.L185
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	sethi	%hi(46080), %g3
	or	%g2, 982, %g2
	or	%g3, 981, %g3
	add	%o0, %g2, %g2
	cmp	%g3, %g2
	bgeu	.L182
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L182
	 sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g2
	add	%o0, %g3, %g3
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L186
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	sethi	%hi(1048576), %g3
	or	%g2, 4, %g2
	or	%g3, 3, %g3
	add	%g1, %g2, %g2
	cmp	%g2, %g3
	bgu	.L186
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L182:
	mov	1, %o0
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
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	mov	%o0, %g1
	add	%g1, -48, %g2
	cmp	%g2, 9
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
	fbu	.L193
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L197
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L200
	 nop
	fsubd	%f0, %f8, %f0
.L193:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L200:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L197:
	b	.L193
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
	fbu	.L201
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L201
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L208
	 nop
	fsubs	%f0, %f8, %f0
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
	fbu	.L215
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L216
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L219
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L214
	 mov	1, %g1
	mov	0, %g1
.L214:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L215
	 fmovs	%f9, %f1
.L209:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L219:
	cmp	%g1, 0
	bne	.L209
	 fmovs	%f11, %f1
.L216:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L215:
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
	fbu	.L226
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L227
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L230
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L225
	 mov	1, %g1
	mov	0, %g1
.L225:
	andcc	%g1, 1, %g0
	bne	.L226
	 fmovs	%f8, %f0
.L220:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L230:
	bne	.L220
	 fmovs	%f9, %f0
.L227:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L226:
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
	fbu	.L237
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L238
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L241
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L236
	 mov	1, %g1
	mov	0, %g1
.L236:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L237
	 fmovs	%f9, %f1
.L231:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L241:
	cmp	%g1, 0
	bne	.L231
	 fmovs	%f11, %f1
.L238:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L237:
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
	fbu	.L248
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L249
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L252
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L247
	 mov	1, %g1
	mov	0, %g1
.L247:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L249
	 fmovs	%f11, %f1
.L242:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L252:
	cmp	%g1, 0
	bne	.L242
	 fmovs	%f9, %f1
.L248:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L249:
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
	fbu	.L259
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L260
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L263
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L258
	 mov	1, %g1
	mov	0, %g1
.L258:
	andcc	%g1, 1, %g0
	bne	.L260
	 fmovs	%f9, %f0
.L253:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L263:
	bne	.L253
	 fmovs	%f8, %f0
.L259:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L260:
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
	fbu	.L270
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L271
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L274
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L269
	 mov	1, %g1
	mov	0, %g1
.L269:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L271
	 fmovs	%f11, %f1
.L264:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L274:
	cmp	%g1, 0
	bne	.L264
	 fmovs	%f9, %f1
.L270:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L271:
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
	be	.L278
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L277:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L277
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L278:
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
	be,a	.L288
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L290
	 st	%o0, [%g1+4]
.L290:
	jmp	%o7+8
	 nop
.L288:
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
	be	.L301
	 ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g2
.L301:
	cmp	%g2, 0
	bne,a	.L300
	 st	%g1, [%g2]
.L300:
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
	be	.L303
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L305
	 mov	0, %l0
.L317:
	cmp	%l1, %l0
	be	.L303
	 add	%i5, %i3, %i5
.L305:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a	.L317
	 add	%l0, 1, %l0
.L319:
	jmp	%i7+8
	 restore
.L303:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L319
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
	be	.L321
	 mov	0, %i5
	b	.L332
	 mov	%i1, %o1
.L331:
	cmp	%l0, %i5
	be	.L321
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L332:
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cmp	%o0, 0
	bne,a	.L331
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L321:
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
.L359:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L354
	 cmp	%g2, 32
	bne	.L335
	 sra	%g3, 24, %g3
.L354:
	ldub	[%o0+1], %g1
	b	.L359
	 add	%o0, 1, %o0
.L335:
	cmp	%g3, 43
	be	.L340
	 cmp	%g3, 45
	bne	.L360
	 add	%g2, -48, %g3
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L349
	 add	%o0, 1, %g2
	mov	1, %o4
.L343:
	mov	0, %o0
.L346:
	ldsb	[%g2+1], %g4
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sll	%o0, 2, %g3
	sra	%g1, 24, %o5
	add	%g3, %o0, %g3
	add	%g2, 1, %g2
	sll	%g3, 1, %g3
	add	%g4, -48, %g4
	sub	%g3, %o5, %o0
	cmp	%g4, 9
	bleu	.L346
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L361
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L360:
	mov	0, %o4
	cmp	%g3, 9
	bleu	.L343
	 mov	%o0, %g2
.L349:
	mov	0, %o0
.L361:
	jmp	%o7+8
	 nop
.L340:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L343
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
.L385:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L381
	 cmp	%g2, 32
	bne	.L363
	 sra	%g3, 24, %g3
.L381:
	ldub	[%o0+1], %g1
	b	.L385
	 add	%o0, 1, %o0
.L363:
	cmp	%g3, 43
	be	.L368
	 cmp	%g3, 45
	be,a	.L386
	 ldsb	[%o0+1], %g3
	add	%g2, -48, %g3
	mov	0, %o4
	cmp	%g3, 9
	bgu	.L376
	 mov	%o0, %g2
.L370:
	mov	0, %o0
.L373:
	ldsb	[%g2+1], %g4
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sll	%o0, 2, %g3
	sra	%g1, 24, %o5
	add	%g3, %o0, %g3
	add	%g2, 1, %g2
	sll	%g3, 1, %g3
	add	%g4, -48, %g4
	sub	%g3, %o5, %o0
	cmp	%g4, 9
	bleu	.L373
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L387
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L386:
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L370
	 mov	1, %o4
.L376:
	mov	0, %o0
.L387:
	jmp	%o7+8
	 nop
.L368:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L376
	 add	%o0, 1, %g2
	b	.L370
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	ldub	[%i0], %g1
.L413:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L408
	 cmp	%g2, 32
	bne	.L389
	 sra	%g3, 24, %g3
.L408:
	ldub	[%i0+1], %g1
	b	.L413
	 add	%i0, 1, %i0
.L389:
	cmp	%g3, 43
	be	.L394
	 cmp	%g3, 45
	bne	.L414
	 add	%g2, -48, %g3
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L403
	 add	%i0, 1, %g2
	mov	1, %o7
.L397:
	mov	0, %i0
	mov	0, %i1
.L400:
	srl	%i1, 30, %i5
	ldsb	[%g2+1], %g3
	sll	%i0, 2, %g4
	sll	%i1, 2, %o5
	or	%i5, %g4, %o4
	add	%g1, -48, %g1
	addcc	%o5, %i1, %i5
	sll	%g1, 24, %g1
	addx	%o4, %i0, %i4
	srl	%i5, 31, %i1
	sra	%g1, 24, %i3
	sra	%g1, 31, %i2
	sll	%i4, 1, %g4
	sll	%i5, 1, %g1
	or	%i1, %g4, %i4
	subcc	%g1, %i3, %i1
	mov	%g1, %i5
	subx	%i4, %i2, %i0
	add	%g2, 1, %g2
	add	%g3, -48, %g3
	cmp	%g3, 9
	bleu	.L400
	 ldub	[%g2], %g1
	cmp	%o7, 0
	bne	.L415
	 nop
	subcc	%i3, %i5, %i1
	subx	%i2, %i4, %i0
	jmp	%i7+8
	 restore
.L414:
	mov	0, %o7
	cmp	%g3, 9
	bleu	.L397
	 mov	%i0, %g2
.L403:
	mov	0, %i0
	mov	0, %i1
.L415:
	jmp	%i7+8
	 restore
.L394:
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	add	%i0, 1, %g2
	cmp	%g3, 9
	bleu	.L397
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
.L427:
	cmp	%i2, 0
	be	.L429
	 mov	0, %i5
.L428:
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
	bl,a	.L427
	 mov	%l0, %i2
	be	.L417
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L428
	 add	%i5, %i3, %i1
	mov	0, %i5
.L417:
.L429:
	jmp	%i7+8
	 restore %g0, %i5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be	.L435
	 mov	%i0, %l1
.L431:
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
	be	.L444
	 nop
.L443:
	ble	.L433
	 add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	bne	.L431
	 add	%i0, %i3, %i1
.L435:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L433:
	cmp	%l0, 0
	be	.L435
	 nop
	mov	%i3, %o1
	mov	%l0, %i2
	sra	%i2, 1, %l0
	call	.umul, 0
	 mov	%l0, %o0
	mov	%i5, %o2
	add	%i1, %o0, %i0
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	cmp	%o0, 0
	bne	.L443
	 nop
.L444:
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
	bne	.L459
	 cmp	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
.L455:
	cmp	%g1, 0
	be	.L456
	 add	%o0, 4, %o0
	cmp	%o1, %g1
.L459:
	bne,a	.L455
	 ld	[%o0+4], %g1
	jmp	%o7+8
	 nop
.L456:
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
	be	.L462
	 add	%o1, -4, %o1
	b	.L471
	 mov	-1, %o0
.L464:
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	bne,a	.L471
	 mov	-1, %o0
.L462:
	cmp	%g2, 0
	bne,a	.L464
	 ld	[%o0+%g1], %g2
	mov	-1, %o0
	cmp	%g2, %g3
.L471:
	bl	.L472
	 nop
	ble	.L470
	 mov	1, %o0
.L472:
	jmp	%o7+8
	 nop
.L470:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L474:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L474
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
	be	.L479
	 nop
	mov	%o0, %g1
.L478:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L478
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
.L479:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L498
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L495:
	be,a	.L499
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L489
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L498:
	ld	[%o1], %g2
	cmp	%g2, %g1
	be	.L495
	 cmp	%g1, 0
	ld	[%o0], %g2
.L499:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L496
	 nop
	ble	.L489
	 mov	1, %o0
	jmp	%o7+8
	 nop
.L496:
	jmp	%o7+8
	 mov	-1, %o0
.L489:
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
	bne,a	.L508
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L504:
	be	.L505
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L508:
	cmp	%g1, %o1
	bne,a	.L504
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L505:
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
	bne,a	.L523
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L513:
	addcc	%o2, -1, %o2
	be	.L517
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L523:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be	.L513
	 add	%o0, 4, %o0
	bl,a	.L522
	 mov	-1, %o0
	bg	.L522
	 mov	1, %o0
.L517:
	jmp	%o7+8
	 mov	0, %o0
.L522:
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
	be	.L529
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L529:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L547
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L544
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L547
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L546:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L546
	 ld	[%o1+%g1], %g2
.L548:
	jmp	%o7+8
	 nop
.L544:
	cmp	%o2, 0
	be	.L548
	 mov	0, %g2
.L533:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L533
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L547:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L556
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L551:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L551
	 add	%g2, 4, %g2
.L556:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L558
	 nop
	cmp	%o2, 0
	be	.L596
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L593:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L593
	 ldub	[%o0+%o2], %g1
.L597:
	jmp	%o7+8
	 nop
.L558:
	bne,a	.L591
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L591:
	be	.L596
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L569
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L569
	 add	%o0, 1, %g1
	sub	%o1, %g1, %g1
	cmp	%g1, 2
	bleu	.L592
	 mov	1, %g2
.L562:
	andcc	%g2, 1, %g0
	be	.L569
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o0+%g1], %g2
.L594:
	st	%g2, [%o1+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L594
	 ld	[%o0+%g1], %g2
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be	.L597
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %o5
	cmp	%g2, 1
	be	.L597
	 stb	%o5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be	.L597
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L592:
	b	.L562
	 mov	0, %g2
.L569:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L595:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L595
	 ldub	[%o0+%g1], %g2
.L596:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L599
	 xnor	%g0, %o2, %g3
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L601
	 and	%o2, 63, %g2
.L603:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o1, %g3, %o1
	jmp	%o7+8
	 or	%o0, %g1, %o0
.L599:
	srl	%o1, 1, %g2
	srl	%g2, %g3, %g2
	sll	%o0, %o2, %g1
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L603
	 and	%o2, 63, %g2
.L601:
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
	be	.L605
	 xnor	%g0, %o2, %g3
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L607
	 and	%o2, 63, %g2
.L609:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L605:
	sll	%o0, 1, %g2
	sll	%g2, %g3, %g2
	srl	%o1, %o2, %g1
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L609
	 and	%o2, 63, %g2
.L607:
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
	b	.L624
	 mov	0, %g1
.L622:
	cmp	%g1, 32
	be	.L626
	 nop
.L624:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L622
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L626:
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
	be	.L634
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L634
	 nop
	mov	1, %o0
.L629:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L629
	 add	%o0, 1, %o0
.L634:
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
	fbl	.L635
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L639
	 nop
.L635:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L639:
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
	fbl	.L640
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L644
	 nop
.L640:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L644:
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
	fbl	.L645
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L649
	 nop
.L645:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L649:
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
	fbu	.L652
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L652
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L653
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L653:
	andcc	%o1, 1, %g0
	be	.L666
	 srl	%o1, 31, %g1
.L655:
	fmuls	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L666:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L652
	 andcc	%o1, 1, %g0
	bne	.L655
	 fmuls	%f8, %f8, %f8
	srl	%o1, 31, %g1
.L665:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne	.L655
	 fmuls	%f8, %f8, %f8
	b	.L665
	 srl	%o1, 31, %g1
.L652:
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
	fbu	.L668
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L668
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L669
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L669:
	andcc	%o2, 1, %g0
	be	.L682
	 srl	%o2, 31, %g1
.L671:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L682:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L668
	 andcc	%o2, 1, %g0
	bne	.L671
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L681:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L671
	 fmuld	%f8, %f8, %f8
	b	.L681
	 srl	%o2, 31, %g1
.L668:
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
	fbu	.L684
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L684
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L685
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L685:
	andcc	%o2, 1, %g0
	be	.L698
	 srl	%o2, 31, %g1
.L687:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L698:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L684
	 andcc	%o2, 1, %g0
	bne	.L687
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L697:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L687
	 fmuld	%f8, %f8, %f8
	b	.L697
	 srl	%o2, 31, %g1
.L684:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L721
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 3
	bleu	.L707
	 or	%o0, %o1, %g1
	andcc	%g1, 3, %g0
	bne	.L707
	 and	%o2, -4, %g4
	mov	0, %g1
	ld	[%o0+%g1], %g3
.L719:
	ld	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L719
	 ld	[%o0+%g1], %g3
	add	%o0, %g1, %g3
	add	%o1, %g1, %o5
	cmp	%o2, %g1
	be	.L721
	 sub	%o2, %g1, %g4
	ldub	[%o0+%g1], %g2
	ldub	[%o1+%g1], %o4
	cmp	%g4, 1
	xor	%g2, %o4, %g2
	be	.L721
	 stb	%g2, [%o0+%g1]
	ldub	[%g3+1], %g2
	ldub	[%o5+1], %g1
	cmp	%g4, 2
	xor	%g1, %g2, %g1
	be	.L721
	 stb	%g1, [%g3+1]
	ldub	[%g3+2], %g2
	ldub	[%o5+2], %g1
	xor	%g1, %g2, %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L707:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L720:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L720
	 ldub	[%o0+%g1], %g3
.L721:
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
	be	.L723
	 mov	%o0, %g1
.L724:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L724
	 add	%g1, 1, %g1
.L723:
	cmp	%o2, 0
	bne,a	.L736
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L727:
	be	.L726
	 add	%o1, 1, %o1
	ldub	[%o1], %g2
.L736:
	add	%g1, 1, %g1
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L727
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L726:
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
	be	.L738
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L745:
	cmp	%g2, 0
	bne,a	.L741
	 add	%g1, 1, %g1
.L738:
	jmp	%o7+8
	 mov	%g1, %o0
.L741:
	cmp	%o1, %g1
	bne,a	.L745
	 ldsb	[%o0+%g1], %g2
	b,a	.L738
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L753
	 mov	0, %o0
.L747:
	mov	%o1, %g1
	b	.L750
	 sra	%g3, 24, %g3
.L749:
	cmp	%g2, %g3
	be	.L753
	 nop
.L750:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L749
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L747
	 add	%o0, 1, %o0
	mov	0, %o0
.L753:
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
.L756:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%o1, %g3
	be,a	.L755
	 mov	%g2, %o0
.L755:
	cmp	%g1, 0
	bne	.L756
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
	be	.L770
	 mov	%o0, %g2
	mov	%o1, %g1
.L760:
	ldsb	[%g1+1], %g3
	cmp	%g3, 0
	bne	.L760
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be	.L784
	 mov	%g2, %o0
	add	%o1, -1, %o0
	sra	%o2, 24, %o2
	b	.L767
	 add	%o0, %g1, %o0
.L781:
	cmp	%g1, 0
	be	.L780
	 add	%g2, 1, %g2
.L767:
	ldsb	[%g2], %g1
	cmp	%g1, %o2
	bne	.L781
	 ldub	[%g2], %g3
	mov	%o1, %g4
	mov	%g2, %o5
	b	.L762
	 and	%g3, 0xff, %g3
.L782:
	cmp	%g0, %g1
	addx	%g0, 0, %o3
	cmp	%g0, %o4
	subx	%g0, -1, %g1
	andcc	%o3, %g1, %g0
	be,a	.L783
	 ldub	[%g4], %g1
	ldub	[%o5], %g3
	cmp	%g3, 0
	be	.L763
	 add	%g4, 1, %g4
.L762:
	ldub	[%g4], %g1
	add	%o5, 1, %o5
	cmp	%g4, %o0
	bne	.L782
	 xor	%g1, %g3, %o4
.L763:
	ldub	[%g4], %g1
.L783:
	cmp	%g3, %g1
	be,a	.L784
	 mov	%g2, %o0
	b	.L767
	 add	%g2, 1, %g2
.L780:
	jmp	%o7+8
	 mov	0, %o0
.L770:
	mov	%g2, %o0
.L784:
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
	fbl,a	.L795
	 std	%o2, [%sp+72]
	nop
	fbule	.L789
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L796
	 fnegs	%f0, %f0
.L789:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L795:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L789
	 nop
	fnegs	%f0, %f0
.L796:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L816
	 nop
	cmp	%o1, %o3
	blu	.L808
	 sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a	.L816
	 mov	0, %o0
	ldub	[%o2], %o4
	sll	%o4, 24, %o4
	b	.L803
	 sra	%o4, 24, %o5
.L807:
	mov	%g4, %o0
.L799:
	cmp	%o1, %o0
	blu,a	.L816
	 mov	0, %o0
.L803:
	ldsb	[%o0], %g1
	cmp	%g1, %o5
	bne	.L807
	 add	%o0, 1, %g4
	cmp	%o3, 1
	be	.L816
	 nop
.L802:
	b	.L800
	 mov	1, %g1
.L801:
	cmp	%g1, %o3
	be	.L816
	 nop
.L800:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be	.L801
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu	.L808
	 sra	%o4, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne	.L799
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	b	.L802
	 mov	%g1, %o0
.L808:
	jmp	%o7+8
	 mov	0, %o0
.L816:
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
	be	.L818
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L818:
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
	fbl	.L845
	 sethi	%hi(.LC33), %g1
	ldd	[%g1+%lo(.LC33)], %f10
	fcmped	%f0, %f10
	nop
	fbul	.L846
	 mov	0, %g2
.L825:
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f10
	sethi	%hi(.LC33), %g3
	ldd	[%g3+%lo(.LC33)], %f8
	mov	0, %g1
.L831:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L831
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be	.L822
	 st	%g1, [%o2]
.L848:
	fnegs	%f0, %f0
.L822:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L846:
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f10
	fcmped	%f0, %f10
	nop
	fbuge	.L828
	 nop
	fcmpd	%f0, %f8
	nop
	fbne	.L837
	 fmovs	%f0, %f10
.L828:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L845:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fnegs	%f0, %f10
	fcmped	%f0, %f8
	nop
	fbug	.L847
	 fmovs	%f1, %f11
	fmovs	%f10, %f0
	b	.L825
	 mov	1, %g2
.L847:
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L828
	 nop
	mov	1, %g2
.L826:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f8
	mov	0, %g1
.L833:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L833
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne	.L848
	 st	%g1, [%o2]
	b,a	.L822
.L837:
	b	.L826
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
	be	.L849
	 mov	0, %o3
.L852:
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
	bne	.L852
	 sll	%i3, 1, %i3
.L849:
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
	blu	.L856
	 mov	1, %g1
	b	.L862
	 mov	0, %o0
.L859:
	cmp	%o1, %g2
	bgeu	.L858
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L878
	 nop
.L856:
	cmp	%o1, 0
	bge,a	.L859
	 sll	%o1, 1, %o1
.L857:
	mov	0, %o0
.L862:
	cmp	%g2, %o1
	blu,a	.L879
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L879:
	cmp	%g1, 0
	bne	.L862
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L877
	 nop
.L880:
	jmp	%o7+8
	 nop
.L877:
	jmp	%o7+8
	 mov	%g2, %o0
.L858:
	cmp	%g1, 0
.L878:
	bne	.L857
	 mov	0, %o0
	cmp	%o2, 0
	be	.L880
	 nop
	b,a	.L877
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
	be	.L884
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L884:
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
	be	.L891
	 xor	%i1, %g1, %o1
.L889:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L891:
	cmp	%i1, %i0
	bne	.L889
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
	be	.L898
	 mov	0, %o0
.L894:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L894
	 add	%o0, %g1, %o0
.L898:
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g2
	cmp	%o0, %o1
	blu	.L903
	 and	%o2, -8, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L931
	 cmp	%o2, 0
.L903:
	sll	%g2, 3, %o5
	cmp	%g2, 0
	be	.L932
	 mov	0, %g1
.L906:
	add	%o1, %g1, %g2
	ldd	[%g2], %g2
	add	%o0, %g1, %o4
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne	.L906
	 std	%g2, [%o4]
	cmp	%o2, %g4
	bleu	.L939
	 nop
	sub	%o2, %g4, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L933
	 add	%o0, %g4, %g3
	add	%g4, 1, %g1
	add	%o1, %g4, %o4
	add	%o1, %g1, %g2
	sub	%g3, %g2, %g2
	cmp	%g2, 2
	bleu	.L934
	 mov	1, %o5
.L909:
	andcc	%o5, 1, %g0
	be	.L912
	 or	%o4, %g3, %g2
	andcc	%g2, 3, %g0
	bne	.L912
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L937:
	st	%g2, [%g3+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L937
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L940
	 add	%o5, %g4, %g4
	ldub	[%o1+%g4], %g2
	add	%g4, 1, %g1
	cmp	%o2, %g1
	bleu	.L940
	 stb	%g2, [%o0+%g4]
	ldub	[%o1+%g1], %g2
	add	%g4, 2, %g4
	cmp	%o2, %g4
	bleu	.L940
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L935:
	add	%g1, 1, %g1
.L912:
	ldub	[%o1+%g4], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g4]
	bne	.L935
	 mov	%g1, %g4
.L940:
	jmp	%o7+8
	 nop
.L934:
	b	.L909
	 mov	0, %o5
.L931:
	be	.L940
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L938:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L938
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L932:
	cmp	%o2, 0
	bne	.L912
	 add	%g4, 1, %g1
	jmp	%o7+8
	 nop
.L939:
	jmp	%o7+8
	 nop
.L933:
	b	.L912
	 add	%g4, 1, %g1
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L945
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L967
	 cmp	%o2, 0
.L945:
	cmp	%g4, 0
	be	.L944
	 add	%g4, -1, %g1
	cmp	%g1, 8
	bleu	.L948
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L948
	 add	%o1, 2, %g1
	cmp	%o0, %g1
	be	.L948
	 srl	%o2, 2, %o5
	and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L971:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L971
	 ld	[%o1+%g1], %g2
	sll	%o5, 1, %g2
	cmp	%g4, %g2
	be	.L972
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L944:
	andcc	%o2, 1, %g0
.L972:
	be	.L975
	 nop
	add	%o2, -1, %o2
.L970:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L967:
	be	.L976
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L973:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L973
	 ldub	[%o1+%g1], %g2
.L976:
	jmp	%o7+8
	 nop
.L948:
	sll	%g4, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L974:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a	.L974
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L975
	 nop
	b	.L970
	 add	%o2, -1, %o2
.L975:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g2
	cmp	%o0, %o1
	blu	.L981
	 and	%o2, -4, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L1009
	 cmp	%o2, 0
.L981:
	sll	%g2, 2, %g4
	cmp	%g2, 0
	be	.L1010
	 mov	0, %g1
	ld	[%o1+%g1], %g2
.L1015:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L1015
	 ld	[%o1+%g1], %g2
	cmp	%o2, %g3
	bleu	.L1018
	 nop
	sub	%o2, %g3, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L1011
	 add	%o0, %g3, %g4
	add	%g3, 1, %g1
	add	%o1, %g3, %o4
	add	%o1, %g1, %g2
	sub	%g4, %g2, %g2
	cmp	%g2, 2
	bleu	.L1012
	 mov	1, %o5
.L987:
	andcc	%o5, 1, %g0
	be	.L990
	 or	%o4, %g4, %g2
	andcc	%g2, 3, %g0
	bne	.L990
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L1016:
	st	%g2, [%g4+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L1016
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L1019
	 add	%o5, %g3, %g3
	ldub	[%o1+%g3], %g2
	add	%g3, 1, %g1
	cmp	%o2, %g1
	bleu	.L1019
	 stb	%g2, [%o0+%g3]
	ldub	[%o1+%g1], %g2
	add	%g3, 2, %g3
	cmp	%o2, %g3
	bleu	.L1019
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g3], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g3]
.L1013:
	add	%g1, 1, %g1
.L990:
	ldub	[%o1+%g3], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g3]
	bne	.L1013
	 mov	%g1, %g3
.L1019:
	jmp	%o7+8
	 nop
.L1012:
	b	.L987
	 mov	0, %o5
.L1009:
	be	.L1019
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1017:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L1017
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L1010:
	cmp	%o2, 0
	bne	.L990
	 add	%g3, 1, %g1
	jmp	%o7+8
	 nop
.L1018:
	jmp	%o7+8
	 nop
.L1011:
	b	.L990
	 add	%g3, 1, %g1
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
	bge	.L1022
	 fitod	%f8, %f0
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f8
	faddd	%f0, %f8, %f0
.L1022:
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
	bge	.L1024
	 fitod	%f8, %f0
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	faddd	%f0, %f8, %f0
.L1024:
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
	bne	.L1031
	 mov	%o0, %g1
	sra	%o0, 14, %o0
	cmp	%o0, 0
	bne	.L1046
	 nop
	sra	%g1, 13, %g2
	cmp	%g2, 0
	bne	.L1032
	 nop
	sra	%g1, 12, %g2
	cmp	%g2, 0
	bne	.L1033
	 nop
	sra	%g1, 11, %g2
	cmp	%g2, 0
	bne	.L1034
	 nop
	sra	%g1, 10, %g2
	cmp	%g2, 0
	bne	.L1035
	 nop
	sra	%g1, 9, %g2
	cmp	%g2, 0
	bne	.L1036
	 nop
	sra	%g1, 8, %g2
	cmp	%g2, 0
	bne	.L1037
	 nop
	sra	%g1, 7, %g2
	cmp	%g2, 0
	bne	.L1038
	 nop
	sra	%g1, 6, %g2
	cmp	%g2, 0
	bne	.L1039
	 nop
	sra	%g1, 5, %g2
	cmp	%g2, 0
	bne	.L1040
	 nop
	sra	%g1, 4, %g2
	cmp	%g2, 0
	bne	.L1041
	 nop
	sra	%g1, 3, %g2
	cmp	%g2, 0
	bne	.L1042
	 nop
	sra	%g1, 2, %g2
	cmp	%g2, 0
	bne	.L1043
	 nop
	sra	%g1, 1, %g2
	cmp	%g2, 0
	bne	.L1044
	 cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1044:
	mov	14, %o0
.L1046:
	jmp	%o7+8
	 nop
.L1031:
	jmp	%o7+8
	 mov	0, %o0
.L1042:
	jmp	%o7+8
	 mov	12, %o0
.L1032:
	jmp	%o7+8
	 mov	2, %o0
.L1033:
	jmp	%o7+8
	 mov	3, %o0
.L1034:
	jmp	%o7+8
	 mov	4, %o0
.L1035:
	jmp	%o7+8
	 mov	5, %o0
.L1036:
	jmp	%o7+8
	 mov	6, %o0
.L1037:
	jmp	%o7+8
	 mov	7, %o0
.L1038:
	jmp	%o7+8
	 mov	8, %o0
.L1039:
	jmp	%o7+8
	 mov	9, %o0
.L1040:
	jmp	%o7+8
	 mov	10, %o0
.L1041:
	jmp	%o7+8
	 mov	11, %o0
.L1043:
	jmp	%o7+8
	 mov	13, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne	.L1050
	 nop
	andcc	%o0, 2, %g0
	bne	.L1051
	 nop
	andcc	%o0, 4, %g0
	bne	.L1052
	 nop
	andcc	%o0, 8, %g0
	bne	.L1053
	 nop
	andcc	%o0, 16, %g0
	bne	.L1054
	 nop
	andcc	%o0, 32, %g0
	bne	.L1055
	 nop
	andcc	%o0, 64, %g0
	bne	.L1056
	 nop
	andcc	%o0, 128, %g0
	bne	.L1057
	 nop
	andcc	%o0, 256, %g0
	bne	.L1058
	 nop
	andcc	%o0, 512, %g0
	bne	.L1059
	 nop
	andcc	%o0, 1024, %g0
	bne	.L1060
	 nop
	andcc	%o0, 2048, %g0
	bne	.L1061
	 nop
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne	.L1062
	 nop
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne	.L1063
	 nop
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne	.L1064
	 nop
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1050:
	jmp	%o7+8
	 mov	0, %o0
.L1051:
	jmp	%o7+8
	 mov	1, %o0
.L1062:
	jmp	%o7+8
	 mov	12, %o0
.L1052:
	jmp	%o7+8
	 mov	2, %o0
.L1053:
	jmp	%o7+8
	 mov	3, %o0
.L1054:
	jmp	%o7+8
	 mov	4, %o0
.L1055:
	jmp	%o7+8
	 mov	5, %o0
.L1056:
	jmp	%o7+8
	 mov	6, %o0
.L1057:
	jmp	%o7+8
	 mov	7, %o0
.L1058:
	jmp	%o7+8
	 mov	8, %o0
.L1059:
	jmp	%o7+8
	 mov	9, %o0
.L1060:
	jmp	%o7+8
	 mov	10, %o0
.L1061:
	jmp	%o7+8
	 mov	11, %o0
.L1063:
	jmp	%o7+8
	 mov	13, %o0
.L1064:
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
	fbge,a	.L1072
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1072:
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
	be	.L1081
	 mov	0, %o0
.L1077:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L1077
	 add	%o0, %g1, %o0
.L1081:
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
	be	.L1089
	 mov	0, %o0
	cmp	%o1, 0
	be	.L1089
	 nop
.L1084:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	sll	%g2, 1, %g2
	bne	.L1084
	 add	%o0, %g1, %o0
.L1089:
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
	bgu	.L1091
	 mov	1, %g1
	b	.L1097
	 mov	0, %o0
.L1094:
	cmp	%o1, %g2
	bgeu	.L1093
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1113
	 nop
.L1091:
	cmp	%o1, 0
	bge,a	.L1094
	 sll	%o1, 1, %o1
.L1092:
	mov	0, %o0
.L1097:
	cmp	%g2, %o1
	blu,a	.L1114
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1114:
	cmp	%g1, 0
	bne	.L1097
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1112
	 nop
.L1115:
	jmp	%o7+8
	 nop
.L1112:
	jmp	%o7+8
	 mov	%g2, %o0
.L1093:
	cmp	%g1, 0
.L1113:
	bne	.L1092
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1115
	 nop
	b,a	.L1112
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
	fbl	.L1116
	 mov	-1, %g1
	nop
	fbule	.L1120
	 mov	1, %g1
.L1116:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1120:
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
	fbl	.L1121
	 mov	-1, %g1
	nop
	fbule	.L1125
	 mov	1, %g1
.L1121:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1125:
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
	bl	.L1138
	 mov	%o0, %g3
	be	.L1133
	 mov	0, %o4
.L1130:
	mov	1, %g4
	mov	0, %o0
.L1132:
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
	bne	.L1132
	 sll	%g3, 1, %g3
	cmp	%o4, 0
	be	.L1139
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1133:
	mov	0, %o0
.L1139:
	jmp	%o7+8
	 nop
.L1138:
	sub	%g0, %o1, %o1
	b	.L1130
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	mov	1, %g1
	cmp	%o0, 0
	bge	.L1141
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	0, %g1
	mov	1, %g3
.L1141:
	cmp	%o1, 0
	bge	.L1165
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	mov	%g1, %g3
.L1165:
	cmp	%o0, %o1
	bgu	.L1143
	 mov	1, %g1
	b	.L1149
	 mov	0, %o0
.L1163:
	cmp	%g1, 0
	be,a	.L1145
	 mov	0, %o0
.L1143:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1163
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1145
	 mov	0, %o0
.L1149:
	cmp	%o1, %g2
	bgu,a	.L1166
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1166:
	cmp	%g1, 0
	bne	.L1149
	 srl	%o1, 1, %o1
.L1145:
	cmp	%g3, 0
	bne,a	.L1164
	 sub	%g0, %o0, %o0
.L1164:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1168
	 mov	0, %g4
	sub	%g0, %o0, %o0
	mov	1, %g4
.L1168:
	sra	%o1, 31, %g3
	mov	%o0, %g2
	xor	%g3, %o1, %o1
	sub	%o1, %g3, %o1
	cmp	%o0, %o1
	bgu	.L1169
	 mov	1, %g1
	b	.L1190
	 cmp	%o1, %g2
.L1189:
	cmp	%g1, 0
	be	.L1192
	 cmp	%g4, 0
.L1169:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1189
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1192
	 cmp	%g4, 0
.L1175:
	cmp	%o1, %g2
.L1190:
	bleu,a	.L1174
	 sub	%g2, %o1, %g2
.L1174:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1175
	 srl	%o1, 1, %o1
	mov	%g2, %o0
	cmp	%g4, 0
.L1192:
	bne,a	.L1191
	 sub	%g0, %o0, %o0
.L1191:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1194
	 mov	1, %g2
	b	.L1280
	 mov	0, %g4
.L1197:
	sll	%g2, 1, %g3
	srl	%g1, 16, %g1
	mov	%g3, %g4
	cmp	%g1, %o0
	bgeu	.L1281
	 sll	%g2, 17, %o5
	cmp	%o5, 0
	be	.L1199
	 mov	%g3, %g2
	mov	%g1, %o1
.L1194:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge	.L1197
	 sll	%o1, 17, %g1
	cmp	%o0, %o1
	blu	.L1220
	 mov	0, %g4
	sub	%o0, %o1, %o0
	mov	%g2, %g4
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
.L1220:
	sll	%g2, 16, %g3
	srl	%o1, 1, %o5
	srl	%g3, 17, %g1
	cmp	%g1, 0
	be	.L1199
	 mov	%g1, %g2
.L1201:
	cmp	%o0, %o5
	blu,a	.L1287
	 srl	%g3, 18, %g2
	sub	%o0, %o5, %o5
	or	%g4, %g2, %g4
	sll	%o5, 16, %o5
	srl	%o5, 16, %o0
	srl	%g3, 18, %g2
.L1287:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 2, %g1
	cmp	%o0, %g1
	blu,a	.L1288
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 19, %g2
.L1288:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 3, %g1
	cmp	%o0, %g1
	blu,a	.L1289
	 srl	%g3, 20, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 20, %g2
.L1289:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a	.L1290
	 srl	%g3, 21, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 21, %g2
.L1290:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a	.L1291
	 srl	%g3, 22, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 22, %g2
.L1291:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a	.L1292
	 srl	%g3, 23, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 23, %g2
.L1292:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a	.L1282
	 sub	%o0, %g1, %g1
.L1208:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a	.L1283
	 sub	%o0, %g1, %g1
.L1209:
	srl	%g3, 25, %g2
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a	.L1284
	 sub	%o0, %g1, %g1
.L1210:
	srl	%g3, 26, %g2
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a	.L1285
	 sub	%o0, %g1, %g1
.L1211:
	srl	%g3, 27, %g2
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a	.L1286
	 sub	%o0, %g1, %g1
.L1212:
	srl	%g3, 28, %g2
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a	.L1293
	 srl	%g3, 29, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 29, %g2
.L1293:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a	.L1294
	 srl	%g3, 30, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 30, %g2
.L1294:
	cmp	%g2, 0
	be	.L1199
	 srl	%o1, 14, %g1
	cmp	%o0, %g1
	blu	.L1295
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
.L1295:
	bge	.L1199
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a	.L1199
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%g4, 1, %g4
	sll	%o1, 16, %g1
	srl	%g1, 16, %o0
.L1199:
	cmp	%o2, 0
.L1296:
	bne,a	.L1218
	 mov	%o0, %g4
.L1218:
	sll	%g4, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
.L1281:
	cmp	%o5, 0
	be	.L1199
	 cmp	%o0, %g1
	blu	.L1200
	 sethi	%hi(31744), %o4
	sub	%o0, %g1, %o0
	sll	%o0, 16, %o0
	or	%o4, 1023, %o4
	srl	%o0, 16, %o0
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	mov	%g1, %o1
	b	.L1201
	 sll	%g3, 16, %g3
.L1282:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1208
	 srl	%g1, 16, %o0
.L1200:
	mov	0, %g4
	or	%o4, 1023, %o4
	sll	%g3, 16, %g3
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	b	.L1201
	 mov	%g1, %o1
.L1283:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1209
	 srl	%g1, 16, %o0
.L1284:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1210
	 srl	%g1, 16, %o0
.L1285:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1211
	 srl	%g1, 16, %o0
.L1286:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1212
	 srl	%g1, 16, %o0
.L1280:
	bne	.L1296
	 cmp	%o2, 0
	mov	1, %g4
	b	.L1296
	 mov	0, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1298
	 mov	1, %g1
	b	.L1304
	 mov	0, %o0
.L1301:
	cmp	%o1, %g2
	bgeu	.L1300
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1320
	 nop
.L1298:
	cmp	%o1, 0
	bge,a	.L1301
	 sll	%o1, 1, %o1
.L1299:
	mov	0, %o0
.L1304:
	cmp	%g2, %o1
	blu,a	.L1321
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1321:
	cmp	%g1, 0
	bne	.L1304
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1319
	 nop
.L1322:
	jmp	%o7+8
	 nop
.L1319:
	jmp	%o7+8
	 mov	%g2, %o0
.L1300:
	cmp	%g1, 0
.L1320:
	bne	.L1299
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1322
	 nop
	b,a	.L1319
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1324
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1324:
	be	.L1328
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1328:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1330
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1334:
	jmp	%o7+8
	 nop
.L1330:
	be	.L1334
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
	bne	.L1339
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1339:
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
	bl	.L1341
	 mov	0, %g1
	bg	.L1341
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1341
	 mov	0, %g1
	bgu	.L1341
	 mov	2, %g1
	mov	1, %g1
.L1341:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1347
	 mov	-1, %g1
	bg	.L1347
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1347
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1347:
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
	be,a	.L1354
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1354:
	be	.L1358
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1358:
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
	be	.L1367
	 mov	%o2, %g1
.L1369:
	fmuld	%f0, %f8, %f0
.L1367:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1368
	 andcc	%g1, 1, %g0
	bne	.L1369
	 fmuld	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1374:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1369
	 fmuld	%f8, %f8, %f8
	b	.L1374
	 srl	%g1, 31, %g2
.L1368:
	cmp	%o2, 0
	bge	.L1366
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f8
	fdivd	%f8, %f0, %f0
.L1366:
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
	be	.L1376
	 mov	%o1, %g1
.L1378:
	fmuls	%f0, %f8, %f0
.L1376:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1377
	 andcc	%g1, 1, %g0
	bne	.L1378
	 fmuls	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1383:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1378
	 fmuls	%f8, %f8, %f8
	b	.L1383
	 srl	%g1, 31, %g2
.L1377:
	cmp	%o1, 0
	bge	.L1375
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f8
	fdivs	%f8, %f0, %f0
.L1375:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1384
	 mov	0, %g1
	bgu	.L1384
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1384
	 mov	0, %g1
	bgu	.L1384
	 mov	2, %g1
	mov	1, %g1
.L1384:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1390
	 mov	-1, %g1
	bgu	.L1390
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1390
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1390:
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
