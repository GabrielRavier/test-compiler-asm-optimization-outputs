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
	fzero	%f10
	mov	0, %g2
	mov	0, %g1
	fcmped	%fcc2, %f0, %f10
	fcmped	%fcc3, %f2, %f10
	movl	%fcc2, 1, %g2
	movl	%fcc3, 1, %g1
	cmp	%g2, %g1
	be,pt	%icc, .L188
	 fmovd	%f0, %f8
	fmovdl	%fcc2, %f2, %f8
	jmp	%o7+8
	 fmovd	%f8, %f0
.L188:
	fcmped	%fcc1, %f0, %f2
	fmovdge	%fcc1, %f0, %f2
	jmp	%o7+8
	 fmovd	%f2, %f0
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	fzeros	%f8
	mov	0, %g2
	mov	0, %g1
	fcmpes	%fcc2, %f1, %f8
	fcmpes	%fcc3, %f3, %f8
	movl	%fcc2, 1, %g2
	movl	%fcc3, 1, %g1
	cmp	%g2, %g1
	be,pt	%icc, .L194
	 fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc2, %f3, %f1
	jmp	%o7+8
	 fmovs	%f1, %f0
.L194:
	fmovsge	%fcc1, %f1, %f3
	jmp	%o7+8
	 fmovs	%f3, %f0
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -336, %sp
	std	%f0, [%fp+1903]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f2, [%fp+1911]
	mov	%g0, %i2
	mov	%g0, %i3
	ldx	[%fp+1903], %g2
	mov	0, %i5
	ldx	[%fp+1911], %g3
	std	%f4, [%fp+1887]
	std	%f6, [%fp+1895]
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%i2, [%fp+2015]
	call	_Qp_flt, 0
	 stx	%i3, [%fp+2023]
	stx	%i2, [%fp+1983]
	ldx	[%fp+1887], %g2
	mov	%o0, %g1
	add	%fp, 1983, %o1
	ldx	[%fp+1895], %g3
	add	%fp, 1999, %o0
	movrne	%g1, 1, %i5
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	call	_Qp_flt, 0
	 stx	%i3, [%fp+1991]
	mov	0, %g1
	movrne	%o0, 1, %g1
	cmp	%g1, %i5
	be,pt	%icc, .L200
	 ldx	[%fp+1903], %g2
	add	%fp, 1951, %o1
	add	%fp, 1967, %o0
	ldx	[%fp+1911], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	stx	%i2, [%fp+1951]
	call	_Qp_flt, 0
	 stx	%i3, [%fp+1959]
	ldd	[%fp+1903], %f0
	ldd	[%fp+1911], %f2
	ldd	[%fp+1887], %f8
	ldd	[%fp+1895], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L200:
	add	%fp, 1919, %o1
	add	%fp, 1935, %o0
	ldx	[%fp+1911], %g3
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	ldx	[%fp+1887], %g2
	ldx	[%fp+1895], %g3
	stx	%g2, [%fp+1919]
	call	_Qp_fge, 0
	 stx	%g3, [%fp+1927]
	ldd	[%fp+1887], %f0
	ldd	[%fp+1895], %f2
	ldd	[%fp+1903], %f8
	ldd	[%fp+1911], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	fzero	%f8
	mov	0, %g2
	mov	0, %g1
	fcmped	%fcc2, %f0, %f8
	fcmped	%fcc3, %f2, %f8
	movl	%fcc2, 1, %g2
	movl	%fcc3, 1, %g1
	cmp	%g2, %g1
	be,pt	%icc, .L206
	 fcmped	%fcc1, %f0, %f2
	fmovdl	%fcc2, %f0, %f2
	jmp	%o7+8
	 fmovd	%f2, %f0
.L206:
	fmovdle	%fcc1, %f0, %f2
	jmp	%o7+8
	 fmovd	%f2, %f0
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	fzeros	%f8
	mov	0, %g2
	mov	0, %g1
	fcmpes	%fcc2, %f1, %f8
	fcmpes	%fcc3, %f3, %f8
	movl	%fcc2, 1, %g2
	movl	%fcc3, 1, %g1
	cmp	%g2, %g1
	be,pt	%icc, .L212
	 fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc2, %f1, %f3
	jmp	%o7+8
	 fmovs	%f3, %f0
.L212:
	fmovsle	%fcc1, %f1, %f3
	jmp	%o7+8
	 fmovs	%f3, %f0
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -336, %sp
	std	%f0, [%fp+1903]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f2, [%fp+1911]
	mov	%g0, %i2
	mov	%g0, %i3
	ldx	[%fp+1903], %g2
	mov	0, %i5
	ldx	[%fp+1911], %g3
	std	%f4, [%fp+1887]
	std	%f6, [%fp+1895]
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%i2, [%fp+2015]
	call	_Qp_flt, 0
	 stx	%i3, [%fp+2023]
	stx	%i2, [%fp+1983]
	ldx	[%fp+1887], %g2
	mov	%o0, %g1
	add	%fp, 1983, %o1
	ldx	[%fp+1895], %g3
	add	%fp, 1999, %o0
	movrne	%g1, 1, %i5
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	call	_Qp_flt, 0
	 stx	%i3, [%fp+1991]
	mov	0, %g1
	movrne	%o0, 1, %g1
	cmp	%g1, %i5
	be,pt	%icc, .L218
	 ldx	[%fp+1903], %g2
	add	%fp, 1951, %o1
	add	%fp, 1967, %o0
	ldx	[%fp+1911], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	stx	%i2, [%fp+1951]
	call	_Qp_flt, 0
	 stx	%i3, [%fp+1959]
	ldd	[%fp+1887], %f0
	ldd	[%fp+1895], %f2
	ldd	[%fp+1903], %f8
	ldd	[%fp+1911], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L218:
	add	%fp, 1919, %o1
	add	%fp, 1935, %o0
	ldx	[%fp+1911], %g3
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	ldx	[%fp+1887], %g2
	ldx	[%fp+1895], %g3
	stx	%g2, [%fp+1919]
	call	_Qp_fle, 0
	 stx	%g3, [%fp+1927]
	ldd	[%fp+1887], %f0
	ldd	[%fp+1895], %f2
	ldd	[%fp+1903], %f8
	ldd	[%fp+1911], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
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
	sethi	%hi(s.0), %o0
	be,pn	%icc, .L227
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L226:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L226
	 stb	%g3, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L227:
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
	brz,a,pn %o1, .L237
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L239
	 stx	%o0, [%g1+8]
.L239:
	jmp	%o7+8
	 nop
.L237:
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
	brz,pn	%g1, .L250
	 ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g2
.L250:
	brnz,a,pt %g2, .L249
	 stx	%g1, [%g2]
.L249:
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
	brz,pn	%l1, .L252
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L254
	 mov	0, %l0
.L263:
	cmp	%l1, %l0
	be,pn	%xcc, .L264
	 add	%l1, 1, %g1
.L254:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	mov	%i5, %i0
	add	%l0, 1, %l0
	cmp	%o0, 0
	bne,pt	%icc, .L263
	 add	%i5, %i3, %i5
.L266:
	return	%i7+8
	 nop
.L252:
	add	%l1, 1, %g1
.L264:
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L266
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
	brz,pn	%l0, .L268
	 mov	0, %i5
	ba,pt	%xcc, .L277
	 mov	%i1, %o1
.L275:
	cmp	%l0, %i5
	be,pn	%xcc, .L276
	 mov	0, %i2
	mov	%i1, %o1
.L277:
	call	%i4, 0
	 mov	%i0, %o0
	mov	%i1, %i2
	add	%i5, 1, %i5
	cmp	%o0, 0
	bne,pt	%icc, .L275
	 add	%i1, %i3, %i1
	return	%i7+8
	 mov	%o2, %o0
.L268:
	mov	0, %i2
.L276:
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
	ba,pt	%xcc, .L300
	 mov	0, %g1
.L301:
	mov	0, %g1
	add	%o0, 1, %o0
.L300:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L301
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L282
	 cmp	%g4, 45
	bne,a,pt %icc, .L302
	 add	%g3, -48, %g3
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L291
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L285:
	mov	0, %o0
.L288:
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
	bleu,pt	%icc, .L288
	 sub	%g1, %g3, %o0
	sub	%g3, %g1, %g3
	cmp	%o5, 0
	move	%icc, %g3, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L302:
	mov	%o0, %g4
	cmp	%g3, 9
	bleu,pt	%icc, .L285
	 mov	0, %o5
.L291:
	mov	0, %o0
.L303:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L282:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L285
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L303
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L325
	 mov	0, %g1
.L326:
	mov	0, %g1
	add	%o0, 1, %o0
.L325:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L326
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L307
	 cmp	%g4, 45
	bne,pt	%icc, .L327
	 add	%g3, -48, %g1
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L316
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L310:
	mov	0, %g5
.L313:
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
	bleu,pt	%icc, .L313
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L327:
	mov	0, %o5
	cmp	%g1, 9
	bleu,pt	%icc, .L310
	 mov	%o0, %g3
.L316:
	mov	0, %g5
.L328:
	jmp	%o7+8
	 mov	%g5, %o0
.L307:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L310
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L328
	 mov	0, %g5
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L348
	 mov	0, %g1
.L349:
	mov	0, %g1
	add	%o0, 1, %o0
.L348:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L349
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L332
	 cmp	%g4, 45
	be,a,pt	%icc, .L350
	 ldsb	[%o0+1], %g1
	add	%g3, -48, %g1
	mov	0, %o5
	cmp	%g1, 9
	bgu,pn	%icc, .L340
	 mov	%o0, %g3
.L334:
	mov	0, %g5
.L337:
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
	bleu,pt	%icc, .L337
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L350:
	add	%o0, 1, %g3
	mov	1, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L334
	 ldub	[%o0+1], %g2
.L340:
	mov	0, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L332:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L340
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L334
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L361:
	brz,pn	%i2, .L363
	 mov	0, %i5
.L362:
	srlx	%i2, 1, %l0
	mov	%i0, %o0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	add	%i2, -1, %i2
	mov	%i5, %o1
	call	%i4, 0
	 sub	%i2, %l0, %i2
	cmp	%o0, 0
	bl,a,pn	%icc, .L361
	 mov	%l0, %i2
	be,pn	%icc, .L351
	 nop
	brnz,pt	%i2, .L362
	 add	%i5, %i3, %i1
	mov	0, %i5
.L351:
.L363:
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
	be,pn	%icc, .L374
	 mov	0, %i2
.L365:
	sra	%l0, 1, %i2
.L375:
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
	be,pn	%icc, .L364
	 nop
	ble,pn	%icc, .L367
	 cmp	%l0, 0
	bne,pt	%icc, .L365
	 add	%i2, %i3, %i1
	mov	0, %i2
.L364:
.L374:
	return	%i7+8
	 mov	%o2, %o0
.L367:
	orcc	%l1, 0, %l0
	bne,a,pt %icc, .L375
	 sra	%l0, 1, %i2
	ba,pt	%xcc, .L374
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
	be,pn	%icc, .L387
	 nop
.L384:
	cmp	%g1, %o1
	be,pn	%icc, .L390
	 nop
	lduw	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L384
	 add	%o0, 4, %o0
.L387:
	jmp	%o7+8
	 mov	0, %o0
.L390:
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
	bne,pn	%icc, .L393
	 add	%o1, -4, %g4
	cmp	%g2, 0
.L400:
	be,pn	%icc, .L399
	 cmp	%g2, %g3
	lduw	[%o0+%g1], %g2
	add	%g1, 4, %g1
	lduw	[%g4+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L400
	 cmp	%g2, 0
.L393:
	cmp	%g2, %g3
.L399:
	bl,pt	%icc, .L395
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L395:
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
.L402:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L402
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
	be,pn	%icc, .L407
	 nop
	mov	%o0, %g1
.L406:
	lduw	[%g1+4], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L406
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
.L407:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
.L412:
	brz,pn	%o2, .L415
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
	bne,pt	%icc, .L412
	 add	%o1, 4, %o1
	cmp	%g1, %g2
	bge,a,pt %icc, .L414
	 mov	0, %o0
	mov	-1, %o0
.L411:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L414:
	ba,pt	%xcc, .L411
	 movg	%icc, 1, %o0
.L415:
	ba,pt	%xcc, .L411
	 mov	0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L424
	 nop
.L429:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L430
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L429
	 add	%o0, 4, %o0
.L424:
	jmp	%o7+8
	 mov	0, %o0
.L430:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
.L434:
	brz,pn	%o2, .L437
	 add	%o2, -1, %o2
	lduw	[%o0], %g2
	add	%o0, 4, %o0
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,pt	%icc, .L434
	 add	%o1, 4, %o1
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
.L433:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L437:
	ba,pt	%xcc, .L433
	 mov	0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L447
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L447:
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
	be,pn	%xcc, .L474
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	blu,pt	%xcc, .L450
	 add	%o2, -1, %g1
	brz,pn	%o2, .L474
	 nop
	cmp	%g1, 8
	bleu,pn	%xcc, .L461
	 or	%o1, %o0, %g3
	add	%o1, 4, %g2
	and	%g3, 7, %g3
	mov	0, %g5
	xor	%o0, %g2, %g2
	mov	0, %g4
	movre	%g3, 1, %g5
	movrne	%g2, 1, %g4
	andcc	%g5, %g4, %g0
	be,pn	%icc, .L461
	 srlx	%o2, 1, %g3
	mov	0, %g1
	mov	0, %g2
.L455:
	ldd	[%o1+%g1], %f8
	add	%g2, 1, %g2
	cmp	%g3, %g2
	std	%f8, [%o0+%g1]
	bne,pt	%xcc, .L455
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L474
	 nop
	and	%o2, -2, %o2
	sllx	%o2, 2, %o2
	lduw	[%o1+%o2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%o2]
.L461:
	mov	0, %g2
.L458:
	lduw	[%o1+%g2], %g3
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g3, [%o0+%g2]
	bne,pt	%xcc, .L458
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L450:
	brz,pn	%o2, .L474
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L473:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L473
	 lduw	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L474:
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
	brz,pn	%o2, .L477
	 srlx	%o0, 2, %g1
	cmp	%g4, 5
	bleu,pn	%xcc, .L482
	 and	%g1, 1, %g1
	brz,pn	%g1, .L479
	 mov	%o0, %g5
	add	%o0, 4, %g5
	st	%o1, [%o0]
	add	%o2, -2, %g4
.L479:
	st	%o1, [%sp+2183]
	sub	%o2, %g1, %o2
	mov	0, %g2
	st	%o1, [%sp+2187]
	sllx	%g1, 2, %g1
	ldd	[%sp+2183], %f8
	srlx	%o2, 1, %g3
	add	%o0, %g1, %g1
.L480:
	std	%f8, [%g1]
	add	%g2, 1, %g2
	cmp	%g2, %g3
	bne,pt	%xcc, .L480
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L477
	 and	%o2, -2, %o2
	sllx	%o2, 2, %g1
	sub	%g4, %o2, %g4
	add	%g5, %g1, %g1
.L478:
	brz,pn	%g4, .L477
	 st	%o1, [%g1]
	cmp	%g4, 1
	be,pn	%xcc, .L477
	 st	%o1, [%g1+4]
	cmp	%g4, 2
	be,pn	%xcc, .L477
	 st	%o1, [%g1+8]
	cmp	%g4, 3
	be,pn	%xcc, .L477
	 st	%o1, [%g1+12]
	cmp	%g4, 4
	be,pn	%xcc, .L477
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L477:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L482:
	ba,pt	%xcc, .L478
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L508
	 nop
	brz,pn	%o2, .L550
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L547:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L547
	 ldub	[%o0+%o2], %g1
.L551:
	jmp	%o7+8
	 nop
.L508:
	bne,pt	%xcc, .L546
	 nop
	jmp	%o7+8
	 nop
.L546:
	brz,pn	%o2, .L550
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L518
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
	be,pn	%icc, .L518
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L548:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L548
	 ldd	[%o0+%g1], %f8
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L551
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %g5
	cmp	%g2, 1
	be,pn	%xcc, .L551
	 stb	%g5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be,pn	%xcc, .L551
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	cmp	%g2, 3
	be,pn	%xcc, .L551
	 stb	%g1, [%g3+2]
	ldub	[%g4+3], %g1
	cmp	%g2, 4
	be,pn	%xcc, .L551
	 stb	%g1, [%g3+3]
	ldub	[%g4+4], %g1
	cmp	%g2, 5
	be,pn	%xcc, .L551
	 stb	%g1, [%g3+4]
	ldub	[%g4+5], %g1
	cmp	%g2, 6
	be,pn	%xcc, .L551
	 stb	%g1, [%g3+5]
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L518:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L549:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L549
	 ldub	[%o0+%g1], %g2
.L550:
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
	ba,pt	%xcc, .L568
	 mov	0, %g1
.L571:
	cmp	%g1, 32
	be,a,pn	%icc, .L570
	 mov	0, %g1
.L568:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L571
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L570:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L573
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L573
	 nop
	mov	1, %g2
.L574:
	sra	%o0, 1, %g1
	add	%g2, 1, %g2
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L574
	 sra	%g1, 0, %o0
.L573:
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
	fbe,pt	%fcc2, .L584
	 nop
	sethi	%hi(.LC0), %g1
	cmp	%o1, 0
	ld	[%g1+%lo(.LC0)], %f8
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f9
	fmovsl	%icc, %f9, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L598
	 srl	%o1, 31, %g1
.L587:
	fmuls	%f1, %f8, %f1
	srl	%o1, 31, %g1
.L598:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L584
	 nop
	fmuls	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L587
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L597:
	fmuls	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L587
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L597
	 add	%g1, %o1, %o1
.L584:
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
	fbe,pt	%fcc3, .L615
	 nop
	sethi	%hi(.LC4), %g1
	cmp	%o1, 0
	ldd	[%g1+%lo(.LC4)], %f8
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f10
	fmovdl	%icc, %f10, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L614
	 srl	%o1, 31, %g1
.L603:
	fmuld	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L614:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L615
	 nop
	fmuld	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L603
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L613:
	fmuld	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L603
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L613
	 add	%g1, %o1, %o1
.L615:
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
	brnz,pt	%o0, .L633
	 ldd	[%fp+1759], %f0
	sethi	%hi(.LC8), %g1
	cmp	%i2, 0
	ldx	[%g1+%lo(.LC8)], %i4
	bl,pn	%icc, .L629
	 ldx	[%g1+%lo(.LC8+8)], %i5
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L634
	 srl	%i2, 31, %g1
.L620:
	ldx	[%fp+1759], %g2
.L632:
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
.L619:
	srl	%i2, 31, %g1
.L634:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L617
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
	bne,pt	%xcc, .L620
	 add	%g1, %i2, %g1
	add	%fp, 1775, %o2
.L631:
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
	bne,pt	%xcc, .L620
	 add	%g1, %i2, %g1
	ba,pt	%xcc, .L631
	 add	%fp, 1775, %o2
.L617:
	ldd	[%fp+1759], %f0
.L633:
	ldd	[%fp+1767], %f2
	return	%i7+8
	 nop
.L629:
	sethi	%hi(.LC9), %g1
	andcc	%i2, 1, %g0
	ldx	[%g1+%lo(.LC9)], %i4
	be,pt	%xcc, .L619
	 ldx	[%g1+%lo(.LC9+8)], %i5
	ba,pt	%xcc, .L632
	 ldx	[%fp+1759], %g2
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L669
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%xcc, .L643
	 or	%o0, %o1, %g1
	and	%g1, 7, %g1
	brnz,pn	%g1, .L643
	 and	%o2, -8, %g2
	ldd	[%o0+%g1], %f8
.L667:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f8
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L667
	 ldd	[%o0+%g1], %f8
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L669
	 sub	%o2, %g1, %g3
	ldub	[%o0+%g1], %g5
	cmp	%g3, 1
	ldub	[%o1+%g1], %o5
	xor	%g5, %o5, %g5
	be,pn	%xcc, .L669
	 stb	%g5, [%o0+%g1]
	ldub	[%g2+1], %g5
	cmp	%g3, 2
	ldub	[%g4+1], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L669
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %g5
	cmp	%g3, 3
	ldub	[%g4+2], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L669
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %g5
	cmp	%g3, 4
	ldub	[%g4+3], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L669
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g5
	cmp	%g3, 5
	ldub	[%g4+4], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L669
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %g5
	cmp	%g3, 6
	ldub	[%g4+5], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L669
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %g3
	ldub	[%g4+6], %g1
	xor	%g1, %g3, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L643:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L668:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L668
	 ldub	[%o0+%g1], %g3
.L669:
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
	be,pn	%icc, .L675
	 mov	%o0, %g1
.L672:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L672
	 add	%g1, 1, %g1
.L675:
	brz,pn	%o2, .L674
	 nop
	ldub	[%o1], %g2
	add	%g1, 1, %g1
	add	%o2, -1, %o2
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L675
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L674:
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L683
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L690:
	cmp	%g2, 0
	bne,a,pn %icc, .L686
	 add	%g1, 1, %g1
.L683:
	jmp	%o7+8
	 mov	%g1, %o0
.L686:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L690
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L683
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
	be,a,pn	%icc, .L698
	 mov	0, %o0
.L692:
	sra	%g3, 24, %g3
	ba,pt	%xcc, .L695
	 mov	%o1, %g1
.L694:
	cmp	%g2, %g3
	be,pn	%icc, .L698
	 nop
.L695:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L694
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L692
	 add	%o0, 1, %o0
	mov	0, %o0
.L698:
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
.L701:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L701
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
	be,pn	%icc, .L714
	 mov	%o0, %g1
	mov	%o1, %g2
.L705:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L705
	 add	%g2, 1, %g2
	sub	%g2, %o1, %g2
	brz,pn	%g2, .L723
	 mov	%g1, %o0
	sra	%o2, 24, %o2
	add	%o1, -1, %o0
	ba,pt	%xcc, .L711
	 add	%o0, %g2, %o0
.L722:
	cmp	%g3, 0
	be,pn	%icc, .L721
	 add	%g1, 1, %g1
.L711:
	ldsb	[%g1], %g3
	cmp	%g3, %o2
	bne,pt	%icc, .L722
	 ldub	[%g1], %g2
	mov	%o1, %g3
	mov	%g1, %o4
	ba,pt	%xcc, .L707
	 and	%g2, 0xff, %g2
.L709:
	ldub	[%o4], %g2
	cmp	%g2, 0
	be,pn	%icc, .L708
	 add	%g3, 1, %g3
.L707:
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
	bne,pt	%icc, .L709
	 add	%o4, 1, %o4
.L708:
	ldub	[%g3], %g3
	cmp	%g2, %g3
	be,a,pn	%icc, .L723
	 mov	%g1, %o0
	ba,pt	%xcc, .L711
	 add	%g1, 1, %g1
.L721:
	jmp	%o7+8
	 mov	0, %o0
.L714:
	mov	%g1, %o0
.L723:
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
	bne,pn	%icc, .L725
	 fmovd	%f0, %f10
	fcmped	%fcc2, %f0, %f8
	mov	0, %g2
	mov	0, %g1
	fcmped	%fcc3, %f2, %f8
	movg	%fcc2, 1, %g2
	movl	%fcc3, 1, %g1
	andcc	%g2, %g1, %g0
	bne,pn	%icc, .L725
	 nop
	jmp	%o7+8
	 nop
.L725:
	jmp	%o7+8
	 fnegd	%f10, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L749
	 nop
	cmp	%o1, %o3
	blu,a,pn %xcc, .L749
	 mov	0, %o0
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a,pn %xcc, .L749
	 mov	0, %o0
	ldub	[%o2], %o5
	sll	%o5, 24, %o5
	sra	%o5, 24, %g5
	ldsb	[%o0], %g1
.L750:
	cmp	%g1, %g5
	be,pn	%icc, .L747
	 add	%o0, 1, %g4
	mov	%g4, %o0
.L731:
	cmp	%o1, %o0
	bgeu,a,pt %xcc, .L750
	 ldsb	[%o0], %g1
.L740:
	jmp	%o7+8
	 mov	0, %o0
.L747:
	cmp	%o3, 1
	be,pn	%xcc, .L749
	 nop
.L734:
	ba,pt	%xcc, .L732
	 mov	1, %g1
.L733:
	cmp	%g1, %o3
	be,pn	%xcc, .L749
	 nop
.L732:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be,pt	%icc, .L733
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu,pn	%xcc, .L740
	 sra	%o5, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L731
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	ba,pt	%xcc, .L734
	 mov	%g1, %o0
.L749:
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
	brz,pn	%i2, .L752
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
	fbge,pt	%fcc0, .L757
	 mov	0, %g2
	fnegd	%f0, %f0
	mov	1, %g2
.L757:
	sethi	%hi(.LC12), %g3
	ldd	[%g3+%lo(.LC12)], %f8
	fcmped	%fcc1, %f0, %f8
	fbl,pn	%fcc1, .L776
	 mov	0, %g1
	sethi	%hi(.LC13), %g3
	ldd	[%g3+%lo(.LC13)], %f12
	sethi	%hi(.LC14), %g3
	ldd	[%g3+%lo(.LC14)], %f10
.L761:
	fmovd	%f0, %f8
	add	%g1, 1, %g1
	fcmped	%fcc2, %f8, %f10
	fbge,pt	%fcc2, .L761
	 fmuld	%f0, %f12, %f0
	fnegd	%f0, %f8
.L777:
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L776:
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
	be,pt	%icc, .L777
	 fnegd	%f0, %f8
	sethi	%hi(.LC15), %g3
	ldd	[%g3+%lo(.LC15)], %f10
.L763:
	fcmped	%fcc1, %f0, %f10
	add	%g1, -1, %g1
	fbl,pt	%fcc1, .L763
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
	brz,pn	%g2, .L784
	 mov	0, %o0
.L780:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L780
	 add	%o0, %g1, %o0
.L784:
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
	blu,pt	%icc, .L786
	 mov	1, %g1
	ba,pt	%xcc, .L792
	 mov	0, %g2
.L789:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L788
	 cmp	%g1, 0
.L786:
	cmp	%o1, 0
	bge,pt	%icc, .L789
	 add	%o1, %o1, %g2
.L787:
	mov	0, %g2
.L792:
	cmp	%o0, %o1
	blu,pt	%icc, .L791
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L791:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L792
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L788:
	bne,pt	%icc, .L787
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
	be,pn	%icc, .L802
	 xor	%g2, %i0, %g1
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L802:
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
	be,pn	%xcc, .L805
	 xor	%i0, %g2, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L805:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L808
	 mov	0, %g2
.L809:
	and	%o0, 1, %g1
	add	%o1, %o1, %g3
	srlx	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g3, 0, %o1
	brnz,pt	%o0, .L809
	 add	%g2, %g1, %g2
.L808:
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
	blu,pt	%xcc, .L816
	 srl	%o2, 3, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L844
	 add	%o2, -1, %g1
.L816:
	srl	%g2, 0, %g3
	mov	0, %g1
	cmp	%g2, 0
	be,pn	%icc, .L845
	 sllx	%g3, 3, %g3
	ldx	[%o1+%g1], %g2
.L848:
	stx	%g2, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L848
	 ldx	[%o1+%g1], %g2
	cmp	%g5, %o2
	bgeu,pn	%icc, .L852
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L824
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
	be,pn	%icc, .L824
	 srl	%o5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L849:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L849
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L853
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L853
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L853
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L853
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L853
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L853
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%o1+%g2], %g3
	cmp	%g1, %o2
	bgeu,pn	%icc, .L853
	 stb	%g3, [%o0+%g2]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 stb	%g2, [%o0+%g1]
.L845:
	brz,pn	%o2, .L853
	 srl	%g5, 0, %g1
.L824:
	ldub	[%o1+%g1], %g2
.L850:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L850
	 ldub	[%o1+%g1], %g2
.L853:
	jmp	%o7+8
	 nop
.L844:
	brz,pn	%o2, .L853
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L851:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L851
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L852:
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
	blu,pt	%xcc, .L858
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L878
	 add	%o2, -1, %g1
.L858:
	cmp	%g4, 0
	be,pn	%icc, .L857
	 add	%g4, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L861
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
	be,pn	%icc, .L861
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%o1+%g1], %f8
.L882:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L882
	 ldd	[%o1+%g1], %f8
	sll	%g3, 2, %g1
	cmp	%g4, %g1
	be,pn	%icc, .L857
	 srl	%g1, 0, %g2
	add	%g1, 1, %g3
	add	%g2, %g2, %g2
	cmp	%g4, %g3
	lduh	[%o1+%g2], %g5
	bleu,pn	%icc, .L857
	 sth	%g5, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 2, %g1
	add	%g3, %g3, %g3
	cmp	%g4, %g1
	lduh	[%o1+%g3], %g2
	bleu,pn	%icc, .L857
	 sth	%g2, [%o0+%g3]
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L857:
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L885
	 nop
	add	%o2, -1, %o2
.L881:
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L878:
	brz,pn	%o2, .L886
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L883:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L883
	 ldub	[%o1+%g1], %g2
.L886:
	jmp	%o7+8
	 nop
.L861:
	mov	0, %g1
	add	%g4, %g4, %g4
	lduh	[%o1+%g1], %g2
.L884:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %xcc, .L884
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L885
	 nop
	ba,pt	%xcc, .L881
	 add	%o2, -1, %o2
.L885:
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
	blu,pt	%xcc, .L892
	 srl	%o2, 2, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L922
	 add	%o2, -1, %g1
.L892:
	cmp	%g4, 0
	be,pn	%icc, .L923
	 nop
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L894
	 or	%o0, %o1, %g2
	add	%o1, 4, %g1
	and	%g2, 7, %g2
	mov	0, %o5
	xor	%o0, %g1, %g1
	mov	0, %g3
	movre	%g2, 1, %o5
	movrne	%g1, 1, %g3
	andcc	%o5, %g3, %g0
	be,pn	%icc, .L894
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%o1+%g1], %f8
.L927:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L927
	 ldd	[%o1+%g1], %f8
	add	%g3, %g3, %g3
	cmp	%g4, %g3
	be,pn	%icc, .L898
	 srl	%g3, 0, %g3
	sllx	%g3, 2, %g3
	lduw	[%o1+%g3], %g1
	st	%g1, [%o0+%g3]
.L898:
	cmp	%g5, %o2
.L926:
	bgeu,pn	%icc, .L932
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L901
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
	be,pn	%icc, .L901
	 srl	%o5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L928:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L928
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L933
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L933
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L933
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L933
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L933
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L933
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%o1+%g2], %g3
	cmp	%g1, %o2
	bgeu,pn	%icc, .L933
	 stb	%g3, [%o0+%g2]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 stb	%g2, [%o0+%g1]
.L923:
	brz,pn	%o2, .L933
	 srl	%g5, 0, %g1
.L901:
	ldub	[%o1+%g1], %g2
.L929:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bgu,a,pt %icc, .L929
	 ldub	[%o1+%g1], %g2
.L933:
	jmp	%o7+8
	 nop
.L922:
	brz,pn	%o2, .L933
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L930:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L930
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L894:
	sllx	%g4, 2, %g4
	mov	0, %g1
	lduw	[%o1+%g1], %g2
.L931:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a,pt %xcc, .L931
	 lduw	[%o1+%g1], %g2
	ba,pt	%xcc, .L926
	 cmp	%g5, %o2
.L932:
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
	brlz,pn	%o0, .L942
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtod	%f8, %f0
.L942:
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
	brlz,pn	%o0, .L945
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtos	%f8, %f0
.L945:
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
	bne,pn	%icc, .L966
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L950
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L966
	 mov	13, %g1
	sra	%o0, 1, %g1
	cmp	%g1, 0
	bne,a,pn %icc, .L966
	 mov	14, %g1
	movre	%o0, 1, %g1
	add	%g1, 15, %g1
.L950:
.L966:
	jmp	%o7+8
	 and	%g1, 31, %o0
	ba,pt	%xcc, .L950
	 mov	12, %g1
	ba,pt	%xcc, .L950
	 mov	3, %g1
	ba,pt	%xcc, .L950
	 mov	5, %g1
	ba,pt	%xcc, .L950
	 mov	7, %g1
	ba,pt	%xcc, .L950
	 mov	9, %g1
	ba,pt	%xcc, .L950
	 mov	11, %g1
	ba,pt	%xcc, .L950
	 mov	14, %g1
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%xcc, .L970
	 andcc	%o0, 2, %g0
	bne,pn	%xcc, .L971
	 andcc	%o0, 4, %g0
	bne,pn	%xcc, .L972
	 andcc	%o0, 8, %g0
	bne,pn	%xcc, .L973
	 andcc	%o0, 16, %g0
	bne,pn	%xcc, .L974
	 andcc	%o0, 32, %g0
	bne,pn	%xcc, .L975
	 andcc	%o0, 64, %g0
	bne,pn	%xcc, .L976
	 andcc	%o0, 128, %g0
	bne,pn	%xcc, .L977
	 andcc	%o0, 256, %g0
	bne,pn	%xcc, .L978
	 andcc	%o0, 512, %g0
	bne,pn	%xcc, .L979
	 andcc	%o0, 1024, %g0
	bne,pn	%xcc, .L980
	 andcc	%o0, 2048, %g0
	bne,pn	%xcc, .L981
	 sethi	%hi(4096), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L982
	 sethi	%hi(8192), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L983
	 sethi	%hi(16384), %g1
	andcc	%g1, %o0, %g0
	bne,a,pn %icc, .L986
	 mov	14, %o0
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	add	%o0, 15, %o0
.L969:
.L986:
	jmp	%o7+8
	 and	%o0, 31, %o0
.L970:
	ba,pt	%xcc, .L969
	 mov	0, %o0
.L971:
	ba,pt	%xcc, .L969
	 mov	1, %o0
.L982:
	ba,pt	%xcc, .L969
	 mov	12, %o0
.L972:
	ba,pt	%xcc, .L969
	 mov	2, %o0
.L973:
	ba,pt	%xcc, .L969
	 mov	3, %o0
.L974:
	ba,pt	%xcc, .L969
	 mov	4, %o0
.L975:
	ba,pt	%xcc, .L969
	 mov	5, %o0
.L976:
	ba,pt	%xcc, .L969
	 mov	6, %o0
.L977:
	ba,pt	%xcc, .L969
	 mov	7, %o0
.L978:
	ba,pt	%xcc, .L969
	 mov	8, %o0
.L979:
	ba,pt	%xcc, .L969
	 mov	9, %o0
.L980:
	ba,pt	%xcc, .L969
	 mov	10, %o0
.L981:
	ba,pt	%xcc, .L969
	 mov	11, %o0
.L983:
	ba,pt	%xcc, .L969
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
	fbge,a,pn %fcc2, .L993
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L993:
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
	brz,pn	%o0, .L997
	 mov	0, %g2
.L998:
	and	%o0, 1, %g1
	srl	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%g2, %g1, %g2
	bne,pt	%icc, .L998
	 add	%o1, %o1, %o1
.L997:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L1002
	 mov	0, %g2
	brz,pn	%o1, .L1002
	 nop
.L1003:
	and	%o1, 1, %g1
	add	%o0, %o0, %g3
	srlx	%o1, 1, %o1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srl	%g3, 0, %o0
	brnz,pt	%o1, .L1003
	 add	%g2, %g1, %g2
.L1002:
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
	blu,pt	%icc, .L1010
	 mov	1, %g1
	ba,pt	%xcc, .L1016
	 mov	0, %g2
.L1013:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L1012
	 cmp	%g1, 0
.L1010:
	cmp	%o1, 0
	bge,pt	%icc, .L1013
	 add	%o1, %o1, %g2
.L1011:
	mov	0, %g2
.L1016:
	cmp	%o0, %o1
	blu,pt	%icc, .L1015
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L1015:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L1016
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L1012:
	bne,pt	%icc, .L1011
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
	fbl,pn	%fcc3, .L1026
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L1026:
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
	fbl,pn	%fcc1, .L1029
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L1029:
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
	bl,a,pn	%icc, .L1043
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L1036
	 mov	0, %g4
	mov	0, %o5
.L1035:
	mov	1, %g2
	mov	0, %g4
.L1037:
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
	bne,pt	%icc, .L1037
	 sra	%g3, 0, %o1
	sub	%g0, %g4, %g1
	cmp	%o5, 0
	movne	%icc, %g1, %g4
.L1036:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L1043:
	mov	1, %o5
	ba,pt	%xcc, .L1035
	 sra	%o1, 0, %o1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	mov	1, %g1
	brlz,pn	%o0, .L1061
	 mov	0, %o5
.L1045:
	brgez,pt %o1, .L1062
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	mov	%g1, %o5
.L1062:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1048
	 mov	1, %g2
	cmp	%g1, 0
.L1063:
	bl,pn	%icc, .L1052
	 mov	0, %o0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1063
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1049
	 mov	0, %o0
.L1048:
	mov	0, %o0
.L1052:
	cmp	%g1, %g3
	bgu,a,pt %icc, .L1064
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L1064:
	cmp	%g2, 0
	bne,pt	%icc, .L1052
	 srl	%g1, 1, %g1
	srl	%o0, 0, %o0
.L1049:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1061:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1045
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L1066
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1066:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1072
	 mov	%o1, %g1
	cmp	%g1, 0
.L1084:
	bl,pn	%icc, .L1083
	 sub	%g3, %g1, %g4
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1084
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1085
	 srl	%g3, 0, %o0
.L1072:
	sub	%g3, %g1, %g4
.L1083:
	cmp	%g3, %g1
	srl	%g2, 1, %g2
	movgeu	%icc, %g4, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L1072
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L1085:
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
	blu,pt	%icc, .L1087
	 mov	1, %g4
	ba,pt	%xcc, .L1166
	 mov	1, %o5
.L1090:
	cmp	%g1, %o0
	addx	%g0, 0, %o4
	cmp	%g0, %g5
	addx	%g0, 0, %g2
	andcc	%o4, %g2, %g0
	be,pn	%icc, .L1089
	 cmp	%o3, 0
	mov	%g3, %g4
	mov	%g1, %o1
.L1087:
	sllx	%o1, 49, %g1
	add	%g4, %g4, %g3
	sll	%g3, 16, %g5
	mov	%g3, %o5
	sll	%o1, 16, %g2
	srlx	%g1, 48, %g1
	cmp	%g2, 0
	bge,pt	%icc, .L1090
	 srl	%g5, 16, %o3
	cmp	%o0, %o1
	blu,pt	%icc, .L1113
	 mov	0, %o5
	sub	%o0, %o1, %o0
	mov	%g4, %o5
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
.L1113:
	sll	%g4, 16, %g3
	srl	%g3, 17, %g1
	mov	%g1, %g4
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 1, %g2
.L1094:
	cmp	%o0, %g2
	blu,a,pt %icc, .L1172
	 srl	%g3, 18, %g2
	sub	%o0, %g2, %g2
	or	%o5, %g4, %o5
	sllx	%g2, 48, %g2
	srlx	%g2, 48, %o0
	srl	%g3, 18, %g2
.L1172:
	srlx	%o1, 2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L1092
	 srl	%g3, 18, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1173
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 19, %g2
.L1173:
	srlx	%o1, 3, %g1
	cmp	%g2, 0
	be,pn	%icc, .L1092
	 srl	%g3, 19, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1174
	 srl	%g3, 20, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 20, %g1
.L1174:
	srl	%g3, 20, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1175
	 srl	%g3, 21, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 21, %g1
.L1175:
	srl	%g3, 21, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1176
	 srl	%g3, 22, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 22, %g1
.L1176:
	srl	%g3, 22, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1177
	 srl	%g3, 23, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 23, %g1
.L1177:
	srl	%g3, 23, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1167
	 sub	%o0, %g1, %g1
.L1101:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1168
	 sub	%o0, %g1, %g1
.L1102:
	srl	%g3, 25, %g1
	srl	%g3, 25, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1169
	 sub	%o0, %g1, %g1
.L1103:
	srl	%g3, 26, %g1
	srl	%g3, 26, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1170
	 sub	%o0, %g1, %g1
.L1104:
	srl	%g3, 27, %g1
	srl	%g3, 27, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1171
	 sub	%o0, %g1, %g1
.L1105:
	srl	%g3, 28, %g1
	srl	%g3, 28, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1178
	 srl	%g3, 29, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 29, %g1
.L1178:
	srl	%g3, 29, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1179
	 srl	%g3, 30, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 30, %g1
.L1179:
	srl	%g3, 30, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1092
	 srlx	%o1, 14, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1180
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1180:
	bge,pn	%icc, .L1092
	 srlx	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a,pt %icc, .L1092
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%o5, 1, %o5
	sllx	%o1, 48, %g1
	srlx	%g1, 48, %o0
.L1092:
	mov	%o0, %g1
	movre	%o2, %o5, %g1
	mov	%g1, %o5
	sllx	%o5, 48, %o5
	jmp	%o7+8
	 srlx	%o5, 48, %o0
.L1089:
	be,pn	%icc, .L1092
	 cmp	%o0, %g1
	blu,pt	%icc, .L1093
	 sethi	%hi(31744), %g5
	sub	%o0, %g1, %o0
	sllx	%o0, 48, %o0
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	srlx	%o0, 48, %o0
	mov	%g1, %o1
	ba,pt	%xcc, .L1094
	 sll	%g3, 16, %g3
.L1167:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1101
	 srlx	%g1, 48, %o0
.L1093:
	mov	0, %o5
	sll	%g3, 16, %g3
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	ba,pt	%xcc, .L1094
	 mov	%g1, %o1
.L1168:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1102
	 srlx	%g1, 48, %o0
.L1169:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1103
	 srlx	%g1, 48, %o0
.L1170:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1104
	 srlx	%g1, 48, %o0
.L1171:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1105
	 srlx	%g1, 48, %o0
.L1166:
	movne	%icc, 0, %o5
	ba,pt	%xcc, .L1092
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
	blu,pt	%xcc, .L1182
	 sethi	%hi(2147483648), %g4
	ba,pt	%xcc, .L1188
	 mov	0, %g2
.L1185:
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1184
	 nop
.L1182:
	and	%o1, %g4, %g2
	brz,pt	%g2, .L1185
	 mov	0, %g3
	mov	0, %g2
.L1188:
	cmp	%o0, %o1
.L1197:
	blu,a,pt %xcc, .L1196
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L1196:
	brnz,pt	%g1, .L1188
	 srlx	%o1, 1, %o1
.L1186:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
.L1184:
	brz,pn	%g1, .L1186
	 mov	0, %g2
	ba,pt	%xcc, .L1197
	 cmp	%o0, %o1
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1199
	 sll	%o0, %o1, %g1
	mov	0, %o0
.L1200:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L1204:
	jmp	%o7+8
	 nop
.L1199:
	brz,pn	%o1, .L1204
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %g3, %g3
	sll	%g2, %o1, %g2
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1200
	 or	%g3, %g2, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1206
	 nop
	sllx	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1206:
	brz,pn	%o2, .L1210
	 nop
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %g1
	srlx	%o1, %g1, %g1
	sllx	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1210:
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
	be,pt	%xcc, .L1212
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L1213:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1217:
	jmp	%o7+8
	 nop
.L1212:
	brz,pn	%o1, .L1217
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %o0
	ba,pt	%xcc, .L1213
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1219
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L1223:
	jmp	%o7+8
	 nop
.L1219:
	brz,pn	%o2, .L1223
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
	bl,pn	%icc, .L1229
	 mov	0, %g1
	bg,pn	%icc, .L1229
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1229
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1229:
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
	bl,pn	%icc, .L1235
	 mov	-1, %g1
	bg,pn	%icc, .L1235
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1235
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1235:
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
	bl,pn	%xcc, .L1240
	 mov	0, %g1
	bg,pn	%xcc, .L1240
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1240
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1240:
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
	brnz,pt	%i1, .L1248
	 nop
	brnz,pt	%i0, .L1252
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1248:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1252:
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
	be,pt	%xcc, .L1254
	 srlx	%o0, 32, %g1
	mov	0, %g2
	srl	%g1, %o1, %g1
.L1255:
	st	%g2, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1253:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1254:
	brz,pn	%o1, .L1253
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g3
	srl	%o0, %o1, %g1
	srl	%g2, %o1, %g2
	ba,pt	%xcc, .L1255
	 or	%g3, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1260
	 nop
	srlx	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1260:
	brz,pn	%o2, .L1264
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1264:
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
	be,pt	%xcc, .L1278
	 ldd	[%g2+%lo(.LC22)], %f0
.L1280:
	fmuld	%f0, %f8, %f0
.L1278:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1279
	 fmuld	%f8, %f8, %f8
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1280
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1286:
	fmuld	%f8, %f8, %f8
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1280
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1286
	 add	%g2, %g1, %g1
.L1279:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1285
	 sethi	%hi(.LC22), %g1
	jmp	%o7+8
	 nop
.L1285:
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
	be,pt	%xcc, .L1288
	 ld	[%g2+%lo(.LC24)], %f0
.L1290:
	fmuls	%f0, %f1, %f0
.L1288:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1289
	 fmuls	%f1, %f1, %f1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1290
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1296:
	fmuls	%f1, %f1, %f1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1290
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1296
	 add	%g2, %g1, %g1
.L1289:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1295
	 sethi	%hi(.LC24), %g1
	jmp	%o7+8
	 nop
.L1295:
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
	blu,pn	%icc, .L1298
	 mov	0, %g1
	bgu,pn	%icc, .L1298
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1298
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1298:
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
	blu,pn	%icc, .L1304
	 mov	-1, %g1
	bgu,pn	%icc, .L1304
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1304
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1304:
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
	blu,pn	%xcc, .L1309
	 mov	0, %g1
	bgu,pn	%xcc, .L1309
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1309
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1309:
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
	.global _Qp_fle
	.global _Qp_flt
	.global _Qp_flt
	.global _Qp_flt
	.global _Qp_fge
	.global _Qp_flt
	.global _Qp_flt
	.global _Qp_flt
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
