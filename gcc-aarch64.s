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
	cmp	x2, x3
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
	cmp	w4, w2
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
	cmp	w3, w1
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
	sub	x2, x2, #1
	ldrb	w3, [x0]
	cmp	w3, w1
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
.L48:
	strb	w1, [x2], 1
	cmp	x3, x2
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
	cmp	w2, w1
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
	cmp	w2, w1
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
	ldrb	w4, [x1]
	cmp	w3, 0
	ccmp	w3, w4, 0, ne
	bne	.L65
	mov	x2, 1
.L66:
	ldrb	w3, [x0, x2]
	ldrb	w4, [x1, x2]
	add	x2, x2, 1
	cmp	w3, 0
	ccmp	w3, w4, 0, ne
	beq	.L66
.L65:
	sub	w0, w3, w4
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
	cbz	w1, .L71
	mov	x1, x0
.L70:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L70
.L69:
	sub	x0, x1, x0
	ret
.L71:
	mov	x1, x0
	b	.L69
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, %function
strncmp:
.LFB14:
	.cfi_startproc
	cbz	x2, .L78
	ldrb	w4, [x0]
	cbz	w4, .L79
	sub	x6, x2, #1
	mov	x2, x1
.L76:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x3, x3, x6
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x3, 0, 4, eq
	beq	.L75
	add	x2, x2, 1
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L76
.L75:
	ldrb	w0, [x2]
	sub	w0, w4, w0
.L73:
	ret
.L79:
	mov	x2, x1
	b	.L75
.L78:
	mov	w0, 0
	b	.L73
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
	ble	.L80
	and	x2, x2, -2
	add	x3, x0, x2
.L82:
	ldrb	w2, [x0, 1]
	strb	w2, [x1]
	ldrb	w2, [x0], 2
	strb	w2, [x1, 1]
	add	x1, x1, 2
	cmp	x0, x3
	bne	.L82
.L80:
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
	ccmp	w0, 9, 4, ne
	cset	w0, eq
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
	cmp	w0, 127
	ccmp	w0, 31, 0, ne
	cset	w0, ls
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
	sub	w1, w0, #9
	cmp	w0, 32
	ccmp	w1, 4, 0, ne
	cset	w0, ls
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
	sub	w0, w0, #127
	cmp	w0, 32
	ccmp	w1, 31, 0, hi
	mov	w0, 1
	bls	.L94
	sub	w2, w1, #8192
	sub	w2, w2, #40
	mov	w0, 1
	cmp	w2, w0
	bls	.L94
	sub	w1, w1, #61440
	sub	w1, w1, #4089
	cmp	w1, 2
	cset	w0, ls
.L94:
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
	bls	.L105
	sub	w2, w0, #8192
	sub	w2, w2, #42
	mov	w0, 47061
	cmp	w2, w0
	mov	w0, 1
	mov	w2, 8231
	ccmp	w1, w2, 0, hi
	bls	.L99
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L99
	sub	w3, w1, #61440
	sub	w3, w3, #4092
	mov	w0, 0
	mov	w2, 3
	movk	w2, 0x10, lsl 16
	cmp	w3, w2
	bhi	.L99
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
	b	.L99
.L105:
	add	w1, w0, 1
	and	w1, w1, 127
	cmp	w1, 32
	cset	w0, hi
.L99:
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
	bls	.L108
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	cset	w0, ls
.L106:
	ret
.L108:
	mov	w0, 1
	b	.L106
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
	bvs	.L110
	fcmp	d1, d1
	bvs	.L114
	fcmpe	d0, d1
	bgt	.L116
	movi	d0, #0
	b	.L110
.L116:
	fsub	d0, d0, d1
.L110:
	ret
.L114:
	fmov	d0, d1
	b	.L110
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
	bvs	.L118
	fcmp	s1, s1
	bvs	.L122
	fcmpe	s0, s1
	bgt	.L124
	movi	v0.2s, #0
	b	.L118
.L124:
	fsub	s0, s0, s1
.L118:
	ret
.L122:
	fmov	s0, s1
	b	.L118
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
	bvs	.L129
	fcmp	d1, d1
	bvs	.L126
	fmov	x0, d0
	lsr	x0, x0, 63
	fmov	x1, d1
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L128
	cmp	w0, 0
	fcsel	d0, d0, d1, eq
.L126:
	ret
.L128:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	b	.L126
.L129:
	fmov	d0, d1
	b	.L126
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
	bvs	.L135
	fcmp	s1, s1
	bvs	.L132
	fmov	w0, s0
	and	w0, w0, -2147483648
	fmov	w1, s1
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L134
	cmp	w0, 0
	fcsel	s0, s0, s1, eq
.L132:
	ret
.L134:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	b	.L132
.L135:
	fmov	s0, s1
	b	.L132
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
	cbnz	w0, .L144
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L145
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L140
	ldr	q0, [sp, 16]
	cbnz	w0, .L138
	ldr	q0, [sp, 32]
	b	.L138
.L140:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	ldr	q0, [sp, 16]
	tbnz	x0, 31, .L138
	ldr	q0, [sp, 32]
.L138:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L144:
	.cfi_restore_state
	ldr	q0, [sp, 16]
	b	.L138
.L145:
	ldr	q0, [sp, 32]
	b	.L138
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
	bvs	.L151
	fcmp	d1, d1
	bvs	.L148
	fmov	x0, d0
	lsr	x0, x0, 63
	fmov	x1, d1
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L150
	cmp	w0, 0
	fcsel	d0, d1, d0, eq
.L148:
	ret
.L150:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	b	.L148
.L151:
	fmov	d0, d1
	b	.L148
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
	bvs	.L157
	fcmp	s1, s1
	bvs	.L154
	fmov	w0, s0
	and	w0, w0, -2147483648
	fmov	w1, s1
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L156
	cmp	w0, 0
	fcsel	s0, s1, s0, eq
.L154:
	ret
.L156:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	b	.L154
.L157:
	fmov	s0, s1
	b	.L154
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
	cbnz	w0, .L166
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L167
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L162
	ldr	q0, [sp, 32]
	cbnz	w0, .L160
	ldr	q0, [sp, 16]
	b	.L160
.L162:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	ldr	q0, [sp, 32]
	tbnz	x0, 31, .L160
	ldr	q0, [sp, 16]
.L160:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L166:
	.cfi_restore_state
	ldr	q0, [sp, 16]
	b	.L160
.L167:
	ldr	q0, [sp, 32]
	b	.L160
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
	cbz	w0, .L173
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	adrp	x3, digits
	add	x3, x3, :lo12:digits
.L172:
	and	w2, w1, 63
	ldrb	w2, [x3, w2, uxtw]
	strb	w2, [x0], 1
	lsr	w1, w1, 6
	cbnz	w1, .L172
.L171:
	strb	wzr, [x0]
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	ret
.L173:
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	b	.L171
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
	cbz	x1, .L180
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L177
	str	x0, [x1, 8]
.L177:
	ret
.L180:
	stp	xzr, xzr, [x0]
	b	.L177
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
	cbz	x1, .L182
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L182:
	ldr	x1, [x0, 8]
	cbz	x1, .L181
	ldr	x0, [x0]
	str	x0, [x1]
.L181:
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
	cbz	x27, .L185
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x23, x4
	mov	x19, x1
	mov	x20, 0
.L187:
	mov	x24, x19
	mov	x1, x19
	mov	x0, x22
	blr	x23
	cbz	w0, .L190
	add	x20, x20, 1
	add	x19, x19, x21
	cmp	x27, x20
	bne	.L187
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L185:
	add	x0, x27, 1
	str	x0, [x25]
	mov	x2, x21
	mov	x1, x22
	madd	x0, x21, x27, x26
	bl	memcpy
	mov	x24, x0
.L184:
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
.L190:
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
	b	.L184
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
	cbz	x24, .L194
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
.L193:
	mov	x25, x19
	mov	x1, x19
	mov	x0, x21
	blr	x22
	cbz	w0, .L197
	add	x20, x20, 1
	add	x19, x19, x23
	cmp	x24, x20
	bne	.L193
	mov	x25, 0
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L191
.L194:
	mov	x25, 0
	b	.L191
.L197:
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
.L191:
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
	b	.L200
.L201:
	add	x19, x19, 1
.L200:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L201
	cmp	w20, 43
	beq	.L207
	mov	w3, w0
	cmp	w20, 45
	bne	.L203
	mov	w3, 1
.L202:
	add	x19, x19, 1
.L203:
	ldrb	w1, [x19]
	sub	w2, w1, #48
	cmp	w2, 9
	bhi	.L205
.L204:
	add	w0, w0, w0, lsl 2
	lsl	w0, w0, 1
	sub	w1, w1, #48
	sub	w0, w0, w1
	ldrb	w1, [x19, 1]!
	sub	w2, w1, #48
	cmp	w2, 9
	bls	.L204
.L205:
	cmp	w3, 0
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
.L207:
	.cfi_restore_state
	mov	w3, w0
	b	.L202
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
	b	.L213
.L214:
	add	x19, x19, 1
.L213:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L214
	cmp	w20, 43
	beq	.L215
	cmp	w20, 45
	bne	.L216
	mov	w0, 1
.L215:
	add	x19, x19, 1
.L216:
	ldrb	w2, [x19]
	sub	w3, w2, #48
	mov	x1, 0
	cmp	w3, 9
	bhi	.L218
.L217:
	add	x1, x1, x1, lsl 2
	lsl	x1, x1, 1
	sub	w2, w2, #48
	sub	x1, x1, w2, sxtw
	ldrb	w2, [x19, 1]!
	sub	w3, w2, #48
	cmp	w3, 9
	bls	.L217
.L218:
	cmp	w0, 0
	csneg	x0, x1, x1, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
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
	ldrb	w2, [x19]
	sub	w3, w2, #48
	mov	x1, 0
	cmp	w3, 9
	bhi	.L230
.L229:
	add	x1, x1, x1, lsl 2
	lsl	x1, x1, 1
	sub	w2, w2, #48
	sub	x1, x1, w2, sxtw
	ldrb	w2, [x19, 1]!
	sub	w3, w2, #48
	cmp	w3, 9
	bls	.L229
.L230:
	cmp	w0, 0
	csneg	x0, x1, x1, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
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
	cbnz	x2, .L239
	mov	x21, 0
	b	.L236
.L241:
	mov	x19, x20
.L238:
	cbz	x19, .L244
.L239:
	lsr	x20, x19, 1
	madd	x21, x20, x22, x23
	mov	x1, x21
	mov	x0, x25
	blr	x24
	tbnz	w0, #31, .L241
	cmp	w0, 0
	ble	.L236
	add	x23, x21, x22
	sub	x19, x19, #1
	sub	x19, x19, x20
	b	.L238
.L244:
	mov	x21, 0
.L236:
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
	cbnz	w2, .L248
	mov	x19, 0
	b	.L245
.L247:
	asr	w20, w20, 1
	cbz	w20, .L252
.L248:
	asr	w19, w20, 1
	sxtw	x19, w19
	madd	x19, x19, x21, x22
	mov	x2, x23
	mov	x1, x19
	mov	x0, x25
	blr	x24
	cbz	w0, .L245
	cmp	w0, 0
	ble	.L247
	add	x22, x19, x21
	sub	w20, w20, #1
	b	.L247
.L252:
	mov	x19, 0
.L245:
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
	mov	w3, w0
	sdiv	w2, w0, w1
	mov	x0, 0
	bfi	x0, x2, 0, 32
	msub	w2, w2, w1, w3
	bfi	x0, x2, 32, 32
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
	cmp	w2, 0
	ccmp	w1, w2, 4, ne
	beq	.L261
.L262:
	ldr	w2, [x0, 4]!
	cmp	w2, 0
	ccmp	w2, w1, 4, ne
	bne	.L262
.L261:
	cmp	w2, 0
	csel	x0, x0, xzr, ne
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	2
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
	beq	.L266
	mov	x2, 4
.L267:
	ldr	w4, [x0, x2]
	ldr	w3, [x1, x2]
	add	x2, x2, 4
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	bne	.L267
.L266:
	mov	w0, -1
	cmp	w4, w3
	bcc	.L265
	cset	w0, hi
.L265:
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
.L272:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L272
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
	cbz	w1, .L277
	mov	x1, x0
.L276:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L276
.L275:
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
.L277:
	mov	x1, x0
	b	.L275
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, %function
wcsncmp:
.LFB63:
	.cfi_startproc
	cbz	x2, .L288
.L280:
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	beq	.L289
	add	x0, x0, 4
	add	x1, x1, 4
	subs	x2, x2, #1
	bne	.L280
	mov	w0, 0
	b	.L279
.L288:
	mov	w0, 0
	b	.L279
.L284:
	cmp	w2, w0
	cset	w0, hi
.L279:
	ret
.L289:
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	bcs	.L284
	mov	w0, -1
	b	.L279
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, %function
wmemchr:
.LFB64:
	.cfi_startproc
	cbz	x2, .L296
.L291:
	ldr	w3, [x0]
	cmp	w3, w1
	beq	.L290
	add	x0, x0, 4
	subs	x2, x2, #1
	bne	.L291
	mov	x0, 0
.L290:
	ret
.L296:
	mov	x0, 0
	b	.L290
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, %function
wmemcmp:
.LFB65:
	.cfi_startproc
	cbz	x2, .L306
.L298:
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, w3
	bne	.L307
	add	x0, x0, 4
	add	x1, x1, 4
	subs	x2, x2, #1
	bne	.L298
	mov	w0, 0
.L297:
	ret
.L306:
	mov	w0, 0
	b	.L297
.L302:
	cmp	w2, w0
	cset	w0, hi
	b	.L297
.L307:
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	bcs	.L302
	mov	w0, -1
	b	.L297
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, %function
wmemcpy:
.LFB66:
	.cfi_startproc
	cbz	x2, .L309
	mov	x3, 0
.L310:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L310
.L309:
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
	beq	.L313
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcc	.L314
	mov	x3, 0
	cbz	x2, .L313
.L315:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L315
	b	.L313
.L314:
	sub	x3, x2, #1
	cbz	x2, .L313
.L316:
	ldr	w2, [x1, x3, lsl 2]
	str	w2, [x0, x3, lsl 2]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L316
.L313:
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
	cbz	x2, .L322
	mov	x3, 0
.L323:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L323
.L322:
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
	bcs	.L326
	cbz	x2, .L325
	sub	x0, x0, #1
	sub	x1, x1, #1
.L328:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	subs	x2, x2, #1
	bne	.L328
.L325:
	ret
.L326:
	beq	.L325
	cbz	x2, .L325
	mov	x3, 0
.L329:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L329
	b	.L325
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
	neg	w1, w1
	ror	x0, x0, x1
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
	ror	x0, x0, x1
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
	and	w1, w1, 15
	lsl	w2, w0, w1
	neg	w1, w1
	and	w1, w1, 15
	lsr	w0, w0, w1
	orr	w0, w2, w0
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
	and	w1, w1, 15
	lsr	w2, w0, w1
	neg	w1, w1
	and	w1, w1, 15
	lsl	w0, w0, w1
	orr	w0, w2, w0
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
	and	w1, w1, 7
	lsl	w2, w0, w1
	neg	w1, w1
	and	w1, w1, 7
	lsr	w0, w0, w1
	orr	w0, w2, w0
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
	and	w1, w1, 7
	lsr	w2, w0, w1
	neg	w1, w1
	and	w1, w1, 7
	lsl	w0, w0, w1
	orr	w0, w2, w0
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
	ubfx	x1, x0, 8, 8
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
	lsr	w2, w0, 24
	and	w1, w0, 16711680
	orr	w1, w2, w1, lsr 8
	lsl	w2, w0, 8
	and	w2, w2, 16711680
	orr	w0, w2, w0, lsl 24
	orr	w0, w1, w0
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
	and	x2, x0, 71776119061217280
	lsr	x1, x0, 24
	and	x1, x1, 16711680
	orr	x2, x1, x2, lsr 40
	lsl	x1, x0, 8
	and	x1, x1, 1095216660480
	orr	x2, x2, x1
	lsl	x1, x0, 40
	and	x1, x1, 71776119061217280
	orr	x2, x2, x1
	lsr	x1, x0, 56
	orr	x1, x1, x0, lsl 56
	and	x3, x0, 1095216660480
	orr	x3, x1, x3, lsr 8
	lsl	x1, x0, 24
	and	x1, x1, 280375465082880
	orr	x0, x3, x1
	orr	x0, x2, x0
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
.L348:
	lsr	w2, w0, w1
	tbnz	x2, 0, .L350
	add	w1, w1, 1
	cmp	w1, 32
	bne	.L348
	mov	w0, 0
	b	.L345
.L350:
	add	w0, w1, 1
.L345:
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
	cbz	w0, .L351
	and	w0, w0, 1
	tbnz	x1, 0, .L351
	mov	w0, 1
.L353:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L353
.L351:
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
	bmi	.L356
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	cset	w0, gt
.L356:
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
	bmi	.L359
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	cset	w0, gt
.L359:
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
	tbnz	w1, #31, .L362
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L362:
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
	bvs	.L370
	fadd	s31, s0, s0
	fcmp	s31, s0
	beq	.L370
	cmp	w0, 0
	fmov	s31, 2.0e+0
	fmov	s30, 5.0e-1
	fcsel	s31, s31, s30, ge
	b	.L373
.L372:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L370
	fmul	s31, s31, s31
.L373:
	tbz	x0, 0, .L372
	fmul	s0, s0, s31
	b	.L372
.L370:
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
	bvs	.L376
	fadd	d31, d0, d0
	fcmp	d31, d0
	beq	.L376
	cmp	w0, 0
	fmov	d31, 2.0e+0
	fmov	d30, 5.0e-1
	fcsel	d31, d31, d30, ge
	b	.L379
.L378:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L376
	fmul	d31, d31, d31
.L379:
	tbz	x0, 0, .L378
	fmul	d0, d0, d31
	b	.L378
.L376:
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
	cbnz	w0, .L382
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L382
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q31, [x0]
	str	q31, [sp, 48]
	tbz	w19, #31, .L386
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q31, [x0]
	str	q31, [sp, 48]
	b	.L386
.L385:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L382
	ldr	q1, [sp, 48]
	mov	v0.16b, v1.16b
	bl	__multf3
	str	q0, [sp, 48]
.L386:
	tbz	x19, 0, .L385
	ldp	q0, q1, [sp, 32]
	bl	__multf3
	str	q0, [sp, 32]
	b	.L385
.L382:
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
	cbz	x2, .L391
	mov	x3, 0
.L392:
	ldrb	w4, [x0, x3]
	ldrb	w5, [x1, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L392
.L391:
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
	cbz	x19, .L396
.L395:
	ldrb	w1, [x20]
	strb	w1, [x2]
	cbz	w1, .L398
	add	x20, x20, 1
	add	x2, x2, 1
	subs	x19, x19, #1
	bne	.L395
.L396:
	strb	wzr, [x2]
.L398:
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
	cbz	x1, .L408
.L402:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L409
.L401:
	ret
.L408:
	mov	x0, x1
	b	.L401
.L409:
	add	x0, x0, 1
	cmp	x1, x0
	bne	.L402
	mov	x0, x1
	b	.L401
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, %function
strpbrk:
.LFB95:
	.cfi_startproc
	ldrb	w4, [x0]
	cbz	w4, .L417
.L411:
	mov	x2, x1
.L414:
	ldrb	w3, [x2]
	cbz	w3, .L418
	add	x2, x2, 1
	cmp	w3, w4
	bne	.L414
.L412:
	ret
.L417:
	mov	x0, 0
	b	.L412
.L418:
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L411
	mov	x0, 0
	b	.L412
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
.L421:
	ldrb	w3, [x2]
	cmp	w3, w1
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L421
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
	cbz	x0, .L424
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -8
	.cfi_offset 21, -16
	mov	x21, x0
	ldrb	w22, [x20]
.L426:
	mov	w1, w22
	mov	x0, x19
	bl	strchr
	mov	x19, x0
	cbz	x0, .L431
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	strncmp
	cbz	w0, .L430
	add	x19, x19, 1
	b	.L426
.L431:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L424:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L430:
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
	b	.L424
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
	bmi	.L439
	bgt	.L440
	b	.L436
.L440:
	fcmpe	d1, #0.0
	bmi	.L435
.L436:
	ret
.L439:
	fcmpe	d1, #0.0
	bgt	.L435
	b	.L436
.L435:
	fneg	d0, d0
	b	.L436
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
	cbz	x3, .L442
	cmp	x1, x3
	bcc	.L447
	sub	x20, x1, x3
	adds	x20, x0, x20
	bcs	.L448
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -24
	.cfi_offset 21, -32
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	mov	x23, x2
	ldrb	w22, [x23], 1
	sub	x21, x3, #1
	b	.L445
.L444:
	add	x19, x19, 1
	cmp	x20, x19
	bcc	.L452
.L445:
	ldrb	w0, [x19]
	cmp	w0, w22
	bne	.L444
	mov	x2, x21
	mov	x1, x23
	add	x0, x19, 1
	bl	memcmp
	cbnz	w0, .L444
	mov	x0, x19
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	ldr	x23, [sp, 48]
	.cfi_restore 23
	b	.L442
.L452:
	.cfi_restore_state
	mov	x0, 0
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x23, [sp, 48]
	.cfi_restore 23
.L442:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L447:
	.cfi_restore_state
	mov	x0, 0
	b	.L442
.L448:
	mov	x0, 0
	b	.L442
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
	bmi	.L466
	mov	w2, 0
.L456:
	mov	w1, 0
	fmov	d30, 5.0e-1
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L460
	b	.L473
.L460:
	add	w1, w1, 1
	fmul	d0, d0, d30
	fcmpe	d0, d31
	bge	.L460
.L461:
	str	w1, [x0]
	fneg	d31, d0
	cmp	w2, 0
	fcsel	d0, d31, d0, ne
	ret
.L466:
	fneg	d0, d0
	mov	w2, 1
	b	.L456
.L473:
	fcmp	d0, #0.0
	fmov	d31, 5.0e-1
	fccmpe	d0, d31, 0, ne
	cset	w3, mi
	mov	w1, 0
	cbz	w3, .L461
.L462:
	sub	w1, w1, #1
	fadd	d0, d0, d0
	fcmpe	d0, d31
	bmi	.L462
	b	.L461
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
	cbz	x0, .L477
	mov	x0, 0
.L476:
	sbfx	x3, x2, 0, 1
	and	x3, x3, x1
	add	x0, x0, x3
	lsl	x1, x1, 1
	lsr	x2, x2, 1
	cbnz	x2, .L476
.L474:
	ret
.L477:
	mov	x0, 0
	b	.L474
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
	bcs	.L487
.L480:
	tbnz	w1, #31, .L487
	lsl	w1, w1, 1
	lsl	w3, w3, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L480
	cbz	w3, .L493
.L487:
	mov	w4, 0
	b	.L485
.L484:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L486
.L485:
	cmp	w0, w1
	bcc	.L484
	sub	w0, w0, w1
	orr	w4, w4, w3
	b	.L484
.L493:
	mov	w4, w3
.L486:
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
	eor	x1, x0, x2
	clz	x1, x1
	sub	w1, w1, #1
	cmp	x0, x2
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
	cmp	x6, x4
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
	cmp	x0, x4
	bhi	.L509
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
	cmp	x0, x3
	bhi	.L524
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
	cmp	x6, x4
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
	cmp	x0, x4
	bhi	.L537
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
	bcs	.L593
.L586:
	tbnz	w1, #31, .L593
	lsl	w1, w1, 1
	lsl	w3, w3, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L586
	cbz	w3, .L599
.L593:
	mov	w4, 0
	b	.L591
.L590:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L592
.L591:
	cmp	w0, w1
	bcc	.L590
	sub	w0, w0, w1
	orr	w4, w4, w3
	b	.L590
.L599:
	mov	w4, w3
.L592:
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
	bmi	.L600
	cset	w0, gt
.L600:
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
	bmi	.L603
	cset	w0, gt
.L603:
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
	tbnz	w1, #31, .L616
	cbz	w1, .L614
	mov	w5, 0
.L610:
	mov	w4, 0
	mov	w2, 0
.L612:
	sbfx	x3, x1, 0, 1
	and	w3, w3, w0
	add	w4, w4, w3
	lsl	w0, w0, 1
	asr	w1, w1, 1
	add	w2, w2, 1
	and	w2, w2, 255
	cmp	w1, 0
	ccmp	w2, 31, 2, ne
	bls	.L612
.L611:
	cmp	w5, 0
	csneg	w0, w4, w4, eq
	ret
.L616:
	neg	w1, w1
	mov	w5, 1
	b	.L610
.L614:
	mov	w5, w1
	mov	w4, w1
	b	.L611
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
	tbnz	x0, #63, .L626
	tbnz	x1, #63, .L627
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L617
.L626:
	neg	x0, x0
	tbnz	x1, #63, .L628
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
.L621:
	neg	x0, x0
.L617:
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L627:
	.cfi_restore_state
	mov	w2, 0
	neg	w1, w1
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L621
.L628:
	mov	w2, 0
	neg	w1, w1
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L617
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
	tbnz	x0, #63, .L633
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	mov	w2, 1
	bl	__udivmodsi4
	uxtw	x0, w0
	b	.L629
.L633:
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	mov	w2, 1
	neg	w0, w0
	bl	__udivmodsi4
	uxtw	x0, w0
	neg	x0, x0
.L629:
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
	and	w4, w0, 65535
	and	w1, w1, 65535
	mov	w3, 1
	cmp	w1, w4
	bcs	.L642
.L635:
	tbnz	x1, 15, .L642
	ubfiz	w1, w1, 1, 15
	ubfiz	w3, w3, 1, 15
	cmp	w3, 0
	ccmp	w4, w1, 0, ne
	bhi	.L635
	cbz	w3, .L647
.L642:
	mov	w0, 0
	b	.L640
.L639:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L641
.L640:
	cmp	w4, w1
	bcc	.L639
	sub	w4, w4, w1
	and	w4, w4, 65535
	orr	w0, w3, w0
	and	w0, w0, 65535
	b	.L639
.L647:
	mov	w0, w3
.L641:
	cmp	w2, 0
	csel	w0, w4, w0, ne
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
	bcs	.L656
.L649:
	tbnz	x1, 31, .L656
	lsl	x1, x1, 1
	lsl	x3, x3, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L649
	cbz	x3, .L662
.L656:
	mov	x4, 0
	b	.L654
.L653:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbz	x3, .L655
.L654:
	cmp	x0, x1
	bcc	.L653
	sub	x0, x0, x1
	orr	x4, x4, x3
	b	.L653
.L662:
	mov	x4, x3
.L655:
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
	tbz	x1, 5, .L664
	sub	w1, w1, #32
	lsl	w0, w0, w1
	mov	w3, 0
.L665:
	uxtw	x1, w3
	orr	x0, x1, x0, lsl 32
.L663:
	ret
.L664:
	cbz	w1, .L663
	lsl	w3, w0, w1
	neg	w0, w1
	lsr	w0, w2, w0
	asr	x2, x2, 32
	lsl	w2, w2, w1
	orr	w0, w0, w2
	b	.L665
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashlti3
	.type	__ashlti3, %function
__ashlti3:
.LFB134:
	.cfi_startproc
	tbz	x2, 6, .L669
	sub	w2, w2, #64
	lsl	x1, x0, x2
	mov	x4, 0
.L670:
	mov	x0, x4
.L671:
	ret
.L669:
	cbz	w2, .L671
	lsl	x4, x0, x2
	neg	w3, w2
	lsr	x3, x0, x3
	lsl	x1, x1, x2
	orr	x1, x3, x1
	b	.L670
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
	tbz	x1, 5, .L674
	asr	x2, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, #32
	asr	w2, w2, w1
.L675:
	uxtw	x2, w2
	orr	x0, x2, x0, lsl 32
.L673:
	ret
.L674:
	cbz	w1, .L673
	asr	x3, x0, 32
	asr	w0, w3, w1
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w2, w3, w2
	b	.L675
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__ashrti3
	.type	__ashrti3, %function
__ashrti3:
.LFB136:
	.cfi_startproc
	tbz	x2, 6, .L679
	asr	x4, x1, 63
	sub	w2, w2, #64
	asr	x0, x1, x2
.L680:
	mov	x1, x4
.L681:
	ret
.L679:
	cbz	w2, .L681
	asr	x4, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x0, x0, x2
	orr	x0, x3, x0
	b	.L680
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, %function
__bswapdi2:
.LFB137:
	.cfi_startproc
	and	x2, x0, 71776119061217280
	lsr	x1, x0, 24
	and	x1, x1, 16711680
	orr	x2, x1, x2, lsr 40
	lsl	x1, x0, 8
	and	x1, x1, 1095216660480
	orr	x2, x2, x1
	lsl	x1, x0, 40
	and	x1, x1, 71776119061217280
	orr	x2, x2, x1
	lsl	x1, x0, 56
	orr	x1, x1, x0, lsr 56
	and	x3, x0, 1095216660480
	orr	x3, x1, x3, lsr 8
	lsl	x1, x0, 24
	and	x1, x1, 280375465082880
	orr	x0, x3, x1
	orr	x0, x2, x0
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
	cset	w5, ls
	lsl	w5, w5, 4
	mov	w1, 16
	sub	w1, w1, w5
	lsr	w1, w0, w1
	tst	w1, 65280
	cset	w3, eq
	lsl	w3, w3, 3
	mov	w0, 8
	sub	w0, w0, w3
	lsr	w1, w1, w0
	tst	w1, 240
	cset	w0, eq
	lsl	w0, w0, 2
	mov	w2, 4
	sub	w2, w2, w0
	lsr	w1, w1, w2
	tst	w1, 12
	cset	w4, eq
	lsl	w4, w4, 1
	mov	w2, 2
	sub	w6, w2, w4
	lsr	w1, w1, w6
	sub	w2, w2, w1
	tst	x1, 2
	csel	w2, w2, wzr, eq
	add	w3, w3, w5
	add	w2, w2, w3
	add	w0, w0, w4
	add	w0, w2, w0
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
	cset	w3, eq
	csetm	x2, ne
	and	x1, x2, x1
	csel	x0, x0, xzr, eq
	orr	x1, x1, x0
	clz	x1, x1
	add	w0, w1, w3, lsl 6
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
	asr	x3, x0, 32
	asr	x4, x1, 32
	mov	w0, 0
	cmp	w4, w3
	bgt	.L687
	mov	w0, 2
	blt	.L687
	mov	w0, 0
	cmp	w2, w1
	bcc	.L687
	cset	w0, hi
	add	w0, w0, 1
.L687:
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
	cmp	x3, x1
	bgt	.L695
	mov	w0, 2
	blt	.L695
	mov	w0, 0
	cmp	x4, x2
	bcc	.L695
	cset	w0, hi
	add	w0, w0, 1
.L695:
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
	cset	w5, eq
	lsl	w5, w5, 4
	lsr	w1, w0, w5
	tst	w1, 255
	cset	w3, eq
	lsl	w3, w3, 3
	lsr	w1, w1, w3
	tst	x1, 15
	cset	w2, eq
	lsl	w2, w2, 2
	lsr	w1, w1, w2
	tst	x1, 3
	cset	w4, eq
	lsl	w4, w4, 1
	lsr	w1, w1, w4
	and	w1, w1, 3
	mvn	w0, w1
	mov	w6, 2
	sub	w1, w6, w1, lsr 1
	sbfx	x0, x0, 0, 1
	and	w1, w0, w1
	add	w3, w3, w5
	add	w1, w1, w3
	add	w0, w2, w4
	add	w0, w1, w0
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
	cset	w3, eq
	csel	x1, x1, xzr, eq
	csetm	x2, ne
	and	x2, x2, x0
	orr	x1, x1, x2
	rbit	x1, x1
	clz	x1, x1
	add	w0, w1, w3, lsl 6
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
	cbnz	x0, .L704
	rbit	x0, x1
	clz	x0, x0
	add	w0, w0, 65
	cmp	x1, 0
	csel	w0, w0, wzr, ne
.L703:
	ret
.L704:
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
	b	.L703
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
	tbz	x1, 5, .L708
	lsr	x2, x0, 32
	sub	w1, w1, #32
	lsr	w2, w2, w1
	mov	w0, 0
.L709:
	uxtw	x2, w2
	orr	x0, x2, x0, lsl 32
.L707:
	ret
.L708:
	cbz	w1, .L707
	lsr	x3, x0, 32
	lsr	w0, w3, w1
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w2, w3, w2
	b	.L709
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__lshrti3
	.type	__lshrti3, %function
__lshrti3:
.LFB148:
	.cfi_startproc
	tbz	x2, 6, .L713
	sub	w2, w2, #64
	lsr	x0, x1, x2
	mov	x4, 0
.L714:
	mov	x1, x4
.L715:
	ret
.L713:
	cbz	w2, .L715
	lsr	x4, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x0, x0, x2
	orr	x0, x3, x0
	b	.L714
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, %function
__muldsi3:
.LFB149:
	.cfi_startproc
	and	w2, w0, 65535
	and	w3, w1, 65535
	mul	w5, w2, w3
	lsr	w4, w0, 16
	mul	w3, w3, w4
	add	w3, w3, w5, lsr 16
	lsr	w1, w1, 16
	mul	w2, w2, w1
	add	w2, w2, w3, uxth
	lsl	w0, w2, 16
	add	w5, w0, w5, uxth
	mov	x0, 0
	bfi	x0, x5, 0, 32
	mul	w4, w4, w1
	add	w3, w4, w3, lsr 16
	add	w2, w3, w2, lsr 16
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
	asr	x1, x20, 32
	asr	x2, x19, 32
	mul	w20, w20, w2
	madd	w19, w19, w1, w20
	asr	x1, x0, 32
	add	w19, w19, w1
	bfi	x0, x19, 32, 32
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
	and	x4, x0, 4294967295
	and	x2, x1, 4294967295
	mul	x6, x4, x2
	lsr	x3, x0, 32
	mul	x2, x2, x3
	add	x2, x2, x6, lsr 32
	lsr	x5, x1, 32
	mul	x4, x4, x5
	add	x1, x4, w2, uxtw
	lsl	x0, x1, 32
	mul	x3, x3, x5
	add	x2, x3, x2, lsr 32
	add	x0, x0, w6, uxtw
	add	x1, x2, x1, lsr 32
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
	mov	x20, x0
	mov	x21, x1
	mov	x19, x2
	mov	x22, x3
	mov	x1, x2
	bl	__mulddi3
	mul	x20, x20, x22
	madd	x19, x19, x21, x20
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
	eor	x1, x1, x0
	asr	x0, x1, 32
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
	mov	w1, w0
	fmov	d0, 1.0e+0
	b	.L734
.L732:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L733
	fmul	d31, d31, d31
.L734:
	tbz	x1, 0, .L732
	fmul	d0, d0, d31
	b	.L732
.L733:
	tbnz	w0, #31, .L736
.L731:
	ret
.L736:
	fmov	d31, 1.0e+0
	fdiv	d0, d31, d0
	b	.L731
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
	mov	w1, w0
	fmov	s0, 1.0e+0
	b	.L740
.L738:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L739
	fmul	s31, s31, s31
.L740:
	tbz	x1, 0, .L738
	fmul	s0, s0, s31
	b	.L738
.L739:
	tbnz	w0, #31, .L742
.L737:
	ret
.L742:
	fmov	s31, 1.0e+0
	fdiv	s0, s31, s0
	b	.L737
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
	lsr	x3, x0, 32
	lsr	x4, x1, 32
	mov	w0, 0
	cmp	w4, w3
	bhi	.L743
	mov	w0, 2
	bcc	.L743
	mov	w0, 0
	cmp	w2, w1
	bcc	.L743
	cset	w0, hi
	add	w0, w0, 1
.L743:
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
	cmp	x3, x1
	bhi	.L751
	mov	w0, 2
	bcc	.L751
	mov	w0, 0
	cmp	x4, x2
	bcc	.L751
	cset	w0, hi
	add	w0, w0, 1
.L751:
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
