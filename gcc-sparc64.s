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
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L183
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L179
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L182
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L182:
	fzero	%f0
.L183:
	jmp	%o7+8
	 nop
.L179:
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
	fbu,pn	%fcc3, .L187
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L188
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L191
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L191:
	jmp	%o7+8
	 fzeros	%f0
.L187:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L188:
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
	fbu,a,pn %fcc2, .L192
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L192
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L194
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L192:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L194:
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
	fbu,pn	%fcc1, .L198
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L198
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L204
	 nop
	fcmpes	%fcc3, %f1, %f3
	fmovsl	%fcc3, %f3, %f1
	fmovs	%f1, %f0
.L198:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L204:
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f1
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f1, %f0
	ba,pt	%xcc, .L198
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
	be,pn	%xcc, .L208
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
	be,pn	%xcc, .L209
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
	be,pt	%icc, .L207
	 ldd	[%fp+1927], %f14
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L207:
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
.L208:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L209:
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
	fbu,a,pn %fcc0, .L217
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L211
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L213
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L211:
	fmovd	%f2, %f0
.L217:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L213:
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
	fbu,pn	%fcc3, .L218
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L218
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L224
	 nop
	fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc1, %f1, %f3
	fmovs	%f3, %f0
.L218:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L224:
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f3, %f0
	ba,pt	%xcc, .L218
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
	be,pn	%xcc, .L228
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
	be,pn	%xcc, .L229
	 ldd	[%fp+1935], %f12
	ldd	[%fp+1919], %f8
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g1
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g1, 63, %g1
	ldd	[%fp+1943], %f14
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L227
	 ldd	[%fp+1927], %f10
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L227:
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
.L228:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L229:
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
	sethi	%hi(s.0), %o0
	be,pn	%icc, .L234
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L233:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L233
	 stb	%g3, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L234:
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
	brz,a,pn %o1, .L244
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L246
	 stx	%o0, [%g1+8]
.L246:
	jmp	%o7+8
	 nop
.L244:
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
	brz,pn	%g1, .L257
	 ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g2
.L257:
	brnz,a,pt %g2, .L256
	 stx	%g1, [%g2]
.L256:
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
	brz,pn	%l1, .L259
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L261
	 mov	0, %l0
.L270:
	cmp	%l1, %l0
	be,pn	%xcc, .L271
	 add	%l1, 1, %g1
.L261:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	mov	%i5, %i0
	add	%l0, 1, %l0
	cmp	%o0, 0
	bne,pt	%icc, .L270
	 add	%i5, %i3, %i5
.L273:
	return	%i7+8
	 nop
.L259:
	add	%l1, 1, %g1
.L271:
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L273
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
	brz,pn	%l0, .L275
	 mov	0, %i5
	ba,pt	%xcc, .L284
	 mov	%i1, %o1
.L282:
	cmp	%l0, %i5
	be,pn	%xcc, .L283
	 mov	0, %i2
	mov	%i1, %o1
.L284:
	call	%i4, 0
	 mov	%i0, %o0
	mov	%i1, %i2
	add	%i5, 1, %i5
	cmp	%o0, 0
	bne,pt	%icc, .L282
	 add	%i1, %i3, %i1
	return	%i7+8
	 mov	%o2, %o0
.L275:
	mov	0, %i2
.L283:
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
	ba,pt	%xcc, .L307
	 mov	0, %g1
.L308:
	mov	0, %g1
	add	%o0, 1, %o0
.L307:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L308
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L289
	 cmp	%g4, 45
	bne,a,pt %icc, .L309
	 add	%g3, -48, %g3
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L298
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L292:
	mov	0, %o0
.L295:
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
	bleu,pt	%icc, .L295
	 sub	%g1, %g3, %o0
	sub	%g3, %g1, %g3
	cmp	%o5, 0
	move	%icc, %g3, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L309:
	mov	%o0, %g4
	cmp	%g3, 9
	bleu,pt	%icc, .L292
	 mov	0, %o5
.L298:
	mov	0, %o0
.L310:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L289:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L292
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L310
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L332
	 mov	0, %g1
.L333:
	mov	0, %g1
	add	%o0, 1, %o0
.L332:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L333
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L314
	 cmp	%g4, 45
	bne,pt	%icc, .L334
	 add	%g3, -48, %g1
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L323
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L317:
	mov	0, %g5
.L320:
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
	bleu,pt	%icc, .L320
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L334:
	mov	0, %o5
	cmp	%g1, 9
	bleu,pt	%icc, .L317
	 mov	%o0, %g3
.L323:
	mov	0, %g5
.L335:
	jmp	%o7+8
	 mov	%g5, %o0
.L314:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L317
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L335
	 mov	0, %g5
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L355
	 mov	0, %g1
.L356:
	mov	0, %g1
	add	%o0, 1, %o0
.L355:
	sll	%g2, 24, %g4
	sra	%g4, 24, %g3
	add	%g3, -9, %o5
	xor	%g3, 32, %g5
	cmp	%o5, 4
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L356
	 ldub	[%o0+1], %g2
	sra	%g4, 24, %g4
	cmp	%g4, 43
	be,pn	%icc, .L339
	 cmp	%g4, 45
	be,a,pt	%icc, .L357
	 ldsb	[%o0+1], %g1
	add	%g3, -48, %g1
	mov	0, %o5
	cmp	%g1, 9
	bgu,pn	%icc, .L347
	 mov	%o0, %g3
.L341:
	mov	0, %g5
.L344:
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
	bleu,pt	%icc, .L344
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L357:
	add	%o0, 1, %g3
	mov	1, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L341
	 ldub	[%o0+1], %g2
.L347:
	mov	0, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L339:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L347
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L341
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L368:
	brz,pn	%i2, .L370
	 mov	0, %i5
.L369:
	srlx	%i2, 1, %l0
	mov	%i0, %o0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	add	%i2, -1, %i2
	mov	%i5, %o1
	call	%i4, 0
	 sub	%i2, %l0, %i2
	cmp	%o0, 0
	bl,a,pn	%icc, .L368
	 mov	%l0, %i2
	be,pn	%icc, .L358
	 nop
	brnz,pt	%i2, .L369
	 add	%i5, %i3, %i1
	mov	0, %i5
.L358:
.L370:
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
	be,pn	%icc, .L381
	 mov	0, %i2
.L372:
	sra	%l0, 1, %i2
.L382:
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
	be,pn	%icc, .L371
	 nop
	ble,pn	%icc, .L374
	 cmp	%l0, 0
	bne,pt	%icc, .L372
	 add	%i2, %i3, %i1
	mov	0, %i2
.L371:
.L381:
	return	%i7+8
	 mov	%o2, %o0
.L374:
	orcc	%l1, 0, %l0
	bne,a,pt %icc, .L382
	 sra	%l0, 1, %i2
	ba,pt	%xcc, .L381
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
	be,pn	%icc, .L394
	 nop
.L391:
	cmp	%g1, %o1
	be,pn	%icc, .L397
	 nop
	lduw	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L391
	 add	%o0, 4, %o0
.L394:
	jmp	%o7+8
	 mov	0, %o0
.L397:
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
	bne,pn	%icc, .L400
	 add	%o1, -4, %g4
	cmp	%g2, 0
.L407:
	be,pn	%icc, .L406
	 cmp	%g2, %g3
	lduw	[%o0+%g1], %g2
	add	%g1, 4, %g1
	lduw	[%g4+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L407
	 cmp	%g2, 0
.L400:
	cmp	%g2, %g3
.L406:
	bl,pt	%icc, .L402
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L402:
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
.L409:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L409
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
	be,pn	%icc, .L414
	 nop
	mov	%o0, %g1
.L413:
	lduw	[%g1+4], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L413
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
.L414:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
.L419:
	brz,pn	%o2, .L422
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
	bne,pt	%icc, .L419
	 add	%o1, 4, %o1
	cmp	%g1, %g2
	bge,a,pt %icc, .L421
	 mov	0, %o0
	mov	-1, %o0
.L418:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L421:
	ba,pt	%xcc, .L418
	 movg	%icc, 1, %o0
.L422:
	ba,pt	%xcc, .L418
	 mov	0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L431
	 nop
.L436:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L437
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L436
	 add	%o0, 4, %o0
.L431:
	jmp	%o7+8
	 mov	0, %o0
.L437:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
.L441:
	brz,pn	%o2, .L444
	 add	%o2, -1, %o2
	lduw	[%o0], %g2
	add	%o0, 4, %o0
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,pt	%icc, .L441
	 add	%o1, 4, %o1
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
.L440:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L444:
	ba,pt	%xcc, .L440
	 mov	0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L454
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L454:
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
	be,pn	%xcc, .L481
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	blu,pt	%xcc, .L457
	 add	%o2, -1, %g1
	brz,pn	%o2, .L481
	 nop
	cmp	%g1, 8
	bleu,pn	%xcc, .L468
	 or	%o1, %o0, %g3
	add	%o1, 4, %g2
	and	%g3, 7, %g3
	mov	0, %g5
	xor	%o0, %g2, %g2
	mov	0, %g4
	movre	%g3, 1, %g5
	movrne	%g2, 1, %g4
	andcc	%g5, %g4, %g0
	be,pn	%icc, .L468
	 srlx	%o2, 1, %g3
	mov	0, %g1
	mov	0, %g2
.L462:
	ldd	[%o1+%g1], %f8
	add	%g2, 1, %g2
	cmp	%g3, %g2
	std	%f8, [%o0+%g1]
	bne,pt	%xcc, .L462
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L481
	 nop
	and	%o2, -2, %o2
	sllx	%o2, 2, %o2
	lduw	[%o1+%o2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%o2]
.L468:
	mov	0, %g2
.L465:
	lduw	[%o1+%g2], %g3
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g3, [%o0+%g2]
	bne,pt	%xcc, .L465
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L457:
	brz,pn	%o2, .L481
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L480:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L480
	 lduw	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L481:
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
	brz,pn	%o2, .L484
	 srlx	%o0, 2, %g1
	cmp	%g4, 5
	bleu,pn	%xcc, .L489
	 and	%g1, 1, %g1
	brz,pn	%g1, .L486
	 mov	%o0, %g5
	add	%o0, 4, %g5
	st	%o1, [%o0]
	add	%o2, -2, %g4
.L486:
	st	%o1, [%sp+2183]
	sub	%o2, %g1, %o2
	mov	0, %g2
	st	%o1, [%sp+2187]
	sllx	%g1, 2, %g1
	ldd	[%sp+2183], %f8
	srlx	%o2, 1, %g3
	add	%o0, %g1, %g1
.L487:
	std	%f8, [%g1]
	add	%g2, 1, %g2
	cmp	%g2, %g3
	bne,pt	%xcc, .L487
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L484
	 and	%o2, -2, %o2
	sllx	%o2, 2, %g1
	sub	%g4, %o2, %g4
	add	%g5, %g1, %g1
.L485:
	brz,pn	%g4, .L484
	 st	%o1, [%g1]
	cmp	%g4, 1
	be,pn	%xcc, .L484
	 st	%o1, [%g1+4]
	cmp	%g4, 2
	be,pn	%xcc, .L484
	 st	%o1, [%g1+8]
	cmp	%g4, 3
	be,pn	%xcc, .L484
	 st	%o1, [%g1+12]
	cmp	%g4, 4
	be,pn	%xcc, .L484
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L484:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L489:
	ba,pt	%xcc, .L485
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L515
	 nop
	brz,pn	%o2, .L557
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L554:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L554
	 ldub	[%o0+%o2], %g1
.L558:
	jmp	%o7+8
	 nop
.L515:
	bne,pt	%xcc, .L553
	 nop
	jmp	%o7+8
	 nop
.L553:
	brz,pn	%o2, .L557
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L525
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
	be,pn	%icc, .L525
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L555:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L555
	 ldd	[%o0+%g1], %f8
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L558
	 sub	%o2, %g1, %g2
	ldub	[%o0+%g1], %g5
	cmp	%g2, 1
	be,pn	%xcc, .L558
	 stb	%g5, [%o1+%g1]
	ldub	[%g4+1], %g1
	cmp	%g2, 2
	be,pn	%xcc, .L558
	 stb	%g1, [%g3+1]
	ldub	[%g4+2], %g1
	cmp	%g2, 3
	be,pn	%xcc, .L558
	 stb	%g1, [%g3+2]
	ldub	[%g4+3], %g1
	cmp	%g2, 4
	be,pn	%xcc, .L558
	 stb	%g1, [%g3+3]
	ldub	[%g4+4], %g1
	cmp	%g2, 5
	be,pn	%xcc, .L558
	 stb	%g1, [%g3+4]
	ldub	[%g4+5], %g1
	cmp	%g2, 6
	be,pn	%xcc, .L558
	 stb	%g1, [%g3+5]
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L525:
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L556:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L556
	 ldub	[%o0+%g1], %g2
.L557:
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
	ba,pt	%xcc, .L575
	 mov	0, %g1
.L578:
	cmp	%g1, 32
	be,a,pn	%icc, .L577
	 mov	0, %g1
.L575:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L578
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L577:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L580
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L580
	 nop
	mov	1, %g2
.L581:
	sra	%o0, 1, %g1
	add	%g2, 1, %g2
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L581
	 sra	%g1, 0, %o0
.L580:
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
	fbl,pt	%fcc2, .L587
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	mov	0, %o0
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	movg	%fcc3, 1, %o0
.L587:
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
	fbl,pt	%fcc0, .L590
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	mov	0, %o0
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	movg	%fcc1, 1, %o0
.L590:
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
	brnz,pt	%o0, .L593
	 nop
	sethi	%hi(.LC9), %g1
	ldd	[%fp+1967], %f0
	add	%fp, 1983, %o1
	ldd	[%fp+1975], %f2
	add	%fp, 1999, %o0
	mov	0, %i0
	ldx	[%g1+%lo(.LC9)], %g2
	ldx	[%g1+%lo(.LC9+8)], %g3
	std	%f0, [%fp+1999]
	std	%f2, [%fp+2007]
	stx	%g2, [%fp+1983]
	call	_Qp_fgt, 0
	 stx	%g3, [%fp+1991]
	movrne	%o0, 1, %i0
.L593:
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
	fbu,pn	%fcc2, .L597
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L597
	 nop
	sethi	%hi(.LC12), %g1
	cmp	%o1, 0
	ld	[%g1+%lo(.LC12)], %f8
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	fmovsl	%icc, %f9, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L611
	 srl	%o1, 31, %g1
.L600:
	fmuls	%f1, %f8, %f1
	srl	%o1, 31, %g1
.L611:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L597
	 nop
	fmuls	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L600
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L610:
	fmuls	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L600
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L610
	 add	%g1, %o1, %o1
.L597:
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
	fbu,pn	%fcc0, .L628
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L628
	 nop
	sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	ldd	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	fmovdl	%icc, %f10, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L627
	 srl	%o1, 31, %g1
.L616:
	fmuld	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L627:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L628
	 nop
	fmuld	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L616
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L626:
	fmuld	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L616
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L626
	 add	%g1, %o1, %o1
.L628:
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
	be,pn	%xcc, .L630
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
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+1935]
	call	_Qp_feq, 0
	 stx	%g3, [%fp+1943]
	brnz,pt	%o0, .L648
	 ldd	[%fp+1727], %f0
	sethi	%hi(.LC20), %g1
	cmp	%i2, 0
	ldx	[%g1+%lo(.LC20)], %i4
	bl,pn	%icc, .L645
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L631:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L649
	 srl	%i2, 31, %g1
.L633:
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
.L649:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L630
	 add	%fp, 1743, %o2
	add	%fp, 1759, %o1
	stx	%i4, [%fp+1759]
	add	%fp, 1775, %o0
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1751]
	ldx	[%fp+1775], %i4
	srl	%i2, 31, %g1
	ldx	[%fp+1783], %i5
	andcc	%i2, 1, %g0
	bne,pt	%xcc, .L633
	 add	%g1, %i2, %g1
	add	%fp, 1743, %o2
.L647:
	add	%fp, 1759, %o1
	stx	%i4, [%fp+1759]
	sra	%g1, 1, %i2
	add	%fp, 1775, %o0
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1751]
	ldx	[%fp+1775], %i4
	srl	%i2, 31, %g1
	ldx	[%fp+1783], %i5
	andcc	%i2, 1, %g0
	bne,pt	%xcc, .L633
	 add	%g1, %i2, %g1
	ba,pt	%xcc, .L647
	 add	%fp, 1743, %o2
.L630:
	ldd	[%fp+1727], %f0
.L648:
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
.L645:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L631
	 ldx	[%g1+%lo(.LC21+8)], %i5
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L684
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%xcc, .L658
	 or	%o0, %o1, %g1
	and	%g1, 7, %g1
	brnz,pn	%g1, .L658
	 and	%o2, -8, %g2
	ldd	[%o0+%g1], %f8
.L682:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f8
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L682
	 ldd	[%o0+%g1], %f8
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	cmp	%o2, %g1
	be,pn	%xcc, .L684
	 sub	%o2, %g1, %g3
	ldub	[%o0+%g1], %g5
	cmp	%g3, 1
	ldub	[%o1+%g1], %o5
	xor	%g5, %o5, %g5
	be,pn	%xcc, .L684
	 stb	%g5, [%o0+%g1]
	ldub	[%g2+1], %g5
	cmp	%g3, 2
	ldub	[%g4+1], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L684
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %g5
	cmp	%g3, 3
	ldub	[%g4+2], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L684
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %g5
	cmp	%g3, 4
	ldub	[%g4+3], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L684
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g5
	cmp	%g3, 5
	ldub	[%g4+4], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L684
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %g5
	cmp	%g3, 6
	ldub	[%g4+5], %g1
	xor	%g1, %g5, %g1
	be,pn	%xcc, .L684
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %g3
	ldub	[%g4+6], %g1
	xor	%g1, %g3, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L658:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L683:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L683
	 ldub	[%o0+%g1], %g3
.L684:
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
	be,pn	%icc, .L690
	 mov	%o0, %g1
.L687:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L687
	 add	%g1, 1, %g1
.L690:
	brz,pn	%o2, .L689
	 nop
	ldub	[%o1], %g2
	add	%g1, 1, %g1
	add	%o2, -1, %o2
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L690
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L689:
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L698
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L705:
	cmp	%g2, 0
	bne,a,pn %icc, .L701
	 add	%g1, 1, %g1
.L698:
	jmp	%o7+8
	 mov	%g1, %o0
.L701:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L705
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L698
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
	be,a,pn	%icc, .L713
	 mov	0, %o0
.L707:
	sra	%g3, 24, %g3
	ba,pt	%xcc, .L710
	 mov	%o1, %g1
.L709:
	cmp	%g2, %g3
	be,pn	%icc, .L713
	 nop
.L710:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L709
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L707
	 add	%o0, 1, %o0
	mov	0, %o0
.L713:
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
.L716:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L716
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
	be,pn	%icc, .L729
	 mov	%o0, %g1
	mov	%o1, %g2
.L720:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L720
	 add	%g2, 1, %g2
	sub	%g2, %o1, %g2
	brz,pn	%g2, .L738
	 mov	%g1, %o0
	sra	%o2, 24, %o2
	add	%o1, -1, %o0
	ba,pt	%xcc, .L726
	 add	%o0, %g2, %o0
.L737:
	cmp	%g3, 0
	be,pn	%icc, .L736
	 add	%g1, 1, %g1
.L726:
	ldsb	[%g1], %g3
	cmp	%g3, %o2
	bne,pt	%icc, .L737
	 ldub	[%g1], %g2
	mov	%o1, %g3
	mov	%g1, %o4
	ba,pt	%xcc, .L722
	 and	%g2, 0xff, %g2
.L724:
	ldub	[%o4], %g2
	cmp	%g2, 0
	be,pn	%icc, .L723
	 add	%g3, 1, %g3
.L722:
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
	bne,pt	%icc, .L724
	 add	%o4, 1, %o4
.L723:
	ldub	[%g3], %g3
	cmp	%g2, %g3
	be,a,pn	%icc, .L738
	 mov	%g1, %o0
	ba,pt	%xcc, .L726
	 add	%g1, 1, %g1
.L736:
	jmp	%o7+8
	 mov	0, %o0
.L729:
	mov	%g1, %o0
.L738:
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
	fbl,a,pn %fcc2, .L749
	 fcmped	%fcc3, %f2, %f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L750
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L742
	 nop
.L750:
	jmp	%o7+8
	 nop
.L749:
	fbule,pt %fcc3, .L750
	 nop
.L742:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L771
	 nop
	cmp	%o1, %o3
	blu,a,pn %xcc, .L771
	 mov	0, %o0
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,a,pn %xcc, .L771
	 mov	0, %o0
	ldub	[%o2], %o5
	sll	%o5, 24, %o5
	sra	%o5, 24, %g5
	ldsb	[%o0], %g1
.L772:
	cmp	%g1, %g5
	be,pn	%icc, .L769
	 add	%o0, 1, %g4
	mov	%g4, %o0
.L753:
	cmp	%o1, %o0
	bgeu,a,pt %xcc, .L772
	 ldsb	[%o0], %g1
.L762:
	jmp	%o7+8
	 mov	0, %o0
.L769:
	cmp	%o3, 1
	be,pn	%xcc, .L771
	 nop
.L756:
	ba,pt	%xcc, .L754
	 mov	1, %g1
.L755:
	cmp	%g1, %o3
	be,pn	%xcc, .L771
	 nop
.L754:
	ldub	[%o0+%g1], %g3
	ldub	[%o2+%g1], %g2
	cmp	%g3, %g2
	be,pt	%icc, .L755
	 add	%g1, 1, %g1
	cmp	%o1, %g4
	blu,pn	%xcc, .L762
	 sra	%o5, 24, %g1
	ldsb	[%g4], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L753
	 add	%g4, 1, %o0
	mov	%g4, %g1
	mov	%o0, %g4
	ba,pt	%xcc, .L756
	 mov	%g1, %o0
.L771:
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
	brz,pn	%i2, .L774
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L774:
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
	fbl,pn	%fcc2, .L800
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc1, %f0, %f10
	fbul,pn	%fcc1, .L801
	 mov	0, %g2
.L781:
	sethi	%hi(.LC27), %g3
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f10
	sethi	%hi(.LC26), %g3
	ldd	[%g3+%lo(.LC26)], %f8
.L787:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L787
	 add	%g1, 1, %g1
	fnegd	%f0, %f8
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L801:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f10
	fcmped	%fcc2, %f0, %f10
	fbuge,pt %fcc2, .L784
	 nop
	fcmpd	%fcc3, %f0, %f8
	fbne,a,pn %fcc3, .L782
	 fmovd	%f0, %f10
.L784:
	jmp	%o7+8
	 st	%g0, [%o1]
.L800:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbug,pn	%fcc3, .L802
	 fnegd	%f0, %f10
	fmovd	%f10, %f0
	ba,pt	%xcc, .L781
	 mov	1, %g2
.L802:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc0, %f0, %f8
	fbule,pt %fcc0, .L784
	 nop
	mov	1, %g2
.L782:
	sethi	%hi(.LC27), %g3
	fmovd	%f10, %f0
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f8
.L789:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f8
	fbl,pt	%fcc1, .L789
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
	brz,pn	%g2, .L809
	 mov	0, %o0
.L805:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L805
	 add	%o0, %g1, %o0
.L809:
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
	blu,pt	%icc, .L811
	 mov	1, %g1
	ba,pt	%xcc, .L817
	 mov	0, %g2
.L814:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L813
	 cmp	%g1, 0
.L811:
	cmp	%o1, 0
	bge,pt	%icc, .L814
	 add	%o1, %o1, %g2
.L812:
	mov	0, %g2
.L817:
	cmp	%o0, %o1
	blu,pt	%icc, .L816
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L816:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L817
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L813:
	bne,pt	%icc, .L812
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
	be,pn	%icc, .L827
	 xor	%g2, %i0, %g1
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L827:
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
	be,pn	%xcc, .L830
	 xor	%i0, %g2, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L830:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L833
	 mov	0, %g2
.L834:
	and	%o0, 1, %g1
	add	%o1, %o1, %g3
	srlx	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g3, 0, %o1
	brnz,pt	%o0, .L834
	 add	%g2, %g1, %g2
.L833:
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
	blu,pt	%xcc, .L841
	 srl	%o2, 3, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L869
	 add	%o2, -1, %g1
.L841:
	srl	%g2, 0, %g3
	mov	0, %g1
	cmp	%g2, 0
	be,pn	%icc, .L870
	 sllx	%g3, 3, %g3
	ldx	[%o1+%g1], %g2
.L873:
	stx	%g2, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L873
	 ldx	[%o1+%g1], %g2
	cmp	%g5, %o2
	bgeu,pn	%icc, .L877
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L849
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
	be,pn	%icc, .L849
	 srl	%o5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L874:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L874
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L878
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L878
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L878
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L878
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L878
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L878
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%o1+%g2], %g3
	cmp	%g1, %o2
	bgeu,pn	%icc, .L878
	 stb	%g3, [%o0+%g2]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 stb	%g2, [%o0+%g1]
.L870:
	brz,pn	%o2, .L878
	 srl	%g5, 0, %g1
.L849:
	ldub	[%o1+%g1], %g2
.L875:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L875
	 ldub	[%o1+%g1], %g2
.L878:
	jmp	%o7+8
	 nop
.L869:
	brz,pn	%o2, .L878
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L876:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L876
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L877:
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
	blu,pt	%xcc, .L883
	 srl	%o2, 1, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L903
	 add	%o2, -1, %g1
.L883:
	cmp	%g4, 0
	be,pn	%icc, .L882
	 add	%g4, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L886
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
	be,pn	%icc, .L886
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%o1+%g1], %f8
.L907:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L907
	 ldd	[%o1+%g1], %f8
	sll	%g3, 2, %g1
	cmp	%g4, %g1
	be,pn	%icc, .L882
	 srl	%g1, 0, %g2
	add	%g1, 1, %g3
	add	%g2, %g2, %g2
	cmp	%g4, %g3
	lduh	[%o1+%g2], %g5
	bleu,pn	%icc, .L882
	 sth	%g5, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 2, %g1
	add	%g3, %g3, %g3
	cmp	%g4, %g1
	lduh	[%o1+%g3], %g2
	bleu,pn	%icc, .L882
	 sth	%g2, [%o0+%g3]
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	lduh	[%o1+%g1], %g2
	sth	%g2, [%o0+%g1]
.L882:
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L910
	 nop
	add	%o2, -1, %o2
.L906:
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L903:
	brz,pn	%o2, .L911
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L908:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L908
	 ldub	[%o1+%g1], %g2
.L911:
	jmp	%o7+8
	 nop
.L886:
	mov	0, %g1
	add	%g4, %g4, %g4
	lduh	[%o1+%g1], %g2
.L909:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %xcc, .L909
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L910
	 nop
	ba,pt	%xcc, .L906
	 add	%o2, -1, %o2
.L910:
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
	blu,pt	%xcc, .L917
	 srl	%o2, 2, %g4
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L947
	 add	%o2, -1, %g1
.L917:
	cmp	%g4, 0
	be,pn	%icc, .L948
	 nop
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L919
	 or	%o0, %o1, %g2
	add	%o1, 4, %g1
	and	%g2, 7, %g2
	mov	0, %o5
	xor	%o0, %g1, %g1
	mov	0, %g3
	movre	%g2, 1, %o5
	movrne	%g1, 1, %g3
	andcc	%o5, %g3, %g0
	be,pn	%icc, .L919
	 srl	%o2, 3, %g2
	mov	0, %g1
	mov	%g2, %g3
	sllx	%g2, 3, %g2
	ldd	[%o1+%g1], %f8
.L952:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L952
	 ldd	[%o1+%g1], %f8
	add	%g3, %g3, %g3
	cmp	%g4, %g3
	be,pn	%icc, .L923
	 srl	%g3, 0, %g3
	sllx	%g3, 2, %g3
	lduw	[%o1+%g3], %g1
	st	%g1, [%o0+%g3]
.L923:
	cmp	%g5, %o2
.L951:
	bgeu,pn	%icc, .L957
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L926
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
	be,pn	%icc, .L926
	 srl	%o5, 3, %g2
	mov	0, %g1
	sllx	%g2, 3, %g2
	ldd	[%g4+%g1], %f8
.L953:
	std	%f8, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %xcc, .L953
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L958
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g3
	add	%g1, 1, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L958
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 2, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L958
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 3, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L958
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 4, %g3
	ldub	[%o1+%g2], %g4
	cmp	%g3, %o2
	bgeu,pn	%icc, .L958
	 stb	%g4, [%o0+%g2]
	srl	%g3, 0, %g3
	add	%g1, 5, %g2
	ldub	[%o1+%g3], %g4
	cmp	%g2, %o2
	bgeu,pn	%icc, .L958
	 stb	%g4, [%o0+%g3]
	srl	%g2, 0, %g2
	add	%g1, 6, %g1
	ldub	[%o1+%g2], %g3
	cmp	%g1, %o2
	bgeu,pn	%icc, .L958
	 stb	%g3, [%o0+%g2]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 stb	%g2, [%o0+%g1]
.L948:
	brz,pn	%o2, .L958
	 srl	%g5, 0, %g1
.L926:
	ldub	[%o1+%g1], %g2
.L954:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bgu,a,pt %icc, .L954
	 ldub	[%o1+%g1], %g2
.L958:
	jmp	%o7+8
	 nop
.L947:
	brz,pn	%o2, .L958
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L955:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L955
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L919:
	sllx	%g4, 2, %g4
	mov	0, %g1
	lduw	[%o1+%g1], %g2
.L956:
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a,pt %xcc, .L956
	 lduw	[%o1+%g1], %g2
	ba,pt	%xcc, .L951
	 cmp	%g5, %o2
.L957:
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
	brlz,pn	%o0, .L967
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtod	%f8, %f0
.L967:
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
	brlz,pn	%o0, .L970
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtos	%f8, %f0
.L970:
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
	bne,pn	%icc, .L991
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L975
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L991
	 mov	13, %g1
	sra	%o0, 1, %g1
	cmp	%g1, 0
	bne,a,pn %icc, .L991
	 mov	14, %g1
	movre	%o0, 1, %g1
	add	%g1, 15, %g1
.L975:
.L991:
	jmp	%o7+8
	 and	%g1, 31, %o0
	ba,pt	%xcc, .L975
	 mov	12, %g1
	ba,pt	%xcc, .L975
	 mov	3, %g1
	ba,pt	%xcc, .L975
	 mov	5, %g1
	ba,pt	%xcc, .L975
	 mov	7, %g1
	ba,pt	%xcc, .L975
	 mov	9, %g1
	ba,pt	%xcc, .L975
	 mov	11, %g1
	ba,pt	%xcc, .L975
	 mov	14, %g1
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%xcc, .L995
	 andcc	%o0, 2, %g0
	bne,pn	%xcc, .L996
	 andcc	%o0, 4, %g0
	bne,pn	%xcc, .L997
	 andcc	%o0, 8, %g0
	bne,pn	%xcc, .L998
	 andcc	%o0, 16, %g0
	bne,pn	%xcc, .L999
	 andcc	%o0, 32, %g0
	bne,pn	%xcc, .L1000
	 andcc	%o0, 64, %g0
	bne,pn	%xcc, .L1001
	 andcc	%o0, 128, %g0
	bne,pn	%xcc, .L1002
	 andcc	%o0, 256, %g0
	bne,pn	%xcc, .L1003
	 andcc	%o0, 512, %g0
	bne,pn	%xcc, .L1004
	 andcc	%o0, 1024, %g0
	bne,pn	%xcc, .L1005
	 andcc	%o0, 2048, %g0
	bne,pn	%xcc, .L1006
	 sethi	%hi(4096), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1007
	 sethi	%hi(8192), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1008
	 sethi	%hi(16384), %g1
	andcc	%g1, %o0, %g0
	bne,a,pn %icc, .L1011
	 mov	14, %o0
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	add	%o0, 15, %o0
.L994:
.L1011:
	jmp	%o7+8
	 and	%o0, 31, %o0
.L995:
	ba,pt	%xcc, .L994
	 mov	0, %o0
.L996:
	ba,pt	%xcc, .L994
	 mov	1, %o0
.L1007:
	ba,pt	%xcc, .L994
	 mov	12, %o0
.L997:
	ba,pt	%xcc, .L994
	 mov	2, %o0
.L998:
	ba,pt	%xcc, .L994
	 mov	3, %o0
.L999:
	ba,pt	%xcc, .L994
	 mov	4, %o0
.L1000:
	ba,pt	%xcc, .L994
	 mov	5, %o0
.L1001:
	ba,pt	%xcc, .L994
	 mov	6, %o0
.L1002:
	ba,pt	%xcc, .L994
	 mov	7, %o0
.L1003:
	ba,pt	%xcc, .L994
	 mov	8, %o0
.L1004:
	ba,pt	%xcc, .L994
	 mov	9, %o0
.L1005:
	ba,pt	%xcc, .L994
	 mov	10, %o0
.L1006:
	ba,pt	%xcc, .L994
	 mov	11, %o0
.L1008:
	ba,pt	%xcc, .L994
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
	fbge,a,pn %fcc2, .L1018
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1018:
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
	brz,pn	%o0, .L1022
	 mov	0, %g2
.L1023:
	and	%o0, 1, %g1
	srl	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%g2, %g1, %g2
	bne,pt	%icc, .L1023
	 add	%o1, %o1, %o1
.L1022:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L1027
	 mov	0, %g2
	brz,pn	%o1, .L1027
	 nop
.L1028:
	and	%o1, 1, %g1
	add	%o0, %o0, %g3
	srlx	%o1, 1, %o1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srl	%g3, 0, %o0
	brnz,pt	%o1, .L1028
	 add	%g2, %g1, %g2
.L1027:
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
	blu,pt	%icc, .L1035
	 mov	1, %g1
	ba,pt	%xcc, .L1041
	 mov	0, %g2
.L1038:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L1037
	 cmp	%g1, 0
.L1035:
	cmp	%o1, 0
	bge,pt	%icc, .L1038
	 add	%o1, %o1, %g2
.L1036:
	mov	0, %g2
.L1041:
	cmp	%o0, %o1
	blu,pt	%icc, .L1040
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L1040:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L1041
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L1037:
	bne,pt	%icc, .L1036
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
	fbl,pn	%fcc3, .L1051
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L1051:
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
	fbl,pn	%fcc1, .L1054
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L1054:
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
	bl,a,pn	%icc, .L1068
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L1061
	 mov	0, %g4
	mov	0, %o5
.L1060:
	mov	1, %g2
	mov	0, %g4
.L1062:
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
	bne,pt	%icc, .L1062
	 sra	%g3, 0, %o1
	sub	%g0, %g4, %g1
	cmp	%o5, 0
	movne	%icc, %g1, %g4
.L1061:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L1068:
	mov	1, %o5
	ba,pt	%xcc, .L1060
	 sra	%o1, 0, %o1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	mov	1, %g1
	brlz,pn	%o0, .L1086
	 mov	0, %o5
.L1070:
	brgez,pt %o1, .L1087
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	mov	%g1, %o5
.L1087:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1073
	 mov	1, %g2
	cmp	%g1, 0
.L1088:
	bl,pn	%icc, .L1077
	 mov	0, %o0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1088
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1074
	 mov	0, %o0
.L1073:
	mov	0, %o0
.L1077:
	cmp	%g1, %g3
	bgu,a,pt %icc, .L1089
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L1089:
	cmp	%g2, 0
	bne,pt	%icc, .L1077
	 srl	%g1, 1, %g1
	srl	%o0, 0, %o0
.L1074:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1086:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1070
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L1091
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1091:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu,pn	%icc, .L1097
	 mov	%o1, %g1
	cmp	%g1, 0
.L1109:
	bl,pn	%icc, .L1108
	 sub	%g3, %g1, %g4
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L1109
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1110
	 srl	%g3, 0, %o0
.L1097:
	sub	%g3, %g1, %g4
.L1108:
	cmp	%g3, %g1
	srl	%g2, 1, %g2
	movgeu	%icc, %g4, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L1097
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L1110:
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
	blu,pt	%icc, .L1112
	 mov	1, %g4
	ba,pt	%xcc, .L1191
	 mov	1, %o5
.L1115:
	cmp	%g1, %o0
	addx	%g0, 0, %o4
	cmp	%g0, %g5
	addx	%g0, 0, %g2
	andcc	%o4, %g2, %g0
	be,pn	%icc, .L1114
	 cmp	%o3, 0
	mov	%g3, %g4
	mov	%g1, %o1
.L1112:
	sllx	%o1, 49, %g1
	add	%g4, %g4, %g3
	sll	%g3, 16, %g5
	mov	%g3, %o5
	sll	%o1, 16, %g2
	srlx	%g1, 48, %g1
	cmp	%g2, 0
	bge,pt	%icc, .L1115
	 srl	%g5, 16, %o3
	cmp	%o0, %o1
	blu,pt	%icc, .L1138
	 mov	0, %o5
	sub	%o0, %o1, %o0
	mov	%g4, %o5
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
.L1138:
	sll	%g4, 16, %g3
	srl	%g3, 17, %g1
	mov	%g1, %g4
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 1, %g2
.L1119:
	cmp	%o0, %g2
	blu,a,pt %icc, .L1197
	 srl	%g3, 18, %g2
	sub	%o0, %g2, %g2
	or	%o5, %g4, %o5
	sllx	%g2, 48, %g2
	srlx	%g2, 48, %o0
	srl	%g3, 18, %g2
.L1197:
	srlx	%o1, 2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L1117
	 srl	%g3, 18, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1198
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 19, %g2
.L1198:
	srlx	%o1, 3, %g1
	cmp	%g2, 0
	be,pn	%icc, .L1117
	 srl	%g3, 19, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1199
	 srl	%g3, 20, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 20, %g1
.L1199:
	srl	%g3, 20, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1200
	 srl	%g3, 21, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 21, %g1
.L1200:
	srl	%g3, 21, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1201
	 srl	%g3, 22, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 22, %g1
.L1201:
	srl	%g3, 22, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1202
	 srl	%g3, 23, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 23, %g1
.L1202:
	srl	%g3, 23, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1192
	 sub	%o0, %g1, %g1
.L1126:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1193
	 sub	%o0, %g1, %g1
.L1127:
	srl	%g3, 25, %g1
	srl	%g3, 25, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1194
	 sub	%o0, %g1, %g1
.L1128:
	srl	%g3, 26, %g1
	srl	%g3, 26, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1195
	 sub	%o0, %g1, %g1
.L1129:
	srl	%g3, 27, %g1
	srl	%g3, 27, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1196
	 sub	%o0, %g1, %g1
.L1130:
	srl	%g3, 28, %g1
	srl	%g3, 28, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1203
	 srl	%g3, 29, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 29, %g1
.L1203:
	srl	%g3, 29, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1204
	 srl	%g3, 30, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 30, %g1
.L1204:
	srl	%g3, 30, %g2
	cmp	%g1, 0
	be,pn	%icc, .L1117
	 srlx	%o1, 14, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1205
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1205:
	bge,pn	%icc, .L1117
	 srlx	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a,pt %icc, .L1117
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%o5, 1, %o5
	sllx	%o1, 48, %g1
	srlx	%g1, 48, %o0
.L1117:
	mov	%o0, %g1
	movre	%o2, %o5, %g1
	mov	%g1, %o5
	sllx	%o5, 48, %o5
	jmp	%o7+8
	 srlx	%o5, 48, %o0
.L1114:
	be,pn	%icc, .L1117
	 cmp	%o0, %g1
	blu,pt	%icc, .L1118
	 sethi	%hi(31744), %g5
	sub	%o0, %g1, %o0
	sllx	%o0, 48, %o0
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	srlx	%o0, 48, %o0
	mov	%g1, %o1
	ba,pt	%xcc, .L1119
	 sll	%g3, 16, %g3
.L1192:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1126
	 srlx	%g1, 48, %o0
.L1118:
	mov	0, %o5
	sll	%g3, 16, %g3
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	ba,pt	%xcc, .L1119
	 mov	%g1, %o1
.L1193:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1127
	 srlx	%g1, 48, %o0
.L1194:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1128
	 srlx	%g1, 48, %o0
.L1195:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1129
	 srlx	%g1, 48, %o0
.L1196:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L1130
	 srlx	%g1, 48, %o0
.L1191:
	movne	%icc, 0, %o5
	ba,pt	%xcc, .L1117
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
	blu,pt	%xcc, .L1207
	 sethi	%hi(2147483648), %g4
	ba,pt	%xcc, .L1213
	 mov	0, %g2
.L1210:
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1209
	 nop
.L1207:
	and	%o1, %g4, %g2
	brz,pt	%g2, .L1210
	 mov	0, %g3
	mov	0, %g2
.L1213:
	cmp	%o0, %o1
.L1222:
	blu,a,pt %xcc, .L1221
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L1221:
	brnz,pt	%g1, .L1213
	 srlx	%o1, 1, %o1
.L1211:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
.L1209:
	brz,pn	%g1, .L1211
	 mov	0, %g2
	ba,pt	%xcc, .L1222
	 cmp	%o0, %o1
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1224
	 sll	%o0, %o1, %g1
	mov	0, %o0
.L1225:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L1229:
	jmp	%o7+8
	 nop
.L1224:
	brz,pn	%o1, .L1229
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %g3, %g3
	sll	%g2, %o1, %g2
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1225
	 or	%g3, %g2, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1231
	 nop
	sllx	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1231:
	brz,pn	%o2, .L1235
	 nop
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %g1
	srlx	%o1, %g1, %g1
	sllx	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1235:
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
	be,pt	%xcc, .L1237
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L1238:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1242:
	jmp	%o7+8
	 nop
.L1237:
	brz,pn	%o1, .L1242
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %o0
	ba,pt	%xcc, .L1238
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1244
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L1248:
	jmp	%o7+8
	 nop
.L1244:
	brz,pn	%o2, .L1248
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
	bl,pn	%icc, .L1254
	 mov	0, %g1
	bg,pn	%icc, .L1254
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1254
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1254:
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
	bl,pn	%icc, .L1260
	 mov	-1, %g1
	bg,pn	%icc, .L1260
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1260
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1260:
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
	bl,pn	%xcc, .L1265
	 mov	0, %g1
	bg,pn	%xcc, .L1265
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1265
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1265:
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
	brnz,pt	%i1, .L1273
	 nop
	brnz,pt	%i0, .L1277
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1273:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1277:
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
	be,pt	%xcc, .L1279
	 srlx	%o0, 32, %g1
	mov	0, %g2
	srl	%g1, %o1, %g1
.L1280:
	st	%g2, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1278:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1279:
	brz,pn	%o1, .L1278
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g3
	srl	%o0, %o1, %g1
	srl	%g2, %o1, %g2
	ba,pt	%xcc, .L1280
	 or	%g3, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1285
	 nop
	srlx	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1285:
	brz,pn	%o2, .L1289
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1289:
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
	be,pt	%xcc, .L1303
	 ldd	[%g2+%lo(.LC34)], %f0
.L1305:
	fmuld	%f0, %f8, %f0
.L1303:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1304
	 andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1305
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1311:
	fmuld	%f8, %f8, %f8
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1305
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1311
	 add	%g2, %g1, %g1
.L1304:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1310
	 sethi	%hi(.LC34), %g1
	jmp	%o7+8
	 nop
.L1310:
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
	be,pt	%xcc, .L1313
	 ld	[%g2+%lo(.LC36)], %f0
.L1315:
	fmuls	%f0, %f1, %f0
.L1313:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1314
	 andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1315
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1321:
	fmuls	%f1, %f1, %f1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1315
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1321
	 add	%g2, %g1, %g1
.L1314:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1320
	 sethi	%hi(.LC36), %g1
	jmp	%o7+8
	 nop
.L1320:
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
	blu,pn	%icc, .L1323
	 mov	0, %g1
	bgu,pn	%icc, .L1323
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1323
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1323:
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
	blu,pn	%icc, .L1329
	 mov	-1, %g1
	bgu,pn	%icc, .L1329
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1329
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1329:
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
	blu,pn	%xcc, .L1334
	 mov	0, %g1
	bgu,pn	%xcc, .L1334
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1334
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1334:
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
