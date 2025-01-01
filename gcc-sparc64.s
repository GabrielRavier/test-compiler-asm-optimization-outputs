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
	add	%o1, 1, %o1
	brz,pn	%o3, .L26
	 add	%o0, 1, %o0
.L22:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne,a,pt %icc, .L24
	 add	%o3, -1, %o3
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
	and	%o1, 0xff, %o1
	add	%o2, -1, %o2
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
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be,pn	%icc, .L91
	 add	%o1, 1, %o1
.L90:
	add	%o0, 1, %o0
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L90
	 add	%o1, 1, %o1
.L91:
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
	bne,pt	%icc, .L93
	 ldub	[%o0], %g1
.L100:
	jmp	%o7+8
	 nop
.L95:
	ldsb	[%o0], %g2
	cmp	%g2, 0
	be,pn	%icc, .L100
	 ldub	[%o0], %g1
.L93:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L95
	 add	%o0, 1, %o0
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.align 32
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L103:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L105
	 cmp	%g1, 0
	bne,pt	%icc, .L103
	 add	%o0, 1, %o0
	mov	0, %o0
.L105:
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
	ldub	[%o0], %g4
	ldsb	[%o0], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	ldsb	[%o1], %g3
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%g2, %g1, %g0
	be,pn	%icc, .L107
	 ldub	[%o1], %g5
	mov	1, %g2
.L108:
	ldub	[%o0+%g2], %g4
	ldub	[%o1+%g2], %g5
	sll	%g4, 24, %g3
	cmp	%g0, %g3
	addx	%g0, 0, %o5
	sll	%g5, 24, %g1
	xor	%g1, %g3, %g1
	sra	%g1, 24, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	andcc	%o5, %g1, %g0
	bne,pt	%icc, .L108
	 add	%g2, 1, %g2
.L107:
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
	be,pn	%icc, .L114
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L118:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L118
	 add	%g1, 1, %g1
.L114:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L120
	 mov	0, %g4
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,a,pn	%icc, .L130
	 ldub	[%o1], %g1
	add	%o2, -1, %o2
	ba,pt	%xcc, .L122
	 add	%o1, %o2, %o2
.L123:
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,pn	%icc, .L121
	 add	%o1, 1, %o1
.L122:
	ldub	[%o1], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	xor	%g1, %g4, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g2, %g1, %g2
	xor	%o1, %o2, %g3
	mov	0, %g1
	movrne	%g3, 1, %g1
	andcc	%g2, %g1, %g0
	bne,a,pt %icc, .L123
	 add	%o0, 1, %o0
.L121:
	ldub	[%o1], %g1
.L130:
	sub	%g4, %g1, %g4
.L120:
	jmp	%o7+8
	 sra	%g4, 0, %o0
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L135
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L133:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne,pt	%xcc, .L133
	 add	%o1, 2, %o1
.L135:
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
	add	%o0, -97, %o0
	cmp	%o0, 25
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
	subx	%g0, -1, %g2
	xor	%o0, 9, %o0
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
	cmp	%o0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	xor	%o0, 127, %o0
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
	mov	0, %g1
	movleu	%icc, 1, %g1
	xor	%o0, 32, %o0
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
	mov	0, %g2
	movleu	%icc, 1, %g2
	cmp	%o0, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	orcc	%g2, %g1, %g0
	bne,pt	%icc, .L147
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L147
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%o0, %g1, %o0
	cmp	%o0, 2
	mov	0, %g3
	movleu	%icc, 1, %g3
.L147:
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
	bleu,pn	%icc, .L157
	 sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%o0, %g1, %g1
	sethi	%hi(46080), %g2
	or	%g2, 981, %g2
	cmp	%g2, %g1
	subx	%g0, -1, %g3
	sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g2
	orcc	%g3, %g2, %g0
	bne,pn	%icc, .L153
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L153
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%o0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L153
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	addx	%g0, 0, %g1
.L153:
	jmp	%o7+8
	 and	%g1, 1, %o0
.L157:
	add	%o0, 1, %o0
	and	%o0, 127, %o0
	cmp	%o0, 32
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
	add	%o0, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L159
	 mov	1, %g1
	or	%o0, 32, %o0
	add	%o0, -97, %o0
	cmp	%o0, 5
	mov	0, %g1
	movleu	%icc, 1, %g1
.L159:
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
	fbu,pn	%fcc0, .L170
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L166
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L169
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L169:
	fzero	%f0
.L170:
	jmp	%o7+8
	 nop
.L166:
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
	fbu,pn	%fcc3, .L174
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L175
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L178
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L178:
	jmp	%o7+8
	 fzeros	%f0
.L174:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L175:
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
	fbu,a,pn %fcc2, .L185
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L179
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L181
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L179:
.L185:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L181:
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
	fbu,pn	%fcc1, .L193
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L193
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L192
	 cmp	%g1, 0
	fcmpes	%fcc3, %f1, %f3
	fmovsl	%fcc3, %f3, %f1
	fmovs	%f1, %f0
.L186:
.L193:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L192:
	fmovsne	%icc, %f3, %f1
	fmovs	%f1, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	ba,pt	%xcc, .L186
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
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L197
	 ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_cmp, 0
	 add	%fp, 1999, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L198
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
	be,a,pt	%icc, .L196
	 ldx	[%fp+1935], %g2
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L196:
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1951, %o1
	call	_Qp_flt, 0
	 add	%fp, 1967, %o0
	ldd	[%fp+1935], %f0
	ldd	[%fp+1943], %f2
	ldd	[%fp+1919], %f8
	ldd	[%fp+1927], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L197:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L198:
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
	fbu,a,pn %fcc0, .L206
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L200
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L202
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L200:
	fmovd	%f2, %f0
.L206:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L202:
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
	fbu,pn	%fcc3, .L214
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L214
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L213
	 cmp	%g1, 0
	fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc1, %f1, %f3
	fmovs	%f3, %f0
.L207:
.L214:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L213:
	fmovsne	%icc, %f1, %f3
	fmovs	%f3, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
	ba,pt	%xcc, .L207
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
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	ldx	[%fp+1935], %g2
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L218
	 ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_cmp, 0
	 add	%fp, 1999, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L219
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
	be,a,pt	%icc, .L217
	 ldx	[%fp+1935], %g2
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L217:
	ldx	[%fp+1943], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	ldx	[%fp+1919], %g2
	ldx	[%fp+1927], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1951, %o1
	call	_Qp_flt, 0
	 add	%fp, 1967, %o0
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
	fmovrdne	%o0, %f8, %f0
	fmovrdne	%o0, %f10, %f2
	return	%i7+8
	 nop
.L218:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L219:
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
	or	%o0, %lo(s.0), %o0
	be,pn	%icc, .L222
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L223:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L223
	 add	%g2, 1, %g2
.L222:
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
	ldx	[%g3+%lo(seed)], %o0
	sethi	%hi(1481765888), %g1
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
	brz,a,pn %o1, .L234
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%g1, [%o0]
	stx	%o1, [%o0+8]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L236
	 stx	%o0, [%g1+8]
.L236:
	jmp	%o7+8
	 nop
.L234:
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
	brz,a,pn %g1, .L246
	 ldx	[%o0+8], %g1
	ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g1
.L246:
	brz,pn	%g1, .L247
	 nop
	ldx	[%o0], %g2
	stx	%g2, [%g1]
.L247:
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
	brz,pn	%l1, .L249
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L251
	 mov	0, %l0
.L260:
	cmp	%l1, %l0
	be,pn	%xcc, .L249
	 add	%i5, %i3, %i5
.L251:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L260
	 add	%l0, 1, %l0
.L262:
	return	%i7+8
	 nop
.L249:
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L262
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
	brz,pn	%i2, .L264
	 mov	%i0, %l0
	ba,pt	%xcc, .L266
	 mov	0, %i5
.L271:
	cmp	%i2, %i5
	be,pn	%xcc, .L264
	 add	%i1, %i3, %i1
.L266:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	bne,a,pt %icc, .L271
	 add	%i5, 1, %i5
	return	%i7+8
	 nop
.L264:
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
	ldub	[%o0], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 4
	mov	0, %g3
	movleu	%icc, 1, %g3
	xor	%g1, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	be,pn	%icc, .L293
	 sra	%g2, 24, %g2
	add	%o0, 1, %o0
.L294:
	ldub	[%o0], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 4
	mov	0, %g3
	movleu	%icc, 1, %g3
	xor	%g1, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L294
	 add	%o0, 1, %o0
	sra	%g2, 24, %g2
.L293:
	cmp	%g2, 43
	be,pn	%icc, .L276
	 mov	0, %g4
	cmp	%g2, 45
	be,a,pt	%icc, .L292
	 mov	1, %g4
.L277:
	ldub	[%o0], %g1
	ldsb	[%o0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L279
	 mov	0, %g3
.L278:
	sll	%g3, 2, %g2
	add	%g2, %g3, %g2
	add	%g2, %g2, %g2
	add	%o0, 1, %o0
	add	%g1, -48, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sub	%g2, %g1, %g3
	ldsb	[%o0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L278
	 ldub	[%o0], %g1
.L279:
	sub	%g0, %g3, %g1
	cmp	%g4, 0
	move	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
.L292:
.L276:
	ba,pt	%xcc, .L277
	 add	%o0, 1, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 4
	mov	0, %g3
	movleu	%icc, 1, %g3
	xor	%g1, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	be,pn	%icc, .L315
	 sra	%g2, 24, %g2
	add	%o0, 1, %o0
.L316:
	ldub	[%o0], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g3
	cmp	%g3, 4
	mov	0, %g3
	movleu	%icc, 1, %g3
	xor	%g1, 32, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L316
	 add	%o0, 1, %o0
	sra	%g2, 24, %g2
.L315:
	cmp	%g2, 43
	be,pn	%icc, .L298
	 mov	0, %g4
	cmp	%g2, 45
	be,a,pt	%icc, .L314
	 mov	1, %g4
.L299:
	ldub	[%o0], %g1
	ldsb	[%o0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L301
	 mov	0, %g3
.L300:
	sllx	%g3, 2, %g2
	add	%g2, %g3, %g2
	add	%g2, %g2, %g2
	add	%o0, 1, %o0
	add	%g1, -48, %g1
	sllx	%g1, 56, %g1
	srax	%g1, 56, %g1
	sub	%g2, %g1, %g3
	ldsb	[%o0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L300
	 ldub	[%o0], %g1
.L301:
	sub	%g0, %g3, %g1
	cmp	%g4, 0
	move	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L314:
.L298:
	ba,pt	%xcc, .L299
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
.L328:
	brz,pn	%i2, .L330
	 mov	0, %i5
.L329:
	srlx	%i2, 1, %l0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a,pn	%icc, .L328
	 mov	%l0, %i2
	ble,pn	%icc, .L318
	 nop
	add	%i2, -1, %i2
	sub	%i2, %l0, %i2
	brnz,pt	%i2, .L329
	 add	%i5, %i3, %i1
	mov	0, %i5
.L318:
.L330:
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
	be,pn	%icc, .L337
	 mov	0, %i2
	sra	%l0, 1, %i2
.L338:
	mov	%i2, %l1
	mulx	%i2, %i3, %i2
	add	%i1, %i2, %i2
	mov	%i5, %o2
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L331
	 nop
	ble,pn	%icc, .L334
	 add	%l0, -1, %l0
	add	%i2, %i3, %i1
	sra	%l0, 1, %l1
.L334:
	orcc	%l1, 0, %l0
	bne,pt	%icc, .L338
	 sra	%l0, 1, %i2
	mov	0, %i2
.L331:
.L337:
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
	st	%g1, [%sp+2199]
	smul	%g1, %o1, %g1
	sub	%o0, %g1, %o0
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
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L356
	 cmp	%g1, 0
	add	%o0, 4, %o0
.L357:
	lduw	[%o0], %g1
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L357
	 add	%o0, 4, %o0
	cmp	%g1, 0
.L356:
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
	addx	%g0, 0, %g1
	xor	%g4, %g3, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	and	%g1, %g2, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	be,pn	%icc, .L367
	 cmp	%g4, %g3
	mov	4, %g1
.L360:
	lduw	[%o0+%g1], %g4
	lduw	[%o1+%g1], %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	xor	%g4, %g3, %g5
	cmp	%g0, %g5
	subx	%g0, -1, %g5
	and	%g2, %g5, %g2
	cmp	%g0, %g3
	addx	%g0, 0, %g5
	andcc	%g2, %g5, %g0
	bne,pt	%icc, .L360
	 add	%g1, 4, %g1
	cmp	%g4, %g3
.L367:
	bl,pt	%icc, .L361
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L361:
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
.L369:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L369
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
	be,pn	%icc, .L372
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L376:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L376
	 add	%g1, 4, %g1
.L372:
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
	brz,a,pn %o2, .L393
	 mov	0, %o0
.L392:
	lduw	[%o0], %g3
	lduw	[%o1], %g2
	cmp	%g0, %g3
	addx	%g0, 0, %g1
	xor	%g3, %g2, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	and	%g1, %g4, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g1, %g4, %g0
	be,pn	%icc, .L391
	 add	%o0, 4, %o0
	add	%o2, -1, %o2
	brnz,pt	%o2, .L392
	 add	%o1, 4, %o1
	mov	0, %o0
.L381:
.L393:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L391:
	brz,a,pt %o2, .L393
	 mov	0, %o0
	cmp	%g3, %g2
	bl,pt	%icc, .L381
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
	brz,pn	%o2, .L400
	 nop
.L406:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L405
	 nop
	add	%o2, -1, %o2
	brnz,pt	%o2, .L406
	 add	%o0, 4, %o0
.L400:
	jmp	%o7+8
	 mov	0, %o0
.L405:
	brz,pn	%o2, .L400
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
	brz,a,pn %o2, .L423
	 mov	0, %o0
.L422:
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	bne,pn	%icc, .L421
	 add	%o0, 4, %o0
	add	%o2, -1, %o2
	brnz,pt	%o2, .L422
	 add	%o1, 4, %o1
	mov	0, %o0
.L423:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L421:
	brz,a,pt %o2, .L423
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
	brz,pn	%i2, .L429
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L429:
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
	be,pn	%xcc, .L445
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	bgeu,pt	%xcc, .L442
	 add	%o2, -1, %g1
	brz,pn	%o2, .L445
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L444:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L444
	 lduw	[%o1+%g1], %g2
.L446:
	jmp	%o7+8
	 nop
.L442:
	brz,pn	%o2, .L446
	 mov	0, %g2
.L433:
	lduw	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,pt	%xcc, .L433
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L445:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	brz,pn	%o2, .L454
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L449:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,pt	%xcc, .L449
	 st	%o1, [%g2-4]
.L454:
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
	bgeu,pt	%xcc, .L456
	 nop
	brz,pn	%o2, .L470
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L468:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L468
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L456:
	be,pn	%xcc, .L470
	 nop
	brz,pn	%o2, .L470
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L469:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L469
	 ldub	[%o0+%g1], %g2
.L470:
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
	sll	%o0, 24, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 24, %g3
	or	%g1, %g3, %g1
	and	%o0, %g2, %o0
	srlx	%o0, 8, %o0
	or	%g1, %o0, %o0
	jmp	%o7+8
	 srl	%o0, 0, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	sllx	%o0, 56, %g1
	srlx	%o0, 56, %g2
	or	%g1, %g2, %g1
	srlx	%o0, 40, %g3
	mov	255, %g2
	sllx	%g2, 8, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 24, %g3
	sethi	%hi(16711680), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 8, %g3
	sethi	%hi(4278190080), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 8, %g3
	sllx	%g2, 32, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	sllx	%g2, 40, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 40, %o0
	sllx	%g2, 48, %g2
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
	ba,pt	%xcc, .L488
	 mov	0, %g1
.L491:
	cmp	%g1, 32
	be,a,pn	%icc, .L490
	 mov	0, %g1
.L488:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L491
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L490:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L493
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L493
	 nop
	mov	1, %g2
.L494:
	sra	%o0, 1, %g1
	sra	%g1, 0, %o0
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L494
	 add	%g2, 1, %g2
.L493:
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
	fbl,pt	%fcc2, .L500
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L500:
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
	fbl,pt	%fcc0, .L503
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L503:
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
	std	%f0, [%fp+2031]
	std	%f2, [%fp+2039]
	std	%f0, [%fp+1967]
	std	%f2, [%fp+1975]
	sethi	%hi(.LC8), %g1
	ldx	[%g1+%lo(.LC8)], %g2
	ldx	[%g1+%lo(.LC8+8)], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_flt, 0
	 add	%fp, 2031, %o0
	brnz,pt	%o0, .L506
	 mov	1, %i0
	ldd	[%fp+1967], %f0
	ldd	[%fp+1975], %f2
	std	%f0, [%fp+1999]
	std	%f2, [%fp+2007]
	sethi	%hi(.LC9), %g1
	ldx	[%g1+%lo(.LC9)], %g2
	ldx	[%g1+%lo(.LC9+8)], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1983, %o1
	call	_Qp_fgt, 0
	 add	%fp, 1999, %o0
	mov	0, %i0
	movrne	%o0, 1, %i0
.L506:
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
	fbu,pn	%fcc2, .L510
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L510
	 nop
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	fmovsl	%icc, %f9, %f8
.L513:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L512
	 fmuls	%f1, %f8, %f1
.L512:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L510
	 nop
	ba,pt	%xcc, .L513
	 fmuls	%f8, %f8, %f8
.L510:
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
	fbu,pn	%fcc0, .L533
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L533
	 nop
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f8
	cmp	%o1, 0
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	fmovdl	%icc, %f10, %f8
.L525:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L524
	 fmuld	%f0, %f8, %f0
.L524:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L533
	 nop
	ba,pt	%xcc, .L525
	 fmuld	%f8, %f8, %f8
.L533:
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
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2015, %o1
	call	_Qp_cmp, 0
	 add	%fp, 2031, %o0
	cmp	%o0, 3
	be,pn	%xcc, .L535
	 ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	add	%fp, 1967, %o2
	add	%fp, 1983, %o1
	call	_Qp_add, 0
	 add	%fp, 1999, %o0
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	add	%fp, 1935, %o1
	call	_Qp_feq, 0
	 add	%fp, 1951, %o0
	brnz,pt	%o0, .L550
	 ldd	[%fp+1727], %f0
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	cmp	%i2, 0
	bl,pn	%icc, .L549
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L538:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L551
	 srl	%i2, 31, %g1
	ldx	[%fp+1727], %g2
	ldx	[%fp+1735], %g3
	stx	%g2, [%fp+1855]
	stx	%g3, [%fp+1863]
	stx	%i4, [%fp+1839]
	stx	%i5, [%fp+1847]
	add	%fp, 1839, %o2
	add	%fp, 1855, %o1
	call	_Qp_mul, 0
	 add	%fp, 1871, %o0
	ldx	[%fp+1871], %g2
	ldx	[%fp+1879], %g3
	stx	%g2, [%fp+1727]
	stx	%g3, [%fp+1735]
	srl	%i2, 31, %g1
.L551:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L535
	 add	%fp, 1743, %o2
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	stx	%i5, [%fp+1751]
	add	%fp, 1759, %o1
	call	_Qp_mul, 0
	 add	%fp, 1775, %o0
	ldx	[%fp+1775], %i4
	ba,pt	%xcc, .L538
	 ldx	[%fp+1783], %i5
.L535:
	ldd	[%fp+1727], %f0
.L550:
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
.L549:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L538
	 ldx	[%g1+%lo(.LC21+8)], %i5
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L560
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L559:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a,pt %xcc, .L559
	 ldub	[%o0+%g1], %g2
.L560:
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
	be,pn	%icc, .L575
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L578:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L578
	 add	%g1, 1, %g1
.L575:
	brz,a,pn %o2, .L579
	 stb	%g0, [%g1]
.L577:
	ldub	[%o1], %g2
	stb	%g2, [%g1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	be,pn	%icc, .L576
	 add	%o1, 1, %o1
	add	%o2, -1, %o2
	brnz,pt	%o2, .L577
	 add	%g1, 1, %g1
	stb	%g0, [%g1]
.L579:
	jmp	%o7+8
	 nop
.L576:
	brnz,pt	%o2, .L579
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
	brz,pn	%o1, .L580
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L587:
	cmp	%g2, 0
	bne,a,pn %icc, .L583
	 add	%g1, 1, %g1
.L580:
	jmp	%o7+8
	 mov	%g1, %o0
.L583:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L587
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L580
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
	be,a,pn	%icc, .L598
	 mov	0, %o0
	mov	%o1, %g1
.L599:
	ba,pt	%xcc, .L592
	 sra	%g3, 24, %g3
.L591:
	be,pn	%icc, .L598
	 add	%g1, 1, %g1
.L592:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L591
	 cmp	%g2, %g3
	add	%o0, 1, %o0
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,a,pt %icc, .L599
	 mov	%o1, %g1
	mov	0, %o0
.L598:
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
.L602:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L602
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
	ldub	[%o1], %o4
	sll	%o4, 24, %o4
	cmp	%o4, 0
	be,pn	%icc, .L606
	 mov	%o1, %g1
	add	%g1, 1, %g1
.L630:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L630
	 add	%g1, 1, %g1
.L606:
	sub	%g1, %o1, %g1
	brz,pn	%g1, .L631
	 nop
	sra	%o4, 24, %o4
	add	%o1, -1, %o3
	ba,pt	%xcc, .L614
	 add	%o3, %g1, %o3
.L628:
	cmp	%g2, 0
	be,pn	%icc, .L627
	 add	%o0, 1, %o0
.L614:
	ldsb	[%o0], %g2
	cmp	%g2, %o4
	bne,pt	%icc, .L628
	 ldub	[%o0], %g1
	brz,pn	%o0, .L631
	 nop
	mov	%o1, %g3
	andcc	%g1, 0xff, %g1
	bne,pt	%icc, .L610
	 mov	%o0, %o5
	ba,pt	%xcc, .L629
	 ldub	[%g3], %g2
.L612:
	ldub	[%o5], %g1
	cmp	%g1, 0
	be,pn	%icc, .L611
	 add	%g3, 1, %g3
.L610:
	ldub	[%g3], %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	xor	%g2, %g1, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	and	%g4, %g2, %g4
	xor	%g3, %o3, %g5
	mov	0, %g2
	movrne	%g5, 1, %g2
	andcc	%g4, %g2, %g0
	bne,a,pt %icc, .L612
	 add	%o5, 1, %o5
.L611:
	ldub	[%g3], %g2
.L629:
	cmp	%g2, %g1
	be,pn	%icc, .L631
	 nop
	ba,pt	%xcc, .L614
	 add	%o0, 1, %o0
.L627:
	jmp	%o7+8
	 mov	0, %o0
.L631:
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
	fbl,a,pn %fcc2, .L641
	 fcmped	%fcc3, %f2, %f8
.L633:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L642
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L635
	 nop
.L642:
	jmp	%o7+8
	 nop
.L641:
	fbule,pt %fcc3, .L633
	 nop
.L635:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L669
	 mov	%o0, %o5
	cmp	%o1, %o3
	blu,a,pn %xcc, .L669
	 mov	0, %o0
	sub	%o1, %o3, %o4
	add	%o0, %o4, %o4
	cmp	%o0, %o4
	bgu,pn	%xcc, .L669
	 mov	0, %o0
	ldsb	[%o2], %o1
	ldub	[%o5], %g1
.L670:
	mov	%o5, %o0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o1
	be,pn	%icc, .L666
	 add	%o5, 1, %o5
	cmp	%o5, %o4
	bleu,a,pt %xcc, .L670
	 ldub	[%o5], %g1
	jmp	%o7+8
	 mov	0, %o0
.L666:
	add	%o3, -1, %g1
	brz,pn	%g1, .L669
	 add	%o2, 1, %g2
	ba,pt	%xcc, .L646
	 mov	%o5, %g3
.L648:
	add	%g3, 1, %g3
	brz,pn	%g1, .L669
	 add	%g2, 1, %g2
.L646:
	ldub	[%g3], %g5
	ldub	[%g2], %g4
	cmp	%g5, %g4
	be,a,pt	%icc, .L648
	 add	%g1, -1, %g1
	brz,pt	%g1, .L669
	 nop
	be,pn	%icc, .L669
	 nop
	cmp	%o5, %o4
	bleu,a,pt %xcc, .L670
	 ldub	[%o5], %g1
	jmp	%o7+8
	 mov	0, %o0
.L669:
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
	brz,pn	%i2, .L672
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L672:
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
	fbl,pn	%fcc2, .L698
	 mov	0, %g2
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	mov	0, %g1
	sethi	%hi(.LC25), %g3
	fcmped	%fcc3, %f0, %f8
	fbul,pn	%fcc3, .L696
	 ldd	[%g3+%lo(.LC25)], %f10
.L681:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L681
	 add	%g1, 1, %g1
.L682:
	st	%g1, [%o1]
.L699:
	fnegd	%f0, %f8
	cmp	%g2, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L698:
	fnegd	%f0, %f0
	mov	1, %g2
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	mov	0, %g1
	sethi	%hi(.LC25), %g3
	fcmped	%fcc3, %f0, %f8
	fbge,pt	%fcc3, .L681
	 ldd	[%g3+%lo(.LC25)], %f10
.L696:
	fzero	%f8
	fcmpd	%fcc1, %f0, %f8
	mov	0, %g4
	movne	%fcc1, 1, %g4
	sethi	%hi(.LC25), %g3
	ldd	[%g3+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g3
	movl	%fcc2, 1, %g3
	andcc	%g4, %g3, %g0
	be,a,pt	%icc, .L699
	 st	%g1, [%o1]
.L683:
	faddd	%f0, %f0, %f0
	fcmped	%fcc3, %f0, %f8
	fbuge,pn %fcc3, .L682
	 add	%g1, -1, %g1
	faddd	%f0, %f0, %f0
	fcmped	%fcc3, %f0, %f8
	fbl,pt	%fcc3, .L683
	 add	%g1, -1, %g1
	ba,pt	%xcc, .L699
	 st	%g1, [%o1]
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g2
	brz,pn	%g2, .L706
	 mov	0, %o0
.L702:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srlx	%g2, 1, %g2
	brnz,pt	%g2, .L702
	 add	%o1, %o1, %o1
.L706:
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
	bgeu,pn	%icc, .L716
	 mov	1, %g1
	cmp	%o1, 0
.L722:
	bl,pn	%icc, .L721
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	srl	%g2, 0, %o1
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L722
	 cmp	%o1, 0
	cmp	%g1, 0
.L721:
	be,pn	%icc, .L711
	 mov	0, %g2
.L716:
	mov	0, %g2
.L710:
	cmp	%o0, %o1
	blu,a,pt %icc, .L723
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L723:
	cmp	%g1, 0
	bne,pt	%icc, .L710
	 srlx	%o1, 1, %o1
.L711:
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
	xor	%g2, %i0, %g1
	cmp	%g2, %i0
	be,pn	%icc, .L725
	 mov	7, %o0
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L725:
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
	xor	%i0, %g2, %o0
	cmp	%i0, %g2
	be,pn	%xcc, .L728
	 mov	63, %g1
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L728:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L731
	 mov	0, %g2
.L732:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%g2, %g1, %g2
	srlx	%o0, 1, %o0
	add	%o1, %o1, %o1
	brnz,pt	%o0, .L732
	 srl	%o1, 0, %o1
.L731:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L736
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L750
	 add	%o2, -1, %g1
.L736:
	cmp	%g4, 0
	be,pn	%icc, .L752
	 cmp	%g1, %o2
	sllx	%g4, 3, %g4
	mov	0, %g2
	ldx	[%o1+%g2], %g3
.L753:
	stx	%g3, [%o0+%g2]
	add	%g2, 8, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L753
	 ldx	[%o1+%g2], %g3
	cmp	%g1, %o2
.L752:
	bgeu,pn	%icc, .L756
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L754:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L754
	 ldub	[%o1+%g1], %g2
.L757:
	jmp	%o7+8
	 nop
.L750:
	brz,pn	%o2, .L757
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L755:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L755
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L756:
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
	blu,pt	%xcc, .L759
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L774
	 add	%o2, -1, %g1
.L759:
	cmp	%g3, 0
	be,pn	%icc, .L776
	 andcc	%o2, 1, %g0
	add	%g3, %g3, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L777:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L777
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L776:
	be,pt	%xcc, .L779
	 nop
	add	%o2, -1, %o2
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L774:
	brz,pn	%o2, .L780
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L778:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L778
	 ldub	[%o1+%g1], %g2
.L780:
	jmp	%o7+8
	 nop
.L779:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L782
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L796
	 add	%o2, -1, %g1
.L782:
	cmp	%g4, 0
	be,pn	%icc, .L798
	 cmp	%g1, %o2
	sllx	%g4, 2, %g4
	mov	0, %g2
	lduw	[%o1+%g2], %g3
.L799:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L799
	 lduw	[%o1+%g2], %g3
	cmp	%g1, %o2
.L798:
	bgeu,pn	%icc, .L802
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L800:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L800
	 ldub	[%o1+%g1], %g2
.L803:
	jmp	%o7+8
	 nop
.L796:
	brz,pn	%o2, .L803
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L801:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L801
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L802:
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
	brlz,pn	%o0, .L812
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L812:
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
	brlz,pn	%o0, .L815
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L815:
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
.L822:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L819
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L822
	 sub	%g3, %g1, %g2
.L819:
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
.L827:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L824
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L827
	 sra	%o0, %g1, %g2
.L824:
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
	fbge,a,pn %fcc0, .L834
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L834:
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
.L836:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,pt	%icc, .L836
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
.L839:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,pt	%icc, .L839
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
	brz,pn	%o0, .L842
	 mov	0, %g2
.L843:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%g2, %g1, %g2
	srl	%o0, 1, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L843
	 add	%o1, %o1, %o1
.L842:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L847
	 mov	0, %g2
	brz,pn	%o1, .L847
	 nop
.L848:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%g2, %g1, %g2
	add	%o0, %o0, %o0
	srlx	%o1, 1, %o1
	brnz,pt	%o1, .L848
	 srl	%o0, 0, %o0
.L847:
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
	bgeu,pn	%icc, .L863
	 mov	1, %g1
	cmp	%o1, 0
.L869:
	bl,pn	%icc, .L868
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	srl	%g2, 0, %o1
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L869
	 cmp	%o1, 0
	cmp	%g1, 0
.L868:
	be,pn	%icc, .L858
	 mov	0, %g2
.L863:
	mov	0, %g2
.L857:
	cmp	%o0, %o1
	blu,a,pt %icc, .L870
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	or	%g2, %g1, %g2
	srl	%g1, 1, %g1
.L870:
	cmp	%g1, 0
	bne,pt	%icc, .L857
	 srlx	%o1, 1, %o1
.L858:
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
	fbl,pn	%fcc1, .L872
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L872:
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
	fbl,pn	%fcc3, .L875
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L875:
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
	bl,pn	%icc, .L889
	 mov	0, %g5
	brz,pn	%o1, .L891
	 mov	0, %g3
.L890:
	mov	1, %g2
	mov	0, %g3
.L882:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%g3, %g1, %g3
	add	%o0, %o0, %o0
	sra	%o0, 0, %o0
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	and	%g2, 0xff, %g1
	cmp	%g1, 31
	mov	0, %g1
	movleu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	bne,pt	%icc, .L882
	 add	%g2, 1, %g2
	sub	%g0, %g3, %g1
	cmp	%g5, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
.L889:
	sub	%g0, %o1, %o1
	sra	%o1, 0, %o1
	brnz,pt	%o1, .L890
	 mov	1, %g5
	mov	0, %g3
.L891:
	sub	%g0, %g3, %g1
	cmp	%g5, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	brlz,pn	%o0, .L910
	 mov	0, %o5
.L893:
	brgez,pt %o1, .L911
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	xor	%o5, 1, %o5
.L911:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L904
	 mov	1, %g2
	cmp	%g1, 0
.L913:
	bl,pn	%icc, .L912
	 cmp	%g2, 0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L913
	 cmp	%g1, 0
	cmp	%g2, 0
.L912:
	be,pn	%icc, .L898
	 mov	0, %o0
.L904:
	mov	0, %o0
.L897:
	cmp	%g3, %g1
	blu,a,pt %icc, .L914
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L914:
	cmp	%g2, 0
	bne,pt	%icc, .L897
	 srl	%g1, 1, %g1
.L898:
	srl	%o0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L910:
	sub	%g0, %o0, %o0
	ba,pt	%xcc, .L893
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L916
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L916:
	mov	%o0, %g3
	srax	%o1, 63, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L928
	 mov	1, %g2
	cmp	%g1, 0
.L935:
	bl,pn	%icc, .L934
	 cmp	%g2, 0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L935
	 cmp	%g1, 0
	cmp	%g2, 0
.L934:
	be,pn	%icc, .L936
	 srl	%g3, 0, %o0
.L928:
	sub	%g3, %g1, %g4
	cmp	%g3, %g1
	movgeu	%icc, %g4, %g3
	srl	%g2, 1, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L928
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L936:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
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
	blu,pt	%icc, .L938
	 mov	1, %g1
	ba,pt	%xcc, .L953
	 sll	%g1, 16, %g2
.L942:
	srlx	%o1, 48, %o1
	add	%g1, %g1, %g2
	mov	%g2, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g2, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L954
	 sll	%g1, 16, %g2
.L938:
	sll	%o1, 16, %g2
	cmp	%g2, 0
	bge,a,pt %icc, .L942
	 sllx	%o1, 49, %o1
	sll	%g1, 16, %g2
.L953:
.L954:
	cmp	%g2, 0
	be,pn	%icc, .L952
	 mov	0, %g3
.L940:
	cmp	%o0, %o1
	blu,pt	%icc, .L955
	 srl	%g2, 17, %g2
	sub	%o0, %o1, %o0
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
	or	%g1, %g3, %g3
.L955:
	mov	%g2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L941
	 srlx	%o1, 1, %o1
	ba,pt	%xcc, .L940
	 sll	%g1, 16, %g2
.L952:
	mov	%g1, %g3
.L941:
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
	bgeu,pn	%xcc, .L965
	 sethi	%hi(2147483648), %g4
	and	%o1, %g4, %g2
.L970:
	brnz,pn	%g2, .L958
	 mov	0, %g3
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	bne,a,pt %icc, .L970
	 and	%o1, %g4, %g2
.L958:
	brz,pn	%g1, .L960
	 mov	0, %g2
.L965:
	mov	0, %g2
.L959:
	cmp	%o0, %o1
	blu,a,pt %xcc, .L971
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L971:
	brnz,pt	%g1, .L959
	 srlx	%o1, 1, %o1
.L960:
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
	be,pt	%xcc, .L973
	 mov	%o0, %g1
	sll	%o0, %o1, %g1
	mov	0, %o0
.L974:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L978:
	jmp	%o7+8
	 nop
.L973:
	brz,pn	%o1, .L978
	 nop
	sll	%o0, %o1, %o0
	sub	%g0, %o1, %g2
	srl	%g1, %g2, %g2
	srax	%g1, 32, %g1
	sll	%g1, %o1, %g1
	ba,pt	%xcc, .L974
	 or	%g2, %g1, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L980
	 mov	0, %g1
	sllx	%o1, %o2, %o0
	mov	%g1, %o1
.L984:
	jmp	%o7+8
	 nop
.L980:
	brz,pn	%o2, .L984
	 nop
	sllx	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srlx	%o1, %g2, %o1
	sllx	%o0, %o2, %o0
	or	%o1, %o0, %o0
	jmp	%o7+8
	 mov	%g1, %o1
	.size	__ashlti3, .-__ashlti3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L986
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L987:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L991:
	jmp	%o7+8
	 nop
.L986:
	brz,pn	%o1, .L991
	 nop
	srax	%o0, 32, %g2
	sra	%g2, %o1, %o0
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %o1, %g1
	ba,pt	%xcc, .L987
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L993
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L997:
	jmp	%o7+8
	 nop
.L993:
	brz,pn	%o2, .L997
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
	srlx	%o0, 56, %g1
	sllx	%o0, 56, %g2
	or	%g1, %g2, %g1
	srlx	%o0, 40, %g3
	mov	255, %g2
	sllx	%g2, 8, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 24, %g3
	sethi	%hi(16711680), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	srlx	%o0, 8, %g3
	sethi	%hi(4278190080), %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 8, %g3
	sllx	%g2, 32, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 24, %g3
	sllx	%g2, 40, %g4
	and	%g3, %g4, %g3
	or	%g1, %g3, %g1
	sllx	%o0, 40, %o0
	sllx	%g2, 48, %g2
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
	sll	%o0, 24, %g2
	or	%g1, %g2, %g1
	srl	%o0, 8, %g2
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g2, %g3, %g2
	or	%g1, %g2, %g1
	sll	%o0, 8, %o0
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
	sethi	%hi(64512), %g2
	or	%g2, 1023, %g1
	cmp	%g1, %o0
	subx	%g0, -1, %g3
	sll	%g3, 4, %g3
	mov	16, %g1
	sub	%g1, %g3, %g1
	srl	%o0, %g1, %g1
	or	%g2, 768, %g2
	and	%g1, %g2, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 3, %g2
	mov	8, %g4
	sub	%g4, %g2, %g4
	srl	%g1, %g4, %g1
	add	%g2, %g3, %g3
	and	%g1, 240, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	sll	%g2, 2, %g2
	mov	4, %g4
	sub	%g4, %g2, %g4
	srl	%g1, %g4, %g1
	add	%g2, %g3, %g3
	and	%g1, 12, %g2
	cmp	%g0, %g2
	subx	%g0, -1, %g2
	add	%g2, %g2, %g2
	mov	2, %o0
	sub	%o0, %g2, %g4
	srl	%g1, %g4, %g1
	sub	%o0, %g1, %o0
	andcc	%g1, 2, %g0
	movne	%xcc, 0, %o0
	add	%g2, %g3, %g2
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
	mov	0, %i5
	movre	%i0, 1, %i5
	mov	0, %g1
	movrne	%i0, -1, %g1
	and	%g1, %i0, %g1
	movrne	%i0, %g0, %i1
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
	bl,pn	%icc, .L1003
	 mov	0, %g1
	bg,pn	%icc, .L1003
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1003
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1003:
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
	bl,pn	%icc, .L1009
	 mov	0, %g1
	bg,pn	%icc, .L1009
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1009
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1009:
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
	bl,pn	%xcc, .L1015
	 mov	0, %g1
	bg,pn	%xcc, .L1015
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1015
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1015:
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
	and	%g1, 3, %g1
	xnor	%g0, %g1, %o0
	and	%o0, 1, %o0
	srl	%g1, 1, %g1
	mov	2, %g4
	sub	%g4, %g1, %g1
	sub	%g0, %o0, %o0
	and	%o0, %g1, %o0
	add	%g2, %g3, %g2
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
	mov	0, %o0
	movre	%i1, %i0, %o0
	mov	0, %i0
	movre	%i1, 1, %i0
	mov	0, %g1
	movrne	%i1, -1, %g1
	and	%g1, %i1, %g1
	call	__ctzdi2, 0
	 or	%o0, %g1, %o0
	sll	%i0, 6, %i0
	add	%i0, %o0, %i0
	return	%i7+8
	 sra	%o0, 0, %o0
	.size	__ctzti2, .-__ctzti2
	.align 4
	.align 32
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -176, %sp
	brnz,pt	%i1, .L1023
	 nop
	brnz,pt	%i0, .L1027
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1023:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1027:
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
	be,pt	%xcc, .L1029
	 mov	%o0, %g1
	srlx	%o0, 32, %g1
	srl	%g1, %o1, %g1
	mov	0, %o0
.L1030:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1034:
	jmp	%o7+8
	 nop
.L1029:
	brz,pn	%o1, .L1034
	 nop
	srlx	%o0, 32, %g2
	srl	%g2, %o1, %o0
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %o1, %g1
	ba,pt	%xcc, .L1030
	 or	%g2, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1036
	 mov	0, %g1
	srlx	%o0, %o2, %o1
	mov	%g1, %o0
.L1040:
	jmp	%o7+8
	 nop
.L1036:
	brz,pn	%o2, .L1040
	 nop
	srlx	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	or	%o0, %o1, %o1
	jmp	%o7+8
	 mov	%g1, %o0
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
	srl	%g2, 16, %o5
	srl	%o0, 16, %g4
	smul	%g1, %g4, %g1
	add	%g1, %o5, %g1
	and	%g2, %g5, %g2
	sll	%g1, 16, %o5
	add	%g2, %o5, %g2
	srl	%o5, 16, %o5
	srl	%o1, 16, %o1
	smul	%g3, %o1, %g3
	add	%g3, %o5, %g3
	and	%g2, %g5, %o0
	sll	%g3, 16, %g2
	add	%o0, %g2, %o0
	srl	%g1, 16, %g1
	smul	%g4, %o1, %g4
	add	%g1, %g4, %g1
	srl	%g3, 16, %g3
	add	%g1, %g3, %g1
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
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
	and	%g4, %o1, %g2
	smul	%g3, %g2, %g1
	srl	%g1, 16, %o5
	srl	%o0, 16, %g5
	smul	%g2, %g5, %g2
	add	%g2, %o5, %g2
	and	%g1, %g4, %g1
	sll	%g2, 16, %o5
	add	%g1, %o5, %g1
	srl	%o5, 16, %o5
	srl	%o1, 16, %o4
	smul	%g3, %o4, %g3
	add	%g3, %o5, %g3
	and	%g1, %g4, %g1
	sll	%g3, 16, %g4
	add	%g1, %g4, %g1
	srl	%g2, 16, %g2
	smul	%g5, %o4, %g5
	add	%g2, %g5, %g2
	srl	%g3, 16, %g3
	add	%g2, %g3, %g2
	sllx	%g2, 32, %g2
	mov	-1, %g3
	srlx	%g3, 32, %g3
	and	%g3, %g1, %g1
	or	%g1, %g2, %g1
	srax	%o1, 32, %g2
	smul	%o0, %g2, %g2
	srax	%g1, 32, %g4
	add	%g2, %g4, %g2
	srax	%o0, 32, %o0
	smul	%o1, %o0, %o1
	add	%g2, %o1, %o0
	sllx	%o0, 32, %o0
	and	%g1, %g3, %g1
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
	srlx	%g1, 32, %g2
	srlx	%o0, 32, %g4
	umul	%o1, %g4, %g3
	add	%g3, %g2, %g3
	mov	-1, %g5
	srlx	%g5, 32, %g5
	and	%g1, %g5, %g2
	sllx	%g3, 32, %g1
	add	%g2, %g1, %g2
	srlx	%g1, 32, %g1
	srlx	%o1, 32, %o1
	umul	%o0, %o1, %o0
	add	%o0, %g1, %g1
	and	%g2, %g5, %g2
	sllx	%g1, 32, %g5
	srlx	%g3, 32, %o0
	umul	%g4, %o1, %g4
	add	%o0, %g4, %o0
	srlx	%g1, 32, %g1
	add	%o0, %g1, %o0
	jmp	%o7+8
	 add	%g2, %g5, %o1
	.size	__mulddi3, .-__mulddi3
	.align 4
	.align 32
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	umul	%o1, %o3, %g2
	srlx	%g2, 32, %g3
	srlx	%o1, 32, %g4
	umul	%o3, %g4, %g1
	add	%g1, %g3, %g1
	mov	-1, %g5
	srlx	%g5, 32, %g5
	and	%g2, %g5, %g2
	sllx	%g1, 32, %g3
	add	%g2, %g3, %g2
	srlx	%g3, 32, %o5
	srlx	%o3, 32, %o4
	umul	%o1, %o4, %g3
	add	%g3, %o5, %g3
	and	%g2, %g5, %g2
	sllx	%g3, 32, %g5
	srlx	%g1, 32, %g1
	umul	%g4, %o4, %g4
	add	%g1, %g4, %g1
	srlx	%g3, 32, %g3
	add	%g1, %g3, %g1
	mulx	%o1, %o2, %o2
	add	%o2, %g1, %o2
	mulx	%o3, %o0, %o0
	add	%o2, %o0, %o0
	jmp	%o7+8
	 add	%g2, %g5, %o1
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
	srlx	%o0, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %g3
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	sub	%o0, %g1, %o0
	srlx	%o0, 2, %g2
	sethi	%hi(858992640), %g3
	or	%g3, 819, %g3
	sllx	%g3, 32, %g1
	add	%g1, %g3, %g1
	and	%g2, %g1, %g2
	and	%o0, %g1, %o0
	add	%g2, %o0, %g2
	srlx	%g2, 4, %g1
	add	%g1, %g2, %g1
	sethi	%hi(252644352), %g2
	or	%g2, 783, %g2
	sllx	%g2, 32, %g3
	add	%g3, %g2, %g2
	and	%g1, %g2, %g1
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
	srl	%o0, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	and	%o0, %g1, %o0
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
	sllx	%o0, 63, %g2
	srlx	%o1, 1, %g1
	or	%g2, %g1, %g1
	srlx	%o0, 1, %g4
	sethi	%hi(1431655424), %g3
	or	%g3, 341, %g3
	sllx	%g3, 32, %g2
	add	%g2, %g3, %g2
	and	%g4, %g2, %g3
	and	%g1, %g2, %g1
	sub	%o1, %g1, %g1
	cmp	%g1, %o1
	mov	0, %g2
	movgu	%xcc, 1, %g2
	sub	%o0, %g3, %o0
	sub	%o0, %g2, %o0
	sllx	%o0, 62, %g3
	srlx	%g1, 2, %g2
	or	%g3, %g2, %g2
	srlx	%o0, 2, %g4
	sethi	%hi(858992640), %g5
	or	%g5, 819, %g5
	sllx	%g5, 32, %g3
	add	%g3, %g5, %g3
	and	%g4, %g3, %g4
	and	%g2, %g3, %g2
	and	%o0, %g3, %o0
	and	%g1, %g3, %g1
	add	%g2, %g1, %g1
	cmp	%g1, %g2
	mov	0, %g3
	movlu	%xcc, 1, %g3
	add	%g4, %o0, %g2
	add	%g3, %g2, %g3
	sllx	%g3, 60, %g4
	srlx	%g1, 4, %g2
	or	%g4, %g2, %g2
	srlx	%g3, 4, %g4
	add	%g2, %g1, %g1
	cmp	%g1, %g2
	mov	0, %g2
	movlu	%xcc, 1, %g2
	add	%g4, %g3, %g3
	add	%g2, %g3, %g2
	sethi	%hi(252644352), %g4
	or	%g4, 783, %g4
	sllx	%g4, 32, %g3
	add	%g3, %g4, %g3
	and	%g2, %g3, %g2
	and	%g1, %g3, %g1
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
	mov	%o1, %g1
	sethi	%hi(.LC30), %g2
	ldd	[%g2+%lo(.LC30)], %f0
.L1056:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L1054
	 fmuld	%f0, %f8, %f0
.L1054:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1055
	 cmp	%o1, 0
	ba,pt	%xcc, .L1056
	 fmuld	%f8, %f8, %f8
.L1055:
	bl,a,pn	%icc, .L1061
	 sethi	%hi(.LC30), %g1
	jmp	%o7+8
	 nop
.L1061:
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
	mov	%o1, %g1
	sethi	%hi(.LC32), %g2
	ld	[%g2+%lo(.LC32)], %f0
.L1065:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L1063
	 fmuls	%f0, %f1, %f0
.L1063:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1064
	 cmp	%o1, 0
	ba,pt	%xcc, .L1065
	 fmuls	%f1, %f1, %f1
.L1064:
	bl,a,pn	%icc, .L1070
	 sethi	%hi(.LC32), %g1
	jmp	%o7+8
	 nop
.L1070:
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
	blu,pn	%icc, .L1072
	 mov	0, %g1
	bgu,pn	%icc, .L1072
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1072
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1072:
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
	blu,pn	%icc, .L1078
	 mov	0, %g1
	bgu,pn	%icc, .L1078
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1078
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1078:
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
	blu,pn	%xcc, .L1084
	 mov	0, %g1
	bgu,pn	%xcc, .L1084
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1084
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1084:
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
