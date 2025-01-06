	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.align 32
	.global make_ti
	.type	make_ti, #function
	.proc	05
make_ti:
	jmp	%o7+8
	 nop
	.size	make_ti, .-make_ti
	.align 4
	.align 32
	.global make_tu
	.type	make_tu, #function
	.proc	017
make_tu:
	jmp	%o7+8
	 nop
	.size	make_tu, .-make_tu
	.align 4
	.align 32
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	.register	%g2, #scratch
	.register	%g3, #scratch
	cmp	%o0, %o1
	bleu,pt	%xcc, .L5
	 nop
	brz,pn	%o2, .L49
	 add	%o1, -1, %g4
	add	%o0, -1, %g3
	ldub	[%g4+%o2], %g1
.L45:
	stb	%g1, [%g3+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L45
	 ldub	[%g4+%o2], %g1
.L49:
	jmp	%o7+8
	 nop
.L5:
	bne,pt	%xcc, .L44
	 nop
	jmp	%o7+8
	 nop
.L44:
	brz,pn	%o2, .L49
	 add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L15
	 add	%o1, 1, %g2
	or	%o1, %o0, %g1
	and	%g1, 7, %g1
	mov	0, %g4
	mov	0, %g3
	sub	%o0, %g2, %g5
	movre	%g1, 1, %g4
	mov	%g3, %g1
	cmp	%g5, 6
	movgu	%xcc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L15
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L46:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L46
	 ldd	[%o1+%g1], %f8
	add	%o1, %g1, %g4
	add	%o0, %g1, %g3
	cmp	%o2, %g1
	be,pn	%xcc, .L49
	 sub	%o2, %g1, %g2
	ldub	[%o1+%g1], %o1
	cmp	%g2, 1
	be,pn	%xcc, .L49
	 stb	%o1, [%o0+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be,pn	%xcc, .L49
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	cmp	%g2, 3
	be,pn	%xcc, .L49
	 stb	%g1, [%g3+2]
	ldub	[%g4+3], %g1
	cmp	%g2, 4
	be,pn	%xcc, .L49
	 stb	%g1, [%g3+3]
	ldub	[%g4+4], %g1
	cmp	%g2, 5
	be,pn	%xcc, .L49
	 stb	%g1, [%g3+4]
	ldub	[%g4+5], %g1
	cmp	%g2, 6
	be,pn	%xcc, .L49
	 stb	%g1, [%g3+5]
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L15:
	mov	0, %g1
	ldub	[%o1+%g1], %g5
.L47:
	stb	%g5, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L47
	 ldub	[%o1+%g1], %g5
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.align 32
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	and	%o2, 0xff, %o2
.L61:
	brz,pn	%o3, .L62
	 add	%o3, -1, %o3
	ldub	[%o1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0-1]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne,pt	%icc, .L61
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L62:
	jmp	%o7+8
	 mov	0, %o0
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	brnz,pt	%o2, .L64
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L66:
	brz,pn	%o2, .L67
	 add	%o0, 1, %o0
.L64:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L66
	 add	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L67:
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
.L76:
	brz,pn	%o2, .L78
	 add	%o2, -1, %o2
	ldub	[%o0], %g1
	add	%o0, 1, %o0
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be,pt	%icc, .L76
	 add	%o1, 1, %o1
	sub	%g1, %g2, %o0
.L75:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L78:
	ba,pt	%xcc, .L75
	 mov	0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L92
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L92:
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
	ba,pt	%xcc, .L94
	 add	%o0, -1, %g2
.L96:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L97
	 add	%g3, -1, %g3
.L94:
	cmp	%g3, %g2
	bne,pt	%xcc, .L96
	 mov	%g3, %o0
	mov	0, %o0
.L97:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.align 32
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -176, %sp
	brz,pn	%i2, .L102
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L102:
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
	be,pn	%icc, .L110
	 stb	%g1, [%o0]
.L105:
	ldub	[%o1+1], %g1
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	sll	%g1, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L105
	 stb	%g1, [%o0]
.L110:
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.align 32
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	ldsb	[%o0], %g2
	and	%o1, 0xff, %o1
	cmp	%g2, 0
	bne,pt	%icc, .L112
	 ldub	[%o0], %g1
.L120:
	jmp	%o7+8
	 nop
.L114:
	add	%o0, 1, %o0
	cmp	%g3, 0
	be,pn	%icc, .L120
	 ldub	[%o0], %g1
.L112:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L114
	 ldsb	[%o0+1], %g3
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.align 32
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L123:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L125
	 cmp	%g1, 0
	bne,pt	%icc, .L123
	 add	%o0, 1, %o0
	mov	0, %o0
.L125:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.align 32
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldub	[%o0], %g3
	mov	1, %g1
	add	%o1, -1, %o1
	ldsb	[%o1+1], %g4
	sll	%g3, 24, %g2
	sra	%g2, 24, %g5
	cmp	%g5, %g4
	bne,pn	%icc, .L135
	 ldub	[%o1+1], %o5
.L127:
	cmp	%g2, 0
	be,a,pn	%icc, .L136
	 and	%o5, 0xff, %o1
	ldub	[%o0+%g1], %g3
	add	%g1, 1, %g1
	ldsb	[%o1+%g1], %g4
	sll	%g3, 24, %g2
	sra	%g2, 24, %g5
	cmp	%g5, %g4
	be,pt	%icc, .L127
	 ldub	[%o1+%g1], %o5
.L135:
	and	%g3, 0xff, %o0
	and	%o5, 0xff, %o1
	sub	%o0, %o1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L136:
	mov	0, %o0
	sub	%o0, %o1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	strcmp, .-strcmp
	.align 4
	.align 32
	.global strlen
	.type	strlen, #function
	.proc	017
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L140
	 mov	%o0, %g1
.L139:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L139
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L140:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L143
	 mov	0, %g1
	ldub	[%o0], %g4
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g4, 0
	bne,pt	%icc, .L146
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L154
	 ldub	[%o1], %g5
.L147:
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,a,pn	%icc, .L145
	 ldub	[%g1+1], %g5
	mov	%o4, %g1
.L146:
	ldub	[%g1], %g5
	xor	%g1, %o2, %g3
	mov	0, %g2
	movrne	%g3, 1, %g2
	xor	%g5, %g4, %o5
	cmp	%g0, %g5
	addx	%g0, 0, %o1
	add	%o0, 1, %o0
	cmp	%g0, %o5
	subx	%g0, -1, %g3
	and	%o1, %g3, %o5
	andcc	%o5, %g2, %g0
	bne,pt	%icc, .L147
	 add	%g1, 1, %o4
.L145:
	sub	%g4, %g5, %g1
.L143:
.L156:
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L154:
	ba,pt	%xcc, .L156
	 sub	%g4, %g5, %g1
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L161
	 and	%o2, -2, %o2
	add	%o0, %o2, %g3
.L159:
	ldub	[%o0+1], %g2
	add	%o0, 2, %o0
	add	%o1, 2, %o1
	ldub	[%o0-2], %g1
	cmp	%o0, %g3
	stb	%g2, [%o1-2]
	bne,pt	%xcc, .L159
	 stb	%g1, [%o1-1]
.L161:
	jmp	%o7+8
	 nop
	.size	swab, .-swab
	.align 4
	.align 32
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	or	%o0, 32, %g1
	mov	0, %o0
	add	%g1, -97, %g1
	cmp	%g1, 25
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
	xor	%o0, 9, %o0
	cmp	%g0, %g1
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
	xor	%o0, 127, %g1
	cmp	%o0, 31
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
	add	%o0, -48, %g1
	mov	0, %o0
	cmp	%g1, 9
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isdigit, .-isdigit
	.align 4
	.align 32
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	add	%o0, -33, %g1
	mov	0, %o0
	cmp	%g1, 93
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isgraph, .-isgraph
	.align 4
	.align 32
	.global islower
	.type	islower, #function
	.proc	04
islower:
	add	%o0, -97, %g1
	mov	0, %o0
	cmp	%g1, 25
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	islower, .-islower
	.align 4
	.align 32
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	add	%o0, -32, %g1
	mov	0, %o0
	cmp	%g1, 94
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isprint, .-isprint
	.align 4
	.align 32
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	add	%o0, -9, %g3
	xor	%o0, 32, %g1
	mov	0, %g2
	cmp	%g3, 4
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
	add	%o0, -65, %g1
	mov	0, %o0
	cmp	%g1, 25
	jmp	%o7+8
	 movleu	%icc, 1, %o0
	.size	isupper, .-isupper
	.align 4
	.align 32
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	mov	0, %g1
	add	%o0, -127, %g2
	mov	%g1, %g4
	cmp	%g2, 32
	movleu	%icc, 1, %g4
	mov	%g1, %g5
	cmp	%o0, 31
	movleu	%icc, 1, %g5
	orcc	%g4, %g5, %g0
	bne,pt	%icc, .L173
	 mov	1, %g3
	sethi	%hi(-9216), %g2
	or	%g2, 984, %g4
	add	%o0, %g4, %g5
	cmp	%g5, 1
	bleu,pn	%icc, .L173
	 nop
	sethi	%hi(-65536), %g3
	or	%g3, 7, %g2
	add	%o0, %g2, %o0
	cmp	%o0, 2
	movleu	%icc, 1, %g1
	mov	%g1, %g3
.L173:
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.align 32
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	add	%o0, -48, %g1
	mov	0, %o0
	cmp	%g1, 9
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
	bleu,pn	%icc, .L183
	 sethi	%hi(-9216), %g1
	sethi	%hi(46080), %g4
	or	%g1, 982, %g1
	or	%g4, 981, %g5
	add	%o0, %g1, %g1
	sethi	%hi(8192), %g3
	or	%g3, 39, %g3
	cmp	%g5, %g1
	subx	%g0, -1, %g4
	cmp	%g3, %o0
	subx	%g0, -1, %g1
	orcc	%g4, %g1, %g0
	bne,pn	%icc, .L179
	 mov	1, %g2
	sethi	%hi(-57344), %g5
	sethi	%hi(7168), %g1
	add	%o0, %g5, %g3
	or	%g1, 1016, %g1
	cmp	%g3, %g1
	bleu,pn	%icc, .L179
	 sethi	%hi(-65536), %g1
	sethi	%hi(1048576), %g4
	or	%g1, 4, %g1
	or	%g4, 3, %g5
	add	%o0, %g1, %g1
	cmp	%g1, %g5
	bgu,pn	%icc, .L179
	 mov	0, %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	addx	%g0, 0, %g2
.L179:
	jmp	%o7+8
	 and	%g2, 1, %o0
.L183:
	add	%o0, 1, %g1
	mov	0, %g2
	and	%g1, 127, %g1
	cmp	%g1, 32
	movgu	%icc, 1, %g2
	jmp	%o7+8
	 and	%g2, 1, %o0
	.size	iswprint, .-iswprint
	.align 4
	.align 32
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L185
	 mov	1, %g2
	or	%o0, 32, %g1
	mov	0, %g2
	add	%g1, -97, %g1
	cmp	%g1, 5
	movleu	%icc, 1, %g2
.L185:
	jmp	%o7+8
	 and	%g2, 1, %o0
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
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L196
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L192
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L195
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L195:
	fzero	%f0
.L196:
	jmp	%o7+8
	 nop
.L192:
	jmp	%o7+8
	 fmovd	%f2, %f0
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L200
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L201
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L204
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L204:
	jmp	%o7+8
	 fzeros	%f0
.L200:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L201:
	jmp	%o7+8
	 fmovs	%f3, %f0
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -144, %sp
	fcmpd	%fcc2, %f0, %f0
	fbu,a,pn %fcc2, .L205
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L205
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L207
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L205:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L207:
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovdl	%fcc0, %f2, %f0
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -144, %sp
	fcmps	%fcc1, %f1, %f1
	fbu,pn	%fcc1, .L211
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L211
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne,pt	%icc, .L217
	 nop
	fcmpes	%fcc3, %f1, %f3
	fmovsl	%fcc3, %f3, %f1
	fmovs	%f1, %f0
.L211:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L217:
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f1
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f1, %f0
	ba,pt	%xcc, .L211
	 fmovs	%f1, %f0
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	add	%sp, -144, %sp
	fcmpq	%fcc0, %f0, %f0
	fbu,a,pn %fcc0, .L218
	 fmovq	%f4, %f0
	fcmpq	%fcc1, %f4, %f4
	fbu,pn	%fcc1, .L218
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f4, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L220
	 fcmpeq	%fcc2, %f0, %f4
	cmp	%g1, 0
	fmovqne	%icc, %f4, %f0
.L218:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L220:
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovql	%fcc2, %f4, %f0
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -144, %sp
	fcmpd	%fcc3, %f0, %f0
	fbu,a,pn %fcc3, .L230
	 fmovd	%f2, %f0
	fcmpd	%fcc0, %f2, %f2
	fbu,a,pn %fcc0, .L224
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L226
	 fcmped	%fcc1, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L224:
	fmovd	%f2, %f0
.L230:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L226:
	add	%sp, 144, %sp
	fmovdl	%fcc1, %f0, %f2
	jmp	%o7+8
	 fmovd	%f2, %f0
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -144, %sp
	fcmps	%fcc2, %f1, %f1
	fbu,pn	%fcc2, .L231
	 fmovs	%f3, %f0
	fcmps	%fcc3, %f3, %f3
	fbu,pn	%fcc3, .L231
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	bne,pt	%icc, .L237
	 nop
	fcmpes	%fcc0, %f1, %f3
	fmovsl	%fcc0, %f1, %f3
	fmovs	%f3, %f0
.L231:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L237:
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f3, %f0
	ba,pt	%xcc, .L231
	 fmovs	%f1, %f0
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	add	%sp, -144, %sp
	fcmpq	%fcc1, %f0, %f0
	fbu,a,pn %fcc1, .L244
	 fmovq	%f4, %f0
	fcmpq	%fcc2, %f4, %f4
	fbu,a,pn %fcc2, .L238
	 fmovq	%f0, %f4
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f4, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L240
	 fcmpeq	%fcc3, %f0, %f4
	cmp	%g1, 0
	fmovqne	%icc, %f0, %f4
.L238:
	fmovq	%f4, %f0
.L244:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L240:
	add	%sp, 144, %sp
	fmovql	%fcc3, %f0, %f4
	jmp	%o7+8
	 fmovq	%f4, %f0
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	orcc	%o0, 0, %g1
	be,pn	%icc, .L248
	 sethi	%hi(s.0), %o0
	sethi	%hi(digits), %g4
	or	%o0, %lo(s.0), %o0
	or	%g4, %lo(digits), %g5
	mov	%o0, %g2
.L247:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g5+%g3], %g4
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L247
	 stb	%g4, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L248:
	or	%o0, %lo(s.0), %o0
	mov	%o0, %g2
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
	add	%o0, -1, %o0
	srl	%o0, 0, %g2
	jmp	%o7+8
	 stx	%g2, [%g1+%lo(seed)]
	.size	srand, .-srand
	.align 4
	.align 32
	.global rand
	.type	rand, #function
	.proc	04
rand:
	sethi	%hi(1481765888), %g1
	sethi	%hi(seed), %g3
	sethi	%hi(1284865024), %g2
	or	%g1, 45, %g1
	ldx	[%g3+%lo(seed)], %o0
	sllx	%g1, 32, %g1
	or	%g2, 813, %g4
	add	%g1, %g4, %g1
	mulx	%o0, %g1, %g5
	add	%g5, 1, %g2
	stx	%g2, [%g3+%lo(seed)]
	jmp	%o7+8
	 srlx	%g2, 33, %o0
	.size	rand, .-rand
	.align 4
	.align 32
	.global insque
	.type	insque, #function
	.proc	020
insque:
	brz,a,pn %o1, .L258
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L260
	 stx	%o0, [%g1+8]
.L260:
	jmp	%o7+8
	 nop
.L258:
	stx	%g0, [%o0]
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.align 32
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ldx	[%o0], %g1
	brz,a,pn %g1, .L271
	 ldx	[%o0+8], %g3
	ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g3
.L271:
	brnz,a,pt %g3, .L270
	 stx	%g1, [%g3]
.L270:
	jmp	%o7+8
	 nop
	.size	remque, .-remque
	.align 4
	.align 32
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -176, %sp
	ldx	[%i2], %l1
	brz,pn	%l1, .L273
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L275
	 mov	0, %l0
.L284:
	cmp	%l1, %l0
	be,pn	%xcc, .L273
	 add	%i5, %i3, %i5
.L275:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	mov	%i5, %i0
	cmp	%o0, 0
	bne,pt	%icc, .L284
	 add	%l0, 1, %l0
.L286:
	return	%i7+8
	 nop
.L273:
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %g2
	brz,pn	%i3, .L286
	 add	%i1, %g2, %i0
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
	save	%sp, -176, %sp
	ldx	[%i2], %l0
	brz,pn	%l0, .L288
	 mov	0, %i5
	ba,pt	%xcc, .L296
	 mov	%i1, %o1
.L295:
	cmp	%l0, %i5
	be,pn	%xcc, .L288
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L296:
	call	%i4, 0
	 mov	%i0, %o0
	mov	%i1, %i2
	cmp	%o0, 0
	bne,pt	%icc, .L295
	 add	%i5, 1, %i5
	return	%i7+8
	 mov	%o2, %o0
.L288:
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
	sub	%o0, %g1, %g2
	jmp	%o7+8
	 sra	%g2, 0, %o0
	.size	abs, .-abs
	.align 4
	.align 32
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	ldub	[%o0], %g4
	ba,pt	%xcc, .L321
	 mov	0, %g1
.L322:
	mov	0, %g1
	add	%o0, 1, %o0
.L321:
	sll	%g4, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %o5
	xor	%g2, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %o5
	orcc	%g1, %o5, %g0
	bne,a,pt %icc, .L322
	 ldub	[%o0+1], %g4
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L301
	 cmp	%g1, 45
	bne,pt	%icc, .L323
	 add	%g2, -48, %g3
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	add	%g2, -48, %g5
	cmp	%g5, 9
	bgu,pn	%icc, .L310
	 ldub	[%o0+1], %g4
	mov	1, %o5
.L304:
	mov	0, %o0
.L307:
	ldsb	[%g1+1], %g5
	sll	%o0, 2, %g2
	add	%g4, -48, %g4
	add	%g2, %o0, %o0
	add	%g1, 1, %g1
	sll	%g4, 24, %g3
	add	%o0, %o0, %g2
	sra	%g3, 24, %g3
	add	%g5, -48, %g5
	ldub	[%g1], %g4
	cmp	%g5, 9
	bleu,pt	%icc, .L307
	 sub	%g2, %g3, %o0
	sub	%g3, %g2, %g1
	cmp	%o5, 0
	move	%icc, %g1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L323:
	mov	%o0, %g1
	cmp	%g3, 9
	bleu,pt	%icc, .L304
	 mov	0, %o5
.L310:
	mov	0, %o0
.L324:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L301:
	ldsb	[%o0+1], %g3
	add	%o0, 1, %g1
	ldub	[%o0+1], %g4
	add	%g3, -48, %o0
	cmp	%o0, 9
	bleu,pt	%icc, .L304
	 mov	0, %o5
	ba,pt	%xcc, .L324
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g4
	ba,pt	%xcc, .L348
	 mov	0, %g1
.L349:
	mov	0, %g1
	add	%o0, 1, %o0
.L348:
	sll	%g4, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %o5
	xor	%g2, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %o5
	orcc	%g1, %o5, %g0
	bne,a,pt %icc, .L349
	 ldub	[%o0+1], %g4
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L328
	 cmp	%g1, 45
	bne,pt	%icc, .L350
	 add	%g2, -48, %g3
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	add	%g2, -48, %g5
	cmp	%g5, 9
	bgu,pn	%icc, .L337
	 ldub	[%o0+1], %g4
	mov	1, %o5
.L331:
	mov	0, %o0
.L334:
	ldsb	[%g1+1], %g5
	sllx	%o0, 2, %g2
	add	%g4, -48, %g4
	add	%g2, %o0, %o0
	add	%g1, 1, %g1
	sllx	%g4, 56, %g3
	add	%o0, %o0, %g2
	srax	%g3, 56, %g3
	add	%g5, -48, %g5
	ldub	[%g1], %g4
	cmp	%g5, 9
	bleu,pt	%icc, .L334
	 sub	%g2, %g3, %o0
	sub	%g3, %g2, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 move	%icc, %g1, %o0
.L350:
	mov	%o0, %g1
	cmp	%g3, 9
	bleu,pt	%icc, .L331
	 mov	0, %o5
.L337:
	jmp	%o7+8
	 mov	0, %o0
.L328:
	ldsb	[%o0+1], %g3
	add	%o0, 1, %g1
	ldub	[%o0+1], %g4
	add	%g3, -48, %o0
	cmp	%o0, 9
	bleu,pt	%icc, .L331
	 mov	0, %o5
	ba,pt	%xcc, .L337
	 nop
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g4
	ba,pt	%xcc, .L371
	 mov	0, %g1
.L372:
	mov	0, %g1
	add	%o0, 1, %o0
.L371:
	sll	%g4, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %o5
	xor	%g2, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %o5
	orcc	%g1, %o5, %g0
	bne,a,pt %icc, .L372
	 ldub	[%o0+1], %g4
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L354
	 cmp	%g1, 45
	be,a,pt	%icc, .L373
	 ldsb	[%o0+1], %g2
	add	%g2, -48, %g3
	mov	%o0, %g1
	cmp	%g3, 9
	bgu,pn	%icc, .L362
	 mov	0, %o5
.L356:
	mov	0, %o0
.L359:
	ldsb	[%g1+1], %g5
	sllx	%o0, 2, %g2
	add	%g4, -48, %g4
	add	%g2, %o0, %o0
	add	%g1, 1, %g1
	sllx	%g4, 56, %g3
	add	%o0, %o0, %g2
	srax	%g3, 56, %g3
	add	%g5, -48, %g5
	ldub	[%g1], %g4
	cmp	%g5, 9
	bleu,pt	%icc, .L359
	 sub	%g2, %g3, %o0
	sub	%g3, %g2, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 move	%icc, %g1, %o0
.L373:
	add	%o0, 1, %g1
	mov	1, %o5
	add	%g2, -48, %g5
	cmp	%g5, 9
	bleu,pt	%icc, .L356
	 ldub	[%o0+1], %g4
.L362:
	jmp	%o7+8
	 mov	0, %o0
.L354:
	ldsb	[%o0+1], %g3
	add	%o0, 1, %g1
	ldub	[%o0+1], %g4
	add	%g3, -48, %o0
	cmp	%o0, 9
	bgu,pn	%icc, .L362
	 nop
	ba,pt	%xcc, .L356
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L384:
	brz,pn	%i2, .L386
	 mov	0, %i5
.L385:
	srlx	%i2, 1, %l0
	mov	%i0, %o0
	mulx	%l0, %i3, %g1
	add	%i1, %g1, %i5
	add	%i2, -1, %i2
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,a,pn	%icc, .L384
	 mov	%l0, %i2
	be,pn	%icc, .L374
	 nop
	sub	%i2, %l0, %i2
	brnz,pt	%i2, .L385
	 add	%i5, %i3, %i1
	mov	0, %i5
.L374:
.L386:
	return	%i7+8
	 mov	%o5, %o0
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	orcc	%i2, 0, %l0
	be,pn	%icc, .L399
	 mov	0, %i2
.L397:
	sra	%l0, 1, %i2
	mov	%i5, %o2
	mulx	%i2, %i3, %g1
	mov	%i2, %l1
	add	%i1, %g1, %i2
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i2, %o1
	cmp	%o0, 0
	be,pn	%icc, .L387
	 add	%l0, -1, %l0
	ble,pn	%icc, .L390
	 sra	%l0, 1, %l0
	cmp	%l0, 0
	bne,pt	%icc, .L397
	 add	%i2, %i3, %i1
	mov	0, %i2
.L387:
.L399:
	return	%i7+8
	 mov	%o2, %o0
.L390:
	cmp	%l1, 0
	be,pn	%icc, .L399
	 mov	0, %i2
	ba,pt	%xcc, .L397
	 mov	%l1, %l0
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	sra	%o0, 31, %g1
	add	%sp, -176, %sp
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	st	%g1, [%sp+2199]
	sub	%o0, %o1, %o0
	st	%o0, [%sp+2203]
	ldd	[%sp+2199], %f8
	std	%f8, [%sp+2215]
	ldx	[%sp+2215], %o0
	jmp	%o7+8
	 add	%sp, 176, %sp
	.size	div, .-div
	.align 4
	.align 32
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	srax	%o0, 63, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	imaxabs, .-imaxabs
	.align 4
	.align 32
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	add	%sp, -160, %sp
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	sub	%g1, %o1, %o1
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	imaxdiv, .-imaxdiv
	.align 4
	.align 32
	.global labs
	.type	labs, #function
	.proc	05
labs:
	srax	%o0, 63, %g1
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
	add	%sp, -160, %sp
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	sub	%g1, %o1, %o1
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	ldiv, .-ldiv
	.align 4
	.align 32
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	srax	%o0, 63, %g1
	xor	%g1, %o0, %o0
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	llabs, .-llabs
	.align 4
	.align 32
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	add	%sp, -160, %sp
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	sub	%g1, %o1, %o1
	jmp	%o7+8
	 add	%sp, 160, %sp
	.size	lldiv, .-lldiv
	.align 4
	.align 32
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	lduw	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L411
	 nop
.L408:
	cmp	%g1, %o1
	be,pn	%icc, .L416
	 nop
	lduw	[%o0+4], %g1
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
	lduw	[%o1], %g3
	mov	4, %g1
	lduw	[%o0], %g2
	cmp	%g2, %g3
	bne,pn	%icc, .L419
	 add	%o1, -4, %o1
	cmp	%g2, 0
.L427:
	be,pn	%icc, .L426
	 cmp	%g2, %g3
	lduw	[%o0+%g1], %g2
	add	%g1, 4, %g1
	lduw	[%o1+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L427
	 cmp	%g2, 0
.L419:
	cmp	%g2, %g3
.L426:
	bl,pt	%icc, .L421
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L421:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.align 32
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L429:
	lduw	[%o1+%g1], %g2
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
	.proc	017
wcslen:
	lduw	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L434
	 nop
	mov	%o0, %g1
.L433:
	lduw	[%g1+4], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L433
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
.L434:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
.L439:
	brz,pn	%o2, .L442
	 add	%o2, -1, %o2
	lduw	[%o0], %g1
	add	%o0, 4, %o0
	lduw	[%o1], %g2
	xor	%g2, %g1, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g5
	andcc	%g4, %g5, %g0
	bne,pt	%icc, .L439
	 add	%o1, 4, %o1
	cmp	%g1, %g2
	bge,a,pt %icc, .L441
	 mov	0, %o0
	mov	-1, %o0
.L438:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L441:
	ba,pt	%xcc, .L438
	 movg	%icc, 1, %o0
.L442:
	ba,pt	%xcc, .L438
	 mov	0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L455
	 nop
.L462:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L463
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L462
	 add	%o0, 4, %o0
.L455:
	jmp	%o7+8
	 mov	0, %o0
.L463:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
.L467:
	brz,pn	%o2, .L470
	 add	%o2, -1, %o2
	lduw	[%o0], %g2
	add	%o0, 4, %o0
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,pt	%icc, .L467
	 add	%o1, 4, %o1
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
.L466:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L470:
	ba,pt	%xcc, .L466
	 mov	0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L484
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L484:
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
	be,pn	%xcc, .L512
	 nop
	sub	%o0, %o1, %g3
	sllx	%o2, 2, %g2
	cmp	%g3, %g2
	blu,pt	%xcc, .L487
	 add	%o2, -1, %g1
	brz,pn	%o2, .L512
	 nop
	cmp	%g1, 8
	bleu,pn	%xcc, .L498
	 or	%o1, %o0, %g3
	add	%o1, 4, %g2
	mov	0, %g5
	mov	0, %g4
	and	%g3, 7, %g3
	xor	%o0, %g2, %g2
	movre	%g3, 1, %g5
	movrne	%g2, 1, %g4
	andcc	%g5, %g4, %g0
	be,pn	%icc, .L498
	 srlx	%o2, 1, %g5
	mov	0, %g1
	mov	0, %g4
.L492:
	ldd	[%o1+%g1], %f8
	add	%g4, 1, %g4
	cmp	%g5, %g4
	std	%f8, [%o0+%g1]
	bne,pt	%xcc, .L492
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L512
	 nop
	and	%o2, -2, %o2
	sllx	%o2, 2, %g3
	lduw	[%o1+%g3], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%g3]
.L498:
	mov	0, %g2
.L509:
	lduw	[%o1+%g2], %g5
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g5, [%o0+%g2]
	bne,pt	%xcc, .L509
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L487:
	brz,pn	%o2, .L512
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g4
.L511:
	st	%g4, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L511
	 lduw	[%o1+%g1], %g4
	jmp	%o7+8
	 nop
.L512:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	add	%sp, -144, %sp
	add	%o2, -1, %g4
	brz,pn	%o2, .L515
	 srlx	%o0, 2, %g1
	cmp	%g4, 5
	bleu,pn	%xcc, .L520
	 and	%g1, 1, %g1
	brz,pn	%g1, .L517
	 mov	%o0, %g5
	add	%o0, 4, %g5
	st	%o1, [%o0]
	add	%o2, -2, %g4
.L517:
	st	%o1, [%sp+2183]
	sub	%o2, %g1, %o2
	mov	0, %g2
	st	%o1, [%sp+2187]
	sllx	%g1, 2, %g1
	ldd	[%sp+2183], %f8
	srlx	%o2, 1, %g3
	add	%o0, %g1, %g1
.L518:
	std	%f8, [%g1]
	add	%g2, 1, %g2
	cmp	%g2, %g3
	bne,pt	%xcc, .L518
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L515
	 and	%o2, -2, %o2
	sllx	%o2, 2, %g1
	sub	%g4, %o2, %g4
	add	%g5, %g1, %g1
.L516:
	brz,pn	%g4, .L515
	 st	%o1, [%g1]
	cmp	%g4, 1
	be,pn	%xcc, .L515
	 st	%o1, [%g1+4]
	cmp	%g4, 2
	be,pn	%xcc, .L515
	 st	%o1, [%g1+8]
	cmp	%g4, 3
	be,pn	%xcc, .L515
	 st	%o1, [%g1+12]
	cmp	%g4, 4
	be,pn	%xcc, .L515
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L515:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L520:
	ba,pt	%xcc, .L516
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L546
	 nop
	brz,pn	%o2, .L589
	 nop
	add	%o0, -1, %g3
	add	%o1, -1, %o1
	ldub	[%g3+%o2], %g1
.L586:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L586
	 ldub	[%g3+%o2], %g1
.L590:
	jmp	%o7+8
	 nop
.L546:
	bne,pt	%xcc, .L585
	 nop
	jmp	%o7+8
	 nop
.L585:
	brz,pn	%o2, .L589
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L556
	 add	%o0, 1, %g2
	or	%o1, %o0, %g1
	and	%g1, 7, %g1
	mov	0, %g4
	mov	0, %g3
	sub	%o1, %g2, %g5
	movre	%g1, 1, %g4
	mov	%g3, %g1
	cmp	%g5, 6
	movgu	%xcc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L556
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L587:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L587
	 ldd	[%o0+%g1], %f8
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L590
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %o0
	cmp	%g2, 1
	be,pn	%xcc, .L590
	 stb	%o0, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be,pn	%xcc, .L590
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	cmp	%g2, 3
	be,pn	%xcc, .L590
	 stb	%g1, [%g3+2]
	ldub	[%g4+3], %g1
	cmp	%g2, 4
	be,pn	%xcc, .L590
	 stb	%g1, [%g3+3]
	ldub	[%g4+4], %g1
	cmp	%g2, 5
	be,pn	%xcc, .L590
	 stb	%g1, [%g3+4]
	ldub	[%g4+5], %g1
	cmp	%g2, 6
	be,pn	%xcc, .L590
	 stb	%g1, [%g3+5]
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L556:
	mov	0, %g1
	ldub	[%o0+%g1], %g5
.L588:
	stb	%g5, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L588
	 ldub	[%o0+%g1], %g5
.L589:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.align 32
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	sub	%g0, %o1, %g1
	sllx	%o0, %o1, %o1
	srlx	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotl64, .-rotl64
	.align 4
	.align 32
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	sub	%g0, %o1, %g1
	srlx	%o0, %o1, %o1
	sllx	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
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
	or	%o0, %o1, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
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
	or	%o0, %o1, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	rotr32, .-rotr32
	.align 4
	.align 32
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	017
rotl_sz:
	sub	%g0, %o1, %g1
	sllx	%o0, %o1, %o1
	srlx	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.align 32
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	017
rotr_sz:
	sub	%g0, %o1, %g1
	srlx	%o0, %o1, %o1
	sllx	%o0, %g1, %o0
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
	sll	%o0, %o1, %g2
	sub	%g0, %o1, %g1
	and	%g1, 15, %g1
	srl	%o0, %g1, %o0
	or	%g2, %o0, %g3
	sllx	%g3, 48, %g4
	jmp	%o7+8
	 srlx	%g4, 48, %o0
	.size	rotl16, .-rotl16
	.align 4
	.align 32
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	and	%o1, 15, %o1
	srl	%o0, %o1, %g2
	sub	%g0, %o1, %g1
	and	%g1, 15, %g1
	sll	%o0, %g1, %o0
	or	%g2, %o0, %g3
	sllx	%g3, 48, %g4
	jmp	%o7+8
	 srlx	%g4, 48, %o0
	.size	rotr16, .-rotr16
	.align 4
	.align 32
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	and	%o1, 7, %o1
	sll	%o0, %o1, %g2
	sub	%g0, %o1, %g1
	and	%g1, 7, %g1
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
	srl	%o0, %o1, %g2
	sub	%g0, %o1, %g1
	and	%g1, 7, %g1
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
	srlx	%o0, 8, %g1
	sll	%o0, 8, %o0
	or	%g1, %o0, %g2
	sllx	%g2, 48, %g3
	jmp	%o7+8
	 srlx	%g3, 48, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.align 32
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	sll	%o0, 8, %g1
	sethi	%hi(16711680), %g3
	sll	%o0, 24, %g5
	and	%o0, %g3, %g2
	srlx	%o0, 24, %g4
	and	%g1, %g3, %o0
	srlx	%g2, 8, %g1
	or	%o0, %g5, %g3
	or	%g3, %g4, %g5
	or	%g5, %g1, %g4
	jmp	%o7+8
	 srl	%g4, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	mov	255, %g2
	sethi	%hi(16711680), %o4
	srlx	%o0, 56, %g5
	sethi	%hi(4278190080), %o5
	sllx	%g2, 8, %g3
	sllx	%o0, 56, %g1
	srlx	%o0, 40, %g4
	or	%g1, %g5, %g1
	srlx	%o0, 8, %g5
	and	%g4, %g3, %g4
	srlx	%o0, 24, %g3
	or	%g1, %g4, %g1
	and	%g3, %o4, %o4
	and	%g5, %o5, %g5
	sllx	%o0, 8, %g4
	or	%g1, %o4, %g1
	sllx	%g2, 32, %o4
	or	%g1, %g5, %g1
	sllx	%o0, 24, %g3
	and	%g4, %o4, %g5
	sllx	%g2, 40, %o5
	or	%g1, %g5, %g1
	sllx	%o0, 40, %o0
	and	%g3, %o5, %g4
	sllx	%g2, 48, %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %o4
	jmp	%o7+8
	 or	%g1, %o4, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.align 32
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	ba,pt	%xcc, .L607
	 mov	0, %g1
.L610:
	cmp	%g1, 32
	be,a,pn	%icc, .L609
	 mov	0, %g1
.L607:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L610
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L609:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L612
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L612
	 nop
	mov	1, %g2
.L613:
	sra	%o0, 1, %g1
	add	%g2, 1, %g2
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L613
	 sra	%g1, 0, %o0
.L612:
	jmp	%o7+8
	 sra	%g2, 0, %o0
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
	sethi	%hi(.LC0), %g1
	ld	[%g1+%lo(.LC0)], %f8
	fcmpes	%fcc0, %f1, %f8
	fbl,pt	%fcc0, .L619
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	mov	0, %o0
	ld	[%g1+%lo(.LC1)], %f0
	fcmpes	%fcc1, %f1, %f0
	movg	%fcc1, 1, %o0
.L619:
	jmp	%o7+8
	 and	%o0, 1, %o0
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
	sethi	%hi(.LC4), %g1
	ldd	[%g1+%lo(.LC4)], %f8
	fcmped	%fcc2, %f0, %f8
	fbl,pt	%fcc2, .L622
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	mov	0, %o0
	ldd	[%g1+%lo(.LC5)], %f2
	fcmped	%fcc3, %f0, %f2
	movg	%fcc3, 1, %o0
.L622:
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC8:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align 16
.LC9:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
	.section	".text"
	.align 4
	.align 32
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	sethi	%hi(.LC8), %g1
	ldq	[%g1+%lo(.LC8)], %f8
	fcmpeq	%fcc0, %f0, %f8
	fbl,pt	%fcc0, .L625
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	mov	0, %o0
	ldq	[%g1+%lo(.LC9)], %f4
	fcmpeq	%fcc1, %f0, %f4
	movg	%fcc1, 1, %o0
.L625:
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.align 32
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	add	%sp, -144, %sp
	st	%o1, [%sp+2187]
	ld	[%sp+2187], %f8
	fitoq	%f8, %f0
	stq	%f0, [%o0]
	jmp	%o7+8
	 add	%sp, 144, %sp
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
	fcmps	%fcc2, %f1, %f1
	fbu,pn	%fcc2, .L629
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L629
	 nop
	sethi	%hi(.LC12), %g1
	cmp	%o1, 0
	ld	[%g1+%lo(.LC12)], %f0
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	fmovsl	%icc, %f9, %f0
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L643
	 srl	%o1, 31, %g1
.L632:
	fmuls	%f1, %f0, %f1
	srl	%o1, 31, %g1
.L643:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L629
	 nop
	fmuls	%f0, %f0, %f0
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L632
	 srl	%o1, 31, %g1
	add	%g1, %o1, %g2
.L642:
	fmuls	%f0, %f0, %f0
	sra	%g2, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L632
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L642
	 add	%g1, %o1, %g2
.L629:
	jmp	%o7+8
	 fmovs	%f1, %f0
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
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L660
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L660
	 nop
	sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	ldd	[%g1+%lo(.LC16)], %f2
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	fmovdl	%icc, %f10, %f2
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L659
	 srl	%o1, 31, %g1
.L648:
	fmuld	%f0, %f2, %f0
	srl	%o1, 31, %g1
.L659:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L660
	 nop
	fmuld	%f2, %f2, %f2
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L648
	 srl	%o1, 31, %g1
	add	%g1, %o1, %g2
.L658:
	fmuld	%f2, %f2, %f2
	sra	%g2, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L648
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L658
	 add	%g1, %o1, %g2
.L660:
	jmp	%o7+8
	 nop
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
	.align 16
.LC20:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 16
.LC21:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	fcmpq	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L678
	 nop
	faddq	%f0, %f0, %f8
	fcmpq	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L678
	 nop
	sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L674
	 ldq	[%g1+%lo(.LC20)], %f4
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L677
	 srl	%o2, 31, %g1
.L665:
	fmulq	%f0, %f4, %f0
.L664:
	srl	%o2, 31, %g1
.L677:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	brz,pn	%o2, .L678
	 nop
	fmulq	%f4, %f4, %f4
	andcc	%o2, 1, %g0
	bne,pt	%xcc, .L665
	 srl	%o2, 31, %g1
	add	%g1, %o2, %g2
.L676:
	fmulq	%f4, %f4, %f4
	sra	%g2, 1, %o2
	andcc	%o2, 1, %g0
	bne,pt	%xcc, .L665
	 srl	%o2, 31, %g1
	ba,pt	%xcc, .L676
	 add	%g1, %o2, %g2
.L678:
	jmp	%o7+8
	 nop
.L674:
	sethi	%hi(.LC21), %g1
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L664
	 ldq	[%g1+%lo(.LC21)], %f4
	ba,pt	%xcc, .L664
	 fmulq	%f0, %f4, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L714
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%xcc, .L687
	 or	%o0, %o1, %g1
	and	%g1, 7, %g1
	brnz,pn	%g1, .L687
	 and	%o2, -8, %g2
	ldd	[%o0+%g1], %f8
.L712:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L712
	 ldd	[%o0+%g1], %f8
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L714
	 sub	%o2, %g1, %g3
	ldub	[%o0+%g1], %g5
	cmp	%g3, 1
	ldub	[%o1+%g1], %o5
	xor	%g5, %o5, %o1
	be,pn	%xcc, .L714
	 stb	%o1, [%o0+%g1]
	ldub	[%g2+1], %o2
	cmp	%g3, 2
	ldub	[%g4+1], %g1
	xor	%g1, %o2, %g1
	be,pn	%xcc, .L714
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %g5
	cmp	%g3, 3
	ldub	[%g4+2], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L714
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %o5
	cmp	%g3, 4
	ldub	[%g4+3], %g1
	xor	%g1, %o5, %g1
	be,pn	%xcc, .L714
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %o1
	cmp	%g3, 5
	ldub	[%g4+4], %g1
	xor	%g1, %o1, %g1
	be,pn	%xcc, .L714
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %o2
	cmp	%g3, 6
	ldub	[%g4+5], %g1
	xor	%g1, %o2, %g1
	be,pn	%xcc, .L714
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %g3
	ldub	[%g4+6], %g1
	xor	%g1, %g3, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L687:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L713:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g4, %g5
	stb	%g5, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L713
	 ldub	[%o0+%g1], %g4
.L714:
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
	be,pn	%icc, .L720
	 mov	%o0, %g1
.L717:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L717
	 add	%g1, 1, %g1
.L720:
	brz,pn	%o2, .L719
	 nop
	ldub	[%o1], %g3
	add	%g1, 1, %g1
	add	%o2, -1, %o2
	add	%o1, 1, %o1
	sll	%g3, 24, %g4
	cmp	%g4, 0
	bne,pt	%icc, .L720
	 stb	%g3, [%g1-1]
	jmp	%o7+8
	 nop
.L719:
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L730
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L738:
	cmp	%g2, 0
	bne,a,pn %icc, .L733
	 add	%g1, 1, %g1
.L730:
	jmp	%o7+8
	 mov	%g1, %o0
.L733:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L738
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L730
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.align 32
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,a,pn	%icc, .L748
	 mov	0, %o0
.L740:
	sra	%g3, 24, %g4
	ba,pt	%xcc, .L743
	 mov	%o1, %g1
.L742:
	cmp	%g2, %g4
	be,pn	%icc, .L748
	 nop
.L743:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L742
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g5
	sll	%g5, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L740
	 add	%o0, 1, %o0
	mov	0, %o0
.L748:
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
.L750:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L750
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
	ldub	[%o1], %o3
	sll	%o3, 24, %g4
	cmp	%g4, 0
	be,pn	%icc, .L763
	 mov	%o0, %g2
	mov	%o1, %g1
.L754:
	ldsb	[%g1+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L754
	 add	%g1, 1, %g1
	sub	%g1, %o1, %g1
	brz,pn	%g1, .L773
	 mov	%g2, %o0
	sra	%g4, 24, %o3
	add	%o1, -1, %o2
	ba,pt	%xcc, .L770
	 add	%o2, %g1, %o2
.L772:
	cmp	%g1, 0
	be,pn	%icc, .L771
	 add	%g2, 1, %g2
.L770:
	ldsb	[%g2], %g1
	cmp	%g1, %o3
	bne,pt	%icc, .L772
	 ldub	[%g2], %g5
	mov	%o1, %g4
	mov	%g2, %o4
	ba,pt	%xcc, .L756
	 and	%g5, 0xff, %g3
.L758:
	ldub	[%o4], %g3
	cmp	%g3, 0
	be,pn	%icc, .L757
	 add	%g4, 1, %g4
.L756:
	ldub	[%g4], %g1
	xor	%g4, %o2, %o5
	mov	0, %o0
	movrne	%o5, 1, %o0
	cmp	%g0, %g1
	xor	%g1, %g3, %g1
	addx	%g0, 0, %g5
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g5, %g1, %g1
	andcc	%g1, %o0, %g0
	bne,pt	%icc, .L758
	 add	%o4, 1, %o4
.L757:
	ldub	[%g4], %g1
	cmp	%g3, %g1
	be,pn	%icc, .L773
	 mov	%g2, %o0
	ba,pt	%xcc, .L770
	 add	%g2, 1, %g2
.L771:
	jmp	%o7+8
	 mov	0, %o0
.L763:
	mov	%g2, %o0
.L773:
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
	fcmped	%fcc0, %f0, %f8
	fbl,a,pn %fcc0, .L784
	 fcmped	%fcc1, %f2, %f8
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L785
	 nop
	fcmped	%fcc3, %f2, %f8
	fbl,pn	%fcc3, .L777
	 nop
.L785:
	jmp	%o7+8
	 nop
.L784:
	fbule,pt %fcc1, .L785
	 nop
.L777:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L807
	 nop
	cmp	%o1, %o3
	blu,a,pn %xcc, .L807
	 mov	0, %o0
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a,pn %xcc, .L807
	 mov	0, %o0
	ldub	[%o2], %o5
	sll	%o5, 24, %o5
	sra	%o5, 24, %g5
	ldsb	[%o0], %g1
.L808:
	cmp	%g1, %g5
	be,pn	%icc, .L806
	 add	%o0, 1, %g4
	mov	%g4, %o0
.L788:
	cmp	%o1, %o0
	bgeu,a,pt %xcc, .L808
	 ldsb	[%o0], %g1
.L797:
	mov	0, %o0
.L807:
	jmp	%o7+8
	 nop
.L806:
	cmp	%o3, 1
	be,pn	%xcc, .L807
	 nop
.L791:
	ba,pt	%xcc, .L789
	 mov	1, %g1
.L790:
	cmp	%g1, %o3
	be,pn	%xcc, .L807
	 nop
.L789:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be,pt	%icc, .L790
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu,pn	%xcc, .L797
	 sra	%o5, 24, %g1
	ldsb	[%g4], %g3
	cmp	%g1, %g3
	bne,pt	%icc, .L788
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	ba,pt	%xcc, .L791
	 mov	%g1, %o0
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L810
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L810:
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
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L836
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L837
	 mov	0, %g2
.L817:
	sethi	%hi(.LC27), %g4
	sethi	%hi(.LC26), %g5
	ldd	[%g4+%lo(.LC27)], %f16
	mov	0, %g1
	ldd	[%g5+%lo(.LC26)], %f18
.L823:
	fmuld	%f0, %f16, %f0
	fcmped	%fcc2, %f0, %f18
	fbge,pt	%fcc2, .L823
	 add	%g1, 1, %g1
	fnegd	%f0, %f20
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f20, %f0
.L837:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f2
	fcmped	%fcc1, %f0, %f2
	fbuge,pt %fcc1, .L820
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,a,pn %fcc2, .L818
	 fmovd	%f0, %f4
.L820:
	jmp	%o7+8
	 st	%g0, [%o1]
.L836:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f6
	fcmped	%fcc0, %f0, %f6
	fbug,pn	%fcc0, .L838
	 fnegd	%f0, %f4
	fmovd	%f4, %f0
	ba,pt	%xcc, .L817
	 mov	1, %g2
.L838:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f12
	fcmped	%fcc3, %f0, %f12
	fbule,pt %fcc3, .L820
	 nop
	mov	1, %g2
.L818:
	sethi	%hi(.LC27), %g3
	fmovd	%f4, %f0
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f14
.L825:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f14
	fbl,pt	%fcc1, .L825
	 add	%g1, -1, %g1
	fnegd	%f0, %f20
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f20, %f0
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g2
	brz,pn	%g2, .L845
	 mov	0, %o0
.L841:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L841
	 add	%o0, %g1, %o0
.L845:
	jmp	%o7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.align 32
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L847
	 mov	1, %g1
	ba,pt	%xcc, .L864
	 cmp	%o0, %o1
.L850:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g5
	andcc	%g4, %g5, %g0
	be,pn	%icc, .L849
	 srl	%g2, 0, %o1
.L847:
	cmp	%o1, 0
	bge,pt	%icc, .L850
	 add	%o1, %o1, %g2
.L851:
	mov	0, %g3
.L853:
	sub	%o0, %o1, %g4
	cmp	%o0, %o1
	subx	%g0, -1, %g5
	mov	0, %g2
	cmp	%g5, 0
	movne	%icc, %g1, %g2
	movne	%icc, %g4, %o0
	srl	%g1, 1, %g1
	or	%g3, %g2, %g3
	srlx	%o1, 1, %o1
	cmp	%g1, 0
	bne,pt	%icc, .L853
	 srl	%o0, 0, %o0
.L852:
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L849:
	cmp	%g1, 0
	bne,pt	%icc, .L851
	 mov	0, %g3
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L864:
	sub	%o0, %o1, %o1
	movlu	%icc, %o0, %o1
	subx	%g0, -1, %g3
	ba,pt	%xcc, .L852
	 srl	%o1, 0, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	sra	%i0, 7, %g2
	mov	7, %g3
	cmp	%g2, %i0
	be,pn	%icc, .L868
	 xor	%g2, %i0, %g1
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %g3
.L868:
	return	%i7+8
	 sra	%g3, 0, %o0
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.align 32
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -176, %sp
	srax	%i0, 63, %g2
	mov	63, %g1
	cmp	%i0, %g2
	be,pn	%xcc, .L871
	 xor	%i0, %g2, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L871:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L874
	 mov	0, %g2
.L875:
	and	%o0, 1, %g1
	add	%o1, %o1, %g3
	srlx	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g3, 0, %o1
	brnz,pt	%o0, .L875
	 add	%g2, %g1, %g2
.L874:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -176, %sp
	srl	%i2, 3, %g2
	cmp	%i0, %i1
	blu,pt	%xcc, .L882
	 and	%i2, -8, %g5
	add	%i1, %i2, %g1
	cmp	%i0, %g1
	bleu,pt	%xcc, .L914
	 add	%i2, -1, %g1
.L882:
	srl	%g2, 0, %g4
	mov	0, %g1
	cmp	%g2, 0
	be,pn	%icc, .L912
	 sllx	%g4, 3, %i3
	ldx	[%i1+%g1], %i4
.L916:
	stx	%i4, [%i0+%g1]
	add	%g1, 8, %g1
	cmp	%i3, %g1
	bne,a,pt %xcc, .L916
	 ldx	[%i1+%g1], %i4
	cmp	%g5, %i2
	bgeu,pn	%icc, .L920
	 nop
	sub	%i2, %g5, %i5
	add	%i5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L890
	 srl	%g5, 0, %g1
	add	%g1, 1, %g2
	add	%i0, %g1, %g3
	add	%i1, %g1, %g4
	add	%i1, %g2, %g2
	or	%g4, %g3, %o7
	sub	%g3, %g2, %g2
	mov	0, %i3
	cmp	%g2, 6
	mov	0, %i4
	and	%o7, 7, %o7
	movre	%o7, 1, %i4
	movgu	%xcc, 1, %i3
	andcc	%i3, %i4, %g0
	be,pn	%icc, .L890
	 srl	%i5, 3, %i4
	mov	0, %g1
	sllx	%i4, 3, %g2
	ldd	[%g4+%g1], %f8
.L917:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L917
	 ldd	[%g4+%g1], %f8
	and	%i5, -8, %g1
	andcc	%i5, 7, %g0
	be,pn	%xcc, .L921
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g5
	add	%g1, 1, %i5
	ldub	[%i1+%g5], %g3
	cmp	%i5, %i2
	bgeu,pn	%icc, .L921
	 stb	%g3, [%i0+%g5]
	srl	%i5, 0, %i3
	add	%g1, 2, %i4
	ldub	[%i1+%i3], %g4
	cmp	%i4, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%i3]
	srl	%i4, 0, %g5
	add	%g1, 3, %g2
	ldub	[%i1+%g5], %i5
	cmp	%g2, %i2
	bgeu,pn	%icc, .L921
	 stb	%i5, [%i0+%g5]
	srl	%g2, 0, %i3
	add	%g1, 4, %g3
	ldub	[%i1+%i3], %i4
	cmp	%g3, %i2
	bgeu,pn	%icc, .L921
	 stb	%i4, [%i0+%i3]
	srl	%g3, 0, %g5
	add	%g1, 5, %g2
	ldub	[%i1+%g5], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%g5]
	srl	%g2, 0, %i5
	add	%g1, 6, %g1
	ldub	[%i1+%i5], %i3
	cmp	%g1, %i2
	bgeu,pn	%icc, .L921
	 stb	%i3, [%i0+%i5]
	srl	%g1, 0, %g1
	ldub	[%i1+%g1], %i1
	stb	%i1, [%i0+%g1]
.L921:
	return	%i7+8
	 nop
.L912:
	brz,pn	%i2, .L921
	 srl	%g5, 0, %g1
.L890:
	ldub	[%i1+%g1], %g3
.L918:
	stb	%g3, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %i2
	blu,a,pt %icc, .L918
	 ldub	[%i1+%g1], %g3
	return	%i7+8
	 nop
.L914:
	brz,pn	%i2, .L921
	 srl	%g1, 0, %g1
	ldub	[%i1+%g1], %g3
.L919:
	stb	%g3, [%i0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L919
	 ldub	[%i1+%g1], %g3
	return	%i7+8
	 nop
.L920:
	return	%i7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.align 32
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	cmp	%o0, %o1
	blu,pt	%xcc, .L926
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L947
	 add	%o2, -1, %g1
.L926:
	cmp	%g4, 0
	be,pn	%icc, .L925
	 add	%g4, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L929
	 add	%o1, 2, %g2
	or	%o1, %o0, %g1
	and	%g1, 7, %g1
	mov	0, %g5
	mov	0, %g3
	sub	%o0, %g2, %g2
	movre	%g1, 1, %g5
	mov	%g3, %g1
	cmp	%g2, 4
	movgu	%xcc, 1, %g1
	andcc	%g5, %g1, %g0
	be,pn	%icc, .L929
	 srl	%o2, 3, %g5
	mov	0, %g1
	sllx	%g5, 3, %g2
	mov	%g5, %g3
	ldd	[%o1+%g1], %f8
.L950:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L950
	 ldd	[%o1+%g1], %f8
	sll	%g3, 2, %g1
	cmp	%g4, %g1
	be,pn	%icc, .L925
	 add	%g1, 1, %g3
	srl	%g1, 0, %g5
	add	%g5, %g5, %g2
	cmp	%g4, %g3
	lduh	[%o1+%g2], %g5
	bleu,pn	%icc, .L925
	 sth	%g5, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 2, %g1
	add	%g3, %g3, %g5
	cmp	%g4, %g1
	lduh	[%o1+%g5], %g4
	bleu,pn	%icc, .L925
	 sth	%g4, [%o0+%g5]
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L925:
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L953
	 nop
	add	%o2, -1, %o2
.L949:
	srl	%o2, 0, %g4
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L947:
	brz,pn	%o2, .L953
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L951:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L951
	 ldub	[%o1+%g1], %g2
.L953:
	jmp	%o7+8
	 nop
.L929:
	mov	0, %g1
	add	%g4, %g4, %g3
	lduh	[%o1+%g1], %g5
.L952:
	sth	%g5, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L952
	 lduh	[%o1+%g1], %g5
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L953
	 nop
	ba,pt	%xcc, .L949
	 add	%o2, -1, %o2
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -176, %sp
	srl	%i2, 2, %g4
	cmp	%i0, %i1
	blu,pt	%xcc, .L959
	 and	%i2, -4, %g5
	add	%i1, %i2, %g1
	cmp	%i0, %g1
	bleu,pt	%xcc, .L990
	 add	%i2, -1, %g1
.L959:
	cmp	%g4, 0
	be,pn	%icc, .L991
	 nop
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L961
	 or	%i0, %i1, %i3
	add	%i1, 4, %g1
	mov	0, %i5
	mov	0, %g3
	and	%i3, 7, %i4
	xor	%i0, %g1, %g1
	movre	%i4, 1, %i5
	movrne	%g1, 1, %g3
	andcc	%i5, %g3, %g0
	be,pn	%icc, .L961
	 srl	%i2, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %i5
	mov	%g2, %i3
	ldd	[%i1+%g1], %f8
.L994:
	std	%f8, [%i0+%g1]
	add	%g1, 8, %g1
	cmp	%i5, %g1
	bne,a,pt %xcc, .L994
	 ldd	[%i1+%g1], %f8
	add	%i3, %i3, %g3
	cmp	%g4, %g3
	be,pn	%icc, .L965
	 srl	%g3, 0, %g4
	sllx	%g4, 2, %i4
	lduw	[%i1+%i4], %g1
	st	%g1, [%i0+%i4]
.L965:
	cmp	%g5, %i2
.L993:
	bgeu,pn	%icc, .L999
	 nop
	sub	%i2, %g5, %i5
	add	%i5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L968
	 srl	%g5, 0, %g1
	add	%g1, 1, %g2
	add	%i0, %g1, %g3
	add	%i1, %g1, %g4
	add	%i1, %g2, %g2
	or	%g4, %g3, %o7
	sub	%g3, %g2, %g2
	mov	0, %i3
	cmp	%g2, 6
	mov	0, %i4
	and	%o7, 7, %o7
	movre	%o7, 1, %i4
	movgu	%xcc, 1, %i3
	andcc	%i3, %i4, %g0
	be,pn	%icc, .L968
	 srl	%i5, 3, %i4
	mov	0, %g1
	sllx	%i4, 3, %g2
	ldd	[%g4+%g1], %f0
.L995:
	std	%f0, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L995
	 ldd	[%g4+%g1], %f0
	and	%i5, -8, %g1
	andcc	%i5, 7, %g0
	be,pn	%xcc, .L1000
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g5
	add	%g1, 1, %i5
	ldub	[%i1+%g5], %g3
	cmp	%i5, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g3, [%i0+%g5]
	srl	%i5, 0, %i3
	add	%g1, 2, %i4
	ldub	[%i1+%i3], %g4
	cmp	%i4, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%i3]
	srl	%i4, 0, %g5
	add	%g1, 3, %g2
	ldub	[%i1+%g5], %i5
	cmp	%g2, %i2
	bgeu,pn	%icc, .L1000
	 stb	%i5, [%i0+%g5]
	srl	%g2, 0, %i3
	add	%g1, 4, %g3
	ldub	[%i1+%i3], %i4
	cmp	%g3, %i2
	bgeu,pn	%icc, .L1000
	 stb	%i4, [%i0+%i3]
	srl	%g3, 0, %g5
	add	%g1, 5, %g2
	ldub	[%i1+%g5], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%g5]
	srl	%g2, 0, %i5
	add	%g1, 6, %g1
	ldub	[%i1+%i5], %i3
	cmp	%g1, %i2
	bgeu,pn	%icc, .L1000
	 stb	%i3, [%i0+%i5]
	srl	%g1, 0, %g1
	ldub	[%i1+%g1], %i1
	stb	%i1, [%i0+%g1]
.L1000:
	return	%i7+8
	 nop
.L991:
	brz,pn	%i2, .L1000
	 srl	%g5, 0, %g1
.L968:
	ldub	[%i1+%g1], %g3
.L996:
	stb	%g3, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
	bgu,a,pt %icc, .L996
	 ldub	[%i1+%g1], %g3
	return	%i7+8
	 nop
.L990:
	brz,pn	%i2, .L1000
	 srl	%g1, 0, %g1
	ldub	[%i1+%g1], %g2
.L997:
	stb	%g2, [%i0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L997
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L961:
	sllx	%g4, 2, %i3
	mov	0, %g1
	lduw	[%i1+%g1], %g2
.L998:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %i3
	bne,a,pt %xcc, .L998
	 lduw	[%i1+%g1], %g2
	ba,pt	%xcc, .L993
	 cmp	%g5, %i2
.L999:
	return	%i7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.align 32
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %g1
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__modi, .-__modi
	.align 4
	.align 32
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	add	%sp, -144, %sp
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtod	%f8, %f0
	.size	__uitod, .-__uitod
	.align 4
	.align 32
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	add	%sp, -144, %sp
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtos	%f8, %f0
	.size	__uitof, .-__uitof
	.align 4
	.align 32
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L1009
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtod	%f8, %f0
.L1009:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f0
	add	%sp, 144, %sp
	fxtod	%f0, %f2
	jmp	%o7+8
	 faddd	%f2, %f2, %f0
	.size	__ulltod, .-__ulltod
	.align 4
	.align 32
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L1012
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtos	%f8, %f0
.L1012:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f0
	add	%sp, 144, %sp
	fxtos	%f0, %f1
	jmp	%o7+8
	 fadds	%f1, %f1, %f0
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
	sub	%o0, %o1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	__umodi, .-__umodi
	.align 4
	.align 32
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	sra	%o0, 15, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1017
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1033
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1030
	 mov	0, %g2
	mov	14, %g1
	movre	%o0, 1, %g2
	sra	%o0, 1, %g3
	add	%g2, 15, %g4
	cmp	%g3, 0
	move	%icc, %g4, %g1
.L1017:
.L1033:
	jmp	%o7+8
	 and	%g1, 31, %o0
	ba,pt	%xcc, .L1017
	 mov	12, %g1
	ba,pt	%xcc, .L1017
	 mov	3, %g1
	ba,pt	%xcc, .L1017
	 mov	5, %g1
	ba,pt	%xcc, .L1017
	 mov	7, %g1
	ba,pt	%xcc, .L1017
	 mov	9, %g1
	ba,pt	%xcc, .L1017
	 mov	11, %g1
.L1030:
	ba,pt	%xcc, .L1017
	 mov	13, %g1
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%xcc, .L1037
	 andcc	%o0, 2, %g0
	bne,pn	%xcc, .L1038
	 andcc	%o0, 4, %g0
	bne,pn	%xcc, .L1039
	 andcc	%o0, 8, %g0
	bne,pn	%xcc, .L1040
	 andcc	%o0, 16, %g0
	bne,pn	%xcc, .L1041
	 andcc	%o0, 32, %g0
	bne,pn	%xcc, .L1042
	 andcc	%o0, 64, %g0
	bne,pn	%xcc, .L1043
	 andcc	%o0, 128, %g0
	bne,pn	%xcc, .L1044
	 andcc	%o0, 256, %g0
	bne,pn	%xcc, .L1045
	 andcc	%o0, 512, %g0
	bne,pn	%xcc, .L1046
	 andcc	%o0, 1024, %g0
	bne,pn	%xcc, .L1047
	 andcc	%o0, 2048, %g0
	bne,pn	%xcc, .L1048
	 sethi	%hi(4096), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1049
	 sethi	%hi(8192), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1050
	 sethi	%hi(16384), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1053
	 mov	14, %g3
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g2
	add	%g2, 15, %g3
.L1036:
.L1053:
	jmp	%o7+8
	 and	%g3, 31, %o0
.L1037:
	ba,pt	%xcc, .L1036
	 mov	0, %g3
.L1038:
	ba,pt	%xcc, .L1036
	 mov	1, %g3
.L1049:
	ba,pt	%xcc, .L1036
	 mov	12, %g3
.L1039:
	ba,pt	%xcc, .L1036
	 mov	2, %g3
.L1040:
	ba,pt	%xcc, .L1036
	 mov	3, %g3
.L1041:
	ba,pt	%xcc, .L1036
	 mov	4, %g3
.L1042:
	ba,pt	%xcc, .L1036
	 mov	5, %g3
.L1043:
	ba,pt	%xcc, .L1036
	 mov	6, %g3
.L1044:
	ba,pt	%xcc, .L1036
	 mov	7, %g3
.L1045:
	ba,pt	%xcc, .L1036
	 mov	8, %g3
.L1046:
	ba,pt	%xcc, .L1036
	 mov	9, %g3
.L1047:
	ba,pt	%xcc, .L1036
	 mov	10, %g3
.L1048:
	ba,pt	%xcc, .L1036
	 mov	11, %g3
.L1050:
	ba,pt	%xcc, .L1036
	 mov	13, %g3
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC32:
	.long	1191182336
	.section	".text"
	.align 4
	.align 32
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	05
__fixunssfsi:
	add	%sp, -144, %sp
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f8
	fcmpes	%fcc0, %f1, %f8
	fbge,a,pn %fcc0, .L1060
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f0
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1060:
	sethi	%hi(32768), %g1
	fstox	%f1, %f2
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
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
	sra	%o0, 3, %o5
	and	%g2, 1, %o2
	add	%g1, %g3, %g1
	and	%o5, 1, %o3
	sra	%o0, 4, %g5
	add	%g1, %o2, %g1
	and	%g5, 1, %o4
	add	%g1, %o3, %g1
	sra	%o0, 5, %g4
	add	%g1, %o4, %g1
	sra	%o0, 6, %g3
	and	%g4, 1, %o5
	sra	%o0, 7, %g2
	and	%g3, 1, %g4
	add	%g1, %o5, %g1
	and	%g2, 1, %g3
	sra	%o0, 8, %o2
	add	%g1, %g4, %g1
	sra	%o0, 10, %g5
	add	%g1, %g3, %g1
	sra	%o0, 12, %g2
	and	%o2, 1, %o2
	sra	%o0, 9, %o3
	and	%g5, 1, %o4
	sra	%o0, 14, %g3
	and	%g2, 1, %g5
	sra	%o0, 11, %o5
	and	%o3, 1, %o3
	sra	%o0, 15, %g2
	and	%o5, 1, %o5
	sra	%o0, 13, %g4
	add	%g1, %o2, %o0
	add	%o0, %o3, %o3
	and	%g4, 1, %g4
	add	%o3, %o4, %o4
	and	%g3, 1, %o2
	add	%o4, %o5, %o5
	add	%o5, %g5, %g5
	add	%g5, %g4, %g1
	add	%g1, %o2, %g4
	add	%g4, %g2, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
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
	sra	%o0, 3, %o5
	and	%g2, 1, %o2
	add	%g1, %g3, %g1
	and	%o5, 1, %o3
	sra	%o0, 4, %g5
	add	%g1, %o2, %g1
	and	%g5, 1, %o4
	add	%g1, %o3, %g1
	sra	%o0, 5, %g4
	add	%g1, %o4, %g1
	sra	%o0, 6, %g3
	and	%g4, 1, %o5
	sra	%o0, 7, %g2
	and	%g3, 1, %g4
	add	%g1, %o5, %g1
	and	%g2, 1, %g3
	sra	%o0, 8, %o2
	add	%g1, %g4, %g1
	sra	%o0, 10, %g5
	add	%g1, %g3, %g1
	sra	%o0, 12, %g2
	and	%o2, 1, %o2
	sra	%o0, 9, %o3
	and	%g5, 1, %o4
	sra	%o0, 14, %g3
	and	%g2, 1, %g5
	sra	%o0, 11, %o5
	and	%o3, 1, %o3
	sra	%o0, 15, %g2
	and	%o5, 1, %o5
	sra	%o0, 13, %g4
	add	%g1, %o2, %o0
	add	%o0, %o3, %o3
	and	%g4, 1, %g4
	add	%o3, %o4, %o4
	and	%g3, 1, %o2
	add	%o4, %o5, %o5
	add	%o5, %g5, %g5
	add	%g5, %g4, %g1
	add	%g1, %o2, %g4
	add	%g4, %g2, %g3
	jmp	%o7+8
	 srl	%g3, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	brz,pn	%o0, .L1064
	 mov	0, %g2
.L1065:
	and	%o0, 1, %g1
	srl	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%o1, %o1, %o1
	bne,pt	%icc, .L1065
	 add	%g2, %g1, %g2
.L1064:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L1069
	 mov	0, %g2
	brz,pn	%o1, .L1069
	 nop
.L1070:
	and	%o1, 1, %g1
	add	%o0, %o0, %g3
	srlx	%o1, 1, %o1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srl	%g3, 0, %o0
	brnz,pt	%o1, .L1070
	 add	%g2, %g1, %g2
.L1069:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.align 32
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1077
	 mov	1, %g1
	ba,pt	%xcc, .L1094
	 cmp	%o0, %o1
.L1080:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g5
	andcc	%g4, %g5, %g0
	be,pn	%icc, .L1079
	 srl	%g2, 0, %o1
.L1077:
	cmp	%o1, 0
	bge,pt	%icc, .L1080
	 add	%o1, %o1, %g2
.L1081:
	mov	0, %g3
.L1083:
	sub	%o0, %o1, %g4
	cmp	%o0, %o1
	subx	%g0, -1, %g5
	mov	0, %g2
	cmp	%g5, 0
	movne	%icc, %g1, %g2
	movne	%icc, %g4, %o0
	srl	%g1, 1, %g1
	or	%g3, %g2, %g3
	srlx	%o1, 1, %o1
	cmp	%g1, 0
	bne,pt	%icc, .L1083
	 srl	%o0, 0, %o0
.L1082:
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L1079:
	cmp	%g1, 0
	bne,pt	%icc, .L1081
	 mov	0, %g3
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L1094:
	sub	%o0, %o1, %o1
	movlu	%icc, %o0, %o1
	subx	%g0, -1, %g3
	ba,pt	%xcc, .L1082
	 srl	%o1, 0, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	fcmpes	%fcc1, %f1, %f3
	fbl,pn	%fcc1, .L1098
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L1098:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	fcmped	%fcc3, %f0, %f2
	fbl,pn	%fcc3, .L1101
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L1101:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.align 32
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	jmp	%o7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.align 32
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	jmp	%o7+8
	 mulx	%o0, %o1, %o0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.align 32
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1115
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L1108
	 mov	0, %g5
	mov	0, %o4
.L1107:
	mov	1, %g3
	mov	0, %g5
.L1109:
	sra	%o1, 1, %g4
	and	%g3, 0xff, %g2
	and	%o1, 1, %g1
	cmp	%g0, %g4
	xor	%g2, 32, %g2
	sub	%g0, %g1, %g1
	sra	%g4, 0, %o1
	and	%g1, %o0, %g1
	addx	%g0, 0, %g4
	add	%o0, %o0, %o5
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	add	%g3, 1, %g3
	add	%g5, %g1, %g5
	andcc	%g4, %g2, %g0
	bne,pt	%icc, .L1109
	 sra	%o5, 0, %o0
	sub	%g0, %g5, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g5
.L1108:
	jmp	%o7+8
	 sra	%g5, 0, %o0
.L1115:
	mov	1, %o4
	ba,pt	%xcc, .L1107
	 sra	%o1, 0, %o1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	mov	1, %g1
	brlz,pn	%o0, .L1139
	 mov	0, %o4
.L1117:
	brgez,pt %o1, .L1140
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	mov	%g1, %o4
.L1140:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1137
	 mov	1, %g2
	cmp	%g1, 0
.L1141:
	bl,pn	%icc, .L1124
	 mov	0, %o0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1141
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1122
	 mov	0, %o0
	mov	0, %o0
.L1124:
	mov	0, %o1
	cmp	%g3, %g1
	subx	%g0, -1, %o5
	sub	%g3, %g1, %g5
	cmp	%o5, 0
	movne	%icc, %g2, %o1
	srl	%g2, 1, %g2
	movne	%icc, %g5, %g3
	srl	%g1, 1, %g1
	cmp	%g2, 0
	bne,pt	%icc, .L1124
	 or	%o0, %o1, %o0
.L1126:
	srl	%o0, 0, %o0
.L1122:
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1139:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1117
	 mov	1, %o4
.L1137:
	ba,pt	%xcc, .L1126
	 subx	%g0, -1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L1143
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1143:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %g4
	cmp	%o0, %g4
	bleu,pn	%icc, .L1162
	 mov	%g4, %g1
	cmp	%g1, 0
.L1166:
	bl,pn	%icc, .L1165
	 sub	%g3, %g1, %o1
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %o0
	andcc	%g5, %o0, %g0
	bne,pt	%icc, .L1166
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1167
	 srl	%g3, 0, %o0
.L1160:
	sub	%g3, %g1, %o1
.L1165:
	cmp	%g3, %g1
	srl	%g2, 1, %g2
	movgeu	%icc, %o1, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L1160
	 srl	%g1, 1, %g1
.L1147:
	srl	%g3, 0, %o0
.L1167:
	cmp	%o5, 0
	sub	%g0, %o0, %g1
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1162:
	sub	%o0, %g4, %g2
	ba,pt	%xcc, .L1147
	 movgeu	%icc, %g2, %g3
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -176, %sp
	cmp	%i1, %i0
	blu,pt	%icc, .L1169
	 mov	1, %g4
	ba,pt	%xcc, .L1231
	 xor	%i1, %i0, %g1
.L1172:
	srl	%g5, 16, %i4
	cmp	%g1, %i0
	addx	%g0, 0, %i5
	cmp	%g0, %g5
	addx	%g0, 0, %g5
	andcc	%i5, %g5, %g0
	be,pn	%icc, .L1171
	 mov	%g3, %g2
	mov	%g3, %g4
	mov	%g1, %i1
.L1169:
	sllx	%i1, 49, %g1
	add	%g4, %g4, %g3
	sll	%i1, 16, %i3
	srlx	%g1, 48, %g1
	cmp	%i3, 0
	bge,pt	%icc, .L1172
	 sll	%g3, 16, %g5
	sub	%i0, %i1, %g3
	cmp	%i0, %i1
	subx	%g0, -1, %i4
	mov	0, %g2
	cmp	%i4, 0
	movne	%icc, %g3, %i0
	movne	%icc, %g4, %g2
	sll	%g4, 16, %g5
	srl	%g5, 17, %g1
	mov	%g2, %i3
	sllx	%i0, 48, %g4
	mov	%g1, %i4
	srlx	%i1, 1, %i5
	cmp	%g1, 0
	be,pn	%icc, .L1174
	 srlx	%g4, 48, %i0
.L1176:
	mov	0, %g3
	cmp	%i0, %i5
	subx	%g0, -1, %g1
	sub	%i0, %i5, %i5
	cmp	%g1, 0
	srl	%g5, 18, %g2
	mov	%g3, %g1
	movne	%icc, %i5, %i0
	movne	%icc, %i4, %g1
	sllx	%i0, 48, %i4
	cmp	%g2, 0
	srlx	%i1, 2, %g4
	or	%g1, %i3, %g1
	srl	%g5, 18, %o7
	mov	%g1, %g2
	be,pn	%icc, .L1174
	 srlx	%i4, 48, %i0
	srl	%g5, 19, %i4
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	sub	%i0, %g4, %g4
	cmp	%g2, 0
	movne	%icc, %g4, %i0
	srlx	%i1, 3, %i5
	mov	%g3, %g4
	movne	%icc, %o7, %g4
	sllx	%i0, 48, %i0
	cmp	%i4, 0
	srl	%g5, 19, %i3
	or	%g1, %g4, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 20, %i4
	cmp	%i0, %i5
	subx	%g0, -1, %g2
	sub	%i0, %i5, %i5
	cmp	%g2, 0
	movne	%icc, %i5, %i0
	srl	%g5, 20, %o7
	mov	%g3, %i5
	movne	%icc, %i3, %i5
	sllx	%i0, 48, %i3
	cmp	%i4, 0
	srlx	%i1, 4, %g4
	or	%g1, %i5, %g1
	srlx	%i3, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 21, %i4
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	sub	%i0, %g4, %g4
	cmp	%g2, 0
	movne	%icc, %g4, %i0
	srl	%g5, 21, %i3
	mov	%g3, %g4
	movne	%icc, %o7, %g4
	sllx	%i0, 48, %i0
	cmp	%i4, 0
	srlx	%i1, 5, %i5
	or	%g1, %g4, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 22, %i4
	cmp	%i0, %i5
	subx	%g0, -1, %g2
	sub	%i0, %i5, %i5
	cmp	%g2, 0
	movne	%icc, %i5, %i0
	srl	%g5, 22, %o7
	mov	%g3, %i5
	movne	%icc, %i3, %i5
	sllx	%i0, 48, %i3
	cmp	%i4, 0
	srlx	%i1, 6, %g4
	or	%g1, %i5, %g1
	srlx	%i3, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 23, %i4
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	sub	%i0, %g4, %g4
	cmp	%g2, 0
	movne	%icc, %g4, %i0
	srl	%g5, 23, %i3
	mov	%g3, %g4
	movne	%icc, %o7, %g4
	sllx	%i0, 48, %i0
	cmp	%i4, 0
	srlx	%i1, 7, %i5
	or	%g1, %g4, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 24, %i4
	cmp	%i0, %i5
	subx	%g0, -1, %g2
	sub	%i0, %i5, %i5
	cmp	%g2, 0
	movne	%icc, %i5, %i0
	srlx	%i1, 8, %g4
	mov	%g3, %i5
	movne	%icc, %i3, %i5
	sllx	%i0, 48, %i3
	cmp	%i4, 0
	srlx	%i3, 48, %i0
	or	%g1, %i5, %g1
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 25, %i3
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	sub	%i0, %g4, %g4
	cmp	%g2, 0
	movne	%icc, %g4, %i0
	srl	%g5, 25, %o7
	mov	%g3, %g4
	movne	%icc, %i4, %g4
	sllx	%i0, 48, %i0
	cmp	%i3, 0
	srlx	%i1, 9, %i5
	or	%g1, %g4, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 26, %i4
	cmp	%i0, %i5
	subx	%g0, -1, %g2
	sub	%i0, %i5, %i5
	cmp	%g2, 0
	movne	%icc, %i5, %i0
	srl	%g5, 26, %i3
	mov	%g3, %i5
	movne	%icc, %o7, %i5
	sllx	%i0, 48, %i0
	cmp	%i4, 0
	srlx	%i1, 10, %g4
	or	%g1, %i5, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 27, %i4
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	sub	%i0, %g4, %g4
	cmp	%g2, 0
	movne	%icc, %g4, %i0
	srl	%g5, 27, %o7
	mov	%g3, %g4
	movne	%icc, %i3, %g4
	sllx	%i0, 48, %i3
	cmp	%i4, 0
	srlx	%i1, 11, %i5
	or	%g1, %g4, %g1
	srlx	%i3, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 28, %i4
	cmp	%i0, %i5
	subx	%g0, -1, %g2
	sub	%i0, %i5, %i5
	cmp	%g2, 0
	movne	%icc, %i5, %i0
	srl	%g5, 28, %i3
	mov	%g3, %i5
	movne	%icc, %o7, %i5
	sllx	%i0, 48, %i0
	cmp	%i4, 0
	srlx	%i1, 12, %g4
	or	%g1, %i5, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 29, %i4
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	sub	%i0, %g4, %g4
	cmp	%g2, 0
	movne	%icc, %g4, %i0
	srl	%g5, 29, %o7
	mov	%g3, %g4
	movne	%icc, %i3, %g4
	sllx	%i0, 48, %i3
	cmp	%i4, 0
	srlx	%i1, 13, %i5
	or	%g1, %g4, %g1
	srlx	%i3, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	srl	%g5, 30, %i4
	cmp	%i0, %i5
	subx	%g0, -1, %g2
	sub	%i0, %i5, %i5
	cmp	%g2, 0
	movne	%icc, %i5, %i0
	srl	%g5, 30, %i3
	mov	%g3, %i5
	movne	%icc, %o7, %i5
	sllx	%i0, 48, %i0
	cmp	%i4, 0
	srlx	%i1, 14, %g4
	or	%g1, %i5, %g1
	srlx	%i0, 48, %i0
	be,pn	%icc, .L1174
	 mov	%g1, %g2
	sub	%i0, %g4, %i4
	cmp	%i0, %g4
	subx	%g0, -1, %g2
	srlx	%i1, 15, %i1
	cmp	%g2, 0
	movne	%icc, %i4, %i0
	movne	%icc, %i3, %g3
	cmp	%g5, 0
	sllx	%i0, 48, %g5
	or	%g1, %g3, %g1
	srlx	%g5, 48, %i0
	bge,pn	%icc, .L1174
	 mov	%g1, %g2
	sub	%i0, %i1, %g3
	cmp	%i0, %i1
	movgeu	%icc, %g3, %i0
	subx	%g0, -1, %i3
	sllx	%i0, 48, %g4
	or	%g1, %i3, %g2
	srlx	%g4, 48, %i0
.L1174:
	movre	%i2, %g2, %i0
	sllx	%i0, 48, %i2
	return	%i7+8
	 srlx	%o2, 48, %o0
.L1171:
	cmp	%i4, 0
	be,pn	%icc, .L1174
	 sub	%i0, %g1, %o7
	cmp	%i0, %g1
	subx	%g0, -1, %i5
	sethi	%hi(31744), %i4
	cmp	%i5, 0
	movne	%icc, %o7, %i0
	or	%i4, 1023, %i4
	mov	0, %i3
	sllx	%i0, 48, %i0
	and	%i1, %i4, %i5
	movne	%icc, %g3, %i3
	sll	%g2, 16, %g5
	and	%i4, %g4, %i4
	srlx	%i0, 48, %i0
	ba,pt	%xcc, .L1176
	 mov	%g1, %i1
.L1231:
	sub	%i0, %i1, %i1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	and	%g2, 0xff, %g2
	cmp	%g1, 0
	move	%icc, %i1, %i0
	sllx	%i0, 48, %i0
	ba,pt	%xcc, .L1174
	 srlx	%i0, 48, %i0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	cmp	%o1, %o0
	blu,pt	%xcc, .L1233
	 sethi	%hi(2147483648), %g5
	ba,pt	%xcc, .L1250
	 mov	0, %g4
.L1236:
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movrne	%g1, 1, %g3
	movgu	%xcc, 1, %g2
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1235
	 nop
.L1233:
	and	%o1, %g5, %g2
	brz,pt	%g2, .L1236
	 mov	0, %g3
.L1237:
	mov	0, %g4
.L1239:
	mov	0, %g2
	cmp	%o0, %o1
	mov	%g2, %g3
	sub	%o0, %o1, %g5
	movgeu	%xcc, 1, %g3
	srlx	%o1, 1, %o1
	cmp	%g3, 0
	movne	%icc, %g1, %g2
	srlx	%g1, 1, %g1
	movrne	%g3, %g5, %o0
	brnz,pt	%g1, .L1239
	 or	%g4, %g2, %g4
.L1238:
	jmp	%o7+8
	 movre	%o2, %g4, %o0
.L1235:
	brnz,pt	%g1, .L1237
	 mov	0, %g4
	jmp	%o7+8
	 movre	%o2, %g4, %o0
.L1250:
	sub	%o0, %o1, %o1
	movleu	%xcc, 1, %g4
	movrne	%g4, %o1, %o0
	ba,pt	%xcc, .L1238
	 and	%g4, 0xff, %g4
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1254
	 mov	%o0, %g1
	sll	%o0, %o1, %g1
	mov	0, %o0
.L1255:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %g5
	or	%g5, %g1, %o0
.L1259:
	jmp	%o7+8
	 nop
.L1254:
	brz,pn	%o1, .L1259
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%g1, %g3, %g1
	sll	%g2, %o1, %g4
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1255
	 or	%g1, %g4, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1261
	 nop
	sllx	%o1, %o2, %o0
	mov	0, %o2
	mov	%o2, %o1
.L1265:
	jmp	%o7+8
	 nop
.L1261:
	brz,pn	%o2, .L1265
	 nop
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %g1
	sllx	%o1, %o2, %o2
	srlx	%o1, %g1, %o1
	or	%o1, %o0, %o0
	jmp	%o7+8
	 mov	%o2, %o1
	.size	__ashlti3, .-__ashlti3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1267
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %g4
	sra	%g1, %o1, %g1
.L1268:
	srl	%g1, 0, %g1
	sllx	%g4, 32, %g5
	or	%g5, %g1, %o0
.L1272:
	jmp	%o7+8
	 nop
.L1267:
	brz,pn	%o1, .L1272
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	srl	%g1, %o1, %g1
	sll	%o0, %g2, %g3
	sra	%o0, %o1, %g4
	ba,pt	%xcc, .L1268
	 or	%g3, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1274
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L1278:
	jmp	%o7+8
	 nop
.L1274:
	brz,pn	%o2, .L1278
	 nop
	srax	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	or	%o0, %o1, %o1
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ashrti3, .-__ashrti3
	.align 4
	.align 32
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	mov	255, %g2
	sethi	%hi(16711680), %o4
	sllx	%o0, 56, %g5
	sethi	%hi(4278190080), %o5
	sllx	%g2, 8, %g3
	srlx	%o0, 56, %g1
	srlx	%o0, 40, %g4
	or	%g1, %g5, %g1
	srlx	%o0, 8, %g5
	and	%g4, %g3, %g4
	srlx	%o0, 24, %g3
	or	%g1, %g4, %g1
	and	%g3, %o4, %o4
	and	%g5, %o5, %g5
	sllx	%o0, 8, %g4
	or	%g1, %o4, %g1
	sllx	%g2, 32, %o4
	or	%g1, %g5, %g1
	sllx	%o0, 24, %g3
	and	%g4, %o4, %g5
	sllx	%g2, 40, %o5
	or	%g1, %g5, %g1
	sllx	%o0, 40, %o0
	and	%g3, %o5, %g4
	sllx	%g2, 48, %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %o4
	jmp	%o7+8
	 or	%g1, %o4, %o0
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.align 32
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	sethi	%hi(64512), %g3
	sethi	%hi(16711680), %g4
	sll	%o0, 24, %g5
	or	%g3, 768, %g3
	srl	%o0, 8, %g2
	srl	%o0, 24, %g1
	sll	%o0, 8, %o0
	or	%g1, %g5, %g1
	and	%g2, %g3, %g5
	and	%o0, %g4, %g4
	or	%g1, %g5, %g1
	or	%g1, %g4, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.align 32
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	sethi	%hi(64512), %g1
	mov	16, %o4
	or	%g1, 1023, %g4
	or	%g1, 768, %g3
	mov	8, %o5
	cmp	%g4, %o0
	subx	%g0, -1, %g1
	sll	%g1, 4, %g4
	mov	4, %g5
	sub	%o4, %g4, %g1
	mov	2, %g2
	srl	%o0, %g1, %g1
	and	%g1, %g3, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o4
	sll	%o4, 3, %g3
	sub	%o5, %g3, %o5
	add	%g3, %g4, %g4
	srl	%g1, %o5, %g1
	and	%g1, 240, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o4
	sll	%o4, 2, %g3
	sub	%g5, %g3, %g5
	add	%g3, %g4, %o5
	srl	%g1, %g5, %g1
	and	%g1, 12, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %o0
	add	%o0, %o0, %o4
	sub	%g2, %o4, %g5
	add	%o4, %o5, %g3
	srl	%g1, %g5, %g1
	sub	%g2, %g1, %g2
	andcc	%g1, 2, %g0
	movne	%xcc, 0, %g2
	add	%g2, %g3, %o5
	jmp	%o7+8
	 sra	%o5, 0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.align 32
	.global __clzti2
	.type	__clzti2, #function
	.proc	04
__clzti2:
	save	%sp, -176, %sp
	mov	0, %g1
	mov	0, %i5
	movrne	%i0, -1, %g1
	movrne	%i0, %g0, %i1
	and	%g1, %i0, %g1
	movre	%i0, 1, %i5
	call	__clzdi2, 0
	 or	%g1, %i1, %o0
	sll	%i5, 6, %g2
	add	%g2, %o0, %g3
	return	%i7+8
	 sra	%g3, 0, %o0
	.size	__clzti2, .-__clzti2
	.align 4
	.align 32
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	srax	%o0, 32, %g3
	srax	%o1, 32, %g2
	cmp	%g3, %g2
	bl,pn	%icc, .L1284
	 mov	0, %g1
	bg,pn	%icc, .L1284
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1284
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1284:
	jmp	%o7+8
	 and	%g1, 3, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.align 32
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	srax	%o0, 32, %g3
	srax	%o1, 32, %g2
	cmp	%g3, %g2
	bl,pn	%icc, .L1290
	 mov	-1, %g1
	bg,pn	%icc, .L1290
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1290
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1290:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.align 32
	.global __cmpti2
	.type	__cmpti2, #function
	.proc	04
__cmpti2:
	cmp	%o0, %o2
	bl,pn	%xcc, .L1295
	 mov	0, %g1
	bg,pn	%xcc, .L1295
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1295
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1295:
	jmp	%o7+8
	 and	%g1, 3, %o0
	.size	__cmpti2, .-__cmpti2
	.align 4
	.align 32
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	sethi	%hi(64512), %g1
	mov	2, %g4
	or	%g1, 1023, %g1
	and	%o0, %g1, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g3
	sll	%g3, 4, %g5
	srl	%o0, %g5, %g1
	and	%g1, 255, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %o0
	sll	%o0, 3, %g3
	srl	%g1, %g3, %g1
	add	%g3, %g5, %g5
	and	%g1, 15, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %o0
	sll	%o0, 2, %g3
	srl	%g1, %g3, %g1
	add	%g3, %g5, %g5
	and	%g1, 3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %o0
	add	%o0, %o0, %g3
	srl	%g1, %g3, %g1
	add	%g3, %g5, %g5
	and	%g1, 3, %g1
	xnor	%g0, %g1, %g2
	srl	%g1, 1, %g1
	and	%g2, 1, %o0
	sub	%g4, %g1, %g1
	sub	%g0, %o0, %g4
	and	%g4, %g1, %g3
	add	%g3, %g5, %g5
	jmp	%o7+8
	 sra	%g5, 0, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.align 32
	.global __ctzti2
	.type	__ctzti2, #function
	.proc	04
__ctzti2:
	save	%sp, -176, %sp
	mov	0, %g1
	mov	0, %o0
	movrne	%i1, -1, %g1
	movre	%i1, %i0, %o0
	and	%g1, %i1, %g1
	mov	0, %i0
	movre	%i1, 1, %i0
	call	__ctzdi2, 0
	 or	%o0, %g1, %o0
	sll	%i0, 6, %g2
	add	%g2, %o0, %g3
	return	%i7+8
	 sra	%g3, 0, %o0
	.size	__ctzti2, .-__ctzti2
	.align 4
	.align 32
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -176, %sp
	brnz,pt	%i1, .L1303
	 nop
	brnz,pt	%i0, .L1307
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1303:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1307:
	call	__ctzdi2, 0
	 mov	%i0, %o0
	add	%o0, 65, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
	.size	__ffsti2, .-__ffsti2
	.align 4
	.align 32
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	add	%sp, -144, %sp
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1309
	 srlx	%o0, 32, %g1
	mov	0, %g5
	srl	%g1, %o1, %g1
.L1310:
	st	%g5, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1308:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1309:
	brz,pn	%o1, .L1308
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %o1, %g1
	sll	%g2, %g3, %g4
	srl	%g2, %o1, %g5
	ba,pt	%xcc, .L1310
	 or	%g4, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1315
	 nop
	srlx	%o0, %o2, %o1
	mov	0, %o2
	mov	%o2, %o0
.L1319:
	jmp	%o7+8
	 nop
.L1315:
	brz,pn	%o2, .L1319
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g1
	srlx	%o0, %o2, %o2
	sllx	%o0, %g1, %o0
	or	%o0, %o1, %o1
	jmp	%o7+8
	 mov	%o2, %o0
	.size	__lshrti3, .-__lshrti3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	srl	%o0, 16, %g4
	sethi	%hi(64512), %g3
	srl	%o1, 16, %g2
	or	%g3, 1023, %g3
	and	%o0, %g3, %o0
	and	%o1, %g3, %o1
	smul	%o0, %o1, %g1
	smul	%g4, %g2, %g5
	smul	%o1, %g4, %o1
	srl	%g1, 16, %g4
	add	%o1, %g4, %o1
	smul	%o0, %g2, %g2
	and	%g1, %g3, %o0
	sll	%o1, 16, %g1
	srl	%g1, 16, %g4
	add	%o0, %g1, %o0
	srl	%o1, 16, %o1
	add	%g2, %g4, %g1
	and	%o0, %g3, %g3
	add	%o1, %g5, %g5
	sll	%g1, 16, %g2
	srl	%g1, 16, %g1
	add	%g3, %g2, %g4
	srl	%g4, 0, %o0
	add	%g5, %g1, %o1
	sllx	%o1, 32, %g5
	jmp	%o7+8
	 or	%o0, %g5, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	sethi	%hi(64512), %g4
	mov	-1, %g5
	srl	%o0, 16, %o5
	or	%g4, 1023, %g4
	and	%g4, %o0, %g3
	and	%g4, %o1, %g2
	smul	%g3, %g2, %g1
	srl	%g1, 16, %o2
	and	%g1, %g4, %g1
	smul	%g2, %o5, %g2
	srl	%o1, 16, %o4
	add	%g2, %o2, %g2
	sll	%g2, 16, %o2
	srax	%o1, 32, %o3
	add	%g1, %o2, %g1
	smul	%g3, %o4, %g3
	smul	%o5, %o4, %o5
	srax	%o0, 32, %o4
	and	%g1, %g4, %g1
	smul	%o0, %o3, %o0
	srl	%o2, 16, %o3
	srlx	%g5, 32, %g5
	add	%g3, %o3, %g3
	smul	%o1, %o4, %o1
	srl	%g2, 16, %o4
	sll	%g3, 16, %g4
	add	%o4, %o5, %o5
	srl	%g3, 16, %g2
	add	%g1, %g4, %g1
	add	%o5, %g2, %o2
	and	%g5, %g1, %g1
	sllx	%o2, 32, %o4
	or	%g1, %o4, %g1
	srax	%g1, 32, %o3
	and	%g1, %g5, %g1
	add	%o0, %o3, %g5
	add	%g5, %o1, %o0
	sllx	%o0, 32, %o1
	jmp	%o7+8
	 or	%g1, %o1, %o0
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.align 32
	.global __mulddi3
	.type	__mulddi3, #function
	.proc	05
__mulddi3:
	umul	%o0, %o1, %g1
	srlx	%o0, 32, %g2
	mov	-1, %g3
	srlx	%o1, 32, %g4
	srlx	%g1, 32, %g5
	umul	%o1, %g2, %o1
	srlx	%g3, 32, %g3
	add	%o1, %g5, %g5
	umul	%o0, %g4, %o0
	umul	%g2, %g4, %g4
	sllx	%g5, 32, %g2
	and	%g1, %g3, %g1
	srlx	%g5, 32, %o1
	add	%g1, %g2, %g1
	srlx	%g2, 32, %g5
	add	%o1, %g4, %g4
	add	%o0, %g5, %o0
	and	%g1, %g3, %g3
	sllx	%o0, 32, %g2
	srlx	%o0, 32, %o1
	add	%g4, %o1, %o0
	jmp	%o7+8
	 add	%g3, %g2, %o1
	.size	__mulddi3, .-__mulddi3
	.align 4
	.align 32
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	umul	%o1, %o3, %g3
	srlx	%o1, 32, %g5
	mov	-1, %g4
	srlx	%g3, 32, %o5
	umul	%o3, %g5, %g1
	srlx	%o3, 32, %g2
	add	%g1, %o5, %g1
	mulx	%o1, %o2, %o2
	mulx	%o3, %o0, %o0
	umul	%g5, %g2, %o3
	umul	%o1, %g2, %g5
	sllx	%g1, 32, %o1
	srlx	%o1, 32, %o4
	srlx	%g4, 32, %g4
	add	%g5, %o4, %g2
	srlx	%g1, 32, %g1
	and	%g3, %g4, %g3
	add	%g1, %o3, %g1
	add	%g3, %o1, %o5
	srlx	%g2, 32, %o3
	and	%o5, %g4, %g4
	sllx	%g2, 32, %g5
	add	%g1, %o3, %g1
	add	%o2, %g1, %g3
	add	%g4, %g5, %o1
	jmp	%o7+8
	 add	%g3, %o0, %o0
	.size	__multi3, .-__multi3
	.align 4
	.align 32
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	jmp	%o7+8
	 sub	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.align 32
	.global __negti2
	.type	__negti2, #function
	.proc	05
__negti2:
	mov	0, %g1
	sub	%g0, %o0, %o0
	movrne	%o1, 1, %g1
	sub	%g0, %o1, %o1
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	__negti2, .-__negti2
	.align 4
	.align 32
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	srlx	%o0, 32, %g2
	sethi	%hi(26624), %g1
	xor	%g2, %o0, %o0
	or	%g1, 406, %g1
	srl	%o0, 16, %g3
	xor	%g3, %o0, %g4
	srl	%g4, 8, %g5
	xor	%g5, %g4, %o0
	srl	%o0, 4, %g2
	xor	%g2, %o0, %g3
	and	%g3, 15, %g4
	sra	%g1, %g4, %g1
	jmp	%o7+8
	 and	%g1, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.align 32
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	xor	%o1, %o0, %o1
	sethi	%hi(26624), %g1
	srax	%o1, 32, %g2
	or	%g1, 406, %g1
	xor	%g2, %o1, %g3
	srl	%g3, 16, %g4
	xor	%g4, %g3, %g5
	srl	%g5, 8, %o0
	xor	%o0, %g5, %o1
	srl	%o1, 4, %g2
	xor	%g2, %o1, %g3
	and	%g3, 15, %g4
	sra	%g1, %g4, %g1
	jmp	%o7+8
	 and	%g1, 1, %o0
	.size	__parityti2, .-__parityti2
	.align 4
	.align 32
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	srl	%o0, 16, %g2
	sethi	%hi(26624), %g1
	xor	%g2, %o0, %o0
	or	%g1, 406, %g1
	srl	%o0, 8, %g3
	xor	%g3, %o0, %g4
	srl	%g4, 4, %g5
	xor	%g5, %g4, %g2
	and	%g2, 15, %o0
	sra	%g1, %o0, %g1
	jmp	%o7+8
	 and	%g1, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.align 32
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	sethi	%hi(1431655424), %g4
	sethi	%hi(858992640), %g3
	or	%g4, 341, %g4
	sethi	%hi(252644352), %g2
	sllx	%g4, 32, %o4
	or	%g3, 819, %g3
	add	%o4, %g4, %g4
	or	%g2, 783, %g2
	srlx	%o0, 1, %o5
	sllx	%g2, 32, %g5
	and	%o5, %g4, %o5
	sllx	%g3, 32, %g1
	sub	%o0, %o5, %o0
	add	%g1, %g3, %g1
	add	%g5, %g2, %g3
	srlx	%o0, 2, %g2
	and	%o0, %g1, %o4
	and	%g2, %g1, %g5
	add	%g5, %o4, %g4
	srlx	%g4, 4, %g1
	add	%g1, %g4, %g1
	and	%g1, %g3, %g1
	srlx	%g1, 32, %g3
	add	%g3, %g1, %o5
	srl	%o5, 16, %g1
	add	%g1, %o5, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %g2
	jmp	%o7+8
	 and	%g2, 127, %o0
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.align 32
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	sethi	%hi(1431655424), %g4
	sethi	%hi(252644352), %g3
	srl	%o0, 1, %g2
	or	%g4, 341, %g5
	or	%g3, 783, %g4
	and	%g2, %g5, %g3
	sub	%o0, %g3, %o0
	sethi	%hi(858992640), %g1
	srl	%o0, 2, %g2
	or	%g1, 819, %g1
	and	%o0, %g1, %g5
	and	%g2, %g1, %g1
	add	%g1, %g5, %g3
	srl	%g3, 4, %g1
	add	%g1, %g3, %g1
	and	%g1, %g4, %g1
	srl	%g1, 16, %g4
	add	%g4, %g1, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %g2
	jmp	%o7+8
	 and	%g2, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.align 32
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	sethi	%hi(1431655424), %g5
	mov	0, %g2
	srlx	%o1, 1, %g3
	or	%g5, 341, %o4
	sllx	%o0, 63, %g1
	sethi	%hi(858992640), %g5
	sllx	%o4, 32, %g4
	or	%g1, %g3, %g1
	add	%g4, %o4, %o4
	or	%g5, 819, %g3
	and	%g1, %o4, %g1
	mov	%g2, %g5
	srlx	%o0, 1, %o5
	sub	%o1, %g1, %g1
	and	%o5, %o4, %o5
	cmp	%g1, %o1
	movgu	%xcc, 1, %g5
	sllx	%g3, 32, %g4
	sub	%o0, %o5, %o0
	sub	%o0, %g5, %o5
	add	%g4, %g3, %o4
	srlx	%g1, 2, %o1
	and	%o5, %o4, %o0
	sllx	%o5, 62, %g3
	and	%g1, %o4, %g1
	srlx	%o5, 2, %g4
	or	%g3, %o1, %o1
	and	%g4, %o4, %g5
	and	%o1, %o4, %o4
	add	%o4, %g1, %g1
	sethi	%hi(252644352), %o5
	mov	%g2, %g3
	cmp	%g1, %o4
	srlx	%g1, 4, %o1
	add	%g5, %o0, %g4
	movlu	%xcc, 1, %g3
	or	%o5, 783, %o0
	sllx	%o0, 32, %g5
	add	%g5, %o0, %o4
	add	%g3, %g4, %o0
	sllx	%o0, 60, %g4
	srlx	%o0, 4, %o5
	or	%g4, %o1, %o1
	add	%o1, %g1, %g1
	add	%o5, %o0, %g5
	cmp	%g1, %o1
	movlu	%xcc, 1, %g2
	and	%g1, %o4, %g1
	add	%g2, %g5, %g2
	and	%g2, %o4, %g3
	add	%g3, %g1, %o4
	srlx	%o4, 32, %g1
	add	%g1, %o4, %o0
	srl	%o0, 16, %g1
	add	%g1, %o0, %g1
	srl	%g1, 8, %g4
	add	%g4, %g1, %o5
	jmp	%o7+8
	 and	%o5, 0xff, %o0
	.size	__popcountti2, .-__popcountti2
	.section	.rodata.cst8
	.align 8
.LC34:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	sethi	%hi(.LC34), %g2
	fmovd	%f0, %f8
	mov	%o1, %g1
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L1333
	 ldd	[%g2+%lo(.LC34)], %f0
.L1335:
	fmuld	%f0, %f8, %f0
.L1333:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1334
	 andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1335
	 srl	%g1, 31, %g4
	add	%g4, %g1, %g1
.L1341:
	fmuld	%f8, %f8, %f8
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1335
	 srl	%g1, 31, %g4
	ba,pt	%xcc, .L1341
	 add	%g4, %g1, %g1
.L1334:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1340
	 sethi	%hi(.LC34), %g1
	jmp	%o7+8
	 nop
.L1340:
	ldd	[%g1+%lo(.LC34)], %f2
	jmp	%o7+8
	 fdivd	%f2, %f0, %f0
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC36:
	.long	1065353216
	.section	".text"
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	sethi	%hi(.LC36), %g2
	mov	%o1, %g1
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L1343
	 ld	[%g2+%lo(.LC36)], %f0
.L1345:
	fmuls	%f0, %f1, %f0
.L1343:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1344
	 andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1345
	 srl	%g1, 31, %g4
	add	%g4, %g1, %g1
.L1351:
	fmuls	%f1, %f1, %f1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1345
	 srl	%g1, 31, %g4
	ba,pt	%xcc, .L1351
	 add	%g4, %g1, %g1
.L1344:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1350
	 sethi	%hi(.LC36), %g1
	jmp	%o7+8
	 nop
.L1350:
	ld	[%g1+%lo(.LC36)], %f8
	jmp	%o7+8
	 fdivs	%f8, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.align 32
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	srlx	%o0, 32, %g3
	srlx	%o1, 32, %g2
	cmp	%g3, %g2
	blu,pn	%icc, .L1353
	 mov	0, %g1
	bgu,pn	%icc, .L1353
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1353
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1353:
	jmp	%o7+8
	 and	%g1, 3, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.align 32
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	srlx	%o0, 32, %g3
	srlx	%o1, 32, %g2
	cmp	%g3, %g2
	blu,pn	%icc, .L1359
	 mov	-1, %g1
	bgu,pn	%icc, .L1359
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1359
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1359:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 4
	.align 32
	.global __ucmpti2
	.type	__ucmpti2, #function
	.proc	04
__ucmpti2:
	cmp	%o0, %o2
	blu,pn	%xcc, .L1364
	 mov	0, %g1
	bgu,pn	%xcc, .L1364
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1364
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1364:
	jmp	%o7+8
	 and	%g1, 3, %o0
	.size	__ucmpti2, .-__ucmpti2
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
	.global __ctzdi2
	.global __clzdi2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
