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
	 add	%o1, -1, %g3
	add	%o0, -1, %g2
	ldub	[%g3+%o2], %g1
.L45:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L45
	 ldub	[%g3+%o2], %g1
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
	sub	%o0, %g2, %g3
	mov	0, %g4
	mov	0, %g5
	cmp	%g3, 6
	movre	%g1, 1, %g4
	mov	%g5, %g1
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
	cmp	%o2, %g1
	add	%o1, %g1, %g3
	add	%o0, %g1, %g5
	be,pn	%xcc, .L49
	 sub	%o2, %g1, %o2
	ldub	[%o1+%g1], %o1
	cmp	%o2, 1
	be,pn	%xcc, .L49
	 stb	%o1, [%o0+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%xcc, .L49
	 stb	%g1, [%g5+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%xcc, .L49
	 stb	%g1, [%g5+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%xcc, .L49
	 stb	%g1, [%g5+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%xcc, .L49
	 stb	%g1, [%g5+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%xcc, .L49
	 stb	%g1, [%g5+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g5+6]
.L15:
	mov	0, %g1
	ldub	[%o1+%g1], %g4
.L47:
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L47
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
	and	%o2, 0xff, %o2
.L61:
	brz,pn	%o3, .L62
	 add	%o3, -1, %o3
	ldub	[%o1], %g1
	and	%g1, 0xff, %g2
	stb	%g1, [%o0]
	cmp	%g2, %o2
	add	%o1, 1, %o1
	bne,pt	%icc, .L61
	 add	%o0, 1, %o0
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
	brz,a,pn %o2, .L90
	 mov	0, %o0
.L89:
	ldub	[%o0], %g1
	ldub	[%o1], %g2
	cmp	%g1, %g2
	add	%o2, -1, %o2
	bne,pn	%icc, .L88
	 add	%o0, 1, %o0
	brnz,pt	%o2, .L89
	 add	%o1, 1, %o1
	mov	0, %o0
.L90:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L88:
	sub	%g1, %g2, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L96
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L96:
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
	ba,pt	%xcc, .L98
	 add	%o0, -1, %g2
.L100:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L101
	 add	%g3, -1, %g3
.L98:
	cmp	%g3, %g2
	bne,pt	%xcc, .L100
	 mov	%g3, %o0
	mov	0, %o0
.L101:
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
	brz,pn	%i2, .L106
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L106:
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
	be,pn	%icc, .L114
	 stb	%g1, [%o0]
.L109:
	ldub	[%o1+1], %g1
	sll	%g1, 24, %g3
	cmp	%g3, 0
	stb	%g1, [%o0+1]
	add	%o0, 1, %o0
	bne,pt	%icc, .L109
	 add	%o1, 1, %o1
.L114:
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
	bne,pt	%icc, .L116
	 and	%o1, 0xff, %o1
.L124:
	jmp	%o7+8
	 nop
.L118:
	sll	%g1, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L124
	 add	%o0, 1, %o0
.L116:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L118
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
.L127:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L129
	 cmp	%g1, 0
	bne,pt	%icc, .L127
	 add	%o0, 1, %o0
	mov	0, %o0
.L129:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.align 32
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldub	[%o1], %g4
	ldub	[%o0], %g3
	sll	%g4, 24, %g5
	sll	%g3, 24, %g2
	cmp	%g5, %g2
	mov	1, %g1
	bne,pn	%icc, .L139
	 add	%o1, -1, %o1
	cmp	%g2, 0
.L141:
	be,a,pn	%icc, .L140
	 and	%g4, 0xff, %o1
	ldub	[%o0+%g1], %g3
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g4
	sll	%g3, 24, %g2
	sll	%g4, 24, %g5
	cmp	%g5, %g2
	be,pt	%icc, .L141
	 cmp	%g2, 0
.L139:
	and	%g3, 0xff, %o0
	and	%g4, 0xff, %o1
	sub	%o0, %o1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L140:
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
	be,pn	%icc, .L142
	 mov	0, %g1
	mov	%o0, %g1
.L144:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L144
	 add	%g1, 1, %g1
	sub	%g1, %o0, %g1
.L142:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L149
	 mov	0, %g4
	ldub	[%o0], %g5
	add	%o2, -1, %o2
	cmp	%g5, 0
	mov	%o1, %g4
	bne,pt	%icc, .L152
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L160
	 ldub	[%o1], %o5
.L153:
	ldub	[%o0], %g5
	cmp	%g5, 0
	be,pn	%icc, .L161
	 add	%g4, 1, %g1
	mov	%g1, %g4
.L152:
	ldub	[%g4], %o5
	cmp	%g0, %o5
	xor	%o5, %g5, %o4
	xor	%g4, %o2, %g3
	addx	%g0, 0, %g2
	mov	0, %g1
	cmp	%g0, %o4
	movrne	%g3, 1, %g1
	subx	%g0, -1, %o1
	and	%g2, %o1, %g3
	andcc	%g3, %g1, %g0
	bne,pt	%icc, .L153
	 add	%o0, 1, %o0
.L151:
	sub	%g5, %o5, %g4
.L149:
.L162:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L161:
	ba,pt	%xcc, .L151
	 ldub	[%g4+1], %o5
.L160:
	ba,pt	%xcc, .L162
	 sub	%g5, %o5, %g4
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L167
	 and	%o2, -2, %o2
	add	%o0, %o2, %g3
.L165:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	add	%o0, 2, %o0
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	cmp	%o0, %g3
	bne,pt	%xcc, .L165
	 add	%o1, 2, %o1
.L167:
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
	mov	%g1, %g2
	cmp	%o0, 31
	movleu	%icc, 1, %g2
	orcc	%g3, %g2, %g0
	bne,pt	%icc, .L179
	 mov	1, %g3
	sethi	%hi(-9216), %g4
	or	%g4, 984, %g5
	add	%o0, %g5, %g2
	cmp	%g2, 1
	bleu,pn	%icc, .L179
	 nop
	sethi	%hi(-65536), %g3
	or	%g3, 7, %g4
	add	%o0, %g4, %o0
	cmp	%o0, 2
	movleu	%icc, 1, %g1
	mov	%g1, %g3
.L179:
	jmp	%o7+8
	 and	%g3, 1, %o0
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
	bleu,pn	%icc, .L189
	 sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	sethi	%hi(46080), %g3
	add	%o0, %g1, %g1
	or	%g3, 981, %g4
	sethi	%hi(8192), %g2
	cmp	%g4, %g1
	or	%g2, 39, %g1
	subx	%g0, -1, %g5
	cmp	%g1, %o0
	subx	%g0, -1, %g1
	orcc	%g5, %g1, %g0
	bne,pn	%icc, .L185
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g4
	add	%o0, %g3, %g5
	or	%g4, 1016, %g2
	cmp	%g5, %g2
	bleu,pn	%icc, .L185
	 sethi	%hi(-65536), %g3
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %g1
	or	%g3, 4, %g4
	sethi	%hi(1048576), %g5
	cmp	%g0, %g1
	or	%g5, 3, %g2
	add	%o0, %g4, %g1
	addx	%g0, 0, %o0
	cmp	%g1, %g2
	mov	%o0, %g1
	movgu	%icc, 0, %g1
.L185:
	jmp	%o7+8
	 and	%g1, 1, %o0
.L189:
	add	%o0, 1, %g3
	and	%g3, 127, %g4
	cmp	%g4, 32
	mov	0, %g1
	movgu	%icc, 1, %g1
	jmp	%o7+8
	 and	%g1, 1, %o0
	.size	iswprint, .-iswprint
	.align 4
	.align 32
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L191
	 mov	1, %g1
	or	%o0, 32, %o0
	add	%o0, -97, %g2
	cmp	%g2, 5
	mov	0, %g1
	movleu	%icc, 1, %g1
.L191:
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
	fbu,pn	%fcc0, .L194
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L194
	 fmovd	%f2, %f8
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L201
	 nop
	fsubd	%f0, %f2, %f8
.L194:
	jmp	%o7+8
	 fmovd	%f8, %f0
.L201:
	fzero	%f8
	jmp	%o7+8
	 fmovd	%f8, %f0
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L210
	 fmovs	%f1, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L210
	 fmovs	%f3, %f0
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L209
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L209:
	fzeros	%f0
.L210:
	jmp	%o7+8
	 nop
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	fcmpd	%fcc2, %f0, %f0
	add	%sp, -144, %sp
	fbu,pn	%fcc2, .L211
	 fmovd	%f2, %f8
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L211
	 fmovd	%f0, %f8
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L213
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f8
.L211:
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L213:
	fmovdl	%fcc0, %f2, %f8
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	fcmps	%fcc1, %f1, %f1
	add	%sp, -144, %sp
	fbu,pn	%fcc1, .L217
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L217
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L219
	 fcmpes	%fcc3, %f1, %f3
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f0
.L217:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L219:
	fmovsl	%fcc3, %f3, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	fcmpq	%fcc0, %f0, %f0
	add	%sp, -144, %sp
	fbu,pn	%fcc0, .L223
	 fmovq	%f4, %f8
	fcmpq	%fcc1, %f4, %f4
	fbu,pn	%fcc1, .L223
	 fmovq	%f0, %f8
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f4, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L225
	 fcmpeq	%fcc2, %f0, %f4
	cmp	%g1, 0
	fmovqne	%icc, %f4, %f8
.L223:
	fmovq	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L225:
	fmovql	%fcc2, %f4, %f8
	fmovq	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	fcmpd	%fcc3, %f0, %f0
	add	%sp, -144, %sp
	fbu,pn	%fcc3, .L229
	 fmovd	%f2, %f8
	fcmpd	%fcc0, %f2, %f2
	fbu,pn	%fcc0, .L229
	 fmovd	%f0, %f8
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L231
	 fcmped	%fcc1, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
	fmovd	%f2, %f8
.L229:
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L231:
	fmovdl	%fcc1, %f0, %f2
	fmovd	%f2, %f8
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	fcmps	%fcc2, %f1, %f1
	add	%sp, -144, %sp
	fbu,pn	%fcc2, .L235
	 fmovs	%f3, %f0
	fcmps	%fcc3, %f3, %f3
	fbu,pn	%fcc3, .L235
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L237
	 fcmpes	%fcc0, %f1, %f3
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	fmovs	%f3, %f0
.L235:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L237:
	fmovsl	%fcc0, %f1, %f3
	fmovs	%f3, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	fcmpq	%fcc1, %f0, %f0
	add	%sp, -144, %sp
	fbu,pn	%fcc1, .L241
	 fmovq	%f4, %f8
	fcmpq	%fcc2, %f4, %f4
	fbu,pn	%fcc2, .L241
	 fmovq	%f0, %f8
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f4, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g3
	cmp	%g1, %g3
	be,a,pt	%icc, .L243
	 fcmpeq	%fcc3, %f0, %f4
	cmp	%g1, 0
	fmovqne	%icc, %f0, %f4
	fmovq	%f4, %f8
.L241:
	fmovq	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L243:
	fmovql	%fcc3, %f0, %f4
	fmovq	%f4, %f8
	fmovq	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	cmp	%o0, 0
	mov	%o0, %g1
	sethi	%hi(s.0), %o0
	or	%o0, %lo(s.0), %o0
	be,pn	%icc, .L248
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g5
.L249:
	and	%g1, 63, %g3
	ldub	[%g5+%g3], %g4
	srl	%g1, 6, %g1
	stb	%g4, [%g2]
	cmp	%g1, 0
	bne,pt	%icc, .L249
	 add	%g2, 1, %g2
.L248:
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
	sethi	%hi(seed), %g3
	sethi	%hi(1481765888), %g1
	ldx	[%g3+%lo(seed)], %o0
	sethi	%hi(1284865024), %g2
	or	%g1, 45, %g1
	or	%g2, 813, %g4
	sllx	%g1, 32, %g1
	add	%g1, %g4, %g1
	mulx	%o0, %g1, %g5
	add	%g5, 1, %o0
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
	brz,a,pn %o1, .L260
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L262
	 stx	%o0, [%g1+8]
.L262:
	jmp	%o7+8
	 nop
.L260:
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
	brz,a,pn %g1, .L273
	 ldx	[%o0+8], %g3
	ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g3
.L273:
	brnz,a,pt %g3, .L272
	 stx	%g1, [%g3]
.L272:
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
	brz,pn	%l1, .L275
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L277
	 mov	0, %l0
.L286:
	cmp	%l1, %l0
	be,pn	%xcc, .L275
	 add	%i5, %i3, %i5
.L277:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	mov	%i5, %i0
	bne,pt	%icc, .L286
	 add	%l0, 1, %l0
.L288:
	return	%i7+8
	 nop
.L275:
	mulx	%i3, %l1, %g1
	add	%l1, 1, %g2
	stx	%g2, [%i2]
	brz,pn	%i3, .L288
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
	save	%sp, -176, %sp
	ldx	[%i2], %l0
	brz,pn	%l0, .L290
	 mov	0, %i5
	ba,pt	%xcc, .L298
	 mov	%i1, %o1
.L297:
	cmp	%l0, %i5
	be,pn	%xcc, .L290
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
.L290:
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
	ba,pt	%xcc, .L323
	 mov	0, %g1
.L325:
	mov	0, %g1
	add	%o0, 1, %o0
.L323:
	sll	%g4, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g5
	cmp	%g5, 4
	xor	%g2, 32, %g5
	movleu	%icc, 1, %g1
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	orcc	%g1, %g5, %g0
	bne,a,pt %icc, .L325
	 ldub	[%o0+1], %g4
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L303
	 cmp	%g1, 45
	bne,a,pt %icc, .L326
	 add	%g2, -48, %g3
	ldub	[%o0+1], %g4
	sll	%g4, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%o0, 1, %o0
	bgu,pn	%icc, .L308
	 mov	0, %g3
	mov	1, %g5
.L306:
	mov	0, %g3
.L309:
	add	%o0, 1, %o0
	add	%g4, -48, %g1
	ldub	[%o0], %g4
	sll	%g3, 2, %g2
	add	%g2, %g3, %g2
	sll	%g4, 24, %g3
	sra	%g3, 24, %g3
	add	%g3, -48, %g3
	sll	%g1, 24, %g1
	sll	%g2, 1, %g2
	sra	%g1, 24, %g1
	cmp	%g3, 9
	bleu,pt	%icc, .L309
	 sub	%g2, %g1, %g3
	sub	%g1, %g2, %g1
	cmp	%g5, 0
	move	%icc, %g1, %g3
.L308:
	jmp	%o7+8
	 sra	%g3, 0, %o0
.L326:
	cmp	%g3, 9
	bleu,pt	%icc, .L306
	 mov	0, %g5
	ba,pt	%xcc, .L308
	 mov	0, %g3
.L303:
	ldub	[%o0+1], %g4
	sll	%g4, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%o0, 1, %o0
	bleu,pt	%icc, .L306
	 mov	0, %g5
	ba,pt	%xcc, .L308
	 mov	0, %g3
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g5
	ba,pt	%xcc, .L350
	 mov	0, %g1
.L352:
	mov	0, %g1
	add	%o0, 1, %o0
.L350:
	sll	%g5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o5
	movleu	%icc, 1, %g1
	cmp	%g0, %o5
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L352
	 ldub	[%o0+1], %g5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L330
	 cmp	%g1, 45
	bne,pt	%icc, .L353
	 add	%g2, -48, %g1
	ldub	[%o0+1], %g5
	sll	%g5, 24, %o5
	sra	%o5, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L354
	 mov	0, %o0
	mov	1, %o5
.L333:
	mov	0, %o0
.L336:
	add	%g1, 1, %g1
	add	%g5, -48, %g2
	ldub	[%g1], %g5
	sllx	%o0, 2, %g4
	sll	%g5, 24, %g3
	add	%g4, %o0, %o0
	sra	%g3, 24, %g4
	sllx	%g2, 56, %g2
	add	%g4, -48, %g4
	sllx	%o0, 1, %g3
	srax	%g2, 56, %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L336
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %g5
	cmp	%o5, 0
	move	%icc, %g5, %o0
.L354:
	jmp	%o7+8
	 nop
.L353:
	cmp	%g1, 9
	mov	0, %o5
	bleu,pt	%icc, .L333
	 mov	%o0, %g1
.L351:
	jmp	%o7+8
	 mov	0, %o0
.L330:
	ldub	[%o0+1], %g5
	add	%o0, 1, %g1
	sll	%g5, 24, %o0
	sra	%o0, 24, %g3
	add	%g3, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L333
	 mov	0, %o5
	ba,pt	%xcc, .L351
	 nop
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g5
	ba,pt	%xcc, .L375
	 mov	0, %g1
.L377:
	mov	0, %g1
	add	%o0, 1, %o0
.L375:
	sll	%g5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o5
	movleu	%icc, 1, %g1
	cmp	%g0, %o5
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L377
	 ldub	[%o0+1], %g5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L358
	 cmp	%g1, 45
	be,a,pt	%icc, .L378
	 ldub	[%o0+1], %g5
	add	%g2, -48, %g1
	cmp	%g1, 9
	mov	0, %o5
	bgu,pn	%icc, .L376
	 mov	%o0, %g1
.L360:
	mov	0, %o0
.L363:
	add	%g1, 1, %g1
	add	%g5, -48, %g2
	ldub	[%g1], %g5
	sllx	%o0, 2, %g4
	sll	%g5, 24, %g3
	add	%g4, %o0, %o0
	sra	%g3, 24, %g4
	sllx	%g2, 56, %g2
	add	%g4, -48, %g4
	sllx	%o0, 1, %g3
	srax	%g2, 56, %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L363
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %g5
	cmp	%o5, 0
	move	%icc, %g5, %o0
.L379:
	jmp	%o7+8
	 nop
.L378:
	add	%o0, 1, %g1
	sll	%g5, 24, %o0
	sra	%o0, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	bleu,pt	%icc, .L360
	 mov	1, %o5
.L376:
	jmp	%o7+8
	 mov	0, %o0
.L358:
	ldub	[%o0+1], %g5
	sll	%g5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -48, %o5
	cmp	%o5, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L379
	 mov	0, %o0
	ba,pt	%xcc, .L363
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L390:
	brz,pn	%i2, .L392
	 mov	0, %i5
.L391:
	srlx	%i2, 1, %l0
	mulx	%l0, %i3, %g1
	add	%i1, %g1, %i5
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,pn	%icc, .L385
	 add	%i2, -1, %i2
	be,pn	%icc, .L380
	 nop
	sub	%i2, %l0, %i2
	brnz,pt	%i2, .L391
	 add	%i5, %i3, %i1
	mov	0, %i5
.L380:
.L392:
	return	%i7+8
	 mov	%o5, %o0
.L385:
	ba,pt	%xcc, .L390
	 mov	%l0, %i2
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -176, %sp
	cmp	%i2, 0
	be,pn	%icc, .L398
	 mov	%i0, %l1
.L403:
	sra	%i2, 1, %o1
	mulx	%o1, %i3, %g1
	add	%i1, %g1, %i0
	mov	%o1, %l0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	be,pn	%icc, .L406
	 sra	%i2, 1, %i2
.L405:
	ble,pn	%icc, .L396
	 cmp	%i2, 0
	bne,pt	%icc, .L403
	 add	%i0, %i3, %i1
.L398:
	return	%i7+8
	 mov	0, %o0
.L396:
	cmp	%l0, 0
	be,pn	%icc, .L398
	 nop
	mov	%l0, %i2
	sra	%l0, 1, %o1
	mulx	%o1, %i3, %g1
	add	%i1, %g1, %i0
	mov	%o1, %l0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	bne,pt	%icc, .L405
	 sra	%i2, 1, %i2
.L406:
	return	%i7+8
	 nop
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	add	%sp, -176, %sp
	sub	%o0, %o1, %o0
	st	%o0, [%sp+2203]
	st	%g1, [%sp+2199]
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
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	add	%sp, -160, %sp
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
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	add	%sp, -160, %sp
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
	mov	%o0, %g1
	sdivx	%o0, %o1, %o0
	mulx	%o0, %o1, %o1
	add	%sp, -160, %sp
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
	be,pn	%icc, .L418
	 nop
.L415:
	cmp	%g1, %o1
	be,pn	%icc, .L423
	 nop
	lduw	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L415
	 add	%o0, 4, %o0
.L418:
	jmp	%o7+8
	 mov	0, %o0
.L423:
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
	lduw	[%o0], %g2
	cmp	%g2, %g3
	mov	4, %g1
	bne,pn	%icc, .L433
	 add	%o1, -4, %o1
	cmp	%g2, 0
.L434:
	be,pn	%icc, .L433
	 cmp	%g2, %g3
	lduw	[%o0+%g1], %g2
	add	%g1, 4, %g1
	lduw	[%o1+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L434
	 cmp	%g2, 0
	cmp	%g2, %g3
.L433:
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
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
.L436:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L436
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
	lduw	[%o0], %g2
	cmp	%g2, 0
	be,pn	%icc, .L438
	 mov	0, %g1
	mov	%o0, %g1
.L440:
	lduw	[%g1+4], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L440
	 add	%g1, 4, %g1
	sub	%g1, %o0, %g1
	srax	%g1, 2, %g1
.L438:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	brz,a,pn %o2, .L462
	 mov	0, %o0
.L461:
	lduw	[%o0], %g1
	lduw	[%o1], %g2
	xor	%g2, %g1, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g5
	andcc	%g4, %g5, %g0
	add	%o2, -1, %o2
	be,pn	%icc, .L460
	 add	%o0, 4, %o0
	brnz,pt	%o2, .L461
	 add	%o1, 4, %o1
	mov	0, %o0
.L462:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L460:
	cmp	%g1, %g2
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L467
	 nop
.L474:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L475
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L474
	 add	%o0, 4, %o0
.L467:
	jmp	%o7+8
	 mov	0, %o0
.L475:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	brz,a,pn %o2, .L494
	 mov	0, %o0
.L493:
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	add	%o2, -1, %o2
	bne,pn	%icc, .L492
	 add	%o0, 4, %o0
	brnz,pt	%o2, .L493
	 add	%o1, 4, %o1
	mov	0, %o0
.L494:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L492:
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L500
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L500:
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
	be,pn	%xcc, .L528
	 nop
	sub	%o0, %o1, %g1
	sllx	%o2, 2, %g2
	cmp	%g1, %g2
	blu,pt	%xcc, .L503
	 add	%o2, -1, %g1
	brz,pn	%o2, .L528
	 nop
	cmp	%g1, 8
	bleu,pn	%xcc, .L514
	 add	%o1, 4, %g4
	or	%o1, %o0, %g3
	xor	%o0, %g4, %g2
	and	%g3, 7, %g3
	mov	0, %g5
	mov	0, %g4
	movre	%g3, 1, %g5
	movrne	%g2, 1, %g4
	andcc	%g5, %g4, %g0
	be,pn	%icc, .L514
	 mov	0, %g5
	srlx	%o2, 1, %g3
	mov	0, %g1
.L508:
	ldd	[%o1+%g1], %f8
	add	%g5, 1, %g5
	std	%f8, [%o0+%g1]
	cmp	%g3, %g5
	bne,pt	%xcc, .L508
	 add	%g1, 8, %g1
	and	%o2, 1, %g1
	brz,pn	%g1, .L528
	 nop
	and	%o2, -2, %o2
	sllx	%o2, 2, %g2
	lduw	[%o1+%g2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%g2]
.L514:
	mov	0, %g3
.L525:
	lduw	[%o1+%g3], %g4
	add	%g1, -1, %g1
	st	%g4, [%o0+%g3]
	cmp	%g1, -1
	bne,pt	%xcc, .L525
	 add	%g3, 4, %g3
	jmp	%o7+8
	 nop
.L503:
	brz,pn	%o2, .L528
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g5
.L527:
	st	%g5, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L527
	 lduw	[%o1+%g1], %g5
	jmp	%o7+8
	 nop
.L528:
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
	brz,pn	%o2, .L531
	 add	%o2, -1, %g5
	srlx	%o0, 2, %g2
	cmp	%g5, 5
	bleu,pn	%xcc, .L536
	 and	%g2, 1, %g1
	brz,pn	%g1, .L533
	 mov	%o0, %o5
	add	%o0, 4, %o5
	st	%o1, [%o0]
	add	%o2, -2, %g5
.L533:
	st	%o1, [%sp+2183]
	st	%o1, [%sp+2187]
	ldd	[%sp+2183], %f8
	sub	%o2, %g1, %o2
	sllx	%g1, 2, %g3
	srlx	%o2, 1, %g4
	add	%o0, %g3, %g2
	mov	0, %g1
.L534:
	sllx	%g1, 3, %g3
	add	%g1, 1, %g1
	cmp	%g4, %g1
	bne,pt	%xcc, .L534
	 std	%f8, [%g2+%g3]
	and	%o2, 1, %g1
	brz,pn	%g1, .L531
	 and	%o2, -2, %o2
	sllx	%o2, 2, %g1
	sub	%g5, %o2, %g5
	add	%o5, %g1, %g1
.L532:
	brz,pn	%g5, .L531
	 st	%o1, [%g1]
	cmp	%g5, 1
	be,pn	%xcc, .L531
	 st	%o1, [%g1+4]
	cmp	%g5, 2
	be,pn	%xcc, .L531
	 st	%o1, [%g1+8]
	cmp	%g5, 3
	be,pn	%xcc, .L531
	 st	%o1, [%g1+12]
	cmp	%g5, 4
	be,pn	%xcc, .L531
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L531:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L536:
	ba,pt	%xcc, .L532
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%xcc, .L562
	 nop
	brz,pn	%o2, .L605
	 nop
	add	%o0, -1, %g2
	add	%o1, -1, %o1
	ldub	[%g2+%o2], %g1
.L602:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L602
	 ldub	[%g2+%o2], %g1
.L606:
	jmp	%o7+8
	 nop
.L562:
	bne,pt	%xcc, .L601
	 nop
	jmp	%o7+8
	 nop
.L601:
	brz,pn	%o2, .L605
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%xcc, .L572
	 add	%o0, 1, %g2
	or	%o1, %o0, %g1
	and	%g1, 7, %g1
	sub	%o1, %g2, %g3
	mov	0, %g4
	mov	0, %g5
	cmp	%g3, 6
	movre	%g1, 1, %g4
	mov	%g5, %g1
	movgu	%xcc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L572
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L603:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L603
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o1, %g1, %g5
	add	%o0, %g1, %g3
	be,pn	%xcc, .L606
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %o0
	cmp	%o2, 1
	be,pn	%xcc, .L606
	 stb	%o0, [%o1+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%xcc, .L606
	 stb	%g1, [%g5+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%xcc, .L606
	 stb	%g1, [%g5+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%xcc, .L606
	 stb	%g1, [%g5+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%xcc, .L606
	 stb	%g1, [%g5+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%xcc, .L606
	 stb	%g1, [%g5+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g5+6]
.L572:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L604:
	stb	%g4, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L604
	 ldub	[%o0+%g1], %g4
.L605:
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
	sub	%g0, %o1, %g1
	and	%g1, 15, %g1
	sll	%o0, %o1, %g2
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
	sub	%g0, %o1, %g1
	and	%g1, 15, %g1
	srl	%o0, %o1, %g2
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
	sethi	%hi(16711680), %g2
	sll	%o0, 8, %g1
	sll	%o0, 24, %g3
	and	%g1, %g2, %g1
	srlx	%o0, 24, %g4
	or	%g1, %g3, %g1
	and	%o0, %g2, %o0
	srlx	%o0, 8, %g5
	or	%g1, %g4, %g1
	or	%g1, %g5, %g2
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	mov	255, %g2
	srlx	%o0, 56, %g5
	sllx	%g2, 8, %g4
	sllx	%o0, 56, %g1
	srlx	%o0, 40, %g3
	and	%g3, %g4, %g3
	or	%g1, %g5, %g1
	srlx	%o0, 24, %g4
	sethi	%hi(16711680), %g5
	and	%g4, %g5, %g4
	or	%g1, %g3, %g1
	sethi	%hi(4278190080), %g5
	srlx	%o0, 8, %g3
	and	%g3, %g5, %g3
	or	%g1, %g4, %g1
	sllx	%g2, 32, %g5
	sllx	%o0, 8, %g4
	and	%g4, %g5, %g4
	or	%g1, %g3, %g1
	sllx	%g2, 40, %g5
	sllx	%o0, 24, %g3
	or	%g1, %g4, %g1
	sllx	%o0, 40, %o0
	and	%g3, %g5, %g4
	sllx	%g2, 48, %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %g3
	jmp	%o7+8
	 or	%g1, %g3, %o0
	.size	bswap_64, .-bswap_64
	.align 4
	.align 32
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	ba,pt	%xcc, .L623
	 mov	0, %g1
.L626:
	cmp	%g1, 32
	be,a,pn	%icc, .L625
	 mov	0, %g1
.L623:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L626
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L625:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L628
	 mov	0, %g1
	andcc	%o0, 1, %g1
	bne,pn	%icc, .L628
	 nop
	mov	1, %g1
.L629:
	sra	%o0, 1, %o0
	andcc	%o0, 1, %g0
	be,pt	%xcc, .L629
	 add	%g1, 1, %g1
.L628:
	jmp	%o7+8
	 sra	%g1, 0, %o0
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
	fbl,pt	%fcc0, .L635
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f0
	fcmpes	%fcc1, %f1, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L635:
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
	fbl,pt	%fcc2, .L638
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f2
	fcmped	%fcc3, %f0, %f2
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L638:
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
	fbl,pt	%fcc0, .L641
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldq	[%g1+%lo(.LC9)], %f4
	fcmpeq	%fcc1, %f0, %f4
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L641:
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
	fbu,pn	%fcc2, .L645
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L645
	 nop
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f0
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	cmp	%o1, 0
	fmovsge	%icc, %f9, %f0
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L659
	 srl	%o1, 31, %g1
.L648:
	fmuls	%f1, %f0, %f1
	srl	%o1, 31, %g1
.L659:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L645
	 nop
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f0, %f0, %f0
	bne,pt	%xcc, .L648
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L658:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f0, %f0, %f0
	bne,pt	%xcc, .L648
	 add	%g1, %o1, %g1
	ba,pt	%xcc, .L658
	 sra	%g1, 1, %o1
.L645:
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
	fbu,pn	%fcc0, .L676
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L676
	 nop
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f2
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f10
	cmp	%o1, 0
	fmovdge	%icc, %f10, %f2
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L675
	 srl	%o1, 31, %g1
.L664:
	fmuld	%f0, %f2, %f0
	srl	%o1, 31, %g1
.L675:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L676
	 nop
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%xcc, .L664
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L674:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%xcc, .L664
	 add	%g1, %o1, %g1
	ba,pt	%xcc, .L674
	 sra	%g1, 1, %o1
.L676:
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
	fbu,pn	%fcc2, .L694
	 nop
	faddq	%f0, %f0, %f8
	fcmpq	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L694
	 nop
	sethi	%hi(.LC20), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L690
	 ldq	[%g1+%lo(.LC20)], %f4
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L693
	 srl	%o2, 31, %g1
.L681:
	fmulq	%f0, %f4, %f0
.L680:
	srl	%o2, 31, %g1
.L693:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	brz,pn	%o2, .L694
	 nop
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmulq	%f4, %f4, %f4
	bne,pt	%xcc, .L681
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L692:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmulq	%f4, %f4, %f4
	bne,pt	%xcc, .L681
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L692
	 sra	%g1, 1, %o2
.L694:
	jmp	%o7+8
	 nop
.L690:
	sethi	%hi(.LC21), %g1
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L680
	 ldq	[%g1+%lo(.LC21)], %f4
	ba,pt	%xcc, .L680
	 fmulq	%f0, %f4, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L730
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%xcc, .L703
	 or	%o0, %o1, %g1
	and	%g1, 7, %g1
	brnz,pn	%g1, .L703
	 and	%o2, -8, %g2
	ldd	[%o0+%g1], %f8
.L728:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L728
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o0, %g1, %g2
	add	%o1, %g1, %g3
	be,pn	%xcc, .L730
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %g5
	xor	%g4, %g5, %o1
	cmp	%o2, 1
	be,pn	%xcc, .L730
	 stb	%o1, [%o0+%g1]
	ldub	[%g2+1], %g4
	ldub	[%g3+1], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 2
	be,pn	%xcc, .L730
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %g5
	ldub	[%g3+2], %g1
	xor	%g1, %g5, %g1
	cmp	%o2, 3
	be,pn	%xcc, .L730
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %o1
	ldub	[%g3+3], %g1
	xor	%g1, %o1, %g1
	cmp	%o2, 4
	be,pn	%xcc, .L730
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g4
	ldub	[%g3+4], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 5
	be,pn	%xcc, .L730
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %g5
	ldub	[%g3+5], %g1
	xor	%g1, %g5, %g1
	cmp	%o2, 6
	be,pn	%xcc, .L730
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %o2
	ldub	[%g3+6], %g1
	xor	%g1, %o2, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L703:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L729:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g4
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L729
	 ldub	[%o0+%g1], %g3
.L730:
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
	be,pn	%icc, .L747
	 mov	%o0, %g1
.L733:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L733
	 add	%g1, 1, %g1
.L747:
	brz,pn	%o2, .L735
	 nop
.L749:
	ldub	[%o1], %g4
	sll	%g4, 24, %g3
	stb	%g4, [%g1]
	cmp	%g3, 0
	add	%o2, -1, %o2
	be,pn	%icc, .L750
	 add	%o1, 1, %o1
	brnz,pt	%o2, .L749
	 add	%g1, 1, %g1
.L735:
	jmp	%o7+8
	 stb	%g0, [%g1]
.L750:
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L751
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L759:
	cmp	%g2, 0
	bne,a,pn %icc, .L754
	 add	%g1, 1, %g1
.L751:
	jmp	%o7+8
	 mov	%g1, %o0
.L754:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L759
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L751
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
	be,a,pn	%icc, .L769
	 mov	0, %o0
.L761:
	mov	%o1, %g1
	ba,pt	%xcc, .L764
	 sra	%g3, 24, %g4
.L763:
	be,pn	%icc, .L769
	 add	%g1, 1, %g1
.L764:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L763
	 cmp	%g2, %g4
	ldub	[%o0+1], %g5
	sll	%g5, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L761
	 add	%o0, 1, %o0
	mov	0, %o0
.L769:
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
.L771:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L771
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
	save	%sp, -176, %sp
	ldub	[%i1], %g1
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be,pn	%icc, .L795
	 mov	%i0, %i4
	mov	%i1, %g2
.L775:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L775
	 add	%g2, 1, %g2
	sub	%g2, %i1, %g4
	brz,pn	%g4, .L795
	 mov	%i4, %i0
	add	%i1, -1, %o7
	sra	%g1, 24, %i0
	ba,pt	%xcc, .L792
	 add	%o7, %g4, %o7
.L794:
	be,pn	%icc, .L793
	 add	%i4, 1, %i4
.L792:
	ldub	[%i4], %g1
	sll	%g1, 24, %g5
	sra	%g5, 24, %i2
	cmp	%i2, %i0
	bne,pt	%icc, .L794
	 cmp	%i2, 0
	mov	%i1, %g3
	mov	%i4, %i3
	ba,pt	%xcc, .L777
	 and	%g1, 0xff, %g1
.L779:
	ldub	[%i3], %g1
	cmp	%g1, 0
	be,pn	%icc, .L778
	 add	%g3, 1, %g3
.L777:
	ldub	[%g3], %g2
	cmp	%g0, %g2
	xor	%g2, %g1, %i2
	addx	%g0, 0, %g5
	xor	%g3, %o7, %i5
	cmp	%g0, %i2
	mov	0, %g4
	subx	%g0, -1, %i2
	movrne	%i5, 1, %g4
	and	%g5, %i2, %g2
	andcc	%g2, %g4, %g0
	bne,pt	%icc, .L779
	 add	%i3, 1, %i3
.L778:
	ldub	[%g3], %i3
	cmp	%g1, %i3
	be,a,pn	%icc, .L795
	 mov	%i4, %i0
	ba,pt	%xcc, .L792
	 add	%i4, 1, %i4
.L793:
	return	%i7+8
	 mov	0, %o0
.L795:
	return	%i7+8
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
	fbl,a,pn %fcc0, .L806
	 fcmped	%fcc1, %f2, %f8
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L807
	 nop
	fcmped	%fcc3, %f2, %f8
	fbl,pn	%fcc3, .L799
	 nop
.L807:
	jmp	%o7+8
	 nop
.L806:
	fbule,pt %fcc1, .L807
	 nop
.L799:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L808
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu,pn	%xcc, .L808
	 mov	0, %g2
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,pn	%xcc, .L808
	 nop
	ldub	[%o2], %o4
	mov	%o0, %g2
	sll	%o4, 24, %o0
	sra	%o0, 24, %o5
	ldsb	[%g2], %g1
.L829:
	cmp	%g1, %o5
	be,pn	%icc, .L828
	 add	%g2, 1, %g5
	mov	%g5, %g2
.L810:
	cmp	%o1, %g2
	bgeu,a,pt %xcc, .L829
	 ldsb	[%g2], %g1
.L819:
	mov	0, %g2
.L808:
	jmp	%o7+8
	 mov	%g2, %o0
.L828:
	cmp	%o3, 1
	be,pn	%xcc, .L808
	 nop
.L813:
	ba,pt	%xcc, .L811
	 mov	1, %g1
.L812:
	cmp	%g1, %o3
	be,pn	%xcc, .L808
	 nop
.L811:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be,pt	%icc, .L812
	 add	%g1, 1, %g1
	cmp	%o1, %g5
	blu,pn	%xcc, .L819
	 sra	%o0, 24, %g1
	ldsb	[%g5], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L810
	 add	%g5, 1, %g2
	mov	%g5, %g1
	mov	%g2, %g5
	ba,pt	%xcc, .L813
	 mov	%g1, %g2
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L831
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L831:
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
	fbl,pn	%fcc0, .L858
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L859
	 mov	0, %g2
.L838:
	sethi	%hi(.LC27), %g4
	sethi	%hi(.LC26), %g5
	ldd	[%g4+%lo(.LC27)], %f16
	ldd	[%g5+%lo(.LC26)], %f18
	mov	0, %g1
.L844:
	fmuld	%f0, %f16, %f0
	fcmped	%fcc2, %f0, %f18
	fbge,pt	%fcc2, .L844
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be,pn	%icc, .L862
	 st	%g1, [%o1]
.L861:
	jmp	%o7+8
	 fnegd	%f0, %f0
.L859:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f2
	fcmped	%fcc1, %f0, %f2
	fbuge,pt %fcc1, .L841
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,a,pn %fcc2, .L839
	 fmovd	%f0, %f4
.L841:
	jmp	%o7+8
	 st	%g0, [%o1]
.L858:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f6
	fcmped	%fcc0, %f0, %f6
	fbug,pn	%fcc0, .L860
	 fnegd	%f0, %f4
	fmovd	%f4, %f0
	ba,pt	%xcc, .L838
	 mov	1, %g2
.L860:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f12
	fcmped	%fcc3, %f0, %f12
	fbule,pt %fcc3, .L841
	 nop
	mov	1, %g2
.L839:
	fmovd	%f4, %f0
	sethi	%hi(.LC27), %g3
	ldd	[%g3+%lo(.LC27)], %f14
	mov	0, %g1
.L846:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f14
	fbl,pt	%fcc1, .L846
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne,pt	%icc, .L861
	 st	%g1, [%o1]
.L862:
	jmp	%o7+8
	 nop
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g2
	brz,pn	%g2, .L869
	 mov	0, %o0
.L865:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srlx	%g2, 1, %g2
	add	%o0, %g1, %o0
	brnz,pt	%g2, .L865
	 sllx	%o1, 1, %o1
.L869:
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
	blu,pt	%icc, .L871
	 mov	1, %g1
	ba,pt	%xcc, .L888
	 cmp	%o0, %o1
.L874:
	cmp	%g2, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g5
	andcc	%g4, %g5, %g0
	be,pn	%icc, .L873
	 srl	%g2, 0, %o1
.L871:
	cmp	%o1, 0
	bge,pt	%icc, .L874
	 sll	%o1, 1, %g2
.L875:
	mov	0, %g3
.L877:
	cmp	%o0, %o1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g4, 0
	movne	%icc, %g1, %g2
	sub	%o0, %o1, %g5
	srl	%g1, 1, %g1
	movne	%icc, %g5, %o0
	cmp	%g1, 0
	srl	%o0, 0, %o0
	or	%g3, %g2, %g3
	bne,pt	%icc, .L877
	 srlx	%o1, 1, %o1
.L876:
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L873:
	cmp	%g1, 0
	bne,pt	%icc, .L875
	 mov	0, %g3
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L888:
	sub	%o0, %o1, %o1
	movlu	%icc, %o0, %o1
	srl	%o1, 0, %o0
	ba,pt	%xcc, .L876
	 subx	%g0, -1, %g3
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -176, %sp
	sra	%i0, 7, %o0
	cmp	%o0, %i0
	xor	%o0, %i0, %g1
	be,pn	%icc, .L892
	 mov	7, %i0
	sll	%g1, 8, %g2
	call	__clzdi2, 0
	 srl	%g2, 0, %o0
	add	%o0, -33, %i0
.L892:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.align 32
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -176, %sp
	srax	%i0, 63, %g1
	cmp	%i0, %g1
	xor	%i0, %g1, %o0
	be,pn	%xcc, .L895
	 mov	63, %i0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %i0
.L895:
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L898
	 mov	0, %g2
.L899:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srlx	%o0, 1, %o0
	sll	%o1, 1, %o1
	add	%g2, %g1, %g2
	brnz,pt	%o0, .L899
	 srl	%o1, 0, %o1
.L898:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	cmp	%o0, %o1
	srl	%o2, 3, %g1
	blu,pt	%xcc, .L907
	 and	%o2, -8, %g5
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L939
	 add	%o2, -1, %g1
.L907:
	srl	%g1, 0, %g4
	cmp	%g1, 0
	sllx	%g4, 3, %o3
	be,pn	%icc, .L937
	 mov	0, %g1
	ldx	[%o1+%g1], %o4
.L941:
	stx	%o4, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%o3, %g1
	bne,a,pt %xcc, .L941
	 ldx	[%o1+%g1], %o4
	cmp	%g5, %o2
	bgeu,pn	%icc, .L945
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L915
	 srl	%g5, 0, %g1
	add	%g1, 1, %g3
	add	%o1, %g3, %o3
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	sub	%g2, %o3, %o4
	or	%g4, %g2, %g3
	cmp	%o4, 6
	and	%g3, 7, %o3
	mov	0, %o4
	mov	0, %g3
	movgu	%xcc, 1, %o4
	movre	%o3, 1, %g3
	andcc	%o4, %g3, %g0
	be,a,pn	%icc, .L942
	 ldub	[%o1+%g1], %o3
	srl	%o5, 3, %g1
	sllx	%g1, 3, %o4
	mov	0, %g1
	ldd	[%g4+%g1], %f8
.L943:
	std	%f8, [%g2+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %o4
	bne,a,pt %xcc, .L943
	 ldd	[%g4+%g1], %f8
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L946
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g5
	ldub	[%o1+%g5], %o5
	add	%g1, 1, %g2
	cmp	%g2, %o2
	bgeu,pn	%icc, .L946
	 stb	%o5, [%o0+%g5]
	srl	%g2, 0, %o3
	ldub	[%o1+%o3], %g4
	add	%g1, 2, %g3
	cmp	%g3, %o2
	bgeu,pn	%icc, .L946
	 stb	%g4, [%o0+%o3]
	srl	%g3, 0, %o4
	ldub	[%o1+%o4], %g5
	add	%g1, 3, %o5
	cmp	%o5, %o2
	bgeu,pn	%icc, .L946
	 stb	%g5, [%o0+%o4]
	srl	%o5, 0, %g2
	ldub	[%o1+%g2], %o3
	add	%g1, 4, %g4
	cmp	%g4, %o2
	bgeu,pn	%icc, .L946
	 stb	%o3, [%o0+%g2]
	srl	%g4, 0, %g3
	ldub	[%o1+%g3], %o4
	add	%g1, 5, %g5
	cmp	%g5, %o2
	bgeu,pn	%icc, .L946
	 stb	%o4, [%o0+%g3]
	srl	%g5, 0, %o5
	ldub	[%o1+%o5], %g2
	add	%g1, 6, %g1
	cmp	%g1, %o2
	bgeu,pn	%icc, .L946
	 stb	%g2, [%o0+%o5]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %o1
	jmp	%o7+8
	 stb	%o1, [%o0+%g1]
.L937:
	brz,pn	%o2, .L946
	 srl	%g5, 0, %g1
.L915:
	ldub	[%o1+%g1], %o3
.L942:
	stb	%o3, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L942
	 ldub	[%o1+%g1], %o3
.L946:
	jmp	%o7+8
	 nop
.L939:
	brz,pn	%o2, .L946
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g3
.L944:
	stb	%g3, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L944
	 ldub	[%o1+%g1], %g3
	jmp	%o7+8
	 nop
.L945:
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
	blu,pt	%xcc, .L951
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L972
	 add	%o2, -1, %g1
.L951:
	cmp	%g3, 0
	be,pn	%icc, .L950
	 add	%g3, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L954
	 add	%o1, 2, %g4
	or	%o1, %o0, %g1
	sub	%o0, %g4, %g5
	and	%g1, 7, %g1
	mov	0, %g4
	mov	0, %g2
	cmp	%g5, 4
	movre	%g1, 1, %g4
	mov	%g2, %g1
	movgu	%xcc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L954
	 srlx	%o2, 3, %g5
	srl	%o2, 3, %g4
	sllx	%g5, 3, %g2
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L975:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %xcc, .L975
	 ldd	[%o1+%g1], %f8
	sll	%g4, 2, %g1
	cmp	%g3, %g1
	be,pn	%icc, .L976
	 andcc	%o2, 1, %g0
	srl	%g1, 0, %g5
	sllx	%g5, 1, %g4
	lduh	[%o1+%g4], %g5
	add	%g1, 1, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L950
	 sth	%g5, [%o0+%g4]
	srl	%g2, 0, %g4
	sllx	%g4, 1, %g5
	lduh	[%o1+%g5], %g2
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bleu,pn	%icc, .L950
	 sth	%g2, [%o0+%g5]
	srl	%g1, 0, %g1
	sllx	%g1, 1, %g1
	lduh	[%o1+%g1], %g3
	sth	%g3, [%o0+%g1]
.L950:
	andcc	%o2, 1, %g0
.L976:
	be,pt	%xcc, .L979
	 nop
	add	%o2, -1, %o2
.L974:
	srl	%o2, 0, %g2
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L972:
	brz,pn	%o2, .L979
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L977:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L977
	 ldub	[%o1+%g1], %g2
.L979:
	jmp	%o7+8
	 nop
.L954:
	sllx	%g3, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %g5
.L978:
	sth	%g5, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %xcc, .L978
	 lduh	[%o1+%g1], %g5
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L979
	 nop
	ba,pt	%xcc, .L974
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
	blu,pt	%xcc, .L985
	 and	%o2, -4, %g5
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L1016
	 add	%o2, -1, %g1
.L985:
	cmp	%g3, 0
	be,pn	%icc, .L1017
	 nop
	add	%g3, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L987
	 or	%o0, %o1, %g4
	add	%o1, 4, %g1
	and	%g4, 7, %o3
	mov	0, %o5
	xor	%o0, %g1, %g1
	mov	0, %o4
	movre	%o3, 1, %o5
	movrne	%g1, 1, %o4
	andcc	%o5, %o4, %g0
	be,pn	%icc, .L987
	 srlx	%o2, 3, %g2
	srl	%o2, 3, %g4
	sllx	%g2, 3, %o3
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L1020:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%o3, %g1
	bne,a,pt %xcc, .L1020
	 ldd	[%o1+%g1], %f8
	sll	%g4, 1, %g1
	cmp	%g3, %g1
	be,pn	%icc, .L991
	 srl	%g1, 0, %g1
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g3
	st	%g3, [%o0+%g1]
.L991:
	cmp	%g5, %o2
.L1019:
	bgeu,pn	%icc, .L1025
	 nop
	sub	%o2, %g5, %o5
	add	%o5, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L994
	 srl	%g5, 0, %g1
	add	%g1, 1, %o3
	add	%o1, %o3, %g3
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	sub	%g2, %g3, %o4
	or	%g4, %g2, %o3
	cmp	%o4, 6
	and	%o3, 7, %o3
	mov	0, %o4
	mov	0, %g3
	movgu	%xcc, 1, %o4
	movre	%o3, 1, %g3
	andcc	%o4, %g3, %g0
	be,a,pn	%icc, .L1021
	 ldub	[%o1+%g1], %o3
	srl	%o5, 3, %g1
	sllx	%g1, 3, %o4
	mov	0, %g1
	ldd	[%g4+%g1], %f0
.L1022:
	std	%f0, [%g2+%g1]
	add	%g1, 8, %g1
	cmp	%o4, %g1
	bne,a,pt %xcc, .L1022
	 ldd	[%g4+%g1], %f0
	and	%o5, -8, %g1
	andcc	%o5, 7, %g0
	be,pn	%xcc, .L1026
	 add	%g1, %g5, %g1
	srl	%g1, 0, %g5
	ldub	[%o1+%g5], %o5
	add	%g1, 1, %g2
	cmp	%g2, %o2
	bgeu,pn	%icc, .L1026
	 stb	%o5, [%o0+%g5]
	srl	%g2, 0, %o3
	ldub	[%o1+%o3], %g4
	add	%g1, 2, %g3
	cmp	%g3, %o2
	bgeu,pn	%icc, .L1026
	 stb	%g4, [%o0+%o3]
	srl	%g3, 0, %o4
	ldub	[%o1+%o4], %g5
	add	%g1, 3, %o5
	cmp	%o5, %o2
	bgeu,pn	%icc, .L1026
	 stb	%g5, [%o0+%o4]
	srl	%o5, 0, %g2
	ldub	[%o1+%g2], %o3
	add	%g1, 4, %g4
	cmp	%g4, %o2
	bgeu,pn	%icc, .L1026
	 stb	%o3, [%o0+%g2]
	srl	%g4, 0, %g3
	ldub	[%o1+%g3], %o4
	add	%g1, 5, %g5
	cmp	%g5, %o2
	bgeu,pn	%icc, .L1026
	 stb	%o4, [%o0+%g3]
	srl	%g5, 0, %o5
	ldub	[%o1+%o5], %g2
	add	%g1, 6, %g1
	cmp	%g1, %o2
	bgeu,pn	%icc, .L1026
	 stb	%g2, [%o0+%o5]
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %o1
	jmp	%o7+8
	 stb	%o1, [%o0+%g1]
.L1017:
	brz,pn	%o2, .L1026
	 srl	%g5, 0, %g1
.L994:
	ldub	[%o1+%g1], %o3
.L1021:
	stb	%o3, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bgu,a,pt %icc, .L1021
	 ldub	[%o1+%g1], %o3
.L1026:
	jmp	%o7+8
	 nop
.L1016:
	brz,pn	%o2, .L1026
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L1023:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L1023
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L987:
	sllx	%g3, 2, %o5
	mov	0, %g1
	lduw	[%o1+%g1], %o4
.L1024:
	st	%o4, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %o5
	bne,a,pt %xcc, .L1024
	 lduw	[%o1+%g1], %o4
	ba,pt	%xcc, .L1019
	 cmp	%g5, %o2
.L1025:
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
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
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
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	__uitof, .-__uitof
	.align 4
	.align 32
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L1035
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1035:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f0
	fxtod	%f0, %f2
	add	%sp, 144, %sp
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
	brlz,pn	%o0, .L1038
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1038:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f0
	fxtos	%f0, %f1
	add	%sp, 144, %sp
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
	bne,pn	%icc, .L1043
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1043
	 mov	13, %g1
	mov	0, %g2
	sra	%o0, 1, %g3
	movre	%o0, 1, %g2
	mov	14, %g1
	add	%g2, 15, %g4
	cmp	%g3, 0
	move	%icc, %g4, %g1
.L1043:
	jmp	%o7+8
	 and	%g1, 31, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%xcc, .L1061
	 mov	0, %g1
	andcc	%o0, 2, %g0
	bne,pn	%xcc, .L1061
	 mov	1, %g1
	andcc	%o0, 4, %g0
	bne,pn	%xcc, .L1061
	 mov	2, %g1
	andcc	%o0, 8, %g0
	bne,pn	%xcc, .L1061
	 mov	3, %g1
	andcc	%o0, 16, %g0
	bne,pn	%xcc, .L1061
	 mov	4, %g1
	andcc	%o0, 32, %g0
	bne,pn	%xcc, .L1061
	 mov	5, %g1
	andcc	%o0, 64, %g0
	bne,pn	%xcc, .L1061
	 mov	6, %g1
	andcc	%o0, 128, %g0
	bne,pn	%xcc, .L1061
	 mov	7, %g1
	andcc	%o0, 256, %g0
	bne,pn	%xcc, .L1061
	 mov	8, %g1
	andcc	%o0, 512, %g0
	bne,pn	%xcc, .L1061
	 mov	9, %g1
	andcc	%o0, 1024, %g0
	bne,pn	%xcc, .L1061
	 mov	10, %g1
	andcc	%o0, 2048, %g0
	bne,pn	%xcc, .L1061
	 mov	11, %g1
	sethi	%hi(4096), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1061
	 mov	12, %g1
	sethi	%hi(8192), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1061
	 mov	13, %g1
	sethi	%hi(16384), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L1061
	 mov	14, %g1
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L1061:
	jmp	%o7+8
	 and	%g1, 31, %o0
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
	fbge,a,pn %fcc0, .L1084
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f0
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1084:
	fstox	%f1, %f2
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	sethi	%hi(32768), %g1
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
	and	%g2, 1, %g4
	sra	%o0, 3, %g5
	add	%g1, %g3, %g1
	sra	%o0, 4, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 5, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 6, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 7, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 8, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 9, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 10, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 11, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 12, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 13, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 14, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	add	%g1, %g3, %g1
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 15, %o0
	add	%g1, %o0, %g5
	jmp	%o7+8
	 and	%g5, 1, %o0
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
	sra	%o0, 3, %g5
	add	%g1, %g3, %g1
	sra	%o0, 4, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 5, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 6, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 7, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 8, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 9, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 10, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 11, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 12, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	sra	%o0, 13, %g5
	and	%g2, 1, %g4
	add	%g1, %g3, %g1
	sra	%o0, 14, %g2
	and	%g5, 1, %g3
	add	%g1, %g4, %g1
	add	%g1, %g3, %g1
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 15, %o0
	add	%g1, %o0, %g5
	jmp	%o7+8
	 srl	%g5, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	brz,pn	%o0, .L1088
	 mov	0, %g2
.L1089:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	srl	%o0, 1, %o0
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%g2, %g1, %g2
	bne,pt	%icc, .L1089
	 sll	%o1, 1, %o1
.L1088:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L1094
	 mov	0, %g2
	brz,pn	%o1, .L1094
	 nop
.L1095:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srlx	%o1, 1, %o1
	sll	%o0, 1, %o0
	add	%g2, %g1, %g2
	brnz,pt	%o1, .L1095
	 srl	%o0, 0, %o0
.L1094:
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
	blu,pt	%icc, .L1103
	 mov	1, %g1
	ba,pt	%xcc, .L1120
	 cmp	%o0, %o1
.L1106:
	cmp	%g2, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g5
	andcc	%g4, %g5, %g0
	be,pn	%icc, .L1105
	 srl	%g2, 0, %o1
.L1103:
	cmp	%o1, 0
	bge,pt	%icc, .L1106
	 sll	%o1, 1, %g2
.L1107:
	mov	0, %g3
.L1109:
	cmp	%o0, %o1
	mov	0, %g2
	subx	%g0, -1, %g4
	cmp	%g4, 0
	movne	%icc, %g1, %g2
	sub	%o0, %o1, %g5
	srl	%g1, 1, %g1
	movne	%icc, %g5, %o0
	cmp	%g1, 0
	srl	%o0, 0, %o0
	or	%g3, %g2, %g3
	bne,pt	%icc, .L1109
	 srlx	%o1, 1, %o1
.L1108:
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L1105:
	cmp	%g1, 0
	bne,pt	%icc, .L1107
	 mov	0, %g3
	movre	%o2, %g3, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
.L1120:
	sub	%o0, %o1, %o1
	movlu	%icc, %o0, %o1
	srl	%o1, 0, %o0
	ba,pt	%xcc, .L1108
	 subx	%g0, -1, %g3
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	fcmpes	%fcc1, %f1, %f3
	mov	0, %o0
	movg	%fcc1, 1, %o0
	movl	%fcc1, -1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	fcmped	%fcc2, %f0, %f2
	mov	0, %o0
	movg	%fcc2, 1, %o0
	movl	%fcc2, -1, %o0
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
	bl,a,pn	%icc, .L1141
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L1134
	 mov	0, %g4
	mov	0, %o5
.L1133:
	mov	1, %g2
	mov	0, %g4
.L1135:
	sra	%o1, 1, %g3
	and	%g2, 0xff, %g1
	cmp	%g0, %g3
	xor	%g1, 32, %g1
	and	%o1, 1, %o1
	addx	%g0, 0, %g5
	sub	%g0, %o1, %o1
	cmp	%g0, %g1
	and	%o1, %o0, %o1
	addx	%g0, 0, %g1
	sll	%o0, 1, %o0
	andcc	%g5, %g1, %g0
	add	%g4, %o1, %g4
	sra	%o0, 0, %o0
	sra	%g3, 0, %o1
	bne,pt	%icc, .L1135
	 add	%g2, 1, %g2
	sub	%g0, %g4, %g1
	cmp	%o5, 0
	movne	%icc, %g1, %g4
.L1134:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L1141:
	sra	%o1, 0, %o1
	ba,pt	%xcc, .L1133
	 mov	1, %o5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	mov	1, %g1
	brlz,pn	%o0, .L1165
	 mov	0, %g5
.L1143:
	brgez,pt %o1, .L1167
	 cmp	%o0, %o1
	sub	%g0, %o1, %o1
	mov	%g1, %g5
	cmp	%o0, %o1
.L1167:
	bleu,pn	%icc, .L1163
	 mov	1, %g1
	cmp	%o1, 0
.L1168:
	bl,pn	%icc, .L1150
	 mov	0, %g3
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g4, %g2, %g0
	bne,pt	%icc, .L1168
	 cmp	%o1, 0
	cmp	%g1, 0
	be,a,pn	%icc, .L1166
	 mov	0, %o0
.L1150:
	cmp	%o0, %o1
	subx	%g0, -1, %g4
	mov	0, %g2
	cmp	%g4, 0
	movne	%icc, %g1, %g2
	sub	%o0, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %o0
	cmp	%g1, 0
	or	%g3, %g2, %g3
	bne,pt	%icc, .L1150
	 srl	%o1, 1, %o1
.L1152:
	srl	%g3, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%g5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1165:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1143
	 mov	1, %g5
.L1166:
	sub	%g0, %o0, %g1
	cmp	%g5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1163:
	ba,pt	%xcc, .L1152
	 subx	%g0, -1, %g3
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L1170
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1170:
	srax	%o1, 63, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %g4
	cmp	%o0, %g4
	mov	%o0, %g3
	mov	%g4, %g1
	bleu,pn	%icc, .L1189
	 mov	1, %g2
	cmp	%g1, 0
.L1192:
	bl,pn	%icc, .L1191
	 cmp	%g3, %g1
	sll	%g1, 1, %g1
	cmp	%g1, %g3
	sll	%g2, 1, %g2
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %o0
	andcc	%g5, %o0, %g0
	bne,pt	%icc, .L1192
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L1193
	 srl	%g3, 0, %o0
.L1187:
	cmp	%g3, %g1
.L1191:
	sub	%g3, %g1, %o1
	srl	%g2, 1, %g2
	movgeu	%icc, %o1, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L1187
	 srl	%g1, 1, %g1
.L1174:
	srl	%g3, 0, %o0
.L1193:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1189:
	sub	%o0, %g4, %g2
	ba,pt	%xcc, .L1174
	 movgeu	%icc, %g2, %g3
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1195
	 mov	1, %g3
	ba,pt	%xcc, .L1257
	 xor	%o1, %o0, %g1
.L1198:
	cmp	%g1, %o0
	addx	%g0, 0, %o4
	cmp	%g0, %g2
	addx	%g0, 0, %g5
	andcc	%o4, %g5, %g0
	srl	%g2, 16, %g2
	be,pn	%icc, .L1197
	 mov	%g4, %g5
	mov	%g4, %g3
	mov	%g1, %o1
.L1195:
	sll	%o1, 16, %g4
	sllx	%o1, 49, %g1
	cmp	%g4, 0
	srlx	%g1, 48, %g1
	sll	%g3, 17, %g2
	bge,pt	%icc, .L1198
	 sll	%g3, 1, %g4
	cmp	%o0, %o1
	sll	%g3, 16, %g2
	subx	%g0, -1, %o4
	sub	%o0, %o1, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %o0
	srl	%g2, 17, %g4
	mov	0, %g5
	movne	%icc, %g3, %g5
	sllx	%o0, 48, %g3
	cmp	%g4, 0
	srlx	%g3, 48, %o0
	mov	%g5, %o4
	be,pn	%icc, .L1200
	 srlx	%o1, 1, %o5
.L1202:
	cmp	%o0, %o5
	subx	%g0, -1, %g1
	mov	0, %g3
	cmp	%g1, 0
	sub	%o0, %o5, %g5
	mov	%g3, %g1
	movne	%icc, %g5, %o0
	movne	%icc, %g4, %g1
	srl	%g2, 18, %g4
	sllx	%o0, 48, %o5
	or	%g1, %o4, %g1
	cmp	%g4, 0
	srlx	%o5, 48, %o0
	mov	%g1, %g5
	srlx	%o1, 2, %o4
	be,pn	%icc, .L1200
	 srl	%g2, 18, %o5
	cmp	%o0, %o4
	sub	%o0, %o4, %g4
	subx	%g0, -1, %g5
	mov	%g3, %o4
	cmp	%g5, 0
	movne	%icc, %o5, %o4
	movne	%icc, %g4, %o0
	srl	%g2, 19, %o5
	or	%g1, %o4, %g1
	sllx	%o0, 48, %o0
	cmp	%o5, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srlx	%o1, 3, %g4
	be,pn	%icc, .L1200
	 srl	%g2, 19, %o4
	cmp	%o0, %g4
	sub	%o0, %g4, %o5
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o5, %o0
	mov	%g3, %o5
	movne	%icc, %o4, %o5
	srl	%g2, 20, %g4
	or	%g1, %o5, %g1
	sllx	%o0, 48, %o0
	cmp	%g4, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 20, %o4
	be,pn	%icc, .L1200
	 srlx	%o1, 4, %o5
	cmp	%o0, %o5
	sub	%o0, %o5, %g4
	subx	%g0, -1, %g5
	mov	%g3, %o5
	cmp	%g5, 0
	movne	%icc, %o4, %o5
	movne	%icc, %g4, %o0
	srl	%g2, 21, %o4
	or	%g1, %o5, %g1
	sllx	%o0, 48, %o0
	cmp	%o4, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 21, %o5
	be,pn	%icc, .L1200
	 srlx	%o1, 5, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o4
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o4, %o0
	mov	%g3, %o4
	movne	%icc, %o5, %o4
	srl	%g2, 22, %o5
	or	%g1, %o4, %g1
	sllx	%o0, 48, %o0
	cmp	%o5, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 22, %o4
	be,pn	%icc, .L1200
	 srlx	%o1, 6, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o5
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o5, %o0
	mov	%g3, %o5
	movne	%icc, %o4, %o5
	srl	%g2, 23, %o4
	or	%g1, %o5, %g1
	sllx	%o0, 48, %o0
	cmp	%o4, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 23, %o5
	be,pn	%icc, .L1200
	 srlx	%o1, 7, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o4
	subx	%g0, -1, %g5
	mov	%g3, %g4
	cmp	%g5, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o5, %g4
	srl	%g2, 24, %o5
	sllx	%o0, 48, %o0
	or	%g1, %g4, %g1
	cmp	%o5, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	be,pn	%icc, .L1200
	 srlx	%o1, 8, %o4
	cmp	%o0, %o4
	sub	%o0, %o4, %g4
	subx	%g0, -1, %g5
	mov	%g3, %o4
	cmp	%g5, 0
	movne	%icc, %o5, %o4
	movne	%icc, %g4, %o0
	srl	%g2, 25, %o5
	or	%g1, %o4, %g1
	sllx	%o0, 48, %o0
	cmp	%o5, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 25, %o4
	be,pn	%icc, .L1200
	 srlx	%o1, 9, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o5
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o5, %o0
	mov	%g3, %o5
	movne	%icc, %o4, %o5
	srl	%g2, 26, %o4
	or	%g1, %o5, %g1
	sllx	%o0, 48, %o0
	cmp	%o4, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 26, %o5
	be,pn	%icc, .L1200
	 srlx	%o1, 10, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o4
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o4, %o0
	mov	%g3, %o4
	movne	%icc, %o5, %o4
	srl	%g2, 27, %o5
	or	%g1, %o4, %g1
	sllx	%o0, 48, %o0
	cmp	%o5, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 27, %o4
	be,pn	%icc, .L1200
	 srlx	%o1, 11, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o5
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o5, %o0
	mov	%g3, %o5
	movne	%icc, %o4, %o5
	srl	%g2, 28, %o4
	or	%g1, %o5, %g1
	sllx	%o0, 48, %o0
	cmp	%o4, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 28, %o5
	be,pn	%icc, .L1200
	 srlx	%o1, 12, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o4
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o4, %o0
	mov	%g3, %o4
	movne	%icc, %o5, %o4
	srl	%g2, 29, %o5
	or	%g1, %o4, %g1
	sllx	%o0, 48, %o0
	cmp	%o5, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 29, %o4
	be,pn	%icc, .L1200
	 srlx	%o1, 13, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o5
	subx	%g0, -1, %g5
	cmp	%g5, 0
	movne	%icc, %o5, %o0
	mov	%g3, %o5
	movne	%icc, %o4, %o5
	srl	%g2, 30, %o4
	or	%g1, %o5, %g1
	sllx	%o0, 48, %o0
	cmp	%o4, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	srl	%g2, 30, %o5
	be,pn	%icc, .L1200
	 srlx	%o1, 14, %g4
	cmp	%o0, %g4
	subx	%g0, -1, %g5
	sub	%o0, %g4, %o4
	cmp	%g5, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o5, %g3
	sllx	%o0, 48, %o0
	or	%g1, %g3, %g1
	cmp	%g2, 0
	srlx	%o0, 48, %o0
	mov	%g1, %g5
	bge,pn	%icc, .L1200
	 srlx	%o1, 15, %o1
	cmp	%o0, %o1
	sub	%o0, %o1, %g2
	movgeu	%icc, %g2, %o0
	sllx	%o0, 48, %g3
	subx	%g0, -1, %o5
	srlx	%g3, 48, %o0
	or	%g1, %o5, %g5
.L1200:
	movre	%o2, %g5, %o0
	sllx	%o0, 48, %o2
	jmp	%o7+8
	 srlx	%o2, 48, %o0
.L1197:
	cmp	%g2, 0
	be,pn	%icc, .L1200
	 cmp	%o0, %g1
	sub	%o0, %g1, %o4
	subx	%g0, -1, %o5
	cmp	%o5, 0
	movne	%icc, %o4, %o0
	sethi	%hi(31744), %g2
	or	%g2, 1023, %g2
	sllx	%o0, 48, %o0
	mov	0, %o4
	and	%o1, %g2, %o5
	movne	%icc, %g4, %o4
	srlx	%o0, 48, %o0
	and	%g2, %g3, %g4
	mov	%g1, %o1
	ba,pt	%xcc, .L1202
	 sll	%g5, 16, %g2
.L1257:
	cmp	%g0, %g1
	subx	%g0, -1, %g5
	sub	%o0, %o1, %o1
	cmp	%g1, 0
	move	%icc, %o1, %o0
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
	ba,pt	%xcc, .L1200
	 and	%g5, 0xff, %g5
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	cmp	%o1, %o0
	mov	1, %g1
	blu,pt	%xcc, .L1259
	 sethi	%hi(2147483648), %g5
	ba,pt	%xcc, .L1276
	 mov	0, %g4
.L1262:
	sllx	%o1, 1, %o1
	cmp	%o0, %o1
	sllx	%g1, 1, %g1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1261
	 nop
.L1259:
	and	%o1, %g5, %g2
	brz,pt	%g2, .L1262
	 mov	0, %g3
.L1263:
	mov	0, %g4
.L1265:
	mov	0, %g2
	cmp	%o0, %o1
	mov	%g2, %g3
	movgeu	%xcc, 1, %g3
	cmp	%g3, 0
	sub	%o0, %o1, %g5
	movne	%icc, %g1, %g2
	srlx	%g1, 1, %g1
	movrne	%g3, %g5, %o0
	or	%g4, %g2, %g4
	brnz,pt	%g1, .L1265
	 srlx	%o1, 1, %o1
.L1264:
	jmp	%o7+8
	 movre	%o2, %g4, %o0
.L1261:
	brnz,pt	%g1, .L1263
	 mov	0, %g4
	jmp	%o7+8
	 movre	%o2, %g4, %o0
.L1276:
	movleu	%xcc, 1, %g4
	sub	%o0, %o1, %o1
	movrne	%g4, %o1, %o0
	ba,pt	%xcc, .L1264
	 and	%g4, 0xff, %g4
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1280
	 sll	%o0, %o1, %g1
	mov	0, %o0
.L1281:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o1
	or	%o1, %g1, %o0
.L1285:
	jmp	%o7+8
	 nop
.L1280:
	brz,pn	%o1, .L1285
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %g3, %g4
	sll	%g2, %o1, %g5
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1281
	 or	%g4, %g5, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1287
	 nop
	sllx	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1287:
	brz,pn	%o2, .L1292
	 nop
	sub	%g0, %o2, %g1
	srlx	%o1, %g1, %g1
	sllx	%o0, %o2, %g4
	sllx	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1292:
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
	be,pt	%xcc, .L1294
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %g4
	sra	%g1, %o1, %g1
.L1295:
	srl	%g1, 0, %g1
	sllx	%g4, 32, %g5
	or	%g5, %g1, %o0
.L1299:
	jmp	%o7+8
	 nop
.L1294:
	brz,pn	%o1, .L1299
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g3
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %g4
	ba,pt	%xcc, .L1295
	 or	%g3, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1301
	 srax	%o0, 63, %g4
	srax	%o0, %o2, %o1
	mov	%g4, %o0
.L1306:
	jmp	%o7+8
	 nop
.L1301:
	brz,pn	%o2, .L1306
	 nop
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o1, %o2, %o1
	srax	%o0, %o2, %g4
	or	%g1, %o1, %o1
	jmp	%o7+8
	 mov	%g4, %o0
	.size	__ashrti3, .-__ashrti3
	.align 4
	.align 32
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	mov	255, %g2
	sllx	%o0, 56, %g5
	sllx	%g2, 8, %g4
	srlx	%o0, 56, %g1
	srlx	%o0, 40, %g3
	and	%g3, %g4, %g3
	or	%g1, %g5, %g1
	srlx	%o0, 24, %g4
	sethi	%hi(16711680), %g5
	and	%g4, %g5, %g4
	or	%g1, %g3, %g1
	sethi	%hi(4278190080), %g5
	srlx	%o0, 8, %g3
	and	%g3, %g5, %g3
	or	%g1, %g4, %g1
	sllx	%g2, 32, %g5
	sllx	%o0, 8, %g4
	and	%g4, %g5, %g4
	or	%g1, %g3, %g1
	sllx	%g2, 40, %g5
	sllx	%o0, 24, %g3
	or	%g1, %g4, %g1
	sllx	%o0, 40, %o0
	and	%g3, %g5, %g4
	sllx	%g2, 48, %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %g3
	jmp	%o7+8
	 or	%g1, %g3, %o0
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
	or	%g3, 768, %g5
	srl	%o0, 24, %g1
	or	%g1, %g4, %g1
	sll	%o0, 8, %o0
	and	%g2, %g5, %g4
	sethi	%hi(16711680), %g3
	and	%o0, %g3, %g2
	or	%g1, %g4, %g1
	or	%g1, %g2, %g5
	jmp	%o7+8
	 srl	%g5, 0, %o0
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
	subx	%g0, -1, %g5
	mov	16, %g1
	sll	%g5, 4, %g5
	sub	%g1, %g5, %g1
	srl	%o0, %g1, %g1
	or	%g2, 768, %g3
	and	%g1, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %o0
	mov	8, %o5
	sll	%o0, 3, %g4
	sub	%o5, %g4, %g2
	srl	%g1, %g2, %g1
	and	%g1, 240, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %o0
	mov	4, %o5
	sll	%o0, 2, %g3
	sub	%o5, %g3, %g2
	srl	%g1, %g2, %g1
	and	%g1, 12, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o5
	mov	2, %o0
	sll	%o5, 1, %g2
	sub	%o0, %g2, %o5
	srl	%g1, %o5, %g1
	add	%g4, %g5, %g5
	add	%g3, %g5, %g4
	andcc	%g1, 2, %g0
	sub	%o0, %g1, %g3
	movne	%xcc, 0, %g3
	add	%g2, %g4, %o0
	add	%g3, %o0, %g2
	jmp	%o7+8
	 sra	%g2, 0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.align 32
	.global __clzti2
	.type	__clzti2, #function
	.proc	04
__clzti2:
	save	%sp, -176, %sp
	mov	0, %g1
	movrne	%i0, -1, %g1
	and	%g1, %i0, %g1
	movrne	%i0, %g0, %i1
	call	__clzdi2, 0
	 or	%g1, %i1, %o0
	mov	0, %i5
	movre	%i0, 1, %i5
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
	srax	%o1, 32, %g1
	srax	%o0, 32, %g2
	cmp	%g2, %g1
	bl,pn	%icc, .L1312
	 mov	0, %g1
	bg,pn	%icc, .L1312
	 mov	2, %g1
	cmp	%o0, %o1
	mov	1, %g3
	mov	0, %g1
	movgu	%icc, 2, %g3
	movgeu	%icc, %g3, %g1
.L1312:
	jmp	%o7+8
	 and	%g1, 3, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.align 32
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	srax	%o1, 32, %g1
	srax	%o0, 32, %g2
	cmp	%g2, %g1
	bl,pn	%icc, .L1318
	 mov	-1, %g1
	bg,pn	%icc, .L1318
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1318
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1318:
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
	bl,pn	%xcc, .L1323
	 mov	0, %o0
	bg,pn	%xcc, .L1323
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%xcc, 2, %g1
	movgeu	%xcc, %g1, %o0
.L1323:
	jmp	%o7+8
	 and	%o0, 3, %o0
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
	subx	%g0, -1, %g5
	sll	%g5, 4, %g5
	srl	%o0, %g5, %g1
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
	add	%g4, %g5, %g4
	and	%o0, 1, %o0
	mov	2, %g5
	srl	%g1, 1, %g1
	add	%g3, %g4, %g3
	sub	%g5, %g1, %g1
	sub	%g0, %o0, %g4
	and	%g4, %g1, %o0
	add	%g2, %g3, %g2
	add	%o0, %g2, %g5
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
	movrne	%i1, -1, %g1
	mov	0, %o0
	movre	%i1, %i0, %o0
	and	%g1, %i1, %g1
	call	__ctzdi2, 0
	 or	%o0, %g1, %o0
	mov	0, %i0
	movre	%i1, 1, %i0
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
	brnz,pt	%i1, .L1331
	 nop
	brnz,pt	%i0, .L1335
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1331:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1335:
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
	be,pt	%xcc, .L1337
	 srlx	%o0, 32, %g1
	srl	%g1, %o1, %g1
	mov	0, %g5
.L1338:
	st	%g5, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1336:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1337:
	brz,pn	%o1, .L1336
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g4
	srl	%o0, %o1, %g1
	srl	%g2, %o1, %g5
	ba,pt	%xcc, .L1338
	 or	%g4, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1343
	 nop
	srlx	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1343:
	brz,pn	%o2, .L1348
	 nop
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o1, %o2, %g4
	srlx	%o0, %o2, %o0
	or	%g1, %g4, %o1
.L1348:
	jmp	%o7+8
	 nop
	.size	__lshrti3, .-__lshrti3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	sethi	%hi(64512), %g5
	or	%g5, 1023, %g5
	and	%o0, %g5, %g3
	and	%o1, %g5, %g1
	smul	%g3, %g1, %g2
	srl	%o0, 16, %o0
	smul	%g1, %o0, %g1
	srl	%o1, 16, %o1
	smul	%g3, %o1, %g3
	smul	%o0, %o1, %g4
	srl	%g2, 16, %o5
	add	%g1, %o5, %g1
	and	%g2, %g5, %o0
	sll	%g1, 16, %g2
	srl	%g2, 16, %o1
	add	%g3, %o1, %g3
	add	%o0, %g2, %o5
	srl	%g1, 16, %g1
	sll	%g3, 16, %o0
	and	%o5, %g5, %g5
	add	%g1, %g4, %g1
	srl	%g3, 16, %g4
	add	%g5, %o0, %g2
	add	%g1, %g4, %g1
	sllx	%g1, 32, %g1
	srl	%g2, 0, %o1
	jmp	%o7+8
	 or	%o1, %g1, %o0
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	sethi	%hi(64512), %g5
	or	%g5, 1023, %g5
	and	%g5, %o0, %g3
	and	%g5, %o1, %g2
	smul	%g3, %g2, %g1
	srl	%o0, 16, %o5
	smul	%g2, %o5, %o3
	srl	%o1, 16, %o4
	smul	%g3, %o4, %g4
	smul	%o5, %o4, %o5
	srax	%o1, 32, %g3
	srl	%g1, 16, %g2
	smul	%o0, %g3, %g3
	srax	%o0, 32, %o0
	smul	%o1, %o0, %o1
	add	%o3, %g2, %o0
	sll	%o0, 16, %o4
	srl	%o4, 16, %o3
	and	%g1, %g5, %g1
	add	%g4, %o3, %g4
	srl	%o0, 16, %g2
	add	%g1, %o4, %g1
	sll	%g4, 16, %o0
	add	%g2, %o5, %o5
	and	%g1, %g5, %g1
	srl	%g4, 16, %o4
	mov	-1, %g5
	srlx	%g5, 32, %o3
	add	%g1, %o0, %g1
	add	%o5, %o4, %g4
	sllx	%g4, 32, %g2
	and	%o3, %g1, %g1
	or	%g1, %g2, %g1
	srax	%g1, 32, %o0
	add	%g3, %o0, %g3
	add	%g3, %o1, %o1
	sllx	%o1, 32, %g5
	and	%g1, %o3, %g1
	jmp	%o7+8
	 or	%g1, %g5, %o0
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.align 32
	.global __mulddi3
	.type	__mulddi3, #function
	.proc	05
__mulddi3:
	umul	%o0, %o1, %g1
	srlx	%o0, 32, %g2
	umul	%o1, %g2, %g3
	srlx	%o1, 32, %o1
	umul	%o0, %o1, %o0
	umul	%g2, %o1, %g4
	srlx	%g1, 32, %o5
	add	%g3, %o5, %g3
	mov	-1, %g5
	srlx	%g5, 32, %o1
	sllx	%g3, 32, %g5
	and	%g1, %o1, %g2
	srlx	%g5, 32, %g1
	add	%o0, %g1, %g1
	add	%g2, %g5, %o5
	srlx	%g3, 32, %o0
	and	%o5, %o1, %g2
	add	%o0, %g4, %g4
	sllx	%g1, 32, %o1
	srlx	%g1, 32, %g1
	add	%g4, %g1, %o0
	jmp	%o7+8
	 add	%g2, %o1, %o1
	.size	__mulddi3, .-__mulddi3
	.align 4
	.align 32
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	umul	%o1, %o3, %g2
	srlx	%o1, 32, %g4
	umul	%o3, %g4, %g1
	srlx	%o3, 32, %g5
	umul	%o1, %g5, %g3
	umul	%g4, %g5, %g5
	mulx	%o1, %o2, %o2
	mulx	%o3, %o0, %o0
	srlx	%g2, 32, %o5
	add	%g1, %o5, %g1
	sllx	%g1, 32, %g4
	mov	-1, %o1
	srlx	%g4, 32, %o4
	srlx	%o1, 32, %o3
	srlx	%g1, 32, %g1
	add	%g3, %o4, %o1
	and	%g2, %o3, %g2
	srlx	%o1, 32, %g3
	add	%g1, %g5, %g1
	add	%g1, %g3, %g1
	add	%g2, %g4, %g5
	and	%g5, %o3, %o5
	add	%o2, %g1, %o2
	sllx	%o1, 32, %o3
	add	%o2, %o0, %o0
	jmp	%o7+8
	 add	%o5, %o3, %o1
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
	movrne	%o1, 1, %g1
	sub	%g0, %o0, %o0
	sub	%o0, %g1, %o0
	jmp	%o7+8
	 sub	%g0, %o1, %o1
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
	xor	%g1, %o0, %g3
	srl	%g3, 8, %g2
	xor	%g2, %g3, %g4
	srl	%g4, 4, %g1
	xor	%g1, %g4, %g1
	sethi	%hi(26624), %g5
	or	%g5, 406, %o0
	and	%g1, 15, %g1
	sra	%o0, %g1, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.align 32
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	xor	%o1, %o0, %o1
	srax	%o1, 32, %g1
	xor	%g1, %o1, %g2
	srl	%g2, 16, %g1
	xor	%g1, %g2, %g1
	srl	%g1, 8, %g3
	xor	%g3, %g1, %g4
	srl	%g4, 4, %g1
	xor	%g1, %g4, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %g5
	and	%g1, 15, %g1
	sra	%g5, %g1, %o1
	jmp	%o7+8
	 and	%o1, 1, %o0
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
	xor	%g1, %o0, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	sethi	%hi(26624), %g3
	and	%g1, 15, %g1
	or	%g3, 406, %g4
	sra	%g4, %g1, %g5
	jmp	%o7+8
	 and	%g5, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.align 32
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %g2
	srlx	%o0, 1, %g3
	add	%g2, %g1, %g1
	sethi	%hi(858992640), %g4
	or	%g4, 819, %g5
	and	%g3, %g1, %g1
	sub	%o0, %g1, %o0
	sllx	%g5, 32, %g1
	add	%g1, %g5, %g1
	srlx	%o0, 2, %g2
	and	%g2, %g1, %g4
	and	%o0, %g1, %g5
	sethi	%hi(252644352), %g3
	add	%g4, %g5, %o0
	or	%g3, 783, %g2
	sllx	%g2, 32, %g4
	srlx	%o0, 4, %g1
	add	%g4, %g2, %g5
	add	%g1, %o0, %g1
	and	%g1, %g5, %g1
	srlx	%g1, 32, %g3
	add	%g3, %g1, %o0
	srl	%o0, 16, %g1
	add	%g1, %o0, %g1
	srl	%g1, 8, %g2
	add	%g2, %g1, %g4
	jmp	%o7+8
	 and	%g4, 127, %o0
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
	and	%g4, %g1, %g5
	and	%o0, %g1, %g2
	add	%g5, %g2, %o0
	srl	%o0, 4, %g1
	sethi	%hi(252644352), %g3
	add	%g1, %o0, %g1
	or	%g3, 783, %g4
	and	%g1, %g4, %g1
	srl	%g1, 16, %g5
	add	%g5, %g1, %g1
	srl	%g1, 8, %g2
	add	%g2, %g1, %o0
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
	or	%g2, 341, %g5
	srlx	%o1, 1, %g4
	sllx	%g5, 32, %g3
	sllx	%o0, 63, %g1
	add	%g3, %g5, %o5
	or	%g1, %g4, %g1
	and	%g1, %o5, %g1
	sub	%o1, %g1, %g1
	srlx	%o0, 1, %g5
	mov	0, %g2
	cmp	%g1, %o1
	mov	%g2, %g4
	and	%g5, %o5, %o1
	movgu	%xcc, 1, %g4
	sub	%o0, %o1, %o0
	sethi	%hi(858992640), %g3
	sub	%o0, %g4, %o1
	or	%g3, 819, %g5
	sllx	%o1, 62, %g4
	srlx	%g1, 2, %o5
	sllx	%g5, 32, %o0
	add	%o0, %g5, %g3
	or	%g4, %o5, %g5
	and	%g5, %g3, %g4
	and	%g1, %g3, %g1
	add	%g4, %g1, %g1
	srlx	%o1, 2, %o5
	cmp	%g1, %g4
	and	%o5, %g3, %g5
	and	%o1, %g3, %o1
	mov	%g2, %o0
	movlu	%xcc, 1, %o0
	add	%g5, %o1, %g3
	add	%o0, %g3, %o1
	sllx	%o1, 60, %o5
	srlx	%g1, 4, %g4
	or	%o5, %g4, %g5
	add	%g5, %g1, %g1
	sethi	%hi(252644352), %o0
	or	%o0, 783, %g4
	cmp	%g1, %g5
	srlx	%o1, 4, %g3
	add	%g3, %o1, %o1
	sllx	%g4, 32, %o5
	movlu	%xcc, 1, %g2
	add	%o5, %g4, %g5
	add	%g2, %o1, %g2
	and	%g2, %g5, %o0
	and	%g1, %g5, %g1
	add	%o0, %g1, %g4
	srlx	%g4, 32, %g1
	add	%g1, %g4, %g3
	srl	%g3, 16, %g1
	add	%g1, %g3, %g1
	srl	%g1, 8, %o1
	add	%o1, %g1, %o5
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
	andcc	%o1, 1, %g0
	fmovd	%f0, %f8
	mov	%o1, %g1
	be,pt	%xcc, .L1362
	 ldd	[%g2+%lo(.LC34)], %f0
.L1364:
	fmuld	%f0, %f8, %f0
.L1362:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1363
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1364
	 add	%g4, %g1, %g5
	sra	%g5, 1, %g1
.L1371:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1364
	 add	%g4, %g1, %g5
	ba,pt	%xcc, .L1371
	 sra	%g5, 1, %g1
.L1363:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1370
	 sethi	%hi(.LC34), %g1
	jmp	%o7+8
	 nop
.L1370:
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
	andcc	%o1, 1, %g0
	ld	[%g2+%lo(.LC36)], %f0
	be,pt	%xcc, .L1373
	 mov	%o1, %g1
.L1375:
	fmuls	%f0, %f1, %f0
.L1373:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1374
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1375
	 add	%g4, %g1, %g5
	sra	%g5, 1, %g1
.L1382:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1375
	 add	%g4, %g1, %g5
	ba,pt	%xcc, .L1382
	 sra	%g5, 1, %g1
.L1374:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1381
	 sethi	%hi(.LC36), %g1
	jmp	%o7+8
	 nop
.L1381:
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
	srlx	%o1, 32, %g1
	srlx	%o0, 32, %g2
	cmp	%g2, %g1
	blu,pn	%icc, .L1384
	 mov	0, %g1
	bgu,pn	%icc, .L1384
	 mov	2, %g1
	cmp	%o0, %o1
	mov	1, %g3
	mov	0, %g1
	movgu	%icc, 2, %g3
	movgeu	%icc, %g3, %g1
.L1384:
	jmp	%o7+8
	 and	%g1, 3, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.align 32
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	srlx	%o1, 32, %g1
	srlx	%o0, 32, %g2
	cmp	%g2, %g1
	blu,pn	%icc, .L1390
	 mov	-1, %g1
	bgu,pn	%icc, .L1390
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1390
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1390:
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
	blu,pn	%xcc, .L1395
	 mov	0, %o0
	bgu,pn	%xcc, .L1395
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%xcc, 2, %g1
	movgeu	%xcc, %g1, %o0
.L1395:
	jmp	%o7+8
	 and	%o0, 3, %o0
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
