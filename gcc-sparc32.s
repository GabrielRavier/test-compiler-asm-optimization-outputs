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
	be	.L43
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L39:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L39
	 ldub	[%o1+%o2], %g1
.L43:
	jmp	%o7+8
	 nop
.L2:
	be	.L43
	 cmp	%o2, 0
	be	.L43
	 add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L13
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L13
	 add	%o1, 1, %g1
	sub	%o0, %g1, %g1
	cmp	%g1, 2
	bleu	.L38
	 mov	1, %g2
.L6:
	andcc	%g2, 1, %g0
	be	.L13
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L40:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L40
	 ld	[%o1+%g1], %g2
	add	%o1, %g1, %g4
	add	%o0, %g1, %g3
	cmp	%o2, %g1
	be	.L43
	 sub	%o2, %g1, %g2
	ldub	[%o1+%g1], %o5
	cmp	%g2, 1
	be	.L43
	 stb	%o5, [%o0+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be	.L43
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L38:
	b	.L6
	 mov	0, %g2
.L13:
	mov	0, %g1
	ldub	[%o1+%g1], %g2
.L41:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L41
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
	bne	.L45
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L48:
	addcc	%o3, -1, %o3
	be,a	.L56
	 mov	0, %o0
.L45:
	ldub	[%o1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0-1]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne	.L48
	 add	%o1, 1, %o1
.L56:
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
	bne	.L58
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L60:
	be	.L61
	 add	%o0, 1, %o0
.L58:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne	.L60
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L61:
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
	bne,a	.L79
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L70:
	addcc	%o2, -1, %o2
	be	.L72
	 add	%o1, 1, %o1
	ldub	[%o0], %g1
.L79:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be	.L70
	 add	%o0, 1, %o0
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L72:
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
	be	.L85
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L85:
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
	b	.L87
	 add	%o0, -1, %g2
.L89:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be	.L90
	 add	%o2, -1, %o2
.L87:
	cmp	%o2, %g2
	bne	.L89
	 mov	%o2, %o0
	mov	0, %o0
.L90:
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
	be	.L95
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L95:
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
	be	.L103
	 nop
.L98:
	ldub	[%o1+1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L98
	 add	%o1, 1, %o1
.L103:
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
	bne	.L105
	 and	%o1, 0xff, %o1
.L113:
	jmp	%o7+8
	 nop
.L107:
	add	%o0, 1, %o0
	cmp	%g1, 0
	be	.L113
	 ldub	[%o0], %g1
.L105:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a	.L107
	 ldsb	[%o0+1], %g1
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L116:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be	.L118
	 cmp	%g1, 0
	bne	.L116
	 add	%o0, 1, %o0
	mov	0, %o0
.L118:
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
	be	.L120
	 add	%o1, -1, %o1
	b	.L129
	 and	%g3, 0xff, %g3
.L122:
	add	%g1, 1, %g1
	ldsb	[%o1+%g1], %g4
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g4
	bne	.L128
	 ldub	[%o1+%g1], %o4
.L120:
	cmp	%g2, 0
	bne,a	.L122
	 ldub	[%o0+%g1], %g3
	mov	0, %g3
	and	%o4, 0xff, %o0
	jmp	%o7+8
	 sub	%g3, %o0, %o0
.L128:
	and	%g3, 0xff, %g3
.L129:
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
	be	.L133
	 mov	%o0, %g1
.L132:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L132
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L133:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be	.L135
	 mov	0, %g2
	ldub	[%o0], %g2
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g2, 0
	bne	.L139
	 add	%o1, %o2, %o2
	b	.L152
	 ldub	[%o1], %g3
.L154:
	cmp	%g1, %o2
	be	.L155
	 sub	%g2, %g3, %g2
	ldub	[%o0], %g2
	cmp	%g2, 0
	be	.L153
	 add	%g1, 1, %g3
	mov	%g3, %g1
.L139:
	ldub	[%g1], %g3
	cmp	%g0, %g3
	xor	%g3, %g2, %g4
	addx	%g0, 0, %o5
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%o5, %g4, %g0
	bne	.L154
	 add	%o0, 1, %o0
.L138:
	sub	%g2, %g3, %g2
.L135:
.L155:
	jmp	%o7+8
	 mov	%g2, %o0
.L153:
	b	.L138
	 ldub	[%g1+1], %g3
.L152:
	b	.L155
	 sub	%g2, %g3, %g2
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble	.L160
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L158:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne	.L158
	 add	%o1, 2, %o1
.L160:
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
	bleu	.L187
	 mov	1, %o0
	cmp	%g1, 31
	bleu	.L187
	 sethi	%hi(-9216), %g2
	or	%g2, 984, %g2
	add	%g1, %g2, %g2
	cmp	%g2, 1
	bleu	.L187
	 sethi	%hi(-65536), %g2
	or	%g2, 7, %g2
	add	%g1, %g2, %g1
	cmp	%g1, 3
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L187:
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
	bleu	.L197
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	sethi	%hi(46080), %g3
	or	%g2, 982, %g2
	or	%g3, 981, %g3
	add	%o0, %g2, %g2
	cmp	%g3, %g2
	bgeu	.L194
	 sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	bgeu	.L194
	 sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g2
	add	%o0, %g3, %g3
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu	.L198
	 mov	1, %o0
	sethi	%hi(-65536), %g2
	sethi	%hi(1048576), %g3
	or	%g2, 4, %g2
	or	%g3, 3, %g3
	add	%g1, %g2, %g2
	cmp	%g2, %g3
	bgu	.L198
	 mov	0, %o0
	sethi	%hi(64512), %g2
	or	%g2, 1022, %g2
	andn	%g2, %g1, %g1
	cmp	%g0, %g1
	jmp	%o7+8
	 addx	%g0, 0, %o0
.L194:
	mov	1, %o0
.L198:
	jmp	%o7+8
	 nop
.L197:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	bgu	.L198
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
	bleu	.L203
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 6
	addx	%g0, 0, %o0
.L203:
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
	fbu	.L205
	 ldd	[%sp+72], %f8
	fcmpd	%f8, %f8
	nop
	fbu,a	.L209
	 fmovs	%f8, %f0
	fcmped	%f0, %f8
	nop
	fbule	.L212
	 nop
	fsubd	%f0, %f8, %f0
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L212:
	st	%g0, [%sp+72]
	st	%g0, [%sp+76]
	ldd	[%sp+72], %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L209:
	b	.L205
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
	fbu	.L213
	 ld	[%sp+76], %f8
	fcmps	%f8, %f8
	nop
	fbu,a	.L213
	 fmovs	%f8, %f0
	fcmpes	%f0, %f8
	nop
	fbule	.L220
	 nop
	fsubs	%f0, %f8, %f0
.L213:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L220:
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
	fbu	.L227
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L228
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L231
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L226
	 mov	1, %g1
	mov	0, %g1
.L226:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L227
	 fmovs	%f9, %f1
.L221:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L231:
	cmp	%g1, 0
	bne	.L221
	 fmovs	%f11, %f1
.L228:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L227:
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
	fbu	.L238
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L239
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L242
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L237
	 mov	1, %g1
	mov	0, %g1
.L237:
	andcc	%g1, 1, %g0
	bne	.L238
	 fmovs	%f8, %f0
.L232:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L242:
	bne	.L232
	 fmovs	%f9, %f0
.L239:
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L238:
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
	fbu	.L249
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L250
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L253
	 fmovs	%f10, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L248
	 mov	1, %g1
	mov	0, %g1
.L248:
	fmovs	%f8, %f0
	andcc	%g1, 1, %g0
	bne	.L249
	 fmovs	%f9, %f1
.L243:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L253:
	cmp	%g1, 0
	bne	.L243
	 fmovs	%f11, %f1
.L250:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L249:
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
	fbu	.L260
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L261
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L264
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L259
	 mov	1, %g1
	mov	0, %g1
.L259:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L261
	 fmovs	%f11, %f1
.L254:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L264:
	cmp	%g1, 0
	bne	.L254
	 fmovs	%f9, %f1
.L260:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L261:
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
	fbu	.L271
	 ld	[%sp+76], %f9
	fcmps	%f9, %f9
	nop
	fbu	.L272
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+76]
	ld	[%sp+76], %g1
	st	%f9, [%sp+76]
	ld	[%sp+76], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L275
	 cmp	%g1, 0
	fcmpes	%f8, %f9
	nop
	fbl	.L270
	 mov	1, %g1
	mov	0, %g1
.L270:
	andcc	%g1, 1, %g0
	bne	.L272
	 fmovs	%f9, %f0
.L265:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L275:
	bne	.L265
	 fmovs	%f8, %f0
.L271:
	fmovs	%f9, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L272:
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
	fbu	.L282
	 ldd	[%sp+72], %f10
	fcmpd	%f10, %f10
	nop
	fbu	.L283
	 sethi	%hi(-2147483648), %g3
	st	%f8, [%sp+72]
	ld	[%sp+72], %g1
	st	%f10, [%sp+72]
	ld	[%sp+72], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne	.L286
	 fmovs	%f8, %f0
	fcmped	%f8, %f10
	nop
	fbl	.L281
	 mov	1, %g1
	mov	0, %g1
.L281:
	fmovs	%f10, %f0
	andcc	%g1, 1, %g0
	bne	.L283
	 fmovs	%f11, %f1
.L276:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L286:
	cmp	%g1, 0
	bne	.L276
	 fmovs	%f9, %f1
.L282:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	jmp	%o7+8
	 add	%sp, 80, %sp
.L283:
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
	be	.L290
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L289:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne	.L289
	 add	%g2, 1, %g2
	jmp	%o7+8
	 stb	%g0, [%g2]
.L290:
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
	be,a	.L300
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a	.L302
	 st	%o0, [%g1+4]
.L302:
	jmp	%o7+8
	 nop
.L300:
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
	be	.L313
	 ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g2
.L313:
	cmp	%g2, 0
	bne,a	.L312
	 st	%g1, [%g2]
.L312:
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
	be	.L315
	 mov	%i0, %l2
	mov	%i1, %i5
	b	.L317
	 mov	0, %l0
.L329:
	cmp	%l1, %l0
	be	.L315
	 add	%i5, %i3, %i5
.L317:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a	.L329
	 add	%l0, 1, %l0
.L331:
	jmp	%i7+8
	 restore
.L315:
	add	%l1, 1, %g1
	mov	%l1, %o1
	st	%g1, [%i2]
	call	.umul, 0
	 mov	%i3, %o0
	cmp	%i3, 0
	be	.L331
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
	be	.L333
	 mov	0, %i5
	b	.L344
	 mov	%i1, %o1
.L343:
	cmp	%l0, %i5
	be	.L333
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L344:
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cmp	%o0, 0
	bne,a	.L343
	 add	%i5, 1, %i5
	jmp	%i7+8
	 restore %g0, %i2, %o0
.L333:
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
.L375:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L371
	 cmp	%g2, 32
	bne	.L347
	 sra	%g3, 24, %g3
.L371:
	ldub	[%o0+1], %g1
	b	.L375
	 add	%o0, 1, %o0
.L347:
	cmp	%g3, 43
	be	.L352
	 cmp	%g3, 45
	bne	.L376
	 add	%g2, -48, %g3
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L361
	 add	%o0, 1, %g2
	mov	1, %o4
.L355:
	mov	0, %o0
.L358:
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
	bleu	.L358
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L377
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L376:
	mov	0, %o4
	cmp	%g3, 9
	bleu	.L355
	 mov	%o0, %g2
.L361:
	mov	0, %o0
.L377:
	jmp	%o7+8
	 nop
.L352:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L355
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
.L404:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L401
	 cmp	%g2, 32
	bne	.L379
	 sra	%g3, 24, %g3
.L401:
	ldub	[%o0+1], %g1
	b	.L404
	 add	%o0, 1, %o0
.L379:
	cmp	%g3, 43
	be	.L384
	 cmp	%g3, 45
	be,a	.L405
	 ldsb	[%o0+1], %g3
	add	%g2, -48, %g3
	mov	0, %o4
	cmp	%g3, 9
	bgu	.L392
	 mov	%o0, %g2
.L386:
	mov	0, %o0
.L389:
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
	bleu	.L389
	 ldub	[%g2], %g1
	cmp	%o4, 0
	bne	.L406
	 nop
	jmp	%o7+8
	 sub	%o5, %g3, %o0
.L405:
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	add	%o0, 1, %g2
	cmp	%g3, 9
	bleu	.L386
	 mov	1, %o4
.L392:
	mov	0, %o0
.L406:
	jmp	%o7+8
	 nop
.L384:
	ldsb	[%o0+1], %g3
	ldub	[%o0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L392
	 add	%o0, 1, %g2
	b	.L386
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	ldub	[%i0], %g1
.L436:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	bleu	.L432
	 cmp	%g2, 32
	bne	.L408
	 sra	%g3, 24, %g3
.L432:
	ldub	[%i0+1], %g1
	b	.L436
	 add	%i0, 1, %i0
.L408:
	cmp	%g3, 43
	be	.L413
	 cmp	%g3, 45
	bne	.L437
	 add	%g2, -48, %g3
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	cmp	%g3, 9
	bgu	.L422
	 add	%i0, 1, %g2
	mov	1, %o7
.L416:
	mov	0, %i0
	mov	0, %i1
.L419:
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
	bleu	.L419
	 ldub	[%g2], %g1
	cmp	%o7, 0
	bne	.L438
	 nop
	subcc	%i3, %i5, %i1
	subx	%i2, %i4, %i0
	jmp	%i7+8
	 restore
.L437:
	mov	0, %o7
	cmp	%g3, 9
	bleu	.L416
	 mov	%i0, %g2
.L422:
	mov	0, %i0
	mov	0, %i1
.L438:
	jmp	%i7+8
	 restore
.L413:
	ldsb	[%i0+1], %g3
	ldub	[%i0+1], %g1
	add	%g3, -48, %g3
	add	%i0, 1, %g2
	cmp	%g3, 9
	bleu	.L416
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
.L450:
	cmp	%i2, 0
	be	.L452
	 mov	0, %i5
.L451:
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
	bl,a	.L450
	 mov	%l0, %i2
	be	.L440
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne	.L451
	 add	%i5, %i3, %i1
	mov	0, %i5
.L440:
.L452:
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
	be	.L458
	 mov	%i0, %l1
.L466:
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
	be	.L469
	 nop
.L468:
	ble	.L456
	 add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cmp	%i2, 0
	bne	.L466
	 add	%i0, %i3, %i1
.L458:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L456:
	cmp	%l0, 0
	be	.L458
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
	bne	.L468
	 nop
.L469:
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
	bne	.L486
	 cmp	%o1, %g1
	jmp	%o7+8
	 mov	0, %o0
.L480:
	cmp	%g1, 0
	be	.L481
	 add	%o0, 4, %o0
	cmp	%o1, %g1
.L486:
	bne,a	.L480
	 ld	[%o0+4], %g1
	jmp	%o7+8
	 nop
.L481:
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
	be	.L489
	 add	%o1, -4, %o1
	b	.L499
	 mov	-1, %o0
.L491:
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	bne,a	.L499
	 mov	-1, %o0
.L489:
	cmp	%g2, 0
	bne,a	.L491
	 ld	[%o0+%g1], %g2
	mov	-1, %o0
	cmp	%g2, %g3
.L499:
	bl	.L500
	 nop
	ble	.L498
	 mov	1, %o0
.L500:
	jmp	%o7+8
	 nop
.L498:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L502:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne	.L502
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
	be	.L507
	 nop
	mov	%o0, %g1
.L506:
	ld	[%g1+4], %g2
	cmp	%g2, 0
	bne	.L506
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 sra	%o0, 2, %o0
.L507:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a	.L528
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L525:
	be,a	.L529
	 ld	[%o0], %g2
	add	%o0, 4, %o0
	addcc	%o2, -1, %o2
	be	.L517
	 add	%o1, 4, %o1
	ld	[%o0], %g1
.L528:
	ld	[%o1], %g2
	cmp	%g2, %g1
	be	.L525
	 cmp	%g1, 0
	ld	[%o0], %g2
.L529:
	ld	[%o1], %g1
	cmp	%g2, %g1
	bl	.L526
	 nop
	ble	.L517
	 mov	1, %o0
	jmp	%o7+8
	 nop
.L526:
	jmp	%o7+8
	 mov	-1, %o0
.L517:
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
	bne,a	.L540
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L534:
	be	.L535
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L540:
	cmp	%g1, %o1
	bne,a	.L534
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L535:
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
	bne,a	.L558
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L545:
	addcc	%o2, -1, %o2
	be	.L549
	 add	%o1, 4, %o1
	ld	[%o0], %g2
.L558:
	ld	[%o1], %g1
	cmp	%g2, %g1
	be	.L545
	 add	%o0, 4, %o0
	bl,a	.L557
	 mov	-1, %o0
	bg	.L557
	 mov	1, %o0
.L549:
	jmp	%o7+8
	 mov	0, %o0
.L557:
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
	be	.L564
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L564:
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be	.L582
	 nop
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	cmp	%g3, %g2
	bgeu	.L580
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be	.L582
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %g2
.L581:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a	.L581
	 ld	[%o1+%g1], %g2
.L583:
	jmp	%o7+8
	 nop
.L580:
	cmp	%o2, 0
	be	.L583
	 mov	0, %g2
.L568:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	cmp	%g1, -1
	bne	.L568
	 add	%g2, 4, %g2
.L582:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be	.L591
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L586:
	st	%o1, [%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne	.L586
	 add	%g2, 4, %g2
.L591:
	jmp	%o7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu	.L593
	 nop
	cmp	%o2, 0
	be	.L632
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L629:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a	.L629
	 ldub	[%o0+%o2], %g1
.L633:
	jmp	%o7+8
	 nop
.L593:
	bne,a	.L627
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L627:
	be	.L632
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu	.L604
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L604
	 add	%o0, 1, %g1
	sub	%o1, %g1, %g1
	cmp	%g1, 2
	bleu	.L628
	 mov	1, %g2
.L597:
	andcc	%g2, 1, %g0
	be	.L604
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o0+%g1], %g2
.L630:
	st	%g2, [%o1+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L630
	 ld	[%o0+%g1], %g2
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be	.L633
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %o5
	cmp	%g2, 1
	be	.L633
	 stb	%o5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be	.L633
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L628:
	b	.L597
	 mov	0, %g2
.L604:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L631:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L631
	 ldub	[%o0+%g1], %g2
.L632:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	andcc	%o2, 32, %g0
	be	.L635
	 xnor	%g0, %o2, %g3
	sll	%o1, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L637
	 and	%o2, 63, %g2
.L639:
	srl	%o0, %g2, %o1
	mov	0, %o0
	or	%o1, %g3, %o1
	jmp	%o7+8
	 or	%o0, %g1, %o0
.L635:
	srl	%o1, 1, %g2
	srl	%g2, %g3, %g2
	sll	%o0, %o2, %g1
	sll	%o1, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L639
	 and	%o2, 63, %g2
.L637:
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
	be	.L641
	 xnor	%g0, %o2, %g3
	srl	%o0, %o2, %g1
	mov	0, %g3
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	be	.L643
	 and	%o2, 63, %g2
.L645:
	sll	%o1, %g2, %o0
	mov	0, %o1
	or	%o0, %g3, %o0
	jmp	%o7+8
	 or	%o1, %g1, %o1
.L641:
	sll	%o0, 1, %g2
	sll	%g2, %g3, %g2
	srl	%o1, %o2, %g1
	srl	%o0, %o2, %g3
	or	%g2, %g1, %g1
	sub	%g0, %o2, %o2
	andcc	%o2, 32, %g0
	bne	.L645
	 and	%o2, 63, %g2
.L643:
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
	b	.L660
	 mov	0, %g1
.L658:
	cmp	%g1, 32
	be	.L662
	 nop
.L660:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be	.L658
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L662:
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
	be	.L670
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne	.L670
	 nop
	mov	1, %o0
.L665:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be	.L665
	 add	%o0, 1, %o0
.L670:
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
	fbl	.L671
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f9
	fcmpes	%f8, %f9
	nop
	fbule	.L675
	 nop
.L671:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L675:
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
	fbl	.L676
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L680
	 nop
.L676:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L680:
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
	fbl	.L681
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f10
	fcmped	%f8, %f10
	nop
	fbule	.L685
	 nop
.L681:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L685:
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
	fbu	.L688
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%f8, %f0
	nop
	fbe	.L688
	 sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	bge	.L689
	 ld	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f8
.L689:
	andcc	%o1, 1, %g0
	be	.L702
	 srl	%o1, 31, %g1
.L691:
	fmuls	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L702:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be	.L688
	 andcc	%o1, 1, %g0
	bne	.L691
	 fmuls	%f8, %f8, %f8
	srl	%o1, 31, %g1
.L701:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne	.L691
	 fmuls	%f8, %f8, %f8
	b	.L701
	 srl	%o1, 31, %g1
.L688:
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
	fbu	.L704
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f8, %f0
	nop
	fbe	.L704
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bge	.L705
	 ldd	[%g1+%lo(.LC20)], %f8
	sethi	%hi(.LC21), %g1
	ldd	[%g1+%lo(.LC21)], %f8
.L705:
	andcc	%o2, 1, %g0
	be	.L718
	 srl	%o2, 31, %g1
.L707:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L718:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L704
	 andcc	%o2, 1, %g0
	bne	.L707
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L717:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L707
	 fmuld	%f8, %f8, %f8
	b	.L717
	 srl	%o2, 31, %g1
.L704:
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
	fbu	.L720
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%f0, %f8
	nop
	fbe	.L720
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bge	.L721
	 ldd	[%g1+%lo(.LC25)], %f8
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
.L721:
	andcc	%o2, 1, %g0
	be	.L734
	 srl	%o2, 31, %g1
.L723:
	fmuld	%f0, %f8, %f0
	srl	%o2, 31, %g1
.L734:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be	.L720
	 andcc	%o2, 1, %g0
	bne	.L723
	 fmuld	%f8, %f8, %f8
	srl	%o2, 31, %g1
.L733:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	andcc	%o2, 1, %g0
	bne	.L723
	 fmuld	%f8, %f8, %f8
	b	.L733
	 srl	%o2, 31, %g1
.L720:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be	.L758
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 3
	bleu	.L743
	 or	%o0, %o1, %g1
	andcc	%g1, 3, %g0
	bne	.L743
	 and	%o2, -4, %g4
	mov	0, %g1
	ld	[%o0+%g1], %g3
.L756:
	ld	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L756
	 ld	[%o0+%g1], %g3
	add	%o0, %g1, %g3
	add	%o1, %g1, %o5
	cmp	%o2, %g1
	be	.L758
	 sub	%o2, %g1, %g4
	ldub	[%o0+%g1], %g2
	ldub	[%o1+%g1], %o4
	cmp	%g4, 1
	xor	%g2, %o4, %g2
	be	.L758
	 stb	%g2, [%o0+%g1]
	ldub	[%g3+1], %g2
	ldub	[%o5+1], %g1
	cmp	%g4, 2
	xor	%g1, %g2, %g1
	be	.L758
	 stb	%g1, [%g3+1]
	ldub	[%g3+2], %g2
	ldub	[%o5+2], %g1
	xor	%g1, %g2, %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L743:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L757:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a	.L757
	 ldub	[%o0+%g1], %g3
.L758:
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
	be	.L760
	 mov	%o0, %g1
.L761:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne	.L761
	 add	%g1, 1, %g1
.L760:
	cmp	%o2, 0
	bne,a	.L774
	 ldub	[%o1], %g2
	jmp	%o7+8
	 stb	%g0, [%g1]
.L764:
	be	.L763
	 add	%o1, 1, %o1
	ldub	[%o1], %g2
.L774:
	add	%g1, 1, %g1
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a	.L764
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L763:
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
	be	.L776
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L784:
	cmp	%g2, 0
	bne,a	.L779
	 add	%g1, 1, %g1
.L776:
	jmp	%o7+8
	 mov	%g1, %o0
.L779:
	cmp	%o1, %g1
	bne,a	.L784
	 ldsb	[%o0+%g1], %g2
	b,a	.L776
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a	.L794
	 mov	0, %o0
.L786:
	mov	%o1, %g1
	b	.L789
	 sra	%g3, 24, %g3
.L788:
	cmp	%g2, %g3
	be	.L794
	 nop
.L789:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne	.L788
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne	.L786
	 add	%o0, 1, %o0
	mov	0, %o0
.L794:
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
.L797:
	ldub	[%g2], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g3
	cmp	%o1, %g3
	be,a	.L796
	 mov	%g2, %o0
.L796:
	cmp	%g1, 0
	bne	.L797
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
	be	.L811
	 mov	%o0, %g2
	mov	%o1, %g1
.L801:
	ldsb	[%g1+1], %g3
	cmp	%g3, 0
	bne	.L801
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be	.L826
	 mov	%g2, %o0
	add	%o1, -1, %o0
	sra	%o2, 24, %o2
	b	.L821
	 add	%o0, %g1, %o0
.L823:
	cmp	%g1, 0
	be	.L822
	 add	%g2, 1, %g2
.L821:
	ldsb	[%g2], %g1
	cmp	%g1, %o2
	bne	.L823
	 ldub	[%g2], %g3
	mov	%o1, %g4
	mov	%g2, %o5
	b	.L803
	 and	%g3, 0xff, %g3
.L824:
	cmp	%g0, %g1
	addx	%g0, 0, %o3
	cmp	%g0, %o4
	subx	%g0, -1, %g1
	andcc	%o3, %g1, %g0
	be,a	.L825
	 ldub	[%g4], %g1
	ldub	[%o5], %g3
	cmp	%g3, 0
	be	.L804
	 add	%g4, 1, %g4
.L803:
	ldub	[%g4], %g1
	add	%o5, 1, %o5
	cmp	%g4, %o0
	bne	.L824
	 xor	%g1, %g3, %o4
.L804:
	ldub	[%g4], %g1
.L825:
	cmp	%g3, %g1
	be,a	.L826
	 mov	%g2, %o0
	b	.L821
	 add	%g2, 1, %g2
.L822:
	jmp	%o7+8
	 mov	0, %o0
.L811:
	mov	%g2, %o0
.L826:
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
	fbl,a	.L837
	 std	%o2, [%sp+72]
	nop
	fbule	.L831
	 nop
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbl,a	.L838
	 fnegs	%f0, %f0
.L831:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L837:
	ldd	[%sp+72], %f10
	fcmped	%f10, %f8
	nop
	fbule	.L831
	 nop
	fnegs	%f0, %f0
.L838:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be	.L859
	 nop
	cmp	%o1, %o3
	blu	.L850
	 sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a	.L859
	 mov	0, %o0
	ldub	[%o2], %o4
	sll	%o4, 24, %o4
	b	.L845
	 sra	%o4, 24, %o5
.L849:
	mov	%g4, %o0
.L841:
	cmp	%o1, %o0
	blu,a	.L859
	 mov	0, %o0
.L845:
	ldsb	[%o0], %g1
	cmp	%g1, %o5
	bne	.L849
	 add	%o0, 1, %g4
	cmp	%o3, 1
	be	.L859
	 nop
.L844:
	b	.L842
	 mov	1, %g1
.L843:
	cmp	%g1, %o3
	be	.L859
	 nop
.L842:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be	.L843
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu	.L850
	 sra	%o4, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne	.L841
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	b	.L844
	 mov	%g1, %o0
.L850:
	mov	0, %o0
.L859:
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
	be	.L861
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L861:
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
	fbl	.L888
	 sethi	%hi(.LC33), %g1
	ldd	[%g1+%lo(.LC33)], %f10
	fcmped	%f0, %f10
	nop
	fbul	.L889
	 mov	0, %g2
.L868:
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f10
	sethi	%hi(.LC33), %g3
	ldd	[%g3+%lo(.LC33)], %f8
	mov	0, %g1
.L874:
	fmuld	%f0, %f10, %f0
	fcmped	%f0, %f8
	nop
	fbge	.L874
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be	.L865
	 st	%g1, [%o2]
.L891:
	fnegs	%f0, %f0
.L865:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L889:
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f10
	fcmped	%f0, %f10
	nop
	fbuge	.L871
	 nop
	fcmpd	%f0, %f8
	nop
	fbne	.L880
	 fmovs	%f0, %f10
.L871:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L888:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f8
	fnegs	%f0, %f10
	fcmped	%f0, %f8
	nop
	fbug	.L890
	 fmovs	%f1, %f11
	fmovs	%f10, %f0
	b	.L868
	 mov	1, %g2
.L890:
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f8
	fcmped	%f0, %f8
	nop
	fbule	.L871
	 nop
	mov	1, %g2
.L869:
	fmovs	%f10, %f0
	fmovs	%f11, %f1
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f8
	mov	0, %g1
.L876:
	faddd	%f0, %f0, %f0
	fcmped	%f0, %f8
	nop
	fbl	.L876
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne	.L891
	 st	%g1, [%o2]
	b,a	.L865
.L880:
	b	.L869
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
	be	.L892
	 mov	0, %o3
.L895:
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
	bne	.L895
	 sll	%i3, 1, %i3
.L892:
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
	blu	.L899
	 mov	1, %g1
	b	.L905
	 mov	0, %o0
.L902:
	cmp	%o1, %g2
	bgeu	.L901
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L922
	 nop
.L899:
	cmp	%o1, 0
	bge,a	.L902
	 sll	%o1, 1, %o1
.L900:
	mov	0, %o0
.L905:
	cmp	%g2, %o1
	blu,a	.L923
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L923:
	cmp	%g1, 0
	bne	.L905
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L921
	 nop
.L924:
	jmp	%o7+8
	 nop
.L921:
	jmp	%o7+8
	 mov	%g2, %o0
.L901:
	cmp	%g1, 0
.L922:
	bne	.L900
	 mov	0, %o0
	cmp	%o2, 0
	be	.L924
	 nop
	b,a	.L921
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
	be	.L928
	 xor	%g1, %g2, %o0
	call	__clzsi2, 0
	 sll	%o0, 8, %o0
	add	%o0, -1, %i0
.L928:
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
	be	.L935
	 xor	%i1, %g1, %o1
.L933:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L935:
	cmp	%i1, %i0
	bne	.L933
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
	be	.L942
	 mov	0, %o0
.L938:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L938
	 add	%o0, %g1, %o0
.L942:
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
	blu	.L947
	 and	%o2, -8, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L980
	 cmp	%o2, 0
.L947:
	sll	%g2, 3, %o5
	cmp	%g2, 0
	be	.L977
	 mov	0, %g1
.L950:
	add	%o1, %g1, %g2
	ldd	[%g2], %g2
	add	%o0, %g1, %o4
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne	.L950
	 std	%g2, [%o4]
	cmp	%o2, %g4
	bleu	.L986
	 nop
	sub	%o2, %g4, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L981
	 add	%o0, %g4, %g3
	add	%g4, 1, %g1
	add	%o1, %g4, %o4
	add	%o1, %g1, %g2
	sub	%g3, %g2, %g2
	cmp	%g2, 2
	bleu	.L982
	 mov	1, %o5
.L953:
	andcc	%o5, 1, %g0
	be	.L979
	 or	%o4, %g3, %g2
	andcc	%g2, 3, %g0
	bne	.L979
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L984:
	st	%g2, [%g3+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L984
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L987
	 add	%o5, %g4, %g4
	ldub	[%o1+%g4], %g2
	add	%g4, 1, %g1
	cmp	%o2, %g1
	bleu	.L987
	 stb	%g2, [%o0+%g4]
	ldub	[%o1+%g1], %g2
	add	%g4, 2, %g4
	cmp	%o2, %g4
	bleu	.L987
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L983:
	add	%g1, 1, %g1
.L979:
	ldub	[%o1+%g4], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g4]
	bne	.L983
	 mov	%g1, %g4
.L987:
	jmp	%o7+8
	 nop
.L982:
	b	.L953
	 mov	0, %o5
.L980:
	be	.L987
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L985:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L985
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L977:
	cmp	%o2, 0
	bne	.L979
	 add	%g4, 1, %g1
.L986:
	jmp	%o7+8
	 nop
.L981:
	b	.L979
	 add	%g4, 1, %g1
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu	.L992
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L1015
	 cmp	%o2, 0
.L992:
	cmp	%g4, 0
	be	.L991
	 add	%g4, -1, %g1
	cmp	%g1, 8
	bleu	.L995
	 or	%o1, %o0, %g1
	andcc	%g1, 3, %g0
	bne	.L995
	 add	%o1, 2, %g1
	cmp	%o0, %g1
	be	.L995
	 srl	%o2, 2, %o5
	and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L1018:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L1018
	 ld	[%o1+%g1], %g2
	sll	%o5, 1, %g2
	cmp	%g4, %g2
	be	.L1019
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L991:
	andcc	%o2, 1, %g0
.L1019:
	be	.L1022
	 nop
	add	%o2, -1, %o2
.L1017:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L1015:
	be	.L1022
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1020:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L1020
	 ldub	[%o1+%g1], %g2
.L1022:
	jmp	%o7+8
	 nop
.L995:
	sll	%g4, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L1021:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a	.L1021
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be	.L1022
	 nop
	b	.L1017
	 add	%o2, -1, %o2
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g2
	cmp	%o0, %o1
	blu	.L1027
	 and	%o2, -4, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu	.L1060
	 cmp	%o2, 0
.L1027:
	sll	%g2, 2, %g4
	cmp	%g2, 0
	be	.L1057
	 mov	0, %g1
	ld	[%o1+%g1], %g2
.L1064:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L1064
	 ld	[%o1+%g1], %g2
	cmp	%o2, %g3
	bleu	.L1067
	 nop
	sub	%o2, %g3, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu	.L1061
	 add	%o0, %g3, %g4
	add	%g3, 1, %g1
	add	%o1, %g3, %o4
	add	%o1, %g1, %g2
	sub	%g4, %g2, %g2
	cmp	%g2, 2
	bleu	.L1062
	 mov	1, %o5
.L1033:
	andcc	%o5, 1, %g0
	be	.L1059
	 or	%o4, %g4, %g2
	andcc	%g2, 3, %g0
	bne	.L1059
	 and	%o3, -4, %o5
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L1065:
	st	%g2, [%g4+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a	.L1065
	 ld	[%o4+%g1], %g2
	cmp	%o5, %o3
	be	.L1068
	 add	%o5, %g3, %g3
	ldub	[%o1+%g3], %g2
	add	%g3, 1, %g1
	cmp	%o2, %g1
	bleu	.L1068
	 stb	%g2, [%o0+%g3]
	ldub	[%o1+%g1], %g2
	add	%g3, 2, %g3
	cmp	%o2, %g3
	bleu	.L1068
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g3], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g3]
.L1063:
	add	%g1, 1, %g1
.L1059:
	ldub	[%o1+%g3], %g2
	cmp	%o2, %g1
	stb	%g2, [%o0+%g3]
	bne	.L1063
	 mov	%g1, %g3
.L1068:
	jmp	%o7+8
	 nop
.L1062:
	b	.L1033
	 mov	0, %o5
.L1060:
	be	.L1068
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1066:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a	.L1066
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L1057:
	cmp	%o2, 0
	bne	.L1059
	 add	%g3, 1, %g1
.L1067:
	jmp	%o7+8
	 nop
.L1061:
	b	.L1059
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
	bge	.L1071
	 fitod	%f8, %f0
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f8
	faddd	%f0, %f8, %f0
.L1071:
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
	bge	.L1073
	 fitod	%f8, %f0
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f8
	faddd	%f0, %f8, %f0
.L1073:
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
	bne	.L1080
	 mov	%o0, %g1
	sra	%o0, 14, %o0
	cmp	%o0, 0
	bne	.L1095
	 nop
	sra	%g1, 13, %g2
	cmp	%g2, 0
	bne	.L1081
	 nop
	sra	%g1, 12, %g2
	cmp	%g2, 0
	bne	.L1082
	 nop
	sra	%g1, 11, %g2
	cmp	%g2, 0
	bne	.L1083
	 nop
	sra	%g1, 10, %g2
	cmp	%g2, 0
	bne	.L1084
	 nop
	sra	%g1, 9, %g2
	cmp	%g2, 0
	bne	.L1085
	 nop
	sra	%g1, 8, %g2
	cmp	%g2, 0
	bne	.L1086
	 nop
	sra	%g1, 7, %g2
	cmp	%g2, 0
	bne	.L1087
	 nop
	sra	%g1, 6, %g2
	cmp	%g2, 0
	bne	.L1088
	 nop
	sra	%g1, 5, %g2
	cmp	%g2, 0
	bne	.L1089
	 nop
	sra	%g1, 4, %g2
	cmp	%g2, 0
	bne	.L1090
	 nop
	sra	%g1, 3, %g2
	cmp	%g2, 0
	bne	.L1091
	 nop
	sra	%g1, 2, %g2
	cmp	%g2, 0
	bne	.L1092
	 nop
	sra	%g1, 1, %g2
	cmp	%g2, 0
	bne	.L1093
	 cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1093:
	mov	14, %o0
.L1095:
	jmp	%o7+8
	 nop
.L1080:
	jmp	%o7+8
	 mov	0, %o0
.L1091:
	jmp	%o7+8
	 mov	12, %o0
.L1081:
	jmp	%o7+8
	 mov	2, %o0
.L1082:
	jmp	%o7+8
	 mov	3, %o0
.L1083:
	jmp	%o7+8
	 mov	4, %o0
.L1084:
	jmp	%o7+8
	 mov	5, %o0
.L1085:
	jmp	%o7+8
	 mov	6, %o0
.L1086:
	jmp	%o7+8
	 mov	7, %o0
.L1087:
	jmp	%o7+8
	 mov	8, %o0
.L1088:
	jmp	%o7+8
	 mov	9, %o0
.L1089:
	jmp	%o7+8
	 mov	10, %o0
.L1090:
	jmp	%o7+8
	 mov	11, %o0
.L1092:
	jmp	%o7+8
	 mov	13, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne	.L1099
	 nop
	andcc	%o0, 2, %g0
	bne	.L1100
	 nop
	andcc	%o0, 4, %g0
	bne	.L1101
	 nop
	andcc	%o0, 8, %g0
	bne	.L1102
	 nop
	andcc	%o0, 16, %g0
	bne	.L1103
	 nop
	andcc	%o0, 32, %g0
	bne	.L1104
	 nop
	andcc	%o0, 64, %g0
	bne	.L1105
	 nop
	andcc	%o0, 128, %g0
	bne	.L1106
	 nop
	andcc	%o0, 256, %g0
	bne	.L1107
	 nop
	andcc	%o0, 512, %g0
	bne	.L1108
	 nop
	andcc	%o0, 1024, %g0
	bne	.L1109
	 nop
	andcc	%o0, 2048, %g0
	bne	.L1110
	 nop
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne	.L1111
	 nop
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne	.L1112
	 nop
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne	.L1113
	 nop
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 add	%o0, 15, %o0
.L1099:
	jmp	%o7+8
	 mov	0, %o0
.L1100:
	jmp	%o7+8
	 mov	1, %o0
.L1111:
	jmp	%o7+8
	 mov	12, %o0
.L1101:
	jmp	%o7+8
	 mov	2, %o0
.L1102:
	jmp	%o7+8
	 mov	3, %o0
.L1103:
	jmp	%o7+8
	 mov	4, %o0
.L1104:
	jmp	%o7+8
	 mov	5, %o0
.L1105:
	jmp	%o7+8
	 mov	6, %o0
.L1106:
	jmp	%o7+8
	 mov	7, %o0
.L1107:
	jmp	%o7+8
	 mov	8, %o0
.L1108:
	jmp	%o7+8
	 mov	9, %o0
.L1109:
	jmp	%o7+8
	 mov	10, %o0
.L1110:
	jmp	%o7+8
	 mov	11, %o0
.L1112:
	jmp	%o7+8
	 mov	13, %o0
.L1113:
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
	fbge,a	.L1121
	 fsubs	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1121:
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
	be	.L1130
	 mov	0, %o0
.L1126:
	and	%g2, 1, %g1
	srl	%g2, 1, %g2
	sub	%g0, %g1, %g1
	cmp	%g2, 0
	and	%g1, %o1, %g1
	sll	%o1, 1, %o1
	bne	.L1126
	 add	%o0, %g1, %o0
.L1130:
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
	be	.L1138
	 mov	0, %o0
	cmp	%o1, 0
	be	.L1138
	 nop
.L1133:
	and	%o1, 1, %g1
	srl	%o1, 1, %o1
	sub	%g0, %g1, %g1
	cmp	%o1, 0
	and	%g1, %g2, %g1
	sll	%g2, 1, %g2
	bne	.L1133
	 add	%o0, %g1, %o0
.L1138:
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
	bgu	.L1140
	 mov	1, %g1
	b	.L1146
	 mov	0, %o0
.L1143:
	cmp	%o1, %g2
	bgeu	.L1142
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1163
	 nop
.L1140:
	cmp	%o1, 0
	bge,a	.L1143
	 sll	%o1, 1, %o1
.L1141:
	mov	0, %o0
.L1146:
	cmp	%g2, %o1
	blu,a	.L1164
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1164:
	cmp	%g1, 0
	bne	.L1146
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1162
	 nop
.L1165:
	jmp	%o7+8
	 nop
.L1162:
	jmp	%o7+8
	 mov	%g2, %o0
.L1142:
	cmp	%g1, 0
.L1163:
	bne	.L1141
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1165
	 nop
	b,a	.L1162
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
	fbl	.L1166
	 mov	-1, %g1
	nop
	fbule	.L1170
	 mov	1, %g1
.L1166:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1170:
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
	fbl	.L1171
	 mov	-1, %g1
	nop
	fbule	.L1175
	 mov	1, %g1
.L1171:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1175:
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
	bl	.L1188
	 mov	%o0, %g3
	be	.L1183
	 mov	0, %o4
.L1180:
	mov	1, %g4
	mov	0, %o0
.L1182:
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
	bne	.L1182
	 sll	%g3, 1, %g3
	cmp	%o4, 0
	be	.L1189
	 nop
	jmp	%o7+8
	 sub	%g0, %o0, %o0
.L1183:
	mov	0, %o0
.L1189:
	jmp	%o7+8
	 nop
.L1188:
	sub	%g0, %o1, %o1
	b	.L1180
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	mov	1, %g1
	cmp	%o0, 0
	bge	.L1191
	 mov	0, %g3
	sub	%g0, %o0, %o0
	mov	0, %g1
	mov	1, %g3
.L1191:
	cmp	%o1, 0
	bge	.L1216
	 mov	%o0, %g2
	sub	%g0, %o1, %o1
	mov	%g1, %g3
.L1216:
	cmp	%o0, %o1
	bgu	.L1193
	 mov	1, %g1
	b	.L1199
	 mov	0, %o0
.L1214:
	cmp	%g1, 0
	be,a	.L1195
	 mov	0, %o0
.L1193:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1214
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1195
	 mov	0, %o0
.L1199:
	cmp	%o1, %g2
	bgu,a	.L1217
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1217:
	cmp	%g1, 0
	bne	.L1199
	 srl	%o1, 1, %o1
.L1195:
	cmp	%g3, 0
	bne,a	.L1215
	 sub	%g0, %o0, %o0
.L1215:
	jmp	%o7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge	.L1219
	 mov	0, %g4
	sub	%g0, %o0, %o0
	mov	1, %g4
.L1219:
	sra	%o1, 31, %g3
	mov	%o0, %g2
	xor	%g3, %o1, %o1
	sub	%o1, %g3, %o1
	cmp	%o0, %o1
	bgu	.L1220
	 mov	1, %g1
	b	.L1243
	 cmp	%o1, %g2
.L1242:
	cmp	%g1, 0
	be	.L1245
	 cmp	%g4, 0
.L1220:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	blu	.L1242
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1245
	 cmp	%g4, 0
.L1240:
	cmp	%o1, %g2
.L1243:
	bleu,a	.L1225
	 sub	%g2, %o1, %g2
.L1225:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L1240
	 srl	%o1, 1, %o1
	mov	%g2, %o0
	cmp	%g4, 0
.L1245:
	bne,a	.L1244
	 sub	%g0, %o0, %o0
.L1244:
	jmp	%o7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu	.L1247
	 mov	1, %g2
	b	.L1337
	 mov	0, %g4
.L1250:
	sll	%g2, 1, %g3
	srl	%g1, 16, %g1
	mov	%g3, %g4
	cmp	%g1, %o0
	bgeu	.L1338
	 sll	%g2, 17, %o5
	cmp	%o5, 0
	be	.L1252
	 mov	%g3, %g2
	mov	%g1, %o1
.L1247:
	sll	%o1, 16, %g1
	cmp	%g1, 0
	bge	.L1250
	 sll	%o1, 17, %g1
	cmp	%o0, %o1
	blu	.L1273
	 mov	0, %g4
	sub	%o0, %o1, %o0
	mov	%g2, %g4
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
.L1273:
	sll	%g2, 16, %g3
	srl	%o1, 1, %o5
	srl	%g3, 17, %g1
	cmp	%g1, 0
	be	.L1252
	 mov	%g1, %g2
.L1254:
	cmp	%o0, %o5
	blu,a	.L1344
	 srl	%g3, 18, %g2
	sub	%o0, %o5, %o5
	or	%g4, %g2, %g4
	sll	%o5, 16, %o5
	srl	%o5, 16, %o0
	srl	%g3, 18, %g2
.L1344:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 2, %g1
	cmp	%o0, %g1
	blu,a	.L1345
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 19, %g2
.L1345:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 3, %g1
	cmp	%o0, %g1
	blu,a	.L1346
	 srl	%g3, 20, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 20, %g2
.L1346:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a	.L1347
	 srl	%g3, 21, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 21, %g2
.L1347:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a	.L1348
	 srl	%g3, 22, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 22, %g2
.L1348:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a	.L1349
	 srl	%g3, 23, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 23, %g2
.L1349:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a	.L1339
	 sub	%o0, %g1, %g1
.L1261:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a	.L1340
	 sub	%o0, %g1, %g1
.L1262:
	srl	%g3, 25, %g2
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a	.L1341
	 sub	%o0, %g1, %g1
.L1263:
	srl	%g3, 26, %g2
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a	.L1342
	 sub	%o0, %g1, %g1
.L1264:
	srl	%g3, 27, %g2
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a	.L1343
	 sub	%o0, %g1, %g1
.L1265:
	srl	%g3, 28, %g2
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a	.L1350
	 srl	%g3, 29, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 29, %g2
.L1350:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a	.L1351
	 srl	%g3, 30, %g2
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
	srl	%g3, 30, %g2
.L1351:
	cmp	%g2, 0
	be	.L1252
	 srl	%o1, 14, %g1
	cmp	%o0, %g1
	blu	.L1352
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	srl	%g1, 16, %o0
.L1352:
	bge	.L1252
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a	.L1252
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%g4, 1, %g4
	sll	%o1, 16, %g1
	srl	%g1, 16, %o0
.L1252:
	cmp	%o2, 0
.L1353:
	bne,a	.L1271
	 mov	%o0, %g4
.L1271:
	sll	%g4, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
.L1338:
	cmp	%o5, 0
	be	.L1252
	 cmp	%o0, %g1
	blu	.L1253
	 sethi	%hi(31744), %o4
	sub	%o0, %g1, %o0
	sll	%o0, 16, %o0
	or	%o4, 1023, %o4
	srl	%o0, 16, %o0
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	mov	%g1, %o1
	b	.L1254
	 sll	%g3, 16, %g3
.L1339:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1261
	 srl	%g1, 16, %o0
.L1253:
	mov	0, %g4
	or	%o4, 1023, %o4
	sll	%g3, 16, %g3
	and	%o1, %o4, %o5
	and	%o4, %g2, %g2
	b	.L1254
	 mov	%g1, %o1
.L1340:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1262
	 srl	%g1, 16, %o0
.L1341:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1263
	 srl	%g1, 16, %o0
.L1342:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1264
	 srl	%g1, 16, %o0
.L1343:
	or	%g2, %g4, %g4
	sll	%g1, 16, %g1
	b	.L1265
	 srl	%g1, 16, %o0
.L1337:
	bne	.L1353
	 cmp	%o2, 0
	mov	1, %g4
	b	.L1353
	 mov	0, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	cmp	%o0, %o1
	bgu	.L1355
	 mov	1, %g1
	b	.L1361
	 mov	0, %o0
.L1358:
	cmp	%o1, %g2
	bgeu	.L1357
	 sll	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1378
	 nop
.L1355:
	cmp	%o1, 0
	bge,a	.L1358
	 sll	%o1, 1, %o1
.L1356:
	mov	0, %o0
.L1361:
	cmp	%g2, %o1
	blu,a	.L1379
	 srl	%g1, 1, %g1
	sub	%g2, %o1, %g2
	or	%o0, %g1, %o0
	srl	%g1, 1, %g1
.L1379:
	cmp	%g1, 0
	bne	.L1361
	 srl	%o1, 1, %o1
	cmp	%o2, 0
	bne	.L1377
	 nop
.L1380:
	jmp	%o7+8
	 nop
.L1377:
	jmp	%o7+8
	 mov	%g2, %o0
.L1357:
	cmp	%g1, 0
.L1378:
	bne	.L1356
	 mov	0, %o0
	cmp	%o2, 0
	be	.L1380
	 nop
	b,a	.L1377
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a	.L1382
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1382:
	be	.L1386
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %o2, %o0
	srl	%o1, %g1, %g1
	sll	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1386:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be	.L1388
	 cmp	%o2, 0
	sra	%o0, 31, %g1
	sra	%o0, %o2, %o1
	mov	%g1, %o0
.L1392:
	jmp	%o7+8
	 nop
.L1388:
	be	.L1392
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
	bne	.L1397
	 mov	0, %o0
	sub	%o5, %g1, %o0
.L1397:
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
	bl	.L1399
	 mov	0, %g1
	bg	.L1399
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1399
	 mov	0, %g1
	bgu	.L1399
	 mov	2, %g1
	mov	1, %g1
.L1399:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl	.L1405
	 mov	-1, %g1
	bg	.L1405
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1405
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1405:
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
	be,a	.L1412
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1412:
	be	.L1416
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %o2, %o1
	sll	%o0, %g1, %g1
	srl	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1416:
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
	be	.L1425
	 mov	%o2, %g1
.L1427:
	fmuld	%f0, %f8, %f0
.L1425:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1426
	 andcc	%g1, 1, %g0
	bne	.L1427
	 fmuld	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1432:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1427
	 fmuld	%f8, %f8, %f8
	b	.L1432
	 srl	%g1, 31, %g2
.L1426:
	cmp	%o2, 0
	bge	.L1424
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f8
	fdivd	%f8, %f0, %f0
.L1424:
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
	be	.L1434
	 mov	%o1, %g1
.L1436:
	fmuls	%f0, %f8, %f0
.L1434:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be	.L1435
	 andcc	%g1, 1, %g0
	bne	.L1436
	 fmuls	%f8, %f8, %f8
	srl	%g1, 31, %g2
.L1441:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne	.L1436
	 fmuls	%f8, %f8, %f8
	b	.L1441
	 srl	%g1, 31, %g2
.L1435:
	cmp	%o1, 0
	bge	.L1433
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f8
	fdivs	%f8, %f0, %f0
.L1433:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu	.L1442
	 mov	0, %g1
	bgu	.L1442
	 mov	2, %g1
	cmp	%o1, %o3
	blu	.L1442
	 mov	0, %g1
	bgu	.L1442
	 mov	2, %g1
	mov	1, %g1
.L1442:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu	.L1448
	 mov	-1, %g1
	bgu	.L1448
	 mov	1, %g1
	cmp	%o1, %o3
	blu	.L1448
	 mov	-1, %g1
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1448:
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
