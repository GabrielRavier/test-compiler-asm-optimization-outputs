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
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L45:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L45
	 ldub	[%o1+%o2], %g1
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
	sub	%o0, %g2, %g2
	mov	0, %g4
	mov	0, %g3
	cmp	%g2, 6
	and	%g1, 7, %g1
	movre	%g1, 1, %g4
	movgu	%xcc, 1, %g3
	andcc	%g4, %g3, %g0
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
	ldub	[%o1+%g1], %g5
	cmp	%g2, 1
	be,pn	%xcc, .L49
	 stb	%g5, [%o0+%g1]
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
	ldub	[%o1+%g1], %g2
.L47:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L47
	 ldub	[%o1+%g1], %g2
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
	add	%o0, %o2, %o2
	ba,pt	%xcc, .L94
	 add	%o0, -1, %g2
.L96:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L97
	 add	%o2, -1, %o2
.L94:
	cmp	%o2, %g2
	bne,pt	%xcc, .L96
	 mov	%o2, %o0
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
	sll	%g1, 24, %g2
	cmp	%g2, 0
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
	cmp	%g2, 0
	be,pn	%icc, .L120
	 ldub	[%o0], %g1
.L112:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L114
	 ldsb	[%o0+1], %g2
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
	 and	%o5, 0xff, %o5
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
	and	%o5, 0xff, %o5
	sub	%o0, %o5, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L136:
	mov	0, %o0
	sub	%o0, %o5, %o0
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
	 mov	0, %g4
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
	addx	%g0, 0, %g3
	add	%o0, 1, %o0
	cmp	%g0, %o5
	subx	%g0, -1, %o5
	and	%g3, %o5, %g3
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L147
	 add	%g1, 1, %o4
.L145:
	sub	%g4, %g5, %g4
.L143:
.L156:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L154:
	ba,pt	%xcc, .L156
	 sub	%g4, %g5, %g4
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
	add	%o0, %o2, %o2
.L159:
	ldub	[%o0+1], %g2
	add	%o0, 2, %o0
	add	%o1, 2, %o1
	ldub	[%o0-2], %g1
	cmp	%o0, %o2
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
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g2, %o0, %o0
	.size	isblank, .-isblank
	.align 4
	.align 32
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	mov	0, %g1
	cmp	%o0, 31
	xor	%o0, 127, %o0
	movleu	%icc, 1, %g1
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
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
	add	%o0, -9, %g2
	mov	0, %g1
	xor	%o0, 32, %o0
	cmp	%g2, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
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
	add	%o0, -127, %g4
	mov	0, %g2
	mov	0, %g1
	cmp	%g4, 32
	movleu	%icc, 1, %g2
	cmp	%o0, 31
	movleu	%icc, 1, %g1
	orcc	%g2, %g1, %g0
	bne,pt	%icc, .L173
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L173
	 sethi	%hi(-65536), %g1
	mov	0, %g3
	or	%g1, 7, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 2
	movleu	%icc, 1, %g3
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
	or	%g4, 981, %g4
	add	%o0, %g1, %g1
	sethi	%hi(8192), %g3
	or	%g3, 39, %g3
	cmp	%g4, %g1
	subx	%g0, -1, %g4
	cmp	%g3, %o0
	subx	%g0, -1, %g1
	orcc	%g4, %g1, %g0
	bne,pn	%icc, .L179
	 mov	1, %g2
	sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g1
	add	%o0, %g3, %g3
	or	%g1, 1016, %g1
	cmp	%g3, %g1
	bleu,pn	%icc, .L179
	 sethi	%hi(-65536), %g1
	sethi	%hi(1048576), %g3
	or	%g1, 4, %g1
	or	%g3, 3, %g3
	add	%o0, %g1, %g1
	cmp	%g1, %g3
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
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L185
	 mov	1, %g1
	or	%o0, 32, %o0
	mov	0, %g1
	add	%o0, -97, %o0
	cmp	%o0, 5
	movleu	%icc, 1, %g1
.L185:
	jmp	%o7+8
	 and	%g1, 1, %o0
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
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
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
	and	%g2, %g3, %g2
	cmp	%g1, %g2
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
	save	%sp, -320, %sp
	std	%f0, [%fp+1935]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f2, [%fp+1943]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+2023]
	cmp	%o0, 3
	be,pn	%xcc, .L221
	 ldx	[%fp+1919], %g2
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+1991]
	cmp	%o0, 3
	be,pn	%xcc, .L222
	 ldd	[%fp+1935], %f8
	ldd	[%fp+1919], %f12
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g1
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g1, 63, %g1
	ldd	[%fp+1943], %f10
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L220
	 ldd	[%fp+1927], %f14
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L220:
	ldx	[%fp+1935], %g2
	add	%fp, 1951, %o1
	add	%fp, 1967, %o0
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1951]
	call	_Qp_flt, 0
	 stx	%g3, [%fp+1959]
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	ldd	[%fp+1919], %f8
	ldd	[%fp+1927], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L221:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L222:
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -144, %sp
	fcmpd	%fcc0, %f0, %f0
	fbu,a,pn %fcc0, .L230
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L224
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L226
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L224:
	fmovd	%f2, %f0
.L230:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L226:
	add	%sp, 144, %sp
	fmovdl	%fcc2, %f0, %f2
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
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L231
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L231
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L237
	 nop
	fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc1, %f1, %f3
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
	save	%sp, -320, %sp
	std	%f0, [%fp+1935]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f2, [%fp+1943]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+2023]
	cmp	%o0, 3
	be,pn	%xcc, .L241
	 ldx	[%fp+1919], %g2
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+1991]
	cmp	%o0, 3
	be,pn	%xcc, .L242
	 ldd	[%fp+1935], %f8
	ldd	[%fp+1919], %f0
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g1
	std	%f0, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g1, 63, %g1
	ldd	[%fp+1943], %f10
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L240
	 ldd	[%fp+1927], %f2
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
	return	%i7+8
	 fmovdne	%icc, %f10, %f2
.L240:
	ldx	[%fp+1935], %g2
	add	%fp, 1951, %o1
	add	%fp, 1967, %o0
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1951]
	call	_Qp_flt, 0
	 stx	%g3, [%fp+1959]
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L241:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L242:
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	return	%i7+8
	 nop
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	orcc	%o0, 0, %g1
	be,pn	%icc, .L247
	 sethi	%hi(s.0), %o0
	sethi	%hi(digits), %g4
	or	%o0, %lo(s.0), %o0
	or	%g4, %lo(digits), %g4
	mov	%o0, %g2
.L246:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L246
	 stb	%g3, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L247:
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
	srl	%o0, 0, %o0
	jmp	%o7+8
	 stx	%o0, [%g1+%lo(seed)]
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
	or	%g2, 813, %g2
	add	%g1, %g2, %g1
	mulx	%o0, %g1, %o0
	add	%o0, 1, %o0
	stx	%o0, [%g3+%lo(seed)]
	jmp	%o7+8
	 srlx	%o0, 33, %o0
	.size	rand, .-rand
	.align 4
	.align 32
	.global insque
	.type	insque, #function
	.proc	020
insque:
	brz,a,pn %o1, .L257
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L259
	 stx	%o0, [%g1+8]
.L259:
	jmp	%o7+8
	 nop
.L257:
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
	brz,pn	%g1, .L270
	 ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g2
.L270:
	brnz,a,pt %g2, .L269
	 stx	%g1, [%g2]
.L269:
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
	brz,pn	%l1, .L272
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L274
	 mov	0, %l0
.L283:
	cmp	%l1, %l0
	be,pn	%xcc, .L272
	 add	%i5, %i3, %i5
.L274:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	mov	%i5, %i0
	cmp	%o0, 0
	bne,pt	%icc, .L283
	 add	%l0, 1, %l0
.L285:
	return	%i7+8
	 nop
.L272:
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L285
	 add	%i1, %l1, %i0
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
	brz,pn	%l0, .L287
	 mov	0, %i5
	ba,pt	%xcc, .L295
	 mov	%i1, %o1
.L294:
	cmp	%l0, %i5
	be,pn	%xcc, .L287
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L295:
	call	%i4, 0
	 mov	%i0, %o0
	mov	%i1, %i2
	cmp	%o0, 0
	bne,pt	%icc, .L294
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
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	abs, .-abs
	.align 4
	.align 32
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	ldub	[%o0], %g4
	ba,pt	%xcc, .L320
	 mov	0, %g1
.L321:
	mov	0, %g1
	add	%o0, 1, %o0
.L320:
	sll	%g4, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %o5
	xor	%g2, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L321
	 ldub	[%o0+1], %g4
	sra	%g3, 24, %g3
	cmp	%g3, 43
	be,pn	%icc, .L300
	 cmp	%g3, 45
	bne,pt	%icc, .L322
	 add	%g2, -48, %g2
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L309
	 ldub	[%o0+1], %g4
	mov	1, %o5
.L303:
	mov	0, %o0
.L306:
	ldsb	[%g1+1], %g5
	sll	%o0, 2, %g2
	add	%g4, -48, %g3
	add	%g2, %o0, %g2
	add	%g1, 1, %g1
	sll	%g3, 24, %g3
	add	%g2, %g2, %g2
	sra	%g3, 24, %g3
	add	%g5, -48, %g5
	ldub	[%g1], %g4
	cmp	%g5, 9
	bleu,pt	%icc, .L306
	 sub	%g2, %g3, %o0
	sub	%g3, %g2, %g3
	cmp	%o5, 0
	move	%icc, %g3, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L322:
	mov	%o0, %g1
	cmp	%g2, 9
	bleu,pt	%icc, .L303
	 mov	0, %o5
.L309:
	mov	0, %o0
.L323:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L300:
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	mov	0, %o5
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L303
	 ldub	[%o0+1], %g4
	ba,pt	%xcc, .L323
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g3
	ba,pt	%xcc, .L347
	 mov	0, %g1
.L348:
	mov	0, %g1
	add	%o0, 1, %o0
.L347:
	sll	%g3, 24, %g4
	sra	%g4, 24, %g2
	add	%g2, -9, %o5
	xor	%g2, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L348
	 ldub	[%o0+1], %g3
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L327
	 cmp	%g4, 45
	bne,pt	%icc, .L349
	 add	%g2, -48, %g2
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L336
	 ldub	[%o0+1], %g3
	mov	1, %o5
.L330:
	mov	0, %g5
.L333:
	ldsb	[%g1+1], %g4
	sllx	%g5, 2, %g2
	add	%g3, -48, %g3
	add	%g2, %g5, %o0
	add	%g1, 1, %g1
	sllx	%g3, 56, %g2
	add	%o0, %o0, %o0
	srax	%g2, 56, %g2
	add	%g4, -48, %g4
	ldub	[%g1], %g3
	cmp	%g4, 9
	bleu,pt	%icc, .L333
	 sub	%o0, %g2, %g5
	sub	%g2, %o0, %g2
	cmp	%o5, 0
	move	%icc, %g2, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L349:
	mov	%o0, %g1
	cmp	%g2, 9
	bleu,pt	%icc, .L330
	 mov	0, %o5
.L336:
	mov	0, %g5
.L350:
	jmp	%o7+8
	 mov	%g5, %o0
.L327:
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	mov	0, %o5
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L330
	 ldub	[%o0+1], %g3
	ba,pt	%xcc, .L350
	 mov	0, %g5
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g3
	ba,pt	%xcc, .L371
	 mov	0, %g1
.L372:
	mov	0, %g1
	add	%o0, 1, %o0
.L371:
	sll	%g3, 24, %g4
	sra	%g4, 24, %g2
	add	%g2, -9, %o5
	xor	%g2, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L372
	 ldub	[%o0+1], %g3
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L354
	 cmp	%g4, 45
	be,a,pt	%icc, .L373
	 ldsb	[%o0+1], %g2
	add	%g2, -48, %g2
	mov	%o0, %g1
	cmp	%g2, 9
	bgu,pn	%icc, .L362
	 mov	0, %o5
.L356:
	mov	0, %g5
.L359:
	ldsb	[%g1+1], %g4
	sllx	%g5, 2, %g2
	add	%g3, -48, %g3
	add	%g2, %g5, %o0
	add	%g1, 1, %g1
	sllx	%g3, 56, %g2
	add	%o0, %o0, %o0
	srax	%g2, 56, %g2
	add	%g4, -48, %g4
	ldub	[%g1], %g3
	cmp	%g4, 9
	bleu,pt	%icc, .L359
	 sub	%o0, %g2, %g5
	sub	%g2, %o0, %g2
	cmp	%o5, 0
	move	%icc, %g2, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L373:
	add	%o0, 1, %g1
	mov	1, %o5
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L356
	 ldub	[%o0+1], %g3
.L362:
	mov	0, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L354:
	ldsb	[%o0+1], %g2
	add	%o0, 1, %g1
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L362
	 ldub	[%o0+1], %g3
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
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
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
	mov	%i2, %l1
	mov	%i0, %o0
	mulx	%i2, %i3, %i2
	add	%i1, %i2, %i2
	add	%l0, -1, %l0
	call	%i4, 0
	 mov	%i2, %o1
	cmp	%o0, 0
	be,pn	%icc, .L387
	 nop
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
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
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
	 srlx	%o2, 1, %g3
	mov	0, %g1
	mov	0, %g2
.L492:
	ldd	[%o1+%g1], %f8
	add	%g2, 1, %g2
	cmp	%g3, %g2
	std	%f8, [%o0+%g1]
	bne,pt	%xcc, .L492
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L512
	 nop
	and	%o2, -2, %o2
	sllx	%o2, 2, %o2
	lduw	[%o1+%o2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%o2]
.L498:
	mov	0, %g2
.L509:
	lduw	[%o1+%g2], %g3
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g3, [%o0+%g2]
	bne,pt	%xcc, .L509
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L487:
	brz,pn	%o2, .L512
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L511:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L511
	 lduw	[%o1+%g1], %g2
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
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L586:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L586
	 ldub	[%o0+%o2], %g1
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
	sub	%o1, %g2, %g2
	mov	0, %g4
	mov	0, %g3
	cmp	%g2, 6
	and	%g1, 7, %g1
	movre	%g1, 1, %g4
	movgu	%xcc, 1, %g3
	andcc	%g4, %g3, %g0
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
	ldub	[%o0+%g1], %g5
	cmp	%g2, 1
	be,pn	%xcc, .L590
	 stb	%g5, [%o1+%g1]
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
	ldub	[%o0+%g1], %g2
.L588:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L588
	 ldub	[%o0+%g1], %g2
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
	or	%o0, %o1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
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
	or	%o0, %o1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
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
	sub	%g0, %o1, %g1
	sll	%o0, %o1, %o1
	and	%g1, 15, %g1
	srl	%o0, %g1, %o0
	or	%o1, %o0, %o1
	sllx	%o1, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	rotl16, .-rotl16
	.align 4
	.align 32
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	and	%o1, 15, %o1
	sub	%g0, %o1, %g1
	srl	%o0, %o1, %o1
	and	%g1, 15, %g1
	sll	%o0, %g1, %o0
	or	%o1, %o0, %o1
	sllx	%o1, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	rotr16, .-rotr16
	.align 4
	.align 32
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	and	%o1, 7, %o1
	sub	%g0, %o1, %g1
	sll	%o0, %o1, %o1
	and	%g1, 7, %g1
	srl	%o0, %g1, %o0
	or	%o1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	rotl8, .-rotl8
	.align 4
	.align 32
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	and	%o1, 7, %o1
	sub	%g0, %o1, %g1
	srl	%o0, %o1, %o1
	and	%g1, 7, %g1
	sll	%o0, %g1, %o0
	or	%o1, %o0, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	rotr8, .-rotr8
	.align 4
	.align 32
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	srlx	%o0, 8, %g1
	sll	%o0, 8, %o0
	or	%g1, %o0, %o0
	sllx	%o0, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
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
	or	%o0, %g5, %o0
	or	%o0, %g4, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
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
	and	%g3, %o4, %g3
	and	%g5, %o5, %g5
	sllx	%g2, 32, %o4
	or	%g1, %g3, %g1
	sllx	%o0, 8, %g4
	or	%g1, %g5, %g1
	sllx	%g2, 40, %o5
	and	%g4, %o4, %g4
	sllx	%o0, 24, %g3
	or	%g1, %g4, %g1
	sllx	%g2, 48, %g2
	and	%g3, %o5, %g3
	sllx	%o0, 40, %o0
	or	%g1, %g3, %g1
	and	%o0, %g2, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
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
	fcmpes	%fcc2, %f1, %f8
	fbl,pt	%fcc2, .L619
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	mov	0, %o0
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	movg	%fcc3, 1, %o0
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
	fcmped	%fcc0, %f0, %f8
	fbl,pt	%fcc0, .L622
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	mov	0, %o0
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	movg	%fcc1, 1, %o0
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
	save	%sp, -256, %sp
	sethi	%hi(.LC8), %g1
	add	%fp, 2015, %o1
	std	%f0, [%fp+2031]
	ldx	[%g1+%lo(.LC8)], %g2
	add	%fp, 2031, %o0
	mov	1, %i0
	ldx	[%g1+%lo(.LC8+8)], %g3
	std	%f2, [%fp+2039]
	std	%f0, [%fp+1967]
	std	%f2, [%fp+1975]
	stx	%g2, [%fp+2015]
	call	_Qp_flt, 0
	 stx	%g3, [%fp+2023]
	brnz,pt	%o0, .L625
	 nop
	sethi	%hi(.LC9), %g1
	ldd	[%fp+1967], %f0
	add	%fp, 1983, %o1
	ldx	[%g1+%lo(.LC9)], %g2
	add	%fp, 1999, %o0
	mov	0, %i0
	ldx	[%g1+%lo(.LC9+8)], %g3
	ldd	[%fp+1975], %f2
	std	%f0, [%fp+1999]
	std	%f2, [%fp+2007]
	stx	%g2, [%fp+1983]
	call	_Qp_fgt, 0
	 stx	%g3, [%fp+1991]
	movrne	%o0, 1, %i0
.L625:
	return	%i7+8
	 and	%o0, 1, %o0
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.align 32
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	save	%sp, -192, %sp
	st	%i1, [%fp+2043]
	mov	%i0, %o0
	ld	[%fp+2043], %f8
	call	_Qp_dtoq, 0
	 fitod	%f8, %f2
	return	%i7+8
	 nop
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
	ld	[%g1+%lo(.LC12)], %f8
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	fmovsl	%icc, %f9, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L643
	 srl	%o1, 31, %g1
.L632:
	fmuls	%f1, %f8, %f1
	srl	%o1, 31, %g1
.L643:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L629
	 nop
	fmuls	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L632
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L642:
	fmuls	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L632
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L642
	 add	%g1, %o1, %o1
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
	ldd	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	fmovdl	%icc, %f10, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L659
	 srl	%o1, 31, %g1
.L648:
	fmuld	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L659:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L660
	 nop
	fmuld	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L648
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L658:
	fmuld	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L648
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L658
	 add	%g1, %o1, %o1
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
	save	%sp, -496, %sp
	std	%f0, [%fp+1727]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f2, [%fp+1735]
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+2023]
	cmp	%o0, 3
	be,pn	%xcc, .L662
	 ldx	[%fp+1727], %g2
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldx	[%fp+1735], %g3
	add	%fp, 1967, %o2
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	stx	%g2, [%fp+1967]
	call	_Qp_add, 0
	 stx	%g3, [%fp+1975]
	ldx	[%fp+1999], %g2
	add	%fp, 1935, %o1
	add	%fp, 1951, %o0
	ldx	[%fp+2007], %g3
	ldx	[%fp+1727], %g4
	ldx	[%fp+1735], %g5
	stx	%g4, [%fp+1935]
	stx	%g5, [%fp+1943]
	stx	%g2, [%fp+1951]
	call	_Qp_feq, 0
	 stx	%g3, [%fp+1959]
	brnz,pt	%o0, .L680
	 ldd	[%fp+1727], %f0
	sethi	%hi(.LC20), %g1
	cmp	%i2, 0
	ldx	[%g1+%lo(.LC20)], %i4
	bl,pn	%icc, .L677
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L663:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L681
	 srl	%i2, 31, %g1
.L665:
	ldx	[%fp+1727], %g2
	add	%fp, 1839, %o2
	add	%fp, 1855, %o1
	ldx	[%fp+1735], %g3
	add	%fp, 1871, %o0
	stx	%g2, [%fp+1855]
	stx	%g3, [%fp+1863]
	stx	%i4, [%fp+1839]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1847]
	ldx	[%fp+1871], %g2
	ldx	[%fp+1879], %g3
	stx	%g2, [%fp+1727]
	stx	%g3, [%fp+1735]
	srl	%i2, 31, %g1
.L681:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L662
	 add	%fp, 1743, %o2
	add	%fp, 1759, %o1
	stx	%i4, [%fp+1759]
	add	%fp, 1775, %o0
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1751]
	ldx	[%fp+1775], %i4
	ldx	[%fp+1783], %i5
	andcc	%i2, 1, %g0
	bne,pt	%xcc, .L665
	 srl	%i2, 31, %g1
	add	%g1, %i2, %i2
.L679:
	add	%fp, 1743, %o2
	stx	%i4, [%fp+1759]
	add	%fp, 1759, %o1
	add	%fp, 1775, %o0
	stx	%i5, [%fp+1767]
	sra	%i2, 1, %i2
	stx	%i4, [%fp+1743]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1751]
	ldx	[%fp+1775], %i4
	ldx	[%fp+1783], %i5
	andcc	%i2, 1, %g0
	bne,pt	%xcc, .L665
	 srl	%i2, 31, %g1
	ba,pt	%xcc, .L679
	 add	%g1, %i2, %i2
.L662:
	ldd	[%fp+1727], %f0
.L680:
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
.L677:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L663
	 ldx	[%g1+%lo(.LC21+8)], %i5
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L717
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%xcc, .L690
	 or	%o0, %o1, %g1
	and	%g1, 7, %g1
	brnz,pn	%g1, .L690
	 and	%o2, -8, %g2
	ldd	[%o0+%g1], %f8
.L715:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f8
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L715
	 ldd	[%o0+%g1], %f8
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L717
	 sub	%o2, %g1, %g3
	ldub	[%o0+%g1], %g5
	cmp	%g3, 1
	ldub	[%o1+%g1], %o5
	xor	%g5, %o5, %g5
	be,pn	%xcc, .L717
	 stb	%g5, [%o0+%g1]
	ldub	[%g2+1], %g5
	cmp	%g3, 2
	ldub	[%g4+1], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L717
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %g5
	cmp	%g3, 3
	ldub	[%g4+2], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L717
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %g5
	cmp	%g3, 4
	ldub	[%g4+3], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L717
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g5
	cmp	%g3, 5
	ldub	[%g4+4], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L717
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %g5
	cmp	%g3, 6
	ldub	[%g4+5], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L717
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %g3
	ldub	[%g4+6], %g1
	xor	%g1, %g3, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L690:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L716:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L716
	 ldub	[%o0+%g1], %g3
.L717:
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
	be,pn	%icc, .L723
	 mov	%o0, %g1
.L720:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L720
	 add	%g1, 1, %g1
.L723:
	brz,pn	%o2, .L722
	 nop
	ldub	[%o1], %g2
	add	%g1, 1, %g1
	add	%o2, -1, %o2
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L723
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L722:
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L733
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L741:
	cmp	%g2, 0
	bne,a,pn %icc, .L736
	 add	%g1, 1, %g1
.L733:
	jmp	%o7+8
	 mov	%g1, %o0
.L736:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L741
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L733
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
	be,a,pn	%icc, .L751
	 mov	0, %o0
.L743:
	sra	%g3, 24, %g3
	ba,pt	%xcc, .L746
	 mov	%o1, %g1
.L745:
	cmp	%g2, %g3
	be,pn	%icc, .L751
	 nop
.L746:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L745
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L743
	 add	%o0, 1, %o0
	mov	0, %o0
.L751:
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
.L754:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L754
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
	sll	%o3, 24, %o3
	cmp	%o3, 0
	be,pn	%icc, .L767
	 mov	%o0, %g2
	mov	%o1, %g1
.L758:
	ldsb	[%g1+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L758
	 add	%g1, 1, %g1
	sub	%g1, %o1, %g1
	brz,pn	%g1, .L777
	 mov	%g2, %o0
	sra	%o3, 24, %o3
	add	%o1, -1, %o2
	ba,pt	%xcc, .L774
	 add	%o2, %g1, %o2
.L776:
	cmp	%g1, 0
	be,pn	%icc, .L775
	 add	%g2, 1, %g2
.L774:
	ldsb	[%g2], %g1
	cmp	%g1, %o3
	bne,pt	%icc, .L776
	 ldub	[%g2], %g3
	mov	%o1, %g4
	mov	%g2, %o4
	ba,pt	%xcc, .L760
	 and	%g3, 0xff, %g3
.L762:
	ldub	[%o4], %g3
	cmp	%g3, 0
	be,pn	%icc, .L761
	 add	%g4, 1, %g4
.L760:
	ldub	[%g4], %g1
	xor	%g4, %o2, %o5
	mov	0, %g5
	movrne	%o5, 1, %g5
	cmp	%g0, %g1
	xor	%g1, %g3, %g1
	addx	%g0, 0, %o5
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%o5, %g1, %g1
	andcc	%g1, %g5, %g0
	bne,pt	%icc, .L762
	 add	%o4, 1, %o4
.L761:
	ldub	[%g4], %g1
	cmp	%g3, %g1
	be,pn	%icc, .L777
	 mov	%g2, %o0
	ba,pt	%xcc, .L774
	 add	%g2, 1, %g2
.L775:
	jmp	%o7+8
	 mov	0, %o0
.L767:
	mov	%g2, %o0
.L777:
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
	fcmped	%fcc2, %f0, %f8
	fbl,a,pn %fcc2, .L788
	 fcmped	%fcc3, %f2, %f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L789
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L781
	 nop
.L789:
	jmp	%o7+8
	 nop
.L788:
	fbule,pt %fcc3, .L789
	 nop
.L781:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L811
	 nop
	cmp	%o1, %o3
	blu,a,pn %xcc, .L811
	 mov	0, %o0
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a,pn %xcc, .L811
	 mov	0, %o0
	ldub	[%o2], %o5
	sll	%o5, 24, %o5
	sra	%o5, 24, %g5
	ldsb	[%o0], %g1
.L812:
	cmp	%g1, %g5
	be,pn	%icc, .L810
	 add	%o0, 1, %g4
	mov	%g4, %o0
.L792:
	cmp	%o1, %o0
	bgeu,a,pt %xcc, .L812
	 ldsb	[%o0], %g1
.L801:
	mov	0, %o0
.L811:
	jmp	%o7+8
	 nop
.L810:
	cmp	%o3, 1
	be,pn	%xcc, .L811
	 nop
.L795:
	ba,pt	%xcc, .L793
	 mov	1, %g1
.L794:
	cmp	%g1, %o3
	be,pn	%xcc, .L811
	 nop
.L793:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be,pt	%icc, .L794
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu,pn	%xcc, .L801
	 sra	%o5, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L792
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	ba,pt	%xcc, .L795
	 mov	%g1, %o0
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L814
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L814:
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
	fcmped	%fcc2, %f0, %f8
	fbl,pn	%fcc2, .L840
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc1, %f0, %f10
	fbul,pn	%fcc1, .L841
	 mov	0, %g2
.L821:
	sethi	%hi(.LC27), %g3
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f10
	sethi	%hi(.LC26), %g3
	ldd	[%g3+%lo(.LC26)], %f8
.L827:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L827
	 add	%g1, 1, %g1
	fnegd	%f0, %f8
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L841:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f10
	fcmped	%fcc2, %f0, %f10
	fbuge,pt %fcc2, .L824
	 nop
	fcmpd	%fcc3, %f0, %f8
	fbne,a,pn %fcc3, .L822
	 fmovd	%f0, %f10
.L824:
	jmp	%o7+8
	 st	%g0, [%o1]
.L840:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbug,pn	%fcc3, .L842
	 fnegd	%f0, %f10
	fmovd	%f10, %f0
	ba,pt	%xcc, .L821
	 mov	1, %g2
.L842:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc0, %f0, %f8
	fbule,pt %fcc0, .L824
	 nop
	mov	1, %g2
.L822:
	sethi	%hi(.LC27), %g3
	fmovd	%f10, %f0
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f8
.L829:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f8
	fbl,pt	%fcc1, .L829
	 add	%g1, -1, %g1
	fnegd	%f0, %f8
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g2
	brz,pn	%g2, .L849
	 mov	0, %o0
.L845:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L845
	 add	%o0, %g1, %o0
.L849:
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
	blu,pt	%icc, .L851
	 mov	1, %g1
	ba,pt	%xcc, .L857
	 mov	0, %g2
.L854:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L853
	 cmp	%g1, 0
.L851:
	cmp	%o1, 0
	bge,pt	%icc, .L854
	 add	%o1, %o1, %g2
.L852:
	mov	0, %g2
.L857:
	cmp	%o0, %o1
	blu,pt	%icc, .L856
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L856:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L857
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L853:
	bne,pt	%icc, .L852
	 mov	0, %g2
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	sra	%i0, 7, %g2
	mov	7, %o0
	cmp	%g2, %i0
	be,pn	%icc, .L868
	 xor	%g2, %i0, %g1
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L868:
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
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
	srl	%g2, 0, %g3
	mov	0, %g1
	cmp	%g2, 0
	be,pn	%icc, .L912
	 sllx	%g3, 3, %g3
	ldx	[%i1+%g1], %g2
.L916:
	stx	%g2, [%i0+%g1]
	add	%g1, 8, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L916
	 ldx	[%i1+%g1], %g2
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
	 srl	%i5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
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
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%i1+%g3], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%i1+%g2], %g4
	cmp	%g3, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%i1+%g3], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%i1+%g2], %g4
	cmp	%g3, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%i1+%g3], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L921
	 stb	%g4, [%i0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%i1+%g2], %g3
	cmp	%g1, %i2
	bgeu,pn	%icc, .L921
	 stb	%g3, [%i0+%g2]
	srl	%g1, 0, %g1
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
.L921:
	return	%i7+8
	 nop
.L912:
	brz,pn	%i2, .L921
	 srl	%g5, 0, %g1
.L890:
	ldub	[%i1+%g1], %g2
.L918:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %i2
	blu,a,pt %icc, .L918
	 ldub	[%i1+%g1], %g2
	return	%i7+8
	 nop
.L914:
	brz,pn	%i2, .L921
	 srl	%g1, 0, %g1
	ldub	[%i1+%g1], %g2
.L919:
	stb	%g2, [%i0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L919
	 ldub	[%i1+%g1], %g2
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
	sub	%o0, %g2, %g2
	mov	0, %g5
	mov	0, %g3
	cmp	%g2, 4
	and	%g1, 7, %g1
	movre	%g1, 1, %g5
	movgu	%xcc, 1, %g3
	andcc	%g5, %g3, %g0
	be,pn	%icc, .L929
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
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
	 srl	%g1, 0, %g2
	add	%g1, 1, %g3
	add	%g2, %g2, %g2
	cmp	%g4, %g3
	lduh	[%o1+%g2], %g5
	bleu,pn	%icc, .L925
	 sth	%g5, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 2, %g1
	add	%g3, %g3, %g3
	cmp	%g4, %g1
	lduh	[%o1+%g3], %g2
	bleu,pn	%icc, .L925
	 sth	%g2, [%o0+%g3]
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
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
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
	add	%g4, %g4, %g4
	lduh	[%o1+%g1], %g2
.L952:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %xcc, .L952
	 lduh	[%o1+%g1], %g2
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
	 or	%i0, %i1, %g2
	add	%i1, 4, %g1
	mov	0, %i5
	mov	0, %g3
	and	%g2, 7, %g2
	xor	%i0, %g1, %g1
	movre	%g2, 1, %i5
	movrne	%g1, 1, %g3
	andcc	%i5, %g3, %g0
	be,pn	%icc, .L961
	 srl	%i2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%i1+%g1], %f8
.L994:
	std	%f8, [%i0+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L994
	 ldd	[%i1+%g1], %f8
	add	%g3, %g3, %g3
	cmp	%g4, %g3
	be,pn	%icc, .L965
	 srl	%g3, 0, %g3
	sllx	%g3, 2, %g3
	lduw	[%i1+%g3], %g1
	st	%g1, [%i0+%g3]
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
	 srl	%i5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L995:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L995
	 ldd	[%g4+%g1], %f8
	and	%i5, -8, %g1
	andcc	%i5, 7, %g0
	be,pn	%xcc, .L1000
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%i1+%g3], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%i1+%g2], %g4
	cmp	%g3, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%i1+%g3], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%i1+%g2], %g4
	cmp	%g3, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%i1+%g3], %g4
	cmp	%g2, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g4, [%i0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%i1+%g2], %g3
	cmp	%g1, %i2
	bgeu,pn	%icc, .L1000
	 stb	%g3, [%i0+%g2]
	srl	%g1, 0, %g1
	ldub	[%i1+%g1], %g2
	stb	%g2, [%i0+%g1]
.L1000:
	return	%i7+8
	 nop
.L991:
	brz,pn	%i2, .L1000
	 srl	%g5, 0, %g1
.L968:
	ldub	[%i1+%g1], %g2
.L996:
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%i2, %g1
	bgu,a,pt %icc, .L996
	 ldub	[%i1+%g1], %g2
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
	sllx	%g4, 2, %g4
	mov	0, %g1
	lduw	[%i1+%g1], %g2
.L998:
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
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
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	fxtod	%f8, %f0
	jmp	%o7+8
	 faddd	%f0, %f0, %f0
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
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	fxtos	%f8, %f0
	jmp	%o7+8
	 fadds	%f0, %f0, %f0
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
	bne,pn	%icc, .L1033
	 mov	13, %g1
	sra	%o0, 1, %g1
	cmp	%g1, 0
	bne,a,pn %icc, .L1033
	 mov	14, %g1
	movre	%o0, 1, %g1
	add	%g1, 15, %g1
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
	ba,pt	%xcc, .L1017
	 mov	14, %g1
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
	bne,a,pn %icc, .L1053
	 mov	14, %o0
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	add	%o0, 15, %o0
.L1036:
.L1053:
	jmp	%o7+8
	 and	%o0, 31, %o0
.L1037:
	ba,pt	%xcc, .L1036
	 mov	0, %o0
.L1038:
	ba,pt	%xcc, .L1036
	 mov	1, %o0
.L1049:
	ba,pt	%xcc, .L1036
	 mov	12, %o0
.L1039:
	ba,pt	%xcc, .L1036
	 mov	2, %o0
.L1040:
	ba,pt	%xcc, .L1036
	 mov	3, %o0
.L1041:
	ba,pt	%xcc, .L1036
	 mov	4, %o0
.L1042:
	ba,pt	%xcc, .L1036
	 mov	5, %o0
.L1043:
	ba,pt	%xcc, .L1036
	 mov	6, %o0
.L1044:
	ba,pt	%xcc, .L1036
	 mov	7, %o0
.L1045:
	ba,pt	%xcc, .L1036
	 mov	8, %o0
.L1046:
	ba,pt	%xcc, .L1036
	 mov	9, %o0
.L1047:
	ba,pt	%xcc, .L1036
	 mov	10, %o0
.L1048:
	ba,pt	%xcc, .L1036
	 mov	11, %o0
.L1050:
	ba,pt	%xcc, .L1036
	 mov	13, %o0
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
	fcmpes	%fcc2, %f1, %f8
	fbge,a,pn %fcc2, .L1060
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1060:
	sethi	%hi(32768), %g1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
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
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	and	%o5, 1, %o5
	sra	%o0, 4, %g5
	add	%g1, %g2, %g1
	and	%g5, 1, %g5
	add	%g1, %o5, %g1
	sra	%o0, 5, %g4
	add	%g1, %g5, %g1
	sra	%o0, 6, %g3
	and	%g4, 1, %g4
	and	%g3, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 7, %g2
	add	%g1, %g3, %g1
	sra	%o0, 8, %o2
	and	%g2, 1, %g2
	add	%g1, %g2, %g1
	and	%o2, 1, %o2
	sra	%o0, 9, %o3
	sra	%o0, 15, %g2
	and	%o3, 1, %o3
	sra	%o0, 10, %o4
	sra	%o0, 11, %o5
	and	%o4, 1, %o4
	sra	%o0, 12, %g5
	and	%o5, 1, %o5
	sra	%o0, 13, %g4
	and	%g5, 1, %g5
	sra	%o0, 14, %g3
	add	%g1, %o2, %o0
	add	%o0, %o3, %o0
	and	%g4, 1, %g4
	add	%o0, %o4, %o0
	and	%g3, 1, %g3
	add	%o0, %o5, %o0
	add	%o0, %g5, %o0
	add	%o0, %g4, %o0
	add	%o0, %g3, %o0
	add	%o0, %g2, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
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
	and	%g2, 1, %g2
	add	%g1, %g3, %g1
	and	%o5, 1, %o5
	sra	%o0, 4, %g5
	add	%g1, %g2, %g1
	and	%g5, 1, %g5
	add	%g1, %o5, %g1
	sra	%o0, 5, %g4
	add	%g1, %g5, %g1
	sra	%o0, 6, %g3
	and	%g4, 1, %g4
	and	%g3, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 7, %g2
	add	%g1, %g3, %g1
	sra	%o0, 8, %o2
	and	%g2, 1, %g2
	add	%g1, %g2, %g1
	and	%o2, 1, %o2
	sra	%o0, 9, %o3
	sra	%o0, 15, %g2
	and	%o3, 1, %o3
	sra	%o0, 10, %o4
	sra	%o0, 11, %o5
	and	%o4, 1, %o4
	sra	%o0, 12, %g5
	and	%o5, 1, %o5
	sra	%o0, 13, %g4
	and	%g5, 1, %g5
	sra	%o0, 14, %g3
	add	%g1, %o2, %o0
	add	%o0, %o3, %o0
	and	%g4, 1, %g4
	add	%o0, %o4, %o0
	and	%g3, 1, %g3
	add	%o0, %o5, %o0
	add	%o0, %g5, %o0
	add	%o0, %g4, %o0
	add	%o0, %g3, %o0
	add	%o0, %g2, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
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
	ba,pt	%xcc, .L1083
	 mov	0, %g2
.L1080:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L1079
	 cmp	%g1, 0
.L1077:
	cmp	%o1, 0
	bge,pt	%icc, .L1080
	 add	%o1, %o1, %g2
.L1078:
	mov	0, %g2
.L1083:
	cmp	%o0, %o1
	blu,pt	%icc, .L1082
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L1082:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L1083
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L1079:
	bne,pt	%icc, .L1078
	 mov	0, %g2
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	fcmpes	%fcc3, %f1, %f3
	fbl,pn	%fcc3, .L1094
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L1094:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	fcmped	%fcc1, %f0, %f2
	fbl,pn	%fcc1, .L1097
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L1097:
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
	bl,a,pn	%icc, .L1111
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L1104
	 mov	0, %g5
	mov	0, %o4
.L1103:
	mov	1, %g3
	mov	0, %g5
.L1105:
	sra	%o1, 1, %g4
	and	%g3, 0xff, %g2
	and	%o1, 1, %o1
	cmp	%g0, %g4
	xor	%g2, 32, %g2
	sub	%g0, %o1, %g1
	sra	%g4, 0, %o1
	and	%g1, %o0, %g1
	addx	%g0, 0, %g4
	add	%o0, %o0, %o5
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	add	%g3, 1, %g3
	add	%g5, %g1, %g5
	andcc	%g4, %g2, %g0
	bne,pt	%icc, .L1105
	 sra	%o5, 0, %o0
	sub	%g0, %g5, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g5
.L1104:
	jmp	%o7+8
	 sra	%g5, 0, %o0
.L1111:
	mov	1, %o4
	ba,pt	%xcc, .L1103
	 sra	%o1, 0, %o1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	mov	1, %g1
	brlz,pn	%o0, .L1130
	 mov	0, %o5
.L1113:
	brgez,pt %o1, .L1131
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	mov	%g1, %o5
.L1131:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1116
	 mov	1, %g2
	cmp	%g1, 0
.L1132:
	bl,pn	%icc, .L1120
	 mov	0, %o0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1132
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1117
	 mov	0, %o0
.L1116:
	mov	0, %o0
.L1120:
	cmp	%g1, %g3
	bgu,a,pt %icc, .L1133
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L1133:
	cmp	%g2, 0
	bne,pt	%icc, .L1120
	 srl	%g1, 1, %g1
	srl	%o0, 0, %o0
.L1117:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1130:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1113
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L1135
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1135:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1150
	 mov	%o1, %g1
	cmp	%g1, 0
.L1155:
	bl,pn	%icc, .L1154
	 sub	%g3, %g1, %g4
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1155
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1156
	 srl	%g3, 0, %o0
.L1150:
	sub	%g3, %g1, %g4
.L1154:
	cmp	%g3, %g1
	srl	%g2, 1, %g2
	movgeu	%icc, %g4, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L1150
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L1156:
	cmp	%o5, 0
	sub	%g0, %o0, %g1
	jmp	%o7+8
	 movne	%icc, %g1, %o0
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1158
	 mov	1, %g4
	ba,pt	%xcc, .L1241
	 mov	1, %g2
.L1161:
	srl	%g5, 16, %o4
	cmp	%g1, %o0
	addx	%g0, 0, %o5
	cmp	%g0, %g5
	addx	%g0, 0, %g5
	andcc	%o5, %g5, %g0
	be,pn	%icc, .L1160
	 mov	%g3, %g2
	mov	%g3, %g4
	mov	%g1, %o1
.L1158:
	sllx	%o1, 49, %g1
	add	%g4, %g4, %g3
	sll	%o1, 16, %g2
	srlx	%g1, 48, %g1
	cmp	%g2, 0
	bge,pt	%icc, .L1161
	 sll	%g3, 16, %g5
	cmp	%o0, %o1
	blu,pt	%icc, .L1184
	 mov	0, %g2
	sub	%o0, %o1, %o0
	mov	%g4, %g2
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
.L1184:
	sll	%g4, 16, %g3
	srl	%g3, 17, %g1
	srlx	%o1, 1, %g5
	cmp	%g1, 0
	be,pn	%icc, .L1163
	 mov	%g1, %g4
.L1165:
	cmp	%o0, %g5
	blu,a,pt %icc, .L1247
	 srl	%g3, 18, %g4
	sub	%o0, %g5, %g5
	or	%g2, %g4, %g2
	sllx	%g5, 48, %g5
	srlx	%g5, 48, %o0
	srl	%g3, 18, %g4
.L1247:
	srlx	%o1, 2, %g1
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srl	%g3, 18, %g5
	cmp	%o0, %g1
	blu,pt	%icc, .L1248
	 srl	%g3, 19, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1248:
	srlx	%o1, 3, %g1
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srl	%g3, 19, %g5
	cmp	%o0, %g1
	blu,pt	%icc, .L1249
	 srl	%g3, 20, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1249:
	srl	%g3, 20, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 4, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1250
	 srl	%g3, 21, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1250:
	srl	%g3, 21, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 5, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1251
	 srl	%g3, 22, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1251:
	srl	%g3, 22, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 6, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1252
	 srl	%g3, 23, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1252:
	srl	%g3, 23, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1242
	 sub	%o0, %g1, %g1
.L1172:
	srl	%g3, 24, %g4
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1243
	 sub	%o0, %g1, %g1
.L1173:
	srl	%g3, 25, %g4
	srl	%g3, 25, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1244
	 sub	%o0, %g1, %g1
.L1174:
	srl	%g3, 26, %g4
	srl	%g3, 26, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1245
	 sub	%o0, %g1, %g1
.L1175:
	srl	%g3, 27, %g4
	srl	%g3, 27, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1246
	 sub	%o0, %g1, %g1
.L1176:
	srl	%g3, 28, %g4
	srl	%g3, 28, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 12, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1253
	 srl	%g3, 29, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1253:
	srl	%g3, 29, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 13, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1254
	 srl	%g3, 30, %g4
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1254:
	srl	%g3, 30, %g5
	cmp	%g4, 0
	be,pn	%icc, .L1163
	 srlx	%o1, 14, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1255
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1255:
	bge,pn	%icc, .L1163
	 srlx	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a,pt %icc, .L1163
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%g2, 1, %g2
	sllx	%o1, 48, %g1
	srlx	%g1, 48, %o0
.L1163:
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	mov	%g1, %g2
	sllx	%g2, 48, %g2
	jmp	%o7+8
	 srlx	%g2, 48, %o0
.L1160:
	cmp	%o4, 0
	be,pn	%icc, .L1163
	 cmp	%o0, %g1
	blu,pt	%icc, .L1164
	 sethi	%hi(31744), %o5
	sub	%o0, %g1, %o0
	sllx	%o0, 48, %o0
	or	%o5, 1023, %o5
	and	%o1, %o5, %g5
	and	%o5, %g4, %g4
	sll	%g3, 16, %g3
	mov	%g1, %o1
	ba,pt	%xcc, .L1165
	 srlx	%o0, 48, %o0
.L1242:
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1172
	 srlx	%g1, 48, %o0
.L1164:
	mov	0, %g2
	sll	%g3, 16, %g3
	or	%o5, 1023, %o5
	and	%o1, %o5, %g5
	and	%o5, %g4, %g4
	ba,pt	%xcc, .L1165
	 mov	%g1, %o1
.L1243:
	or	%g4, %g2, %g2
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1173
	 srlx	%g1, 48, %o0
.L1244:
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1174
	 srlx	%g1, 48, %o0
.L1245:
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1175
	 srlx	%g1, 48, %o0
.L1246:
	or	%g5, %g2, %g2
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1176
	 srlx	%g1, 48, %o0
.L1241:
	move	%icc, 0, %o0
	ba,pt	%xcc, .L1163
	 movne	%icc, 0, %g2
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	cmp	%o1, %o0
	blu,pt	%xcc, .L1257
	 sethi	%hi(2147483648), %g4
	ba,pt	%xcc, .L1263
	 mov	0, %g2
.L1260:
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movrne	%g1, 1, %g3
	movgu	%xcc, 1, %g2
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1259
	 nop
.L1257:
	and	%o1, %g4, %g2
	brz,pt	%g2, .L1260
	 mov	0, %g3
	mov	0, %g2
.L1263:
	cmp	%o0, %o1
.L1273:
	blu,a,pt %xcc, .L1272
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L1272:
	brnz,pt	%g1, .L1263
	 srlx	%o1, 1, %o1
.L1261:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
.L1259:
	brz,pn	%g1, .L1261
	 mov	0, %g2
	ba,pt	%xcc, .L1273
	 cmp	%o0, %o1
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1275
	 mov	%o0, %g1
	sll	%o0, %o1, %g1
	mov	0, %o0
.L1276:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L1280:
	jmp	%o7+8
	 nop
.L1275:
	brz,pn	%o1, .L1280
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%g1, %g3, %g1
	sll	%g2, %o1, %g2
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1276
	 or	%g1, %g2, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1282
	 nop
	sllx	%o1, %o2, %o0
	mov	0, %o2
	mov	%o2, %o1
.L1286:
	jmp	%o7+8
	 nop
.L1282:
	brz,pn	%o2, .L1286
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
	be,pt	%xcc, .L1288
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L1289:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1293:
	jmp	%o7+8
	 nop
.L1288:
	brz,pn	%o1, .L1293
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %o0
	ba,pt	%xcc, .L1289
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1295
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L1299:
	jmp	%o7+8
	 nop
.L1295:
	brz,pn	%o2, .L1299
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
	and	%g3, %o4, %g3
	and	%g5, %o5, %g5
	sllx	%g2, 32, %o4
	or	%g1, %g3, %g1
	sllx	%o0, 8, %g4
	or	%g1, %g5, %g1
	sllx	%g2, 40, %o5
	and	%g4, %o4, %g4
	sllx	%o0, 24, %g3
	or	%g1, %g4, %g1
	sllx	%g2, 48, %g2
	and	%g3, %o5, %g3
	sllx	%o0, 40, %o0
	or	%g1, %g3, %g1
	and	%o0, %g2, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
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
	srl	%o0, 24, %g1
	srl	%o0, 8, %g2
	or	%g1, %g5, %g1
	sll	%o0, 8, %o0
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
	and	%o0, %g4, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
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
	subx	%g0, -1, %g4
	sll	%g4, 4, %g4
	mov	4, %g5
	sub	%o4, %g4, %g1
	mov	2, %g2
	srl	%o0, %g1, %g1
	and	%g1, %g3, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 3, %g3
	sub	%o5, %g3, %o5
	add	%g3, %g4, %g4
	srl	%g1, %o5, %g1
	and	%g1, 240, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	sll	%g3, 2, %g3
	sub	%g5, %g3, %g5
	add	%g3, %g4, %g4
	srl	%g1, %g5, %g1
	and	%g1, 12, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	add	%g3, %g3, %g3
	sub	%g2, %g3, %g5
	add	%g3, %g4, %g3
	srl	%g1, %g5, %g1
	sub	%g2, %g1, %o0
	andcc	%g1, 2, %g0
	movne	%xcc, 0, %o0
	add	%o0, %g3, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
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
	sll	%i5, 6, %i5
	add	%i5, %o0, %i5
	return	%i7+8
	 sra	%o5, 0, %o0
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
	bl,pn	%icc, .L1305
	 mov	0, %g1
	bg,pn	%icc, .L1305
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1305
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1305:
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
	bl,pn	%icc, .L1311
	 mov	-1, %g1
	bg,pn	%icc, .L1311
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1311
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1311:
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
	bl,pn	%xcc, .L1316
	 mov	0, %g1
	bg,pn	%xcc, .L1316
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1316
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1316:
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
	add	%g2, %g2, %g2
	srl	%g1, %g2, %g1
	add	%g2, %g3, %g2
	and	%g1, 3, %g1
	xnor	%g0, %g1, %o0
	srl	%g1, 1, %g1
	and	%o0, 1, %o0
	sub	%g4, %g1, %g1
	sub	%g0, %o0, %o0
	and	%o0, %g1, %o0
	add	%o0, %g2, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
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
	mov	0, %i5
	and	%g1, %i1, %g1
	movre	%i1, 1, %i5
	call	__ctzdi2, 0
	 or	%o0, %g1, %o0
	sll	%i5, 6, %i5
	add	%i5, %o0, %i5
	return	%i7+8
	 sra	%o5, 0, %o0
	.size	__ctzti2, .-__ctzti2
	.align 4
	.align 32
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -176, %sp
	brnz,pt	%i1, .L1324
	 nop
	brnz,pt	%i0, .L1328
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1324:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1328:
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
	be,pt	%xcc, .L1330
	 srlx	%o0, 32, %g1
	mov	0, %g2
	srl	%g1, %o1, %g1
.L1331:
	st	%g2, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1329:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1330:
	brz,pn	%o1, .L1329
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g3
	srl	%o0, %o1, %g1
	srl	%g2, %o1, %g2
	ba,pt	%xcc, .L1331
	 or	%g3, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1336
	 nop
	srlx	%o0, %o2, %o1
	mov	0, %o2
	mov	%o2, %o0
.L1340:
	jmp	%o7+8
	 nop
.L1336:
	brz,pn	%o2, .L1340
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
	sll	%g1, 16, %g2
	add	%o1, %g5, %o1
	srl	%g1, 16, %g1
	and	%o0, %g3, %o0
	add	%o0, %g2, %o0
	add	%o1, %g1, %o1
	sllx	%o1, 32, %o1
	srl	%o0, 0, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
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
	srl	%o1, 16, %o4
	srl	%g1, 16, %o2
	and	%g1, %g4, %g1
	smul	%g2, %o5, %g2
	srax	%o1, 32, %o3
	add	%g2, %o2, %g2
	smul	%o5, %o4, %o5
	smul	%g3, %o4, %g3
	srax	%o0, 32, %o4
	smul	%o1, %o4, %o1
	sll	%g2, 16, %o4
	smul	%o0, %o3, %o0
	srl	%o4, 16, %o3
	add	%g1, %o4, %g1
	add	%g3, %o3, %g3
	and	%g1, %g4, %g1
	srl	%g2, 16, %g2
	sll	%g3, 16, %g4
	add	%g2, %o5, %g2
	srl	%g3, 16, %g3
	add	%g1, %g4, %g1
	srlx	%g5, 32, %g5
	add	%g2, %g3, %g2
	sllx	%g2, 32, %g2
	and	%g5, %g1, %g1
	or	%g1, %g2, %g1
	srax	%g1, 32, %g2
	and	%g1, %g5, %g1
	add	%o0, %g2, %o0
	add	%o0, %o1, %o0
	sllx	%o0, 32, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
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
	add	%o1, %g5, %o1
	umul	%o0, %g4, %o0
	umul	%g2, %g4, %g4
	sllx	%o1, 32, %g2
	and	%g1, %g3, %g1
	srlx	%g2, 32, %g5
	add	%g1, %g2, %g2
	add	%o0, %g5, %o0
	and	%g2, %g3, %g2
	srlx	%o1, 32, %o1
	add	%o1, %g4, %g4
	sllx	%o0, 32, %o1
	srlx	%o0, 32, %o0
	add	%g2, %o1, %o1
	jmp	%o7+8
	 add	%g4, %o0, %o0
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
	sllx	%g1, 32, %o5
	srlx	%g4, 32, %g4
	umul	%g5, %g2, %g5
	srlx	%o5, 32, %o4
	and	%g3, %g4, %g3
	umul	%o1, %g2, %g2
	add	%g3, %o5, %g3
	add	%g2, %o4, %g2
	srlx	%g1, 32, %g1
	mulx	%o1, %o2, %o2
	add	%g1, %g5, %g1
	and	%g3, %g4, %o1
	srlx	%g2, 32, %g3
	sllx	%g2, 32, %g2
	add	%g1, %g3, %g1
	mulx	%o3, %o0, %o0
	add	%o2, %g1, %o2
	add	%o1, %g2, %o1
	jmp	%o7+8
	 add	%o2, %o0, %o0
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
	srl	%o0, 16, %g2
	xor	%g2, %o0, %o0
	srl	%o0, 8, %g3
	xor	%g3, %o0, %g3
	srl	%g3, 4, %g2
	xor	%g2, %g3, %g2
	and	%g2, 15, %g2
	sra	%g1, %g2, %g1
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
	xor	%g2, %o1, %o1
	srl	%o1, 16, %g2
	xor	%g2, %o1, %g2
	srl	%g2, 8, %g3
	xor	%g3, %g2, %g3
	srl	%g3, 4, %g2
	xor	%g2, %g3, %g2
	and	%g2, 15, %g2
	sra	%g1, %g2, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
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
	srl	%o0, 8, %g2
	xor	%g2, %o0, %o0
	srl	%o0, 4, %g2
	xor	%g2, %o0, %g2
	and	%g2, 15, %g2
	sra	%g1, %g2, %g1
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
	or	%g3, 819, %g3
	or	%g2, 783, %g2
	sllx	%g4, 32, %o4
	srlx	%o0, 1, %o5
	add	%o4, %g4, %g4
	sllx	%g2, 32, %g5
	sllx	%g3, 32, %g1
	add	%g1, %g3, %g1
	add	%g5, %g2, %g3
	and	%o5, %g4, %g2
	sub	%o0, %g2, %o0
	srlx	%o0, 2, %g2
	and	%o0, %g1, %o0
	and	%g2, %g1, %g2
	add	%g2, %o0, %g2
	srlx	%g2, 4, %g1
	add	%g1, %g2, %g1
	and	%g1, %g3, %g1
	srlx	%g1, 32, %g2
	add	%g2, %g1, %g2
	srl	%g2, 16, %g1
	add	%g1, %g2, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 127, %o0
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.align 32
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	sethi	%hi(1431655424), %g4
	sethi	%hi(858992640), %g1
	srl	%o0, 1, %g2
	or	%g4, 341, %g4
	and	%g2, %g4, %g2
	or	%g1, 819, %g1
	sub	%o0, %g2, %o0
	sethi	%hi(252644352), %g3
	srl	%o0, 2, %g2
	and	%o0, %g1, %o0
	and	%g2, %g1, %g2
	or	%g3, 783, %g3
	add	%g2, %o0, %g2
	srl	%g2, 4, %g1
	add	%g1, %g2, %g1
	and	%g1, %g3, %g1
	srl	%g1, 16, %g2
	add	%g2, %g1, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.align 32
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	sethi	%hi(1431655424), %g2
	mov	0, %o5
	or	%g2, 341, %g2
	sethi	%hi(858992640), %g4
	sllx	%o0, 63, %g3
	or	%g4, 819, %g4
	srlx	%o1, 1, %g1
	sllx	%g2, 32, %g5
	or	%g3, %g1, %g1
	add	%g5, %g2, %g5
	mov	0, %g3
	and	%g1, %g5, %g1
	mov	0, %g2
	srlx	%o0, 1, %o4
	sub	%o1, %g1, %g1
	and	%o4, %g5, %o4
	cmp	%g1, %o1
	movgu	%xcc, 1, %o5
	sllx	%g4, 32, %g5
	sub	%o0, %o4, %o0
	sub	%o0, %o5, %o0
	add	%g5, %g4, %g5
	sllx	%o0, 62, %o4
	srlx	%g1, 2, %g4
	and	%g1, %g5, %g1
	srlx	%o0, 2, %o5
	or	%o4, %g4, %g4
	and	%g4, %g5, %g4
	and	%o0, %g5, %o0
	add	%g4, %g1, %g1
	and	%o5, %g5, %o5
	sethi	%hi(252644352), %o4
	cmp	%g1, %g4
	movlu	%xcc, 1, %g3
	add	%o5, %o0, %g5
	or	%o4, 783, %o4
	sllx	%o4, 32, %g4
	add	%g3, %g5, %g3
	srlx	%g1, 4, %o5
	add	%g4, %o4, %g4
	sllx	%g3, 60, %o4
	srlx	%g3, 4, %g5
	or	%o4, %o5, %o5
	add	%o5, %g1, %g1
	add	%g5, %g3, %g3
	cmp	%g1, %o5
	movlu	%xcc, 1, %g2
	and	%g1, %g4, %g1
	add	%g2, %g3, %g2
	and	%g2, %g4, %g2
	add	%g2, %g1, %g2
	srlx	%g2, 32, %g1
	add	%g1, %g2, %g2
	srl	%g2, 16, %g1
	add	%g1, %g2, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
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
	be,pt	%xcc, .L1354
	 ldd	[%g2+%lo(.LC34)], %f0
.L1356:
	fmuld	%f0, %f8, %f0
.L1354:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1355
	 andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1356
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1362:
	fmuld	%f8, %f8, %f8
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1356
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1362
	 add	%g2, %g1, %g1
.L1355:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1361
	 sethi	%hi(.LC34), %g1
	jmp	%o7+8
	 nop
.L1361:
	ldd	[%g1+%lo(.LC34)], %f8
	jmp	%o7+8
	 fdivd	%f8, %f0, %f0
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
	be,pt	%xcc, .L1364
	 ld	[%g2+%lo(.LC36)], %f0
.L1366:
	fmuls	%f0, %f1, %f0
.L1364:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1365
	 andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1366
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1372:
	fmuls	%f1, %f1, %f1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1366
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1372
	 add	%g2, %g1, %g1
.L1365:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1371
	 sethi	%hi(.LC36), %g1
	jmp	%o7+8
	 nop
.L1371:
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
	blu,pn	%icc, .L1374
	 mov	0, %g1
	bgu,pn	%icc, .L1374
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1374
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1374:
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
	blu,pn	%icc, .L1380
	 mov	-1, %g1
	bgu,pn	%icc, .L1380
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1380
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1380:
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
	blu,pn	%xcc, .L1385
	 mov	0, %g1
	bgu,pn	%xcc, .L1385
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1385
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1385:
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
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_feq
	.global _Qp_add
	.global _Qp_cmp
	.global _Qp_dtoq
	.global _Qp_fgt
	.global _Qp_flt
	.global _Qp_flt
	.global _Qp_cmp
	.global _Qp_cmp
	.global _Qp_flt
	.global _Qp_cmp
	.global _Qp_cmp
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
