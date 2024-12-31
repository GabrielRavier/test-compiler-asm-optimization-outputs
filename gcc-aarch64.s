	.arch armv8-a
	.file	"mini-libc.c"
	.text
	.align	2
	.global	make_ti
	.type	make_ti, %function
make_ti:
.LFB0:
	.cfi_startproc
	mov	x2, 0
	mov	x3, 0
	mov	x3, x0
	mov	x2, x1
	mov	x0, x2
	mov	x1, x3
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
	mov	x2, 0
	mov	x3, 0
	mov	x3, x0
	mov	x2, x1
	mov	x0, x2
	mov	x1, x3
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
	add	x1, x1, x2
	add	x6, x0, x2
	mov	x4, x2
	b	.L5
.L6:
	neg	x3, x2
	sub	x5, x1, x2
	sub	x5, x5, #1
	ldrb	w5, [x5, x4]
	add	x3, x6, x3
	sub	x3, x3, #1
	strb	w5, [x3, x4]
	sub	x4, x4, #1
.L5:
	cbnz	x4, .L6
	b	.L7
.L4:
	cmp	x0, x1
	bne	.L10
	b	.L7
.L9:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	b	.L8
.L10:
	mov	x3, 0
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
	and	w4, w4, 255
	cmp	w2, w4
	bne	.L14
.L13:
	cbz	x3, .L16
	add	x0, x0, 1
	b	.L15
.L16:
	mov	x0, 0
.L15:
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
	cbnz	x2, .L21
	mov	x0, 0
.L21:
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
	b	.L24
.L26:
	sub	x2, x2, #1
	add	x0, x0, 1
	add	x1, x1, 1
.L24:
	cbz	x2, .L25
	ldrb	w4, [x0]
	ldrb	w3, [x1]
	cmp	w4, w3
	beq	.L26
.L25:
	cbz	x2, .L28
	ldrb	w0, [x0]
	ldrb	w1, [x1]
	sub	w0, w0, w1
	b	.L27
.L28:
	mov	w0, 0
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
	ldrb	w4, [x0, x2]
	sub	x3, x2, #1
	cmp	w1, w4
	bne	.L36
	add	x0, x0, x2
	b	.L34
.L36:
	mov	x2, x3
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
	and	w4, w1, 255
	strb	w4, [x3]
	add	x3, x3, 1
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
	and	w2, w2, 255
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
	add	x0, x0, 1
	ldrb	w2, [x0, -1]
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
	mov	w2, w3
	cbnz	w2, .L54
.L53:
	ldrb	w0, [x0]
	ldrb	w1, [x1]
	sub	w0, w0, w1
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
	sub	x3, x2, #1
	cbz	x2, .L63
	mov	x2, x0
	b	.L60
.L62:
	add	x2, x2, 1
	add	x1, x1, 1
.L60:
	ldrb	w4, [x2]
	cbz	w4, .L61
	ldrb	w4, [x1]
	sub	x5, x0, x2
	cmn	x5, x3
	cset	w5, ne
	cmp	w4, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L61
	ldrb	w5, [x2]
	ldrb	w4, [x1]
	cmp	w5, w4
	beq	.L62
.L61:
	ldrb	w0, [x2]
	ldrb	w1, [x1]
	sub	w0, w0, w1
	b	.L59
.L63:
	mov	w0, 0
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
	mov	x3, x0
	b	.L65
.L66:
	ldrb	w4, [x3, 1]
	strb	w4, [x1]
	ldrb	w4, [x3]
	strb	w4, [x1, 1]
	add	x1, x1, 2
	add	x3, x3, 2
.L65:
	add	x4, x0, x2
	sub	x4, x4, x3
	cmp	x4, 1
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
	cmp	w0, 31
	cset	w2, ls
	sub	w1, w0, #127
	cmp	w1, 32
	cset	w1, ls
	cmp	w2, 0
	ccmp	w1, 0, 0, eq
	bne	.L79
	sub	w1, w0, #8192
	sub	w1, w1, #40
	cmp	w1, 1
	bls	.L80
	sub	w0, w0, #61440
	sub	w0, w0, #4089
	cmp	w0, 2
	bhi	.L81
	mov	w0, 1
	b	.L78
.L79:
	mov	w0, 1
	b	.L78
.L80:
	mov	w0, 1
	b	.L78
.L81:
	mov	w0, 0
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
	cmp	w0, 254
	bhi	.L84
	add	w0, w0, 1
	and	w0, w0, 127
	cmp	w0, 32
	cset	w0, hi
	b	.L85
.L84:
	mov	w1, 8231
	cmp	w0, w1
	cset	w2, ls
	sub	w1, w0, #8192
	sub	w1, w1, #42
	mov	w3, 47061
	cmp	w1, w3
	cset	w1, ls
	cmp	w2, 0
	ccmp	w1, 0, 0, eq
	bne	.L86
	sub	w1, w0, #57344
	mov	w2, 8184
	cmp	w1, w2
	bls	.L87
	sub	w1, w0, #61440
	sub	w1, w1, #4092
	mov	w2, 3
	movk	w2, 0x10, lsl 16
	cmp	w1, w2
	bhi	.L88
	and	w0, w0, 65534
	mov	w1, 65534
	cmp	w0, w1
	beq	.L89
	mov	w0, 1
	b	.L85
.L86:
	mov	w0, 1
	b	.L85
.L87:
	mov	w0, 1
	b	.L85
.L88:
	mov	w0, 0
	b	.L85
.L89:
	mov	w0, 0
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
	sub	w1, w0, #48
	cmp	w1, 9
	bls	.L92
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	bhi	.L93
	mov	w0, 1
	b	.L91
.L92:
	mov	w0, 1
	b	.L91
.L93:
	mov	w0, 0
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
	mov	x0, x1
	cbz	w0, .L112
	fmov	d0, d1
	b	.L112
.L113:
	fcmpe	d0, d1
	bmi	.L119
	b	.L112
.L119:
	fmov	d0, d1
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
	bvs	.L125
	fcmp	s1, s1
	bvs	.L122
	fmov	w1, s0
	and	w1, w1, -2147483648
	fmov	w0, s1
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L123
	fmov	w0, s0
	mov	w0, w1
	cbz	w0, .L122
	fmov	s0, s1
	b	.L122
.L123:
	fcmpe	s0, s1
	bmi	.L129
	b	.L122
.L129:
	fmov	s0, s1
	b	.L122
.L125:
	fmov	s0, s1
.L122:
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
	stp	q0, q1, [sp, 16]
	mov	v1.16b, v0.16b
	bl	__unordtf2
	cbnz	w0, .L135
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L136
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L133
	ldr	x0, [sp, 24]
	mov	x0, x1
	cbz	w0, .L137
	ldr	q0, [sp, 32]
	b	.L132
.L133:
	ldp	q0, q1, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L140
	ldr	q0, [sp, 32]
	b	.L132
.L135:
	ldr	q0, [sp, 32]
	b	.L132
.L136:
	ldr	q0, [sp, 16]
	b	.L132
.L137:
	ldr	q0, [sp, 16]
	b	.L132
.L140:
	ldr	q0, [sp, 16]
.L132:
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
	bvs	.L145
	fcmp	d1, d1
	bvs	.L142
	fmov	x1, d0
	lsr	x1, x1, 63
	fmov	x0, d1
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L143
	fmov	x0, d0
	mov	x0, x1
	cbz	w0, .L147
	b	.L142
.L143:
	fcmpe	d0, d1
	bmi	.L142
	b	.L150
.L145:
	fmov	d0, d1
	b	.L142
.L147:
	fmov	d0, d1
	b	.L142
.L150:
	fmov	d0, d1
.L142:
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
	bvs	.L155
	fcmp	s1, s1
	bvs	.L152
	fmov	w1, s0
	and	w1, w1, -2147483648
	fmov	w0, s1
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L153
	fmov	w0, s0
	mov	w0, w1
	cbz	w0, .L157
	b	.L152
.L153:
	fcmpe	s0, s1
	bmi	.L152
	b	.L160
.L155:
	fmov	s0, s1
	b	.L152
.L157:
	fmov	s0, s1
	b	.L152
.L160:
	fmov	s0, s1
.L152:
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
	stp	q0, q1, [sp, 16]
	mov	v1.16b, v0.16b
	bl	__unordtf2
	cbnz	w0, .L165
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L166
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	cmp	w1, w0
	beq	.L163
	ldr	x0, [sp, 24]
	mov	x0, x1
	cbz	w0, .L167
	ldr	q0, [sp, 16]
	b	.L162
.L163:
	ldp	q0, q1, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L170
	ldr	q0, [sp, 16]
	b	.L162
.L165:
	ldr	q0, [sp, 32]
	b	.L162
.L166:
	ldr	q0, [sp, 16]
	b	.L162
.L167:
	ldr	q0, [sp, 32]
	b	.L162
.L170:
	ldr	q0, [sp, 32]
.L162:
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
	adrp	x1, s.0
	add	x1, x1, :lo12:s.0
	b	.L172
.L173:
	and	x3, x0, 63
	adrp	x2, digits
	add	x2, x2, :lo12:digits
	ldrb	w2, [x2, x3]
	strb	w2, [x1]
	add	x1, x1, 1
	lsr	w0, w0, 6
.L172:
	cbnz	w0, .L173
	strb	wzr, [x1]
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
	add	x1, x1, :lo12:seed
	ldr	x0, [x1]
	mov	x2, 32557
	movk	x2, 0x4c95, lsl 16
	movk	x2, 0xf42d, lsl 32
	movk	x2, 0x5851, lsl 48
	mul	x0, x0, x2
	add	x0, x0, 1
	str	x0, [x1]
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
	cbnz	x1, .L177
	stp	xzr, xzr, [x0]
	b	.L176
.L177:
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L176
	str	x0, [x1, 8]
.L176:
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
	cbz	x1, .L180
	ldp	x1, x2, [x0]
	str	x2, [x1, 8]
.L180:
	ldr	x1, [x0, 8]
	cbz	x1, .L179
	ldp	x1, x0, [x0]
	str	x1, [x0]
.L179:
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
	mov	x23, x0
	mov	x22, x1
	mov	x24, x2
	mov	x20, x3
	mov	x26, x4
	ldr	x21, [x24]
	mov	x25, x22
	mov	x19, 0
	b	.L183
.L186:
	mov	x1, x25
	mov	x0, x23
	blr	x26
	add	x25, x25, x20
	cbnz	w0, .L184
	madd	x0, x19, x20, x22
	b	.L185
.L184:
	add	x19, x19, 1
.L183:
	cmp	x19, x21
	bne	.L186
	add	x0, x21, 1
	str	x0, [x24]
	madd	x0, x20, x21, x22
	mov	x2, x20
	mov	x1, x23
	bl	memcpy
.L185:
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
	mov	x24, x0
	mov	x20, x1
	mov	x21, x3
	mov	x23, x4
	ldr	x25, [x2]
	mov	x22, x20
	mov	x19, 0
	b	.L188
.L191:
	mov	x1, x22
	mov	x0, x24
	blr	x23
	add	x22, x22, x21
	cbnz	w0, .L189
	madd	x0, x19, x21, x20
	b	.L190
.L189:
	add	x19, x19, 1
.L188:
	cmp	x19, x25
	bne	.L191
	mov	x0, 0
.L190:
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
	b	.L194
.L195:
	add	x19, x19, 1
.L194:
	ldrb	w0, [x19]
	bl	isspace
	cbnz	w0, .L195
	ldrb	w0, [x19]
	cmp	w0, 43
	beq	.L201
	cmp	w0, 45
	bne	.L202
	mov	w2, 1
	b	.L196
.L201:
	mov	w2, 0
.L196:
	add	x19, x19, 1
	b	.L197
.L202:
	mov	w2, 0
.L197:
	mov	w0, 0
	b	.L198
.L199:
	lsl	w1, w0, 2
	add	w1, w1, w0
	lsl	w0, w1, 1
	add	x19, x19, 1
	ldrb	w1, [x19, -1]
	sub	w1, w1, #48
	sub	w0, w0, w1
.L198:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L199
	cbnz	w2, .L200
	neg	w0, w0
.L200:
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
	b	.L205
.L206:
	add	x19, x19, 1
.L205:
	ldrb	w0, [x19]
	bl	isspace
	cbnz	w0, .L206
	ldrb	w0, [x19]
	cmp	w0, 43
	beq	.L212
	cmp	w0, 45
	bne	.L213
	mov	w2, 1
	b	.L207
.L212:
	mov	w2, 0
.L207:
	add	x19, x19, 1
	b	.L208
.L213:
	mov	w2, 0
.L208:
	mov	x0, 0
	b	.L209
.L210:
	lsl	x1, x0, 2
	add	x1, x1, x0
	lsl	x0, x1, 1
	add	x19, x19, 1
	ldrb	w1, [x19, -1]
	sub	w1, w1, #48
	sub	x0, x0, w1, sxtw
.L209:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L210
	cbnz	w2, .L211
	neg	x0, x0
.L211:
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
	b	.L216
.L217:
	add	x19, x19, 1
.L216:
	ldrb	w0, [x19]
	bl	isspace
	cbnz	w0, .L217
	ldrb	w0, [x19]
	cmp	w0, 43
	beq	.L223
	cmp	w0, 45
	bne	.L224
	mov	w2, 1
	b	.L218
.L223:
	mov	w2, 0
.L218:
	add	x19, x19, 1
	b	.L219
.L224:
	mov	w2, 0
.L219:
	mov	x0, 0
	b	.L220
.L221:
	lsl	x1, x0, 2
	add	x1, x1, x0
	lsl	x0, x1, 1
	add	x19, x19, 1
	ldrb	w1, [x19, -1]
	sub	w1, w1, #48
	sub	x0, x0, w1, sxtw
.L220:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L221
	cbnz	w2, .L222
	neg	x0, x0
.L222:
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
	b	.L227
.L231:
	lsr	x20, x19, 1
	madd	x20, x20, x21, x22
	mov	x1, x20
	mov	x0, x24
	blr	x23
	tbz	w0, #31, .L228
	lsr	x19, x19, 1
	b	.L227
.L228:
	cmp	w0, 0
	ble	.L232
	add	x22, x20, x21
	sub	x0, x19, #1
	sub	x19, x0, x19, lsr 1
.L227:
	cbnz	x19, .L231
	mov	x0, 0
	b	.L230
.L232:
	mov	x0, x20
.L230:
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
	b	.L234
.L237:
	asr	w19, w20, 1
	sxtw	x19, w19
	madd	x19, x19, x22, x21
	mov	x2, x23
	mov	x1, x19
	mov	x0, x25
	blr	x24
	cbz	w0, .L238
	cmp	w0, 0
	ble	.L236
	add	x21, x19, x22
	sub	w20, w20, #1
.L236:
	asr	w20, w20, 1
.L234:
	cbnz	w20, .L237
	mov	x0, 0
	b	.L235
.L238:
	mov	x0, x19
.L235:
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
	mov	x0, 0
	bfi	x0, x2, 0, 32
	bfi	x0, x1, 32, 32
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
	mov	x3, x0
	mov	x2, x1
	sdiv	x4, x3, x2
	mov	x0, 0
	mov	x1, 0
	mov	x0, x4
	msub	x1, x4, x2, x3
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
	mov	x3, x0
	mov	x2, x1
	sdiv	x4, x3, x2
	mov	x0, 0
	mov	x1, 0
	mov	x0, x4
	msub	x1, x4, x2, x3
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
	mov	x3, x0
	mov	x2, x1
	sdiv	x4, x3, x2
	mov	x0, 0
	mov	x1, 0
	mov	x0, x4
	msub	x1, x4, x2, x3
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
	b	.L247
.L249:
	add	x0, x0, 4
.L247:
	ldr	w2, [x0]
	cbz	w2, .L248
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L249
.L248:
	ldr	w1, [x0]
	cbnz	w1, .L250
	mov	x0, 0
.L250:
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
	b	.L253
.L255:
	add	x0, x0, 4
	add	x1, x1, 4
.L253:
	ldr	w3, [x0]
	ldr	w2, [x1]
	cmp	w3, w2
	bne	.L254
	ldr	w2, [x0]
	cbz	w2, .L254
	ldr	w2, [x1]
	cbnz	w2, .L255
.L254:
	ldr	w3, [x0]
	ldr	w2, [x1]
	cmp	w3, w2
	bcc	.L257
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	cset	w0, hi
	b	.L256
.L257:
	mov	w0, -1
.L256:
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
.L259:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	sub	x3, x0, #4
	ldr	w3, [x3, x2]
	cbnz	w3, .L259
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
	b	.L261
.L262:
	add	x1, x1, 4
.L261:
	ldr	w2, [x1]
	cbnz	w2, .L262
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
	b	.L264
.L266:
	sub	x2, x2, #1
	add	x0, x0, 4
	add	x1, x1, 4
.L264:
	cbz	x2, .L265
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, w3
	bne	.L265
	ldr	w3, [x0]
	cbz	w3, .L265
	ldr	w3, [x1]
	cbnz	w3, .L266
.L265:
	cbz	x2, .L268
	ldr	w3, [x0]
	ldr	w2, [x1]
	cmp	w3, w2
	bcc	.L269
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	cset	w0, hi
	b	.L267
.L268:
	mov	w0, 0
	b	.L267
.L269:
	mov	w0, -1
.L267:
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
	b	.L271
.L273:
	sub	x2, x2, #1
	add	x0, x0, 4
.L271:
	cbz	x2, .L272
	ldr	w3, [x0]
	cmp	w1, w3
	bne	.L273
.L272:
	cbnz	x2, .L274
	mov	x0, 0
.L274:
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
	b	.L277
.L279:
	sub	x2, x2, #1
	add	x0, x0, 4
	add	x1, x1, 4
.L277:
	cbz	x2, .L278
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, w3
	beq	.L279
.L278:
	cbz	x2, .L281
	ldr	w3, [x0]
	ldr	w2, [x1]
	cmp	w3, w2
	bcc	.L282
	ldr	w2, [x0]
	ldr	w0, [x1]
	cmp	w2, w0
	cset	w0, hi
	b	.L280
.L281:
	mov	w0, 0
	b	.L280
.L282:
	mov	w0, -1
.L280:
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
	b	.L284
.L285:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
.L284:
	cmp	x3, x2
	bne	.L285
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
	beq	.L287
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcc	.L288
	mov	x3, 0
	b	.L289
.L290:
	ldr	w3, [x1, x2, lsl 2]
	str	w3, [x0, x2, lsl 2]
.L288:
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L290
	b	.L287
.L291:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
.L289:
	cmp	x3, x2
	bne	.L291
.L287:
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
	b	.L293
.L294:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
.L293:
	cmp	x3, x2
	bne	.L294
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
	bcs	.L296
	add	x0, x0, x2
	add	x1, x1, x2
	mov	x4, x2
	b	.L297
.L298:
	neg	x3, x2
	sub	x5, x0, x2
	sub	x5, x5, #1
	ldrb	w5, [x5, x4]
	add	x3, x1, x3
	sub	x3, x3, #1
	strb	w5, [x3, x4]
	sub	x4, x4, #1
.L297:
	cbnz	x4, .L298
	b	.L295
.L296:
	cmp	x0, x1
	bne	.L302
	b	.L295
.L301:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	b	.L300
.L302:
	mov	x3, 0
.L300:
	cmp	x3, x2
	bne	.L301
.L295:
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
	and	w0, w0, 65535
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
	and	w0, w0, 65535
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
	and	w0, w0, 255
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
	and	w0, w0, 255
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
	uxtw	x1, w0
	lsr	w2, w0, 24
	and	w1, w1, 16711680
	orr	w1, w2, w1, lsr 8
	and	w2, w0, 65280
	lsl	w0, w0, 24
	orr	w0, w0, w2, lsl 8
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
	b	.L317
.L320:
	lsr	w2, w0, w1
	tbz	x2, 0, .L318
	add	w0, w1, 1
	b	.L319
.L318:
	add	w1, w1, 1
.L317:
	cmp	w1, 32
	bne	.L320
	mov	w0, 0
.L319:
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
	cbz	w0, .L325
	mov	w1, 1
	b	.L323
.L324:
	asr	w0, w0, 1
	add	w1, w1, 1
.L323:
	tbz	x0, 0, .L324
	mov	w0, w1
	b	.L322
.L325:
	mov	w0, 0
.L322:
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
	mvni	v31.2s, 0x80, lsl 16
	fcmpe	s0, s31
	bmi	.L329
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	bgt	.L331
	b	.L332
.L331:
	mov	w0, 1
	b	.L327
.L329:
	mov	w0, 1
	b	.L327
.L332:
	mov	w0, 0
.L327:
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
	fcmpe	d0, d31
	bmi	.L336
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	bgt	.L338
	b	.L339
.L338:
	mov	w0, 1
	b	.L334
.L336:
	mov	w0, 1
	b	.L334
.L339:
	mov	w0, 0
.L334:
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
	tbnz	w0, #31, .L343
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	ble	.L346
	mov	w0, 1
	b	.L341
.L343:
	mov	w0, 1
	b	.L341
.L346:
	mov	w0, 0
.L341:
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
	bvs	.L349
	fadd	s31, s0, s0
	fcmp	s0, s31
	beq	.L349
	tbz	w0, #31, .L353
	fmov	s31, 5.0e-1
	b	.L352
.L353:
	fmov	s31, 2.0e+0
.L352:
	tbz	x0, 0, .L351
	fmul	s0, s0, s31
.L351:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L349
	fmul	s31, s31, s31
	b	.L352
.L349:
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
	bvs	.L355
	fadd	d31, d0, d0
	fcmp	d0, d31
	beq	.L355
	tbz	w0, #31, .L359
	fmov	d31, 5.0e-1
	b	.L358
.L359:
	fmov	d31, 2.0e+0
.L358:
	tbz	x0, 0, .L357
	fmul	d0, d0, d31
.L357:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L355
	fmul	d31, d31, d31
	b	.L358
.L355:
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
	mov	v31.16b, v0.16b
	mov	w19, w0
	str	q31, [sp, 32]
	mov	v1.16b, v31.16b
	bl	__unordtf2
	cbnz	w0, .L361
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 32]
	bl	__netf2
	cbz	w0, .L361
	tbz	w19, #31, .L366
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q31, [x0]
	str	q31, [sp, 48]
	b	.L365
.L366:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q31, [x0]
	str	q31, [sp, 48]
.L365:
	tbz	x19, 0, .L364
	ldp	q0, q1, [sp, 32]
	bl	__multf3
	str	q0, [sp, 32]
.L364:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L361
	ldr	q1, [sp, 48]
	mov	v0.16b, v1.16b
	bl	__multf3
	str	q0, [sp, 48]
	b	.L365
.L361:
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
	b	.L369
.L370:
	ldrb	w5, [x1, x3]
	ldrb	w4, [x0, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L369:
	cmp	x3, x2
	bne	.L370
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
	add	x3, x21, x0
	b	.L372
.L374:
	add	x20, x20, 1
	add	x3, x3, 1
	sub	x19, x19, #1
.L372:
	cbz	x19, .L373
	ldrb	w0, [x20]
	strb	w0, [x3]
	and	w0, w0, 255
	cbnz	w0, .L374
.L373:
	cbnz	x19, .L375
	strb	wzr, [x3]
.L375:
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
	b	.L377
.L379:
	add	x0, x0, 1
.L377:
	cmp	x0, x1
	beq	.L378
	ldrb	w3, [x2, x0]
	cbnz	w3, .L379
.L378:
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
	b	.L381
.L383:
	add	x2, x2, 1
	ldrb	w4, [x2, -1]
	ldrb	w3, [x0]
	cmp	w4, w3
	beq	.L382
	b	.L384
.L386:
	mov	x2, x1
.L384:
	ldrb	w3, [x2]
	cbnz	w3, .L383
	add	x0, x0, 1
.L381:
	ldrb	w2, [x0]
	cbnz	w2, .L386
	mov	x0, 0
.L382:
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
.L389:
	ldrb	w3, [x2]
	cmp	w1, w3
	bne	.L388
	mov	x0, x2
.L388:
	add	x2, x2, 1
	ldrb	w3, [x2, -1]
	cbnz	w3, .L389
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
	mov	x0, x20
	bl	strlen
	mov	x21, x0
	cbz	x21, .L395
	ldrb	w22, [x20]
	b	.L393
.L394:
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	strncmp
	cbz	w0, .L396
	add	x19, x19, 1
.L393:
	mov	w1, w22
	mov	x0, x19
	bl	strchr
	mov	x19, x0
	cbnz	x19, .L394
	mov	x0, 0
	b	.L392
.L395:
	mov	x0, x19
	b	.L392
.L396:
	mov	x0, x19
.L392:
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
	bmi	.L406
	b	.L398
.L406:
	fcmpe	d1, #0.0
	bgt	.L400
.L398:
	fcmpe	d0, #0.0
	bgt	.L407
	b	.L401
.L407:
	fcmpe	d1, #0.0
	bmi	.L400
	b	.L401
.L400:
	fneg	d0, d0
.L401:
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
	mov	x21, x2
	mov	x20, x3
	sub	x22, x1, x20
	add	x22, x19, x22
	cbz	x20, .L415
	cmp	x1, x20
	bcc	.L416
	b	.L412
.L414:
	ldrb	w1, [x19]
	ldrb	w0, [x21]
	cmp	w1, w0
	bne	.L413
	add	x0, x19, 1
	sub	x2, x20, #1
	add	x1, x21, 1
	bl	memcmp
	cbz	w0, .L417
.L413:
	add	x19, x19, 1
.L412:
	cmp	x19, x22
	bls	.L414
	mov	x0, 0
	b	.L411
.L415:
	mov	x0, x19
	b	.L411
.L416:
	mov	x0, 0
	b	.L411
.L417:
	mov	x0, x19
.L411:
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
	bmi	.L432
	b	.L433
.L432:
	fneg	d0, d0
	mov	w2, 1
	b	.L420
.L433:
	mov	w2, 0
.L420:
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L430
	b	.L434
.L424:
	add	w1, w1, 1
	fmov	d31, 5.0e-1
	fmul	d0, d0, d31
	b	.L422
.L430:
	mov	w1, 0
.L422:
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L424
	b	.L425
.L434:
	fcmp	d0, #0.0
	cset	w1, ne
	fmov	d31, 5.0e-1
	fcmpe	d0, d31
	ccmp	w1, 0, 4, mi
	bne	.L431
	mov	w1, 0
	b	.L425
.L427:
	sub	w1, w1, #1
	fadd	d0, d0, d0
	b	.L426
.L431:
	mov	w1, 0
.L426:
	fmov	d31, 5.0e-1
	fcmpe	d0, d31
	bmi	.L427
.L425:
	str	w1, [x0]
	cbz	w2, .L428
	fneg	d0, d0
.L428:
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
	b	.L436
.L438:
	tbz	x2, 0, .L437
	add	x0, x0, x1
.L437:
	lsl	x1, x1, 1
	lsr	x2, x2, 1
.L436:
	cbnz	x2, .L438
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
	b	.L440
.L442:
	lsl	w1, w1, 1
	lsl	w3, w3, 1
.L440:
	cmp	w1, w0
	cset	w5, cc
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L447
	tbz	w1, #31, .L442
	mov	w4, 0
	b	.L444
.L445:
	cmp	w0, w1
	bcc	.L443
	sub	w0, w0, w1
	orr	w4, w4, w3
.L443:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	b	.L444
.L447:
	mov	w4, 0
.L444:
	cbnz	w3, .L445
	cbnz	x2, .L446
	mov	w0, w4
.L446:
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
	ands	w0, w0, 255
	beq	.L451
	lsl	w0, w0, 8
	clz	w0, w0
	sub	w0, w0, #1
	b	.L450
.L451:
	mov	w0, 7
.L450:
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
	tbz	x0, #63, .L453
	mvn	x0, x0
.L453:
	cbz	x0, .L455
	clz	x0, x0
	sub	w0, w0, #1
	b	.L454
.L455:
	mov	w0, 63
.L454:
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
	b	.L457
.L459:
	tbz	x2, 0, .L458
	add	w0, w0, w1
.L458:
	lsr	w2, w2, 1
	lsl	w1, w1, 1
.L457:
	cbnz	w2, .L459
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
	bcc	.L461
	add	x4, x1, w2, uxtw
	cmp	x4, x0
	bcs	.L462
.L461:
	lsl	w5, w5, 3
	mov	x4, 0
	b	.L463
.L464:
	ldr	x6, [x1, x4]
	str	x6, [x0, x4]
	add	x4, x4, 8
.L463:
	cmp	x4, x5
	bne	.L464
	uxtw	x3, w3
	b	.L465
.L466:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L465:
	cmp	w2, w3
	bhi	.L466
	b	.L460
.L468:
	uxtw	x3, w2
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
.L462:
	sub	w2, w2, #1
	cmn	w2, #1
	bne	.L468
.L460:
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
	lsr	w4, w2, 1
	cmp	x0, x1
	bcc	.L470
	add	x3, x1, w2, uxtw
	cmp	x3, x0
	bcs	.L471
.L470:
	lsl	w4, w4, 1
	mov	x3, 0
	b	.L472
.L473:
	ldrsh	w5, [x1, x3]
	strh	w5, [x0, x3]
	add	x3, x3, 2
.L472:
	cmp	x3, x4
	bne	.L473
	tbz	x2, 0, .L469
	sub	w2, w2, #1
	ldrb	w1, [x1, x2]
	strb	w1, [x0, x2]
	b	.L469
.L475:
	uxtw	x3, w2
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
.L471:
	sub	w2, w2, #1
	cmn	w2, #1
	bne	.L475
.L469:
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
	lsr	w5, w2, 2
	and	w3, w2, -4
	cmp	x0, x1
	bcc	.L477
	add	x4, x1, w2, uxtw
	cmp	x4, x0
	bcs	.L478
.L477:
	lsl	w5, w5, 2
	mov	x4, 0
	b	.L479
.L480:
	ldr	w6, [x1, x4]
	str	w6, [x0, x4]
	add	x4, x4, 4
.L479:
	cmp	x4, x5
	bne	.L480
	uxtw	x3, w3
	b	.L481
.L482:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
.L481:
	cmp	w2, w3
	bhi	.L482
	b	.L476
.L484:
	uxtw	x3, w2
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
.L478:
	sub	w2, w2, #1
	cmn	w2, #1
	bne	.L484
.L476:
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
	b	.L492
.L494:
	mov	w1, 15
	sub	w1, w1, w0
	asr	w1, w2, w1
	tbnz	x1, 0, .L493
	add	w0, w0, 1
.L492:
	cmp	w0, 16
	bne	.L494
.L493:
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
	and	w1, w0, 65535
	mov	w0, 0
	b	.L496
.L498:
	asr	w2, w1, w0
	tbnz	x2, 0, .L497
	add	w0, w0, 1
.L496:
	cmp	w0, 16
	bne	.L498
.L497:
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
	bge	.L503
	b	.L504
.L503:
	movi	v31.2s, 0x47, lsl 24
	fsub	s0, s0, s31
	fcvtzs	x0, s0
	add	x0, x0, 32768
	b	.L502
.L504:
	fcvtzs	x0, s0
.L502:
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
	and	w0, w0, 65535
	mov	w1, 0
	mov	w2, 0
	b	.L506
.L508:
	asr	w3, w0, w2
	tbz	x3, 0, .L507
	add	w1, w1, 1
.L507:
	add	w2, w2, 1
.L506:
	cmp	w2, 16
	bne	.L508
	and	w0, w1, 1
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
	and	w2, w0, 65535
	mov	w0, 0
	mov	w1, 0
	b	.L510
.L512:
	asr	w3, w2, w1
	tbz	x3, 0, .L511
	add	w0, w0, 1
.L511:
	add	w1, w1, 1
.L510:
	cmp	w1, 16
	bne	.L512
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
	b	.L514
.L516:
	tbz	x2, 0, .L515
	add	w0, w0, w1
.L515:
	lsr	w2, w2, 1
	lsl	w1, w1, 1
.L514:
	cbnz	w2, .L516
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
	cbz	w0, .L522
	mov	w2, 0
	b	.L519
.L521:
	tbz	x1, 0, .L520
	add	w2, w2, w0
.L520:
	lsl	w0, w0, 1
	lsr	w1, w1, 1
.L519:
	cbnz	w1, .L521
	mov	w0, w2
	b	.L518
.L522:
	mov	w0, 0
.L518:
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
	b	.L524
.L526:
	lsl	w1, w1, 1
	lsl	w3, w3, 1
.L524:
	cmp	w1, w0
	cset	w5, cc
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L531
	tbz	w1, #31, .L526
	mov	w4, 0
	b	.L528
.L529:
	cmp	w0, w1
	bcc	.L527
	sub	w0, w0, w1
	orr	w4, w4, w3
.L527:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	b	.L528
.L531:
	mov	w4, 0
.L528:
	cbnz	w3, .L529
	cbnz	w2, .L530
	mov	w0, w4
.L530:
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
	fcmpe	s0, s1
	bmi	.L535
	fcmpe	s0, s1
	bgt	.L536
	mov	w0, 0
	b	.L534
.L535:
	mov	w0, -1
	b	.L534
.L536:
	mov	w0, 1
.L534:
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
	fcmpe	d0, d1
	bmi	.L539
	fcmpe	d0, d1
	bgt	.L540
	mov	w0, 0
	b	.L538
.L539:
	mov	w0, -1
	b	.L538
.L540:
	mov	w0, 1
.L538:
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
	tbz	w1, #31, .L549
	neg	w1, w1
	mov	w4, 1
	b	.L544
.L549:
	mov	w4, 0
.L544:
	mov	w2, 0
	mov	w3, 0
	b	.L545
.L547:
	tbz	x1, 0, .L546
	add	w2, w2, w0
.L546:
	lsl	w0, w0, 1
	asr	w1, w1, 1
	add	w3, w3, 1
	and	w3, w3, 255
.L545:
	cmp	w1, 0
	cset	w5, ne
	cmp	w3, 31
	ccmp	w5, 0, 4, ls
	bne	.L547
	cbz	w4, .L550
	neg	w0, w2
	b	.L548
.L550:
	mov	w0, w2
.L548:
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
	tbz	x0, #63, .L555
	neg	x0, x0
	mov	w19, 1
	b	.L552
.L555:
	mov	w19, 0
.L552:
	tbz	x1, #63, .L553
	neg	x1, x1
	eor	w19, w19, 1
.L553:
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
	cbz	w19, .L554
	neg	x0, x0
.L554:
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
	tbz	x0, #63, .L560
	neg	x0, x0
	mov	w19, 1
	b	.L557
.L560:
	mov	w19, 0
.L557:
	tbz	x1, #63, .L558
	neg	x1, x1
.L558:
	mov	w2, 1
	bl	__udivmodsi4
	uxtw	x0, w0
	cbz	w19, .L559
	neg	x0, x0
.L559:
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
	b	.L562
.L564:
	ubfiz	w1, w1, 1, 15
	ubfiz	w3, w3, 1, 15
.L562:
	cmp	w1, w0
	cset	w5, cc
	cmp	w3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L569
	tbz	x1, 15, .L564
	mov	w4, 0
	b	.L566
.L567:
	cmp	w0, w1
	bcc	.L565
	sub	w0, w0, w1
	and	w0, w0, 65535
	orr	w4, w4, w3
.L565:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	b	.L566
.L569:
	mov	w4, 0
.L566:
	cbnz	w3, .L567
	cbnz	w2, .L568
	mov	w0, w4
.L568:
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
	b	.L572
.L574:
	lsl	x1, x1, 1
	lsl	x3, x3, 1
.L572:
	cmp	x1, x0
	cset	w5, cc
	cmp	x3, 0
	cset	w4, ne
	cmp	w5, 0
	ccmp	w4, 0, 4, ne
	beq	.L579
	tbz	x1, 31, .L574
	mov	x4, 0
	b	.L576
.L577:
	cmp	x0, x1
	bcc	.L575
	sub	x0, x0, x1
	orr	x4, x4, x3
.L575:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	b	.L576
.L579:
	mov	x4, 0
.L576:
	cbnz	x3, .L577
	cbnz	w2, .L578
	mov	x0, x4
.L578:
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
	tbz	x1, 5, .L582
	mov	x0, 0
	sub	w1, w1, #32
	lsl	w2, w2, w1
	bfi	x0, x2, 32, 32
	b	.L584
.L582:
	cbz	w1, .L584
	mov	w3, w2
	lsl	w4, w3, w1
	mov	x0, 0
	bfi	x0, x4, 0, 32
	asr	x2, x2, 32
	lsl	w2, w2, w1
	neg	w1, w1
	lsr	w3, w3, w1
	orr	w3, w3, w2
	bfi	x0, x3, 32, 32
.L584:
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
	mov	x6, x0
	mov	x7, x1
	tbz	x2, 6, .L587
	mov	x4, 0
	mov	x5, 0
	sub	w2, w2, #64
	lsl	x6, x6, x2
	mov	x5, x6
	b	.L588
.L587:
	cbz	w2, .L589
	mov	x0, x6
	mov	x4, 0
	mov	x5, 0
	lsl	x4, x0, x2
	lsl	x1, x7, x2
	neg	w2, w2
	lsr	x0, x0, x2
	orr	x0, x0, x1
	mov	x5, x0
.L588:
	mov	x0, x4
	mov	x1, x5
.L589:
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
	mov	x3, x0
	tbz	x1, 5, .L592
	asr	x2, x3, 32
	asr	x3, x3, 63
	mov	x0, 0
	bfi	x0, x3, 32, 32
	sub	w1, w1, #32
	asr	w1, w2, w1
	bfi	x0, x1, 0, 32
	b	.L594
.L592:
	cbz	w1, .L594
	asr	x2, x3, 32
	asr	w4, w2, w1
	mov	x0, 0
	bfi	x0, x4, 32, 32
	neg	w4, w1
	lsl	w2, w2, w4
	lsr	w3, w3, w1
	orr	w2, w2, w3
	bfi	x0, x2, 0, 32
.L594:
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
	mov	x6, x0
	mov	x7, x1
	tbz	x2, 6, .L597
	mov	x0, x7
	mov	x4, 0
	mov	x5, 0
	asr	x5, x0, 63
	sub	w2, w2, #64
	asr	x0, x0, x2
	mov	x4, x0
	b	.L598
.L597:
	cbz	w2, .L599
	mov	x0, x7
	mov	x4, 0
	mov	x5, 0
	asr	x5, x0, x2
	neg	w1, w2
	lsl	x0, x0, x1
	lsr	x6, x6, x2
	orr	x4, x0, x6
.L598:
	mov	x0, x4
	mov	x1, x5
.L599:
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
	bhi	.L608
	mov	w1, 16
	b	.L604
.L608:
	mov	w1, 0
.L604:
	mov	w2, 16
	sub	w2, w2, w1
	lsr	w0, w0, w2
	mov	w2, w1
	tst	w0, 65280
	bne	.L609
	mov	w1, 8
	b	.L605
.L609:
	mov	w1, 0
.L605:
	mov	w3, 8
	sub	w3, w3, w1
	lsr	w0, w0, w3
	add	w3, w1, w2
	tst	w0, 240
	bne	.L610
	mov	w1, 4
	b	.L606
.L610:
	mov	w1, 0
.L606:
	mov	w2, 4
	sub	w2, w2, w1
	lsr	w0, w0, w2
	mov	w2, w1
	tst	w0, 12
	bne	.L611
	mov	w1, 2
	b	.L607
.L611:
	mov	w1, 0
.L607:
	mov	w4, 2
	sub	w5, w4, w1
	lsr	w0, w0, w5
	add	w2, w1, w2
	tst	x0, 2
	cset	w1, eq
	sub	w4, w4, w0
	madd	w0, w1, w4, w3
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
	mov	x4, x0
	mov	x5, x1
	mov	x1, x5
	cmp	x1, 0
	cset	w2, eq
	sbfx	x2, x2, 0, 1
	bic	x1, x1, x2
	and	x0, x2, x4
	orr	x0, x1, x0
	clz	x0, x0
	and	w2, w2, 64
	add	w0, w0, w2
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
	lsr	x3, x0, 32
	lsr	x2, x1, 32
	cmp	w3, w2
	blt	.L615
	cmp	w3, w2
	bgt	.L616
	cmp	w0, w1
	bcc	.L617
	cmp	w0, w1
	bhi	.L618
	mov	w0, 1
	b	.L614
.L615:
	mov	w0, 0
	b	.L614
.L616:
	mov	w0, 2
	b	.L614
.L617:
	mov	w0, 0
	b	.L614
.L618:
	mov	w0, 2
.L614:
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
	mov	x5, x1
	cmp	x5, x3
	blt	.L622
	cmp	x5, x3
	bgt	.L623
	cmp	x4, x2
	bcc	.L624
	cmp	x4, x2
	bhi	.L625
	mov	w0, 1
	b	.L621
.L622:
	mov	w0, 0
	b	.L621
.L623:
	mov	w0, 2
	b	.L621
.L624:
	mov	w0, 0
	b	.L621
.L625:
	mov	w0, 2
.L621:
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
	bne	.L631
	mov	w1, 16
	b	.L627
.L631:
	mov	w1, 0
.L627:
	lsr	w0, w0, w1
	mov	w2, w1
	tst	w0, 255
	bne	.L632
	mov	w1, 8
	b	.L628
.L632:
	mov	w1, 0
.L628:
	lsr	w0, w0, w1
	add	w1, w1, w2
	tst	x0, 15
	bne	.L633
	mov	w2, 4
	b	.L629
.L633:
	mov	w2, 0
.L629:
	lsr	w0, w0, w2
	mov	w3, w2
	tst	x0, 3
	bne	.L634
	mov	w2, 2
	b	.L630
.L634:
	mov	w2, 0
.L630:
	lsr	w0, w0, w2
	and	w0, w0, 3
	add	w2, w2, w3
	mvn	w3, w0
	mov	w4, 2
	sub	w0, w4, w0, lsr 1
	sbfx	x3, x3, 0, 1
	and	w0, w0, w3
	add	w0, w1, w0
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
	mov	x4, x0
	mov	x5, x1
	mov	x1, x4
	cmp	x1, 0
	cset	w2, eq
	sbfx	x2, x2, 0, 1
	and	x3, x2, x5
	bic	x0, x1, x2
	orr	x0, x0, x3
	rbit	x0, x0
	clz	x0, x0
	and	w2, w2, 64
	add	w0, w0, w2
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
	mov	x2, x0
	mov	x3, x1
	cbnz	x2, .L637
	cbz	x3, .L639
	rbit	x0, x3
	clz	x0, x0
	add	w0, w0, 65
	b	.L638
.L637:
	rbit	x2, x2
	clz	x2, x2
	add	w0, w2, 1
	b	.L638
.L639:
	mov	w0, 0
.L638:
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
	tbz	x1, 5, .L641
	mov	x0, 0
	lsr	x2, x2, 32
	sub	w1, w1, #32
	lsr	w2, w2, w1
	bfi	x0, x2, 0, 32
	b	.L643
.L641:
	cbz	w1, .L643
	lsr	x3, x2, 32
	lsr	w4, w3, w1
	mov	x0, 0
	bfi	x0, x4, 32, 32
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w3, w3, w2
	bfi	x0, x3, 0, 32
.L643:
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
	mov	x6, x0
	mov	x7, x1
	tbz	x2, 6, .L646
	mov	x4, 0
	mov	x5, 0
	sub	w2, w2, #64
	lsr	x4, x7, x2
	b	.L647
.L646:
	cbz	w2, .L648
	mov	x0, x7
	mov	x4, 0
	mov	x5, 0
	lsr	x5, x0, x2
	neg	w1, w2
	lsl	x0, x0, x1
	lsr	x6, x6, x2
	orr	x4, x0, x6
.L647:
	mov	x0, x4
	mov	x1, x5
.L648:
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
	and	w4, w3, 65535
	and	w5, w1, 65535
	mul	w2, w4, w5
	mov	x0, 0
	bfi	x0, x2, 0, 32
	mov	w2, w0
	and	w6, w2, 65535
	bfi	x0, x6, 0, 32
	lsr	w3, w3, 16
	mul	w5, w3, w5
	add	w2, w5, w2, lsr 16
	add	w5, w0, w2, lsl 16
	bfi	x0, x5, 0, 32
	lsr	w2, w2, 16
	bfi	x0, x2, 32, 32
	mov	w2, w0
	and	w5, w2, 65535
	bfi	x0, x5, 0, 32
	lsr	w1, w1, 16
	mul	w4, w4, w1
	add	w2, w4, w2, lsr 16
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
	mov	w22, w19
	mov	w21, w20
	mov	w1, w20
	mov	w0, w19
	bl	__muldsi3
	mov	x1, x0
	mov	x0, x1
	asr	x1, x1, 32
	asr	x19, x19, 32
	asr	x20, x20, 32
	mul	w22, w22, w20
	madd	w21, w21, w19, w22
	add	w21, w21, w1
	bfi	x0, x21, 32, 32
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
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__mulddi3
	.type	__mulddi3, %function
__mulddi3:
.LFB151:
	.cfi_startproc
	and	x3, x0, 4294967295
	and	x6, x1, 4294967295
	mul	x2, x3, x6
	mov	x4, 0
	mov	x5, 0
	mov	x4, x2
	and	x7, x2, 4294967295
	mov	x4, x7
	lsr	x0, x0, 32
	mul	x6, x0, x6
	add	x2, x6, x2, lsr 32
	add	x4, x7, x2, lsl 32
	lsr	x2, x2, 32
	mov	x5, x2
	mov	x2, x4
	and	x6, x2, 4294967295
	mov	x4, x6
	lsr	x1, x1, 32
	mul	x3, x3, x1
	add	x2, x3, x2, lsr 32
	add	x4, x6, x2, lsl 32
	add	x2, x5, x2, lsr 32
	mov	x5, x2
	madd	x0, x0, x1, x2
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
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
	mov	x20, x0
	mov	x21, x1
	mov	x22, x2
	mov	x23, x3
	mov	x24, x20
	mov	x19, x22
	mov	x1, x22
	mov	x0, x20
	bl	__mulddi3
	mov	x2, x0
	mov	x3, x1
	mul	x24, x24, x23
	madd	x19, x19, x21, x24
	add	x19, x19, x1
	mov	x3, x19
	mov	x0, x2
	mov	x1, x3
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
	mov	x4, x0
	mov	x5, x1
	negs	x2, x4
	mov	x0, 0
	mov	x1, 0
	mov	x0, x2
	sbc	x1, xzr, x5
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
	eor	w1, w0, w0, lsr 16
	eor	w1, w1, w1, lsr 8
	eor	w1, w1, w1, lsr 4
	and	w1, w1, 15
	mov	w0, 27030
	asr	w0, w0, w1
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
	sub	x1, x0, x1
	and	x0, x1, -3689348814741910324
	and	x1, x1, 3689348814741910323
	add	x1, x1, x0, lsr 2
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
	add	w1, w1, w0, lsr 2
	add	w1, w1, w1, lsr 4
	and	w1, w1, 252645135
	add	w1, w1, w1, lsr 16
	add	w1, w1, w1, lsr 8
	and	w0, w1, 63
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
	mov	x8, x0
	mov	x9, x1
	mov	x2, 0
	mov	x3, 0
	lsr	x2, x8, 1
	orr	x2, x2, x9, lsl 63
	lsr	x3, x9, 1
	mov	x6, 0
	mov	x7, 0
	and	x6, x2, 6148914691236517205
	and	x7, x3, 6148914691236517205
	subs	x0, x8, x6
	mov	x4, 0
	mov	x5, 0
	mov	x4, x0
	sbc	x5, x9, x7
	mov	x2, x4
	mov	x3, x5
	mov	x6, 0
	mov	x7, 0
	lsr	x6, x4, 2
	orr	x6, x6, x5, lsl 62
	lsr	x7, x5, 2
	mov	x8, 0
	mov	x9, 0
	and	x8, x6, 3689348814741910323
	and	x9, x7, 3689348814741910323
	mov	x6, 0
	mov	x7, 0
	and	x6, x4, 3689348814741910323
	and	x7, x5, 3689348814741910323
	adds	x0, x8, x6
	adc	x6, x9, x7
	mov	x2, x0
	mov	x3, x6
	mov	x8, 0
	mov	x9, 0
	lsr	x8, x2, 4
	orr	x8, x8, x3, lsl 60
	lsr	x9, x3, 4
	adds	x0, x8, x2
	mov	x4, 0
	mov	x5, 0
	mov	x4, x0
	adc	x5, x6, x9
	and	x2, x4, 1085102592571150095
	and	x3, x5, 1085102592571150095
	mov	x0, 0
	mov	x1, 0
	mov	x0, x3
	mov	x1, 0
	add	x1, x0, x2
	lsr	x0, x1, 32
	add	w0, w0, w1
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
.L665:
	tbz	x0, 0, .L663
	fmul	d31, d31, d0
.L663:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L664
	fmul	d0, d0, d0
	b	.L665
.L664:
	cbz	w1, .L667
	fmov	d30, 1.0e+0
	fdiv	d0, d30, d31
	b	.L666
.L667:
	fmov	d0, d31
.L666:
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
.L671:
	tbz	x0, 0, .L669
	fmul	s31, s31, s0
.L669:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L670
	fmul	s0, s0, s0
	b	.L671
.L670:
	cbz	w1, .L673
	fmov	s30, 1.0e+0
	fdiv	s0, s30, s31
	b	.L672
.L673:
	fmov	s0, s31
.L672:
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
	lsr	x3, x0, 32
	lsr	x2, x1, 32
	cmp	w3, w2
	bcc	.L676
	cmp	w3, w2
	bhi	.L677
	cmp	w0, w1
	bcc	.L678
	cmp	w0, w1
	bhi	.L679
	mov	w0, 1
	b	.L675
.L676:
	mov	w0, 0
	b	.L675
.L677:
	mov	w0, 2
	b	.L675
.L678:
	mov	w0, 0
	b	.L675
.L679:
	mov	w0, 2
.L675:
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
	mov	x5, x1
	cmp	x5, x3
	bcc	.L683
	cmp	x5, x3
	bhi	.L684
	cmp	x4, x2
	bcc	.L685
	cmp	x4, x2
	bhi	.L686
	mov	w0, 1
	b	.L682
.L683:
	mov	w0, 0
	b	.L682
.L684:
	mov	w0, 2
	b	.L682
.L685:
	mov	w0, 0
	b	.L682
.L686:
	mov	w0, 2
.L682:
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
	.word	1073610752
	.align	4
.LC3:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.global	__multf3
	.global	__netf2
	.global	__addtf3
	.global	__extenddftf2
	.global	__gttf2
	.global	__lttf2
	.global	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
