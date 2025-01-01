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
	brz,pn	%o3, .L26
	 and	%o2, 0xff, %o2
.L22:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	be,pn	%icc, .L33
	 add	%o1, 1, %o1
	add	%o3, -1, %o3
	brnz,pt	%o3, .L22
	 add	%o0, 1, %o0
.L26:
	jmp	%o7+8
	 mov	0, %o0
.L33:
	brz,pn	%o3, .L26
	 nop
	jmp	%o7+8
	 add	%o0, 1, %o0
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	brz,pn	%o2, .L40
	 and	%o1, 0xff, %o1
.L35:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L43
	 nop
	add	%o2, -1, %o2
	brnz,pt	%o2, .L35
	 add	%o0, 1, %o0
.L40:
	jmp	%o7+8
	 mov	0, %o0
.L43:
	brz,pn	%o2, .L40
	 nop
	jmp	%o7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.align 32
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	ba,pt	%xcc, .L56
	 nop
.L47:
	add	%o0, 1, %o0
	add	%o1, 1, %o1
.L56:
	brz,a,pn %o2, .L57
	 mov	0, %o0
	ldub	[%o0], %g2
	ldub	[%o1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L47
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L48
	 sub	%g2, %g1, %o0
	mov	0, %o0
.L48:
.L57:
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
	brz,pn	%i2, .L63
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L63:
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
.L65:
	cmp	%o2, %g2
	be,pn	%xcc, .L70
	 mov	0, %o0
	mov	%o2, %o0
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L65
	 add	%o2, -1, %o2
.L70:
	jmp	%o7+8
	 nop
.L64:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.align 32
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	brz,pn	%o2, .L79
	 add	%o0, %o2, %o2
	mov	%o0, %g1
	stb	%o1, [%g1]
.L78:
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L78
	 stb	%o1, [%g1]
.L79:
	jmp	%o7+8
	 nop
	.size	memset, .-memset
	.align 4
	.align 32
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
.L87:
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cmp	%g1, 0
	be,pn	%icc, .L88
	 add	%o1, 1, %o1
	ba,pt	%xcc, .L87
	 add	%o0, 1, %o0
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
	be,pn	%icc, .L98
	 ldub	[%o0], %g1
.L90:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	be,pn	%icc, .L97
	 nop
	add	%o0, 1, %o0
	ldsb	[%o0], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L90
	 ldub	[%o0], %g1
.L98:
	jmp	%o7+8
	 nop
.L97:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.align 32
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L101:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L103
	 cmp	%g1, 0
	bne,pt	%icc, .L101
	 add	%o0, 1, %o0
	mov	0, %o0
.L103:
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
	be,pn	%icc, .L105
	 ldub	[%o1], %g5
	mov	1, %g2
.L106:
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
	bne,pt	%icc, .L106
	 add	%g2, 1, %g2
.L105:
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
	be,pn	%icc, .L112
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L116:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L116
	 add	%g1, 1, %g1
.L112:
	jmp	%o7+8
	 sub	%g1, %o0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L118
	 mov	0, %g4
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,a,pn	%icc, .L128
	 ldub	[%o1], %g1
	add	%o2, -1, %o2
	add	%o1, %o2, %o2
.L120:
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
	be,a,pn	%icc, .L128
	 ldub	[%o1], %g1
	add	%o0, 1, %o0
	ldub	[%o0], %g4
	cmp	%g4, 0
	bne,pt	%icc, .L120
	 add	%o1, 1, %o1
	ldub	[%o1], %g1
.L128:
	sub	%g4, %g1, %g4
.L118:
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
	ble,pn	%xcc, .L133
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L131:
	ldub	[%o0+1], %g1
	stb	%g1, [%o1]
	ldub	[%o0], %g1
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	cmp	%o0, %o2
	bne,pt	%xcc, .L131
	 add	%o1, 2, %o1
.L133:
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
	bne,pt	%icc, .L145
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L145
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%o0, %g1, %o0
	cmp	%o0, 2
	mov	0, %g3
	movleu	%icc, 1, %g3
.L145:
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
	bleu,pn	%icc, .L155
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
	bne,pn	%icc, .L151
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	add	%o0, %g3, %g3
	sethi	%hi(7168), %g2
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L151
	 sethi	%hi(-65536), %g2
	or	%g2, 4, %g2
	add	%o0, %g2, %g2
	sethi	%hi(1048576), %g3
	or	%g3, 3, %g3
	cmp	%g2, %g3
	bgu,pn	%icc, .L151
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	ba,pt	%xcc, .L151
	 addx	%g0, 0, %g1
.L155:
	add	%o0, 1, %o0
	and	%o0, 127, %o0
	cmp	%o0, 32
	mov	0, %g1
	movgu	%icc, 1, %g1
.L151:
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
	bleu,pt	%icc, .L157
	 mov	1, %g1
	or	%o0, 32, %o0
	add	%o0, -97, %o0
	cmp	%o0, 5
	mov	0, %g1
	movleu	%icc, 1, %g1
.L157:
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
	fbu,pn	%fcc0, .L168
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L164
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L167
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L164:
	jmp	%o7+8
	 fmovd	%f2, %f0
.L167:
	fzero	%f0
.L168:
	jmp	%o7+8
	 nop
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	fcmps	%fcc3, %f1, %f1
	fbu,pn	%fcc3, .L172
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L173
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L176
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L172:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L173:
	jmp	%o7+8
	 fmovs	%f3, %f0
.L176:
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
	fcmpd	%fcc2, %f0, %f0
	fbu,a,pn %fcc2, .L183
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L177
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L179
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L177:
.L183:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L179:
	ba,pt	%xcc, .L177
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
	fbu,pn	%fcc1, .L190
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L190
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L186
	 fcmpes	%fcc3, %f1, %f3
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f1
	fmovs	%f1, %f0
.L184:
.L190:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L186:
	fmovsl	%fcc3, %f3, %f1
	ba,pt	%xcc, .L184
	 fmovs	%f1, %f0
	ba,pt	%xcc, .L184
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
	be,pn	%xcc, .L194
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
	be,pn	%xcc, .L195
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
	be,a,pt	%icc, .L193
	 ldx	[%fp+1935], %g2
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L193:
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
.L194:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L195:
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
	fbu,a,pn %fcc0, .L203
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L197
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	srlx	%g1, 63, %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L199
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L197:
	fmovd	%f2, %f0
.L203:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L199:
	ba,pt	%xcc, .L197
	 fmovdl	%fcc2, %f0, %f2
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
	st	%f1, [%sp+2187]
	lduw	[%sp+2187], %g1
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L206
	 fcmpes	%fcc1, %f1, %f3
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	fmovs	%f3, %f0
.L204:
.L210:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L206:
	fmovsl	%fcc1, %f1, %f3
	ba,pt	%xcc, .L204
	 fmovs	%f3, %f0
	ba,pt	%xcc, .L204
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
	be,pn	%xcc, .L214
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
	be,a,pt	%icc, .L213
	 ldx	[%fp+1935], %g2
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L213:
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
	or	%o0, %lo(s.0), %o0
	be,pn	%icc, .L218
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L219:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	stb	%g3, [%g2]
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L219
	 add	%g2, 1, %g2
.L218:
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
	brz,a,pn %o1, .L230
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%g1, [%o0]
	stx	%o1, [%o0+8]
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
	mov	0, %l0
.L247:
	mov	%i5, %i0
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	be,pn	%icc, .L256
	 nop
	add	%l0, 1, %l0
	cmp	%l1, %l0
	bne,pt	%xcc, .L247
	 add	%i5, %i3, %i5
.L245:
	add	%l1, 1, %g1
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L256
	 add	%i1, %l1, %i0
	mov	%i3, %o2
	mov	%l2, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L256:
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
	brz,pn	%i2, .L258
	 mov	%i0, %l0
	mov	0, %i5
.L260:
	mov	%i1, %i0
	mov	%i1, %o1
	call	%i4, 0
	 mov	%l0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L265
	 nop
	add	%i5, 1, %i5
	cmp	%i2, %i5
	bne,pt	%xcc, .L260
	 add	%i1, %i3, %i1
.L258:
	mov	0, %i0
.L265:
	return	%i7+8
	 nop
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
.L284:
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
	be,pn	%icc, .L268
	 sra	%g2, 24, %g2
	ba,pt	%xcc, .L284
	 add	%o0, 1, %o0
.L268:
	cmp	%g2, 43
	be,pn	%icc, .L270
	 mov	0, %g4
	cmp	%g2, 45
	bne,a,pt %icc, .L285
	 ldub	[%o0], %g1
	mov	1, %g4
.L270:
	add	%o0, 1, %o0
	ldub	[%o0], %g1
.L285:
	ldsb	[%o0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L273
	 mov	0, %g3
.L272:
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
	bleu,pt	%icc, .L272
	 ldub	[%o0], %g1
.L273:
	sub	%g0, %g3, %g1
	cmp	%g4, 0
	move	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
.L303:
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
	be,pn	%icc, .L287
	 sra	%g2, 24, %g2
	ba,pt	%xcc, .L303
	 add	%o0, 1, %o0
.L287:
	cmp	%g2, 43
	be,pn	%icc, .L289
	 mov	0, %g4
	cmp	%g2, 45
	bne,a,pt %icc, .L304
	 ldub	[%o0], %g1
	mov	1, %g4
.L289:
	add	%o0, 1, %o0
	ldub	[%o0], %g1
.L304:
	ldsb	[%o0], %g2
	add	%g2, -48, %g2
	cmp	%g2, 9
	bgu,pn	%icc, .L292
	 mov	0, %g3
.L291:
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
	bleu,pt	%icc, .L291
	 ldub	[%o0], %g1
.L292:
	sub	%g0, %g3, %g1
	cmp	%g4, 0
	move	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
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
.L311:
.L316:
	brz,pn	%i2, .L307
	 srlx	%i2, 1, %l0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	mov	%i5, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bl,a,pn	%icc, .L311
	 mov	%l0, %i2
	ble,pn	%icc, .L306
	 nop
	add	%i5, %i3, %i1
	add	%i2, -1, %i2
	ba,pt	%xcc, .L316
	 sub	%i2, %l0, %i2
.L307:
	mov	0, %i5
.L306:
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
	bne,pt	%icc, .L323
	 sra	%l0, 1, %i2
.L318:
	mov	0, %i2
.L317:
	return	%i7+8
	 mov	%o2, %o0
.L320:
	orcc	%l1, 0, %l0
	be,pn	%icc, .L318
	 sra	%l0, 1, %i2
.L323:
	mov	%i2, %l1
	mulx	%i2, %i3, %i2
	add	%i1, %i2, %i2
	mov	%i5, %o2
	mov	%i2, %o1
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,pn	%icc, .L317
	 nop
	ble,pn	%icc, .L320
	 add	%l0, -1, %l0
	add	%i2, %i3, %i1
	ba,pt	%xcc, .L320
	 sra	%l0, 1, %l1
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
	sra	%o0, 31, %g1
	wr	%g0, %g1, %y
	sdiv	%o0, %o1, %g1
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
.L339:
	lduw	[%o0], %g1
	xor	%g1, %o1, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L332
	 cmp	%g1, 0
	ba,pt	%xcc, .L339
	 add	%o0, 4, %o0
.L332:
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
	be,pn	%icc, .L349
	 cmp	%g4, %g3
	mov	4, %g1
.L342:
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
	bne,pt	%icc, .L342
	 add	%g1, 4, %g1
	cmp	%g4, %g3
.L349:
	bl,pt	%icc, .L343
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L343:
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
.L351:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L351
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
	be,pn	%icc, .L354
	 mov	%o0, %g1
	add	%g1, 4, %g1
.L358:
	lduw	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L358
	 add	%g1, 4, %g1
.L354:
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
	ba,pt	%xcc, .L372
	 nop
.L362:
	add	%o0, 4, %o0
	add	%o1, 4, %o1
.L372:
	brz,a,pn %o2, .L373
	 mov	0, %o0
	lduw	[%o0], %g1
	lduw	[%o1], %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	xor	%g1, %g3, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g2, %g1, %g1
	cmp	%g0, %g3
	addx	%g0, 0, %g2
	andcc	%g1, %g2, %g0
	bne,a,pt %icc, .L362
	 add	%o2, -1, %o2
	brz,a,pt %o2, .L364
	 mov	0, %o0
	lduw	[%o0], %g2
	cmp	%g2, %g3
	bl,pt	%icc, .L363
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L364:
.L363:
.L373:
	jmp	%o7+8
	 sra	%o0, 0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	ba,pt	%xcc, .L383
	 nop
.L377:
	add	%o0, 4, %o0
.L383:
	brz,pn	%o2, .L380
	 nop
	lduw	[%o0], %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L377
	 add	%o2, -1, %o2
	brz,pn	%o2, .L380
	 nop
.L374:
	jmp	%o7+8
	 nop
.L380:
	jmp	%o7+8
	 mov	0, %o0
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	ba,pt	%xcc, .L397
	 nop
.L387:
	add	%o0, 4, %o0
	add	%o1, 4, %o1
.L397:
	brz,a,pn %o2, .L398
	 mov	0, %o0
	lduw	[%o0], %g2
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,a,pt	%icc, .L387
	 add	%o2, -1, %o2
	brz,a,pt %o2, .L389
	 mov	0, %o0
	cmp	%g2, %g1
	bl,pt	%icc, .L388
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L389:
.L388:
.L398:
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
	brz,pn	%i2, .L404
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L404:
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
	be,pn	%xcc, .L419
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	blu,pt	%xcc, .L407
	 add	%o2, -1, %g1
	brz,pn	%o2, .L420
	 mov	0, %g2
.L408:
	lduw	[%o1+%g2], %g3
	st	%g3, [%o0+%g2]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,pt	%xcc, .L408
	 add	%g2, 4, %g2
.L420:
	jmp	%o7+8
	 nop
.L407:
	brz,pn	%o2, .L419
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L418:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L418
	 lduw	[%o1+%g1], %g2
.L419:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	brz,pn	%o2, .L428
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L423:
	add	%g2, 4, %g2
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,pt	%xcc, .L423
	 st	%o1, [%g2-4]
.L428:
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
	bgeu,pt	%xcc, .L430
	 nop
	brz,pn	%o2, .L444
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L442:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L442
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L430:
	be,pn	%xcc, .L444
	 nop
	brz,pn	%o2, .L444
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L443:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L443
	 ldub	[%o0+%g1], %g2
.L444:
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
	mov	0, %g1
	srl	%o0, %g1, %g2
.L464:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L461
	 add	%g1, 1, %g1
	cmp	%g1, 32
	bne,pt	%icc, .L464
	 srl	%o0, %g1, %g2
	mov	0, %g1
.L461:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L466
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L466
	 nop
	mov	1, %g2
.L467:
	sra	%o0, 1, %g1
	sra	%g1, 0, %o0
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L467
	 add	%g2, 1, %g2
.L466:
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
	fbl,pt	%fcc2, .L473
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L473:
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
	fbl,pt	%fcc0, .L476
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L476:
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
	brnz,pt	%o0, .L479
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
.L479:
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
	fbu,pn	%fcc2, .L483
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L483
	 nop
	cmp	%o1, 0
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f8
	ba,pt	%xcc, .L486
	 fmovsl	%icc, %f9, %f8
.L485:
	srl	%o1, 31, %g1
.L494:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L483
	 nop
	fmuls	%f8, %f8, %f8
.L486:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L485
	 fmuls	%f1, %f8, %f1
	ba,pt	%xcc, .L494
	 srl	%o1, 31, %g1
.L483:
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
	fbu,pn	%fcc0, .L508
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L508
	 nop
	cmp	%o1, 0
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	sethi	%hi(.LC16), %g1
	ldd	[%g1+%lo(.LC16)], %f8
	ba,pt	%xcc, .L499
	 fmovdl	%icc, %f10, %f8
.L498:
	srl	%o1, 31, %g1
.L507:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L508
	 nop
	fmuld	%f8, %f8, %f8
.L499:
	andcc	%o1, 1, %g0
	bne,a,pt %xcc, .L498
	 fmuld	%f0, %f8, %f0
	ba,pt	%xcc, .L507
	 srl	%o1, 31, %g1
.L508:
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
	be,pn	%xcc, .L510
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
	brnz,pt	%o0, .L524
	 ldd	[%fp+1727], %f0
	sethi	%hi(.LC20), %g1
	ldx	[%g1+%lo(.LC20)], %i4
	cmp	%i2, 0
	bge,pt	%icc, .L513
	 ldx	[%g1+%lo(.LC20+8)], %i5
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L513
	 ldx	[%g1+%lo(.LC21+8)], %i5
.L512:
	srl	%i2, 31, %g1
.L525:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L510
	 add	%fp, 1743, %o2
	stx	%i4, [%fp+1759]
	stx	%i5, [%fp+1767]
	stx	%i4, [%fp+1743]
	stx	%i5, [%fp+1751]
	add	%fp, 1759, %o1
	call	_Qp_mul, 0
	 add	%fp, 1775, %o0
	ldx	[%fp+1775], %i4
	ldx	[%fp+1783], %i5
.L513:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L525
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
	ba,pt	%xcc, .L512
	 stx	%g3, [%fp+1735]
.L510:
	ldd	[%fp+1727], %f0
.L524:
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L534
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L533:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a,pt %xcc, .L533
	 ldub	[%o0+%g1], %g2
.L534:
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
	be,pn	%icc, .L549
	 mov	%o0, %g1
	add	%g1, 1, %g1
.L550:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L550
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L549
	 nop
.L540:
	add	%g1, 1, %g1
	add	%o2, -1, %o2
.L549:
	brz,a,pn %o2, .L551
	 stb	%g0, [%g1]
	ldub	[%o1], %g2
	stb	%g2, [%g1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L540
	 add	%o1, 1, %o1
	brz,a,pt %o2, .L551
	 stb	%g0, [%g1]
.L551:
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L552
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L559:
	cmp	%g2, 0
	bne,a,pn %icc, .L555
	 add	%g1, 1, %g1
.L552:
	jmp	%o7+8
	 mov	%g1, %o0
.L555:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L559
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L552
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.align 32
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
.L568:
	ldub	[%o0], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L565
	 nop
	mov	%o1, %g1
	sra	%g3, 24, %g3
.L564:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	be,pn	%icc, .L569
	 cmp	%g2, %g3
	bne,pt	%icc, .L564
	 add	%g1, 1, %g1
.L562:
	jmp	%o7+8
	 nop
.L569:
	ba,pt	%xcc, .L568
	 add	%o0, 1, %o0
.L565:
	jmp	%o7+8
	 mov	0, %o0
	.size	strpbrk, .-strpbrk
	.align 4
	.align 32
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	mov	%o0, %g1
	mov	0, %o0
.L572:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L572
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
	be,pn	%icc, .L576
	 mov	%o1, %g1
	add	%g1, 1, %g1
.L597:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,a,pt %icc, .L597
	 add	%g1, 1, %g1
.L576:
	sub	%g1, %o1, %g1
	brz,pn	%g1, .L599
	 nop
	sra	%o4, 24, %o4
	add	%o1, -1, %o3
	ba,pt	%xcc, .L584
	 add	%o3, %g1, %o3
.L583:
	brz,pn	%o0, .L599
	 nop
	ldub	[%o0], %g5
	mov	%o1, %g2
	cmp	%g5, 0
	be,pn	%icc, .L581
	 mov	%o0, %o5
.L580:
	ldub	[%g2], %g1
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	xor	%g1, %g5, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g3, %g1, %g3
	xor	%g2, %o3, %g4
	mov	0, %g1
	movrne	%g4, 1, %g1
	andcc	%g3, %g1, %g0
	be,a,pn	%icc, .L598
	 ldub	[%g2], %g1
	add	%o5, 1, %o5
	ldub	[%o5], %g5
	cmp	%g5, 0
	bne,pt	%icc, .L580
	 add	%g2, 1, %g2
.L581:
	ldub	[%g2], %g1
.L598:
	cmp	%g1, %g5
	be,pn	%icc, .L599
	 nop
	add	%o0, 1, %o0
.L584:
	ldsb	[%o0], %g1
	cmp	%g1, %o4
	be,pn	%icc, .L583
	 cmp	%g1, 0
	bne,pt	%icc, .L584
	 add	%o0, 1, %o0
	jmp	%o7+8
	 mov	0, %o0
.L599:
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
	fbl,a,pn %fcc2, .L609
	 fcmped	%fcc3, %f2, %f8
.L601:
	fzero	%f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L610
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L603
	 nop
.L610:
	jmp	%o7+8
	 nop
.L609:
	fbule,pt %fcc3, .L601
	 nop
.L603:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L637
	 mov	%o0, %o5
	cmp	%o1, %o3
	blu,pn	%xcc, .L621
	 sub	%o1, %o3, %o4
	add	%o0, %o4, %o4
	cmp	%o0, %o4
	bgu,pn	%xcc, .L637
	 mov	0, %o0
	ba,pt	%xcc, .L618
	 ldsb	[%o2], %o1
.L635:
	brz,pt	%g1, .L636
	 nop
	be,pn	%icc, .L636
	 nop
.L613:
	cmp	%o5, %o4
	bgu,pn	%xcc, .L637
	 mov	0, %o0
.L618:
	ldub	[%o5], %g1
	mov	%o5, %o0
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L613
	 add	%o5, 1, %o5
	add	%o3, -1, %g1
	brz,pn	%g1, .L637
	 add	%o2, 1, %g2
	mov	%o5, %g3
.L614:
	ldub	[%g3], %g5
	ldub	[%g2], %g4
	cmp	%g5, %g4
	bne,pn	%icc, .L635
	 add	%g3, 1, %g3
	add	%g1, -1, %g1
	brnz,pt	%g1, .L614
	 add	%g2, 1, %g2
.L637:
	jmp	%o7+8
	 nop
.L621:
	mov	0, %o0
.L636:
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
	brz,pn	%i2, .L639
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L639:
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
	fbl,a,pn %fcc2, .L664
	 fnegd	%f0, %f0
	mov	0, %g2
.L644:
	sethi	%hi(.LC24), %g3
	ldd	[%g3+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbul,pn	%fcc3, .L663
	 mov	0, %g1
	sethi	%hi(.LC25), %g4
	ldd	[%g4+%lo(.LC25)], %f10
.L648:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L648
	 add	%g1, 1, %g1
.L649:
	st	%g1, [%o1]
.L665:
	fnegd	%f0, %f8
	cmp	%g2, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L664:
	ba,pt	%xcc, .L644
	 mov	1, %g2
.L663:
	fzero	%f8
	fcmpd	%fcc1, %f0, %f8
	mov	0, %g4
	movne	%fcc1, 1, %g4
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc2, %f0, %f8
	mov	0, %g3
	movl	%fcc2, 1, %g3
	andcc	%g4, %g3, %g0
	be,pt	%icc, .L649
	 mov	0, %g1
.L650:
	faddd	%f0, %f0, %f0
	fcmped	%fcc3, %f0, %f8
	fbl,pt	%fcc3, .L650
	 add	%g1, -1, %g1
	ba,pt	%xcc, .L665
	 st	%g1, [%o1]
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	mov	%o0, %g2
	brz,pn	%g2, .L672
	 mov	0, %o0
.L668:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o0, %g1, %o0
	srlx	%g2, 1, %g2
	brnz,pt	%g2, .L668
	 add	%o1, %o1, %o1
.L672:
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
	bgeu,pn	%icc, .L682
	 mov	1, %g1
	cmp	%o1, 0
.L688:
	bl,pn	%icc, .L687
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	srl	%g2, 0, %o1
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L688
	 cmp	%o1, 0
	cmp	%g1, 0
.L687:
	be,pn	%icc, .L677
	 mov	0, %g2
.L682:
	ba,pt	%xcc, .L676
	 mov	0, %g2
.L679:
	srl	%g1, 1, %g1
.L689:
	cmp	%g1, 0
	be,pn	%icc, .L677
	 srlx	%o1, 1, %o1
.L676:
	cmp	%o0, %o1
	blu,a,pt %icc, .L689
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	ba,pt	%xcc, .L679
	 or	%g2, %g1, %g2
.L677:
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
	be,pn	%icc, .L691
	 mov	7, %o0
	sll	%g1, 8, %o0
	call	__clzdi2, 0
	 srl	%o0, 0, %o0
	add	%o0, -33, %o0
.L691:
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
	be,pn	%xcc, .L694
	 mov	63, %g1
	call	__clzdi2, 0
	 nop
	add	%o0, -1, %g1
.L694:
	return	%i7+8
	 sra	%g1, 0, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	brz,pn	%o0, .L697
	 mov	0, %g2
.L698:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%g2, %g1, %g2
	srlx	%o0, 1, %o0
	add	%o1, %o1, %o1
	brnz,pt	%o0, .L698
	 srl	%o1, 0, %o1
.L697:
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
	blu,pt	%xcc, .L702
	 and	%o2, -8, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu,pt	%xcc, .L717
	 cmp	%g4, 0
	add	%o2, -1, %g1
	brz,pn	%o2, .L723
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L718:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L718
	 ldub	[%o1+%g1], %g2
.L723:
	jmp	%o7+8
	 nop
.L702:
	cmp	%g4, 0
.L717:
	be,pn	%icc, .L719
	 cmp	%g1, %o2
	sllx	%g4, 3, %g4
	mov	0, %g2
	ldx	[%o1+%g2], %g3
.L720:
	stx	%g3, [%o0+%g2]
	add	%g2, 8, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L720
	 ldx	[%o1+%g2], %g3
	cmp	%g1, %o2
.L719:
	bgeu,pn	%icc, .L722
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L721:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L721
	 ldub	[%o1+%g1], %g2
.L722:
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
	blu,pt	%xcc, .L725
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bgu,pt	%xcc, .L741
	 cmp	%g3, 0
	add	%o2, -1, %g1
	brz,pn	%o2, .L746
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L742:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L742
	 ldub	[%o1+%g1], %g2
.L746:
	jmp	%o7+8
	 nop
.L745:
	jmp	%o7+8
	 nop
.L725:
	cmp	%g3, 0
.L741:
	be,pn	%icc, .L743
	 andcc	%o2, 1, %g0
	add	%g3, %g3, %g3
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L744:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L744
	 lduh	[%o1+%g1], %g2
	andcc	%o2, 1, %g0
.L743:
	be,pt	%xcc, .L745
	 nop
	add	%o2, -1, %o2
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	srl	%o2, 2, %g4
	cmp	%o0, %o1
	blu,pt	%xcc, .L748
	 and	%o2, -4, %g1
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bgu,pt	%xcc, .L763
	 cmp	%g4, 0
	add	%o2, -1, %g1
	brz,pn	%o2, .L769
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L764:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L764
	 ldub	[%o1+%g1], %g2
.L769:
	jmp	%o7+8
	 nop
.L748:
	cmp	%g4, 0
.L763:
	be,pn	%icc, .L765
	 cmp	%g1, %o2
	sllx	%g4, 2, %g4
	mov	0, %g2
	lduw	[%o1+%g2], %g3
.L766:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L766
	 lduw	[%o1+%g2], %g3
	cmp	%g1, %o2
.L765:
	bgeu,pn	%icc, .L768
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L767:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	blu,a,pt %icc, .L767
	 ldub	[%o1+%g1], %g2
.L768:
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
	brlz,pn	%o0, .L778
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
.L779:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L778:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtod	%f8, %f0
	ba,pt	%xcc, .L779
	 faddd	%f0, %f0, %f0
	.size	__ulltod, .-__ulltod
	.align 4
	.align 32
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	add	%sp, -144, %sp
	brlz,pn	%o0, .L781
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
.L782:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L781:
	and	%o0, 1, %o0
	or	%g1, %o0, %g1
	stx	%g1, [%sp+2183]
	ldd	[%sp+2183], %f8
	fxtos	%f8, %f0
	ba,pt	%xcc, .L782
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
	mov	0, %g1
	mov	15, %g3
	sub	%g3, %g1, %g2
.L788:
	sra	%o0, %g2, %g2
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L785
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L788
	 sub	%g3, %g1, %g2
.L785:
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
.L793:
	andcc	%g2, 1, %g0
	bne,pn	%xcc, .L790
	 nop
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,a,pt %icc, .L793
	 sra	%o0, %g1, %g2
.L790:
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
	fbge,a,pn %fcc0, .L800
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
.L794:
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L800:
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	sethi	%hi(32768), %g1
	ldx	[%sp+2183], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L794
	 stx	%g1, [%sp+2183]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.align 32
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	mov	0, %g3
	mov	0, %g1
.L802:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,pt	%icc, .L802
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
.L805:
	sra	%o0, %g1, %g2
	and	%g2, 1, %g2
	add	%g1, 1, %g1
	cmp	%g1, 16
	bne,pt	%icc, .L805
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
	brz,pn	%o0, .L808
	 mov	0, %g2
.L809:
	and	%o0, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%g2, %g1, %g2
	srl	%o0, 1, %o0
	cmp	%o0, 0
	bne,pt	%icc, .L809
	 add	%o1, %o1, %o1
.L808:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L813
	 mov	0, %g2
	brz,pn	%o1, .L819
	 nop
.L814:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	add	%g2, %g1, %g2
	add	%o0, %o0, %o0
	srlx	%o1, 1, %o1
	brnz,pt	%o1, .L814
	 srl	%o0, 0, %o0
.L813:
.L819:
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
	bgeu,pn	%icc, .L829
	 mov	1, %g1
	cmp	%o1, 0
.L835:
	bl,pn	%icc, .L834
	 cmp	%g1, 0
	add	%o1, %o1, %g2
	srl	%g2, 0, %o1
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L835
	 cmp	%o1, 0
	cmp	%g1, 0
.L834:
	be,pn	%icc, .L824
	 mov	0, %g2
.L829:
	ba,pt	%xcc, .L823
	 mov	0, %g2
.L826:
	srl	%g1, 1, %g1
.L836:
	cmp	%g1, 0
	be,pn	%icc, .L824
	 srlx	%o1, 1, %o1
.L823:
	cmp	%o0, %o1
	blu,a,pt %icc, .L836
	 srl	%g1, 1, %g1
	sub	%o0, %o1, %o0
	srl	%o0, 0, %o0
	ba,pt	%xcc, .L826
	 or	%g2, %g1, %g2
.L824:
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
	fbl,pn	%fcc1, .L838
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L838:
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
	fbl,pn	%fcc3, .L841
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L841:
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
	bl,pn	%icc, .L855
	 mov	0, %g5
.L846:
	brz,pn	%o1, .L847
	 mov	0, %g3
	mov	1, %g2
.L848:
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
	bne,pt	%icc, .L848
	 add	%g2, 1, %g2
.L847:
	sub	%g0, %g3, %g1
	cmp	%g5, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 sra	%g3, 0, %o0
.L855:
	sub	%g0, %o1, %o1
	sra	%o1, 0, %o1
	ba,pt	%xcc, .L846
	 mov	1, %g5
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	brlz,pn	%o0, .L874
	 mov	0, %o5
.L857:
	brlz,a,pn %o1, .L875
	 sub	%g0, %o1, %o1
.L858:
	mov	%o0, %g3
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L868
	 mov	1, %g2
	cmp	%g1, 0
.L878:
	bl,pn	%icc, .L877
	 cmp	%g2, 0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L878
	 cmp	%g1, 0
	cmp	%g2, 0
.L877:
	be,pn	%icc, .L862
	 mov	0, %o0
.L868:
	ba,pt	%xcc, .L861
	 mov	0, %o0
.L874:
	sub	%g0, %o0, %o0
	ba,pt	%xcc, .L857
	 mov	1, %o5
.L875:
	ba,pt	%xcc, .L858
	 xor	%o5, 1, %o5
.L876:
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L879:
	cmp	%g2, 0
	be,pn	%icc, .L862
	 srl	%g1, 1, %g1
.L861:
	cmp	%g3, %g1
	blu,a,pt %icc, .L879
	 srl	%g2, 1, %g2
	ba,pt	%xcc, .L876
	 sub	%g3, %g1, %g3
.L862:
	srl	%o0, 0, %o0
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brlz,pn	%o0, .L898
	 mov	0, %o5
.L881:
	mov	%o0, %g3
	srax	%o1, 63, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L893
	 mov	1, %g2
	cmp	%g1, 0
.L900:
	bl,pn	%icc, .L899
	 cmp	%g2, 0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,a,pt %icc, .L900
	 cmp	%g1, 0
	ba,pt	%xcc, .L899
	 cmp	%g2, 0
.L898:
	sub	%g0, %o0, %o0
	ba,pt	%xcc, .L881
	 mov	1, %o5
.L893:
	sub	%g3, %g1, %g4
.L901:
	cmp	%g3, %g1
	movgeu	%icc, %g4, %g3
	srl	%g2, 1, %g2
	srl	%g1, 1, %g1
	cmp	%g2, 0
.L899:
	bne,pt	%icc, .L901
	 sub	%g3, %g1, %g4
	srl	%g3, 0, %o0
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
	bgeu,pn	%icc, .L904
	 mov	1, %g1
	sll	%o1, 16, %g2
.L917:
	cmp	%g2, 0
	bl,pn	%icc, .L904
	 add	%g1, %g1, %g2
	sllx	%o1, 49, %o1
	srlx	%o1, 48, %o1
	mov	%g2, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g3
	sll	%g2, 16, %g2
	cmp	%g0, %g2
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,pt	%icc, .L917
	 sll	%o1, 16, %g2
.L904:
	sll	%g1, 16, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L905
	 mov	0, %g3
	mov	%g1, %g3
.L906:
	mov	%o0, %g1
	movre	%o2, %g3, %g1
	mov	%g1, %g3
	sllx	%g3, 48, %o0
	jmp	%o7+8
	 srlx	%o0, 48, %o0
.L908:
	srl	%g2, 17, %g2
.L918:
	mov	%g2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L906
	 srlx	%o1, 1, %o1
	sll	%g1, 16, %g2
.L905:
	cmp	%o0, %o1
	blu,a,pt %icc, .L918
	 srl	%g2, 17, %g2
	sub	%o0, %o1, %o0
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
	ba,pt	%xcc, .L908
	 or	%g1, %g3, %g3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	mov	1, %g1
	cmp	%o1, %o0
	bgeu,pn	%xcc, .L928
	 sethi	%hi(2147483648), %g4
	and	%o1, %g4, %g2
.L933:
	brnz,pn	%g2, .L921
	 mov	0, %g3
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	bne,a,pt %icc, .L933
	 and	%o1, %g4, %g2
.L921:
	brz,pn	%g1, .L923
	 mov	0, %g2
.L928:
	ba,pt	%xcc, .L922
	 mov	0, %g2
.L925:
	srlx	%g1, 1, %g1
.L934:
	brz,pn	%g1, .L923
	 srlx	%o1, 1, %o1
.L922:
	cmp	%o0, %o1
	blu,a,pt %xcc, .L934
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	ba,pt	%xcc, .L925
	 or	%g2, %g1, %g2
.L923:
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
	be,pt	%xcc, .L936
	 mov	%o0, %g1
	sll	%o0, %o1, %g1
	mov	0, %o0
.L937:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L941:
	jmp	%o7+8
	 nop
.L936:
	brz,pn	%o1, .L941
	 nop
	sll	%o0, %o1, %o0
	sub	%g0, %o1, %g2
	srl	%g1, %g2, %g2
	srax	%g1, 32, %g1
	sll	%g1, %o1, %g1
	ba,pt	%xcc, .L937
	 or	%g2, %g1, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L943
	 mov	0, %g1
	sllx	%o1, %o2, %o0
.L944:
	mov	%g1, %o1
.L947:
	jmp	%o7+8
	 nop
.L943:
	brz,pn	%o2, .L947
	 nop
	sllx	%o1, %o2, %g1
	sub	%g0, %o2, %g2
	srlx	%o1, %g2, %o1
	sllx	%o0, %o2, %o0
	ba,pt	%xcc, .L944
	 or	%o1, %o0, %o0
	.size	__ashlti3, .-__ashlti3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L949
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L950:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L954:
	jmp	%o7+8
	 nop
.L949:
	brz,pn	%o1, .L954
	 nop
	srax	%o0, 32, %g2
	sra	%g2, %o1, %o0
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %o1, %g1
	ba,pt	%xcc, .L950
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L956
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
.L957:
	mov	%g1, %o0
.L960:
	jmp	%o7+8
	 nop
.L956:
	brz,pn	%o2, .L960
	 nop
	srax	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L957
	 or	%o0, %o1, %o1
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
	bl,pn	%icc, .L966
	 mov	0, %g1
	bg,pn	%icc, .L966
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L966
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L966:
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
	bl,pn	%icc, .L972
	 mov	0, %g1
	bg,pn	%icc, .L972
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L972
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L972:
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
	bl,pn	%xcc, .L978
	 mov	0, %g1
	bg,pn	%xcc, .L978
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L978
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L978:
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
	brnz,pt	%i1, .L986
	 nop
	brz,pt	%i0, .L987
	 mov	0, %o0
	call	__ctzdi2, 0
	 mov	%i0, %o0
	ba,pt	%xcc, .L987
	 add	%o0, 65, %o0
.L986:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
.L987:
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
	be,pt	%xcc, .L991
	 mov	%o0, %g1
	srlx	%o0, 32, %g1
	srl	%g1, %o1, %g1
	mov	0, %o0
.L992:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L996:
	jmp	%o7+8
	 nop
.L991:
	brz,pn	%o1, .L996
	 nop
	srlx	%o0, 32, %g2
	srl	%g2, %o1, %o0
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g2
	srl	%g1, %o1, %g1
	ba,pt	%xcc, .L992
	 or	%g2, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L998
	 mov	0, %g1
	srlx	%o0, %o2, %o1
.L999:
	mov	%g1, %o0
.L1002:
	jmp	%o7+8
	 nop
.L998:
	brz,pn	%o2, .L1002
	 nop
	srlx	%o0, %o2, %g1
	sub	%g0, %o2, %g2
	sllx	%o0, %g2, %o0
	srlx	%o1, %o2, %o1
	ba,pt	%xcc, .L999
	 or	%o0, %o1, %o1
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
	ba,pt	%xcc, .L1018
	 ldd	[%g2+%lo(.LC30)], %f0
.L1016:
	srl	%g1, 31, %g2
.L1024:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1017
	 cmp	%o1, 0
	fmuld	%f8, %f8, %f8
.L1018:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L1016
	 fmuld	%f0, %f8, %f0
	ba,pt	%xcc, .L1024
	 srl	%g1, 31, %g2
.L1017:
	bl,a,pn	%icc, .L1023
	 sethi	%hi(.LC30), %g1
.L1015:
	jmp	%o7+8
	 nop
.L1023:
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
	ba,pt	%xcc, .L1028
	 ld	[%g2+%lo(.LC32)], %f0
.L1026:
	srl	%g1, 31, %g2
.L1034:
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1027
	 cmp	%o1, 0
	fmuls	%f1, %f1, %f1
.L1028:
	andcc	%g1, 1, %g0
	bne,a,pt %xcc, .L1026
	 fmuls	%f0, %f1, %f0
	ba,pt	%xcc, .L1034
	 srl	%g1, 31, %g2
.L1027:
	bl,a,pn	%icc, .L1033
	 sethi	%hi(.LC32), %g1
.L1025:
	jmp	%o7+8
	 nop
.L1033:
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
	blu,pn	%icc, .L1036
	 mov	0, %g1
	bgu,pn	%icc, .L1036
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1036
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1036:
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
	blu,pn	%icc, .L1042
	 mov	0, %g1
	bgu,pn	%icc, .L1042
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1042
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1042:
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
	blu,pn	%xcc, .L1048
	 mov	0, %g1
	bgu,pn	%xcc, .L1048
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1048
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1048:
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
