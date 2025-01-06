	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.align 32
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cmp	%o0, %o1
	bleu,pt	%icc, .L2
	 nop
	cmp	%o2, 0
	be,pn	%icc, .L79
	 add	%o2, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L4
	 add	%o2, -8, %g2
	add	%o2, -2, %o5
	add	%o1, %o5, %o5
	add	%o0, %g1, %g3
	add	%o0, %g2, %g4
	sub	%g3, %o5, %g3
	add	%o1, %g2, %g2
	add	%g3, 6, %g3
	or	%g4, %g2, %o5
	cmp	%g3, 6
	and	%o5, 7, %o5
	mov	0, %g3
	movgu	%icc, 1, %g3
	cmp	%g0, %o5
	subx	%g0, -1, %o5
	andcc	%g3, %o5, %g0
	be,pn	%icc, .L74
	 add	%o1, -1, %o5
	and	%o2, -8, %g1
	sub	%g0, %g1, %g3
	mov	0, %g1
	ldd	[%g2+%g1], %f0
.L75:
	std	%f0, [%g4+%g1]
	add	%g1, -8, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L75
	 ldd	[%g2+%g1], %f0
	add	%o2, %g1, %g1
	andcc	%o2, 7, %g0
	add	%o1, %g1, %o1
	and	%o2, 7, %o2
	be,pn	%icc, .L79
	 add	%o0, %g1, %g1
	ldub	[%o1-1], %g4
	cmp	%o2, 1
	be,pn	%icc, .L79
	 stb	%g4, [%g1-1]
	ldub	[%o1-2], %g2
	cmp	%o2, 2
	be,pn	%icc, .L79
	 stb	%g2, [%g1-2]
	ldub	[%o1-3], %o5
	cmp	%o2, 3
	be,pn	%icc, .L79
	 stb	%o5, [%g1-3]
	ldub	[%o1-4], %g3
	cmp	%o2, 4
	be,pn	%icc, .L79
	 stb	%g3, [%g1-4]
	ldub	[%o1-5], %g4
	cmp	%o2, 5
	be,pn	%icc, .L79
	 stb	%g4, [%g1-5]
	ldub	[%o1-6], %g2
	cmp	%o2, 6
	be,pn	%icc, .L79
	 stb	%g2, [%g1-6]
	ldub	[%o1-7], %o1
	jmp	%o7+8
	 stb	%o1, [%g1-7]
.L2:
	be,pn	%icc, .L79
	 cmp	%o2, 0
	be,pn	%icc, .L79
	 add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L16
	 or	%o0, %o1, %g2
	and	%g2, 7, %g3
	add	%o1, 1, %g1
	cmp	%g0, %g3
	sub	%o0, %g1, %g1
	subx	%g0, -1, %g4
	mov	0, %o5
	cmp	%g1, 6
	movgu	%icc, 1, %o5
	andcc	%g4, %o5, %g0
	be,pn	%icc, .L16
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o1+%g1], %f8
.L76:
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L76
	 ldd	[%o1+%g1], %f8
	cmp	%o2, %g1
	add	%o1, %g1, %g3
	add	%o0, %g1, %o5
	be,pn	%icc, .L79
	 sub	%o2, %g1, %o2
	ldub	[%o1+%g1], %o1
	cmp	%o2, 1
	be,pn	%icc, .L79
	 stb	%o1, [%o0+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L79
	 stb	%g1, [%o5+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%icc, .L79
	 stb	%g1, [%o5+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%icc, .L79
	 stb	%g1, [%o5+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%icc, .L79
	 stb	%g1, [%o5+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%icc, .L79
	 stb	%g1, [%o5+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%o5+6]
.L4:
	add	%o1, -1, %o5
.L74:
	ba,pt	%xcc, .L7
	 add	%o0, -1, %g3
.L73:
	add	%g1, -1, %g1
.L7:
	ldub	[%o5+%o2], %g4
	cmp	%g1, 0
	stb	%g4, [%g3+%o2]
	bne,pt	%icc, .L73
	 mov	%g1, %o2
.L79:
	jmp	%o7+8
	 nop
.L16:
	mov	0, %g1
	ldub	[%o1+%g1], %g4
.L77:
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L77
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
	cmp	%o3, 0
	bne,pt	%icc, .L81
	 and	%o2, 0xff, %o2
	jmp	%o7+8
	 mov	0, %o0
.L84:
	addcc	%o3, -1, %o3
	be,pn	%icc, .L83
	 add	%o0, 1, %o0
.L81:
	ldub	[%o1], %g1
	and	%g1, 0xff, %g2
	stb	%g1, [%o0]
	cmp	%g2, %o2
	bne,pt	%icc, .L84
	 add	%o1, 1, %o1
	jmp	%o7+8
	 add	%o0, 1, %o0
.L83:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	cmp	%o2, 0
	bne,pt	%icc, .L93
	 and	%o1, 0xff, %o1
	jmp	%o7+8
	 mov	0, %o0
.L95:
	be,pn	%icc, .L96
	 add	%o0, 1, %o0
.L93:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	bne,pt	%icc, .L95
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L96:
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
	cmp	%o2, 0
	bne,a,pt %icc, .L114
	 ldub	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L105:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L113
	 mov	0, %o0
	ldub	[%o0], %g1
.L114:
	ldub	[%o1], %g2
	cmp	%g1, %g2
	add	%o0, 1, %o0
	be,pt	%icc, .L105
	 add	%o1, 1, %o1
	jmp	%o7+8
	 sub	%g1, %g2, %o0
.L113:
	jmp	%o7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L120
	 mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L120:
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
	ba,pt	%xcc, .L122
	 add	%o0, -1, %g2
.L124:
	ldub	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L125
	 add	%g3, -1, %g3
.L122:
	cmp	%g3, %g2
	bne,pt	%icc, .L124
	 mov	%g3, %o0
	mov	0, %o0
.L125:
	jmp	%o7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.align 32
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L130
	 mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L130:
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
	be,pn	%icc, .L138
	 stb	%g1, [%o0]
.L133:
	ldub	[%o1+1], %g1
	sll	%g1, 24, %g3
	cmp	%g3, 0
	stb	%g1, [%o0+1]
	add	%o0, 1, %o0
	bne,pt	%icc, .L133
	 add	%o1, 1, %o1
.L138:
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
	bne,pt	%icc, .L140
	 and	%o1, 0xff, %o1
.L148:
	jmp	%o7+8
	 nop
.L142:
	sll	%g1, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L148
	 add	%o0, 1, %o0
.L140:
	and	%g1, 0xff, %g1
	cmp	%g1, %o1
	bne,a,pt %icc, .L142
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
.L151:
	ldsb	[%o0], %g1
	cmp	%g1, %o1
	be,pn	%icc, .L153
	 cmp	%g1, 0
	bne,pt	%icc, .L151
	 add	%o0, 1, %o0
	mov	0, %o0
.L153:
	jmp	%o7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.align 32
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	ldub	[%o1], %g3
	ldub	[%o0], %g4
	sll	%g3, 24, %o5
	sll	%g4, 24, %g2
	cmp	%o5, %g2
	mov	1, %g1
	bne,pn	%icc, .L163
	 add	%o1, -1, %o1
	cmp	%g2, 0
.L165:
	be,pn	%icc, .L164
	 mov	0, %g4
	ldub	[%o0+%g1], %g4
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	sll	%g3, 24, %o5
	cmp	%o5, %g2
	be,pt	%icc, .L165
	 cmp	%g2, 0
.L163:
	and	%g4, 0xff, %g4
	and	%g3, 0xff, %o0
	jmp	%o7+8
	 sub	%g4, %o0, %o0
.L164:
	and	%g3, 0xff, %o0
	jmp	%o7+8
	 sub	%g4, %o0, %o0
	.size	strcmp, .-strcmp
	.align 4
	.align 32
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	ldsb	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L166
	 mov	0, %g1
	mov	%o0, %g1
.L168:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L168
	 add	%g1, 1, %g1
	sub	%g1, %o0, %g1
.L166:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	cmp	%o2, 0
	be,pn	%icc, .L172
	 mov	0, %g3
	ldub	[%o0], %g4
	add	%o2, -1, %o2
	cmp	%g4, 0
	mov	%o1, %g3
	bne,pt	%icc, .L176
	 add	%o1, %o2, %o2
	ba,pt	%xcc, .L184
	 ldub	[%o1], %o5
.L177:
	ldub	[%o0], %g4
	cmp	%g4, 0
	be,pn	%icc, .L185
	 add	%g3, 1, %g1
	mov	%g1, %g3
.L176:
	ldub	[%g3], %o5
	cmp	%g0, %o5
	xor	%o5, %g4, %o4
	xor	%g3, %o2, %g2
	addx	%g0, 0, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %o1
	cmp	%g0, %g2
	and	%g1, %o1, %g1
	addx	%g0, 0, %g2
	andcc	%g2, %g1, %g0
	bne,pt	%icc, .L177
	 add	%o0, 1, %o0
.L175:
	sub	%g4, %o5, %g3
.L172:
.L186:
	jmp	%o7+8
	 mov	%g3, %o0
.L185:
	ba,pt	%xcc, .L175
	 ldub	[%g3+1], %o5
.L184:
	ba,pt	%xcc, .L186
	 sub	%g4, %o5, %g3
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cmp	%o2, 1
	ble,pn	%icc, .L197
	 add	%o2, -2, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L189
	 or	%o1, %o0, %g1
	andcc	%g1, 7, %g0
	bne,pn	%icc, .L189
	 sethi	%hi(271733760), %g2
	srl	%o2, 1, %o4
	srl	%o2, 3, %o5
	and	%o2, -8, %g3
	mov	0, %g1
	or	%g2, 118, %g2
	bmask	%g2, %g0, %g4
.L196:
	ldd	[%o0+%g1], %f8
	bshuffle	%f8, %f8, %f0
	std	%f0, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L196
	 bmask	%g2, %g0, %g4
	sll	%o5, 2, %g4
	cmp	%o4, %g4
	sll	%o5, 3, %o5
	add	%o1, %g1, %o4
	add	%o0, %g1, %g3
	be,pn	%icc, .L197
	 sub	%o2, %o5, %o2
	ldub	[%g3+1], %g2
	ldub	[%o0+%g1], %o0
	stb	%g2, [%o1+%g1]
	cmp	%o2, 3
	ble,pn	%icc, .L197
	 stb	%o0, [%o4+1]
	ldub	[%g3+3], %o1
	ldub	[%g3+2], %g1
	cmp	%o2, 5
	stb	%o1, [%o4+2]
	ble,pn	%icc, .L197
	 stb	%g1, [%o4+3]
	ldub	[%g3+5], %g4
	ldub	[%g3+4], %g1
	stb	%g4, [%o4+4]
	jmp	%o7+8
	 stb	%g1, [%o4+5]
.L189:
	and	%o2, -2, %o5
	add	%o0, %o5, %o4
.L192:
	ldub	[%o0+1], %g3
	ldub	[%o0], %g1
	add	%o0, 2, %o0
	stb	%g3, [%o1]
	stb	%g1, [%o1+1]
	cmp	%o4, %o0
	bne,pt	%icc, .L192
	 add	%o1, 2, %o1
.L197:
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
	mov	0, %g2
	xor	%o0, 127, %o0
	movleu	%icc, 1, %g2
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	jmp	%o7+8
	 or	%g2, %g1, %o0
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
	xor	%o0, 32, %o0
	mov	0, %g2
	movleu	%icc, 1, %g2
	cmp	%g0, %o0
	subx	%g0, -1, %g3
	jmp	%o7+8
	 or	%g2, %g3, %o0
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
	cmp	%o0, 31
	movleu	%icc, 1, %g1
	orcc	%g3, %g1, %g4
	mov	%o0, %g2
	bne,pt	%icc, .L212
	 mov	1, %o0
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu,pn	%icc, .L212
	 sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %o0
	cmp	%o0, 2
	movleu	%icc, 1, %g4
	mov	%g4, %o0
.L212:
	jmp	%o7+8
	 nop
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
	bleu,pn	%icc, .L220
	 mov	%o0, %g1
	sethi	%hi(-9216), %g2
	or	%g2, 982, %g3
	sethi	%hi(46080), %g4
	add	%o0, %g3, %o0
	or	%g4, 981, %o5
	sethi	%hi(8192), %g2
	cmp	%o5, %o0
	or	%g2, 39, %g3
	subx	%g0, -1, %g4
	cmp	%g3, %g1
	subx	%g0, -1, %o0
	orcc	%g4, %o0, %g2
	bne,pn	%icc, .L221
	 mov	1, %o0
	sethi	%hi(-57344), %o5
	sethi	%hi(7168), %g3
	add	%g1, %o5, %g4
	or	%g3, 1016, %o5
	cmp	%g4, %o5
	bleu,pn	%icc, .L221
	 sethi	%hi(-65536), %g4
	sethi	%hi(64512), %o0
	or	%o0, 1022, %g3
	or	%g4, 4, %o5
	sethi	%hi(1048576), %o0
	andn	%g3, %g1, %g4
	cmp	%g0, %g4
	add	%g1, %o5, %g1
	or	%o0, 3, %o5
	addx	%g0, 0, %g3
	cmp	%g1, %o5
	movleu	%icc, %g3, %g2
	mov	%g2, %o0
.L221:
	jmp	%o7+8
	 nop
.L220:
	add	%o0, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	mov	0, %o0
	jmp	%o7+8
	 movgu	%icc, 1, %o0
	.size	iswprint, .-iswprint
	.align 4
	.align 32
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	add	%o0, -48, %g2
	cmp	%g2, 9
	mov	%o0, %g1
	bleu,pt	%icc, .L225
	 mov	1, %o0
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	mov	0, %o0
	movleu	%icc, 1, %o0
.L225:
	jmp	%o7+8
	 nop
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
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	fmovd	%f8, %f0
	fcmpd	%fcc0, %f0, %f0
	add	%sp, -80, %sp
	fbu,pn	%fcc0, .L227
	 std	%o2, [%sp+72]
	movwtos	%o2, %f0
	movwtos	%o3, %f1
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L227
	 nop
	fcmped	%fcc2, %f8, %f0
	fbule,pt %fcc2, .L234
	 nop
	fsubd	%f8, %f0, %f0
.L227:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L234:
	fzero	%f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	movwtos	%o0, %f0
	fcmps	%fcc3, %f0, %f0
	fbu,pn	%fcc3, .L243
	 nop
	movwtos	%o1, %f0
	fcmps	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L243
	 nop
	movwtos	%o0, %f8
	fcmpes	%fcc1, %f8, %f0
	fbule,pt %fcc1, .L242
	 nop
	jmp	%o7+8
	 fsubs	%f8, %f0, %f0
.L242:
	fzeros	%f0
.L243:
	jmp	%o7+8
	 nop
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	movwtos	%o2, %f0
	movwtos	%o3, %f1
	fcmpd	%fcc2, %f10, %f10
	fbu,pn	%fcc2, .L250
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L250
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L246
	 fcmped	%fcc0, %f0, %f8
	cmp	%g1, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L246:
	fmovdl	%fcc0, %f8, %f0
.L250:
	jmp	%o7+8
	 nop
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	movwtos	%o0, %f9
	movwtos	%o1, %f8
	fcmps	%fcc1, %f9, %f9
	fbu,pn	%fcc1, .L257
	 fmovs	%f8, %f0
	fcmps	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L257
	 fmovs	%f9, %f0
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%o1, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L253
	 fcmpes	%fcc3, %f9, %f8
	cmp	%g1, 0
	jmp	%o7+8
	 fmovsne	%icc, %f8, %f0
.L253:
	fmovsl	%fcc3, %f8, %f0
.L257:
	jmp	%o7+8
	 nop
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	movwtos	%o2, %f0
	movwtos	%o3, %f1
	fcmpd	%fcc0, %f10, %f10
	fbu,pn	%fcc0, .L264
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f8, %f8
	fbu,pn	%fcc1, .L264
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L260
	 fcmped	%fcc2, %f0, %f8
	cmp	%g1, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L260:
	fmovdl	%fcc2, %f8, %f0
.L264:
	jmp	%o7+8
	 nop
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	movwtos	%o2, %f0
	movwtos	%o3, %f1
	fcmpd	%fcc3, %f10, %f10
	fbu,pn	%fcc3, .L271
	 fmovd	%f0, %f8
	fcmpd	%fcc0, %f8, %f8
	fbu,pn	%fcc0, .L271
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L267
	 fcmped	%fcc1, %f0, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f8
	jmp	%o7+8
	 fmovd	%f8, %f0
.L267:
	fmovdl	%fcc1, %f0, %f8
	fmovd	%f8, %f0
.L271:
	jmp	%o7+8
	 nop
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	movwtos	%o0, %f9
	movwtos	%o1, %f8
	fcmps	%fcc2, %f9, %f9
	fbu,pn	%fcc2, .L278
	 fmovs	%f8, %f0
	fcmps	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L278
	 fmovs	%f9, %f0
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%o1, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L274
	 fcmpes	%fcc0, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f9, %f8
	jmp	%o7+8
	 fmovs	%f8, %f0
.L274:
	fmovsl	%fcc0, %f9, %f8
	fmovs	%f8, %f0
.L278:
	jmp	%o7+8
	 nop
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	movwtos	%o2, %f0
	movwtos	%o3, %f1
	fcmpd	%fcc1, %f10, %f10
	fbu,pn	%fcc1, .L285
	 fmovd	%f0, %f8
	fcmpd	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L285
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L281
	 fcmped	%fcc3, %f0, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f8
	jmp	%o7+8
	 fmovd	%f8, %f0
.L281:
	fmovdl	%fcc3, %f0, %f8
	fmovd	%f8, %f0
.L285:
	jmp	%o7+8
	 nop
	.size	fminl, .-fminl
	.align 4
	.align 32
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	mov	%o0, %g1
	sethi	%hi(s.0), %o0
	or	%o0, %lo(s.0), %o0
	cmp	%g1, 0
	be,pn	%icc, .L287
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L288:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne,pt	%icc, .L288
	 add	%g2, 1, %g2
.L287:
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
	or	%g1, %lo(seed), %g2
	add	%o0, -1, %o0
	st	%g0, [%g1+%lo(seed)]
	jmp	%o7+8
	 st	%o0, [%g2+4]
	.size	srand, .-srand
	.align 4
	.align 32
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -96, %sp
	sethi	%hi(seed), %g1
	ldd	[%g1+%lo(seed)], %g2
	sethi	%hi(1481765888), %i4
	sethi	%hi(1284865024), %i5
	or	%i4, 45, %i4
	or	%i5, 813, %i5
	sllx	%g2, 32, %g4
	sllx	%i4, 32, %o7
	or	%g3, %g4, %g4
	or	%i5, %o7, %o7
	mulx	%g4, %o7, %g4
	srlx	%g4, 32, %g2
	mov	%g4, %g3
	addcc	%g3, 1, %i1
	addx	%g2, 0, %i0
	std	%i0, [%g1+%lo(seed)]
	return	%i7+8
	 srl	%o0, 1, %o0
	.size	rand, .-rand
	.align 4
	.align 32
	.global insque
	.type	insque, #function
	.proc	020
insque:
	cmp	%o1, 0
	be,a,pn	%icc, .L299
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L301
	 st	%o0, [%g1+4]
.L301:
	jmp	%o7+8
	 nop
.L299:
	st	%g0, [%o0]
	jmp	%o7+8
	 nop
	.size	insque, .-insque
	.align 4
	.align 32
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ld	[%o0], %g1
	cmp	%g1, 0
	be,a,pn	%icc, .L312
	 ld	[%o0+4], %g3
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g3
.L312:
	cmp	%g3, 0
	bne,a,pt %icc, .L311
	 st	%g1, [%g3]
.L311:
	jmp	%o7+8
	 nop
	.size	remque, .-remque
	.align 4
	.align 32
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -96, %sp
	ld	[%i2], %l1
	cmp	%l1, 0
	be,pn	%icc, .L314
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L316
	 mov	0, %l0
.L328:
	cmp	%l1, %l0
	be,pn	%icc, .L314
	 add	%i5, %i3, %i5
.L316:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	mov	%i5, %i0
	bne,pt	%icc, .L328
	 add	%l0, 1, %l0
.L330:
	return	%i7+8
	 nop
.L314:
	smul	%i3, %l1, %i0
	add	%l1, 1, %g1
	st	%g1, [%i2]
	cmp	%i3, 0
	be,pn	%icc, .L330
	 add	%i1, %i0, %i0
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
	save	%sp, -96, %sp
	ld	[%i2], %l0
	cmp	%l0, 0
	be,pn	%icc, .L332
	 mov	0, %i5
	ba,pt	%xcc, .L343
	 mov	%i1, %o1
.L342:
	cmp	%l0, %i5
	be,pn	%icc, .L332
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L343:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	mov	%i1, %i2
	bne,pt	%icc, .L342
	 add	%i5, 1, %i5
	return	%i7+8
	 mov	%o2, %o0
.L332:
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
	jmp	%o7+8
	 sub	%o0, %g1, %o0
	.size	abs, .-abs
	.align 4
	.align 32
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	ldub	[%o0], %o5
	ba,pt	%xcc, .L368
	 mov	0, %g1
.L370:
	mov	0, %g1
	add	%o0, 1, %o0
.L368:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L370
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L348
	 cmp	%g1, 45
	bne,pt	%icc, .L371
	 add	%g2, -48, %g1
	ldub	[%o0+1], %o5
	sll	%o5, 24, %o4
	sra	%o4, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L372
	 mov	0, %o0
	mov	1, %o4
.L351:
	mov	0, %o0
.L354:
	add	%g1, 1, %g1
	add	%o5, -48, %g2
	ldub	[%g1], %o5
	sll	%o0, 2, %g4
	sll	%o5, 24, %g3
	add	%g4, %o0, %o0
	sra	%g3, 24, %g4
	sll	%g2, 24, %g2
	add	%g4, -48, %g4
	sll	%o0, 1, %g3
	sra	%g2, 24, %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L354
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L372:
	jmp	%o7+8
	 nop
.L371:
	cmp	%g1, 9
	mov	0, %o4
	bleu,pt	%icc, .L351
	 mov	%o0, %g1
.L369:
	jmp	%o7+8
	 mov	0, %o0
.L348:
	ldub	[%o0+1], %o5
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g3
	add	%g3, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L351
	 mov	0, %o4
	ba,pt	%xcc, .L369
	 nop
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	04
atol:
	ldub	[%o0], %o5
	ba,pt	%xcc, .L393
	 mov	0, %g1
.L395:
	mov	0, %g1
	add	%o0, 1, %o0
.L393:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L395
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L376
	 cmp	%g1, 45
	be,a,pt	%icc, .L396
	 ldub	[%o0+1], %o5
	add	%g2, -48, %g1
	cmp	%g1, 9
	mov	0, %o4
	bgu,pn	%icc, .L394
	 mov	%o0, %g1
.L378:
	mov	0, %o0
.L381:
	add	%g1, 1, %g1
	add	%o5, -48, %g2
	ldub	[%g1], %o5
	sll	%o0, 2, %g4
	sll	%o5, 24, %g3
	add	%g4, %o0, %o0
	sra	%g3, 24, %g4
	sll	%g2, 24, %g2
	add	%g4, -48, %g4
	sll	%o0, 1, %g3
	sra	%g2, 24, %g2
	cmp	%g4, 9
	bleu,pt	%icc, .L381
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L397:
	jmp	%o7+8
	 nop
.L396:
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	bleu,pt	%icc, .L378
	 mov	1, %o4
.L394:
	jmp	%o7+8
	 mov	0, %o0
.L376:
	ldub	[%o0+1], %o5
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -48, %o4
	cmp	%o4, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L397
	 mov	0, %o0
	ba,pt	%xcc, .L381
	 mov	0, %o4
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	0, %g1
	ba,pt	%xcc, .L421
	 ldub	[%i0], %i5
.L423:
	mov	0, %g1
	add	%i0, 1, %i0
.L421:
	sll	%i5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %i1
	movleu	%icc, 1, %g1
	cmp	%g0, %i1
	subx	%g0, -1, %i2
	orcc	%g1, %i2, %g0
	bne,a,pt %icc, .L423
	 ldub	[%i0+1], %i5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L401
	 cmp	%g1, 45
	bne,pt	%icc, .L424
	 add	%g2, -48, %i1
	ldub	[%i0+1], %i5
	sll	%i5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -48, %g4
	cmp	%g4, 9
	add	%i0, 1, %g1
	mov	0, %i1
	bgu,pn	%icc, .L427
	 mov	0, %i0
	mov	1, %o7
.L404:
	mov	0, %i0
	mov	0, %i1
	add	%g1, 1, %g1
.L426:
	add	%i5, -48, %i4
	ldub	[%g1], %i5
	srl	%i1, 30, %i2
	sll	%i0, 2, %i3
	sll	%i1, 2, %o5
	addcc	%o5, %i1, %g3
	or	%i2, %i3, %o4
	addx	%o4, %i0, %g2
	sll	%i4, 24, %i2
	sll	%i5, 24, %i1
	srl	%g3, 31, %i0
	sll	%g2, 1, %g4
	sra	%i2, 24, %i3
	sra	%i2, 31, %g2
	sll	%g3, 1, %g3
	sra	%i1, 24, %i2
	or	%i0, %g4, %i4
	subcc	%g3, %i3, %i1
	add	%i2, -48, %g4
	subx	%i4, %g2, %i0
	cmp	%g4, 9
	bleu,a,pt %icc, .L426
	 add	%g1, 1, %g1
	cmp	%o7, 0
	bne,pt	%icc, .L427
	 nop
	subcc	%i3, %g3, %i1
	subx	%g2, %i4, %i0
.L427:
	return	%i7+8
	 nop
.L424:
	cmp	%i1, 9
	mov	%i0, %g1
	bleu,pt	%icc, .L404
	 mov	0, %o7
	mov	0, %i0
.L425:
	return	%i7+8
	 mov	0, %o1
.L401:
	ldub	[%i0+1], %i5
	add	%i0, 1, %g1
	sll	%i5, 24, %i0
	sra	%i0, 24, %i3
	add	%i3, -48, %i4
	cmp	%i4, 9
	bleu,pt	%icc, .L404
	 mov	0, %o7
	ba,pt	%xcc, .L425
	 mov	0, %i0
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L429
	 mov	%i0, %l0
.L432:
	srl	%i2, 1, %i5
.L439:
	smul	%i5, %i3, %i0
	add	%i1, %i0, %i0
	mov	%l0, %o0
	call	%i4, 0
	 mov	%i0, %o1
	cmp	%o0, 0
	bl,pn	%icc, .L433
	 add	%i2, -1, %i2
	be,pn	%icc, .L438
	 nop
	sub	%i2, %i5, %i2
	cmp	%i2, 0
	bne,pt	%icc, .L432
	 add	%i0, %i3, %i1
.L429:
	mov	0, %i0
.L438:
	return	%i7+8
	 nop
.L433:
	mov	%i5, %i2
	cmp	%i2, 0
	bne,pt	%icc, .L439
	 srl	%i2, 1, %i5
	return	%i7+8
	 mov	0, %o0
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L445
	 mov	%i0, %l1
.L453:
	sra	%i2, 1, %l0
	smul	%l0, %i3, %i0
	add	%i1, %i0, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	be,pn	%icc, .L456
	 sra	%i2, 1, %i2
.L455:
	ble,pn	%icc, .L443
	 cmp	%i2, 0
	bne,pt	%icc, .L453
	 add	%i0, %i3, %i1
.L445:
	return	%i7+8
	 mov	0, %o0
.L443:
	cmp	%l0, 0
	be,pn	%icc, .L445
	 nop
	mov	%l0, %i2
	sra	%i2, 1, %l0
	smul	%l0, %i3, %i0
	add	%i1, %i0, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	bne,pt	%icc, .L455
	 sra	%i2, 1, %i2
.L456:
	return	%i7+8
	 nop
	.size	bsearch_r, .-bsearch_r
	.align 4
	.align 32
	.global div
	.type	div, #function
	.proc	010
div:
	sra	%o0, 31, %g3
	wr	%g3, 0, %y
	sdiv	%o0, %o1, %g2
	smul	%g2, %o1, %o1
	mov	%o0, %g1
	ld	[%sp+64], %o0
	sub	%g1, %o1, %g1
	st	%g2, [%o0]
	jmp	%o7+12
	 st	%g1, [%o0+4]
	.size	div, .-div
	.align 4
	.align 32
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	sra	%o0, 31, %g3
	xor	%o1, %g3, %o5
	xor	%g3, %o0, %o4
	subcc	%o5, %g3, %o1
	jmp	%o7+8
	 subx	%o4, %g3, %o0
	.size	imaxabs, .-imaxabs
	.align 4
	.align 32
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	mov	%i0, %i4
	ld	[%fp+64], %i0
	mov	%i2, %o2
	std	%o0, [%i0]
	mov	%i3, %o3
	mov	%i4, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i0+8]
	return	%i7+12
	 nop
	.size	imaxdiv, .-imaxdiv
	.align 4
	.align 32
	.global labs
	.type	labs, #function
	.proc	04
labs:
	sra	%o0, 31, %g1
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
	sra	%o0, 31, %g3
	wr	%g3, 0, %y
	sdiv	%o0, %o1, %g2
	smul	%g2, %o1, %o1
	mov	%o0, %g1
	ld	[%sp+64], %o0
	sub	%g1, %o1, %g1
	st	%g2, [%o0]
	jmp	%o7+12
	 st	%g1, [%o0+4]
	.size	ldiv, .-ldiv
	.align 4
	.align 32
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	sra	%o0, 31, %g3
	xor	%o1, %g3, %o5
	xor	%g3, %o0, %o4
	subcc	%o5, %g3, %o1
	jmp	%o7+8
	 subx	%o4, %g3, %o0
	.size	llabs, .-llabs
	.align 4
	.align 32
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -96, %sp
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i0, %o0
	call	__divdi3, 0
	 mov	%i1, %o1
	mov	%i0, %i4
	ld	[%fp+64], %i0
	mov	%i2, %o2
	std	%o0, [%i0]
	mov	%i3, %o3
	mov	%i4, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i0+8]
	return	%i7+12
	 nop
	.size	lldiv, .-lldiv
	.align 4
	.align 32
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ld	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L468
	 nop
.L465:
	cmp	%o1, %g1
	be,pn	%icc, .L473
	 nop
	ld	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L465
	 add	%o0, 4, %o0
.L468:
	jmp	%o7+8
	 mov	0, %o0
.L473:
	jmp	%o7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.align 32
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	ld	[%o1], %g3
	ld	[%o0], %g2
	cmp	%g2, %g3
	mov	4, %g1
	bne,pn	%icc, .L483
	 add	%o1, -4, %o1
	cmp	%g2, 0
.L484:
	be,pn	%icc, .L483
	 cmp	%g2, %g3
	ld	[%o0+%g1], %g2
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L484
	 cmp	%g2, 0
	cmp	%g2, %g3
.L483:
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
	.size	wcscmp, .-wcscmp
	.align 4
	.align 32
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L486:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L486
	 add	%g1, 4, %g1
	jmp	%o7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.align 32
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	ld	[%o0], %g2
	cmp	%g2, 0
	be,pn	%icc, .L488
	 mov	0, %g1
	mov	%o0, %g1
.L490:
	ld	[%g1+4], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L490
	 add	%g1, 4, %g1
	sub	%g1, %o0, %g1
	sra	%g1, 2, %g1
.L488:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cmp	%o2, 0
	bne,a,pt %icc, .L507
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L497:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L506
	 mov	0, %o0
	ld	[%o0], %g2
.L507:
	ld	[%o1], %g4
	xor	%g4, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	andcc	%g1, %g3, %g1
	add	%o0, 4, %o0
	bne,pt	%icc, .L497
	 add	%o1, 4, %o1
	cmp	%g2, %g4
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L506:
	jmp	%o7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cmp	%o2, 0
	bne,a,pt %icc, .L517
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L511:
	be,pn	%icc, .L512
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L517:
	cmp	%g1, %o1
	bne,a,pt %icc, .L511
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L512:
	mov	0, %o0
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cmp	%o2, 0
	bne,a,pt %icc, .L532
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L522:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L531
	 mov	0, %o0
	ld	[%o0], %g2
.L532:
	ld	[%o1], %g1
	cmp	%g2, %g1
	add	%o0, 4, %o0
	be,pt	%icc, .L522
	 add	%o1, 4, %o1
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L531:
	jmp	%o7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L538
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L538:
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
	be,pn	%icc, .L566
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu,pt	%icc, .L541
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be,pn	%icc, .L566
	 nop
	cmp	%g1, 8
	bleu,pn	%icc, .L552
	 add	%o1, 4, %g2
	or	%o1, %o0, %g3
	and	%g3, 7, %g4
	cmp	%g0, %g4
	xor	%o0, %g2, %g4
	subx	%g0, -1, %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L552
	 srl	%o2, 1, %g4
	mov	0, %g1
	mov	0, %g3
.L546:
	ldd	[%o1+%g1], %f8
	add	%g3, 1, %g3
	std	%f8, [%o0+%g1]
	cmp	%g4, %g3
	bne,pt	%icc, .L546
	 add	%g1, 8, %g1
	andcc	%o2, 1, %g0
	be,pn	%icc, .L566
	 nop
	and	%o2, -2, %o2
	sll	%o2, 2, %g2
	ld	[%o1+%g2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%g2]
.L552:
	mov	0, %g3
.L563:
	ld	[%o1+%g3], %g4
	add	%g1, -1, %g1
	st	%g4, [%o0+%g3]
	cmp	%g1, -1
	bne,pt	%icc, .L563
	 add	%g3, 4, %g3
	jmp	%o7+8
	 nop
.L541:
	cmp	%o2, 0
	be,pn	%icc, .L566
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %o2
.L565:
	st	%o2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %icc, .L565
	 ld	[%o1+%g1], %o2
	jmp	%o7+8
	 nop
.L566:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	cmp	%o2, 0
	be,pn	%icc, .L599
	 add	%o2, -1, %o5
	srl	%o0, 2, %g2
	cmp	%o5, 5
	bleu,pn	%icc, .L574
	 and	%g2, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L571
	 mov	%o0, %o4
	add	%o0, 4, %o4
	st	%o1, [%o0]
	add	%o2, -2, %o5
.L571:
	movwtos	%o1, %f8
	movwtos	%o1, %f9
	sub	%o2, %g1, %o2
	sll	%g1, 2, %g3
	srl	%o2, 1, %g4
	add	%o0, %g3, %g2
	mov	0, %g1
.L572:
	sll	%g1, 3, %g3
	add	%g1, 1, %g1
	cmp	%g4, %g1
	bne,pt	%icc, .L572
	 std	%f8, [%g2+%g3]
	andcc	%o2, 1, %g0
	be,pn	%icc, .L599
	 nop
	and	%o2, -2, %o2
	sll	%o2, 2, %g1
	sub	%o5, %o2, %o5
	add	%o4, %g1, %g1
.L570:
	cmp	%o5, 0
	be,pn	%icc, .L599
	 st	%o1, [%g1]
	cmp	%o5, 1
	be,pn	%icc, .L599
	 st	%o1, [%g1+4]
	cmp	%o5, 2
	be,pn	%icc, .L599
	 st	%o1, [%g1+8]
	cmp	%o5, 3
	be,pn	%icc, .L599
	 st	%o1, [%g1+12]
	cmp	%o5, 4
	be,pn	%icc, .L599
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L599:
	jmp	%o7+8
	 nop
.L574:
	ba,pt	%xcc, .L570
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%icc, .L601
	 nop
	cmp	%o2, 0
	be,pn	%icc, .L676
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L603
	 add	%o2, -8, %g2
	add	%o2, -2, %o5
	add	%o0, %o5, %o5
	add	%o1, %g1, %g3
	add	%o0, %g2, %g4
	sub	%g3, %o5, %g3
	add	%o1, %g2, %g2
	add	%g3, 6, %g3
	or	%g4, %g2, %o5
	cmp	%g3, 6
	and	%o5, 7, %o5
	mov	0, %g3
	movgu	%icc, 1, %g3
	cmp	%g0, %o5
	subx	%g0, -1, %o5
	andcc	%g3, %o5, %g0
	be,a,pn	%icc, .L672
	 add	%o0, -1, %g4
	and	%o2, -8, %g1
	sub	%g0, %g1, %g3
	mov	0, %g1
	ldd	[%g4+%g1], %f0
.L673:
	std	%f0, [%g2+%g1]
	add	%g1, -8, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L673
	 ldd	[%g4+%g1], %f0
	add	%o2, %g1, %g1
	andcc	%o2, 7, %g0
	add	%o1, %g1, %o1
	add	%o0, %g1, %o0
	be,pn	%icc, .L677
	 and	%o2, 7, %o2
	ldub	[%o0-1], %g1
	cmp	%o2, 1
	be,pn	%icc, .L677
	 stb	%g1, [%o1-1]
	ldub	[%o0-2], %g1
	cmp	%o2, 2
	be,pn	%icc, .L677
	 stb	%g1, [%o1-2]
	ldub	[%o0-3], %g1
	cmp	%o2, 3
	be,pn	%icc, .L677
	 stb	%g1, [%o1-3]
	ldub	[%o0-4], %g1
	cmp	%o2, 4
	be,pn	%icc, .L677
	 stb	%g1, [%o1-4]
	ldub	[%o0-5], %g1
	cmp	%o2, 5
	be,pn	%icc, .L677
	 stb	%g1, [%o1-5]
	ldub	[%o0-6], %g1
	cmp	%o2, 6
	be,pn	%icc, .L677
	 stb	%g1, [%o1-6]
	ldub	[%o0-7], %g1
	jmp	%o7+8
	 stb	%g1, [%o1-7]
.L601:
	bne,a,pt %icc, .L670
	 cmp	%o2, 0
.L677:
	jmp	%o7+8
	 nop
.L670:
	be,pn	%icc, .L676
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L615
	 or	%o0, %o1, %g2
	and	%g2, 7, %g3
	add	%o0, 1, %g1
	cmp	%g0, %g3
	sub	%o1, %g1, %g1
	subx	%g0, -1, %g4
	mov	0, %o5
	cmp	%g1, 6
	movgu	%icc, 1, %o5
	andcc	%g4, %o5, %g0
	be,pn	%icc, .L615
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L674:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L674
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o1, %g1, %o5
	add	%o0, %g1, %g3
	be,pn	%icc, .L677
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %o0
	cmp	%o2, 1
	be,pn	%icc, .L677
	 stb	%o0, [%o1+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L677
	 stb	%g1, [%o5+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%icc, .L677
	 stb	%g1, [%o5+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%icc, .L677
	 stb	%g1, [%o5+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%icc, .L677
	 stb	%g1, [%o5+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%icc, .L677
	 stb	%g1, [%o5+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%o5+6]
.L603:
	add	%o0, -1, %g4
.L672:
	ba,pt	%xcc, .L606
	 add	%o1, -1, %o5
.L671:
	add	%g1, -1, %g1
.L606:
	ldub	[%g4+%o2], %g2
	cmp	%g1, 0
	stb	%g2, [%o5+%o2]
	bne,pt	%icc, .L671
	 mov	%g1, %o2
	jmp	%o7+8
	 nop
.L615:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L675:
	stb	%g4, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L675
	 ldub	[%o0+%g1], %g4
.L676:
	jmp	%o7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.align 32
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	sllx	%o0, 32, %o4
	srl	%o1, 0, %o1
	or	%o1, %o4, %o4
	sllx	%o4, %o2, %o5
	srlx	%o5, 32, %o4
	sub	%g0, %o2, %g1
	sllx	%o0, 32, %g2
	srl	%o1, 0, %o1
	or	%o1, %g2, %g2
	srlx	%g2, %g1, %g3
	srlx	%g3, 32, %g2
	or	%g2, %o4, %o0
	jmp	%o7+8
	 or	%g3, %o5, %o1
	.size	rotl64, .-rotl64
	.align 4
	.align 32
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	sllx	%o0, 32, %o4
	srl	%o1, 0, %o1
	or	%o1, %o4, %o4
	srlx	%o4, %o2, %o5
	srlx	%o5, 32, %o4
	sub	%g0, %o2, %g1
	sllx	%o0, 32, %g2
	srl	%o1, 0, %o1
	or	%o1, %g2, %g2
	sllx	%g2, %g1, %g3
	srlx	%g3, 32, %g2
	or	%g2, %o4, %o0
	jmp	%o7+8
	 or	%g3, %o5, %o1
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
	jmp	%o7+8
	 or	%o0, %o1, %o0
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
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotr32, .-rotr32
	.align 4
	.align 32
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	016
rotl_sz:
	sub	%g0, %o1, %g1
	sll	%o0, %o1, %o1
	srl	%o0, %g1, %o0
	jmp	%o7+8
	 or	%o0, %o1, %o0
	.size	rotl_sz, .-rotl_sz
	.align 4
	.align 32
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	016
rotr_sz:
	sub	%g0, %o1, %g1
	srl	%o0, %o1, %o1
	sll	%o0, %g1, %o0
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
	sll	%g3, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
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
	sll	%g3, 16, %g4
	jmp	%o7+8
	 srl	%g4, 16, %o0
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
	srl	%o0, 8, %g1
	sll	%o0, 8, %o0
	or	%g1, %o0, %g2
	sll	%g2, 16, %g3
	jmp	%o7+8
	 srl	%g3, 16, %o0
	.size	bswap_16, .-bswap_16
	.align 4
	.align 32
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	sethi	%hi(64512), %g3
	srl	%o0, 24, %g4
	srl	%o0, 8, %g2
	sll	%o0, 24, %g1
	or	%g3, 768, %g3
	or	%g1, %g4, %g1
	sll	%o0, 8, %o0
	and	%g2, %g3, %g4
	sethi	%hi(16711680), %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %g3
	jmp	%o7+8
	 or	%g1, %g3, %o0
	.size	bswap_32, .-bswap_32
	.align 4
	.align 32
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	srl	%o1, 24, %g1
	sll	%o0, 8, %g2
	sethi	%hi(64512), %o5
	sll	%o0, 24, %o3
	or	%g2, %g1, %g2
	or	%o5, 768, %o5
	srl	%o0, 8, %o4
	srl	%o1, 8, %g4
	and	%o4, %o5, %o4
	sethi	%hi(16711680), %o2
	sll	%o1, 24, %g3
	srl	%o0, 24, %g1
	or	%o3, %g4, %g4
	and	%g2, 255, %o0
	or	%g3, %o0, %g3
	and	%g2, %o2, %g2
	or	%g1, %o4, %g1
	sll	%o1, 8, %o1
	and	%g4, %o5, %o5
	and	%o1, %o2, %o2
	or	%g1, %g2, %g1
	or	%g3, %o5, %o4
	or	%o4, %o2, %o0
	jmp	%o7+8
	 or	%g1, %o3, %o1
	.size	bswap_64, .-bswap_64
	.align 4
	.align 32
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	ba,pt	%xcc, .L694
	 mov	0, %g1
.L692:
	cmp	%g1, 32
	be,pn	%icc, .L696
	 nop
.L694:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%icc, .L692
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L696:
	jmp	%o7+8
	 mov	0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	orcc	%o0, 0, %g1
	be,pn	%icc, .L704
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne,pn	%icc, .L704
	 nop
	mov	1, %o0
.L699:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be,pt	%icc, .L699
	 add	%o0, 1, %o0
.L704:
	jmp	%o7+8
	 nop
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.align 32
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	sethi	%hi(4286578687), %g1
	or	%g1, %lo(4286578687), %g1
	movwtos	%o0, %f8
	movwtos	%g1, %f9
	fcmpes	%fcc0, %f8, %f9
	fbl,pt	%fcc0, .L708
	 mov	1, %o0
	sethi	%hi(2139095039), %g1
	or	%g1, %lo(2139095039), %g1
	movwtos	%g1, %f0
	fcmpes	%fcc1, %f8, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L708:
	jmp	%o7+8
	 nop
	.size	gl_isinff, .-gl_isinff
	.align 4
	.align 32
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	sethi	%hi(-1049600), %g2
	or	%g2, 1023, %g1
	mov	-1, %g3
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	movwtos	%g1, %f10
	movwtos	%g3, %f11
	fcmped	%fcc2, %f8, %f10
	fbl,pt	%fcc2, .L712
	 mov	1, %o0
	sethi	%hi(2146434048), %g4
	or	%g4, 1023, %o0
	mov	-1, %o1
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	fcmped	%fcc3, %f8, %f10
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L712:
	jmp	%o7+8
	 nop
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.align 32
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	sethi	%hi(-1049600), %g2
	or	%g2, 1023, %g1
	mov	-1, %g3
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	movwtos	%g1, %f10
	movwtos	%g3, %f11
	fcmped	%fcc0, %f8, %f10
	fbl,pt	%fcc0, .L716
	 mov	1, %o0
	sethi	%hi(2146434048), %g4
	or	%g4, 1023, %o0
	mov	-1, %o1
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	fcmped	%fcc1, %f8, %f10
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L716:
	jmp	%o7+8
	 nop
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.align 32
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	movwtos	%o1, %f8
	fitod	%f8, %f0
	jmp	%o7+8
	 std	%f0, [%o0]
	.size	_Qp_itoq, .-_Qp_itoq
	.align 4
	.align 32
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	movwtos	%o0, %f0
	fcmps	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L734
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L734
	 nop
	sethi	%hi(1056964608), %g1
	movwtos	%g1, %f1
	sethi	%hi(1073741824), %g1
	movwtos	%g1, %f9
	cmp	%o1, 0
	fmovsge	%icc, %f9, %f1
	andcc	%o1, 1, %g0
	be,pt	%icc, .L733
	 srl	%o1, 31, %g1
.L722:
	fmuls	%f0, %f1, %f0
	srl	%o1, 31, %g1
.L733:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be,pn	%icc, .L734
	 nop
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L722
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L732:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L722
	 add	%g1, %o1, %g1
	ba,pt	%xcc, .L732
	 sra	%g1, 1, %o1
.L734:
	jmp	%o7+8
	 nop
	.size	ldexpf, .-ldexpf
	.align 4
	.align 32
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	movwtos	%o0, %f0
	movwtos	%o1, %f1
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L752
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L752
	 nop
	sethi	%hi(1073741824), %g2
	mov	0, %g3
	cmp	%o2, 0
	movwtos	%g2, %f8
	bl,pn	%icc, .L748
	 movwtos	%g3, %f9
	andcc	%o2, 1, %g0
	be,pt	%icc, .L751
	 srl	%o2, 31, %g1
.L739:
	fmuld	%f0, %f8, %f0
.L738:
	srl	%o2, 31, %g1
.L751:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L752
	 nop
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L739
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L750:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L739
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L750
	 sra	%g1, 1, %o2
.L752:
	jmp	%o7+8
	 nop
.L748:
	sethi	%hi(1071644672), %g1
	mov	0, %g4
	andcc	%o2, 1, %g0
	movwtos	%g1, %f8
	be,pt	%icc, .L738
	 movwtos	%g4, %f9
	ba,pt	%xcc, .L738
	 fmuld	%f0, %f8, %f0
	.size	ldexp, .-ldexp
	.align 4
	.align 32
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	movwtos	%o0, %f0
	movwtos	%o1, %f1
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L770
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc3, %f0, %f8
	fbe,pt	%fcc3, .L770
	 nop
	sethi	%hi(1073741824), %g2
	mov	0, %g3
	cmp	%o2, 0
	movwtos	%g2, %f8
	bl,pn	%icc, .L766
	 movwtos	%g3, %f9
	andcc	%o2, 1, %g0
	be,pt	%icc, .L769
	 srl	%o2, 31, %g1
.L757:
	fmuld	%f0, %f8, %f0
.L756:
	srl	%o2, 31, %g1
.L769:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L770
	 nop
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L757
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L768:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L757
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L768
	 sra	%g1, 1, %o2
.L770:
	jmp	%o7+8
	 nop
.L766:
	sethi	%hi(1071644672), %g1
	mov	0, %g4
	andcc	%o2, 1, %g0
	movwtos	%g1, %f8
	be,pt	%icc, .L756
	 movwtos	%g4, %f9
	ba,pt	%xcc, .L756
	 fmuld	%f0, %f8, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be,pn	%icc, .L806
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L779
	 or	%o0, %o1, %g1
	andcc	%g1, 7, %g0
	bne,pn	%icc, .L779
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L804:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L804
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o0, %g1, %g2
	add	%o1, %g1, %g3
	be,pn	%icc, .L806
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %o5
	xor	%g4, %o5, %o1
	cmp	%o2, 1
	be,pn	%icc, .L806
	 stb	%o1, [%o0+%g1]
	ldub	[%g2+1], %g4
	ldub	[%g3+1], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 2
	be,pn	%icc, .L806
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %o5
	ldub	[%g3+2], %g1
	xor	%g1, %o5, %g1
	cmp	%o2, 3
	be,pn	%icc, .L806
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %o1
	ldub	[%g3+3], %g1
	xor	%g1, %o1, %g1
	cmp	%o2, 4
	be,pn	%icc, .L806
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g4
	ldub	[%g3+4], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 5
	be,pn	%icc, .L806
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %o5
	ldub	[%g3+5], %g1
	xor	%g1, %o5, %g1
	cmp	%o2, 6
	be,pn	%icc, .L806
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %o2
	ldub	[%g3+6], %g1
	xor	%g1, %o2, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L779:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L805:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g4
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L805
	 ldub	[%o0+%g1], %g3
.L806:
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
	be,pn	%icc, .L808
	 mov	%o0, %g1
.L809:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L809
	 add	%g1, 1, %g1
.L808:
	cmp	%o2, 0
	bne,a,pt %icc, .L823
	 ldub	[%o1], %g4
	jmp	%o7+8
	 stb	%g0, [%g1]
.L812:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L824
	 stb	%g0, [%g1]
	ldub	[%o1], %g4
.L823:
	sll	%g4, 24, %g3
	cmp	%g3, 0
	stb	%g4, [%g1]
	add	%g1, 1, %g1
	bne,pt	%icc, .L812
	 add	%o1, 1, %o1
.L824:
	jmp	%o7+8
	 nop
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	cmp	%o1, 0
	be,pn	%icc, .L825
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L833:
	cmp	%g2, 0
	bne,a,pn %icc, .L828
	 add	%g1, 1, %g1
.L825:
	jmp	%o7+8
	 mov	%g1, %o0
.L828:
	cmp	%o1, %g1
	bne,a,pt %icc, .L833
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L825
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.align 32
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	ldub	[%o0], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	be,a,pn	%icc, .L843
	 mov	0, %o0
.L835:
	mov	%o1, %g1
	ba,pt	%xcc, .L838
	 sra	%g4, 24, %g4
.L837:
	be,pn	%icc, .L843
	 add	%g1, 1, %g1
.L838:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L837
	 cmp	%g2, %g4
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	bne,pt	%icc, .L835
	 add	%o0, 1, %o0
	mov	0, %o0
.L843:
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
.L845:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L845
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
	sll	%o2, 24, %g3
	cmp	%g3, 0
	be,pn	%icc, .L869
	 mov	%o0, %g4
	mov	%o1, %g1
.L849:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L849
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be,pn	%icc, .L869
	 mov	%g4, %o0
	add	%o1, -1, %o0
	sra	%g3, 24, %o2
	ba,pt	%xcc, .L866
	 add	%o0, %g1, %o0
.L868:
	be,pn	%icc, .L867
	 add	%g4, 1, %g4
.L866:
	ldub	[%g4], %g1
	sll	%g1, 24, %o3
	sra	%o3, 24, %o4
	cmp	%o4, %o2
	bne,pt	%icc, .L868
	 cmp	%o4, 0
	mov	%o1, %g2
	mov	%g4, %o5
	ba,pt	%xcc, .L851
	 and	%g1, 0xff, %g1
.L853:
	ldub	[%o5], %g1
	cmp	%g1, 0
	be,pn	%icc, .L852
	 add	%g2, 1, %g2
.L851:
	ldub	[%g2], %g3
	xor	%g2, %o0, %o3
	cmp	%g0, %o3
	addx	%g0, 0, %o4
	xor	%g3, %g1, %o3
	cmp	%g0, %g3
	addx	%g0, 0, %g3
	cmp	%g0, %o3
	subx	%g0, -1, %o3
	and	%g3, %o3, %g3
	andcc	%o4, %g3, %g0
	bne,pt	%icc, .L853
	 add	%o5, 1, %o5
.L852:
	ldub	[%g2], %o5
	cmp	%g1, %o5
	be,a,pn	%icc, .L869
	 mov	%g4, %o0
	ba,pt	%xcc, .L866
	 add	%g4, 1, %g4
.L867:
	jmp	%o7+8
	 mov	0, %o0
.L869:
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
	movwtos	%o0, %f0
	movwtos	%o1, %f1
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L880
	 movwtos	%o2, %f10
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L881
	 nop
	movwtos	%o2, %f10
	movwtos	%o3, %f11
	fcmped	%fcc3, %f10, %f8
	fbl,pn	%fcc3, .L873
	 nop
.L881:
	jmp	%o7+8
	 nop
.L880:
	movwtos	%o3, %f11
	fcmped	%fcc1, %f10, %f8
	fbule,pt %fcc1, .L881
	 nop
.L873:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be,pn	%icc, .L882
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu,pn	%icc, .L882
	 mov	0, %g2
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,pn	%icc, .L882
	 nop
	ldub	[%o2], %g1
	mov	%o0, %g2
	sll	%g1, 24, %o0
	sra	%o0, 24, %o4
	ldsb	[%g2], %g1
.L903:
	cmp	%g1, %o4
	be,pn	%icc, .L902
	 add	%g2, 1, %o5
	mov	%o5, %g2
.L884:
	cmp	%o1, %g2
	bgeu,a,pt %icc, .L903
	 ldsb	[%g2], %g1
.L893:
	mov	0, %g2
.L882:
	jmp	%o7+8
	 mov	%g2, %o0
.L902:
	cmp	%o3, 1
	be,pn	%icc, .L882
	 nop
.L887:
	ba,pt	%xcc, .L885
	 mov	1, %g1
.L886:
	cmp	%g1, %o3
	be,pn	%icc, .L882
	 nop
.L885:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be,pt	%icc, .L886
	 add	%g1, 1, %g1
	cmp	%o1, %o5
	blu,pn	%icc, .L893
	 sra	%o0, 24, %g1
	ldsb	[%o5], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L884
	 add	%o5, 1, %g2
	mov	%o5, %g1
	mov	%g2, %o5
	ba,pt	%xcc, .L887
	 mov	%g1, %g2
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L905
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L905:
	return	%i7+8
	 add	%o0, %o2, %o0
	.size	mempcpy, .-mempcpy
	.align 4
	.align 32
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	fzero	%f8
	movwtos	%o0, %f0
	movwtos	%o1, %f1
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L932
	 sethi	%hi(1072693248), %g2
	mov	0, %g3
	movwtos	%g2, %f10
	movwtos	%g3, %f11
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L933
	 mov	0, %g4
.L912:
	sethi	%hi(1071644672), %g2
	mov	0, %g3
	sethi	%hi(1072693248), %o0
	mov	0, %o1
	movwtos	%g2, %f10
	movwtos	%g3, %f11
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	mov	0, %g1
.L918:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc2, %f0, %f8
	fbge,pt	%fcc2, .L918
	 add	%g1, 1, %g1
	cmp	%g4, 0
	be,pn	%icc, .L936
	 st	%g1, [%o2]
.L935:
	jmp	%o7+8
	 fnegd	%f0, %f0
.L933:
	sethi	%hi(1071644672), %o0
	mov	0, %o1
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	fcmped	%fcc1, %f0, %f10
	fbuge,pt %fcc1, .L915
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,a,pn %fcc2, .L937
	 fmovd	%f0, %f2
.L915:
	jmp	%o7+8
	 st	%g0, [%o2]
.L932:
	sethi	%hi(-1074790400), %g1
	mov	0, %g4
	movwtos	%g1, %f8
	movwtos	%g4, %f9
	fcmped	%fcc0, %f0, %f8
	fbug,pn	%fcc0, .L934
	 fnegd	%f0, %f2
	fmovd	%f2, %f0
	ba,pt	%xcc, .L912
	 mov	1, %g4
.L934:
	sethi	%hi(-1075838976), %g2
	mov	0, %g3
	movwtos	%g2, %f10
	movwtos	%g3, %f11
	fcmped	%fcc3, %f0, %f10
	fbule,pt %fcc3, .L915
	 nop
	mov	1, %g4
.L913:
	sethi	%hi(1071644672), %o0
.L937:
	mov	0, %o1
	fmovd	%f2, %f0
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	mov	0, %g1
.L920:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f8
	fbl,pt	%fcc1, .L920
	 add	%g1, -1, %g1
	cmp	%g4, 0
	bne,pt	%icc, .L935
	 st	%g1, [%o2]
.L936:
	jmp	%o7+8
	 nop
	.size	frexp, .-frexp
	.align 4
	.align 32
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -96, %sp
	orcc	%i1, %i0, %g0
	mov	0, %o2
	be,pn	%icc, .L938
	 mov	0, %o3
.L941:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o5
	and	%o5, %i3, %i5
	sll	%i0, 31, %g4
	mov	0, %g2
	srl	%i1, 1, %i1
	subx	%g0, %g2, %o4
	srl	%i0, 1, %i0
	and	%o4, %i2, %i4
	addcc	%o3, %i5, %o3
	or	%g4, %i1, %i1
	srl	%i3, 31, %g3
	sll	%i2, 1, %i2
	addx	%o2, %i4, %o2
	orcc	%i0, %i1, %g0
	or	%g3, %i2, %i2
	bne,pt	%icc, .L941
	 sll	%i3, 1, %i3
.L938:
	mov	%o2, %i0
	jmp	%i7+8
	 restore %g0, %o3, %o1
	.size	__muldi3, .-__muldi3
	.align 4
	.align 32
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	cmp	%o1, %o0
	mov	%o0, %g2
	bgeu,pn	%icc, .L963
	 mov	1, %g1
	cmp	%o1, 0
.L965:
	bl,a,pn	%icc, .L952
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L965
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L951
	 mov	0, %o0
	mov	0, %o0
.L952:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne,pt	%icc, .L952
	 srl	%o1, 1, %o1
.L951:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L963:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L951
	 subx	%g0, -1, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	sra	%o0, 7, %g1
	xor	%o0, %g1, %g1
	sll	%g1, 8, %g1
	srl	%g1, 0, %g1
	lzd	%g1, %g1
	sub	%g1, 32, %g1
	sra	%o0, 31, %g3
	cmp	%g3, %o0
	add	%g1, -1, %g1
	mov	7, %g2
	movne	%icc, %g1, %g2
	jmp	%o7+8
	 mov	%g2, %o0
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.align 32
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	sra	%o0, 31, %g1
	cmp	%o0, %g1
	xor	%o0, %g1, %g2
	be,pn	%icc, .L975
	 xor	%o1, %g1, %g3
.L973:
	srl	%g3, 0, %g3
	sllx	%g2, 32, %g1
	or	%g3, %g1, %g1
	lzd	%g1, %g3
	clr	%g2
	jmp	%o7+8
	 add	%g3, -1, %o0
.L975:
	cmp	%o1, %o0
	bne,pt	%icc, .L973
	 nop
	jmp	%o7+8
	 mov	63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	orcc	%o0, 0, %g2
	be,pn	%icc, .L982
	 mov	0, %o0
.L978:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L978
	 sll	%o1, 1, %o1
.L982:
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	cmp	%o0, %o1
	srl	%o2, 3, %g3
	blu,pt	%icc, .L987
	 and	%o2, -8, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1044
	 cmp	%o2, 0
.L987:
	cmp	%g3, 0
	sll	%g3, 3, %o3
	be,pn	%icc, .L1040
	 mov	0, %g1
.L990:
	add	%o1, %g1, %o5
	ldd	[%o5], %o4
	add	%o0, %g1, %g3
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne,pt	%icc, .L990
	 std	%o4, [%g3]
	cmp	%o2, %g2
	bleu,pn	%icc, .L1049
	 nop
	sub	%o2, %g2, %o3
	add	%o3, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L1042
	 add	%g2, 1, %g1
	add	%o0, %g2, %g3
	add	%o1, %g2, %g4
	add	%o1, %g1, %o5
	sub	%g3, %o5, %o5
	or	%g4, %g3, %o4
	cmp	%o5, 6
	and	%o4, 7, %o4
	mov	0, %o5
	movgu	%icc, 1, %o5
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	andcc	%o5, %o4, %g0
	be,pn	%icc, .L1042
	 and	%o3, -8, %o5
	mov	0, %g1
	ldd	[%g4+%g1], %f0
.L1047:
	std	%f0, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne,a,pt %icc, .L1047
	 ldd	[%g4+%g1], %f0
	cmp	%o3, %g1
	be,pn	%icc, .L1050
	 add	%g2, %g1, %g2
	ldub	[%o1+%g2], %o3
	add	%g2, 1, %g1
	cmp	%g1, %o2
	bgeu,pn	%icc, .L1050
	 stb	%o3, [%o0+%g2]
	ldub	[%o1+%g1], %g4
	add	%g2, 2, %g3
	cmp	%o2, %g3
	bleu,pn	%icc, .L1050
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%g3], %o4
	add	%g2, 3, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1050
	 stb	%o4, [%o0+%g3]
	ldub	[%o1+%g1], %o5
	add	%g2, 4, %o3
	cmp	%o2, %o3
	bleu,pn	%icc, .L1050
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%o3], %g4
	add	%g2, 5, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1050
	 stb	%g4, [%o0+%o3]
	ldub	[%o1+%g1], %g3
	add	%g2, 6, %g2
	cmp	%o2, %g2
	bleu,pn	%icc, .L1050
	 stb	%g3, [%o0+%g1]
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1045:
	add	%g1, 1, %g1
.L1042:
	ldub	[%o1+%g2], %o4
	cmp	%o2, %g1
	stb	%o4, [%o0+%g2]
	bne,pt	%icc, .L1045
	 mov	%g1, %g2
.L1050:
	jmp	%o7+8
	 nop
.L1044:
	be,pn	%icc, .L1050
	 add	%o2, -1, %g4
	cmp	%g4, 8
	bleu,pn	%icc, .L1039
	 add	%o2, -2, %g2
	add	%o1, %g2, %o3
	add	%o2, -8, %o5
	add	%o0, %g4, %g1
	add	%o0, %o5, %o4
	sub	%g1, %o3, %g1
	add	%o1, %o5, %o5
	add	%g1, 6, %g1
	or	%o4, %o5, %g2
	cmp	%g1, 6
	and	%g2, 7, %o3
	mov	0, %g1
	movgu	%icc, 1, %g1
	cmp	%g0, %o3
	subx	%g0, -1, %g2
	andcc	%g1, %g2, %g0
	be,pn	%icc, .L1039
	 mov	0, %g1
	mov	0, %o3
.L998:
	ldd	[%o5+%g1], %f8
	add	%o3, 1, %o3
	std	%f8, [%o4+%g1]
	cmp	%g3, %o3
	bgu,pt	%icc, .L998
	 add	%g1, -8, %g1
	sll	%g3, 3, %g3
	cmp	%o2, %g3
	be,pn	%icc, .L1050
	 sub	%g4, %g3, %g4
	ldub	[%o1+%g4], %o2
	cmp	%g4, 0
	stb	%o2, [%o0+%g4]
	be,pn	%icc, .L1050
	 add	%g4, -1, %g1
	ldub	[%o1+%g1], %o4
	cmp	%g1, 0
	stb	%o4, [%o0+%g1]
	be,pn	%icc, .L1050
	 add	%g4, -2, %o5
	ldub	[%o1+%o5], %g2
	cmp	%o5, 0
	stb	%g2, [%o0+%o5]
	be,pn	%icc, .L1050
	 add	%g4, -3, %g1
	ldub	[%o1+%g1], %o3
	cmp	%g1, 0
	stb	%o3, [%o0+%g1]
	be,pn	%icc, .L1050
	 add	%g4, -4, %o2
	ldub	[%o1+%o2], %g3
	cmp	%o2, 0
	stb	%g3, [%o0+%o2]
	be,pn	%icc, .L1050
	 add	%g4, -5, %g1
	ldub	[%o1+%g1], %o4
	cmp	%g1, 0
	stb	%o4, [%o0+%g1]
	be,pn	%icc, .L1050
	 add	%g4, -6, %g4
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L1039:
	ldub	[%o1+%g4], %g1
.L1048:
	stb	%g1, [%o0+%g4]
	add	%g4, -1, %g4
	cmp	%g4, -1
	be,pn	%icc, .L1049
	 nop
	ldub	[%o1+%g4], %g1
	stb	%g1, [%o0+%g4]
	add	%g4, -1, %g4
	cmp	%g4, -1
	bne,a,pt %icc, .L1048
	 ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 nop
.L1040:
	cmp	%o2, 0
	bne,pt	%icc, .L1042
	 add	%g2, 1, %g1
	jmp	%o7+8
	 nop
.L1049:
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
	blu,pt	%icc, .L1055
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1104
	 cmp	%o2, 0
.L1055:
	cmp	%g3, 0
	be,pn	%icc, .L1054
	 add	%g3, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L1058
	 or	%o1, %o0, %o5
	and	%o5, 7, %g4
	add	%o1, 2, %g1
	cmp	%g0, %g4
	sub	%o0, %g1, %g1
	subx	%g0, -1, %o5
	mov	0, %g2
	cmp	%g1, 4
	movgu	%icc, 1, %g2
	andcc	%o5, %g2, %g0
	be,pn	%icc, .L1058
	 srl	%o2, 3, %g4
	and	%o2, -8, %o5
	mov	0, %g1
	ldd	[%o1+%g1], %f0
.L1109:
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne,a,pt %icc, .L1109
	 ldd	[%o1+%g1], %f0
	sll	%g4, 2, %g2
	cmp	%g3, %g2
	be,pn	%icc, .L1110
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g4
	add	%g2, 1, %o5
	cmp	%g3, %o5
	bleu,pn	%icc, .L1054
	 sth	%g4, [%o0+%g1]
	add	%g1, 2, %g4
	lduh	[%o1+%g4], %o5
	add	%g2, 2, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L1054
	 sth	%o5, [%o0+%g4]
	add	%g1, 4, %g1
	lduh	[%o1+%g1], %g3
	sth	%g3, [%o0+%g1]
.L1054:
	andcc	%o2, 1, %g0
.L1110:
	be,pt	%icc, .L1114
	 nop
	add	%o2, -1, %o2
.L1108:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L1104:
	be,pn	%icc, .L1115
	 add	%o2, -1, %g2
	cmp	%g2, 8
	bgu,pt	%icc, .L1106
	 add	%o2, -2, %g4
.L1103:
	ldub	[%o1+%g2], %g1
.L1111:
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne,a,pt %icc, .L1111
	 ldub	[%o1+%g2], %g1
.L1115:
	jmp	%o7+8
	 nop
.L1106:
	add	%o2, -8, %g3
	add	%o1, %g4, %g4
	add	%o0, %g2, %g1
	add	%o0, %g3, %o5
	sub	%g1, %g4, %g1
	add	%o1, %g3, %g3
	add	%g1, 6, %g1
	or	%o5, %g3, %g4
	cmp	%g1, 6
	and	%g4, 7, %g4
	mov	0, %g1
	movgu	%icc, 1, %g1
	cmp	%g0, %g4
	subx	%g0, -1, %g4
	andcc	%g1, %g4, %g0
	be,pn	%icc, .L1103
	 and	%o2, -8, %g1
	sub	%g0, %g1, %g4
	mov	0, %g1
	ldd	[%g3+%g1], %f8
.L1112:
	std	%f8, [%o5+%g1]
	add	%g1, -8, %g1
	cmp	%g1, %g4
	bne,a,pt %icc, .L1112
	 ldd	[%g3+%g1], %f8
	and	%o2, -8, %g1
	andcc	%o2, 7, %g0
	be,pn	%icc, .L1115
	 sub	%g2, %g1, %g2
	ldub	[%o1+%g2], %o2
	cmp	%g2, 0
	stb	%o2, [%o0+%g2]
	be,pn	%icc, .L1115
	 add	%g2, -1, %g1
	ldub	[%o1+%g1], %o5
	cmp	%g1, 0
	stb	%o5, [%o0+%g1]
	be,pn	%icc, .L1115
	 add	%g2, -2, %g3
	ldub	[%o1+%g3], %g4
	cmp	%g3, 0
	stb	%g4, [%o0+%g3]
	be,pn	%icc, .L1115
	 add	%g2, -3, %g1
	ldub	[%o1+%g1], %o2
	cmp	%g1, 0
	stb	%o2, [%o0+%g1]
	be,pn	%icc, .L1115
	 add	%g2, -4, %o5
	ldub	[%o1+%o5], %g3
	cmp	%o5, 0
	stb	%g3, [%o0+%o5]
	be,pn	%icc, .L1115
	 add	%g2, -5, %g1
	ldub	[%o1+%g1], %g4
	cmp	%g1, 0
	stb	%g4, [%o0+%g1]
	be,pn	%icc, .L1115
	 add	%g2, -6, %g2
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1058:
	sll	%g3, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %o5
.L1113:
	sth	%o5, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %icc, .L1113
	 lduh	[%o1+%g1], %o5
	andcc	%o2, 1, %g0
	be,pt	%icc, .L1114
	 nop
	ba,pt	%xcc, .L1108
	 add	%o2, -1, %o2
.L1114:
	jmp	%o7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.align 32
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	cmp	%o0, %o1
	srl	%o2, 2, %g4
	blu,pt	%icc, .L1121
	 and	%o2, -4, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1181
	 cmp	%o2, 0
.L1121:
	cmp	%g4, 0
	be,pn	%icc, .L1182
	 cmp	%o2, 0
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L1123
	 or	%o0, %o1, %o3
	and	%o3, 7, %o4
	add	%o1, 4, %g1
	cmp	%g0, %o4
	xor	%o0, %g1, %g1
	subx	%g0, -1, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%g3, %g1, %g0
	be,pn	%icc, .L1123
	 srl	%o2, 3, %o5
	and	%o2, -8, %o3
	mov	0, %g1
	ldd	[%o1+%g1], %f0
.L1186:
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne,a,pt %icc, .L1186
	 ldd	[%o1+%g1], %f0
	sll	%o5, 1, %o4
	cmp	%g4, %o4
	be,pn	%icc, .L1185
	 cmp	%o2, %g2
	ld	[%o1+%g1], %g4
	st	%g4, [%o0+%g1]
.L1185:
	bleu,pn	%icc, .L1191
	 nop
	sub	%o2, %g2, %o3
	add	%o3, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L1178
	 add	%g2, 1, %g1
	add	%o0, %g2, %g3
	add	%o1, %g1, %o4
	add	%o1, %g2, %o5
	sub	%g3, %o4, %g4
	or	%o5, %g3, %o4
	cmp	%g4, 6
	and	%o4, 7, %o4
	mov	0, %g4
	movgu	%icc, 1, %g4
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	andcc	%g4, %o4, %g0
	be,pn	%icc, .L1178
	 and	%o3, -8, %g4
	mov	0, %g1
	ldd	[%o5+%g1], %f2
.L1187:
	std	%f2, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g4, %g1
	bne,a,pt %icc, .L1187
	 ldd	[%o5+%g1], %f2
	cmp	%o3, %g4
	be,pn	%icc, .L1192
	 add	%g2, %g4, %g2
	ldub	[%o1+%g2], %o3
	add	%g2, 1, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1192
	 stb	%o3, [%o0+%g2]
	ldub	[%o1+%g1], %o5
	add	%g2, 2, %g3
	cmp	%g3, %o2
	bgeu,pn	%icc, .L1192
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%g3], %o4
	add	%g2, 3, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1192
	 stb	%o4, [%o0+%g3]
	ldub	[%o1+%g1], %g4
	add	%g2, 4, %o3
	cmp	%o2, %o3
	bleu,pn	%icc, .L1192
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%o3], %o5
	add	%g2, 5, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1192
	 stb	%o5, [%o0+%o3]
	ldub	[%o1+%g1], %g3
	add	%g2, 6, %g2
	cmp	%o2, %g2
	bleu,pn	%icc, .L1192
	 stb	%g3, [%o0+%g1]
.L1179:
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1183:
	add	%g1, 1, %g1
.L1178:
	ldub	[%o1+%g2], %o4
	cmp	%o2, %g1
	stb	%o4, [%o0+%g2]
	bne,pt	%icc, .L1183
	 mov	%g1, %g2
.L1192:
	jmp	%o7+8
	 nop
.L1181:
	be,pn	%icc, .L1192
	 add	%o2, -1, %g2
	cmp	%g2, 8
	bleu,pn	%icc, .L1177
	 add	%o2, -2, %o3
	add	%o2, -8, %g3
	add	%o1, %o3, %o4
	add	%o0, %g2, %g1
	add	%o0, %g3, %o5
	add	%o1, %g3, %o3
	sub	%g1, %o4, %g1
	add	%g1, 6, %g1
	or	%o5, %o3, %g4
	cmp	%g1, 6
	and	%g4, 7, %g3
	mov	0, %g1
	movgu	%icc, 1, %g1
	cmp	%g0, %g3
	subx	%g0, -1, %o4
	andcc	%g1, %o4, %g0
	be,pn	%icc, .L1177
	 and	%o2, -8, %g4
	sub	%g0, %g4, %g3
	mov	0, %g1
	ldd	[%o3+%g1], %f8
.L1188:
	std	%f8, [%o5+%g1]
	add	%g1, -8, %g1
	cmp	%g3, %g1
	bne,a,pt %icc, .L1188
	 ldd	[%o3+%g1], %f8
	and	%o2, -8, %g1
	andcc	%o2, 7, %g0
	be,pn	%icc, .L1192
	 sub	%g2, %g1, %g2
	ldub	[%o1+%g2], %o2
	cmp	%g2, 0
	stb	%o2, [%o0+%g2]
	be,pn	%icc, .L1192
	 add	%g2, -1, %g1
	ldub	[%o1+%g1], %o5
	cmp	%g1, 0
	stb	%o5, [%o0+%g1]
	be,pn	%icc, .L1192
	 add	%g2, -2, %o3
	ldub	[%o1+%o3], %o4
	cmp	%o3, 0
	stb	%o4, [%o0+%o3]
	be,pn	%icc, .L1192
	 add	%g2, -3, %g1
	ldub	[%o1+%g1], %g4
	cmp	%g1, 0
	stb	%g4, [%o0+%g1]
	be,pn	%icc, .L1192
	 add	%g2, -4, %g3
	ldub	[%o1+%g3], %o2
	cmp	%g3, 0
	stb	%o2, [%o0+%g3]
	be,pn	%icc, .L1192
	 add	%g2, -5, %g1
	ldub	[%o1+%g1], %o5
	cmp	%g1, 0
	stb	%o5, [%o0+%g1]
	bne,pt	%icc, .L1179
	 add	%g2, -6, %g2
	jmp	%o7+8
	 nop
.L1177:
	ldub	[%o1+%g2], %g1
.L1189:
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cmp	%g2, -1
	be,pn	%icc, .L1191
	 nop
	ldub	[%o1+%g2], %g1
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne,a,pt %icc, .L1189
	 ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 nop
.L1123:
	sll	%g4, 2, %o5
	mov	0, %g1
	ld	[%o1+%g1], %g3
.L1190:
	st	%g3, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a,pt %icc, .L1190
	 ld	[%o1+%g1], %g3
	ba,pt	%xcc, .L1185
	 cmp	%o2, %g2
.L1182:
	bne,pt	%icc, .L1178
	 add	%g2, 1, %g1
	jmp	%o7+8
	 nop
.L1191:
	jmp	%o7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.align 32
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	sra	%o0, 31, %g2
	wr	%g2, 0, %y
	sdiv	%o0, %o1, %g1
	smul	%g1, %o1, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
	.size	__modi, .-__modi
	.align 4
	.align 32
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	mov	%o0, %o1
	mov	0, %o0
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	jmp	%o7+8
	 fxtod	%f8, %f0
	.size	__uitod, .-__uitod
	.align 4
	.align 32
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	mov	%o0, %o1
	mov	0, %o0
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	jmp	%o7+8
	 fxtos	%f8, %f0
	.size	__uitof, .-__uitof
	.section	".rodata"
	.align 8
.LC32:
	.long	1077870592
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -112, %sp
	movwtos	%i0, %f8
	movwtos	%i1, %f9
	mov	0, %o2
	fxtoq	%f8, %f0
	mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	std	%f0, [%fp-16]
	call	__cmpdi2, 0
	 std	%f2, [%fp-8]
	cmp	%o0, 1
	ldd	[%fp-16], %f0
	bge,pt	%icc, .L1197
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC32), %g1
	or	%g1, %lo(.LC32), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1197:
	return	%i7+8
	 fqtod	%f0, %f0
	.size	__ulltod, .-__ulltod
	.section	".rodata"
	.align 8
.LC34:
	.long	1077870592
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -112, %sp
	movwtos	%i0, %f8
	movwtos	%i1, %f9
	mov	0, %o2
	fxtoq	%f8, %f0
	mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	std	%f0, [%fp-16]
	call	__cmpdi2, 0
	 std	%f2, [%fp-8]
	cmp	%o0, 1
	ldd	[%fp-16], %f0
	bge,pt	%icc, .L1199
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC34), %g1
	or	%g1, %lo(.LC34), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1199:
	return	%i7+8
	 fqtos	%f0, %f0
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
	jmp	%o7+8
	 sub	%o0, %o1, %o0
	.size	__umodi, .-__umodi
	.align 4
	.align 32
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	sra	%o0, 15, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1201
	 mov	13, %g1
	cmp	%g0, %o0
	sra	%o0, 1, %o0
	subx	%g0, -1, %g2
	mov	14, %g1
	add	%g2, 15, %g3
	cmp	%o0, 0
	move	%icc, %g3, %g1
.L1201:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	andcc	%o0, 1, %g0
	bne,pn	%icc, .L1219
	 mov	0, %g1
	andcc	%o0, 2, %g0
	bne,pn	%icc, .L1219
	 mov	1, %g1
	andcc	%o0, 4, %g0
	bne,pn	%icc, .L1219
	 mov	2, %g1
	andcc	%o0, 8, %g0
	bne,pn	%icc, .L1219
	 mov	3, %g1
	andcc	%o0, 16, %g0
	bne,pn	%icc, .L1219
	 mov	4, %g1
	andcc	%o0, 32, %g0
	bne,pn	%icc, .L1219
	 mov	5, %g1
	andcc	%o0, 64, %g0
	bne,pn	%icc, .L1219
	 mov	6, %g1
	andcc	%o0, 128, %g0
	bne,pn	%icc, .L1219
	 mov	7, %g1
	andcc	%o0, 256, %g0
	bne,pn	%icc, .L1219
	 mov	8, %g1
	andcc	%o0, 512, %g0
	bne,pn	%icc, .L1219
	 mov	9, %g1
	andcc	%o0, 1024, %g0
	bne,pn	%icc, .L1219
	 mov	10, %g1
	andcc	%o0, 2048, %g0
	bne,pn	%icc, .L1219
	 mov	11, %g1
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1219
	 mov	12, %g1
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1219
	 mov	13, %g1
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1219
	 mov	14, %g1
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L1219:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.align 32
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	04
__fixunssfsi:
	sethi	%hi(1191182336), %g1
	movwtos	%g1, %f8
	movwtos	%o0, %f9
	fcmpes	%fcc0, %f9, %f8
	fbge,a,pn %fcc0, .L1244
	 fsubs	%f9, %f8, %f2
	fstoi	%f9, %f1
	jmp	%o7+8
	 movstouw	%f1, %o0
.L1244:
	fstoi	%f2, %f3
	movstouw	%f3, %o0
	sethi	%hi(32768), %g1
	jmp	%o7+8
	 add	%o0, %g1, %o0
	.size	__fixunssfsi, .-__fixunssfsi
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC38:
	.long	0
	.long	1
	.align 8
.LC39:
	.long	1
	.long	1
	.align 8
.LC40:
	.long	2
	.long	3
	.align 8
.LC41:
	.long	4
	.long	5
	.align 8
.LC42:
	.long	6
	.long	7
	.align 8
.LC43:
	.long	8
	.long	9
	.align 8
.LC44:
	.long	10
	.long	11
	.align 8
.LC45:
	.long	12
	.long	13
	.align 8
.LC46:
	.long	14
	.long	15
	.section	".text"
	.align 4
	.align 32
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	movwtos	%o0, %f8
	movwtos	%o0, %f9
	sethi	%hi(.LC38), %g2
	sethi	%hi(.LC40), %g1
	ldd	[%g1+%lo(.LC40)], %f14
	ldd	[%g2+%lo(.LC38)], %f20
	fsra32	%f8, %f14, %f2
	fsra32	%f8, %f20, %f0
	sethi	%hi(.LC39), %g3
	sethi	%hi(.LC41), %g1
	ldd	[%g3+%lo(.LC39)], %f10
	ldd	[%g1+%lo(.LC41)], %f18
	fand	%f0, %f10, %f26
	fsra32	%f8, %f18, %f4
	fand	%f2, %f10, %f22
	sethi	%hi(.LC42), %g1
	ldd	[%g1+%lo(.LC42)], %f24
	fand	%f4, %f10, %f30
	fsra32	%f8, %f24, %f6
	fpadd32	%f26, %f22, %f38
	sethi	%hi(.LC43), %g1
	ldd	[%g1+%lo(.LC43)], %f16
	fand	%f6, %f10, %f32
	fsra32	%f8, %f16, %f28
	fpadd32	%f30, %f38, %f48
	sethi	%hi(.LC44), %g1
	ldd	[%g1+%lo(.LC44)], %f12
	fand	%f28, %f10, %f40
	fsra32	%f8, %f12, %f34
	fpadd32	%f32, %f48, %f56
	sethi	%hi(.LC45), %g1
	ldd	[%g1+%lo(.LC45)], %f36
	fand	%f34, %f10, %f46
	fsra32	%f8, %f36, %f42
	fpadd32	%f40, %f56, %f58
	sethi	%hi(.LC46), %g1
	ldd	[%g1+%lo(.LC46)], %f44
	fand	%f42, %f10, %f52
	fsra32	%f8, %f44, %f8
	fpadd32	%f46, %f58, %f60
	fand	%f8, %f10, %f54
	fpadd32	%f52, %f60, %f62
	sethi	%hi(1164412928), %g1
	or	%g1, 427, %g1
	fpadd32	%f54, %f62, %f14
	fzero	%f50
	bmask	%g1, %g0, %g1
	bshuffle	%f14, %f50, %f20
	fpadd32	%f14, %f20, %f8
	movstouw	%f8, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__parityhi2, .-__parityhi2
	.section	.rodata.cst8
	.align 8
.LC56:
	.long	0
	.long	1
	.align 8
.LC57:
	.long	1
	.long	1
	.align 8
.LC58:
	.long	2
	.long	3
	.align 8
.LC59:
	.long	4
	.long	5
	.align 8
.LC60:
	.long	6
	.long	7
	.align 8
.LC61:
	.long	8
	.long	9
	.align 8
.LC62:
	.long	10
	.long	11
	.align 8
.LC63:
	.long	12
	.long	13
	.align 8
.LC64:
	.long	14
	.long	15
	.section	".text"
	.align 4
	.align 32
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	movwtos	%o0, %f8
	movwtos	%o0, %f9
	sethi	%hi(.LC56), %g2
	sethi	%hi(.LC58), %g1
	ldd	[%g1+%lo(.LC58)], %f14
	ldd	[%g2+%lo(.LC56)], %f20
	fsra32	%f8, %f14, %f2
	fsra32	%f8, %f20, %f0
	sethi	%hi(.LC57), %g3
	sethi	%hi(.LC59), %g1
	ldd	[%g3+%lo(.LC57)], %f10
	ldd	[%g1+%lo(.LC59)], %f18
	fand	%f0, %f10, %f26
	fsra32	%f8, %f18, %f4
	fand	%f2, %f10, %f22
	sethi	%hi(.LC60), %g1
	ldd	[%g1+%lo(.LC60)], %f24
	fand	%f4, %f10, %f30
	fsra32	%f8, %f24, %f6
	fpadd32	%f26, %f22, %f38
	sethi	%hi(.LC61), %g1
	ldd	[%g1+%lo(.LC61)], %f16
	fand	%f6, %f10, %f32
	fsra32	%f8, %f16, %f28
	fpadd32	%f30, %f38, %f48
	sethi	%hi(.LC62), %g1
	ldd	[%g1+%lo(.LC62)], %f12
	fand	%f28, %f10, %f40
	fsra32	%f8, %f12, %f34
	fpadd32	%f32, %f48, %f56
	sethi	%hi(.LC63), %g1
	ldd	[%g1+%lo(.LC63)], %f36
	fand	%f34, %f10, %f46
	fsra32	%f8, %f36, %f42
	fpadd32	%f40, %f56, %f58
	sethi	%hi(.LC64), %g1
	ldd	[%g1+%lo(.LC64)], %f44
	fand	%f42, %f10, %f52
	fsra32	%f8, %f44, %f8
	fpadd32	%f46, %f58, %f60
	fand	%f8, %f10, %f54
	fpadd32	%f52, %f60, %f62
	sethi	%hi(1164412928), %g1
	or	%g1, 427, %g1
	fpadd32	%f54, %f62, %f14
	fzero	%f50
	bmask	%g1, %g0, %g1
	bshuffle	%f14, %f50, %f20
	fpadd32	%f14, %f20, %f8
	jmp	%o7+8
	 movstouw	%f8, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	orcc	%o0, 0, %g2
	be,pn	%icc, .L1253
	 mov	0, %o0
.L1249:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1249
	 sll	%o1, 1, %o1
.L1253:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	orcc	%o0, 0, %g2
	be,pn	%icc, .L1262
	 mov	0, %o0
	cmp	%o1, 0
	be,pn	%icc, .L1262
	 nop
.L1256:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	srl	%o1, 1, %o1
	and	%g1, %g2, %g1
	cmp	%o1, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1256
	 sll	%g2, 1, %g2
.L1262:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.align 32
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	cmp	%o0, %o1
	mov	%o0, %g2
	bleu,pn	%icc, .L1281
	 mov	1, %g1
	cmp	%o1, 0
.L1283:
	bl,a,pn	%icc, .L1270
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1283
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1269
	 mov	0, %o0
	mov	0, %o0
.L1270:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne,pt	%icc, .L1270
	 srl	%o1, 1, %o1
.L1269:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1281:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1269
	 subx	%g0, -1, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	fcmpes	%fcc1, %f8, %f9
	fcmpes	%fcc2, %f8, %f9
	mov	0, %g1
	movg	%fcc1, 1, %g1
	mov	-1, %g2
	mov	%g1, %o0
	jmp	%o7+8
	 movl	%fcc2, %g2, %o0
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	movwtos	%o2, %f10
	movwtos	%o3, %f11
	fcmped	%fcc3, %f8, %f10
	fcmped	%fcc0, %f8, %f10
	mov	0, %g1
	movg	%fcc3, 1, %g1
	mov	-1, %g2
	mov	%g1, %o0
	jmp	%o7+8
	 movl	%fcc0, %g2, %o0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.align 32
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	smul	%o0, %o1, %o1
	srlx	%o1, 32, %o0
	jmp	%o7+8
	 nop
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.align 32
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	umul	%o0, %o1, %o1
	srlx	%o1, 32, %o0
	jmp	%o7+8
	 nop
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.align 32
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	cmp	%o1, 0
	bl,pn	%icc, .L1301
	 mov	%o0, %g3
	be,pn	%icc, .L1302
	 mov	0, %o0
	mov	0, %o4
.L1294:
	mov	1, %g4
	mov	0, %o0
.L1296:
	and	%o1, 1, %g1
	and	%g4, 0xff, %g2
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	xor	%g2, 32, %g2
	addx	%g0, 0, %o5
	sub	%g0, %g1, %g1
	cmp	%g0, %g2
	and	%g1, %g3, %g1
	addx	%g0, 0, %g2
	andcc	%o5, %g2, %g0
	add	%o0, %g1, %o0
	sll	%g3, 1, %g3
	bne,pt	%icc, .L1296
	 add	%g4, 1, %g4
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %o0
.L1302:
	jmp	%o7+8
	 nop
.L1301:
	sub	%g0, %o1, %o1
	ba,pt	%xcc, .L1294
	 mov	1, %o4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	cmp	%o0, 0
	mov	1, %g1
	bl,pn	%icc, .L1331
	 mov	0, %o5
.L1304:
	cmp	%o1, 0
	bge,pt	%icc, .L1332
	 cmp	%o0, %o1
	sub	%g0, %o1, %o1
	mov	%g1, %o5
	cmp	%o0, %o1
.L1332:
	mov	%o0, %g4
	bleu,pn	%icc, .L1327
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1333:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L1333
	 sll	%o1, 1, %o1
	cmp	%g1, 0
	be,pn	%icc, .L1309
	 mov	0, %o0
.L1308:
	cmp	%g4, %o1
	subx	%g0, -1, %g3
	mov	0, %g2
	cmp	%g3, 0
	movne	%icc, %g1, %g2
	sub	%g4, %o1, %g3
	srl	%g1, 1, %g1
	movne	%icc, %g3, %g4
	cmp	%g1, 0
	or	%o0, %g2, %o0
	bne,pt	%icc, .L1308
	 srl	%o1, 1, %o1
.L1309:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1331:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1304
	 mov	1, %o5
.L1327:
	ba,pt	%xcc, .L1309
	 subx	%g0, -1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge,pt	%icc, .L1335
	 mov	0, %o5
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1335:
	sra	%o1, 31, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	cmp	%o0, %o1
	mov	%o0, %g2
	bleu,pn	%icc, .L1356
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1360:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,a,pt %icc, .L1360
	 sll	%o1, 1, %o1
	cmp	%g1, 0
	be,a,pn	%icc, .L1361
	 sub	%g0, %o0, %g1
.L1338:
	cmp	%g2, %o1
	sub	%g2, %o1, %o0
	srl	%g1, 1, %g1
	movgeu	%icc, %o0, %g2
	cmp	%g1, 0
	bne,pt	%icc, .L1338
	 srl	%o1, 1, %o1
.L1342:
	mov	%g2, %o0
	sub	%g0, %o0, %g1
.L1361:
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1356:
	sub	%o0, %o1, %g3
	ba,pt	%xcc, .L1342
	 movgeu	%icc, %g3, %g2
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1363
	 mov	1, %g3
	ba,pt	%xcc, .L1425
	 xor	%o1, %o0, %g1
.L1366:
	cmp	%g1, %o0
	addx	%g0, 0, %o3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	andcc	%o3, %o5, %g0
	srl	%g2, 16, %g2
	be,pn	%icc, .L1365
	 mov	%g4, %o5
	mov	%g4, %g3
	mov	%g1, %o1
.L1363:
	sll	%o1, 16, %g4
	sll	%o1, 17, %g1
	cmp	%g4, 0
	srl	%g1, 16, %g1
	sll	%g3, 17, %g2
	bge,pt	%icc, .L1366
	 sll	%g3, 1, %g4
	cmp	%o0, %o1
	sll	%g3, 16, %g2
	subx	%g0, -1, %o3
	sub	%o0, %o1, %g1
	cmp	%o3, 0
	movne	%icc, %g1, %o0
	srl	%g2, 17, %g4
	mov	0, %o5
	movne	%icc, %g3, %o5
	sll	%o0, 16, %g3
	cmp	%g4, 0
	srl	%g3, 16, %o0
	mov	%o5, %o3
	be,pn	%icc, .L1368
	 srl	%o1, 1, %o4
.L1370:
	cmp	%o0, %o4
	subx	%g0, -1, %g1
	mov	0, %g3
	cmp	%g1, 0
	sub	%o0, %o4, %o5
	mov	%g3, %g1
	movne	%icc, %o5, %o0
	movne	%icc, %g4, %g1
	srl	%g2, 18, %o4
	or	%g1, %o3, %g1
	sll	%o0, 16, %g4
	cmp	%o4, 0
	srl	%g4, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 2, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 19, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 3, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 20, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 4, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 21, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 5, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 22, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 6, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 23, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 7, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 24, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 8, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 25, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 9, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 26, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 10, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 27, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 11, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 28, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 12, %o3
	cmp	%o0, %o3
	sub	%o0, %o3, %g4
	subx	%g0, -1, %o5
	mov	%g3, %o3
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %o3
	srl	%g2, 29, %o4
	sll	%o0, 16, %o0
	or	%g1, %o3, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 13, %g4
	cmp	%o0, %g4
	sub	%o0, %g4, %o3
	subx	%g0, -1, %o5
	mov	%g3, %g4
	cmp	%o5, 0
	movne	%icc, %o3, %o0
	movne	%icc, %o4, %g4
	srl	%g2, 30, %o4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	cmp	%o4, 0
	srl	%o0, 16, %o0
	mov	%g1, %o5
	be,pn	%icc, .L1368
	 srl	%o1, 14, %o3
	cmp	%o0, %o3
	subx	%g0, -1, %o5
	sub	%o0, %o3, %g4
	cmp	%o5, 0
	movne	%icc, %g4, %o0
	movne	%icc, %o4, %g3
	or	%g1, %g3, %g1
	sll	%o0, 16, %o4
	cmp	%g2, 0
	srl	%o4, 16, %o0
	mov	%g1, %o5
	bge,pn	%icc, .L1368
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	sub	%o0, %o1, %g2
	movgeu	%icc, %g2, %o0
	sll	%o0, 16, %g3
	subx	%g0, -1, %o3
	srl	%g3, 16, %o0
	or	%g1, %o3, %o5
.L1368:
	cmp	%o2, 0
	movne	%icc, %o0, %o5
	sll	%o5, 16, %o2
	jmp	%o7+8
	 srl	%o2, 16, %o0
.L1365:
	cmp	%g2, 0
	be,pn	%icc, .L1368
	 cmp	%o0, %g1
	sub	%o0, %g1, %o3
	subx	%g0, -1, %o4
	cmp	%o4, 0
	movne	%icc, %o3, %o0
	sethi	%hi(31744), %g2
	or	%g2, 1023, %g2
	sll	%o0, 16, %o0
	mov	0, %o3
	and	%o1, %g2, %o4
	movne	%icc, %g4, %o3
	srl	%o0, 16, %o0
	and	%g2, %g3, %g4
	mov	%g1, %o1
	ba,pt	%xcc, .L1370
	 sll	%o5, 16, %g2
.L1425:
	cmp	%g0, %g1
	subx	%g0, -1, %o5
	sub	%o0, %o1, %o1
	cmp	%g1, 0
	move	%icc, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	ba,pt	%xcc, .L1368
	 and	%o5, 0xff, %o5
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	cmp	%o0, %o1
	mov	%o0, %g2
	bleu,pn	%icc, .L1444
	 mov	1, %g1
	cmp	%o1, 0
.L1446:
	bl,a,pn	%icc, .L1433
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1446
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1432
	 mov	0, %o0
	mov	0, %o0
.L1433:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	cmp	%g1, 0
	or	%o0, %g3, %o0
	bne,pt	%icc, .L1433
	 srl	%o1, 1, %o1
.L1432:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1444:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1432
	 subx	%g0, -1, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a,pt	%icc, .L1448
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1448:
	be,pn	%icc, .L1453
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %g1, %g1
	sll	%o0, %o2, %g4
	sll	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1453:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	andcc	%o2, 32, %g0
	be,pt	%icc, .L1455
	 mov	%o0, %g3
	sra	%o0, 31, %o0
	jmp	%o7+8
	 sra	%g3, %o2, %o1
.L1455:
	cmp	%o2, 0
	be,pn	%icc, .L1460
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o1
	sra	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1460:
	jmp	%o7+8
	 nop
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.align 32
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	srl	%o1, 24, %g1
	sll	%o0, 8, %g2
	sethi	%hi(64512), %g4
	sll	%o0, 24, %o4
	or	%g2, %g1, %g2
	or	%g4, 768, %g4
	srl	%o0, 8, %o5
	srl	%o1, 8, %g3
	and	%o5, %g4, %o5
	and	%g2, 255, %o2
	sethi	%hi(16711680), %o3
	srl	%o0, 24, %g1
	or	%o4, %g3, %g3
	sll	%o1, 24, %o0
	and	%g2, %o3, %g2
	or	%o0, %o2, %o0
	or	%g1, %o5, %g1
	sll	%o1, 8, %o1
	and	%g3, %g4, %g4
	and	%o1, %o3, %o3
	or	%g1, %g2, %g1
	or	%o0, %g4, %o5
	or	%o5, %o3, %o0
	jmp	%o7+8
	 or	%g1, %o4, %o1
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
	srl	%o0, 24, %g1
	or	%g3, 768, %g3
	or	%g1, %g4, %g1
	sll	%o0, 8, %o0
	and	%g2, %g3, %g4
	sethi	%hi(16711680), %g2
	or	%g1, %g4, %g1
	and	%o0, %g2, %g3
	jmp	%o7+8
	 or	%g1, %g3, %o0
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
	subx	%g0, -1, %o5
	mov	16, %g1
	sll	%o5, 4, %o5
	sub	%g1, %o5, %g1
	srl	%o0, %g1, %g1
	or	%g2, 768, %g3
	and	%g1, %g3, %g4
	cmp	%g0, %g4
	subx	%g0, -1, %o0
	mov	8, %o4
	sll	%o0, 3, %g4
	sub	%o4, %g4, %g2
	srl	%g1, %g2, %g1
	and	%g1, 240, %g3
	cmp	%g0, %g3
	subx	%g0, -1, %o0
	mov	4, %o4
	sll	%o0, 2, %g3
	sub	%o4, %g3, %g2
	srl	%g1, %g2, %g1
	and	%g1, 12, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %o4
	mov	2, %o0
	sll	%o4, 1, %g2
	sub	%o0, %g2, %o4
	srl	%g1, %o4, %g1
	add	%g4, %o5, %o5
	add	%g3, %o5, %g4
	andcc	%g1, 2, %g0
	sub	%o0, %g1, %g3
	movne	%icc, 0, %g3
	add	%g2, %g4, %o0
	jmp	%o7+8
	 add	%g3, %o0, %o0
	.size	__clzsi2, .-__clzsi2
	.align 4
	.align 32
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	cmp	%o0, %o2
	bl,pn	%icc, .L1470
	 mov	0, %o0
	bg,pn	%icc, .L1470
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1470:
	jmp	%o7+8
	 nop
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.align 32
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	cmp	%o0, %o2
	bl,pn	%icc, .L1476
	 mov	-1, %o0
	bg,pn	%icc, .L1476
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1476
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1476:
	jmp	%o7+8
	 nop
	.size	__aeabi_lcmp, .-__aeabi_lcmp
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
	subx	%g0, -1, %o5
	sll	%o5, 4, %o5
	srl	%o0, %o5, %g1
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
	add	%g4, %o5, %g4
	and	%o0, 1, %o0
	srl	%g1, 1, %g1
	mov	2, %o5
	add	%g3, %g4, %g3
	sub	%o5, %g1, %g4
	sub	%g0, %o0, %g1
	and	%g1, %g4, %g1
	add	%g2, %g3, %g2
	jmp	%o7+8
	 add	%g1, %g2, %o0
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.align 32
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	add	%sp, -80, %sp
	andcc	%o2, 32, %g0
	be,pt	%icc, .L1479
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %o0
.L1480:
	stx	%g0, [%sp+72]
	st	%o0, [%sp+72]
	mov	%o0, %g1
.L1478:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1479:
	be,pn	%icc, .L1478
	 mov	%o0, %g1
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %g3
	srl	%o0, %o2, %o0
	ba,pt	%xcc, .L1480
	 or	%g1, %g3, %o1
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.align 32
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	sethi	%hi(64512), %g4
	or	%g4, 1023, %g4
	and	%o0, %g4, %g2
	and	%o1, %g4, %g1
	smul	%g2, %g1, %g3
	srl	%o0, 16, %o0
	smul	%g1, %o0, %g1
	srl	%o1, 16, %o1
	smul	%g2, %o1, %g2
	smul	%o0, %o1, %o0
	srl	%g3, 16, %o5
	add	%g1, %o5, %g1
	sll	%g1, 16, %o1
	and	%g3, %g4, %g3
	srl	%o1, 16, %o4
	add	%g3, %o1, %o5
	add	%g2, %o4, %g2
	srl	%g1, 16, %g1
	add	%g1, %o0, %g1
	and	%o5, %g4, %g4
	sll	%g2, 16, %g3
	srl	%g2, 16, %o0
	add	%g1, %o0, %o0
	jmp	%o7+8
	 add	%g4, %g3, %o1
	.size	__muldsi3, .-__muldsi3
	.align 4
	.align 32
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	sethi	%hi(64512), %g4
	or	%g4, 1023, %g4
	and	%o1, %g4, %g2
	and	%o3, %g4, %g1
	smul	%g2, %g1, %g3
	srl	%o1, 16, %o5
	smul	%g1, %o5, %g1
	srl	%o3, 16, %o4
	smul	%g2, %o4, %g2
	smul	%o5, %o4, %o5
	smul	%o1, %o2, %o2
	smul	%o3, %o0, %o0
	srl	%g3, 16, %o3
	add	%g1, %o3, %g1
	and	%g3, %g4, %o1
	sll	%g1, 16, %g3
	srl	%g3, 16, %o4
	add	%g2, %o4, %g2
	srl	%g1, 16, %g1
	add	%g1, %o5, %g1
	srl	%g2, 16, %o5
	add	%o1, %g3, %o3
	add	%g1, %o5, %g1
	and	%o3, %g4, %g4
	sll	%g2, 16, %o1
	add	%o2, %g1, %o2
	add	%o2, %o0, %o0
	jmp	%o7+8
	 add	%g4, %o1, %o1
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.align 32
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	subcc	%g0, %o1, %o1
	jmp	%o7+8
	 subx	%g0, %o0, %o0
	.size	__negdi2, .-__negdi2
	.align 4
	.align 32
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	xor	%o0, %o1, %o1
	srl	%o1, 16, %g1
	xor	%g1, %o1, %g1
	srl	%g1, 8, %g2
	xor	%g2, %g1, %g3
	srl	%g3, 4, %g1
	xor	%g1, %g3, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %g4
	and	%g1, 15, %g1
	sra	%g4, %g1, %o1
	jmp	%o7+8
	 and	%o1, 1, %o0
	.size	__paritydi2, .-__paritydi2
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
	sra	%g4, %g1, %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.align 32
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	sll	%o0, 31, %g2
	srl	%o1, 1, %g4
	sethi	%hi(1431655424), %g1
	or	%g2, %g4, %o2
	or	%g1, 341, %g1
	and	%o2, %g1, %o5
	srl	%o0, 1, %g3
	and	%g3, %g1, %o4
	subcc	%o1, %o5, %g3
	subx	%o0, %o4, %g2
	sethi	%hi(858992640), %g1
	sll	%g2, 30, %g4
	srl	%g3, 2, %o4
	or	%g1, 819, %g1
	or	%g4, %o4, %o1
	and	%g2, %g1, %o2
	and	%g3, %g1, %o3
	srl	%g2, 2, %o5
	and	%o1, %g1, %g2
	addcc	%g2, %o3, %g4
	and	%o5, %g1, %o0
	addx	%o0, %o2, %o4
	srl	%g4, 4, %g3
	sll	%o4, 28, %g1
	or	%g1, %g3, %o5
	sethi	%hi(252644352), %g1
	addcc	%o5, %g4, %o0
	srl	%o4, 4, %o1
	or	%g1, 783, %g1
	addx	%o1, %o4, %o2
	and	%o2, %g1, %g2
	and	%o0, %g1, %g1
	add	%g2, %g1, %o3
	srl	%o3, 16, %g1
	add	%g1, %o3, %g1
	srl	%g1, 8, %g4
	add	%g4, %g1, %o4
	jmp	%o7+8
	 and	%o4, 127, %o0
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
	and	%g4, %g1, %g2
	and	%o0, %g1, %g3
	add	%g2, %g3, %o0
	srl	%o0, 4, %g1
	sethi	%hi(252644352), %g4
	or	%g4, 783, %g2
	add	%g1, %o0, %g1
	and	%g1, %g2, %g1
	srl	%g1, 16, %g3
	add	%g3, %g1, %g1
	srl	%g1, 8, %o0
	add	%o0, %g1, %g4
	jmp	%o7+8
	 and	%g4, 63, %o0
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	sethi	%hi(1072693248), %g2
	mov	0, %g3
	andcc	%o2, 1, %g0
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	movwtos	%g2, %f0
	movwtos	%g3, %f1
	be,pt	%icc, .L1492
	 mov	%o2, %g1
.L1494:
	fmuld	%f0, %f8, %f0
.L1492:
	srl	%g1, 31, %g4
	add	%g4, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1493
	 srl	%g1, 31, %o0
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1494
	 add	%o0, %g1, %o1
	sra	%o1, 1, %g1
.L1501:
	srl	%g1, 31, %o0
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1494
	 add	%o0, %g1, %o1
	ba,pt	%xcc, .L1501
	 sra	%o1, 1, %g1
.L1493:
	cmp	%o2, 0
	bl,a,pn	%icc, .L1500
	 sethi	%hi(1072693248), %o2
	jmp	%o7+8
	 nop
.L1500:
	mov	0, %g2
	movwtos	%o2, %f8
	movwtos	%g2, %f9
	jmp	%o7+8
	 fdivd	%f8, %f0, %f0
	.size	__powidf2, .-__powidf2
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	sethi	%hi(1065353216), %g2
	andcc	%o1, 1, %g0
	movwtos	%o0, %f8
	movwtos	%g2, %f0
	be,pt	%icc, .L1503
	 mov	%o1, %g1
.L1505:
	fmuls	%f0, %f8, %f0
.L1503:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1504
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1505
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1512:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1505
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1512
	 sra	%o0, 1, %g1
.L1504:
	cmp	%o1, 0
	bl,a,pn	%icc, .L1511
	 sethi	%hi(1065353216), %g1
	jmp	%o7+8
	 nop
.L1511:
	movwtos	%g1, %f1
	jmp	%o7+8
	 fdivs	%f1, %f0, %f0
	.size	__powisf2, .-__powisf2
	.align 4
	.align 32
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu,pn	%icc, .L1519
	 mov	0, %o0
	bgu,pn	%icc, .L1519
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1519:
	jmp	%o7+8
	 nop
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.align 32
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	cmp	%o0, %o2
	blu,pn	%icc, .L1525
	 mov	-1, %o0
	bgu,pn	%icc, .L1525
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1525
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1525:
	jmp	%o7+8
	 nop
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
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
	.global __cmpdi2
	.global __moddi3
	.global __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
