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
	ldd	[%sp+72], %f8
	fcmped	%f0, %f8
	nop
	fble,a	.L198
	 st	%g0, [%sp+72]
	fsubd	%f0, %f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L198:
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
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
	ld	[%sp+76], %f8
	fcmpes	%f0, %f8
	nop
	fble	.L204
	 sethi	%hi(.LC2), %g1
	fsubs	%f0, %f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L204:
	ld	[%g1+%lo(.LC2)], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -88, %sp
	std	%o0, [%sp+72]
	ld	[%sp+72], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%o2, %g3, %g2
	cmp	%g1, %g2
	be	.L206
	 ldd	[%sp+72], %f8
	cmp	%g1, 0
	be	.L205
	 ldd	[%sp+72], %f0
.L214:
	std	%o2, [%sp+72]
.L217:
	ldd	[%sp+72], %f0
.L205:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L206:
	std	%o2, [%sp+80]
	ldd	[%sp+80], %f10
	fcmped	%f8, %f10
	nop
	fbge	.L216
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L214
	 ldd	[%sp+72], %f0
.L215:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L216:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L215
	 ldd	[%sp+72], %f0
	b	.L217
	 std	%o2, [%sp+72]
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -80, %sp
	st	%o0, [%sp+72]
	ld	[%sp+72], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%o1, %g3, %g2
	cmp	%g1, %g2
	be	.L219
	 ld	[%sp+72], %f8
	cmp	%g1, 0
	be	.L218
	 ld	[%sp+72], %f0
.L227:
	st	%o1, [%sp+72]
.L230:
	ld	[%sp+72], %f0
.L218:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L219:
	st	%o1, [%sp+76]
	ld	[%sp+76], %f9
	fcmpes	%f8, %f9
	nop
	fbge	.L229
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L227
	 ld	[%sp+72], %f0
.L228:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L229:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L228
	 ld	[%sp+72], %f0
	b	.L230
	 st	%o1, [%sp+72]
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	add	%sp, -88, %sp
	std	%o0, [%sp+72]
	ld	[%sp+72], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%o2, %g3, %g2
	cmp	%g1, %g2
	be	.L232
	 ldd	[%sp+72], %f8
	cmp	%g1, 0
	be	.L231
	 ldd	[%sp+72], %f0
.L240:
	std	%o2, [%sp+72]
.L243:
	ldd	[%sp+72], %f0
.L231:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L232:
	std	%o2, [%sp+80]
	ldd	[%sp+80], %f10
	fcmped	%f8, %f10
	nop
	fbge	.L242
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L240
	 ldd	[%sp+72], %f0
.L241:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L242:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L241
	 ldd	[%sp+72], %f0
	b	.L243
	 std	%o2, [%sp+72]
	.size	fmaxl, .-fmaxl
	.align 4
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -88, %sp
	std	%o2, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L245
	 ldd	[%sp+72], %f10
	cmp	%g1, 0
	be	.L244
	 ldd	[%sp+72], %f0
.L253:
	std	%o0, [%sp+72]
.L256:
	ldd	[%sp+72], %f0
.L244:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L245:
	std	%o0, [%sp+80]
	ldd	[%sp+80], %f8
	fcmped	%f8, %f10
	nop
	fbge	.L255
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L253
	 ldd	[%sp+72], %f0
.L254:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L255:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L254
	 ldd	[%sp+72], %f0
	b	.L256
	 std	%o0, [%sp+72]
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -80, %sp
	st	%o1, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L258
	 ld	[%sp+72], %f9
	cmp	%g1, 0
	be	.L257
	 ld	[%sp+72], %f0
.L266:
	st	%o0, [%sp+72]
.L269:
	ld	[%sp+72], %f0
.L257:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L258:
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	fcmpes	%f8, %f9
	nop
	fbge	.L268
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L266
	 ld	[%sp+72], %f0
.L267:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L268:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L267
	 ld	[%sp+72], %f0
	b	.L269
	 st	%o0, [%sp+72]
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	add	%sp, -88, %sp
	std	%o2, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be	.L271
	 ldd	[%sp+72], %f10
	cmp	%g1, 0
	be	.L270
	 ldd	[%sp+72], %f0
.L279:
	std	%o0, [%sp+72]
.L282:
	ldd	[%sp+72], %f0
.L270:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L271:
	std	%o0, [%sp+80]
	ldd	[%sp+80], %f8
	fcmped	%f8, %f10
	nop
	fbge	.L281
	 mov	1, %g1
	andcc	%g1, 1, %g0
	bne	.L279
	 ldd	[%sp+72], %f0
.L280:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L281:
	mov	0, %g1
	andcc	%g1, 1, %g0
	be	.L280
	 ldd	[%sp+72], %f0
	b	.L282
	 std	%o0, [%sp+72]
	.size	fminl, .-fminl
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	mov	%o0, %g1
	sethi	%hi(s.0), %o0
	cmp	%g1, 0
	be	.L286
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L285:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L285
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L286:
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
	be,a	.L296
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L298
	 st	%o0, [%g1+4]
.L298:
	jmp	%o7+8
	 nop
.L296:
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
	be	.L309
	 ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g2
.L309:
	cmp	%g2, 0
	bne,a	.L308
	 st	%g1, [%g2]
.L308:
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
	be	.L311
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L313
	 mov	0, %l0
.L325:
	cmp	%l1, %l0
	be	.L311
	 add	%i5, %i3, %i5
.L313:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a	.L325
	 add	%l0, 1, %l0
.L327:
	jmp	%i7+8
	 restore
.L311:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L327
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
	be	.L329
	 mov	0, %i5
	b	.L340
	 mov	%i1, %o1
.L339:
	cmp	%l0, %i5
	be	.L329
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L340:
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cmp	%o0, 0
	bne,a	.L339
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L329:
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
.L367:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L362
	 cmp	%g2, 32
	bne	.L343
	 sra	%g3, 24, %g3
.L362:
	ldub	[%o0+1], %g1
	b	.L367
	 add	%o0, 1, %o0
.L343:
	cmp	%g3, 43
	be	.L348
	 cmp	%g3, 45
	bne	.L368
	 add	%g2, -48, %g3
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L357
	 add	%o0, 1, %g2
	mov	1, %o4
.L351:
	mov	0, %o0
.L354:
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
	bleu	.L354
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L369
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L368:
	mov	0, %o4
	cmp	%g3, 9
	bleu	.L351
	 mov	%o0, %g2
.L357:
	mov	0, %o0
.L369:
	jmp	%o7+8
	 nop
.L348:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L351
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
.L393:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L389
	 cmp	%g2, 32
	bne	.L371
	 sra	%g3, 24, %g3
.L389:
	ldub	[%o0+1], %g1
	b	.L393
	 add	%o0, 1, %o0
.L371:
	cmp	%g3, 43
	be	.L376
	 cmp	%g3, 45
	be,a	.L394
	 ldsb	[%o0+1], %g3
	add	%g2, -48, %g3
	mov	0, %o4
	cmp	%g3, 9
	bgu	.L384
	 mov	%o0, %g2
.L378:
	mov	0, %o0
.L381:
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
	bleu	.L381
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L395
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L394:
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L378
	 mov	1, %o4
.L384:
	mov	0, %o0
.L395:
	jmp	%o7+8
	 nop
.L376:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L384
	 add	%o0, 1, %g2
	b	.L378
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	ldub	[%i0], %g1
.L421:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L416
	 cmp	%g2, 32
	bne	.L397
	 sra	%g3, 24, %g3
.L416:
	ldub	[%i0+1], %g1
	b	.L421
	 add	%i0, 1, %i0
.L397:
	cmp	%g3, 43
	be	.L402
	 cmp	%g3, 45
	bne	.L422
	 add	%g2, -48, %g3
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L411
	 add	%i0, 1, %g2
	mov	1, %o7
.L405:
	mov	0, %i0
	mov	0, %i1
.L408:
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
	bleu	.L408
	 ldub	[%g2], %g1
	cmp	%o7, 0
	bne	.L423
	 nop
	subcc	%i3, %i5, %i1
	subx	%i2, %i4, %i0
	jmp	%i7+8
	 restore
.L422:
	mov	0, %o7
	cmp	%g3, 9
	bleu	.L405
	 mov	%i0, %g2
.L411:
	mov	0, %i0
	mov	0, %i1
.L423:
	jmp	%i7+8
	 restore
.L402:
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	add	%i0, 1, %g2
	cmp	%g3, 9
	bleu	.L405
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
.L435:
	cmp	%i2, 0
	be	.L437
	 mov	0, %i5
.L436:
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
	bl,a	.L435
	 mov	%l0, %i2
	be	.L425
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L436
	 add	%i5, %i3, %i1
	mov	0, %i5
.L425:
.L437:
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
	be	.L443
	 mov	%i0, %l1
.L439:
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
	be	.L452
	 nop
.L451:
	ble	.L441
	 add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	bne	.L439
	 add	%i0, %i3, %i1
.L443:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L441:
	cmp	%l0, 0
	be	.L443
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
	bne	.L451
	 nop
.L452:
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
	bne	.L467
	 cmp	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
.L463:
	cmp	%g1, 0
	be	.L464
	 add	%o0, 4, %o0
	cmp	%o1, %g1
.L467:
	bne,a	.L463
	 ld	[%o0+4], %g1
	jmp	%o7+8
	 nop
.L464:
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
	be	.L470
	 add	%o1, -4, %o1
	b	.L479
	 mov	-1, %o0
.L472:
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	bne,a	.L479
	 mov	-1, %o0
.L470:
	cmp	%g2, 0
	bne,a	.L472
	 ld	[%o0+%g1], %g2
	mov	-1, %o0
	cmp	%g2, %g3
.L479:
	bl	.L480
	 nop
	ble	.L478
	 mov	1, %o0
.L480:
	jmp	%o7+8
	 nop
.L478:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L482:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L482
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
	be	.L487
	 nop
	mov	%o0, %g1
.L486:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L486
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
.L487:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L506
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L503:
	be,a	.L507
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L497
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L506:
	ld	[%o1], %g2
	cmp	%g2, %g1
	be	.L503
	 cmp	%g1, 0
	ld	[%o0], %g2
.L507:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L504
	 nop
	ble	.L497
	 mov	1, %o0
	jmp	%o7+8
	 nop
.L504:
	jmp	%o7+8
	 mov	-1, %o0
.L497:
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
	bne,a	.L516
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L512:
	be	.L513
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L516:
	cmp	%g1, %o1
	bne,a	.L512
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L513:
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
	bne,a	.L531
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L521:
	addcc	%o2, -1, %o2
	be	.L525
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L531:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be	.L521
	 add	%o0, 4, %o0
	bl,a	.L530
	 mov	-1, %o0
	bg	.L530
	 mov	1, %o0
.L525:
	jmp	%o7+8
	 mov	0, %o0
.L530:
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
	be	.L537
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L537:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L555
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L552
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L555
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L554:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L554
	 ld	[%o1+%g1], %g2
.L556:
	jmp	%o7+8
	 nop
.L552:
	cmp	%o2, 0
	be	.L556
	 mov	0, %g2
.L541:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L541
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L555:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L564
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L559:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L559
	 add	%g2, 4, %g2
.L564:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L566
	 nop
	cmp	%o2, 0
	be	.L604
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L601:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L601
	 ldub	[%o0+%o2], %g1
.L605:
	jmp	%o7+8
	 nop
.L566:
	bne,a	.L599
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L599:
	be	.L604
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L577
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L577
	 add	%o0, 1, %g1
	sub	%o1, %g1, %g1
	cmp	%g1, 2
	bleu	.L600
	 mov	1, %g2
.L570:
	andcc	%g2, 1, %g0
	be	.L577
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o0+%g1], %g2
.L602:
	st	%g2, [%o1+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L602
	 ld	[%o0+%g1], %g2
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be	.L605
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %o5
	cmp	%g2, 1
	be	.L605
	 stb	%o5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be	.L605
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L600:
	b	.L570
	 mov	0, %g2
.L577:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L603:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L603
	 ldub	[%o0+%g1], %g2
.L604:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L607
	 xnor	%g0, %o2, %g3
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L609
	 and	%o2, 63, %g2
.L611:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o1, %g3, %o1
	jmp	%o7+8
	 or	%o0, %g1, %o0
.L607:
	srl	%o1, 1, %g2
	srl	%g2, %g3, %g2
	sll	%o0, %o2, %g1
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L611
	 and	%o2, 63, %g2
.L609:
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
	be	.L613
	 xnor	%g0, %o2, %g3
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L615
	 and	%o2, 63, %g2
.L617:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L613:
	sll	%o0, 1, %g2
	sll	%g2, %g3, %g2
	srl	%o1, %o2, %g1
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L617
	 and	%o2, 63, %g2
.L615:
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
	b	.L632
	 mov	0, %g1
.L630:
	cmp	%g1, 32
	be	.L634
	 nop
.L632:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L630
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L634:
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
	be	.L642
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L642
	 nop
	mov	1, %o0
.L637:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L637
	 add	%o0, 1, %o0
.L642:
	jmp	%o7+8
	 nop
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	jmp	%o7+8
	 mov	0, %o0
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	jmp	%o7+8
	 mov	0, %o0
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	jmp	%o7+8
	 mov	0, %o0
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
.LC4:
	.long	1073741824
	.align 4
.LC5:
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
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L648
	 sethi	%hi(.LC4), %g1
	cmp	%o1, 0
	bl	.L660
	 ld	[%g1+%lo(.LC4)], %f8
	andcc	%o1, 1, %g0
	be	.L663
	 srl	%o1, 31, %g1
.L651:
	fmuls	%f0, %f8, %f0
.L650:
	srl	%o1, 31, %g1
.L663:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L648
	 andcc	%o1, 1, %g0
	bne	.L651
	 fmuls	%f8, %f8, %f8
	srl	%o1, 31, %g1
.L662:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne	.L651
	 fmuls	%f8, %f8, %f8
	b	.L662
	 srl	%o1, 31, %g1
.L648:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L660:
	sethi	%hi(.LC5), %g1
	andcc	%o1, 1, %g0
	be	.L650
	 ld	[%g1+%lo(.LC5)], %f8
	b	.L650
	 fmuls	%f0, %f8, %f0
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	1073741824
	.long	0
	.align 8
.LC9:
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
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L665
	 sethi	%hi(.LC8), %g1
	cmp	%o2, 0
	bl	.L677
	 ldd	[%g1+%lo(.LC8)], %f8
	andcc	%o2, 1, %g0
	be	.L680
	 srl	%o2, 31, %g1
.L668:
	fmuld	%f0, %f8, %f0
.L667:
	srl	%o2, 31, %g1
.L680:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L665
	 andcc	%o2, 1, %g0
	bne	.L668
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L679:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L668
	 fmuld	%f8, %f8, %f8
	b	.L679
	 srl	%o2, 31, %g1
.L665:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L677:
	sethi	%hi(.LC9), %g1
	andcc	%o2, 1, %g0
	be	.L667
	 ldd	[%g1+%lo(.LC9)], %f8
	b	.L667
	 fmuld	%f0, %f8, %f0
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC12:
	.long	1071644672
	.long	0
	.align 8
.LC13:
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
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L682
	 sethi	%hi(.LC13), %g1
	cmp	%o2, 0
	bl	.L694
	 ldd	[%g1+%lo(.LC13)], %f8
	andcc	%o2, 1, %g0
	be	.L697
	 srl	%o2, 31, %g1
.L685:
	fmuld	%f0, %f8, %f0
.L684:
	srl	%o2, 31, %g1
.L697:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L682
	 andcc	%o2, 1, %g0
	bne	.L685
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L696:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L685
	 fmuld	%f8, %f8, %f8
	b	.L696
	 srl	%o2, 31, %g1
.L682:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L694:
	sethi	%hi(.LC12), %g1
	andcc	%o2, 1, %g0
	be	.L684
	 ldd	[%g1+%lo(.LC12)], %f8
	b	.L684
	 fmuld	%f0, %f8, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L720
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 3
	bleu	.L706
	 or	%o0, %o1, %g1
	andcc	%g1, 3, %g0
	bne	.L706
	 and	%o2, -4, %g4
	mov	0, %g1
	ld	[%o0+%g1], %g3
.L718:
	ld	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L718
	 ld	[%o0+%g1], %g3
	add	%o0, %g1, %g3
	add	%o1, %g1, %o5
	cmp	%o2, %g1
	be	.L720
	 sub	%o2, %g1, %g4
	ldub	[%o0+%g1], %g2
	ldub	[%o1+%g1], %o4
	cmp	%g4, 1
	xor	%g2, %o4, %g2
	be	.L720
	 stb	%g2, [%o0+%g1]
	ldub	[%g3+1], %g2
	ldub	[%o5+1], %g1
	cmp	%g4, 2
	xor	%g1, %g2, %g1
	be	.L720
	 stb	%g1, [%g3+1]
	ldub	[%g3+2], %g2
	ldub	[%o5+2], %g1
	xor	%g1, %g2, %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L706:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L719:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L719
	 ldub	[%o0+%g1], %g3
.L720:
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
	be	.L722
	 mov	%o0, %g1
.L723:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L723
	 add	%g1, 1, %g1
.L722:
	cmp	%o2, 0
	bne,a	.L735
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L726:
	be	.L725
	 add	%o1, 1, %o1
	ldub	[%o1], %g2
.L735:
	add	%g1, 1, %g1
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L726
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L725:
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
	be	.L737
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L744:
	cmp	%g2, 0
	bne,a	.L740
	 add	%g1, 1, %g1
.L737:
	jmp	%o7+8
	 mov	%g1, %o0
.L740:
	cmp	%o1, %g1
	bne,a	.L744
	 ldsb	[%o0+%g1], %g2
	b,a	.L737
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L752
	 mov	0, %o0
.L746:
	mov	%o1, %g1
	b	.L749
	 sra	%g3, 24, %g3
.L748:
	cmp	%g2, %g3
	be	.L752
	 nop
.L749:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L748
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L746
	 add	%o0, 1, %o0
	mov	0, %o0
.L752:
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
.L755:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%o1, %g3
	be,a	.L754
	 mov	%g2, %o0
.L754:
	cmp	%g1, 0
	bne	.L755
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
	be	.L769
	 mov	%o0, %g2
	mov	%o1, %g1
.L759:
	ldsb	[%g1+1], %g3
	cmp	%g3, 0
	bne	.L759
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be	.L783
	 mov	%g2, %o0
	add	%o1, -1, %o0
	sra	%o2, 24, %o2
	b	.L766
	 add	%o0, %g1, %o0
.L780:
	cmp	%g1, 0
	be	.L779
	 add	%g2, 1, %g2
.L766:
	ldsb	[%g2], %g1
	cmp	%g1, %o2
	bne	.L780
	 ldub	[%g2], %g3
	mov	%o1, %g4
	mov	%g2, %o5
	b	.L761
	 and	%g3, 0xff, %g3
.L781:
	cmp	%g0, %g1
	addx	%g0, 0, %o3
	cmp	%g0, %o4
	subx	%g0, -1, %g1
	andcc	%o3, %g1, %g0
	be,a	.L782
	 ldub	[%g4], %g1
	ldub	[%o5], %g3
	cmp	%g3, 0
	be	.L762
	 add	%g4, 1, %g4
.L761:
	ldub	[%g4], %g1
	add	%o5, 1, %o5
	cmp	%g4, %o0
	bne	.L781
	 xor	%g1, %g3, %o4
.L762:
	ldub	[%g4], %g1
.L782:
	cmp	%g3, %g1
	be,a	.L783
	 mov	%g2, %o0
	b	.L766
	 add	%g2, 1, %g2
.L779:
	jmp	%o7+8
	 mov	0, %o0
.L769:
	mov	%g2, %o0
.L783:
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
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f8
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fbl	.L787
	 mov	1, %g1
	mov	0, %g1
.L787:
	andcc	%g1, 1, %g0
	be	.L807
	 st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fble	.L804
	 mov	1, %g1
	andcc	%g1, 1, %g0
	be,a	.L793
	 st	%g0, [%sp+72]
	fnegs	%f0, %f0
.L784:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L793:
.L807:
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fble	.L805
	 mov	1, %g1
	andcc	%g1, 1, %g0
	be	.L784
	 nop
	st	%g0, [%sp+72]
.L808:
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L791
	 mov	1, %g1
	mov	0, %g1
.L791:
	andcc	%g1, 1, %g0
	bne,a	.L784
	 fnegs	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L804:
	mov	0, %g1
	andcc	%g1, 1, %g0
	bne,a	.L784
	 fnegs	%f0, %f0
	b	.L807
	 st	%g0, [%sp+72]
.L805:
	mov	0, %g1
	andcc	%g1, 1, %g0
	bne,a	.L808
	 st	%g0, [%sp+72]
	b,a	.L784
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L828
	 nop
	cmp	%o1, %o3
	blu	.L820
	 sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a	.L828
	 mov	0, %o0
	ldub	[%o2], %o4
	sll	%o4, 24, %o4
	b	.L815
	 sra	%o4, 24, %o5
.L819:
	mov	%g4, %o0
.L811:
	cmp	%o1, %o0
	blu,a	.L828
	 mov	0, %o0
.L815:
	ldsb	[%o0], %g1
	cmp	%g1, %o5
	bne	.L819
	 add	%o0, 1, %g4
	cmp	%o3, 1
	be	.L828
	 nop
.L814:
	b	.L812
	 mov	1, %g1
.L813:
	cmp	%g1, %o3
	be	.L828
	 nop
.L812:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be	.L813
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu	.L820
	 sra	%o4, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne	.L811
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	b	.L814
	 mov	%g1, %o0
.L820:
	jmp	%o7+8
	 mov	0, %o0
.L828:
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
	be	.L830
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L830:
	jmp	%i7+8
	 restore %i0, %i2, %o0
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC19:
	.long	-1074790400
	.long	0
	.align 8
.LC20:
	.long	-1075838976
	.long	0
	.align 8
.LC21:
	.long	1072693248
	.long	0
	.align 8
.LC22:
	.long	1071644672
	.long	0
	.align 8
.LC23:
	.long	1073741824
	.long	0
	.align 8
.LC24:
	.long	1070596096
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
	fbl	.L857
	 sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f10
	fcmped	%f0, %f10
	nop
	fbl	.L858
	 mov	0, %g2
.L837:
	sethi	%hi(.LC22), %g3
	ldd	[%g3+%lo(.LC22)], %f12
	sethi	%hi(.LC23), %g3
	ldd	[%g3+%lo(.LC23)], %f10
	mov	0, %g1
.L843:
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	add	%g1, 1, %g1
	fcmped	%f8, %f10
	nop
	fbge	.L843
	 fmuld	%f0, %f12, %f0
	cmp	%g2, 0
	be	.L834
	 st	%g1, [%o2]
.L860:
	fnegs	%f0, %f0
.L834:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L858:
	sethi	%hi(.LC22), %g1
	ldd	[%g1+%lo(.LC22)], %f10
	fcmped	%f0, %f10
	nop
	fbge,a	.L861
	 st	%g0, [%o2]
	fcmpd	%f0, %f8
	nop
	fbne	.L849
	 fmovs	%f0, %f10
	st	%g0, [%o2]
.L861:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L857:
	sethi	%hi(.LC19), %g1
	ldd	[%g1+%lo(.LC19)], %f8
	fnegs	%f0, %f10
	fcmped	%f0, %f8
	nop
	fbg	.L859
	 fmovs	%f1, %f11
	fmovs	%f10, %f0
	b	.L837
	 mov	1, %g2
.L859:
	sethi	%hi(.LC20), %g1
	ldd	[%g1+%lo(.LC20)], %f8
	fcmped	%f0, %f8
	nop
	fble,a	.L861
	 st	%g0, [%o2]
	mov	1, %g2
.L838:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	sethi	%hi(.LC24), %g3
	ldd	[%g3+%lo(.LC24)], %f10
	mov	0, %g1
.L845:
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	add	%g1, -1, %g1
	fcmped	%f8, %f10
	nop
	fbl	.L845
	 faddd	%f0, %f0, %f0
	cmp	%g2, 0
	bne	.L860
	 st	%g1, [%o2]
	b,a	.L834
.L849:
	b	.L838
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
	be	.L862
	 mov	0, %o3
.L865:
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
	bne	.L865
	 sll	%i3, 1, %i3
.L862:
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
	blu	.L869
	 mov	1, %g1
	b	.L875
	 mov	0, %o0
.L872:
	cmp	%o1, %g2
	bgeu	.L871
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L891
	 nop
.L869:
	cmp	%o1, 0
	bge,a	.L872
	 sll	%o1, 1, %o1
.L870:
	mov	0, %o0
.L875:
	cmp	%g2, %o1
	blu,a	.L892
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L892:
	cmp	%g1, 0
	bne	.L875
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L890
	 nop
.L893:
	jmp	%o7+8
	 nop
.L890:
	jmp	%o7+8
	 mov	%g2, %o0
.L871:
	cmp	%g1, 0
.L891:
	bne	.L870
	 mov	0, %o0
	cmp	%o2, 0
	be	.L893
	 nop
	b,a	.L890
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
	be	.L897
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L897:
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
	be	.L904
	 xor	%i1, %g1, %o1
.L902:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L904:
	cmp	%i1, %i0
	bne	.L902
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
	be	.L911
	 mov	0, %o0
.L907:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L907
	 add	%o0, %g1, %o0
.L911:
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
	blu	.L916
	 and	%o2, -8, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L944
	 cmp	%o2, 0
.L916:
	sll	%g2, 3, %o5
	cmp	%g2, 0
	be	.L945
	 mov	0, %g1
.L919:
	add	%o1, %g1, %g2
	ldd	[%g2], %g2
	add	%o0, %g1, %o4
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne	.L919
	 std	%g2, [%o4]
	cmp	%o2, %g4
	bleu	.L952
	 nop
	sub	%o2, %g4, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L946
	 add	%o0, %g4, %g3
	add	%g4, 1, %g1
	add	%o1, %g4, %o4
	add	%o1, %g1, %g2
	sub	%g3, %g2, %g2
	cmp	%g2, 2
	bleu	.L947
	 mov	1, %o5
.L922:
	andcc	%o5, 1, %g0
	be	.L925
	 or	%o4, %g3, %g2
	andcc	%g2, 3, %g0
	bne	.L925
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L950:
	st	%g2, [%g3+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L950
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L953
	 add	%o5, %g4, %g4
	ldub	[%o1+%g4], %g2
	add	%g4, 1, %g1
	cmp	%o2, %g1
	bleu	.L953
	 stb	%g2, [%o0+%g4]
	ldub	[%o1+%g1], %g2
	add	%g4, 2, %g4
	cmp	%o2, %g4
	bleu	.L953
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L948:
	add	%g1, 1, %g1
.L925:
	ldub	[%o1+%g4], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g4]
	bne	.L948
	 mov	%g1, %g4
.L953:
	jmp	%o7+8
	 nop
.L947:
	b	.L922
	 mov	0, %o5
.L944:
	be	.L953
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L951:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L951
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L945:
	cmp	%o2, 0
	bne	.L925
	 add	%g4, 1, %g1
	jmp	%o7+8
	 nop
.L952:
	jmp	%o7+8
	 nop
.L946:
	b	.L925
	 add	%g4, 1, %g1
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L958
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L980
	 cmp	%o2, 0
.L958:
	cmp	%g4, 0
	be	.L957
	 add	%g4, -1, %g1
	cmp	%g1, 8
	bleu	.L961
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L961
	 add	%o1, 2, %g1
	cmp	%o0, %g1
	be	.L961
	 srl	%o2, 2, %o5
	and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L984:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L984
	 ld	[%o1+%g1], %g2
	sll	%o5, 1, %g2
	cmp	%g4, %g2
	be	.L985
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L957:
	andcc	%o2, 1, %g0
.L985:
	be	.L988
	 nop
	add	%o2, -1, %o2
.L983:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L980:
	be	.L989
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L986:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L986
	 ldub	[%o1+%g1], %g2
.L989:
	jmp	%o7+8
	 nop
.L961:
	sll	%g4, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L987:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a	.L987
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L988
	 nop
	b	.L983
	 add	%o2, -1, %o2
.L988:
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
	blu	.L994
	 and	%o2, -4, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L1022
	 cmp	%o2, 0
.L994:
	sll	%g2, 2, %g4
	cmp	%g2, 0
	be	.L1023
	 mov	0, %g1
	ld	[%o1+%g1], %g2
.L1028:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L1028
	 ld	[%o1+%g1], %g2
	cmp	%o2, %g3
	bleu	.L1031
	 nop
	sub	%o2, %g3, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L1024
	 add	%o0, %g3, %g4
	add	%g3, 1, %g1
	add	%o1, %g3, %o4
	add	%o1, %g1, %g2
	sub	%g4, %g2, %g2
	cmp	%g2, 2
	bleu	.L1025
	 mov	1, %o5
.L1000:
	andcc	%o5, 1, %g0
	be	.L1003
	 or	%o4, %g4, %g2
	andcc	%g2, 3, %g0
	bne	.L1003
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L1029:
	st	%g2, [%g4+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L1029
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L1032
	 add	%o5, %g3, %g3
	ldub	[%o1+%g3], %g2
	add	%g3, 1, %g1
	cmp	%o2, %g1
	bleu	.L1032
	 stb	%g2, [%o0+%g3]
	ldub	[%o1+%g1], %g2
	add	%g3, 2, %g3
	cmp	%o2, %g3
	bleu	.L1032
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g3], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g3]
.L1026:
	add	%g1, 1, %g1
.L1003:
	ldub	[%o1+%g3], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g3]
	bne	.L1026
	 mov	%g1, %g3
.L1032:
	jmp	%o7+8
	 nop
.L1025:
	b	.L1000
	 mov	0, %o5
.L1022:
	be	.L1032
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1030:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L1030
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L1023:
	cmp	%o2, 0
	bne	.L1003
	 add	%g3, 1, %g1
	jmp	%o7+8
	 nop
.L1031:
	jmp	%o7+8
	 nop
.L1024:
	b	.L1003
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
.LC32:
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
	bge	.L1035
	 fitod	%f8, %f0
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f8
	faddd	%f0, %f8, %f0
.L1035:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__uitod, .-__uitod
	.section	.rodata.cst8
	.align 8
.LC34:
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
	bge	.L1037
	 fitod	%f8, %f0
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f8
	faddd	%f0, %f8, %f0
.L1037:
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
	bne	.L1044
	 mov	%o0, %g1
	sra	%o0, 14, %o0
	cmp	%o0, 0
	bne	.L1059
	 nop
	sra	%g1, 13, %g2
	cmp	%g2, 0
	bne	.L1045
	 nop
	sra	%g1, 12, %g2
	cmp	%g2, 0
	bne	.L1046
	 nop
	sra	%g1, 11, %g2
	cmp	%g2, 0
	bne	.L1047
	 nop
	sra	%g1, 10, %g2
	cmp	%g2, 0
	bne	.L1048
	 nop
	sra	%g1, 9, %g2
	cmp	%g2, 0
	bne	.L1049
	 nop
	sra	%g1, 8, %g2
	cmp	%g2, 0
	bne	.L1050
	 nop
	sra	%g1, 7, %g2
	cmp	%g2, 0
	bne	.L1051
	 nop
	sra	%g1, 6, %g2
	cmp	%g2, 0
	bne	.L1052
	 nop
	sra	%g1, 5, %g2
	cmp	%g2, 0
	bne	.L1053
	 nop
	sra	%g1, 4, %g2
	cmp	%g2, 0
	bne	.L1054
	 nop
	sra	%g1, 3, %g2
	cmp	%g2, 0
	bne	.L1055
	 nop
	sra	%g1, 2, %g2
	cmp	%g2, 0
	bne	.L1056
	 nop
	sra	%g1, 1, %g2
	cmp	%g2, 0
	bne	.L1057
	 cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1057:
	mov	14, %o0
.L1059:
	jmp	%o7+8
	 nop
.L1044:
	jmp	%o7+8
	 mov	0, %o0
.L1055:
	jmp	%o7+8
	 mov	12, %o0
.L1045:
	jmp	%o7+8
	 mov	2, %o0
.L1046:
	jmp	%o7+8
	 mov	3, %o0
.L1047:
	jmp	%o7+8
	 mov	4, %o0
.L1048:
	jmp	%o7+8
	 mov	5, %o0
.L1049:
	jmp	%o7+8
	 mov	6, %o0
.L1050:
	jmp	%o7+8
	 mov	7, %o0
.L1051:
	jmp	%o7+8
	 mov	8, %o0
.L1052:
	jmp	%o7+8
	 mov	9, %o0
.L1053:
	jmp	%o7+8
	 mov	10, %o0
.L1054:
	jmp	%o7+8
	 mov	11, %o0
.L1056:
	jmp	%o7+8
	 mov	13, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne	.L1063
	 nop
	andcc	%o0, 2, %g0
	bne	.L1064
	 nop
	andcc	%o0, 4, %g0
	bne	.L1065
	 nop
	andcc	%o0, 8, %g0
	bne	.L1066
	 nop
	andcc	%o0, 16, %g0
	bne	.L1067
	 nop
	andcc	%o0, 32, %g0
	bne	.L1068
	 nop
	andcc	%o0, 64, %g0
	bne	.L1069
	 nop
	andcc	%o0, 128, %g0
	bne	.L1070
	 nop
	andcc	%o0, 256, %g0
	bne	.L1071
	 nop
	andcc	%o0, 512, %g0
	bne	.L1072
	 nop
	andcc	%o0, 1024, %g0
	bne	.L1073
	 nop
	andcc	%o0, 2048, %g0
	bne	.L1074
	 nop
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne	.L1075
	 nop
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne	.L1076
	 nop
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne	.L1077
	 nop
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1063:
	jmp	%o7+8
	 mov	0, %o0
.L1064:
	jmp	%o7+8
	 mov	1, %o0
.L1075:
	jmp	%o7+8
	 mov	12, %o0
.L1065:
	jmp	%o7+8
	 mov	2, %o0
.L1066:
	jmp	%o7+8
	 mov	3, %o0
.L1067:
	jmp	%o7+8
	 mov	4, %o0
.L1068:
	jmp	%o7+8
	 mov	5, %o0
.L1069:
	jmp	%o7+8
	 mov	6, %o0
.L1070:
	jmp	%o7+8
	 mov	7, %o0
.L1071:
	jmp	%o7+8
	 mov	8, %o0
.L1072:
	jmp	%o7+8
	 mov	9, %o0
.L1073:
	jmp	%o7+8
	 mov	10, %o0
.L1074:
	jmp	%o7+8
	 mov	11, %o0
.L1076:
	jmp	%o7+8
	 mov	13, %o0
.L1077:
	jmp	%o7+8
	 mov	14, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC36:
	.long	1191182336
	.section	".text"
	.align 4
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	04
__fixunssfsi:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC36), %g1
	ld	[%sp+76], %f8
	ld	[%g1+%lo(.LC36)], %f9
	fcmpes	%f8, %f9
	nop
	fbge,a	.L1085
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1085:
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
	be	.L1094
	 mov	0, %o0
.L1090:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L1090
	 add	%o0, %g1, %o0
.L1094:
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
	be	.L1102
	 mov	0, %o0
	cmp	%o1, 0
	be	.L1102
	 nop
.L1097:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	sll	%g2, 1, %g2
	bne	.L1097
	 add	%o0, %g1, %o0
.L1102:
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
	bgu	.L1104
	 mov	1, %g1
	b	.L1110
	 mov	0, %o0
.L1107:
	cmp	%o1, %g2
	bgeu	.L1106
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1126
	 nop
.L1104:
	cmp	%o1, 0
	bge,a	.L1107
	 sll	%o1, 1, %o1
.L1105:
	mov	0, %o0
.L1110:
	cmp	%g2, %o1
	blu,a	.L1127
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1127:
	cmp	%g1, 0
	bne	.L1110
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1125
	 nop
.L1128:
	jmp	%o7+8
	 nop
.L1125:
	jmp	%o7+8
	 mov	%g2, %o0
.L1106:
	cmp	%g1, 0
.L1126:
	bne	.L1105
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1128
	 nop
	b,a	.L1125
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
	fbl	.L1129
	 mov	-1, %g1
	nop
	fble	.L1133
	 mov	1, %g1
.L1129:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1133:
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
	fbl	.L1134
	 mov	-1, %g1
	nop
	fble	.L1138
	 mov	1, %g1
.L1134:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1138:
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
	bl	.L1151
	 mov	%o0, %g3
	be	.L1146
	 mov	0, %o4
.L1143:
	mov	1, %g4
	mov	0, %o0
.L1145:
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
	bne	.L1145
	 sll	%g3, 1, %g3
	cmp	%o4, 0
	be	.L1152
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1146:
	mov	0, %o0
.L1152:
	jmp	%o7+8
	 nop
.L1151:
	sub	%g0, %o1, %o1
	b	.L1143
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	mov	1, %g1
	cmp	%o0, 0
	bge	.L1154
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	0, %g1
	mov	1, %g3
.L1154:
	cmp	%o1, 0
	bge	.L1178
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	mov	%g1, %g3
.L1178:
	cmp	%o0, %o1
	bgu	.L1156
	 mov	1, %g1
	b	.L1162
	 mov	0, %o0
.L1176:
	cmp	%g1, 0
	be,a	.L1158
	 mov	0, %o0
.L1156:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1176
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1158
	 mov	0, %o0
.L1162:
	cmp	%o1, %g2
	bgu,a	.L1179
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1179:
	cmp	%g1, 0
	bne	.L1162
	 srl	%o1, 1, %o1
.L1158:
	cmp	%g3, 0
	bne,a	.L1177
	 sub	%g0, %o0, %o0
.L1177:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1181
	 mov	0, %g4
	sub	%g0, %o0, %o0
	mov	1, %g4
.L1181:
	sra	%o1, 31, %g3
	mov	%o0, %g2
	xor	%g3, %o1, %o1
	sub	%o1, %g3, %o1
	cmp	%o0, %o1
	bgu	.L1182
	 mov	1, %g1
	b	.L1203
	 cmp	%o1, %g2
.L1202:
	cmp	%g1, 0
	be	.L1205
	 cmp	%g4, 0
.L1182:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1202
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1205
	 cmp	%g4, 0
.L1188:
	cmp	%o1, %g2
.L1203:
	bleu,a	.L1187
	 sub	%g2, %o1, %g2
.L1187:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1188
	 srl	%o1, 1, %o1
	mov	%g2, %o0
	cmp	%g4, 0
.L1205:
	bne,a	.L1204
	 sub	%g0, %o0, %o0
.L1204:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1207
	 mov	1, %g2
	b	.L1293
	 mov	0, %g4
.L1210:
	sll	%g2, 1, %g3
	srl	%g1, 16, %g1
	mov	%g3, %g4
	cmp	%g1, %o0
	bgeu	.L1294
	 sll	%g2, 17, %o5
	cmp	%o5, 0
	be	.L1212
	 mov	%g3, %g2
	mov	%g1, %o1
.L1207:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge	.L1210
	 sll	%o1, 17, %g1
	cmp	%o0, %o1
	blu	.L1233
	 mov	0, %g4
	sub	%o0, %o1, %o0
	mov	%g2, %g4
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
.L1233:
	sll	%g2, 16, %g3
	srl	%o1, 1, %o5
	srl	%g3, 17, %g1
	cmp	%g1, 0
	be	.L1212
	 mov	%g1, %g2
.L1214:
	cmp	%o0, %o5
	blu,a	.L1300
	 srl	%g3, 18, %g2
	sub	%o0, %o5, %o5
	or	%g4, %g2, %g4
	sll	%o5, 16, %o5
	srl	%o5, 16, %o0
	srl	%g3, 18, %g2
.L1300:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 2, %g1
	cmp	%o0, %g1
	blu,a	.L1301
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 19, %g2
.L1301:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 3, %g1
	cmp	%o0, %g1
	blu,a	.L1302
	 srl	%g3, 20, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 20, %g2
.L1302:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a	.L1303
	 srl	%g3, 21, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 21, %g2
.L1303:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a	.L1304
	 srl	%g3, 22, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 22, %g2
.L1304:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a	.L1305
	 srl	%g3, 23, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 23, %g2
.L1305:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a	.L1295
	 sub	%o0, %g1, %g1
.L1221:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a	.L1296
	 sub	%o0, %g1, %g1
.L1222:
	srl	%g3, 25, %g2
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a	.L1297
	 sub	%o0, %g1, %g1
.L1223:
	srl	%g3, 26, %g2
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a	.L1298
	 sub	%o0, %g1, %g1
.L1224:
	srl	%g3, 27, %g2
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a	.L1299
	 sub	%o0, %g1, %g1
.L1225:
	srl	%g3, 28, %g2
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a	.L1306
	 srl	%g3, 29, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 29, %g2
.L1306:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a	.L1307
	 srl	%g3, 30, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 30, %g2
.L1307:
	cmp	%g2, 0
	be	.L1212
	 srl	%o1, 14, %g1
	cmp	%o0, %g1
	blu	.L1308
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
.L1308:
	bge	.L1212
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a	.L1212
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%g4, 1, %g4
	sll	%o1, 16, %g1
	srl	%g1, 16, %o0
.L1212:
	cmp	%o2, 0
.L1309:
	bne,a	.L1231
	 mov	%o0, %g4
.L1231:
	sll	%g4, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
.L1294:
	cmp	%o5, 0
	be	.L1212
	 cmp	%o0, %g1
	blu	.L1213
	 sethi	%hi(31744), %o4
	sub	%o0, %g1, %o0
	sll	%o0, 16, %o0
	or	%o4, 1023, %o4
	srl	%o0, 16, %o0
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	mov	%g1, %o1
	b	.L1214
	 sll	%g3, 16, %g3
.L1295:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1221
	 srl	%g1, 16, %o0
.L1213:
	mov	0, %g4
	or	%o4, 1023, %o4
	sll	%g3, 16, %g3
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	b	.L1214
	 mov	%g1, %o1
.L1296:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1222
	 srl	%g1, 16, %o0
.L1297:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1223
	 srl	%g1, 16, %o0
.L1298:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1224
	 srl	%g1, 16, %o0
.L1299:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1225
	 srl	%g1, 16, %o0
.L1293:
	bne	.L1309
	 cmp	%o2, 0
	mov	1, %g4
	b	.L1309
	 mov	0, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1311
	 mov	1, %g1
	b	.L1317
	 mov	0, %o0
.L1314:
	cmp	%o1, %g2
	bgeu	.L1313
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1333
	 nop
.L1311:
	cmp	%o1, 0
	bge,a	.L1314
	 sll	%o1, 1, %o1
.L1312:
	mov	0, %o0
.L1317:
	cmp	%g2, %o1
	blu,a	.L1334
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1334:
	cmp	%g1, 0
	bne	.L1317
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1332
	 nop
.L1335:
	jmp	%o7+8
	 nop
.L1332:
	jmp	%o7+8
	 mov	%g2, %o0
.L1313:
	cmp	%g1, 0
.L1333:
	bne	.L1312
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1335
	 nop
	b,a	.L1332
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1337
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1337:
	be	.L1341
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1341:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1343
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1347:
	jmp	%o7+8
	 nop
.L1343:
	be	.L1347
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
	bne	.L1352
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1352:
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
	bl	.L1354
	 mov	0, %g1
	bg	.L1354
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1354
	 mov	0, %g1
	bgu	.L1354
	 mov	2, %g1
	mov	1, %g1
.L1354:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1360
	 mov	-1, %g1
	bg	.L1360
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1360
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1360:
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
	be,a	.L1367
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1367:
	be	.L1371
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1371:
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
.LC38:
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
	sethi	%hi(.LC38), %g2
	ldd	[%sp+72], %f8
	ldd	[%g2+%lo(.LC38)], %f0
	andcc	%o2, 1, %g0
	be	.L1380
	 mov	%o2, %g1
.L1382:
	fmuld	%f0, %f8, %f0
.L1380:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1381
	 andcc	%g1, 1, %g0
	bne	.L1382
	 fmuld	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1387:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1382
	 fmuld	%f8, %f8, %f8
	b	.L1387
	 srl	%g1, 31, %g2
.L1381:
	cmp	%o2, 0
	bge	.L1379
	 sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f8
	fdivd	%f8, %f0, %f0
.L1379:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC40:
	.long	1065353216
	.section	".text"
	.align 4
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC40), %g2
	ld	[%sp+76], %f8
	ld	[%g2+%lo(.LC40)], %f0
	andcc	%o1, 1, %g0
	be	.L1389
	 mov	%o1, %g1
.L1391:
	fmuls	%f0, %f8, %f0
.L1389:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1390
	 andcc	%g1, 1, %g0
	bne	.L1391
	 fmuls	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1396:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1391
	 fmuls	%f8, %f8, %f8
	b	.L1396
	 srl	%g1, 31, %g2
.L1390:
	cmp	%o1, 0
	bge	.L1388
	 sethi	%hi(.LC40), %g1
	ld	[%g1+%lo(.LC40)], %f8
	fdivs	%f8, %f0, %f0
.L1388:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1397
	 mov	0, %g1
	bgu	.L1397
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1397
	 mov	0, %g1
	bgu	.L1397
	 mov	2, %g1
	mov	1, %g1
.L1397:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1403
	 mov	-1, %g1
	bgu	.L1403
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1403
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1403:
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
