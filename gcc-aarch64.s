	.arch armv8-a
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
	cmp	x0, x1
	bls	.L5
	cbz	x2, .L6
	sub	x1, x1, #1
	sub	x4, x0, #1
	.p2align 3,,7
.L7:
	ldrb	w3, [x1, x2]
	strb	w3, [x4, x2]
	subs	x2, x2, #1
	bne	.L7
.L6:
	ret
	.p2align 2,,3
.L5:
	beq	.L6
	cbz	x2, .L6
	mov	x3, 0
	.p2align 3,,7
.L8:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L8
	ret
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
	cbnz	x3, .L18
	b	.L19
	.p2align 2,,3
.L20:
	add	x0, x0, 1
	subs	x3, x3, #1
	beq	.L19
.L18:
	ldrb	w4, [x1]
	add	x1, x1, 1
	strb	w4, [x0]
	cmp	w4, w2
	bne	.L20
	add	x0, x0, 1
	ret
	.p2align 2,,3
.L19:
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
	cbnz	x2, .L29
	b	.L32
	.p2align 2,,3
.L31:
	add	x0, x0, 1
	subs	x2, x2, #1
	beq	.L32
.L29:
	ldrb	w3, [x0]
	cmp	w3, w1
	bne	.L31
	ret
	.p2align 2,,3
.L32:
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
	cbnz	x2, .L35
	b	.L39
	.p2align 2,,3
.L37:
	subs	x2, x2, #1
	beq	.L39
.L35:
	ldrb	w3, [x0]
	add	x1, x1, 1
	ldrb	w4, [x1, -1]
	add	x0, x0, 1
	cmp	w3, w4
	beq	.L37
	sub	w0, w3, w4
	ret
	.p2align 2,,3
.L39:
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
	cbz	x2, .L43
	bl	memcpy
.L43:
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
	sub	x4, x0, #1
	add	x2, x0, x2
	and	w1, w1, 255
	b	.L49
	.p2align 2,,3
.L51:
	ldrb	w3, [x0]
	sub	x2, x2, #1
	cmp	w3, w1
	beq	.L48
.L49:
	mov	x0, x2
	cmp	x2, x4
	bne	.L51
	mov	x0, 0
.L48:
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
	cbz	x2, .L53
	add	x3, x0, x2
	mov	x2, x0
	.p2align 3,,7
.L54:
	strb	w1, [x2], 1
	cmp	x3, x2
	bne	.L54
.L53:
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
	cbz	w2, .L60
	.p2align 3,,7
.L61:
	ldrb	w2, [x1, 1]!
	strb	w2, [x0, 1]!
	cbnz	w2, .L61
.L60:
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
	cbnz	w2, .L67
	b	.L66
	.p2align 2,,3
.L69:
	ldrb	w2, [x0, 1]!
	cbz	w2, .L66
.L67:
	cmp	w2, w1
	bne	.L69
.L66:
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
.L75:
	ldrb	w2, [x0]
	cmp	w2, w1
	beq	.L74
	add	x0, x0, 1
	cbnz	w2, .L75
	mov	x0, 0
.L74:
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
	ldrb	w3, [x0]
	ldrb	w4, [x1]
	cmp	w3, 0
	ccmp	w3, w4, 0, ne
	bne	.L78
	mov	x2, 1
	.p2align 3,,7
.L79:
	ldrb	w3, [x0, x2]
	ldrb	w4, [x1, x2]
	add	x2, x2, 1
	cmp	w3, 0
	ccmp	w3, w4, 0, ne
	beq	.L79
.L78:
	sub	w0, w3, w4
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
	cbz	w1, .L87
	mov	x1, x0
	.p2align 3,,7
.L86:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L86
	sub	x0, x1, x0
	ret
	.p2align 2,,3
.L87:
	mov	x1, x0
	sub	x0, x1, x0
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
	cbz	x2, .L94
	ldrb	w4, [x0]
	cbz	w4, .L95
	sub	x6, x2, #1
	mov	x2, x1
	b	.L92
	.p2align 2,,3
.L93:
	ldrb	w4, [x0, 1]!
	add	x2, x2, 1
	cbz	w4, .L91
.L92:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x3, x3, x6
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x3, 0, 4, eq
	bne	.L93
.L91:
	ldrb	w0, [x2]
	sub	w0, w4, w0
	ret
	.p2align 2,,3
.L94:
	mov	w0, 0
	ret
.L95:
	mov	x2, x1
	b	.L91
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
	ble	.L99
	and	x2, x2, -2
	add	x4, x0, x2
	.p2align 3,,7
.L101:
	ldrb	w3, [x0, 1]
	add	x1, x1, 2
	ldrb	w2, [x0], 2
	strb	w3, [x1, -2]
	strb	w2, [x1, -1]
	cmp	x0, x4
	bne	.L101
.L99:
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
	sub	w0, w0, #97
	cmp	w0, 25
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
	bls	.L113
	mov	w2, -8232
	add	w2, w1, w2
	mov	w0, 1
	cmp	w2, w0
	bls	.L113
	mov	w0, -65529
	add	w1, w1, w0
	cmp	w1, 2
	cset	w0, ls
.L113:
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
	bls	.L124
	mov	w2, -8234
	add	w2, w0, w2
	mov	w0, 47061
	cmp	w2, w0
	mov	w2, 8231
	mov	w0, 1
	ccmp	w1, w2, 0, hi
	bls	.L118
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L118
	mov	w0, -65532
	mov	w2, 3
	add	w3, w1, w0
	movk	w2, 0x10, lsl 16
	mov	w0, 0
	cmp	w3, w2
	bhi	.L118
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
.L118:
	ret
	.p2align 2,,3
.L124:
	add	w1, w0, 1
	and	w1, w1, 127
	cmp	w1, 32
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
	bls	.L127
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	cset	w0, ls
	ret
	.p2align 2,,3
.L127:
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
	bvs	.L132
	fcmp	d1, d1
	bvs	.L133
	fcmpe	d0, d1
	bgt	.L135
	movi	d31, #0
.L129:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L135:
	fsub	d31, d0, d1
	fmov	d0, d31
	ret
	.p2align 2,,3
.L132:
	fmov	d31, d0
	b	.L129
	.p2align 2,,3
.L133:
	fmov	d31, d1
	b	.L129
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
	bvs	.L140
	fcmp	s1, s1
	bvs	.L141
	fcmpe	s0, s1
	bgt	.L143
	movi	v31.2s, #0
.L137:
	fmov	s0, s31
	ret
	.p2align 2,,3
.L143:
	fsub	s31, s0, s1
	fmov	s0, s31
	ret
	.p2align 2,,3
.L140:
	fmov	s31, s0
	b	.L137
	.p2align 2,,3
.L141:
	fmov	s31, s1
	b	.L137
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
	bvs	.L148
	fcmp	d1, d1
	bvs	.L145
	fmov	x0, d0
	fmov	x1, d1
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L147
	cmp	w0, 0
	fcsel	d0, d1, d0, ne
.L145:
	ret
	.p2align 2,,3
.L147:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	ret
	.p2align 2,,3
.L148:
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
	bvs	.L154
	fcmp	s1, s1
	bvs	.L151
	fmov	w0, s0
	fmov	w1, s1
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L153
	cmp	w0, 0
	fcsel	s0, s1, s0, ne
.L151:
	ret
	.p2align 2,,3
.L153:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	ret
	.p2align 2,,3
.L154:
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
	cbnz	w0, .L165
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L164
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x1, x1, 63
	lsr	x0, x0, 63
	cmp	w0, w1
	beq	.L159
	cbz	w0, .L164
.L165:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L159:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbnz	w0, #31, .L165
.L164:
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
	bvs	.L170
	fcmp	d1, d1
	bvs	.L167
	fmov	x0, d0
	fmov	x1, d1
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L169
	cmp	w0, 0
	fcsel	d0, d0, d1, ne
.L167:
	ret
	.p2align 2,,3
.L169:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	ret
	.p2align 2,,3
.L170:
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
	bvs	.L176
	fcmp	s1, s1
	bvs	.L173
	fmov	w0, s0
	fmov	w1, s1
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L175
	cmp	w0, 0
	fcsel	s0, s0, s1, ne
.L173:
	ret
	.p2align 2,,3
.L175:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	ret
	.p2align 2,,3
.L176:
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
	cbnz	w0, .L185
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L187
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x1, x1, 63
	lsr	x0, x0, 63
	cmp	w0, w1
	beq	.L181
	cbnz	w0, .L187
.L185:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L181:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L185
.L187:
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
	cbz	w0, .L192
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	adrp	x4, .LANCHOR1
	mov	x2, x0
	add	x4, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L191:
	and	w3, w1, 63
	lsr	w1, w1, 6
	ldrb	w3, [x4, w3, uxtw]
	strb	w3, [x2], 1
	cbnz	w1, .L191
	strb	wzr, [x2]
	ret
	.p2align 2,,3
.L192:
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
	add	x1, x1, :lo12:.LANCHOR0
	mov	x2, 32557
	movk	x2, 0x4c95, lsl 16
	ldr	x0, [x1, 8]
	movk	x2, 0xf42d, lsl 32
	movk	x2, 0x5851, lsl 48
	mul	x0, x0, x2
	add	x0, x0, 1
	str	x0, [x1, 8]
	lsr	x0, x0, 33
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
	cbz	x1, .L202
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L196
	str	x0, [x1, 8]
.L196:
	ret
	.p2align 2,,3
.L202:
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
	cbz	x1, .L204
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L204:
	ldr	x0, [x0, 8]
	cbz	x0, .L203
	str	x1, [x0]
.L203:
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
	cbz	x24, .L213
	mov	x23, x4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x19, x1
	mov	x20, 0
	b	.L215
	.p2align 2,,3
.L230:
	add	x19, x19, x21
	cmp	x24, x20
	beq	.L229
.L215:
	mov	x1, x19
	mov	x0, x22
	mov	x27, x19
	add	x20, x20, 1
	blr	x23
	cbnz	w0, .L230
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L212:
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
.L229:
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
.L213:
	add	x0, x24, 1
	str	x0, [x25]
	madd	x27, x21, x24, x26
	cbz	x21, .L212
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
	cbz	x24, .L232
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
	b	.L234
	.p2align 2,,3
.L245:
	add	x19, x19, x23
	cmp	x24, x20
	beq	.L244
.L234:
	mov	x1, x19
	mov	x0, x21
	mov	x25, x19
	add	x20, x20, 1
	blr	x22
	cbnz	w0, .L245
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L231:
	mov	x0, x25
	ldr	x25, [sp, 64]
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
.L244:
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
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L232:
	mov	x25, 0
	b	.L231
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
	bhi	.L248
	.p2align 3,,7
.L249:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L249
.L248:
	cmp	w1, 43
	beq	.L250
	cmp	w1, 45
	bne	.L269
	ldrb	w3, [x0, 1]
	add	x1, x0, 1
	sub	w2, w3, #48
	cmp	w2, 9
	bhi	.L259
	mov	w4, 1
.L253:
	mov	w0, 0
	.p2align 3,,7
.L256:
	add	w0, w0, w0, lsl 2
	ldrb	w3, [x1, 1]!
	lsl	w0, w0, 1
	sub	w0, w0, w2
	sub	w2, w3, #48
	cmp	w2, 9
	bls	.L256
	cbz	w4, .L254
	ret
	.p2align 2,,3
.L269:
	ldrb	w3, [x0]
	mov	x1, x0
	mov	w4, 0
	sub	w2, w3, #48
	cmp	w2, 9
	bls	.L253
	mov	w0, 0
.L254:
	neg	w0, w0
	ret
	.p2align 2,,3
.L250:
	ldrb	w3, [x0, 1]
	add	x1, x0, 1
	mov	w4, 0
	sub	w2, w3, #48
	cmp	w2, 9
	bls	.L253
	mov	w0, 0
	b	.L254
.L259:
	mov	w0, 0
	ret
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
	bhi	.L271
	.p2align 3,,7
.L272:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L272
.L271:
	cmp	w1, 43
	beq	.L273
	cmp	w1, 45
	bne	.L292
	ldrb	w3, [x0, 1]
	add	x1, x0, 1
	sub	w2, w3, #48
	cmp	w2, 9
	bhi	.L282
	mov	w4, 1
.L276:
	mov	x0, 0
	.p2align 3,,7
.L279:
	add	x0, x0, x0, lsl 2
	ldrb	w3, [x1, 1]!
	lsl	x0, x0, 1
	sub	x0, x0, w2, sxtw
	sub	w2, w3, #48
	cmp	w2, 9
	bls	.L279
	cbz	w4, .L277
	ret
	.p2align 2,,3
.L292:
	ldrb	w3, [x0]
	mov	x1, x0
	mov	w4, 0
	sub	w2, w3, #48
	cmp	w2, 9
	bls	.L276
	mov	x0, 0
.L277:
	neg	x0, x0
	ret
	.p2align 2,,3
.L273:
	ldrb	w3, [x0, 1]
	add	x1, x0, 1
	mov	w4, 0
	sub	w2, w3, #48
	cmp	w2, 9
	bls	.L276
	mov	x0, 0
	b	.L277
.L282:
	mov	x0, 0
	ret
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
	b	atol
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
	cbz	x2, .L295
	mov	x22, x3
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	mov	x19, x2
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	mov	x24, x0
	mov	x23, x1
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	mov	x25, x4
	.p2align 3,,7
.L298:
	lsr	x20, x19, 1
	mov	x0, x24
	sub	x19, x19, #1
	madd	x21, x20, x22, x23
	mov	x1, x21
	blr	x25
	cmp	w0, 0
	blt	.L299
	ble	.L305
	add	x23, x21, x22
	sub	x19, x19, x20
	cbnz	x19, .L298
.L306:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L295:
	mov	x21, 0
	b	.L294
	.p2align 2,,3
.L299:
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	mov	x19, x20
	cbnz	x19, .L298
	b	.L306
	.p2align 2,,3
.L305:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L294:
	mov	x0, x21
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
	cbz	w2, .L308
	mov	w19, w2
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	x22, x3
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	mov	x23, x1
	mov	x24, x5
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -8
	.cfi_offset 25, -16
	mov	x26, x0
	mov	x25, x4
	b	.L311
	.p2align 2,,3
.L319:
	ble	.L310
	add	x23, x20, x22
	asr	w21, w19, 1
.L310:
	mov	w19, w21
	cbz	w21, .L318
.L311:
	asr	w21, w19, 1
	mov	x2, x24
	mov	x0, x26
	sub	w19, w19, #1
	sxtw	x20, w21
	madd	x20, x20, x22, x23
	mov	x1, x20
	blr	x25
	cmp	w0, 0
	cbnz	w0, .L319
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L307:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L318:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L308:
	mov	x20, 0
	b	.L307
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
	cmp	w2, 0
	ccmp	w1, w2, 4, ne
	beq	.L328
	.p2align 3,,7
.L329:
	ldr	w2, [x0, 4]!
	cmp	w2, 0
	ccmp	w2, w1, 4, ne
	bne	.L329
.L328:
	cmp	w2, 0
	csel	x0, x0, xzr, ne
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
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	beq	.L336
	mov	x2, 4
	.p2align 3,,7
.L337:
	ldr	w4, [x0, x2]
	ldr	w3, [x1, x2]
	add	x2, x2, 4
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	bne	.L337
.L336:
	cmp	w4, w3
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
.L345:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L345
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
	cbz	w1, .L350
	mov	x1, x0
	.p2align 3,,7
.L349:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L349
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
	.p2align 2,,3
.L350:
	mov	x1, x0
	sub	x0, x1, x0
	asr	x0, x0, 2
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
	cbnz	x2, .L353
	b	.L358
	.p2align 2,,3
.L355:
	subs	x2, x2, #1
	beq	.L358
.L353:
	ldr	w4, [x0]
	add	x1, x1, 4
	ldr	w3, [x1, -4]
	add	x0, x0, 4
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	bne	.L355
	cmp	w4, w3
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L358:
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
	cbnz	x2, .L362
	b	.L365
	.p2align 2,,3
.L364:
	add	x0, x0, 4
	subs	x2, x2, #1
	beq	.L365
.L362:
	ldr	w3, [x0]
	cmp	w3, w1
	bne	.L364
	ret
	.p2align 2,,3
.L365:
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
	cbnz	x2, .L368
	b	.L373
	.p2align 2,,3
.L370:
	subs	x2, x2, #1
	beq	.L373
.L368:
	ldr	w4, [x0]
	add	x1, x1, 4
	ldr	w3, [x1, -4]
	add	x0, x0, 4
	cmp	w4, w3
	beq	.L370
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L373:
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
	cbz	x2, .L377
	lsl	x2, x2, 2
	bl	memcpy
.L377:
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
	beq	.L383
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcs	.L394
	cbz	x2, .L383
	sub	x2, x2, #1
	.p2align 3,,7
.L386:
	ldr	w3, [x1, x2, lsl 2]
	str	w3, [x0, x2, lsl 2]
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L386
.L383:
	ret
	.p2align 2,,3
.L394:
	mov	x3, 0
	cbz	x2, .L383
	.p2align 3,,7
.L385:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L385
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
	cbz	x2, .L396
	mov	x3, 0
	.p2align 3,,7
.L397:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L397
.L396:
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
	cmp	x0, x1
	bcs	.L403
	cbz	x2, .L402
	sub	x0, x0, #1
	sub	x1, x1, #1
	.p2align 3,,7
.L405:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	subs	x2, x2, #1
	bne	.L405
.L402:
	ret
	.p2align 2,,3
.L403:
	beq	.L402
	cbz	x2, .L402
	mov	x3, 0
	.p2align 3,,7
.L406:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L406
	ret
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
	and	w2, w2, 15
	lsl	w1, w0, w1
	lsr	w0, w0, w2
	orr	w0, w1, w0
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
	and	w2, w2, 15
	lsr	w1, w0, w1
	lsl	w0, w0, w2
	orr	w0, w1, w0
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
	and	w2, w2, 7
	lsl	w1, w0, w1
	lsr	w0, w0, w2
	orr	w0, w1, w0
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
	and	w2, w2, 7
	lsr	w1, w0, w1
	lsl	w0, w0, w2
	orr	w0, w1, w0
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
	mov	w1, 0
	b	.L431
	.p2align 2,,3
.L429:
	cmp	w1, 32
	beq	.L433
.L431:
	lsr	w2, w0, w1
	add	w1, w1, 1
	tbz	x2, 0, .L429
	mov	w0, w1
	ret
	.p2align 2,,3
.L433:
	mov	w0, 0
	ret
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
	cbz	w1, .L434
	and	w0, w1, 1
	tbnz	x1, 0, .L434
	mov	w0, 1
	.p2align 3,,7
.L436:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L436
.L434:
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
	bmi	.L440
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	cset	w0, gt
.L440:
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
	bmi	.L443
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	cset	w0, gt
.L443:
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
	add	x0, x0, :lo12:.LC0
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	ldr	q1, [x0]
	str	q0, [sp, 16]
	bl	__lttf2
	mov	w1, w0
	mov	w0, 1
	tbnz	w1, #31, .L446
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q0, [sp, 16]
	ldr	q1, [x0]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L446:
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
	bvs	.L455
	fadd	s1, s0, s0
	fcmp	s1, s0
	beq	.L455
	cmp	w0, 0
	fmov	s30, 2.0e+0
	fmov	s31, 5.0e-1
	fcsel	s31, s30, s31, ge
	tbz	x0, 0, .L457
	.p2align 3,,7
.L458:
	fmul	s0, s0, s31
.L457:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L455
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L458
.L467:
	asr	w0, w1, 1
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L458
	b	.L467
	.p2align 2,,3
.L455:
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
	bvs	.L469
	fadd	d1, d0, d0
	fcmp	d1, d0
	beq	.L469
	cmp	w0, 0
	fmov	d30, 2.0e+0
	fmov	d31, 5.0e-1
	fcsel	d31, d30, d31, ge
	tbz	x0, 0, .L471
	.p2align 3,,7
.L472:
	fmul	d0, d0, d31
.L471:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L469
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L472
.L481:
	asr	w0, w1, 1
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L472
	b	.L481
	.p2align 2,,3
.L469:
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
	cbnz	w0, .L483
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L483
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q1, [x0]
	tbnz	w19, #31, .L498
.L485:
	tbz	x19, 0, .L486
	.p2align 3,,7
.L487:
	ldr	q0, [sp, 32]
	str	q1, [sp, 48]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	q1, [sp, 48]
.L486:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L483
	mov	v0.16b, v1.16b
	bl	__multf3
	add	w0, w19, w19, lsr 31
	mov	v1.16b, v0.16b
	tbnz	x19, 0, .L487
.L499:
	asr	w19, w0, 1
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
	add	w0, w19, w19, lsr 31
	tbnz	x19, 0, .L487
	b	.L499
	.p2align 2,,3
.L483:
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
.L498:
	.cfi_restore_state
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q1, [x0]
	b	.L485
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
	cbz	x2, .L501
	mov	x3, 0
	.p2align 3,,7
.L502:
	ldrb	w4, [x0, x3]
	ldrb	w5, [x1, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L502
.L501:
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
	cbz	w3, .L514
	mov	x3, x0
	.p2align 3,,7
.L509:
	ldrb	w4, [x3, 1]!
	cbnz	w4, .L509
.L508:
	cbnz	x2, .L510
	b	.L511
	.p2align 2,,3
.L512:
	beq	.L511
.L510:
	ldrb	w4, [x1]
	subs	x2, x2, #1
	strb	w4, [x3]
	add	x1, x1, 1
	add	x3, x3, 1
	cbnz	w4, .L512
	ret
	.p2align 2,,3
.L511:
	strb	wzr, [x3]
	ret
	.p2align 2,,3
.L514:
	mov	x3, x0
	b	.L508
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
	cbz	x1, .L520
.L521:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L523
.L520:
	ret
	.p2align 2,,3
.L523:
	add	x0, x0, 1
	cmp	x1, x0
	bne	.L521
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
	cbz	w4, .L533
.L529:
	mov	x2, x1
	b	.L532
	.p2align 2,,3
.L531:
	cmp	w3, w4
	beq	.L530
.L532:
	ldrb	w3, [x2]
	add	x2, x2, 1
	cbnz	w3, .L531
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L529
.L533:
	mov	x0, 0
.L530:
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
.L537:
	ldrb	w3, [x2]
	cmp	w3, w1
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L537
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
	ldrb	w7, [x1]
	mov	x3, x0
	cbz	w7, .L550
	mov	x8, x1
	.p2align 3,,7
.L542:
	ldrb	w0, [x8, 1]!
	cbnz	w0, .L542
	subs	x8, x8, x1
	mov	x0, x3
	sub	x9, x1, #1
	bne	.L547
	b	.L540
	.p2align 2,,3
.L559:
	add	x3, x3, 1
	cbz	w2, .L558
.L547:
	ldrb	w2, [x3]
	cmp	w2, w7
	bne	.L559
	mov	x0, x1
	mov	x6, x3
	b	.L546
	.p2align 2,,3
.L545:
	ldrb	w2, [x6, 1]!
	add	x0, x0, 1
	cbz	w2, .L544
.L546:
	ldrb	w5, [x0]
	sub	x4, x8, x0
	add	x4, x9, x4
	cmp	w5, 0
	ccmp	w5, w2, 0, ne
	ccmp	x4, 0, 4, eq
	bne	.L545
.L544:
	ldrb	w0, [x0]
	cmp	w0, w2
	beq	.L550
	add	x3, x3, 1
	b	.L547
	.p2align 2,,3
.L558:
	mov	x0, 0
.L540:
	ret
.L550:
	mov	x0, x3
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
	bmi	.L567
	bgt	.L568
	ret
	.p2align 2,,3
.L568:
	fcmpe	d1, #0.0
	bmi	.L563
	ret
	.p2align 2,,3
.L563:
	fneg	d0, d0
	ret
	.p2align 2,,3
.L567:
	fcmpe	d1, #0.0
	bgt	.L563
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
	mov	x6, x0
	cbz	x3, .L570
	cmp	x1, x3
	bcc	.L578
	sub	x1, x1, x3
	adds	x7, x0, x1
	bcs	.L578
	ldrb	w8, [x2]
	b	.L575
	.p2align 2,,3
.L572:
	cmp	x7, x6
	bcc	.L578
.L575:
	ldrb	w1, [x6]
	mov	x0, x6
	add	x6, x6, 1
	cmp	w1, w8
	bne	.L572
	cmp	x3, 1
	beq	.L570
	mov	x1, 1
	.p2align 3,,7
.L573:
	ldrb	w5, [x0, x1]
	ldrb	w4, [x2, x1]
	add	x1, x1, 1
	cmp	w5, w4
	bne	.L572
	cmp	x3, x1
	bne	.L573
.L570:
	ret
	.p2align 2,,3
.L578:
	mov	x0, 0
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
	cbz	x2, .L582
	bl	memmove
.L582:
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
	bmi	.L604
	fmov	d3, 1.0e+0
	mov	w2, 0
	fcmpe	d0, d3
	bge	.L590
	fmov	d2, 5.0e-1
	fcmpe	d0, d2
	bmi	.L605
	b	.L593
	.p2align 2,,3
.L599:
	fmov	d0, d30
	mov	w2, 1
.L590:
	mov	w1, 0
	fmov	d5, 5.0e-1
	fmov	d4, 1.0e+0
	.p2align 3,,7
.L596:
	fmul	d0, d0, d5
	add	w1, w1, 1
	fcmpe	d0, d4
	bge	.L596
	str	w1, [x0]
	fmov	d31, d0
	cbz	w2, .L587
.L592:
	fneg	d31, d0
.L587:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L604:
	fmov	d6, -1.0e+0
	fneg	d30, d0
	fcmpe	d0, d6
	bls	.L599
	fmov	d1, -5.0e-1
	fcmpe	d0, d1
	bgt	.L600
	fmov	d0, d30
	str	wzr, [x0]
	b	.L592
	.p2align 2,,3
.L605:
	fcmp	d0, #0.0
	bne	.L602
.L593:
	fmov	d31, d0
	str	wzr, [x0]
	fmov	d0, d31
	ret
	.p2align 2,,3
.L600:
	mov	w2, 1
.L591:
	fmov	d0, d30
	mov	w1, 0
	fmov	d29, 5.0e-1
	.p2align 3,,7
.L598:
	fadd	d0, d0, d0
	sub	w1, w1, #1
	fcmpe	d0, d29
	bmi	.L598
	str	w1, [x0]
	fmov	d31, d0
	cbnz	w2, .L592
	b	.L587
.L602:
	fmov	d30, d0
	b	.L591
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
	cbz	x2, .L610
	.p2align 3,,7
.L612:
	sbfx	x3, x2, 0, 1
	lsr	x2, x2, 1
	and	x3, x3, x1
	lsl	x1, x1, 1
	add	x0, x0, x3
	cbnz	x2, .L612
.L610:
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
	bcs	.L617
	.p2align 3,,7
.L616:
	tbnz	w1, #31, .L617
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L616
	mov	w4, 0
	cbz	w3, .L620
.L617:
	mov	w4, 0
	.p2align 3,,7
.L622:
	cmp	w0, w1
	bcc	.L621
	sub	w0, w0, w1
	orr	w4, w4, w3
.L621:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L622
.L620:
	cmp	x2, 0
	csel	w0, w4, w0, eq
	ret
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
	clz	w1, w1
	mov	w0, 7
	sub	w1, w1, #1
	csel	w0, w1, w0, ne
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
	sub	w0, w0, #1
	csel	w0, w0, w3, ne
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
	cbz	w2, .L636
	.p2align 3,,7
.L638:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L638
.L636:
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
	lsr	w6, w2, 3
	and	w3, w2, -8
	cmp	x0, x1
	bcc	.L642
	add	x4, x1, w2, uxtw
	cmp	x0, x4
	bls	.L656
.L642:
	cbz	w6, .L645
	lsl	w6, w6, 3
	mov	x4, 0
	.p2align 3,,7
.L646:
	ldr	x5, [x1, x4]
	str	x5, [x0, x4]
	add	x4, x4, 8
	cmp	x6, x4
	bne	.L646
.L645:
	cmp	w2, w3
	bls	.L641
	.p2align 3,,7
.L647:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L647
.L641:
	ret
	.p2align 2,,3
.L656:
	sub	w3, w2, #1
	cbz	w2, .L641
	.p2align 3,,7
.L648:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L648
	ret
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
	lsr	w5, w2, 1
	cmp	x0, x1
	bcc	.L658
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L673
.L658:
	cbz	w5, .L661
	lsl	w5, w5, 1
	mov	x3, 0
	.p2align 3,,7
.L662:
	ldrsh	w4, [x1, x3]
	strh	w4, [x0, x3]
	add	x3, x3, 2
	cmp	x5, x3
	bne	.L662
.L661:
	tbz	x2, 0, .L657
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L657:
	ret
	.p2align 2,,3
.L673:
	sub	w3, w2, #1
	cbz	w2, .L657
	.p2align 3,,7
.L663:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L663
	ret
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
	lsr	w6, w2, 2
	and	w3, w2, -4
	cmp	x0, x1
	bcc	.L675
	add	x4, x1, w2, uxtw
	cmp	x0, x4
	bls	.L689
.L675:
	cbz	w6, .L678
	lsl	w6, w6, 2
	mov	x4, 0
	.p2align 3,,7
.L679:
	ldr	w5, [x1, x4]
	str	w5, [x0, x4]
	add	x4, x4, 4
	cmp	x6, x4
	bne	.L679
.L678:
	cmp	w2, w3
	bls	.L674
	.p2align 3,,7
.L680:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L680
.L674:
	ret
	.p2align 2,,3
.L689:
	sub	w3, w2, #1
	cbz	w2, .L674
	.p2align 3,,7
.L681:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L681
	ret
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
	and	w0, w0, 65535
	mov	w1, 0
	mov	w3, 15
	.p2align 3,,7
.L698:
	sub	w2, w3, w1
	asr	w2, w0, w2
	tbnz	x2, 0, .L696
	add	w1, w1, 1
	cmp	w1, 16
	bne	.L698
.L696:
	mov	w0, w1
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
	and	w0, w0, 65535
	mov	w1, 0
	.p2align 3,,7
.L702:
	asr	w2, w0, w1
	tbnz	x2, 0, .L700
	add	w1, w1, 1
	cmp	w1, 16
	bne	.L702
.L700:
	mov	w0, w1
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
	bge	.L708
	fcvtzs	x0, s0
	ret
	.p2align 2,,3
.L708:
	fsub	s31, s0, s31
	fcvtzs	x0, s31
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
	and	w0, w0, 65535
	mov	w3, 0
	mov	w1, 0
	.p2align 3,,7
.L711:
	asr	w2, w0, w1
	add	w1, w1, 1
	and	w2, w2, 1
	add	w3, w3, w2
	cmp	w1, 16
	bne	.L711
	and	w0, w3, 1
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
	and	w0, w0, 65535
	mov	w3, 0
	mov	w1, 0
	.p2align 3,,7
.L714:
	asr	w2, w0, w1
	add	w1, w1, 1
	and	w2, w2, 1
	add	w3, w3, w2
	cmp	w1, 16
	bne	.L714
	mov	w0, w3
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
	cbz	w2, .L716
	.p2align 3,,7
.L718:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L718
.L716:
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
	cbz	w3, .L721
	cbz	w1, .L721
	.p2align 3,,7
.L723:
	sbfx	x2, x1, 0, 1
	lsr	w1, w1, 1
	and	w2, w2, w3
	lsl	w3, w3, 1
	add	w0, w0, w2
	cbnz	w1, .L723
.L721:
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
	bcs	.L730
	.p2align 3,,7
.L729:
	tbnz	w1, #31, .L730
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L729
	mov	w4, 0
	cbz	w3, .L733
.L730:
	mov	w4, 0
	.p2align 3,,7
.L735:
	cmp	w0, w1
	bcc	.L734
	sub	w0, w0, w1
	orr	w4, w4, w3
.L734:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L735
.L733:
	cmp	w2, 0
	csel	w0, w4, w0, eq
	ret
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
	mov	w4, w0
	cmp	w1, 0
	blt	.L760
	beq	.L756
	mov	w5, 0
.L753:
	mov	w0, 0
	mov	w2, 0
	.p2align 3,,7
.L755:
	sbfx	x3, x1, 0, 1
	add	w2, w2, 1
	asr	w1, w1, 1
	and	w3, w3, w4
	and	w2, w2, 255
	cmp	w1, 0
	add	w0, w0, w3
	ccmp	w2, 31, 2, ne
	lsl	w4, w4, 1
	bls	.L755
	cmp	w5, 0
	csneg	w0, w0, w0, eq
	ret
	.p2align 2,,3
.L760:
	neg	w1, w1
	mov	w5, 1
	b	.L753
	.p2align 2,,3
.L756:
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
	mov	w5, 0
	tbnz	x0, #63, .L780
.L762:
	tbz	x1, #63, .L763
	neg	x1, x1
	eor	w5, w5, 1
.L763:
	mov	w4, w0
	mov	w2, w1
	mov	w3, 1
	cmp	w0, w1
	bls	.L765
	.p2align 3,,7
.L764:
	tbnz	w2, #31, .L765
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L764
	mov	x0, 0
	cbz	w3, .L768
.L765:
	mov	x0, 0
	.p2align 3,,7
.L770:
	cmp	w4, w2
	bcc	.L769
	sub	w4, w4, w2
	orr	w0, w0, w3
.L769:
	lsr	w3, w3, 1
	lsr	w2, w2, 1
	cbnz	w3, .L770
.L768:
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
	.p2align 2,,3
.L780:
	neg	x0, x0
	mov	w5, 1
	b	.L762
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
	tbz	x0, #63, .L782
	neg	x0, x0
	mov	w5, 1
.L782:
	cmp	x1, 0
	mov	w4, w0
	csneg	x1, x1, x1, ge
	mov	w3, 1
	mov	w2, w1
	cmp	w0, w1
	bls	.L788
	.p2align 3,,7
.L783:
	tbnz	w2, #31, .L788
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L783
	cbz	w3, .L798
	.p2align 3,,7
.L788:
	subs	w0, w4, w2
	lsr	w3, w3, 1
	csel	w4, w0, w4, cs
	lsr	w2, w2, 1
	cbnz	w3, .L788
.L798:
	uxtw	x0, w4
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
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
	and	w0, w0, 65535
	and	w1, w1, 65535
	mov	w3, 1
	cmp	w1, w0
	bcs	.L801
	.p2align 3,,7
.L800:
	tbnz	x1, 15, .L801
	ubfiz	w3, w3, 1, 15
	ubfiz	w1, w1, 1, 15
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L800
	mov	w5, 0
	cbz	w3, .L804
.L801:
	mov	w5, 0
	.p2align 3,,7
.L806:
	subs	w4, w0, w1
	bcc	.L805
	and	w0, w4, 65535
	orr	w5, w3, w5
.L805:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L806
.L804:
	cmp	w2, 0
	csel	w0, w0, w5, ne
	ret
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
	bcs	.L815
	.p2align 3,,7
.L814:
	tbnz	x1, 31, .L815
	lsl	x3, x3, 1
	lsl	x1, x1, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L814
	mov	x4, 0
	cbz	x3, .L818
.L815:
	mov	x4, 0
	.p2align 3,,7
.L820:
	cmp	x0, x1
	bcc	.L819
	sub	x0, x0, x1
	orr	x4, x4, x3
.L819:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbnz	x3, .L820
.L818:
	cmp	w2, 0
	csel	x0, x4, x0, eq
	ret
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
	tbz	x1, 5, .L829
	sub	w1, w1, #32
	mov	w3, 0
	lsl	w0, w0, w1
.L830:
	uxtw	x1, w3
	orr	x0, x1, x0, lsl 32
.L828:
	ret
	.p2align 2,,3
.L829:
	cbz	w1, .L828
	neg	w4, w1
	asr	x0, x0, 32
	lsl	w3, w2, w1
	lsl	w0, w0, w1
	lsr	w2, w2, w4
	orr	w0, w2, w0
	b	.L830
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
	tbz	x2, 6, .L835
	sub	w2, w2, #64
	mov	x3, 0
	lsl	x1, x0, x2
	mov	x0, x3
.L837:
	ret
	.p2align 2,,3
.L835:
	cbz	w2, .L837
	neg	w4, w2
	lsl	x1, x1, x2
	lsl	x3, x0, x2
	lsr	x2, x0, x4
	mov	x0, x3
	orr	x1, x2, x1
	b	.L837
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
	tbz	x1, 5, .L840
	asr	x2, x0, 32
	sub	w1, w1, #32
	asr	w0, w2, 31
	asr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L839:
	ret
	.p2align 2,,3
.L840:
	cbz	w1, .L839
	asr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	asr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L839
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
	tbz	x2, 6, .L846
	sub	w2, w2, #64
	asr	x3, x1, 63
	asr	x0, x1, x2
	mov	x1, x3
.L848:
	ret
	.p2align 2,,3
.L846:
	cbz	w2, .L848
	neg	w4, w2
	lsr	x0, x0, x2
	asr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L848
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
	lsl	w3, w3, 4
	mov	w2, 2
	sub	w1, w1, w3
	lsr	w1, w0, w1
	tst	w1, 65280
	cset	w0, eq
	lsl	w0, w0, 3
	sub	w5, w5, w0
	add	w3, w0, w3
	lsr	w1, w1, w5
	tst	w1, 240
	cset	w0, eq
	lsl	w0, w0, 2
	sub	w4, w4, w0
	lsr	w1, w1, w4
	tst	w1, 12
	cset	w4, eq
	lsl	w4, w4, 1
	sub	w5, w2, w4
	add	w0, w0, w4
	lsr	w1, w1, w5
	sub	w2, w2, w1
	tst	x1, 2
	csel	w2, w2, wzr, eq
	add	w2, w2, w3
	add	w0, w2, w0
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
	and	x2, x2, x1
	cset	w1, eq
	orr	x2, x2, x0
	clz	x2, x2
	add	w0, w2, w1, lsl 6
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
	blt	.L856
	mov	w0, 2
	bgt	.L854
	mov	w0, 0
	cmp	w2, w1
	bcc	.L854
	cset	w0, hi
	add	w0, w0, 1
.L854:
	ret
	.p2align 2,,3
.L856:
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
	asr	x3, x0, 32
	asr	x2, x1, 32
	cmp	w3, w2
	blt	.L862
	mov	w2, 2
	bgt	.L861
	mov	w2, 0
	cmp	w0, w1
	bcc	.L861
	cset	w2, hi
	add	w2, w2, 1
.L861:
	sub	w0, w2, #1
	ret
	.p2align 2,,3
.L862:
	mov	w2, 0
	sub	w0, w2, #1
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
	blt	.L866
	mov	w0, 2
	bgt	.L866
	mov	w0, 0
	cmp	x4, x2
	bcc	.L866
	cset	w0, hi
	add	w0, w0, 1
.L866:
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
	lsl	w2, w2, 4
	lsr	w1, w0, w2
	tst	w1, 255
	cset	w0, eq
	lsl	w0, w0, 3
	add	w3, w0, w2
	lsr	w1, w1, w0
	tst	x1, 15
	cset	w0, eq
	lsl	w0, w0, 2
	lsr	w1, w1, w0
	tst	x1, 3
	cset	w4, eq
	lsl	w4, w4, 1
	add	w2, w0, w4
	lsr	w1, w1, w4
	and	w1, w1, 3
	mvn	w0, w1
	sub	w1, w5, w1, lsr 1
	sbfx	x0, x0, 0, 1
	and	w0, w0, w1
	add	w0, w0, w3
	add	w0, w0, w2
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
	and	x2, x2, x0
	cset	w3, eq
	orr	x1, x1, x2
	rbit	x1, x1
	clz	x1, x1
	add	w0, w1, w3, lsl 6
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
	cbnz	x0, .L875
	cmp	x1, 0
	rbit	x1, x1
	clz	x1, x1
	add	w1, w1, 65
	csel	w0, w1, wzr, ne
	ret
	.p2align 2,,3
.L875:
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
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
	tbz	x1, 5, .L879
	lsr	x2, x0, 32
	sub	w1, w1, #32
	mov	w0, 0
	lsr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L878:
	ret
	.p2align 2,,3
.L879:
	cbz	w1, .L878
	lsr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	lsr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L878
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
	tbz	x2, 6, .L885
	sub	w2, w2, #64
	mov	x3, 0
	lsr	x0, x1, x2
	mov	x1, x3
.L887:
	ret
	.p2align 2,,3
.L885:
	cbz	w2, .L887
	neg	w4, w2
	lsr	x0, x0, x2
	lsr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L887
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
	mul	w3, w3, w4
	mul	w2, w2, w1
	mul	w4, w4, w1
	add	w3, w3, w5, lsr 16
	add	w1, w2, w3, uxth
	add	w3, w4, w3, lsr 16
	lsl	w2, w1, 16
	add	w1, w3, w1, lsr 16
	add	w5, w2, w5, uxth
	bfi	x0, x5, 0, 32
	bfi	x0, x1, 32, 32
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
	mul	w3, w3, w6
	asr	x8, x4, 32
	mul	w2, w2, w7
	mul	w6, w6, w7
	add	w3, w3, w5, lsr 16
	add	w2, w2, w3, uxth
	add	w3, w6, w3, lsr 16
	lsl	w6, w2, 16
	add	w2, w3, w2, lsr 16
	add	w5, w6, w5, uxth
	bfi	x0, x5, 0, 32
	bfi	x0, x2, 32, 32
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
	uxtw	x2, w1
	lsr	x1, x1, 32
	umaddl	x2, w0, w5, x2
	umaddl	x1, w3, w5, x1
	lsl	x0, x2, 32
	add	x1, x1, x2, lsr 32
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
	umaddl	x6, w2, w7, x6
	uxtw	x5, w6
	lsr	x6, x6, 32
	umaddl	x5, w4, w8, x5
	umaddl	x7, w7, w8, x6
	lsl	x6, x5, 32
	add	x5, x7, x5, lsr 32
	add	x0, x6, w0, uxtw
	madd	x4, x4, x3, x5
	madd	x1, x2, x1, x4
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
	eor	w1, w1, w0
	eor	w1, w1, w1, lsr 16
	eor	w1, w1, w1, lsr 8
	eor	w1, w1, w1, lsr 4
	and	w1, w1, 15
	asr	w0, w2, w1
	and	w0, w0, 1
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
	eor	w1, w1, w0
	eor	w1, w1, w1, lsr 16
	eor	w1, w1, w1, lsr 8
	eor	w1, w1, w1, lsr 4
	and	w1, w1, 15
	asr	w0, w2, w1
	and	w0, w0, 1
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
	eor	w1, w1, w1, lsr 8
	eor	w1, w1, w1, lsr 4
	and	w1, w1, 15
	asr	w0, w2, w1
	and	w0, w0, 1
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
	and	x1, x1, 6148914691236517205
	sub	x0, x0, x1
	and	x1, x0, -3689348814741910324
	and	x0, x0, 3689348814741910323
	add	x1, x0, x1, lsr 2
	add	x1, x1, x1, lsr 4
	and	x1, x1, 1085102592571150095
	lsr	x0, x1, 32
	add	w0, w0, w1
	add	w0, w0, w0, lsr 16
	add	w0, w0, w0, lsr 8
	and	w0, w0, 127
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
	and	w1, w1, 1431655765
	sub	w1, w0, w1
	and	w0, w1, -858993460
	and	w1, w1, 858993459
	add	w0, w1, w0, lsr 2
	add	w0, w0, w0, lsr 4
	and	w0, w0, 252645135
	add	w0, w0, w0, lsr 16
	add	w0, w0, w0, lsr 8
	and	w0, w0, 63
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
	and	x2, x2, 6148914691236517205
	subs	x0, x0, x2
	and	x2, x3, 6148914691236517205
	sbc	x1, x1, x2
	and	x3, x0, 3689348814741910323
	and	x4, x1, 3689348814741910323
	extr	x0, x1, x0, 2
	and	x2, x0, 3689348814741910323
	lsr	x0, x1, 2
	and	x0, x0, 3689348814741910323
	adds	x1, x2, x3
	adc	x0, x0, x4
	extr	x2, x0, x1, 4
	adds	x2, x2, x1
	lsr	x1, x0, 4
	adc	x0, x0, x1
	and	x2, x2, 1085102592571150095
	and	x0, x0, 1085102592571150095
	add	x0, x0, x2
	lsr	x1, x0, 32
	add	w0, w1, w0
	add	w0, w0, w0, lsr 16
	add	w0, w0, w0, lsr 8
	and	w0, w0, 255
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
	mov	w1, w0
	fmov	d31, 1.0e+0
	tbz	x0, 0, .L902
	.p2align 3,,7
.L904:
	fmul	d31, d31, d1
.L902:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L903
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L904
.L908:
	asr	w1, w2, 1
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L904
	b	.L908
	.p2align 2,,3
.L903:
	tbz	w0, #31, .L901
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
.L901:
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
	mov	w1, w0
	fmov	s31, 1.0e+0
	tbz	x0, 0, .L910
	.p2align 3,,7
.L912:
	fmul	s31, s31, s1
.L910:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L911
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L912
.L916:
	asr	w1, w2, 1
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L912
	b	.L916
	.p2align 2,,3
.L911:
	tbz	w0, #31, .L909
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
.L909:
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
	bcc	.L919
	mov	w0, 2
	bhi	.L917
	mov	w0, 0
	cmp	w2, w1
	bcc	.L917
	cset	w0, hi
	add	w0, w0, 1
.L917:
	ret
	.p2align 2,,3
.L919:
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
	lsr	x3, x0, 32
	lsr	x2, x1, 32
	cmp	w3, w2
	bcc	.L925
	mov	w2, 2
	bhi	.L924
	mov	w2, 0
	cmp	w0, w1
	bcc	.L924
	cset	w2, hi
	add	w2, w2, 1
.L924:
	sub	w0, w2, #1
	ret
	.p2align 2,,3
.L925:
	mov	w2, 0
	sub	w0, w2, #1
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
	bcc	.L929
	mov	w0, 2
	bhi	.L929
	mov	w0, 0
	cmp	x4, x2
	bcc	.L929
	cset	w0, hi
	add	w0, w0, 1
.L929:
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
