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
	cmp	%o0, %o1
	bleu,pt	%xcc, .L5
	 nop
	brz,pn	%o2, .L20
	 add	%o1, -1, %o1
	add	%o0, -1, %g2
	ldub	[%o1+%o2], %g1
.L17:
	stb	%g1, [%g2+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L17
	 ldub	[%o1+%o2], %g1
.L20:
	jmp	%o7+8
	 nop
.L5:
	be,pn	%xcc, .L19
	 nop
	brz,pn	%o2, .L20
	 mov	0, %g1
	ldub	[%o1+%g1], %g2
.L18:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L18
	 ldub	[%o1+%g1], %g2
.L19:
	jmp	%o7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.align 32
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	brnz,pt	%o3, .L22
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L24:
	add	%o3, -1, %o3
	add	%o1, 1, %o1
	brz,pn	%o3, .L26
	 add	%o0, 1, %o0
.L22:
	ldub	[%o1], %g1
	and	%g1, 0xff, %g2
	cmp	%g2, %o2
	bne,pt	%icc, .L24
	 stb	%g1, [%o0]
	brz,a,pn %o3, .L33
	 mov	0, %o0
	jmp	%o7+8
	 add	%o0, 1, %o0
.L26:
	mov	0, %o0
.L33:
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	brnz,pt	%o2, .L35
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L37:
	brz,pn	%o2, .L40
	 add	%o0, 1, %o0
.L35:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L37
	 add	%o2, -1, %o2
	brz,a,pn %o2, .L44
	 mov	0, %o0
.L44:
	jmp	%o7+8
	 nop
.L40:
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
	brz,a,pn %o2, .L60
	 mov	0, %o0
.L59:
	ldub	[%o0], %g1
	ldub	[%o1], %g2
	cmp	%g1, %g2
	bne,pn	%icc, .L58
	 nop
	add	%o2, -1, %o2
	add	%o0, 1, %o0
	brnz,pt	%o2, .L59
	 add	%o1, 1, %o1
	mov	0, %o0
.L49:
.L60:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L58:
	brnz,pt	%o2, .L49
	 sub	%g1, %g2, %o0
	ba,pt	%xcc, .L49
	 mov	0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L66
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L66:
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
	add	%o0, -1, %g2
.L68:
	cmp	%o2, %g2
	be,pn	%xcc, .L71
	 nop
	mov	%o2, %o0
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L68
	 add	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L71:
	jmp	%o7+8
	 mov	0, %o0
	.size	memrchr, .-memrchr
	.align 4
	.align 32
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	brz,pn	%o2, .L80
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L79:
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L79
	 stb	%o1, [%g1]
.L80:
	jmp	%o7+8
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
	be,pn	%icc, .L88
	 stb	%g1, [%o0]
.L83:
	ldub	[%o1+1], %g1
	add	%o1, 1, %o1
	add	%o0, 1, %o0
	sll	%g1, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L83
	 stb	%g1, [%o0]
.L88:
	jmp	%o7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.align 32
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	and	%o1, 0xff, %o1
	ldsb	[%o0], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L90
	 ldub	[%o0], %g1
.L97:
	jmp	%o7+8
	 nop
.L92:
	add	%o0, 1, %o0
	cmp	%g2, 0
	be,pn	%icc, .L97
	 ldub	[%o0], %g1
.L90:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L92
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
.L100:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L102
	 cmp	%g1, 0
	bne,pt	%icc, .L100
	 add	%o0, 1, %o0
	mov	0, %o0
.L102:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.align 32
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	.register	%g3, #scratch
	ldsb	[%o0], %g1
	ldsb	[%o1], %g2
	cmp	%g0, %g1
	ldub	[%o0], %g4
	xor	%g1, %g2, %g1
	addx	%g0, 0, %g2
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g2, %g1, %g0
	be,pn	%icc, .L104
	 ldub	[%o1], %g5
	mov	1, %g2
.L105:
	ldub	[%o0+%g2], %g4
	ldub	[%o1+%g2], %g5
	sll	%g4, 24, %g3
	sll	%g5, 24, %g1
	cmp	%g0, %g3
	xor	%g1, %g3, %g1
	sra	%g1, 24, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g3, %g1, %g0
	bne,pt	%icc, .L105
	 add	%g2, 1, %g2
.L104:
	and	%g4, 0xff, %o0
	and	%g5, 0xff, %g5
	sub	%o0, %g5, %o0
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
	be,pn	%icc, .L111
	 mov	%o0, %g1
.L112:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L112
	 add	%g1, 1, %g1
.L111:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L116
	 mov	0, %g3
	ldub	[%o0], %g3
	cmp	%g3, 0
	be,a,pn	%icc, .L126
	 ldub	[%o1], %g1
	add	%o2, -1, %o2
	ba,pt	%xcc, .L118
	 add	%o1, %o2, %o2
.L119:
	add	%o0, 1, %o0
	cmp	%g3, 0
	be,pn	%icc, .L117
	 add	%o1, 1, %o1
.L118:
	ldub	[%o1], %g4
	xor	%o1, %o2, %g2
	mov	0, %g1
	movrne	%g2, 1, %g1
	xor	%g4, %g3, %g5
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	cmp	%g0, %g5
	subx	%g0, -1, %g4
	and	%g2, %g4, %g2
	andcc	%g2, %g1, %g0
	bne,a,pt %icc, .L119
	 ldub	[%o0+1], %g3
.L117:
	ldub	[%o1], %g1
.L126:
	sub	%g3, %g1, %g3
.L116:
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L131
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L129:
	ldub	[%o0+1], %g2
	add	%o0, 2, %o0
	add	%o1, 2, %o1
	ldub	[%o0-2], %g1
	cmp	%o0, %o2
	stb	%g2, [%o1-2]
	bne,pt	%xcc, .L129
	 stb	%g1, [%o1-1]
.L131:
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
	mov	0, %g1
	xor	%o0, 127, %g2
	cmp	%o0, 31
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
	mov	0, %g1
	add	%o0, -9, %g2
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
	mov	0, %g2
	add	%o0, -127, %g4
	mov	0, %g1
	cmp	%g4, 32
	movleu	%icc, 1, %g2
	cmp	%o0, 31
	movleu	%icc, 1, %g1
	orcc	%g2, %g1, %g0
	bne,pt	%icc, .L143
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L143
	 sethi	%hi(-65536), %g1
	mov	0, %g3
	or	%g1, 7, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 2
	movleu	%icc, 1, %g3
.L143:
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
	bleu,pn	%icc, .L153
	 sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%o0, %g1, %g1
	sethi	%hi(46080), %g2
	or	%g2, 981, %g2
	cmp	%g2, %g1
	subx	%g0, -1, %g3
	sethi	%hi(8192), %g2
	or	%g2, 39, %g2
	cmp	%g2, %o0
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L149
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L149
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%o0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L149
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	addx	%g0, 0, %g1
.L149:
	jmp	%o7+8
	 and	%g1, 1, %o0
.L153:
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
	bleu,pt	%icc, .L155
	 mov	1, %g1
	or	%o0, 32, %o0
	mov	0, %g1
	add	%o0, -97, %o0
	cmp	%o0, 5
	movleu	%icc, 1, %g1
.L155:
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
	fbu,pn	%fcc0, .L166
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L162
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L165
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L165:
	fzero	%f0
.L166:
	jmp	%o7+8
	 nop
.L162:
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
	fbu,pn	%fcc3, .L170
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L171
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L174
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L174:
	jmp	%o7+8
	 fzeros	%f0
.L170:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L171:
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
	fbu,a,pn %fcc2, .L181
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L175
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L177
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L175:
.L181:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L177:
	fmovdl	%fcc0, %f2, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -144, %sp
	fcmps	%fcc1, %f1, %f1
	fbu,pn	%fcc1, .L189
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L189
	 fmovs	%f1, %f0
	sethi	%hi(-2147483648), %g3
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L188
	 cmp	%g1, 0
	fcmpes	%fcc3, %f1, %f3
	fmovsl	%fcc3, %f3, %f1
	fmovs	%f1, %f0
.L182:
.L189:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L188:
	fmovsne	%icc, %f3, %f1
	fmovs	%f1, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	ba,pt	%xcc, .L182
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
	std	%f2, [%fp+1943]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+2023]
	cmp	%o0, 3
	be,pn	%xcc, .L193
	 add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+1991]
	cmp	%o0, 3
	be,pn	%xcc, .L194
	 ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g1
	srlx	%g1, 63, %g1
	ldd	[%fp+1919], %f12
	ldd	[%fp+1927], %f14
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L192
	 add	%fp, 1951, %o1
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L192:
	add	%fp, 1967, %o0
	ldx	[%fp+1935], %g2
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
.L193:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L194:
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
	fbu,a,pn %fcc0, .L202
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L196
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L198
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L196:
	fmovd	%f2, %f0
.L202:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L198:
	fmovdl	%fcc2, %f0, %f2
	fmovd	%f2, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -144, %sp
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L210
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L210
	 fmovs	%f1, %f0
	sethi	%hi(-2147483648), %g3
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L209
	 cmp	%g1, 0
	fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc1, %f1, %f3
	fmovs	%f3, %f0
.L203:
.L210:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L209:
	fmovsne	%icc, %f1, %f3
	fmovs	%f3, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	ba,pt	%xcc, .L203
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
	std	%f2, [%fp+1943]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+2023]
	cmp	%o0, 3
	be,pn	%xcc, .L214
	 add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+1991]
	cmp	%o0, 3
	be,pn	%xcc, .L215
	 ldd	[%fp+1935], %f12
	ldd	[%fp+1943], %f14
	std	%f12, [%fp+1911]
	ldx	[%fp+1911], %g1
	srlx	%g1, 63, %g1
	ldd	[%fp+1919], %f8
	ldd	[%fp+1927], %f10
	std	%f8, [%fp+1911]
	ldx	[%fp+1911], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,pt	%icc, .L213
	 add	%fp, 1951, %o1
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L213:
	add	%fp, 1967, %o0
	ldx	[%fp+1935], %g2
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
.L214:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L215:
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
	be,pn	%icc, .L220
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
	mov	%o0, %g2
.L219:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L219
	 stb	%g3, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L220:
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
	srl	%o0, 0, %o0
	sethi	%hi(seed), %g1
	jmp	%o7+8
	 stx	%o0, [%g1+%lo(seed)]
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
	or	%g1, 45, %g1
	sethi	%hi(1284865024), %g2
	or	%g2, 813, %g2
	sllx	%g1, 32, %g1
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
	brz,a,pn %o1, .L230
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L232
	 stx	%o0, [%g1+8]
.L232:
	jmp	%o7+8
	 nop
.L230:
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
	brz,a,pn %g1, .L242
	 ldx	[%o0+8], %g1
	ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g1
.L242:
	brz,pn	%g1, .L243
	 nop
	ldx	[%o0], %g2
	stx	%g2, [%g1]
.L243:
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
	brz,pn	%l1, .L245
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L247
	 mov	0, %l0
.L256:
	cmp	%l1, %l0
	be,pn	%xcc, .L245
	 add	%i5, %i3, %i5
.L247:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cmp	%o0, 0
	bne,a,pt %icc, .L256
	 add	%l0, 1, %l0
.L258:
	return	%i7+8
	 nop
.L245:
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L258
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
	ldx	[%i2], %i2
	brz,pn	%i2, .L260
	 mov	%i0, %l0
	ba,pt	%xcc, .L262
	 mov	0, %i5
.L267:
	cmp	%i2, %i5
	be,pn	%xcc, .L260
	 add	%i1, %i3, %i1
.L262:
	mov	%i1, %o1
	mov	%l0, %o0
	call	%i4, 0
	 mov	%i1, %i0
	cmp	%o0, 0
	bne,a,pt %icc, .L267
	 add	%i5, 1, %i5
	return	%i7+8
	 nop
.L260:
	return	%i7+8
	 mov	0, %o0
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
	mov	0, %g3
	ba,pt	%xcc, .L286
	 ldub	[%o0], %g2
.L287:
	mov	0, %g3
	add	%o0, 1, %o0
.L286:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g4
	xor	%g1, 32, %g1
	cmp	%g4, 4
	movleu	%icc, 1, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L287
	 ldub	[%o0+1], %g2
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be,pn	%icc, .L272
	 mov	0, %g5
	cmp	%g2, 45
	be,a,pt	%icc, .L288
	 mov	1, %g5
.L273:
	ldsb	[%o0], %g2
	mov	0, %g1
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L275
	 ldub	[%o0], %g3
.L274:
	ldsb	[%o0+1], %g4
	sll	%g1, 2, %g2
	add	%g3, -48, %g3
	add	%g2, %g1, %g2
	add	%o0, 1, %o0
	sll	%g3, 24, %g1
	add	%g2, %g2, %g2
	ldub	[%o0], %g3
	sra	%g1, 24, %g1
	add	%g4, -48, %g4
	cmp	%g4, 9
	bleu,pt	%icc, .L274
	 sub	%g2, %g1, %g1
.L275:
	sub	%g0, %g1, %g2
	cmp	%g5, 0
	move	%icc, %g2, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L288:
.L272:
	ba,pt	%xcc, .L273
	 add	%o0, 1, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	mov	0, %g3
	ba,pt	%xcc, .L306
	 ldub	[%o0], %g2
.L307:
	mov	0, %g3
	add	%o0, 1, %o0
.L306:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g4
	xor	%g1, 32, %g1
	cmp	%g4, 4
	movleu	%icc, 1, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L307
	 ldub	[%o0+1], %g2
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be,pn	%icc, .L292
	 mov	0, %g5
	cmp	%g2, 45
	be,a,pt	%icc, .L308
	 mov	1, %g5
.L293:
	ldsb	[%o0], %g2
	mov	0, %g1
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L295
	 ldub	[%o0], %g3
.L294:
	ldsb	[%o0+1], %g4
	sllx	%g1, 2, %g2
	add	%g3, -48, %g3
	add	%g2, %g1, %g2
	add	%o0, 1, %o0
	sllx	%g3, 56, %g1
	add	%g2, %g2, %g2
	ldub	[%o0], %g3
	srax	%g1, 56, %g1
	add	%g4, -48, %g4
	cmp	%g4, 9
	bleu,pt	%icc, .L294
	 sub	%g2, %g1, %g1
.L295:
	sub	%g0, %g1, %g2
	cmp	%g5, 0
	move	%icc, %g2, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L308:
.L292:
	ba,pt	%xcc, .L293
	 add	%o0, 1, %o0
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	or	%o7, %g0, %g1
	call	atol, 0
	 or	%g1, %g0, %o7
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L320:
	brz,pn	%i2, .L322
	 mov	0, %i5
.L321:
	srlx	%i2, 1, %l0
	mov	%i0, %o0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,a,pn	%icc, .L320
	 mov	%l0, %i2
	ble,pn	%icc, .L310
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	brnz,pt	%i2, .L321
	 add	%i5, %i3, %i1
	mov	0, %i5
.L310:
.L322:
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
	be,pn	%icc, .L329
	 mov	0, %i2
	sra	%l0, 1, %i2
.L330:
	mov	%i2, %l1
	mov	%i5, %o2
	mov	%i0, %o0
	mulx	%i2, %i3, %i2
	add	%i1, %i2, %i2
	call	%i4, 0
	 mov	%i2, %o1
	cmp	%o0, 0
	be,pn	%icc, .L323
	 nop
	ble,pn	%icc, .L326
	 add	%l0, -1, %l0
	add	%i2, %i3, %i1
	sra	%l0, 1, %l1
.L326:
	orcc	%l1, 0, %l0
	bne,pt	%icc, .L330
	 sra	%l0, 1, %i2
	mov	0, %i2
.L323:
.L329:
	return	%i7+8
	 mov	%o2, %o0
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	add	%sp, -160, %sp
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	st	%g1, [%sp+2199]
	sub	%o0, %o1, %o0
	st	%o0, [%sp+2203]
	ldx	[%sp+2199], %o0
	jmp	%o7+8
	 add	%sp, 160, %sp
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
	ba,pt	%xcc, .L346
	 lduw	[%o0], %g1
.L347:
	add	%o0, 4, %o0
.L346:
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L347
	 lduw	[%o0+4], %g1
	cmp	%g1, 0
	jmp	%o7+8
	 move	%icc, 0, %o0
	.size	wcschr, .-wcschr
	.align 4
	.align 32
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	lduw	[%o0], %g4
	lduw	[%o1], %g3
	cmp	%g0, %g4
	xor	%g4, %g3, %g2
	addx	%g0, 0, %g1
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	and	%g1, %g2, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	be,pn	%icc, .L357
	 cmp	%g4, %g3
	mov	4, %g1
.L350:
	lduw	[%o0+%g1], %g4
	lduw	[%o1+%g1], %g3
	cmp	%g0, %g4
	xor	%g4, %g3, %g5
	addx	%g0, 0, %g2
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	and	%g2, %g5, %g2
	cmp	%g0, %g3
	addx	%g0, 0, %g5
	andcc	%g2, %g5, %g0
	bne,pt	%icc, .L350
	 add	%g1, 4, %g1
	cmp	%g4, %g3
.L357:
	bl,pt	%icc, .L351
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L351:
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
.L359:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L359
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
	be,pn	%icc, .L362
	 mov	%o0, %g1
.L363:
	lduw	[%g1+4], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L363
	 add	%g1, 4, %g1
.L362:
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	brz,a,pn %o2, .L382
	 mov	0, %o0
.L381:
	lduw	[%o0], %g3
	lduw	[%o1], %g2
	cmp	%g0, %g3
	xor	%g3, %g2, %g4
	addx	%g0, 0, %g1
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	and	%g1, %g4, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g1, %g4, %g0
	be,pn	%icc, .L380
	 add	%o0, 4, %o0
	add	%o2, -1, %o2
	brnz,pt	%o2, .L381
	 add	%o1, 4, %o1
	mov	0, %o0
.L370:
.L382:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L380:
	brz,a,pt %o2, .L382
	 mov	0, %o0
	cmp	%g3, %g2
	bl,pt	%icc, .L370
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L389
	 nop
.L395:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L394
	 nop
	add	%o2, -1, %o2
	brnz,pt	%o2, .L395
	 add	%o0, 4, %o0
.L389:
	jmp	%o7+8
	 mov	0, %o0
.L394:
	brz,pn	%o2, .L389
	 nop
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	brz,a,pn %o2, .L412
	 mov	0, %o0
.L411:
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L410
	 add	%o0, 4, %o0
	add	%o2, -1, %o2
	brnz,pt	%o2, .L411
	 add	%o1, 4, %o1
	mov	0, %o0
.L412:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L410:
	brz,a,pt %o2, .L412
	 mov	0, %o0
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	movge	%icc, %g1, %o0
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
	brz,pn	%i2, .L418
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L418:
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
	be,pn	%xcc, .L434
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	bgeu,pt	%xcc, .L431
	 add	%o2, -1, %g1
	brz,pn	%o2, .L434
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L433:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L433
	 lduw	[%o1+%g1], %g2
.L435:
	jmp	%o7+8
	 nop
.L431:
	brz,pn	%o2, .L435
	 mov	0, %g2
.L422:
	lduw	[%o1+%g2], %g3
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g3, [%o0+%g2]
	bne,pt	%xcc, .L422
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L434:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	brz,pn	%o2, .L443
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L438:
	add	%g1, -1, %g1
	st	%o1, [%g2]
	cmp	%g1, -1
	bne,pt	%xcc, .L438
	 add	%g2, 4, %g2
.L443:
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
	bgeu,pt	%xcc, .L445
	 nop
	brz,pn	%o2, .L459
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L457:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L457
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L445:
	be,pn	%xcc, .L459
	 nop
	brz,pn	%o2, .L459
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L458:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L458
	 ldub	[%o0+%g1], %g2
.L459:
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
	sethi	%hi(16711680), %g2
	sll	%o0, 8, %g1
	and	%o0, %g2, %g3
	sll	%o0, 24, %g4
	and	%g1, %g2, %g1
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
	mov	255, %g2
	sllx	%o0, 56, %g1
	srlx	%o0, 56, %g4
	srlx	%o0, 40, %g3
	or	%g1, %g4, %g1
	sllx	%g2, 8, %g5
	srlx	%o0, 24, %g4
	and	%g3, %g5, %g3
	or	%g1, %g3, %g1
	sethi	%hi(16711680), %g3
	and	%g4, %g3, %g4
	srlx	%o0, 8, %g3
	or	%g1, %g4, %g1
	sllx	%o0, 8, %g4
	sethi	%hi(4278190080), %g5
	and	%g3, %g5, %g3
	sllx	%g2, 32, %g5
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	and	%g4, %g5, %g4
	sllx	%g2, 40, %g5
	or	%g1, %g4, %g1
	sllx	%o0, 40, %o0
	and	%g3, %g5, %g3
	sllx	%g2, 48, %g2
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
	ba,pt	%xcc, .L477
	 mov	0, %g1
.L480:
	cmp	%g1, 32
	be,a,pn	%icc, .L479
	 mov	0, %g1
.L477:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L480
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L479:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L482
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L482
	 nop
	mov	1, %g2
.L483:
	sra	%o0, 1, %g1
	add	%g2, 1, %g2
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L483
	 sra	%g1, 0, %o0
.L482:
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
	fbl,pt	%fcc2, .L489
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L489:
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
	fbl,pt	%fcc0, .L492
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L492:
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
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	std	%f0, [%fp+2031]
	std	%f2, [%fp+2039]
	std	%f0, [%fp+1967]
	std	%f2, [%fp+1975]
	sethi	%hi(.LC8), %g1
	ldx	[%g1+%lo(.LC8)], %g2
	ldx	[%g1+%lo(.LC8+8)], %g3
	stx	%g2, [%fp+2015]
	call	_Qp_flt, 0
	 stx	%g3, [%fp+2023]
	brnz,pt	%o0, .L495
	 mov	1, %i0
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldd	[%fp+1967], %f0
	ldd	[%fp+1975], %f2
	std	%f0, [%fp+1999]
	std	%f2, [%fp+2007]
	sethi	%hi(.LC9), %g1
	ldx	[%g1+%lo(.LC9)], %g2
	ldx	[%g1+%lo(.LC9+8)], %g3
	stx	%g2, [%fp+1983]
	call	_Qp_fgt, 0
	 stx	%g3, [%fp+1991]
	mov	0, %i0
	movrne	%o0, 1, %i0
.L495:
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
	ld	[%fp+2043], %f8
	fitod	%f8, %f2
	call	_Qp_dtoq, 0
	 mov	%i0, %o0
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
	fbu,pn	%fcc2, .L499
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L499
	 nop
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	fmovsl	%icc, %f9, %f8
.L502:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L501
	 fmuls	%f1, %f8, %f1
.L501:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L499
	 nop
	ba,pt	%xcc, .L502
	 fmuls	%f8, %f8, %f8
.L499:
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
	fbu,pn	%fcc0, .L522
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L522
	 nop
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	fmovdl	%icc, %f10, %f8
.L514:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L513
	 fmuld	%f0, %f8, %f0
.L513:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L522
	 nop
	ba,pt	%xcc, .L514
	 fmuld	%f8, %f8, %f8
.L522:
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
	std	%f2, [%fp+1735]
	add	%fp, 2015, %o1
	add	%fp, 2031, %o0
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	call	_Qp_cmp, 0
	 stx	%g3, [%fp+2023]
	cmp	%o0, 3
	be,pn	%xcc, .L524
	 add	%fp, 1967, %o2
	add	%fp, 1983, %o1
	add	%fp, 1999, %o0
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	stx	%g2, [%fp+1967]
	call	_Qp_add, 0
	 stx	%g3, [%fp+1975]
	add	%fp, 1935, %o1
	add	%fp, 1951, %o0
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+1935]
	call	_Qp_feq, 0
	 stx	%g3, [%fp+1943]
	brnz,pt	%o0, .L539
	 ldd	[%fp+1727], %f0
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	cmp	%i2, 0
	bl,pn	%icc, .L538
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L527:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L540
	 srl	%i2, 31, %g1
	add	%fp, 1839, %o2
	add	%fp, 1855, %o1
	add	%fp, 1871, %o0
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
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
.L540:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L524
	 add	%fp, 1743, %o2
	add	%fp, 1759, %o1
	add	%fp, 1775, %o0
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	call	_Qp_mul, 0
	 stx	%i5, [%fp+1751]
	ldx	[%fp+1775], %i4
	ba,pt	%xcc, .L527
	 ldx	[%fp+1783], %i5
.L524:
	ldd	[%fp+1727], %f0
.L539:
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
.L538:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L527
	 ldx	[%g1+%lo(.LC21+8)], %i5
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L549
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L548:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a,pt %xcc, .L548
	 ldub	[%o0+%g1], %g2
.L549:
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
	be,pn	%icc, .L564
	 mov	%o0, %g1
.L552:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L552
	 add	%g1, 1, %g1
.L564:
	brz,a,pn %o2, .L567
	 stb	%g0, [%g1]
.L566:
	ldub	[%o1], %g2
	sll	%g2, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L565
	 stb	%g2, [%g1]
	add	%o2, -1, %o2
	add	%o1, 1, %o1
	brnz,pt	%o2, .L566
	 add	%g1, 1, %g1
	stb	%g0, [%g1]
.L567:
	jmp	%o7+8
	 nop
.L565:
	brnz,pt	%o2, .L567
	 nop
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L568
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L575:
	cmp	%g2, 0
	bne,a,pn %icc, .L571
	 add	%g1, 1, %g1
.L568:
	jmp	%o7+8
	 mov	%g1, %o0
.L571:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L575
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L568
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
	be,a,pn	%icc, .L583
	 mov	0, %o0
.L577:
	sra	%g3, 24, %g3
	ba,pt	%xcc, .L580
	 mov	%o1, %g1
.L579:
	be,pn	%icc, .L583
	 add	%g1, 1, %g1
.L580:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L579
	 cmp	%g2, %g3
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L577
	 add	%o0, 1, %o0
	mov	0, %o0
.L583:
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
.L586:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L586
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
	be,pn	%icc, .L590
	 mov	%o1, %g1
.L591:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L591
	 add	%g1, 1, %g1
.L590:
	sub	%g1, %o1, %g1
	brz,pn	%g1, .L614
	 nop
	sra	%o3, 24, %o3
	add	%o1, -1, %o2
	ba,pt	%xcc, .L598
	 add	%o2, %g1, %o2
.L612:
	cmp	%g2, 0
	be,pn	%icc, .L611
	 add	%o0, 1, %o0
.L598:
	ldsb	[%o0], %g2
	cmp	%g2, %o3
	bne,pt	%icc, .L612
	 ldub	[%o0], %g1
	brz,pn	%o0, .L614
	 nop
	mov	%o1, %g2
	andcc	%g1, 0xff, %g1
	bne,pt	%icc, .L594
	 mov	%o0, %o5
	ba,pt	%xcc, .L613
	 ldub	[%g2], %g2
.L596:
	add	%o5, 1, %o5
	cmp	%g1, 0
	be,pn	%icc, .L595
	 add	%g2, 1, %g2
.L594:
	ldub	[%g2], %g5
	xor	%g2, %o2, %g4
	mov	0, %g3
	movrne	%g4, 1, %g3
	xor	%g5, %g1, %o4
	cmp	%g0, %g5
	addx	%g0, 0, %g4
	cmp	%g0, %o4
	subx	%g0, -1, %g5
	and	%g4, %g5, %g4
	andcc	%g4, %g3, %g0
	bne,a,pt %icc, .L596
	 ldub	[%o5+1], %g1
.L595:
	ldub	[%g2], %g2
.L613:
	cmp	%g2, %g1
	be,pn	%icc, .L614
	 nop
	ba,pt	%xcc, .L598
	 add	%o0, 1, %o0
.L611:
	jmp	%o7+8
	 mov	0, %o0
.L614:
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
	fbl,a,pn %fcc2, .L624
	 fcmped	%fcc3, %f2, %f8
.L616:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L625
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L618
	 nop
.L625:
	jmp	%o7+8
	 nop
.L624:
	fbule,pt %fcc3, .L616
	 nop
.L618:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L652
	 mov	%o0, %o5
	cmp	%o1, %o3
	blu,a,pn %xcc, .L652
	 mov	0, %o0
	sub	%o1, %o3, %o4
	add	%o0, %o4, %o4
	cmp	%o0, %o4
	bgu,pn	%xcc, .L652
	 mov	0, %o0
	ldsb	[%o2], %o1
	mov	%o5, %o0
.L653:
	add	%o5, 1, %o5
	ldub	[%o5-1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o1
	be,pn	%icc, .L649
	 cmp	%o5, %o4
	bleu,a,pt %xcc, .L653
	 mov	%o5, %o0
	jmp	%o7+8
	 mov	0, %o0
.L649:
	add	%o3, -1, %g1
	brz,pn	%g1, .L652
	 add	%o2, 1, %g2
	ba,pt	%xcc, .L629
	 mov	%o5, %g3
.L631:
	add	%g3, 1, %g3
	brz,pn	%g1, .L652
	 add	%g2, 1, %g2
.L629:
	ldub	[%g3], %g5
	ldub	[%g2], %g4
	cmp	%g5, %g4
	be,a,pt	%icc, .L631
	 add	%g1, -1, %g1
	brz,pt	%g1, .L652
	 nop
	be,pn	%icc, .L652
	 nop
	cmp	%o5, %o4
	bleu,a,pt %xcc, .L653
	 mov	%o5, %o0
	jmp	%o7+8
	 mov	0, %o0
.L652:
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
	brz,pn	%i2, .L655
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L655:
	return	%i7+8
	 add	%o0, %o2, %o0
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC24:
	.long	1072693248
	.long	0
	.align 8
.LC25:
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
	fbl,pn	%fcc2, .L681
	 mov	0, %g2
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	mov	0, %g1
	fcmped	%fcc3, %f0, %f8
	sethi	%hi(.LC25), %g3
	fbul,pn	%fcc3, .L683
	 ldd	[%g3+%lo(.LC25)], %f10
.L664:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L664
	 add	%g1, 1, %g1
.L665:
	fnegd	%f0, %f8
.L682:
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L681:
	fnegd	%f0, %f0
	mov	1, %g2
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	mov	0, %g1
	fcmped	%fcc3, %f0, %f8
	sethi	%hi(.LC25), %g3
	fbge,pt	%fcc3, .L664
	 ldd	[%g3+%lo(.LC25)], %f10
	sethi	%hi(.LC25), %g3
.L683:
	ldd	[%g3+%lo(.LC25)], %f8
	mov	0, %g4
	fcmped	%fcc2, %f0, %f8
	mov	0, %g3
	fzero	%f10
	fcmpd	%fcc1, %f0, %f10
	movne	%fcc1, 1, %g4
	movl	%fcc2, 1, %g3
	andcc	%g4, %g3, %g0
	be,a,pt	%icc, .L682
	 fnegd	%f0, %f8
.L666:
	faddd	%f0, %f0, %f0
	fcmped	%fcc3, %f0, %f8
	fbuge,pn %fcc3, .L665
	 add	%g1, -1, %g1
	faddd	%f0, %f0, %f0
	fcmped	%fcc3, %f0, %f8
	fbl,pt	%fcc3, .L666
	 add	%g1, -1, %g1
	ba,pt	%xcc, .L682
	 fnegd	%f0, %f8
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g2
	brz,pn	%g2, .L690
	 mov	0, %o0
.L686:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L686
	 add	%o0, %g1, %o0
.L690:
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
	bgeu,pn	%icc, .L700
	 mov	1, %g1
	cmp	%o1, 0
.L706:
	bl,pn	%icc, .L705
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	add	%g1, %g1, %g1
	srl	%g2, 0, %o1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L706
	 cmp	%o1, 0
	cmp	%g1, 0
.L705:
	be,pn	%icc, .L695
	 mov	0, %g2
.L700:
	mov	0, %g2
.L694:
	cmp	%o0, %o1
	blu,a,pt %icc, .L707
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srl	%o0, 0, %o0
	srl	%g1, 1, %g1
.L707:
	cmp	%g1, 0
	bne,pt	%icc, .L694
	 srlx	%o1, 1, %o1
.L695:
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
	mov	7, %o0
	sra	%i0, 7, %g2
	cmp	%g2, %i0
	be,pn	%icc, .L709
	 xor	%g2, %i0, %g1
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L709:
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
	mov	63, %g1
	srax	%i0, 63, %g2
	cmp	%i0, %g2
	be,pn	%xcc, .L712
	 xor	%i0, %g2, %o0
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L712:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L715
	 mov	0, %g2
.L716:
	and	%o0, 1, %g1
	add	%o1, %o1, %g3
	srlx	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g3, 0, %o1
	brnz,pt	%o0, .L716
	 add	%g2, %g1, %g2
.L715:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	and	%o2, -8, %g1
	cmp	%o0, %o1
	blu,pt	%xcc, .L720
	 srl	%o2, 3, %g4
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L734
	 add	%o2, -1, %g1
.L720:
	cmp	%g4, 0
	be,pn	%icc, .L736
	 cmp	%g1, %o2
	mov	0, %g2
	sllx	%g4, 3, %g4
	ldx	[%o1+%g2], %g3
.L737:
	stx	%g3, [%o0+%g2]
	add	%g2, 8, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L737
	 ldx	[%o1+%g2], %g3
	cmp	%g1, %o2
.L736:
	bgeu,pn	%icc, .L740
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L738:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L738
	 ldub	[%o1+%g1], %g2
.L741:
	jmp	%o7+8
	 nop
.L734:
	brz,pn	%o2, .L741
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L739:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L739
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L740:
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
	blu,pt	%xcc, .L743
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L758
	 add	%o2, -1, %g1
.L743:
	cmp	%g3, 0
	be,pn	%icc, .L760
	 andcc	%o2, 1, %g0
	mov	0, %g1
	add	%g3, %g3, %g3
	lduh	[%o1+%g1], %g2
.L761:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L761
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L760:
	be,pt	%xcc, .L763
	 nop
	add	%o2, -1, %o2
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L758:
	brz,pn	%o2, .L764
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L762:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L762
	 ldub	[%o1+%g1], %g2
.L764:
	jmp	%o7+8
	 nop
.L763:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	and	%o2, -4, %g1
	cmp	%o0, %o1
	blu,pt	%xcc, .L766
	 srl	%o2, 2, %g4
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L780
	 add	%o2, -1, %g1
.L766:
	cmp	%g4, 0
	be,pn	%icc, .L782
	 cmp	%g1, %o2
	mov	0, %g2
	sllx	%g4, 2, %g4
	lduw	[%o1+%g2], %g3
.L783:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L783
	 lduw	[%o1+%g2], %g3
	cmp	%g1, %o2
.L782:
	bgeu,pn	%icc, .L786
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L784:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L784
	 ldub	[%o1+%g1], %g2
.L787:
	jmp	%o7+8
	 nop
.L780:
	brz,pn	%o2, .L787
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L785:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L785
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L786:
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
	brlz,pn	%o0, .L796
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L796:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	faddd	%f0, %f0, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	.size	__ulltod, .-__ulltod
	.align 4
	.align 32
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L799
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L799:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	fadds	%f0, %f0, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
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
	mov	0, %g1
	mov	15, %g3
	sub	%g3, %g1, %g2
.L806:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L803
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L806
	 sub	%g3, %g1, %g2
.L803:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	mov	0, %g1
	sra	%o0, %g1, %g2
.L811:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L808
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L811
	 sra	%o0, %g1, %g2
.L808:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC28:
	.long	1191182336
	.section	".text"
	.align 4
	.align 32
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	05
__fixunssfsi:
	add	%sp, -144, %sp
	sethi	%hi(.LC28), %g1
	ld	[%g1+%lo(.LC28)], %f8
	fcmpes	%fcc0, %f1, %f8
	fbge,a,pn %fcc0, .L818
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L818:
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	sethi	%hi(32768), %g1
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
	mov	0, %g3
	mov	0, %g1
.L820:
	sra	%o0, %g1, %g2
	add	%g1, 1, %g1
	and	%g2, 1, %g2
	cmp	%g1, 16
	bne,pt	%icc, .L820
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.align 32
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	mov	0, %g3
	mov	0, %g1
.L823:
	sra	%o0, %g1, %g2
	add	%g1, 1, %g1
	and	%g2, 1, %g2
	cmp	%g1, 16
	bne,pt	%icc, .L823
	 add	%g3, %g2, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	brz,pn	%o0, .L826
	 mov	0, %g2
.L827:
	and	%o0, 1, %g1
	srl	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%g2, %g1, %g2
	bne,pt	%icc, .L827
	 add	%o1, %o1, %o1
.L826:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L831
	 mov	0, %g2
	brz,pn	%o1, .L831
	 nop
.L832:
	and	%o1, 1, %g1
	add	%o0, %o0, %g3
	srlx	%o1, 1, %o1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srl	%g3, 0, %o0
	brnz,pt	%o1, .L832
	 add	%g2, %g1, %g2
.L831:
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
	bgeu,pn	%icc, .L847
	 mov	1, %g1
	cmp	%o1, 0
.L853:
	bl,pn	%icc, .L852
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	add	%g1, %g1, %g1
	srl	%g2, 0, %o1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L853
	 cmp	%o1, 0
	cmp	%g1, 0
.L852:
	be,pn	%icc, .L842
	 mov	0, %g2
.L847:
	mov	0, %g2
.L841:
	cmp	%o0, %o1
	blu,a,pt %icc, .L854
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srl	%o0, 0, %o0
	srl	%g1, 1, %g1
.L854:
	cmp	%g1, 0
	bne,pt	%icc, .L841
	 srlx	%o1, 1, %o1
.L842:
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
	fcmpes	%fcc1, %f1, %f3
	fbl,pn	%fcc1, .L856
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L856:
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
	fbl,pn	%fcc3, .L859
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L859:
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
	bl,pn	%icc, .L873
	 mov	0, %o4
	brz,pn	%o1, .L875
	 mov	0, %g4
.L874:
	mov	1, %g2
	mov	0, %g4
.L866:
	sra	%o1, 1, %g3
	and	%g2, 0xff, %g5
	and	%o1, 1, %o1
	cmp	%g0, %g3
	addx	%g0, 0, %o5
	mov	0, %g1
	cmp	%g5, 31
	movleu	%icc, 1, %g1
	sub	%g0, %o1, %o1
	add	%o0, %o0, %g5
	and	%o1, %o0, %o1
	add	%g2, 1, %g2
	add	%g4, %o1, %g4
	andcc	%o5, %g1, %g0
	sra	%g5, 0, %o0
	bne,pt	%icc, .L866
	 sra	%g3, 0, %o1
	sub	%g0, %g4, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g4
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L873:
	sub	%g0, %o1, %o1
	sra	%o1, 0, %o1
	brnz,pt	%o1, .L874
	 mov	1, %o4
	mov	0, %g4
.L875:
	sub	%g0, %g4, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g4
	jmp	%o7+8
	 sra	%g4, 0, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	brlz,pn	%o0, .L894
	 mov	0, %o5
.L877:
	brgez,pt %o1, .L895
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	xor	%o5, 1, %o5
.L895:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L888
	 mov	1, %g2
	cmp	%g1, 0
.L897:
	bl,pn	%icc, .L896
	 cmp	%g2, 0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L897
	 cmp	%g1, 0
	cmp	%g2, 0
.L896:
	be,pn	%icc, .L882
	 mov	0, %o0
.L888:
	mov	0, %o0
.L881:
	cmp	%g3, %g1
	blu,a,pt %icc, .L898
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L898:
	cmp	%g2, 0
	bne,pt	%icc, .L881
	 srl	%g1, 1, %g1
.L882:
	srl	%o0, 0, %o0
	cmp	%o5, 0
	sub	%g0, %o0, %g1
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L894:
	sub	%g0, %o0, %o0
	ba,pt	%xcc, .L877
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L900
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L900:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu,pn	%icc, .L912
	 mov	%o1, %g1
	cmp	%g1, 0
.L919:
	bl,pn	%icc, .L918
	 cmp	%g2, 0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L919
	 cmp	%g1, 0
	cmp	%g2, 0
.L918:
	be,pn	%icc, .L920
	 srl	%g3, 0, %o0
.L912:
	sub	%g3, %g1, %g4
	cmp	%g3, %g1
	srl	%g2, 1, %g2
	movgeu	%icc, %g4, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L912
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L920:
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
	blu,pt	%icc, .L922
	 mov	1, %g1
	ba,pt	%xcc, .L937
	 sll	%g1, 16, %g2
.L926:
	add	%g1, %g1, %g2
	srlx	%o1, 48, %o1
	mov	%g2, %g1
	sll	%g2, 16, %g2
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L938
	 sll	%g1, 16, %g2
.L922:
	sll	%o1, 16, %g2
	cmp	%g2, 0
	bge,a,pt %icc, .L926
	 sllx	%o1, 49, %o1
	sll	%g1, 16, %g2
.L937:
.L938:
	cmp	%g2, 0
	be,pn	%icc, .L936
	 mov	0, %g3
.L924:
	cmp	%o0, %o1
	blu,pt	%icc, .L939
	 srl	%g2, 17, %g2
	sub	%o0, %o1, %o0
	or	%g1, %g3, %g3
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
.L939:
	mov	%g2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L925
	 srlx	%o1, 1, %o1
	ba,pt	%xcc, .L924
	 sll	%g1, 16, %g2
.L936:
	mov	%g1, %g3
.L925:
	mov	%o0, %g1
	movre	%o2, %g3, %g1
	mov	%g1, %g3
	sllx	%g3, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	cmp	%o1, %o0
	bgeu,pn	%xcc, .L949
	 sethi	%hi(2147483648), %g4
	and	%o1, %g4, %g2
.L954:
	brnz,pn	%g2, .L942
	 mov	0, %g3
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	bne,a,pt %icc, .L954
	 and	%o1, %g4, %g2
.L942:
	brz,pn	%g1, .L944
	 mov	0, %g2
.L949:
	mov	0, %g2
.L943:
	cmp	%o0, %o1
	blu,a,pt %xcc, .L955
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L955:
	brnz,pt	%g1, .L943
	 srlx	%o1, 1, %o1
.L944:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L957
	 sll	%o0, %o1, %g1
	mov	0, %o0
.L958:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L962:
	jmp	%o7+8
	 nop
.L957:
	brz,pn	%o1, .L962
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %g3, %g3
	sll	%g2, %o1, %g2
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L958
	 or	%g3, %g2, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L964
	 nop
	sllx	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L964:
	brz,pn	%o2, .L968
	 nop
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %g1
	srlx	%o1, %g1, %g1
	sllx	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L968:
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
	be,pt	%xcc, .L970
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L971:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L975:
	jmp	%o7+8
	 nop
.L970:
	brz,pn	%o1, .L975
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %o0
	ba,pt	%xcc, .L971
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L977
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L981:
	jmp	%o7+8
	 nop
.L977:
	brz,pn	%o2, .L981
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
	mov	255, %g2
	srlx	%o0, 56, %g1
	sllx	%o0, 56, %g4
	srlx	%o0, 40, %g3
	or	%g1, %g4, %g1
	sllx	%g2, 8, %g5
	srlx	%o0, 24, %g4
	and	%g3, %g5, %g3
	or	%g1, %g3, %g1
	sethi	%hi(16711680), %g3
	and	%g4, %g3, %g4
	srlx	%o0, 8, %g3
	or	%g1, %g4, %g1
	sllx	%o0, 8, %g4
	sethi	%hi(4278190080), %g5
	and	%g3, %g5, %g3
	sllx	%g2, 32, %g5
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	and	%g4, %g5, %g4
	sllx	%g2, 40, %g5
	or	%g1, %g4, %g1
	sllx	%o0, 40, %o0
	and	%g3, %g5, %g3
	sllx	%g2, 48, %g2
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
	srl	%o0, 24, %g1
	sll	%o0, 24, %g3
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
	or	%g1, 1023, %g3
	or	%g1, 768, %g2
	cmp	%g3, %o0
	subx	%g0, -1, %g3
	sll	%g3, 4, %g3
	mov	16, %g1
	sub	%g1, %g3, %g1
	srl	%o0, %g1, %g1
	mov	2, %o0
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g4
	sub	%g4, %g2, %g4
	add	%g2, %g3, %g3
	srl	%g1, %g4, %g1
	and	%g1, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g4
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
	movrne	%i0, -1, %g1
	mov	0, %i5
	movrne	%i0, %g0, %i1
	and	%g1, %i0, %g1
	or	%g1, %i1, %o0
	call	__clzdi2, 0
	 movre	%i0, 1, %i5
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
	bl,pn	%icc, .L987
	 mov	0, %g1
	bg,pn	%icc, .L987
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L987
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L987:
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
	bl,pn	%icc, .L993
	 mov	0, %g1
	bg,pn	%icc, .L993
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L993
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L993:
	add	%g1, -1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.align 32
	.global __cmpti2
	.type	__cmpti2, #function
	.proc	04
__cmpti2:
	cmp	%o0, %o2
	bl,pn	%xcc, .L999
	 mov	0, %g1
	bg,pn	%xcc, .L999
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L999
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L999:
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
	movrne	%i1, -1, %g1
	mov	0, %o0
	mov	0, %i5
	movre	%i1, %i0, %o0
	and	%g1, %i1, %g1
	or	%o0, %g1, %o0
	call	__ctzdi2, 0
	 movre	%i1, 1, %i5
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
	brnz,pt	%i1, .L1007
	 nop
	brnz,pt	%i0, .L1011
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1007:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1011:
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
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1013
	 mov	%o0, %g1
	srlx	%o0, 32, %g1
	mov	0, %o0
	srl	%g1, %o1, %g1
.L1014:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1018:
	jmp	%o7+8
	 nop
.L1013:
	brz,pn	%o1, .L1018
	 nop
	srlx	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	srl	%o0, %o1, %o0
	ba,pt	%xcc, .L1014
	 or	%g2, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1020
	 nop
	srlx	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1020:
	brz,pn	%o2, .L1024
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1024:
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
	smul	%g3, %g1, %o5
	srl	%o0, 16, %g4
	and	%o5, %g5, %g2
	srl	%o5, 16, %o5
	smul	%g1, %g4, %g1
	srl	%o1, 16, %o1
	add	%g1, %o5, %g1
	sll	%g1, 16, %o5
	srl	%o5, 16, %o4
	add	%g2, %o5, %o0
	smul	%g3, %o1, %g3
	add	%g3, %o4, %g3
	and	%o0, %g5, %o0
	srl	%g1, 16, %g1
	smul	%g4, %o1, %g4
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
	sethi	%hi(64512), %g4
	or	%g4, 1023, %g4
	and	%g4, %o0, %g3
	and	%g4, %o1, %g1
	smul	%g3, %g1, %o5
	srl	%o0, 16, %g5
	and	%o5, %g4, %g2
	srl	%o5, 16, %o5
	smul	%g1, %g5, %g1
	srl	%o1, 16, %o4
	add	%g1, %o5, %g1
	sll	%g1, 16, %o5
	srl	%o5, 16, %o3
	add	%g2, %o5, %g2
	smul	%g3, %o4, %g3
	add	%g3, %o3, %g3
	and	%g2, %g4, %g2
	srl	%g1, 16, %g1
	smul	%g5, %o4, %g5
	sll	%g3, 16, %g4
	add	%g1, %g5, %g1
	srl	%g3, 16, %g3
	add	%g2, %g4, %g2
	mov	-1, %g4
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
	srlx	%g2, 32, %g3
	umul	%o1, %g4, %g1
	mov	-1, %o5
	srlx	%o5, 32, %o5
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g3
	and	%g2, %o5, %g2
	srlx	%o1, 32, %o1
	add	%g2, %g3, %g2
	srlx	%g3, 32, %g5
	and	%g2, %o5, %o5
	umul	%o0, %o1, %o0
	srlx	%g1, 32, %g2
	add	%o0, %g5, %g1
	umul	%g4, %o1, %g4
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
	srlx	%g2, 32, %g3
	umul	%i3, %g5, %g1
	srlx	%i3, 32, %i4
	add	%g1, %g3, %g1
	sllx	%g1, 32, %i5
	srlx	%i5, 32, %o7
	umul	%i1, %i4, %g3
	mov	-1, %g4
	srlx	%g4, 32, %g4
	add	%g3, %o7, %g3
	srlx	%g1, 32, %g1
	and	%g2, %g4, %g2
	umul	%g5, %i4, %g5
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
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o0
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
	srax	%o1, 32, %g1
	xor	%g1, %o1, %o1
	srl	%o1, 16, %g1
	xor	%g1, %o1, %g1
	srl	%g1, 8, %g2
	xor	%g2, %g1, %g2
	srl	%g2, 4, %g1
	xor	%g1, %g2, %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o0
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
	and	%g1, 15, %g1
	sethi	%hi(26624), %o0
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
	or	%g1, 341, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(858992640), %g4
	or	%g4, 819, %g4
	srlx	%o0, 1, %g2
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	sub	%o0, %g1, %o0
	sethi	%hi(252644352), %g3
	or	%g3, 783, %g3
	sllx	%g4, 32, %g1
	srlx	%o0, 2, %g2
	add	%g1, %g4, %g1
	and	%g2, %g1, %g2
	and	%o0, %g1, %o0
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
	.align 4
	.align 32
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	sllx	%o0, 63, %g3
	mov	0, %g5
	srlx	%o1, 1, %g1
	sllx	%g2, 32, %g4
	or	%g3, %g1, %g1
	add	%g4, %g2, %g4
	sethi	%hi(858992640), %o4
	or	%o4, 819, %o4
	and	%g1, %g4, %g1
	mov	0, %g3
	sub	%o1, %g1, %g1
	mov	0, %g2
	srlx	%o0, 1, %o5
	cmp	%g1, %o1
	movgu	%xcc, 1, %g5
	and	%o5, %g4, %o5
	sub	%o0, %o5, %o0
	sethi	%hi(252644352), %o3
	or	%o3, 783, %o3
	srlx	%g1, 2, %g4
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
.LC30:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	fmovd	%f0, %f8
	sethi	%hi(.LC30), %g1
	ldd	[%g1+%lo(.LC30)], %f0
	mov	%o1, %g1
.L1040:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L1038
	 fmuld	%f0, %f8, %f0
.L1038:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1039
	 cmp	%o1, 0
	ba,pt	%xcc, .L1040
	 fmuld	%f8, %f8, %f8
.L1039:
	bl,a,pn	%icc, .L1045
	 sethi	%hi(.LC30), %g1
	jmp	%o7+8
	 nop
.L1045:
	ldd	[%g1+%lo(.LC30)], %f8
	jmp	%o7+8
	 fdivd	%f8, %f0, %f0
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC32:
	.long	1065353216
	.section	".text"
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	sethi	%hi(.LC32), %g1
	ld	[%g1+%lo(.LC32)], %f0
	mov	%o1, %g1
.L1049:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L1047
	 fmuls	%f0, %f1, %f0
.L1047:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1048
	 cmp	%o1, 0
	ba,pt	%xcc, .L1049
	 fmuls	%f1, %f1, %f1
.L1048:
	bl,a,pn	%icc, .L1054
	 sethi	%hi(.LC32), %g1
	jmp	%o7+8
	 nop
.L1054:
	ld	[%g1+%lo(.LC32)], %f8
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
	blu,pn	%icc, .L1056
	 mov	0, %g1
	bgu,pn	%icc, .L1056
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1056
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1056:
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
	blu,pn	%icc, .L1062
	 mov	0, %g1
	bgu,pn	%icc, .L1062
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1062
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1062:
	add	%g1, -1, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 4
	.align 32
	.global __ucmpti2
	.type	__ucmpti2, #function
	.proc	04
__ucmpti2:
	cmp	%o0, %o2
	blu,pn	%xcc, .L1068
	 mov	0, %g1
	bgu,pn	%xcc, .L1068
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1068
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1068:
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
