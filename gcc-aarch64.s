	.arch armv8-a
	.file	"mini-libc.c"
	.text
	.align	2
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
	.global	memmove
	.type	memmove, %function
memmove:
.LFB2:
	.cfi_startproc
	cmp	x0, x1
	bls	.L4
	cbz	x2, .L5
	sub	x1, x1, #1
	sub	x4, x0, #1
.L6:
	ldrb	w3, [x1, x2]
	strb	w3, [x4, x2]
	subs	x2, x2, #1
	bne	.L6
.L5:
	ret
.L4:
	beq	.L5
	cbz	x2, .L5
	mov	x3, 0
.L7:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L7
	b	.L5
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, %function
memccpy:
.LFB3:
	.cfi_startproc
	and	w2, w2, 255
	cbz	x3, .L18
.L11:
	ldrb	w4, [x1]
	strb	w4, [x0]
	cmp	w2, w4
	beq	.L19
	add	x1, x1, 1
	add	x0, x0, 1
	subs	x3, x3, #1
	bne	.L11
	mov	x0, 0
	b	.L10
.L18:
	mov	x0, 0
	b	.L10
.L19:
	add	x0, x0, 1
.L10:
	ret
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, %function
memchr:
.LFB4:
	.cfi_startproc
	and	w1, w1, 255
	cbz	x2, .L26
.L21:
	ldrb	w3, [x0]
	cmp	w1, w3
	beq	.L20
	add	x0, x0, 1
	subs	x2, x2, #1
	bne	.L21
	mov	x0, 0
.L20:
	ret
.L26:
	mov	x0, 0
	b	.L20
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, %function
memcmp:
.LFB5:
	.cfi_startproc
	cbz	x2, .L35
.L28:
	ldrb	w4, [x0]
	ldrb	w3, [x1]
	cmp	w4, w3
	bne	.L36
	add	x0, x0, 1
	add	x1, x1, 1
	subs	x2, x2, #1
	bne	.L28
	mov	w0, 0
	b	.L27
.L35:
	mov	w0, 0
	b	.L27
.L36:
	ldrb	w0, [x0]
	ldrb	w1, [x1]
	sub	w0, w0, w1
.L27:
	ret
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, %function
memcpy:
.LFB6:
	.cfi_startproc
	cbz	x2, .L38
	mov	x3, 0
.L39:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L39
.L38:
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, %function
memrchr:
.LFB7:
	.cfi_startproc
	and	w1, w1, 255
	sub	x2, x2, #1
	add	x2, x0, x2
	sub	x4, x0, #1
.L42:
	cmp	x2, x4
	beq	.L45
	mov	x0, x2
	ldrb	w3, [x2], -1
	cmp	w1, w3
	bne	.L42
	b	.L41
.L45:
	mov	x0, 0
.L41:
	ret
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, %function
memset:
.LFB8:
	.cfi_startproc
	cbz	x2, .L47
	add	x3, x0, x2
	mov	x2, x0
	and	w1, w1, 255
.L48:
	strb	w1, [x2], 1
	cmp	x2, x3
	bne	.L48
.L47:
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, %function
stpcpy:
.LFB9:
	.cfi_startproc
	ldrb	w2, [x1]
	strb	w2, [x0]
	cbz	w2, .L51
.L52:
	ldrb	w2, [x1, 1]!
	strb	w2, [x0, 1]!
	cbnz	w2, .L52
.L51:
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, %function
strchrnul:
.LFB10:
	.cfi_startproc
	and	w1, w1, 255
	ldrb	w2, [x0]
	cbz	w2, .L54
.L55:
	ldrb	w2, [x0]
	cmp	w1, w2
	beq	.L54
	ldrb	w2, [x0, 1]!
	cbnz	w2, .L55
.L54:
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, %function
strchr:
.LFB11:
	.cfi_startproc
.L62:
	ldrb	w2, [x0]
	cmp	w1, w2
	beq	.L61
	add	x0, x0, 1
	cbnz	w2, .L62
	mov	x0, 0
.L61:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, %function
strcmp:
.LFB12:
	.cfi_startproc
	ldrb	w3, [x0]
	ldrb	w2, [x1]
	cmp	w3, w2
	bne	.L66
.L65:
	ldrb	w2, [x0]
	cbz	w2, .L66
	ldrb	w3, [x0, 1]!
	ldrb	w2, [x1, 1]!
	cmp	w3, w2
	beq	.L65
.L66:
	ldrb	w2, [x0]
	ldrb	w0, [x1]
	sub	w0, w2, w0
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, %function
strlen:
.LFB13:
	.cfi_startproc
	ldrb	w1, [x0]
	cbz	w1, .L72
	mov	x1, x0
.L71:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L71
.L70:
	sub	x0, x1, x0
	ret
.L72:
	mov	x1, x0
	b	.L70
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, %function
strncmp:
.LFB14:
	.cfi_startproc
	sub	x6, x2, #1
	cbz	x2, .L79
	ldrb	w3, [x0]
	mov	x2, x0
	cbz	w3, .L77
.L76:
	ldrb	w3, [x1]
	sub	x4, x0, x2
	cmn	x4, x6
	cset	w5, ne
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L77
	ldrb	w4, [x2]
	cmp	w3, w4
	bne	.L77
	add	x1, x1, 1
	ldrb	w3, [x2, 1]!
	cbnz	w3, .L76
.L77:
	ldrb	w0, [x2]
	ldrb	w1, [x1]
	sub	w0, w0, w1
.L74:
	ret
.L79:
	mov	w0, 0
	b	.L74
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, %function
swab:
.LFB15:
	.cfi_startproc
	cmp	x2, 1
	ble	.L82
	sub	x2, x2, #2
	and	x2, x2, -2
	add	x2, x2, 2
	add	x2, x0, x2
.L84:
	ldrb	w3, [x0, 1]
	strb	w3, [x1]
	ldrb	w3, [x0], 2
	strb	w3, [x1, 1]
	add	x1, x1, 2
	cmp	x0, x2
	bne	.L84
.L82:
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	2
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
	.global	isblank
	.type	isblank, %function
isblank:
.LFB18:
	.cfi_startproc
	cmp	w0, 32
	cset	w1, eq
	cmp	w0, 9
	ccmp	w1, 0, 0, ne
	cset	w0, ne
	ret
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, %function
iscntrl:
.LFB19:
	.cfi_startproc
	cmp	w0, 31
	cset	w1, ls
	cmp	w0, 127
	cset	w0, eq
	cmp	w1, 0
	ccmp	w0, 0, 0, eq
	cset	w0, ne
	ret
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	2
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
	.global	isspace
	.type	isspace, %function
isspace:
.LFB24:
	.cfi_startproc
	cmp	w0, 32
	cset	w1, eq
	sub	w0, w0, #9
	cmp	w0, 4
	ccmp	w1, 0, 0, hi
	cset	w0, ne
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	2
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
	.global	iswcntrl
	.type	iswcntrl, %function
iswcntrl:
.LFB26:
	.cfi_startproc
	mov	w1, w0
	cmp	w0, 31
	cset	w2, ls
	sub	w0, w0, #127
	cmp	w0, 32
	cset	w0, ls
	cmp	w2, 0
	ccmp	w0, 0, 0, eq
	mov	w0, 1
	bne	.L96
	sub	w2, w1, #8192
	sub	w2, w2, #40
	mov	w0, 1
	cmp	w2, w0
	bls	.L96
	sub	w1, w1, #61440
	sub	w1, w1, #4089
	cmp	w1, 2
	cset	w0, ls
.L96:
	ret
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	2
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
	.global	iswprint
	.type	iswprint, %function
iswprint:
.LFB28:
	.cfi_startproc
	mov	w1, w0
	cmp	w0, 254
	bls	.L107
	mov	w0, 8231
	cmp	w1, w0
	cset	w0, ls
	sub	w3, w1, #8192
	sub	w3, w3, #42
	mov	w2, 47061
	cmp	w3, w2
	cset	w2, ls
	cmp	w0, 0
	mov	w0, 1
	ccmp	w2, 0, 0, eq
	bne	.L101
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L101
	sub	w3, w1, #61440
	sub	w3, w3, #4092
	mov	w0, 0
	mov	w2, 3
	movk	w2, 0x10, lsl 16
	cmp	w3, w2
	bhi	.L101
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
	b	.L101
.L107:
	add	w1, w0, 1
	and	w1, w1, 127
	cmp	w1, 32
	cset	w0, hi
.L101:
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, %function
iswxdigit:
.LFB29:
	.cfi_startproc
	sub	w1, w0, #48
	cmp	w1, 9
	bls	.L110
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	cset	w0, ls
.L108:
	ret
.L110:
	mov	w0, 1
	b	.L108
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	2
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
	.global	fdim
	.type	fdim, %function
fdim:
.LFB31:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L112
	fcmp	d1, d1
	bvs	.L116
	fcmpe	d0, d1
	bgt	.L118
	movi	d0, #0
	b	.L112
.L118:
	fsub	d0, d0, d1
.L112:
	ret
.L116:
	fmov	d0, d1
	b	.L112
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, %function
fdimf:
.LFB32:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L120
	fcmp	s1, s1
	bvs	.L124
	fcmpe	s0, s1
	bgt	.L126
	movi	v0.2s, #0
	b	.L120
.L126:
	fsub	s0, s0, s1
.L120:
	ret
.L124:
	fmov	s0, s1
	b	.L120
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, %function
fmax:
.LFB33:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L131
	fcmp	d1, d1
	bvs	.L128
	fmov	x0, d0
	lsr	x0, x0, 63
	fmov	x1, d1
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L130
	cmp	w0, 0
	fcsel	d0, d0, d1, eq
.L128:
	ret
.L130:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	b	.L128
.L131:
	fmov	d0, d1
	b	.L128
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, %function
fmaxf:
.LFB34:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L137
	fcmp	s1, s1
	bvs	.L134
	fmov	w0, s0
	and	w0, w0, -2147483648
	fmov	w1, s1
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L136
	cmp	w0, 0
	fcsel	s0, s0, s1, eq
.L134:
	ret
.L136:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	b	.L134
.L137:
	fmov	s0, s1
	b	.L134
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	2
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
	cbnz	w0, .L146
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L147
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L142
	ldr	q0, [sp, 16]
	cbnz	w0, .L140
	ldr	q0, [sp, 32]
	b	.L140
.L142:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	ldr	q0, [sp, 16]
	tbnz	x0, 31, .L140
	ldr	q0, [sp, 32]
.L140:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L146:
	.cfi_restore_state
	ldr	q0, [sp, 16]
	b	.L140
.L147:
	ldr	q0, [sp, 32]
	b	.L140
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, %function
fmin:
.LFB36:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L153
	fcmp	d1, d1
	bvs	.L150
	fmov	x0, d0
	lsr	x0, x0, 63
	fmov	x1, d1
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L152
	cmp	w0, 0
	fcsel	d0, d1, d0, eq
.L150:
	ret
.L152:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	b	.L150
.L153:
	fmov	d0, d1
	b	.L150
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, %function
fminf:
.LFB37:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L159
	fcmp	s1, s1
	bvs	.L156
	fmov	w0, s0
	and	w0, w0, -2147483648
	fmov	w1, s1
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L158
	cmp	w0, 0
	fcsel	s0, s1, s0, eq
.L156:
	ret
.L158:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	b	.L156
.L159:
	fmov	s0, s1
	b	.L156
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	2
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
	cbnz	w0, .L168
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L169
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L164
	ldr	q0, [sp, 32]
	cbnz	w0, .L162
	ldr	q0, [sp, 16]
	b	.L162
.L164:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	ldr	q0, [sp, 32]
	tbnz	x0, 31, .L162
	ldr	q0, [sp, 16]
.L162:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L168:
	.cfi_restore_state
	ldr	q0, [sp, 16]
	b	.L162
.L169:
	ldr	q0, [sp, 32]
	b	.L162
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align	3
	.type	digits, %object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	2
	.global	l64a
	.type	l64a, %function
l64a:
.LFB39:
	.cfi_startproc
	mov	w1, w0
	cbz	w0, .L175
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	adrp	x3, digits
	add	x3, x3, :lo12:digits
.L174:
	and	w2, w1, 63
	ldrb	w2, [x3, w2, uxtw]
	strb	w2, [x0], 1
	lsr	w1, w1, 6
	cbnz	w1, .L174
.L173:
	strb	wzr, [x0]
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	ret
.L175:
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	b	.L173
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.global	srand
	.type	srand, %function
srand:
.LFB40:
	.cfi_startproc
	sub	w0, w0, #1
	adrp	x1, seed
	str	x0, [x1, #:lo12:seed]
	ret
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, %function
rand:
.LFB41:
	.cfi_startproc
	adrp	x1, seed
	ldr	x0, [x1, #:lo12:seed]
	mov	x2, 32557
	movk	x2, 0x4c95, lsl 16
	movk	x2, 0xf42d, lsl 32
	movk	x2, 0x5851, lsl 48
	mul	x0, x0, x2
	add	x0, x0, 1
	str	x0, [x1, #:lo12:seed]
	lsr	x0, x0, 33
	ret
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, %function
insque:
.LFB42:
	.cfi_startproc
	cbz	x1, .L182
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L179
	str	x0, [x1, 8]
.L179:
	ret
.L182:
	stp	xzr, xzr, [x0]
	b	.L179
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, %function
remque:
.LFB43:
	.cfi_startproc
	ldr	x1, [x0]
	cbz	x1, .L184
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L184:
	ldr	x1, [x0, 8]
	cbz	x1, .L183
	ldr	x0, [x0]
	str	x0, [x1]
.L183:
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	2
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
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x22, x0
	mov	x26, x1
	mov	x25, x2
	mov	x21, x3
	ldr	x27, [x2]
	cbz	x27, .L187
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x23, x4
	mov	x19, x1
	mov	x20, 0
.L189:
	mov	x24, x19
	mov	x1, x19
	mov	x0, x22
	blr	x23
	cbz	w0, .L192
	add	x20, x20, 1
	add	x19, x19, x21
	cmp	x20, x27
	bne	.L189
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L187:
	add	x0, x27, 1
	str	x0, [x25]
	mov	x2, x21
	mov	x1, x22
	madd	x0, x21, x27, x26
	bl	memcpy
	mov	x24, x0
.L186:
	mov	x0, x24
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
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
.L192:
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
	b	.L186
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	2
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
	str	x25, [sp, 64]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	ldr	x24, [x2]
	cbz	x24, .L196
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	x21, x0
	mov	x23, x3
	mov	x22, x4
	mov	x19, x1
	mov	x20, 0
.L195:
	mov	x25, x19
	mov	x1, x19
	mov	x0, x21
	blr	x22
	cbz	w0, .L199
	add	x20, x20, 1
	add	x19, x19, x23
	cmp	x20, x24
	bne	.L195
	mov	x25, 0
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L193
.L196:
	mov	x25, 0
	b	.L193
.L199:
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L193:
	mov	x0, x25
	ldp	x23, x24, [sp, 48]
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
	.global	atoi
	.type	atoi, %function
atoi:
.LFB47:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	b	.L202
.L203:
	add	x19, x19, 1
.L202:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L203
	cmp	w20, 43
	beq	.L209
	mov	w2, w0
	cmp	w20, 45
	bne	.L205
	mov	w2, 1
.L204:
	add	x19, x19, 1
.L205:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bhi	.L206
.L207:
	add	w0, w0, w0, lsl 2
	lsl	w0, w0, 1
	ldrb	w1, [x19], 1
	sub	w1, w1, #48
	sub	w0, w0, w1
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L207
.L206:
	cmp	w2, 0
	csneg	w0, w0, w0, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L209:
	.cfi_restore_state
	mov	w2, w0
	b	.L204
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, %function
atol:
.LFB48:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	b	.L214
.L215:
	add	x19, x19, 1
.L214:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L215
	cmp	w20, 43
	beq	.L216
	cmp	w20, 45
	bne	.L217
	mov	w0, 1
.L216:
	add	x19, x19, 1
.L217:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bhi	.L221
	mov	x1, 0
.L219:
	add	x1, x1, x1, lsl 2
	lsl	x1, x1, 1
	ldrb	w2, [x19], 1
	sub	w2, w2, #48
	sub	x1, x1, w2, sxtw
	ldrb	w2, [x19]
	sub	w2, w2, #48
	cmp	w2, 9
	bls	.L219
.L218:
	cmp	w0, 0
	csneg	x0, x1, x1, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L221:
	.cfi_restore_state
	mov	x1, 0
	b	.L218
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, %function
atoll:
.LFB49:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	b	.L225
.L226:
	add	x19, x19, 1
.L225:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L226
	cmp	w20, 43
	beq	.L227
	cmp	w20, 45
	bne	.L228
	mov	w0, 1
.L227:
	add	x19, x19, 1
.L228:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bhi	.L232
	mov	x1, 0
.L230:
	add	x1, x1, x1, lsl 2
	lsl	x1, x1, 1
	ldrb	w2, [x19], 1
	sub	w2, w2, #48
	sub	x1, x1, w2, sxtw
	ldrb	w2, [x19]
	sub	w2, w2, #48
	cmp	w2, 9
	bls	.L230
.L229:
	cmp	w0, 0
	csneg	x0, x1, x1, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L232:
	.cfi_restore_state
	mov	x1, 0
	b	.L229
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	2
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
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	mov	x25, x0
	mov	x23, x1
	mov	x19, x2
	mov	x22, x3
	mov	x24, x4
	cbnz	x2, .L238
	mov	x21, 0
	b	.L235
.L240:
	mov	x19, x20
.L237:
	cbz	x19, .L243
.L238:
	lsr	x20, x19, 1
	madd	x21, x20, x22, x23
	mov	x1, x21
	mov	x0, x25
	blr	x24
	tbnz	w0, #31, .L240
	cmp	w0, 0
	ble	.L235
	add	x23, x21, x22
	sub	x19, x19, #1
	sub	x19, x19, x20
	b	.L237
.L243:
	mov	x21, 0
.L235:
	mov	x0, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	2
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
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	mov	x25, x0
	mov	x22, x1
	mov	x21, x3
	mov	x24, x4
	mov	x23, x5
	mov	w20, w2
	cbnz	w2, .L247
	mov	x19, 0
	b	.L244
.L246:
	asr	w20, w20, 1
	cbz	w20, .L251
.L247:
	asr	w19, w20, 1
	sxtw	x19, w19
	madd	x19, x19, x21, x22
	mov	x2, x23
	mov	x1, x19
	mov	x0, x25
	blr	x24
	cbz	w0, .L244
	cmp	w0, 0
	ble	.L246
	add	x22, x19, x21
	sub	w20, w20, #1
	b	.L246
.L251:
	mov	x19, 0
.L244:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, %function
div:
.LFB52:
	.cfi_startproc
	sdiv	w2, w0, w1
	msub	w1, w2, w1, w0
	uxtw	x0, w2
	orr	x0, x0, x1, lsl 32
	ret
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	2
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
	.global	labs
	.type	labs, %function
labs:
.LFB55:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	2
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
	.global	llabs
	.type	llabs, %function
llabs:
.LFB57:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	2
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
	.global	wcschr
	.type	wcschr, %function
wcschr:
.LFB59:
	.cfi_startproc
	ldr	w2, [x0]
	cbz	w2, .L266
.L260:
	ldr	w2, [x0]
	cmp	w1, w2
	beq	.L262
	ldr	w2, [x0, 4]!
	cbnz	w2, .L260
.L262:
	ldr	w1, [x0]
	cmp	w1, 0
	csel	x0, x0, xzr, ne
.L259:
	ret
.L266:
	mov	x0, 0
	b	.L259
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, %function
wcscmp:
.LFB60:
	.cfi_startproc
	ldr	w3, [x0]
	ldr	w2, [x1]
	cmp	w3, w2
	bne	.L269
.L268:
	ldr	w2, [x0]
	cbz	w2, .L269
	ldr	w2, [x1]
	cbz	w2, .L269
	ldr	w3, [x0, 4]!
	ldr	w2, [x1, 4]!
	cmp	w3, w2
	beq	.L268
.L269:
	ldr	w2, [x0]
	ldr	w1, [x1]
	mov	w0, -1
	cmp	w2, w1
	bcc	.L267
	cset	w0, hi
.L267:
	ret
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, %function
wcscpy:
.LFB61:
	.cfi_startproc
	mov	x2, 0
.L275:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L275
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, %function
wcslen:
.LFB62:
	.cfi_startproc
	ldr	w1, [x0]
	cbz	w1, .L280
	mov	x1, x0
.L279:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L279
.L278:
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
.L280:
	mov	x1, x0
	b	.L278
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, %function
wcsncmp:
.LFB63:
	.cfi_startproc
	cbz	x2, .L290
.L283:
	ldr	w3, [x0]
	ldr	w4, [x1]
	cmp	w3, w4
	bne	.L285
	cbz	w3, .L285
	add	x0, x0, 4
	add	x1, x1, 4
	subs	x2, x2, #1
	bne	.L283
	mov	w0, 0
	b	.L282
.L290:
	mov	w0, 0
	b	.L282
.L287:
	cmp	w2, w0
	cset	w0, hi
.L282:
	ret
.L285:
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	bcs	.L287
	mov	w0, -1
	b	.L282
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, %function
wmemchr:
.LFB64:
	.cfi_startproc
	cbz	x2, .L297
.L292:
	ldr	w3, [x0]
	cmp	w1, w3
	beq	.L291
	add	x0, x0, 4
	subs	x2, x2, #1
	bne	.L292
	mov	x0, 0
.L291:
	ret
.L297:
	mov	x0, 0
	b	.L291
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, %function
wmemcmp:
.LFB65:
	.cfi_startproc
	cbz	x2, .L307
.L299:
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, w3
	bne	.L308
	add	x0, x0, 4
	add	x1, x1, 4
	subs	x2, x2, #1
	bne	.L299
	mov	w0, 0
.L298:
	ret
.L307:
	mov	w0, 0
	b	.L298
.L303:
	cmp	w2, w0
	cset	w0, hi
	b	.L298
.L308:
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	bcs	.L303
	mov	w0, -1
	b	.L298
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, %function
wmemcpy:
.LFB66:
	.cfi_startproc
	cbz	x2, .L310
	mov	x3, 0
.L311:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L311
.L310:
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, %function
wmemmove:
.LFB67:
	.cfi_startproc
	cmp	x0, x1
	beq	.L314
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcc	.L315
	mov	x3, 0
	cbz	x2, .L314
.L316:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L316
	b	.L314
.L315:
	sub	x3, x2, #1
	cbz	x2, .L314
.L317:
	ldr	w2, [x1, x3, lsl 2]
	str	w2, [x0, x3, lsl 2]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L317
.L314:
	ret
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, %function
wmemset:
.LFB68:
	.cfi_startproc
	cbz	x2, .L323
	mov	x3, 0
.L324:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L324
.L323:
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, %function
bcopy:
.LFB69:
	.cfi_startproc
	cmp	x0, x1
	bcs	.L327
	cbz	x2, .L326
	sub	x0, x0, #1
	sub	x1, x1, #1
.L329:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	subs	x2, x2, #1
	bne	.L329
.L326:
	ret
.L327:
	beq	.L326
	cbz	x2, .L326
	mov	x3, 0
.L330:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L330
	b	.L326
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	2
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
	.global	rotl_sz
	.type	rotl_sz, %function
rotl_sz:
.LFB74:
	.cfi_startproc
	lsl	x2, x0, x1
	neg	w1, w1
	lsr	x0, x0, x1
	orr	x0, x0, x2
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, %function
rotr_sz:
.LFB75:
	.cfi_startproc
	lsr	x2, x0, x1
	neg	w1, w1
	lsl	x0, x0, x1
	orr	x0, x0, x2
	ret
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, %function
rotl16:
.LFB76:
	.cfi_startproc
	and	w0, w0, 65535
	lsl	w3, w0, w1
	mov	w2, 16
	sub	w1, w2, w1
	lsr	w0, w0, w1
	orr	w0, w0, w3
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, %function
rotr16:
.LFB77:
	.cfi_startproc
	and	w0, w0, 65535
	lsr	w3, w0, w1
	mov	w2, 16
	sub	w1, w2, w1
	lsl	w0, w0, w1
	orr	w0, w0, w3
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, %function
rotl8:
.LFB78:
	.cfi_startproc
	and	w0, w0, 255
	lsl	w3, w0, w1
	mov	w2, 8
	sub	w1, w2, w1
	lsr	w0, w0, w1
	orr	w0, w0, w3
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, %function
rotr8:
.LFB79:
	.cfi_startproc
	and	w0, w0, 255
	lsr	w3, w0, w1
	mov	w2, 8
	sub	w1, w2, w1
	lsl	w0, w0, w1
	orr	w0, w0, w3
	ret
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, %function
bswap_16:
.LFB80:
	.cfi_startproc
	ubfx	w1, w0, 8, 8
	ubfiz	w0, w0, 8, 8
	orr	w0, w1, w0
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, %function
bswap_32:
.LFB81:
	.cfi_startproc
	lsr	w1, w0, 24
	and	w2, w0, 16711680
	orr	w2, w1, w2, lsr 8
	and	w1, w0, 65280
	lsl	w0, w0, 24
	orr	w0, w0, w1, lsl 8
	orr	w0, w2, w0
	ret
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, %function
bswap_64:
.LFB82:
	.cfi_startproc
	and	x1, x0, 71776119061217280
	lsr	x1, x1, 40
	orr	x1, x1, x0, lsr 56
	and	x4, x0, 280375465082880
	and	x2, x0, 1095216660480
	lsr	x2, x2, 8
	orr	x4, x2, x4, lsr 24
	and	x3, x0, 4278190080
	orr	x3, x1, x3, lsl 8
	and	x2, x0, 16711680
	orr	x2, x4, x2, lsl 24
	and	x1, x0, 65280
	orr	x1, x3, x1, lsl 40
	orr	x0, x2, x0, lsl 56
	orr	x0, x0, x1
	ret
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, %function
ffs:
.LFB83:
	.cfi_startproc
	mov	w1, 0
.L349:
	lsr	w2, w0, w1
	tbnz	x2, 0, .L351
	add	w1, w1, 1
	cmp	w1, 32
	bne	.L349
	mov	w0, 0
	b	.L346
.L351:
	add	w0, w1, 1
.L346:
	ret
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, %function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mov	w1, w0
	cbz	w0, .L352
	and	w0, w0, 1
	tbnz	x1, 0, .L352
	mov	w0, 1
.L354:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L354
.L352:
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, %function
gl_isinff:
.LFB85:
	.cfi_startproc
	mov	w0, 1
	mvni	v31.2s, 0x80, lsl 16
	fcmpe	s0, s31
	bmi	.L357
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	cset	w0, gt
.L357:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, %function
gl_isinfd:
.LFB86:
	.cfi_startproc
	mov	x0, -4503599627370497
	fmov	d31, x0
	mov	w0, 1
	fcmpe	d0, d31
	bmi	.L360
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	cset	w0, gt
.L360:
	ret
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, %function
gl_isinfl:
.LFB87:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	q0, [sp, 16]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldr	q1, [x0]
	bl	__lttf2
	mov	w1, w0
	mov	w0, 1
	tbnz	w1, #31, .L363
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L363:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, %function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	scvtf	d0, w1
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
	.global	ldexpf
	.type	ldexpf, %function
ldexpf:
.LFB89:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L371
	fadd	s31, s0, s0
	fcmp	s0, s31
	beq	.L371
	cmp	w0, 0
	fmov	s31, 2.0e+0
	fmov	s30, 5.0e-1
	fcsel	s31, s31, s30, ge
	b	.L374
.L373:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L371
	fmul	s31, s31, s31
.L374:
	tbz	x0, 0, .L373
	fmul	s0, s0, s31
	b	.L373
.L371:
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, %function
ldexp:
.LFB90:
	.cfi_startproc
	fcmp	d0, d0
	bvs	.L377
	fadd	d31, d0, d0
	fcmp	d0, d31
	beq	.L377
	cmp	w0, 0
	fmov	d31, 2.0e+0
	fmov	d30, 5.0e-1
	fcsel	d31, d31, d30, ge
	b	.L380
.L379:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L377
	fmul	d31, d31, d31
.L380:
	tbz	x0, 0, .L379
	fmul	d0, d0, d31
	b	.L379
.L377:
	ret
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, %function
ldexpl:
.LFB91:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	mov	w19, w0
	str	q0, [sp, 32]
	mov	v1.16b, v0.16b
	bl	__unordtf2
	cbnz	w0, .L383
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 32]
	bl	__netf2
	cbz	w0, .L383
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q31, [x0]
	str	q31, [sp, 48]
	tbz	w19, #31, .L387
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q31, [x0]
	str	q31, [sp, 48]
	b	.L387
.L386:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L383
	ldr	q1, [sp, 48]
	mov	v0.16b, v1.16b
	bl	__multf3
	str	q0, [sp, 48]
.L387:
	tbz	x19, 0, .L386
	ldp	q0, q1, [sp, 32]
	bl	__multf3
	str	q0, [sp, 32]
	b	.L386
.L383:
	ldr	q0, [sp, 32]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, %function
memxor:
.LFB92:
	.cfi_startproc
	cbz	x2, .L392
	mov	x3, 0
.L393:
	ldrb	w5, [x1, x3]
	ldrb	w4, [x0, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L393
.L392:
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, %function
strncat:
.LFB93:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x21, x0
	mov	x20, x1
	mov	x19, x2
	bl	strlen
	add	x2, x21, x0
	cbz	x19, .L397
.L396:
	ldrb	w1, [x20]
	strb	w1, [x2]
	cbz	w1, .L399
	add	x20, x20, 1
	add	x2, x2, 1
	subs	x19, x19, #1
	bne	.L396
.L397:
	strb	wzr, [x2]
.L399:
	mov	x0, x21
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, %function
strnlen:
.LFB94:
	.cfi_startproc
	mov	x2, x0
	mov	x0, 0
	cbz	x1, .L409
.L403:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L410
.L402:
	ret
.L409:
	mov	x0, x1
	b	.L402
.L410:
	add	x0, x0, 1
	cmp	x0, x1
	bne	.L403
	mov	x0, x1
	b	.L402
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, %function
strpbrk:
.LFB95:
	.cfi_startproc
	ldrb	w2, [x0]
	cbz	w2, .L418
.L412:
	mov	x2, x1
.L415:
	ldrb	w3, [x2]
	cbz	w3, .L419
	add	x2, x2, 1
	ldrb	w4, [x0]
	cmp	w4, w3
	bne	.L415
.L413:
	ret
.L418:
	mov	x0, 0
	b	.L413
.L419:
	ldrb	w2, [x0, 1]!
	cbnz	w2, .L412
	mov	x0, 0
	b	.L413
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, %function
strrchr:
.LFB96:
	.cfi_startproc
	mov	x2, x0
	mov	x0, 0
.L422:
	ldrb	w3, [x2]
	cmp	w1, w3
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L422
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, %function
strstr:
.LFB97:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	mov	x20, x1
	mov	x0, x1
	bl	strlen
	cbz	x0, .L425
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -8
	.cfi_offset 21, -16
	mov	x21, x0
	ldrb	w22, [x20]
.L427:
	mov	w1, w22
	mov	x0, x19
	bl	strchr
	mov	x19, x0
	cbz	x0, .L432
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	strncmp
	cbz	w0, .L431
	add	x19, x19, 1
	b	.L427
.L432:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L425:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L431:
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L425
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, %function
copysign:
.LFB98:
	.cfi_startproc
	fcmpe	d0, #0.0
	bmi	.L440
	bgt	.L441
	b	.L437
.L441:
	fcmpe	d1, #0.0
	bmi	.L436
.L437:
	ret
.L440:
	fcmpe	d1, #0.0
	bgt	.L436
	b	.L437
.L436:
	fneg	d0, d0
	b	.L437
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, %function
memmem:
.LFB99:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x0
	sub	x20, x1, x3
	add	x20, x0, x20
	cbz	x3, .L443
	cmp	x1, x3
	bcc	.L448
	cmp	x0, x20
	bhi	.L449
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -24
	.cfi_offset 21, -32
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	mov	x23, x2
	ldrb	w22, [x23], 1
	sub	x21, x3, #1
	b	.L446
.L445:
	add	x19, x19, 1
	cmp	x20, x19
	bcc	.L453
.L446:
	ldrb	w0, [x19]
	cmp	w0, w22
	bne	.L445
	mov	x2, x21
	mov	x1, x23
	add	x0, x19, 1
	bl	memcmp
	cbnz	w0, .L445
	mov	x0, x19
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	ldr	x23, [sp, 48]
	.cfi_restore 23
	b	.L443
.L453:
	.cfi_restore_state
	mov	x0, 0
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x23, [sp, 48]
	.cfi_restore 23
.L443:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L448:
	.cfi_restore_state
	mov	x0, 0
	b	.L443
.L449:
	mov	x0, 0
	b	.L443
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	2
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
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x2
	bl	memcpy
	add	x0, x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, %function
frexp:
.LFB101:
	.cfi_startproc
	fcmpe	d0, #0.0
	bmi	.L467
	mov	w2, 0
.L457:
	mov	w1, 0
	fmov	d30, 5.0e-1
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L461
	b	.L474
.L461:
	add	w1, w1, 1
	fmul	d0, d0, d30
	fcmpe	d0, d31
	bge	.L461
.L462:
	str	w1, [x0]
	fneg	d31, d0
	cmp	w2, 0
	fcsel	d0, d31, d0, ne
	ret
.L467:
	fneg	d0, d0
	mov	w2, 1
	b	.L457
.L474:
	fcmp	d0, #0.0
	cset	w3, ne
	fmov	d31, 5.0e-1
	fcmpe	d0, d31
	mov	w1, 0
	ccmp	w3, 0, 4, mi
	beq	.L462
.L463:
	sub	w1, w1, #1
	fadd	d0, d0, d0
	fcmpe	d0, d31
	bmi	.L463
	b	.L462
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, %function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	x2, x0
	cbz	x0, .L478
	mov	x0, 0
.L477:
	sbfx	x3, x2, 0, 1
	and	x3, x1, x3
	add	x0, x0, x3
	lsl	x1, x1, 1
	lsr	x2, x2, 1
	cbnz	x2, .L477
.L475:
	ret
.L478:
	mov	x0, 0
	b	.L475
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, %function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	w3, 1
	cmp	w1, w0
	bcs	.L483
.L481:
	tbnz	w1, #31, .L483
	lsl	w1, w1, 1
	lsl	w3, w3, 1
	cmp	w0, w1
	cset	w4, hi
	cmp	w3, 0
	ccmp	w4, 0, 4, ne
	bne	.L481
	mov	w4, w3
	cbz	w3, .L484
.L483:
	mov	w4, 0
	b	.L487
.L486:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L484
.L487:
	cmp	w0, w1
	bcc	.L486
	sub	w0, w0, w1
	orr	w4, w4, w3
	b	.L486
.L484:
	cmp	x2, 0
	csel	w0, w4, w0, eq
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, %function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	ands	w1, w0, 255
	ubfiz	w0, w0, 8, 8
	clz	w0, w0
	sub	w0, w0, #1
	mov	w1, 7
	csel	w0, w0, w1, ne
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, %function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	asr	x2, x0, 63
	eor	x1, x2, x0
	clz	x1, x1
	sub	w1, w1, #1
	cmp	x2, x0
	mov	w0, 63
	csel	w0, w1, w0, ne
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, %function
__mulsi3:
.LFB106:
	.cfi_startproc
	mov	w2, w0
	cbz	w0, .L500
	mov	w0, 0
.L502:
	sbfx	x3, x2, 0, 1
	and	w3, w3, w1
	add	w0, w0, w3
	lsr	w2, w2, 1
	lsl	w1, w1, 1
	cbnz	w2, .L502
.L500:
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, %function
__cmovd:
.LFB107:
	.cfi_startproc
	lsr	w5, w2, 3
	and	w3, w2, -8
	cmp	x0, x1
	bcs	.L506
.L509:
	lsl	w6, w5, 3
	mov	x4, 0
	cbz	w5, .L508
.L512:
	ldr	x5, [x1, x4]
	str	x5, [x0, x4]
	add	x4, x4, 8
	cmp	x4, x6
	bne	.L512
.L508:
	cmp	w2, w3
	bls	.L505
	uxtw	x3, w3
.L513:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L513
.L505:
	ret
.L506:
	add	x4, x1, w2, uxtw
	cmp	x4, x0
	bcc	.L509
	sub	w3, w2, #1
	cbz	w2, .L505
.L514:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L514
	b	.L505
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, %function
__cmovh:
.LFB108:
	.cfi_startproc
	lsr	w4, w2, 1
	cmp	x0, x1
	bcs	.L521
.L524:
	lsl	w5, w4, 1
	mov	x3, 0
	cbz	w4, .L523
.L527:
	ldrsh	w4, [x1, x3]
	strh	w4, [x0, x3]
	add	x3, x3, 2
	cmp	x3, x5
	bne	.L527
.L523:
	tbz	x2, 0, .L520
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L520:
	ret
.L521:
	add	x3, x1, w2, uxtw
	cmp	x3, x0
	bcc	.L524
	sub	w3, w2, #1
	cbz	w2, .L520
.L528:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L528
	b	.L520
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, %function
__cmovw:
.LFB109:
	.cfi_startproc
	lsr	w5, w2, 2
	and	w3, w2, -4
	cmp	x0, x1
	bcs	.L534
.L537:
	lsl	w6, w5, 2
	mov	x4, 0
	cbz	w5, .L536
.L540:
	ldr	w5, [x1, x4]
	str	w5, [x0, x4]
	add	x4, x4, 4
	cmp	x4, x6
	bne	.L540
.L536:
	cmp	w2, w3
	bls	.L533
	uxtw	x3, w3
.L541:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L541
.L533:
	ret
.L534:
	add	x4, x1, w2, uxtw
	cmp	x4, x0
	bcc	.L537
	sub	w3, w2, #1
	cbz	w2, .L533
.L542:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L542
	b	.L533
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	2
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
	.global	__clzhi2
	.type	__clzhi2, %function
__clzhi2:
.LFB116:
	.cfi_startproc
	and	w3, w0, 65535
	mov	w0, 0
	mov	w2, 15
.L556:
	sub	w1, w2, w0
	asr	w1, w3, w1
	tbnz	x1, 0, .L554
	add	w0, w0, 1
	cmp	w0, 16
	bne	.L556
.L554:
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, %function
__ctzhi2:
.LFB117:
	.cfi_startproc
	and	w2, w0, 65535
	mov	w0, 0
.L560:
	asr	w1, w2, w0
	tbnz	x1, 0, .L558
	add	w0, w0, 1
	cmp	w0, 16
	bne	.L560
.L558:
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, %function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	movi	v31.2s, 0x47, lsl 24
	fcmpe	s0, s31
	bge	.L566
	fcvtzs	x0, s0
.L562:
	ret
.L566:
	movi	v31.2s, 0x47, lsl 24
	fsub	s0, s0, s31
	fcvtzs	x0, s0
	add	x0, x0, 32768
	b	.L562
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, %function
__parityhi2:
.LFB119:
	.cfi_startproc
	and	w3, w0, 65535
	mov	w0, 0
	mov	w1, 0
.L569:
	asr	w2, w3, w1
	and	w2, w2, 1
	add	w0, w0, w2
	add	w1, w1, 1
	cmp	w1, 16
	bne	.L569
	and	w0, w0, 1
	ret
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, %function
__popcounthi2:
.LFB120:
	.cfi_startproc
	and	w3, w0, 65535
	mov	w0, 0
	mov	w1, 0
.L572:
	asr	w2, w3, w1
	and	w2, w2, 1
	add	w0, w0, w2
	add	w1, w1, 1
	cmp	w1, 16
	bne	.L572
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mov	w2, w0
	cbz	w0, .L574
	mov	w0, 0
.L576:
	sbfx	x3, x2, 0, 1
	and	w3, w3, w1
	add	w0, w0, w3
	lsr	w2, w2, 1
	lsl	w1, w1, 1
	cbnz	w2, .L576
.L574:
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	w3, w0
	cbz	w0, .L579
	cbz	w1, .L583
	mov	w0, 0
.L581:
	sbfx	x2, x1, 0, 1
	and	w2, w2, w3
	add	w0, w0, w2
	lsl	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w1, .L581
.L579:
	ret
.L583:
	mov	w0, w1
	b	.L579
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, %function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	w3, 1
	cmp	w1, w0
	bcs	.L588
.L586:
	tbnz	w1, #31, .L588
	lsl	w1, w1, 1
	lsl	w3, w3, 1
	cmp	w0, w1
	cset	w4, hi
	cmp	w3, 0
	ccmp	w4, 0, 4, ne
	bne	.L586
	mov	w4, w3
	cbz	w3, .L589
.L588:
	mov	w4, 0
	b	.L592
.L591:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L589
.L592:
	cmp	w0, w1
	bcc	.L591
	sub	w0, w0, w1
	orr	w4, w4, w3
	b	.L591
.L589:
	cmp	w2, 0
	csel	w0, w4, w0, eq
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	mov	w0, -1
	fcmpe	s0, s1
	bmi	.L599
	cset	w0, gt
.L599:
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	mov	w0, -1
	fcmpe	d0, d1
	bmi	.L602
	cset	w0, gt
.L602:
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
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
	.global	__mulhi3
	.type	__mulhi3, %function
__mulhi3:
.LFB128:
	.cfi_startproc
	tbnz	w1, #31, .L615
	cbz	w1, .L613
	mov	w5, 0
.L609:
	mov	w4, 0
	mov	w2, 0
.L611:
	sbfx	x3, x1, 0, 1
	and	w3, w3, w0
	add	w4, w4, w3
	lsl	w0, w0, 1
	asr	w1, w1, 1
	add	w2, w2, 1
	and	w2, w2, 255
	cmp	w1, 0
	cset	w3, ne
	cmp	w2, 31
	ccmp	w3, 0, 4, ls
	bne	.L611
.L610:
	cmp	w5, 0
	csneg	w0, w4, w4, eq
	ret
.L615:
	neg	w1, w1
	mov	w5, 1
	b	.L609
.L613:
	mov	w5, 0
	mov	w4, 0
	b	.L610
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, %function
__divsi3:
.LFB129:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	tbnz	x0, #63, .L625
	tbnz	x1, #63, .L626
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L616
.L625:
	neg	x0, x0
	tbnz	x1, #63, .L627
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
.L620:
	neg	x0, x0
.L616:
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L626:
	.cfi_restore_state
	mov	w2, 0
	neg	w1, w1
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L620
.L627:
	mov	w2, 0
	neg	w1, w1
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L616
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, %function
__modsi3:
.LFB130:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	tbnz	x0, #63, .L632
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	mov	w2, 1
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L628
.L632:
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	mov	w2, 1
	neg	w0, w0
	bl	__udivmodsi4
	uxtw	x0, w0
	neg	x0, x0
.L628:
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, %function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	and	w0, w0, 65535
	and	w1, w1, 65535
	mov	w3, 1
	cmp	w1, w0
	bcs	.L636
.L634:
	tbnz	x1, 15, .L636
	ubfiz	w1, w1, 1, 15
	ubfiz	w3, w3, 1, 15
	cmp	w0, w1
	cset	w4, hi
	cmp	w3, 0
	ccmp	w4, 0, 4, ne
	bne	.L634
	mov	w4, w3
	cbz	w3, .L637
.L636:
	mov	w4, 0
	b	.L640
.L639:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L637
.L640:
	cmp	w0, w1
	bcc	.L639
	sub	w0, w0, w1
	and	w0, w0, 65535
	orr	w4, w4, w3
	b	.L639
.L637:
	cmp	w2, 0
	csel	w0, w0, w4, ne
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	x3, 1
	cmp	x1, x0
	bcs	.L649
.L647:
	tbnz	x1, 31, .L649
	lsl	x1, x1, 1
	lsl	x3, x3, 1
	cmp	x0, x1
	cset	w4, hi
	cmp	x3, 0
	ccmp	w4, 0, 4, ne
	bne	.L647
	mov	x4, x3
	cbz	x3, .L650
.L649:
	mov	x4, 0
	b	.L653
.L652:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbz	x3, .L650
.L653:
	cmp	x0, x1
	bcc	.L652
	sub	x0, x0, x1
	orr	x4, x4, x3
	b	.L652
.L650:
	cmp	w2, 0
	csel	x0, x4, x0, eq
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, %function
__ashldi3:
.LFB133:
	.cfi_startproc
	mov	x2, x0
	tbz	x1, 5, .L661
	mov	x0, 0
	sub	w1, w1, #32
	lsl	w2, w2, w1
	bfi	x0, x2, 32, 32
.L660:
	ret
.L661:
	cbz	w1, .L660
	lsl	w3, w0, w1
	mov	x0, 0
	bfi	x0, x3, 0, 32
	asr	x3, x2, 32
	lsl	w3, w3, w1
	neg	w1, w1
	lsr	w2, w2, w1
	orr	w2, w2, w3
	bfi	x0, x2, 32, 32
	b	.L660
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashlti3
	.type	__ashlti3, %function
__ashlti3:
.LFB134:
	.cfi_startproc
	tbz	x2, 6, .L666
	mov	x3, 0
	sub	w2, w2, #64
	lsl	x1, x0, x2
.L667:
	mov	x0, x3
.L668:
	ret
.L666:
	cbz	w2, .L668
	lsl	x3, x0, x2
	lsl	x1, x1, x2
	neg	w2, w2
	lsr	x2, x0, x2
	orr	x1, x2, x1
	b	.L667
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, %function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mov	x2, x0
	tbz	x1, 5, .L671
	asr	x3, x0, 32
	asr	x2, x0, 63
	mov	x0, 0
	bfi	x0, x2, 32, 32
	sub	w1, w1, #32
	asr	w1, w3, w1
	bfi	x0, x1, 0, 32
.L670:
	ret
.L671:
	cbz	w1, .L670
	asr	x3, x0, 32
	asr	w4, w3, w1
	mov	x0, 0
	bfi	x0, x4, 32, 32
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w3, w3, w2
	bfi	x0, x3, 0, 32
	b	.L670
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__ashrti3
	.type	__ashrti3, %function
__ashrti3:
.LFB136:
	.cfi_startproc
	tbz	x2, 6, .L676
	asr	x4, x1, 63
	sub	w2, w2, #64
	asr	x0, x1, x2
.L677:
	mov	x1, x4
.L678:
	ret
.L676:
	cbz	w2, .L678
	asr	x4, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x0, x0, x2
	orr	x0, x3, x0
	b	.L677
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, %function
__bswapdi2:
.LFB137:
	.cfi_startproc
	and	x1, x0, 71776119061217280
	lsr	x2, x0, 24
	and	x2, x2, 16711680
	orr	x1, x2, x1, lsr 40
	and	x2, x0, 1095216660480
	lsl	x3, x0, 8
	and	x3, x3, 1095216660480
	orr	x1, x1, x3
	lsl	x3, x0, 24
	and	x3, x3, 280375465082880
	lsl	x4, x0, 40
	and	x4, x4, 71776119061217280
	orr	x1, x1, x4
	lsl	x4, x0, 56
	orr	x0, x4, x0, lsr 56
	orr	x0, x0, x2, lsr 8
	orr	x0, x0, x3
	orr	x0, x1, x0
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, %function
__bswapsi2:
.LFB138:
	.cfi_startproc
	and	w1, w0, 16711680
	lsl	w2, w0, 8
	and	w2, w2, 16711680
	orr	w1, w2, w1, lsr 8
	lsl	w2, w0, 24
	orr	w0, w2, w0, lsr 24
	orr	w0, w1, w0
	ret
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, %function
__clzsi2:
.LFB139:
	.cfi_startproc
	mov	w1, 65535
	cmp	w0, w1
	cset	w2, ls
	lsl	w2, w2, 4
	mov	w1, 16
	sub	w1, w1, w2
	lsr	w1, w0, w1
	tst	w1, 65280
	cset	w0, eq
	lsl	w0, w0, 3
	mov	w3, 8
	sub	w3, w3, w0
	lsr	w1, w1, w3
	add	w0, w0, w2
	tst	w1, 240
	cset	w3, eq
	lsl	w3, w3, 2
	mov	w2, 4
	sub	w2, w2, w3
	lsr	w1, w1, w2
	tst	w1, 12
	cset	w2, eq
	lsl	w2, w2, 1
	mov	w4, 2
	sub	w5, w4, w2
	lsr	w1, w1, w5
	add	w2, w2, w3
	ubfx	x3, x1, 1, 1
	sub	w4, w4, w1
	fmov	d31, x3
	cmeq	d31, d31, #0
	fmov	w1, s31
	and	w1, w1, w4
	add	w0, w0, w1
	add	w0, w0, w2
	ret
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__clzti2
	.type	__clzti2, %function
__clzti2:
.LFB140:
	.cfi_startproc
	cmp	x1, 0
	csetm	x3, eq
	csetm	x2, ne
	and	x1, x2, x1
	and	x0, x3, x0
	orr	x0, x1, x0
	clz	x0, x0
	cset	w1, eq
	add	w0, w0, w1, lsl 6
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, %function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	x2, x0
	asr	x4, x0, 32
	asr	x3, x1, 32
	mov	w0, 0
	cmp	w4, w3
	blt	.L684
	mov	w0, 2
	bgt	.L684
	mov	w0, 0
	cmp	w2, w1
	bcc	.L684
	cset	w0, hi
	add	w0, w0, 1
.L684:
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	__cmpdi2
	sub	w0, w0, #1
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__cmpti2
	.type	__cmpti2, %function
__cmpti2:
.LFB143:
	.cfi_startproc
	mov	x4, x0
	mov	w0, 0
	cmp	x1, x3
	blt	.L693
	mov	w0, 2
	bgt	.L693
	mov	w0, 0
	cmp	x4, x2
	bcc	.L693
	cset	w0, hi
	add	w0, w0, 1
.L693:
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, %function
__ctzsi2:
.LFB144:
	.cfi_startproc
	tst	w0, 65535
	cset	w2, eq
	lsl	w2, w2, 4
	lsr	w1, w0, w2
	tst	w1, 255
	cset	w0, eq
	lsl	w0, w0, 3
	lsr	w1, w1, w0
	add	w0, w0, w2
	tst	x1, 15
	cset	w3, eq
	lsl	w3, w3, 2
	lsr	w1, w1, w3
	tst	x1, 3
	cset	w2, eq
	lsl	w2, w2, 1
	lsr	w1, w1, w2
	and	w1, w1, 3
	add	w2, w2, w3
	mvn	w3, w1
	mov	w4, 2
	sub	w1, w4, w1, lsr 1
	sbfx	x3, x3, 0, 1
	and	w1, w1, w3
	add	w0, w0, w1
	add	w0, w0, w2
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__ctzti2
	.type	__ctzti2, %function
__ctzti2:
.LFB145:
	.cfi_startproc
	cmp	x0, 0
	csetm	x2, eq
	and	x1, x2, x1
	bic	x2, x0, x2
	orr	x2, x2, x1
	rbit	x2, x2
	clz	x2, x2
	cset	w0, eq
	add	w0, w2, w0, lsl 6
	ret
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	2
	.global	__ffsti2
	.type	__ffsti2, %function
__ffsti2:
.LFB146:
	.cfi_startproc
	cbnz	x0, .L701
	rbit	x0, x1
	clz	x0, x0
	add	w0, w0, 65
	cmp	x1, 0
	csel	w0, w0, wzr, ne
.L702:
	ret
.L701:
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
	b	.L702
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, %function
__lshrdi3:
.LFB147:
	.cfi_startproc
	mov	x2, x0
	tbz	x1, 5, .L705
	mov	x0, 0
	lsr	x2, x2, 32
	sub	w1, w1, #32
	lsr	w2, w2, w1
	bfi	x0, x2, 0, 32
.L704:
	ret
.L705:
	cbz	w1, .L704
	lsr	x3, x0, 32
	lsr	w4, w3, w1
	mov	x0, 0
	bfi	x0, x4, 32, 32
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w3, w3, w2
	bfi	x0, x3, 0, 32
	b	.L704
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__lshrti3
	.type	__lshrti3, %function
__lshrti3:
.LFB148:
	.cfi_startproc
	tbz	x2, 6, .L710
	mov	x4, 0
	sub	w2, w2, #64
	lsr	x0, x1, x2
.L711:
	mov	x1, x4
.L712:
	ret
.L710:
	cbz	w2, .L712
	lsr	x4, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x0, x0, x2
	orr	x0, x3, x0
	b	.L711
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, %function
__muldsi3:
.LFB149:
	.cfi_startproc
	and	w4, w0, 65535
	and	w3, w1, 65535
	mul	w5, w4, w3
	lsr	w2, w0, 16
	mul	w3, w2, w3
	add	w3, w3, w5, lsr 16
	lsr	w1, w1, 16
	mul	w4, w4, w1
	add	w4, w4, w3, uxth
	lsl	w0, w4, 16
	add	w5, w0, w5, uxth
	mov	x0, 0
	bfi	x0, x5, 0, 32
	lsr	w4, w4, 16
	add	w3, w4, w3, lsr 16
	madd	w2, w2, w1, w3
	bfi	x0, x2, 32, 32
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
.LFB150:
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
	mov	x19, x1
	bl	__muldsi3
	asr	x3, x0, 32
	asr	x1, x20, 32
	asr	x2, x19, 32
	mul	w2, w2, w20
	madd	w1, w1, w19, w2
	add	w1, w1, w3
	bfi	x0, x1, 32, 32
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__mulddi3
	.type	__mulddi3, %function
__mulddi3:
.LFB151:
	.cfi_startproc
	and	x3, x0, 4294967295
	and	x2, x1, 4294967295
	mul	x5, x3, x2
	lsr	x4, x0, 32
	mul	x2, x4, x2
	add	x2, x2, x5, lsr 32
	lsr	x1, x1, 32
	mul	x3, x3, x1
	add	x3, x3, w2, uxtw
	lsl	x0, x3, 32
	lsr	x3, x3, 32
	add	x2, x3, x2, lsr 32
	add	x0, x0, w5, uxtw
	madd	x1, x4, x1, x2
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	2
	.global	__multi3
	.type	__multi3, %function
__multi3:
.LFB152:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	mov	x22, x1
	mov	x19, x2
	mov	x20, x3
	mov	x1, x2
	bl	__mulddi3
	mul	x20, x20, x21
	madd	x19, x19, x22, x20
	add	x1, x19, x1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	2
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
	.global	__paritydi2
	.type	__paritydi2, %function
__paritydi2:
.LFB155:
	.cfi_startproc
	lsr	x1, x0, 32
	eor	w0, w1, w0
	eor	w0, w0, w0, lsr 16
	eor	w0, w0, w0, lsr 8
	eor	w0, w0, w0, lsr 4
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	ret
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__parityti2
	.type	__parityti2, %function
__parityti2:
.LFB156:
	.cfi_startproc
	eor	x0, x1, x0
	asr	x1, x0, 32
	eor	w0, w0, w1
	eor	w0, w0, w0, lsr 16
	eor	w0, w0, w0, lsr 8
	eor	w0, w0, w0, lsr 4
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	ret
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, %function
__paritysi2:
.LFB157:
	.cfi_startproc
	eor	w0, w0, w0, lsr 16
	eor	w0, w0, w0, lsr 8
	eor	w0, w0, w0, lsr 4
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	ret
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	2
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
	.global	__popcountti2
	.type	__popcountti2, %function
__popcountti2:
.LFB160:
	.cfi_startproc
	mov	x3, x0
	extr	x0, x1, x0, 1
	lsr	x2, x1, 1
	and	x0, x0, 6148914691236517205
	and	x2, x2, 6148914691236517205
	subs	x3, x3, x0
	sbc	x1, x1, x2
	extr	x2, x1, x3, 2
	lsr	x0, x1, 2
	and	x2, x2, 3689348814741910323
	and	x0, x0, 3689348814741910323
	and	x3, x3, 3689348814741910323
	and	x1, x1, 3689348814741910323
	adds	x2, x2, x3
	adc	x0, x0, x1
	extr	x1, x0, x2, 4
	lsr	x3, x0, 4
	adds	x1, x1, x2
	adc	x0, x0, x3
	and	x1, x1, 1085102592571150095
	and	x0, x0, 1085102592571150095
	add	x0, x0, x1
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
	.global	__powidf2
	.type	__powidf2, %function
__powidf2:
.LFB161:
	.cfi_startproc
	fmov	d31, d0
	lsr	w1, w0, 31
	fmov	d0, 1.0e+0
	b	.L731
.L729:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L730
	fmul	d31, d31, d31
.L731:
	tbz	x0, 0, .L729
	fmul	d0, d0, d31
	b	.L729
.L730:
	cbz	w1, .L728
	fmov	d31, 1.0e+0
	fdiv	d0, d31, d0
.L728:
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, %function
__powisf2:
.LFB162:
	.cfi_startproc
	fmov	s31, s0
	lsr	w1, w0, 31
	fmov	s0, 1.0e+0
	b	.L736
.L734:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L735
	fmul	s31, s31, s31
.L736:
	tbz	x0, 0, .L734
	fmul	s0, s0, s31
	b	.L734
.L735:
	cbz	w1, .L733
	fmov	s31, 1.0e+0
	fdiv	s0, s31, s0
.L733:
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, %function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mov	x2, x0
	lsr	x4, x0, 32
	lsr	x3, x1, 32
	mov	w0, 0
	cmp	w4, w3
	bcc	.L738
	mov	w0, 2
	bhi	.L738
	mov	w0, 0
	cmp	w2, w1
	bcc	.L738
	cset	w0, hi
	add	w0, w0, 1
.L738:
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	__ucmpdi2
	sub	w0, w0, #1
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.global	__ucmpti2
	.type	__ucmpti2, %function
__ucmpti2:
.LFB165:
	.cfi_startproc
	mov	x4, x0
	mov	w0, 0
	cmp	x1, x3
	bcc	.L747
	mov	w0, 2
	bhi	.L747
	mov	w0, 0
	cmp	x4, x2
	bcc	.L747
	cset	w0, hi
	add	w0, w0, 1
.L747:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
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
	.global	__multf3
	.global	__netf2
	.global	__addtf3
	.global	__extenddftf2
	.global	__gttf2
	.global	__lttf2
	.global	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
