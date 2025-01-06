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
	be,pn	%icc, .L47
	 add	%o1, -1, %g3
	add	%o0, -1, %g2
	ldub	[%g3+%o2], %g1
.L43:
	stb	%g1, [%g2+%o2]
	addcc	%o2, -1, %o2
	bne,a,pt %icc, .L43
	 ldub	[%g3+%o2], %g1
.L47:
	jmp	%o7+8
	 nop
.L2:
	be,pn	%icc, .L47
	 cmp	%o2, 0
	be,pn	%icc, .L47
	 add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L12
	 or	%o1, %o0, %g2
	and	%g2, 7, %g3
	add	%o1, 1, %g1
	cmp	%g0, %g3
	sub	%o0, %g1, %g1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g1, 6
	mov	%g2, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L12
	 and	%o2, -8, %g3
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L44:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L44
	 ldd	[%o1+%g1], %f8
	cmp	%o2, %g1
	add	%o1, %g1, %g3
	add	%o0, %g1, %g2
	be,pn	%icc, .L47
	 sub	%o2, %g1, %o2
	ldub	[%o1+%g1], %o1
	cmp	%o2, 1
	be,pn	%icc, .L47
	 stb	%o1, [%o0+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L47
	 stb	%g1, [%g2+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%icc, .L47
	 stb	%g1, [%g2+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%icc, .L47
	 stb	%g1, [%g2+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%icc, .L47
	 stb	%g1, [%g2+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%icc, .L47
	 stb	%g1, [%g2+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L12:
	mov	0, %g1
	ldub	[%o1+%g1], %g4
.L45:
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L45
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
	bne,pt	%icc, .L49
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L52:
	addcc	%o3, -1, %o3
	be,pn	%icc, .L51
	 add	%o0, 1, %o0
.L49:
	ldub	[%o1], %g1
	and	%g1, 0xff, %g2
	stb	%g1, [%o0]
	cmp	%g2, %o2
	bne,pt	%icc, .L52
	 add	%o1, 1, %o1
	jmp	%o7+8
	 add	%o0, 1, %o0
.L51:
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
	bne,pt	%icc, .L61
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L63:
	be,pn	%icc, .L64
	 add	%o0, 1, %o0
.L61:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L63
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L64:
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
	bne,a,pt %icc, .L82
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L73:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L81
	 mov	0, %o0
	ldub	[%o0], %g1
.L82:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	add	%o0, 1, %o0
	be,pt	%icc, .L73
	 add	%o1, 1, %o1
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L81:
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
	be,pn	%icc, .L88
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L88:
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
	ba,pt	%xcc, .L90
	 add	%o0, -1, %g2
.L92:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L93
	 add	%g3, -1, %g3
.L90:
	cmp	%g3, %g2
	bne,pt	%icc, .L92
	 mov	%g3, %o0
	mov	0, %o0
.L93:
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
	be,pn	%icc, .L98
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L98:
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
	be,pn	%icc, .L106
	 stb	%g1, [%o0]
.L101:
	ldub	[%o1+1], %g1
	sll	%g1, 24, %g3
	cmp	%g3, 0
	stb	%g1, [%o0+1]
	add	%o0, 1, %o0
	bne,pt	%icc, .L101
	 add	%o1, 1, %o1
.L106:
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
	bne,pt	%icc, .L108
	 and	%o1, 0xff, %o1
.L116:
	jmp	%o7+8
	 nop
.L110:
	sll	%g1, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L116
	 add	%o0, 1, %o0
.L108:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L110
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
.L119:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L121
	 cmp	%g1, 0
	bne,pt	%icc, .L119
	 add	%o0, 1, %o0
	mov	0, %o0
.L121:
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
	bne,pn	%icc, .L131
	 add	%o1, -1, %o1
	cmp	%g2, 0
.L133:
	be,a,pn	%icc, .L132
	 and	%g3, 0xff, %o1
	ldub	[%o0+%g1], %g4
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	sll	%g3, 24, %o5
	cmp	%o5, %g2
	be,pt	%icc, .L133
	 cmp	%g2, 0
.L131:
	and	%g4, 0xff, %o0
	and	%g3, 0xff, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
.L132:
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
	be,pn	%icc, .L134
	 mov	0, %g1
	mov	%o0, %g1
.L136:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L136
	 add	%g1, 1, %g1
	sub	%g1, %o0, %g1
.L134:
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
	be,pn	%icc, .L140
	 mov	0, %g3
	ldub	[%o0], %g4
	add	%o2, -1, %o2
	cmp	%g4, 0
	mov	%o1, %g3
	bne,pt	%icc, .L144
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L152
	 ldub	[%o1], %o5
.L145:
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,pn	%icc, .L153
	 add	%g3, 1, %g1
	mov	%g1, %g3
.L144:
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
	bne,pt	%icc, .L145
	 add	%o0, 1, %o0
.L143:
	sub	%g4, %o5, %g3
.L140:
.L154:
	jmp	%o7+8
	 mov	%g3, %o0
.L153:
	ba,pt	%xcc, .L143
	 ldub	[%g3+1], %o5
.L152:
	ba,pt	%xcc, .L154
	 sub	%g4, %o5, %g3
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%icc, .L159
	 and	%o2, -2, %o2
	add	%o0, %o2, %g3
.L157:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	add	%o0, 2, %o0
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	cmp	%o0, %g3
	bne,pt	%icc, .L157
	 add	%o1, 2, %o1
.L159:
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
	bne,pt	%icc, .L174
	 mov	1, %o0
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L174
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %o0
	cmp	%o0, 2
	movleu	%icc, 1, %g4
	mov	%g4, %o0
.L174:
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
	bleu,pn	%icc, .L182
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
	bne,pn	%icc, .L183
	 mov	1, %o0
	sethi	%hi(-57344), %o5
	sethi	%hi(7168), %g3
	add	%g1, %o5, %g4
	or	%g3, 1016, %o5
	cmp	%g4, %o5
	bleu,pn	%icc, .L183
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
.L183:
	jmp	%o7+8
	 nop
.L182:
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
	bleu,pt	%icc, .L187
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	mov	0, %o0
	movleu	%icc, 1, %o0
.L187:
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
	fbu,pn	%fcc0, .L189
	 std	%o2, [%sp+80]
	ldd	[%sp+80], %f0
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L189
	 ldd	[%sp+72], %f8
	fcmped	%fcc2, %f8, %f0
	fbule,pt %fcc2, .L196
	 nop
	fsubd	%f8, %f0, %f0
.L189:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L196:
	fzero	%f0
	jmp	%o7+8
	 add	%sp, 88, %sp
	.size	fdim, .-fdim
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
	fbu,pn	%fcc3, .L197
	 st	%o1, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L197
	 ld	[%sp+72], %f8
	fcmpes	%fcc1, %f8, %f0
	fbule,pt %fcc1, .L204
	 nop
	fsubs	%f8, %f0, %f0
.L197:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L204:
	fzeros	%f0
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
	fbu,pn	%fcc2, .L205
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f0, %f0
	fbu,pn	%fcc3, .L205
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
	 fcmped	%fcc0, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
.L205:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L207:
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
	fbu,pn	%fcc1, .L211
	 fmovs	%f8, %f0
	fcmps	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L211
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L213
	 fcmpes	%fcc3, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f8, %f0
.L211:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L213:
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
	fbu,pn	%fcc0, .L217
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L217
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L219
	 fcmped	%fcc2, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
.L217:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L219:
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
	fbu,pn	%fcc3, .L223
	 fmovd	%f0, %f8
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L223
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
	 fcmped	%fcc1, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f10, %f8
	fmovd	%f8, %f0
.L223:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L225:
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
	fbu,pn	%fcc2, .L229
	 fmovs	%f8, %f0
	fcmps	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L229
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L231
	 fcmpes	%fcc0, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f9, %f8
	fmovs	%f8, %f0
.L229:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L231:
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
	fbu,pn	%fcc1, .L235
	 fmovd	%f0, %f8
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L235
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L237
	 fcmped	%fcc3, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f10, %f8
	fmovd	%f8, %f0
.L235:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L237:
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
	be,pn	%icc, .L242
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L243:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne,pt	%icc, .L243
	 add	%g2, 1, %g2
.L242:
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
	be,a,pn	%icc, .L254
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L256
	 st	%o0, [%g1+4]
.L256:
	jmp	%o7+8
	 nop
.L254:
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
	be,a,pn	%icc, .L267
	 ld	[%o0+4], %g3
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g3
.L267:
	cmp	%g3, 0
	bne,a,pt %icc, .L266
	 st	%g1, [%g3]
.L266:
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
	be,pn	%icc, .L269
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L271
	 mov	0, %l0
.L283:
	cmp	%l1, %l0
	be,pn	%icc, .L269
	 add	%i5, %i3, %i5
.L271:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	mov	%i5, %i0
	bne,pt	%icc, .L283
	 add	%l0, 1, %l0
.L285:
	return	%i7+8
	 nop
.L269:
	smul	%i3, %l1, %g1
	add	%l1, 1, %g2
	st	%g2, [%i2]
	cmp	%i3, 0
	be,pn	%icc, .L285
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
	be,pn	%icc, .L287
	 mov	0, %i5
	ba,pt	%xcc, .L298
	 mov	%i1, %o1
.L297:
	cmp	%l0, %i5
	be,pn	%icc, .L287
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L298:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	mov	%i1, %i2
	bne,pt	%icc, .L297
	 add	%i5, 1, %i5
	return	%i7+8
	 mov	%o2, %o0
.L287:
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
	ba,pt	%xcc, .L323
	 mov	0, %g1
.L325:
	mov	0, %g1
	add	%o0, 1, %o0
.L323:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L325
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L303
	 cmp	%g1, 45
	bne,pt	%icc, .L326
	 add	%g2, -48, %g1
	ldub	[%o0+1], %o5
	sll	%o5, 24, %o4
	sra	%o4, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L327
	 mov	0, %o0
	mov	1, %o4
.L306:
	mov	0, %o0
.L309:
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
	bleu,pt	%icc, .L309
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L327:
	jmp	%o7+8
	 nop
.L326:
	cmp	%g1, 9
	mov	0, %o4
	bleu,pt	%icc, .L306
	 mov	%o0, %g1
.L324:
	jmp	%o7+8
	 mov	0, %o0
.L303:
	ldub	[%o0+1], %o5
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g3
	add	%g3, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L306
	 mov	0, %o4
	ba,pt	%xcc, .L324
	 nop
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	04
atol:
	ldub	[%o0], %o5
	ba,pt	%xcc, .L348
	 mov	0, %g1
.L350:
	mov	0, %g1
	add	%o0, 1, %o0
.L348:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L350
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L331
	 cmp	%g1, 45
	be,a,pt	%icc, .L351
	 ldub	[%o0+1], %o5
	add	%g2, -48, %g1
	cmp	%g1, 9
	mov	0, %o4
	bgu,pn	%icc, .L349
	 mov	%o0, %g1
.L333:
	mov	0, %o0
.L336:
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
	bleu,pt	%icc, .L336
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L352:
	jmp	%o7+8
	 nop
.L351:
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	bleu,pt	%icc, .L333
	 mov	1, %o4
.L349:
	jmp	%o7+8
	 mov	0, %o0
.L331:
	ldub	[%o0+1], %o5
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -48, %o4
	cmp	%o4, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L352
	 mov	0, %o0
	ba,pt	%xcc, .L336
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
	ba,pt	%xcc, .L376
	 ldub	[%i0], %o7
.L378:
	mov	0, %g1
	add	%i0, 1, %i0
.L376:
	sll	%o7, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %i1
	movleu	%icc, 1, %g1
	cmp	%g0, %i1
	subx	%g0, -1, %i2
	orcc	%g1, %i2, %g0
	bne,a,pt %icc, .L378
	 ldub	[%i0+1], %o7
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L356
	 cmp	%g1, 45
	bne,pt	%icc, .L379
	 add	%g2, -48, %i3
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	mov	0, %o4
	bgu,pn	%icc, .L353
	 mov	0, %o5
	mov	1, %i0
.L359:
	mov	0, %o4
	mov	0, %o5
	add	%i1, 1, %i1
.L380:
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
	bleu,a,pt %icc, .L380
	 add	%i1, 1, %i1
	cmp	%i0, 0
	bne,a,pt %icc, .L381
	 mov	%o4, %i0
	subcc	%i3, %g3, %o5
	subx	%i5, %g2, %o4
.L353:
	mov	%o4, %i0
.L381:
	jmp	%i7+8
	 restore %g0, %o5, %o1
.L379:
	cmp	%i3, 9
	mov	%i0, %i1
	bleu,pt	%icc, .L359
	 mov	0, %i0
	mov	0, %o4
	ba,pt	%xcc, .L353
	 mov	0, %o5
.L356:
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	bleu,pt	%icc, .L359
	 mov	0, %i0
	mov	0, %o4
	ba,pt	%xcc, .L353
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
.L392:
	cmp	%i2, 0
	be,pn	%icc, .L394
	 mov	0, %i5
.L393:
	srl	%i2, 1, %l0
	smul	%l0, %i3, %g1
	add	%i1, %g1, %i5
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,pn	%icc, .L387
	 add	%i2, -1, %i2
	be,pn	%icc, .L382
	 nop
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne,pt	%icc, .L393
	 add	%i5, %i3, %i1
	mov	0, %i5
.L382:
.L394:
	return	%i7+8
	 mov	%o5, %o0
.L387:
	ba,pt	%xcc, .L392
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
	be,pn	%icc, .L400
	 mov	%i0, %l1
.L408:
	sra	%i2, 1, %l0
	smul	%l0, %i3, %o1
	add	%i1, %o1, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	be,pn	%icc, .L411
	 sra	%i2, 1, %i2
.L410:
	ble,pn	%icc, .L398
	 cmp	%i2, 0
	bne,pt	%icc, .L408
	 add	%i0, %i3, %i1
.L400:
	return	%i7+8
	 mov	0, %o0
.L398:
	cmp	%l0, 0
	be,pn	%icc, .L400
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
	bne,pt	%icc, .L410
	 sra	%i2, 1, %i2
.L411:
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
	be,pn	%icc, .L423
	 nop
.L420:
	cmp	%o1, %g1
	be,pn	%icc, .L428
	 nop
	ld	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L420
	 add	%o0, 4, %o0
.L423:
	jmp	%o7+8
	 mov	0, %o0
.L428:
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
	bne,pn	%icc, .L438
	 add	%o1, -4, %o1
	cmp	%g2, 0
.L439:
	be,pn	%icc, .L438
	 cmp	%g2, %g3
	ld	[%o0+%g1], %g2
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L439
	 cmp	%g2, 0
	cmp	%g2, %g3
.L438:
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
.L441:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L441
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
	be,pn	%icc, .L443
	 mov	0, %g1
	mov	%o0, %g1
.L445:
	ld	[%g1+4], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L445
	 add	%g1, 4, %g1
	sub	%g1, %o0, %g1
	sra	%g1, 2, %g1
.L443:
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
	bne,a,pt %icc, .L462
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L452:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L461
	 mov	0, %o0
	ld	[%o0], %g2
.L462:
	ld	[%o1], %g4
	xor	%g4, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	andcc	%g1, %g3, %g1
	add	%o0, 4, %o0
	bne,pt	%icc, .L452
	 add	%o1, 4, %o1
	cmp	%g2, %g4
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L461:
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
	bne,a,pt %icc, .L472
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L466:
	be,pn	%icc, .L467
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L472:
	cmp	%g1, %o1
	bne,a,pt %icc, .L466
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L467:
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
	bne,a,pt %icc, .L487
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L477:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L486
	 mov	0, %o0
	ld	[%o0], %g2
.L487:
	ld	[%o1], %g1
	cmp	%g2, %g1
	add	%o0, 4, %o0
	be,pt	%icc, .L477
	 add	%o1, 4, %o1
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L486:
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
	be,pn	%icc, .L493
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L493:
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
	be,pn	%icc, .L521
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu,pt	%icc, .L496
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be,pn	%icc, .L521
	 nop
	cmp	%g1, 8
	bleu,pn	%icc, .L507
	 add	%o1, 4, %g2
	or	%o1, %o0, %g3
	and	%g3, 7, %g4
	cmp	%g0, %g4
	xor	%o0, %g2, %g4
	subx	%g0, -1, %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L507
	 srl	%o2, 1, %g4
	mov	0, %g1
	mov	0, %g3
.L501:
	ldd	[%o1+%g1], %f8
	add	%g3, 1, %g3
	std	%f8, [%o0+%g1]
	cmp	%g4, %g3
	bne,pt	%icc, .L501
	 add	%g1, 8, %g1
	andcc	%o2, 1, %g0
	be,pn	%icc, .L521
	 nop
	and	%o2, -2, %o2
	sll	%o2, 2, %g2
	ld	[%o1+%g2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%g2]
.L507:
	mov	0, %g3
.L518:
	ld	[%o1+%g3], %g4
	add	%g1, -1, %g1
	st	%g4, [%o0+%g3]
	cmp	%g1, -1
	bne,pt	%icc, .L518
	 add	%g3, 4, %g3
	jmp	%o7+8
	 nop
.L496:
	cmp	%o2, 0
	be,pn	%icc, .L521
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %o2
.L520:
	st	%o2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %icc, .L520
	 ld	[%o1+%g1], %o2
	jmp	%o7+8
	 nop
.L521:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	add	%sp, -80, %sp
	cmp	%o2, 0
	be,pn	%icc, .L524
	 add	%o2, -1, %o5
	srl	%o0, 2, %g2
	cmp	%o5, 5
	bleu,pn	%icc, .L529
	 and	%g2, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L526
	 mov	%o0, %o4
	add	%o0, 4, %o4
	st	%o1, [%o0]
	add	%o2, -2, %o5
.L526:
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fmovs	%f8, %f9
	sub	%o2, %g1, %o2
	sll	%g1, 2, %g3
	srl	%o2, 1, %g4
	add	%o0, %g3, %g2
	mov	0, %g1
.L527:
	sll	%g1, 3, %g3
	add	%g1, 1, %g1
	cmp	%g4, %g1
	bne,pt	%icc, .L527
	 std	%f8, [%g2+%g3]
	andcc	%o2, 1, %g0
	be,pn	%icc, .L524
	 and	%o2, -2, %o2
	sll	%o2, 2, %g1
	sub	%o5, %o2, %o5
	add	%o4, %g1, %g1
.L525:
	cmp	%o5, 0
	be,pn	%icc, .L524
	 st	%o1, [%g1]
	cmp	%o5, 1
	be,pn	%icc, .L524
	 st	%o1, [%g1+4]
	cmp	%o5, 2
	be,pn	%icc, .L524
	 st	%o1, [%g1+8]
	cmp	%o5, 3
	be,pn	%icc, .L524
	 st	%o1, [%g1+12]
	cmp	%o5, 4
	be,pn	%icc, .L524
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L524:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L529:
	ba,pt	%xcc, .L525
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%icc, .L555
	 nop
	cmp	%o2, 0
	be,pn	%icc, .L598
	 nop
	add	%o0, -1, %g2
	add	%o1, -1, %o1
	ldub	[%g2+%o2], %g1
.L595:
	stb	%g1, [%o1+%o2]
	addcc	%o2, -1, %o2
	bne,a,pt %icc, .L595
	 ldub	[%g2+%o2], %g1
.L599:
	jmp	%o7+8
	 nop
.L555:
	bne,a,pt %icc, .L594
	 cmp	%o2, 0
	jmp	%o7+8
	 nop
.L594:
	be,pn	%icc, .L598
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L565
	 or	%o1, %o0, %g2
	and	%g2, 7, %g3
	add	%o0, 1, %g1
	cmp	%g0, %g3
	sub	%o1, %g1, %g1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g1, 6
	mov	%g2, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L565
	 and	%o2, -8, %g3
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L596:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L596
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o1, %g1, %g2
	add	%o0, %g1, %g3
	be,pn	%icc, .L599
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %o0
	cmp	%o2, 1
	be,pn	%icc, .L599
	 stb	%o0, [%o1+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L599
	 stb	%g1, [%g2+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%icc, .L599
	 stb	%g1, [%g2+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%icc, .L599
	 stb	%g1, [%g2+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%icc, .L599
	 stb	%g1, [%g2+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%icc, .L599
	 stb	%g1, [%g2+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L565:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L597:
	stb	%g4, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L597
	 ldub	[%o0+%g1], %g4
.L598:
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
	ba,pt	%xcc, .L616
	 mov	0, %g1
.L614:
	cmp	%g1, 32
	be,pn	%icc, .L618
	 nop
.L616:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%icc, .L614
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L618:
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
	be,pn	%icc, .L626
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne,pn	%icc, .L626
	 nop
	mov	1, %o0
.L621:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be,pt	%icc, .L621
	 add	%o0, 1, %o0
.L626:
	jmp	%o7+8
	 nop
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	-8388609
	.align 4
.LC1:
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
	sethi	%hi(.LC0), %g1
	ld	[%g1+%lo(.LC0)], %f8
	ld	[%sp+76], %f9
	fcmpes	%fcc0, %f9, %f8
	fbl,pt	%fcc0, .L627
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f0
	fcmpes	%fcc1, %f9, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L627:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-1048577
	.long	-1
	.align 8
.LC5:
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
	sethi	%hi(.LC4), %g1
	ldd	[%g1+%lo(.LC4)], %f8
	ldd	[%sp+72], %f10
	fcmped	%fcc2, %f10, %f8
	fbl,pt	%fcc2, .L630
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f0
	fcmped	%fcc3, %f10, %f0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L630:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst8
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
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC8), %g1
	ldd	[%g1+%lo(.LC8)], %f8
	ldd	[%sp+72], %f10
	fcmped	%fcc0, %f10, %f8
	fbl,pt	%fcc0, .L633
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f0
	fcmped	%fcc1, %f10, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L633:
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
.LC12:
	.long	1073741824
	.align 4
.LC13:
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
	fbu,pn	%fcc2, .L638
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L638
	 sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f1
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	cmp	%o1, 0
	fmovsge	%icc, %f9, %f1
	andcc	%o1, 1, %g0
	be,pt	%icc, .L652
	 srl	%o1, 31, %g1
.L641:
	fmuls	%f0, %f1, %f0
	srl	%o1, 31, %g1
.L652:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be,pn	%icc, .L638
	 srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L641
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L651:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L641
	 add	%g1, %o1, %g1
	ba,pt	%xcc, .L651
	 sra	%g1, 1, %o1
.L638:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	1073741824
	.long	0
	.align 8
.LC17:
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
	fbu,pn	%fcc0, .L654
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L654
	 sethi	%hi(.LC16), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L666
	 ldd	[%g1+%lo(.LC16)], %f2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L669
	 srl	%o2, 31, %g1
.L657:
	fmuld	%f0, %f2, %f0
.L656:
	srl	%o2, 31, %g1
.L669:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L654
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L657
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L668:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L657
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L668
	 sra	%g1, 1, %o2
.L654:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L666:
	sethi	%hi(.LC17), %g1
	andcc	%o2, 1, %g0
	be,pt	%icc, .L656
	 ldd	[%g1+%lo(.LC17)], %f2
	ba,pt	%xcc, .L656
	 fmuld	%f0, %f2, %f0
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC20:
	.long	1071644672
	.long	0
	.align 8
.LC21:
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
	fbu,pn	%fcc2, .L671
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc3, %f0, %f8
	fbe,pt	%fcc3, .L671
	 sethi	%hi(.LC21), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L683
	 ldd	[%g1+%lo(.LC21)], %f2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L686
	 srl	%o2, 31, %g1
.L674:
	fmuld	%f0, %f2, %f0
.L673:
	srl	%o2, 31, %g1
.L686:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L671
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L674
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L685:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L674
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L685
	 sra	%g1, 1, %o2
.L671:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L683:
	sethi	%hi(.LC20), %g1
	andcc	%o2, 1, %g0
	be,pt	%icc, .L673
	 ldd	[%g1+%lo(.LC20)], %f2
	ba,pt	%xcc, .L673
	 fmuld	%f0, %f2, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be,pn	%icc, .L722
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L695
	 or	%o0, %o1, %g1
	andcc	%g1, 7, %g0
	bne,pn	%icc, .L695
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L720:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L720
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o0, %g1, %g2
	add	%o1, %g1, %g3
	be,pn	%icc, .L722
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %o5
	xor	%g4, %o5, %o1
	cmp	%o2, 1
	be,pn	%icc, .L722
	 stb	%o1, [%o0+%g1]
	ldub	[%g2+1], %g4
	ldub	[%g3+1], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 2
	be,pn	%icc, .L722
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %o5
	ldub	[%g3+2], %g1
	xor	%g1, %o5, %g1
	cmp	%o2, 3
	be,pn	%icc, .L722
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %o1
	ldub	[%g3+3], %g1
	xor	%g1, %o1, %g1
	cmp	%o2, 4
	be,pn	%icc, .L722
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g4
	ldub	[%g3+4], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 5
	be,pn	%icc, .L722
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %o5
	ldub	[%g3+5], %g1
	xor	%g1, %o5, %g1
	cmp	%o2, 6
	be,pn	%icc, .L722
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %o2
	ldub	[%g3+6], %g1
	xor	%g1, %o2, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L695:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L721:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g4
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L721
	 ldub	[%o0+%g1], %g3
.L722:
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
	be,pn	%icc, .L724
	 mov	%o0, %g1
.L725:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L725
	 add	%g1, 1, %g1
.L724:
	cmp	%o2, 0
	bne,a,pt %icc, .L739
	 ldub	[%o1], %g4
	jmp	%o7+8
	 stb	%g0, [%g1]
.L728:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L740
	 stb	%g0, [%g1]
	ldub	[%o1], %g4
.L739:
	sll	%g4, 24, %g3
	cmp	%g3, 0
	stb	%g4, [%g1]
	add	%g1, 1, %g1
	bne,pt	%icc, .L728
	 add	%o1, 1, %o1
.L740:
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
	be,pn	%icc, .L741
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L749:
	cmp	%g2, 0
	bne,a,pn %icc, .L744
	 add	%g1, 1, %g1
.L741:
	jmp	%o7+8
	 mov	%g1, %o0
.L744:
	cmp	%o1, %g1
	bne,a,pt %icc, .L749
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L741
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
	be,a,pn	%icc, .L759
	 mov	0, %o0
.L751:
	mov	%o1, %g1
	ba,pt	%xcc, .L754
	 sra	%g4, 24, %g4
.L753:
	be,pn	%icc, .L759
	 add	%g1, 1, %g1
.L754:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L753
	 cmp	%g2, %g4
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	bne,pt	%icc, .L751
	 add	%o0, 1, %o0
	mov	0, %o0
.L759:
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
.L761:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L761
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
	be,pn	%icc, .L785
	 mov	%o0, %g4
	mov	%o1, %g1
.L765:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L765
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be,pn	%icc, .L785
	 mov	%g4, %o0
	add	%o1, -1, %o0
	sra	%g3, 24, %o2
	ba,pt	%xcc, .L782
	 add	%o0, %g1, %o0
.L784:
	be,pn	%icc, .L783
	 add	%g4, 1, %g4
.L782:
	ldub	[%g4], %g1
	sll	%g1, 24, %o3
	sra	%o3, 24, %o4
	cmp	%o4, %o2
	bne,pt	%icc, .L784
	 cmp	%o4, 0
	mov	%o1, %g2
	mov	%g4, %o5
	ba,pt	%xcc, .L767
	 and	%g1, 0xff, %g1
.L769:
	ldub	[%o5], %g1
	cmp	%g1, 0
	be,pn	%icc, .L768
	 add	%g2, 1, %g2
.L767:
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
	bne,pt	%icc, .L769
	 add	%o5, 1, %o5
.L768:
	ldub	[%g2], %o5
	cmp	%g1, %o5
	be,a,pn	%icc, .L785
	 mov	%g4, %o0
	ba,pt	%xcc, .L782
	 add	%g4, 1, %g4
.L783:
	jmp	%o7+8
	 mov	0, %o0
.L785:
	jmp	%o7+8
	 nop
	.size	strstr, .-strstr
	.align 4
	.align 32
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	fzero	%f8
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L796
	 std	%o2, [%sp+72]
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L790
	 nop
	ldd	[%sp+72], %f10
	fcmped	%fcc3, %f10, %f8
	fbl,a,pn %fcc3, .L797
	 fnegd	%f0, %f0
.L790:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L796:
	ldd	[%sp+72], %f2
	fcmped	%fcc1, %f2, %f8
	fbule,pt %fcc1, .L790
	 nop
	fnegd	%f0, %f0
.L797:
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
	be,pn	%icc, .L798
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu,pn	%icc, .L798
	 mov	0, %g2
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,pn	%icc, .L798
	 nop
	ldub	[%o2], %g1
	mov	%o0, %g2
	sll	%g1, 24, %o0
	sra	%o0, 24, %o4
	ldsb	[%g2], %g1
.L819:
	cmp	%g1, %o4
	be,pn	%icc, .L818
	 add	%g2, 1, %o5
	mov	%o5, %g2
.L800:
	cmp	%o1, %g2
	bgeu,a,pt %icc, .L819
	 ldsb	[%g2], %g1
.L809:
	mov	0, %g2
.L798:
	jmp	%o7+8
	 mov	%g2, %o0
.L818:
	cmp	%o3, 1
	be,pn	%icc, .L798
	 nop
.L803:
	ba,pt	%xcc, .L801
	 mov	1, %g1
.L802:
	cmp	%g1, %o3
	be,pn	%icc, .L798
	 nop
.L801:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be,pt	%icc, .L802
	 add	%g1, 1, %g1
	cmp	%o1, %o5
	blu,pn	%icc, .L809
	 sra	%o0, 24, %g1
	ldsb	[%o5], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L800
	 add	%o5, 1, %g2
	mov	%o5, %g1
	mov	%g2, %o5
	ba,pt	%xcc, .L803
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
	be,pn	%icc, .L821
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L821:
	return	%i7+8
	 add	%o0, %o2, %o0
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC24:
	.long	-1074790400
	.long	0
	.align 8
.LC25:
	.long	-1075838976
	.long	0
	.align 8
.LC26:
	.long	1072693248
	.long	0
	.align 8
.LC27:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	fzero	%f8
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L848
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L849
	 mov	0, %g2
.L828:
	sethi	%hi(.LC27), %g4
	sethi	%hi(.LC26), %o0
	ldd	[%g4+%lo(.LC27)], %f16
	ldd	[%o0+%lo(.LC26)], %f18
	mov	0, %g1
.L834:
	fmuld	%f0, %f16, %f0
	fcmped	%fcc2, %f0, %f18
	fbge,pt	%fcc2, .L834
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be,pn	%icc, .L825
	 st	%g1, [%o2]
.L851:
	fnegd	%f0, %f0
.L825:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L849:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f2
	fcmped	%fcc1, %f0, %f2
	fbuge,pt %fcc1, .L831
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,pn	%fcc2, .L829
	 fmovd	%f0, %f4
.L831:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L848:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f6
	fcmped	%fcc0, %f0, %f6
	fbug,pn	%fcc0, .L850
	 fnegd	%f0, %f4
	fmovd	%f4, %f0
	ba,pt	%xcc, .L828
	 mov	1, %g2
.L850:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f12
	fcmped	%fcc3, %f0, %f12
	fbule,pt %fcc3, .L831
	 nop
	mov	1, %g2
.L829:
	fmovd	%f4, %f0
	sethi	%hi(.LC27), %g3
	ldd	[%g3+%lo(.LC27)], %f14
	mov	0, %g1
.L836:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f14
	fbl,pt	%fcc1, .L836
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne,pt	%icc, .L851
	 st	%g1, [%o2]
	ba,pt	%xcc, .L825
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
	be,pn	%icc, .L852
	 mov	0, %o3
.L855:
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
	bne,pt	%icc, .L855
	 sll	%i3, 1, %i3
.L852:
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
	bgeu,pn	%icc, .L877
	 mov	1, %g1
	cmp	%o1, 0
.L879:
	bl,a,pn	%icc, .L866
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L879
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L865
	 mov	0, %o0
	mov	0, %o0
.L866:
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
	bne,pt	%icc, .L866
	 srl	%o1, 1, %o1
.L865:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L877:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L865
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
	be,pn	%icc, .L883
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%g1, 8, %o0
	add	%o0, -1, %i0
.L883:
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
	be,pn	%icc, .L890
	 xor	%i1, %o1, %o1
.L888:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L890:
	cmp	%i1, %i0
	bne,pt	%icc, .L888
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
	be,pn	%icc, .L897
	 mov	0, %o0
.L893:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L893
	 sll	%o1, 1, %o1
.L897:
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
	srl	%o2, 3, %g3
	blu,pt	%icc, .L902
	 and	%o2, -8, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L931
	 cmp	%o2, 0
.L902:
	cmp	%g3, 0
	sll	%g3, 3, %o3
	be,pn	%icc, .L928
	 mov	0, %g1
.L905:
	add	%o1, %g1, %g4
	ldd	[%g4], %o4
	add	%o0, %g1, %g3
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne,pt	%icc, .L905
	 std	%o4, [%g3]
	cmp	%o2, %g2
	bleu,pn	%icc, .L935
	 nop
	sub	%o2, %g2, %o3
	add	%o3, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L930
	 add	%g2, 1, %g1
	add	%o0, %g2, %g3
	add	%o1, %g2, %g4
	add	%o1, %g1, %o5
	sub	%g3, %o5, %o5
	or	%g4, %g3, %o4
	cmp	%o5, 6
	and	%o4, 7, %o4
	mov	0, %o5
	movgu	%icc, 1, %o5
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	andcc	%o5, %o4, %g0
	be,pn	%icc, .L930
	 and	%o3, -8, %o5
	mov	0, %g1
	ldd	[%g4+%g1], %f8
.L933:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne,a,pt %icc, .L933
	 ldd	[%g4+%g1], %f8
	cmp	%o3, %g1
	be,pn	%icc, .L936
	 add	%g2, %g1, %g2
	ldub	[%o1+%g2], %o3
	add	%g2, 1, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L936
	 stb	%o3, [%o0+%g2]
	ldub	[%o1+%g1], %g4
	add	%g2, 2, %g3
	cmp	%o2, %g3
	bleu,pn	%icc, .L936
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%g3], %o4
	add	%g2, 3, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L936
	 stb	%o4, [%o0+%g3]
	ldub	[%o1+%g1], %o5
	add	%g2, 4, %o3
	cmp	%o2, %o3
	bleu,pn	%icc, .L936
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%o3], %g4
	add	%g2, 5, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L936
	 stb	%g4, [%o0+%o3]
	ldub	[%o1+%g1], %g3
	add	%g2, 6, %g2
	cmp	%o2, %g2
	bleu,pn	%icc, .L936
	 stb	%g3, [%o0+%g1]
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L932:
	add	%g1, 1, %g1
.L930:
	ldub	[%o1+%g2], %o4
	cmp	%o2, %g1
	stb	%o4, [%o0+%g2]
	bne,pt	%icc, .L932
	 mov	%g1, %g2
.L936:
	jmp	%o7+8
	 nop
.L931:
	be,pn	%icc, .L936
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L934:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %icc, .L934
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L928:
	cmp	%o2, 0
	bne,pt	%icc, .L930
	 add	%g2, 1, %g1
.L935:
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
	blu,pt	%icc, .L941
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L961
	 cmp	%o2, 0
.L941:
	cmp	%g3, 0
	be,pn	%icc, .L940
	 add	%g3, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L944
	 or	%o1, %o0, %g4
	and	%g4, 7, %o5
	add	%o1, 2, %g1
	cmp	%g0, %o5
	sub	%o0, %g1, %g1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g1, 4
	mov	%g2, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L944
	 srl	%o2, 3, %o5
	and	%o2, -8, %g4
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L964:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g4
	bne,a,pt %icc, .L964
	 ldd	[%o1+%g1], %f8
	sll	%o5, 2, %g2
	cmp	%g3, %g2
	be,pn	%icc, .L965
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g4
	add	%g2, 1, %o5
	cmp	%g3, %o5
	bleu,pn	%icc, .L940
	 sth	%g4, [%o0+%g1]
	add	%g1, 2, %g4
	lduh	[%o1+%g4], %o5
	add	%g2, 2, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L940
	 sth	%o5, [%o0+%g4]
	add	%g1, 4, %g1
	lduh	[%o1+%g1], %g3
	sth	%g3, [%o0+%g1]
.L940:
	andcc	%o2, 1, %g0
.L965:
	be,pt	%icc, .L968
	 nop
	add	%o2, -1, %g1
.L963:
	ldub	[%o1+%g1], %o1
	jmp	%o7+8
	 stb	%o1, [%o0+%g1]
.L961:
	be,pn	%icc, .L968
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L966:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %icc, .L966
	 ldub	[%o1+%g1], %g2
.L968:
	jmp	%o7+8
	 nop
.L944:
	sll	%g3, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %o5
.L967:
	sth	%o5, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g4
	bne,a,pt %icc, .L967
	 lduh	[%o1+%g1], %o5
	andcc	%o2, 1, %g0
	be,pt	%icc, .L968
	 nop
	ba,pt	%xcc, .L963
	 add	%o2, -1, %g1
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	cmp	%o0, %o1
	srl	%o2, 2, %g4
	blu,pt	%icc, .L974
	 and	%o2, -4, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1002
	 cmp	%o2, 0
.L974:
	cmp	%g4, 0
	be,pn	%icc, .L1003
	 cmp	%o2, 0
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L976
	 or	%o0, %o1, %o3
	and	%o3, 7, %o4
	add	%o1, 4, %g1
	cmp	%g0, %o4
	xor	%o0, %g1, %g1
	subx	%g0, -1, %o5
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%o5, %g1, %g0
	be,pn	%icc, .L976
	 srl	%o2, 3, %o3
	and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L1006:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L1006
	 ldd	[%o1+%g1], %f8
	sll	%o3, 1, %o4
	cmp	%g4, %o4
	be,pn	%icc, .L1005
	 cmp	%o2, %g3
	ld	[%o1+%g1], %g4
	st	%g4, [%o0+%g1]
.L1005:
	bleu,pn	%icc, .L1010
	 nop
	sub	%o2, %g3, %o3
	add	%o3, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L1001
	 add	%g3, 1, %g1
	add	%o0, %g3, %g4
	add	%o1, %g3, %o5
	add	%o1, %g1, %g2
	sub	%g4, %g2, %g2
	or	%o5, %g4, %o4
	cmp	%g2, 6
	and	%o4, 7, %o4
	mov	0, %g2
	movgu	%icc, 1, %g2
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	andcc	%g2, %o4, %g0
	be,pn	%icc, .L1001
	 and	%o3, -8, %g2
	mov	0, %g1
	ldd	[%o5+%g1], %f0
.L1007:
	std	%f0, [%g4+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %icc, .L1007
	 ldd	[%o5+%g1], %f0
	cmp	%o3, %g2
	be,pn	%icc, .L1011
	 add	%g3, %g2, %o3
	ldub	[%o1+%o3], %g3
	add	%o3, 1, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1011
	 stb	%g3, [%o0+%o3]
	ldub	[%o1+%g1], %g4
	add	%o3, 2, %o5
	cmp	%o2, %o5
	bleu,pn	%icc, .L1011
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%o5], %o4
	add	%o3, 3, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1011
	 stb	%o4, [%o0+%o5]
	ldub	[%o1+%g1], %g2
	add	%o3, 4, %g3
	cmp	%o2, %g3
	bleu,pn	%icc, .L1011
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g3], %g4
	add	%o3, 5, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1011
	 stb	%g4, [%o0+%g3]
	ldub	[%o1+%g1], %o5
	add	%o3, 6, %o3
	cmp	%o2, %o3
	bleu,pn	%icc, .L1011
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%o3], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o3]
.L1004:
	add	%g1, 1, %g1
.L1001:
	ldub	[%o1+%g3], %o4
	cmp	%o2, %g1
	stb	%o4, [%o0+%g3]
	bne,pt	%icc, .L1004
	 mov	%g1, %g3
.L1011:
	jmp	%o7+8
	 nop
.L1002:
	be,pn	%icc, .L1011
	 add	%o2, -1, %g1
	ldub	[%o1+%g1], %g2
.L1008:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %icc, .L1008
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L976:
	sll	%g4, 2, %o5
	mov	0, %g1
	ld	[%o1+%g1], %o3
.L1009:
	st	%o3, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %o5
	bne,a,pt %icc, .L1009
	 ld	[%o1+%g1], %o3
	ba,pt	%xcc, .L1005
	 cmp	%o2, %g3
.L1003:
	bne,pt	%icc, .L1001
	 add	%g3, 1, %g1
.L1010:
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
.LC32:
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
	bge,pt	%icc, .L1016
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC32), %g1
	or	%g1, %lo(.LC32), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1016:
	return	%i7+8
	 fqtod	%f0, %f0
	.size	__ulltod, .-__ulltod
	.section	".rodata"
	.align 8
.LC34:
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
	bge,pt	%icc, .L1018
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC34), %g1
	or	%g1, %lo(.LC34), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1018:
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
	bne,pn	%icc, .L1020
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1020
	 mov	13, %g1
	cmp	%g0, %o0
	sra	%o0, 1, %o0
	subx	%g0, -1, %g2
	mov	14, %g1
	add	%g2, 15, %g3
	cmp	%o0, 0
	move	%icc, %g3, %g1
.L1020:
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
	bne,pn	%icc, .L1038
	 mov	0, %g1
	andcc	%o0, 2, %g0
	bne,pn	%icc, .L1038
	 mov	1, %g1
	andcc	%o0, 4, %g0
	bne,pn	%icc, .L1038
	 mov	2, %g1
	andcc	%o0, 8, %g0
	bne,pn	%icc, .L1038
	 mov	3, %g1
	andcc	%o0, 16, %g0
	bne,pn	%icc, .L1038
	 mov	4, %g1
	andcc	%o0, 32, %g0
	bne,pn	%icc, .L1038
	 mov	5, %g1
	andcc	%o0, 64, %g0
	bne,pn	%icc, .L1038
	 mov	6, %g1
	andcc	%o0, 128, %g0
	bne,pn	%icc, .L1038
	 mov	7, %g1
	andcc	%o0, 256, %g0
	bne,pn	%icc, .L1038
	 mov	8, %g1
	andcc	%o0, 512, %g0
	bne,pn	%icc, .L1038
	 mov	9, %g1
	andcc	%o0, 1024, %g0
	bne,pn	%icc, .L1038
	 mov	10, %g1
	andcc	%o0, 2048, %g0
	bne,pn	%icc, .L1038
	 mov	11, %g1
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1038
	 mov	12, %g1
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1038
	 mov	13, %g1
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1038
	 mov	14, %g1
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L1038:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC36:
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
	sethi	%hi(.LC36), %g1
	ld	[%sp+76], %f8
	ld	[%g1+%lo(.LC36)], %f9
	fcmpes	%fcc0, %f8, %f9
	fbge,a,pn %fcc0, .L1063
	 fsubs	%f8, %f9, %f1
	fstoi	%f8, %f0
	st	%f0, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1063:
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
	be,pn	%icc, .L1072
	 mov	0, %o0
.L1068:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1068
	 sll	%o1, 1, %o1
.L1072:
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
	be,pn	%icc, .L1081
	 mov	0, %o0
	cmp	%o1, 0
	be,pn	%icc, .L1081
	 nop
.L1075:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	srl	%o1, 1, %o1
	and	%g1, %g2, %g1
	cmp	%o1, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1075
	 sll	%g2, 1, %g2
.L1081:
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
	bleu,pn	%icc, .L1100
	 mov	1, %g1
	cmp	%o1, 0
.L1102:
	bl,a,pn	%icc, .L1089
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1102
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1088
	 mov	0, %o0
	mov	0, %o0
.L1089:
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
	bne,pt	%icc, .L1089
	 srl	%o1, 1, %o1
.L1088:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1100:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1088
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
	bl,pn	%icc, .L1120
	 mov	%o0, %g3
	be,pn	%icc, .L1121
	 mov	0, %o0
	mov	0, %o4
.L1113:
	mov	1, %g4
	mov	0, %o0
.L1115:
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
	bne,pt	%icc, .L1115
	 add	%g4, 1, %g4
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %o0
.L1121:
	jmp	%o7+8
	 nop
.L1120:
	sub	%g0, %o1, %o1
	ba,pt	%xcc, .L1113
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
	bl,pn	%icc, .L1150
	 mov	0, %o5
.L1123:
	cmp	%o1, 0
	bge,pt	%icc, .L1151
	 cmp	%o0, %o1
	sub	%g0, %o1, %o1
	mov	%g1, %o5
	cmp	%o0, %o1
.L1151:
	mov	%o0, %g4
	bleu,pn	%icc, .L1146
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1152:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L1152
	 sll	%o1, 1, %o1
	cmp	%g1, 0
	be,pn	%icc, .L1128
	 mov	0, %o0
.L1127:
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
	bne,pt	%icc, .L1127
	 srl	%o1, 1, %o1
.L1128:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1150:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1123
	 mov	1, %o5
.L1146:
	ba,pt	%xcc, .L1128
	 subx	%g0, -1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge,pt	%icc, .L1154
	 mov	0, %o4
	sub	%g0, %o0, %o0
	mov	1, %o4
.L1154:
	sra	%o1, 31, %g2
	xor	%g2, %o1, %g1
	sub	%g1, %g2, %g1
	cmp	%o0, %g1
	mov	%o0, %g3
	bleu,pn	%icc, .L1175
	 mov	1, %o1
	sll	%g1, 1, %g1
.L1180:
	cmp	%g1, %o0
	sll	%o1, 1, %o1
	addx	%g0, 0, %o5
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	andcc	%o5, %g4, %g0
	bne,a,pt %icc, .L1180
	 sll	%g1, 1, %g1
	cmp	%o1, 0
	be,a,pn	%icc, .L1179
	 mov	%o0, %g3
.L1157:
	cmp	%g3, %g1
	sub	%g3, %g1, %o0
	srl	%o1, 1, %o1
	movgeu	%icc, %o0, %g3
	cmp	%o1, 0
	bne,pt	%icc, .L1157
	 srl	%g1, 1, %g1
.L1158:
	sub	%g0, %g3, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L1179:
	sub	%g0, %g3, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L1175:
	sub	%o0, %g1, %g1
	ba,pt	%xcc, .L1158
	 movgeu	%icc, %g1, %g3
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1182
	 mov	1, %g3
	ba,pt	%xcc, .L1244
	 xor	%o1, %o0, %g1
.L1185:
	cmp	%g1, %o0
	addx	%g0, 0, %o3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	andcc	%o3, %o5, %g0
	srl	%g2, 16, %g2
	be,pn	%icc, .L1184
	 mov	%g4, %o5
	mov	%g4, %g3
	mov	%g1, %o1
.L1182:
	sll	%o1, 16, %g4
	sll	%o1, 17, %g1
	cmp	%g4, 0
	srl	%g1, 16, %g1
	sll	%g3, 17, %g2
	bge,pt	%icc, .L1185
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
	be,pn	%icc, .L1187
	 srl	%o1, 1, %o4
.L1189:
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	be,pn	%icc, .L1187
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
	bge,pn	%icc, .L1187
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	sub	%o0, %o1, %g2
	movgeu	%icc, %g2, %o0
	sll	%o0, 16, %g3
	subx	%g0, -1, %o3
	srl	%g3, 16, %o0
	or	%g1, %o3, %o5
.L1187:
	cmp	%o2, 0
	movne	%icc, %o0, %o5
	sll	%o5, 16, %o2
	jmp	%o7+8
	 srl	%o2, 16, %o0
.L1184:
	cmp	%g2, 0
	be,pn	%icc, .L1187
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
	ba,pt	%xcc, .L1189
	 sll	%o5, 16, %g2
.L1244:
	cmp	%g0, %g1
	subx	%g0, -1, %o5
	sub	%o0, %o1, %o1
	cmp	%g1, 0
	move	%icc, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	ba,pt	%xcc, .L1187
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
	bleu,pn	%icc, .L1263
	 mov	1, %g1
	cmp	%o1, 0
.L1265:
	bl,a,pn	%icc, .L1252
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1265
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1251
	 mov	0, %o0
	mov	0, %o0
.L1252:
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
	bne,pt	%icc, .L1252
	 srl	%o1, 1, %o1
.L1251:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1263:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1251
	 subx	%g0, -1, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a,pt	%icc, .L1267
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1267:
	be,pn	%icc, .L1272
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %g1, %g1
	sll	%o0, %o2, %g4
	sll	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1272:
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
	be,pt	%icc, .L1274
	 cmp	%o2, 0
	sra	%o0, 31, %g4
	sra	%o0, %o2, %o1
	mov	%g4, %o0
.L1279:
	jmp	%o7+8
	 nop
.L1274:
	be,pn	%icc, .L1279
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
	bl,pn	%icc, .L1289
	 mov	0, %o0
	bg,pn	%icc, .L1289
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1289:
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
	bl,pn	%icc, .L1295
	 mov	-1, %o0
	bg,pn	%icc, .L1295
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1295
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1295:
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
	add	%sp, -80, %sp
	andcc	%o2, 32, %g0
	be,pt	%icc, .L1298
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %o0
.L1299:
	stx	%g0, [%sp+72]
	st	%o0, [%sp+72]
	mov	%o0, %g1
.L1297:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1298:
	be,pn	%icc, .L1297
	 mov	%o0, %g1
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %g3
	srl	%o0, %o2, %o0
	ba,pt	%xcc, .L1299
	 or	%g1, %g3, %o1
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
.LC38:
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
	sethi	%hi(.LC38), %g2
	andcc	%o2, 1, %g0
	ldd	[%sp+72], %f8
	ldd	[%g2+%lo(.LC38)], %f0
	be,pt	%icc, .L1311
	 mov	%o2, %g1
.L1313:
	fmuld	%f0, %f8, %f0
.L1311:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1312
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1313
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1319:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1313
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1319
	 sra	%o0, 1, %g1
.L1312:
	cmp	%o2, 0
	bge,pt	%icc, .L1310
	 sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f2
	fdivd	%f2, %f0, %f0
.L1310:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC40:
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
	sethi	%hi(.LC40), %g2
	andcc	%o1, 1, %g0
	ld	[%sp+76], %f8
	ld	[%g2+%lo(.LC40)], %f0
	be,pt	%icc, .L1321
	 mov	%o1, %g1
.L1323:
	fmuls	%f0, %f8, %f0
.L1321:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1322
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1323
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1329:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1323
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1329
	 sra	%o0, 1, %g1
.L1322:
	cmp	%o1, 0
	bge,pt	%icc, .L1320
	 sethi	%hi(.LC40), %g1
	ld	[%g1+%lo(.LC40)], %f1
	fdivs	%f1, %f0, %f0
.L1320:
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
	blu,pn	%icc, .L1336
	 mov	0, %o0
	bgu,pn	%icc, .L1336
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1336:
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
	blu,pn	%icc, .L1342
	 mov	-1, %o0
	bgu,pn	%icc, .L1342
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1342
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1342:
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
