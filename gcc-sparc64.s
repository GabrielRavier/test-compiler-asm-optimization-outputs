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
	mov	0, %o5
	subx	%g0, -1, %g4
	cmp	%g1, 6
	mov	%o5, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
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
	be,a,pn	%icc, .L164
	 and	%g3, 0xff, %o1
	ldub	[%o0+%g1], %g4
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	sll	%g3, 24, %o5
	cmp	%o5, %g2
	be,pt	%icc, .L165
	 cmp	%g2, 0
.L163:
	and	%g4, 0xff, %o0
	and	%g3, 0xff, %o1
	jmp	%o7+8
	 sub	%o0, %o1, %o0
.L164:
	mov	0, %o0
	jmp	%o7+8
	 sub	%o0, %o1, %o0
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
	add	%sp, -88, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L227
	 std	%o2, [%sp+80]
	ldd	[%sp+80], %f0
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L227
	 ldd	[%sp+72], %f8
	fcmped	%fcc2, %f8, %f0
	fbule,pt %fcc2, .L234
	 nop
	fsubd	%f8, %f0, %f0
.L227:
	jmp	%o7+8
	 add	%sp, 88, %sp
.L234:
	fzero	%f0
	jmp	%o7+8
	 add	%sp, 88, %sp
	.size	fdim, .-fdim
	.align 4
	.align 32
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	add	%sp, -80, %sp
	st	%o0, [%sp+72]
	ld	[%sp+72], %f0
	fcmps	%fcc3, %f0, %f0
	fbu,pn	%fcc3, .L235
	 st	%o1, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L235
	 ld	[%sp+72], %f8
	fcmpes	%fcc1, %f8, %f0
	fbule,pt %fcc1, .L242
	 nop
	fsubs	%f8, %f0, %f0
.L235:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L242:
	fzeros	%f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fdimf, .-fdimf
	.align 4
	.align 32
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%fcc2, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc2, .L243
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f0, %f0
	fbu,pn	%fcc3, .L243
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L245
	 fcmped	%fcc0, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
.L243:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L245:
	fmovdl	%fcc0, %f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmax, .-fmax
	.align 4
	.align 32
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f9
	fcmps	%fcc1, %f9, %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fbu,pn	%fcc1, .L249
	 fmovs	%f8, %f0
	fcmps	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L249
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L251
	 fcmpes	%fcc3, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f8, %f0
.L249:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L251:
	fmovsl	%fcc3, %f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmaxf, .-fmaxf
	.align 4
	.align 32
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%fcc0, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc0, .L255
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L255
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L257
	 fcmped	%fcc2, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f8, %f0
.L255:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L257:
	fmovdl	%fcc2, %f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmaxl, .-fmaxl
	.align 4
	.align 32
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%fcc3, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc3, .L261
	 fmovd	%f0, %f8
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L261
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L263
	 fcmped	%fcc1, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f10, %f8
	fmovd	%f8, %f0
.L261:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L263:
	fmovdl	%fcc1, %f10, %f8
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fmin, .-fmin
	.align 4
	.align 32
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f9
	fcmps	%fcc2, %f9, %f9
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fbu,pn	%fcc2, .L267
	 fmovs	%f8, %f0
	fcmps	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L267
	 fmovs	%f9, %f0
	st	%f9, [%sp+76]
	ld	[%sp+76], %g1
	st	%f8, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L269
	 fcmpes	%fcc0, %f9, %f8
	cmp	%g1, 0
	fmovsne	%icc, %f9, %f8
	fmovs	%f8, %f0
.L267:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L269:
	fmovsl	%fcc0, %f9, %f8
	fmovs	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	fminf, .-fminf
	.align 4
	.align 32
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f10
	fcmpd	%fcc1, %f10, %f10
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f0
	fbu,pn	%fcc1, .L273
	 fmovd	%f0, %f8
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L273
	 fmovd	%f10, %f0
	st	%f10, [%sp+72]
	ld	[%sp+72], %g1
	st	%f8, [%sp+72]
	ld	[%sp+72], %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cmp	%g1, %g4
	be,a,pt	%icc, .L275
	 fcmped	%fcc3, %f10, %f8
	cmp	%g1, 0
	fmovdne	%icc, %f10, %f8
	fmovd	%f8, %f0
.L273:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L275:
	fmovdl	%fcc3, %f10, %f8
	fmovd	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	be,pn	%icc, .L280
	 mov	%o0, %g2
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L281:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	cmp	%g1, 0
	bne,pt	%icc, .L281
	 add	%g2, 1, %g2
.L280:
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
	be,a,pn	%icc, .L292
	 st	%g0, [%o0+4]
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cmp	%g1, 0
	bne,a,pt %icc, .L294
	 st	%o0, [%g1+4]
.L294:
	jmp	%o7+8
	 nop
.L292:
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
	be,a,pn	%icc, .L305
	 ld	[%o0+4], %g3
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
	ld	[%o0+4], %g3
.L305:
	cmp	%g3, 0
	bne,a,pt %icc, .L304
	 st	%g1, [%g3]
.L304:
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
	be,pn	%icc, .L307
	 mov	%i0, %l2
	mov	%i1, %i5
	ba,pt	%xcc, .L309
	 mov	0, %l0
.L321:
	cmp	%l1, %l0
	be,pn	%icc, .L307
	 add	%i5, %i3, %i5
.L309:
	mov	%i5, %o1
	call	%i4, 0
	 mov	%l2, %o0
	cmp	%o0, 0
	mov	%i5, %i0
	bne,pt	%icc, .L321
	 add	%l0, 1, %l0
.L323:
	return	%i7+8
	 nop
.L307:
	smul	%i3, %l1, %g1
	add	%l1, 1, %g2
	st	%g2, [%i2]
	cmp	%i3, 0
	be,pn	%icc, .L323
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
	save	%sp, -96, %sp
	ld	[%i2], %l0
	cmp	%l0, 0
	be,pn	%icc, .L325
	 mov	0, %i5
	ba,pt	%xcc, .L336
	 mov	%i1, %o1
.L335:
	cmp	%l0, %i5
	be,pn	%icc, .L325
	 add	%i1, %i3, %i1
	mov	%i1, %o1
.L336:
	call	%i4, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	mov	%i1, %i2
	bne,pt	%icc, .L335
	 add	%i5, 1, %i5
	return	%i7+8
	 mov	%o2, %o0
.L325:
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
	ba,pt	%xcc, .L361
	 mov	0, %g1
.L363:
	mov	0, %g1
	add	%o0, 1, %o0
.L361:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L363
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L341
	 cmp	%g1, 45
	bne,pt	%icc, .L364
	 add	%g2, -48, %g1
	ldub	[%o0+1], %o5
	sll	%o5, 24, %o4
	sra	%o4, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L365
	 mov	0, %o0
	mov	1, %o4
.L344:
	mov	0, %o0
.L347:
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
	bleu,pt	%icc, .L347
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L365:
	jmp	%o7+8
	 nop
.L364:
	cmp	%g1, 9
	mov	0, %o4
	bleu,pt	%icc, .L344
	 mov	%o0, %g1
.L362:
	jmp	%o7+8
	 mov	0, %o0
.L341:
	ldub	[%o0+1], %o5
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g3
	add	%g3, -48, %g2
	cmp	%g2, 9
	bleu,pt	%icc, .L344
	 mov	0, %o4
	ba,pt	%xcc, .L362
	 nop
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	04
atol:
	ldub	[%o0], %o5
	ba,pt	%xcc, .L386
	 mov	0, %g1
.L388:
	mov	0, %g1
	add	%o0, 1, %o0
.L386:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	orcc	%g1, %g4, %g0
	bne,a,pt %icc, .L388
	 ldub	[%o0+1], %o5
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L369
	 cmp	%g1, 45
	be,a,pt	%icc, .L389
	 ldub	[%o0+1], %o5
	add	%g2, -48, %g1
	cmp	%g1, 9
	mov	0, %o4
	bgu,pn	%icc, .L387
	 mov	%o0, %g1
.L371:
	mov	0, %o0
.L374:
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
	bleu,pt	%icc, .L374
	 sub	%g3, %g2, %o0
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L390:
	jmp	%o7+8
	 nop
.L389:
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g4
	add	%g4, -48, %g3
	cmp	%g3, 9
	bleu,pt	%icc, .L371
	 mov	1, %o4
.L387:
	jmp	%o7+8
	 mov	0, %o0
.L369:
	ldub	[%o0+1], %o5
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -48, %o4
	cmp	%o4, 9
	add	%o0, 1, %g1
	bgu,pn	%icc, .L390
	 mov	0, %o0
	ba,pt	%xcc, .L374
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
	ba,pt	%xcc, .L414
	 ldub	[%i0], %o7
.L416:
	mov	0, %g1
	add	%i0, 1, %i0
.L414:
	sll	%o7, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %i1
	movleu	%icc, 1, %g1
	cmp	%g0, %i1
	subx	%g0, -1, %i2
	orcc	%g1, %i2, %g0
	bne,a,pt %icc, .L416
	 ldub	[%i0+1], %o7
	sra	%g3, 24, %g1
	cmp	%g1, 43
	be,pn	%icc, .L394
	 cmp	%g1, 45
	bne,pt	%icc, .L417
	 add	%g2, -48, %i3
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	mov	0, %o4
	bgu,pn	%icc, .L391
	 mov	0, %o5
	mov	1, %i0
.L397:
	mov	0, %o4
	mov	0, %o5
	add	%i1, 1, %i1
.L418:
	srl	%o5, 30, %i4
	sll	%o4, 2, %g1
	sll	%o5, 2, %i5
	add	%o7, -48, %g4
	ldub	[%i1], %o7
	addcc	%i5, %o5, %g3
	or	%i4, %g1, %g2
	addx	%g2, %o4, %i2
	srl	%g3, 31, %i4
	sll	%i2, 1, %g1
	sll	%g4, 24, %g4
	or	%i4, %g1, %g2
	sll	%o7, 24, %g1
	sll	%g3, 1, %g3
	sra	%g4, 24, %i3
	sra	%g1, 24, %g1
	subcc	%g3, %i3, %o5
	sra	%g4, 31, %i5
	add	%g1, -48, %g1
	subx	%g2, %i5, %o4
	cmp	%g1, 9
	bleu,a,pt %icc, .L418
	 add	%i1, 1, %i1
	cmp	%i0, 0
	bne,a,pt %icc, .L419
	 mov	%o4, %i0
	subcc	%i3, %g3, %o5
	subx	%i5, %g2, %o4
.L391:
	mov	%o4, %i0
.L419:
	jmp	%i7+8
	 restore %g0, %o5, %o1
.L417:
	cmp	%i3, 9
	mov	%i0, %i1
	bleu,pt	%icc, .L397
	 mov	0, %i0
	mov	0, %o4
	ba,pt	%xcc, .L391
	 mov	0, %o5
.L394:
	ldub	[%i0+1], %o7
	sll	%o7, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	add	%i0, 1, %i1
	bleu,pt	%icc, .L397
	 mov	0, %i0
	mov	0, %o4
	ba,pt	%xcc, .L391
	 mov	0, %o5
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
.L430:
	cmp	%i2, 0
	be,pn	%icc, .L432
	 mov	0, %i5
.L431:
	srl	%i2, 1, %l0
	smul	%l0, %i3, %g1
	add	%i1, %g1, %i5
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bl,pn	%icc, .L425
	 add	%i2, -1, %i2
	be,pn	%icc, .L420
	 nop
	sub	%i2, %l0, %i2
	cmp	%i2, 0
	bne,pt	%icc, .L431
	 add	%i5, %i3, %i1
	mov	0, %i5
.L420:
.L432:
	return	%i7+8
	 mov	%o5, %o0
.L425:
	ba,pt	%xcc, .L430
	 mov	%l0, %i2
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	cmp	%i2, 0
	be,pn	%icc, .L438
	 mov	%i0, %l1
.L446:
	sra	%i2, 1, %l0
	smul	%l0, %i3, %o1
	add	%i1, %o1, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	be,pn	%icc, .L449
	 sra	%i2, 1, %i2
.L448:
	ble,pn	%icc, .L436
	 cmp	%i2, 0
	bne,pt	%icc, .L446
	 add	%i0, %i3, %i1
.L438:
	return	%i7+8
	 mov	0, %o0
.L436:
	cmp	%l0, 0
	be,pn	%icc, .L438
	 nop
	mov	%l0, %i2
	sra	%i2, 1, %l0
	smul	%l0, %i3, %o1
	add	%i1, %o1, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cmp	%o0, 0
	bne,pt	%icc, .L448
	 sra	%i2, 1, %i2
.L449:
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
	ld	[%fp+64], %i5
	mov	%i2, %o2
	std	%o0, [%i5]
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5+8]
	return	%i7+12
	 mov	%o5, %o0
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
	ld	[%fp+64], %i5
	mov	%i2, %o2
	std	%o0, [%i5]
	mov	%i3, %o3
	mov	%i0, %o0
	call	__moddi3, 0
	 mov	%i1, %o1
	std	%o0, [%i5+8]
	return	%i7+12
	 mov	%o5, %o0
	.size	lldiv, .-lldiv
	.align 4
	.align 32
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	ld	[%o0], %g1
	cmp	%g1, 0
	be,pn	%icc, .L461
	 nop
.L458:
	cmp	%o1, %g1
	be,pn	%icc, .L466
	 nop
	ld	[%o0+4], %g1
	cmp	%g1, 0
	bne,pt	%icc, .L458
	 add	%o0, 4, %o0
.L461:
	jmp	%o7+8
	 mov	0, %o0
.L466:
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
	bne,pn	%icc, .L476
	 add	%o1, -4, %o1
	cmp	%g2, 0
.L477:
	be,pn	%icc, .L476
	 cmp	%g2, %g3
	ld	[%o0+%g1], %g2
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cmp	%g2, %g3
	be,pt	%icc, .L477
	 cmp	%g2, 0
	cmp	%g2, %g3
.L476:
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
.L479:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	cmp	%g2, 0
	bne,pt	%icc, .L479
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
	be,pn	%icc, .L481
	 mov	0, %g1
	mov	%o0, %g1
.L483:
	ld	[%g1+4], %g3
	cmp	%g3, 0
	bne,pt	%icc, .L483
	 add	%g1, 4, %g1
	sub	%g1, %o0, %g1
	sra	%g1, 2, %g1
.L481:
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
	bne,a,pt %icc, .L500
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L490:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L499
	 mov	0, %o0
	ld	[%o0], %g2
.L500:
	ld	[%o1], %g4
	xor	%g4, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g3
	andcc	%g1, %g3, %g1
	add	%o0, 4, %o0
	bne,pt	%icc, .L490
	 add	%o1, 4, %o1
	cmp	%g2, %g4
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L499:
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
	bne,a,pt %icc, .L510
	 ld	[%o0], %g1
	jmp	%o7+8
	 mov	0, %o0
.L504:
	be,pn	%icc, .L505
	 add	%o0, 4, %o0
	ld	[%o0], %g1
.L510:
	cmp	%g1, %o1
	bne,a,pt %icc, .L504
	 addcc	%o2, -1, %o2
	jmp	%o7+8
	 nop
.L505:
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
	bne,a,pt %icc, .L525
	 ld	[%o0], %g2
	jmp	%o7+8
	 mov	0, %o0
.L515:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L524
	 mov	0, %o0
	ld	[%o0], %g2
.L525:
	ld	[%o1], %g1
	cmp	%g2, %g1
	add	%o0, 4, %o0
	be,pt	%icc, .L515
	 add	%o1, 4, %o1
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
.L524:
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
	be,pn	%icc, .L531
	 nop
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L531:
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
	be,pn	%icc, .L559
	 nop
	sub	%o0, %o1, %g1
	sll	%o2, 2, %g2
	cmp	%g1, %g2
	blu,pt	%icc, .L534
	 add	%o2, -1, %g1
	cmp	%o2, 0
	be,pn	%icc, .L559
	 nop
	cmp	%g1, 8
	bleu,pn	%icc, .L545
	 add	%o1, 4, %g2
	or	%o1, %o0, %g3
	and	%g3, 7, %g4
	cmp	%g0, %g4
	xor	%o0, %g2, %g4
	subx	%g0, -1, %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	be,pn	%icc, .L545
	 srl	%o2, 1, %g4
	mov	0, %g1
	mov	0, %g3
.L539:
	ldd	[%o1+%g1], %f8
	add	%g3, 1, %g3
	std	%f8, [%o0+%g1]
	cmp	%g4, %g3
	bne,pt	%icc, .L539
	 add	%g1, 8, %g1
	andcc	%o2, 1, %g0
	be,pn	%icc, .L559
	 nop
	and	%o2, -2, %o2
	sll	%o2, 2, %g2
	ld	[%o1+%g2], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%g2]
.L545:
	mov	0, %g3
.L556:
	ld	[%o1+%g3], %g4
	add	%g1, -1, %g1
	st	%g4, [%o0+%g3]
	cmp	%g1, -1
	bne,pt	%icc, .L556
	 add	%g3, 4, %g3
	jmp	%o7+8
	 nop
.L534:
	cmp	%o2, 0
	be,pn	%icc, .L559
	 nop
	sll	%g1, 2, %g1
	ld	[%o1+%g1], %o2
.L558:
	st	%o2, [%o0+%g1]
	add	%g1, -4, %g1
	cmp	%g1, -4
	bne,a,pt %icc, .L558
	 ld	[%o1+%g1], %o2
	jmp	%o7+8
	 nop
.L559:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	add	%sp, -80, %sp
	cmp	%o2, 0
	be,pn	%icc, .L562
	 add	%o2, -1, %o5
	srl	%o0, 2, %g2
	cmp	%o5, 5
	bleu,pn	%icc, .L567
	 and	%g2, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L564
	 mov	%o0, %o4
	add	%o0, 4, %o4
	st	%o1, [%o0]
	add	%o2, -2, %o5
.L564:
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fmovs	%f8, %f9
	sub	%o2, %g1, %o2
	sll	%g1, 2, %g3
	srl	%o2, 1, %g4
	add	%o0, %g3, %g2
	mov	0, %g1
.L565:
	sll	%g1, 3, %g3
	add	%g1, 1, %g1
	cmp	%g4, %g1
	bne,pt	%icc, .L565
	 std	%f8, [%g2+%g3]
	andcc	%o2, 1, %g0
	be,pn	%icc, .L562
	 and	%o2, -2, %o2
	sll	%o2, 2, %g1
	sub	%o5, %o2, %o5
	add	%o4, %g1, %g1
.L563:
	cmp	%o5, 0
	be,pn	%icc, .L562
	 st	%o1, [%g1]
	cmp	%o5, 1
	be,pn	%icc, .L562
	 st	%o1, [%g1+4]
	cmp	%o5, 2
	be,pn	%icc, .L562
	 st	%o1, [%g1+8]
	cmp	%o5, 3
	be,pn	%icc, .L562
	 st	%o1, [%g1+12]
	cmp	%o5, 4
	be,pn	%icc, .L562
	 st	%o1, [%g1+16]
	st	%o1, [%g1+20]
.L562:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L567:
	ba,pt	%xcc, .L563
	 mov	%o0, %g1
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cmp	%o0, %o1
	bgeu,pt	%icc, .L593
	 nop
	cmp	%o2, 0
	be,pn	%icc, .L668
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L595
	 add	%o2, -2, %o5
	add	%o2, -8, %g2
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
	be,a,pn	%icc, .L664
	 add	%o0, -1, %g4
	and	%o2, -8, %g1
	sub	%g0, %g1, %g3
	mov	0, %g1
	ldd	[%g4+%g1], %f0
.L665:
	std	%f0, [%g2+%g1]
	add	%g1, -8, %g1
	cmp	%g1, %g3
	bne,a,pt %icc, .L665
	 ldd	[%g4+%g1], %f0
	add	%o2, %g1, %g1
	andcc	%o2, 7, %g0
	add	%o1, %g1, %o1
	and	%o2, 7, %o2
	be,pn	%icc, .L669
	 add	%o0, %g1, %g1
	ldub	[%g1-1], %o0
	cmp	%o2, 1
	be,pn	%icc, .L669
	 stb	%o0, [%o1-1]
	ldub	[%g1-2], %g4
	cmp	%o2, 2
	be,pn	%icc, .L669
	 stb	%g4, [%o1-2]
	ldub	[%g1-3], %g2
	cmp	%o2, 3
	be,pn	%icc, .L669
	 stb	%g2, [%o1-3]
	ldub	[%g1-4], %o5
	cmp	%o2, 4
	be,pn	%icc, .L669
	 stb	%o5, [%o1-4]
	ldub	[%g1-5], %g3
	cmp	%o2, 5
	be,pn	%icc, .L669
	 stb	%g3, [%o1-5]
	ldub	[%g1-6], %o0
	cmp	%o2, 6
	be,pn	%icc, .L669
	 stb	%o0, [%o1-6]
	ldub	[%g1-7], %g1
	jmp	%o7+8
	 stb	%g1, [%o1-7]
.L593:
	bne,a,pt %icc, .L662
	 cmp	%o2, 0
.L669:
	jmp	%o7+8
	 nop
.L662:
	be,pn	%icc, .L668
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L607
	 or	%o0, %o1, %g2
	and	%g2, 7, %g3
	add	%o0, 1, %g1
	cmp	%g0, %g3
	sub	%o1, %g1, %g1
	mov	0, %o5
	subx	%g0, -1, %g4
	cmp	%g1, 6
	mov	%o5, %g1
	movgu	%icc, 1, %g1
	andcc	%g4, %g1, %g0
	be,pn	%icc, .L607
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L666:
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L666
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o1, %g1, %o5
	add	%o0, %g1, %g3
	be,pn	%icc, .L669
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %o0
	cmp	%o2, 1
	be,pn	%icc, .L669
	 stb	%o0, [%o1+%g1]
	ldub	[%g3+1], %g1
	cmp	%o2, 2
	be,pn	%icc, .L669
	 stb	%g1, [%o5+1]
	ldub	[%g3+2], %g1
	cmp	%o2, 3
	be,pn	%icc, .L669
	 stb	%g1, [%o5+2]
	ldub	[%g3+3], %g1
	cmp	%o2, 4
	be,pn	%icc, .L669
	 stb	%g1, [%o5+3]
	ldub	[%g3+4], %g1
	cmp	%o2, 5
	be,pn	%icc, .L669
	 stb	%g1, [%o5+4]
	ldub	[%g3+5], %g1
	cmp	%o2, 6
	be,pn	%icc, .L669
	 stb	%g1, [%o5+5]
	ldub	[%g3+6], %g1
	jmp	%o7+8
	 stb	%g1, [%o5+6]
.L595:
	add	%o0, -1, %g4
.L664:
	ba,pt	%xcc, .L598
	 add	%o1, -1, %o1
.L663:
	add	%g1, -1, %g1
.L598:
	ldub	[%g4+%o2], %g2
	cmp	%g1, 0
	stb	%g2, [%o1+%o2]
	bne,pt	%icc, .L663
	 mov	%g1, %o2
	jmp	%o7+8
	 nop
.L607:
	mov	0, %g1
	ldub	[%o0+%g1], %g4
.L667:
	stb	%g4, [%o1+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L667
	 ldub	[%o0+%g1], %g4
.L668:
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
	ba,pt	%xcc, .L686
	 mov	0, %g1
.L684:
	cmp	%g1, 32
	be,pn	%icc, .L688
	 nop
.L686:
	srl	%o0, %g1, %g2
	andcc	%g2, 1, %g0
	be,pt	%icc, .L684
	 add	%g1, 1, %g1
	jmp	%o7+8
	 mov	%g1, %o0
.L688:
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
	be,pn	%icc, .L696
	 mov	0, %o0
	andcc	%g1, 1, %o0
	bne,pn	%icc, .L696
	 nop
	mov	1, %o0
.L691:
	sra	%g1, 1, %g1
	andcc	%g1, 1, %g0
	be,pt	%icc, .L691
	 add	%o0, 1, %o0
.L696:
	jmp	%o7+8
	 nop
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC0), %g1
	ld	[%g1+%lo(.LC0)], %f8
	ld	[%sp+76], %f9
	fcmpes	%fcc0, %f9, %f8
	fbl,pt	%fcc0, .L697
	 mov	1, %o0
	sethi	%hi(.LC1), %g1
	ld	[%g1+%lo(.LC1)], %f0
	fcmpes	%fcc1, %f9, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L697:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC4), %g1
	ldd	[%g1+%lo(.LC4)], %f8
	ldd	[%sp+72], %f10
	fcmped	%fcc2, %f10, %f8
	fbl,pt	%fcc2, .L700
	 mov	1, %o0
	sethi	%hi(.LC5), %g1
	ldd	[%g1+%lo(.LC5)], %f0
	fcmped	%fcc3, %f10, %f0
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L700:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst8
	.align 8
.LC8:
	.long	-1048577
	.long	-1
	.align 8
.LC9:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.align 32
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC8), %g1
	ldd	[%g1+%lo(.LC8)], %f8
	ldd	[%sp+72], %f10
	fcmped	%fcc0, %f10, %f8
	fbl,pt	%fcc0, .L703
	 mov	1, %o0
	sethi	%hi(.LC9), %g1
	ldd	[%g1+%lo(.LC9)], %f0
	fcmped	%fcc1, %f10, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L703:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.align 32
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	add	%sp, -80, %sp
	st	%o1, [%sp+76]
	ld	[%sp+76], %f8
	fitod	%f8, %f0
	std	%f0, [%o0]
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f0
	fcmps	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L708
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L708
	 sethi	%hi(.LC13), %g1
	ld	[%g1+%lo(.LC13)], %f1
	sethi	%hi(.LC12), %g1
	ld	[%g1+%lo(.LC12)], %f9
	cmp	%o1, 0
	fmovsge	%icc, %f9, %f1
	andcc	%o1, 1, %g0
	be,pt	%icc, .L722
	 srl	%o1, 31, %g1
.L711:
	fmuls	%f0, %f1, %f0
	srl	%o1, 31, %g1
.L722:
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cmp	%o1, 0
	be,pn	%icc, .L708
	 srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L711
	 add	%g1, %o1, %g1
	sra	%g1, 1, %o1
.L721:
	srl	%o1, 31, %g1
	andcc	%o1, 1, %g0
	fmuls	%f1, %f1, %f1
	bne,pt	%icc, .L711
	 add	%g1, %o1, %g1
	ba,pt	%xcc, .L721
	 sra	%g1, 1, %o1
.L708:
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L724
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L724
	 sethi	%hi(.LC16), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L736
	 ldd	[%g1+%lo(.LC16)], %f2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L739
	 srl	%o2, 31, %g1
.L727:
	fmuld	%f0, %f2, %f0
.L726:
	srl	%o2, 31, %g1
.L739:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L724
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L727
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L738:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L727
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L738
	 sra	%g1, 1, %o2
.L724:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L736:
	sethi	%hi(.LC17), %g1
	andcc	%o2, 1, %g0
	be,pt	%icc, .L726
	 ldd	[%g1+%lo(.LC17)], %f2
	ba,pt	%xcc, .L726
	 fmuld	%f0, %f2, %f0
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC20:
	.long	1071644672
	.long	0
	.align 8
.LC21:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmpd	%fcc2, %f0, %f0
	fbu,pn	%fcc2, .L741
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc3, %f0, %f8
	fbe,pt	%fcc3, .L741
	 sethi	%hi(.LC21), %g1
	cmp	%o2, 0
	bl,pn	%icc, .L753
	 ldd	[%g1+%lo(.LC21)], %f2
	andcc	%o2, 1, %g0
	be,pt	%icc, .L756
	 srl	%o2, 31, %g1
.L744:
	fmuld	%f0, %f2, %f0
.L743:
	srl	%o2, 31, %g1
.L756:
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cmp	%o2, 0
	be,pn	%icc, .L741
	 srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L744
	 add	%g1, %o2, %g1
	sra	%g1, 1, %o2
.L755:
	srl	%o2, 31, %g1
	andcc	%o2, 1, %g0
	fmuld	%f2, %f2, %f2
	bne,pt	%icc, .L744
	 add	%g1, %o2, %g1
	ba,pt	%xcc, .L755
	 sra	%g1, 1, %o2
.L741:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L753:
	sethi	%hi(.LC20), %g1
	andcc	%o2, 1, %g0
	be,pt	%icc, .L743
	 ldd	[%g1+%lo(.LC20)], %f2
	ba,pt	%xcc, .L743
	 fmuld	%f0, %f2, %f0
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cmp	%o2, 0
	be,pn	%icc, .L792
	 nop
	add	%o2, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L765
	 or	%o0, %o1, %g1
	andcc	%g1, 7, %g0
	bne,pn	%icc, .L765
	 and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o0+%g1], %f8
.L790:
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L790
	 ldd	[%o0+%g1], %f8
	cmp	%o2, %g1
	add	%o0, %g1, %g2
	add	%o1, %g1, %g3
	be,pn	%icc, .L792
	 sub	%o2, %g1, %o2
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %o5
	xor	%g4, %o5, %o1
	cmp	%o2, 1
	be,pn	%icc, .L792
	 stb	%o1, [%o0+%g1]
	ldub	[%g2+1], %g4
	ldub	[%g3+1], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 2
	be,pn	%icc, .L792
	 stb	%g1, [%g2+1]
	ldub	[%g2+2], %o5
	ldub	[%g3+2], %g1
	xor	%g1, %o5, %g1
	cmp	%o2, 3
	be,pn	%icc, .L792
	 stb	%g1, [%g2+2]
	ldub	[%g2+3], %o1
	ldub	[%g3+3], %g1
	xor	%g1, %o1, %g1
	cmp	%o2, 4
	be,pn	%icc, .L792
	 stb	%g1, [%g2+3]
	ldub	[%g2+4], %g4
	ldub	[%g3+4], %g1
	xor	%g1, %g4, %g1
	cmp	%o2, 5
	be,pn	%icc, .L792
	 stb	%g1, [%g2+4]
	ldub	[%g2+5], %o5
	ldub	[%g3+5], %g1
	xor	%g1, %o5, %g1
	cmp	%o2, 6
	be,pn	%icc, .L792
	 stb	%g1, [%g2+5]
	ldub	[%g2+6], %o2
	ldub	[%g3+6], %g1
	xor	%g1, %o2, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L765:
	mov	0, %g1
	ldub	[%o0+%g1], %g3
.L791:
	ldub	[%o1+%g1], %g2
	xor	%g2, %g3, %g4
	stb	%g4, [%o0+%g1]
	add	%g1, 1, %g1
	cmp	%o2, %g1
	bne,a,pt %icc, .L791
	 ldub	[%o0+%g1], %g3
.L792:
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
	be,pn	%icc, .L794
	 mov	%o0, %g1
.L795:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L795
	 add	%g1, 1, %g1
.L794:
	cmp	%o2, 0
	bne,a,pt %icc, .L809
	 ldub	[%o1], %g4
	jmp	%o7+8
	 stb	%g0, [%g1]
.L798:
	addcc	%o2, -1, %o2
	be,a,pn	%icc, .L810
	 stb	%g0, [%g1]
	ldub	[%o1], %g4
.L809:
	sll	%g4, 24, %g3
	cmp	%g3, 0
	stb	%g4, [%g1]
	add	%g1, 1, %g1
	bne,pt	%icc, .L798
	 add	%o1, 1, %o1
.L810:
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
	be,pn	%icc, .L811
	 mov	0, %g1
	ldsb	[%o0+%g1], %g2
.L819:
	cmp	%g2, 0
	bne,a,pn %icc, .L814
	 add	%g1, 1, %g1
.L811:
	jmp	%o7+8
	 mov	%g1, %o0
.L814:
	cmp	%o1, %g1
	bne,a,pt %icc, .L819
	 ldsb	[%o0+%g1], %g2
	ba,pt	%xcc, .L811
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
	be,a,pn	%icc, .L829
	 mov	0, %o0
.L821:
	mov	%o1, %g1
	ba,pt	%xcc, .L824
	 sra	%g4, 24, %g4
.L823:
	be,pn	%icc, .L829
	 add	%g1, 1, %g1
.L824:
	ldsb	[%g1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L823
	 cmp	%g2, %g4
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g4
	cmp	%g4, 0
	bne,pt	%icc, .L821
	 add	%o0, 1, %o0
	mov	0, %o0
.L829:
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
.L831:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	cmp	%g2, 0
	bne,pt	%icc, .L831
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
	be,pn	%icc, .L855
	 mov	%o0, %g4
	mov	%o1, %g1
.L835:
	ldsb	[%g1+1], %g2
	cmp	%g2, 0
	bne,pt	%icc, .L835
	 add	%g1, 1, %g1
	subcc	%g1, %o1, %g1
	be,pn	%icc, .L855
	 mov	%g4, %o0
	add	%o1, -1, %o0
	sra	%g3, 24, %o2
	ba,pt	%xcc, .L852
	 add	%o0, %g1, %o0
.L854:
	be,pn	%icc, .L853
	 add	%g4, 1, %g4
.L852:
	ldub	[%g4], %g1
	sll	%g1, 24, %o3
	sra	%o3, 24, %o4
	cmp	%o4, %o2
	bne,pt	%icc, .L854
	 cmp	%o4, 0
	mov	%o1, %g2
	mov	%g4, %o5
	ba,pt	%xcc, .L837
	 and	%g1, 0xff, %g1
.L839:
	ldub	[%o5], %g1
	cmp	%g1, 0
	be,pn	%icc, .L838
	 add	%g2, 1, %g2
.L837:
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
	bne,pt	%icc, .L839
	 add	%o5, 1, %o5
.L838:
	ldub	[%g2], %o5
	cmp	%g1, %o5
	be,a,pn	%icc, .L855
	 mov	%g4, %o0
	ba,pt	%xcc, .L852
	 add	%g4, 1, %g4
.L853:
	jmp	%o7+8
	 mov	0, %o0
.L855:
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L866
	 std	%o2, [%sp+72]
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L860
	 nop
	ldd	[%sp+72], %f10
	fcmped	%fcc3, %f10, %f8
	fbl,a,pn %fcc3, .L867
	 fnegd	%f0, %f0
.L860:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L866:
	ldd	[%sp+72], %f2
	fcmped	%fcc1, %f2, %f8
	fbule,pt %fcc1, .L860
	 nop
	fnegd	%f0, %f0
.L867:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	cmp	%o3, 0
	be,pn	%icc, .L868
	 mov	%o0, %g2
	cmp	%o1, %o3
	blu,pn	%icc, .L868
	 mov	0, %g2
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cmp	%o0, %o1
	bgu,pn	%icc, .L868
	 nop
	ldub	[%o2], %g1
	mov	%o0, %g2
	sll	%g1, 24, %o0
	sra	%o0, 24, %o4
	ldsb	[%g2], %g1
.L889:
	cmp	%g1, %o4
	be,pn	%icc, .L888
	 add	%g2, 1, %o5
	mov	%o5, %g2
.L870:
	cmp	%o1, %g2
	bgeu,a,pt %icc, .L889
	 ldsb	[%g2], %g1
.L879:
	mov	0, %g2
.L868:
	jmp	%o7+8
	 mov	%g2, %o0
.L888:
	cmp	%o3, 1
	be,pn	%icc, .L868
	 nop
.L873:
	ba,pt	%xcc, .L871
	 mov	1, %g1
.L872:
	cmp	%g1, %o3
	be,pn	%icc, .L868
	 nop
.L871:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	cmp	%g4, %g3
	be,pt	%icc, .L872
	 add	%g1, 1, %g1
	cmp	%o1, %o5
	blu,pn	%icc, .L879
	 sra	%o0, 24, %g1
	ldsb	[%o5], %g2
	cmp	%g1, %g2
	bne,pt	%icc, .L870
	 add	%o5, 1, %g2
	mov	%o5, %g1
	mov	%g2, %o5
	ba,pt	%xcc, .L873
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
	be,pn	%icc, .L891
	 nop
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L891:
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
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f0
	fcmped	%fcc0, %f0, %f8
	fbl,pn	%fcc0, .L918
	 sethi	%hi(.LC26), %g1
	ldd	[%g1+%lo(.LC26)], %f10
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L919
	 mov	0, %g2
.L898:
	sethi	%hi(.LC27), %g4
	sethi	%hi(.LC26), %o0
	ldd	[%g4+%lo(.LC27)], %f16
	ldd	[%o0+%lo(.LC26)], %f18
	mov	0, %g1
.L904:
	fmuld	%f0, %f16, %f0
	fcmped	%fcc2, %f0, %f18
	fbge,pt	%fcc2, .L904
	 add	%g1, 1, %g1
	cmp	%g2, 0
	be,pn	%icc, .L895
	 st	%g1, [%o2]
.L921:
	fnegd	%f0, %f0
.L895:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L919:
	sethi	%hi(.LC27), %g1
	ldd	[%g1+%lo(.LC27)], %f2
	fcmped	%fcc1, %f0, %f2
	fbuge,pt %fcc1, .L901
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,pn	%fcc2, .L899
	 fmovd	%f0, %f4
.L901:
	st	%g0, [%o2]
	jmp	%o7+8
	 add	%sp, 80, %sp
.L918:
	sethi	%hi(.LC24), %g1
	ldd	[%g1+%lo(.LC24)], %f6
	fcmped	%fcc0, %f0, %f6
	fbug,pn	%fcc0, .L920
	 fnegd	%f0, %f4
	fmovd	%f4, %f0
	ba,pt	%xcc, .L898
	 mov	1, %g2
.L920:
	sethi	%hi(.LC25), %g1
	ldd	[%g1+%lo(.LC25)], %f12
	fcmped	%fcc3, %f0, %f12
	fbule,pt %fcc3, .L901
	 nop
	mov	1, %g2
.L899:
	fmovd	%f4, %f0
	sethi	%hi(.LC27), %g3
	ldd	[%g3+%lo(.LC27)], %f14
	mov	0, %g1
.L906:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f14
	fbl,pt	%fcc1, .L906
	 add	%g1, -1, %g1
	cmp	%g2, 0
	bne,pt	%icc, .L921
	 st	%g1, [%o2]
	ba,pt	%xcc, .L895
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
	mov	%i0, %g1
	mov	0, %o2
	be,pn	%icc, .L922
	 mov	0, %o3
.L925:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o5
	and	%o5, %i3, %i5
	sll	%g1, 31, %g4
	mov	0, %g2
	srl	%i1, 1, %i1
	subx	%g0, %g2, %o4
	srl	%g1, 1, %g1
	and	%o4, %i2, %i4
	addcc	%o3, %i5, %o3
	or	%g4, %i1, %i1
	srl	%i3, 31, %g3
	sll	%i2, 1, %i2
	addx	%o2, %i4, %o2
	orcc	%g1, %i1, %g0
	or	%g3, %i2, %i2
	bne,pt	%icc, .L925
	 sll	%i3, 1, %i3
.L922:
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
	bgeu,pn	%icc, .L947
	 mov	1, %g1
	cmp	%o1, 0
.L949:
	bl,a,pn	%icc, .L936
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L949
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L935
	 mov	0, %o0
	mov	0, %o0
.L936:
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
	bne,pt	%icc, .L936
	 srl	%o1, 1, %o1
.L935:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L947:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L935
	 subx	%g0, -1, %o0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.align 32
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -96, %sp
	sra	%i0, 7, %g1
	cmp	%g1, %i0
	xor	%i0, %g1, %g1
	be,pn	%icc, .L953
	 mov	7, %i0
	call	__clzsi2, 0
	 sll	%g1, 8, %o0
	add	%o0, -1, %i0
.L953:
	return	%i7+8
	 nop
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.align 32
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -96, %sp
	sra	%i0, 31, %o1
	cmp	%i0, %o1
	xor	%i0, %o1, %o0
	be,pn	%icc, .L960
	 xor	%i1, %o1, %o1
.L958:
	call	__clzdi2, 0
	 nop
	jmp	%i7+8
	 restore %o0, -1, %o0
.L960:
	cmp	%i1, %i0
	bne,pt	%icc, .L958
	 nop
	return	%i7+8
	 mov	63, %o0
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.align 32
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	orcc	%o0, 0, %g2
	be,pn	%icc, .L967
	 mov	0, %o0
.L963:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L963
	 sll	%o1, 1, %o1
.L967:
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
	blu,pt	%icc, .L972
	 and	%o2, -8, %g2
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1029
	 cmp	%o2, 0
.L972:
	cmp	%g3, 0
	sll	%g3, 3, %o3
	be,pn	%icc, .L1025
	 mov	0, %g1
.L975:
	add	%o1, %g1, %o5
	ldd	[%o5], %o4
	add	%o0, %g1, %g3
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne,pt	%icc, .L975
	 std	%o4, [%g3]
	cmp	%o2, %g2
	bleu,pn	%icc, .L1034
	 nop
	sub	%o2, %g2, %o3
	add	%o3, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L1027
	 add	%g2, 1, %g1
	add	%o0, %g2, %g3
	add	%o1, %g2, %o5
	add	%o1, %g1, %g4
	sub	%g3, %g4, %g4
	or	%o5, %g3, %o4
	cmp	%g4, 6
	and	%o4, 7, %o4
	mov	0, %g4
	movgu	%icc, 1, %g4
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	andcc	%g4, %o4, %g0
	be,pn	%icc, .L1027
	 and	%o3, -8, %g4
	mov	0, %g1
	ldd	[%o5+%g1], %f0
.L1032:
	std	%f0, [%g3+%g1]
	add	%g1, 8, %g1
	cmp	%g4, %g1
	bne,a,pt %icc, .L1032
	 ldd	[%o5+%g1], %f0
	cmp	%o3, %g4
	be,pn	%icc, .L1035
	 add	%g2, %g4, %g2
	ldub	[%o1+%g2], %o3
	add	%g2, 1, %g1
	cmp	%g1, %o2
	bgeu,pn	%icc, .L1035
	 stb	%o3, [%o0+%g2]
	ldub	[%o1+%g1], %o5
	add	%g2, 2, %g3
	cmp	%o2, %g3
	bleu,pn	%icc, .L1035
	 stb	%o5, [%o0+%g1]
	ldub	[%o1+%g3], %o4
	add	%g2, 3, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1035
	 stb	%o4, [%o0+%g3]
	ldub	[%o1+%g1], %g4
	add	%g2, 4, %o3
	cmp	%o2, %o3
	bleu,pn	%icc, .L1035
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%o3], %o5
	add	%g2, 5, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1035
	 stb	%o5, [%o0+%o3]
	ldub	[%o1+%g1], %g3
	add	%g2, 6, %g2
	cmp	%o2, %g2
	bleu,pn	%icc, .L1035
	 stb	%g3, [%o0+%g1]
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1030:
	add	%g1, 1, %g1
.L1027:
	ldub	[%o1+%g2], %o4
	cmp	%o2, %g1
	stb	%o4, [%o0+%g2]
	bne,pt	%icc, .L1030
	 mov	%g1, %g2
.L1035:
	jmp	%o7+8
	 nop
.L1029:
	be,pn	%icc, .L1035
	 add	%o2, -1, %g4
	cmp	%g4, 8
	bleu,pn	%icc, .L1024
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
	be,pn	%icc, .L1024
	 mov	0, %g1
	mov	0, %o3
.L983:
	ldd	[%o5+%g1], %f8
	add	%o3, 1, %o3
	std	%f8, [%o4+%g1]
	cmp	%g3, %o3
	bgu,pt	%icc, .L983
	 add	%g1, -8, %g1
	sll	%g3, 3, %g3
	cmp	%o2, %g3
	be,pn	%icc, .L1035
	 sub	%g4, %g3, %g4
	ldub	[%o1+%g4], %o2
	cmp	%g4, 0
	stb	%o2, [%o0+%g4]
	be,pn	%icc, .L1035
	 add	%g4, -1, %g1
	ldub	[%o1+%g1], %o4
	cmp	%g1, 0
	stb	%o4, [%o0+%g1]
	be,pn	%icc, .L1035
	 add	%g4, -2, %o5
	ldub	[%o1+%o5], %g2
	cmp	%o5, 0
	stb	%g2, [%o0+%o5]
	be,pn	%icc, .L1035
	 add	%g4, -3, %g1
	ldub	[%o1+%g1], %o3
	cmp	%g1, 0
	stb	%o3, [%o0+%g1]
	be,pn	%icc, .L1035
	 add	%g4, -4, %o2
	ldub	[%o1+%o2], %g3
	cmp	%o2, 0
	stb	%g3, [%o0+%o2]
	be,pn	%icc, .L1035
	 add	%g4, -5, %g1
	ldub	[%o1+%g1], %o4
	cmp	%g1, 0
	stb	%o4, [%o0+%g1]
	be,pn	%icc, .L1035
	 add	%g4, -6, %g4
	ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g4]
.L1024:
	ldub	[%o1+%g4], %g1
.L1033:
	stb	%g1, [%o0+%g4]
	add	%g4, -1, %g4
	cmp	%g4, -1
	be,pn	%icc, .L1034
	 nop
	ldub	[%o1+%g4], %g1
	stb	%g1, [%o0+%g4]
	add	%g4, -1, %g4
	cmp	%g4, -1
	bne,a,pt %icc, .L1033
	 ldub	[%o1+%g4], %g1
	jmp	%o7+8
	 nop
.L1025:
	cmp	%o2, 0
	bne,pt	%icc, .L1027
	 add	%g2, 1, %g1
	jmp	%o7+8
	 nop
.L1034:
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
	blu,pt	%icc, .L1040
	 srl	%o2, 1, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1089
	 cmp	%o2, 0
.L1040:
	cmp	%g3, 0
	be,pn	%icc, .L1039
	 add	%g3, -1, %g1
	cmp	%g1, 6
	bleu,pn	%icc, .L1043
	 or	%o1, %o0, %o5
	and	%o5, 7, %g4
	add	%o1, 2, %g1
	cmp	%g0, %g4
	sub	%o0, %g1, %g1
	mov	0, %g2
	subx	%g0, -1, %o5
	cmp	%g1, 4
	mov	%g2, %g1
	movgu	%icc, 1, %g1
	andcc	%o5, %g1, %g0
	be,pn	%icc, .L1043
	 srl	%o2, 3, %g4
	and	%o2, -8, %o5
	mov	0, %g1
	ldd	[%o1+%g1], %f0
.L1094:
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %o5
	bne,a,pt %icc, .L1094
	 ldd	[%o1+%g1], %f0
	sll	%g4, 2, %g2
	cmp	%g3, %g2
	be,pn	%icc, .L1095
	 andcc	%o2, 1, %g0
	lduh	[%o1+%g1], %g4
	add	%g2, 1, %o5
	cmp	%g3, %o5
	bleu,pn	%icc, .L1039
	 sth	%g4, [%o0+%g1]
	add	%g1, 2, %g4
	lduh	[%o1+%g4], %o5
	add	%g2, 2, %g2
	cmp	%g3, %g2
	bleu,pn	%icc, .L1039
	 sth	%o5, [%o0+%g4]
	add	%g1, 4, %g1
	lduh	[%o1+%g1], %g3
	sth	%g3, [%o0+%g1]
.L1039:
	andcc	%o2, 1, %g0
.L1095:
	be,pt	%icc, .L1099
	 nop
	add	%o2, -1, %o2
.L1093:
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L1089:
	be,pn	%icc, .L1100
	 add	%o2, -1, %g2
	cmp	%g2, 8
	bgu,pt	%icc, .L1091
	 add	%o2, -2, %g4
.L1088:
	ldub	[%o1+%g2], %g1
.L1096:
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne,a,pt %icc, .L1096
	 ldub	[%o1+%g2], %g1
.L1100:
	jmp	%o7+8
	 nop
.L1091:
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
	be,pn	%icc, .L1088
	 and	%o2, -8, %g1
	sub	%g0, %g1, %g4
	mov	0, %g1
	ldd	[%g3+%g1], %f8
.L1097:
	std	%f8, [%o5+%g1]
	add	%g1, -8, %g1
	cmp	%g1, %g4
	bne,a,pt %icc, .L1097
	 ldd	[%g3+%g1], %f8
	and	%o2, -8, %g1
	andcc	%o2, 7, %g0
	be,pn	%icc, .L1100
	 sub	%g2, %g1, %g2
	ldub	[%o1+%g2], %o2
	cmp	%g2, 0
	stb	%o2, [%o0+%g2]
	be,pn	%icc, .L1100
	 add	%g2, -1, %g1
	ldub	[%o1+%g1], %o5
	cmp	%g1, 0
	stb	%o5, [%o0+%g1]
	be,pn	%icc, .L1100
	 add	%g2, -2, %g3
	ldub	[%o1+%g3], %g4
	cmp	%g3, 0
	stb	%g4, [%o0+%g3]
	be,pn	%icc, .L1100
	 add	%g2, -3, %g1
	ldub	[%o1+%g1], %o2
	cmp	%g1, 0
	stb	%o2, [%o0+%g1]
	be,pn	%icc, .L1100
	 add	%g2, -4, %o5
	ldub	[%o1+%o5], %g3
	cmp	%o5, 0
	stb	%g3, [%o0+%o5]
	be,pn	%icc, .L1100
	 add	%g2, -5, %g1
	ldub	[%o1+%g1], %g4
	cmp	%g1, 0
	stb	%g4, [%o0+%g1]
	be,pn	%icc, .L1100
	 add	%g2, -6, %g2
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1043:
	sll	%g3, 1, %g4
	mov	0, %g1
	lduh	[%o1+%g1], %o5
.L1098:
	sth	%o5, [%o0+%g1]
	add	%g1, 2, %g1
	cmp	%g4, %g1
	bne,a,pt %icc, .L1098
	 lduh	[%o1+%g1], %o5
	andcc	%o2, 1, %g0
	be,pt	%icc, .L1099
	 nop
	ba,pt	%xcc, .L1093
	 add	%o2, -1, %o2
.L1099:
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
	blu,pt	%icc, .L1106
	 and	%o2, -4, %g3
	add	%o1, %o2, %g1
	cmp	%o0, %g1
	bleu,pt	%icc, .L1166
	 cmp	%o2, 0
.L1106:
	cmp	%g4, 0
	be,pn	%icc, .L1167
	 cmp	%o2, 0
	add	%g4, -1, %g1
	cmp	%g1, 8
	bleu,pn	%icc, .L1108
	 or	%o0, %o1, %o3
	and	%o3, 7, %o4
	add	%o1, 4, %g1
	cmp	%g0, %o4
	xor	%o0, %g1, %g1
	subx	%g0, -1, %o5
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	andcc	%o5, %g1, %g0
	be,pn	%icc, .L1108
	 srl	%o2, 3, %o3
	and	%o2, -8, %g2
	mov	0, %g1
	ldd	[%o1+%g1], %f0
.L1171:
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne,a,pt %icc, .L1171
	 ldd	[%o1+%g1], %f0
	sll	%o3, 1, %o4
	cmp	%g4, %o4
	be,pn	%icc, .L1170
	 cmp	%o2, %g3
	ld	[%o1+%g1], %g4
	st	%g4, [%o0+%g1]
.L1170:
	bleu,pn	%icc, .L1176
	 nop
	sub	%o2, %g3, %o3
	add	%o3, -1, %g1
	cmp	%g1, 7
	bleu,pn	%icc, .L1163
	 add	%g3, 1, %g1
	add	%o0, %g3, %g4
	add	%o1, %g3, %o5
	add	%o1, %g1, %g2
	sub	%g4, %g2, %g2
	or	%o5, %g4, %o4
	cmp	%g2, 6
	and	%o4, 7, %o4
	mov	0, %g2
	movgu	%icc, 1, %g2
	cmp	%g0, %o4
	subx	%g0, -1, %o4
	andcc	%g2, %o4, %g0
	be,pn	%icc, .L1163
	 and	%o3, -8, %g2
	mov	0, %g1
	ldd	[%o5+%g1], %f2
.L1172:
	std	%f2, [%g4+%g1]
	add	%g1, 8, %g1
	cmp	%g2, %g1
	bne,a,pt %icc, .L1172
	 ldd	[%o5+%g1], %f2
	cmp	%o3, %g2
	be,pn	%icc, .L1177
	 add	%g3, %g2, %o3
	ldub	[%o1+%o3], %g3
	add	%o3, 1, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1177
	 stb	%g3, [%o0+%o3]
	ldub	[%o1+%g1], %g4
	add	%o3, 2, %o5
	cmp	%o5, %o2
	bgeu,pn	%icc, .L1177
	 stb	%g4, [%o0+%g1]
	ldub	[%o1+%o5], %o4
	add	%o3, 3, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1177
	 stb	%o4, [%o0+%o5]
	ldub	[%o1+%g1], %g2
	add	%o3, 4, %g3
	cmp	%o2, %g3
	bleu,pn	%icc, .L1177
	 stb	%g2, [%o0+%g1]
	ldub	[%o1+%g3], %g4
	add	%o3, 5, %g1
	cmp	%o2, %g1
	bleu,pn	%icc, .L1177
	 stb	%g4, [%o0+%g3]
	ldub	[%o1+%g1], %o5
	add	%o3, 6, %g2
	cmp	%o2, %g2
	bleu,pn	%icc, .L1177
	 stb	%o5, [%o0+%g1]
.L1164:
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1168:
	add	%g1, 1, %g1
.L1163:
	ldub	[%o1+%g3], %o3
	cmp	%o2, %g1
	stb	%o3, [%o0+%g3]
	bne,pt	%icc, .L1168
	 mov	%g1, %g3
.L1177:
	jmp	%o7+8
	 nop
.L1166:
	be,pn	%icc, .L1177
	 add	%o2, -1, %g2
	cmp	%g2, 8
	bleu,pn	%icc, .L1162
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
	be,pn	%icc, .L1162
	 and	%o2, -8, %g4
	sub	%g0, %g4, %g3
	mov	0, %g1
	ldd	[%o3+%g1], %f8
.L1173:
	std	%f8, [%o5+%g1]
	add	%g1, -8, %g1
	cmp	%g3, %g1
	bne,a,pt %icc, .L1173
	 ldd	[%o3+%g1], %f8
	and	%o2, -8, %g1
	andcc	%o2, 7, %g0
	be,pn	%icc, .L1177
	 sub	%g2, %g1, %g2
	ldub	[%o1+%g2], %o2
	cmp	%g2, 0
	stb	%o2, [%o0+%g2]
	be,pn	%icc, .L1177
	 add	%g2, -1, %g1
	ldub	[%o1+%g1], %o5
	cmp	%g1, 0
	stb	%o5, [%o0+%g1]
	be,pn	%icc, .L1177
	 add	%g2, -2, %o3
	ldub	[%o1+%o3], %o4
	cmp	%o3, 0
	stb	%o4, [%o0+%o3]
	be,pn	%icc, .L1177
	 add	%g2, -3, %g1
	ldub	[%o1+%g1], %g4
	cmp	%g1, 0
	stb	%g4, [%o0+%g1]
	be,pn	%icc, .L1177
	 add	%g2, -4, %g3
	ldub	[%o1+%g3], %o2
	cmp	%g3, 0
	stb	%o2, [%o0+%g3]
	be,pn	%icc, .L1177
	 add	%g2, -5, %g1
	ldub	[%o1+%g1], %o5
	cmp	%g1, 0
	stb	%o5, [%o0+%g1]
	bne,pt	%icc, .L1164
	 add	%g2, -6, %g2
	jmp	%o7+8
	 nop
.L1162:
	ldub	[%o1+%g2], %g1
.L1174:
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cmp	%g2, -1
	be,pn	%icc, .L1176
	 nop
	ldub	[%o1+%g2], %g1
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cmp	%g2, -1
	bne,a,pt %icc, .L1174
	 ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 nop
.L1108:
	sll	%g4, 2, %o5
	mov	0, %g1
	ld	[%o1+%g1], %o3
.L1175:
	st	%o3, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%o5, %g1
	bne,a,pt %icc, .L1175
	 ld	[%o1+%g1], %o3
	ba,pt	%xcc, .L1170
	 cmp	%o2, %g3
.L1167:
	bne,pt	%icc, .L1163
	 add	%g3, 1, %g1
	jmp	%o7+8
	 nop
.L1176:
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
	add	%sp, -80, %sp
	mov	%o0, %g3
	mov	0, %g2
	std	%g2, [%sp+72]
	ldd	[%sp+72], %f8
	fxtod	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__uitod, .-__uitod
	.align 4
	.align 32
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	add	%sp, -80, %sp
	mov	%o0, %g3
	mov	0, %g2
	std	%g2, [%sp+72]
	ldd	[%sp+72], %f8
	fxtos	%f8, %f0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	std	%i0, [%fp-16]
	ldd	[%fp-16], %f8
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
	bge,pt	%icc, .L1182
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC32), %g1
	or	%g1, %lo(.LC32), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1182:
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
	std	%i0, [%fp-16]
	ldd	[%fp-16], %f8
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
	bge,pt	%icc, .L1184
	 ldd	[%fp-8], %f2
	sethi	%hi(.LC34), %g1
	or	%g1, %lo(.LC34), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1184:
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
	bne,pn	%icc, .L1186
	 mov	0, %g1
	sra	%o0, 14, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 nop
	sra	%o0, 13, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	2, %g1
	sra	%o0, 12, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	3, %g1
	sra	%o0, 11, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	4, %g1
	sra	%o0, 10, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	5, %g1
	sra	%o0, 9, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	6, %g1
	sra	%o0, 8, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	7, %g1
	sra	%o0, 7, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	8, %g1
	sra	%o0, 6, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	9, %g1
	sra	%o0, 5, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	10, %g1
	sra	%o0, 4, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	11, %g1
	sra	%o0, 3, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	12, %g1
	sra	%o0, 2, %g1
	cmp	%g1, 0
	bne,pn	%icc, .L1186
	 mov	13, %g1
	cmp	%g0, %o0
	sra	%o0, 1, %o0
	subx	%g0, -1, %g2
	mov	14, %g1
	add	%g2, 15, %g3
	cmp	%o0, 0
	move	%icc, %g3, %g1
.L1186:
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
	bne,pn	%icc, .L1204
	 mov	0, %g1
	andcc	%o0, 2, %g0
	bne,pn	%icc, .L1204
	 mov	1, %g1
	andcc	%o0, 4, %g0
	bne,pn	%icc, .L1204
	 mov	2, %g1
	andcc	%o0, 8, %g0
	bne,pn	%icc, .L1204
	 mov	3, %g1
	andcc	%o0, 16, %g0
	bne,pn	%icc, .L1204
	 mov	4, %g1
	andcc	%o0, 32, %g0
	bne,pn	%icc, .L1204
	 mov	5, %g1
	andcc	%o0, 64, %g0
	bne,pn	%icc, .L1204
	 mov	6, %g1
	andcc	%o0, 128, %g0
	bne,pn	%icc, .L1204
	 mov	7, %g1
	andcc	%o0, 256, %g0
	bne,pn	%icc, .L1204
	 mov	8, %g1
	andcc	%o0, 512, %g0
	bne,pn	%icc, .L1204
	 mov	9, %g1
	andcc	%o0, 1024, %g0
	bne,pn	%icc, .L1204
	 mov	10, %g1
	andcc	%o0, 2048, %g0
	bne,pn	%icc, .L1204
	 mov	11, %g1
	sethi	%hi(4096), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1204
	 mov	12, %g1
	sethi	%hi(8192), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1204
	 mov	13, %g1
	sethi	%hi(16384), %g1
	andcc	%o0, %g1, %g0
	bne,pn	%icc, .L1204
	 mov	14, %g1
	sra	%o0, 15, %o0
	cmp	%g0, %o0
	subx	%g0, -1, %g1
	add	%g1, 15, %g1
.L1204:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC36:
	.long	1191182336
	.section	".text"
	.align 4
	.align 32
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	04
__fixunssfsi:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC36), %g1
	ld	[%sp+76], %f8
	ld	[%g1+%lo(.LC36)], %f9
	fcmpes	%fcc0, %f8, %f9
	fbge,a,pn %fcc0, .L1229
	 fsubs	%f8, %f9, %f1
	fstoi	%f8, %f0
	st	%f0, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1229:
	fstoi	%f1, %f2
	st	%f2, [%sp+76]
	ld	[%sp+76], %g2
	sethi	%hi(32768), %g1
	add	%g2, %g1, %g1
	st	%g1, [%sp+76]
	ld	[%sp+76], %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	add	%g1, %g3, %g1
	sra	%o0, 3, %g3
	sra	%o0, 4, %g2
	add	%g1, %g4, %g1
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 5, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 6, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 7, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 8, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 9, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 10, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 11, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 12, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 13, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 14, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	and	%g2, 1, %g3
	add	%g1, %g3, %g1
	sra	%o0, 15, %o0
	add	%g1, %o0, %g4
	jmp	%o7+8
	 and	%g4, 1, %o0
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
	add	%g1, %g3, %g1
	sra	%o0, 3, %g3
	sra	%o0, 4, %g2
	add	%g1, %g4, %g1
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 5, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 6, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 7, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 8, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 9, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 10, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 11, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 12, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 13, %g3
	and	%g2, 1, %g4
	add	%g1, %g4, %g1
	sra	%o0, 14, %g2
	and	%g3, 1, %g4
	add	%g1, %g4, %g1
	and	%g2, 1, %g3
	add	%g1, %g3, %g1
	sra	%o0, 15, %o0
	jmp	%o7+8
	 add	%g1, %o0, %o0
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.align 32
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	orcc	%o0, 0, %g2
	be,pn	%icc, .L1238
	 mov	0, %o0
.L1234:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	srl	%g2, 1, %g2
	and	%g1, %o1, %g1
	cmp	%g2, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1234
	 sll	%o1, 1, %o1
.L1238:
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
	be,pn	%icc, .L1247
	 mov	0, %o0
	cmp	%o1, 0
	be,pn	%icc, .L1247
	 nop
.L1241:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	srl	%o1, 1, %o1
	and	%g1, %g2, %g1
	cmp	%o1, 0
	add	%o0, %g1, %o0
	bne,pt	%icc, .L1241
	 sll	%g2, 1, %g2
.L1247:
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
	bleu,pn	%icc, .L1266
	 mov	1, %g1
	cmp	%o1, 0
.L1268:
	bl,a,pn	%icc, .L1255
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1268
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1254
	 mov	0, %o0
	mov	0, %o0
.L1255:
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
	bne,pt	%icc, .L1255
	 srl	%o1, 1, %o1
.L1254:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1266:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1254
	 subx	%g0, -1, %o0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.align 32
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	st	%o1, [%sp+76]
	ld	[%sp+76], %f9
	fcmpes	%fcc1, %f8, %f9
	fcmpes	%fcc2, %f8, %f9
	mov	0, %g1
	movg	%fcc1, 1, %g1
	st	%o1, [%sp+76]
	mov	-1, %g2
	mov	%g1, %o0
	movl	%fcc2, %g2, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.align 32
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	ldd	[%sp+72], %f8
	std	%o2, [%sp+72]
	ldd	[%sp+72], %f10
	fcmped	%fcc3, %f8, %f10
	fcmped	%fcc0, %f8, %f10
	mov	0, %g1
	movg	%fcc3, 1, %g1
	std	%o2, [%sp+72]
	mov	-1, %g2
	mov	%g1, %o0
	movl	%fcc0, %g2, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
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
	bl,pn	%icc, .L1286
	 mov	%o0, %g3
	be,pn	%icc, .L1287
	 mov	0, %o0
	mov	0, %o4
.L1279:
	mov	1, %g4
	mov	0, %o0
.L1281:
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
	bne,pt	%icc, .L1281
	 add	%g4, 1, %g4
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %o0
.L1287:
	jmp	%o7+8
	 nop
.L1286:
	sub	%g0, %o1, %o1
	ba,pt	%xcc, .L1279
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
	bl,pn	%icc, .L1316
	 mov	0, %o5
.L1289:
	cmp	%o1, 0
	bge,pt	%icc, .L1317
	 cmp	%o0, %o1
	sub	%g0, %o1, %o1
	mov	%g1, %o5
	cmp	%o0, %o1
.L1317:
	mov	%o0, %g4
	bleu,pn	%icc, .L1312
	 mov	1, %g1
	sll	%o1, 1, %o1
.L1318:
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g2
	andcc	%g3, %g2, %g0
	bne,a,pt %icc, .L1318
	 sll	%o1, 1, %o1
	cmp	%g1, 0
	be,pn	%icc, .L1294
	 mov	0, %o0
.L1293:
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
	bne,pt	%icc, .L1293
	 srl	%o1, 1, %o1
.L1294:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1316:
	sub	%g0, %o0, %o0
	mov	0, %g1
	ba,pt	%xcc, .L1289
	 mov	1, %o5
.L1312:
	ba,pt	%xcc, .L1294
	 subx	%g0, -1, %o0
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	cmp	%o0, 0
	bge,pt	%icc, .L1320
	 mov	0, %o4
	sub	%g0, %o0, %o0
	mov	1, %o4
.L1320:
	sra	%o1, 31, %g2
	xor	%g2, %o1, %g1
	sub	%g1, %g2, %g1
	cmp	%o0, %g1
	mov	%o0, %g3
	bleu,pn	%icc, .L1341
	 mov	1, %o1
	sll	%g1, 1, %g1
.L1346:
	cmp	%g1, %o0
	sll	%o1, 1, %o1
	addx	%g0, 0, %o5
	cmp	%g0, %o1
	addx	%g0, 0, %g4
	andcc	%o5, %g4, %g0
	bne,a,pt %icc, .L1346
	 sll	%g1, 1, %g1
	cmp	%o1, 0
	be,a,pn	%icc, .L1345
	 mov	%o0, %g3
.L1323:
	cmp	%g3, %g1
	sub	%g3, %g1, %o0
	srl	%o1, 1, %o1
	movgeu	%icc, %o0, %g3
	cmp	%o1, 0
	bne,pt	%icc, .L1323
	 srl	%g1, 1, %g1
.L1324:
	sub	%g0, %g3, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L1345:
	sub	%g0, %g3, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %g3
	jmp	%o7+8
	 mov	%g3, %o0
.L1341:
	sub	%o0, %g1, %g1
	ba,pt	%xcc, .L1324
	 movgeu	%icc, %g1, %g3
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	cmp	%o1, %o0
	blu,pt	%icc, .L1348
	 mov	1, %g3
	ba,pt	%xcc, .L1410
	 xor	%o1, %o0, %g1
.L1351:
	cmp	%g1, %o0
	addx	%g0, 0, %o3
	cmp	%g0, %g2
	addx	%g0, 0, %o5
	andcc	%o3, %o5, %g0
	srl	%g2, 16, %g2
	be,pn	%icc, .L1350
	 mov	%g4, %o5
	mov	%g4, %g3
	mov	%g1, %o1
.L1348:
	sll	%o1, 16, %g4
	sll	%o1, 17, %g1
	cmp	%g4, 0
	srl	%g1, 16, %g1
	sll	%g3, 17, %g2
	bge,pt	%icc, .L1351
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
	be,pn	%icc, .L1353
	 srl	%o1, 1, %o4
.L1355:
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	be,pn	%icc, .L1353
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
	bge,pn	%icc, .L1353
	 srl	%o1, 15, %o1
	cmp	%o0, %o1
	sub	%o0, %o1, %g2
	movgeu	%icc, %g2, %o0
	sll	%o0, 16, %g3
	subx	%g0, -1, %o3
	srl	%g3, 16, %o0
	or	%g1, %o3, %o5
.L1353:
	cmp	%o2, 0
	movne	%icc, %o0, %o5
	sll	%o5, 16, %o2
	jmp	%o7+8
	 srl	%o2, 16, %o0
.L1350:
	cmp	%g2, 0
	be,pn	%icc, .L1353
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
	ba,pt	%xcc, .L1355
	 sll	%o5, 16, %g2
.L1410:
	cmp	%g0, %g1
	subx	%g0, -1, %o5
	sub	%o0, %o1, %o1
	cmp	%g1, 0
	move	%icc, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	ba,pt	%xcc, .L1353
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
	bleu,pn	%icc, .L1429
	 mov	1, %g1
	cmp	%o1, 0
.L1431:
	bl,a,pn	%icc, .L1418
	 mov	0, %o0
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g4
	cmp	%g0, %g1
	addx	%g0, 0, %g3
	andcc	%g4, %g3, %g0
	bne,pt	%icc, .L1431
	 cmp	%o1, 0
	cmp	%g1, 0
	be,pn	%icc, .L1417
	 mov	0, %o0
	mov	0, %o0
.L1418:
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
	bne,pt	%icc, .L1418
	 srl	%o1, 1, %o1
.L1417:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1429:
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	ba,pt	%xcc, .L1417
	 subx	%g0, -1, %o0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	andcc	%o2, 32, %g0
	be,a,pt	%icc, .L1433
	 cmp	%o2, 0
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1433:
	be,pn	%icc, .L1438
	 nop
	sub	%g0, %o2, %g1
	srl	%o1, %g1, %g1
	sll	%o0, %o2, %g4
	sll	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1438:
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
	be,pt	%icc, .L1440
	 cmp	%o2, 0
	sra	%o0, 31, %g4
	sra	%o0, %o2, %o1
	mov	%g4, %o0
.L1445:
	jmp	%o7+8
	 nop
.L1440:
	be,pn	%icc, .L1445
	 nop
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o1
	sra	%o0, %o2, %g4
	or	%g1, %o1, %o1
	jmp	%o7+8
	 mov	%g4, %o0
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
	bl,pn	%icc, .L1455
	 mov	0, %o0
	bg,pn	%icc, .L1455
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1455:
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
	bl,pn	%icc, .L1461
	 mov	-1, %o0
	bg,pn	%icc, .L1461
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1461
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1461:
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
	be,pt	%icc, .L1464
	 cmp	%o2, 0
	srl	%o0, %o2, %o1
	mov	0, %o0
.L1465:
	stx	%g0, [%sp+72]
	st	%o0, [%sp+72]
	mov	%o0, %g1
.L1463:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1464:
	be,pn	%icc, .L1463
	 mov	%o0, %g1
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %g3
	srl	%o0, %o2, %o0
	ba,pt	%xcc, .L1465
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
	srl	%g2, 16, %o1
	and	%o5, %g4, %g4
	sll	%g2, 16, %g3
	add	%g1, %o0, %o0
	add	%o0, %o1, %o0
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
	smul	%o3, %o0, %o0
	srl	%o3, 16, %o3
	smul	%g2, %o3, %g2
	smul	%o5, %o3, %o5
	smul	%o1, %o2, %o2
	srl	%g3, 16, %o4
	add	%g1, %o4, %g1
	and	%g3, %g4, %o1
	sll	%g1, 16, %g3
	srl	%g3, 16, %o3
	add	%g2, %o3, %g2
	srl	%g1, 16, %g1
	add	%g1, %o5, %g1
	srl	%g2, 16, %o5
	add	%o1, %g3, %o4
	add	%g1, %o5, %g1
	and	%o4, %g4, %g4
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
	xor	%g1, %o1, %g3
	srl	%g3, 8, %g2
	xor	%g2, %g3, %g4
	srl	%g4, 4, %g1
	xor	%g1, %g4, %g1
	sethi	%hi(26624), %o0
	or	%o0, 406, %o1
	and	%g1, 15, %g1
	sra	%o1, %g1, %g3
	jmp	%o7+8
	 and	%g3, 1, %o0
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
	.section	.rodata.cst8
	.align 8
.LC38:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.align 32
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	add	%sp, -80, %sp
	std	%o0, [%sp+72]
	sethi	%hi(.LC38), %g2
	andcc	%o2, 1, %g0
	ldd	[%sp+72], %f8
	ldd	[%g2+%lo(.LC38)], %f0
	be,pt	%icc, .L1477
	 mov	%o2, %g1
.L1479:
	fmuld	%f0, %f8, %f0
.L1477:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1478
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1479
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1485:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuld	%f8, %f8, %f8
	bne,pt	%icc, .L1479
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1485
	 sra	%o0, 1, %g1
.L1478:
	cmp	%o2, 0
	bge,pt	%icc, .L1476
	 sethi	%hi(.LC38), %g1
	ldd	[%g1+%lo(.LC38)], %f2
	fdivd	%f2, %f0, %f0
.L1476:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC40:
	.long	1065353216
	.section	".text"
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	sethi	%hi(.LC40), %g2
	andcc	%o1, 1, %g0
	ld	[%sp+76], %f8
	ld	[%g2+%lo(.LC40)], %f0
	be,pt	%icc, .L1487
	 mov	%o1, %g1
.L1489:
	fmuls	%f0, %f8, %f0
.L1487:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cmp	%g1, 0
	be,pn	%icc, .L1488
	 srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1489
	 add	%g4, %g1, %o0
	sra	%o0, 1, %g1
.L1495:
	srl	%g1, 31, %g4
	andcc	%g1, 1, %g0
	fmuls	%f8, %f8, %f8
	bne,pt	%icc, .L1489
	 add	%g4, %g1, %o0
	ba,pt	%xcc, .L1495
	 sra	%o0, 1, %g1
.L1488:
	cmp	%o1, 0
	bge,pt	%icc, .L1486
	 sethi	%hi(.LC40), %g1
	ld	[%g1+%lo(.LC40)], %f1
	fdivs	%f1, %f0, %f0
.L1486:
	jmp	%o7+8
	 add	%sp, 80, %sp
	.size	__powisf2, .-__powisf2
	.align 4
	.align 32
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	cmp	%o0, %o2
	blu,pn	%icc, .L1502
	 mov	0, %o0
	bgu,pn	%icc, .L1502
	 mov	2, %o0
	cmp	%o1, %o3
	mov	1, %g1
	mov	0, %o0
	movgu	%icc, 2, %g1
	movgeu	%icc, %g1, %o0
.L1502:
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
	blu,pn	%icc, .L1508
	 mov	-1, %o0
	bgu,pn	%icc, .L1508
	 mov	1, %o0
	cmp	%o1, %o3
	blu,pn	%icc, .L1508
	 mov	-1, %o0
	cmp	%o3, %o1
	addx	%g0, 0, %o0
.L1508:
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
	.global __clzdi2
	.global __clzsi2
	.global __moddi3
	.global __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
