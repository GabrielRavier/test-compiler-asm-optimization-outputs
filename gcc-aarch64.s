	.arch armv8.5-a+crc+sve
	.file	"mini-libc.c"
	.text
	.align	2
	.p2align 4,,11
	.global	make_ti
	.type	make_ti, %function
make_ti:
.LFB0:
	.cfi_startproc
	mov	x2, x0
	mov	x0, x1
	mov	x1, x2
	ret
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	2
	.p2align 4,,11
	.global	make_tu
	.type	make_tu, %function
make_tu:
.LFB1:
	.cfi_startproc
	mov	x2, x0
	mov	x0, x1
	mov	x1, x2
	ret
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	2
	.p2align 4,,11
	.global	memmove
	.type	memmove, %function
memmove:
.LFB2:
	.cfi_startproc
	mov	x12, x1
	cmp	x0, x1
	bls	.L5
	cbz	x2, .L6
	sub	x3, x2, #1
	cnth	x9
	cmp	x3, 14
	sub	x10, x9, #1
	ccmp	x3, x10, 0, hi
	bcc	.L7
	sub	x11, x2, #2
	add	x13, x0, x3
	add	x14, x1, x11
	cntb	x15
	sub	x16, x13, x14
	sub	x17, x15, #2
	add	x18, x16, x17
	cmp	x18, x17
	bls	.L7
	sub	x1, x15, #1
	add	x6, x12, x2
	add	x5, x0, x2
	cmp	x3, x1
	bcc	.L20
	rdvl	x9, #-1
	add	x8, x2, x9
	add	x11, x12, x8
	add	x10, x0, x8
	mov	x3, 0
	mov	x4, 0
	ptrue	p0.b, all
	.p2align 3,,7
.L9:
	ld1b	z30.b, p0/z, [x11, x3]
	add	x4, x4, x15
	st1b	z30.b, p0, [x10, x3]
	add	x3, x3, x9
	cmp	x8, x4
	bcs	.L9
	sub	x7, x2, x4
	sub	x5, x5, x4
	sub	x6, x6, x4
	mov	x1, x7
	cmp	x2, x4
	beq	.L6
.L8:
	cnth	x2
	sub	x13, x7, #1
	sub	x14, x2, #1
	cmp	x13, x14
	bcc	.L11
	sub	x15, x7, x2
	ptrue	p1.b, all
	ld1b	z29.h, p1/z, [x12, x15]
	st1b	z29.h, p1, [x0, x15]
	add	x12, x12, x15
	add	x16, x0, x15
	cmp	x15, x2
	bcs	.L39
.L12:
	sub	x1, x1, x2
	sub	x5, x5, x2
	sub	x6, x6, x2
	cmp	x7, x2
	beq	.L6
.L11:
	mvn	x17, x1
	mov	x8, x1
	add	x18, x6, x17
	add	x7, x5, x17
	.p2align 3,,7
.L14:
	ldrb	w9, [x18, x1]
	subs	x8, x8, #1
	strb	w9, [x7, x1]
	sub	x1, x1, #1
	bne	.L14
.L6:
	ret
	.p2align 2,,3
.L5:
	beq	.L6
	cbz	x2, .L6
	add	x1, x1, 1
	cntb	x5
	sub	x4, x0, x1
	sub	x3, x5, #2
	cmp	x4, x3
	mov	x8, 0
	bls	.L17
	mov	x6, x2
	whilelo	p7.b, xzr, x2
	uqdecb	x6
	.p2align 3,,7
.L18:
	ld1b	z31.b, p7/z, [x12, x8]
	st1b	z31.b, p7, [x0, x8]
	whilelo	p7.b, x8, x6
	add	x8, x8, x5
	b.any	.L18
	ret
	.p2align 2,,3
.L17:
	ldrb	w7, [x12, x8]
	subs	x2, x2, #1
	strb	w7, [x0, x8]
	add	x8, x8, 1
	beq	.L6
	ldrb	w7, [x12, x8]
	subs	x2, x2, #1
	strb	w7, [x0, x8]
	add	x8, x8, 1
	bne	.L17
	b	.L6
	.p2align 2,,3
.L39:
	ld1b	z28.h, p1/z, [x12, #-1, mul vl]
	cntb	x2
	st1b	z28.h, p1, [x16, #-1, mul vl]
	b	.L12
	.p2align 2,,3
.L7:
	sub	x11, x12, #1
	sub	x10, x0, #1
	add	x4, x3, 1
	.p2align 3,,7
.L15:
	ldrb	w13, [x11, x2]
	subs	x4, x4, #1
	strb	w13, [x10, x2]
	mov	x2, x3
	sub	x3, x3, #1
	bne	.L15
	ret
.L20:
	mov	x1, x2
	mov	x7, x2
	b	.L8
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	2
	.p2align 4,,11
	.global	memccpy
	.type	memccpy, %function
memccpy:
.LFB3:
	.cfi_startproc
	and	w2, w2, 255
	cbnz	x3, .L41
	b	.L43
	.p2align 2,,3
.L44:
	subs	x3, x3, #1
	beq	.L43
.L41:
	ldrb	w4, [x1]
	add	x0, x0, 1
	strb	w4, [x0, -1]
	add	x1, x1, 1
	cmp	w4, w2
	bne	.L44
	ret
	.p2align 2,,3
.L43:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	2
	.p2align 4,,11
	.global	memchr
	.type	memchr, %function
memchr:
.LFB4:
	.cfi_startproc
	and	w1, w1, 255
	cbnz	x2, .L52
	b	.L58
	.p2align 2,,3
.L54:
	add	x0, x0, 1
	subs	x2, x2, #1
	beq	.L58
.L52:
	ldrb	w3, [x0]
	cmp	w3, w1
	bne	.L54
	ret
	.p2align 2,,3
.L58:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	2
	.p2align 4,,11
	.global	memcmp
	.type	memcmp, %function
memcmp:
.LFB5:
	.cfi_startproc
	cbnz	x2, .L62
	b	.L69
	.p2align 2,,3
.L64:
	subs	x2, x2, #1
	beq	.L69
.L62:
	ldrb	w3, [x0]
	add	x1, x1, 1
	ldrb	w4, [x1, -1]
	add	x0, x0, 1
	cmp	w3, w4
	beq	.L64
	sub	w0, w3, w4
	ret
	.p2align 2,,3
.L69:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	2
	.p2align 4,,11
	.global	memcpy
	.type	memcpy, %function
memcpy:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	cbz	x2, .L75
	bl	memcpy
.L75:
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	2
	.p2align 4,,11
	.global	memrchr
	.type	memrchr, %function
memrchr:
.LFB7:
	.cfi_startproc
	sub	x2, x2, #1
	and	w1, w1, 255
	add	x3, x0, x2
	add	x5, x2, 2
	b	.L81
	.p2align 2,,3
.L83:
	ldrb	w4, [x0]
	sub	x3, x3, #1
	cmp	w4, w1
	beq	.L80
.L81:
	mov	x0, x3
	subs	x5, x5, #1
	bne	.L83
	mov	x0, 0
.L80:
	ret
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	2
	.p2align 4,,11
	.global	memset
	.type	memset, %function
memset:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	cbz	x2, .L87
	and	w1, w1, 255
	bl	memset
.L87:
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	2
	.p2align 4,,11
	.global	stpcpy
	.type	stpcpy, %function
stpcpy:
.LFB9:
	.cfi_startproc
	ldrb	w2, [x1]
	strb	w2, [x0]
	cbz	w2, .L90
	.p2align 3,,7
.L91:
	ldrb	w3, [x1, 1]!
	strb	w3, [x0, 1]!
	cbnz	w3, .L91
.L90:
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	2
	.p2align 4,,11
	.global	strchrnul
	.type	strchrnul, %function
strchrnul:
.LFB10:
	.cfi_startproc
	ldrb	w2, [x0]
	and	w1, w1, 255
	cbnz	w2, .L97
	b	.L96
	.p2align 2,,3
.L99:
	ldrb	w2, [x0, 1]!
	cbz	w2, .L96
.L97:
	cmp	w2, w1
	bne	.L99
.L96:
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	2
	.p2align 4,,11
	.global	strchr
	.type	strchr, %function
strchr:
.LFB11:
	.cfi_startproc
	.p2align 3,,7
.L106:
	ldrb	w2, [x0]
	cmp	w2, w1
	beq	.L105
	add	x0, x0, 1
	cbnz	w2, .L106
	mov	x0, 0
.L105:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	2
	.p2align 4,,11
	.global	strcmp
	.type	strcmp, %function
strcmp:
.LFB12:
	.cfi_startproc
	sub	x4, x1, #1
	ldrb	w3, [x0]
	ldrb	w1, [x1]
	mov	x2, 1
	cmp	w3, w1
	bne	.L110
	.p2align 3,,7
.L109:
	cbz	w3, .L110
	ldrb	w3, [x0, x2]
	add	x2, x2, 1
	ldrb	w1, [x4, x2]
	cmp	w3, w1
	beq	.L109
.L110:
	sub	w0, w3, w1
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	2
	.p2align 4,,11
	.global	strlen
	.type	strlen, %function
strlen:
.LFB13:
	.cfi_startproc
	ldrb	w1, [x0]
	cbz	w1, .L120
	mov	x3, x0
	.p2align 3,,7
.L119:
	ldrb	w2, [x3, 1]!
	cbnz	w2, .L119
	sub	x0, x3, x0
	ret
	.p2align 2,,3
.L120:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.p2align 4,,11
	.global	strncmp
	.type	strncmp, %function
strncmp:
.LFB14:
	.cfi_startproc
	cbz	x2, .L128
	ldrb	w4, [x0]
	sub	x7, x2, #1
	mov	x2, x1
	cbnz	w4, .L126
	b	.L133
	.p2align 2,,3
.L127:
	ldrb	w4, [x0, 1]!
	cbz	w4, .L134
	mov	x2, x6
.L126:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x8, x3, x7
	add	x6, x2, 1
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x8, 0, 4, eq
	bne	.L127
	sub	w0, w4, w5
.L122:
	ret
	.p2align 2,,3
.L128:
	mov	w0, 0
	ret
	.p2align 2,,3
.L134:
	ldrb	w5, [x2, 1]
	sub	w0, w4, w5
	b	.L122
.L133:
	ldrb	w5, [x1]
	sub	w0, w4, w5
	b	.L122
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	2
	.p2align 4,,11
	.global	swab
	.type	swab, %function
swab:
.LFB15:
	.cfi_startproc
	cmp	x2, 1
	ble	.L135
	mov	x3, 0
	mov	x4, 0
	cntb	x6
	cntb	x5, all, mul #2
	lsr	x2, x2, 1
	whilelo	p7.b, xzr, x2
	.p2align 3,,7
.L137:
	ld2b	{z30.b - z31.b}, p7/z, [x0, x3]
	mov	z29.d, z31.d
	st2b	{z29.b - z30.b}, p7, [x1, x3]
	add	x4, x4, x6
	add	x3, x3, x5
	whilelo	p7.b, x4, x2
	b.any	.L137
.L135:
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	2
	.p2align 4,,11
	.global	isalpha
	.type	isalpha, %function
isalpha:
.LFB16:
	.cfi_startproc
	orr	w0, w0, 32
	sub	w1, w0, #97
	cmp	w1, 25
	cset	w0, ls
	ret
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	2
	.p2align 4,,11
	.global	isascii
	.type	isascii, %function
isascii:
.LFB17:
	.cfi_startproc
	cmp	w0, 127
	cset	w0, ls
	ret
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	2
	.p2align 4,,11
	.global	isblank
	.type	isblank, %function
isblank:
.LFB18:
	.cfi_startproc
	cmp	w0, 32
	ccmp	w0, 9, 4, ne
	cset	w0, eq
	ret
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	2
	.p2align 4,,11
	.global	iscntrl
	.type	iscntrl, %function
iscntrl:
.LFB19:
	.cfi_startproc
	cmp	w0, 127
	ccmp	w0, 31, 0, ne
	cset	w0, ls
	ret
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	2
	.p2align 4,,11
	.global	isdigit
	.type	isdigit, %function
isdigit:
.LFB20:
	.cfi_startproc
	sub	w0, w0, #48
	cmp	w0, 9
	cset	w0, ls
	ret
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	2
	.p2align 4,,11
	.global	isgraph
	.type	isgraph, %function
isgraph:
.LFB21:
	.cfi_startproc
	sub	w0, w0, #33
	cmp	w0, 93
	cset	w0, ls
	ret
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	2
	.p2align 4,,11
	.global	islower
	.type	islower, %function
islower:
.LFB22:
	.cfi_startproc
	sub	w0, w0, #97
	cmp	w0, 25
	cset	w0, ls
	ret
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	2
	.p2align 4,,11
	.global	isprint
	.type	isprint, %function
isprint:
.LFB23:
	.cfi_startproc
	sub	w0, w0, #32
	cmp	w0, 94
	cset	w0, ls
	ret
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	2
	.p2align 4,,11
	.global	isspace
	.type	isspace, %function
isspace:
.LFB24:
	.cfi_startproc
	cmp	w0, 32
	sub	w0, w0, #9
	ccmp	w0, 4, 0, ne
	cset	w0, ls
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	2
	.p2align 4,,11
	.global	isupper
	.type	isupper, %function
isupper:
.LFB25:
	.cfi_startproc
	sub	w0, w0, #65
	cmp	w0, 25
	cset	w0, ls
	ret
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	2
	.p2align 4,,11
	.global	iswcntrl
	.type	iswcntrl, %function
iswcntrl:
.LFB26:
	.cfi_startproc
	mov	w1, w0
	sub	w0, w0, #127
	cmp	w0, 32
	mov	w0, 1
	ccmp	w1, 31, 0, hi
	bls	.L149
	mov	w2, -8232
	add	w3, w1, w2
	mov	w0, 1
	cmp	w3, w0
	bls	.L149
	mov	w4, -65529
	add	w5, w1, w4
	cmp	w5, 2
	cset	w0, ls
.L149:
	ret
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	2
	.p2align 4,,11
	.global	iswdigit
	.type	iswdigit, %function
iswdigit:
.LFB27:
	.cfi_startproc
	sub	w0, w0, #48
	cmp	w0, 9
	cset	w0, ls
	ret
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	2
	.p2align 4,,11
	.global	iswprint
	.type	iswprint, %function
iswprint:
.LFB28:
	.cfi_startproc
	mov	w1, w0
	cmp	w0, 254
	bls	.L160
	mov	w2, -8234
	add	w3, w0, w2
	mov	w0, 47061
	cmp	w3, w0
	mov	w4, 8231
	mov	w0, 1
	ccmp	w1, w4, 0, hi
	bls	.L154
	sub	w5, w1, #57344
	mov	w6, 8184
	cmp	w5, w6
	bls	.L154
	mov	w7, -65532
	mov	w9, 3
	add	w8, w1, w7
	movk	w9, 0x10, lsl 16
	mov	w0, 0
	cmp	w8, w9
	bhi	.L154
	and	w10, w1, 65534
	mov	w11, 65534
	cmp	w10, w11
	cset	w0, ne
.L154:
	ret
	.p2align 2,,3
.L160:
	add	w12, w0, 1
	and	w13, w12, 127
	cmp	w13, 32
	cset	w0, hi
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	2
	.p2align 4,,11
	.global	iswxdigit
	.type	iswxdigit, %function
iswxdigit:
.LFB29:
	.cfi_startproc
	sub	w1, w0, #48
	cmp	w1, 9
	bls	.L163
	orr	w0, w0, 32
	sub	w2, w0, #97
	cmp	w2, 5
	cset	w0, ls
	ret
	.p2align 2,,3
.L163:
	mov	w0, 1
	ret
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	2
	.p2align 4,,11
	.global	toascii
	.type	toascii, %function
toascii:
.LFB30:
	.cfi_startproc
	and	w0, w0, 127
	ret
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	2
	.p2align 4,,11
	.global	fdim
	.type	fdim, %function
fdim:
.LFB31:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L168
	fcmp	d1, d1
	bvs	.L169
	fcmpe	d0, d1
	bgt	.L171
	movi	d31, #0
.L165:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L171:
	fsub	d31, d0, d1
	fmov	d0, d31
	ret
	.p2align 2,,3
.L168:
	fmov	d31, d0
	b	.L165
	.p2align 2,,3
.L169:
	fmov	d31, d1
	b	.L165
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	2
	.p2align 4,,11
	.global	fdimf
	.type	fdimf, %function
fdimf:
.LFB32:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L177
	fcmp	s1, s1
	bvs	.L178
	fcmpe	s0, s1
	bgt	.L180
	movi	v31.2s, #0
.L174:
	fmov	s0, s31
	ret
	.p2align 2,,3
.L180:
	fsub	s31, s0, s1
	fmov	s0, s31
	ret
	.p2align 2,,3
.L177:
	fmov	s31, s0
	b	.L174
	.p2align 2,,3
.L178:
	fmov	s31, s1
	b	.L174
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	2
	.p2align 4,,11
	.global	fmax
	.type	fmax, %function
fmax:
.LFB33:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L186
	fcmp	d1, d1
	bvs	.L183
	fmov	x0, d0
	fmov	x1, d1
	lsr	x2, x0, 63
	lsr	x3, x1, 63
	cmp	w2, w3
	beq	.L185
	cmp	w2, 0
	fcsel	d0, d1, d0, ne
.L183:
	ret
	.p2align 2,,3
.L185:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	ret
	.p2align 2,,3
.L186:
	fmov	d0, d1
	ret
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	2
	.p2align 4,,11
	.global	fmaxf
	.type	fmaxf, %function
fmaxf:
.LFB34:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L192
	fcmp	s1, s1
	bvs	.L189
	fmov	w0, s0
	fmov	w1, s1
	and	w2, w0, -2147483648
	and	w3, w1, -2147483648
	cmp	w2, w3
	beq	.L191
	cmp	w2, 0
	fcsel	s0, s1, s0, ne
.L189:
	ret
	.p2align 2,,3
.L191:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	ret
	.p2align 2,,3
.L192:
	fmov	s0, s1
	ret
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	2
	.p2align 4,,11
	.global	fmaxl
	.type	fmaxl, %function
fmaxl:
.LFB35:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	q1, q0, [sp, 16]
	mov	v1.16b, v0.16b
	bl	__unordtf2
	cbnz	w0, .L203
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L202
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x3, x1, 63
	lsr	x2, x0, 63
	cmp	w2, w3
	beq	.L197
	cbz	w2, .L202
.L203:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L197:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbnz	w0, #31, .L203
.L202:
	ldr	q0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	2
	.p2align 4,,11
	.global	fmin
	.type	fmin, %function
fmin:
.LFB36:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L208
	fcmp	d1, d1
	bvs	.L205
	fmov	x0, d0
	fmov	x1, d1
	lsr	x2, x0, 63
	lsr	x3, x1, 63
	cmp	w2, w3
	beq	.L207
	cmp	w2, 0
	fcsel	d0, d0, d1, ne
.L205:
	ret
	.p2align 2,,3
.L207:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	ret
	.p2align 2,,3
.L208:
	fmov	d0, d1
	ret
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	2
	.p2align 4,,11
	.global	fminf
	.type	fminf, %function
fminf:
.LFB37:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L214
	fcmp	s1, s1
	bvs	.L211
	fmov	w0, s0
	fmov	w1, s1
	and	w2, w0, -2147483648
	and	w3, w1, -2147483648
	cmp	w2, w3
	beq	.L213
	cmp	w2, 0
	fcsel	s0, s0, s1, ne
.L211:
	ret
	.p2align 2,,3
.L213:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	ret
	.p2align 2,,3
.L214:
	fmov	s0, s1
	ret
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	2
	.p2align 4,,11
	.global	fminl
	.type	fminl, %function
fminl:
.LFB38:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	q1, q0, [sp, 16]
	mov	v1.16b, v0.16b
	bl	__unordtf2
	cbnz	w0, .L223
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L225
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x3, x1, 63
	lsr	x2, x0, 63
	cmp	w2, w3
	beq	.L219
	cbnz	w2, .L225
.L223:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L219:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L223
.L225:
	ldr	q0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.align	2
	.p2align 4,,11
	.global	l64a
	.type	l64a, %function
l64a:
.LFB39:
	.cfi_startproc
	mov	w1, w0
	cbz	w0, .L230
	adrp	x3, .LANCHOR0
	add	x0, x3, :lo12:.LANCHOR0
	adrp	x4, .LANCHOR1
	mov	x2, x0
	add	x5, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L229:
	and	w6, w1, 63
	lsr	w1, w1, 6
	ldrb	w7, [x5, w6, uxtw]
	strb	w7, [x2], 1
	cbnz	w1, .L229
	strb	wzr, [x2]
	ret
	.p2align 2,,3
.L230:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	mov	x2, x0
	strb	wzr, [x2]
	ret
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.align	2
	.p2align 4,,11
	.global	srand
	.type	srand, %function
srand:
.LFB40:
	.cfi_startproc
	adrp	x1, .LANCHOR0+8
	sub	w0, w0, #1
	str	x0, [x1, #:lo12:.LANCHOR0+8]
	ret
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	2
	.p2align 4,,11
	.global	rand
	.type	rand, %function
rand:
.LFB41:
	.cfi_startproc
	adrp	x1, .LANCHOR0
	add	x3, x1, :lo12:.LANCHOR0
	mov	x2, 32557
	movk	x2, 0x4c95, lsl 16
	ldr	x0, [x3, 8]
	movk	x2, 0xf42d, lsl 32
	movk	x2, 0x5851, lsl 48
	mul	x4, x0, x2
	add	x5, x4, 1
	str	x5, [x3, 8]
	lsr	x0, x5, 33
	ret
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	2
	.p2align 4,,11
	.global	insque
	.type	insque, %function
insque:
.LFB42:
	.cfi_startproc
	cbz	x1, .L240
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L234
	str	x0, [x1, 8]
.L234:
	ret
	.p2align 2,,3
.L240:
	stp	xzr, xzr, [x0]
	ret
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	2
	.p2align 4,,11
	.global	remque
	.type	remque, %function
remque:
.LFB43:
	.cfi_startproc
	ldr	x1, [x0]
	cbz	x1, .L242
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L242:
	ldr	x0, [x0, 8]
	cbz	x0, .L241
	str	x1, [x0]
.L241:
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	2
	.p2align 4,,11
	.global	lsearch
	.type	lsearch, %function
lsearch:
.LFB44:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x0
	mov	x21, x3
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x25, x2
	mov	x26, x1
	ldr	x24, [x2]
	str	x27, [sp, 80]
	.cfi_offset 27, -16
	cbz	x24, .L251
	mov	x23, x4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x19, x1
	mov	x20, 0
	b	.L253
	.p2align 2,,3
.L268:
	add	x19, x19, x21
	cmp	x24, x20
	beq	.L267
.L253:
	mov	x1, x19
	mov	x0, x22
	mov	x27, x19
	add	x20, x20, 1
	blr	x23
	cbnz	w0, .L268
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L250:
	mov	x0, x27
	ldr	x27, [sp, 80]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L267:
	.cfi_def_cfa_offset 96
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L251:
	add	x0, x24, 1
	str	x0, [x25]
	madd	x27, x21, x24, x26
	cbz	x21, .L250
	mov	x2, x21
	mov	x1, x22
	mov	x0, x27
	bl	memmove
	mov	x0, x27
	ldr	x27, [sp, 80]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	2
	.p2align 4,,11
	.global	lfind
	.type	lfind, %function
lfind:
.LFB45:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	ldr	x24, [x2]
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	cbz	x24, .L270
	mov	x23, x3
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	mov	x19, x1
	mov	x20, 0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	x21, x0
	mov	x22, x4
	b	.L272
	.p2align 2,,3
.L283:
	add	x19, x19, x23
	cmp	x24, x20
	beq	.L282
.L272:
	mov	x1, x19
	mov	x0, x21
	mov	x25, x19
	add	x20, x20, 1
	blr	x22
	cbnz	w0, .L283
	mov	x0, x25
	ldr	x25, [sp, 64]
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L282:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L270:
	mov	x25, 0
	ldp	x23, x24, [sp, 48]
	mov	x0, x25
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	2
	.p2align 4,,11
	.global	abs
	.type	abs, %function
abs:
.LFB46:
	.cfi_startproc
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	ret
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	2
	.p2align 4,,11
	.global	atoi
	.type	atoi, %function
atoi:
.LFB47:
	.cfi_startproc
	ldrb	w1, [x0]
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bhi	.L286
	.p2align 3,,7
.L287:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w3, w1, #9
	ccmp	w3, 4, 0, ne
	bls	.L287
.L286:
	cmp	w1, 43
	beq	.L288
	cmp	w1, 45
	bne	.L308
	ldrb	w5, [x0, 1]
	add	x0, x0, 1
	sub	w7, w5, #48
	cmp	w7, 9
	bhi	.L297
	mov	w6, 1
.L291:
	mov	w11, 0
	.p2align 3,,7
.L294:
	add	w8, w11, w11, lsl 2
	ldrb	w9, [x0, 1]!
	mov	w1, w7
	lsl	w10, w8, 1
	sub	w11, w10, w7
	sub	w7, w9, #48
	cmp	w7, 9
	bls	.L294
	sub	w0, w1, w10
	cmp	w6, 0
	csel	w0, w0, w11, eq
	ret
	.p2align 2,,3
.L308:
	sub	w7, w1, #48
	mov	w6, 0
	cmp	w7, 9
	bls	.L291
.L297:
	mov	w0, 0
.L309:
	ret
	.p2align 2,,3
.L288:
	ldrb	w4, [x0, 1]
	mov	w6, 0
	add	x0, x0, 1
	sub	w7, w4, #48
	cmp	w7, 9
	bls	.L291
	mov	w0, 0
	b	.L309
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	2
	.p2align 4,,11
	.global	atol
	.type	atol, %function
atol:
.LFB48:
	.cfi_startproc
	ldrb	w1, [x0]
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bhi	.L311
	.p2align 3,,7
.L312:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w3, w1, #9
	ccmp	w3, 4, 0, ne
	bls	.L312
.L311:
	cmp	w1, 43
	beq	.L313
	cmp	w1, 45
	bne	.L333
	ldrb	w5, [x0, 1]
	add	x0, x0, 1
	sub	w7, w5, #48
	cmp	w7, 9
	bhi	.L322
	mov	w6, 1
.L316:
	mov	x12, 0
	.p2align 3,,7
.L319:
	add	x8, x12, x12, lsl 2
	ldrb	w9, [x0, 1]!
	sxtw	x10, w7
	lsl	x11, x8, 1
	sub	w7, w9, #48
	sub	x12, x11, x10
	cmp	w7, 9
	bls	.L319
	sub	x0, x10, x11
	cmp	w6, 0
	csel	x0, x0, x12, eq
	ret
	.p2align 2,,3
.L333:
	sub	w7, w1, #48
	mov	w6, 0
	cmp	w7, 9
	bls	.L316
.L322:
	mov	x0, 0
.L334:
	ret
	.p2align 2,,3
.L313:
	ldrb	w4, [x0, 1]
	mov	w6, 0
	add	x0, x0, 1
	sub	w7, w4, #48
	cmp	w7, 9
	bls	.L316
	mov	x0, 0
	b	.L334
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	2
	.p2align 4,,11
	.global	atoll
	.type	atoll, %function
atoll:
.LFB171:
	.cfi_startproc
	ldrb	w1, [x0]
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bhi	.L336
	.p2align 3,,7
.L337:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w3, w1, #9
	ccmp	w3, 4, 0, ne
	bls	.L337
.L336:
	cmp	w1, 43
	beq	.L338
	cmp	w1, 45
	beq	.L355
	sub	w7, w1, #48
	mov	w6, 0
	cmp	w7, 9
	bhi	.L346
.L340:
	mov	x12, 0
	.p2align 3,,7
.L343:
	add	x8, x12, x12, lsl 2
	ldrb	w9, [x0, 1]!
	sxtw	x10, w7
	lsl	x11, x8, 1
	sub	w7, w9, #48
	sub	x12, x11, x10
	cmp	w7, 9
	bls	.L343
	sub	x0, x10, x11
	cmp	w6, 0
	csel	x0, x0, x12, eq
	ret
	.p2align 2,,3
.L355:
	ldrb	w5, [x0, 1]
	mov	w6, 1
	add	x0, x0, 1
	sub	w7, w5, #48
	cmp	w7, 9
	bls	.L340
.L346:
	mov	x0, 0
	ret
	.p2align 2,,3
.L338:
	ldrb	w4, [x0, 1]
	add	x0, x0, 1
	sub	w7, w4, #48
	cmp	w7, 9
	bhi	.L346
	mov	w6, 0
	b	.L340
	.cfi_endproc
.LFE171:
	.size	atoll, .-atoll
	.align	2
	.p2align 4,,11
	.global	bsearch
	.type	bsearch, %function
bsearch:
.LFB50:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	cbz	x2, .L357
	mov	x22, x1
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	mov	x19, x2
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	mov	x24, x0
	mov	x23, x3
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	mov	x25, x4
	.p2align 3,,7
.L360:
	lsr	x20, x19, 1
	mov	x0, x24
	sub	x19, x19, #1
	madd	x21, x20, x23, x22
	mov	x1, x21
	blr	x25
	cmp	w0, 0
	blt	.L361
	beq	.L367
	add	x22, x21, x23
	sub	x19, x19, x20
	cbnz	x19, .L360
.L368:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L357:
	mov	x21, 0
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L361:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x19, x20
	cbnz	x19, .L360
	b	.L368
	.p2align 2,,3
.L367:
	ldr	x25, [sp, 64]
	.cfi_restore 25
	mov	x0, x21
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	2
	.p2align 4,,11
	.global	bsearch_r
	.type	bsearch_r, %function
bsearch_r:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	w19, w2
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x21, x1
	mov	x22, x3
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x23, x0
	mov	x24, x4
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x25, x5
	cbz	w2, .L374
	.p2align 3,,7
.L382:
	asr	w26, w19, 1
	mov	x2, x25
	mov	x0, x23
	sub	w19, w19, #1
	sxtw	x20, w26
	madd	x20, x20, x22, x21
	mov	x1, x20
	blr	x24
	cmp	w0, 0
	cbz	w0, .L369
	ble	.L372
	add	x21, x20, x22
	asr	w19, w19, 1
	cbnz	w19, .L382
.L374:
	mov	x20, 0
.L369:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L372:
	.cfi_restore_state
	cbz	w26, .L374
	mov	w19, w26
	b	.L382
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.p2align 4,,11
	.global	div
	.type	div, %function
div:
.LFB52:
	.cfi_startproc
	mov	w2, w0
	mov	x0, 0
	sdiv	w3, w2, w1
	msub	w1, w3, w1, w2
	bfi	x0, x3, 0, 32
	bfi	x0, x1, 32, 32
	ret
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	2
	.p2align 4,,11
	.global	imaxabs
	.type	imaxabs, %function
imaxabs:
.LFB53:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	2
	.p2align 4,,11
	.global	imaxdiv
	.type	imaxdiv, %function
imaxdiv:
.LFB54:
	.cfi_startproc
	mov	x2, x0
	sdiv	x0, x0, x1
	msub	x1, x0, x1, x2
	ret
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	2
	.p2align 4,,11
	.global	labs
	.type	labs, %function
labs:
.LFB167:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE167:
	.size	labs, .-labs
	.align	2
	.p2align 4,,11
	.global	ldiv
	.type	ldiv, %function
ldiv:
.LFB56:
	.cfi_startproc
	mov	x2, x0
	sdiv	x0, x0, x1
	msub	x1, x0, x1, x2
	ret
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	2
	.p2align 4,,11
	.global	llabs
	.type	llabs, %function
llabs:
.LFB169:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE169:
	.size	llabs, .-llabs
	.align	2
	.p2align 4,,11
	.global	lldiv
	.type	lldiv, %function
lldiv:
.LFB58:
	.cfi_startproc
	mov	x2, x0
	sdiv	x0, x0, x1
	msub	x1, x0, x1, x2
	ret
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	2
	.p2align 4,,11
	.global	wcschr
	.type	wcschr, %function
wcschr:
.LFB59:
	.cfi_startproc
	ldr	w2, [x0]
	cbnz	w2, .L393
	b	.L396
	.p2align 2,,3
.L395:
	ldr	w2, [x0, 4]!
	cbz	w2, .L396
.L393:
	cmp	w1, w2
	bne	.L395
	ret
	.p2align 2,,3
.L396:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	2
	.p2align 4,,11
	.global	wcscmp
	.type	wcscmp, %function
wcscmp:
.LFB60:
	.cfi_startproc
	sub	x4, x1, #4
	ldr	w3, [x0]
	ldr	w1, [x1]
	mov	x2, 4
	cmp	w3, w1
	bne	.L402
	.p2align 3,,7
.L401:
	cbz	w3, .L402
	ldr	w3, [x0, x2]
	add	x2, x2, 4
	ldr	w1, [x4, x2]
	cmp	w3, w1
	beq	.L401
.L402:
	cmp	w3, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	2
	.p2align 4,,11
	.global	wcscpy
	.type	wcscpy, %function
wcscpy:
.LFB61:
	.cfi_startproc
	mov	x2, 0
	.p2align 3,,7
.L410:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L410
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	2
	.p2align 4,,11
	.global	wcslen
	.type	wcslen, %function
wcslen:
.LFB62:
	.cfi_startproc
	ldr	w1, [x0]
	cbz	w1, .L415
	mov	x3, x0
	.p2align 3,,7
.L414:
	ldr	w2, [x3, 4]!
	cbnz	w2, .L414
	sub	x0, x3, x0
	asr	x0, x0, 2
	ret
	.p2align 2,,3
.L415:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.p2align 4,,11
	.global	wcsncmp
	.type	wcsncmp, %function
wcsncmp:
.LFB63:
	.cfi_startproc
	cbnz	x2, .L418
	b	.L426
	.p2align 2,,3
.L420:
	subs	x2, x2, #1
	beq	.L426
.L418:
	ldr	w3, [x0]
	add	x1, x1, 4
	ldr	w4, [x1, -4]
	add	x0, x0, 4
	cmp	w3, 0
	ccmp	w4, w3, 0, ne
	beq	.L420
	cmp	w3, w4
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L426:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.p2align 4,,11
	.global	wmemchr
	.type	wmemchr, %function
wmemchr:
.LFB64:
	.cfi_startproc
	cbnz	x2, .L432
	b	.L438
	.p2align 2,,3
.L434:
	add	x0, x0, 4
	subs	x2, x2, #1
	beq	.L438
.L432:
	ldr	w3, [x0]
	cmp	w3, w1
	bne	.L434
	ret
	.p2align 2,,3
.L438:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	2
	.p2align 4,,11
	.global	wmemcmp
	.type	wmemcmp, %function
wmemcmp:
.LFB65:
	.cfi_startproc
	cbnz	x2, .L442
	b	.L450
	.p2align 2,,3
.L444:
	subs	x2, x2, #1
	beq	.L450
.L442:
	ldr	w4, [x0]
	add	x1, x1, 4
	ldr	w3, [x1, -4]
	add	x0, x0, 4
	cmp	w4, w3
	beq	.L444
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L450:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.p2align 4,,11
	.global	wmemcpy
	.type	wmemcpy, %function
wmemcpy:
.LFB66:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	cbz	x2, .L456
	lsl	x2, x2, 2
	bl	memcpy
.L456:
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.p2align 4,,11
	.global	wmemmove
	.type	wmemmove, %function
wmemmove:
.LFB67:
	.cfi_startproc
	cmp	x0, x1
	beq	.L481
	lsl	x4, x2, 2
	sub	x5, x0, x1
	sub	x3, x2, #1
	cmp	x5, x4
	bcs	.L492
	cbz	x2, .L481
	cmp	x3, 13
	cntw	x13
	sub	x14, x13, #1
	ccmp	x3, x14, 0, hi
	bcc	.L466
	sub	x15, x4, #4
	sub	x16, x4, #8
	add	x17, x0, x15
	add	x18, x1, x16
	sub	x5, x17, x18
	cntb	x6
	sub	x7, x6, #8
	add	x8, x5, x7
	cmp	x8, x7
	bls	.L466
	rdvl	x10, #-1
	add	x4, x4, x10
	sub	x9, x2, x13
	add	x12, x1, x4
	add	x14, x0, x4
	mov	x11, 0
	ptrue	p0.b, all
	.p2align 3,,7
.L467:
	ld1w	z30.s, p0/z, [x12]
	add	x11, x11, x13
	st1w	z30.s, p0, [x14]
	add	x12, x12, x10
	add	x14, x14, x10
	cmp	x9, x11
	bcs	.L467
	sub	x3, x3, x11
	cmp	x2, x11
	beq	.L481
	add	x2, x3, 1
	.p2align 3,,7
.L470:
	ldr	w13, [x1, x3, lsl 2]
	subs	x2, x2, #1
	str	w13, [x0, x3, lsl 2]
	sub	x3, x3, #1
	bne	.L470
.L481:
	ret
	.p2align 2,,3
.L492:
	cbz	x2, .L481
	cmp	x3, 2
	bls	.L477
	add	x3, x1, 4
	cntb	x6
	sub	x7, x0, x3
	sub	x8, x6, #8
	cmp	x7, x8
	mov	x12, 0
	bls	.L475
	cntw	x9
	mov	x10, x2
	whilelo	p7.s, xzr, x2
	uqdecw	x10
	.p2align 3,,7
.L474:
	ld1w	z31.s, p7/z, [x1, x12, lsl 2]
	st1w	z31.s, p7, [x0, x12, lsl 2]
	whilelo	p7.s, x12, x10
	add	x12, x12, x9
	b.any	.L474
	ret
	.p2align 2,,3
.L477:
	mov	x12, 0
	.p2align 3,,7
.L475:
	ldr	w11, [x1, x12, lsl 2]
	subs	x2, x2, #1
	str	w11, [x0, x12, lsl 2]
	add	x12, x12, 1
	beq	.L481
	ldr	w11, [x1, x12, lsl 2]
	subs	x2, x2, #1
	str	w11, [x0, x12, lsl 2]
	add	x12, x12, 1
	bne	.L475
	b	.L481
	.p2align 2,,3
.L466:
	add	x16, x3, 1
	.p2align 3,,7
.L471:
	ldr	w15, [x1, x3, lsl 2]
	subs	x16, x16, #1
	str	w15, [x0, x3, lsl 2]
	sub	x3, x3, #1
	bne	.L471
	ret
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	2
	.p2align 4,,11
	.global	wmemset
	.type	wmemset, %function
wmemset:
.LFB68:
	.cfi_startproc
	cbz	x2, .L494
	mov	x3, 0
	cntw	x4
	mov	z31.s, w1
	whilelo	p7.s, xzr, x2
	mov	x1, x2
	uqdecw	x1
	.p2align 3,,7
.L495:
	st1w	z31.s, p7, [x0, x3, lsl 2]
	whilelo	p7.s, x3, x1
	add	x3, x3, x4
	b.any	.L495
.L494:
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	2
	.p2align 4,,11
	.global	bcopy
	.type	bcopy, %function
bcopy:
.LFB69:
	.cfi_startproc
	mov	x12, x0
	cmp	x0, x1
	bcs	.L501
	cbz	x2, .L500
	sub	x3, x2, #1
	cnth	x9
	cmp	x3, 14
	sub	x10, x9, #1
	ccmp	x3, x10, 0, hi
	bcc	.L503
	sub	x11, x2, #2
	add	x13, x1, x3
	add	x14, x0, x11
	cntb	x15
	sub	x16, x13, x14
	sub	x17, x15, #2
	add	x18, x16, x17
	cmp	x18, x17
	bls	.L503
	sub	x0, x15, #1
	add	x6, x12, x2
	add	x5, x1, x2
	cmp	x3, x0
	bcc	.L516
	rdvl	x9, #-1
	add	x8, x2, x9
	add	x11, x12, x8
	add	x10, x1, x8
	mov	x3, 0
	mov	x4, 0
	ptrue	p0.b, all
	.p2align 3,,7
.L505:
	ld1b	z30.b, p0/z, [x11, x3]
	add	x4, x4, x15
	st1b	z30.b, p0, [x10, x3]
	add	x3, x3, x9
	cmp	x8, x4
	bcs	.L505
	sub	x7, x2, x4
	sub	x6, x6, x4
	sub	x5, x5, x4
	mov	x0, x7
	cmp	x2, x4
	beq	.L500
.L504:
	cnth	x2
	sub	x13, x7, #1
	sub	x14, x2, #1
	cmp	x13, x14
	bcc	.L507
	sub	x15, x7, x2
	ptrue	p1.b, all
	ld1b	z29.h, p1/z, [x12, x15]
	st1b	z29.h, p1, [x1, x15]
	add	x12, x12, x15
	add	x1, x1, x15
	cmp	x15, x2
	bcs	.L535
.L508:
	sub	x0, x0, x2
	sub	x6, x6, x2
	sub	x5, x5, x2
	cmp	x7, x2
	beq	.L500
.L507:
	mvn	x16, x0
	mov	x9, x0
	add	x17, x6, x16
	add	x18, x5, x16
	.p2align 3,,7
.L510:
	ldrb	w7, [x17, x0]
	subs	x9, x9, #1
	strb	w7, [x18, x0]
	sub	x0, x0, #1
	bne	.L510
.L500:
	ret
	.p2align 2,,3
.L501:
	beq	.L500
	cbz	x2, .L500
	add	x0, x0, 1
	cntb	x5
	sub	x4, x1, x0
	sub	x3, x5, #2
	cmp	x4, x3
	mov	x8, 0
	bls	.L513
	mov	x6, x2
	whilelo	p7.b, xzr, x2
	uqdecb	x6
	.p2align 3,,7
.L514:
	ld1b	z31.b, p7/z, [x12, x8]
	st1b	z31.b, p7, [x1, x8]
	whilelo	p7.b, x8, x6
	add	x8, x8, x5
	b.any	.L514
	ret
	.p2align 2,,3
.L513:
	ldrb	w7, [x12, x8]
	subs	x2, x2, #1
	strb	w7, [x1, x8]
	add	x8, x8, 1
	beq	.L500
	ldrb	w7, [x12, x8]
	subs	x2, x2, #1
	strb	w7, [x1, x8]
	add	x8, x8, 1
	bne	.L513
	b	.L500
	.p2align 2,,3
.L535:
	ld1b	z28.h, p1/z, [x12, #-1, mul vl]
	cntb	x2
	st1b	z28.h, p1, [x1, #-1, mul vl]
	b	.L508
	.p2align 2,,3
.L503:
	sub	x8, x12, #1
	sub	x11, x1, #1
	add	x4, x3, 1
	.p2align 3,,7
.L511:
	ldrb	w10, [x8, x2]
	subs	x4, x4, #1
	strb	w10, [x11, x2]
	mov	x2, x3
	sub	x3, x3, #1
	bne	.L511
	ret
.L516:
	mov	x0, x2
	mov	x7, x2
	b	.L504
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	2
	.p2align 4,,11
	.global	rotl64
	.type	rotl64, %function
rotl64:
.LFB70:
	.cfi_startproc
	neg	w1, w1
	ror	x0, x0, x1
	ret
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	2
	.p2align 4,,11
	.global	rotr64
	.type	rotr64, %function
rotr64:
.LFB71:
	.cfi_startproc
	ror	x0, x0, x1
	ret
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	2
	.p2align 4,,11
	.global	rotl32
	.type	rotl32, %function
rotl32:
.LFB72:
	.cfi_startproc
	neg	w1, w1
	ror	w0, w0, w1
	ret
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	2
	.p2align 4,,11
	.global	rotr32
	.type	rotr32, %function
rotr32:
.LFB73:
	.cfi_startproc
	ror	w0, w0, w1
	ret
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	2
	.p2align 4,,11
	.global	rotl_sz
	.type	rotl_sz, %function
rotl_sz:
.LFB173:
	.cfi_startproc
	neg	w1, w1
	ror	x0, x0, x1
	ret
	.cfi_endproc
.LFE173:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.p2align 4,,11
	.global	rotr_sz
	.type	rotr_sz, %function
rotr_sz:
.LFB175:
	.cfi_startproc
	ror	x0, x0, x1
	ret
	.cfi_endproc
.LFE175:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.p2align 4,,11
	.global	rotl16
	.type	rotl16, %function
rotl16:
.LFB76:
	.cfi_startproc
	and	w1, w1, 15
	and	w0, w0, 65535
	neg	w2, w1
	and	w3, w2, 15
	lsl	w4, w0, w1
	lsr	w5, w0, w3
	orr	w0, w4, w5
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	2
	.p2align 4,,11
	.global	rotr16
	.type	rotr16, %function
rotr16:
.LFB77:
	.cfi_startproc
	and	w1, w1, 15
	and	w0, w0, 65535
	neg	w2, w1
	and	w3, w2, 15
	lsr	w4, w0, w1
	lsl	w5, w0, w3
	orr	w0, w4, w5
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	2
	.p2align 4,,11
	.global	rotl8
	.type	rotl8, %function
rotl8:
.LFB78:
	.cfi_startproc
	and	w1, w1, 7
	and	w0, w0, 255
	neg	w2, w1
	and	w3, w2, 7
	lsl	w4, w0, w1
	lsr	w5, w0, w3
	orr	w0, w4, w5
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	2
	.p2align 4,,11
	.global	rotr8
	.type	rotr8, %function
rotr8:
.LFB79:
	.cfi_startproc
	and	w1, w1, 7
	and	w0, w0, 255
	neg	w2, w1
	and	w3, w2, 7
	lsr	w4, w0, w1
	lsl	w5, w0, w3
	orr	w0, w4, w5
	ret
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	2
	.p2align 4,,11
	.global	bswap_16
	.type	bswap_16, %function
bswap_16:
.LFB80:
	.cfi_startproc
	rev16	w0, w0
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	2
	.p2align 4,,11
	.global	bswap_32
	.type	bswap_32, %function
bswap_32:
.LFB81:
	.cfi_startproc
	rev	w0, w0
	ret
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	2
	.p2align 4,,11
	.global	bswap_64
	.type	bswap_64, %function
bswap_64:
.LFB82:
	.cfi_startproc
	rev	x0, x0
	ret
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	2
	.p2align 4,,11
	.global	ffs
	.type	ffs, %function
ffs:
.LFB83:
	.cfi_startproc
	cntw	x1
	cmp	w1, 31
	bhi	.L556
	mov	w4, 32
	mov	x5, 0
	cntw	x3
	mov	z26.s, w0
	whilelo	p0.s, wzr, w4
	index	z27.s, w4, #-1
	index	z28.s, #0, #1
	ptrue	p6.b, all
	ptrue	p15.s, all
	b	.L553
	.p2align 2,,3
.L551:
	add	x5, x5, x3
	whilelo	p0.s, w5, w4
	b.none	.L559
.L553:
	mov	z31.d, z28.d
	mov	z30.d, z27.d
	movprfx	z29, z26
	lsr	z29.s, p6/m, z29.s, z31.s
	incw	z28.s
	and	z29.s, z29.s, #0x1
	decw	z27.s
	cmpne	p7.s, p0/z, z29.s, #0
	ptest	p15, p7.b
	b.none	.L551
	umov	w2, v30.s[0]
	umov	w8, v31.s[0]
.L550:
	sub	w6, w2, #1
	add	x9, x6, 1
	b	.L555
	.p2align 2,,3
.L560:
	subs	x9, x9, #1
	beq	.L559
.L555:
	lsr	w7, w0, w8
	add	w8, w8, 1
	tbz	x7, 0, .L560
	mov	w0, w8
	ret
	.p2align 2,,3
.L559:
	mov	w0, 0
	ret
.L556:
	mov	w8, 0
	mov	w2, 32
	b	.L550
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	2
	.p2align 4,,11
	.global	libiberty_ffs
	.type	libiberty_ffs, %function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mov	w1, w0
	mov	w0, 0
	cbz	w1, .L561
	and	w0, w1, 1
	tbnz	x1, 0, .L561
	mov	w0, 1
	.p2align 3,,7
.L563:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L563
.L561:
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.p2align 4,,11
	.global	gl_isinff
	.type	gl_isinff, %function
gl_isinff:
.LFB85:
	.cfi_startproc
	mvni	v31.2s, 0x80, lsl 16
	mov	w0, 1
	fcmpe	s0, s31
	bmi	.L567
	mov	w0, 2139095039
	fmov	s1, w0
	fcmpe	s0, s1
	cset	w0, gt
.L567:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.p2align 4,,11
	.global	gl_isinfd
	.type	gl_isinfd, %function
gl_isinfd:
.LFB86:
	.cfi_startproc
	mov	x0, -4503599627370497
	fmov	d31, x0
	mov	w0, 1
	fcmpe	d0, d31
	bmi	.L570
	mov	x1, 9218868437227405311
	fmov	d1, x1
	fcmpe	d0, d1
	cset	w0, gt
.L570:
	ret
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.p2align 4,,11
	.global	gl_isinfl
	.type	gl_isinfl, %function
gl_isinfl:
.LFB87:
	.cfi_startproc
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	ldr	q1, [x1]
	str	q0, [sp, 16]
	bl	__lttf2
	mov	w2, w0
	mov	w0, 1
	tbnz	w2, #31, .L573
	adrp	x3, .LC1
	add	x4, x3, :lo12:.LC1
	ldr	q0, [sp, 16]
	ldr	q1, [x4]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L573:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.p2align 4,,11
	.global	_Qp_itoq
	.type	_Qp_itoq, %function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	scvtf	d0, w1
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	bl	__extenddftf2
	str	q0, [x19]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.p2align 4,,11
	.global	ldexpf
	.type	ldexpf, %function
ldexpf:
.LFB89:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L582
	fadd	s1, s0, s0
	fcmp	s1, s0
	beq	.L582
	cmp	w0, 0
	fmov	s30, 2.0e+0
	fmov	s31, 5.0e-1
	fcsel	s2, s30, s31, ge
	tbz	x0, 0, .L584
	.p2align 3,,7
.L585:
	fmul	s0, s0, s2
.L584:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L582
	fmul	s2, s2, s2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L585
.L594:
	asr	w0, w1, 1
	fmul	s2, s2, s2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L585
	b	.L594
	.p2align 2,,3
.L582:
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	2
	.p2align 4,,11
	.global	ldexp
	.type	ldexp, %function
ldexp:
.LFB90:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L596
	fadd	d1, d0, d0
	fcmp	d1, d0
	beq	.L596
	cmp	w0, 0
	fmov	d30, 2.0e+0
	fmov	d31, 5.0e-1
	fcsel	d2, d30, d31, ge
	tbz	x0, 0, .L598
	.p2align 3,,7
.L599:
	fmul	d0, d0, d2
.L598:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L596
	fmul	d2, d2, d2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L599
.L608:
	asr	w0, w1, 1
	fmul	d2, d2, d2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L599
	b	.L608
	.p2align 2,,3
.L596:
	ret
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	2
	.p2align 4,,11
	.global	ldexpl
	.type	ldexpl, %function
ldexpl:
.LFB91:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	v1.16b, v0.16b
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	mov	w19, w0
	str	q0, [sp, 32]
	bl	__unordtf2
	cbnz	w0, .L610
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L610
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	q1, [x1]
	tbnz	w19, #31, .L625
.L612:
	tbz	x19, 0, .L613
	.p2align 3,,7
.L614:
	ldr	q0, [sp, 32]
	str	q1, [sp, 48]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	q1, [sp, 48]
.L613:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L610
	mov	v0.16b, v1.16b
	bl	__multf3
	add	w4, w19, w19, lsr 31
	mov	v1.16b, v0.16b
	tbnz	x19, 0, .L614
.L626:
	asr	w19, w4, 1
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
	add	w4, w19, w19, lsr 31
	tbnz	x19, 0, .L614
	b	.L626
	.p2align 2,,3
.L610:
	ldr	x19, [sp, 16]
	ldr	q0, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L625:
	.cfi_restore_state
	adrp	x2, .LC3
	add	x3, x2, :lo12:.LC3
	ldr	q1, [x3]
	b	.L612
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	2
	.p2align 4,,11
	.global	memxor
	.type	memxor, %function
memxor:
.LFB92:
	.cfi_startproc
	cbz	x2, .L628
	mov	x3, 0
	cntb	x5
	mov	x4, x2
	whilelo	p7.b, xzr, x2
	uqdecb	x4
	.p2align 3,,7
.L629:
	ld1b	z31.b, p7/z, [x1, x3]
	ld1b	z30.b, p7/z, [x0, x3]
	eor	z0.d, z30.d, z31.d
	st1b	z0.b, p7, [x0, x3]
	whilelo	p7.b, x3, x4
	add	x3, x3, x5
	b.any	.L629
.L628:
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	2
	.p2align 4,,11
	.global	strncat
	.type	strncat, %function
strncat:
.LFB93:
	.cfi_startproc
	ldrb	w3, [x0]
	cbz	w3, .L641
	mov	x6, x0
	.p2align 3,,7
.L636:
	ldrb	w4, [x6, 1]!
	cbnz	w4, .L636
.L635:
	cbnz	x2, .L637
	b	.L638
	.p2align 2,,3
.L639:
	beq	.L638
.L637:
	ldrb	w5, [x1]
	subs	x2, x2, #1
	strb	w5, [x6]
	add	x1, x1, 1
	add	x6, x6, 1
	cbnz	w5, .L639
	ret
	.p2align 2,,3
.L638:
	strb	wzr, [x6]
	ret
	.p2align 2,,3
.L641:
	mov	x6, x0
	b	.L635
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	2
	.p2align 4,,11
	.global	strnlen
	.type	strnlen, %function
strnlen:
.LFB94:
	.cfi_startproc
	mov	x2, x0
	mov	x0, 0
	cbz	x1, .L648
.L649:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L651
.L648:
	ret
	.p2align 2,,3
.L651:
	add	x0, x0, 1
	subs	x1, x1, #1
	bne	.L649
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	2
	.p2align 4,,11
	.global	strpbrk
	.type	strpbrk, %function
strpbrk:
.LFB95:
	.cfi_startproc
	ldrb	w4, [x0]
	cbz	w4, .L663
.L659:
	mov	x2, x1
	b	.L662
	.p2align 2,,3
.L661:
	cmp	w3, w4
	beq	.L660
.L662:
	ldrb	w3, [x2]
	add	x2, x2, 1
	cbnz	w3, .L661
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L659
.L663:
	mov	x0, 0
.L660:
	ret
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	2
	.p2align 4,,11
	.global	strrchr
	.type	strrchr, %function
strrchr:
.LFB96:
	.cfi_startproc
	mov	x2, x0
	mov	x0, 0
	.p2align 3,,7
.L668:
	ldrb	w3, [x2]
	cmp	w3, w1
	csel	x0, x2, x0, eq
	add	x2, x2, 1
	cbnz	w3, .L668
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	2
	.p2align 4,,11
	.global	strstr
	.type	strstr, %function
strstr:
.LFB97:
	.cfi_startproc
	ldrb	w8, [x1]
	mov	x5, x0
	cbz	w8, .L681
	mov	x7, x1
	.p2align 3,,7
.L672:
	ldrb	w0, [x7, 1]!
	cbnz	w0, .L672
	subs	x10, x7, x1
	mov	x0, x5
	sub	x9, x1, #1
	bne	.L686
	b	.L670
	.p2align 2,,3
.L688:
	add	x5, x5, 1
	cbz	w2, .L687
.L686:
	ldrb	w2, [x5]
	cmp	w2, w8
	bne	.L688
	mov	w11, w8
	mov	x4, x1
	mov	x6, x5
	b	.L677
	.p2align 2,,3
.L676:
	ldrb	w2, [x6, 1]!
	add	x13, x4, 1
	ldrb	w11, [x4, 1]
	cbz	w2, .L675
	mov	x4, x13
.L677:
	cmp	w11, 0
	sub	x3, x10, x4
	ccmp	w2, w11, 0, ne
	add	x12, x9, x3
	ccmp	x12, 0, 4, eq
	bne	.L676
.L675:
	cmp	w2, w11
	beq	.L681
	add	x5, x5, 1
	b	.L686
	.p2align 2,,3
.L687:
	mov	x0, 0
.L670:
	ret
.L681:
	mov	x0, x5
	ret
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	2
	.p2align 4,,11
	.global	copysign
	.type	copysign, %function
copysign:
.LFB98:
	.cfi_startproc
	fcmpe	d0, #0.0
	bmi	.L696
	bgt	.L697
	ret
	.p2align 2,,3
.L697:
	fcmpe	d1, #0.0
	bmi	.L692
	ret
	.p2align 2,,3
.L692:
	fneg	d0, d0
	ret
	.p2align 2,,3
.L696:
	fcmpe	d1, #0.0
	bgt	.L692
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	2
	.p2align 4,,11
	.global	memmem
	.type	memmem, %function
memmem:
.LFB99:
	.cfi_startproc
	cbz	x3, .L700
	cmp	x1, x3
	bcc	.L711
	sub	x1, x1, x3
	adds	x8, x0, x1
	bcs	.L711
	ldrb	w9, [x2]
	b	.L706
	.p2align 2,,3
.L710:
	mov	x0, x5
.L702:
	cmp	x8, x0
	bcc	.L711
.L706:
	mov	x5, x0
	ldrb	w4, [x5], 1
	cmp	w4, w9
	bne	.L710
	cmp	x3, 1
	beq	.L700
.L705:
	sub	x13, x3, #1
	mov	x10, 1
	b	.L703
	.p2align 2,,3
.L704:
	subs	x13, x13, #1
	beq	.L700
.L703:
	ldrb	w7, [x0, x10]
	ldrb	w6, [x2, x10]
	add	x10, x10, 1
	cmp	w7, w6
	beq	.L704
	cmp	x8, x5
	bcc	.L711
	mov	x0, x5
	ldrb	w11, [x0], 1
	cmp	w9, w11
	bne	.L702
	mov	x12, x5
	mov	x5, x0
	mov	x0, x12
	b	.L705
	.p2align 2,,3
.L711:
	mov	x0, 0
.L700:
	ret
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	2
	.p2align 4,,11
	.global	mempcpy
	.type	mempcpy, %function
mempcpy:
.LFB100:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	mov	x19, x2
	cbz	x2, .L721
	bl	memmove
.L721:
	add	x0, x20, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	2
	.p2align 4,,11
	.global	frexp
	.type	frexp, %function
frexp:
.LFB101:
	.cfi_startproc
	fcmpe	d0, #0.0
	bmi	.L743
	fmov	d2, 1.0e+0
	mov	w2, 0
	fcmpe	d0, d2
	bge	.L729
	fmov	d1, 5.0e-1
	fcmpe	d0, d1
	bmi	.L744
.L732:
	str	wzr, [x0]
.L726:
	ret
	.p2align 2,,3
.L738:
	fmov	d0, d30
	mov	w2, 1
.L729:
	mov	w1, 0
	fmov	d5, 5.0e-1
	fmov	d4, 1.0e+0
	.p2align 3,,7
.L735:
	fmul	d0, d0, d5
	add	w1, w1, 1
	fcmpe	d0, d4
	bge	.L735
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d0, d31, d0, ne
.L749:
	ret
	.p2align 2,,3
.L743:
	fmov	d6, -1.0e+0
	fneg	d30, d0
	fcmpe	d0, d6
	bls	.L738
	fmov	d3, -5.0e-1
	fcmpe	d0, d3
	bgt	.L739
	str	wzr, [x0]
	b	.L726
	.p2align 2,,3
.L744:
	fcmp	d0, #0.0
	beq	.L732
	fmov	d30, d0
	b	.L730
	.p2align 2,,3
.L739:
	mov	w2, 1
.L730:
	fmov	d0, d30
	mov	w1, 0
	fmov	d29, 5.0e-1
	.p2align 3,,7
.L737:
	fadd	d0, d0, d0
	sub	w1, w1, #1
	fcmpe	d0, d29
	bmi	.L737
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d0, d31, d0, ne
	b	.L749
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	2
	.p2align 4,,11
	.global	__muldi3
	.type	__muldi3, %function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	x2, x0
	mov	x0, 0
	cbz	x2, .L750
	.p2align 3,,7
.L752:
	sbfx	x3, x2, 0, 1
	lsr	x2, x2, 1
	and	x4, x3, x1
	lsl	x1, x1, 1
	add	x0, x0, x4
	cbnz	x2, .L752
.L750:
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	2
	.p2align 4,,11
	.global	udivmodsi4
	.type	udivmodsi4, %function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	w3, 1
	cmp	w1, w0
	bcs	.L773
	.p2align 3,,7
.L756:
	tbnz	w1, #31, .L760
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L756
	mov	w4, 0
	cbz	w3, .L761
.L760:
	mov	w4, 0
	.p2align 3,,7
.L762:
	subs	w6, w0, w1
	lsr	w1, w1, 1
	cset	w5, cs
	cmp	w5, 0
	csel	w7, w3, wzr, ne
	csel	w0, w6, w0, ne
	orr	w4, w4, w7
	lsr	w3, w3, 1
	cbnz	w3, .L762
.L761:
	cmp	x2, 0
	csel	w0, w4, w0, eq
	ret
.L773:
	sub	w1, w0, w1
	cset	w4, ls
	csel	w0, w1, w0, ls
	b	.L761
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.p2align 4,,11
	.global	__clrsbqi2
	.type	__clrsbqi2, %function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	ubfiz	w1, w0, 8, 8
	tst	w0, 255
	clz	w2, w1
	mov	w0, 7
	sub	w3, w2, #1
	csel	w0, w3, w0, ne
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.p2align 4,,11
	.global	__clrsbdi2
	.type	__clrsbdi2, %function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	asr	x2, x0, 63
	mov	w3, 63
	eor	x1, x0, x2
	cmp	x0, x2
	clz	x0, x1
	sub	w4, w0, #1
	csel	w0, w4, w3, ne
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.p2align 4,,11
	.global	__mulsi3
	.type	__mulsi3, %function
__mulsi3:
.LFB106:
	.cfi_startproc
	mov	w2, w0
	mov	w0, 0
	cbz	w2, .L781
	.p2align 3,,7
.L783:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w4, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w4
	cbnz	w2, .L783
.L781:
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.p2align 4,,11
	.global	__cmovd
	.type	__cmovd, %function
__cmovd:
.LFB107:
	.cfi_startproc
	lsr	w4, w2, 3
	and	w5, w2, -8
	cmp	x0, x1
	bcc	.L790
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L827
.L790:
	cbz	w4, .L789
	sub	w10, w4, #1
	cmp	w10, 4
	bls	.L793
	add	x11, x1, 8
	cntb	x13
	sub	x14, x0, x11
	sub	x12, x13, #16
	cmp	x14, x12
	bls	.L793
	mov	x16, 0
	cntd	x15
	whilelo	p1.d, wzr, w4
	.p2align 3,,7
.L794:
	ld1d	z28.d, p1/z, [x1, x16, lsl 3]
	st1d	z28.d, p1, [x0, x16, lsl 3]
	add	x16, x16, x15
	whilelo	p1.d, w16, w4
	b.any	.L794
.L789:
	cmp	w2, w5
	bls	.L786
	uxtw	x18, w5
	cntb	x10
	add	x3, x18, 1
	add	x11, x0, x18
	add	x8, x1, x3
	sub	x9, x10, #2
	sub	x13, x11, x8
	cmp	x13, x9
	bls	.L828
	add	x1, x1, x18
	mov	x0, 0
	sub	w5, w2, w5
	whilelo	p2.b, xzr, x5
	.p2align 3,,7
.L798:
	ld1b	z27.b, p2/z, [x1, x0]
	st1b	z27.b, p2, [x11, x0]
	add	x0, x0, x10
	whilelo	p2.b, x0, x5
	b.any	.L798
.L786:
	ret
	.p2align 2,,3
.L827:
	sub	w3, w2, #1
	cbz	w2, .L786
	cnth	x6
	sub	w7, w6, #1
	cmp	w3, w7
	uxtw	x12, w3
	ccmp	w3, 14, 0, cs
	bls	.L800
	sub	x9, x12, #1
	add	x10, x0, x12
	add	x11, x1, x9
	cntb	x8
	sub	x14, x10, x11
	sub	x13, x8, #2
	add	x15, x14, x13
	cmp	x15, x13
	bls	.L800
	cntb	x16
	sub	w17, w16, #1
	cmp	w3, w17
	bcc	.L811
	addvl	x5, x12, #-1
	sub	w8, w2, w16
	add	x5, x5, 1
	mov	x4, 0
	add	x6, x1, x5
	add	x7, x0, x5
	mov	w18, 0
	rdvl	x9, #-1
	ptrue	p7.b, all
	.p2align 3,,7
.L802:
	ld1b	z31.b, p7/z, [x6, x4]
	add	w18, w18, w16
	st1b	z31.b, p7, [x7, x4]
	add	x4, x4, x9
	cmp	w8, w18
	bcs	.L802
	sub	w3, w3, w18
	cmp	w2, w18
	beq	.L786
	sub	w2, w2, w18
	cnth	x10
	sub	w11, w2, #1
	sub	w13, w10, #1
	cmp	w11, w13
	bcc	.L805
.L801:
	addpl	x14, x12, #-4
	ptrue	p0.b, all
	add	x14, x14, 1
	sub	x12, x14, w18, uxtw
	cnth	x18
	ld1b	z30.h, p0/z, [x1, x12]
	sub	w15, w2, w18
	st1b	z30.h, p0, [x0, x12]
	add	x16, x1, x12
	add	x17, x0, x12
	cmp	w15, w18
	bcc	.L806
	cntb	x18
	ld1b	z29.h, p0/z, [x16, #-1, mul vl]
	st1b	z29.h, p0, [x17, #-1, mul vl]
.L806:
	sub	w3, w3, w18
	cmp	w2, w18
	beq	.L786
.L805:
	uxtw	x2, w3
	add	x6, x2, 1
	.p2align 3,,7
.L808:
	ldrb	w5, [x1, x2]
	subs	x6, x6, #1
	strb	w5, [x0, x2]
	sub	x2, x2, #1
	bne	.L808
	ret
	.p2align 2,,3
.L793:
	lsl	w17, w4, 3
	mov	x4, 0
	sub	x18, x17, #8
	lsr	x3, x18, 3
	add	x7, x3, 1
	.p2align 3,,7
.L796:
	ldr	x6, [x1, x4]
	str	x6, [x0, x4]
	subs	x7, x7, #1
	add	x4, x4, 8
	bne	.L796
	b	.L789
	.p2align 2,,3
.L828:
	sub	w14, w2, w3
	add	w12, w18, 1
	cmp	w12, w2
	add	x15, x14, 1
	mov	x2, 1
	csel	x17, x15, x2, ls
	.p2align 3,,7
.L797:
	ldrb	w16, [x1, x18]
	subs	x17, x17, #1
	strb	w16, [x0, x18]
	mov	x18, x3
	add	x3, x3, 1
	bne	.L797
	ret
.L800:
	mov	x9, x12
	add	x8, x12, 1
	.p2align 3,,7
.L809:
	ldrb	w7, [x1, x9]
	subs	x8, x8, #1
	strb	w7, [x0, x9]
	sub	x9, x9, #1
	bne	.L809
	ret
.L811:
	mov	w18, 0
	b	.L801
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	2
	.p2align 4,,11
	.global	__cmovh
	.type	__cmovh, %function
__cmovh:
.LFB108:
	.cfi_startproc
	lsr	w4, w2, 1
	cmp	x0, x1
	bcc	.L833
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L864
.L833:
	cbz	w4, .L832
	add	x9, x1, 2
	cntb	x10
	sub	x11, x0, x9
	sub	x13, x10, #4
	cmp	x11, x13
	bls	.L836
	mov	x14, 0
	cnth	x12
	whilelo	p1.h, wzr, w4
	.p2align 3,,7
.L837:
	ld1h	z28.h, p1/z, [x1, x14, lsl 1]
	st1h	z28.h, p1, [x0, x14, lsl 1]
	add	x14, x14, x12
	whilelo	p1.h, w14, w4
	b.any	.L837
.L832:
	tbz	x2, 0, .L829
.L865:
	sub	w5, w2, #1
	ldrb	w1, [x1, w5, uxtw]
	strb	w1, [x0, w5, uxtw]
.L829:
	ret
	.p2align 2,,3
.L864:
	sub	w3, w2, #1
	cbz	w2, .L829
	cnth	x5
	sub	w6, w5, #1
	cmp	w3, w6
	uxtw	x12, w3
	ccmp	w3, 14, 0, cs
	bls	.L841
	sub	x7, x12, #1
	add	x9, x0, x12
	add	x10, x1, x7
	cntb	x8
	sub	x13, x9, x10
	sub	x11, x8, #2
	add	x14, x13, x11
	cmp	x14, x11
	bls	.L841
	cntb	x15
	sub	w16, w15, #1
	cmp	w3, w16
	bcc	.L851
	addvl	x18, x12, #-1
	sub	w8, w2, w15
	add	x18, x18, 1
	mov	x4, 0
	add	x5, x1, x18
	add	x6, x0, x18
	mov	w17, 0
	rdvl	x7, #-1
	ptrue	p7.b, all
	.p2align 3,,7
.L843:
	ld1b	z31.b, p7/z, [x5, x4]
	add	w17, w17, w15
	st1b	z31.b, p7, [x6, x4]
	add	x4, x4, x7
	cmp	w8, w17
	bcs	.L843
	sub	w3, w3, w17
	cmp	w2, w17
	beq	.L829
	sub	w2, w2, w17
	cnth	x9
	sub	w10, w2, #1
	sub	w11, w9, #1
	cmp	w10, w11
	bcc	.L845
.L842:
	addpl	x13, x12, #-4
	ptrue	p0.b, all
	add	x13, x13, 1
	sub	x12, x13, w17, uxtw
	cnth	x17
	ld1b	z30.h, p0/z, [x1, x12]
	sub	w14, w2, w17
	st1b	z30.h, p0, [x0, x12]
	add	x15, x1, x12
	add	x16, x0, x12
	cmp	w14, w17
	bcc	.L846
	cntb	x17
	ld1b	z29.h, p0/z, [x15, #-1, mul vl]
	st1b	z29.h, p0, [x16, #-1, mul vl]
.L846:
	sub	w3, w3, w17
	cmp	w2, w17
	beq	.L829
.L845:
	uxtw	x2, w3
	add	x5, x2, 1
	.p2align 3,,7
.L848:
	ldrb	w18, [x1, x2]
	subs	x5, x5, #1
	strb	w18, [x0, x2]
	sub	x2, x2, #1
	bne	.L848
	ret
	.p2align 2,,3
.L836:
	lsl	w15, w4, 1
	mov	x4, 0
	sub	x16, x15, #2
	lsr	x17, x16, 1
	add	x3, x17, 1
	.p2align 3,,7
.L839:
	ldrsh	w18, [x1, x4]
	subs	x3, x3, #1
	strh	w18, [x0, x4]
	add	x4, x4, 2
	bne	.L839
	tbz	x2, 0, .L829
	b	.L865
.L841:
	mov	x7, x12
	add	x8, x12, 1
	.p2align 3,,7
.L849:
	ldrb	w6, [x1, x7]
	subs	x8, x8, #1
	strb	w6, [x0, x7]
	sub	x7, x7, #1
	bne	.L849
	ret
.L851:
	mov	w17, 0
	b	.L842
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	2
	.p2align 4,,11
	.global	__cmovw
	.type	__cmovw, %function
__cmovw:
.LFB109:
	.cfi_startproc
	lsr	w4, w2, 2
	and	w5, w2, -4
	cmp	x0, x1
	bcc	.L870
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L907
.L870:
	cbz	w4, .L869
	sub	w10, w4, #1
	cmp	w10, 2
	bls	.L873
	add	x11, x1, 4
	cntb	x13
	sub	x14, x0, x11
	sub	x12, x13, #8
	cmp	x14, x12
	bls	.L873
	mov	x16, 0
	cntw	x15
	whilelo	p1.s, wzr, w4
	.p2align 3,,7
.L874:
	ld1w	z28.s, p1/z, [x1, x16, lsl 2]
	st1w	z28.s, p1, [x0, x16, lsl 2]
	add	x16, x16, x15
	whilelo	p1.s, w16, w4
	b.any	.L874
.L869:
	cmp	w2, w5
	bls	.L866
	uxtw	x18, w5
	cntb	x10
	add	x3, x18, 1
	add	x11, x0, x18
	add	x8, x1, x3
	sub	x9, x10, #2
	sub	x13, x11, x8
	cmp	x13, x9
	bls	.L908
	add	x1, x1, x18
	mov	x0, 0
	sub	w5, w2, w5
	whilelo	p2.b, xzr, x5
	.p2align 3,,7
.L878:
	ld1b	z27.b, p2/z, [x1, x0]
	st1b	z27.b, p2, [x11, x0]
	add	x0, x0, x10
	whilelo	p2.b, x0, x5
	b.any	.L878
.L866:
	ret
	.p2align 2,,3
.L907:
	sub	w3, w2, #1
	cbz	w2, .L866
	cnth	x6
	sub	w7, w6, #1
	cmp	w3, w7
	uxtw	x12, w3
	ccmp	w3, 14, 0, cs
	bls	.L880
	sub	x9, x12, #1
	add	x10, x0, x12
	add	x11, x1, x9
	cntb	x8
	sub	x14, x10, x11
	sub	x13, x8, #2
	add	x15, x14, x13
	cmp	x15, x13
	bls	.L880
	cntb	x16
	sub	w17, w16, #1
	cmp	w3, w17
	bcc	.L891
	addvl	x5, x12, #-1
	sub	w8, w2, w16
	add	x5, x5, 1
	mov	x4, 0
	add	x6, x1, x5
	add	x7, x0, x5
	mov	w18, 0
	rdvl	x9, #-1
	ptrue	p7.b, all
	.p2align 3,,7
.L882:
	ld1b	z31.b, p7/z, [x6, x4]
	add	w18, w18, w16
	st1b	z31.b, p7, [x7, x4]
	add	x4, x4, x9
	cmp	w8, w18
	bcs	.L882
	sub	w3, w3, w18
	cmp	w2, w18
	beq	.L866
	sub	w2, w2, w18
	cnth	x10
	sub	w11, w2, #1
	sub	w13, w10, #1
	cmp	w11, w13
	bcc	.L885
.L881:
	addpl	x14, x12, #-4
	ptrue	p0.b, all
	add	x14, x14, 1
	sub	x12, x14, w18, uxtw
	cnth	x18
	ld1b	z30.h, p0/z, [x1, x12]
	sub	w15, w2, w18
	st1b	z30.h, p0, [x0, x12]
	add	x16, x1, x12
	add	x17, x0, x12
	cmp	w15, w18
	bcc	.L886
	cntb	x18
	ld1b	z29.h, p0/z, [x16, #-1, mul vl]
	st1b	z29.h, p0, [x17, #-1, mul vl]
.L886:
	sub	w3, w3, w18
	cmp	w2, w18
	beq	.L866
.L885:
	uxtw	x2, w3
	add	x6, x2, 1
	.p2align 3,,7
.L888:
	ldrb	w5, [x1, x2]
	subs	x6, x6, #1
	strb	w5, [x0, x2]
	sub	x2, x2, #1
	bne	.L888
	ret
	.p2align 2,,3
.L873:
	lsl	w17, w4, 2
	mov	x4, 0
	sub	x18, x17, #4
	lsr	x3, x18, 2
	add	x7, x3, 1
	.p2align 3,,7
.L876:
	ldr	w6, [x1, x4]
	subs	x7, x7, #1
	str	w6, [x0, x4]
	add	x4, x4, 4
	bne	.L876
	b	.L869
	.p2align 2,,3
.L908:
	sub	w14, w2, w3
	add	w12, w18, 1
	cmp	w12, w2
	add	x15, x14, 1
	mov	x2, 1
	csel	x17, x15, x2, ls
	.p2align 3,,7
.L877:
	ldrb	w16, [x1, x18]
	subs	x17, x17, #1
	strb	w16, [x0, x18]
	mov	x18, x3
	add	x3, x3, 1
	bne	.L877
	ret
.L880:
	mov	x9, x12
	add	x8, x12, 1
	.p2align 3,,7
.L889:
	ldrb	w7, [x1, x9]
	subs	x8, x8, #1
	strb	w7, [x0, x9]
	sub	x9, x9, #1
	bne	.L889
	ret
.L891:
	mov	w18, 0
	b	.L881
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	2
	.p2align 4,,11
	.global	__modi
	.type	__modi, %function
__modi:
.LFB110:
	.cfi_startproc
	sdiv	w2, w0, w1
	msub	w0, w2, w1, w0
	ret
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	2
	.p2align 4,,11
	.global	__uitod
	.type	__uitod, %function
__uitod:
.LFB111:
	.cfi_startproc
	ucvtf	d0, w0
	ret
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	2
	.p2align 4,,11
	.global	__uitof
	.type	__uitof, %function
__uitof:
.LFB112:
	.cfi_startproc
	ucvtf	s0, w0
	ret
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	2
	.p2align 4,,11
	.global	__ulltod
	.type	__ulltod, %function
__ulltod:
.LFB113:
	.cfi_startproc
	ucvtf	d0, x0
	ret
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	2
	.p2align 4,,11
	.global	__ulltof
	.type	__ulltof, %function
__ulltof:
.LFB114:
	.cfi_startproc
	ucvtf	s0, x0
	ret
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	2
	.p2align 4,,11
	.global	__umodi
	.type	__umodi, %function
__umodi:
.LFB115:
	.cfi_startproc
	udiv	w2, w0, w1
	msub	w0, w2, w1, w0
	ret
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	2
	.p2align 4,,11
	.global	__clzhi2
	.type	__clzhi2, %function
__clzhi2:
.LFB116:
	.cfi_startproc
	and	w4, w0, 65535
	cntw	x0
	cmp	w0, 15
	bhi	.L916
	mov	x6, 0
	cntw	x3
	mov	w2, 16
	mov	z27.s, w4
	whilelo	p0.s, wzr, w2
	index	z29.s, w2, #-1
	index	z30.s, #0, #1
	ptrue	p6.b, all
	ptrue	p15.s, all
.L920:
	mov	z28.d, z30.d
	mov	z26.d, z29.d
	movprfx	z31, z28
	subr	z31.s, z31.s, #15
	incw	z30.s
	asrr	z31.s, p6/m, z31.s, z27.s
	decw	z29.s
	and	z31.s, z31.s, #0x1
	cmpne	p7.s, p0/z, z31.s, #0
	ptest	p15, p7.b
	b.any	.L959
	add	x6, x6, x3
	whilelo	p0.s, w6, w2
	b.any	.L920
.L953:
	mov	w0, 16
.L915:
	ret
	.p2align 2,,3
.L959:
	umov	w0, v28.s[0]
	mov	w7, 15
	umov	w1, v26.s[0]
	sub	w8, w7, w0
	asr	w9, w4, w8
	tbnz	x9, 0, .L915
	add	w5, w0, 1
	cmp	w1, 1
	beq	.L953
	sub	w10, w7, w5
	asr	w11, w4, w10
	tbnz	x11, 0, .L950
	add	w5, w0, 2
	cmp	w1, 2
	beq	.L953
	sub	w12, w7, w5
	asr	w13, w4, w12
	tbnz	x13, 0, .L952
	add	w5, w0, 3
	cmp	w1, 3
	beq	.L953
.L923:
	mov	w14, 15
	sub	w15, w14, w5
	asr	w16, w4, w15
	tbnz	x16, 0, .L950
	add	w5, w0, 4
	cmp	w1, 4
	beq	.L953
	sub	w17, w14, w5
	asr	w18, w4, w17
	tbnz	x18, 0, .L950
	add	w5, w0, 5
	cmp	w1, 5
	beq	.L953
	sub	w3, w14, w5
	asr	w2, w4, w3
	tbnz	x2, 0, .L950
	add	w5, w0, 6
	cmp	w1, 6
	beq	.L953
	sub	w6, w14, w5
	asr	w7, w4, w6
	tbnz	x7, 0, .L950
	add	w5, w0, 7
	cmp	w1, 7
	beq	.L953
	sub	w8, w14, w5
	asr	w9, w4, w8
	tbnz	x9, 0, .L950
	add	w5, w0, 8
	cmp	w1, 8
	beq	.L953
	sub	w10, w14, w5
	asr	w11, w4, w10
	tbnz	x11, 0, .L950
	add	w5, w0, 9
	cmp	w1, 9
	beq	.L953
	sub	w12, w14, w5
	asr	w13, w4, w12
	tbnz	x13, 0, .L950
	add	w5, w0, 10
	cmp	w1, 10
	beq	.L953
	sub	w15, w14, w5
	asr	w16, w4, w15
	tbnz	x16, 0, .L950
	add	w5, w0, 11
	cmp	w1, 11
	beq	.L953
	sub	w17, w14, w5
	asr	w18, w4, w17
	tbnz	x18, 0, .L950
	add	w5, w0, 12
	cmp	w1, 12
	beq	.L953
	sub	w3, w14, w5
	asr	w2, w4, w3
	tbnz	x2, 0, .L950
	add	w5, w0, 13
	cmp	w1, 13
	beq	.L953
	sub	w6, w14, w5
	asr	w7, w4, w6
	tbnz	x7, 0, .L950
	add	w5, w0, 14
	cmp	w1, 14
	beq	.L953
	sub	w14, w14, w5
	asr	w8, w4, w14
	tbnz	x8, 0, .L952
	cmp	w1, 15
	beq	.L953
	neg	w1, w0
	add	w0, w0, 15
	mov	w9, 16
	asr	w4, w4, w1
	tst	x4, 1
	csel	w0, w0, w9, ne
	ret
	.p2align 2,,3
.L950:
	mov	w0, w5
	ret
	.p2align 2,,3
.L916:
	cmp	wzr, w4, lsr 15
	bne	.L924
	asr	w0, w4, 14
	cbnz	w0, .L915
	asr	w0, w4, 13
	cbnz	w0, .L955
	mov	w5, 3
	mov	w1, 16
	b	.L923
.L952:
	mov	w0, w5
	ret
.L924:
	mov	w0, 0
	ret
.L955:
	mov	w0, 2
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.p2align 4,,11
	.global	__ctzhi2
	.type	__ctzhi2, %function
__ctzhi2:
.LFB117:
	.cfi_startproc
	and	w4, w0, 65535
	cntw	x0
	cmp	w0, 15
	bhi	.L961
	mov	x6, 0
	cntw	x5
	mov	w2, 16
	mov	z27.s, w4
	whilelo	p0.s, wzr, w2
	index	z29.s, w2, #-1
	index	z30.s, #0, #1
	ptrue	p6.b, all
	ptrue	p15.s, all
.L965:
	mov	z28.d, z30.d
	mov	z26.d, z29.d
	movprfx	z31, z27
	asr	z31.s, p6/m, z31.s, z28.s
	incw	z30.s
	and	z31.s, z31.s, #0x1
	decw	z29.s
	cmpne	p7.s, p0/z, z31.s, #0
	ptest	p15, p7.b
	b.any	.L1006
	add	x6, x6, x5
	whilelo	p0.s, w6, w2
	b.any	.L965
.L999:
	mov	w0, 16
.L960:
	ret
	.p2align 2,,3
.L1006:
	umov	w0, v28.s[0]
	umov	w3, v26.s[0]
	asr	w7, w4, w0
	tbnz	x7, 0, .L960
	add	w1, w0, 1
	cmp	w3, 1
	beq	.L999
	asr	w8, w4, w1
	tbnz	x8, 0, .L998
	add	w1, w0, 2
	cmp	w3, 2
	beq	.L999
	asr	w9, w4, w1
	tbnz	x9, 0, .L998
	add	w1, w0, 3
	cmp	w3, 3
	beq	.L999
.L968:
	asr	w10, w4, w1
	tbnz	x10, 0, .L998
	add	w1, w0, 4
	cmp	w3, 4
	beq	.L999
	asr	w11, w4, w1
	tbnz	x11, 0, .L998
	add	w1, w0, 5
	cmp	w3, 5
	beq	.L999
	asr	w12, w4, w1
	tbnz	x12, 0, .L998
	add	w1, w0, 6
	cmp	w3, 6
	beq	.L999
	asr	w13, w4, w1
	tbnz	x13, 0, .L998
	add	w1, w0, 7
	cmp	w3, 7
	beq	.L999
	asr	w14, w4, w1
	tbnz	x14, 0, .L998
	add	w1, w0, 8
	cmp	w3, 8
	beq	.L999
	asr	w15, w4, w1
	tbnz	x15, 0, .L998
	add	w1, w0, 9
	cmp	w3, 9
	beq	.L999
	asr	w16, w4, w1
	tbnz	x16, 0, .L998
	add	w1, w0, 10
	cmp	w3, 10
	beq	.L999
	asr	w17, w4, w1
	tbnz	x17, 0, .L998
	add	w1, w0, 11
	cmp	w3, 11
	beq	.L999
	asr	w18, w4, w1
	tbnz	x18, 0, .L998
	add	w1, w0, 12
	cmp	w3, 12
	beq	.L999
	asr	w5, w4, w1
	tbnz	x5, 0, .L998
	add	w1, w0, 13
	cmp	w3, 13
	beq	.L999
	asr	w2, w4, w1
	tbnz	x2, 0, .L998
	add	w1, w0, 14
	cmp	w3, 14
	beq	.L999
	asr	w6, w4, w1
	tbnz	x6, 0, .L998
	add	w0, w0, 15
	cmp	w3, 15
	beq	.L999
	asr	w4, w4, w0
	mov	w3, 16
	tst	x4, 1
	csel	w0, w0, w3, ne
	ret
	.p2align 2,,3
.L998:
	mov	w0, w1
	ret
	.p2align 2,,3
.L961:
	tbnz	x4, 0, .L969
	tbnz	x4, 1, .L1007
	tbnz	x4, 2, .L1001
	mov	w3, 16
	mov	w0, 0
	mov	w1, 3
	b	.L968
.L969:
	mov	w0, 0
	ret
.L1007:
	mov	w0, 1
	ret
.L1001:
	mov	w0, 2
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.p2align 4,,11
	.global	__fixunssfsi
	.type	__fixunssfsi, %function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	movi	v31.2s, 0x47, lsl 24
	fcmpe	s0, s31
	bge	.L1012
	fcvtzs	x0, s0
	ret
	.p2align 2,,3
.L1012:
	fsub	s0, s0, s31
	fcvtzs	x0, s0
	add	x0, x0, 32768
	ret
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.p2align 4,,11
	.global	__parityhi2
	.type	__parityhi2, %function
__parityhi2:
.LFB119:
	.cfi_startproc
	mov	x1, 0
	cntw	x3
	and	w0, w0, 65535
	mov	w2, 16
	mov	z28.s, w0
	whilelo	p7.s, wzr, w2
	mov	z30.b, #0
	index	z29.s, #0, #1
	ptrue	p6.b, all
.L1016:
	mov	z31.d, z29.d
	add	x1, x1, x3
	asrr	z31.s, p6/m, z31.s, z28.s
	incw	z29.s
	and	z31.s, z31.s, #0x1
	add	z30.s, p7/m, z30.s, z31.s
	whilelo	p7.s, w1, w2
	b.any	.L1016
	uaddv	d0, p6, z30.s
	fmov	x4, d0
	and	w0, w4, 1
	ret
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.p2align 4,,11
	.global	__popcounthi2
	.type	__popcounthi2, %function
__popcounthi2:
.LFB120:
	.cfi_startproc
	mov	x1, 0
	cntw	x3
	and	w0, w0, 65535
	mov	w2, 16
	mov	z31.s, w0
	whilelo	p7.s, wzr, w2
	mov	z30.b, #0
	index	z29.s, #0, #1
	ptrue	p6.b, all
.L1019:
	mov	z28.d, z29.d
	add	x1, x1, x3
	asrr	z28.s, p6/m, z28.s, z31.s
	incw	z29.s
	and	z28.s, z28.s, #0x1
	add	z30.s, p7/m, z30.s, z28.s
	whilelo	p7.s, w1, w2
	b.any	.L1019
	uaddv	d0, p6, z30.s
	fmov	x0, d0
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.p2align 4,,11
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	mov	w2, w0
	mov	w0, 0
	cbz	w2, .L1021
	.p2align 3,,7
.L1023:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w4, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w4
	cbnz	w2, .L1023
.L1021:
	ret
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.p2align 4,,11
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	w3, w0
	mov	w0, 0
	cbz	w3, .L1026
	cbz	w1, .L1026
	.p2align 3,,7
.L1028:
	sbfx	x2, x1, 0, 1
	lsr	w1, w1, 1
	and	w4, w2, w3
	lsl	w3, w3, 1
	add	w0, w0, w4
	cbnz	w1, .L1028
.L1026:
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.p2align 4,,11
	.global	__udivmodsi4
	.type	__udivmodsi4, %function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	w3, 1
	cmp	w1, w0
	bcs	.L1051
	.p2align 3,,7
.L1034:
	tbnz	w1, #31, .L1038
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L1034
	mov	w4, 0
	cbz	w3, .L1039
.L1038:
	mov	w4, 0
	.p2align 3,,7
.L1040:
	subs	w6, w0, w1
	lsr	w1, w1, 1
	cset	w5, cs
	cmp	w5, 0
	csel	w7, w3, wzr, ne
	csel	w0, w6, w0, ne
	orr	w4, w4, w7
	lsr	w3, w3, 1
	cbnz	w3, .L1040
.L1039:
	cmp	w2, 0
	csel	w0, w4, w0, eq
	ret
.L1051:
	sub	w1, w0, w1
	cset	w4, ls
	csel	w0, w1, w0, ls
	b	.L1039
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.p2align 4,,11
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	fcmpe	s0, s1
	cset	w0, gt
	csinv	w0, w0, wzr, pl
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.p2align 4,,11
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	fcmpe	d0, d1
	cset	w0, gt
	csinv	w0, w0, wzr, pl
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.p2align 4,,11
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mul	x0, x0, x1
	ret
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.p2align 4,,11
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mul	x0, x0, x1
	ret
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.p2align 4,,11
	.global	__mulhi3
	.type	__mulhi3, %function
__mulhi3:
.LFB128:
	.cfi_startproc
	cmp	w1, 0
	blt	.L1070
	beq	.L1066
	mov	w5, 0
.L1063:
	mov	w4, 0
	mov	w6, 0
	.p2align 3,,7
.L1065:
	add	w2, w6, 1
	sbfx	x3, x1, 0, 1
	and	w6, w2, 255
	and	w7, w3, w0
	asr	w1, w1, 1
	cmp	w6, 32
	ccmp	w1, 0, 4, ne
	add	w4, w4, w7
	lsl	w0, w0, 1
	bne	.L1065
	cmp	w5, 0
	csneg	w0, w4, w4, eq
	ret
	.p2align 2,,3
.L1070:
	neg	w1, w1
	mov	w5, 1
	b	.L1063
	.p2align 2,,3
.L1066:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.p2align 4,,11
	.global	__divsi3
	.type	__divsi3, %function
__divsi3:
.LFB129:
	.cfi_startproc
	mov	w2, 1
	mov	w6, 0
	tbnz	x0, #63, .L1094
.L1072:
	tbz	x1, #63, .L1073
	neg	x1, x1
	mov	w6, w2
.L1073:
	mov	w4, w0
	mov	w8, w1
	mov	w3, 1
	cmp	w0, w1
	bls	.L1092
	.p2align 3,,7
.L1074:
	tbnz	w8, #31, .L1076
	lsl	w3, w3, 1
	lsl	w8, w8, 1
	cmp	w3, 0
	ccmp	w4, w8, 0, ne
	bhi	.L1074
	mov	x0, 0
	cbz	w3, .L1077
.L1076:
	mov	w0, 0
	.p2align 3,,7
.L1079:
	subs	w5, w4, w8
	lsr	w8, w8, 1
	cset	w1, cs
	cmp	w1, 0
	csel	w7, w3, wzr, ne
	csel	w4, w5, w4, ne
	orr	w0, w0, w7
	lsr	w3, w3, 1
	cbnz	w3, .L1079
.L1077:
	cmp	w6, 0
	csneg	x0, x0, x0, eq
	ret
	.p2align 2,,3
.L1094:
	neg	x0, x0
	mov	w2, 0
	mov	w6, 1
	b	.L1072
.L1092:
	cset	w0, cs
	b	.L1077
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	2
	.p2align 4,,11
	.global	__modsi3
	.type	__modsi3, %function
__modsi3:
.LFB130:
	.cfi_startproc
	mov	w5, 0
	tbz	x0, #63, .L1096
	neg	x0, x0
	mov	w5, 1
.L1096:
	cmp	x1, 0
	mov	w4, w0
	csneg	x1, x1, x1, ge
	mov	w3, 1
	mov	w7, w1
	cmp	w0, w1
	bls	.L1115
	.p2align 3,,7
.L1097:
	tbnz	w7, #31, .L1113
	lsl	w3, w3, 1
	lsl	w7, w7, 1
	cmp	w3, 0
	ccmp	w4, w7, 0, ne
	bhi	.L1097
	cbz	w3, .L1100
	.p2align 3,,7
.L1113:
	subs	w6, w4, w7
	lsr	w3, w3, 1
	csel	w4, w6, w4, cs
	lsr	w7, w7, 1
	cbnz	w3, .L1113
.L1100:
	uxtw	x0, w4
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
.L1115:
	sub	w2, w0, w1
	csel	w4, w2, w0, cs
	b	.L1100
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	2
	.p2align 4,,11
	.global	__udivmodhi4
	.type	__udivmodhi4, %function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	and	w11, w0, 65535
	and	w1, w1, 65535
	mov	w4, 1
	cmp	w1, w11
	bcc	.L1119
	b	.L1181
	.p2align 2,,3
.L1122:
	cmp	w13, 0
	ubfiz	w14, w4, 1, 15
	ccmp	w11, w5, 0, ne
	bls	.L1121
	mov	w4, w13
	mov	w1, w5
.L1119:
	ubfiz	w13, w4, 1, 15
	ubfiz	w5, w1, 1, 15
	tbz	x1, 15, .L1122
	subs	w3, w11, w1
	ubfx	x9, x4, 1, 16
	cset	w6, cs
	lsr	w7, w1, 1
	cmp	w6, 0
	csel	w8, w3, w11, ne
	csel	w10, w4, wzr, ne
	and	w11, w8, 65535
	and	w12, w10, 65535
	cbz	w9, .L1182
.L1126:
	subs	w0, w11, w7
	ubfx	x3, x4, 2, 16
	cset	w5, cs
	lsr	w8, w1, 2
	cmp	w5, 0
	csel	w6, w9, wzr, ne
	csel	w7, w0, w11, ne
	orr	w9, w12, w6
	and	w11, w7, 65535
	and	w13, w9, 65535
	cbz	w3, .L1124
	subs	w10, w11, w8
	ubfx	x12, x4, 3, 16
	cset	w11, cs
	lsr	w14, w1, 3
	cmp	w11, 0
	csel	w15, w3, wzr, ne
	csel	w16, w10, w7, ne
	orr	w13, w13, w15
	and	w11, w16, 65535
	and	w13, w13, 65535
	cbz	w12, .L1124
	subs	w17, w11, w14
	ubfx	x3, x4, 4, 16
	cset	w18, cs
	lsr	w0, w1, 4
	cmp	w18, 0
	csel	w5, w12, wzr, ne
	csel	w6, w17, w16, ne
	orr	w8, w13, w5
	and	w11, w6, 65535
	and	w13, w8, 65535
	cbz	w3, .L1124
	subs	w7, w11, w0
	ubfx	x9, x4, 5, 16
	cset	w10, cs
	lsr	w12, w1, 5
	cmp	w10, 0
	csel	w11, w3, wzr, ne
	csel	w14, w7, w6, ne
	orr	w15, w13, w11
	and	w11, w14, 65535
	and	w13, w15, 65535
	cbz	w9, .L1124
	subs	w16, w11, w12
	ubfx	x18, x4, 6, 16
	cset	w17, cs
	lsr	w3, w1, 6
	cmp	w17, 0
	csel	w0, w9, wzr, ne
	csel	w5, w16, w14, ne
	orr	w13, w13, w0
	and	w11, w5, 65535
	and	w13, w13, 65535
	cbz	w18, .L1124
	subs	w6, w11, w3
	ubfx	x10, x4, 7, 16
	cset	w8, cs
	lsr	w7, w1, 7
	cmp	w8, 0
	csel	w9, w18, wzr, ne
	csel	w12, w6, w5, ne
	orr	w14, w13, w9
	and	w11, w12, 65535
	and	w13, w14, 65535
	cbz	w10, .L1124
	subs	w11, w11, w7
	ubfx	x16, x4, 8, 16
	cset	w15, cs
	lsr	w17, w1, 8
	cmp	w15, 0
	csel	w18, w10, wzr, ne
	csel	w3, w11, w12, ne
	orr	w0, w13, w18
	and	w11, w3, 65535
	and	w13, w0, 65535
	cbz	w16, .L1124
	subs	w5, w11, w17
	ubfx	x10, x4, 9, 16
	cset	w6, cs
	lsr	w7, w1, 9
	cmp	w6, 0
	csel	w8, w16, wzr, ne
	csel	w12, w5, w3, ne
	orr	w13, w13, w8
	and	w11, w12, 65535
	and	w13, w13, 65535
	cbz	w10, .L1124
	subs	w14, w11, w7
	ubfx	x15, x4, 10, 16
	cset	w9, cs
	lsr	w16, w1, 10
	cmp	w9, 0
	csel	w11, w10, wzr, ne
	csel	w17, w14, w12, ne
	orr	w18, w13, w11
	and	w11, w17, 65535
	and	w13, w18, 65535
	cbz	w15, .L1124
	subs	w3, w11, w16
	ubfx	x10, x4, 11, 16
	cset	w0, cs
	lsr	w6, w1, 11
	cmp	w0, 0
	csel	w7, w15, wzr, ne
	csel	w5, w3, w17, ne
	orr	w8, w13, w7
	and	w11, w5, 65535
	and	w13, w8, 65535
	cbz	w10, .L1124
	subs	w12, w11, w6
	ubfx	x15, x4, 12, 16
	cset	w14, cs
	lsr	w16, w1, 12
	cmp	w14, 0
	csel	w9, w10, wzr, ne
	csel	w17, w12, w5, ne
	orr	w13, w13, w9
	and	w11, w17, 65535
	and	w13, w13, 65535
	cbz	w15, .L1124
	subs	w11, w11, w16
	ubfx	x10, x4, 13, 16
	cset	w18, cs
	lsr	w0, w1, 13
	cmp	w18, 0
	csel	w3, w15, wzr, ne
	csel	w5, w11, w17, ne
	orr	w6, w13, w3
	and	w11, w5, 65535
	and	w13, w6, 65535
	cbz	w10, .L1124
	subs	w7, w11, w0
	ubfx	x8, x4, 14, 16
	cset	w12, cs
	lsr	w14, w1, 14
	cmp	w12, 0
	csel	w15, w10, wzr, ne
	csel	w16, w7, w5, ne
	orr	w9, w13, w15
	and	w11, w16, 65535
	and	w13, w9, 65535
	cbz	w8, .L1124
	subs	w17, w11, w14
	lsr	w1, w1, 15
	cset	w11, cs
	cmp	w11, 0
	csel	w18, w8, wzr, ne
	csel	w10, w17, w16, ne
	orr	w13, w13, w18
	and	w11, w10, 65535
	and	w13, w13, 65535
	tbz	x4, 15, .L1124
	subs	w4, w11, w1
	csel	w0, w4, w10, cs
	cset	w3, cs
	and	w11, w0, 65535
	orr	w13, w3, w13
.L1124:
	cmp	w2, 0
	csel	w0, w11, w13, ne
	ret
	.p2align 2,,3
.L1121:
	cbz	w13, .L1124
	cmp	w11, w5
	sub	w15, w11, w5
	cset	w16, cs
	and	w9, w4, 32767
	cmp	w16, 0
	and	w7, w1, 32767
	csel	w17, w14, wzr, ne
	csel	w18, w15, w11, ne
	mov	w4, w13
	and	w12, w17, 65535
	and	w11, w18, 65535
	mov	w1, w5
	b	.L1126
.L1181:
	sub	w1, w11, w1
	cset	w13, eq
	csel	w0, w1, w11, eq
	and	w11, w0, 65535
	b	.L1124
.L1182:
	mov	w13, w12
	b	.L1124
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.p2align 4,,11
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	x3, 1
	cmp	x1, x0
	bcs	.L1201
	.p2align 3,,7
.L1184:
	tbnz	x1, 31, .L1188
	lsl	x3, x3, 1
	lsl	x1, x1, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L1184
	mov	x4, 0
	cbz	x3, .L1189
.L1188:
	mov	x4, 0
	.p2align 3,,7
.L1190:
	subs	x6, x0, x1
	lsr	x1, x1, 1
	cset	w5, cs
	cmp	w5, 0
	csel	x7, x3, xzr, ne
	csel	x0, x6, x0, ne
	orr	x4, x4, x7
	lsr	x3, x3, 1
	cbnz	x3, .L1190
.L1189:
	cmp	w2, 0
	csel	x0, x4, x0, eq
	ret
.L1201:
	sub	x1, x0, x1
	cset	x4, ls
	csel	x0, x1, x0, ls
	b	.L1189
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.p2align 4,,11
	.global	__ashldi3
	.type	__ashldi3, %function
__ashldi3:
.LFB133:
	.cfi_startproc
	mov	x2, x0
	tbz	x1, 5, .L1204
	sub	w7, w1, #32
	mov	w3, 0
	lsl	w6, w0, w7
.L1205:
	uxtw	x8, w3
	orr	x0, x8, x6, lsl 32
.L1203:
	ret
	.p2align 2,,3
.L1204:
	cbz	w1, .L1203
	neg	w4, w1
	asr	x0, x0, 32
	lsl	w3, w2, w1
	lsr	w5, w2, w4
	lsl	w1, w0, w1
	orr	w6, w5, w1
	b	.L1205
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.p2align 4,,11
	.global	__ashlti3
	.type	__ashlti3, %function
__ashlti3:
.LFB134:
	.cfi_startproc
	tbz	x2, 6, .L1210
	sub	w5, w2, #64
	mov	x3, 0
	lsl	x1, x0, x5
	mov	x0, x3
.L1212:
	ret
	.p2align 2,,3
.L1210:
	cbz	w2, .L1212
	neg	w4, w2
	lsl	x1, x1, x2
	lsl	x3, x0, x2
	lsr	x2, x0, x4
	mov	x0, x3
	orr	x1, x2, x1
	b	.L1212
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	2
	.p2align 4,,11
	.global	__ashrdi3
	.type	__ashrdi3, %function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mov	x2, x0
	tbz	x1, 5, .L1215
	asr	x8, x0, 32
	sub	w1, w1, #32
	asr	w7, w8, 31
	asr	w6, w8, w1
	orr	x0, x6, x7, lsl 32
.L1214:
	ret
	.p2align 2,,3
.L1215:
	cbz	w1, .L1214
	asr	x0, x0, 32
	neg	w3, w1
	lsr	w4, w2, w1
	lsl	w5, w0, w3
	orr	w6, w5, w4
	asr	w7, w0, w1
	orr	x0, x6, x7, lsl 32
	b	.L1214
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.p2align 4,,11
	.global	__ashrti3
	.type	__ashrti3, %function
__ashrti3:
.LFB136:
	.cfi_startproc
	tbz	x2, 6, .L1221
	sub	w5, w2, #64
	asr	x3, x1, 63
	asr	x0, x1, x5
	mov	x1, x3
.L1223:
	ret
	.p2align 2,,3
.L1221:
	cbz	w2, .L1223
	neg	w4, w2
	lsr	x0, x0, x2
	asr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1223
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	2
	.p2align 4,,11
	.global	__bswapdi2
	.type	__bswapdi2, %function
__bswapdi2:
.LFB137:
	.cfi_startproc
	rev	x0, x0
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.p2align 4,,11
	.global	__bswapsi2
	.type	__bswapsi2, %function
__bswapsi2:
.LFB138:
	.cfi_startproc
	rev	w0, w0
	ret
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.p2align 4,,11
	.global	__clzsi2
	.type	__clzsi2, %function
__clzsi2:
.LFB139:
	.cfi_startproc
	mov	w2, 65535
	cmp	w0, w2
	cset	w3, ls
	mov	w1, 16
	mov	w5, 8
	mov	w4, 4
	lsl	w7, w3, 4
	mov	w6, 2
	sub	w8, w1, w7
	lsr	w9, w0, w8
	tst	w9, 65280
	cset	w0, eq
	lsl	w10, w0, 3
	sub	w11, w5, w10
	add	w12, w10, w7
	lsr	w13, w9, w11
	tst	w13, 240
	cset	w14, eq
	lsl	w15, w14, 2
	sub	w16, w4, w15
	lsr	w17, w13, w16
	tst	w17, 12
	cset	w18, eq
	lsl	w2, w18, 1
	sub	w1, w6, w2
	add	w5, w15, w2
	lsr	w3, w17, w1
	sub	w4, w6, w3
	tst	x3, 2
	csel	w6, w4, wzr, eq
	add	w7, w6, w12
	add	w0, w7, w5
	ret
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.p2align 4,,11
	.global	__clzti2
	.type	__clzti2, %function
__clzti2:
.LFB140:
	.cfi_startproc
	cmp	x1, 0
	csetm	x2, ne
	csel	x0, x0, xzr, eq
	and	x3, x2, x1
	cset	w1, eq
	orr	x4, x3, x0
	clz	x5, x4
	add	w0, w5, w1, lsl 6
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	2
	.p2align 4,,11
	.global	__cmpdi2
	.type	__cmpdi2, %function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	x2, x0
	asr	x3, x0, 32
	asr	x0, x1, 32
	cmp	w3, w0
	blt	.L1231
	mov	w0, 2
	bgt	.L1229
	cmp	w2, w1
	mov	w4, 0
	cset	w1, hi
	add	w5, w1, 1
	csel	w0, w5, w4, cs
.L1229:
	ret
	.p2align 2,,3
.L1231:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.p2align 4,,11
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	mov	x2, x0
	asr	x3, x0, 32
	asr	x0, x1, 32
	cmp	w3, w0
	blt	.L1237
	mov	w0, 1
	bgt	.L1235
	cmp	w2, w1
	cset	w1, hi
	csinv	w0, w1, wzr, cs
.L1235:
	ret
	.p2align 2,,3
.L1237:
	mov	w0, -1
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.p2align 4,,11
	.global	__cmpti2
	.type	__cmpti2, %function
__cmpti2:
.LFB143:
	.cfi_startproc
	mov	x4, x0
	mov	w0, 0
	cmp	x1, x3
	blt	.L1240
	mov	w0, 2
	bgt	.L1240
	cmp	x4, x2
	mov	w3, 0
	cset	w1, hi
	add	w0, w1, 1
	csel	w0, w0, w3, cs
.L1240:
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	2
	.p2align 4,,11
	.global	__ctzsi2
	.type	__ctzsi2, %function
__ctzsi2:
.LFB144:
	.cfi_startproc
	tst	w0, 65535
	mov	w5, 2
	cset	w2, eq
	lsl	w3, w2, 4
	lsr	w1, w0, w3
	tst	w1, 255
	cset	w0, eq
	lsl	w4, w0, 3
	add	w6, w4, w3
	lsr	w7, w1, w4
	tst	x7, 15
	cset	w8, eq
	lsl	w9, w8, 2
	lsr	w10, w7, w9
	tst	x10, 3
	cset	w11, eq
	lsl	w12, w11, 1
	add	w13, w9, w12
	lsr	w14, w10, w12
	and	w15, w14, 3
	mvn	w16, w15
	sub	w17, w5, w15, lsr 1
	sbfx	x18, x16, 0, 1
	and	w5, w18, w17
	add	w2, w5, w6
	add	w0, w2, w13
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.p2align 4,,11
	.global	__ctzti2
	.type	__ctzti2, %function
__ctzti2:
.LFB145:
	.cfi_startproc
	cmp	x0, 0
	csetm	x2, ne
	csel	x1, x1, xzr, eq
	and	x0, x2, x0
	cset	w3, eq
	orr	x4, x1, x0
	rbit	x5, x4
	clz	x6, x5
	add	w0, w6, w3, lsl 6
	ret
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	2
	.p2align 4,,11
	.global	__ffsti2
	.type	__ffsti2, %function
__ffsti2:
.LFB146:
	.cfi_startproc
	cbnz	x0, .L1249
	rbit	x2, x1
	cmp	x1, 0
	clz	x3, x2
	add	w4, w3, 65
	csel	w0, w4, wzr, ne
	ret
	.p2align 2,,3
.L1249:
	rbit	x0, x0
	clz	x1, x0
	add	w0, w1, 1
	ret
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	2
	.p2align 4,,11
	.global	__lshrdi3
	.type	__lshrdi3, %function
__lshrdi3:
.LFB147:
	.cfi_startproc
	mov	x2, x0
	tbz	x1, 5, .L1253
	lsr	x8, x0, 32
	sub	w1, w1, #32
	mov	w7, 0
	lsr	w6, w8, w1
	orr	x0, x6, x7, lsl 32
.L1252:
	ret
	.p2align 2,,3
.L1253:
	cbz	w1, .L1252
	lsr	x0, x0, 32
	neg	w3, w1
	lsr	w4, w2, w1
	lsl	w5, w0, w3
	orr	w6, w5, w4
	lsr	w7, w0, w1
	orr	x0, x6, x7, lsl 32
	b	.L1252
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.p2align 4,,11
	.global	__lshrti3
	.type	__lshrti3, %function
__lshrti3:
.LFB148:
	.cfi_startproc
	tbz	x2, 6, .L1259
	sub	w5, w2, #64
	mov	x3, 0
	lsr	x0, x1, x5
	mov	x1, x3
.L1261:
	ret
	.p2align 2,,3
.L1259:
	cbz	w2, .L1261
	neg	w4, w2
	lsr	x0, x0, x2
	lsr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1261
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	2
	.p2align 4,,11
	.global	__muldsi3
	.type	__muldsi3, %function
__muldsi3:
.LFB149:
	.cfi_startproc
	and	w2, w0, 65535
	and	w3, w1, 65535
	lsr	w4, w0, 16
	lsr	w1, w1, 16
	mov	x0, 0
	mul	w5, w2, w3
	mul	w6, w3, w4
	mul	w7, w2, w1
	mul	w8, w4, w1
	add	w9, w6, w5, lsr 16
	add	w10, w7, w9, uxth
	add	w11, w8, w9, lsr 16
	lsl	w12, w10, 16
	add	w13, w11, w10, lsr 16
	add	w14, w12, w5, uxth
	bfi	x0, x14, 0, 32
	bfi	x0, x13, 32, 32
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.p2align 4,,11
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	and	w2, w0, 65535
	and	w3, w1, 65535
	lsr	w6, w0, 16
	lsr	w7, w1, 16
	mov	x4, x0
	mov	x0, 0
	mul	w5, w2, w3
	asr	x9, x1, 32
	mul	w10, w3, w6
	asr	x8, x4, 32
	mul	w11, w2, w7
	mul	w12, w6, w7
	add	w13, w10, w5, lsr 16
	add	w14, w11, w13, uxth
	add	w15, w12, w13, lsr 16
	lsl	w16, w14, 16
	add	w17, w15, w14, lsr 16
	add	w18, w16, w5, uxth
	bfi	x0, x18, 0, 32
	bfi	x0, x17, 32, 32
	asr	x2, x0, 32
	madd	w4, w4, w9, w2
	madd	w1, w1, w8, w4
	bfi	x0, x1, 32, 32
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.p2align 4,,11
	.global	__mulddi3
	.type	__mulddi3, %function
__mulddi3:
.LFB151:
	.cfi_startproc
	umull	x4, w0, w1
	lsr	x3, x0, 32
	lsr	x5, x1, 32
	lsr	x2, x4, 32
	umaddl	x1, w1, w3, x2
	uxtw	x6, w1
	lsr	x7, x1, 32
	umaddl	x8, w0, w5, x6
	umaddl	x9, w3, w5, x7
	lsl	x0, x8, 32
	add	x1, x9, x8, lsr 32
	add	x0, x0, w4, uxtw
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	2
	.p2align 4,,11
	.global	__multi3
	.type	__multi3, %function
__multi3:
.LFB152:
	.cfi_startproc
	mov	x4, x0
	lsr	x7, x0, 32
	umull	x0, w0, w2
	lsr	x8, x2, 32
	lsr	x6, x0, 32
	umaddl	x9, w2, w7, x6
	uxtw	x5, w9
	lsr	x10, x9, 32
	umaddl	x11, w4, w8, x5
	umaddl	x12, w7, w8, x10
	lsl	x13, x11, 32
	add	x14, x12, x11, lsr 32
	add	x0, x13, w0, uxtw
	madd	x3, x4, x3, x14
	madd	x1, x2, x1, x3
	ret
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	2
	.p2align 4,,11
	.global	__negdi2
	.type	__negdi2, %function
__negdi2:
.LFB153:
	.cfi_startproc
	neg	x0, x0
	ret
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	2
	.p2align 4,,11
	.global	__negti2
	.type	__negti2, %function
__negti2:
.LFB154:
	.cfi_startproc
	negs	x0, x0
	sbc	x1, xzr, x1
	ret
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	2
	.p2align 4,,11
	.global	__paritydi2
	.type	__paritydi2, %function
__paritydi2:
.LFB155:
	.cfi_startproc
	lsr	x1, x0, 32
	mov	w2, 27030
	eor	w0, w1, w0
	eor	w3, w0, w0, lsr 16
	eor	w4, w3, w3, lsr 8
	eor	w5, w4, w4, lsr 4
	and	w6, w5, 15
	asr	w7, w2, w6
	and	w0, w7, 1
	ret
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.p2align 4,,11
	.global	__parityti2
	.type	__parityti2, %function
__parityti2:
.LFB156:
	.cfi_startproc
	eor	x0, x0, x1
	mov	w2, 27030
	asr	x1, x0, 32
	eor	w3, w1, w0
	eor	w4, w3, w3, lsr 16
	eor	w5, w4, w4, lsr 8
	eor	w6, w5, w5, lsr 4
	and	w7, w6, 15
	asr	w8, w2, w7
	and	w0, w8, 1
	ret
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	2
	.p2align 4,,11
	.global	__paritysi2
	.type	__paritysi2, %function
__paritysi2:
.LFB157:
	.cfi_startproc
	eor	w1, w0, w0, lsr 16
	mov	w2, 27030
	eor	w0, w1, w1, lsr 8
	eor	w3, w0, w0, lsr 4
	and	w4, w3, 15
	asr	w5, w2, w4
	and	w0, w5, 1
	ret
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	2
	.p2align 4,,11
	.global	__popcountdi2
	.type	__popcountdi2, %function
__popcountdi2:
.LFB158:
	.cfi_startproc
	lsr	x1, x0, 1
	and	x2, x1, 6148914691236517205
	sub	x0, x0, x2
	and	x3, x0, -3689348814741910324
	and	x4, x0, 3689348814741910323
	add	x5, x4, x3, lsr 2
	add	x6, x5, x5, lsr 4
	and	x7, x6, 1085102592571150095
	lsr	x8, x7, 32
	add	w9, w8, w7
	add	w10, w9, w9, lsr 16
	add	w11, w10, w10, lsr 8
	and	w0, w11, 127
	ret
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.p2align 4,,11
	.global	__popcountsi2
	.type	__popcountsi2, %function
__popcountsi2:
.LFB159:
	.cfi_startproc
	lsr	w1, w0, 1
	and	w2, w1, 1431655765
	sub	w3, w0, w2
	and	w0, w3, -858993460
	and	w4, w3, 858993459
	add	w5, w4, w0, lsr 2
	add	w6, w5, w5, lsr 4
	and	w7, w6, 252645135
	add	w8, w7, w7, lsr 16
	add	w9, w8, w8, lsr 8
	and	w0, w9, 63
	ret
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.p2align 4,,11
	.global	__popcountti2
	.type	__popcountti2, %function
__popcountti2:
.LFB160:
	.cfi_startproc
	lsr	x3, x1, 1
	extr	x2, x1, x0, 1
	and	x4, x2, 6148914691236517205
	and	x5, x3, 6148914691236517205
	subs	x0, x0, x4
	sbc	x1, x1, x5
	and	x6, x0, 3689348814741910323
	and	x7, x1, 3689348814741910323
	lsr	x10, x1, 2
	extr	x8, x1, x0, 2
	and	x9, x8, 3689348814741910323
	and	x12, x10, 3689348814741910323
	adds	x11, x9, x6
	adc	x13, x12, x7
	lsr	x16, x13, 4
	extr	x14, x13, x11, 4
	adds	x15, x14, x11
	adc	x17, x13, x16
	and	x18, x15, 1085102592571150095
	and	x2, x17, 1085102592571150095
	add	x4, x2, x18
	lsr	x3, x4, 32
	add	w0, w3, w4
	add	w5, w0, w0, lsr 16
	add	w1, w5, w5, lsr 8
	and	w0, w1, 255
	ret
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	2
	.p2align 4,,11
	.global	__powidf2
	.type	__powidf2, %function
__powidf2:
.LFB161:
	.cfi_startproc
	fmov	d1, d0
	mov	w3, w0
	fmov	d31, 1.0e+0
	tbz	x0, 0, .L1276
	.p2align 3,,7
.L1278:
	fmul	d31, d31, d1
.L1276:
	add	w1, w3, w3, lsr 31
	asr	w3, w1, 1
	cbz	w3, .L1277
	fmul	d1, d1, d1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1278
.L1282:
	asr	w3, w2, 1
	fmul	d1, d1, d1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1278
	b	.L1282
	.p2align 2,,3
.L1277:
	tbz	w0, #31, .L1275
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
.L1275:
	fmov	d0, d31
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	2
	.p2align 4,,11
	.global	__powisf2
	.type	__powisf2, %function
__powisf2:
.LFB162:
	.cfi_startproc
	fmov	s1, s0
	mov	w3, w0
	fmov	s31, 1.0e+0
	tbz	x0, 0, .L1284
	.p2align 3,,7
.L1286:
	fmul	s31, s31, s1
.L1284:
	add	w1, w3, w3, lsr 31
	asr	w3, w1, 1
	cbz	w3, .L1285
	fmul	s1, s1, s1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1286
.L1290:
	asr	w3, w2, 1
	fmul	s1, s1, s1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1286
	b	.L1290
	.p2align 2,,3
.L1285:
	tbz	w0, #31, .L1283
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
.L1283:
	fmov	s0, s31
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	2
	.p2align 4,,11
	.global	__ucmpdi2
	.type	__ucmpdi2, %function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mov	x2, x0
	lsr	x3, x0, 32
	lsr	x0, x1, 32
	cmp	w3, w0
	bcc	.L1293
	mov	w0, 2
	bhi	.L1291
	cmp	w2, w1
	mov	w4, 0
	cset	w1, hi
	add	w5, w1, 1
	csel	w0, w5, w4, cs
.L1291:
	ret
	.p2align 2,,3
.L1293:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.p2align 4,,11
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	mov	x2, x0
	lsr	x3, x0, 32
	lsr	x0, x1, 32
	cmp	w3, w0
	bcc	.L1299
	mov	w0, 1
	bhi	.L1297
	cmp	w2, w1
	cset	w1, hi
	csinv	w0, w1, wzr, cs
.L1297:
	ret
	.p2align 2,,3
.L1299:
	mov	w0, -1
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.p2align 4,,11
	.global	__ucmpti2
	.type	__ucmpti2, %function
__ucmpti2:
.LFB165:
	.cfi_startproc
	mov	x4, x0
	mov	w0, 0
	cmp	x1, x3
	bcc	.L1302
	mov	w0, 2
	bhi	.L1302
	cmp	x4, x2
	mov	w3, 0
	cset	w1, hi
	add	w0, w1, 1
	csel	w0, w0, w3, cs
.L1302:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC1:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.align	4
.LC2:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC3:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.rodata
	.align	3
	.set	.LANCHOR1,. + 0
	.type	digits, %object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	s.0, %object
	.size	s.0, 7
s.0:
	.zero	7
	.zero	1
	.type	seed, %object
	.size	seed, 8
seed:
	.zero	8
	.global	__multf3
	.global	__netf2
	.global	__addtf3
	.global	__extenddftf2
	.global	__gttf2
	.global	__lttf2
	.global	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
