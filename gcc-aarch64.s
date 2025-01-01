	.arch armv8-a
	.file	"mini-libc.c"
	.text
	.align	2
	.global	make_ti
	.type	make_ti, %function
make_ti:
.LFB0:
	.cfi_startproc
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	add	x4, x1, x2
	add	x6, x0, x2
	mov	x1, x2
	b	.L5
.L6:
	sub	x3, x4, x2
	sub	x3, x3, #1
	ldrb	w5, [x3, x1]
	sub	x3, x6, x2
	sub	x3, x3, #1
	strb	w5, [x3, x1]
	sub	x1, x1, #1
.L5:
	cbnz	x1, .L6
	b	.L7
.L4:
	mov	x3, 0
	bne	.L8
	b	.L7
.L9:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L8:
	cmp	x3, x2
	bne	.L9
.L7:
	ret
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
	b	.L12
.L14:
	sub	x3, x3, #1
	add	x1, x1, 1
	add	x0, x0, 1
.L12:
	cbz	x3, .L13
	ldrb	w4, [x1]
	strb	w4, [x0]
	cmp	w2, w4
	bne	.L14
.L13:
	cmp	x3, 0
	csinc	x0, xzr, x0, eq
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
	b	.L18
.L20:
	add	x0, x0, 1
	sub	x2, x2, #1
.L18:
	cbz	x2, .L19
	ldrb	w3, [x0]
	cmp	w1, w3
	bne	.L20
.L19:
	cmp	x2, 0
	csel	x0, x0, xzr, ne
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, %function
memcmp:
.LFB5:
	.cfi_startproc
	mov	x3, x0
	b	.L24
.L26:
	sub	x2, x2, #1
	add	x3, x3, 1
	add	x1, x1, 1
.L24:
	cbz	x2, .L25
	ldrb	w4, [x3]
	ldrb	w0, [x1]
	cmp	w4, w0
	beq	.L26
.L25:
	mov	w0, 0
	cbz	x2, .L27
	ldrb	w0, [x3]
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
	mov	x3, 0
	b	.L30
.L31:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L30:
	cmp	x3, x2
	bne	.L31
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
	b	.L33
.L35:
	ldrb	w3, [x0, x2]
	sub	x4, x2, #1
	cmp	w1, w3
	bne	.L36
	add	x0, x0, x2
	b	.L34
.L36:
	mov	x2, x4
.L33:
	cmn	x2, #1
	bne	.L35
	mov	x0, 0
.L34:
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
	add	x2, x0, x2
	mov	x3, x0
	b	.L38
.L39:
	strb	w1, [x3], 1
.L38:
	cmp	x3, x2
	bne	.L39
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
	b	.L41
.L42:
	add	x1, x1, 1
	add	x0, x0, 1
.L41:
	ldrb	w2, [x1]
	strb	w2, [x0]
	cbnz	w2, .L42
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
	b	.L44
.L46:
	add	x0, x0, 1
.L44:
	ldrb	w2, [x0]
	cbz	w2, .L45
	cmp	w1, w2
	bne	.L46
.L45:
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
.L49:
	ldrb	w2, [x0]
	cmp	w1, w2
	beq	.L48
	ldrb	w2, [x0], 1
	cbnz	w2, .L49
	mov	x0, 0
.L48:
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
	b	.L52
.L54:
	add	x0, x0, 1
	add	x1, x1, 1
.L52:
	ldrb	w3, [x0]
	ldrb	w2, [x1]
	cmp	w3, w2
	bne	.L53
	cbnz	w3, .L54
.L53:
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
	mov	x1, x0
	b	.L56
.L57:
	add	x1, x1, 1
.L56:
	ldrb	w2, [x1]
	cbnz	w2, .L57
	sub	x0, x1, x0
	ret
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, %function
strncmp:
.LFB14:
	.cfi_startproc
	mov	x5, x0
	sub	x6, x2, #1
	mov	w0, 0
	cbz	x2, .L59
	mov	x2, x5
	b	.L60
.L62:
	add	x2, x2, 1
	add	x1, x1, 1
.L60:
	ldrb	w3, [x2]
	cbz	w3, .L61
	ldrb	w3, [x1]
	sub	x4, x5, x2
	cmn	x4, x6
	cset	w4, ne
	cmp	w3, 0
	cset	w3, ne
	cmp	w4, 0
	ccmp	w3, 0, 4, ne
	beq	.L61
	ldrb	w4, [x2]
	ldrb	w3, [x1]
	cmp	w4, w3
	beq	.L62
.L61:
	ldrb	w0, [x2]
	ldrb	w1, [x1]
	sub	w0, w0, w1
.L59:
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, %function
swab:
.LFB15:
	.cfi_startproc
	mov	x4, x0
	b	.L65
.L66:
	ldrb	w3, [x4, 1]
	strb	w3, [x1]
	ldrb	w3, [x4], 2
	strb	w3, [x1, 1]
	add	x1, x1, 2
.L65:
	add	x3, x0, x2
	sub	x3, x3, x4
	cmp	x3, 1
	bgt	.L66
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
	cset	w0, ls
	sub	w2, w1, #127
	cmp	w2, 32
	cset	w2, ls
	cmp	w0, 0
	mov	w0, 1
	ccmp	w2, 0, 0, eq
	bne	.L78
	sub	w2, w1, #8192
	sub	w2, w2, #40
	cmp	w2, w0
	bls	.L78
	sub	w1, w1, #61440
	sub	w1, w1, #4089
	cmp	w1, 3
	cset	w0, cc
.L78:
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
	bhi	.L84
	add	w1, w0, 1
	and	w1, w1, 127
	cmp	w1, 32
	cset	w0, hi
	b	.L85
.L84:
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
	bne	.L85
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L85
	sub	w3, w1, #61440
	sub	w3, w3, #4092
	mov	w0, 0
	mov	w2, 3
	movk	w2, 0x10, lsl 16
	cmp	w3, w2
	bhi	.L85
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
.L85:
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
	mov	w1, w0
	sub	w2, w0, #48
	mov	w0, 1
	cmp	w2, 9
	bls	.L91
	orr	w1, w1, 32
	sub	w1, w1, #97
	cmp	w1, 6
	cset	w0, cc
.L91:
	ret
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
	bvs	.L96
	fcmp	d1, d1
	bvs	.L99
	fcmpe	d0, d1
	bgt	.L101
	b	.L102
.L101:
	fsub	d0, d0, d1
	b	.L96
.L99:
	fmov	d0, d1
	b	.L96
.L102:
	movi	d0, #0
.L96:
	ret
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
	bvs	.L104
	fcmp	s1, s1
	bvs	.L107
	fcmpe	s0, s1
	bgt	.L109
	b	.L110
.L109:
	fsub	s0, s0, s1
	b	.L104
.L107:
	fmov	s0, s1
	b	.L104
.L110:
	movi	v0.2s, #0
.L104:
	ret
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
	bvs	.L115
	fcmp	d1, d1
	bvs	.L112
	fmov	x1, d0
	lsr	x1, x1, 63
	fmov	x0, d1
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L113
	fmov	x0, d0
	cmp	x0, 0
	fcsel	d0, d0, d1, ge
	b	.L112
.L113:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	b	.L112
.L115:
	fmov	d0, d1
.L112:
	ret
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
	bvs	.L124
	fcmp	s1, s1
	bvs	.L121
	fmov	w1, s0
	and	w1, w1, -2147483648
	fmov	w0, s1
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L122
	fmov	w0, s0
	cmp	w0, 0
	fcsel	s0, s0, s1, ge
	b	.L121
.L122:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	b	.L121
.L124:
	fmov	s0, s1
.L121:
	ret
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
	cbnz	w0, .L133
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L134
	ldr	x1, [sp, 40]
	lsr	x1, x1, 63
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L131
	ldr	x0, [sp, 40]
	ldr	q0, [sp, 16]
	tbnz	x0, #63, .L130
	b	.L135
.L131:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	ldr	q0, [sp, 16]
	tbnz	w0, #31, .L130
	b	.L138
.L133:
	ldr	q0, [sp, 16]
	b	.L130
.L134:
	ldr	q0, [sp, 32]
	b	.L130
.L135:
	ldr	q0, [sp, 32]
	b	.L130
.L138:
	ldr	q0, [sp, 32]
.L130:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
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
	bvs	.L143
	fcmp	d1, d1
	bvs	.L140
	fmov	x1, d0
	lsr	x1, x1, 63
	fmov	x0, d1
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L141
	fmov	x0, d0
	cmp	x0, 0
	fcsel	d0, d1, d0, ge
	b	.L140
.L141:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	b	.L140
.L143:
	fmov	d0, d1
.L140:
	ret
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
	bvs	.L152
	fcmp	s1, s1
	bvs	.L149
	fmov	w1, s0
	and	w1, w1, -2147483648
	fmov	w0, s1
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L150
	fmov	w0, s0
	cmp	w0, 0
	fcsel	s0, s1, s0, ge
	b	.L149
.L150:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	b	.L149
.L152:
	fmov	s0, s1
.L149:
	ret
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
	cbnz	w0, .L161
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L162
	ldr	x1, [sp, 40]
	lsr	x1, x1, 63
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L159
	ldr	x0, [sp, 40]
	ldr	q0, [sp, 32]
	tbnz	x0, #63, .L158
	b	.L163
.L159:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	ldr	q0, [sp, 32]
	tbnz	w0, #31, .L158
	b	.L166
.L161:
	ldr	q0, [sp, 16]
	b	.L158
.L162:
	ldr	q0, [sp, 32]
	b	.L158
.L163:
	ldr	q0, [sp, 16]
	b	.L158
.L166:
	ldr	q0, [sp, 16]
.L158:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
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
	adrp	x2, s.0
	add	x2, x2, :lo12:s.0
	b	.L168
.L169:
	and	w3, w0, 63
	adrp	x1, digits
	add	x1, x1, :lo12:digits
	ldrb	w1, [x1, w3, uxtw]
	strb	w1, [x2], 1
	lsr	w0, w0, 6
.L168:
	cbnz	w0, .L169
	strb	wzr, [x2]
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	ret
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
	cbnz	x1, .L173
	stp	xzr, xzr, [x0]
	b	.L172
.L173:
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L172
	str	x0, [x1, 8]
.L172:
	ret
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
	cbz	x1, .L176
	ldp	x1, x2, [x0]
	str	x2, [x1, 8]
.L176:
	ldr	x1, [x0, 8]
	cbz	x1, .L175
	ldp	x1, x0, [x0]
	str	x1, [x0]
.L175:
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
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x22, x0
	mov	x25, x1
	mov	x26, x2
	mov	x21, x3
	mov	x23, x4
	ldr	x24, [x2]
	mov	x20, x1
	mov	x19, 0
	b	.L179
.L182:
	mov	x1, x20
	mov	x0, x22
	blr	x23
	add	x20, x20, x21
	cbnz	w0, .L180
	madd	x0, x19, x21, x25
	b	.L181
.L180:
	add	x19, x19, 1
.L179:
	cmp	x19, x24
	bne	.L182
	add	x0, x24, 1
	str	x0, [x26]
	mov	x2, x21
	mov	x1, x22
	madd	x0, x21, x24, x25
	bl	memcpy
.L181:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
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
	mov	x23, x0
	mov	x25, x1
	mov	x21, x3
	mov	x22, x4
	ldr	x24, [x2]
	mov	x20, x1
	mov	x19, 0
	b	.L184
.L187:
	mov	x1, x20
	mov	x0, x23
	blr	x22
	add	x20, x20, x21
	cbnz	w0, .L185
	madd	x0, x19, x21, x25
	b	.L186
.L185:
	add	x19, x19, 1
.L184:
	cmp	x19, x24
	bne	.L187
	mov	x0, 0
.L186:
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
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	b	.L190
.L191:
	add	x19, x19, 1
.L190:
	ldrb	w0, [x19]
	bl	isspace
	cbnz	w0, .L191
	ldrb	w0, [x19]
	cmp	w0, 43
	beq	.L197
	mov	w2, 0
	cmp	w0, 45
	bne	.L193
	mov	w2, 1
	b	.L192
.L197:
	mov	w2, 0
.L192:
	add	x19, x19, 1
.L193:
	mov	w0, 0
	b	.L194
.L195:
	add	w0, w0, w0, lsl 2
	lsl	w0, w0, 1
	ldrb	w1, [x19], 1
	sub	w1, w1, #48
	sub	w0, w0, w1
.L194:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L195
	cmp	w2, 0
	csneg	w0, w0, w0, ne
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
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
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	b	.L201
.L202:
	add	x19, x19, 1
.L201:
	ldrb	w0, [x19]
	bl	isspace
	cbnz	w0, .L202
	ldrb	w0, [x19]
	cmp	w0, 43
	beq	.L208
	mov	w2, 0
	cmp	w0, 45
	bne	.L204
	mov	w2, 1
	b	.L203
.L208:
	mov	w2, 0
.L203:
	add	x19, x19, 1
.L204:
	mov	x0, 0
	b	.L205
.L206:
	add	x0, x0, x0, lsl 2
	lsl	x0, x0, 1
	ldrb	w1, [x19], 1
	sub	w1, w1, #48
	sub	x0, x0, w1, sxtw
.L205:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L206
	cmp	w2, 0
	csneg	x0, x0, x0, ne
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	b	.L212
.L213:
	add	x19, x19, 1
.L212:
	ldrb	w0, [x19]
	bl	isspace
	cbnz	w0, .L213
	ldrb	w0, [x19]
	cmp	w0, 43
	beq	.L219
	mov	w2, 0
	cmp	w0, 45
	bne	.L215
	mov	w2, 1
	b	.L214
.L219:
	mov	w2, 0
.L214:
	add	x19, x19, 1
.L215:
	mov	x0, 0
	b	.L216
.L217:
	add	x0, x0, x0, lsl 2
	lsl	x0, x0, 1
	ldrb	w1, [x19], 1
	sub	w1, w1, #48
	sub	x0, x0, w1, sxtw
.L216:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L217
	cmp	w2, 0
	csneg	x0, x0, x0, ne
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x24, x0
	mov	x22, x1
	mov	x19, x2
	mov	x21, x3
	mov	x23, x4
	b	.L223
.L227:
	lsr	x20, x19, 1
	madd	x20, x20, x21, x22
	mov	x1, x20
	mov	x0, x24
	blr	x23
	tbz	w0, #31, .L224
	lsr	x19, x19, 1
	b	.L223
.L224:
	cmp	w0, 0
	ble	.L228
	add	x22, x20, x21
	sub	x0, x19, #1
	sub	x19, x0, x19, lsr 1
.L223:
	cbnz	x19, .L227
	mov	x0, 0
	b	.L226
.L228:
	mov	x0, x20
.L226:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
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
	mov	x22, x3
	mov	x24, x4
	mov	x23, x5
	mov	w20, w2
	mov	x21, x1
	b	.L230
.L233:
	asr	w19, w20, 1
	sxtw	x19, w19
	madd	x19, x19, x22, x21
	mov	x2, x23
	mov	x1, x19
	mov	x0, x25
	blr	x24
	cbz	w0, .L234
	cmp	w0, 0
	ble	.L232
	add	x21, x19, x22
	sub	w20, w20, #1
.L232:
	asr	w20, w20, 1
.L230:
	cbnz	w20, .L233
	mov	x0, 0
	b	.L231
.L234:
	mov	x0, x19
.L231:
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
	msub	x5, x0, x1, x2
	mov	x1, x5
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
	msub	x5, x0, x1, x2
	mov	x1, x5
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
	msub	x5, x0, x1, x2
	mov	x1, x5
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
	b	.L243
.L245:
	add	x0, x0, 4
.L243:
	ldr	w2, [x0]
	cbz	w2, .L244
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L245
.L244:
	ldr	w1, [x0]
	cmp	w1, 0
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
	mov	x2, x0
	b	.L249
.L251:
	add	x2, x2, 4
	add	x1, x1, 4
.L249:
	ldr	w3, [x2]
	ldr	w0, [x1]
	cmp	w3, w0
	bne	.L250
	ldr	w0, [x2]
	cbz	w0, .L250
	ldr	w0, [x1]
	cbnz	w0, .L251
.L250:
	ldr	w4, [x2]
	ldr	w3, [x1]
	mov	w0, -1
	cmp	w4, w3
	bcc	.L252
	ldr	w2, [x2]
	ldr	w0, [x1]
	cmp	w2, w0
	cset	w0, hi
.L252:
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
.L255:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	sub	x3, x0, #4
	ldr	w3, [x3, x2]
	cbnz	w3, .L255
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
	mov	x1, x0
	b	.L257
.L258:
	add	x1, x1, 4
.L257:
	ldr	w2, [x1]
	cbnz	w2, .L258
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, %function
wcsncmp:
.LFB63:
	.cfi_startproc
	mov	x3, x0
	b	.L260
.L262:
	sub	x2, x2, #1
	add	x3, x3, 4
	add	x1, x1, 4
.L260:
	cbz	x2, .L261
	ldr	w4, [x3]
	ldr	w0, [x1]
	cmp	w4, w0
	bne	.L261
	ldr	w0, [x3]
	cbz	w0, .L261
	ldr	w0, [x1]
	cbnz	w0, .L262
.L261:
	mov	w0, 0
	cbz	x2, .L263
	ldr	w4, [x3]
	ldr	w2, [x1]
	mov	w0, -1
	cmp	w4, w2
	bcc	.L263
	ldr	w2, [x3]
	ldr	w0, [x1]
	cmp	w2, w0
	cset	w0, hi
.L263:
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, %function
wmemchr:
.LFB64:
	.cfi_startproc
	b	.L267
.L269:
	sub	x2, x2, #1
	add	x0, x0, 4
.L267:
	cbz	x2, .L268
	ldr	w3, [x0]
	cmp	w1, w3
	bne	.L269
.L268:
	cmp	x2, 0
	csel	x0, x0, xzr, ne
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, %function
wmemcmp:
.LFB65:
	.cfi_startproc
	mov	x3, x0
	b	.L273
.L275:
	sub	x2, x2, #1
	add	x3, x3, 4
	add	x1, x1, 4
.L273:
	cbz	x2, .L274
	ldr	w4, [x3]
	ldr	w0, [x1]
	cmp	w4, w0
	beq	.L275
.L274:
	mov	w0, 0
	cbz	x2, .L276
	ldr	w4, [x3]
	ldr	w2, [x1]
	mov	w0, -1
	cmp	w4, w2
	bcc	.L276
	ldr	w2, [x3]
	ldr	w0, [x1]
	cmp	w2, w0
	cset	w0, hi
.L276:
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, %function
wmemcpy:
.LFB66:
	.cfi_startproc
	mov	x3, 0
	b	.L280
.L281:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
.L280:
	cmp	x3, x2
	bne	.L281
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
	beq	.L283
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcc	.L284
	mov	x3, 0
	b	.L285
.L286:
	ldr	w3, [x1, x2, lsl 2]
	str	w3, [x0, x2, lsl 2]
.L284:
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L286
	b	.L283
.L287:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
.L285:
	cmp	x3, x2
	bne	.L287
.L283:
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
	mov	x3, 0
	b	.L289
.L290:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
.L289:
	cmp	x3, x2
	bne	.L290
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
	bcs	.L292
	add	x4, x0, x2
	add	x3, x1, x2
	mov	x0, x2
	b	.L293
.L294:
	sub	x1, x4, x2
	sub	x1, x1, #1
	ldrb	w5, [x1, x0]
	sub	x1, x3, x2
	sub	x1, x1, #1
	strb	w5, [x1, x0]
	sub	x0, x0, #1
.L293:
	cbnz	x0, .L294
	b	.L291
.L292:
	mov	x3, 0
	bne	.L296
	b	.L291
.L297:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
.L296:
	cmp	x3, x2
	bne	.L297
.L291:
	ret
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
	b	.L313
.L316:
	lsr	w2, w0, w1
	tbz	x2, 0, .L314
	add	w0, w1, 1
	b	.L315
.L314:
	add	w1, w1, 1
.L313:
	cmp	w1, 32
	bne	.L316
	mov	w0, 0
.L315:
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
	mov	w0, 0
	cbz	w1, .L318
	mov	w0, 1
	b	.L319
.L320:
	asr	w1, w1, 1
	add	w0, w0, 1
.L319:
	tbz	x1, 0, .L320
.L318:
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
	bmi	.L323
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	cset	w0, gt
.L323:
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
	bmi	.L329
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	cset	w0, gt
.L329:
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
	tbnz	w1, #31, .L335
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L335:
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
	bvs	.L342
	fadd	s31, s0, s0
	fcmp	s0, s31
	beq	.L342
	cmp	w0, 0
	fmov	s31, 2.0e+0
	fmov	s30, 5.0e-1
	fcsel	s31, s31, s30, ge
.L345:
	tbz	x0, 0, .L344
	fmul	s0, s0, s31
.L344:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L342
	fmul	s31, s31, s31
	b	.L345
.L342:
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
	bvs	.L348
	fadd	d31, d0, d0
	fcmp	d0, d31
	beq	.L348
	cmp	w0, 0
	fmov	d31, 2.0e+0
	fmov	d30, 5.0e-1
	fcsel	d31, d31, d30, ge
.L351:
	tbz	x0, 0, .L350
	fmul	d0, d0, d31
.L350:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L348
	fmul	d31, d31, d31
	b	.L351
.L348:
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
	cbnz	w0, .L354
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 32]
	bl	__netf2
	cbz	w0, .L354
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q31, [x0]
	str	q31, [sp, 48]
	tbz	w19, #31, .L358
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q31, [x0]
	str	q31, [sp, 48]
.L358:
	tbz	x19, 0, .L357
	ldp	q0, q1, [sp, 32]
	bl	__multf3
	str	q0, [sp, 32]
.L357:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L354
	ldr	q1, [sp, 48]
	mov	v0.16b, v1.16b
	bl	__multf3
	str	q0, [sp, 48]
	b	.L358
.L354:
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
	mov	x3, 0
	b	.L362
.L363:
	ldrb	w5, [x1, x3]
	ldrb	w4, [x0, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L362:
	cmp	x3, x2
	bne	.L363
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
	b	.L365
.L367:
	add	x20, x20, 1
	add	x2, x2, 1
	sub	x19, x19, #1
.L365:
	cbz	x19, .L366
	ldrb	w1, [x20]
	strb	w1, [x2]
	cbnz	w1, .L367
.L366:
	cbnz	x19, .L368
	strb	wzr, [x2]
.L368:
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
	b	.L370
.L372:
	add	x0, x0, 1
.L370:
	cmp	x0, x1
	beq	.L371
	ldrb	w3, [x2, x0]
	cbnz	w3, .L372
.L371:
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, %function
strpbrk:
.LFB95:
	.cfi_startproc
	b	.L374
.L376:
	ldrb	w4, [x2], 1
	ldrb	w3, [x0]
	cmp	w4, w3
	bne	.L377
	b	.L375
.L379:
	mov	x2, x1
.L377:
	ldrb	w3, [x2]
	cbnz	w3, .L376
	add	x0, x0, 1
.L374:
	ldrb	w2, [x0]
	cbnz	w2, .L379
	mov	x0, 0
.L375:
	ret
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
.L382:
	ldrb	w3, [x2]
	cmp	w1, w3
	csel	x0, x0, x2, ne
	ldrb	w3, [x2], 1
	cbnz	w3, .L382
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
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x19, x0
	mov	x20, x1
	mov	x0, x1
	bl	strlen
	mov	x21, x0
	mov	x0, x19
	cbz	x21, .L385
	ldrb	w22, [x20]
	b	.L386
.L387:
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	strncmp
	cbz	w0, .L389
	add	x19, x19, 1
.L386:
	mov	w1, w22
	mov	x0, x19
	bl	strchr
	mov	x19, x0
	cbnz	x0, .L387
	mov	x0, 0
	b	.L385
.L389:
	mov	x0, x19
.L385:
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
.LFE97:
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, %function
copysign:
.LFB98:
	.cfi_startproc
	fcmpe	d0, #0.0
	bmi	.L399
	b	.L391
.L399:
	fcmpe	d1, #0.0
	bgt	.L393
.L391:
	fcmpe	d0, #0.0
	bgt	.L400
	b	.L394
.L400:
	fcmpe	d1, #0.0
	bmi	.L393
	b	.L394
.L393:
	fneg	d0, d0
.L394:
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, %function
memmem:
.LFB99:
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
	mov	x19, x0
	mov	x20, x2
	mov	x22, x3
	sub	x21, x1, x3
	add	x21, x0, x21
	cbz	x3, .L404
	cmp	x1, x3
	bcc	.L409
	b	.L405
.L407:
	ldrb	w1, [x19]
	ldrb	w0, [x20]
	cmp	w1, w0
	bne	.L406
	sub	x2, x22, #1
	add	x1, x20, 1
	add	x0, x19, 1
	bl	memcmp
	cbz	w0, .L410
.L406:
	add	x19, x19, 1
.L405:
	cmp	x19, x21
	bls	.L407
	mov	x0, 0
	b	.L404
.L409:
	mov	x0, 0
	b	.L404
.L410:
	mov	x0, x19
.L404:
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
	bmi	.L425
	b	.L426
.L425:
	fneg	d0, d0
	mov	w2, 1
	b	.L413
.L426:
	mov	w2, 0
.L413:
	mov	w1, 0
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L415
	b	.L427
.L417:
	add	w1, w1, 1
	fmov	d31, 5.0e-1
	fmul	d0, d0, d31
.L415:
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L417
	b	.L418
.L427:
	fcmp	d0, #0.0
	cset	w1, ne
	fmov	d31, 5.0e-1
	fcmpe	d0, d31
	ccmp	w1, 0, 4, mi
	mov	w1, 0
	beq	.L418
	b	.L424
.L420:
	sub	w1, w1, #1
	fadd	d0, d0, d0
	b	.L419
.L424:
	mov	w1, 0
.L419:
	fmov	d31, 5.0e-1
	fcmpe	d0, d31
	bmi	.L420
.L418:
	str	w1, [x0]
	fneg	d31, d0
	cmp	w2, 0
	fcsel	d0, d31, d0, ne
	ret
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
	mov	x0, 0
	b	.L429
.L431:
	add	x3, x0, x1
	tst	x2, 1
	csel	x0, x3, x0, ne
	lsl	x1, x1, 1
	lsr	x2, x2, 1
.L429:
	cbnz	x2, .L431
	ret
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
	b	.L433
.L435:
	lsl	w1, w1, 1
	lsl	w3, w3, 1
.L433:
	cmp	w1, w0
	cset	w5, cc
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L440
	tbz	w1, #31, .L435
	mov	w4, 0
	b	.L437
.L438:
	cmp	w0, w1
	bcc	.L436
	sub	w0, w0, w1
	orr	w4, w4, w3
.L436:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	b	.L437
.L440:
	mov	w4, 0
.L437:
	cbnz	w3, .L438
	cmp	x2, 0
	csel	w0, w0, w4, ne
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
	eor	x1, x0, x0, asr 63
	clz	x0, x1
	sub	w0, w0, #1
	cmp	x1, 0
	mov	w1, 63
	csel	w0, w0, w1, ne
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
	mov	w0, 0
	b	.L450
.L452:
	add	w3, w0, w1
	tst	x2, 1
	csel	w0, w3, w0, ne
	lsr	w2, w2, 1
	lsl	w1, w1, 1
.L450:
	cbnz	w2, .L452
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
	lsr	w6, w2, 3
	and	w3, w2, -8
	cmp	x0, x1
	bcc	.L454
	add	x4, x1, w2, uxtw
	cmp	x4, x0
	bcs	.L455
.L454:
	lsl	w6, w6, 3
	mov	x4, 0
	b	.L456
.L457:
	ldr	x5, [x1, x4]
	str	x5, [x0, x4]
	add	x4, x4, 8
.L456:
	cmp	x4, x6
	bne	.L457
	uxtw	x3, w3
	b	.L458
.L459:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L458:
	cmp	w2, w3
	bhi	.L459
	b	.L453
.L461:
	ldrb	w3, [x1, w2, uxtw]
	strb	w3, [x0, w2, uxtw]
.L455:
	sub	w2, w2, #1
	cmn	w2, #1
	bne	.L461
.L453:
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, %function
__cmovh:
.LFB108:
	.cfi_startproc
	lsr	w5, w2, 1
	cmp	x0, x1
	bcc	.L463
	add	x3, x1, w2, uxtw
	cmp	x3, x0
	bcs	.L464
.L463:
	lsl	w5, w5, 1
	mov	x3, 0
	b	.L465
.L466:
	ldrsh	w4, [x1, x3]
	strh	w4, [x0, x3]
	add	x3, x3, 2
.L465:
	cmp	x3, x5
	bne	.L466
	tbz	x2, 0, .L462
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
	b	.L462
.L468:
	ldrb	w3, [x1, w2, uxtw]
	strb	w3, [x0, w2, uxtw]
.L464:
	sub	w2, w2, #1
	cmn	w2, #1
	bne	.L468
.L462:
	ret
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, %function
__cmovw:
.LFB109:
	.cfi_startproc
	lsr	w6, w2, 2
	and	w3, w2, -4
	cmp	x0, x1
	bcc	.L470
	add	x4, x1, w2, uxtw
	cmp	x4, x0
	bcs	.L471
.L470:
	lsl	w6, w6, 2
	mov	x4, 0
	b	.L472
.L473:
	ldr	w5, [x1, x4]
	str	w5, [x0, x4]
	add	x4, x4, 4
.L472:
	cmp	x4, x6
	bne	.L473
	uxtw	x3, w3
	b	.L474
.L475:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L474:
	cmp	w2, w3
	bhi	.L475
	b	.L469
.L477:
	ldrb	w3, [x1, w2, uxtw]
	strb	w3, [x0, w2, uxtw]
.L471:
	sub	w2, w2, #1
	cmn	w2, #1
	bne	.L477
.L469:
	ret
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
	and	w2, w0, 65535
	mov	w0, 0
	b	.L485
.L487:
	mov	w1, 15
	sub	w1, w1, w0
	asr	w1, w2, w1
	tbnz	x1, 0, .L486
	add	w0, w0, 1
.L485:
	cmp	w0, 16
	bne	.L487
.L486:
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
	b	.L489
.L491:
	asr	w1, w2, w0
	tbnz	x1, 0, .L490
	add	w0, w0, 1
.L489:
	cmp	w0, 16
	bne	.L491
.L490:
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
	bge	.L496
	b	.L497
.L496:
	movi	v31.2s, 0x47, lsl 24
	fsub	s0, s0, s31
	fcvtzs	x0, s0
	add	x0, x0, 32768
	b	.L495
.L497:
	fcvtzs	x0, s0
.L495:
	ret
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
	b	.L499
.L501:
	asr	w2, w3, w1
	and	w2, w2, 1
	add	w0, w0, w2
	add	w1, w1, 1
.L499:
	cmp	w1, 16
	bne	.L501
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
	b	.L503
.L505:
	asr	w2, w3, w1
	and	w2, w2, 1
	add	w0, w0, w2
	add	w1, w1, 1
.L503:
	cmp	w1, 16
	bne	.L505
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
	mov	w0, 0
	b	.L507
.L509:
	add	w3, w0, w1
	tst	x2, 1
	csel	w0, w3, w0, ne
	lsr	w2, w2, 1
	lsl	w1, w1, 1
.L507:
	cbnz	w2, .L509
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
	mov	w2, w0
	mov	w0, 0
	cbz	w2, .L511
	b	.L512
.L514:
	add	w3, w0, w2
	tst	x1, 1
	csel	w0, w3, w0, ne
	lsl	w2, w2, 1
	lsr	w1, w1, 1
.L512:
	cbnz	w1, .L514
.L511:
	ret
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
	b	.L517
.L519:
	lsl	w1, w1, 1
	lsl	w3, w3, 1
.L517:
	cmp	w1, w0
	cset	w5, cc
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L524
	tbz	w1, #31, .L519
	mov	w4, 0
	b	.L521
.L522:
	cmp	w0, w1
	bcc	.L520
	sub	w0, w0, w1
	orr	w4, w4, w3
.L520:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	b	.L521
.L524:
	mov	w4, 0
.L521:
	cbnz	w3, .L522
	cmp	w2, 0
	csel	w0, w0, w4, ne
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
	bmi	.L527
	cset	w0, gt
.L527:
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
	bmi	.L531
	cset	w0, gt
.L531:
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
	mov	w5, 0
	tbz	w1, #31, .L537
	neg	w1, w1
	mov	w5, 1
.L537:
	mov	w3, 0
	mov	w2, 0
	b	.L538
.L540:
	add	w4, w3, w0
	tst	x1, 1
	csel	w3, w4, w3, ne
	lsl	w0, w0, 1
	asr	w1, w1, 1
	add	w2, w2, 1
	and	w2, w2, 255
.L538:
	cmp	w1, 0
	cset	w4, ne
	cmp	w2, 31
	ccmp	w4, 0, 4, ls
	bne	.L540
	cmp	w5, 0
	csneg	w0, w3, w3, eq
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, %function
__divsi3:
.LFB129:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w19, 0
	tbz	x0, #63, .L545
	neg	x0, x0
	mov	w19, 1
.L545:
	tbz	x1, #63, .L546
	neg	x1, x1
	eor	w19, w19, 1
.L546:
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
	cmp	w19, 0
	csneg	x0, x0, x0, eq
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, %function
__modsi3:
.LFB130:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w19, 0
	tbz	x0, #63, .L550
	neg	x0, x0
	mov	w19, 1
.L550:
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	mov	w2, 1
	bl	__udivmodsi4
	uxtw	x0, w0
	cmp	w19, 0
	csneg	x0, x0, x0, eq
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	b	.L555
.L557:
	ubfiz	w1, w1, 1, 15
	ubfiz	w3, w3, 1, 15
.L555:
	cmp	w1, w0
	cset	w5, cc
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L562
	tbz	x1, 15, .L557
	mov	w4, 0
	b	.L559
.L560:
	cmp	w0, w1
	bcc	.L558
	sub	w0, w0, w1
	and	w0, w0, 65535
	orr	w4, w4, w3
.L558:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	b	.L559
.L562:
	mov	w4, 0
.L559:
	cbnz	w3, .L560
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
	b	.L565
.L567:
	lsl	x1, x1, 1
	lsl	x3, x3, 1
.L565:
	cmp	x1, x0
	cset	w5, cc
	cmp	x3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L572
	tbz	x1, 31, .L567
	mov	x4, 0
	b	.L569
.L570:
	cmp	x0, x1
	bcc	.L568
	sub	x0, x0, x1
	orr	x4, x4, x3
.L568:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	b	.L569
.L572:
	mov	x4, 0
.L569:
	cbnz	x3, .L570
	cmp	w2, 0
	csel	x0, x0, x4, ne
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
	tbz	x1, 5, .L575
	mov	x0, 0
	sub	w1, w1, #32
	lsl	w2, w2, w1
	bfi	x0, x2, 32, 32
	b	.L577
.L575:
	cbz	w1, .L577
	lsl	w3, w0, w1
	mov	x0, 0
	bfi	x0, x3, 0, 32
	asr	x3, x2, 32
	lsl	w3, w3, w1
	neg	w1, w1
	lsr	w2, w2, w1
	orr	w2, w2, w3
	bfi	x0, x2, 32, 32
.L577:
	ret
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashlti3
	.type	__ashlti3, %function
__ashlti3:
.LFB134:
	.cfi_startproc
	tbz	x2, 6, .L580
	mov	x4, 0
	sub	w2, w2, #64
	lsl	x5, x0, x2
	b	.L581
.L580:
	cbz	w2, .L582
	lsl	x4, x0, x2
	lsl	x3, x1, x2
	neg	w2, w2
	lsr	x1, x0, x2
	orr	x5, x1, x3
.L581:
	mov	x0, x4
	mov	x1, x5
.L582:
	ret
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
	tbz	x1, 5, .L585
	asr	x3, x0, 32
	asr	x2, x0, 63
	mov	x0, 0
	bfi	x0, x2, 32, 32
	sub	w1, w1, #32
	asr	w1, w3, w1
	bfi	x0, x1, 0, 32
	b	.L587
.L585:
	cbz	w1, .L587
	asr	x3, x0, 32
	asr	w4, w3, w1
	mov	x0, 0
	bfi	x0, x4, 32, 32
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w3, w3, w2
	bfi	x0, x3, 0, 32
.L587:
	ret
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__ashrti3
	.type	__ashrti3, %function
__ashrti3:
.LFB136:
	.cfi_startproc
	tbz	x2, 6, .L590
	asr	x5, x1, 63
	sub	w2, w2, #64
	asr	x4, x1, x2
	b	.L591
.L590:
	cbz	w2, .L592
	asr	x5, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x1, x0, x2
	orr	x4, x3, x1
.L591:
	mov	x0, x4
	mov	x1, x5
.L592:
	ret
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
	lsr	w0, w0, w1
	tst	w0, 65280
	cset	w1, eq
	lsl	w1, w1, 3
	mov	w3, 8
	sub	w3, w3, w1
	lsr	w0, w0, w3
	add	w2, w1, w2
	tst	w0, 240
	cset	w4, eq
	lsl	w4, w4, 2
	mov	w1, 4
	sub	w1, w1, w4
	lsr	w0, w0, w1
	tst	w0, 12
	cset	w1, eq
	lsl	w1, w1, 1
	mov	w3, 2
	sub	w5, w3, w1
	lsr	w0, w0, w5
	add	w1, w1, w4
	tst	x0, 2
	cset	w4, eq
	sub	w3, w3, w0
	madd	w0, w4, w3, w2
	add	w0, w0, w1
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
	mov	x2, x0
	mov	x3, x1
	cmp	x1, 0
	csetm	x0, eq
	csetm	x1, ne
	and	x1, x1, x3
	and	x0, x0, x2
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
	blt	.L607
	mov	w0, 2
	bgt	.L607
	mov	w0, 0
	cmp	w2, w1
	bcc	.L607
	cset	w0, hi
	add	w0, w0, 1
.L607:
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
	blt	.L614
	mov	w0, 2
	bgt	.L614
	mov	w0, 0
	cmp	x4, x2
	bcc	.L614
	cset	w0, hi
	add	w0, w0, 1
.L614:
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
	lsr	w0, w0, w2
	tst	w0, 255
	cset	w1, eq
	lsl	w1, w1, 3
	lsr	w0, w0, w1
	add	w2, w1, w2
	tst	x0, 15
	cset	w3, eq
	lsl	w3, w3, 2
	lsr	w0, w0, w3
	tst	x0, 3
	cset	w1, eq
	lsl	w1, w1, 1
	lsr	w0, w0, w1
	and	w0, w0, 3
	add	w3, w1, w3
	mvn	w4, w0
	mov	w1, 2
	sub	w1, w1, w0, lsr 1
	sbfx	x0, x4, 0, 1
	and	w1, w1, w0
	add	w1, w2, w1
	add	w0, w1, w3
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
	mov	x2, x0
	mov	x3, x1
	cmp	x0, 0
	csetm	x1, eq
	and	x0, x1, x3
	bic	x1, x2, x1
	orr	x1, x1, x0
	rbit	x1, x1
	clz	x1, x1
	cset	w0, eq
	add	w0, w1, w0, lsl 6
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
	cbnz	x0, .L630
	rbit	x0, x1
	clz	x0, x0
	add	w0, w0, 65
	cmp	x1, 0
	csel	w0, w0, wzr, ne
	b	.L631
.L630:
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
.L631:
	ret
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
	tbz	x1, 5, .L634
	mov	x0, 0
	lsr	x2, x2, 32
	sub	w1, w1, #32
	lsr	w2, w2, w1
	bfi	x0, x2, 0, 32
	b	.L636
.L634:
	cbz	w1, .L636
	lsr	x3, x0, 32
	lsr	w4, w3, w1
	mov	x0, 0
	bfi	x0, x4, 32, 32
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w3, w3, w2
	bfi	x0, x3, 0, 32
.L636:
	ret
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__lshrti3
	.type	__lshrti3, %function
__lshrti3:
.LFB148:
	.cfi_startproc
	tbz	x2, 6, .L639
	mov	x5, 0
	sub	w2, w2, #64
	lsr	x4, x1, x2
	b	.L640
.L639:
	cbz	w2, .L641
	lsr	x5, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x1, x0, x2
	orr	x4, x3, x1
.L640:
	mov	x0, x4
	mov	x1, x5
.L641:
	ret
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, %function
__muldsi3:
.LFB149:
	.cfi_startproc
	mov	w3, w0
	and	w4, w0, 65535
	and	w5, w1, 65535
	mul	w2, w4, w5
	mov	x0, 0
	bfi	x0, x2, 0, 32
	lsr	w2, w0, 16
	and	x6, x0, 65535
	bfi	x0, x6, 0, 32
	lsr	w3, w3, 16
	madd	w2, w3, w5, w2
	add	w5, w0, w2, lsl 16
	bfi	x0, x5, 0, 32
	lsr	w2, w2, 16
	bfi	x0, x2, 32, 32
	lsr	w2, w0, 16
	and	x5, x0, 65535
	bfi	x0, x5, 0, 32
	lsr	w1, w1, 16
	madd	w2, w4, w1, w2
	add	w4, w0, w2, lsl 16
	bfi	x0, x4, 0, 32
	asr	x4, x0, 32
	add	w2, w4, w2, lsr 16
	bfi	x0, x2, 32, 32
	asr	x2, x0, 32
	madd	w3, w3, w1, w2
	bfi	x0, x3, 32, 32
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
	mov	x3, x1
	and	x6, x0, 4294967295
	and	x5, x1, 4294967295
	mul	x2, x6, x5
	and	x7, x2, 4294967295
	lsr	x4, x0, 32
	mul	x5, x4, x5
	add	x2, x5, x2, lsr 32
	add	x0, x7, x2, lsl 32
	lsr	x1, x2, 32
	lsr	x2, x0, 32
	and	x5, x0, 4294967295
	lsr	x3, x3, 32
	madd	x2, x6, x3, x2
	add	x0, x5, x2, lsl 32
	add	x2, x1, x2, lsr 32
	madd	x1, x4, x3, x2
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
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	.cfi_offset 20, -32
	.cfi_offset 21, -24
	.cfi_offset 22, -16
	.cfi_offset 23, -8
	mov	x22, x0
	mov	x23, x1
	mov	x20, x2
	mov	x21, x3
	mov	x1, x2
	bl	__mulddi3
	mul	x2, x21, x22
	madd	x20, x23, x20, x2
	add	x1, x20, x1
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 20
	.cfi_restore 21
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
	negs	x2, x0
	mov	x0, x2
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
	eor	x0, x0, x1
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
	add	x0, x0, x1, lsr 2
	add	x0, x0, x0, lsr 4
	and	x0, x0, 1085102592571150095
	lsr	x1, x0, 32
	add	w0, w1, w0
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
	sub	w0, w0, w1
	and	w1, w0, -858993460
	and	w0, w0, 858993459
	add	w0, w0, w1, lsr 2
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
	lsr	x2, x0, 1
	orr	x2, x2, x1, lsl 63
	lsr	x3, x1, 1
	and	x4, x2, 6148914691236517205
	and	x5, x3, 6148914691236517205
	subs	x0, x0, x4
	sbc	x3, x1, x5
	lsr	x6, x0, 2
	orr	x6, x6, x3, lsl 62
	lsr	x7, x3, 2
	and	x4, x6, 3689348814741910323
	and	x5, x7, 3689348814741910323
	and	x6, x0, 3689348814741910323
	and	x7, x3, 3689348814741910323
	adds	x2, x4, x6
	adc	x6, x5, x7
	lsr	x8, x2, 4
	orr	x8, x8, x6, lsl 60
	lsr	x9, x6, 4
	adds	x2, x8, x2
	adc	x5, x6, x9
	and	x0, x2, 1085102592571150095
	and	x1, x5, 1085102592571150095
	add	x2, x1, x0
	lsr	x0, x2, 32
	add	w0, w0, w2
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
	lsr	w1, w0, 31
	fmov	d31, 1.0e+0
.L658:
	tbz	x0, 0, .L656
	fmul	d31, d31, d0
.L656:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L657
	fmul	d0, d0, d0
	b	.L658
.L657:
	fmov	d0, d31
	cbz	w1, .L659
	fmov	d0, 1.0e+0
	fdiv	d0, d0, d31
.L659:
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
	lsr	w1, w0, 31
	fmov	s31, 1.0e+0
.L664:
	tbz	x0, 0, .L662
	fmul	s31, s31, s0
.L662:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L663
	fmul	s0, s0, s0
	b	.L664
.L663:
	fmov	s0, s31
	cbz	w1, .L665
	fmov	s0, 1.0e+0
	fdiv	s0, s0, s31
.L665:
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
	bcc	.L668
	mov	w0, 2
	bhi	.L668
	mov	w0, 0
	cmp	w2, w1
	bcc	.L668
	cset	w0, hi
	add	w0, w0, 1
.L668:
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
	bcc	.L675
	mov	w0, 2
	bhi	.L675
	mov	w0, 0
	cmp	x4, x2
	bcc	.L675
	cset	w0, hi
	add	w0, w0, 1
.L675:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.section	.rodata
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
