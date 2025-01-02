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
	brz,pn	%o2, .L48
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L44:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L44
	 ldub	[%o1+%o2], %g1
.L48:
	jmp	%o7+8
	 nop
.L5:
	bne,pt	%xcc, .L43
	 nop
	jmp	%o7+8
	 nop
.L43:
	brz,pn	%o2, .L48
	 add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L15
	 add	%o1, 1, %g2
	or	%o1, %o0, %g1
	sub	%o0, %g2, %g2
	and	%g1, 7, %g1
	mov	0, %g3
	cmp	%g2, 6
	mov	0, %g2
	movre	%g1, 1, %g3
	movgu	%xcc, 1, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L15
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L45:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L45
	 ldd	[%o1+%g1], %f8
	add	%o1, %g1, %g4
	add	%o0, %g1, %g3
	cmp	%o2, %g1
	be,pn	%xcc, .L48
	 sub	%o2, %g1, %g2
	ldub	[%o1+%g1], %g5
	cmp	%g2, 1
	be,pn	%xcc, .L48
	 stb	%g5, [%o0+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be,pn	%xcc, .L48
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	cmp	%g2, 3
	be,pn	%xcc, .L48
	 stb	%g1, [%g3+2]
	ldub	[%g4+3], %g1
	cmp	%g2, 4
	be,pn	%xcc, .L48
	 stb	%g1, [%g3+3]
	ldub	[%g4+4], %g1
	cmp	%g2, 5
	be,pn	%xcc, .L48
	 stb	%g1, [%g3+4]
	ldub	[%g4+5], %g1
	cmp	%g2, 6
	be,pn	%xcc, .L48
	 stb	%g1, [%g3+5]
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L15:
	mov	0, %g1
	ldub	[%o1+%g1], %g2
.L46:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L46
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
.L59:
	brz,pn	%o3, .L60
	 add	%o3, -1, %o3
	ldub	[%o1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0-1]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne,pt	%icc, .L59
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L60:
	jmp	%o7+8
	 mov	0, %o0
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	brnz,pt	%o2, .L62
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L64:
	brz,pn	%o2, .L65
	 add	%o0, 1, %o0
.L62:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L64
	 add	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L65:
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
.L72:
	brz,pn	%o2, .L74
	 add	%o2, -1, %o2
	ldub	[%o0], %g1
	add	%o0, 1, %o0
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be,pt	%icc, .L72
	 add	%o1, 1, %o1
	sub	%g1, %g2, %o0
.L71:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L74:
	ba,pt	%xcc, .L71
	 mov	0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L84
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L84:
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
	ba,pt	%xcc, .L86
	 add	%o0, -1, %g2
.L88:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L89
	 add	%o2, -1, %o2
.L86:
	cmp	%o2, %g2
	bne,pt	%xcc, .L88
	 mov	%o2, %o0
	mov	0, %o0
.L89:
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
	brz,pn	%i2, .L94
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L94:
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
	be,pn	%icc, .L102
	 stb	%g1, [%o0]
.L97:
	ldub	[%o1+1], %g1
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	sll	%g1, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L97
	 stb	%g1, [%o0]
.L102:
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
	bne,pt	%icc, .L104
	 ldub	[%o0], %g1
.L111:
	jmp	%o7+8
	 nop
.L106:
	add	%o0, 1, %o0
	cmp	%g2, 0
	be,pn	%icc, .L111
	 ldub	[%o0], %g1
.L104:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L106
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
.L114:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L116
	 cmp	%g1, 0
	bne,pt	%icc, .L114
	 add	%o0, 1, %o0
	mov	0, %o0
.L116:
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
	add	%o1, -1, %g4
	ldsb	[%o1], %g5
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g5
	bne,pn	%icc, .L124
	 ldub	[%o1], %o4
.L118:
	cmp	%g2, 0
	be,a,pn	%icc, .L125
	 and	%o4, 0xff, %o4
	ldub	[%o0+%g1], %g3
	add	%g1, 1, %g1
	ldsb	[%g4+%g1], %g5
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g5
	be,pt	%icc, .L118
	 ldub	[%g4+%g1], %o4
.L124:
	and	%g3, 0xff, %o0
	and	%o4, 0xff, %o4
	sub	%o0, %o4, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L125:
	mov	0, %o0
	sub	%o0, %o4, %o0
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
	be,pn	%icc, .L129
	 mov	%o0, %g1
.L128:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L128
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L129:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L132
	 mov	0, %g5
	ldub	[%o0], %g5
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g5, 0
	bne,pt	%icc, .L135
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L141
	 ldub	[%o1], %o5
.L136:
	ldub	[%o0], %g5
	cmp	%g5, 0
	be,a,pn	%icc, .L134
	 ldub	[%g1+1], %o5
	mov	%o3, %g1
.L135:
	ldub	[%g1], %o5
	xor	%g1, %o2, %g4
	mov	0, %g2
	movrne	%g4, 1, %g2
	xor	%o5, %g5, %o4
	cmp	%g0, %o5
	addx	%g0, 0, %g3
	add	%o0, 1, %o0
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	and	%g3, %o4, %g3
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L136
	 add	%g1, 1, %o3
.L134:
	sub	%g5, %o5, %g5
.L132:
.L143:
	jmp	%o7+8
	 sra	%g5, 0, %o0
.L141:
	ba,pt	%xcc, .L143
	 sub	%g5, %o5, %g5
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L148
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L146:
	ldub	[%o0+1], %g2
	add	%o0, 2, %o0
	add	%o1, 2, %o1
	cmp	%o0, %o2
	ldub	[%o0-2], %g1
	stb	%g2, [%o1-2]
	bne,pt	%xcc, .L146
	 stb	%g1, [%o1-1]
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
	mov	0, %g1
	cmp	%o0, 127
	movleu	%icc, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
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
	xor	%o0, 127, %g2
	cmp	%o0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	cmp	%g0, %g2
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
	bne,pt	%icc, .L160
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L160
	 sethi	%hi(-65536), %g1
	mov	0, %g3
	or	%g1, 7, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 2
	movleu	%icc, 1, %g3
.L160:
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
	bleu,pn	%icc, .L170
	 sethi	%hi(-9216), %g1
	sethi	%hi(46080), %g2
	or	%g1, 982, %g1
	or	%g2, 981, %g2
	add	%o0, %g1, %g1
	cmp	%g2, %g1
	sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	subx	%g0, -1, %g3
	cmp	%g2, %o0
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L166
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g2
	add	%o0, %g3, %g3
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L166
	 sethi	%hi(-65536), %g2
	sethi	%hi(1048576), %g3
	or	%g2, 4, %g2
	or	%g3, 3, %g3
	add	%o0, %g2, %g2
	cmp	%g2, %g3
	bgu,pn	%icc, .L166
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	addx	%g0, 0, %g1
.L166:
	jmp	%o7+8
	 and	%g1, 1, %o0
.L170:
	add	%o0, 1, %g1
	mov	0, %o0
	and	%g1, 127, %g1
	cmp	%g1, 32
	movgu	%icc, 1, %o0
	mov	%o0, %g1
	jmp	%o7+8
	 and	%g1, 1, %o0
	.size	iswprint, .-iswprint
	.align 4
	.align 32
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L172
	 mov	1, %g1
	or	%o0, 32, %o0
	mov	0, %g1
	add	%o0, -97, %o0
	cmp	%o0, 5
	movleu	%icc, 1, %g1
.L172:
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
	fcmped	%fcc0, %f0, %f2
	fble,pt	%fcc0, .L180
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L180:
	jmp	%o7+8
	 fzero	%f0
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	fcmpes	%fcc1, %f1, %f3
	fble,pt	%fcc1, .L186
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L186:
	jmp	%o7+8
	 fzeros	%f0
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -144, %sp
	fmovd	%f0, %f8
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L188
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovde	%icc, %f0, %f2
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovd	%f2, %f0
.L188:
	add	%sp, 144, %sp
	fmovdl	%fcc2, %f2, %f8
	jmp	%o7+8
	 fmovd	%f8, %f0
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -144, %sp
	sethi	%hi(-2147483648), %g3
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L192
	 fcmpes	%fcc3, %f1, %f3
	cmp	%g1, 0
	fmovse	%icc, %f1, %f3
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f3, %f0
.L192:
	add	%sp, 144, %sp
	fmovsl	%fcc3, %f3, %f1
	jmp	%o7+8
	 fmovs	%f1, %f0
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -240, %sp
	std	%f0, [%fp+1999]
	ldx	[%fp+1999], %g1
	std	%f4, [%fp+1999]
	ldx	[%fp+1999], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L196
	 add	%fp, 2015, %o1
	cmp	%g1, 0
	fmovde	%icc, %f0, %f4
	fmovde	%icc, %f2, %f6
	fmovd	%f4, %f0
	return	%i7+8
	 fmovd	%f6, %f2
.L196:
	add	%fp, 2031, %o0
	std	%f0, [%fp+2031]
	std	%f2, [%fp+2039]
	std	%f0, [%fp+1983]
	std	%f2, [%fp+1991]
	std	%f4, [%fp+2015]
	std	%f6, [%fp+2023]
	std	%f4, [%fp+1999]
	call	_Qp_flt, 0
	 std	%f6, [%fp+2007]
	ldd	[%fp+1983], %f8
	ldd	[%fp+1991], %f10
	ldd	[%fp+1999], %f4
	ldd	[%fp+2007], %f6
	fmovrdne	%o0, %f4, %f8
	fmovrdne	%o0, %f6, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -144, %sp
	fmovd	%f0, %f8
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L200
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovde	%icc, %f2, %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovd	%f8, %f0
.L200:
	add	%sp, 144, %sp
	fmovdl	%fcc0, %f0, %f2
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
	sethi	%hi(-2147483648), %g3
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L204
	 fcmpes	%fcc1, %f1, %f3
	cmp	%g1, 0
	fmovse	%icc, %f3, %f1
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f1, %f0
.L204:
	add	%sp, 144, %sp
	fmovsl	%fcc1, %f1, %f3
	jmp	%o7+8
	 fmovs	%f3, %f0
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -240, %sp
	std	%f0, [%fp+1999]
	fmovd	%f0, %f8
	ldx	[%fp+1999], %g1
	std	%f4, [%fp+1999]
	ldx	[%fp+1999], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L208
	 fmovd	%f2, %f10
	cmp	%g1, 0
	fmovde	%icc, %f4, %f8
	fmovde	%icc, %f6, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L208:
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f0, [%fp+2031]
	std	%f2, [%fp+2039]
	std	%f0, [%fp+1983]
	std	%f2, [%fp+1991]
	std	%f4, [%fp+2015]
	std	%f6, [%fp+2023]
	std	%f4, [%fp+1999]
	call	_Qp_flt, 0
	 std	%f6, [%fp+2007]
	ldd	[%fp+1999], %f4
	ldd	[%fp+2007], %f6
	ldd	[%fp+1983], %f8
	ldd	[%fp+1991], %f10
	fmovrdne	%o0, %f8, %f4
	fmovrdne	%o0, %f10, %f6
	fmovd	%f4, %f0
	return	%i7+8
	 fmovd	%f6, %f2
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	orcc	%o0, 0, %g1
	sethi	%hi(s.0), %o0
	be,pn	%icc, .L214
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L213:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L213
	 stb	%g3, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L214:
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
	add	%o0, -1, %o0
	sethi	%hi(seed), %g1
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
	or	%g1, 45, %g1
	sethi	%hi(1284865024), %g2
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
	brz,a,pn %o1, .L224
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L226
	 stx	%o0, [%g1+8]
.L226:
	jmp	%o7+8
	 nop
.L224:
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
	brz,pn	%g1, .L237
	 ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g2
.L237:
	brnz,a,pt %g2, .L236
	 stx	%g1, [%g2]
.L236:
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
	brz,pn	%l1, .L239
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L241
	 mov	0, %l0
.L250:
	cmp	%l1, %l0
	be,pn	%xcc, .L251
	 add	%l1, 1, %g1
.L241:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	mov	%i5, %i0
	add	%l0, 1, %l0
	cmp	%o0, 0
	bne,pt	%icc, .L250
	 add	%i5, %i3, %i5
.L253:
	return	%i7+8
	 nop
.L239:
	add	%l1, 1, %g1
.L251:
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L253
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
	brz,pn	%l0, .L255
	 mov	0, %i5
	ba,pt	%xcc, .L264
	 mov	%i1, %o1
.L262:
	cmp	%l0, %i5
	be,pn	%xcc, .L263
	 mov	0, %i2
	mov	%i1, %o1
.L264:
	call	%i4, 0
	 mov	%i0, %o0
	mov	%i1, %i2
	add	%i5, 1, %i5
	cmp	%o0, 0
	bne,pt	%icc, .L262
	 add	%i1, %i3, %i1
	return	%i7+8
	 mov	%o2, %o0
.L255:
	mov	0, %i2
.L263:
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
	ldub	[%o0], %g2
	ba,pt	%xcc, .L287
	 mov	0, %g1
.L288:
	mov	0, %g1
	add	%o0, 1, %o0
.L287:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L288
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L269
	 cmp	%g4, 45
	bne,a,pt %icc, .L289
	 add	%g3, -48, %g3
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L278
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L272:
	mov	0, %o0
.L275:
	ldsb	[%g4+1], %g5
	sll	%o0, 2, %g1
	add	%g2, -48, %g2
	add	%g1, %o0, %g1
	add	%g4, 1, %g4
	sll	%g2, 24, %g3
	add	%g1, %g1, %g1
	sra	%g3, 24, %g3
	add	%g5, -48, %g5
	ldub	[%g4], %g2
	cmp	%g5, 9
	bleu,pt	%icc, .L275
	 sub	%g1, %g3, %o0
	sub	%g3, %g1, %g3
	cmp	%o5, 0
	move	%icc, %g3, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L289:
	mov	%o0, %g4
	cmp	%g3, 9
	bleu,pt	%icc, .L272
	 mov	0, %o5
.L278:
	mov	0, %o0
.L290:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L269:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L272
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L290
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L312
	 mov	0, %g1
.L313:
	mov	0, %g1
	add	%o0, 1, %o0
.L312:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L313
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L294
	 cmp	%g4, 45
	bne,pt	%icc, .L314
	 add	%g3, -48, %g1
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L303
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L297:
	mov	0, %g5
.L300:
	ldsb	[%g3+1], %g4
	sllx	%g5, 2, %g1
	add	%g2, -48, %g2
	add	%g1, %g5, %o0
	add	%g3, 1, %g3
	sllx	%g2, 56, %g1
	add	%o0, %o0, %o0
	srax	%g1, 56, %g1
	add	%g4, -48, %g4
	ldub	[%g3], %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L300
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L314:
	mov	0, %o5
	cmp	%g1, 9
	bleu,pt	%icc, .L297
	 mov	%o0, %g3
.L303:
	mov	0, %g5
.L315:
	jmp	%o7+8
	 mov	%g5, %o0
.L294:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L297
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L315
	 mov	0, %g5
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L335
	 mov	0, %g1
.L336:
	mov	0, %g1
	add	%o0, 1, %o0
.L335:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L336
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L319
	 cmp	%g4, 45
	be,a,pt	%icc, .L337
	 ldsb	[%o0+1], %g1
	add	%g3, -48, %g1
	mov	0, %o5
	cmp	%g1, 9
	bgu,pn	%icc, .L327
	 mov	%o0, %g3
.L321:
	mov	0, %g5
.L324:
	ldsb	[%g3+1], %g4
	sllx	%g5, 2, %g1
	add	%g2, -48, %g2
	add	%g1, %g5, %o0
	add	%g3, 1, %g3
	sllx	%g2, 56, %g1
	add	%o0, %o0, %o0
	srax	%g1, 56, %g1
	add	%g4, -48, %g4
	ldub	[%g3], %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L324
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L337:
	add	%o0, 1, %g3
	mov	1, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L321
	 ldub	[%o0+1], %g2
.L327:
	mov	0, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L319:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L327
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L321
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L348:
	brz,pn	%i2, .L350
	 mov	0, %i5
.L349:
	srlx	%i2, 1, %l0
	mov	%i0, %o0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	add	%i2, -1, %i2
	mov	%i5, %o1
	call	%i4, 0
	 sub	%i2, %l0, %i2
	cmp	%o0, 0
	bl,a,pn	%icc, .L348
	 mov	%l0, %i2
	be,pn	%icc, .L338
	 nop
	brnz,pt	%i2, .L349
	 add	%i5, %i3, %i1
	mov	0, %i5
.L338:
.L350:
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
	be,pn	%icc, .L361
	 mov	0, %i2
.L352:
	sra	%l0, 1, %i2
.L362:
	mov	%i5, %o2
	mov	%i2, %l1
	mov	%i0, %o0
	mulx	%i2, %i3, %i2
	add	%i1, %i2, %i2
	add	%l0, -1, %l0
	sra	%l0, 1, %l0
	call	%i4, 0
	 mov	%i2, %o1
	cmp	%o0, 0
	be,pn	%icc, .L351
	 nop
	ble,pn	%icc, .L354
	 cmp	%l0, 0
	bne,pt	%icc, .L352
	 add	%i2, %i3, %i1
	mov	0, %i2
.L351:
.L361:
	return	%i7+8
	 mov	%o2, %o0
.L354:
	orcc	%l1, 0, %l0
	bne,a,pt %icc, .L362
	 sra	%l0, 1, %i2
	ba,pt	%xcc, .L361
	 mov	0, %i2
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
	sdivx	%o0, %o1, %g1
	mulx	%g1, %o1, %o1
	sub	%o0, %o1, %o1
	mov	%g1, %o0
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
	sdivx	%o0, %o1, %g1
	mulx	%g1, %o1, %o1
	sub	%o0, %o1, %o1
	mov	%g1, %o0
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
	sdivx	%o0, %o1, %g1
	mulx	%g1, %o1, %o1
	sub	%o0, %o1, %o1
	mov	%g1, %o0
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
	be,pn	%icc, .L374
	 nop
.L371:
	cmp	%g1, %o1
	be,pn	%icc, .L377
	 nop
	lduw	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L371
	 add	%o0, 4, %o0
.L374:
	jmp	%o7+8
	 mov	0, %o0
.L377:
	jmp	%o7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.align 32
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	lduw	[%o0], %g2
	mov	4, %g1
	lduw	[%o1], %g3
	cmp	%g2, %g3
	bne,pn	%icc, .L380
	 add	%o1, -4, %g4
	cmp	%g2, 0
.L387:
	be,pn	%icc, .L386
	 cmp	%g2, %g3
	lduw	[%o0+%g1], %g2
	add	%g1, 4, %g1
	lduw	[%g4+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L387
	 cmp	%g2, 0
.L380:
	cmp	%g2, %g3
.L386:
	bl,pt	%icc, .L382
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L382:
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
.L389:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L389
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
	be,pn	%icc, .L394
	 nop
	mov	%o0, %g1
.L393:
	lduw	[%g1+4], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L393
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
.L394:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
.L399:
	brz,pn	%o2, .L402
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
	bne,pt	%icc, .L399
	 add	%o1, 4, %o1
	cmp	%g1, %g2
	bge,a,pt %icc, .L401
	 mov	0, %o0
	mov	-1, %o0
.L398:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L401:
	ba,pt	%xcc, .L398
	 movg	%icc, 1, %o0
.L402:
	ba,pt	%xcc, .L398
	 mov	0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L411
	 nop
.L416:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L417
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L416
	 add	%o0, 4, %o0
.L411:
	jmp	%o7+8
	 mov	0, %o0
.L417:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
.L421:
	brz,pn	%o2, .L424
	 add	%o2, -1, %o2
	lduw	[%o0], %g2
	add	%o0, 4, %o0
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,pt	%icc, .L421
	 add	%o1, 4, %o1
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
.L420:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L424:
	ba,pt	%xcc, .L420
	 mov	0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L434
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L434:
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
	be,pn	%xcc, .L461
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	blu,pt	%xcc, .L437
	 add	%o2, -1, %g1
	brz,pn	%o2, .L461
	 nop
	cmp	%g1, 8
	bleu,pn	%xcc, .L448
	 or	%o1, %o0, %g3
	add	%o1, 4, %g2
	and	%g3, 7, %g3
	mov	0, %g5
	xor	%o0, %g2, %g2
	mov	0, %g4
	movre	%g3, 1, %g5
	movrne	%g2, 1, %g4
	andcc	%g5, %g4, %g0
	be,pn	%icc, .L448
	 srlx	%o2, 1, %g3
	mov	0, %g1
	mov	0, %g2
.L442:
	ldd	[%o1+%g1], %f8
	add	%g2, 1, %g2
	cmp	%g3, %g2
	std	%f8, [%o0+%g1]
	bne,pt	%xcc, .L442
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L461
	 nop
	and	%o2, -2, %o2
	sllx	%o2, 2, %o2
	lduw	[%o1+%o2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%o2]
.L448:
	mov	0, %g2
.L445:
	lduw	[%o1+%g2], %g3
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g3, [%o0+%g2]
	bne,pt	%xcc, .L445
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L437:
	brz,pn	%o2, .L461
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L460:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L460
	 lduw	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L461:
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
	brz,pn	%o2, .L464
	 srlx	%o0, 2, %g1
	cmp	%g4, 5
	bleu,pn	%xcc, .L469
	 and	%g1, 1, %g1
	brz,pn	%g1, .L466
	 mov	%o0, %g5
	add	%o0, 4, %g5
	st	%o1, [%o0]
	add	%o2, -2, %g4
.L466:
	st	%o1, [%sp+2183]
	sub	%o2, %g1, %o2
	mov	0, %g2
	st	%o1, [%sp+2187]
	sllx	%g1, 2, %g1
	ldd	[%sp+2183], %f8
	srlx	%o2, 1, %g3
	add	%o0, %g1, %g1
.L467:
	std	%f8, [%g1]
	add	%g2, 1, %g2
	cmp	%g2, %g3
	bne,pt	%xcc, .L467
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L464
	 and	%o2, -2, %o2
	sllx	%o2, 2, %g1
	sub	%g4, %o2, %g4
	add	%g5, %g1, %g1
.L465:
	brz,pn	%g4, .L464
	 st	%o1, [%g1]
	cmp	%g4, 1
	be,pn	%xcc, .L464
	 st	%o1, [%g1+4]
	cmp	%g4, 2
	be,pn	%xcc, .L464
	 st	%o1, [%g1+8]
	cmp	%g4, 3
	be,pn	%xcc, .L464
	 st	%o1, [%g1+12]
	cmp	%g4, 4
	be,pn	%xcc, .L464
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L464:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L469:
	ba,pt	%xcc, .L465
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L495
	 nop
	brz,pn	%o2, .L537
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L534:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L534
	 ldub	[%o0+%o2], %g1
.L538:
	jmp	%o7+8
	 nop
.L495:
	bne,pt	%xcc, .L533
	 nop
	jmp	%o7+8
	 nop
.L533:
	brz,pn	%o2, .L537
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L505
	 add	%o0, 1, %g2
	or	%o1, %o0, %g1
	sub	%o1, %g2, %g2
	and	%g1, 7, %g1
	mov	0, %g3
	cmp	%g2, 6
	mov	0, %g2
	movre	%g1, 1, %g3
	movgu	%xcc, 1, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L505
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L535:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L535
	 ldd	[%o0+%g1], %f8
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L538
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %g5
	cmp	%g2, 1
	be,pn	%xcc, .L538
	 stb	%g5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be,pn	%xcc, .L538
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	cmp	%g2, 3
	be,pn	%xcc, .L538
	 stb	%g1, [%g3+2]
	ldub	[%g4+3], %g1
	cmp	%g2, 4
	be,pn	%xcc, .L538
	 stb	%g1, [%g3+3]
	ldub	[%g4+4], %g1
	cmp	%g2, 5
	be,pn	%xcc, .L538
	 stb	%g1, [%g3+4]
	ldub	[%g4+5], %g1
	cmp	%g2, 6
	be,pn	%xcc, .L538
	 stb	%g1, [%g3+5]
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L505:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L536:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L536
	 ldub	[%o0+%g1], %g2
.L537:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.align 32
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	sllx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srlx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotl64, .-rotl64
	.align 4
	.align 32
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	srlx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sllx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotr64, .-rotr64
	.align 4
	.align 32
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srl	%o0, %o1, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	rotl32, .-rotl32
	.align 4
	.align 32
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sll	%o0, %o1, %o0
	or	%o0, %g1, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	rotr32, .-rotr32
	.align 4
	.align 32
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	017
rotl_sz:
	sllx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	srlx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.align 32
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	017
rotr_sz:
	srlx	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	sllx	%o0, %o1, %o0
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	rotr_sz, .-rotr_sz
	.align 4
	.align 32
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
	sllx	%o0, 48, %o0
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
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 15, %o1
	sll	%o0, %o1, %o0
	or	%g1, %o0, %o0
	sllx	%o0, 48, %o0
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
	sll	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 7, %o1
	srl	%o0, %o1, %o0
	or	%g1, %o0, %o0
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
	srl	%o0, %o1, %g1
	sub	%g0, %o1, %o1
	and	%o1, 7, %o1
	sll	%o0, %o1, %o0
	or	%g1, %o0, %o0
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
	sethi	%hi(16711680), %g2
	and	%g1, %g2, %g1
	and	%o0, %g2, %g3
	sll	%o0, 24, %g4
	srlx	%o0, 24, %g2
	or	%g1, %g4, %o0
	srlx	%g3, 8, %g3
	or	%o0, %g2, %o0
	or	%o0, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	srlx	%o0, 56, %g4
	mov	255, %g2
	sllx	%g2, 8, %g5
	sllx	%o0, 56, %g1
	srlx	%o0, 40, %g3
	or	%g1, %g4, %g1
	srlx	%o0, 24, %g4
	and	%g3, %g5, %g3
	or	%g1, %g3, %g1
	sethi	%hi(16711680), %g3
	and	%g4, %g3, %g4
	sethi	%hi(4278190080), %g5
	srlx	%o0, 8, %g3
	or	%g1, %g4, %g1
	sllx	%o0, 8, %g4
	and	%g3, %g5, %g3
	sllx	%g2, 32, %g5
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	and	%g4, %g5, %g4
	sllx	%g2, 40, %g5
	or	%g1, %g4, %g1
	sllx	%g2, 48, %g2
	and	%g3, %g5, %g3
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
	ba,pt	%xcc, .L555
	 mov	0, %g1
.L558:
	cmp	%g1, 32
	be,a,pn	%icc, .L557
	 mov	0, %g1
.L555:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L558
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L557:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L560
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L560
	 nop
	mov	1, %g2
.L561:
	sra	%o0, 1, %g1
	add	%g2, 1, %g2
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L561
	 sra	%g1, 0, %o0
.L560:
	jmp	%o7+8
	 sra	%g2, 0, %o0
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.align 32
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	jmp	%o7+8
	 mov	0, %o0
	.size	gl_isinff, .-gl_isinff
	.align 4
	.align 32
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	jmp	%o7+8
	 mov	0, %o0
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.align 32
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	jmp	%o7+8
	 mov	0, %o0
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1073741824
	.align 4
.LC1:
	.long	1056964608
	.section	".text"
	.align 4
	.align 32
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	fadds	%f1, %f1, %f8
	fcmps	%fcc2, %f8, %f1
	fbe,pt	%fcc2, .L571
	 nop
	sethi	%hi(.LC0), %g1
	cmp	%o1, 0
	ld	[%g1+%lo(.LC0)], %f8
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f9
	fmovsl	%icc, %f9, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L585
	 srl	%o1, 31, %g1
.L574:
	fmuls	%f1, %f8, %f1
	srl	%o1, 31, %g1
.L585:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L571
	 nop
	fmuls	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L574
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L584:
	fmuls	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L574
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L584
	 add	%g1, %o1, %o1
.L571:
	jmp	%o7+8
	 fmovs	%f1, %f0
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	1073741824
	.long	0
	.align 8
.LC5:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	faddd	%f0, %f0, %f8
	fcmpd	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L602
	 nop
	sethi	%hi(.LC4), %g1
	cmp	%o1, 0
	ldd	[%g1+%lo(.LC4)], %f8
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f10
	fmovdl	%icc, %f10, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L601
	 srl	%o1, 31, %g1
.L590:
	fmuld	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L601:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L602
	 nop
	fmuld	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L590
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L600:
	fmuld	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L590
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L600
	 add	%g1, %o1, %o1
.L602:
	jmp	%o7+8
	 nop
	.size	ldexp, .-ldexp
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC8:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 16
.LC9:
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
	save	%sp, -464, %sp
	std	%f0, [%fp+1759]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f2, [%fp+1767]
	add	%fp, 1999, %o2
	ldx	[%fp+1759], %g2
	ldx	[%fp+1767], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	stx	%g2, [%fp+1999]
	call	_Qp_add, 0
	 stx	%g3, [%fp+2007]
	ldx	[%fp+2031], %g2
	add	%fp, 1967, %o1
	add	%fp, 1983, %o0
	ldx	[%fp+2039], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	ldx	[%fp+1759], %g2
	ldx	[%fp+1767], %g3
	stx	%g2, [%fp+1967]
	call	_Qp_feq, 0
	 stx	%g3, [%fp+1975]
	brnz,pt	%o0, .L620
	 ldd	[%fp+1759], %f0
	sethi	%hi(.LC8), %g1
	cmp	%i2, 0
	ldx	[%g1+%lo(.LC8)], %i4
	bl,pn	%icc, .L616
	 ldx	[%g1+%lo(.LC8+8)], %i5
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L621
	 srl	%i2, 31, %g1
.L607:
	ldx	[%fp+1759], %g2
.L619:
	add	%fp, 1871, %o2
	add	%fp, 1887, %o1
	ldx	[%fp+1767], %g3
	add	%fp, 1903, %o0
	stx	%g2, [%fp+1887]
	stx	%g3, [%fp+1895]
	stx	%i4, [%fp+1871]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1879]
	ldx	[%fp+1903], %g2
	ldx	[%fp+1911], %g3
	stx	%g2, [%fp+1759]
	stx	%g3, [%fp+1767]
.L606:
	srl	%i2, 31, %g1
.L621:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L604
	 add	%fp, 1775, %o2
	add	%fp, 1791, %o1
	stx	%i4, [%fp+1791]
	add	%fp, 1807, %o0
	stx	%i5, [%fp+1799]
	stx	%i4, [%fp+1775]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1783]
	ldx	[%fp+1807], %i4
	srl	%i2, 31, %g1
	ldx	[%fp+1815], %i5
	andcc	%i2, 1, %g0
	bne,pt	%xcc, .L607
	 add	%g1, %i2, %g1
	add	%fp, 1775, %o2
.L618:
	add	%fp, 1791, %o1
	stx	%i4, [%fp+1791]
	sra	%g1, 1, %i2
	add	%fp, 1807, %o0
	stx	%i5, [%fp+1799]
	stx	%i4, [%fp+1775]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1783]
	ldx	[%fp+1807], %i4
	srl	%i2, 31, %g1
	ldx	[%fp+1815], %i5
	andcc	%i2, 1, %g0
	bne,pt	%xcc, .L607
	 add	%g1, %i2, %g1
	ba,pt	%xcc, .L618
	 add	%fp, 1775, %o2
.L604:
	ldd	[%fp+1759], %f0
.L620:
	ldd	[%fp+1767], %f2
	return	%i7+8
	 nop
.L616:
	sethi	%hi(.LC9), %g1
	andcc	%i2, 1, %g0
	ldx	[%g1+%lo(.LC9)], %i4
	be,pt	%xcc, .L606
	 ldx	[%g1+%lo(.LC9+8)], %i5
	ba,pt	%xcc, .L619
	 ldx	[%fp+1759], %g2
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L656
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%xcc, .L630
	 or	%o0, %o1, %g1
	and	%g1, 7, %g1
	brnz,pn	%g1, .L630
	 and	%o2, -8, %g2
	ldd	[%o0+%g1], %f8
.L654:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f8
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L654
	 ldd	[%o0+%g1], %f8
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L656
	 sub	%o2, %g1, %g3
	ldub	[%o0+%g1], %g5
	cmp	%g3, 1
	ldub	[%o1+%g1], %o5
	xor	%g5, %o5, %g5
	be,pn	%xcc, .L656
	 stb	%g5, [%o0+%g1]
	ldub	[%g2+1], %g5
	cmp	%g3, 2
	ldub	[%g4+1], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L656
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %g5
	cmp	%g3, 3
	ldub	[%g4+2], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L656
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %g5
	cmp	%g3, 4
	ldub	[%g4+3], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L656
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g5
	cmp	%g3, 5
	ldub	[%g4+4], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L656
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %g5
	cmp	%g3, 6
	ldub	[%g4+5], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L656
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %g3
	ldub	[%g4+6], %g1
	xor	%g1, %g3, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L630:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L655:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L655
	 ldub	[%o0+%g1], %g3
.L656:
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
	be,pn	%icc, .L662
	 mov	%o0, %g1
.L659:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L659
	 add	%g1, 1, %g1
.L662:
	brz,pn	%o2, .L661
	 nop
	ldub	[%o1], %g2
	add	%g1, 1, %g1
	add	%o2, -1, %o2
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L662
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L661:
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L670
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L677:
	cmp	%g2, 0
	bne,a,pn %icc, .L673
	 add	%g1, 1, %g1
.L670:
	jmp	%o7+8
	 mov	%g1, %o0
.L673:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L677
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L670
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
	be,a,pn	%icc, .L685
	 mov	0, %o0
.L679:
	sra	%g3, 24, %g3
	ba,pt	%xcc, .L682
	 mov	%o1, %g1
.L681:
	cmp	%g2, %g3
	be,pn	%icc, .L685
	 nop
.L682:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L681
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L679
	 add	%o0, 1, %o0
	mov	0, %o0
.L685:
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
.L688:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L688
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
	sll	%o2, 24, %o2
	cmp	%o2, 0
	be,pn	%icc, .L701
	 mov	%o0, %g1
	mov	%o1, %g2
.L692:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L692
	 add	%g2, 1, %g2
	sub	%g2, %o1, %g2
	brz,pn	%g2, .L710
	 mov	%g1, %o0
	sra	%o2, 24, %o2
	add	%o1, -1, %o0
	ba,pt	%xcc, .L698
	 add	%o0, %g2, %o0
.L709:
	cmp	%g3, 0
	be,pn	%icc, .L708
	 add	%g1, 1, %g1
.L698:
	ldsb	[%g1], %g3
	cmp	%g3, %o2
	bne,pt	%icc, .L709
	 ldub	[%g1], %g2
	mov	%o1, %g3
	mov	%g1, %o4
	ba,pt	%xcc, .L694
	 and	%g2, 0xff, %g2
.L696:
	ldub	[%o4], %g2
	cmp	%g2, 0
	be,pn	%icc, .L695
	 add	%g3, 1, %g3
.L694:
	ldub	[%g3], %g5
	xor	%g3, %o0, %o5
	mov	0, %g4
	movrne	%o5, 1, %g4
	xor	%g5, %g2, %o3
	cmp	%g0, %g5
	addx	%g0, 0, %g5
	cmp	%g0, %o3
	subx	%g0, -1, %o3
	and	%g5, %o3, %g5
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L696
	 add	%o4, 1, %o4
.L695:
	ldub	[%g3], %g3
	cmp	%g2, %g3
	be,a,pn	%icc, .L710
	 mov	%g1, %o0
	ba,pt	%xcc, .L698
	 add	%g1, 1, %g1
.L708:
	jmp	%o7+8
	 mov	0, %o0
.L701:
	mov	%g1, %o0
.L710:
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
	mov	0, %g2
	mov	0, %g1
	fcmped	%fcc0, %f0, %f8
	fcmped	%fcc1, %f2, %f8
	movl	%fcc0, 1, %g2
	movg	%fcc1, 1, %g1
	andcc	%g2, %g1, %g0
	bne,pn	%icc, .L712
	 fmovd	%f0, %f10
	fcmped	%fcc2, %f0, %f8
	mov	0, %g2
	mov	0, %g1
	fcmped	%fcc3, %f2, %f8
	movg	%fcc2, 1, %g2
	movl	%fcc3, 1, %g1
	andcc	%g2, %g1, %g0
	bne,pn	%icc, .L712
	 nop
	jmp	%o7+8
	 nop
.L712:
	jmp	%o7+8
	 fnegd	%f10, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L736
	 nop
	cmp	%o1, %o3
	blu,a,pn %xcc, .L736
	 mov	0, %o0
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a,pn %xcc, .L736
	 mov	0, %o0
	ldub	[%o2], %o5
	sll	%o5, 24, %o5
	sra	%o5, 24, %g5
	ldsb	[%o0], %g1
.L737:
	cmp	%g1, %g5
	be,pn	%icc, .L734
	 add	%o0, 1, %g4
	mov	%g4, %o0
.L718:
	cmp	%o1, %o0
	bgeu,a,pt %xcc, .L737
	 ldsb	[%o0], %g1
.L727:
	jmp	%o7+8
	 mov	0, %o0
.L734:
	cmp	%o3, 1
	be,pn	%xcc, .L736
	 nop
.L721:
	ba,pt	%xcc, .L719
	 mov	1, %g1
.L720:
	cmp	%g1, %o3
	be,pn	%xcc, .L736
	 nop
.L719:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be,pt	%icc, .L720
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu,pn	%xcc, .L727
	 sra	%o5, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L718
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	ba,pt	%xcc, .L721
	 mov	%g1, %o0
.L736:
	jmp	%o7+8
	 nop
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L739
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L739:
	return	%i7+8
	 add	%o0, %o2, %o0
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC12:
	.long	1072693248
	.long	0
	.align 8
.LC13:
	.long	1071644672
	.long	0
	.align 8
.LC14:
	.long	1073741824
	.long	0
	.align 8
.LC15:
	.long	1070596096
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
	fbge,pt	%fcc0, .L744
	 mov	0, %g2
	fnegd	%f0, %f0
	mov	1, %g2
.L744:
	sethi	%hi(.LC12), %g3
	ldd	[%g3+%lo(.LC12)], %f8
	fcmped	%fcc1, %f0, %f8
	fbl,pn	%fcc1, .L763
	 mov	0, %g1
	sethi	%hi(.LC13), %g3
	ldd	[%g3+%lo(.LC13)], %f12
	sethi	%hi(.LC14), %g3
	ldd	[%g3+%lo(.LC14)], %f10
.L748:
	fmovd	%f0, %f8
	add	%g1, 1, %g1
	fcmped	%fcc2, %f8, %f10
	fbge,pt	%fcc2, .L748
	 fmuld	%f0, %f12, %f0
	fnegd	%f0, %f8
.L764:
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L763:
	sethi	%hi(.LC13), %g3
	mov	0, %g4
	ldd	[%g3+%lo(.LC13)], %f8
	mov	0, %g3
	fcmped	%fcc3, %f0, %f8
	fzero	%f8
	movl	%fcc3, 1, %g4
	fcmpd	%fcc0, %f0, %f8
	movne	%fcc0, 1, %g3
	andcc	%g4, %g3, %g0
	be,pt	%icc, .L764
	 fnegd	%f0, %f8
	sethi	%hi(.LC15), %g3
	ldd	[%g3+%lo(.LC15)], %f10
.L750:
	fcmped	%fcc1, %f0, %f10
	add	%g1, -1, %g1
	fbl,pt	%fcc1, .L750
	 faddd	%f0, %f0, %f0
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
	brz,pn	%g2, .L771
	 mov	0, %o0
.L767:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L767
	 add	%o0, %g1, %o0
.L771:
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
	blu,pt	%icc, .L773
	 mov	1, %g1
	ba,pt	%xcc, .L779
	 mov	0, %g2
.L776:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L775
	 cmp	%g1, 0
.L773:
	cmp	%o1, 0
	bge,pt	%icc, .L776
	 add	%o1, %o1, %g2
.L774:
	mov	0, %g2
.L779:
	cmp	%o0, %o1
	blu,pt	%icc, .L778
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L778:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L779
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L775:
	bne,pt	%icc, .L774
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
	be,pn	%icc, .L789
	 xor	%g2, %i0, %g1
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L789:
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
	be,pn	%xcc, .L792
	 xor	%i0, %g2, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L792:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L795
	 mov	0, %g2
.L796:
	and	%o0, 1, %g1
	add	%o1, %o1, %g3
	srlx	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g3, 0, %o1
	brnz,pt	%o0, .L796
	 add	%g2, %g1, %g2
.L795:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	and	%o2, -8, %g5
	cmp	%o0, %o1
	blu,pt	%xcc, .L803
	 srl	%o2, 3, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L831
	 add	%o2, -1, %g1
.L803:
	srl	%g2, 0, %g3
	mov	0, %g1
	cmp	%g2, 0
	be,pn	%icc, .L832
	 sllx	%g3, 3, %g3
	ldx	[%o1+%g1], %g2
.L835:
	stx	%g2, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L835
	 ldx	[%o1+%g1], %g2
	cmp	%g5, %o2
	bgeu,pn	%icc, .L839
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L811
	 srl	%g5, 0, %g1
	add	%g1, 1, %g2
	add	%o0, %g1, %g3
	add	%o1, %g1, %g4
	add	%o1, %g2, %g2
	sub	%g3, %g2, %g2
	or	%g4, %g3, %o3
	mov	0, %o4
	cmp	%g2, 6
	and	%o3, 7, %o3
	mov	0, %g2
	movgu	%xcc, 1, %o4
	movre	%o3, 1, %g2
	andcc	%o4, %g2, %g0
	be,pn	%icc, .L811
	 srl	%o5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L836:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L836
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L840
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L840
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L840
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L840
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L840
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L840
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%o1+%g2], %g3
	cmp	%g1, %o2
	bgeu,pn	%icc, .L840
	 stb	%g3, [%o0+%g2]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 stb	%g2, [%o0+%g1]
.L832:
	brz,pn	%o2, .L840
	 srl	%g5, 0, %g1
.L811:
	ldub	[%o1+%g1], %g2
.L837:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L837
	 ldub	[%o1+%g1], %g2
.L840:
	jmp	%o7+8
	 nop
.L831:
	brz,pn	%o2, .L840
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L838:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L838
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L839:
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
	blu,pt	%xcc, .L845
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L865
	 add	%o2, -1, %g1
.L845:
	cmp	%g4, 0
	be,pn	%icc, .L844
	 add	%g4, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L848
	 add	%o1, 2, %g2
	or	%o1, %o0, %g1
	sub	%o0, %g2, %g2
	and	%g1, 7, %g1
	mov	0, %g3
	cmp	%g2, 4
	mov	0, %g2
	movre	%g1, 1, %g3
	movgu	%xcc, 1, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L848
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%o1+%g1], %f8
.L869:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L869
	 ldd	[%o1+%g1], %f8
	sll	%g3, 2, %g1
	cmp	%g4, %g1
	be,pn	%icc, .L844
	 srl	%g1, 0, %g2
	add	%g1, 1, %g3
	add	%g2, %g2, %g2
	cmp	%g4, %g3
	lduh	[%o1+%g2], %g5
	bleu,pn	%icc, .L844
	 sth	%g5, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 2, %g1
	add	%g3, %g3, %g3
	cmp	%g4, %g1
	lduh	[%o1+%g3], %g2
	bleu,pn	%icc, .L844
	 sth	%g2, [%o0+%g3]
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L844:
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L872
	 nop
	add	%o2, -1, %o2
.L868:
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L865:
	brz,pn	%o2, .L873
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L870:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L870
	 ldub	[%o1+%g1], %g2
.L873:
	jmp	%o7+8
	 nop
.L848:
	mov	0, %g1
	add	%g4, %g4, %g4
	lduh	[%o1+%g1], %g2
.L871:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %xcc, .L871
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L872
	 nop
	ba,pt	%xcc, .L868
	 add	%o2, -1, %o2
.L872:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	and	%o2, -4, %g5
	cmp	%o0, %o1
	blu,pt	%xcc, .L879
	 srl	%o2, 2, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L909
	 add	%o2, -1, %g1
.L879:
	cmp	%g4, 0
	be,pn	%icc, .L910
	 nop
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L881
	 or	%o0, %o1, %g2
	add	%o1, 4, %g1
	and	%g2, 7, %g2
	mov	0, %o5
	xor	%o0, %g1, %g1
	mov	0, %g3
	movre	%g2, 1, %o5
	movrne	%g1, 1, %g3
	andcc	%o5, %g3, %g0
	be,pn	%icc, .L881
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%o1+%g1], %f8
.L914:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L914
	 ldd	[%o1+%g1], %f8
	add	%g3, %g3, %g3
	cmp	%g4, %g3
	be,pn	%icc, .L885
	 srl	%g3, 0, %g3
	sllx	%g3, 2, %g3
	lduw	[%o1+%g3], %g1
	st	%g1, [%o0+%g3]
.L885:
	cmp	%g5, %o2
.L913:
	bgeu,pn	%icc, .L919
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L888
	 srl	%g5, 0, %g1
	add	%g1, 1, %g2
	add	%o0, %g1, %g3
	add	%o1, %g1, %g4
	add	%o1, %g2, %g2
	sub	%g3, %g2, %g2
	or	%g4, %g3, %o3
	mov	0, %o4
	cmp	%g2, 6
	and	%o3, 7, %o3
	mov	0, %g2
	movgu	%xcc, 1, %o4
	movre	%o3, 1, %g2
	andcc	%o4, %g2, %g0
	be,pn	%icc, .L888
	 srl	%o5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L915:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L915
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L920
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L920
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L920
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L920
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L920
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L920
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%o1+%g2], %g3
	cmp	%g1, %o2
	bgeu,pn	%icc, .L920
	 stb	%g3, [%o0+%g2]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 stb	%g2, [%o0+%g1]
.L910:
	brz,pn	%o2, .L920
	 srl	%g5, 0, %g1
.L888:
	ldub	[%o1+%g1], %g2
.L916:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bgu,a,pt %icc, .L916
	 ldub	[%o1+%g1], %g2
.L920:
	jmp	%o7+8
	 nop
.L909:
	brz,pn	%o2, .L920
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L917:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L917
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L881:
	sllx	%g4, 2, %g4
	mov	0, %g1
	lduw	[%o1+%g1], %g2
.L918:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a,pt %xcc, .L918
	 lduw	[%o1+%g1], %g2
	ba,pt	%xcc, .L913
	 cmp	%g5, %o2
.L919:
	jmp	%o7+8
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
	brlz,pn	%o0, .L929
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtod	%f8, %f0
.L929:
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
	brlz,pn	%o0, .L932
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtos	%f8, %f0
.L932:
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
	bne,pn	%icc, .L953
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L937
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L953
	 mov	13, %g1
	sra	%o0, 1, %g1
	cmp	%g1, 0
	bne,a,pn %icc, .L953
	 mov	14, %g1
	movre	%o0, 1, %g1
	add	%g1, 15, %g1
.L937:
.L953:
	jmp	%o7+8
	 and	%g1, 31, %o0
	ba,pt	%xcc, .L937
	 mov	12, %g1
	ba,pt	%xcc, .L937
	 mov	3, %g1
	ba,pt	%xcc, .L937
	 mov	5, %g1
	ba,pt	%xcc, .L937
	 mov	7, %g1
	ba,pt	%xcc, .L937
	 mov	9, %g1
	ba,pt	%xcc, .L937
	 mov	11, %g1
	ba,pt	%xcc, .L937
	 mov	14, %g1
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%xcc, .L957
	 andcc	%o0, 2, %g0
	bne,pn	%xcc, .L958
	 andcc	%o0, 4, %g0
	bne,pn	%xcc, .L959
	 andcc	%o0, 8, %g0
	bne,pn	%xcc, .L960
	 andcc	%o0, 16, %g0
	bne,pn	%xcc, .L961
	 andcc	%o0, 32, %g0
	bne,pn	%xcc, .L962
	 andcc	%o0, 64, %g0
	bne,pn	%xcc, .L963
	 andcc	%o0, 128, %g0
	bne,pn	%xcc, .L964
	 andcc	%o0, 256, %g0
	bne,pn	%xcc, .L965
	 andcc	%o0, 512, %g0
	bne,pn	%xcc, .L966
	 andcc	%o0, 1024, %g0
	bne,pn	%xcc, .L967
	 andcc	%o0, 2048, %g0
	bne,pn	%xcc, .L968
	 sethi	%hi(4096), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L969
	 sethi	%hi(8192), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L970
	 sethi	%hi(16384), %g1
	andcc	%g1, %o0, %g0
	bne,a,pn %icc, .L973
	 mov	14, %o0
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	add	%o0, 15, %o0
.L956:
.L973:
	jmp	%o7+8
	 and	%o0, 31, %o0
.L957:
	ba,pt	%xcc, .L956
	 mov	0, %o0
.L958:
	ba,pt	%xcc, .L956
	 mov	1, %o0
.L969:
	ba,pt	%xcc, .L956
	 mov	12, %o0
.L959:
	ba,pt	%xcc, .L956
	 mov	2, %o0
.L960:
	ba,pt	%xcc, .L956
	 mov	3, %o0
.L961:
	ba,pt	%xcc, .L956
	 mov	4, %o0
.L962:
	ba,pt	%xcc, .L956
	 mov	5, %o0
.L963:
	ba,pt	%xcc, .L956
	 mov	6, %o0
.L964:
	ba,pt	%xcc, .L956
	 mov	7, %o0
.L965:
	ba,pt	%xcc, .L956
	 mov	8, %o0
.L966:
	ba,pt	%xcc, .L956
	 mov	9, %o0
.L967:
	ba,pt	%xcc, .L956
	 mov	10, %o0
.L968:
	ba,pt	%xcc, .L956
	 mov	11, %o0
.L970:
	ba,pt	%xcc, .L956
	 mov	13, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC20:
	.long	1191182336
	.section	".text"
	.align 4
	.align 32
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	05
__fixunssfsi:
	add	%sp, -144, %sp
	sethi	%hi(.LC20), %g1
	ld	[%g1+%lo(.LC20)], %f8
	fcmpes	%fcc2, %f1, %f8
	fbge,a,pn %fcc2, .L980
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L980:
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
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 3, %g3
	add	%g1, %g2, %g1
	sra	%o0, 4, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 5, %g3
	add	%g1, %g2, %g1
	sra	%o0, 6, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 7, %g3
	add	%g1, %g2, %g1
	sra	%o0, 8, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 9, %g3
	add	%g1, %g2, %g1
	sra	%o0, 10, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 11, %g3
	add	%g1, %g2, %g1
	sra	%o0, 12, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 13, %g3
	add	%g1, %g2, %g1
	sra	%o0, 14, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 15, %o0
	add	%g1, %g2, %g1
	add	%g1, %o0, %o0
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
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 3, %g3
	add	%g1, %g2, %g1
	sra	%o0, 4, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 5, %g3
	add	%g1, %g2, %g1
	sra	%o0, 6, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 7, %g3
	add	%g1, %g2, %g1
	sra	%o0, 8, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 9, %g3
	add	%g1, %g2, %g1
	sra	%o0, 10, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 11, %g3
	add	%g1, %g2, %g1
	sra	%o0, 12, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 13, %g3
	add	%g1, %g2, %g1
	sra	%o0, 14, %g2
	and	%g3, 1, %g3
	add	%g1, %g3, %g1
	and	%g2, 1, %g2
	sra	%o0, 15, %o0
	add	%g1, %g2, %g1
	add	%g1, %o0, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	brz,pn	%o0, .L984
	 mov	0, %g2
.L985:
	and	%o0, 1, %g1
	srl	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%g2, %g1, %g2
	bne,pt	%icc, .L985
	 add	%o1, %o1, %o1
.L984:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L989
	 mov	0, %g2
	brz,pn	%o1, .L989
	 nop
.L990:
	and	%o1, 1, %g1
	add	%o0, %o0, %g3
	srlx	%o1, 1, %o1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srl	%g3, 0, %o0
	brnz,pt	%o1, .L990
	 add	%g2, %g1, %g2
.L989:
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
	blu,pt	%icc, .L997
	 mov	1, %g1
	ba,pt	%xcc, .L1003
	 mov	0, %g2
.L1000:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L999
	 cmp	%g1, 0
.L997:
	cmp	%o1, 0
	bge,pt	%icc, .L1000
	 add	%o1, %o1, %g2
.L998:
	mov	0, %g2
.L1003:
	cmp	%o0, %o1
	blu,pt	%icc, .L1002
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L1002:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L1003
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L999:
	bne,pt	%icc, .L998
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
	fbl,pn	%fcc3, .L1013
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L1013:
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
	fbl,pn	%fcc1, .L1016
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L1016:
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
	bl,a,pn	%icc, .L1030
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L1023
	 mov	0, %g4
	mov	0, %o5
.L1022:
	mov	1, %g2
	mov	0, %g4
.L1024:
	sra	%o1, 1, %g3
	and	%g2, 0xff, %g1
	xor	%g1, 32, %g1
	cmp	%g0, %g3
	and	%o1, 1, %o1
	add	%g2, 1, %g2
	addx	%g0, 0, %g5
	sub	%g0, %o1, %o1
	cmp	%g0, %g1
	and	%o1, %o0, %o1
	add	%o0, %o0, %o0
	addx	%g0, 0, %g1
	add	%g4, %o1, %g4
	andcc	%g5, %g1, %g0
	sra	%o0, 0, %o0
	bne,pt	%icc, .L1024
	 sra	%g3, 0, %o1
	sub	%g0, %g4, %g1
	cmp	%o5, 0
	movne	%icc, %g1, %g4
.L1023:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L1030:
	mov	1, %o5
	ba,pt	%xcc, .L1022
	 sra	%o1, 0, %o1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	mov	1, %g1
	brlz,pn	%o0, .L1048
	 mov	0, %o5
.L1032:
	brgez,pt %o1, .L1049
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	mov	%g1, %o5
.L1049:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1035
	 mov	1, %g2
	cmp	%g1, 0
.L1050:
	bl,pn	%icc, .L1039
	 mov	0, %o0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1050
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1036
	 mov	0, %o0
.L1035:
	mov	0, %o0
.L1039:
	cmp	%g1, %g3
	bgu,a,pt %icc, .L1051
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L1051:
	cmp	%g2, 0
	bne,pt	%icc, .L1039
	 srl	%g1, 1, %g1
	srl	%o0, 0, %o0
.L1036:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1048:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1032
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L1053
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1053:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1059
	 mov	%o1, %g1
	cmp	%g1, 0
.L1071:
	bl,pn	%icc, .L1070
	 sub	%g3, %g1, %g4
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1071
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1072
	 srl	%g3, 0, %o0
.L1059:
	sub	%g3, %g1, %g4
.L1070:
	cmp	%g3, %g1
	srl	%g2, 1, %g2
	movgeu	%icc, %g4, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L1059
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L1072:
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
	blu,pt	%icc, .L1074
	 mov	1, %g4
	ba,pt	%xcc, .L1153
	 mov	1, %o5
.L1077:
	cmp	%g1, %o0
	addx	%g0, 0, %o4
	cmp	%g0, %g5
	addx	%g0, 0, %g2
	andcc	%o4, %g2, %g0
	be,pn	%icc, .L1076
	 cmp	%o3, 0
	mov	%g3, %g4
	mov	%g1, %o1
.L1074:
	sllx	%o1, 49, %g1
	add	%g4, %g4, %g3
	sll	%g3, 16, %g5
	mov	%g3, %o5
	sll	%o1, 16, %g2
	srlx	%g1, 48, %g1
	cmp	%g2, 0
	bge,pt	%icc, .L1077
	 srl	%g5, 16, %o3
	cmp	%o0, %o1
	blu,pt	%icc, .L1100
	 mov	0, %o5
	sub	%o0, %o1, %o0
	mov	%g4, %o5
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
.L1100:
	sll	%g4, 16, %g3
	srl	%g3, 17, %g1
	mov	%g1, %g4
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 1, %g2
.L1081:
	cmp	%o0, %g2
	blu,a,pt %icc, .L1159
	 srl	%g3, 18, %g2
	sub	%o0, %g2, %g2
	or	%o5, %g4, %o5
	sllx	%g2, 48, %g2
	srlx	%g2, 48, %o0
	srl	%g3, 18, %g2
.L1159:
	srlx	%o1, 2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L1079
	 srl	%g3, 18, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1160
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 19, %g2
.L1160:
	srlx	%o1, 3, %g1
	cmp	%g2, 0
	be,pn	%icc, .L1079
	 srl	%g3, 19, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1161
	 srl	%g3, 20, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 20, %g1
.L1161:
	srl	%g3, 20, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1162
	 srl	%g3, 21, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 21, %g1
.L1162:
	srl	%g3, 21, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1163
	 srl	%g3, 22, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 22, %g1
.L1163:
	srl	%g3, 22, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1164
	 srl	%g3, 23, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 23, %g1
.L1164:
	srl	%g3, 23, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1154
	 sub	%o0, %g1, %g1
.L1088:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1155
	 sub	%o0, %g1, %g1
.L1089:
	srl	%g3, 25, %g1
	srl	%g3, 25, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1156
	 sub	%o0, %g1, %g1
.L1090:
	srl	%g3, 26, %g1
	srl	%g3, 26, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1157
	 sub	%o0, %g1, %g1
.L1091:
	srl	%g3, 27, %g1
	srl	%g3, 27, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1158
	 sub	%o0, %g1, %g1
.L1092:
	srl	%g3, 28, %g1
	srl	%g3, 28, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1165
	 srl	%g3, 29, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 29, %g1
.L1165:
	srl	%g3, 29, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1166
	 srl	%g3, 30, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 30, %g1
.L1166:
	srl	%g3, 30, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1079
	 srlx	%o1, 14, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1167
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1167:
	bge,pn	%icc, .L1079
	 srlx	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a,pt %icc, .L1079
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%o5, 1, %o5
	sllx	%o1, 48, %g1
	srlx	%g1, 48, %o0
.L1079:
	mov	%o0, %g1
	movre	%o2, %o5, %g1
	mov	%g1, %o5
	sllx	%o5, 48, %o5
	jmp	%o7+8
	 srlx	%o5, 48, %o0
.L1076:
	be,pn	%icc, .L1079
	 cmp	%o0, %g1
	blu,pt	%icc, .L1080
	 sethi	%hi(31744), %g5
	sub	%o0, %g1, %o0
	sllx	%o0, 48, %o0
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	srlx	%o0, 48, %o0
	mov	%g1, %o1
	ba,pt	%xcc, .L1081
	 sll	%g3, 16, %g3
.L1154:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1088
	 srlx	%g1, 48, %o0
.L1080:
	mov	0, %o5
	sll	%g3, 16, %g3
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	ba,pt	%xcc, .L1081
	 mov	%g1, %o1
.L1155:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1089
	 srlx	%g1, 48, %o0
.L1156:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1090
	 srlx	%g1, 48, %o0
.L1157:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1091
	 srlx	%g1, 48, %o0
.L1158:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1092
	 srlx	%g1, 48, %o0
.L1153:
	movne	%icc, 0, %o5
	ba,pt	%xcc, .L1079
	 move	%icc, 0, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	cmp	%o1, %o0
	blu,pt	%xcc, .L1169
	 sethi	%hi(2147483648), %g4
	ba,pt	%xcc, .L1175
	 mov	0, %g2
.L1172:
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1171
	 nop
.L1169:
	and	%o1, %g4, %g2
	brz,pt	%g2, .L1172
	 mov	0, %g3
	mov	0, %g2
.L1175:
	cmp	%o0, %o1
.L1184:
	blu,a,pt %xcc, .L1183
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L1183:
	brnz,pt	%g1, .L1175
	 srlx	%o1, 1, %o1
.L1173:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
.L1171:
	brz,pn	%g1, .L1173
	 mov	0, %g2
	ba,pt	%xcc, .L1184
	 cmp	%o0, %o1
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1186
	 sll	%o0, %o1, %g1
	mov	0, %o0
.L1187:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L1191:
	jmp	%o7+8
	 nop
.L1186:
	brz,pn	%o1, .L1191
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %g3, %g3
	sll	%g2, %o1, %g2
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1187
	 or	%g3, %g2, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1193
	 nop
	sllx	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1193:
	brz,pn	%o2, .L1197
	 nop
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %g1
	srlx	%o1, %g1, %g1
	sllx	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1197:
	jmp	%o7+8
	 nop
	.size	__ashlti3, .-__ashlti3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1199
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L1200:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1204:
	jmp	%o7+8
	 nop
.L1199:
	brz,pn	%o1, .L1204
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %o0
	ba,pt	%xcc, .L1200
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1206
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L1210:
	jmp	%o7+8
	 nop
.L1206:
	brz,pn	%o2, .L1210
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %g2
	srax	%o0, %o2, %g1
	or	%g2, %o1, %o1
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ashrti3, .-__ashrti3
	.align 4
	.align 32
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	sllx	%o0, 56, %g4
	mov	255, %g2
	sllx	%g2, 8, %g5
	srlx	%o0, 56, %g1
	srlx	%o0, 40, %g3
	or	%g1, %g4, %g1
	srlx	%o0, 24, %g4
	and	%g3, %g5, %g3
	or	%g1, %g3, %g1
	sethi	%hi(16711680), %g3
	and	%g4, %g3, %g4
	sethi	%hi(4278190080), %g5
	srlx	%o0, 8, %g3
	or	%g1, %g4, %g1
	sllx	%o0, 8, %g4
	and	%g3, %g5, %g3
	sllx	%g2, 32, %g5
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	and	%g4, %g5, %g4
	sllx	%g2, 40, %g5
	or	%g1, %g4, %g1
	sllx	%g2, 48, %g2
	and	%g3, %g5, %g3
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
	sll	%o0, 24, %g3
	srl	%o0, 24, %g1
	srl	%o0, 8, %g2
	or	%g1, %g3, %g1
	sll	%o0, 8, %o0
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
	sethi	%hi(16711680), %g2
	and	%o0, %g2, %o0
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
	mov	8, %g4
	or	%g1, 1023, %g3
	or	%g1, 768, %g2
	mov	16, %g1
	cmp	%g3, %o0
	subx	%g0, -1, %g3
	sll	%g3, 4, %g3
	sub	%g1, %g3, %g1
	srl	%o0, %g1, %g1
	mov	2, %o0
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	sub	%g4, %g2, %g4
	add	%g2, %g3, %g3
	srl	%g1, %g4, %g1
	mov	4, %g4
	and	%g1, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	sub	%g4, %g2, %g4
	add	%g2, %g3, %g3
	srl	%g1, %g4, %g1
	and	%g1, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	add	%g2, %g2, %g2
	sub	%o0, %g2, %g4
	add	%g2, %g3, %g2
	srl	%g1, %g4, %g1
	sub	%o0, %g1, %o0
	andcc	%g1, 2, %g0
	movne	%xcc, 0, %o0
	add	%o0, %g2, %o0
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
	bl,pn	%icc, .L1216
	 mov	0, %g1
	bg,pn	%icc, .L1216
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1216
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1216:
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
	bl,pn	%icc, .L1222
	 mov	-1, %g1
	bg,pn	%icc, .L1222
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1222
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1222:
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
	bl,pn	%xcc, .L1227
	 mov	0, %g1
	bg,pn	%xcc, .L1227
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1227
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1227:
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
	srl	%g1, 1, %g3
	xnor	%g0, %g1, %o0
	and	%o0, 1, %o0
	mov	2, %g1
	sub	%g1, %g3, %g1
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
	brnz,pt	%i1, .L1235
	 nop
	brnz,pt	%i0, .L1239
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1235:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1239:
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
	be,pt	%xcc, .L1241
	 srlx	%o0, 32, %g1
	mov	0, %g2
	srl	%g1, %o1, %g1
.L1242:
	st	%g2, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1240:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1241:
	brz,pn	%o1, .L1240
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g3
	srl	%o0, %o1, %g1
	srl	%g2, %o1, %g2
	ba,pt	%xcc, .L1242
	 or	%g3, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1247
	 nop
	srlx	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1247:
	brz,pn	%o2, .L1251
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1251:
	jmp	%o7+8
	 nop
	.size	__lshrti3, .-__lshrti3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	srl	%o0, 16, %g4
	sethi	%hi(64512), %g5
	or	%g5, 1023, %g5
	and	%o0, %g5, %g3
	and	%o1, %g5, %g1
	smul	%g3, %g1, %o5
	srl	%o1, 16, %o1
	and	%o5, %g5, %g2
	smul	%g1, %g4, %g1
	srl	%o5, 16, %o5
	add	%g1, %o5, %g1
	sll	%g1, 16, %o5
	srl	%o5, 16, %o4
	add	%g2, %o5, %o0
	smul	%g3, %o1, %g3
	add	%g3, %o4, %g3
	and	%o0, %g5, %o0
	smul	%g4, %o1, %g4
	srl	%g1, 16, %g1
	sll	%g3, 16, %g2
	add	%g1, %g4, %g1
	srl	%g3, 16, %g3
	add	%o0, %g2, %o0
	srl	%o0, 0, %o0
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	jmp	%o7+8
	 or	%o0, %g1, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	srl	%o0, 16, %g5
	sethi	%hi(64512), %g4
	srl	%o1, 16, %o4
	or	%g4, 1023, %g4
	and	%g4, %o0, %g3
	and	%g4, %o1, %g1
	smul	%g3, %g1, %o5
	and	%o5, %g4, %g2
	smul	%g1, %g5, %g1
	srl	%o5, 16, %o5
	add	%g1, %o5, %g1
	sll	%g1, 16, %o5
	srl	%o5, 16, %o3
	add	%g2, %o5, %g2
	smul	%g3, %o4, %g3
	add	%g3, %o3, %g3
	and	%g2, %g4, %g2
	smul	%g5, %o4, %g5
	sll	%g3, 16, %g4
	srl	%g1, 16, %g1
	add	%g2, %g4, %g2
	add	%g1, %g5, %g1
	mov	-1, %g4
	srl	%g3, 16, %g3
	srlx	%g4, 32, %g4
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	and	%g4, %g2, %g2
	srax	%o1, 32, %g3
	or	%g2, %g1, %g1
	smul	%o0, %g3, %g2
	srax	%g1, 32, %g3
	and	%g1, %g4, %g1
	srax	%o0, 32, %o0
	add	%g2, %g3, %g2
	smul	%o1, %o0, %o1
	add	%g2, %o1, %g2
	sllx	%g2, 32, %o0
	jmp	%o7+8
	 or	%g1, %o0, %o0
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.align 32
	.global __mulddi3
	.type	__mulddi3, #function
	.proc	05
__mulddi3:
	umul	%o0, %o1, %g2
	srlx	%o0, 32, %g4
	mov	-1, %o5
	srlx	%g2, 32, %g3
	umul	%o1, %g4, %g1
	srlx	%o5, 32, %o5
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g3
	and	%g2, %o5, %g2
	srlx	%o1, 32, %o1
	add	%g2, %g3, %g2
	umul	%o0, %o1, %o0
	srlx	%g3, 32, %g5
	and	%g2, %o5, %o5
	umul	%g4, %o1, %g4
	srlx	%g1, 32, %g2
	add	%o0, %g5, %g1
	sllx	%g1, 32, %o1
	add	%g2, %g4, %o0
	srlx	%g1, 32, %g1
	add	%o5, %o1, %o1
	jmp	%o7+8
	 add	%o0, %g1, %o0
	.size	__mulddi3, .-__mulddi3
	.align 4
	.align 32
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	save	%sp, -176, %sp
	umul	%i1, %i3, %g2
	srlx	%i1, 32, %g5
	mov	-1, %g4
	srlx	%g2, 32, %g3
	umul	%i3, %g5, %g1
	srlx	%i3, 32, %i4
	add	%g1, %g3, %g1
	sllx	%g1, 32, %i5
	umul	%i1, %i4, %g3
	srlx	%i5, 32, %o7
	srlx	%g4, 32, %g4
	add	%g3, %o7, %g3
	umul	%g5, %i4, %g5
	srlx	%g1, 32, %g1
	and	%g2, %g4, %g2
	add	%g1, %g5, %g1
	add	%g2, %i5, %g2
	srlx	%g3, 32, %g5
	and	%g2, %g4, %g2
	sllx	%g3, 32, %g3
	add	%g1, %g5, %g1
	mulx	%i1, %i2, %i2
	add	%i2, %g1, %i2
	add	%g2, %g3, %i1
	mulx	%i3, %i0, %i0
	return	%i7+8
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
	srlx	%o0, 32, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 16, %g1
	xor	%g1, %o0, %o0
	srl	%o0, 8, %g2
	xor	%g2, %o0, %g2
	sethi	%hi(26624), %o0
	srl	%g2, 4, %g1
	or	%o0, 406, %o0
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sra	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.align 32
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	xor	%o1, %o0, %o1
	sethi	%hi(26624), %o0
	srax	%o1, 32, %g1
	or	%o0, 406, %o0
	xor	%g1, %o1, %o1
	srl	%o1, 16, %g1
	xor	%g1, %o1, %g1
	srl	%g1, 8, %g2
	xor	%g2, %g1, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sra	%o0, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__parityti2, .-__parityti2
	.align 4
	.align 32
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
	.align 32
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	sethi	%hi(1431655424), %g1
	sethi	%hi(858992640), %g4
	or	%g1, 341, %g1
	or	%g4, 819, %g4
	sllx	%g1, 32, %g3
	srlx	%o0, 1, %g2
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	sethi	%hi(252644352), %g3
	sub	%o0, %g1, %o0
	or	%g3, 783, %g3
	sllx	%g4, 32, %g1
	srlx	%o0, 2, %g2
	add	%g1, %g4, %g1
	and	%o0, %g1, %o0
	and	%g2, %g1, %g2
	sllx	%g3, 32, %g4
	add	%g2, %o0, %g2
	srlx	%g2, 4, %g1
	add	%g4, %g3, %g3
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
	srl	%o0, 1, %g1
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	and	%g1, %g2, %g1
	sub	%o0, %g1, %o0
	sethi	%hi(858992640), %g1
	srl	%o0, 2, %g2
	or	%g1, 819, %g1
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
	.align 4
	.align 32
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	sethi	%hi(1431655424), %g2
	mov	0, %g5
	or	%g2, 341, %g2
	sethi	%hi(858992640), %o4
	sllx	%o0, 63, %g3
	or	%o4, 819, %o4
	srlx	%o1, 1, %g1
	sethi	%hi(252644352), %o3
	sllx	%g2, 32, %g4
	or	%g3, %g1, %g1
	add	%g4, %g2, %g4
	mov	0, %g3
	and	%g1, %g4, %g1
	or	%o3, 783, %o3
	sub	%o1, %g1, %g1
	mov	0, %g2
	srlx	%o0, 1, %o5
	cmp	%g1, %o1
	movgu	%xcc, 1, %g5
	and	%o5, %g4, %o5
	srlx	%g1, 2, %g4
	sub	%o0, %o5, %o0
	sub	%o0, %g5, %o0
	sllx	%o0, 62, %o5
	sllx	%o4, 32, %g5
	or	%o5, %g4, %g4
	srlx	%o0, 2, %o5
	add	%g5, %o4, %g5
	and	%g4, %g5, %g4
	and	%g1, %g5, %g1
	add	%g4, %g1, %g1
	and	%o5, %g5, %o5
	and	%o0, %g5, %o0
	cmp	%g1, %g4
	movlu	%xcc, 1, %g3
	srlx	%g1, 4, %o4
	add	%o5, %o0, %g4
	sllx	%o3, 32, %g5
	add	%g3, %g4, %g3
	sllx	%g3, 60, %o5
	add	%g5, %o3, %g4
	srlx	%g3, 4, %g5
	or	%o5, %o4, %o4
	add	%o4, %g1, %g1
	add	%g5, %g3, %g3
	and	%g1, %g4, %g5
	cmp	%g1, %o4
	movlu	%xcc, 1, %g2
	add	%g2, %g3, %g2
	and	%g2, %g4, %g2
	add	%g2, %g5, %g2
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
.LC22:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	sethi	%hi(.LC22), %g2
	fmovd	%f0, %f8
	mov	%o1, %g1
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L1265
	 ldd	[%g2+%lo(.LC22)], %f0
.L1267:
	fmuld	%f0, %f8, %f0
.L1265:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1266
	 andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1267
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1273:
	fmuld	%f8, %f8, %f8
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1267
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1273
	 add	%g2, %g1, %g1
.L1266:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1272
	 sethi	%hi(.LC22), %g1
	jmp	%o7+8
	 nop
.L1272:
	ldd	[%g1+%lo(.LC22)], %f8
	jmp	%o7+8
	 fdivd	%f8, %f0, %f0
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC24:
	.long	1065353216
	.section	".text"
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	sethi	%hi(.LC24), %g2
	mov	%o1, %g1
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L1275
	 ld	[%g2+%lo(.LC24)], %f0
.L1277:
	fmuls	%f0, %f1, %f0
.L1275:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1276
	 andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1277
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1283:
	fmuls	%f1, %f1, %f1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1277
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1283
	 add	%g2, %g1, %g1
.L1276:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1282
	 sethi	%hi(.LC24), %g1
	jmp	%o7+8
	 nop
.L1282:
	ld	[%g1+%lo(.LC24)], %f8
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
	blu,pn	%icc, .L1285
	 mov	0, %g1
	bgu,pn	%icc, .L1285
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1285
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1285:
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
	blu,pn	%icc, .L1291
	 mov	-1, %g1
	bgu,pn	%icc, .L1291
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1291
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1291:
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
	blu,pn	%xcc, .L1296
	 mov	0, %g1
	bgu,pn	%xcc, .L1296
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1296
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1296:
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
	.global _Qp_dtoq
	.global _Qp_flt
	.global _Qp_flt
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
