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
	and	%o2, 0xff, %o2
.L31:
	brz,pn	%o3, .L32
	 add	%o3, -1, %o3
	ldub	[%o1], %g1
	add	%o0, 1, %o0
	stb	%g1, [%o0-1]
	and	%g1, 0xff, %g1
	cmp	%g1, %o2
	bne,pt	%icc, .L31
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L32:
	jmp	%o7+8
	 mov	0, %o0
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	brnz,pt	%o2, .L34
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L36:
	brz,pn	%o2, .L37
	 add	%o0, 1, %o0
.L34:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L36
	 add	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L37:
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
.L44:
	brz,pn	%o2, .L46
	 add	%o2, -1, %o2
	ldub	[%o0], %g1
	add	%o0, 1, %o0
	ldub	[%o1], %g2
	cmp	%g1, %g2
	be,pt	%icc, .L44
	 add	%o1, 1, %o1
	sub	%g1, %g2, %o0
.L43:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L46:
	ba,pt	%xcc, .L43
	 mov	0, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L56
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L56:
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
	ba,pt	%xcc, .L58
	 add	%o0, -1, %g2
.L60:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L61
	 add	%o2, -1, %o2
.L58:
	cmp	%o2, %g2
	bne,pt	%xcc, .L60
	 mov	%o2, %o0
	mov	0, %o0
.L61:
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
	brz,pn	%i2, .L66
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L66:
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
	be,pn	%icc, .L74
	 stb	%g1, [%o0]
.L69:
	ldub	[%o1+1], %g1
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	sll	%g1, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L69
	 stb	%g1, [%o0]
.L74:
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
	bne,pt	%icc, .L76
	 ldub	[%o0], %g1
.L83:
	jmp	%o7+8
	 nop
.L78:
	add	%o0, 1, %o0
	cmp	%g2, 0
	be,pn	%icc, .L83
	 ldub	[%o0], %g1
.L76:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L78
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
.L86:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L88
	 cmp	%g1, 0
	bne,pt	%icc, .L86
	 add	%o0, 1, %o0
	mov	0, %o0
.L88:
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
	ldub	[%o0], %g3
	mov	1, %g1
	add	%o1, -1, %g4
	ldsb	[%o1], %g5
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g5
	bne,pn	%icc, .L96
	 ldub	[%o1], %o4
.L90:
	cmp	%g2, 0
	be,a,pn	%icc, .L97
	 and	%o4, 0xff, %o4
	ldub	[%o0+%g1], %g3
	add	%g1, 1, %g1
	ldsb	[%g4+%g1], %g5
	sll	%g3, 24, %g2
	sra	%g2, 24, %o5
	cmp	%o5, %g5
	be,pt	%icc, .L90
	 ldub	[%g4+%g1], %o4
.L96:
	and	%g3, 0xff, %o0
	and	%o4, 0xff, %o4
	sub	%o0, %o4, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L97:
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
	be,pn	%icc, .L101
	 mov	%o0, %g1
.L100:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L100
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sub	%g1, %o0, %o0
.L101:
	jmp	%o7+8
	 mov	0, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	brz,pn	%o2, .L104
	 mov	0, %g5
	ldub	[%o0], %g5
	add	%o2, -1, %o2
	mov	%o1, %g1
	cmp	%g5, 0
	bne,pt	%icc, .L107
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L113
	 ldub	[%o1], %o5
.L108:
	ldub	[%o0], %g5
	cmp	%g5, 0
	be,a,pn	%icc, .L106
	 ldub	[%g1+1], %o5
	mov	%o3, %g1
.L107:
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
	bne,pt	%icc, .L108
	 add	%g1, 1, %o3
.L106:
	sub	%g5, %o5, %g5
.L104:
.L115:
	jmp	%o7+8
	 sra	%g5, 0, %o0
.L113:
	ba,pt	%xcc, .L115
	 sub	%g5, %o5, %g5
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%xcc, .L120
	 and	%o2, -2, %o2
	add	%o0, %o2, %o2
.L118:
	ldub	[%o0+1], %g2
	add	%o0, 2, %o0
	add	%o1, 2, %o1
	cmp	%o0, %o2
	ldub	[%o0-2], %g1
	stb	%g2, [%o1-2]
	bne,pt	%xcc, .L118
	 stb	%g1, [%o1-1]
.L120:
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
	bne,pt	%icc, .L132
	 mov	1, %g3
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L132
	 sethi	%hi(-65536), %g1
	mov	0, %g3
	or	%g1, 7, %g1
	add	%o0, %g1, %g1
	cmp	%g1, 2
	movleu	%icc, 1, %g3
.L132:
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
	bleu,pn	%icc, .L142
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
	bne,pn	%icc, .L138
	 mov	1, %g1
	sethi	%hi(-57344), %g3
	sethi	%hi(7168), %g2
	add	%o0, %g3, %g3
	or	%g2, 1016, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L138
	 sethi	%hi(-65536), %g2
	sethi	%hi(1048576), %g3
	or	%g2, 4, %g2
	or	%g3, 3, %g3
	add	%o0, %g2, %g2
	cmp	%g2, %g3
	bgu,pn	%icc, .L138
	 mov	0, %g1
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	andn	%g1, %o0, %o0
	cmp	%g0, %o0
	addx	%g0, 0, %g1
.L138:
	jmp	%o7+8
	 and	%g1, 1, %o0
.L142:
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
	bleu,pt	%icc, .L144
	 mov	1, %g1
	or	%o0, 32, %o0
	mov	0, %g1
	add	%o0, -97, %o0
	cmp	%o0, 5
	movleu	%icc, 1, %g1
.L144:
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
	fbu,pn	%fcc0, .L155
	 nop
	fcmpd	%fcc1, %f2, %f2
	fbu,pn	%fcc1, .L151
	 nop
	fcmped	%fcc2, %f0, %f2
	fbule,pt %fcc2, .L154
	 nop
	jmp	%o7+8
	 fsubd	%f0, %f2, %f0
.L154:
	fzero	%f0
.L155:
	jmp	%o7+8
	 nop
.L151:
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
	fbu,pn	%fcc3, .L159
	 nop
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L160
	 nop
	fcmpes	%fcc1, %f1, %f3
	fbule,pt %fcc1, .L163
	 nop
	jmp	%o7+8
	 fsubs	%f1, %f3, %f0
.L163:
	jmp	%o7+8
	 fzeros	%f0
.L159:
	jmp	%o7+8
	 fmovs	%f1, %f0
.L160:
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
	fbu,a,pn %fcc2, .L164
	 fmovd	%f2, %f0
	fcmpd	%fcc3, %f2, %f2
	fbu,pn	%fcc3, .L164
	 nop
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L166
	 fcmped	%fcc0, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f2, %f0
.L164:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L166:
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
	fbu,pn	%fcc1, .L170
	 fmovs	%f3, %f0
	fcmps	%fcc2, %f3, %f3
	fbu,pn	%fcc2, .L170
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L176
	 nop
	fcmpes	%fcc3, %f1, %f3
	fmovsl	%fcc3, %f3, %f1
	fmovs	%f1, %f0
.L170:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L176:
	cmp	%g1, 0
	fmovsne	%icc, %f3, %f1
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f1, %f0
	ba,pt	%xcc, .L170
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
	be,pn	%xcc, .L180
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
	be,pn	%xcc, .L181
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
	be,pt	%icc, .L179
	 ldd	[%fp+1927], %f14
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L179:
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
.L180:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L181:
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
	fbu,a,pn %fcc0, .L189
	 fmovd	%f2, %f0
	fcmpd	%fcc1, %f2, %f2
	fbu,a,pn %fcc1, .L183
	 fmovd	%f0, %f2
	std	%f0, [%sp+2183]
	ldx	[%sp+2183], %g1
	std	%f2, [%sp+2183]
	ldx	[%sp+2183], %g2
	srlx	%g1, 63, %g1
	srlx	%g2, 63, %g2
	cmp	%g1, %g2
	be,a,pt	%icc, .L185
	 fcmped	%fcc2, %f0, %f2
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f2
.L183:
	fmovd	%f2, %f0
.L189:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L185:
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
	fbu,pn	%fcc3, .L190
	 fmovs	%f3, %f0
	fcmps	%fcc0, %f3, %f3
	fbu,pn	%fcc0, .L190
	 fmovs	%f1, %f0
	st	%f1, [%sp+2187]
	sethi	%hi(-2147483648), %g3
	lduw	[%sp+2187], %g1
	st	%f3, [%sp+2187]
	lduw	[%sp+2187], %g2
	and	%g1, %g3, %g1
	and	%g2, %g3, %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L196
	 nop
	fcmpes	%fcc1, %f1, %f3
	fmovsl	%fcc1, %f1, %f3
	fmovs	%f3, %f0
.L190:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L196:
	cmp	%g1, 0
	fmovsne	%icc, %f1, %f3
	add	%sp, 144, %sp
	jmp	%o7+8
	 fmovs	%f3, %f0
	ba,pt	%xcc, .L190
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
	be,pn	%xcc, .L200
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
	be,pn	%xcc, .L201
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
	be,pt	%icc, .L199
	 ldd	[%fp+1927], %f10
	cmp	%g1, 0
	fmovdne	%icc, %f12, %f8
	fmovdne	%icc, %f14, %f10
	fmovd	%f8, %f0
	return	%i7+8
	 fmovd	%f10, %f2
.L199:
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
.L200:
	ldd	[%fp+1919], %f0
	ldd	[%fp+1927], %f2
	return	%i7+8
	 nop
.L201:
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
	be,pn	%icc, .L206
	 or	%o0, %lo(s.0), %o0
	sethi	%hi(digits), %g4
	mov	%o0, %g2
	or	%g4, %lo(digits), %g4
.L205:
	and	%g1, 63, %g3
	add	%g2, 1, %g2
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L205
	 stb	%g3, [%g2-1]
	jmp	%o7+8
	 stb	%g0, [%g2]
.L206:
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
	brz,a,pn %o1, .L216
	 stx	%g0, [%o0+8]
	ldx	[%o1], %g1
	stx	%o1, [%o0+8]
	stx	%g1, [%o0]
	stx	%o0, [%o1]
	ldx	[%o0], %g1
	brnz,a,pt %g1, .L218
	 stx	%o0, [%g1+8]
.L218:
	jmp	%o7+8
	 nop
.L216:
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
	brz,pn	%g1, .L229
	 ldx	[%o0+8], %g2
	stx	%g2, [%g1+8]
	ldx	[%o0+8], %g2
.L229:
	brnz,a,pt %g2, .L228
	 stx	%g1, [%g2]
.L228:
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
	brz,pn	%l1, .L231
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L233
	 mov	0, %l0
.L242:
	cmp	%l1, %l0
	be,pn	%xcc, .L243
	 add	%l1, 1, %g1
.L233:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	mov	%i5, %i0
	add	%l0, 1, %l0
	cmp	%o0, 0
	bne,pt	%icc, .L242
	 add	%i5, %i3, %i5
.L245:
	return	%i7+8
	 nop
.L231:
	add	%l1, 1, %g1
.L243:
	stx	%g1, [%i2]
	mulx	%i3, %l1, %l1
	brz,pn	%i3, .L245
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
	brz,pn	%l0, .L247
	 mov	0, %i5
	ba,pt	%xcc, .L256
	 mov	%i1, %o1
.L254:
	cmp	%l0, %i5
	be,pn	%xcc, .L255
	 mov	0, %i2
	mov	%i1, %o1
.L256:
	call	%i4, 0
	 mov	%i0, %o0
	mov	%i1, %i2
	add	%i5, 1, %i5
	cmp	%o0, 0
	bne,pt	%icc, .L254
	 add	%i1, %i3, %i1
	return	%i7+8
	 mov	%o2, %o0
.L247:
	mov	0, %i2
.L255:
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
	ba,pt	%xcc, .L279
	 mov	0, %g3
.L280:
	mov	0, %g3
	add	%o0, 1, %o0
.L279:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g4
	xor	%g1, 32, %g1
	cmp	%g4, 4
	movleu	%icc, 1, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L280
	 ldub	[%o0+1], %g2
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be,pn	%icc, .L261
	 cmp	%g2, 45
	bne,a,pt %icc, .L281
	 ldsb	[%o0], %g1
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L270
	 ldub	[%o0+1], %g3
	mov	1, %o5
.L264:
	mov	0, %o0
.L267:
	ldsb	[%g4+1], %g5
	sll	%o0, 2, %g1
	add	%g3, -48, %g3
	add	%g1, %o0, %g1
	add	%g4, 1, %g4
	sll	%g3, 24, %g2
	add	%g1, %g1, %g1
	sra	%g2, 24, %g2
	add	%g5, -48, %g5
	ldub	[%g4], %g3
	cmp	%g5, 9
	bleu,pt	%icc, .L267
	 sub	%g1, %g2, %o0
	sub	%g2, %g1, %g2
	cmp	%o5, 0
	move	%icc, %g2, %o0
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L281:
	mov	%o0, %g4
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L264
	 ldub	[%o0], %g3
.L270:
	mov	0, %o0
.L282:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L261:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g4
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L264
	 ldub	[%o0+1], %g3
	ba,pt	%xcc, .L282
	 mov	0, %o0
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	05
atol:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L304
	 mov	0, %g3
.L305:
	mov	0, %g3
	add	%o0, 1, %o0
.L304:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g4
	xor	%g1, 32, %g1
	cmp	%g4, 4
	movleu	%icc, 1, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L305
	 ldub	[%o0+1], %g2
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be,pn	%icc, .L286
	 cmp	%g2, 45
	bne,a,pt %icc, .L306
	 ldsb	[%o0], %g1
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L295
	 ldub	[%o0+1], %g2
	mov	1, %o5
.L289:
	mov	0, %g5
.L292:
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
	bleu,pt	%icc, .L292
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L306:
	mov	%o0, %g3
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L289
	 ldub	[%o0], %g2
.L295:
	mov	0, %g5
.L307:
	jmp	%o7+8
	 mov	%g5, %o0
.L286:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L289
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L307
	 mov	0, %g5
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	ldub	[%o0], %g2
	ba,pt	%xcc, .L327
	 mov	0, %g3
.L328:
	mov	0, %g3
	add	%o0, 1, %o0
.L327:
	sll	%g2, 24, %g2
	sra	%g2, 24, %g1
	add	%g1, -9, %g4
	xor	%g1, 32, %g1
	cmp	%g4, 4
	movleu	%icc, 1, %g3
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	orcc	%g3, %g1, %g0
	bne,a,pt %icc, .L328
	 ldub	[%o0+1], %g2
	sra	%g2, 24, %g2
	cmp	%g2, 43
	be,pn	%icc, .L311
	 cmp	%g2, 45
	be,a,pt	%icc, .L329
	 ldsb	[%o0+1], %g1
	ldsb	[%o0], %g1
	mov	%o0, %g3
	mov	0, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L319
	 ldub	[%o0], %g2
.L313:
	mov	0, %g5
.L316:
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
	bleu,pt	%icc, .L316
	 sub	%o0, %g1, %g5
	sub	%g1, %o0, %g1
	cmp	%o5, 0
	move	%icc, %g1, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L329:
	add	%o0, 1, %g3
	mov	1, %o5
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu,pt	%icc, .L313
	 ldub	[%o0+1], %g2
.L319:
	mov	0, %g5
	jmp	%o7+8
	 mov	%g5, %o0
.L311:
	ldsb	[%o0+1], %g1
	add	%o0, 1, %g3
	add	%g1, -48, %g1
	cmp	%g1, 9
	bgu,pn	%icc, .L319
	 ldub	[%o0+1], %g2
	ba,pt	%xcc, .L313
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -176, %sp
.L340:
	brz,pn	%i2, .L342
	 mov	0, %i5
.L341:
	srlx	%i2, 1, %l0
	mov	%i0, %o0
	mulx	%l0, %i3, %i5
	add	%i1, %i5, %i5
	add	%i2, -1, %i2
	mov	%i5, %o1
	call	%i4, 0
	 sub	%i2, %l0, %i2
	cmp	%o0, 0
	bl,a,pn	%icc, .L340
	 mov	%l0, %i2
	be,pn	%icc, .L330
	 nop
	brnz,pt	%i2, .L341
	 add	%i5, %i3, %i1
	mov	0, %i5
.L330:
.L342:
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
	be,pn	%icc, .L353
	 mov	0, %i2
.L344:
	sra	%l0, 1, %i2
.L354:
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
	be,pn	%icc, .L343
	 nop
	ble,pn	%icc, .L346
	 cmp	%l0, 0
	bne,pt	%icc, .L344
	 add	%i2, %i3, %i1
	mov	0, %i2
.L343:
.L353:
	return	%i7+8
	 mov	%o2, %o0
.L346:
	orcc	%l1, 0, %l0
	bne,a,pt %icc, .L354
	 sra	%l0, 1, %i2
	ba,pt	%xcc, .L353
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
	be,pn	%icc, .L366
	 nop
.L363:
	cmp	%g1, %o1
	be,pn	%icc, .L369
	 nop
	lduw	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L363
	 add	%o0, 4, %o0
.L366:
	jmp	%o7+8
	 mov	0, %o0
.L369:
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
	bne,pn	%icc, .L372
	 add	%o1, -4, %g4
	cmp	%g2, 0
.L379:
	be,pn	%icc, .L378
	 cmp	%g2, %g3
	lduw	[%o0+%g1], %g2
	add	%g1, 4, %g1
	lduw	[%g4+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L379
	 cmp	%g2, 0
.L372:
	cmp	%g2, %g3
.L378:
	bl,pt	%icc, .L374
	 mov	-1, %o0
	mov	0, %o0
	movg	%icc, 1, %o0
.L374:
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
.L381:
	lduw	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L381
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
	be,pn	%icc, .L386
	 nop
	mov	%o0, %g1
.L385:
	lduw	[%g1+4], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L385
	 add	%g1, 4, %g1
	sub	%g1, %o0, %o0
	jmp	%o7+8
	 srax	%o0, 2, %o0
.L386:
	jmp	%o7+8
	 mov	0, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
.L391:
	brz,pn	%o2, .L394
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
	bne,pt	%icc, .L391
	 add	%o1, 4, %o1
	cmp	%g1, %g2
	bge,a,pt %icc, .L393
	 mov	0, %o0
	mov	-1, %o0
.L390:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L393:
	ba,pt	%xcc, .L390
	 movg	%icc, 1, %o0
.L394:
	ba,pt	%xcc, .L390
	 mov	0, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	brz,pn	%o2, .L403
	 nop
.L408:
	lduw	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L409
	 add	%o2, -1, %o2
	brnz,pt	%o2, .L408
	 add	%o0, 4, %o0
.L403:
	jmp	%o7+8
	 mov	0, %o0
.L409:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
.L413:
	brz,pn	%o2, .L416
	 add	%o2, -1, %o2
	lduw	[%o0], %g2
	add	%o0, 4, %o0
	lduw	[%o1], %g1
	cmp	%g2, %g1
	be,pt	%icc, .L413
	 add	%o1, 4, %o1
	mov	0, %o0
	movg	%icc, 1, %o0
	movl	%icc, -1, %o0
.L412:
	jmp	%o7+8
	 sra	%o0, 0, %o0
.L416:
	ba,pt	%xcc, .L412
	 mov	0, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -176, %sp
	brz,pn	%i2, .L426
	 nop
	sllx	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L426:
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
	be,pn	%xcc, .L444
	 nop
	sub	%o0, %o1, %g2
	sllx	%o2, 2, %g3
	cmp	%g2, %g3
	bgeu,pt	%xcc, .L441
	 add	%o2, -1, %g1
	brz,pn	%o2, .L444
	 nop
	sllx	%g1, 2, %g1
	lduw	[%o1+%g1], %g2
.L443:
	st	%g2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %xcc, .L443
	 lduw	[%o1+%g1], %g2
.L445:
	jmp	%o7+8
	 nop
.L441:
	brz,pn	%o2, .L445
	 mov	0, %g2
.L430:
	lduw	[%o1+%g2], %g3
	add	%g1, -1, %g1
	cmp	%g1, -1
	st	%g3, [%o0+%g2]
	bne,pt	%xcc, .L430
	 add	%g2, 4, %g2
	jmp	%o7+8
	 nop
.L444:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	brz,pn	%o2, .L453
	 add	%o2, -1, %g1
	mov	%o0, %g2
.L448:
	add	%g1, -1, %g1
	st	%o1, [%g2]
	cmp	%g1, -1
	bne,pt	%xcc, .L448
	 add	%g2, 4, %g2
.L453:
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
	bgeu,pt	%xcc, .L455
	 nop
	brz,pn	%o2, .L469
	 nop
	add	%o0, -1, %o0
	add	%o1, -1, %o1
	ldub	[%o0+%o2], %g1
.L467:
	stb	%g1, [%o1+%o2]
	add	%o2, -1, %o2
	brnz,a,pt %o2, .L467
	 ldub	[%o0+%o2], %g1
	jmp	%o7+8
	 nop
.L455:
	be,pn	%xcc, .L469
	 nop
	brz,pn	%o2, .L469
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L468:
	stb	%g2, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %xcc, .L468
	 ldub	[%o0+%g1], %g2
.L469:
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
	ba,pt	%xcc, .L487
	 mov	0, %g1
.L490:
	cmp	%g1, 32
	be,a,pn	%icc, .L489
	 mov	0, %g1
.L487:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%xcc, .L490
	 add	%g1, 1, %g1
	jmp	%o7+8
	 sra	%g1, 0, %o0
.L489:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	brz,pn	%o0, .L492
	 mov	0, %g2
	andcc	%o0, 1, %g2
	bne,pn	%icc, .L492
	 nop
	mov	1, %g2
.L493:
	sra	%o0, 1, %g1
	add	%g2, 1, %g2
	andcc	%g1, 1, %g0
	be,pt	%xcc, .L493
	 sra	%g1, 0, %o0
.L492:
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
	fbl,pt	%fcc2, .L499
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	mov	0, %o0
	ld	[%g1+%lo(.LC1)], %f8
	fcmpes	%fcc3, %f1, %f8
	movg	%fcc3, 1, %o0
.L499:
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
	fbl,pt	%fcc0, .L502
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	mov	0, %o0
	ldd	[%g1+%lo(.LC5)], %f8
	fcmped	%fcc1, %f0, %f8
	movg	%fcc1, 1, %o0
.L502:
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
	brnz,pt	%o0, .L505
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
.L505:
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
	fbu,pn	%fcc2, .L509
	 nop
	fadds	%f1, %f1, %f8
	fcmps	%fcc3, %f8, %f1
	fbe,pt	%fcc3, .L509
	 nop
	sethi	%hi(.LC12), %g1
	cmp	%o1, 0
	ld	[%g1+%lo(.LC12)], %f8
	sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f9
	fmovsl	%icc, %f9, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L523
	 srl	%o1, 31, %g1
.L512:
	fmuls	%f1, %f8, %f1
	srl	%o1, 31, %g1
.L523:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L509
	 nop
	fmuls	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L512
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L522:
	fmuls	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L512
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L522
	 add	%g1, %o1, %o1
.L509:
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
	fbu,pn	%fcc0, .L540
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L540
	 nop
	sethi	%hi(.LC16), %g1
	cmp	%o1, 0
	ldd	[%g1+%lo(.LC16)], %f8
	sethi	%hi(.LC17), %g1
	ldd	[%g1+%lo(.LC17)], %f10
	fmovdl	%icc, %f10, %f8
	andcc	%o1, 1, %g0
	be,pt	%xcc, .L539
	 srl	%o1, 31, %g1
.L528:
	fmuld	%f0, %f8, %f0
	srl	%o1, 31, %g1
.L539:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	brz,pn	%o1, .L540
	 nop
	fmuld	%f8, %f8, %f8
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L528
	 srl	%o1, 31, %g1
	add	%g1, %o1, %o1
.L538:
	fmuld	%f8, %f8, %f8
	sra	%o1, 1, %o1
	andcc	%o1, 1, %g0
	bne,pt	%xcc, .L528
	 srl	%o1, 31, %g1
	ba,pt	%xcc, .L538
	 add	%g1, %o1, %o1
.L540:
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
	be,pn	%xcc, .L542
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
	brnz,pt	%o0, .L560
	 ldd	[%fp+1727], %f0
	sethi	%hi(.LC20), %g1
	cmp	%i2, 0
	ldx	[%g1+%lo(.LC20)], %i4
	bl,pn	%icc, .L557
	 ldx	[%g1+%lo(.LC20+8)], %i5
.L543:
	andcc	%i2, 1, %g0
	be,pt	%xcc, .L561
	 srl	%i2, 31, %g1
.L545:
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
.L561:
	add	%g1, %i2, %i2
	sra	%i2, 1, %i2
	brz,pn	%i2, .L542
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
	bne,pt	%xcc, .L545
	 add	%g1, %i2, %g1
	add	%fp, 1743, %o2
.L559:
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
	bne,pt	%xcc, .L545
	 add	%g1, %i2, %g1
	ba,pt	%xcc, .L559
	 add	%fp, 1743, %o2
.L542:
	ldd	[%fp+1727], %f0
.L560:
	ldd	[%fp+1735], %f2
	return	%i7+8
	 nop
.L557:
	sethi	%hi(.LC21), %g1
	ldx	[%g1+%lo(.LC21)], %i4
	ba,pt	%xcc, .L543
	 ldx	[%g1+%lo(.LC21+8)], %i5
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	brz,pn	%o2, .L570
	 nop
	mov	0, %g1
	ldub	[%o0+%g1], %g2
.L569:
	ldub	[%o1+%g1], %g3
	xor	%g2, %g3, %g2
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o2
	bne,a,pt %xcc, .L569
	 ldub	[%o0+%g1], %g2
.L570:
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
	be,pn	%icc, .L576
	 mov	%o0, %g1
.L573:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L573
	 add	%g1, 1, %g1
.L576:
	brz,pn	%o2, .L575
	 nop
	ldub	[%o1], %g2
	add	%g1, 1, %g1
	add	%o2, -1, %o2
	stb	%g2, [%g1-1]
	sll	%g2, 24, %g2
	cmp	%g2, 0
	bne,pt	%icc, .L576
	 add	%o1, 1, %o1
	jmp	%o7+8
	 nop
.L575:
	jmp	%o7+8
	 stb	%g0, [%g1]
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	brz,pn	%o1, .L584
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L591:
	cmp	%g2, 0
	bne,a,pn %icc, .L587
	 add	%g1, 1, %g1
.L584:
	jmp	%o7+8
	 mov	%g1, %o0
.L587:
	cmp	%o1, %g1
	bne,a,pt %xcc, .L591
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L584
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
	be,a,pn	%icc, .L599
	 mov	0, %o0
.L593:
	sra	%g3, 24, %g3
	ba,pt	%xcc, .L596
	 mov	%o1, %g1
.L595:
	cmp	%g2, %g3
	be,pn	%icc, .L599
	 nop
.L596:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L595
	 add	%g1, 1, %g1
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g3
	cmp	%g3, 0
	bne,pt	%icc, .L593
	 add	%o0, 1, %o0
	mov	0, %o0
.L599:
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
	ldub	[%o1], %o2
	sll	%o2, 24, %o2
	cmp	%o2, 0
	be,pn	%icc, .L615
	 mov	%o0, %g1
	mov	%o1, %g2
.L606:
	ldsb	[%g2+1], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L606
	 add	%g2, 1, %g2
	sub	%g2, %o1, %g2
	brz,pn	%g2, .L624
	 mov	%g1, %o0
	sra	%o2, 24, %o2
	add	%o1, -1, %o0
	ba,pt	%xcc, .L612
	 add	%o0, %g2, %o0
.L623:
	cmp	%g3, 0
	be,pn	%icc, .L622
	 add	%g1, 1, %g1
.L612:
	ldsb	[%g1], %g3
	cmp	%g3, %o2
	bne,pt	%icc, .L623
	 ldub	[%g1], %g2
	mov	%o1, %g3
	mov	%g1, %o4
	ba,pt	%xcc, .L608
	 and	%g2, 0xff, %g2
.L610:
	ldub	[%o4], %g2
	cmp	%g2, 0
	be,pn	%icc, .L609
	 add	%g3, 1, %g3
.L608:
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
	bne,pt	%icc, .L610
	 add	%o4, 1, %o4
.L609:
	ldub	[%g3], %g3
	cmp	%g2, %g3
	be,a,pn	%icc, .L624
	 mov	%g1, %o0
	ba,pt	%xcc, .L612
	 add	%g1, 1, %g1
.L622:
	jmp	%o7+8
	 mov	0, %o0
.L615:
	mov	%g1, %o0
.L624:
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
	fbl,a,pn %fcc2, .L635
	 fcmped	%fcc3, %f2, %f8
	fcmped	%fcc0, %f0, %f8
	fbule,pn %fcc0, .L636
	 nop
	fcmped	%fcc1, %f2, %f8
	fbl,pn	%fcc1, .L628
	 nop
.L636:
	jmp	%o7+8
	 nop
.L635:
	fbule,pt %fcc3, .L636
	 nop
.L628:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	brz,pn	%o3, .L653
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu,a,pn %xcc, .L653
	 mov	0, %o0
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,pn	%xcc, .L653
	 mov	0, %o0
	ldsb	[%o2], %g5
	mov	%g2, %o0
.L654:
	add	%g2, 1, %g2
	ldub	[%g2-1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, %g5
	be,pn	%icc, .L649
	 cmp	%o1, %g2
.L652:
	bgeu,a,pt %xcc, .L654
	 mov	%g2, %o0
	jmp	%o7+8
	 mov	0, %o0
.L649:
	cmp	%o3, 1
	be,pn	%xcc, .L653
	 nop
	ba,pt	%xcc, .L640
	 mov	1, %g1
.L641:
	cmp	%o3, %g1
	be,pn	%xcc, .L653
	 nop
.L640:
	ldub	[%o0+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be,pt	%icc, .L641
	 add	%g1, 1, %g1
	ba,pt	%xcc, .L652
	 cmp	%o1, %g2
.L653:
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
	brz,pn	%i2, .L656
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L656:
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
	fbl,pn	%fcc2, .L682
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc1, %f0, %f10
	fbul,pn	%fcc1, .L683
	 mov	0, %g2
.L663:
	sethi	%hi(.LC27), %g3
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f10
	sethi	%hi(.LC26), %g3
	ldd	[%g3+%lo(.LC26)], %f8
.L669:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc0, %f0, %f8
	fbge,pt	%fcc0, .L669
	 add	%g1, 1, %g1
	fnegd	%f0, %f8
	cmp	%g2, 0
	st	%g1, [%o1]
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L683:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f10
	fcmped	%fcc2, %f0, %f10
	fbuge,pt %fcc2, .L666
	 nop
	fcmpd	%fcc3, %f0, %f8
	fbne,a,pn %fcc3, .L664
	 fmovd	%f0, %f10
.L666:
	jmp	%o7+8
	 st	%g0, [%o1]
.L682:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f8
	fcmped	%fcc3, %f0, %f8
	fbug,pn	%fcc3, .L684
	 fnegd	%f0, %f10
	fmovd	%f10, %f0
	ba,pt	%xcc, .L663
	 mov	1, %g2
.L684:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f8
	fcmped	%fcc0, %f0, %f8
	fbule,pt %fcc0, .L666
	 nop
	mov	1, %g2
.L664:
	sethi	%hi(.LC27), %g3
	fmovd	%f10, %f0
	mov	0, %g1
	ldd	[%g3+%lo(.LC27)], %f8
.L671:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f8
	fbl,pt	%fcc1, .L671
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
	brz,pn	%g2, .L691
	 mov	0, %o0
.L687:
	and	%g2, 1, %g1
	srlx	%g2, 1, %g2
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	add	%o1, %o1, %o1
	brnz,pt	%g2, .L687
	 add	%o0, %g1, %o0
.L691:
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
	blu,pt	%icc, .L693
	 mov	1, %g1
	ba,pt	%xcc, .L699
	 mov	0, %g2
.L696:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L695
	 cmp	%g1, 0
.L693:
	cmp	%o1, 0
	bge,pt	%icc, .L696
	 add	%o1, %o1, %g2
.L694:
	mov	0, %g2
.L699:
	cmp	%o0, %o1
	blu,pt	%icc, .L698
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L698:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L699
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L695:
	bne,pt	%icc, .L694
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
	srax	%i0, 63, %g2
	mov	63, %g1
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
	blu,pt	%xcc, .L723
	 srl	%o2, 3, %g3
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L734
	 add	%o2, -1, %g1
.L723:
	srl	%g3, 0, %g4
	mov	0, %g2
	cmp	%g3, 0
	be,pn	%icc, .L722
	 sllx	%g4, 3, %g4
	ldx	[%o1+%g2], %g3
.L736:
	stx	%g3, [%o0+%g2]
	add	%g2, 8, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L736
	 ldx	[%o1+%g2], %g3
.L722:
	cmp	%g1, %o2
	bgeu,pn	%icc, .L739
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L737:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bgu,a,pt %icc, .L737
	 ldub	[%o1+%g1], %g2
.L740:
	jmp	%o7+8
	 nop
.L734:
	brz,pn	%o2, .L740
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L738:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L738
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L739:
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
	blu,pt	%xcc, .L745
	 srl	%o2, 1, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%xcc, .L758
	 add	%o2, -1, %g1
.L745:
	srl	%g2, 0, %g3
	mov	0, %g1
	cmp	%g2, 0
	be,pn	%icc, .L744
	 add	%g3, %g3, %g3
	lduh	[%o1+%g1], %g2
.L760:
	sth	%g2, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g3, %g1
	bne,a,pt %xcc, .L760
	 lduh	[%o1+%g1], %g2
.L744:
	andcc	%o2, 1, %g0
	be,pt	%xcc, .L762
	 nop
	add	%o2, -1, %o2
	srl	%o2, 0, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L758:
	brz,pn	%o2, .L763
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L761:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L761
	 ldub	[%o1+%g1], %g2
.L763:
	jmp	%o7+8
	 nop
.L762:
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
	blu,pt	%xcc, .L768
	 srl	%o2, 2, %g3
	add	%o1, %o2, %g2
	cmp	%o0, %g2
	bleu,a,pt %xcc, .L779
	 add	%o2, -1, %g1
.L768:
	srl	%g3, 0, %g4
	mov	0, %g2
	cmp	%g3, 0
	be,pn	%icc, .L767
	 sllx	%g4, 2, %g4
	lduw	[%o1+%g2], %g3
.L781:
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cmp	%g4, %g2
	bne,a,pt %xcc, .L781
	 lduw	[%o1+%g2], %g3
.L767:
	cmp	%g1, %o2
	bgeu,pn	%icc, .L784
	 nop
	srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L782:
	stb	%g2, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bgu,a,pt %icc, .L782
	 ldub	[%o1+%g1], %g2
.L785:
	jmp	%o7+8
	 nop
.L779:
	brz,pn	%o2, .L785
	 srl	%g1, 0, %g1
	ldub	[%o1+%g1], %g2
.L783:
	stb	%g2, [%o0+%g1]
	add	%g1, -1, %g1
	cmp	%g1, -1
	bne,a,pt %xcc, .L783
	 ldub	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L784:
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
	brlz,pn	%o0, .L794
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtod	%f8, %f0
.L794:
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
	brlz,pn	%o0, .L797
	 srlx	%o0, 1, %g1
	stx	%o0, [%sp+2183]
	ldd	[%sp+2183], %f8
	add	%sp, 144, %sp
	jmp	%o7+8
	 fxtos	%f8, %f0
.L797:
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
	bne,pn	%icc, .L818
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L802
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L818
	 mov	13, %g1
	sra	%o0, 1, %g1
	cmp	%g1, 0
	bne,a,pn %icc, .L818
	 mov	14, %g1
	movre	%o0, 1, %g1
	add	%g1, 15, %g1
.L802:
.L818:
	jmp	%o7+8
	 and	%g1, 31, %o0
	ba,pt	%xcc, .L802
	 mov	12, %g1
	ba,pt	%xcc, .L802
	 mov	3, %g1
	ba,pt	%xcc, .L802
	 mov	5, %g1
	ba,pt	%xcc, .L802
	 mov	7, %g1
	ba,pt	%xcc, .L802
	 mov	9, %g1
	ba,pt	%xcc, .L802
	 mov	11, %g1
	ba,pt	%xcc, .L802
	 mov	14, %g1
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%xcc, .L822
	 andcc	%o0, 2, %g0
	bne,pn	%xcc, .L823
	 andcc	%o0, 4, %g0
	bne,pn	%xcc, .L824
	 andcc	%o0, 8, %g0
	bne,pn	%xcc, .L825
	 andcc	%o0, 16, %g0
	bne,pn	%xcc, .L826
	 andcc	%o0, 32, %g0
	bne,pn	%xcc, .L827
	 andcc	%o0, 64, %g0
	bne,pn	%xcc, .L828
	 andcc	%o0, 128, %g0
	bne,pn	%xcc, .L829
	 andcc	%o0, 256, %g0
	bne,pn	%xcc, .L830
	 andcc	%o0, 512, %g0
	bne,pn	%xcc, .L831
	 andcc	%o0, 1024, %g0
	bne,pn	%xcc, .L832
	 andcc	%o0, 2048, %g0
	bne,pn	%xcc, .L833
	 sethi	%hi(4096), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L834
	 sethi	%hi(8192), %g1
	andcc	%g1, %o0, %g0
	bne,pn	%icc, .L835
	 sethi	%hi(16384), %g1
	andcc	%g1, %o0, %g0
	bne,a,pn %icc, .L838
	 mov	14, %o0
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o0
	add	%o0, 15, %o0
.L821:
.L838:
	jmp	%o7+8
	 and	%o0, 31, %o0
.L822:
	ba,pt	%xcc, .L821
	 mov	0, %o0
.L823:
	ba,pt	%xcc, .L821
	 mov	1, %o0
.L834:
	ba,pt	%xcc, .L821
	 mov	12, %o0
.L824:
	ba,pt	%xcc, .L821
	 mov	2, %o0
.L825:
	ba,pt	%xcc, .L821
	 mov	3, %o0
.L826:
	ba,pt	%xcc, .L821
	 mov	4, %o0
.L827:
	ba,pt	%xcc, .L821
	 mov	5, %o0
.L828:
	ba,pt	%xcc, .L821
	 mov	6, %o0
.L829:
	ba,pt	%xcc, .L821
	 mov	7, %o0
.L830:
	ba,pt	%xcc, .L821
	 mov	8, %o0
.L831:
	ba,pt	%xcc, .L821
	 mov	9, %o0
.L832:
	ba,pt	%xcc, .L821
	 mov	10, %o0
.L833:
	ba,pt	%xcc, .L821
	 mov	11, %o0
.L835:
	ba,pt	%xcc, .L821
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
	fbge,a,pn %fcc2, .L845
	 fsubs	%f1, %f8, %f1
	fstox	%f1, %f8
	std	%f8, [%sp+2183]
	ldx	[%sp+2183], %o0
	jmp	%o7+8
	 add	%sp, 144, %sp
.L845:
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
	brz,pn	%o0, .L849
	 mov	0, %g2
.L850:
	and	%o0, 1, %g1
	srl	%o0, 1, %o0
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	cmp	%o0, 0
	add	%g2, %g1, %g2
	bne,pt	%icc, .L850
	 add	%o1, %o1, %o1
.L849:
	jmp	%o7+8
	 srl	%g2, 0, %o0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	brz,pn	%o0, .L854
	 mov	0, %g2
	brz,pn	%o1, .L854
	 nop
.L855:
	and	%o1, 1, %g1
	add	%o0, %o0, %g3
	srlx	%o1, 1, %o1
	sub	%g0, %g1, %g1
	and	%g1, %o0, %g1
	srl	%g3, 0, %o0
	brnz,pt	%o1, .L855
	 add	%g2, %g1, %g2
.L854:
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
	blu,pt	%icc, .L862
	 mov	1, %g1
	ba,pt	%xcc, .L868
	 mov	0, %g2
.L865:
	add	%g1, %g1, %g1
	cmp	%g2, %o0
	addx	%g0, 0, %g3
	srl	%g2, 0, %o1
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L864
	 cmp	%g1, 0
.L862:
	cmp	%o1, 0
	bge,pt	%icc, .L865
	 add	%o1, %o1, %g2
.L863:
	mov	0, %g2
.L868:
	cmp	%o0, %o1
	blu,pt	%icc, .L867
	 sub	%o0, %o1, %g3
	srl	%g3, 0, %o0
	or	%g2, %g1, %g2
.L867:
	srl	%g1, 1, %g1
	cmp	%g1, 0
	bne,pt	%icc, .L868
	 srlx	%o1, 1, %o1
	mov	%o0, %g1
	movre	%o2, %g2, %g1
	jmp	%o7+8
	 srl	%g1, 0, %o0
.L864:
	bne,pt	%icc, .L863
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
	fbl,pn	%fcc3, .L878
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L878:
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
	fbl,pn	%fcc1, .L881
	 mov	-1, %o0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L881:
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
	bl,a,pn	%icc, .L895
	 sub	%g0, %o1, %o1
	brz,pn	%o1, .L888
	 mov	0, %g4
	mov	0, %o5
.L887:
	mov	1, %g2
	mov	0, %g4
.L889:
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
	bne,pt	%icc, .L889
	 sra	%g3, 0, %o1
	sub	%g0, %g4, %g1
	cmp	%o5, 0
	movne	%icc, %g1, %g4
.L888:
	jmp	%o7+8
	 sra	%g4, 0, %o0
.L895:
	mov	1, %o5
	ba,pt	%xcc, .L887
	 sra	%o1, 0, %o1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	brlz,pn	%o0, .L913
	 mov	0, %o5
.L897:
	brgez,pt %o1, .L914
	 mov	%o0, %g3
	sub	%g0, %o1, %o1
	xor	%o5, 1, %o5
.L914:
	mov	%o1, %g1
	cmp	%o0, %o1
	bleu,pn	%icc, .L900
	 mov	1, %g2
	cmp	%g1, 0
.L915:
	bl,pn	%icc, .L904
	 mov	0, %o0
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L915
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L901
	 mov	0, %o0
.L900:
	mov	0, %o0
.L904:
	cmp	%g3, %g1
	blu,a,pt %icc, .L916
	 srl	%g2, 1, %g2
	sub	%g3, %g1, %g3
	or	%o0, %g2, %o0
	srl	%g2, 1, %g2
.L916:
	cmp	%g2, 0
	bne,pt	%icc, .L904
	 srl	%g1, 1, %g1
	srl	%o0, 0, %o0
.L901:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L913:
	sub	%g0, %o0, %o0
	ba,pt	%xcc, .L897
	 mov	1, %o5
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	brgez,pt %o0, .L918
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L918:
	srax	%o1, 63, %g1
	mov	%o0, %g3
	xor	%g1, %o1, %o1
	mov	1, %g2
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	bleu,pn	%icc, .L924
	 mov	%o1, %g1
	cmp	%g1, 0
.L936:
	bl,pn	%icc, .L935
	 sub	%g3, %g1, %g4
	add	%g1, %g1, %g1
	add	%g2, %g2, %g2
	cmp	%g1, %g3
	addx	%g0, 0, %g5
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	andcc	%g5, %g4, %g0
	bne,pt	%icc, .L936
	 cmp	%g1, 0
	cmp	%g2, 0
	be,pn	%icc, .L937
	 srl	%g3, 0, %o0
.L924:
	sub	%g3, %g1, %g4
.L935:
	cmp	%g1, %g3
	srl	%g2, 1, %g2
	movleu	%icc, %g4, %g3
	cmp	%g2, 0
	bne,pt	%icc, .L924
	 srl	%g1, 1, %g1
	srl	%g3, 0, %o0
.L937:
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
	blu,pt	%icc, .L939
	 mov	1, %g4
	ba,pt	%xcc, .L1018
	 mov	1, %o5
.L942:
	cmp	%g1, %o0
	addx	%g0, 0, %o4
	cmp	%g0, %g5
	addx	%g0, 0, %g2
	andcc	%o4, %g2, %g0
	be,pn	%icc, .L941
	 cmp	%o3, 0
	mov	%g3, %g4
	mov	%g1, %o1
.L939:
	sllx	%o1, 49, %g1
	add	%g4, %g4, %g3
	sll	%g3, 16, %g5
	mov	%g3, %o5
	sll	%o1, 16, %g2
	srlx	%g1, 48, %g1
	cmp	%g2, 0
	bge,pt	%icc, .L942
	 srl	%g5, 16, %o3
	cmp	%o0, %o1
	blu,pt	%icc, .L965
	 mov	0, %o5
	sub	%o0, %o1, %o0
	mov	%g4, %o5
	sllx	%o0, 48, %o0
	srlx	%o0, 48, %o0
.L965:
	sll	%g4, 16, %g3
	srl	%g3, 17, %g1
	mov	%g1, %g4
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 1, %g2
.L946:
	cmp	%o0, %g2
	blu,a,pt %icc, .L1024
	 srl	%g3, 18, %g2
	sub	%o0, %g2, %g2
	or	%o5, %g4, %o5
	sllx	%g2, 48, %g2
	srlx	%g2, 48, %o0
	srl	%g3, 18, %g2
.L1024:
	srlx	%o1, 2, %g1
	cmp	%g2, 0
	be,pn	%icc, .L944
	 srl	%g3, 18, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1025
	 srl	%g3, 19, %g2
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 19, %g2
.L1025:
	srlx	%o1, 3, %g1
	cmp	%g2, 0
	be,pn	%icc, .L944
	 srl	%g3, 19, %g2
	cmp	%o0, %g1
	blu,a,pt %icc, .L1026
	 srl	%g3, 20, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 20, %g1
.L1026:
	srl	%g3, 20, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 4, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1027
	 srl	%g3, 21, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 21, %g1
.L1027:
	srl	%g3, 21, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 5, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1028
	 srl	%g3, 22, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 22, %g1
.L1028:
	srl	%g3, 22, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 6, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1029
	 srl	%g3, 23, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 23, %g1
.L1029:
	srl	%g3, 23, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 7, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1019
	 sub	%o0, %g1, %g1
.L953:
	srl	%g3, 24, %g2
	cmp	%g2, 0
	be,pn	%icc, .L944
	 srlx	%o1, 8, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1020
	 sub	%o0, %g1, %g1
.L954:
	srl	%g3, 25, %g1
	srl	%g3, 25, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 9, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1021
	 sub	%o0, %g1, %g1
.L955:
	srl	%g3, 26, %g1
	srl	%g3, 26, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 10, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1022
	 sub	%o0, %g1, %g1
.L956:
	srl	%g3, 27, %g1
	srl	%g3, 27, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 11, %g1
	cmp	%o0, %g1
	bgeu,a,pt %icc, .L1023
	 sub	%o0, %g1, %g1
.L957:
	srl	%g3, 28, %g1
	srl	%g3, 28, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 12, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1030
	 srl	%g3, 29, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 29, %g1
.L1030:
	srl	%g3, 29, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 13, %g1
	cmp	%o0, %g1
	blu,a,pt %icc, .L1031
	 srl	%g3, 30, %g1
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
	srl	%g3, 30, %g1
.L1031:
	srl	%g3, 30, %g2
	cmp	%g1, 0
	be,pn	%icc, .L944
	 srlx	%o1, 14, %g1
	cmp	%o0, %g1
	blu,pt	%icc, .L1032
	 cmp	%g3, 0
	sub	%o0, %g1, %g1
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %o0
.L1032:
	bge,pn	%icc, .L944
	 srlx	%o1, 15, %o1
	cmp	%o0, %o1
	blu,a,pt %icc, .L944
	 mov	0, %o0
	sub	%o0, %o1, %o1
	or	%o5, 1, %o5
	sllx	%o1, 48, %g1
	srlx	%g1, 48, %o0
.L944:
	mov	%o0, %g1
	movre	%o2, %o5, %g1
	mov	%g1, %o5
	sllx	%o5, 48, %o5
	jmp	%o7+8
	 srlx	%o5, 48, %o0
.L941:
	be,pn	%icc, .L944
	 cmp	%o0, %g1
	blu,pt	%icc, .L945
	 sethi	%hi(31744), %g5
	sub	%o0, %g1, %o0
	sllx	%o0, 48, %o0
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	srlx	%o0, 48, %o0
	mov	%g1, %o1
	ba,pt	%xcc, .L946
	 sll	%g3, 16, %g3
.L1019:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L953
	 srlx	%g1, 48, %o0
.L945:
	mov	0, %o5
	sll	%g3, 16, %g3
	or	%g5, 1023, %g5
	and	%o1, %g5, %g2
	and	%g5, %g4, %g4
	ba,pt	%xcc, .L946
	 mov	%g1, %o1
.L1020:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L954
	 srlx	%g1, 48, %o0
.L1021:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L955
	 srlx	%g1, 48, %o0
.L1022:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L956
	 srlx	%g1, 48, %o0
.L1023:
	or	%g2, %o5, %o5
	sllx	%g1, 48, %g1
	ba,pt	%xcc, .L957
	 srlx	%g1, 48, %o0
.L1018:
	movne	%icc, 0, %o5
	ba,pt	%xcc, .L944
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
	blu,pt	%xcc, .L1034
	 sethi	%hi(2147483648), %g4
	ba,pt	%xcc, .L1040
	 mov	0, %g2
.L1037:
	add	%o1, %o1, %o1
	add	%g1, %g1, %g1
	cmp	%o0, %o1
	movgu	%xcc, 1, %g2
	movrne	%g1, 1, %g3
	andcc	%g2, %g3, %g0
	be,pn	%icc, .L1036
	 nop
.L1034:
	and	%o1, %g4, %g2
	brz,pt	%g2, .L1037
	 mov	0, %g3
	mov	0, %g2
.L1040:
	cmp	%o0, %o1
.L1049:
	blu,a,pt %xcc, .L1048
	 srlx	%g1, 1, %g1
	sub	%o0, %o1, %o0
	or	%g2, %g1, %g2
	srlx	%g1, 1, %g1
.L1048:
	brnz,pt	%g1, .L1040
	 srlx	%o1, 1, %o1
.L1038:
	jmp	%o7+8
	 movre	%o2, %g2, %o0
.L1036:
	brz,pn	%g1, .L1038
	 mov	0, %g2
	ba,pt	%xcc, .L1049
	 cmp	%o0, %o1
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o1, 32, %g0
	be,pt	%xcc, .L1051
	 sll	%o0, %o1, %g1
	mov	0, %o0
.L1052:
	sllx	%g1, 32, %g1
	srl	%o0, 0, %o0
	or	%o0, %g1, %o0
.L1056:
	jmp	%o7+8
	 nop
.L1051:
	brz,pn	%o1, .L1056
	 nop
	srax	%o0, 32, %g2
	sub	%g0, %o1, %g3
	srl	%o0, %g3, %g3
	sll	%g2, %o1, %g2
	sll	%o0, %o1, %o0
	ba,pt	%xcc, .L1052
	 or	%g3, %g2, %g1
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1058
	 nop
	sllx	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1058:
	brz,pn	%o2, .L1062
	 nop
	sllx	%o0, %o2, %o0
	sub	%g0, %o2, %g1
	srlx	%o1, %g1, %g1
	sllx	%o1, %o2, %o1
	or	%g1, %o0, %o0
.L1062:
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
	be,pt	%xcc, .L1064
	 mov	%o0, %g1
	srax	%o0, 32, %g1
	sra	%g1, 31, %o0
	sra	%g1, %o1, %g1
.L1065:
	srl	%g1, 0, %g1
	sllx	%o0, 32, %o0
	or	%o0, %g1, %o0
.L1069:
	jmp	%o7+8
	 nop
.L1064:
	brz,pn	%o1, .L1069
	 nop
	srax	%o0, 32, %o0
	sub	%g0, %o1, %g2
	sll	%o0, %g2, %g2
	srl	%g1, %o1, %g1
	sra	%o0, %o1, %o0
	ba,pt	%xcc, .L1065
	 or	%g2, %g1, %g1
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1071
	 srax	%o0, 63, %g1
	srax	%o0, %o2, %o1
	mov	%g1, %o0
.L1075:
	jmp	%o7+8
	 nop
.L1071:
	brz,pn	%o2, .L1075
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
	bl,pn	%icc, .L1081
	 mov	0, %g1
	bg,pn	%icc, .L1081
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1081
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1081:
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
	bl,pn	%icc, .L1087
	 mov	-1, %g1
	bg,pn	%icc, .L1087
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1087
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1087:
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
	bl,pn	%xcc, .L1092
	 mov	0, %g1
	bg,pn	%xcc, .L1092
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1092
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1092:
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
	brnz,pt	%i1, .L1100
	 nop
	brnz,pt	%i0, .L1104
	 mov	0, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1100:
	call	__ctzdi2, 0
	 mov	%i1, %o0
	add	%o0, 1, %o0
	sra	%o0, 0, %i0
	return	%i7+8
	 nop
.L1104:
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
	be,pt	%xcc, .L1106
	 srlx	%o0, 32, %g1
	mov	0, %g2
	srl	%g1, %o1, %g1
.L1107:
	st	%g2, [%sp+2183]
	st	%g1, [%sp+2187]
	ldx	[%sp+2183], %o0
.L1105:
	jmp	%o7+8
	 add	%sp, 144, %sp
.L1106:
	brz,pn	%o1, .L1105
	 srlx	%o0, 32, %g2
	sub	%g0, %o1, %g3
	sll	%g2, %g3, %g3
	srl	%o0, %o1, %g1
	srl	%g2, %o1, %g2
	ba,pt	%xcc, .L1107
	 or	%g3, %g1, %g1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	andcc	%o2, 64, %g0
	be,pt	%xcc, .L1112
	 nop
	srlx	%o0, %o2, %o1
	jmp	%o7+8
	 mov	0, %o0
.L1112:
	brz,pn	%o2, .L1116
	 nop
	srlx	%o1, %o2, %o1
	sub	%g0, %o2, %g1
	sllx	%o0, %g1, %g1
	srlx	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1116:
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
	be,pt	%xcc, .L1130
	 ldd	[%g2+%lo(.LC34)], %f0
.L1132:
	fmuld	%f0, %f8, %f0
.L1130:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1131
	 andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%xcc, .L1132
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1138:
	fmuld	%f8, %f8, %f8
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1132
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1138
	 add	%g2, %g1, %g1
.L1131:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1137
	 sethi	%hi(.LC34), %g1
	jmp	%o7+8
	 nop
.L1137:
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
	be,pt	%xcc, .L1140
	 ld	[%g2+%lo(.LC36)], %f0
.L1142:
	fmuls	%f0, %f1, %f0
.L1140:
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	brz,pn	%g1, .L1141
	 andcc	%g1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%xcc, .L1142
	 srl	%g1, 31, %g2
	add	%g2, %g1, %g1
.L1148:
	fmuls	%f1, %f1, %f1
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	bne,pt	%xcc, .L1142
	 srl	%g1, 31, %g2
	ba,pt	%xcc, .L1148
	 add	%g2, %g1, %g1
.L1141:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1147
	 sethi	%hi(.LC36), %g1
	jmp	%o7+8
	 nop
.L1147:
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
	blu,pn	%icc, .L1150
	 mov	0, %g1
	bgu,pn	%icc, .L1150
	 mov	2, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1150
	 mov	0, %g1
	mov	1, %g1
	movgu	%icc, 2, %g1
.L1150:
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
	blu,pn	%icc, .L1156
	 mov	-1, %g1
	bgu,pn	%icc, .L1156
	 mov	1, %g1
	cmp	%o0, %o1
	blu,pn	%icc, .L1156
	 mov	-1, %g1
	cmp	%o1, %o0
	addx	%g0, 0, %g1
.L1156:
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
	blu,pn	%xcc, .L1161
	 mov	0, %g1
	bgu,pn	%xcc, .L1161
	 mov	2, %g1
	cmp	%o1, %o3
	blu,pn	%xcc, .L1161
	 mov	0, %g1
	mov	1, %g1
	movgu	%xcc, 2, %g1
.L1161:
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
