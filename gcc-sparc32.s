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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f12
	fcmped	%f8, %f12
	nop
	fbl	.L207
	 mov	1, %g2
	mov	0, %g2
.L207:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f12
	fcmped	%f10, %f12
	nop
	fbl	.L208
	 mov	1, %g1
	mov	0, %g1
.L208:
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L206
	 fmovs	%f8, %f0
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L205
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L206:
	fmovs	%f9, %f1
	fcmped	%f0, %f10
	nop
	fbge	.L205
	 nop
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmax, .-fmax
	.section	.rodata.cst4
	.align 4
.LC6:
	.long	0
	.section	".text"
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC6), %g1
	ld	[%sp+76], %f8
	ld	[%g1+%lo(.LC6)], %f10
	st	%o1, [%sp+76]
	mov	1, %g2
	fcmpes	%f8, %f10
	nop
	fbl	.L217
	 ld	[%sp+76], %f9
	mov	0, %g2
.L217:
	sethi	%hi(.LC6), %g3
	ld	[%g3+%lo(.LC6)], %f10
	fcmpes	%f9, %f10
	nop
	fbl	.L218
	 mov	1, %g1
	mov	0, %g1
.L218:
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L216
	 fcmpes	%f8, %f9
	fmovs	%f9, %f0
	sethi	%hi(.LC6), %g1
	ld	[%g1+%lo(.LC6)], %f9
	fcmpes	%f8, %f9
	nop
	fbge,a	.L215
	 fmovs	%f8, %f0
.L215:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L216:
	nop
	fbge	.L215
	 fmovs	%f8, %f0
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
	ldd	[%sp+72], %f10
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f12
	fcmped	%f8, %f12
	nop
	fbl	.L227
	 mov	1, %g2
	mov	0, %g2
.L227:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f12
	fcmped	%f10, %f12
	nop
	fbl	.L228
	 mov	1, %g1
	mov	0, %g1
.L228:
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L226
	 fmovs	%f8, %f0
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L225
	 nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
.L225:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L226:
	fmovs	%f9, %f1
	fcmped	%f0, %f10
	nop
	fbge	.L225
	 nop
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
	ldd	[%sp+72], %f0
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f8
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fbl	.L237
	 mov	1, %g2
	mov	0, %g2
.L237:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L238
	 mov	1, %g1
	mov	0, %g1
.L238:
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L236
	 fcmped	%f0, %f8
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fbl	.L235
	 nop
	fmovs	%f8, %f0
.L246:
	fmovs	%f9, %f1
.L235:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L236:
	nop
	fbg,a	.L246
	 fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmin, .-fmin
	.section	.rodata.cst4
	.align 4
.LC12:
	.long	0
	.section	".text"
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC12), %g1
	ld	[%sp+76], %f0
	ld	[%g1+%lo(.LC12)], %f9
	st	%o1, [%sp+76]
	mov	1, %g2
	fcmpes	%f0, %f9
	nop
	fbl	.L249
	 ld	[%sp+76], %f8
	mov	0, %g2
.L249:
	sethi	%hi(.LC12), %g3
	ld	[%g3+%lo(.LC12)], %f9
	fcmpes	%f8, %f9
	nop
	fbl	.L250
	 mov	1, %g1
	mov	0, %g1
.L250:
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L248
	 fcmpes	%f0, %f8
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	fcmpes	%f0, %f9
	nop
	fbge,a	.L247
	 fmovs	%f8, %f0
.L247:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L248:
	nop
	fbg,a	.L247
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
	ldd	[%sp+72], %f0
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f8
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fbl	.L260
	 mov	1, %g2
	mov	0, %g2
.L260:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L261
	 mov	1, %g1
	mov	0, %g1
.L261:
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L259
	 fcmped	%f0, %f8
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fbl	.L258
	 nop
	fmovs	%f8, %f0
.L269:
	fmovs	%f9, %f1
.L258:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L259:
	nop
	fbg,a	.L269
	 fmovs	%f8, %f0
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
	be	.L273
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L272:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L272
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L273:
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
	be,a	.L283
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L285
	 st	%o0, [%g1+4]
.L285:
	jmp	%o7+8
	 nop
.L283:
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
	be	.L296
	 ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g2
.L296:
	cmp	%g2, 0
	bne,a	.L295
	 st	%g1, [%g2]
.L295:
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
	be	.L298
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L300
	 mov	0, %l0
.L312:
	cmp	%l1, %l0
	be	.L298
	 add	%i5, %i3, %i5
.L300:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a	.L312
	 add	%l0, 1, %l0
.L314:
	jmp	%i7+8
	 restore
.L298:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L314
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
	be	.L316
	 mov	0, %i5
	b	.L327
	 mov	%i1, %o1
.L326:
	cmp	%l0, %i5
	be	.L316
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L327:
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cmp	%o0, 0
	bne,a	.L326
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L316:
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
.L354:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L349
	 cmp	%g2, 32
	bne	.L330
	 sra	%g3, 24, %g3
.L349:
	ldub	[%o0+1], %g1
	b	.L354
	 add	%o0, 1, %o0
.L330:
	cmp	%g3, 43
	be	.L335
	 cmp	%g3, 45
	bne	.L355
	 add	%g2, -48, %g3
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L344
	 add	%o0, 1, %g2
	mov	1, %o4
.L338:
	mov	0, %o0
.L341:
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
	bleu	.L341
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L356
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L355:
	mov	0, %o4
	cmp	%g3, 9
	bleu	.L338
	 mov	%o0, %g2
.L344:
	mov	0, %o0
.L356:
	jmp	%o7+8
	 nop
.L335:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L338
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
.L380:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L376
	 cmp	%g2, 32
	bne	.L358
	 sra	%g3, 24, %g3
.L376:
	ldub	[%o0+1], %g1
	b	.L380
	 add	%o0, 1, %o0
.L358:
	cmp	%g3, 43
	be	.L363
	 cmp	%g3, 45
	be,a	.L381
	 ldsb	[%o0+1], %g3
	add	%g2, -48, %g3
	mov	0, %o4
	cmp	%g3, 9
	bgu	.L371
	 mov	%o0, %g2
.L365:
	mov	0, %o0
.L368:
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
	bleu	.L368
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L382
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L381:
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L365
	 mov	1, %o4
.L371:
	mov	0, %o0
.L382:
	jmp	%o7+8
	 nop
.L363:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L371
	 add	%o0, 1, %g2
	b	.L365
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	ldub	[%i0], %g1
.L408:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L403
	 cmp	%g2, 32
	bne	.L384
	 sra	%g3, 24, %g3
.L403:
	ldub	[%i0+1], %g1
	b	.L408
	 add	%i0, 1, %i0
.L384:
	cmp	%g3, 43
	be	.L389
	 cmp	%g3, 45
	bne	.L409
	 add	%g2, -48, %g3
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L398
	 add	%i0, 1, %g2
	mov	1, %o7
.L392:
	mov	0, %i0
	mov	0, %i1
.L395:
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
	bleu	.L395
	 ldub	[%g2], %g1
	cmp	%o7, 0
	bne	.L410
	 nop
	subcc	%i3, %i5, %i1
	subx	%i2, %i4, %i0
	jmp	%i7+8
	 restore
.L409:
	mov	0, %o7
	cmp	%g3, 9
	bleu	.L392
	 mov	%i0, %g2
.L398:
	mov	0, %i0
	mov	0, %i1
.L410:
	jmp	%i7+8
	 restore
.L389:
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	add	%i0, 1, %g2
	cmp	%g3, 9
	bleu	.L392
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
.L422:
	cmp	%i2, 0
	be	.L424
	 mov	0, %i5
.L423:
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
	bl,a	.L422
	 mov	%l0, %i2
	be	.L412
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L423
	 add	%i5, %i3, %i1
	mov	0, %i5
.L412:
.L424:
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
	be	.L430
	 mov	%i0, %l1
.L426:
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
	be	.L439
	 nop
.L438:
	ble	.L428
	 add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	bne	.L426
	 add	%i0, %i3, %i1
.L430:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L428:
	cmp	%l0, 0
	be	.L430
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
	bne	.L438
	 nop
.L439:
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
	bne	.L454
	 cmp	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
.L450:
	cmp	%g1, 0
	be	.L451
	 add	%o0, 4, %o0
	cmp	%o1, %g1
.L454:
	bne,a	.L450
	 ld	[%o0+4], %g1
	jmp	%o7+8
	 nop
.L451:
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
	be	.L457
	 add	%o1, -4, %o1
	b	.L466
	 mov	-1, %o0
.L459:
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	bne,a	.L466
	 mov	-1, %o0
.L457:
	cmp	%g2, 0
	bne,a	.L459
	 ld	[%o0+%g1], %g2
	mov	-1, %o0
	cmp	%g2, %g3
.L466:
	bl	.L467
	 nop
	ble	.L465
	 mov	1, %o0
.L467:
	jmp	%o7+8
	 nop
.L465:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L469:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L469
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
	be	.L474
	 nop
	mov	%o0, %g1
.L473:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L473
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
.L474:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L493
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L490:
	be,a	.L494
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L484
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L493:
	ld	[%o1], %g2
	cmp	%g2, %g1
	be	.L490
	 cmp	%g1, 0
	ld	[%o0], %g2
.L494:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L491
	 nop
	ble	.L484
	 mov	1, %o0
	jmp	%o7+8
	 nop
.L491:
	jmp	%o7+8
	 mov	-1, %o0
.L484:
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
	bne,a	.L503
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L499:
	be	.L500
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L503:
	cmp	%g1, %o1
	bne,a	.L499
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L500:
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
	bne,a	.L518
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L508:
	addcc	%o2, -1, %o2
	be	.L512
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L518:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be	.L508
	 add	%o0, 4, %o0
	bl,a	.L517
	 mov	-1, %o0
	bg	.L517
	 mov	1, %o0
.L512:
	jmp	%o7+8
	 mov	0, %o0
.L517:
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
	be	.L524
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L524:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L542
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L539
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L542
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L541:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L541
	 ld	[%o1+%g1], %g2
.L543:
	jmp	%o7+8
	 nop
.L539:
	cmp	%o2, 0
	be	.L543
	 mov	0, %g2
.L528:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L528
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L542:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L551
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L546:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L546
	 add	%g2, 4, %g2
.L551:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L553
	 nop
	cmp	%o2, 0
	be	.L591
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L588:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L588
	 ldub	[%o0+%o2], %g1
.L592:
	jmp	%o7+8
	 nop
.L553:
	bne,a	.L586
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L586:
	be	.L591
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L564
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L564
	 add	%o0, 1, %g1
	sub	%o1, %g1, %g1
	cmp	%g1, 2
	bleu	.L587
	 mov	1, %g2
.L557:
	andcc	%g2, 1, %g0
	be	.L564
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o0+%g1], %g2
.L589:
	st	%g2, [%o1+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L589
	 ld	[%o0+%g1], %g2
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be	.L592
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %o5
	cmp	%g2, 1
	be	.L592
	 stb	%o5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be	.L592
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L587:
	b	.L557
	 mov	0, %g2
.L564:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L590:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L590
	 ldub	[%o0+%g1], %g2
.L591:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L594
	 xnor	%g0, %o2, %g3
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L596
	 and	%o2, 63, %g2
.L598:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o1, %g3, %o1
	jmp	%o7+8
	 or	%o0, %g1, %o0
.L594:
	srl	%o1, 1, %g2
	srl	%g2, %g3, %g2
	sll	%o0, %o2, %g1
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L598
	 and	%o2, 63, %g2
.L596:
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
	be	.L600
	 xnor	%g0, %o2, %g3
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L602
	 and	%o2, 63, %g2
.L604:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L600:
	sll	%o0, 1, %g2
	sll	%g2, %g3, %g2
	srl	%o1, %o2, %g1
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L604
	 and	%o2, 63, %g2
.L602:
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
	b	.L619
	 mov	0, %g1
.L617:
	cmp	%g1, 32
	be	.L621
	 nop
.L619:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L617
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L621:
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
	be	.L629
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L629
	 nop
	mov	1, %o0
.L624:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L624
	 add	%o0, 1, %o0
.L629:
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
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L635
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bl	.L647
	 ld	[%g1+%lo(.LC16)], %f8
	andcc	%o1, 1, %g0
	be	.L650
	 srl	%o1, 31, %g1
.L638:
	fmuls	%f0, %f8, %f0
.L637:
	srl	%o1, 31, %g1
.L650:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L635
	 andcc	%o1, 1, %g0
	bne	.L638
	 fmuls	%f8, %f8, %f8
	srl	%o1, 31, %g1
.L649:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne	.L638
	 fmuls	%f8, %f8, %f8
	b	.L649
	 srl	%o1, 31, %g1
.L635:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L647:
	sethi	%hi(.LC17), %g1
	andcc	%o1, 1, %g0
	be	.L637
	 ld	[%g1+%lo(.LC17)], %f8
	b	.L637
	 fmuls	%f0, %f8, %f0
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8,"aM",@progbits,8
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
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L652
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bl	.L664
	 ldd	[%g1+%lo(.LC20)], %f8
	andcc	%o2, 1, %g0
	be	.L667
	 srl	%o2, 31, %g1
.L655:
	fmuld	%f0, %f8, %f0
.L654:
	srl	%o2, 31, %g1
.L667:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L652
	 andcc	%o2, 1, %g0
	bne	.L655
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L666:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L655
	 fmuld	%f8, %f8, %f8
	b	.L666
	 srl	%o2, 31, %g1
.L652:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L664:
	sethi	%hi(.LC21), %g1
	andcc	%o2, 1, %g0
	be	.L654
	 ldd	[%g1+%lo(.LC21)], %f8
	b	.L654
	 fmuld	%f0, %f8, %f0
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
	ldd	[%sp+72], %f10
	faddd	%f10, %f10, %f0
	fcmpd	%f10, %f0
	nop
	fbe	.L668
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bl	.L680
	 ldd	[%g1+%lo(.LC25)], %f8
	fmovs	%f10, %f0
	andcc	%o2, 1, %g0
	be	.L671
	 fmovs	%f11, %f1
.L672:
	fmuld	%f0, %f8, %f0
.L671:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L668
	 andcc	%o2, 1, %g0
	bne	.L672
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L682:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L672
	 fmuld	%f8, %f8, %f8
	b	.L682
	 srl	%o2, 31, %g1
.L668:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L680:
	sethi	%hi(.LC24), %g1
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	andcc	%o2, 1, %g0
	be	.L671
	 ldd	[%g1+%lo(.LC24)], %f8
	b	.L671
	 fmuld	%f0, %f8, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L705
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 3
	bleu	.L691
	 or	%o0, %o1, %g1
	andcc	%g1, 3, %g0
	bne	.L691
	 and	%o2, -4, %g4
	mov	0, %g1
	ld	[%o0+%g1], %g3
.L703:
	ld	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L703
	 ld	[%o0+%g1], %g3
	add	%o0, %g1, %g3
	add	%o1, %g1, %o5
	cmp	%o2, %g1
	be	.L705
	 sub	%o2, %g1, %g4
	ldub	[%o0+%g1], %g2
	ldub	[%o1+%g1], %o4
	cmp	%g4, 1
	xor	%g2, %o4, %g2
	be	.L705
	 stb	%g2, [%o0+%g1]
	ldub	[%g3+1], %g2
	ldub	[%o5+1], %g1
	cmp	%g4, 2
	xor	%g1, %g2, %g1
	be	.L705
	 stb	%g1, [%g3+1]
	ldub	[%g3+2], %g2
	ldub	[%o5+2], %g1
	xor	%g1, %g2, %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L691:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L704:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L704
	 ldub	[%o0+%g1], %g3
.L705:
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
	be	.L707
	 mov	%o0, %g1
.L708:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L708
	 add	%g1, 1, %g1
.L707:
	cmp	%o2, 0
	bne,a	.L720
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L711:
	be	.L710
	 add	%o1, 1, %o1
	ldub	[%o1], %g2
.L720:
	add	%g1, 1, %g1
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L711
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L710:
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
	be	.L722
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L729:
	cmp	%g2, 0
	bne,a	.L725
	 add	%g1, 1, %g1
.L722:
	jmp	%o7+8
	 mov	%g1, %o0
.L725:
	cmp	%o1, %g1
	bne,a	.L729
	 ldsb	[%o0+%g1], %g2
	b,a	.L722
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L737
	 mov	0, %o0
.L731:
	mov	%o1, %g1
	b	.L734
	 sra	%g3, 24, %g3
.L733:
	cmp	%g2, %g3
	be	.L737
	 nop
.L734:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L733
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L731
	 add	%o0, 1, %o0
	mov	0, %o0
.L737:
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
.L740:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%o1, %g3
	be,a	.L739
	 mov	%g2, %o0
.L739:
	cmp	%g1, 0
	bne	.L740
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
	be	.L754
	 mov	%o0, %g2
	mov	%o1, %g1
.L744:
	ldsb	[%g1+1], %g3
	cmp	%g3, 0
	bne	.L744
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be	.L768
	 mov	%g2, %o0
	add	%o1, -1, %o0
	sra	%o2, 24, %o2
	b	.L751
	 add	%o0, %g1, %o0
.L765:
	cmp	%g1, 0
	be	.L764
	 add	%g2, 1, %g2
.L751:
	ldsb	[%g2], %g1
	cmp	%g1, %o2
	bne	.L765
	 ldub	[%g2], %g3
	mov	%o1, %g4
	mov	%g2, %o5
	b	.L746
	 and	%g3, 0xff, %g3
.L766:
	cmp	%g0, %g1
	addx	%g0, 0, %o3
	cmp	%g0, %o4
	subx	%g0, -1, %g1
	andcc	%o3, %g1, %g0
	be,a	.L767
	 ldub	[%g4], %g1
	ldub	[%o5], %g3
	cmp	%g3, 0
	be	.L747
	 add	%g4, 1, %g4
.L746:
	ldub	[%g4], %g1
	add	%o5, 1, %o5
	cmp	%g4, %o0
	bne	.L766
	 xor	%g1, %g3, %o4
.L747:
	ldub	[%g4], %g1
.L767:
	cmp	%g3, %g1
	be,a	.L768
	 mov	%g2, %o0
	b	.L751
	 add	%g2, 1, %g2
.L764:
	jmp	%o7+8
	 mov	0, %o0
.L754:
	mov	%g2, %o0
.L768:
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
	fbl	.L772
	 mov	1, %g1
	mov	0, %g1
.L772:
	andcc	%g1, 1, %g0
	be	.L792
	 st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fble	.L789
	 mov	1, %g1
	andcc	%g1, 1, %g0
	be,a	.L778
	 st	%g0, [%sp+72]
	fnegs	%f0, %f0
.L769:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L778:
.L792:
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f0, %f10
	nop
	fble	.L790
	 mov	1, %g1
	andcc	%g1, 1, %g0
	be	.L769
	 nop
	st	%g0, [%sp+72]
.L793:
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f10
	fcmped	%f8, %f10
	nop
	fbl	.L776
	 mov	1, %g1
	mov	0, %g1
.L776:
	andcc	%g1, 1, %g0
	bne,a	.L769
	 fnegs	%f0, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L789:
	mov	0, %g1
	andcc	%g1, 1, %g0
	bne,a	.L769
	 fnegs	%f0, %f0
	b	.L792
	 st	%g0, [%sp+72]
.L790:
	mov	0, %g1
	andcc	%g1, 1, %g0
	bne,a	.L793
	 st	%g0, [%sp+72]
	b,a	.L769
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L813
	 nop
	cmp	%o1, %o3
	blu	.L805
	 sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a	.L813
	 mov	0, %o0
	ldub	[%o2], %o4
	sll	%o4, 24, %o4
	b	.L800
	 sra	%o4, 24, %o5
.L804:
	mov	%g4, %o0
.L796:
	cmp	%o1, %o0
	blu,a	.L813
	 mov	0, %o0
.L800:
	ldsb	[%o0], %g1
	cmp	%g1, %o5
	bne	.L804
	 add	%o0, 1, %g4
	cmp	%o3, 1
	be	.L813
	 nop
.L799:
	b	.L797
	 mov	1, %g1
.L798:
	cmp	%g1, %o3
	be	.L813
	 nop
.L797:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be	.L798
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu	.L805
	 sra	%o4, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne	.L796
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	b	.L799
	 mov	%g1, %o0
.L805:
	jmp	%o7+8
	 mov	0, %o0
.L813:
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
	be	.L815
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L815:
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
	.align 8
.LC33:
	.long	1073741824
	.long	0
	.align 8
.LC34:
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
	fbge	.L820
	 mov	0, %g2
	fnegs	%f0, %f0
	mov	1, %g2
.L820:
	sethi	%hi(.LC31), %g3
	ldd	[%g3+%lo(.LC31)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L847
	 mov	0, %g1
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f12
	sethi	%hi(.LC33), %g3
	ldd	[%g3+%lo(.LC33)], %f10
.L824:
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	add	%g1, 1, %g1
	fcmped	%f8, %f10
	nop
	fbge	.L824
	 fmuld	%f0, %f12, %f0
.L825:
.L850:
	cmp	%g2, 0
.L849:
	be	.L829
	 st	%g1, [%o2]
	fnegs	%f0, %f0
.L829:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L847:
	sethi	%hi(.LC32), %g3
	ldd	[%g3+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbl	.L826
	 mov	1, %g1
	mov	0, %g1
.L826:
	andcc	%g1, 1, %g0
	be,a	.L850
	 mov	0, %g1
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L848
	 mov	1, %g1
.L827:
	andcc	%g1, 1, %g0
	be	.L831
	 sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f10
	mov	0, %g1
.L828:
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	add	%g1, -1, %g1
	fcmped	%f8, %f10
	nop
	fbl	.L828
	 faddd	%f0, %f0, %f0
	b	.L849
	 cmp	%g2, 0
.L831:
	b	.L825
	 mov	0, %g1
.L848:
	b	.L827
	 mov	0, %g1
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
	be	.L851
	 mov	0, %o3
.L854:
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
	bne	.L854
	 sll	%i3, 1, %i3
.L851:
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
	blu	.L858
	 mov	1, %g1
	b	.L864
	 mov	0, %o0
.L861:
	cmp	%o1, %g2
	bgeu	.L860
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L880
	 nop
.L858:
	cmp	%o1, 0
	bge,a	.L861
	 sll	%o1, 1, %o1
.L859:
	mov	0, %o0
.L864:
	cmp	%g2, %o1
	blu,a	.L881
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L881:
	cmp	%g1, 0
	bne	.L864
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L879
	 nop
.L882:
	jmp	%o7+8
	 nop
.L879:
	jmp	%o7+8
	 mov	%g2, %o0
.L860:
	cmp	%g1, 0
.L880:
	bne	.L859
	 mov	0, %o0
	cmp	%o2, 0
	be	.L882
	 nop
	b,a	.L879
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
	be	.L886
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L886:
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
	be	.L893
	 xor	%i1, %g1, %o1
.L891:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L893:
	cmp	%i1, %i0
	bne	.L891
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
	be	.L900
	 mov	0, %o0
.L896:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L896
	 add	%o0, %g1, %o0
.L900:
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
	blu	.L905
	 and	%o2, -8, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L933
	 cmp	%o2, 0
.L905:
	sll	%g2, 3, %o5
	cmp	%g2, 0
	be	.L934
	 mov	0, %g1
.L908:
	add	%o1, %g1, %g2
	ldd	[%g2], %g2
	add	%o0, %g1, %o4
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne	.L908
	 std	%g2, [%o4]
	cmp	%o2, %g4
	bleu	.L941
	 nop
	sub	%o2, %g4, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L935
	 add	%o0, %g4, %g3
	add	%g4, 1, %g1
	add	%o1, %g4, %o4
	add	%o1, %g1, %g2
	sub	%g3, %g2, %g2
	cmp	%g2, 2
	bleu	.L936
	 mov	1, %o5
.L911:
	andcc	%o5, 1, %g0
	be	.L914
	 or	%o4, %g3, %g2
	andcc	%g2, 3, %g0
	bne	.L914
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L939:
	st	%g2, [%g3+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L939
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L942
	 add	%o5, %g4, %g4
	ldub	[%o1+%g4], %g2
	add	%g4, 1, %g1
	cmp	%o2, %g1
	bleu	.L942
	 stb	%g2, [%o0+%g4]
	ldub	[%o1+%g1], %g2
	add	%g4, 2, %g4
	cmp	%o2, %g4
	bleu	.L942
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L937:
	add	%g1, 1, %g1
.L914:
	ldub	[%o1+%g4], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g4]
	bne	.L937
	 mov	%g1, %g4
.L942:
	jmp	%o7+8
	 nop
.L936:
	b	.L911
	 mov	0, %o5
.L933:
	be	.L942
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L940:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L940
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L934:
	cmp	%o2, 0
	bne	.L914
	 add	%g4, 1, %g1
	jmp	%o7+8
	 nop
.L941:
	jmp	%o7+8
	 nop
.L935:
	b	.L914
	 add	%g4, 1, %g1
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L947
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L969
	 cmp	%o2, 0
.L947:
	cmp	%g4, 0
	be	.L946
	 add	%g4, -1, %g1
	cmp	%g1, 8
	bleu	.L950
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L950
	 add	%o1, 2, %g1
	cmp	%o0, %g1
	be	.L950
	 srl	%o2, 2, %o5
	and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L973:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L973
	 ld	[%o1+%g1], %g2
	sll	%o5, 1, %g2
	cmp	%g4, %g2
	be	.L974
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L946:
	andcc	%o2, 1, %g0
.L974:
	be	.L977
	 nop
	add	%o2, -1, %o2
.L972:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L969:
	be	.L978
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L975:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L975
	 ldub	[%o1+%g1], %g2
.L978:
	jmp	%o7+8
	 nop
.L950:
	sll	%g4, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L976:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a	.L976
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L977
	 nop
	b	.L972
	 add	%o2, -1, %o2
.L977:
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
	blu	.L983
	 and	%o2, -4, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L1011
	 cmp	%o2, 0
.L983:
	sll	%g2, 2, %g4
	cmp	%g2, 0
	be	.L1012
	 mov	0, %g1
	ld	[%o1+%g1], %g2
.L1017:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L1017
	 ld	[%o1+%g1], %g2
	cmp	%o2, %g3
	bleu	.L1020
	 nop
	sub	%o2, %g3, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L1013
	 add	%o0, %g3, %g4
	add	%g3, 1, %g1
	add	%o1, %g3, %o4
	add	%o1, %g1, %g2
	sub	%g4, %g2, %g2
	cmp	%g2, 2
	bleu	.L1014
	 mov	1, %o5
.L989:
	andcc	%o5, 1, %g0
	be	.L992
	 or	%o4, %g4, %g2
	andcc	%g2, 3, %g0
	bne	.L992
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L1018:
	st	%g2, [%g4+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L1018
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L1021
	 add	%o5, %g3, %g3
	ldub	[%o1+%g3], %g2
	add	%g3, 1, %g1
	cmp	%o2, %g1
	bleu	.L1021
	 stb	%g2, [%o0+%g3]
	ldub	[%o1+%g1], %g2
	add	%g3, 2, %g3
	cmp	%o2, %g3
	bleu	.L1021
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g3], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g3]
.L1015:
	add	%g1, 1, %g1
.L992:
	ldub	[%o1+%g3], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g3]
	bne	.L1015
	 mov	%g1, %g3
.L1021:
	jmp	%o7+8
	 nop
.L1014:
	b	.L989
	 mov	0, %o5
.L1011:
	be	.L1021
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1019:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L1019
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L1012:
	cmp	%o2, 0
	bne	.L992
	 add	%g3, 1, %g1
	jmp	%o7+8
	 nop
.L1020:
	jmp	%o7+8
	 nop
.L1013:
	b	.L992
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
	bge	.L1024
	 fitod	%f8, %f0
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f8
	faddd	%f0, %f8, %f0
.L1024:
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
	bge	.L1026
	 fitod	%f8, %f0
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	faddd	%f0, %f8, %f0
.L1026:
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
	bne	.L1033
	 mov	%o0, %g1
	sra	%o0, 14, %o0
	cmp	%o0, 0
	bne	.L1048
	 nop
	sra	%g1, 13, %g2
	cmp	%g2, 0
	bne	.L1034
	 nop
	sra	%g1, 12, %g2
	cmp	%g2, 0
	bne	.L1035
	 nop
	sra	%g1, 11, %g2
	cmp	%g2, 0
	bne	.L1036
	 nop
	sra	%g1, 10, %g2
	cmp	%g2, 0
	bne	.L1037
	 nop
	sra	%g1, 9, %g2
	cmp	%g2, 0
	bne	.L1038
	 nop
	sra	%g1, 8, %g2
	cmp	%g2, 0
	bne	.L1039
	 nop
	sra	%g1, 7, %g2
	cmp	%g2, 0
	bne	.L1040
	 nop
	sra	%g1, 6, %g2
	cmp	%g2, 0
	bne	.L1041
	 nop
	sra	%g1, 5, %g2
	cmp	%g2, 0
	bne	.L1042
	 nop
	sra	%g1, 4, %g2
	cmp	%g2, 0
	bne	.L1043
	 nop
	sra	%g1, 3, %g2
	cmp	%g2, 0
	bne	.L1044
	 nop
	sra	%g1, 2, %g2
	cmp	%g2, 0
	bne	.L1045
	 nop
	sra	%g1, 1, %g2
	cmp	%g2, 0
	bne	.L1046
	 cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1046:
	mov	14, %o0
.L1048:
	jmp	%o7+8
	 nop
.L1033:
	jmp	%o7+8
	 mov	0, %o0
.L1044:
	jmp	%o7+8
	 mov	12, %o0
.L1034:
	jmp	%o7+8
	 mov	2, %o0
.L1035:
	jmp	%o7+8
	 mov	3, %o0
.L1036:
	jmp	%o7+8
	 mov	4, %o0
.L1037:
	jmp	%o7+8
	 mov	5, %o0
.L1038:
	jmp	%o7+8
	 mov	6, %o0
.L1039:
	jmp	%o7+8
	 mov	7, %o0
.L1040:
	jmp	%o7+8
	 mov	8, %o0
.L1041:
	jmp	%o7+8
	 mov	9, %o0
.L1042:
	jmp	%o7+8
	 mov	10, %o0
.L1043:
	jmp	%o7+8
	 mov	11, %o0
.L1045:
	jmp	%o7+8
	 mov	13, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne	.L1052
	 nop
	andcc	%o0, 2, %g0
	bne	.L1053
	 nop
	andcc	%o0, 4, %g0
	bne	.L1054
	 nop
	andcc	%o0, 8, %g0
	bne	.L1055
	 nop
	andcc	%o0, 16, %g0
	bne	.L1056
	 nop
	andcc	%o0, 32, %g0
	bne	.L1057
	 nop
	andcc	%o0, 64, %g0
	bne	.L1058
	 nop
	andcc	%o0, 128, %g0
	bne	.L1059
	 nop
	andcc	%o0, 256, %g0
	bne	.L1060
	 nop
	andcc	%o0, 512, %g0
	bne	.L1061
	 nop
	andcc	%o0, 1024, %g0
	bne	.L1062
	 nop
	andcc	%o0, 2048, %g0
	bne	.L1063
	 nop
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne	.L1064
	 nop
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne	.L1065
	 nop
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne	.L1066
	 nop
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1052:
	jmp	%o7+8
	 mov	0, %o0
.L1053:
	jmp	%o7+8
	 mov	1, %o0
.L1064:
	jmp	%o7+8
	 mov	12, %o0
.L1054:
	jmp	%o7+8
	 mov	2, %o0
.L1055:
	jmp	%o7+8
	 mov	3, %o0
.L1056:
	jmp	%o7+8
	 mov	4, %o0
.L1057:
	jmp	%o7+8
	 mov	5, %o0
.L1058:
	jmp	%o7+8
	 mov	6, %o0
.L1059:
	jmp	%o7+8
	 mov	7, %o0
.L1060:
	jmp	%o7+8
	 mov	8, %o0
.L1061:
	jmp	%o7+8
	 mov	9, %o0
.L1062:
	jmp	%o7+8
	 mov	10, %o0
.L1063:
	jmp	%o7+8
	 mov	11, %o0
.L1065:
	jmp	%o7+8
	 mov	13, %o0
.L1066:
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
	fbge,a	.L1074
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1074:
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
	be	.L1083
	 mov	0, %o0
.L1079:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L1079
	 add	%o0, %g1, %o0
.L1083:
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
	be	.L1091
	 mov	0, %o0
	cmp	%o1, 0
	be	.L1091
	 nop
.L1086:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	sll	%g2, 1, %g2
	bne	.L1086
	 add	%o0, %g1, %o0
.L1091:
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
	bgu	.L1093
	 mov	1, %g1
	b	.L1099
	 mov	0, %o0
.L1096:
	cmp	%o1, %g2
	bgeu	.L1095
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1115
	 nop
.L1093:
	cmp	%o1, 0
	bge,a	.L1096
	 sll	%o1, 1, %o1
.L1094:
	mov	0, %o0
.L1099:
	cmp	%g2, %o1
	blu,a	.L1116
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1116:
	cmp	%g1, 0
	bne	.L1099
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1114
	 nop
.L1117:
	jmp	%o7+8
	 nop
.L1114:
	jmp	%o7+8
	 mov	%g2, %o0
.L1095:
	cmp	%g1, 0
.L1115:
	bne	.L1094
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1117
	 nop
	b,a	.L1114
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
	fbl	.L1118
	 mov	-1, %g1
	nop
	fble	.L1122
	 mov	1, %g1
.L1118:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1122:
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
	fbl	.L1123
	 mov	-1, %g1
	nop
	fble	.L1127
	 mov	1, %g1
.L1123:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1127:
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
	bl	.L1140
	 mov	%o0, %g3
	be	.L1135
	 mov	0, %o4
.L1132:
	mov	1, %g4
	mov	0, %o0
.L1134:
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
	bne	.L1134
	 sll	%g3, 1, %g3
	cmp	%o4, 0
	be	.L1141
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1135:
	mov	0, %o0
.L1141:
	jmp	%o7+8
	 nop
.L1140:
	sub	%g0, %o1, %o1
	b	.L1132
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	mov	1, %g1
	cmp	%o0, 0
	bge	.L1143
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	0, %g1
	mov	1, %g3
.L1143:
	cmp	%o1, 0
	bge	.L1167
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	mov	%g1, %g3
.L1167:
	cmp	%o0, %o1
	bgu	.L1145
	 mov	1, %g1
	b	.L1151
	 mov	0, %o0
.L1165:
	cmp	%g1, 0
	be,a	.L1147
	 mov	0, %o0
.L1145:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1165
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1147
	 mov	0, %o0
.L1151:
	cmp	%o1, %g2
	bgu,a	.L1168
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1168:
	cmp	%g1, 0
	bne	.L1151
	 srl	%o1, 1, %o1
.L1147:
	cmp	%g3, 0
	bne,a	.L1166
	 sub	%g0, %o0, %o0
.L1166:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1170
	 mov	0, %g4
	sub	%g0, %o0, %o0
	mov	1, %g4
.L1170:
	sra	%o1, 31, %g3
	mov	%o0, %g2
	xor	%g3, %o1, %o1
	sub	%o1, %g3, %o1
	cmp	%o0, %o1
	bgu	.L1171
	 mov	1, %g1
	b	.L1192
	 cmp	%o1, %g2
.L1191:
	cmp	%g1, 0
	be	.L1194
	 cmp	%g4, 0
.L1171:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1191
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1194
	 cmp	%g4, 0
.L1177:
	cmp	%o1, %g2
.L1192:
	bleu,a	.L1176
	 sub	%g2, %o1, %g2
.L1176:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1177
	 srl	%o1, 1, %o1
	mov	%g2, %o0
	cmp	%g4, 0
.L1194:
	bne,a	.L1193
	 sub	%g0, %o0, %o0
.L1193:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1196
	 mov	1, %g2
	b	.L1282
	 mov	0, %g4
.L1199:
	sll	%g2, 1, %g3
	srl	%g1, 16, %g1
	mov	%g3, %g4
	cmp	%g1, %o0
	bgeu	.L1283
	 sll	%g2, 17, %o5
	cmp	%o5, 0
	be	.L1201
	 mov	%g3, %g2
	mov	%g1, %o1
.L1196:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge	.L1199
	 sll	%o1, 17, %g1
	cmp	%o0, %o1
	blu	.L1222
	 mov	0, %g4
	sub	%o0, %o1, %o0
	mov	%g2, %g4
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
.L1222:
	sll	%g2, 16, %g3
	srl	%o1, 1, %o5
	srl	%g3, 17, %g1
	cmp	%g1, 0
	be	.L1201
	 mov	%g1, %g2
.L1203:
	cmp	%o0, %o5
	blu,a	.L1289
	 srl	%g3, 18, %g2
	sub	%o0, %o5, %o5
	or	%g4, %g2, %g4
	sll	%o5, 16, %o5
	srl	%o5, 16, %o0
	srl	%g3, 18, %g2
.L1289:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 2, %g1
	cmp	%o0, %g1
	blu,a	.L1290
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 19, %g2
.L1290:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 3, %g1
	cmp	%o0, %g1
	blu,a	.L1291
	 srl	%g3, 20, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 20, %g2
.L1291:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a	.L1292
	 srl	%g3, 21, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 21, %g2
.L1292:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a	.L1293
	 srl	%g3, 22, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 22, %g2
.L1293:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a	.L1294
	 srl	%g3, 23, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 23, %g2
.L1294:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a	.L1284
	 sub	%o0, %g1, %g1
.L1210:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a	.L1285
	 sub	%o0, %g1, %g1
.L1211:
	srl	%g3, 25, %g2
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a	.L1286
	 sub	%o0, %g1, %g1
.L1212:
	srl	%g3, 26, %g2
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a	.L1287
	 sub	%o0, %g1, %g1
.L1213:
	srl	%g3, 27, %g2
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a	.L1288
	 sub	%o0, %g1, %g1
.L1214:
	srl	%g3, 28, %g2
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a	.L1295
	 srl	%g3, 29, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 29, %g2
.L1295:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a	.L1296
	 srl	%g3, 30, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 30, %g2
.L1296:
	cmp	%g2, 0
	be	.L1201
	 srl	%o1, 14, %g1
	cmp	%o0, %g1
	blu	.L1297
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
.L1297:
	bge	.L1201
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a	.L1201
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%g4, 1, %g4
	sll	%o1, 16, %g1
	srl	%g1, 16, %o0
.L1201:
	cmp	%o2, 0
.L1298:
	bne,a	.L1220
	 mov	%o0, %g4
.L1220:
	sll	%g4, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
.L1283:
	cmp	%o5, 0
	be	.L1201
	 cmp	%o0, %g1
	blu	.L1202
	 sethi	%hi(31744), %o4
	sub	%o0, %g1, %o0
	sll	%o0, 16, %o0
	or	%o4, 1023, %o4
	srl	%o0, 16, %o0
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	mov	%g1, %o1
	b	.L1203
	 sll	%g3, 16, %g3
.L1284:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1210
	 srl	%g1, 16, %o0
.L1202:
	mov	0, %g4
	or	%o4, 1023, %o4
	sll	%g3, 16, %g3
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	b	.L1203
	 mov	%g1, %o1
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
.L1287:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1213
	 srl	%g1, 16, %o0
.L1288:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1214
	 srl	%g1, 16, %o0
.L1282:
	bne	.L1298
	 cmp	%o2, 0
	mov	1, %g4
	b	.L1298
	 mov	0, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1300
	 mov	1, %g1
	b	.L1306
	 mov	0, %o0
.L1303:
	cmp	%o1, %g2
	bgeu	.L1302
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1322
	 nop
.L1300:
	cmp	%o1, 0
	bge,a	.L1303
	 sll	%o1, 1, %o1
.L1301:
	mov	0, %o0
.L1306:
	cmp	%g2, %o1
	blu,a	.L1323
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1323:
	cmp	%g1, 0
	bne	.L1306
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1321
	 nop
.L1324:
	jmp	%o7+8
	 nop
.L1321:
	jmp	%o7+8
	 mov	%g2, %o0
.L1302:
	cmp	%g1, 0
.L1322:
	bne	.L1301
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1324
	 nop
	b,a	.L1321
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1326
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1326:
	be	.L1330
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1330:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1332
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1336:
	jmp	%o7+8
	 nop
.L1332:
	be	.L1336
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
	bne	.L1341
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1341:
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
	bl	.L1343
	 mov	0, %g1
	bg	.L1343
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1343
	 mov	0, %g1
	bgu	.L1343
	 mov	2, %g1
	mov	1, %g1
.L1343:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1349
	 mov	-1, %g1
	bg	.L1349
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1349
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1349:
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
	be,a	.L1356
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1356:
	be	.L1360
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1360:
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
	be	.L1369
	 mov	%o2, %g1
.L1371:
	fmuld	%f0, %f8, %f0
.L1369:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1370
	 andcc	%g1, 1, %g0
	bne	.L1371
	 fmuld	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1376:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1371
	 fmuld	%f8, %f8, %f8
	b	.L1376
	 srl	%g1, 31, %g2
.L1370:
	cmp	%o2, 0
	bge	.L1368
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f8
	fdivd	%f8, %f0, %f0
.L1368:
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
	be	.L1378
	 mov	%o1, %g1
.L1380:
	fmuls	%f0, %f8, %f0
.L1378:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1379
	 andcc	%g1, 1, %g0
	bne	.L1380
	 fmuls	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1385:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1380
	 fmuls	%f8, %f8, %f8
	b	.L1385
	 srl	%g1, 31, %g2
.L1379:
	cmp	%o1, 0
	bge	.L1377
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f8
	fdivs	%f8, %f0, %f0
.L1377:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1386
	 mov	0, %g1
	bgu	.L1386
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1386
	 mov	0, %g1
	bgu	.L1386
	 mov	2, %g1
	mov	1, %g1
.L1386:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1392
	 mov	-1, %g1
	bgu	.L1392
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1392
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1392:
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
