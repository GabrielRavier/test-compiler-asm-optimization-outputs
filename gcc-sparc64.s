	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.align 32
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	cwbleu	%o0, %o1, .L2
	nop
	cwbe	%o2, 0, .L73
	add	%o2, -1, %g1
	cwbleu	%g1, 8, .L4
	add	%o2, -2, %g4
	add	%o1, %g4, %o5
	add	%o2, -8, %g2
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
	and	%g3, %o5, %g3
	cwbe	%g3, 0, .L4
	and	%o2, -8, %g1
	sub	%g0, %g1, %o5
	mov	0, %g1
.L5:
	ldd	[%g2+%g1], %f0
	std	%f0, [%g4+%g1]
	add	%g1, -8, %g1
	cwbne	%g1, %o5, .L5
	add	%o2, %g1, %g1
	and	%o2, 7, %g4
	add	%o1, %g1, %o1
	mov	%g4, %o2
	add	%o0, %g1, %g1
	cwbe	%g4, 0, .L73
	ldub	[%o1-1], %g2
	stb	%g2, [%g1-1]
	cwbe	%g4, 1, .L73
	ldub	[%o1-2], %g3
	stb	%g3, [%g1-2]
	cwbe	%g4, 2, .L73
	ldub	[%o1-3], %o5
	stb	%o5, [%g1-3]
	cwbe	%g4, 3, .L73
	ldub	[%o1-4], %g4
	stb	%g4, [%g1-4]
	cwbe	%o2, 4, .L73
	ldub	[%o1-5], %g2
	stb	%g2, [%g1-5]
	cwbe	%o2, 5, .L73
	ldub	[%o1-6], %g3
	stb	%g3, [%g1-6]
	cwbe	%o2, 6, .L73
	ldub	[%o1-7], %o1
	jmp	%o7+8
	 stb	%o1, [%g1-7]
.L2:
	cwbne	%o0, %o1, .L71
	nop
	jmp	%o7+8
	 nop
.L71:
	cwbe	%o2, 0, .L73
	add	%o2, -1, %g1
	cwbleu	%g1, 7, .L16
	or	%o0, %o1, %g2
	and	%g2, 7, %g3
	add	%o1, 1, %g1
	cmp	%g0, %g3
	sub	%o0, %g1, %g1
	subx	%g0, -1, %g4
	mov	0, %o5
	cmp	%g1, 6
	movgu	%icc, 1, %o5
	and	%g4, %o5, %g1
	cwbe	%g1, 0, .L16
	and	%o2, -8, %g2
	mov	0, %g1
.L10:
	ldd	[%o1+%g1], %f8
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %g2, .L10
	add	%o1, %g1, %g4
	add	%o0, %g1, %g3
	sub	%o2, %g1, %g2
	cwbe	%o2, %g1, .L73
	ldub	[%o1+%g1], %o1
	stb	%o1, [%o0+%g1]
	cwbe	%g2, 1, .L73
	ldub	[%g4+1], %g1
	stb	%g1, [%g3+1]
	cwbe	%g2, 2, .L73
	ldub	[%g4+2], %g1
	stb	%g1, [%g3+2]
	cwbe	%g2, 3, .L73
	ldub	[%g4+3], %g1
	stb	%g1, [%g3+3]
	cwbe	%g2, 4, .L73
	ldub	[%g4+4], %g1
	stb	%g1, [%g3+4]
	cwbe	%g2, 5, .L73
	ldub	[%g4+5], %g1
	stb	%g1, [%g3+5]
	cwbe	%g2, 6, .L73
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L4:
	add	%o1, -1, %o5
	add	%o0, -1, %g4
	cwbe	%g0, %g0, .L7
.L72:
	add	%g1, -1, %g1
.L7:
	ldub	[%o5+%o2], %g2
	stb	%g2, [%g4+%o2]
	mov	%g1, %o2
	cwbne	%g1, 0, .L72
	nop
	jmp	%o7+8
	 nop
.L16:
	mov	0, %g1
.L69:
	ldub	[%o1+%g1], %o5
	stb	%o5, [%o0+%g1]
	add	%g1, 1, %g1
	cwbne	%o2, %g1, .L69
	nop
.L73:
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
.L86:
	cwbe	%o3, 0, .L87
	ldub	[%o1], %g1
	stb	%g1, [%o0]
	and	%g1, 0xff, %g1
	add	%o3, -1, %o3
	add	%o1, 1, %o1
	add	%o0, 1, %o0
	cwbne	%g1, %o2, .L86
	nop
	jmp	%o7+8
	 nop
.L87:
	jmp	%o7+8
	 mov	0, %o0
	.size	memccpy, .-memccpy
	.align 4
	.align 32
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	and	%o1, 0xff, %o1
	cwbne	%o2, 0, .L89
	nop
	cwbe	%g0, %g0, .L92
.L91:
	add	%o0, 1, %o0
	cwbe	%o2, 0, .L92
.L89:
	ldub	[%o0], %g1
	add	%o2, -1, %o2
	cwbne	%g1, %o1, .L91
	nop
	jmp	%o7+8
	 nop
.L92:
	jmp	%o7+8
	 mov	0, %o0
	.size	memchr, .-memchr
	.align 4
	.align 32
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	cwbe	%o2, 0, .L101
.L110:
	ldub	[%o0], %g1
	ldub	[%o1], %g2
	add	%o2, -1, %o2
	add	%o0, 1, %o0
	cwbne	%g1, %g2, .L109
	add	%o1, 1, %o1
	cwbne	%o2, 0, .L110
	nop
.L101:
	jmp	%o7+8
	 mov	0, %o0
.L109:
	jmp	%o7+8
	 sub	%g1, %g2, %o0
	.size	memcmp, .-memcmp
	.align 4
	.align 32
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -96, %sp
	cwbe	%i2, 0, .L116
	mov	%i2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L116:
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
	add	%o0, -1, %g2
	cwbe	%g0, %g0, .L118
.L120:
	ldub	[%o0], %g1
	add	%g3, -1, %g3
	cwbe	%g1, %o1, .L121
.L118:
	mov	%g3, %o0
	cwbne	%g3, %g2, .L120
	mov	0, %o0
.L121:
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
	cwbe	%i2, 0, .L126
	mov	%i2, %o2
	and	%i1, 0xff, %o1
	call	memset, 0
	 mov	%i0, %o0
.L126:
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
	stb	%g1, [%o0]
	sll	%g1, 24, %g1
	cwbe	%g1, 0, .L134
.L129:
	ldub	[%o1+1], %g1
	sll	%g1, 24, %g2
	stb	%g1, [%o0+1]
	add	%o0, 1, %o0
	add	%o1, 1, %o1
	cwbne	%g2, 0, .L129
	nop
.L134:
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
	and	%o1, 0xff, %o1
	cwbne	%g2, 0, .L136
	nop
	jmp	%o7+8
	 nop
.L138:
	ldub	[%o0+1], %g1
	sll	%g1, 24, %g3
	add	%o0, 1, %o0
	cwbe	%g3, 0, .L143
.L136:
	and	%g1, 0xff, %g1
	cwbne	%g1, %o1, .L138
	nop
.L143:
	jmp	%o7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.align 32
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
.L147:
	ldsb	[%o0], %g1
	cwbe	%g1, %o1, .L149
	add	%o0, 1, %o0
	cwbne	%g1, 0, .L147
	mov	0, %o0
.L149:
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
	mov	1, %g1
	add	%o1, -1, %o1
	cwbne	%o5, %g2, .L159
	nop
.L151:
	cwbe	%g2, 0, .L160
	ldub	[%o0+%g1], %g4
	add	%g1, 1, %g1
	ldub	[%o1+%g1], %g3
	sll	%g4, 24, %g2
	sll	%g3, 24, %o5
	cwbe	%o5, %g2, .L151
.L159:
	and	%g4, 0xff, %g4
	and	%g3, 0xff, %o0
	jmp	%o7+8
	 sub	%g4, %o0, %o0
.L160:
	mov	0, %g4
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
	mov	0, %g1
	ldsb	[%o0], %g2
	cwbe	%g2, 0, .L161
	mov	%o0, %g1
.L163:
	add	%g1, 1, %g1
	ldsb	[%g1], %g3
	cwbne	%g3, 0, .L163
	sub	%g1, %o0, %g1
.L161:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	strlen, .-strlen
	.align 4
	.align 32
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	mov	0, %g3
	cwbe	%o2, 0, .L167
	ldub	[%o0], %g4
	add	%o2, -1, %o2
	mov	%o1, %g3
	add	%o1, %o2, %o2
	cwbne	%g4, 0, .L171
	nop
	cwbe	%g0, %g0, .L179
.L172:
	ldub	[%o0], %g4
	add	%g3, 1, %g1
	cwbe	%g4, 0, .L180
	mov	%g1, %g3
.L171:
	ldub	[%g3], %o5
	cmp	%g0, %o5
	xor	%o5, %g4, %o4
	xor	%g3, %o2, %g1
	addx	%g0, 0, %g2
	cmp	%g0, %o4
	subx	%g0, -1, %o1
	cmp	%g0, %g1
	and	%g2, %o1, %o4
	addx	%g0, 0, %g1
	and	%g1, %o4, %g1
	add	%o0, 1, %o0
	cwbne	%g1, 0, .L172
.L170:
	sub	%g4, %o5, %g3
.L167:
	jmp	%o7+8
	 mov	%g3, %o0
.L180:
	ldub	[%g3+1], %o5
	cwbe	%g0, %g0, .L170
.L179:
	ldub	[%o1], %o5
	cwbe	%g0, %g0, .L170
	nop
	.size	strncmp, .-strncmp
	.align 4
	.align 32
	.global swab
	.type	swab, #function
	.proc	020
swab:
	cwble	%o2, 1, .L190
	add	%o2, -2, %g1
	cwbleu	%g1, 7, .L183
	or	%o1, %o0, %g1
	and	%g1, 7, %g1
	cwbne	%g1, 0, .L183
	sethi	%hi(271733760), %g2
	srl	%o2, 1, %o4
	srl	%o2, 3, %o5
	and	%o2, -8, %g3
	or	%g2, 118, %g2
.L184:
	bmask	%g2, %g0, %g4
	ldd	[%o0+%g1], %f8
	bshuffle	%f8, %f8, %f0
	std	%f0, [%o1+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %g3, .L184
	sll	%o5, 3, %g4
	sll	%o5, 2, %o5
	add	%o1, %g1, %g2
	add	%o0, %g1, %g3
	sub	%o2, %g4, %o2
	cwbe	%o4, %o5, .L190
	ldub	[%g3+1], %o4
	ldub	[%o0+%g1], %o0
	stb	%o4, [%o1+%g1]
	stb	%o0, [%g2+1]
	cwble	%o2, 3, .L190
	ldub	[%g3+3], %o1
	ldub	[%g3+2], %g1
	stb	%o1, [%g2+2]
	stb	%g1, [%g2+3]
	cwble	%o2, 5, .L190
	ldub	[%g3+5], %g4
	ldub	[%g3+4], %g1
	stb	%g4, [%g2+4]
	jmp	%o7+8
	 stb	%g1, [%g2+5]
.L183:
	and	%o2, -2, %o5
	add	%o0, %o5, %g3
.L186:
	ldub	[%o0+1], %g2
	ldub	[%o0], %g1
	stb	%g2, [%o1]
	stb	%g1, [%o1+1]
	add	%o0, 2, %o0
	add	%o1, 2, %o1
	cwbne	%g3, %o0, .L186
	nop
.L190:
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
	or	%g3, %g1, %g1
	mov	%o0, %g2
	mov	1, %o0
	cwbne	%g1, 0, .L205
	sethi	%hi(-9216), %g4
	or	%g4, 984, %g3
	add	%g2, %g3, %g4
	cwbleu	%g4, 1, .L205
	sethi	%hi(-65536), %o0
	or	%o0, 7, %g3
	add	%g2, %g3, %g2
	cmp	%g2, 2
	movleu	%icc, 1, %g1
	mov	%g1, %o0
.L205:
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
	bleu,pn	%icc, .L213
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
	or	%g4, %o0, %g2
	mov	1, %o0
	cwbne	%g2, 0, .L214
	sethi	%hi(-57344), %o5
	sethi	%hi(7168), %g3
	add	%g1, %o5, %g4
	or	%g3, 1016, %o5
	cwbleu	%g4, %o5, .L214
	sethi	%hi(64512), %o0
	or	%o0, 1022, %g3
	sethi	%hi(-65536), %g4
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
.L214:
	jmp	%o7+8
	 nop
.L213:
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
	mov	%o0, %g1
	mov	1, %o0
	cwbleu	%g2, 9, .L218
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	mov	0, %o0
	movleu	%icc, 1, %o0
.L218:
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
	fbu,pn	%fcc0, .L220
	 std	%o2, [%sp+72]
	movwtos	%o2, %f0
	movwtos	%o3, %f1
	fcmpd	%fcc1, %f0, %f0
	fbu,pn	%fcc1, .L220
	 nop
	fcmped	%fcc2, %f8, %f0
	fbule,pt %fcc2, .L227
	 nop
	fsubd	%f8, %f0, %f0
.L220:
	jmp	%o7+8
	 add	%sp, 80, %sp
.L227:
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
	fbu,pn	%fcc3, .L236
	 nop
	movwtos	%o1, %f0
	fcmps	%fcc0, %f0, %f0
	fbu,pn	%fcc0, .L236
	 nop
	movwtos	%o0, %f8
	fcmpes	%fcc1, %f8, %f0
	fbule,pt %fcc1, .L235
	 nop
	jmp	%o7+8
	 fsubs	%f8, %f0, %f0
.L235:
	fzeros	%f0
.L236:
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
	fbu,pn	%fcc2, .L243
	 fmovd	%f0, %f8
	fcmpd	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L243
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cwbe	%g1, %g4, .L239
	cmp	%g1, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L239:
	fcmped	%fcc0, %f0, %f8
	fmovdl	%fcc0, %f8, %f0
.L243:
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
	fbu,pn	%fcc1, .L250
	 fmovs	%f8, %f0
	fcmps	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L250
	 fmovs	%f9, %f0
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%o1, %g3, %g4
	cwbe	%g1, %g4, .L246
	cmp	%g1, 0
	jmp	%o7+8
	 fmovsne	%icc, %f8, %f0
.L246:
	fcmpes	%fcc3, %f9, %f8
	fmovsl	%fcc3, %f8, %f0
.L250:
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
	fbu,pn	%fcc0, .L257
	 fmovd	%f0, %f8
	fcmpd	%fcc1, %f8, %f8
	fbu,pn	%fcc1, .L257
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cwbe	%g1, %g4, .L253
	cmp	%g1, 0
	jmp	%o7+8
	 fmovdne	%icc, %f8, %f0
.L253:
	fcmped	%fcc2, %f0, %f8
	fmovdl	%fcc2, %f8, %f0
.L257:
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
	fbu,pn	%fcc3, .L264
	 fmovd	%f0, %f8
	fcmpd	%fcc0, %f8, %f8
	fbu,pn	%fcc0, .L264
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cwbe	%g1, %g4, .L260
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f8
	jmp	%o7+8
	 fmovd	%f8, %f0
.L260:
	fcmped	%fcc1, %f0, %f8
	fmovdl	%fcc1, %f0, %f8
	fmovd	%f8, %f0
.L264:
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
	fbu,pn	%fcc2, .L271
	 fmovs	%f8, %f0
	fcmps	%fcc3, %f8, %f8
	fbu,pn	%fcc3, .L271
	 fmovs	%f9, %f0
	sethi	%hi(-2147483648), %g3
	and	%o0, %g3, %g1
	and	%o1, %g3, %g4
	cwbe	%g1, %g4, .L267
	cmp	%g1, 0
	fmovsne	%icc, %f9, %f8
	jmp	%o7+8
	 fmovs	%f8, %f0
.L267:
	fcmpes	%fcc0, %f9, %f8
	fmovsl	%fcc0, %f9, %f8
	fmovs	%f8, %f0
.L271:
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
	fbu,pn	%fcc1, .L278
	 fmovd	%f0, %f8
	fcmpd	%fcc2, %f8, %f8
	fbu,pn	%fcc2, .L278
	 fmovd	%f10, %f0
	movstouw	%f0, %g1
	movstouw	%f8, %g2
	sethi	%hi(-2147483648), %g3
	and	%g1, %g3, %g1
	and	%g2, %g3, %g4
	cwbe	%g1, %g4, .L274
	cmp	%g1, 0
	fmovdne	%icc, %f0, %f8
	jmp	%o7+8
	 fmovd	%f8, %f0
.L274:
	fcmped	%fcc3, %f0, %f8
	fmovdl	%fcc3, %f0, %f8
	fmovd	%f8, %f0
.L278:
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
	mov	%o0, %g2
	cwbe	%g1, 0, .L280
	sethi	%hi(digits), %g4
	or	%g4, %lo(digits), %g4
.L281:
	and	%g1, 63, %g3
	ldub	[%g4+%g3], %g3
	srl	%g1, 6, %g1
	stb	%g3, [%g2]
	add	%g2, 1, %g2
	cwbne	%g1, 0, .L281
	nop
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
	cwbe	%o1, 0, .L292
	ld	[%o1], %g1
	st	%o1, [%o0+4]
	st	%g1, [%o0]
	st	%o0, [%o1]
	ld	[%o0], %g1
	cwbe	%g1, 0, .L293
	st	%o0, [%g1+4]
.L293:
	jmp	%o7+8
	 nop
.L292:
	st	%g0, [%o0+4]
	jmp	%o7+8
	 st	%g0, [%o0]
	.size	insque, .-insque
	.align 4
	.align 32
	.global remque
	.type	remque, #function
	.proc	020
remque:
	ld	[%o0], %g1
	cwbe	%g1, 0, .L295
	ld	[%o0+4], %g2
	st	%g2, [%g1+4]
.L295:
	ld	[%o0+4], %g3
	cwbe	%g3, 0, .L303
	st	%g1, [%g3]
.L303:
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
	mov	%i0, %l2
	cwbe	%l1, 0, .L305
	mov	%i1, %i5
	mov	0, %l0
	cwbe	%g0, %g0, .L307
.L319:
	add	%l0, 1, %l0
	add	%i5, %i3, %i5
	cwbe	%l1, %l0, .L305
.L307:
	mov	%i5, %o1
	mov	%l2, %o0
	call	%i4, 0
	 mov	%i5, %i0
	cwbne	%o0, 0, .L319
	nop
	return	%i7+8
	 nop
.L305:
	smul	%i3, %l1, %i0
	add	%l1, 1, %g1
	st	%g1, [%i2]
	add	%i1, %i0, %i0
	cwbe	%i3, 0, .L320
	mov	%i3, %o2
	mov	%l2, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L320:
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
	cwbe	%l0, 0, .L323
	mov	0, %i5
	cwbe	%g0, %g0, .L325
.L333:
	add	%i5, 1, %i5
	add	%i1, %i3, %i1
	cwbe	%l0, %i5, .L323
.L325:
	mov	%i1, %o1
	mov	%i0, %o0
	call	%i4, 0
	 mov	%i1, %i2
	cwbne	%o0, 0, .L333
	nop
	return	%i7+8
	 mov	%o2, %o0
.L323:
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
	mov	0, %g1
	cwbe	%g0, %g0, .L358
.L360:
	ldub	[%o0+1], %o5
	mov	0, %g1
	add	%o0, 1, %o0
.L358:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	or	%g1, %g4, %g1
	cwbne	%g1, 0, .L360
	sra	%g3, 24, %g3
	cmp	%g3, 43
	be,pn	%icc, .L338
	 cmp	%g3, 45
	bne,pt	%icc, .L361
	 add	%g2, -48, %g4
	ldub	[%o0+1], %o5
	sll	%o5, 24, %o4
	sra	%o4, 24, %g3
	add	%g3, -48, %g2
	add	%o0, 1, %g1
	mov	0, %o0
	cwbgu	%g2, 9, .L362
	mov	1, %o4
.L341:
	mov	0, %o0
.L344:
	add	%g1, 1, %g1
	add	%o5, -48, %g2
	ldub	[%g1], %o5
	sll	%o0, 2, %g3
	sll	%o5, 24, %g4
	add	%g3, %o0, %o0
	sll	%g2, 24, %g2
	sra	%g4, 24, %g4
	sll	%o0, 1, %g3
	sra	%g2, 24, %g2
	add	%g4, -48, %g4
	sub	%g3, %g2, %o0
	cwbleu	%g4, 9, .L344
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L362:
	jmp	%o7+8
	 nop
.L361:
	mov	%o0, %g1
	mov	0, %o4
	cwbleu	%g4, 9, .L341
	nop
.L359:
	jmp	%o7+8
	 mov	0, %o0
.L338:
	ldub	[%o0+1], %o5
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g2
	add	%g2, -48, %g4
	mov	0, %o4
	cwbleu	%g4, 9, .L341
	nop
	cwbe	%g0, %g0, .L359
	nop
	.size	atoi, .-atoi
	.align 4
	.align 32
	.global atol
	.type	atol, #function
	.proc	04
atol:
	ldub	[%o0], %o5
	mov	0, %g1
	cwbe	%g0, %g0, .L383
.L385:
	ldub	[%o0+1], %o5
	mov	0, %g1
	add	%o0, 1, %o0
.L383:
	sll	%o5, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %o4
	movleu	%icc, 1, %g1
	cmp	%g0, %o4
	subx	%g0, -1, %g4
	or	%g1, %g4, %g1
	cwbne	%g1, 0, .L385
	sra	%g3, 24, %g3
	cmp	%g3, 43
	be,pn	%icc, .L366
	 cmp	%g3, 45
	be,a,pt	%icc, .L386
	 ldub	[%o0+1], %o5
	add	%g2, -48, %g4
	mov	%o0, %g1
	mov	0, %o4
	cwbgu	%g4, 9, .L384
.L368:
	mov	0, %o0
.L371:
	add	%g1, 1, %g1
	add	%o5, -48, %g2
	ldub	[%g1], %o5
	sll	%o0, 2, %g3
	sll	%o5, 24, %g4
	add	%g3, %o0, %o0
	sll	%g2, 24, %g2
	sra	%g4, 24, %g4
	sll	%o0, 1, %g3
	sra	%g2, 24, %g2
	add	%g4, -48, %g4
	sub	%g3, %g2, %o0
	cwbleu	%g4, 9, .L371
	sub	%g2, %g3, %o5
	cmp	%o4, 0
	move	%icc, %o5, %o0
.L387:
	jmp	%o7+8
	 nop
.L386:
	add	%o0, 1, %g1
	sll	%o5, 24, %o0
	sra	%o0, 24, %g3
	add	%g3, -48, %g2
	mov	1, %o4
	cwbleu	%g2, 9, .L368
	nop
.L384:
	jmp	%o7+8
	 mov	0, %o0
.L366:
	ldub	[%o0+1], %o5
	sll	%o5, 24, %g2
	sra	%g2, 24, %o4
	add	%o4, -48, %g4
	add	%o0, 1, %g1
	mov	0, %o0
	cwbgu	%g4, 9, .L387
	mov	0, %o4
	cwbe	%g0, %g0, .L368
	nop
	.size	atol, .-atol
	.align 4
	.align 32
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -96, %sp
	mov	0, %g1
	ldub	[%i0], %i3
	cwbe	%g0, %g0, .L411
.L413:
	ldub	[%i0+1], %i3
	mov	0, %g1
	add	%i0, 1, %i0
.L411:
	sll	%i3, 24, %g3
	sra	%g3, 24, %g2
	add	%g2, -9, %g4
	cmp	%g4, 4
	xor	%g2, 32, %i1
	movleu	%icc, 1, %g1
	cmp	%g0, %i1
	subx	%g0, -1, %i2
	or	%g1, %i2, %g1
	cwbne	%g1, 0, .L413
	sra	%g3, 24, %i4
	cmp	%i4, 43
	be,pn	%icc, .L391
	 cmp	%i4, 45
	bne,pt	%icc, .L414
	 add	%g2, -48, %i1
	ldub	[%i0+1], %i3
	sll	%i3, 24, %g2
	sra	%g2, 24, %g4
	add	%g4, -48, %i2
	add	%i0, 1, %g1
	mov	0, %i1
	mov	0, %i0
	cwbgu	%i2, 9, .L415
	mov	1, %o3
.L394:
	mov	0, %i0
	mov	0, %i1
.L397:
	add	%g1, 1, %g1
	add	%i3, -48, %g4
	ldub	[%g1], %i3
	srl	%i1, 30, %i4
	sll	%i0, 2, %i5
	sll	%i1, 2, %o5
	addcc	%o5, %i1, %g3
	or	%i4, %i5, %o4
	sll	%g4, 24, %i2
	sll	%i3, 24, %i4
	addx	%o4, %i0, %i0
	srl	%g3, 31, %o7
	sll	%i0, 1, %g2
	sra	%i2, 24, %i5
	sra	%i4, 24, %i1
	sll	%g3, 1, %g3
	or	%o7, %g2, %g2
	sra	%i2, 31, %i2
	add	%i1, -48, %g4
	subcc	%g3, %i5, %i1
	subx	%g2, %i2, %i0
	cwbleu	%g4, 9, .L397
	nop
	cwbne	%o3, 0, .L415
	subcc	%i5, %g3, %i1
	subx	%i2, %g2, %i0
.L415:
	return	%i7+8
	 nop
.L414:
	mov	%i0, %g1
	mov	0, %o3
	cwbleu	%i1, 9, .L394
.L412:
	mov	0, %i0
	return	%i7+8
	 mov	0, %o1
.L391:
	ldub	[%i0+1], %i3
	add	%i0, 1, %g1
	sll	%i3, 24, %i0
	sra	%i0, 24, %i5
	add	%i5, -48, %g3
	mov	0, %o3
	cwbleu	%g3, 9, .L394
	nop
	cwbe	%g0, %g0, .L412
	nop
	.size	atoll, .-atoll
	.align 4
	.align 32
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -96, %sp
	mov	%i0, %l0
.L429:
	cwbe	%i2, 0, .L417
.L430:
	srl	%i2, 1, %i5
	smul	%i5, %i3, %i0
	add	%i1, %i0, %i0
	mov	%l0, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	cwbl	%o0, 0, .L421
	nop
	cwbe	%o0, 0, .L431
	sub	%i2, %i5, %i2
	add	%i0, %i3, %i1
	cwbne	%i2, 0, .L430
.L417:
	mov	0, %i0
.L431:
	return	%i7+8
	 nop
.L421:
	mov	%i5, %i2
	cwbe	%g0, %g0, .L429
	nop
	.size	bsearch, .-bsearch
	.align 4
	.align 32
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -96, %sp
	mov	%i0, %l1
	cwbe	%i2, 0, .L437
.L445:
	sra	%i2, 1, %l0
	smul	%l0, %i3, %i0
	add	%i1, %i0, %i0
	mov	%i5, %o2
	mov	%l1, %o0
	call	%i4, 0
	 mov	%i0, %o1
	add	%i2, -1, %i2
	sra	%i2, 1, %i2
	cwbe	%o0, 0, .L447
	nop
	cwble	%o0, 0, .L435
	add	%i0, %i3, %i1
	cwbne	%i2, 0, .L445
	nop
.L437:
	return	%i7+8
	 mov	0, %o0
.L435:
	cwbe	%l0, 0, .L437
	mov	%l0, %i2
	cwbe	%g0, %g0, .L445
	nop
.L447:
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
	cwbe	%g1, 0, .L459
	nop
.L456:
	cwbe	%o1, %g1, .L464
	ld	[%o0+4], %g1
	add	%o0, 4, %o0
	cwbne	%g1, 0, .L456
	nop
.L459:
	jmp	%o7+8
	 mov	0, %o0
.L464:
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
	mov	4, %g1
	add	%o1, -4, %o1
	cwbne	%g2, %g3, .L467
	nop
.L466:
	cwbe	%g2, 0, .L467
	ld	[%o0+%g1], %g2
	add	%g1, 4, %g1
	ld	[%o1+%g1], %g3
	cwbe	%g2, %g3, .L466
.L467:
	mov	-1, %o0
	cwbl	%g2, %g3, .L474
	cmp	%g2, %g3
	mov	0, %o0
	movg	%icc, 1, %o0
.L474:
	jmp	%o7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.align 32
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	mov	0, %g1
.L476:
	ld	[%o1+%g1], %g2
	st	%g2, [%o0+%g1]
	add	%g1, 4, %g1
	cwbne	%g2, 0, .L476
	nop
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
	mov	0, %g1
	cwbe	%g2, 0, .L478
	mov	%o0, %g1
.L480:
	ld	[%g1+4], %g3
	add	%g1, 4, %g1
	cwbne	%g3, 0, .L480
	sub	%g1, %o0, %g1
	sra	%g1, 2, %g1
.L478:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	wcslen, .-wcslen
	.align 4
	.align 32
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	cwbe	%o2, 0, .L490
.L499:
	ld	[%o0], %g2
	ld	[%o1], %g3
	xor	%g3, %g2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	cmp	%g0, %g2
	addx	%g0, 0, %g4
	and	%g1, %g4, %g1
	add	%o2, -1, %o2
	add	%o0, 4, %o0
	cwbe	%g1, 0, .L498
	add	%o1, 4, %o1
	cwbne	%o2, 0, .L499
	nop
.L490:
	jmp	%o7+8
	 mov	0, %o0
.L498:
	cmp	%g2, %g3
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
	.size	wcsncmp, .-wcsncmp
	.align 4
	.align 32
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	cwbe	%o2, 0, .L504
.L511:
	ld	[%o0], %g1
	add	%o2, -1, %o2
	cwbe	%g1, %o1, .L512
	add	%o0, 4, %o0
	cwbne	%o2, 0, .L511
	nop
.L504:
	jmp	%o7+8
	 mov	0, %o0
.L512:
	jmp	%o7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.align 32
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	cwbe	%o2, 0, .L519
.L528:
	ld	[%o0], %g2
	ld	[%o1], %g1
	add	%o2, -1, %o2
	add	%o0, 4, %o0
	cwbne	%g2, %g1, .L527
	add	%o1, 4, %o1
	cwbne	%o2, 0, .L528
	nop
.L519:
	jmp	%o7+8
	 mov	0, %o0
.L527:
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	mov	-1, %o0
	jmp	%o7+8
	 movge	%icc, %g1, %o0
	.size	wmemcmp, .-wmemcmp
	.align 4
	.align 32
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -96, %sp
	cwbe	%i2, 0, .L534
	sll	%i2, 2, %o2
	mov	%i1, %o1
	call	memcpy, 0
	 mov	%i0, %o0
.L534:
	return	%i7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.align 32
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	cwbe	%o0, %o1, .L561
	sub	%o0, %o1, %g3
	sll	%o2, 2, %g2
	add	%o2, -1, %g1
	cwbcs	%g3, %g2, .L537
	nop
	cwbe	%o2, 0, .L561
	nop
	cwbleu	%g1, 8, .L548
	or	%o1, %o0, %g4
	and	%g4, 7, %g3
	add	%o1, 4, %g2
	xor	%o0, %g2, %g4
	cmp	%g0, %g3
	subx	%g0, -1, %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g2
	and	%g3, %g2, %g4
	cwbe	%g4, 0, .L548
	srl	%o2, 1, %g3
	mov	0, %g1
	mov	0, %g2
.L542:
	ldd	[%o1+%g1], %f8
	add	%g2, 1, %g2
	std	%f8, [%o0+%g1]
	add	%g1, 8, %g1
	cwbne	%g3, %g2, .L542
	and	%o2, 1, %g1
	cwbe	%g1, 0, .L561
	and	%o2, -2, %o2
	sll	%o2, 2, %g4
	ld	[%o1+%g4], %g1
	jmp	%o7+8
	 st	%g1, [%o0+%g4]
.L548:
	mov	0, %g2
.L559:
	ld	[%o1+%g2], %g3
	add	%g1, -1, %g1
	st	%g3, [%o0+%g2]
	add	%g2, 4, %g2
	cwbne	%g1, -1, .L559
	nop
	jmp	%o7+8
	 nop
.L537:
	cwbe	%o2, 0, .L561
	sll	%g1, 2, %g1
.L540:
	ld	[%o1+%g1], %o2
	st	%o2, [%o0+%g1]
	add	%g1, -4, %g1
	cwbne	%g1, -4, .L540
	nop
	jmp	%o7+8
	 nop
.L561:
	jmp	%o7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.align 32
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	add	%o2, -1, %o5
	cwbe	%o2, 0, .L594
	srl	%o0, 2, %g2
	and	%g2, 1, %g1
	cwbleu	%o5, 5, .L569
	mov	%o0, %o4
	cwbe	%g1, 0, .L566
	add	%o0, 4, %o4
	st	%o1, [%o0]
	add	%o2, -2, %o5
.L566:
	movwtos	%o1, %f8
	movwtos	%o1, %f9
	sub	%o2, %g1, %o2
	sll	%g1, 2, %g3
	srl	%o2, 1, %g4
	add	%o0, %g3, %g2
	mov	0, %g1
.L567:
	sll	%g1, 3, %g3
	std	%f8, [%g2+%g3]
	add	%g1, 1, %g1
	cwbne	%g4, %g1, .L567
	and	%o2, 1, %g1
	cwbe	%g1, 0, .L594
	and	%o2, -2, %o2
	sll	%o2, 2, %g1
	sub	%o5, %o2, %o5
	add	%o4, %g1, %g1
.L565:
	st	%o1, [%g1]
	cwbe	%o5, 0, .L594
	st	%o1, [%g1+4]
	cwbe	%o5, 1, .L594
	st	%o1, [%g1+8]
	cwbe	%o5, 2, .L594
	st	%o1, [%g1+12]
	cwbe	%o5, 3, .L594
	st	%o1, [%g1+16]
	cwbe	%o5, 4, .L594
	st	%o1, [%g1+20]
.L594:
	jmp	%o7+8
	 nop
.L569:
	mov	%o0, %g1
	cwbe	%g0, %g0, .L565
	nop
	.size	wmemset, .-wmemset
	.align 4
	.align 32
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	cwbcc	%o0, %o1, .L596
	nop
	cwbe	%o2, 0, .L666
	add	%o2, -1, %g1
	cwbleu	%g1, 8, .L598
	add	%o2, -2, %g4
	add	%o0, %g4, %o5
	add	%o2, -8, %g2
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
	and	%g3, %o5, %g3
	cwbe	%g3, 0, .L598
	and	%o2, -8, %g1
	sub	%g0, %g1, %o5
	mov	0, %g1
.L599:
	ldd	[%g4+%g1], %f0
	std	%f0, [%g2+%g1]
	add	%g1, -8, %g1
	cwbne	%g1, %o5, .L599
	add	%o2, %g1, %g1
	and	%o2, 7, %g4
	add	%o1, %g1, %o1
	add	%o0, %g1, %o0
	cwbe	%g4, 0, .L666
	ldub	[%o0-1], %g1
	stb	%g1, [%o1-1]
	cwbe	%g4, 1, .L666
	ldub	[%o0-2], %g1
	stb	%g1, [%o1-2]
	cwbe	%g4, 2, .L666
	ldub	[%o0-3], %g1
	stb	%g1, [%o1-3]
	cwbe	%g4, 3, .L666
	ldub	[%o0-4], %g1
	stb	%g1, [%o1-4]
	cwbe	%g4, 4, .L666
	ldub	[%o0-5], %g1
	stb	%g1, [%o1-5]
	cwbe	%g4, 5, .L666
	ldub	[%o0-6], %g1
	stb	%g1, [%o1-6]
	cwbe	%g4, 6, .L666
	ldub	[%o0-7], %g1
	jmp	%o7+8
	 stb	%g1, [%o1-7]
.L596:
	cwbne	%o0, %o1, .L664
	nop
	jmp	%o7+8
	 nop
.L664:
	cwbe	%o2, 0, .L666
	add	%o2, -1, %g1
	cwbleu	%g1, 7, .L610
	or	%o0, %o1, %g2
	and	%g2, 7, %g3
	add	%o0, 1, %g1
	cmp	%g0, %g3
	sub	%o1, %g1, %g1
	subx	%g0, -1, %g4
	mov	0, %o5
	cmp	%g1, 6
	movgu	%icc, 1, %o5
	and	%g4, %o5, %g1
	cwbe	%g1, 0, .L610
	and	%o2, -8, %g2
	mov	0, %g1
.L604:
	ldd	[%o0+%g1], %f8
	std	%f8, [%o1+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %g2, .L604
	add	%o1, %g1, %g3
	add	%o0, %g1, %g4
	sub	%o2, %g1, %g2
	cwbe	%o2, %g1, .L666
	ldub	[%o0+%g1], %o0
	stb	%o0, [%o1+%g1]
	cwbe	%g2, 1, .L666
	ldub	[%g4+1], %g1
	stb	%g1, [%g3+1]
	cwbe	%g2, 2, .L666
	ldub	[%g4+2], %g1
	stb	%g1, [%g3+2]
	cwbe	%g2, 3, .L666
	ldub	[%g4+3], %g1
	stb	%g1, [%g3+3]
	cwbe	%g2, 4, .L666
	ldub	[%g4+4], %g1
	stb	%g1, [%g3+4]
	cwbe	%g2, 5, .L666
	ldub	[%g4+5], %g1
	stb	%g1, [%g3+5]
	cwbe	%g2, 6, .L666
	ldub	[%g4+6], %g1
	jmp	%o7+8
	 stb	%g1, [%g3+6]
.L598:
	add	%o0, -1, %g3
	add	%o1, -1, %o5
	cwbe	%g0, %g0, .L601
.L665:
	add	%g1, -1, %g1
.L601:
	ldub	[%g3+%o2], %g2
	stb	%g2, [%o5+%o2]
	mov	%g1, %o2
	cwbne	%g1, 0, .L665
	nop
	jmp	%o7+8
	 nop
.L610:
	mov	0, %g1
.L663:
	ldub	[%o0+%g1], %o5
	stb	%o5, [%o1+%g1]
	add	%g1, 1, %g1
	cwbne	%o2, %g1, .L663
	nop
.L666:
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
	mov	0, %g1
	cwbe	%g0, %g0, .L684
	nop
.L682:
	be,pn	%icc, .L686
	 nop
.L684:
	srl	%o0, %g1, %g2
	and	%g2, 1, %g3
	add	%g1, 1, %g1
	cmp	%g1, 32
	cwbe	%g3, 0, .L682
	nop
	jmp	%o7+8
	 mov	%g1, %o0
.L686:
	jmp	%o7+8
	 mov	0, %o0
	.size	ffs, .-ffs
	.align 4
	.align 32
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	mov	%o0, %g1
	mov	0, %o0
	cwbe	%g1, 0, .L694
	and	%g1, 1, %o0
	cwbne	%o0, 0, .L694
	mov	1, %o0
.L689:
	sra	%g1, 1, %g1
	and	%g1, 1, %g2
	add	%o0, 1, %o0
	cwbe	%g2, 0, .L689
	nop
.L694:
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
	fbl,pt	%fcc0, .L698
	 mov	1, %o0
	sethi	%hi(2139095039), %g1
	or	%g1, %lo(2139095039), %g1
	movwtos	%g1, %f0
	fcmpes	%fcc1, %f8, %f0
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L698:
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
	fbl,pt	%fcc2, .L702
	 mov	1, %o0
	sethi	%hi(2146434048), %g4
	or	%g4, 1023, %o0
	mov	-1, %o1
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	fcmped	%fcc3, %f8, %f10
	mov	0, %o0
	movg	%fcc3, 1, %o0
.L702:
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
	fbl,pt	%fcc0, .L706
	 mov	1, %o0
	sethi	%hi(2146434048), %g4
	or	%g4, 1023, %o0
	mov	-1, %o1
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	fcmped	%fcc1, %f8, %f10
	mov	0, %o0
	movg	%fcc1, 1, %o0
.L706:
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
	fbu,pn	%fcc2, .L722
	 nop
	fadds	%f0, %f0, %f8
	fcmps	%fcc3, %f8, %f0
	fbe,pt	%fcc3, .L722
	 nop
	sethi	%hi(1056964608), %g1
	movwtos	%g1, %f1
	sethi	%hi(1073741824), %g1
	movwtos	%g1, %f9
	cmp	%o1, 0
	and	%o1, 1, %g1
	fmovsge	%icc, %f9, %f1
	cwbe	%g1, 0, .L711
.L712:
	fmuls	%f0, %f1, %f0
.L711:
	srl	%o1, 31, %g1
	add	%g1, %o1, %o1
	sra	%o1, 1, %o1
	cwbe	%o1, 0, .L722
	srl	%o1, 31, %g1
	and	%o1, 1, %g2
	fmuls	%f1, %f1, %f1
	add	%g1, %o1, %g1
	cwbne	%g2, 0, .L712
.L721:
	sra	%g1, 1, %o1
	srl	%o1, 31, %g1
	and	%o1, 1, %g2
	fmuls	%f1, %f1, %f1
	add	%g1, %o1, %g1
	cwbne	%g2, 0, .L712
	nop
	cwbe	%g0, %g0, .L721
	nop
.L722:
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
	fbu,pn	%fcc0, .L737
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc1, %f8, %f0
	fbe,pt	%fcc1, .L737
	 nop
	sethi	%hi(1073741824), %g2
	mov	0, %g3
	movwtos	%g2, %f8
	movwtos	%g3, %f9
	cwbge	%o2, 0, .L725
	sethi	%hi(1071644672), %g1
	mov	0, %g4
	movwtos	%g1, %f8
	movwtos	%g4, %f9
.L725:
	and	%o2, 1, %g1
	cwbe	%g1, 0, .L726
.L727:
	fmuld	%f0, %f8, %f0
.L726:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cwbe	%o2, 0, .L737
	srl	%o2, 31, %g1
	and	%o2, 1, %o0
	fmuld	%f8, %f8, %f8
	add	%g1, %o2, %g1
	cwbne	%o0, 0, .L727
.L736:
	sra	%g1, 1, %o2
	srl	%o2, 31, %g1
	and	%o2, 1, %o0
	fmuld	%f8, %f8, %f8
	add	%g1, %o2, %g1
	cwbne	%o0, 0, .L727
	nop
	cwbe	%g0, %g0, .L736
	nop
.L737:
	jmp	%o7+8
	 nop
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
	fbu,pn	%fcc2, .L752
	 nop
	faddd	%f0, %f0, %f8
	fcmpd	%fcc3, %f0, %f8
	fbe,pt	%fcc3, .L752
	 nop
	sethi	%hi(1073741824), %g2
	mov	0, %g3
	movwtos	%g2, %f8
	movwtos	%g3, %f9
	cwbge	%o2, 0, .L740
	sethi	%hi(1071644672), %g1
	mov	0, %g4
	movwtos	%g1, %f8
	movwtos	%g4, %f9
.L740:
	and	%o2, 1, %g1
	cwbe	%g1, 0, .L741
.L742:
	fmuld	%f0, %f8, %f0
.L741:
	srl	%o2, 31, %g1
	add	%g1, %o2, %o2
	sra	%o2, 1, %o2
	cwbe	%o2, 0, .L752
	srl	%o2, 31, %g1
	and	%o2, 1, %o0
	fmuld	%f8, %f8, %f8
	add	%g1, %o2, %g1
	cwbne	%o0, 0, .L742
.L751:
	sra	%g1, 1, %o2
	srl	%o2, 31, %g1
	and	%o2, 1, %o0
	fmuld	%f8, %f8, %f8
	add	%g1, %o2, %g1
	cwbne	%o0, 0, .L742
	nop
	cwbe	%g0, %g0, .L751
	nop
.L752:
	jmp	%o7+8
	 nop
	.size	ldexpl, .-ldexpl
	.align 4
	.align 32
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	cwbe	%o2, 0, .L786
	add	%o2, -1, %g1
	cwbleu	%g1, 6, .L761
	or	%o0, %o1, %g1
	and	%g1, 7, %g1
	cwbne	%g1, 0, .L761
	and	%o2, -8, %g2
.L756:
	ldd	[%o0+%g1], %f8
	ldd	[%o1+%g1], %f10
	fxor	%f8, %f10, %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %g2, .L756
	add	%o0, %g1, %g2
	add	%o1, %g1, %g4
	sub	%o2, %g1, %g3
	cwbe	%o2, %g1, .L786
	ldub	[%o0+%g1], %o5
	ldub	[%o1+%g1], %o4
	xor	%o5, %o4, %o1
	stb	%o1, [%o0+%g1]
	cwbe	%g3, 1, .L786
	ldub	[%g2+1], %o2
	ldub	[%g4+1], %g1
	xor	%g1, %o2, %g1
	stb	%g1, [%g2+1]
	cwbe	%g3, 2, .L786
	ldub	[%g2+2], %o5
	ldub	[%g4+2], %g1
	xor	%g1, %o5, %g1
	stb	%g1, [%g2+2]
	cwbe	%g3, 3, .L786
	ldub	[%g2+3], %o4
	ldub	[%g4+3], %g1
	xor	%g1, %o4, %g1
	stb	%g1, [%g2+3]
	cwbe	%g3, 4, .L786
	ldub	[%g2+4], %o1
	ldub	[%g4+4], %g1
	xor	%g1, %o1, %g1
	stb	%g1, [%g2+4]
	cwbe	%g3, 5, .L786
	ldub	[%g2+5], %o2
	ldub	[%g4+5], %g1
	xor	%g1, %o2, %g1
	stb	%g1, [%g2+5]
	cwbe	%g3, 6, .L786
	ldub	[%g2+6], %g3
	ldub	[%g4+6], %g1
	xor	%g1, %g3, %g1
	jmp	%o7+8
	 stb	%g1, [%g2+6]
.L761:
	mov	0, %g1
.L785:
	ldub	[%o0+%g1], %g4
	ldub	[%o1+%g1], %g2
	xor	%g2, %g4, %o5
	stb	%o5, [%o0+%g1]
	add	%g1, 1, %g1
	cwbne	%o2, %g1, .L785
	nop
.L786:
	jmp	%o7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.align 32
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	mov	%o0, %g1
	ldsb	[%o0], %g2
	cwbe	%g2, 0, .L803
.L789:
	add	%g1, 1, %g1
	ldsb	[%g1], %g3
	cwbne	%g3, 0, .L789
	nop
.L803:
	cwbe	%o2, 0, .L791
.L805:
	ldub	[%o1], %g4
	stb	%g4, [%g1]
	sll	%g4, 24, %g2
	add	%o2, -1, %o2
	add	%o1, 1, %o1
	cwbe	%g2, 0, .L806
	add	%g1, 1, %g1
	cwbne	%o2, 0, .L805
	nop
.L791:
	jmp	%o7+8
	 stb	%g0, [%g1]
.L806:
	jmp	%o7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.align 32
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	mov	0, %g1
	cwbe	%o1, 0, .L807
.L808:
	ldsb	[%o0+%g1], %g2
	cwbne	%g2, 0, .L810
	nop
.L807:
	jmp	%o7+8
	 mov	%g1, %o0
.L810:
	add	%g1, 1, %g1
	cwbne	%o1, %g1, .L808
	nop
	cwbe	%g0, %g0, .L807
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
	cwbe	%g4, 0, .L820
.L816:
	mov	%o1, %g1
	sra	%g4, 24, %g4
	cwbe	%g0, %g0, .L819
.L818:
	add	%g1, 1, %g1
	cwbe	%g2, %g4, .L824
.L819:
	ldsb	[%g1], %g2
	cwbne	%g2, 0, .L818
	ldub	[%o0+1], %g3
	sll	%g3, 24, %g4
	add	%o0, 1, %o0
	cwbne	%g4, 0, .L816
.L820:
	mov	0, %o0
.L824:
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
.L826:
	ldsb	[%g1], %g2
	cmp	%g2, %o1
	move	%icc, %g1, %o0
	add	%g1, 1, %g1
	cwbne	%g2, 0, .L826
	nop
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
	mov	%o0, %o5
	cwbe	%g3, 0, .L850
	mov	%o1, %g1
.L830:
	add	%g1, 1, %g1
	ldsb	[%g1], %g2
	cwbne	%g2, 0, .L830
	sub	%g1, %o1, %g4
	mov	%o5, %o0
	cwbe	%g1, %o1, .L850
	add	%o1, -1, %o0
	sra	%g3, 24, %o2
	add	%o0, %g4, %o0
	cwbe	%g0, %g0, .L847
.L849:
	add	%o5, 1, %o5
	cwbe	%o4, 0, .L848
.L847:
	ldub	[%o5], %g1
	sll	%g1, 24, %o3
	sra	%o3, 24, %o4
	cwbne	%o4, %o2, .L849
	mov	%o1, %g2
	mov	%o5, %o4
	and	%g1, 0xff, %g1
	cwbe	%g0, %g0, .L832
.L834:
	ldub	[%o4], %g1
	add	%g2, 1, %g2
	cwbe	%g1, 0, .L833
.L832:
	ldub	[%g2], %g4
	xor	%g2, %o0, %g3
	cmp	%g0, %g3
	xor	%g4, %g1, %o3
	addx	%g0, 0, %g3
	cmp	%g0, %g4
	addx	%g0, 0, %g4
	cmp	%g0, %o3
	subx	%g0, -1, %o3
	and	%g4, %o3, %g4
	and	%g3, %g4, %g3
	add	%o4, 1, %o4
	cwbne	%g3, 0, .L834
.L833:
	ldub	[%g2], %o4
	cwbe	%g1, %o4, .L839
	add	%o5, 1, %o5
	cwbe	%g0, %g0, .L847
	nop
.L848:
	jmp	%o7+8
	 mov	0, %o0
.L839:
	mov	%o5, %o0
.L850:
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
	fbl,pn	%fcc0, .L861
	 movwtos	%o2, %f10
	fcmped	%fcc2, %f0, %f8
	fbule,pn %fcc2, .L862
	 nop
	movwtos	%o2, %f10
	movwtos	%o3, %f11
	fcmped	%fcc3, %f10, %f8
	fbl,pn	%fcc3, .L854
	 nop
.L862:
	jmp	%o7+8
	 nop
.L861:
	movwtos	%o3, %f11
	fcmped	%fcc1, %f10, %f8
	fbule,pt %fcc1, .L862
	 nop
.L854:
	jmp	%o7+8
	 fnegd	%f0, %f0
	.size	copysign, .-copysign
	.align 4
	.align 32
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	mov	%o0, %g2
	cwbe	%o3, 0, .L863
	mov	0, %g2
	cwbcs	%o1, %o3, .L863
	sub	%o1, %o3, %o1
	add	%o0, %o1, %o1
	cwbgu	%o0, %o1, .L863
	ldub	[%o2], %g1
	mov	%o0, %g2
	sll	%g1, 24, %o0
	sra	%o0, 24, %o4
.L869:
	add	%g2, 1, %o5
	ldsb	[%g2], %g1
	cwbe	%g1, %o4, .L883
	mov	%o5, %g2
.L865:
	cwbcc	%o1, %g2, .L869
.L874:
	mov	0, %g2
.L863:
	jmp	%o7+8
	 mov	%g2, %o0
.L883:
	cwbe	%o3, 1, .L863
.L868:
	mov	1, %g1
	cwbe	%g0, %g0, .L866
	nop
.L867:
	cwbe	%g1, %o3, .L863
.L866:
	ldub	[%g2+%g1], %g4
	ldub	[%o2+%g1], %g3
	add	%g1, 1, %g1
	cwbe	%g4, %g3, .L867
	nop
	cwbcs	%o1, %o5, .L874
	sra	%o0, 24, %g1
	add	%o5, 1, %g2
	ldsb	[%o5], %g4
	cwbne	%g1, %g4, .L865
	mov	%o5, %g1
	mov	%g2, %o5
	mov	%g1, %g2
	cwbe	%g0, %g0, .L868
	nop
	.size	memmem, .-memmem
	.align 4
	.align 32
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	cwbe	%i2, 0, .L885
	mov	%i2, %o2
	mov	%i1, %o1
	call	memmove, 0
	 mov	%i0, %o0
.L885:
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
	fbl,pn	%fcc0, .L912
	 sethi	%hi(1072693248), %g2
	mov	0, %g3
	movwtos	%g2, %f10
	movwtos	%g3, %f11
	fcmped	%fcc3, %f0, %f10
	fbul,pn	%fcc3, .L913
	 mov	0, %g4
.L892:
	sethi	%hi(1071644672), %g2
	mov	0, %g3
	sethi	%hi(1072693248), %o0
	mov	0, %o1
	movwtos	%g2, %f10
	movwtos	%g3, %f11
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	mov	0, %g1
.L898:
	fmuld	%f0, %f10, %f0
	fcmped	%fcc2, %f0, %f8
	fbge,pt	%fcc2, .L898
	 add	%g1, 1, %g1
	st	%g1, [%o2]
	cwbe	%g4, 0, .L916
	nop
.L915:
	jmp	%o7+8
	 fnegd	%f0, %f0
.L913:
	sethi	%hi(1071644672), %o0
	mov	0, %o1
	movwtos	%o0, %f10
	movwtos	%o1, %f11
	fcmped	%fcc1, %f0, %f10
	fbuge,pt %fcc1, .L895
	 nop
	fcmpd	%fcc2, %f0, %f8
	fbne,a,pn %fcc2, .L917
	 fmovd	%f0, %f2
.L895:
	jmp	%o7+8
	 st	%g0, [%o2]
.L912:
	sethi	%hi(-1074790400), %g1
	mov	0, %g4
	movwtos	%g1, %f8
	movwtos	%g4, %f9
	fcmped	%fcc0, %f0, %f8
	fbug,pn	%fcc0, .L914
	 fnegd	%f0, %f2
	fmovd	%f2, %f0
	mov	1, %g4
	cwbe	%g0, %g0, .L892
.L914:
	sethi	%hi(-1075838976), %g2
	mov	0, %g3
	movwtos	%g2, %f10
	movwtos	%g3, %f11
	fcmped	%fcc3, %f0, %f10
	fbule,pt %fcc3, .L895
	 nop
	mov	1, %g4
	sethi	%hi(1071644672), %o0
.L917:
	mov	0, %o1
	fmovd	%f2, %f0
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	mov	0, %g1
.L900:
	faddd	%f0, %f0, %f0
	fcmped	%fcc1, %f0, %f8
	fbl,pt	%fcc1, .L900
	 add	%g1, -1, %g1
	st	%g1, [%o2]
	cwbne	%g4, 0, .L915
	nop
.L916:
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
	or	%i1, %i0, %g4
	mov	%i0, %g1
	mov	0, %o2
	mov	0, %o3
	cwbe	%g4, 0, .L918
.L921:
	and	%i1, 1, %g3
	subcc	%g0, %g3, %o5
	sll	%g1, 31, %i0
	srl	%i1, 1, %i1
	mov	0, %g2
	and	%o5, %i3, %i5
	srl	%g1, 1, %g1
	or	%i0, %i1, %i1
	subx	%g0, %g2, %o4
	or	%g1, %i1, %g4
	and	%o4, %i2, %i4
	srl	%i3, 31, %g2
	sll	%i2, 1, %i2
	addcc	%o3, %i5, %o3
	or	%g2, %i2, %i2
	sll	%i3, 1, %i3
	addx	%o2, %i4, %o2
	cwbne	%g4, 0, .L921
.L918:
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
	mov	%o0, %g2
	mov	1, %g1
	cwbcc	%o1, %o0, .L943
	nop
.L926:
	cwbl	%o1, 0, .L930
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g3, %g4, %o0
	cwbne	%o0, 0, .L926
	mov	0, %o0
	cwbe	%g1, 0, .L931
.L930:
	mov	0, %o0
.L932:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	or	%o0, %g3, %o0
	srl	%o1, 1, %o1
	cwbne	%g1, 0, .L932
.L931:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L943:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	subx	%g0, -1, %o0
	cwbe	%g0, %g0, .L931
	nop
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
	xor	%o0, %g1, %g2
	xor	%o1, %g1, %g3
	cwbe	%o0, %g1, .L954
.L952:
	srl	%g3, 0, %g3
	sllx	%g2, 32, %g1
	or	%g3, %g1, %g1
	lzd	%g1, %g3
	clr	%g2
	jmp	%o7+8
	 add	%g3, -1, %o0
.L954:
	cwbne	%o1, %o0, .L952
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
	mov	%o0, %g2
	mov	0, %o0
	cwbe	%g2, 0, .L961
.L957:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g2, 1, %g2
	add	%o0, %g1, %o0
	sll	%o1, 1, %o1
	cwbne	%g2, 0, .L957
	nop
.L961:
	jmp	%o7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.align 32
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	srl	%o2, 3, %g4
	and	%o2, -8, %g2
	cwbcs	%o0, %o1, .L966
	add	%o1, %o2, %g1
	cwbleu	%o0, %g1, .L1023
.L966:
	sll	%g4, 3, %o3
	mov	0, %g1
	cwbe	%g4, 0, .L1019
.L969:
	add	%o1, %g1, %o5
	ldd	[%o5], %o4
	add	%o0, %g1, %g4
	std	%o4, [%g4]
	add	%g1, 8, %g1
	cwbne	%g1, %o3, .L969
	nop
	cwbleu	%o2, %g2, .L1027
	sub	%o2, %g2, %o3
	add	%o3, -1, %g1
	cwbleu	%g1, 7, .L1024
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
	and	%o5, %o4, %o5
	cwbe	%o5, 0, .L1021
	and	%o3, -8, %o4
	mov	0, %g1
.L972:
	ldd	[%g4+%g1], %f0
	std	%f0, [%g3+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %o4, .L972
	add	%g2, %g1, %g2
	cwbe	%o3, %g1, .L1027
	ldub	[%o1+%g2], %o3
	add	%g2, 1, %g1
	stb	%o3, [%o0+%g2]
	cwbcc	%g1, %o2, .L1027
	ldub	[%o1+%g1], %g4
	add	%g2, 2, %g3
	stb	%g4, [%o0+%g1]
	cwbleu	%o2, %g3, .L1027
	ldub	[%o1+%g3], %o5
	add	%g2, 3, %g1
	stb	%o5, [%o0+%g3]
	cwbleu	%o2, %g1, .L1027
	ldub	[%o1+%g1], %o4
	add	%g2, 4, %o3
	stb	%o4, [%o0+%g1]
	cwbleu	%o2, %o3, .L1027
	ldub	[%o1+%o3], %g4
	add	%g2, 5, %g1
	stb	%g4, [%o0+%o3]
	cwbleu	%o2, %g1, .L1027
	ldub	[%o1+%g1], %g3
	add	%g2, 6, %g2
	stb	%g3, [%o0+%g1]
	cwbleu	%o2, %g2, .L1027
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1025:
	add	%g1, 1, %g1
.L1021:
	ldub	[%o1+%g2], %o5
	stb	%o5, [%o0+%g2]
	mov	%g1, %g2
	cwbne	%o2, %g1, .L1025
	nop
	jmp	%o7+8
	 nop
.L1023:
	add	%o2, -1, %g3
	cwbe	%o2, 0, .L1027
	nop
	cwbleu	%g3, 8, .L1018
	add	%o2, -2, %g2
	add	%o1, %g2, %o3
	add	%o2, -8, %o5
	add	%o0, %g3, %g1
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
	and	%g1, %g2, %g1
	cwbe	%g1, 0, .L1018
	mov	0, %g1
	mov	0, %o3
.L977:
	ldd	[%o5+%g1], %f8
	add	%o3, 1, %o3
	std	%f8, [%o4+%g1]
	add	%g1, -8, %g1
	cwbgu	%g4, %o3, .L977
	sll	%g4, 3, %g4
	sub	%g3, %g4, %g3
	cwbe	%o2, %g4, .L1027
	ldub	[%o1+%g3], %o2
	stb	%o2, [%o0+%g3]
	add	%g3, -1, %g1
	cwbe	%g3, 0, .L1027
	ldub	[%o1+%g1], %o4
	stb	%o4, [%o0+%g1]
	add	%g3, -2, %o5
	cwbe	%g1, 0, .L1027
	ldub	[%o1+%o5], %g2
	stb	%g2, [%o0+%o5]
	add	%g3, -3, %g1
	cwbe	%o5, 0, .L1027
	ldub	[%o1+%g1], %o3
	stb	%o3, [%o0+%g1]
	add	%g3, -4, %o2
	cwbe	%g1, 0, .L1027
	ldub	[%o1+%o2], %g4
	stb	%g4, [%o0+%o2]
	add	%g3, -5, %g1
	cwbe	%o2, 0, .L1027
	ldub	[%o1+%g1], %o4
	stb	%o4, [%o0+%g1]
	add	%g3, -6, %g3
	cwbe	%g1, 0, .L1027
	ldub	[%o1+%g3], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g3]
.L1018:
	ldub	[%o1+%g3], %g1
	stb	%g1, [%o0+%g3]
	add	%g3, -1, %g3
	cwbe	%g3, -1, .L1027
	ldub	[%o1+%g3], %g1
	stb	%g1, [%o0+%g3]
	add	%g3, -1, %g3
	cwbne	%g3, -1, .L1018
	nop
	jmp	%o7+8
	 nop
.L1019:
	add	%g2, 1, %g1
	cwbne	%o2, 0, .L1021
	nop
	jmp	%o7+8
	 nop
.L1027:
	jmp	%o7+8
	 nop
.L1024:
	add	%g2, 1, %g1
	cwbe	%g0, %g0, .L1021
	nop
	.size	__cmovd, .-__cmovd
	.align 4
	.align 32
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	srl	%o2, 1, %g3
	cwbcs	%o0, %o1, .L1033
	add	%o1, %o2, %g1
	cwbleu	%o0, %g1, .L1082
	nop
.L1033:
	cwbe	%g3, 0, .L1032
	add	%g3, -1, %g1
	cwbleu	%g1, 6, .L1036
	or	%o1, %o0, %o5
	and	%o5, 7, %g4
	add	%o1, 2, %g1
	cmp	%g0, %g4
	sub	%o0, %g1, %g1
	subx	%g0, -1, %g2
	mov	0, %o5
	cmp	%g1, 4
	movgu	%icc, 1, %o5
	and	%g2, %o5, %g1
	cwbe	%g1, 0, .L1036
	srl	%o2, 3, %g4
	and	%o2, -8, %g2
	mov	0, %g1
.L1037:
	ldd	[%o1+%g1], %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %g2, .L1037
	sll	%g4, 2, %g2
	cwbe	%g3, %g2, .L1032
	lduh	[%o1+%g1], %o5
	add	%g2, 1, %g4
	sth	%o5, [%o0+%g1]
	cwbleu	%g3, %g4, .L1032
	add	%g1, 2, %g4
	lduh	[%o1+%g4], %o5
	add	%g2, 2, %g2
	sth	%o5, [%o0+%g4]
	cwbleu	%g3, %g2, .L1032
	add	%g1, 4, %g1
	lduh	[%o1+%g1], %g3
	sth	%g3, [%o0+%g1]
.L1032:
	and	%o2, 1, %g1
	cwbe	%g1, 0, .L1086
.L1085:
	add	%o2, -1, %o2
	ldub	[%o1+%o2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%o2]
.L1082:
	add	%o2, -1, %g2
	cwbe	%o2, 0, .L1086
	nop
	cwbgu	%g2, 8, .L1084
.L1081:
	ldub	[%o1+%g2], %g1
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cwbne	%g2, -1, .L1081
	nop
	jmp	%o7+8
	 nop
.L1084:
	add	%o2, -2, %g4
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
	and	%g1, %g4, %g1
	cwbe	%g1, 0, .L1081
	and	%o2, -8, %g4
	sub	%g0, %g4, %g4
	mov	0, %g1
.L1043:
	ldd	[%g3+%g1], %f8
	std	%f8, [%o5+%g1]
	add	%g1, -8, %g1
	cwbne	%g1, %g4, .L1043
	and	%o2, -8, %g1
	and	%o2, 7, %o2
	sub	%g2, %g1, %g2
	cwbe	%o2, 0, .L1086
	ldub	[%o1+%g2], %o5
	stb	%o5, [%o0+%g2]
	add	%g2, -1, %g1
	cwbe	%g2, 0, .L1086
	ldub	[%o1+%g1], %g4
	stb	%g4, [%o0+%g1]
	add	%g2, -2, %g3
	cwbe	%g1, 0, .L1086
	ldub	[%o1+%g3], %o2
	stb	%o2, [%o0+%g3]
	add	%g2, -3, %g1
	cwbe	%g3, 0, .L1086
	ldub	[%o1+%g1], %o5
	stb	%o5, [%o0+%g1]
	add	%g2, -4, %g3
	cwbe	%g1, 0, .L1086
	ldub	[%o1+%g3], %g4
	stb	%g4, [%o0+%g3]
	add	%g2, -5, %g1
	cwbe	%g3, 0, .L1086
	ldub	[%o1+%g1], %o2
	stb	%o2, [%o0+%g1]
	add	%g2, -6, %g2
	cwbe	%g1, 0, .L1086
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1036:
	sll	%g3, 1, %g4
	mov	0, %g1
.L1039:
	lduh	[%o1+%g1], %o5
	sth	%o5, [%o0+%g1]
	add	%g1, 2, %g1
	cwbne	%g4, %g1, .L1039
	and	%o2, 1, %g1
	cwbne	%g1, 0, .L1085
	nop
.L1086:
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
	and	%o2, -4, %g2
	cwbcs	%o0, %o1, .L1093
	add	%o1, %o2, %g1
	cwbleu	%o0, %g1, .L1153
	nop
.L1093:
	cwbe	%g4, 0, .L1154
	add	%g4, -1, %g1
	cwbleu	%g1, 8, .L1095
	or	%o0, %o1, %o4
	and	%o4, 7, %g3
	add	%o1, 4, %g1
	cmp	%g0, %g3
	xor	%o0, %g1, %g1
	subx	%g0, -1, %o5
	cmp	%g0, %g1
	addx	%g0, 0, %g1
	and	%o5, %g1, %g1
	cwbe	%g1, 0, .L1095
	srl	%o2, 3, %o3
	and	%o2, -8, %o4
	mov	0, %g1
.L1096:
	ldd	[%o1+%g1], %f0
	std	%f0, [%o0+%g1]
	add	%g1, 8, %g1
	cwbne	%g1, %o4, .L1096
	sll	%o3, 1, %g3
	cwbe	%g4, %g3, .L1099
	ld	[%o1+%g1], %g4
	st	%g4, [%o0+%g1]
.L1099:
	cwbleu	%o2, %g2, .L1158
	sub	%o2, %g2, %o3
	add	%o3, -1, %g1
	cwbleu	%g1, 7, .L1155
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
	and	%g4, %o4, %g4
	cwbe	%g4, 0, .L1150
	and	%o3, -8, %o4
	mov	0, %g1
.L1100:
	ldd	[%o5+%g1], %f2
	std	%f2, [%g3+%g1]
	add	%g1, 8, %g1
	cwbne	%o4, %g1, .L1100
	add	%g2, %o4, %g2
	cwbe	%o3, %o4, .L1158
	ldub	[%o1+%g2], %o3
	add	%g2, 1, %g1
	stb	%o3, [%o0+%g2]
	cwbleu	%o2, %g1, .L1158
	ldub	[%o1+%g1], %o5
	add	%g2, 2, %g3
	stb	%o5, [%o0+%g1]
	cwbcc	%g3, %o2, .L1158
	ldub	[%o1+%g3], %g4
	add	%g2, 3, %g1
	stb	%g4, [%o0+%g3]
	cwbleu	%o2, %g1, .L1158
	ldub	[%o1+%g1], %o4
	add	%g2, 4, %o3
	stb	%o4, [%o0+%g1]
	cwbleu	%o2, %o3, .L1158
	ldub	[%o1+%o3], %o5
	add	%g2, 5, %g1
	stb	%o5, [%o0+%o3]
	cwbleu	%o2, %g1, .L1158
	ldub	[%o1+%g1], %g3
	add	%g2, 6, %g2
	stb	%g3, [%o0+%g1]
	cwbleu	%o2, %g2, .L1158
.L1151:
	ldub	[%o1+%g2], %g1
	jmp	%o7+8
	 stb	%g1, [%o0+%g2]
.L1156:
	add	%g1, 1, %g1
.L1150:
	ldub	[%o1+%g2], %g4
	stb	%g4, [%o0+%g2]
	mov	%g1, %g2
	cwbne	%o2, %g1, .L1156
	nop
	jmp	%o7+8
	 nop
.L1153:
	add	%o2, -1, %g2
	cwbe	%o2, 0, .L1158
	nop
	cwbleu	%g2, 8, .L1149
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
	and	%g1, %o4, %g1
	cwbe	%g1, 0, .L1149
	and	%o2, -8, %g4
	sub	%g0, %g4, %g3
	mov	0, %g1
.L1105:
	ldd	[%o3+%g1], %f8
	std	%f8, [%o5+%g1]
	add	%g1, -8, %g1
	cwbne	%g3, %g1, .L1105
	and	%o2, -8, %g1
	and	%o2, 7, %o2
	sub	%g2, %g1, %g2
	cwbe	%o2, 0, .L1158
	ldub	[%o1+%g2], %o5
	stb	%o5, [%o0+%g2]
	add	%g2, -1, %g1
	cwbe	%g2, 0, .L1158
	ldub	[%o1+%g1], %o3
	stb	%o3, [%o0+%g1]
	add	%g2, -2, %o4
	cwbe	%g1, 0, .L1158
	ldub	[%o1+%o4], %g4
	stb	%g4, [%o0+%o4]
	add	%g2, -3, %g1
	cwbe	%o4, 0, .L1158
	ldub	[%o1+%g1], %o2
	stb	%o2, [%o0+%g1]
	add	%g2, -4, %g3
	cwbe	%g1, 0, .L1158
	ldub	[%o1+%g3], %o5
	stb	%o5, [%o0+%g3]
	add	%g2, -5, %g1
	cwbe	%g3, 0, .L1158
	ldub	[%o1+%g1], %o3
	stb	%o3, [%o0+%g1]
	add	%g2, -6, %g2
	cwbne	%g1, 0, .L1151
	nop
	jmp	%o7+8
	 nop
.L1149:
	ldub	[%o1+%g2], %g1
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cwbe	%g2, -1, .L1158
	ldub	[%o1+%g2], %g1
	stb	%g1, [%o0+%g2]
	add	%g2, -1, %g2
	cwbne	%g2, -1, .L1149
	nop
	jmp	%o7+8
	 nop
.L1095:
	sll	%g4, 2, %o5
	mov	0, %g1
.L1098:
	ld	[%o1+%g1], %o3
	st	%o3, [%o0+%g1]
	add	%g1, 4, %g1
	cwbne	%o5, %g1, .L1098
	nop
	cwbe	%g0, %g0, .L1099
.L1154:
	add	%g2, 1, %g1
	cwbne	%o2, 0, .L1150
	nop
	jmp	%o7+8
	 nop
.L1158:
	jmp	%o7+8
	 nop
.L1155:
	add	%g2, 1, %g1
	cwbe	%g0, %g0, .L1150
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
	ldd	[%fp-16], %f0
	ldd	[%fp-8], %f2
	cwbg	%o0, 0, .L1164
	sethi	%hi(.LC32), %g1
	or	%g1, %lo(.LC32), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1164:
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
	ldd	[%fp-16], %f0
	ldd	[%fp-8], %f2
	cwbg	%o0, 0, .L1166
	sethi	%hi(.LC34), %g1
	or	%g1, %lo(.LC34), %g1
	ldd	[%g1], %f8
	ldd	[%g1+8], %f10
	faddq	%f0, %f8, %f0
.L1166:
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
	sra	%o0, 15, %g2
	mov	%o0, %g1
	mov	0, %o0
	cwbne	%g2, 0, .L1186
	sra	%g1, 14, %o0
	cwbne	%o0, 0, .L1186
	sra	%g1, 13, %g3
	mov	2, %o0
	cwbne	%g3, 0, .L1186
	sra	%g1, 12, %g4
	mov	3, %o0
	cwbne	%g4, 0, .L1186
	sra	%g1, 11, %g2
	mov	4, %o0
	cwbne	%g2, 0, .L1186
	sra	%g1, 10, %g3
	mov	5, %o0
	cwbne	%g3, 0, .L1186
	sra	%g1, 9, %g4
	mov	6, %o0
	cwbne	%g4, 0, .L1186
	sra	%g1, 8, %g2
	mov	7, %o0
	cwbne	%g2, 0, .L1186
	sra	%g1, 7, %g3
	mov	8, %o0
	cwbne	%g3, 0, .L1186
	sra	%g1, 6, %g4
	mov	9, %o0
	cwbne	%g4, 0, .L1186
	sra	%g1, 5, %g2
	mov	10, %o0
	cwbne	%g2, 0, .L1186
	sra	%g1, 4, %g3
	mov	11, %o0
	cwbne	%g3, 0, .L1186
	sra	%g1, 3, %g4
	mov	12, %o0
	cwbne	%g4, 0, .L1186
	sra	%g1, 2, %g2
	mov	13, %o0
	cwbne	%g2, 0, .L1186
	cmp	%g0, %g1
	sra	%g1, 1, %g1
	subx	%g0, -1, %g3
	mov	14, %o0
	add	%g3, 15, %g4
	cmp	%g1, 0
	move	%icc, %g4, %o0
.L1186:
	jmp	%o7+8
	 nop
	.size	__clzhi2, .-__clzhi2
	.align 4
	.align 32
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	and	%o0, 1, %g1
	mov	%o0, %g2
	mov	0, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 2, %g1
	mov	1, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 4, %g1
	mov	2, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 8, %g1
	mov	3, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 16, %g1
	mov	4, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 32, %g1
	mov	5, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 64, %g1
	mov	6, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 128, %g1
	mov	7, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 256, %g1
	mov	8, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 512, %g1
	mov	9, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 1024, %g1
	mov	10, %o0
	cwbne	%g1, 0, .L1206
	and	%g2, 2048, %g1
	mov	11, %o0
	cwbne	%g1, 0, .L1206
	sethi	%hi(4096), %g1
	and	%g2, %g1, %g1
	mov	12, %o0
	cwbne	%g1, 0, .L1206
	sethi	%hi(8192), %g1
	and	%g2, %g1, %g1
	mov	13, %o0
	cwbne	%g1, 0, .L1206
	sra	%g2, 15, %g1
	cmp	%g0, %g1
	sethi	%hi(16384), %g4
	subx	%g0, -1, %g3
	mov	14, %o0
	add	%g3, 15, %g1
	andcc	%g2, %g4, %g0
	move	%icc, %g1, %o0
.L1206:
	jmp	%o7+8
	 nop
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
	fbge,a,pn %fcc0, .L1213
	 fsubs	%f9, %f8, %f2
	fstoi	%f9, %f1
	jmp	%o7+8
	 movstouw	%f1, %o0
.L1213:
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
	mov	%o0, %g2
	mov	0, %o0
	cwbe	%g2, 0, .L1222
.L1218:
	and	%g2, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %o1, %g1
	srl	%g2, 1, %g2
	add	%o0, %g1, %o0
	sll	%o1, 1, %o1
	cwbne	%g2, 0, .L1218
	nop
.L1222:
	jmp	%o7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.align 32
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	mov	%o0, %g2
	mov	0, %o0
	cwbe	%g2, 0, .L1232
	nop
	cwbe	%o1, 0, .L1232
.L1225:
	and	%o1, 1, %g1
	sub	%g0, %g1, %g1
	and	%g1, %g2, %g1
	srl	%o1, 1, %o1
	add	%o0, %g1, %o0
	sll	%g2, 1, %g2
	cwbne	%o1, 0, .L1225
	nop
.L1232:
	jmp	%o7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.align 32
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	mov	%o0, %g2
	mov	1, %g1
	cwbleu	%o0, %o1, .L1251
	nop
.L1234:
	cwbl	%o1, 0, .L1238
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g3, %g4, %o0
	cwbne	%o0, 0, .L1234
	mov	0, %o0
	cwbe	%g1, 0, .L1239
.L1238:
	mov	0, %o0
.L1240:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	or	%o0, %g3, %o0
	srl	%o1, 1, %o1
	cwbne	%g1, 0, .L1240
.L1239:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1251:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	subx	%g0, -1, %o0
	cwbe	%g0, %g0, .L1239
	nop
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
	mov	%o0, %g4
	cwbl	%o1, 0, .L1271
	mov	0, %o0
	cwbe	%o1, 0, .L1272
	mov	0, %o4
.L1263:
	mov	1, %o5
	mov	0, %o0
.L1265:
	and	%o1, 1, %g1
	and	%o5, 0xff, %g3
	sra	%o1, 1, %o1
	cmp	%g0, %o1
	xor	%g3, 32, %g3
	addx	%g0, 0, %g2
	sub	%g0, %g1, %g1
	cmp	%g0, %g3
	and	%g1, %g4, %g1
	addx	%g0, 0, %g3
	and	%g2, %g3, %g2
	add	%o0, %g1, %o0
	sll	%g4, 1, %g4
	add	%o5, 1, %o5
	cwbne	%g2, 0, .L1265
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	movne	%icc, %g1, %o0
.L1272:
	jmp	%o7+8
	 nop
.L1271:
	sub	%g0, %o1, %o1
	mov	1, %o4
	cwbe	%g0, %g0, .L1263
	nop
	.size	__mulhi3, .-__mulhi3
	.align 4
	.align 32
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	mov	1, %g1
	mov	0, %o4
	cwbl	%o0, 0, .L1301
	nop
.L1274:
	cwbge	%o1, 0, .L1275
	sub	%g0, %o1, %o1
	mov	%g1, %o4
.L1275:
	mov	%o0, %o5
	mov	%o1, %g2
	mov	1, %g1
	cwbleu	%o0, %o1, .L1297
.L1276:
	sll	%g2, 1, %g2
	cmp	%g2, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g3, %g4, %o1
	cwbne	%o1, 0, .L1276
	mov	0, %o0
	cwbe	%g1, 0, .L1279
.L1278:
	cmp	%o5, %g2
	mov	0, %g3
	subx	%g0, -1, %g4
	cmp	%g4, 0
	sub	%o5, %g2, %o1
	movne	%icc, %g1, %g3
	srl	%g1, 1, %g1
	movne	%icc, %o1, %o5
	or	%o0, %g3, %o0
	srl	%g2, 1, %g2
	cwbne	%g1, 0, .L1278
.L1279:
	sub	%g0, %o0, %g1
	cmp	%o4, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1301:
	sub	%g0, %o0, %o0
	mov	0, %g1
	mov	1, %o4
	cwbe	%g0, %g0, .L1274
.L1297:
	cmp	%o0, %o1
	subx	%g0, -1, %o0
	cwbe	%g0, %g0, .L1279
	nop
	.size	__divsi3, .-__divsi3
	.align 4
	.align 32
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	mov	0, %o5
	cwbge	%o0, 0, .L1303
	sub	%g0, %o0, %o0
	mov	1, %o5
.L1303:
	sra	%o1, 31, %g1
	xor	%g1, %o1, %o1
	sub	%o1, %g1, %o1
	mov	%o0, %g3
	mov	1, %g1
	cwbleu	%o0, %o1, .L1324
.L1304:
	sll	%o1, 1, %o1
	cmp	%o1, %o0
	sll	%g1, 1, %g1
	addx	%g0, 0, %g2
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g2, %g4, %g2
	cwbne	%g2, 0, .L1304
	nop
	cwbe	%g1, 0, .L1307
.L1306:
	sub	%g3, %o1, %o0
	cmp	%g3, %o1
	srl	%g1, 1, %g1
	movgeu	%icc, %o0, %g3
	srl	%o1, 1, %o1
	cwbne	%g1, 0, .L1306
.L1310:
	mov	%g3, %o0
.L1307:
	sub	%g0, %o0, %g1
	cmp	%o5, 0
	jmp	%o7+8
	 movne	%icc, %g1, %o0
.L1324:
	sub	%o0, %o1, %g1
	cmp	%o0, %o1
	movgeu	%icc, %g1, %g3
	cwbe	%g0, %g0, .L1310
	nop
	.size	__modsi3, .-__modsi3
	.align 4
	.align 32
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	mov	1, %o5
	cwbcs	%o1, %o0, .L1329
	nop
	cwbe	%g0, %g0, .L1391
.L1332:
	mov	%o4, %g2
	srl	%g4, 16, %o3
	cwbe	%g3, 0, .L1331
	mov	%o4, %o5
	mov	%g1, %o1
.L1329:
	sll	%o1, 17, %g1
	srl	%g1, 16, %g1
	cmp	%g1, %o0
	sll	%o5, 17, %g4
	addx	%g0, 0, %g3
	sll	%o1, 16, %g2
	cmp	%g0, %g4
	addx	%g0, 0, %o3
	sll	%o5, 1, %o4
	and	%g3, %o3, %g3
	cwbge	%g2, 0, .L1332
	cmp	%o0, %o1
	sub	%o0, %o1, %g1
	subx	%g0, -1, %g4
	cmp	%g4, 0
	movne	%icc, %g1, %o0
	sll	%o5, 16, %g3
	mov	0, %g2
	movne	%icc, %o5, %g2
	sll	%o0, 16, %o0
	srl	%g3, 17, %g1
	srl	%o0, 16, %o0
	mov	%g2, %o3
	mov	%g1, %o5
	srl	%o1, 1, %g4
	cwbe	%g1, 0, .L1334
.L1336:
	cmp	%o0, %g4
	sub	%o0, %g4, %g1
	subx	%g0, -1, %o4
	mov	0, %g4
	cmp	%o4, 0
	movne	%icc, %g1, %o0
	mov	%g4, %g1
	movne	%icc, %o5, %g1
	sll	%o0, 16, %g2
	or	%g1, %o3, %g1
	srl	%g3, 18, %o3
	srl	%g2, 16, %o0
	srl	%o1, 2, %o5
	mov	%g1, %g2
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	sub	%o0, %o5, %o4
	subx	%g0, -1, %g2
	mov	%g4, %o5
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %o5
	sll	%o0, 16, %o0
	or	%g1, %o5, %g1
	srl	%g3, 19, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 3, %o4
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	subx	%g0, -1, %g2
	mov	%g4, %o4
	cmp	%g2, 0
	movne	%icc, %o5, %o0
	movne	%icc, %o3, %o4
	sll	%o0, 16, %o0
	or	%g1, %o4, %g1
	srl	%g3, 20, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 4, %o5
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	sub	%o0, %o5, %o4
	subx	%g0, -1, %g2
	mov	%g4, %o5
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %o5
	sll	%o0, 16, %o0
	or	%g1, %o5, %g1
	srl	%g3, 21, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 5, %o4
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	subx	%g0, -1, %g2
	mov	%g4, %o4
	cmp	%g2, 0
	movne	%icc, %o5, %o0
	movne	%icc, %o3, %o4
	sll	%o0, 16, %o0
	or	%g1, %o4, %g1
	srl	%g3, 22, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 6, %o5
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	sub	%o0, %o5, %o4
	subx	%g0, -1, %g2
	mov	%g4, %o5
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %o5
	sll	%o0, 16, %o0
	or	%g1, %o5, %g1
	srl	%g3, 23, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 7, %o4
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	subx	%g0, -1, %g2
	mov	%g4, %o4
	cmp	%g2, 0
	movne	%icc, %o5, %o0
	movne	%icc, %o3, %o4
	sll	%o0, 16, %o0
	or	%g1, %o4, %g1
	srl	%g3, 24, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 8, %o5
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	sub	%o0, %o5, %o4
	subx	%g0, -1, %g2
	mov	%g4, %o5
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %o5
	sll	%o0, 16, %o0
	or	%g1, %o5, %g1
	srl	%g3, 25, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 9, %o4
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	subx	%g0, -1, %g2
	mov	%g4, %o4
	cmp	%g2, 0
	movne	%icc, %o5, %o0
	movne	%icc, %o3, %o4
	sll	%o0, 16, %o0
	or	%g1, %o4, %g1
	srl	%g3, 26, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 10, %o5
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	sub	%o0, %o5, %o4
	subx	%g0, -1, %g2
	mov	%g4, %o5
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %o5
	sll	%o0, 16, %o0
	or	%g1, %o5, %g1
	srl	%g3, 27, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 11, %o4
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	subx	%g0, -1, %g2
	mov	%g4, %o4
	cmp	%g2, 0
	movne	%icc, %o5, %o0
	movne	%icc, %o3, %o4
	sll	%o0, 16, %o0
	or	%g1, %o4, %g1
	srl	%g3, 28, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 12, %o5
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	sub	%o0, %o5, %o4
	subx	%g0, -1, %g2
	mov	%g4, %o5
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %o5
	sll	%o0, 16, %o0
	or	%g1, %o5, %g1
	srl	%g3, 29, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 13, %o4
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o4
	sub	%o0, %o4, %o5
	subx	%g0, -1, %g2
	mov	%g4, %o4
	cmp	%g2, 0
	movne	%icc, %o5, %o0
	movne	%icc, %o3, %o4
	sll	%o0, 16, %o0
	or	%g1, %o4, %g1
	srl	%g3, 30, %o3
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 14, %o5
	cwbe	%o3, 0, .L1334
	cmp	%o0, %o5
	subx	%g0, -1, %g2
	sub	%o0, %o5, %o4
	cmp	%g2, 0
	movne	%icc, %o4, %o0
	movne	%icc, %o3, %g4
	sll	%o0, 16, %o0
	or	%g1, %g4, %g1
	srl	%o0, 16, %o0
	mov	%g1, %g2
	srl	%o1, 15, %o1
	cwbge	%g3, 0, .L1334
	cmp	%o0, %o1
	sub	%o0, %o1, %g3
	movgeu	%icc, %g3, %o0
	sll	%o0, 16, %g4
	subx	%g0, -1, %o3
	srl	%g4, 16, %o0
	or	%g1, %o3, %g2
.L1334:
	cmp	%o2, 0
	movne	%icc, %o0, %g2
	sll	%g2, 16, %o2
	jmp	%o7+8
	 srl	%o2, 16, %o0
.L1331:
	cwbe	%o3, 0, .L1334
	cmp	%o0, %g1
	sub	%o0, %g1, %g3
	subx	%g0, -1, %g4
	cmp	%g4, 0
	movne	%icc, %g3, %o0
	sethi	%hi(31744), %o3
	or	%o3, 1023, %g3
	sll	%o0, 16, %o0
	mov	0, %o3
	and	%o1, %g3, %g4
	and	%g3, %o5, %o5
	srl	%o0, 16, %o0
	movne	%icc, %o4, %o3
	mov	%g1, %o1
	sll	%g2, 16, %g3
	cwbe	%g0, %g0, .L1336
.L1391:
	xor	%o1, %o0, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g2
	sub	%o0, %o1, %o1
	cmp	%g1, 0
	move	%icc, %o1, %o0
	sll	%o0, 16, %o0
	srl	%o0, 16, %o0
	and	%g2, 0xff, %g2
	cwbe	%g0, %g0, .L1334
	nop
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.align 32
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	mov	%o0, %g2
	mov	1, %g1
	cwbleu	%o0, %o1, .L1410
	nop
.L1393:
	cwbl	%o1, 0, .L1397
	sll	%o1, 1, %o1
	cmp	%o1, %g2
	sll	%g1, 1, %g1
	addx	%g0, 0, %g3
	cmp	%g0, %g1
	addx	%g0, 0, %g4
	and	%g3, %g4, %o0
	cwbne	%o0, 0, .L1393
	mov	0, %o0
	cwbe	%g1, 0, .L1398
.L1397:
	mov	0, %o0
.L1399:
	cmp	%g2, %o1
	subx	%g0, -1, %g4
	mov	0, %g3
	cmp	%g4, 0
	movne	%icc, %g1, %g3
	sub	%g2, %o1, %g4
	srl	%g1, 1, %g1
	movne	%icc, %g4, %g2
	or	%o0, %g3, %o0
	srl	%o1, 1, %o1
	cwbne	%g1, 0, .L1399
.L1398:
	cmp	%o2, 0
	jmp	%o7+8
	 movne	%icc, %g2, %o0
.L1410:
	cmp	%o0, %o1
	sub	%o0, %o1, %o1
	movgeu	%icc, %o1, %g2
	subx	%g0, -1, %o0
	cwbe	%g0, %g0, .L1398
	nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.align 32
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	and	%o2, 32, %g1
	cwbe	%g1, 0, .L1413
	sll	%o1, %o2, %o0
	jmp	%o7+8
	 mov	0, %o1
.L1413:
	cwbe	%o2, 0, .L1418
	sub	%g0, %o2, %g1
	srl	%o1, %g1, %g1
	sll	%o0, %o2, %g4
	sll	%o1, %o2, %o1
	or	%g1, %g4, %o0
.L1418:
	jmp	%o7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.align 32
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	and	%o2, 32, %g1
	mov	%o0, %g3
	cwbe	%g1, 0, .L1420
	sra	%o0, 31, %o0
	jmp	%o7+8
	 sra	%g3, %o2, %o1
.L1420:
	cwbe	%o2, 0, .L1425
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %o1
	sra	%o0, %o2, %o0
	or	%g1, %o1, %o1
.L1425:
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
	mov	0, %g1
	cwbl	%o0, %o2, .L1429
	mov	2, %g1
	cwbg	%o0, %o2, .L1429
	mov	0, %g1
	cwbcs	%o1, %o3, .L1429
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L1429:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.align 32
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	mov	-1, %g1
	cwbl	%o0, %o2, .L1435
	mov	1, %g1
	cwbg	%o0, %o2, .L1435
	mov	-1, %g1
	cwbcs	%o1, %o3, .L1435
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1435:
	jmp	%o7+8
	 mov	%g1, %o0
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
	and	%o2, 32, %g1
	cwbe	%g1, 0, .L1442
	srl	%o0, %o2, %o1
	mov	0, %o0
.L1443:
	stx	%g0, [%sp+72]
	st	%o0, [%sp+72]
	mov	%o0, %g1
.L1441:
	mov	%g1, %o0
	jmp	%o7+8
	 add	%sp, 80, %sp
.L1442:
	mov	%o0, %g1
	cwbe	%o2, 0, .L1441
	sub	%g0, %o2, %g1
	sll	%o0, %g1, %g1
	srl	%o1, %o2, %g3
	srl	%o0, %o2, %o0
	or	%g1, %g3, %o1
	cwbe	%g0, %g0, .L1443
	nop
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
	movwtos	%o0, %f8
	movwtos	%o1, %f9
	sethi	%hi(1072693248), %o0
	mov	0, %o1
	and	%o2, 1, %g2
	movwtos	%o0, %f0
	movwtos	%o1, %f1
	mov	%o2, %g1
	cwbe	%g2, 0, .L1455
.L1457:
	fmuld	%f0, %f8, %f0
.L1455:
	srl	%g1, 31, %g3
	add	%g3, %g1, %g1
	sra	%g1, 1, %g1
	cwbe	%g1, 0, .L1456
	srl	%g1, 31, %g4
	and	%g1, 1, %o0
	fmuld	%f8, %f8, %f8
	add	%g4, %g1, %g2
	cwbne	%o0, 0, .L1457
.L1462:
	sra	%g2, 1, %g1
	srl	%g1, 31, %g4
	and	%g1, 1, %o0
	fmuld	%f8, %f8, %f8
	add	%g4, %g1, %g2
	cwbne	%o0, 0, .L1457
	nop
	cwbe	%g0, %g0, .L1462
	nop
.L1456:
	cwbge	%o2, 0, .L1463
	sethi	%hi(1072693248), %o2
	mov	0, %o1
	movwtos	%o2, %f8
	movwtos	%o1, %f9
	fdivd	%f8, %f0, %f0
.L1463:
	jmp	%o7+8
	 nop
	.size	__powidf2, .-__powidf2
	.align 4
	.align 32
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	sethi	%hi(1065353216), %g3
	and	%o1, 1, %g2
	movwtos	%o0, %f8
	movwtos	%g3, %f0
	mov	%o1, %g1
	cwbe	%g2, 0, .L1465
.L1467:
	fmuls	%f0, %f8, %f0
.L1465:
	srl	%g1, 31, %g4
	add	%g4, %g1, %g1
	sra	%g1, 1, %g1
	cwbe	%g1, 0, .L1466
	srl	%g1, 31, %o0
	and	%g1, 1, %g3
	fmuls	%f8, %f8, %f8
	add	%o0, %g1, %g2
	cwbne	%g3, 0, .L1467
.L1472:
	sra	%g2, 1, %g1
	srl	%g1, 31, %o0
	and	%g1, 1, %g3
	fmuls	%f8, %f8, %f8
	add	%o0, %g1, %g2
	cwbne	%g3, 0, .L1467
	nop
	cwbe	%g0, %g0, .L1472
	nop
.L1466:
	cwbge	%o1, 0, .L1473
	sethi	%hi(1065353216), %g1
	movwtos	%g1, %f1
	fdivs	%f1, %f0, %f0
.L1473:
	jmp	%o7+8
	 nop
	.size	__powisf2, .-__powisf2
	.align 4
	.align 32
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	mov	0, %g1
	cwbcs	%o0, %o2, .L1474
	mov	2, %g1
	cwbgu	%o0, %o2, .L1474
	mov	0, %g1
	cwbcs	%o1, %o3, .L1474
	cmp	%o3, %o1
	addx	%g0, 1, %g1
.L1474:
	jmp	%o7+8
	 mov	%g1, %o0
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.align 32
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	mov	-1, %g1
	cwbcs	%o0, %o2, .L1480
	mov	1, %g1
	cwbgu	%o0, %o2, .L1480
	mov	-1, %g1
	cwbcs	%o1, %o3, .L1480
	cmp	%o3, %o1
	addx	%g0, 0, %g1
.L1480:
	jmp	%o7+8
	 mov	%g1, %o0
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
