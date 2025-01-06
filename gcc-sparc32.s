	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.align 32
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cmp	%o0, %o1
	bleu,pt	%icc, .L2
	 nop
	cmp	%o2, 0
	be,pn	%icc, .L35
	 add	%o1, -1, %g3
	add	%o0, -1, %g2
	ldub	[%g3+%o2], %g1
.L31:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a,pt %icc, .L31
	 ldub	[%g3+%o2], %g1
.L35:
	jmp	%o7+8
	 nop
.L2:
	be,pn	%icc, .L35
	 cmp	%o2, 0
	be,pn	%icc, .L35
	 add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L12
	 or	%o1, %o0, %g2
	and	%g2, 3, %g3
	add	%o1, 1, %g1
	cmp	%g0, %g3
	sub	%o0, %g1, %g1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g1, 2
	mov	%g2, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L12
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g4
.L32:
	st	%g4, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L32
	 ld	[%o1+%g1], %g4
	cmp	%o2, %g1
	add	%o1, %g1, %g3
	add	%o0, %g1, %g2
	be,pn	%icc, .L35
	 sub	%o2, %g1, %o2
	ldub	[%o1+%g1], %o1
	cmp	%o2, 1
	be,pn	%icc, .L35
	 stb	%o1, [%o0+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L35
	 stb	%g1, [%g2+1]
	ldub	[%g3+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g2+2]
.L12:
	mov	0, %g1
	ldub	[%o1+%g1], %g4
.L33:
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L33
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
	bne,pt	%icc, .L37
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L40:
	addcc	%o3, -1, %o3
	be,pn	%icc, .L39
	 add	%o0, 1, %o0
.L37:
	ldub	[%o1], %g1
	and	%g1, 0xff, %g2
	stb	%g1, [%o0]
	cmp	%g2, %o2
	bne,pt	%icc, .L40
	 add	%o1, 1, %o1
	jmp	%o7+8
	 add	%o0, 1, %o0
.L39:
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
	bne,pt	%icc, .L49
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L51:
	be,pn	%icc, .L52
	 add	%o0, 1, %o0
.L49:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L51
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L52:
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
	bne,a,pt %icc, .L70
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L61:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L69
	 mov	0, %o0
	ldub	[%o0], %g1
.L70:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	add	%o0, 1, %o0
	be,pt	%icc, .L61
	 add	%o1, 1, %o1
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L69:
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
	be,pn	%icc, .L76
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L76:
	return	%i7+8
	 nop
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
	ba,pt	%xcc, .L78
	 add	%o0, -1, %g2
.L80:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L81
	 add	%g3, -1, %g3
.L78:
	cmp	%g3, %g2
	bne,pt	%icc, .L80
	 mov	%g3, %o0
	mov	0, %o0
.L81:
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
	be,pn	%icc, .L86
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L86:
	return	%i7+8
	 nop
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
	be,pn	%icc, .L94
	 stb	%g1, [%o0]
.L89:
	ldub	[%o1+1], %g1
	sll	%g1, 24, %g3
	cmp	%g3, 0
	stb	%g1, [%o0+1]
	add	%o0, 1, %o0
	bne,pt	%icc, .L89
	 add	%o1, 1, %o1
.L94:
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
	bne,pt	%icc, .L96
	 and	%o1, 0xff, %o1
.L104:
	jmp	%o7+8
	 nop
.L98:
	sll	%g1, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L104
	 add	%o0, 1, %o0
.L96:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L98
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
.L107:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L109
	 cmp	%g1, 0
	bne,pt	%icc, .L107
	 add	%o0, 1, %o0
	mov	0, %o0
.L109:
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
	bne,pn	%icc, .L119
	 add	%o1, -1, %o1
	cmp	%g2, 0
.L121:
	be,a,pn	%icc, .L120
	 and	%g3, 0xff, %o1
	ldub	[%o0+%g1], %g4
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	sll	%g3, 24, %o5
	cmp	%o5, %g2
	be,pt	%icc, .L121
	 cmp	%g2, 0
.L119:
	and	%g4, 0xff, %o0
	and	%g3, 0xff, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
.L120:
	mov	0, %o0
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
	be,pn	%icc, .L122
	 mov	0, %g1
	mov	%o0, %g1
.L124:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L124
	 add	%g1, 1, %g1
	sub	%g1, %o0, %g1
.L122:
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
	be,pn	%icc, .L128
	 mov	0, %g3
	ldub	[%o0], %g4
	add	%o2, -1, %o2
	cmp	%g4, 0
	mov	%o1, %g3
	bne,pt	%icc, .L132
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L140
	 ldub	[%o1], %o5
.L133:
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,pn	%icc, .L141
	 add	%g3, 1, %g1
	mov	%g1, %g3
.L132:
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
	bne,pt	%icc, .L133
	 add	%o0, 1, %o0
.L131:
	sub	%g4, %o5, %g3
.L128:
.L142:
	jmp	%o7+8
	 mov	%g3, %o0
.L141:
	ba,pt	%xcc, .L131
	 ldub	[%g3+1], %o5
.L140:
	ba,pt	%xcc, .L142
	 sub	%g4, %o5, %g3
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%icc, .L147
	 and	%o2, -2, %o2
	add	%o0, %o2, %g3
.L145:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	add	%o0, 2, %o0
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	cmp	%o0, %g3
	bne,pt	%icc, .L145
	 add	%o1, 2, %o1
.L147:
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
	cmp	%g1, 25
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isalpha, .-isalpha
	.align 4
	.align 32
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	cmp	%o0, 127
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
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
	cmp	%o0, 31
	xor	%o0, 127, %g1
	mov	0, %g2
	movleu	%icc, 1, %g2
	cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	iscntrl, .-iscntrl
	.align 4
	.align 32
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	add	%o0, -48, %o0
	cmp	%o0, 9
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isdigit, .-isdigit
	.align 4
	.align 32
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	add	%o0, -33, %o0
	cmp	%o0, 93
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isgraph, .-isgraph
	.align 4
	.align 32
	.global islower
	.type	islower, #function
	.proc	04
islower:
	add	%o0, -97, %o0
	cmp	%o0, 25
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	islower, .-islower
	.align 4
	.align 32
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	add	%o0, -32, %o0
	cmp	%o0, 94
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isprint, .-isprint
	.align 4
	.align 32
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	add	%o0, -9, %g1
	cmp	%g1, 4
	mov	0, %g2
	xor	%o0, 32, %g1
	movleu	%icc, 1, %g2
	cmp	%g0, %g1
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	isspace, .-isspace
	.align 4
	.align 32
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	add	%o0, -65, %o0
	cmp	%o0, 25
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isupper, .-isupper
	.align 4
	.align 32
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	add	%o0, -127, %g1
	cmp	%g1, 32
	mov	0, %g1
	mov	%g1, %g3
	movleu	%icc, 1, %g3
	cmp	%o0, 31
	movleu	%icc, 1, %g1
	orcc	%g3, %g1, %g4
	mov	%o0, %g2
	bne,pt	%icc, .L162
	 mov	1, %o0
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L162
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %o0
	cmp	%o0, 2
	movleu	%icc, 1, %g4
	mov	%g4, %o0
.L162:
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
	cmp	%o0, 9
	mov	0, %o0
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	iswdigit, .-iswdigit
	.align 4
	.align 32
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	cmp	%o0, 254
	bleu,pn	%icc, .L170
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g3
	sethi	%hi(46080), %g4
	add	%o0, %g3, %o0
	or	%g4, 981, %o5
	sethi	%hi(8192), %g2
	cmp	%o5, %o0
	or	%g2, 39, %g3
	subx	%g0, -1, %g4
	cmp	%g3, %g1
	subx	%g0, -1, %o0
	orcc	%g4, %o0, %g2
	bne,pn	%icc, .L171
	 mov	1, %o0
	sethi	%hi(-57344), %o5
	sethi	%hi(7168), %g3
	add	%g1, %o5, %g4
	or	%g3, 1016, %o5
	cmp	%g4, %o5
	bleu,pn	%icc, .L171
	 sethi	%hi(-65536), %g4
	sethi	%hi(64512), %o0
	or	%o0, 1022, %g3
	or	%g4, 4, %o5
	sethi	%hi(1048576), %o0
	andn	%g3, %g1, %g4
	cmp	%g0, %g4
	add	%g1, %o5, %g1
	or	%o0, 3, %o5
	addx	%g0, 0, %g3
	cmp	%g1, %o5
	movleu	%icc, %g3, %g2
	mov	%g2, %o0
.L171:
	jmp	%o7+8
	 nop
.L170:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	mov	0, %o0
	jmp	%o7+8
	 movgu	%icc, 1, %o0
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
	bleu,pt	%icc, .L175
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	mov	0, %o0
	movleu	%icc, 1, %o0
.L175:
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
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L177
	 std	%o2, [%sp+80]
	ldd	[%sp+80], %f0
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L177
	 ldd	[%sp+72], %f8
	fcmped	%fcc2, %f8, %f0
	fbule,pt %fcc2, .L184
	 nop
	fsubd	%f8, %f0, %f0
.L177:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L184:
	stx	%g0, [%sp+72]
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
	fcmps	%fcc3, %f0, %f0
	fbu,pn	%fcc3, .L185
	 st	%o1, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L185
	 ld	[%sp+72], %f8
	fcmpes	%fcc1, %f8, %f0
	fbule,pt %fcc1, .L192
	 nop
	fsubs	%f8, %f0, %f0
.L185:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L192:
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
	ldd	[%sp+72], %f10
	fcmpd	%fcc2, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc2, .L193
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f0, %f0
	fbu,pn	%fcc3, .L193
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L195
	 fcmped	%fcc0, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
.L193:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L195:
	fmovdl	%fcc0, %f8, %f0
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
	fcmps	%fcc1, %f9, %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fbu,pn	%fcc1, .L199
	 fmovs	%f8, %f0
	fcmps	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L199
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L201
	 fcmpes	%fcc3, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f8, %f0
.L199:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L201:
	fmovsl	%fcc3, %f8, %f0
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
	ldd	[%sp+72], %f10
	fcmpd	%fcc0, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc0, .L205
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L205
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L207
	 fcmped	%fcc2, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L207:
	fmovdl	%fcc2, %f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%fcc3, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc3, .L211
	 fmovd	%f0, %f8
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L211
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L213
	 fcmped	%fcc1, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f10, %f8
	fmovd	%f8, %f0
.L211:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L213:
	fmovdl	%fcc1, %f10, %f8
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	fcmps	%fcc2, %f9, %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fbu,pn	%fcc2, .L217
	 fmovs	%f8, %f0
	fcmps	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L217
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L219
	 fcmpes	%fcc0, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f9, %f8
	fmovs	%f8, %f0
.L217:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L219:
	fmovsl	%fcc0, %f9, %f8
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%fcc1, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc1, .L223
	 fmovd	%f0, %f8
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L223
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L225
	 fcmped	%fcc3, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f10, %f8
	fmovd	%f8, %f0
.L223:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L225:
	fmovdl	%fcc3, %f10, %f8
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	be,pn	%icc, .L230
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L231:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne,pt	%icc, .L231
	 add	%g2, 1, %g2
.L230:
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
	sethi	%hi(seed), %g1
	ldd	[%g1+%lo(seed)], %g2
	sethi	%hi(1481765888), %i4
	sethi	%hi(1284865024), %i5
	or	%i4, 45, %i4
	or	%i5, 813, %i5
	sllx	%g2, 32, %g4
	sllx	%i4, 32, %o7
	or	%g3, %g4, %g4
	or	%i5, %o7, %o7
	mulx	%g4, %o7, %g4
	srlx	%g4, 32, %g2
	mov	%g4, %g3
	addcc	%g3, 1, %i1
	addx	%g2, 0, %i0
	std	%i0, [%g1+%lo(seed)]
	return	%i7+8
	 srl	%o0, 1, %o0
	.size	rand, .-rand
	.align 4
	.align 32
	.global insque
	.type	insque, #function
	.proc	020
insque:
	cmp	%o1, 0
	be,a,pn	%icc, .L242
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L244
	 st	%o0, [%g1+4]
.L244:
	jmp	%o7+8
	 nop
.L242:
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
	be,a,pn	%icc, .L255
	 ld	[%o0+4], %g3
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g3
.L255:
	cmp	%g3, 0
	bne,a,pt %icc, .L254
	 st	%g1, [%g3]
.L254:
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
	be,pn	%icc, .L257
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L259
	 mov	0, %l0
.L271:
	cmp	%l1, %l0
	be,pn	%icc, .L257
	 add	%i5, %i3, %i5
.L259:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	mov	%i5, %i0
	bne,pt	%icc, .L271
	 add	%l0, 1, %l0
.L273:
	return	%i7+8
	 nop
.L257:
	smul	%i3, %l1, %g1
	add	%l1, 1, %g2
	st	%g2, [%i2]
	cmp	%i3, 0
	be,pn	%icc, .L273
	 add	%i1, %g1, %i0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memmove, 0
	 mov	%i0, %o0
	return	%i7+8
	 nop
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
	be,pn	%icc, .L275
	 mov	0, %i5
	ba,pt	%xcc, .L286
	 mov	%i1, %o1
.L285:
	cmp	%l0, %i5
	be,pn	%icc, .L275
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L286:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	mov	%i1, %i2
	bne,pt	%icc, .L285
	 add	%i5, 1, %i5
	return	%i7+8
	 mov	%o2, %o0
.L275:
	mov	0, %i2
	return	%i7+8
	 mov	%o2, %o0
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
	ldub	[%o0], %o5
	ba,pt	%xcc, .L311
	 mov	0, %g1
.L313:
	mov	0, %g1
	add	%o0, 1, %o0
.L311:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L313
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L291
	 cmp	%g1, 45
	bne,pt	%icc, .L314
	 add	%g2, -48, %g1
	ldub	[%o0+1], %o5
	sll	%o5, 24, %o4
	sra	%o4, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L315
	 mov	0, %o0
	mov	1, %o4
.L294:
	mov	0, %o0
.L297:
	add	%g1, 1, %g1
	add	%o5, -48, %g2
	ldub	[%g1], %o5
	sll	%o0, 2, %g4
	sll	%o5, 24, %g3
	add	%g4, %o0, %o0
	sra	%g3, 24, %g4
	sll	%g2, 24, %g2
	add	%g4, -48, %g4
	sll	%o0, 1, %g3
	sra	%g2, 24, %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L297
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L315:
	jmp	%o7+8
	 nop
.L314:
	cmp	%g1, 9
	mov	0, %o4
	bleu,pt	%icc, .L294
	 mov	%o0, %g1
.L312:
	jmp	%o7+8
	 mov	0, %o0
.L291:
	ldub	[%o0+1], %o5
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g3
	add	%g3, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L294
	 mov	0, %o4
	ba,pt	%xcc, .L312
	 nop
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	04
atol:
	ldub	[%o0], %o5
	ba,pt	%xcc, .L336
	 mov	0, %g1
.L338:
	mov	0, %g1
	add	%o0, 1, %o0
.L336:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L338
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L319
	 cmp	%g1, 45
	be,a,pt	%icc, .L339
	 ldub	[%o0+1], %o5
	add	%g2, -48, %g1
	cmp	%g1, 9
	mov	0, %o4
	bgu,pn	%icc, .L337
	 mov	%o0, %g1
.L321:
	mov	0, %o0
.L324:
	add	%g1, 1, %g1
	add	%o5, -48, %g2
	ldub	[%g1], %o5
	sll	%o0, 2, %g4
	sll	%o5, 24, %g3
	add	%g4, %o0, %o0
	sra	%g3, 24, %g4
	sll	%g2, 24, %g2
	add	%g4, -48, %g4
	sll	%o0, 1, %g3
	sra	%g2, 24, %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L324
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L340:
	jmp	%o7+8
	 nop
.L339:
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	bleu,pt	%icc, .L321
	 mov	1, %o4
.L337:
	jmp	%o7+8
	 mov	0, %o0
.L319:
	ldub	[%o0+1], %o5
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -48, %o4
	cmp	%o4, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L340
	 mov	0, %o0
	ba,pt	%xcc, .L324
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	0, %g1
	ba,pt	%xcc, .L364
	 ldub	[%i0], %o7
.L366:
	mov	0, %g1
	add	%i0, 1, %i0
.L364:
	sll	%o7, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %i1
	movleu	%icc, 1, %g1
	cmp	%g0, %i1
	subx	%g0, -1, %i2
	orcc	%g1, %i2, %g0
	bne,a,pt %icc, .L366
	 ldub	[%i0+1], %o7
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L344
	 cmp	%g1, 45
	bne,pt	%icc, .L367
	 add	%g2, -48, %i3
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	mov	0, %o4
	bgu,pn	%icc, .L341
	 mov	0, %o5
	mov	1, %i0
.L347:
	mov	0, %o4
	mov	0, %o5
	add	%i1, 1, %i1
.L368:
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
	bleu,a,pt %icc, .L368
	 add	%i1, 1, %i1
	cmp	%i0, 0
	bne,a,pt %icc, .L369
	 mov	%o4, %i0
	subcc	%i3, %g3, %o5
	subx	%i5, %g2, %o4
.L341:
	mov	%o4, %i0
.L369:
	jmp	%i7+8
	 restore %g0, %o5, %o1
.L367:
	cmp	%i3, 9
	mov	%i0, %i1
	bleu,pt	%icc, .L347
	 mov	0, %i0
	mov	0, %o4
	ba,pt	%xcc, .L341
	 mov	0, %o5
.L344:
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	bleu,pt	%icc, .L347
	 mov	0, %i0
	mov	0, %o4
	ba,pt	%xcc, .L341
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
.L380:
	cmp	%i2, 0
	be,pn	%icc, .L382
	 mov	0, %i5
.L381:
	srl	%i2, 1, %l0
	smul	%l0, %i3, %g1
	add	%i1, %g1, %i5
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,pn	%icc, .L375
	 add	%i2, -1, %i2
	be,pn	%icc, .L370
	 nop
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne,pt	%icc, .L381
	 add	%i5, %i3, %i1
	mov	0, %i5
.L370:
.L382:
	return	%i7+8
	 mov	%o5, %o0
.L375:
	ba,pt	%xcc, .L380
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
	be,pn	%icc, .L388
	 mov	%i0, %l1
.L396:
	sra	%i2, 1, %l0
	smul	%l0, %i3, %o1
	add	%i1, %o1, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	be,pn	%icc, .L399
	 sra	%i2, 1, %i2
.L398:
	ble,pn	%icc, .L386
	 cmp	%i2, 0
	bne,pt	%icc, .L396
	 add	%i0, %i3, %i1
.L388:
	return	%i7+8
	 mov	0, %o0
.L386:
	cmp	%l0, 0
	be,pn	%icc, .L388
	 nop
	mov	%l0, %i2
	sra	%i2, 1, %l0
	smul	%l0, %i3, %o1
	add	%i1, %o1, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	bne,pt	%icc, .L398
	 sra	%i2, 1, %i2
.L399:
	return	%i7+8
	 nop
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	sra	%o0, 31, %g3
	wr	%g3, 0, %y
	sdiv	%o0, %o1, %g2
	smul	%g2, %o1, %o1
	mov	%o0, %g1
	ld	[%sp+64], %o0
	sub	%g1, %o1, %g1
	st	%g2, [%o0]
	jmp	%o7+12
	 st	%g1, [%o0+4]
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
	return	%i7+12
	 mov	%o5, %o0
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
	sra	%o0, 31, %g3
	wr	%g3, 0, %y
	sdiv	%o0, %o1, %g2
	smul	%g2, %o1, %o1
	mov	%o0, %g1
	ld	[%sp+64], %o0
	sub	%g1, %o1, %g1
	st	%g2, [%o0]
	jmp	%o7+12
	 st	%g1, [%o0+4]
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
	return	%i7+12
	 mov	%o5, %o0
	.size	lldiv, .-lldiv
	.align 4
	.align 32
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ld	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L411
	 nop
.L408:
	cmp	%o1, %g1
	be,pn	%icc, .L416
	 nop
	ld	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L408
	 add	%o0, 4, %o0
.L411:
	jmp	%o7+8
	 mov	0, %o0
.L416:
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
	bne,pn	%icc, .L426
	 add	%o1, -4, %o1
	cmp	%g2, 0
.L427:
	be,pn	%icc, .L426
	 cmp	%g2, %g3
	ld	[%o0+%g1], %g2
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L427
	 cmp	%g2, 0
	cmp	%g2, %g3
.L426:
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.align 32
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L429:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L429
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
	be,pn	%icc, .L431
	 mov	0, %g1
	mov	%o0, %g1
.L433:
	ld	[%g1+4], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L433
	 add	%g1, 4, %g1
	sub	%g1, %o0, %g1
	sra	%g1, 2, %g1
.L431:
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
	bne,a,pt %icc, .L450
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L440:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L449
	 mov	0, %o0
	ld	[%o0], %g2
.L450:
	ld	[%o1], %g4
	xor	%g4, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	andcc	%g1, %g3, %g1
	add	%o0, 4, %o0
	bne,pt	%icc, .L440
	 add	%o1, 4, %o1
	cmp	%g2, %g4
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L449:
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
	bne,a,pt %icc, .L460
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L454:
	be,pn	%icc, .L455
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L460:
	cmp	%g1, %o1
	bne,a,pt %icc, .L454
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L455:
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
	bne,a,pt %icc, .L475
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L465:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L474
	 mov	0, %o0
	ld	[%o0], %g2
.L475:
	ld	[%o1], %g1
	cmp	%g2, %g1
	add	%o0, 4, %o0
	be,pt	%icc, .L465
	 add	%o1, 4, %o1
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L474:
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
	be,pn	%icc, .L481
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L481:
	return	%i7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.align 32
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cmp	%o0, %o1
	be,pn	%icc, .L499
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	bgeu,pt	%icc, .L497
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be,pn	%icc, .L499
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %o2
.L498:
	st	%o2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %icc, .L498
	 ld	[%o1+%g1], %o2
.L500:
	jmp	%o7+8
	 nop
.L497:
	cmp	%o2, 0
	be,pn	%icc, .L500
	 mov	0, %g4
.L485:
	ld	[%o1+%g4], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g4]
	cmp	%g1, -1
	bne,pt	%icc, .L485
	 add	%g4, 4, %g4
.L499:
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
	be,pn	%icc, .L508
	 add	%o2, -1, %o2
	mov	%o0, %g1
.L503:
	add	%o2, -1, %o2
	st	%o1, [%g1]
	cmp	%o2, -1
	bne,pt	%icc, .L503
	 add	%g1, 4, %g1
.L508:
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
	bgeu,pt	%icc, .L510
	 nop
	cmp	%o2, 0
	be,pn	%icc, .L541
	 nop
	add	%o0, -1, %g2
	add	%o1, -1, %o1
	ldub	[%g2+%o2], %g1
.L538:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a,pt %icc, .L538
	 ldub	[%g2+%o2], %g1
.L542:
	jmp	%o7+8
	 nop
.L510:
	bne,a,pt %icc, .L537
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L537:
	be,pn	%icc, .L541
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L520
	 or	%o1, %o0, %g2
	and	%g2, 3, %g3
	add	%o0, 1, %g1
	cmp	%g0, %g3
	sub	%o1, %g1, %g1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g1, 2
	mov	%g2, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L520
	 and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o0+%g1], %g4
.L539:
	st	%g4, [%o1+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L539
	 ld	[%o0+%g1], %g4
	cmp	%o2, %g1
	add	%o1, %g1, %g2
	add	%o0, %g1, %g3
	be,pn	%icc, .L542
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %o0
	cmp	%o2, 1
	be,pn	%icc, .L542
	 stb	%o0, [%o1+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L542
	 stb	%g1, [%g2+1]
	ldub	[%g3+2], %g1
	jmp	%o7+8
	 stb	%g1, [%g2+2]
.L520:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L540:
	stb	%g4, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L540
	 ldub	[%o0+%g1], %g4
.L541:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.align 32
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	sllx	%o0, 32, %o4
	srl	%o1, 0, %o1
	or	%o1, %o4, %o4
	sllx	%o4, %o2, %o5
	srlx	%o5, 32, %o4
	sub	%g0, %o2, %g1
	sllx	%o0, 32, %g2
	srl	%o1, 0, %o1
	or	%o1, %g2, %g2
	srlx	%g2, %g1, %g3
	srlx	%g3, 32, %g2
	or	%g2, %o4, %o0
	jmp	%o7+8
	 or	%g3, %o5, %o1
	.size	rotl64, .-rotl64
	.align 4
	.align 32
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	sllx	%o0, 32, %o4
	srl	%o1, 0, %o1
	or	%o1, %o4, %o4
	srlx	%o4, %o2, %o5
	srlx	%o5, 32, %o4
	sub	%g0, %o2, %g1
	sllx	%o0, 32, %g2
	srl	%o1, 0, %o1
	or	%o1, %g2, %g2
	sllx	%g2, %g1, %g3
	srlx	%g3, 32, %g2
	or	%g2, %o4, %o0
	jmp	%o7+8
	 or	%g3, %o5, %o1
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
	ba,pt	%xcc, .L559
	 mov	0, %g1
.L557:
	cmp	%g1, 32
	be,pn	%icc, .L561
	 nop
.L559:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%icc, .L557
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L561:
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
	be,pn	%icc, .L569
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne,pn	%icc, .L569
	 nop
	mov	1, %o0
.L564:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be,pt	%icc, .L564
	 add	%o0, 1, %o0
.L569:
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
	fcmpes	%fcc0, %f9, %f8
	fbl,pt	%fcc0, .L570
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ld	[%g1+%lo(.LC5)], %f0
	fcmpes	%fcc1, %f9, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L570:
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
	fcmped	%fcc2, %f10, %f8
	fbl,pt	%fcc2, .L573
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f0
	fcmped	%fcc3, %f10, %f0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L573:
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
	fcmped	%fcc0, %f10, %f8
	fbl,pt	%fcc0, .L576
	 mov	1, %o0
	sethi	%hi(.LC13), %g1
	ldd	[%g1+%lo(.LC13)], %f0
	fcmped	%fcc1, %f10, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L576:
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
	fcmps	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L581
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L581
	 sethi	%hi(.LC17), %g1
	ld	[%g1+%lo(.LC17)], %f1
	sethi	%hi(.LC16), %g1
	ld	[%g1+%lo(.LC16)], %f9
	cmp	%o1, 0
	fmovsge	%icc, %f9, %f1
	andcc	%o1, 1, %g0
	be,pt	%icc, .L595
	 srl	%o1, 31, %g1
.L584:
	fmuls	%f0, %f1, %f0
	srl	%o1, 31, %g1
.L595:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be,pn	%icc, .L581
	 srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L584
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L594:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L584
	 add	%g1, %o1, %g1
	ba,pt	%xcc, .L594
	 sra	%g1, 1, %o1
.L581:
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
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L597
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L597
	 sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L609
	 ldd	[%g1+%lo(.LC20)], %f2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L612
	 srl	%o2, 31, %g1
.L600:
	fmuld	%f0, %f2, %f0
.L599:
	srl	%o2, 31, %g1
.L612:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L597
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L600
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L611:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L600
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L611
	 sra	%g1, 1, %o2
.L597:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L609:
	sethi	%hi(.LC21), %g1
	andcc	%o2, 1, %g0
	be,pt	%icc, .L599
	 ldd	[%g1+%lo(.LC21)], %f2
	ba,pt	%xcc, .L599
	 fmuld	%f0, %f2, %f0
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
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L614
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc3, %f0, %f8
	fbe,pt	%fcc3, .L614
	 sethi	%hi(.LC25), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L626
	 ldd	[%g1+%lo(.LC25)], %f2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L629
	 srl	%o2, 31, %g1
.L617:
	fmuld	%f0, %f2, %f0
.L616:
	srl	%o2, 31, %g1
.L629:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L614
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L617
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L628:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L617
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L628
	 sra	%g1, 1, %o2
.L614:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L626:
	sethi	%hi(.LC24), %g1
	andcc	%o2, 1, %g0
	be,pt	%icc, .L616
	 ldd	[%g1+%lo(.LC24)], %f2
	ba,pt	%xcc, .L616
	 fmuld	%f0, %f2, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be,pn	%icc, .L653
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 3
	bleu,pn	%icc, .L638
	 or	%o0, %o1, %g1
	andcc	%g1, 3, %g0
	bne,pn	%icc, .L638
	 and	%o2, -4, %g4
	mov	0, %g1
	ld	[%o0+%g1], %g3
.L651:
	ld	[%o1+%g1], %g2
	xor	%g2, %g3, %o5
	st	%o5, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a,pt %icc, .L651
	 ld	[%o0+%g1], %g3
	cmp	%o2, %g1
	add	%o0, %g1, %g3
	add	%o1, %g1, %g4
	be,pn	%icc, .L653
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %g2
	ldub	[%o1+%g1], %o1
	xor	%g2, %o1, %o5
	cmp	%o2, 1
	be,pn	%icc, .L653
	 stb	%o5, [%o0+%g1]
	ldub	[%g3+1], %g2
	ldub	[%g4+1], %g1
	xor	%g1, %g2, %g1
	cmp	%o2, 2
	be,pn	%icc, .L653
	 stb	%g1, [%g3+1]
	ldub	[%g3+2], %o2
	ldub	[%g4+2], %g1
	xor	%g1, %o2, %g1
	jmp	%o7+8
	 stb	%g1, [%g3+2]
.L638:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L652:
	ldub	[%o1+%g1], %g4
	xor	%g4, %g3, %o5
	stb	%o5, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L652
	 ldub	[%o0+%g1], %g3
.L653:
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
	be,pn	%icc, .L655
	 mov	%o0, %g1
.L656:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L656
	 add	%g1, 1, %g1
.L655:
	cmp	%o2, 0
	bne,a,pt %icc, .L670
	 ldub	[%o1], %g4
	jmp	%o7+8
	 stb	%g0, [%g1]
.L659:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L671
	 stb	%g0, [%g1]
	ldub	[%o1], %g4
.L670:
	sll	%g4, 24, %g3
	cmp	%g3, 0
	stb	%g4, [%g1]
	add	%g1, 1, %g1
	bne,pt	%icc, .L659
	 add	%o1, 1, %o1
.L671:
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
	be,pn	%icc, .L672
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L680:
	cmp	%g2, 0
	bne,a,pn %icc, .L675
	 add	%g1, 1, %g1
.L672:
	jmp	%o7+8
	 mov	%g1, %o0
.L675:
	cmp	%o1, %g1
	bne,a,pt %icc, .L680
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L672
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
	be,a,pn	%icc, .L690
	 mov	0, %o0
.L682:
	mov	%o1, %g1
	ba,pt	%xcc, .L685
	 sra	%g4, 24, %g4
.L684:
	be,pn	%icc, .L690
	 add	%g1, 1, %g1
.L685:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L684
	 cmp	%g2, %g4
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	bne,pt	%icc, .L682
	 add	%o0, 1, %o0
	mov	0, %o0
.L690:
	jmp	%o7+8
	 nop
	.size	strpbrk, .-strpbrk
	.align 4
	.align 32
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	mov	0, %o0
.L692:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L692
	 add	%g1, 1, %g1
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
	be,pn	%icc, .L716
	 mov	%o0, %g4
	mov	%o1, %g1
.L696:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L696
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be,pn	%icc, .L716
	 mov	%g4, %o0
	add	%o1, -1, %o0
	sra	%g3, 24, %o2
	ba,pt	%xcc, .L713
	 add	%o0, %g1, %o0
.L715:
	be,pn	%icc, .L714
	 add	%g4, 1, %g4
.L713:
	ldub	[%g4], %g1
	sll	%g1, 24, %o3
	sra	%o3, 24, %o4
	cmp	%o4, %o2
	bne,pt	%icc, .L715
	 cmp	%o4, 0
	mov	%o1, %g2
	mov	%g4, %o5
	ba,pt	%xcc, .L698
	 and	%g1, 0xff, %g1
.L700:
	ldub	[%o5], %g1
	cmp	%g1, 0
	be,pn	%icc, .L699
	 add	%g2, 1, %g2
.L698:
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
	bne,pt	%icc, .L700
	 add	%o5, 1, %o5
.L699:
	ldub	[%g2], %o5
	cmp	%g1, %o5
	be,a,pn	%icc, .L716
	 mov	%g4, %o0
	ba,pt	%xcc, .L713
	 add	%g4, 1, %g4
.L714:
	jmp	%o7+8
	 mov	0, %o0
.L716:
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
	stx	%g0, [%sp+72]
	ldd	[%sp+72], %f8
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L727
	 std	%o2, [%sp+72]
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L721
	 nop
	ldd	[%sp+72], %f10
	fcmped	%fcc3, %f10, %f8
	fbl,a,pn %fcc3, .L728
	 fnegd	%f0, %f0
.L721:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L727:
	ldd	[%sp+72], %f2
	fcmped	%fcc1, %f2, %f8
	fbule,pt %fcc1, .L721
	 nop
	fnegd	%f0, %f0
.L728:
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
	be,pn	%icc, .L729
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu,pn	%icc, .L729
	 mov	0, %g2
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,pn	%icc, .L729
	 nop
	ldub	[%o2], %g1
	mov	%o0, %g2
	sll	%g1, 24, %o0
	sra	%o0, 24, %o4
	ldsb	[%g2], %g1
.L750:
	cmp	%g1, %o4
	be,pn	%icc, .L749
	 add	%g2, 1, %o5
	mov	%o5, %g2
.L731:
	cmp	%o1, %g2
	bgeu,a,pt %icc, .L750
	 ldsb	[%g2], %g1
.L740:
	mov	0, %g2
.L729:
	jmp	%o7+8
	 mov	%g2, %o0
.L749:
	cmp	%o3, 1
	be,pn	%icc, .L729
	 nop
.L734:
	ba,pt	%xcc, .L732
	 mov	1, %g1
.L733:
	cmp	%g1, %o3
	be,pn	%icc, .L729
	 nop
.L732:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be,pt	%icc, .L733
	 add	%g1, 1, %g1
	cmp	%o1, %o5
	blu,pn	%icc, .L740
	 sra	%o0, 24, %g1
	ldsb	[%o5], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L731
	 add	%o5, 1, %g2
	mov	%o5, %g1
	mov	%g2, %o5
	ba,pt	%xcc, .L734
	 mov	%g1, %g2
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L752
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L752:
	return	%i7+8
	 add	%o0, %o2, %o0
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
	stx	%g0, [%sp+72]
	ldd	[%sp+72], %f8
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L779
	 sethi	%hi(.LC33), %g1
	ldd	[%g1+%lo(.LC33)], %f10
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L780
	 mov	0, %g2
.L759:
	sethi	%hi(.LC34), %g4
	sethi	%hi(.LC33), %o0
	ldd	[%g4+%lo(.LC34)], %f16
	ldd	[%o0+%lo(.LC33)], %f18
	mov	0, %g1
.L765:
	fmuld	%f0, %f16, %f0
	fcmped	%fcc2, %f0, %f18
	fbge,pt	%fcc2, .L765
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be,pn	%icc, .L756
	 st	%g1, [%o2]
.L782:
	fnegd	%f0, %f0
.L756:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L780:
	sethi	%hi(.LC34), %g1
	ldd	[%g1+%lo(.LC34)], %f2
	fcmped	%fcc1, %f0, %f2
	fbuge,pt %fcc1, .L762
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,pn	%fcc2, .L760
	 fmovd	%f0, %f4
.L762:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L779:
	sethi	%hi(.LC31), %g1
	ldd	[%g1+%lo(.LC31)], %f6
	fcmped	%fcc0, %f0, %f6
	fbug,pn	%fcc0, .L781
	 fnegd	%f0, %f4
	fmovd	%f4, %f0
	ba,pt	%xcc, .L759
	 mov	1, %g2
.L781:
	sethi	%hi(.LC32), %g1
	ldd	[%g1+%lo(.LC32)], %f12
	fcmped	%fcc3, %f0, %f12
	fbule,pt %fcc3, .L762
	 nop
	mov	1, %g2
.L760:
	fmovd	%f4, %f0
	sethi	%hi(.LC34), %g3
	ldd	[%g3+%lo(.LC34)], %f14
	mov	0, %g1
.L767:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f14
	fbl,pt	%fcc1, .L767
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne,pt	%icc, .L782
	 st	%g1, [%o2]
	ba,pt	%xcc, .L756
	 nop
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
	be,pn	%icc, .L783
	 mov	0, %o3
.L786:
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
	bne,pt	%icc, .L786
	 sll	%i3, 1, %i3
.L783:
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
	mov	%o0, %g2
	bgeu,pn	%icc, .L808
	 mov	1, %g1
	cmp	%o1, 0
.L810:
	bl,a,pn	%icc, .L797
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L810
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L796
	 mov	0, %o0
	mov	0, %o0
.L797:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne,pt	%icc, .L797
	 srl	%o1, 1, %o1
.L796:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L808:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L796
	 subx	%g0, -1, %o0
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
	be,pn	%icc, .L814
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%g1, 8, %o0
	add	%o0, -1, %i0
.L814:
	return	%i7+8
	 nop
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
	be,pn	%icc, .L821
	 xor	%i1, %o1, %o1
.L819:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L821:
	cmp	%i1, %i0
	bne,pt	%icc, .L819
	 nop
	return	%i7+8
	 mov	63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	orcc	%o0, 0, %g2
	be,pn	%icc, .L828
	 mov	0, %o0
.L824:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L824
	 sll	%o1, 1, %o1
.L828:
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
	blu,pt	%icc, .L833
	 and	%o2, -8, %o5
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L862
	 cmp	%o2, 0
.L833:
	cmp	%g4, 0
	sll	%g4, 3, %o3
	be,pn	%icc, .L859
	 mov	0, %g1
.L836:
	add	%o1, %g1, %g3
	ldd	[%g3], %g2
	add	%o0, %g1, %o4
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne,pt	%icc, .L836
	 std	%g2, [%o4]
	cmp	%o2, %o5
	bleu,pn	%icc, .L866
	 nop
	sub	%o2, %o5, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L861
	 add	%o5, 1, %g1
	add	%o0, %o5, %g4
	add	%o1, %g1, %g3
	add	%o1, %o5, %o4
	sub	%g4, %g3, %g2
	or	%o4, %g4, %g3
	cmp	%g2, 2
	and	%g3, 3, %g3
	mov	0, %g2
	movgu	%icc, 1, %g2
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L861
	 and	%o3, -4, %g3
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L864:
	st	%g2, [%g4+%g1]
	add	%g1, 4, %g1
	cmp	%g3, %g1
	bne,a,pt %icc, .L864
	 ld	[%o4+%g1], %g2
	cmp	%g3, %o3
	be,pn	%icc, .L867
	 add	%g3, %o5, %o5
	ldub	[%o1+%o5], %o3
	add	%o5, 1, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L867
	 stb	%o3, [%o0+%o5]
	ldub	[%o1+%g1], %g4
	add	%o5, 2, %o4
	cmp	%o2, %o4
	bleu,pn	%icc, .L867
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%o4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o4]
.L863:
	add	%g1, 1, %g1
.L861:
	ldub	[%o1+%o5], %g3
	cmp	%o2, %g1
	stb	%g3, [%o0+%o5]
	bne,pt	%icc, .L863
	 mov	%g1, %o5
.L867:
	jmp	%o7+8
	 nop
.L862:
	be,pn	%icc, .L867
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L865:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %icc, .L865
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L859:
	cmp	%o2, 0
	bne,pt	%icc, .L861
	 add	%o5, 1, %g1
.L866:
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
	blu,pt	%icc, .L872
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L892
	 cmp	%o2, 0
.L872:
	cmp	%g4, 0
	be,pn	%icc, .L871
	 add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L875
	 or	%o1, %o0, %g2
	and	%g2, 3, %g3
	add	%o1, 2, %g1
	cmp	%g0, %g3
	xor	%o0, %g1, %g1
	subx	%g0, -1, %o5
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%o5, %g1, %g0
	be,pn	%icc, .L875
	 srl	%o2, 2, %o5
	and	%o2, -4, %g3
	mov	0, %g1
	ld	[%o1+%g1], %g2
.L895:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L895
	 ld	[%o1+%g1], %g2
	sll	%o5, 1, %o5
	cmp	%g4, %o5
	be,pn	%icc, .L896
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g4
	sth	%g4, [%o0+%g1]
.L871:
	andcc	%o2, 1, %g0
.L896:
	be,pt	%icc, .L899
	 nop
	add	%o2, -1, %o2
.L894:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L892:
	be,pn	%icc, .L899
	 add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
.L897:
	stb	%g1, [%o0+%o2]
	add	%o2, -1, %o2
	cmp	%o2, -1
	bne,a,pt %icc, .L897
	 ldub	[%o1+%o2], %g1
.L899:
	jmp	%o7+8
	 nop
.L875:
	sll	%g4, 1, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L898:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L898
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L899
	 nop
	ba,pt	%xcc, .L894
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
	blu,pt	%icc, .L904
	 and	%o2, -4, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L933
	 cmp	%o2, 0
.L904:
	cmp	%g3, 0
	sll	%g3, 2, %o3
	be,pn	%icc, .L930
	 mov	0, %g1
	ld	[%o1+%g1], %o4
.L935:
	st	%o4, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %o3
	bne,a,pt %icc, .L935
	 ld	[%o1+%g1], %o4
	cmp	%o2, %g4
	bleu,pn	%icc, .L938
	 nop
	sub	%o2, %g4, %o3
	add	%o3, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L932
	 add	%g4, 1, %g1
	add	%o0, %g4, %o5
	add	%o1, %g1, %g3
	add	%o1, %g4, %o4
	sub	%o5, %g3, %g2
	or	%o4, %o5, %g3
	cmp	%g2, 2
	and	%g3, 3, %g3
	mov	0, %g2
	movgu	%icc, 1, %g2
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L932
	 and	%o3, -4, %g3
	mov	0, %g1
	ld	[%o4+%g1], %g2
.L936:
	st	%g2, [%o5+%g1]
	add	%g1, 4, %g1
	cmp	%g3, %g1
	bne,a,pt %icc, .L936
	 ld	[%o4+%g1], %g2
	cmp	%g3, %o3
	be,pn	%icc, .L939
	 add	%g3, %g4, %g4
	ldub	[%o1+%g4], %o3
	add	%g4, 1, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L939
	 stb	%o3, [%o0+%g4]
	ldub	[%o1+%g1], %o5
	add	%g4, 2, %o4
	cmp	%o2, %o4
	bleu,pn	%icc, .L939
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%o4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o4]
.L934:
	add	%g1, 1, %g1
.L932:
	ldub	[%o1+%g4], %g3
	cmp	%o2, %g1
	stb	%g3, [%o0+%g4]
	bne,pt	%icc, .L934
	 mov	%g1, %g4
.L939:
	jmp	%o7+8
	 nop
.L933:
	be,pn	%icc, .L939
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L937:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %icc, .L937
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L930:
	cmp	%o2, 0
	bne,pt	%icc, .L932
	 add	%g4, 1, %g1
.L938:
	jmp	%o7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.align 32
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	sra	%o0, 31, %g2
	wr	%g2, 0, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
	.size	__modi, .-__modi
	.align 4
	.align 32
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	add	%sp, -80, %sp
	mov	%o0, %g3
	mov	0, %g2
	std	%g2, [%sp+72]
	ldd	[%sp+72], %f8
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__uitod, .-__uitod
	.align 4
	.align 32
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	add	%sp, -80, %sp
	mov	%o0, %g3
	mov	0, %g2
	std	%g2, [%sp+72]
	ldd	[%sp+72], %f8
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__uitof, .-__uitof
	.section	".rodata"
	.align 8
.LC40:
	.long	1077870592
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	ldd	[%fp-16], %f8
	mov	0, %o2
	fxtoq	%f8, %f0
	mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	std	%f0, [%fp-16]
	call	__cmpdi2, 0
	 std	%f2, [%fp-8]
	cmp	%o0, 1
	ldd	[%fp-16], %f0
	bge,pt	%icc, .L944
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC40), %g1
	or	%g1, %lo(.LC40), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L944:
	return	%i7+8
	 fqtod	%f0, %f0
	.size	__ulltod, .-__ulltod
	.section	".rodata"
	.align 8
.LC42:
	.long	1077870592
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	ldd	[%fp-16], %f8
	mov	0, %o2
	fxtoq	%f8, %f0
	mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	std	%f0, [%fp-16]
	call	__cmpdi2, 0
	 std	%f2, [%fp-8]
	cmp	%o0, 1
	ldd	[%fp-16], %f0
	bge,pt	%icc, .L946
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC42), %g1
	or	%g1, %lo(.LC42), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L946:
	return	%i7+8
	 fqtos	%f0, %f0
	.size	__ulltof, .-__ulltof
	.align 4
	.align 32
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	wr	%g0, 0, %y
	udiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
	.size	__umodi, .-__umodi
	.align 4
	.align 32
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	sra	%o0, 15, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L948
	 mov	13, %g1
	cmp	%g0, %o0
	sra	%o0, 1, %o0
	subx	%g0, -1, %g2
	mov	14, %g1
	add	%g2, 15, %g3
	cmp	%o0, 0
	move	%icc, %g3, %g1
.L948:
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
	bne,pn	%icc, .L966
	 mov	0, %g1
	andcc	%o0, 2, %g0
	bne,pn	%icc, .L966
	 mov	1, %g1
	andcc	%o0, 4, %g0
	bne,pn	%icc, .L966
	 mov	2, %g1
	andcc	%o0, 8, %g0
	bne,pn	%icc, .L966
	 mov	3, %g1
	andcc	%o0, 16, %g0
	bne,pn	%icc, .L966
	 mov	4, %g1
	andcc	%o0, 32, %g0
	bne,pn	%icc, .L966
	 mov	5, %g1
	andcc	%o0, 64, %g0
	bne,pn	%icc, .L966
	 mov	6, %g1
	andcc	%o0, 128, %g0
	bne,pn	%icc, .L966
	 mov	7, %g1
	andcc	%o0, 256, %g0
	bne,pn	%icc, .L966
	 mov	8, %g1
	andcc	%o0, 512, %g0
	bne,pn	%icc, .L966
	 mov	9, %g1
	andcc	%o0, 1024, %g0
	bne,pn	%icc, .L966
	 mov	10, %g1
	andcc	%o0, 2048, %g0
	bne,pn	%icc, .L966
	 mov	11, %g1
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L966
	 mov	12, %g1
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L966
	 mov	13, %g1
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L966
	 mov	14, %g1
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L966:
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
	fcmpes	%fcc0, %f8, %f9
	fbge,a,pn %fcc0, .L991
	 fsubs	%f8, %f9, %f1
	fstoi	%f8, %f0
	st	%f0, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L991:
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
	be,pn	%icc, .L1000
	 mov	0, %o0
.L996:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L996
	 sll	%o1, 1, %o1
.L1000:
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
	be,pn	%icc, .L1009
	 mov	0, %o0
	cmp	%o1, 0
	be,pn	%icc, .L1009
	 nop
.L1003:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	srl	%o1, 1, %o1
	and	%g1, %g2, %g1
	cmp	%o1, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1003
	 sll	%g2, 1, %g2
.L1009:
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
	mov	%o0, %g2
	bleu,pn	%icc, .L1028
	 mov	1, %g1
	cmp	%o1, 0
.L1030:
	bl,a,pn	%icc, .L1017
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1030
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1016
	 mov	0, %o0
	mov	0, %o0
.L1017:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne,pt	%icc, .L1017
	 srl	%o1, 1, %o1
.L1016:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1028:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1016
	 subx	%g0, -1, %o0
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
	fcmpes	%fcc1, %f8, %f9
	fcmpes	%fcc2, %f8, %f9
	mov	0, %g1
	movg	%fcc1, 1, %g1
	st	%o1, [%sp+76]
	mov	-1, %g2
	mov	%g1, %o0
	movl	%fcc2, %g2, %o0
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
	fcmped	%fcc3, %f8, %f10
	fcmped	%fcc0, %f8, %f10
	mov	0, %g1
	movg	%fcc3, 1, %g1
	std	%o2, [%sp+72]
	mov	-1, %g2
	mov	%g1, %o0
	movl	%fcc0, %g2, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.align 32
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	smul	%o0, %o1, %o1
	srlx	%o1, 32, %o0
	jmp	%o7+8
	 nop
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.align 32
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	umul	%o0, %o1, %o1
	srlx	%o1, 32, %o0
	jmp	%o7+8
	 nop
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.align 32
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl,pn	%icc, .L1048
	 mov	%o0, %g3
	be,pn	%icc, .L1049
	 mov	0, %o0
	mov	0, %o4
.L1041:
	mov	1, %g4
	mov	0, %o0
.L1043:
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
	bne,pt	%icc, .L1043
	 add	%g4, 1, %g4
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %o0
.L1049:
	jmp	%o7+8
	 nop
.L1048:
	sub	%g0, %o1, %o1
	ba,pt	%xcc, .L1041
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
	bl,pn	%icc, .L1078
	 mov	0, %o5
.L1051:
	cmp	%o1, 0
	bge,pt	%icc, .L1079
	 cmp	%o0, %o1
	sub	%g0, %o1, %o1
	mov	%g1, %o5
	cmp	%o0, %o1
.L1079:
	mov	%o0, %g4
	bleu,pn	%icc, .L1074
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1080:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L1080
	 sll	%o1, 1, %o1
	cmp	%g1, 0
	be,pn	%icc, .L1056
	 mov	0, %o0
.L1055:
	cmp	%g4, %o1
	subx	%g0, -1, %g3
	mov	0, %g2
	cmp	%g3, 0
	movne	%icc, %g1, %g2
	sub	%g4, %o1, %g3
	srl	%g1, 1, %g1
	movne	%icc, %g3, %g4
	cmp	%g1, 0
	or	%o0, %g2, %o0
	bne,pt	%icc, .L1055
	 srl	%o1, 1, %o1
.L1056:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1078:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1051
	 mov	1, %o5
.L1074:
	ba,pt	%xcc, .L1056
	 subx	%g0, -1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge,pt	%icc, .L1082
	 mov	0, %o4
	sub	%g0, %o0, %o0
	mov	1, %o4
.L1082:
	sra	%o1, 31, %g2
	xor	%g2, %o1, %g1
	sub	%g1, %g2, %g1
	cmp	%o0, %g1
	mov	%o0, %g3
	bleu,pn	%icc, .L1103
	 mov	1, %o1
	sll	%g1, 1, %g1
.L1108:
	cmp	%g1, %o0
	sll	%o1, 1, %o1
	addx	%g0, 0, %o5
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	andcc	%o5, %g4, %g0
	bne,a,pt %icc, .L1108
	 sll	%g1, 1, %g1
	cmp	%o1, 0
	be,a,pn	%icc, .L1107
	 mov	%o0, %g3
.L1085:
	cmp	%g3, %g1
	sub	%g3, %g1, %o0
	srl	%o1, 1, %o1
	movgeu	%icc, %o0, %g3
	cmp	%o1, 0
	bne,pt	%icc, .L1085
	 srl	%g1, 1, %g1
.L1086:
	sub	%g0, %g3, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L1107:
	sub	%g0, %g3, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L1103:
	sub	%o0, %g1, %g1
	ba,pt	%xcc, .L1086
	 movgeu	%icc, %g1, %g3
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1110
	 mov	1, %g3
	ba,pt	%xcc, .L1172
	 xor	%o1, %o0, %g1
.L1113:
	cmp	%g1, %o0
	addx	%g0, 0, %o3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	andcc	%o3, %o5, %g0
	srl	%g2, 16, %g2
	be,pn	%icc, .L1112
	 mov	%g4, %o5
	mov	%g4, %g3
	mov	%g1, %o1
.L1110:
	sll	%o1, 16, %g4
	sll	%o1, 17, %g1
	cmp	%g4, 0
	srl	%g1, 16, %g1
	sll	%g3, 17, %g2
	bge,pt	%icc, .L1113
	 sll	%g3, 1, %g4
	cmp	%o0, %o1
	sll	%g3, 16, %g2
	subx	%g0, -1, %o3
	sub	%o0, %o1, %g1
	cmp	%o3, 0
	movne	%icc, %g1, %o0
	srl	%g2, 17, %g4
	mov	0, %o5
	movne	%icc, %g3, %o5
	sll	%o0, 16, %g3
	cmp	%g4, 0
	srl	%g3, 16, %o0
	mov	%o5, %o3
	be,pn	%icc, .L1115
	 srl	%o1, 1, %o4
.L1117:
	cmp	%o0, %o4
	subx	%g0, -1, %g1
	mov	0, %g3
	cmp	%g1, 0
	sub	%o0, %o4, %o5
	mov	%g3, %g1
	movne	%icc, %o5, %o0
	movne	%icc, %g4, %g1
	srl	%g2, 18, %o4
	or	%g1, %o3, %g1
	sll	%o0, 16, %g4
	cmp	%o4, 0
	srl	%g4, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 2, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 19, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 3, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 20, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 4, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 21, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 5, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 22, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 6, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 23, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 7, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 24, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 8, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 25, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 9, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 26, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 10, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 27, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 11, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 28, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 12, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 29, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 13, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 30, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1115
	 srl	%o1, 14, %o3
	cmp	%o0, %o3
	subx	%g0, -1, %o5
	sub	%o0, %o3, %g4
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %g3
	or	%g1, %g3, %g1
	sll	%o0, 16, %o4
	cmp	%g2, 0
	srl	%o4, 16, %o0
	mov	%g1, %o5
	bge,pn	%icc, .L1115
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	sub	%o0, %o1, %g2
	movgeu	%icc, %g2, %o0
	sll	%o0, 16, %g3
	subx	%g0, -1, %o3
	srl	%g3, 16, %o0
	or	%g1, %o3, %o5
.L1115:
	cmp	%o2, 0
	movne	%icc, %o0, %o5
	sll	%o5, 16, %o2
	jmp	%o7+8
	 srl	%o2, 16, %o0
.L1112:
	cmp	%g2, 0
	be,pn	%icc, .L1115
	 cmp	%o0, %g1
	sub	%o0, %g1, %o3
	subx	%g0, -1, %o4
	cmp	%o4, 0
	movne	%icc, %o3, %o0
	sethi	%hi(31744), %g2
	or	%g2, 1023, %g2
	sll	%o0, 16, %o0
	mov	0, %o3
	and	%o1, %g2, %o4
	movne	%icc, %g4, %o3
	srl	%o0, 16, %o0
	and	%g2, %g3, %g4
	mov	%g1, %o1
	ba,pt	%xcc, .L1117
	 sll	%o5, 16, %g2
.L1172:
	cmp	%g0, %g1
	subx	%g0, -1, %o5
	sub	%o0, %o1, %o1
	cmp	%g1, 0
	move	%icc, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	ba,pt	%xcc, .L1115
	 and	%o5, 0xff, %o5
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	cmp	%o0, %o1
	mov	%o0, %g2
	bleu,pn	%icc, .L1191
	 mov	1, %g1
	cmp	%o1, 0
.L1193:
	bl,a,pn	%icc, .L1180
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1193
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1179
	 mov	0, %o0
	mov	0, %o0
.L1180:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne,pt	%icc, .L1180
	 srl	%o1, 1, %o1
.L1179:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1191:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1179
	 subx	%g0, -1, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a,pt	%icc, .L1195
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1195:
	be,pn	%icc, .L1200
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %g1, %g1
	sll	%o0, %o2, %g4
	sll	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1200:
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
	be,pt	%icc, .L1202
	 cmp	%o2, 0
	sra	%o0, 31, %g4
	sra	%o0, %o2, %o1
	mov	%g4, %o0
.L1207:
	jmp	%o7+8
	 nop
.L1202:
	be,pn	%icc, .L1207
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
	mov	8, %o4
	sll	%o0, 3, %g4
	sub	%o4, %g4, %g2
	srl	%g1, %g2, %g1
	and	%g1, 240, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %o0
	mov	4, %o4
	sll	%o0, 2, %g3
	sub	%o4, %g3, %g2
	srl	%g1, %g2, %g1
	and	%g1, 12, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o4
	mov	2, %o0
	sll	%o4, 1, %g2
	sub	%o0, %g2, %o4
	srl	%g1, %o4, %g1
	add	%g4, %o5, %o5
	add	%g3, %o5, %g4
	andcc	%g1, 2, %g0
	sub	%o0, %g1, %g3
	movne	%icc, 0, %g3
	add	%g2, %g4, %o0
	jmp	%o7+8
	 add	%g3, %o0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.align 32
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o0, %o2
	bl,pn	%icc, .L1217
	 mov	0, %o0
	bg,pn	%icc, .L1217
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1217:
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
	bl,pn	%icc, .L1223
	 mov	-1, %o0
	bg,pn	%icc, .L1223
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1223
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1223:
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
	be,a,pt	%icc, .L1226
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1226:
	be,pn	%icc, .L1231
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %g4
	srl	%o0, %o2, %o0
	or	%g1, %g4, %o1
.L1231:
	jmp	%o7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	sethi	%hi(64512), %g4
	or	%g4, 1023, %g4
	and	%o0, %g4, %g2
	and	%o1, %g4, %g1
	smul	%g2, %g1, %g3
	srl	%o0, 16, %o0
	smul	%g1, %o0, %g1
	srl	%o1, 16, %o1
	smul	%g2, %o1, %g2
	smul	%o0, %o1, %o0
	srl	%g3, 16, %o5
	add	%g1, %o5, %g1
	sll	%g1, 16, %o1
	and	%g3, %g4, %g3
	srl	%o1, 16, %o4
	add	%g3, %o1, %o5
	add	%g2, %o4, %g2
	srl	%g1, 16, %g1
	srl	%g2, 16, %o1
	and	%o5, %g4, %g4
	sll	%g2, 16, %g3
	add	%g1, %o0, %o0
	add	%o0, %o1, %o0
	jmp	%o7+8
	 add	%g4, %g3, %o1
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	sethi	%hi(64512), %g4
	or	%g4, 1023, %g4
	and	%o1, %g4, %g2
	and	%o3, %g4, %g1
	smul	%g2, %g1, %g3
	srl	%o1, 16, %o5
	smul	%g1, %o5, %g1
	smul	%o3, %o0, %o0
	srl	%o3, 16, %o3
	smul	%g2, %o3, %g2
	smul	%o5, %o3, %o5
	smul	%o1, %o2, %o2
	srl	%g3, 16, %o4
	add	%g1, %o4, %g1
	and	%g3, %g4, %o1
	sll	%g1, 16, %g3
	srl	%g3, 16, %o3
	add	%g2, %o3, %g2
	srl	%g1, 16, %g1
	add	%g1, %o5, %g1
	srl	%g2, 16, %o5
	add	%o1, %g3, %o4
	add	%g1, %o5, %g1
	and	%o4, %g4, %g4
	sll	%g2, 16, %o1
	add	%o2, %g1, %o2
	add	%o2, %o0, %o0
	jmp	%o7+8
	 add	%g4, %o1, %o1
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
	be,pt	%icc, .L1240
	 mov	%o2, %g1
.L1242:
	fmuld	%f0, %f8, %f0
.L1240:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1241
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1242
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1248:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1242
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1248
	 sra	%o0, 1, %g1
.L1241:
	cmp	%o2, 0
	bge,pt	%icc, .L1239
	 sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f2
	fdivd	%f2, %f0, %f0
.L1239:
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
	be,pt	%icc, .L1250
	 mov	%o1, %g1
.L1252:
	fmuls	%f0, %f8, %f0
.L1250:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1251
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1252
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1258:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1252
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1258
	 sra	%o0, 1, %g1
.L1251:
	cmp	%o1, 0
	bge,pt	%icc, .L1249
	 sethi	%hi(.LC48), %g1
	ld	[%g1+%lo(.LC48)], %f1
	fdivs	%f1, %f0, %f0
.L1249:
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
	blu,pn	%icc, .L1265
	 mov	0, %o0
	bgu,pn	%icc, .L1265
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1265:
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
	blu,pn	%icc, .L1271
	 mov	-1, %o0
	bgu,pn	%icc, .L1271
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1271
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1271:
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
	.global __cmpdi2
	.global __clzdi2
	.global __clzsi2
	.global __moddi3
	.global __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
