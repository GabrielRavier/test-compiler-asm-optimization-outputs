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
	b	.L20
	.p2align 2,,3
.L21:
	subs	x3, x3, #1
	beq	.L20
.L18:
	ldrb	w4, [x1]
	add	x0, x0, 1
	strb	w4, [x0, -1]
	add	x1, x1, 1
	cmp	w4, w2
	bne	.L21
	ret
	.p2align 2,,3
.L20:
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
	cbnz	x2, .L28
	b	.L31
	.p2align 2,,3
.L30:
	add	x0, x0, 1
	subs	x2, x2, #1
	beq	.L31
.L28:
	ldrb	w3, [x0]
	cmp	w3, w1
	bne	.L30
	ret
	.p2align 2,,3
.L31:
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
	cbnz	x2, .L34
	b	.L38
	.p2align 2,,3
.L36:
	subs	x2, x2, #1
	beq	.L38
.L34:
	ldrb	w3, [x0]
	add	x1, x1, 1
	ldrb	w4, [x1, -1]
	add	x0, x0, 1
	cmp	w3, w4
	beq	.L36
	sub	w0, w3, w4
	ret
	.p2align 2,,3
.L38:
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
	cbz	x2, .L42
	bl	memcpy
.L42:
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
	b	.L48
	.p2align 2,,3
.L50:
	ldrb	w3, [x0]
	sub	x2, x2, #1
	cmp	w3, w1
	beq	.L47
.L48:
	mov	x0, x2
	cmp	x2, x4
	bne	.L50
	mov	x0, 0
.L47:
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
	cbz	x2, .L54
	and	w1, w1, 255
	bl	memset
.L54:
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
	cbz	w2, .L57
	.p2align 3,,7
.L58:
	ldrb	w2, [x1, 1]!
	strb	w2, [x0, 1]!
	cbnz	w2, .L58
.L57:
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
	cbnz	w2, .L64
	b	.L63
	.p2align 2,,3
.L66:
	ldrb	w2, [x0, 1]!
	cbz	w2, .L63
.L64:
	cmp	w2, w1
	bne	.L66
.L63:
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
.L72:
	ldrb	w2, [x0]
	cmp	w2, w1
	beq	.L71
	add	x0, x0, 1
	cbnz	w2, .L72
	mov	x0, 0
.L71:
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
	bne	.L76
	.p2align 3,,7
.L75:
	cbz	w3, .L76
	ldrb	w3, [x0, x2]
	add	x2, x2, 1
	ldrb	w1, [x4, x2]
	cmp	w3, w1
	beq	.L75
.L76:
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
	cbz	w1, .L84
	mov	x1, x0
	.p2align 3,,7
.L83:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L83
	sub	x0, x1, x0
	ret
	.p2align 2,,3
.L84:
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
	cbz	x2, .L92
	ldrb	w4, [x0]
	sub	x7, x2, #1
	mov	x2, x1
	cbnz	w4, .L90
	b	.L95
	.p2align 2,,3
.L91:
	ldrb	w4, [x0, 1]!
	cbz	w4, .L96
	mov	x2, x6
.L90:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x3, x3, x7
	add	x6, x2, 1
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x3, 0, 4, eq
	bne	.L91
	sub	w0, w4, w5
.L86:
	ret
	.p2align 2,,3
.L92:
	mov	w0, 0
	ret
	.p2align 2,,3
.L96:
	ldrb	w5, [x2, 1]
	sub	w0, w4, w5
	b	.L86
.L95:
	ldrb	w5, [x1]
	sub	w0, w4, w5
	b	.L86
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
	ble	.L97
	and	x2, x2, -2
	add	x4, x0, x2
	.p2align 3,,7
.L99:
	ldrb	w3, [x0, 1]
	add	x1, x1, 2
	ldrb	w2, [x0], 2
	strb	w3, [x1, -2]
	strb	w2, [x1, -1]
	cmp	x0, x4
	bne	.L99
.L97:
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
	bls	.L111
	mov	w2, -8232
	add	w2, w1, w2
	mov	w0, 1
	cmp	w2, w0
	bls	.L111
	mov	w0, -65529
	add	w1, w1, w0
	cmp	w1, 2
	cset	w0, ls
.L111:
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
	bls	.L122
	mov	w2, -8234
	add	w2, w0, w2
	mov	w0, 47061
	cmp	w2, w0
	mov	w2, 8231
	mov	w0, 1
	ccmp	w1, w2, 0, hi
	bls	.L116
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L116
	mov	w0, -65532
	mov	w2, 3
	add	w3, w1, w0
	movk	w2, 0x10, lsl 16
	mov	w0, 0
	cmp	w3, w2
	bhi	.L116
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
.L116:
	ret
	.p2align 2,,3
.L122:
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
	bls	.L125
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	cset	w0, ls
	ret
	.p2align 2,,3
.L125:
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
	bvs	.L130
	fcmp	d1, d1
	bvs	.L131
	fcmpe	d0, d1
	bgt	.L133
	movi	d31, #0
.L127:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L133:
	fsub	d31, d0, d1
	fmov	d0, d31
	ret
	.p2align 2,,3
.L130:
	fmov	d31, d0
	b	.L127
	.p2align 2,,3
.L131:
	fmov	d31, d1
	b	.L127
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
	bvs	.L138
	fcmp	s1, s1
	bvs	.L139
	fcmpe	s0, s1
	bgt	.L141
	movi	v31.2s, #0
.L135:
	fmov	s0, s31
	ret
	.p2align 2,,3
.L141:
	fsub	s31, s0, s1
	fmov	s0, s31
	ret
	.p2align 2,,3
.L138:
	fmov	s31, s0
	b	.L135
	.p2align 2,,3
.L139:
	fmov	s31, s1
	b	.L135
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
	bvs	.L146
	fcmp	d1, d1
	bvs	.L143
	fmov	x0, d0
	fmov	x1, d1
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L145
	cmp	w0, 0
	fcsel	d0, d1, d0, ne
.L143:
	ret
	.p2align 2,,3
.L145:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	ret
	.p2align 2,,3
.L146:
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
	bvs	.L152
	fcmp	s1, s1
	bvs	.L149
	fmov	w0, s0
	fmov	w1, s1
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L151
	cmp	w0, 0
	fcsel	s0, s1, s0, ne
.L149:
	ret
	.p2align 2,,3
.L151:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	ret
	.p2align 2,,3
.L152:
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
	cbnz	w0, .L163
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L162
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x1, x1, 63
	lsr	x0, x0, 63
	cmp	w0, w1
	beq	.L157
	cbz	w0, .L162
.L163:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L157:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbnz	w0, #31, .L163
.L162:
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
	bvs	.L168
	fcmp	d1, d1
	bvs	.L165
	fmov	x0, d0
	fmov	x1, d1
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L167
	cmp	w0, 0
	fcsel	d0, d0, d1, ne
.L165:
	ret
	.p2align 2,,3
.L167:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	ret
	.p2align 2,,3
.L168:
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
	bvs	.L174
	fcmp	s1, s1
	bvs	.L171
	fmov	w0, s0
	fmov	w1, s1
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L173
	cmp	w0, 0
	fcsel	s0, s0, s1, ne
.L171:
	ret
	.p2align 2,,3
.L173:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	ret
	.p2align 2,,3
.L174:
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
	cbnz	w0, .L183
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L185
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x1, x1, 63
	lsr	x0, x0, 63
	cmp	w0, w1
	beq	.L179
	cbnz	w0, .L185
.L183:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L179:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L183
.L185:
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
	cbz	w0, .L190
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	adrp	x4, .LANCHOR1
	mov	x2, x0
	add	x4, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L189:
	and	w3, w1, 63
	lsr	w1, w1, 6
	ldrb	w3, [x4, w3, uxtw]
	strb	w3, [x2], 1
	cbnz	w1, .L189
	strb	wzr, [x2]
	ret
	.p2align 2,,3
.L190:
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
	cbz	x1, .L200
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L194
	str	x0, [x1, 8]
.L194:
	ret
	.p2align 2,,3
.L200:
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
	cbz	x1, .L202
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L202:
	ldr	x0, [x0, 8]
	cbz	x0, .L201
	str	x1, [x0]
.L201:
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
	cbz	x24, .L211
	mov	x23, x4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x19, x1
	mov	x20, 0
	b	.L213
	.p2align 2,,3
.L228:
	add	x19, x19, x21
	cmp	x24, x20
	beq	.L227
.L213:
	mov	x1, x19
	mov	x0, x22
	mov	x27, x19
	add	x20, x20, 1
	blr	x23
	cbnz	w0, .L228
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L210:
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
.L227:
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
.L211:
	add	x0, x24, 1
	str	x0, [x25]
	madd	x27, x21, x24, x26
	cbz	x21, .L210
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
	cbz	x24, .L230
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
	b	.L232
	.p2align 2,,3
.L243:
	add	x19, x19, x23
	cmp	x24, x20
	beq	.L242
.L232:
	mov	x1, x19
	mov	x0, x21
	mov	x25, x19
	add	x20, x20, 1
	blr	x22
	cbnz	w0, .L243
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
.L242:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L230:
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
	bhi	.L246
	.p2align 3,,7
.L247:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L247
.L246:
	cmp	w1, 43
	beq	.L248
	cmp	w1, 45
	bne	.L266
	ldrb	w4, [x0, 1]
	add	x1, x0, 1
	sub	w2, w4, #48
	cmp	w2, 9
	bhi	.L257
	mov	w6, 1
.L251:
	mov	w0, 0
	.p2align 3,,7
.L254:
	add	w0, w0, w0, lsl 2
	ldrb	w4, [x1, 1]!
	mov	w3, w2
	lsl	w5, w0, 1
	sub	w0, w5, w2
	sub	w2, w4, #48
	cmp	w2, 9
	bls	.L254
	sub	w3, w3, w5
	cmp	w6, 0
	csel	w0, w3, w0, eq
	ret
	.p2align 2,,3
.L266:
	ldrb	w4, [x0]
	mov	x1, x0
	mov	w6, 0
	sub	w2, w4, #48
	cmp	w2, 9
	bls	.L251
.L257:
	mov	w0, 0
.L267:
	ret
	.p2align 2,,3
.L248:
	ldrb	w4, [x0, 1]
	add	x1, x0, 1
	mov	w6, 0
	sub	w2, w4, #48
	cmp	w2, 9
	bls	.L251
	mov	w0, 0
	b	.L267
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
	bhi	.L269
	.p2align 3,,7
.L270:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L270
.L269:
	cmp	w1, 43
	beq	.L271
	cmp	w1, 45
	bne	.L289
	ldrb	w4, [x0, 1]
	add	x1, x0, 1
	sub	w2, w4, #48
	cmp	w2, 9
	bhi	.L280
	mov	w6, 1
.L274:
	mov	x0, 0
	.p2align 3,,7
.L277:
	add	x0, x0, x0, lsl 2
	ldrb	w4, [x1, 1]!
	sxtw	x3, w2
	lsl	x5, x0, 1
	sub	w2, w4, #48
	sub	x0, x5, x3
	cmp	w2, 9
	bls	.L277
	sub	x3, x3, x5
	cmp	w6, 0
	csel	x0, x3, x0, eq
	ret
	.p2align 2,,3
.L289:
	ldrb	w4, [x0]
	mov	x1, x0
	mov	w6, 0
	sub	w2, w4, #48
	cmp	w2, 9
	bls	.L274
.L280:
	mov	x0, 0
.L290:
	ret
	.p2align 2,,3
.L271:
	ldrb	w4, [x0, 1]
	add	x1, x0, 1
	mov	w6, 0
	sub	w2, w4, #48
	cmp	w2, 9
	bls	.L274
	mov	x0, 0
	b	.L290
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
	bhi	.L292
	.p2align 3,,7
.L293:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L293
.L292:
	cmp	w1, 43
	beq	.L294
	cmp	w1, 45
	beq	.L310
	ldrb	w4, [x0]
	mov	x1, x0
	mov	w6, 0
	sub	w2, w4, #48
	cmp	w2, 9
	bhi	.L302
.L296:
	mov	x0, 0
	.p2align 3,,7
.L299:
	add	x0, x0, x0, lsl 2
	ldrb	w4, [x1, 1]!
	sxtw	x3, w2
	lsl	x5, x0, 1
	sub	w2, w4, #48
	sub	x0, x5, x3
	cmp	w2, 9
	bls	.L299
	sub	x3, x3, x5
	cmp	w6, 0
	csel	x0, x3, x0, eq
	ret
	.p2align 2,,3
.L310:
	ldrb	w4, [x0, 1]
	add	x1, x0, 1
	mov	w6, 1
	sub	w2, w4, #48
	cmp	w2, 9
	bls	.L296
.L302:
	mov	x0, 0
	ret
	.p2align 2,,3
.L294:
	ldrb	w4, [x0, 1]
	add	x1, x0, 1
	sub	w2, w4, #48
	cmp	w2, 9
	bhi	.L302
	mov	w6, 0
	b	.L296
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
	cbz	x2, .L312
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
.L315:
	lsr	x20, x19, 1
	mov	x0, x24
	sub	x19, x19, #1
	madd	x21, x20, x22, x23
	mov	x1, x21
	blr	x25
	cmp	w0, 0
	blt	.L316
	beq	.L322
	add	x23, x21, x22
	sub	x19, x19, x20
	cbnz	x19, .L315
.L323:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L312:
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
.L316:
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
	cbnz	x19, .L315
	b	.L323
	.p2align 2,,3
.L322:
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
	cbz	w2, .L328
	mov	w19, w2
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	x22, x1
	mov	x21, x3
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	mov	x24, x4
	mov	x23, x5
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -8
	.cfi_offset 25, -16
	mov	x25, x0
	.p2align 3,,7
.L325:
	asr	w26, w19, 1
	mov	x2, x23
	mov	x0, x25
	sub	w19, w19, #1
	sxtw	x20, w26
	madd	x20, x20, x21, x22
	mov	x1, x20
	blr	x24
	cmp	w0, 0
	cbz	w0, .L337
	ble	.L329
	add	x22, x20, x21
	asr	w19, w19, 1
	cbnz	w19, .L325
.L338:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L328:
	mov	x20, 0
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
.L329:
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
	mov	w19, w26
	cbnz	w19, .L325
	b	.L338
	.p2align 2,,3
.L337:
	mov	x0, x20
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
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
	cbnz	w2, .L347
	b	.L350
	.p2align 2,,3
.L349:
	ldr	w2, [x0, 4]!
	cbz	w2, .L350
.L347:
	cmp	w1, w2
	bne	.L349
	ret
	.p2align 2,,3
.L350:
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
	bne	.L354
	.p2align 3,,7
.L353:
	cbz	w3, .L354
	ldr	w3, [x0, x2]
	add	x2, x2, 4
	ldr	w1, [x4, x2]
	cmp	w3, w1
	beq	.L353
.L354:
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
.L361:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L361
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
	cbz	w1, .L366
	mov	x1, x0
	.p2align 3,,7
.L365:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L365
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
	.p2align 2,,3
.L366:
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
	cbnz	x2, .L369
	b	.L374
	.p2align 2,,3
.L371:
	subs	x2, x2, #1
	beq	.L374
.L369:
	ldr	w3, [x0]
	add	x1, x1, 4
	ldr	w4, [x1, -4]
	add	x0, x0, 4
	cmp	w3, 0
	ccmp	w4, w3, 0, ne
	beq	.L371
	cmp	w3, w4
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L374:
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
	cbnz	x2, .L378
	b	.L381
	.p2align 2,,3
.L380:
	add	x0, x0, 4
	subs	x2, x2, #1
	beq	.L381
.L378:
	ldr	w3, [x0]
	cmp	w3, w1
	bne	.L380
	ret
	.p2align 2,,3
.L381:
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
	cbnz	x2, .L384
	b	.L389
	.p2align 2,,3
.L386:
	subs	x2, x2, #1
	beq	.L389
.L384:
	ldr	w4, [x0]
	add	x1, x1, 4
	ldr	w3, [x1, -4]
	add	x0, x0, 4
	cmp	w4, w3
	beq	.L386
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L389:
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
	cbz	x2, .L393
	lsl	x2, x2, 2
	bl	memcpy
.L393:
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
	beq	.L406
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcs	.L412
	cbz	x2, .L406
	sub	x2, x2, #1
	.p2align 3,,7
.L403:
	ldr	w3, [x1, x2, lsl 2]
	str	w3, [x0, x2, lsl 2]
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L403
.L406:
	ret
	.p2align 2,,3
.L412:
	mov	x3, 0
	cbz	x2, .L406
	.p2align 3,,7
.L401:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L401
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
	cbz	x2, .L414
	mov	x3, 0
	.p2align 3,,7
.L415:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L415
.L414:
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
	bcs	.L421
	cbz	x2, .L420
	sub	x0, x0, #1
	sub	x1, x1, #1
	.p2align 3,,7
.L423:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	subs	x2, x2, #1
	bne	.L423
.L420:
	ret
	.p2align 2,,3
.L421:
	beq	.L420
	cbz	x2, .L420
	mov	x3, 0
	.p2align 3,,7
.L424:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L424
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
	b	.L449
	.p2align 2,,3
.L447:
	cmp	w1, 32
	beq	.L451
.L449:
	lsr	w2, w0, w1
	add	w1, w1, 1
	tbz	x2, 0, .L447
	mov	w0, w1
	ret
	.p2align 2,,3
.L451:
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
	cbz	w1, .L452
	and	w0, w1, 1
	tbnz	x1, 0, .L452
	mov	w0, 1
	.p2align 3,,7
.L454:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L454
.L452:
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
	bmi	.L458
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	cset	w0, gt
.L458:
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
	bmi	.L461
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	cset	w0, gt
.L461:
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
	tbnz	w1, #31, .L464
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q0, [sp, 16]
	ldr	q1, [x0]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L464:
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
	bvs	.L473
	fadd	s1, s0, s0
	fcmp	s1, s0
	beq	.L473
	cmp	w0, 0
	fmov	s30, 2.0e+0
	fmov	s31, 5.0e-1
	fcsel	s31, s30, s31, ge
	tbz	x0, 0, .L475
	.p2align 3,,7
.L476:
	fmul	s0, s0, s31
.L475:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L473
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L476
.L485:
	asr	w0, w1, 1
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L476
	b	.L485
	.p2align 2,,3
.L473:
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
	bvs	.L487
	fadd	d1, d0, d0
	fcmp	d1, d0
	beq	.L487
	cmp	w0, 0
	fmov	d30, 2.0e+0
	fmov	d31, 5.0e-1
	fcsel	d31, d30, d31, ge
	tbz	x0, 0, .L489
	.p2align 3,,7
.L490:
	fmul	d0, d0, d31
.L489:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L487
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L490
.L499:
	asr	w0, w1, 1
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L490
	b	.L499
	.p2align 2,,3
.L487:
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
	cbnz	w0, .L501
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L501
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q1, [x0]
	tbnz	w19, #31, .L516
.L503:
	tbz	x19, 0, .L504
	.p2align 3,,7
.L505:
	ldr	q0, [sp, 32]
	str	q1, [sp, 48]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	q1, [sp, 48]
.L504:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L501
	mov	v0.16b, v1.16b
	bl	__multf3
	add	w0, w19, w19, lsr 31
	mov	v1.16b, v0.16b
	tbnz	x19, 0, .L505
.L517:
	asr	w19, w0, 1
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
	add	w0, w19, w19, lsr 31
	tbnz	x19, 0, .L505
	b	.L517
	.p2align 2,,3
.L501:
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
.L516:
	.cfi_restore_state
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q1, [x0]
	b	.L503
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
	cbz	x2, .L519
	mov	x3, 0
	.p2align 3,,7
.L520:
	ldrb	w4, [x0, x3]
	ldrb	w5, [x1, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L520
.L519:
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
	cbz	w3, .L532
	mov	x3, x0
	.p2align 3,,7
.L527:
	ldrb	w4, [x3, 1]!
	cbnz	w4, .L527
.L526:
	cbnz	x2, .L528
	b	.L529
	.p2align 2,,3
.L530:
	beq	.L529
.L528:
	ldrb	w4, [x1]
	subs	x2, x2, #1
	strb	w4, [x3]
	add	x1, x1, 1
	add	x3, x3, 1
	cbnz	w4, .L530
	ret
	.p2align 2,,3
.L529:
	strb	wzr, [x3]
	ret
	.p2align 2,,3
.L532:
	mov	x3, x0
	b	.L526
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
	cbz	x1, .L538
.L539:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L541
.L538:
	ret
	.p2align 2,,3
.L541:
	add	x0, x0, 1
	cmp	x1, x0
	bne	.L539
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
	cbz	w4, .L551
.L547:
	mov	x2, x1
	b	.L550
	.p2align 2,,3
.L549:
	cmp	w3, w4
	beq	.L548
.L550:
	ldrb	w3, [x2]
	add	x2, x2, 1
	cbnz	w3, .L549
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L547
.L551:
	mov	x0, 0
.L548:
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
.L555:
	ldrb	w3, [x2]
	cmp	w1, w3
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L555
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
	mov	x4, x0
	cbz	w7, .L568
	mov	x8, x1
	.p2align 3,,7
.L559:
	ldrb	w0, [x8, 1]!
	cbnz	w0, .L559
	subs	x8, x8, x1
	mov	x0, x4
	sub	x9, x1, #1
	bne	.L565
	b	.L557
	.p2align 2,,3
.L574:
	add	x4, x4, 1
	cbz	w2, .L573
.L565:
	ldrb	w2, [x4]
	cmp	w2, w7
	bne	.L574
	mov	w5, w7
	mov	x0, x1
	mov	x6, x4
	b	.L564
	.p2align 2,,3
.L563:
	ldrb	w2, [x6, 1]!
	add	x3, x0, 1
	ldrb	w5, [x0, 1]
	cbz	w2, .L562
	mov	x0, x3
.L564:
	cmp	w5, 0
	sub	x3, x8, x0
	ccmp	w2, w5, 0, ne
	add	x3, x9, x3
	ccmp	x3, 0, 4, eq
	bne	.L563
.L562:
	cmp	w2, w5
	beq	.L568
	add	x4, x4, 1
	b	.L565
	.p2align 2,,3
.L573:
	mov	x0, 0
.L557:
	ret
.L568:
	mov	x0, x4
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
	bmi	.L582
	bgt	.L583
	ret
	.p2align 2,,3
.L583:
	fcmpe	d1, #0.0
	bmi	.L578
	ret
	.p2align 2,,3
.L578:
	fneg	d0, d0
	ret
	.p2align 2,,3
.L582:
	fcmpe	d1, #0.0
	bgt	.L578
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
	cbz	x3, .L585
	cmp	x1, x3
	bcc	.L593
	sub	x1, x1, x3
	adds	x7, x0, x1
	bcs	.L593
	ldrb	w8, [x2]
	b	.L590
	.p2align 2,,3
.L587:
	cmp	x7, x6
	bcc	.L593
.L590:
	ldrb	w1, [x6]
	mov	x0, x6
	add	x6, x6, 1
	cmp	w1, w8
	bne	.L587
	cmp	x3, 1
	beq	.L585
	mov	x1, 1
	.p2align 3,,7
.L588:
	ldrb	w5, [x0, x1]
	ldrb	w4, [x2, x1]
	add	x1, x1, 1
	cmp	w5, w4
	bne	.L587
	cmp	x3, x1
	bne	.L588
.L585:
	ret
	.p2align 2,,3
.L593:
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
	cbz	x2, .L597
	bl	memmove
.L597:
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
	bmi	.L619
	fmov	d2, 1.0e+0
	mov	w2, 0
	fcmpe	d0, d2
	bge	.L605
	fmov	d1, 5.0e-1
	fcmpe	d0, d1
	bmi	.L620
.L608:
	fmov	d31, d0
	str	wzr, [x0]
	fmov	d0, d31
	ret
	.p2align 2,,3
.L614:
	fmov	d0, d30
	mov	w2, 1
.L605:
	mov	w1, 0
	fmov	d5, 5.0e-1
	fmov	d4, 1.0e+0
	.p2align 3,,7
.L611:
	fmul	d0, d0, d5
	add	w1, w1, 1
	fcmpe	d0, d4
	bge	.L611
.L612:
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d31, d31, d0, ne
	fmov	d0, d31
	ret
	.p2align 2,,3
.L619:
	fmov	d6, -1.0e+0
	fneg	d30, d0
	fcmpe	d0, d6
	bls	.L614
	fmov	d3, -5.0e-1
	fcmpe	d0, d3
	bgt	.L615
	b	.L608
	.p2align 2,,3
.L620:
	fcmp	d0, #0.0
	beq	.L608
	fmov	d30, d0
	b	.L606
	.p2align 2,,3
.L615:
	mov	w2, 1
.L606:
	fmov	d0, d30
	mov	w1, 0
	fmov	d29, 5.0e-1
	.p2align 3,,7
.L613:
	fadd	d0, d0, d0
	sub	w1, w1, #1
	fcmpe	d0, d29
	bmi	.L613
	b	.L612
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
	cbz	x2, .L624
	.p2align 3,,7
.L626:
	sbfx	x3, x2, 0, 1
	lsr	x2, x2, 1
	and	x3, x3, x1
	lsl	x1, x1, 1
	add	x0, x0, x3
	cbnz	x2, .L626
.L624:
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
	bcs	.L631
	.p2align 3,,7
.L630:
	tbnz	w1, #31, .L631
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L630
	mov	w4, 0
	cbz	w3, .L634
.L631:
	mov	w4, 0
	.p2align 3,,7
.L636:
	cmp	w0, w1
	bcc	.L635
	sub	w0, w0, w1
	orr	w4, w4, w3
.L635:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L636
.L634:
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
	cbz	w2, .L650
	.p2align 3,,7
.L652:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L652
.L650:
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
	lsr	w5, w2, 3
	and	w3, w2, -8
	cmp	x0, x1
	bcc	.L659
	add	x4, x1, w2, uxtw
	cmp	x0, x4
	bls	.L670
.L659:
	lsl	w6, w5, 3
	mov	x4, 0
	cbz	w5, .L658
	.p2align 3,,7
.L662:
	ldr	x5, [x1, x4]
	str	x5, [x0, x4]
	add	x4, x4, 8
	cmp	x6, x4
	bne	.L662
.L658:
	cmp	w2, w3
	bls	.L655
	.p2align 3,,7
.L663:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L663
.L655:
	ret
	.p2align 2,,3
.L670:
	sub	w3, w2, #1
	cbz	w2, .L655
	.p2align 3,,7
.L664:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L664
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
	lsr	w4, w2, 1
	cmp	x0, x1
	bcc	.L675
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L688
.L675:
	lsl	w5, w4, 1
	mov	x3, 0
	cbz	w4, .L674
	.p2align 3,,7
.L678:
	ldrsh	w4, [x1, x3]
	strh	w4, [x0, x3]
	add	x3, x3, 2
	cmp	x5, x3
	bne	.L678
.L674:
	tbz	x2, 0, .L671
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L671:
	ret
	.p2align 2,,3
.L688:
	sub	w3, w2, #1
	cbz	w2, .L671
	.p2align 3,,7
.L680:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L680
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
	lsr	w5, w2, 2
	and	w3, w2, -4
	cmp	x0, x1
	bcc	.L693
	add	x4, x1, w2, uxtw
	cmp	x0, x4
	bls	.L704
.L693:
	lsl	w6, w5, 2
	mov	x4, 0
	cbz	w5, .L692
	.p2align 3,,7
.L696:
	ldr	w5, [x1, x4]
	str	w5, [x0, x4]
	add	x4, x4, 4
	cmp	x6, x4
	bne	.L696
.L692:
	cmp	w2, w3
	bls	.L689
	.p2align 3,,7
.L697:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L697
.L689:
	ret
	.p2align 2,,3
.L704:
	sub	w3, w2, #1
	cbz	w2, .L689
	.p2align 3,,7
.L698:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L698
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
	and	w1, w0, 65535
	tbnz	w0, 15, .L714
	asr	w0, w1, 14
	cbnz	w0, .L711
	cmp	wzr, w1, lsr 13
	bne	.L715
	cmp	wzr, w1, lsr 12
	bne	.L716
	cmp	wzr, w1, lsr 11
	bne	.L717
	cmp	wzr, w1, lsr 10
	bne	.L718
	cmp	wzr, w1, lsr 9
	bne	.L719
	cmp	wzr, w1, lsr 8
	bne	.L720
	cmp	wzr, w1, lsr 7
	bne	.L721
	cmp	wzr, w1, lsr 6
	bne	.L722
	cmp	wzr, w1, lsr 5
	bne	.L723
	cmp	wzr, w1, lsr 4
	bne	.L724
	cmp	wzr, w1, lsr 3
	bne	.L725
	cmp	wzr, w1, lsr 2
	bne	.L726
	cmp	wzr, w1, lsr 1
	bne	.L727
	cmp	w1, 0
	cset	w0, eq
	add	w0, w0, 15
.L711:
	ret
.L714:
	mov	w0, 0
	ret
.L725:
	mov	w0, 12
	ret
.L715:
	mov	w0, 2
	ret
.L716:
	mov	w0, 3
	ret
.L717:
	mov	w0, 4
	ret
.L718:
	mov	w0, 5
	ret
.L719:
	mov	w0, 6
	ret
.L720:
	mov	w0, 7
	ret
.L721:
	mov	w0, 8
	ret
.L722:
	mov	w0, 9
	ret
.L723:
	mov	w0, 10
	ret
.L724:
	mov	w0, 11
	ret
.L726:
	mov	w0, 13
	ret
.L727:
	mov	w0, 14
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
	and	w1, w0, 65535
	tbnz	w0, 0, .L732
	tbnz	x1, 1, .L733
	tbnz	x1, 2, .L734
	tbnz	x1, 3, .L735
	tbnz	x1, 4, .L736
	tbnz	x1, 5, .L737
	tbnz	x1, 6, .L738
	tbnz	x1, 7, .L739
	tbnz	x1, 8, .L740
	tbnz	x1, 9, .L741
	tbnz	x1, 10, .L742
	tbnz	x1, 11, .L743
	tbnz	x1, 12, .L744
	tbnz	x1, 13, .L745
	tbnz	x1, 14, .L746
	cmp	wzr, w1, lsr 15
	cset	w0, eq
	add	w0, w0, 15
	ret
.L732:
	mov	w0, 0
	ret
.L733:
	mov	w0, 1
	ret
.L744:
	mov	w0, 12
	ret
.L734:
	mov	w0, 2
	ret
.L735:
	mov	w0, 3
	ret
.L736:
	mov	w0, 4
	ret
.L737:
	mov	w0, 5
	ret
.L738:
	mov	w0, 6
	ret
.L739:
	mov	w0, 7
	ret
.L740:
	mov	w0, 8
	ret
.L741:
	mov	w0, 9
	ret
.L742:
	mov	w0, 10
	ret
.L743:
	mov	w0, 11
	ret
.L745:
	mov	w0, 13
	ret
.L746:
	mov	w0, 14
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
	bge	.L752
	fcvtzs	x0, s0
	ret
	.p2align 2,,3
.L752:
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
	and	w2, w0, 1
	ubfx	w1, w0, 1, 1
	add	w1, w1, w2
	ubfx	w2, w0, 2, 1
	add	w1, w1, w2
	ubfx	w2, w0, 3, 1
	add	w1, w1, w2
	ubfx	w2, w0, 4, 1
	add	w1, w1, w2
	ubfx	w2, w0, 5, 1
	add	w1, w1, w2
	ubfx	w2, w0, 6, 1
	add	w1, w1, w2
	ubfx	w2, w0, 7, 1
	add	w1, w1, w2
	ubfx	w2, w0, 8, 1
	add	w1, w1, w2
	ubfx	w2, w0, 9, 1
	add	w1, w1, w2
	ubfx	w2, w0, 10, 1
	add	w1, w1, w2
	ubfx	w2, w0, 11, 1
	add	w1, w1, w2
	ubfx	w2, w0, 12, 1
	add	w1, w1, w2
	ubfx	w2, w0, 13, 1
	add	w1, w1, w2
	ubfx	w2, w0, 14, 1
	add	w1, w1, w2
	ubfx	w0, w0, 15, 1
	add	w0, w1, w0
	and	w0, w0, 1
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
	and	w2, w0, 1
	ubfx	w1, w0, 1, 1
	add	w1, w1, w2
	ubfx	w2, w0, 2, 1
	add	w1, w1, w2
	ubfx	w2, w0, 3, 1
	add	w1, w1, w2
	ubfx	w2, w0, 4, 1
	add	w1, w1, w2
	ubfx	w2, w0, 5, 1
	add	w1, w1, w2
	ubfx	w2, w0, 6, 1
	add	w1, w1, w2
	ubfx	w2, w0, 7, 1
	add	w1, w1, w2
	ubfx	w2, w0, 8, 1
	add	w1, w1, w2
	ubfx	w2, w0, 9, 1
	add	w1, w1, w2
	ubfx	w2, w0, 10, 1
	add	w1, w1, w2
	ubfx	w2, w0, 11, 1
	add	w1, w1, w2
	ubfx	w2, w0, 12, 1
	add	w1, w1, w2
	ubfx	w2, w0, 13, 1
	add	w1, w1, w2
	ubfx	w2, w0, 14, 1
	add	w1, w1, w2
	ubfx	w0, w0, 15, 1
	add	w0, w1, w0
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
	cbz	w2, .L756
	.p2align 3,,7
.L758:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L758
.L756:
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
	cbz	w3, .L761
	cbz	w1, .L761
	.p2align 3,,7
.L763:
	sbfx	x2, x1, 0, 1
	lsr	w1, w1, 1
	and	w2, w2, w3
	lsl	w3, w3, 1
	add	w0, w0, w2
	cbnz	w1, .L763
.L761:
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
	bcs	.L770
	.p2align 3,,7
.L769:
	tbnz	w1, #31, .L770
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L769
	mov	w4, 0
	cbz	w3, .L773
.L770:
	mov	w4, 0
	.p2align 3,,7
.L775:
	cmp	w0, w1
	bcc	.L774
	sub	w0, w0, w1
	orr	w4, w4, w3
.L774:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L775
.L773:
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
	blt	.L800
	beq	.L796
	mov	w5, 0
.L793:
	mov	w0, 0
	mov	w2, 0
	.p2align 3,,7
.L795:
	add	w2, w2, 1
	sbfx	x3, x1, 0, 1
	and	w2, w2, 255
	and	w3, w3, w4
	asr	w1, w1, 1
	cmp	w2, 32
	ccmp	w1, 0, 4, ne
	add	w0, w0, w3
	lsl	w4, w4, 1
	bne	.L795
	cmp	w5, 0
	csneg	w0, w0, w0, eq
	ret
	.p2align 2,,3
.L800:
	neg	w1, w1
	mov	w5, 1
	b	.L793
	.p2align 2,,3
.L796:
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
	tbnz	x0, #63, .L820
.L802:
	tbz	x1, #63, .L803
	neg	x1, x1
	eor	w5, w5, 1
.L803:
	mov	w4, w0
	mov	w2, w1
	mov	w3, 1
	cmp	w0, w1
	bls	.L805
	.p2align 3,,7
.L804:
	tbnz	w2, #31, .L805
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L804
	mov	x0, 0
	cbz	w3, .L808
.L805:
	mov	x0, 0
	.p2align 3,,7
.L810:
	cmp	w4, w2
	bcc	.L809
	sub	w4, w4, w2
	orr	w0, w0, w3
.L809:
	lsr	w3, w3, 1
	lsr	w2, w2, 1
	cbnz	w3, .L810
.L808:
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
	.p2align 2,,3
.L820:
	neg	x0, x0
	mov	w5, 1
	b	.L802
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
	tbz	x0, #63, .L822
	neg	x0, x0
	mov	w5, 1
.L822:
	cmp	x1, 0
	mov	w4, w0
	csneg	x1, x1, x1, ge
	mov	w3, 1
	mov	w2, w1
	cmp	w0, w1
	bls	.L829
	.p2align 3,,7
.L823:
	tbnz	w2, #31, .L829
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L823
	cbz	w3, .L841
	.p2align 3,,7
.L829:
	cmp	w2, w4
	sub	w0, w4, w2
	lsr	w3, w3, 1
	csel	w4, w0, w4, ls
	lsr	w2, w2, 1
	cbnz	w3, .L829
.L841:
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
	mov	w5, 1
	cmp	w1, w0
	bcc	.L843
	b	.L922
	.p2align 2,,3
.L846:
	cmp	w3, 0
	ccmp	w0, w4, 0, ne
	bls	.L845
	mov	w5, w3
	mov	w1, w4
.L843:
	ubfiz	w3, w5, 1, 15
	ubfiz	w4, w1, 1, 15
	tbz	x1, 15, .L846
	mov	w3, 0
	cmp	w0, w1
	bcc	.L869
	sub	w0, w0, w1
	mov	w3, w5
	and	w0, w0, 65535
.L869:
	ubfx	x7, x5, 1, 16
	lsr	w6, w1, 1
	cbz	w7, .L848
.L850:
	cmp	w0, w6
	bcc	.L851
	sub	w6, w0, w6
	orr	w7, w3, w7
	and	w0, w6, 65535
	and	w3, w7, 65535
.L851:
	ubfx	x4, x5, 2, 16
	lsr	w6, w1, 2
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L852
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L852:
	ubfx	x4, x5, 3, 16
	lsr	w6, w1, 3
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L853
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L853:
	ubfx	x4, x5, 4, 16
	lsr	w6, w1, 4
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L854
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L854:
	ubfx	x4, x5, 5, 16
	lsr	w6, w1, 5
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L855
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L855:
	ubfx	x4, x5, 6, 16
	lsr	w6, w1, 6
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L856
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L856:
	ubfx	x4, x5, 7, 16
	lsr	w6, w1, 7
	cbz	w4, .L848
	cmp	w0, w6
	bcs	.L923
.L857:
	ubfx	x4, x5, 8, 16
	lsr	w6, w1, 8
	cbz	w4, .L848
	cmp	w0, w6
	bcs	.L924
.L858:
	ubfx	x4, x5, 9, 16
	lsr	w6, w1, 9
	cbz	w4, .L848
	cmp	w0, w6
	bcs	.L925
.L859:
	ubfx	x4, x5, 10, 16
	lsr	w6, w1, 10
	cbz	w4, .L848
	cmp	w0, w6
	bcs	.L926
.L860:
	ubfx	x4, x5, 11, 16
	lsr	w6, w1, 11
	cbz	w4, .L848
	cmp	w0, w6
	bcs	.L927
.L861:
	ubfx	x4, x5, 12, 16
	lsr	w6, w1, 12
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L862
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L862:
	ubfx	x4, x5, 13, 16
	lsr	w6, w1, 13
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L863
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L863:
	ubfx	x4, x5, 14, 16
	lsr	w6, w1, 14
	cbz	w4, .L848
	cmp	w0, w6
	bcc	.L864
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L864:
	lsr	w1, w1, 15
	tbz	x5, 15, .L848
	cmp	w0, w1
	bcc	.L872
	sub	w1, w0, w1
	orr	w3, w3, 1
	and	w0, w1, 65535
	and	w3, w3, 65535
.L848:
	cmp	w2, 0
	csel	w0, w0, w3, ne
	ret
	.p2align 2,,3
.L845:
	cbz	w3, .L848
	cmp	w0, w4
	bcc	.L849
	sub	w0, w0, w4
	and	w7, w5, 32767
	and	w6, w1, 32767
	and	w0, w0, 65535
	mov	w5, w3
	mov	w1, w4
	b	.L850
	.p2align 2,,3
.L923:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L857
	.p2align 2,,3
.L849:
	and	w7, w5, 32767
	and	w6, w1, 32767
	mov	w5, w3
	mov	w1, w4
	mov	w3, 0
	b	.L850
	.p2align 2,,3
.L924:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L858
	.p2align 2,,3
.L925:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L859
	.p2align 2,,3
.L926:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L860
	.p2align 2,,3
.L927:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L861
.L872:
	mov	w0, 0
	b	.L848
.L922:
	csel	w0, w0, wzr, ne
	cset	w3, eq
	b	.L848
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
	bcs	.L930
	.p2align 3,,7
.L929:
	tbnz	x1, 31, .L930
	lsl	x3, x3, 1
	lsl	x1, x1, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L929
	mov	x4, 0
	cbz	x3, .L933
.L930:
	mov	x4, 0
	.p2align 3,,7
.L935:
	cmp	x0, x1
	bcc	.L934
	sub	x0, x0, x1
	orr	x4, x4, x3
.L934:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbnz	x3, .L935
.L933:
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
	tbz	x1, 5, .L944
	sub	w1, w1, #32
	mov	w3, 0
	lsl	w0, w0, w1
.L945:
	uxtw	x1, w3
	orr	x0, x1, x0, lsl 32
.L943:
	ret
	.p2align 2,,3
.L944:
	cbz	w1, .L943
	neg	w4, w1
	asr	x0, x0, 32
	lsl	w3, w2, w1
	lsl	w0, w0, w1
	lsr	w2, w2, w4
	orr	w0, w2, w0
	b	.L945
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
	tbz	x2, 6, .L950
	sub	w2, w2, #64
	mov	x3, 0
	lsl	x1, x0, x2
	mov	x0, x3
.L952:
	ret
	.p2align 2,,3
.L950:
	cbz	w2, .L952
	neg	w4, w2
	lsl	x1, x1, x2
	lsl	x3, x0, x2
	lsr	x2, x0, x4
	mov	x0, x3
	orr	x1, x2, x1
	b	.L952
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
	tbz	x1, 5, .L955
	asr	x2, x0, 32
	sub	w1, w1, #32
	asr	w0, w2, 31
	asr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L954:
	ret
	.p2align 2,,3
.L955:
	cbz	w1, .L954
	asr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	asr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L954
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
	tbz	x2, 6, .L961
	sub	w2, w2, #64
	asr	x3, x1, 63
	asr	x0, x1, x2
	mov	x1, x3
.L963:
	ret
	.p2align 2,,3
.L961:
	cbz	w2, .L963
	neg	w4, w2
	lsr	x0, x0, x2
	asr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L963
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
	blt	.L971
	mov	w0, 2
	bgt	.L969
	mov	w0, 0
	cmp	w2, w1
	bcc	.L969
	cset	w0, hi
	add	w0, w0, 1
.L969:
	ret
	.p2align 2,,3
.L971:
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
	blt	.L977
	mov	w0, 1
	bgt	.L975
	cmp	w2, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L975:
	ret
	.p2align 2,,3
.L977:
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
	blt	.L980
	mov	w0, 2
	bgt	.L980
	mov	w0, 0
	cmp	x4, x2
	bcc	.L980
	cset	w0, hi
	add	w0, w0, 1
.L980:
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
	cbnz	x0, .L989
	cmp	x1, 0
	rbit	x1, x1
	clz	x1, x1
	add	w1, w1, 65
	csel	w0, w1, wzr, ne
	ret
	.p2align 2,,3
.L989:
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
	tbz	x1, 5, .L993
	lsr	x2, x0, 32
	sub	w1, w1, #32
	mov	w0, 0
	lsr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L992:
	ret
	.p2align 2,,3
.L993:
	cbz	w1, .L992
	lsr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	lsr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L992
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
	tbz	x2, 6, .L999
	sub	w2, w2, #64
	mov	x3, 0
	lsr	x0, x1, x2
	mov	x1, x3
.L1001:
	ret
	.p2align 2,,3
.L999:
	cbz	w2, .L1001
	neg	w4, w2
	lsr	x0, x0, x2
	lsr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1001
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
	tbz	x0, 0, .L1016
	.p2align 3,,7
.L1018:
	fmul	d31, d31, d1
.L1016:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L1017
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1018
.L1022:
	asr	w1, w2, 1
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1018
	b	.L1022
	.p2align 2,,3
.L1017:
	tbz	w0, #31, .L1015
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
.L1015:
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
	tbz	x0, 0, .L1024
	.p2align 3,,7
.L1026:
	fmul	s31, s31, s1
.L1024:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L1025
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1026
.L1030:
	asr	w1, w2, 1
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1026
	b	.L1030
	.p2align 2,,3
.L1025:
	tbz	w0, #31, .L1023
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
.L1023:
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
	bcc	.L1033
	mov	w0, 2
	bhi	.L1031
	mov	w0, 0
	cmp	w2, w1
	bcc	.L1031
	cset	w0, hi
	add	w0, w0, 1
.L1031:
	ret
	.p2align 2,,3
.L1033:
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
	bcc	.L1039
	mov	w0, 1
	bhi	.L1037
	cmp	w2, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L1037:
	ret
	.p2align 2,,3
.L1039:
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
	bcc	.L1042
	mov	w0, 2
	bhi	.L1042
	mov	w0, 0
	cmp	x4, x2
	bcc	.L1042
	cset	w0, hi
	add	w0, w0, 1
.L1042:
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
	.align	4
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
