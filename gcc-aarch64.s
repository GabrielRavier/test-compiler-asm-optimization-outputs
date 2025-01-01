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
	b	.L6
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
	cbz	x3, .L22
	.p2align 3,,7
.L18:
	ldrb	w4, [x1]
	strb	w4, [x0]
	cmp	w4, w2
	beq	.L28
	add	x1, x1, 1
	add	x0, x0, 1
	subs	x3, x3, #1
	bne	.L18
.L22:
	mov	x0, 0
	b	.L17
	.p2align 2,,3
.L28:
	add	x0, x0, 1
	cbz	x3, .L22
.L17:
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
	cbz	x2, .L35
	.p2align 3,,7
.L30:
	ldrb	w3, [x0]
	cmp	w3, w1
	beq	.L38
	add	x0, x0, 1
	subs	x2, x2, #1
	bne	.L30
.L35:
	mov	x0, 0
	b	.L29
	.p2align 2,,3
.L38:
	cbz	x2, .L35
.L29:
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
	cbz	x2, .L44
	.p2align 3,,7
.L40:
	ldrb	w4, [x0]
	ldrb	w3, [x1]
	cmp	w4, w3
	bne	.L50
	add	x0, x0, 1
	add	x1, x1, 1
	subs	x2, x2, #1
	bne	.L40
.L44:
	mov	w0, 0
	b	.L39
	.p2align 2,,3
.L50:
	cbz	x2, .L44
	sub	w0, w4, w3
.L39:
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
	cbz	x2, .L52
	bl	memcpy
.L52:
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
	and	w1, w1, 255
	sub	x2, x2, #1
	add	x2, x0, x2
	sub	x4, x0, #1
	.p2align 3,,7
.L58:
	cmp	x2, x4
	beq	.L61
	mov	x0, x2
	sub	x2, x2, #1
	ldrb	w3, [x0]
	cmp	w3, w1
	bne	.L58
	b	.L57
	.p2align 2,,3
.L61:
	mov	x0, 0
.L57:
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
	cbz	x2, .L63
	add	x3, x0, x2
	mov	x2, x0
	.p2align 3,,7
.L64:
	strb	w1, [x2], 1
	cmp	x3, x2
	bne	.L64
.L63:
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
	cbz	w2, .L70
	.p2align 3,,7
.L71:
	ldrb	w2, [x1, 1]!
	strb	w2, [x0, 1]!
	cbnz	w2, .L71
.L70:
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
	and	w1, w1, 255
	ldrb	w2, [x0]
	cbz	w2, .L76
	.p2align 3,,7
.L77:
	cmp	w2, w1
	beq	.L76
	ldrb	w2, [x0, 1]!
	cbnz	w2, .L77
.L76:
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
.L85:
	ldrb	w2, [x0]
	cmp	w2, w1
	beq	.L84
	add	x0, x0, 1
	cbnz	w2, .L85
	mov	x0, 0
.L84:
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
	bne	.L88
	mov	x2, 1
	.p2align 3,,7
.L89:
	ldrb	w3, [x0, x2]
	ldrb	w4, [x1, x2]
	add	x2, x2, 1
	cmp	w3, 0
	ccmp	w3, w4, 0, ne
	beq	.L89
.L88:
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
	cbz	w1, .L97
	mov	x1, x0
	.p2align 3,,7
.L96:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L96
.L95:
	sub	x0, x1, x0
	ret
	.p2align 2,,3
.L97:
	mov	x1, x0
	b	.L95
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
	cbz	x2, .L104
	ldrb	w4, [x0]
	cbz	w4, .L105
	sub	x6, x2, #1
	mov	x2, x1
	.p2align 3,,7
.L102:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x3, x3, x6
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x3, 0, 4, eq
	beq	.L101
	add	x2, x2, 1
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L102
.L101:
	ldrb	w0, [x2]
	sub	w0, w4, w0
.L99:
	ret
.L105:
	mov	x2, x1
	b	.L101
	.p2align 2,,3
.L104:
	mov	w0, 0
	b	.L99
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
	ble	.L109
	and	x2, x2, -2
	add	x3, x0, x2
	.p2align 3,,7
.L111:
	ldrb	w2, [x0, 1]
	strb	w2, [x1]
	ldrb	w2, [x0], 2
	strb	w2, [x1, 1]
	add	x1, x1, 2
	cmp	x0, x3
	bne	.L111
.L109:
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
	sub	w1, w0, #9
	cmp	w0, 32
	ccmp	w1, 4, 0, ne
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
	ccmp	w1, 31, 0, hi
	mov	w0, 1
	bls	.L123
	sub	w2, w1, #8192
	sub	w2, w2, #40
	mov	w0, 1
	cmp	w2, w0
	bls	.L123
	sub	w1, w1, #61440
	sub	w1, w1, #4089
	cmp	w1, 2
	cset	w0, ls
.L123:
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
	bls	.L134
	sub	w2, w0, #8192
	sub	w2, w2, #42
	mov	w0, 47061
	cmp	w2, w0
	mov	w0, 1
	mov	w2, 8231
	ccmp	w1, w2, 0, hi
	bls	.L128
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L128
	sub	w3, w1, #61440
	sub	w3, w3, #4092
	mov	w0, 0
	mov	w2, 3
	movk	w2, 0x10, lsl 16
	cmp	w3, w2
	bhi	.L128
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
	b	.L128
	.p2align 2,,3
.L134:
	add	w1, w0, 1
	and	w1, w1, 127
	cmp	w1, 32
	cset	w0, hi
.L128:
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
	bls	.L137
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	cset	w0, ls
.L135:
	ret
	.p2align 2,,3
.L137:
	mov	w0, 1
	b	.L135
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
	bvs	.L142
	fcmp	d1, d1
	bvs	.L143
	fcmpe	d0, d1
	bgt	.L145
	movi	d31, #0
	b	.L139
	.p2align 2,,3
.L145:
	fsub	d31, d0, d1
.L139:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L142:
	fmov	d31, d0
	b	.L139
	.p2align 2,,3
.L143:
	fmov	d31, d1
	b	.L139
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
	bvs	.L150
	fcmp	s1, s1
	bvs	.L151
	fcmpe	s0, s1
	bgt	.L153
	movi	v31.2s, #0
	b	.L147
	.p2align 2,,3
.L153:
	fsub	s31, s0, s1
.L147:
	fmov	s0, s31
	ret
	.p2align 2,,3
.L150:
	fmov	s31, s0
	b	.L147
	.p2align 2,,3
.L151:
	fmov	s31, s1
	b	.L147
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
	bvs	.L158
	fcmp	d1, d1
	bvs	.L155
	fmov	x0, d0
	lsr	x0, x0, 63
	fmov	x1, d1
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L157
	cmp	w0, 0
	fcsel	d0, d1, d0, ne
.L155:
	ret
	.p2align 2,,3
.L157:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	b	.L155
	.p2align 2,,3
.L158:
	fmov	d0, d1
	b	.L155
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
	bvs	.L164
	fcmp	s1, s1
	bvs	.L161
	fmov	w0, s0
	and	w0, w0, -2147483648
	fmov	w1, s1
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L163
	cmp	w0, 0
	fcsel	s0, s1, s0, ne
.L161:
	ret
	.p2align 2,,3
.L163:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	b	.L161
	.p2align 2,,3
.L164:
	fmov	s0, s1
	b	.L161
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
	cbnz	w0, .L175
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L174
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L169
	cbnz	w0, .L175
.L174:
	ldr	q0, [sp, 32]
	b	.L167
	.p2align 2,,3
.L169:
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L174
.L175:
	ldr	q0, [sp, 16]
.L167:
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
	bvs	.L180
	fcmp	d1, d1
	bvs	.L177
	fmov	x0, d0
	lsr	x0, x0, 63
	fmov	x1, d1
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L179
	cmp	w0, 0
	fcsel	d0, d0, d1, ne
.L177:
	ret
	.p2align 2,,3
.L179:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	b	.L177
	.p2align 2,,3
.L180:
	fmov	d0, d1
	b	.L177
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
	bvs	.L186
	fcmp	s1, s1
	bvs	.L183
	fmov	w0, s0
	and	w0, w0, -2147483648
	fmov	w1, s1
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L185
	cmp	w0, 0
	fcsel	s0, s0, s1, ne
.L183:
	ret
	.p2align 2,,3
.L185:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	b	.L183
	.p2align 2,,3
.L186:
	fmov	s0, s1
	b	.L183
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
	cbnz	w0, .L195
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L197
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ldr	x1, [sp, 24]
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L191
	cbnz	w0, .L197
.L195:
	ldr	q0, [sp, 16]
.L189:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L191:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L195
.L197:
	ldr	q0, [sp, 32]
	b	.L189
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
	cbz	w0, .L202
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	mov	x2, x0
	adrp	x4, .LANCHOR1
	add	x4, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L201:
	and	w3, w1, 63
	ldrb	w3, [x4, w3, uxtw]
	strb	w3, [x2], 1
	lsr	w1, w1, 6
	cbnz	w1, .L201
.L200:
	strb	wzr, [x2]
	ret
	.p2align 2,,3
.L202:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	mov	x2, x0
	b	.L200
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
	sub	w0, w0, #1
	adrp	x1, .LANCHOR0+8
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
	ldr	x0, [x1, 8]
	mov	x2, 32557
	movk	x2, 0x4c95, lsl 16
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
	cbz	x1, .L212
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L206
	str	x0, [x1, 8]
.L206:
	ret
	.p2align 2,,3
.L212:
	stp	xzr, xzr, [x0]
	b	.L206
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
	cbz	x1, .L214
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L214:
	ldr	x1, [x0, 8]
	cbz	x1, .L213
	ldr	x0, [x0]
	str	x0, [x1]
.L213:
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
	mov	x21, x0
	mov	x26, x1
	mov	x25, x2
	mov	x22, x3
	ldr	x27, [x2]
	cbz	x27, .L223
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x23, x4
	mov	x19, x1
	mov	x20, 0
	.p2align 3,,7
.L225:
	mov	x24, x19
	mov	x1, x19
	mov	x0, x21
	blr	x23
	cbz	w0, .L234
	add	x20, x20, 1
	add	x19, x19, x22
	cmp	x27, x20
	bne	.L225
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L223:
	add	x0, x27, 1
	str	x0, [x25]
	mov	x2, x22
	mov	x1, x21
	madd	x0, x22, x27, x26
	bl	memcpy
	mov	x24, x0
.L222:
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
	.p2align 2,,3
.L234:
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
	b	.L222
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
	str	x25, [sp, 64]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	ldr	x24, [x2]
	cbz	x24, .L236
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
	.p2align 3,,7
.L238:
	mov	x25, x19
	mov	x1, x19
	mov	x0, x21
	blr	x22
	cbz	w0, .L247
	add	x20, x20, 1
	add	x19, x19, x23
	cmp	x24, x20
	bne	.L238
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L236:
	mov	x25, 0
	b	.L235
	.p2align 2,,3
.L247:
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
.L235:
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	b	.L250
	.p2align 2,,3
.L251:
	add	x19, x19, 1
.L250:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L251
	mov	w2, 0
	cmp	w20, 43
	beq	.L252
	cmp	w20, 45
	bne	.L253
	mov	w2, 1
.L252:
	add	x19, x19, 1
.L253:
	ldrb	w1, [x19]
	sub	w1, w1, #48
	cmp	w1, 9
	bhi	.L255
	.p2align 3,,7
.L254:
	add	w0, w0, w0, lsl 2
	lsl	w0, w0, 1
	sub	w0, w0, w1
	ldrb	w1, [x19, 1]!
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L254
.L255:
	cmp	w2, 0
	csneg	w0, w0, w0, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	b	.L263
	.p2align 2,,3
.L264:
	add	x19, x19, 1
.L263:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L264
	cmp	w20, 43
	beq	.L265
	cmp	w20, 45
	bne	.L266
	mov	w0, 1
.L265:
	add	x19, x19, 1
.L266:
	ldrb	w2, [x19]
	sub	w2, w2, #48
	mov	x1, 0
	cmp	w2, 9
	bhi	.L268
	.p2align 3,,7
.L267:
	add	x1, x1, x1, lsl 2
	lsl	x1, x1, 1
	sub	x1, x1, w2, sxtw
	ldrb	w2, [x19, 1]!
	sub	w2, w2, #48
	cmp	w2, 9
	bls	.L267
.L268:
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
	.p2align 4,,11
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
	b	.L278
	.p2align 2,,3
.L279:
	add	x19, x19, 1
.L278:
	ldrb	w20, [x19]
	mov	w0, w20
	bl	isspace
	cbnz	w0, .L279
	cmp	w20, 43
	beq	.L280
	cmp	w20, 45
	bne	.L281
	mov	w0, 1
.L280:
	add	x19, x19, 1
.L281:
	ldrb	w2, [x19]
	sub	w2, w2, #48
	mov	x1, 0
	cmp	w2, 9
	bhi	.L283
	.p2align 3,,7
.L282:
	add	x1, x1, x1, lsl 2
	lsl	x1, x1, 1
	sub	x1, x1, w2, sxtw
	ldrb	w2, [x19, 1]!
	sub	w2, w2, #48
	cmp	w2, 9
	bls	.L282
.L283:
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
	cbz	x2, .L293
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	mov	x24, x0
	mov	x23, x1
	mov	x19, x2
	mov	x22, x3
	mov	x25, x4
	b	.L296
	.p2align 2,,3
.L297:
	mov	x19, x20
.L294:
	cbz	x19, .L304
.L296:
	lsr	x20, x19, 1
	madd	x21, x20, x22, x23
	mov	x1, x21
	mov	x0, x24
	blr	x25
	cmp	w0, 0
	blt	.L297
	ble	.L303
	add	x23, x21, x22
	sub	x19, x19, #1
	sub	x19, x19, x20
	b	.L294
	.p2align 2,,3
.L304:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L293:
	mov	x21, 0
	b	.L292
	.p2align 2,,3
.L303:
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L292:
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
	cbz	w2, .L306
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -8
	.cfi_offset 25, -16
	mov	x26, x0
	mov	x23, x1
	mov	x22, x3
	mov	x25, x4
	mov	x24, x5
	mov	w20, w2
	b	.L309
	.p2align 2,,3
.L308:
	mov	w20, w21
	cbz	w21, .L316
.L309:
	asr	w21, w20, 1
	sxtw	x19, w21
	madd	x19, x19, x22, x23
	mov	x2, x24
	mov	x1, x19
	mov	x0, x26
	blr	x25
	cmp	w0, 0
	cbz	w0, .L315
	ble	.L308
	add	x23, x19, x22
	sub	w20, w20, #1
	asr	w21, w20, 1
	b	.L308
	.p2align 2,,3
.L316:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L306:
	mov	x19, 0
	b	.L305
	.p2align 2,,3
.L315:
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L305:
	mov	x0, x19
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
.LFB55:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE55:
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
.LFB57:
	.cfi_startproc
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	ret
	.cfi_endproc
.LFE57:
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
	beq	.L325
	.p2align 3,,7
.L326:
	ldr	w2, [x0, 4]!
	cmp	w2, 0
	ccmp	w2, w1, 4, ne
	bne	.L326
.L325:
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
	beq	.L333
	mov	x2, 4
	.p2align 3,,7
.L334:
	ldr	w4, [x0, x2]
	ldr	w3, [x1, x2]
	add	x2, x2, 4
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	bne	.L334
.L333:
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
.L342:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L342
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
	cbz	w1, .L347
	mov	x1, x0
	.p2align 3,,7
.L346:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L346
.L345:
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
	.p2align 2,,3
.L347:
	mov	x1, x0
	b	.L345
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
	cbz	x2, .L354
	.p2align 3,,7
.L350:
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, 0
	ccmp	w4, w3, 0, ne
	ccmp	w3, 0, 4, eq
	beq	.L361
	add	x0, x0, 4
	add	x1, x1, 4
	subs	x2, x2, #1
	bne	.L350
.L354:
	mov	w0, 0
	b	.L349
	.p2align 2,,3
.L361:
	cbz	x2, .L354
	cmp	w4, w3
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L349:
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
	cbz	x2, .L368
	.p2align 3,,7
.L363:
	ldr	w3, [x0]
	cmp	w3, w1
	beq	.L371
	add	x0, x0, 4
	subs	x2, x2, #1
	bne	.L363
.L368:
	mov	x0, 0
	b	.L362
	.p2align 2,,3
.L371:
	cbz	x2, .L368
.L362:
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
	cbz	x2, .L377
	.p2align 3,,7
.L373:
	ldr	w4, [x0]
	ldr	w3, [x1]
	cmp	w4, w3
	bne	.L384
	add	x0, x0, 4
	add	x1, x1, 4
	subs	x2, x2, #1
	bne	.L373
.L377:
	mov	w0, 0
	b	.L372
	.p2align 2,,3
.L384:
	cbz	x2, .L377
	cmp	w4, w3
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L372:
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
	cbz	x2, .L386
	lsl	x2, x2, 2
	bl	memcpy
.L386:
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
	beq	.L392
	sub	x3, x0, x1
	cmp	x3, x2, lsl 2
	bcc	.L393
	mov	x3, 0
	cbz	x2, .L392
	.p2align 3,,7
.L394:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L394
	b	.L392
	.p2align 2,,3
.L393:
	cbz	x2, .L392
	sub	x2, x2, #1
	.p2align 3,,7
.L395:
	ldr	w3, [x1, x2, lsl 2]
	str	w3, [x0, x2, lsl 2]
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L395
.L392:
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
	cbz	x2, .L404
	mov	x3, 0
	.p2align 3,,7
.L405:
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L405
.L404:
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
	bcs	.L411
	cbz	x2, .L410
	sub	x0, x0, #1
	sub	x1, x1, #1
	.p2align 3,,7
.L413:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	subs	x2, x2, #1
	bne	.L413
.L410:
	ret
	.p2align 2,,3
.L411:
	beq	.L410
	cbz	x2, .L410
	mov	x3, 0
	.p2align 3,,7
.L414:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L414
	b	.L410
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
.LFB74:
	.cfi_startproc
	neg	w1, w1
	ror	x0, x0, x1
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.p2align 4,,11
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
	.p2align 4,,11
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
	.p2align 4,,11
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
	.p2align 4,,11
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
	.p2align 4,,11
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
	.p2align 3,,7
.L439:
	lsr	w2, w0, w1
	add	w1, w1, 1
	tbnz	x2, 0, .L441
	cmp	w1, 32
	bne	.L439
	mov	w0, 0
	b	.L436
	.p2align 2,,3
.L441:
	mov	w0, w1
.L436:
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
	cbz	w1, .L442
	and	w0, w1, 1
	tbnz	x1, 0, .L442
	mov	w0, 1
	.p2align 3,,7
.L444:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L444
.L442:
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
	mov	w0, 1
	mvni	v31.2s, 0x80, lsl 16
	fcmpe	s0, s31
	bmi	.L448
	mov	w0, 2139095039
	fmov	s31, w0
	fcmpe	s0, s31
	cset	w0, gt
.L448:
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
	mov	x1, -4503599627370497
	mov	w0, 1
	fmov	d31, x1
	fcmpe	d0, d31
	bmi	.L451
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
	cset	w0, gt
.L451:
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
	tbnz	w1, #31, .L454
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L454:
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
	.p2align 4,,11
	.global	ldexpf
	.type	ldexpf, %function
ldexpf:
.LFB89:
	.cfi_startproc
	fcmp	s0, s0
	bvs	.L463
	fadd	s1, s0, s0
	fcmp	s1, s0
	beq	.L463
	fmov	s30, 2.0e+0
	fmov	s31, 5.0e-1
	cmp	w0, 0
	fcsel	s31, s30, s31, ge
	b	.L466
	.p2align 2,,3
.L465:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L463
	fmul	s31, s31, s31
.L466:
	tbz	x0, 0, .L465
	fmul	s0, s0, s31
	b	.L465
	.p2align 2,,3
.L463:
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
	bvs	.L475
	fadd	d1, d0, d0
	fcmp	d1, d0
	beq	.L475
	fmov	d30, 2.0e+0
	fmov	d31, 5.0e-1
	cmp	w0, 0
	fcsel	d31, d30, d31, ge
	b	.L478
	.p2align 2,,3
.L477:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L475
	fmul	d31, d31, d31
.L478:
	tbz	x0, 0, .L477
	fmul	d0, d0, d31
	b	.L477
	.p2align 2,,3
.L475:
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
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	mov	w19, w0
	str	q0, [sp, 32]
	mov	v1.16b, v0.16b
	bl	__unordtf2
	cbnz	w0, .L487
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L487
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q1, [x0]
	tbz	w19, #31, .L491
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q1, [x0]
	b	.L491
	.p2align 2,,3
.L490:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L487
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
.L491:
	tbz	x19, 0, .L490
	str	q1, [sp, 48]
	ldr	q0, [sp, 32]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	q1, [sp, 48]
	b	.L490
	.p2align 2,,3
.L487:
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
	.p2align 4,,11
	.global	memxor
	.type	memxor, %function
memxor:
.LFB92:
	.cfi_startproc
	cbz	x2, .L502
	mov	x3, 0
	.p2align 3,,7
.L503:
	ldrb	w4, [x0, x3]
	ldrb	w5, [x1, x3]
	eor	w4, w4, w5
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x3, x2
	bne	.L503
.L502:
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
	cbz	x19, .L514
	.p2align 3,,7
.L509:
	ldrb	w1, [x20]
	strb	w1, [x2]
	cbz	w1, .L518
	add	x20, x20, 1
	add	x2, x2, 1
	subs	x19, x19, #1
	bne	.L509
	b	.L514
	.p2align 2,,3
.L518:
	cbnz	x19, .L512
.L514:
	strb	wzr, [x2]
.L512:
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
	.p2align 4,,11
	.global	strnlen
	.type	strnlen, %function
strnlen:
.LFB94:
	.cfi_startproc
	mov	x2, x0
	mov	x0, 0
	cbz	x1, .L519
.L520:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L522
.L519:
	ret
	.p2align 2,,3
.L522:
	add	x0, x0, 1
	cmp	x1, x0
	bne	.L520
	b	.L519
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
	cbz	w4, .L531
.L527:
	mov	x2, x1
	.p2align 3,,7
.L530:
	ldrb	w3, [x2]
	cbz	w3, .L533
	add	x2, x2, 1
	cmp	w3, w4
	bne	.L530
.L528:
	ret
	.p2align 2,,3
.L533:
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L527
.L531:
	mov	x0, 0
	b	.L528
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
.L536:
	ldrb	w3, [x2]
	cmp	w3, w1
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L536
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
	cbz	x0, .L539
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -8
	.cfi_offset 21, -16
	mov	x21, x0
	ldrb	w22, [x20]
	.p2align 3,,7
.L541:
	mov	w1, w22
	mov	x0, x19
	bl	strchr
	mov	x19, x0
	cbz	x0, .L548
	mov	x2, x21
	mov	x1, x20
	bl	strncmp
	cbz	w0, .L548
	add	x19, x19, 1
	b	.L541
	.p2align 2,,3
.L548:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L539:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
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
	bmi	.L556
.L550:
	fcmpe	d0, #0.0
	bgt	.L557
	b	.L553
	.p2align 2,,3
.L557:
	fcmpe	d1, #0.0
	bmi	.L552
.L553:
	ret
	.p2align 2,,3
.L556:
	fcmpe	d1, #0.0
	bgt	.L552
	b	.L550
	.p2align 2,,3
.L552:
	fneg	d0, d0
	b	.L553
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x19, x0
	mov	x21, x0
	cbz	x3, .L558
	cmp	x1, x3
	bcc	.L564
	sub	x20, x1, x3
	adds	x20, x0, x20
	bcs	.L564
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	mov	x24, x2
	ldrb	w23, [x24], 1
	sub	x22, x3, #1
	b	.L561
	.p2align 2,,3
.L560:
	cmp	x19, x20
	bhi	.L571
.L561:
	ldrb	w0, [x19]
	mov	x21, x19
	add	x19, x19, 1
	cmp	w0, w23
	bne	.L560
	mov	x2, x22
	mov	x1, x24
	mov	x0, x19
	bl	memcmp
	cbnz	w0, .L560
	ldp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	b	.L558
	.p2align 2,,3
.L571:
	.cfi_restore_state
	mov	x21, 0
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
.L558:
	mov	x0, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L564:
	.cfi_restore_state
	mov	x21, 0
	b	.L558
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
	.p2align 4,,11
	.global	frexp
	.type	frexp, %function
frexp:
.LFB101:
	.cfi_startproc
	fcmpe	d0, #0.0
	bmi	.L585
	mov	w2, 0
.L575:
	mov	w1, 0
	fmov	d30, 5.0e-1
	fmov	d31, 1.0e+0
	fcmpe	d0, d31
	bge	.L579
	b	.L595
	.p2align 2,,3
.L579:
	add	w1, w1, 1
	fmul	d0, d0, d30
	fcmpe	d0, d31
	bge	.L579
.L580:
	str	w1, [x0]
	fneg	d31, d0
	cmp	w2, 0
	fcsel	d0, d31, d0, ne
	ret
	.p2align 2,,3
.L585:
	fneg	d0, d0
	mov	w2, 1
	b	.L575
	.p2align 2,,3
.L595:
	fcmp	d0, #0.0
	fmov	d31, 5.0e-1
	fccmpe	d0, d31, 0, ne
	cset	w3, mi
	mov	w1, 0
	cbz	w3, .L580
	.p2align 3,,7
.L581:
	sub	w1, w1, #1
	fadd	d0, d0, d0
	fcmpe	d0, d31
	bmi	.L581
	b	.L580
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
	cbz	x2, .L596
	.p2align 3,,7
.L598:
	sbfx	x3, x2, 0, 1
	and	x3, x3, x1
	add	x0, x0, x3
	lsl	x1, x1, 1
	lsr	x2, x2, 1
	cbnz	x2, .L598
.L596:
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
	bcs	.L610
	.p2align 3,,7
.L602:
	tbnz	w1, #31, .L603
	lsl	w1, w1, 1
	lsl	w3, w3, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L602
.L603:
	mov	w4, 0
	cbz	w3, .L605
.L610:
	mov	w4, 0
	b	.L604
	.p2align 2,,3
.L607:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L605
.L604:
	cmp	w0, w1
	bcc	.L607
	sub	w0, w0, w1
	orr	w4, w4, w3
	b	.L607
	.p2align 2,,3
.L605:
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
	clz	w1, w1
	sub	w1, w1, #1
	tst	w0, 255
	mov	w0, 7
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
	.p2align 4,,11
	.global	__mulsi3
	.type	__mulsi3, %function
__mulsi3:
.LFB106:
	.cfi_startproc
	mov	w2, w0
	mov	w0, 0
	cbz	w2, .L621
	.p2align 3,,7
.L623:
	sbfx	x3, x2, 0, 1
	and	w3, w3, w1
	add	w0, w0, w3
	lsr	w2, w2, 1
	lsl	w1, w1, 1
	cbnz	w2, .L623
.L621:
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
	bcc	.L627
	add	x4, x1, w2, uxtw
	cmp	x0, x4
	bhi	.L627
	sub	w3, w2, #1
	cbz	w2, .L626
	.p2align 3,,7
.L633:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L633
	b	.L626
	.p2align 2,,3
.L627:
	cbz	w6, .L630
	lsl	w6, w6, 3
	mov	x4, 0
	.p2align 3,,7
.L631:
	ldr	x5, [x1, x4]
	str	x5, [x0, x4]
	add	x4, x4, 8
	cmp	x6, x4
	bne	.L631
.L630:
	cmp	w2, w3
	bls	.L626
	.p2align 3,,7
.L632:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L632
.L626:
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
	bcc	.L642
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bhi	.L642
	sub	w3, w2, #1
	cbz	w2, .L641
	.p2align 3,,7
.L647:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L647
	b	.L641
	.p2align 2,,3
.L642:
	cbz	w5, .L645
	lsl	w5, w5, 1
	mov	x3, 0
	.p2align 3,,7
.L646:
	ldrsh	w4, [x1, x3]
	strh	w4, [x0, x3]
	add	x3, x3, 2
	cmp	x5, x3
	bne	.L646
.L645:
	tbz	x2, 0, .L641
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L641:
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
	bcc	.L658
	add	x4, x1, w2, uxtw
	cmp	x0, x4
	bhi	.L658
	sub	w3, w2, #1
	cbz	w2, .L657
	.p2align 3,,7
.L664:
	ldrb	w2, [x1, x3]
	strb	w2, [x0, x3]
	sub	x3, x3, #1
	cmn	x3, #1
	bne	.L664
	b	.L657
	.p2align 2,,3
.L658:
	cbz	w6, .L661
	lsl	w6, w6, 2
	mov	x4, 0
	.p2align 3,,7
.L662:
	ldr	w5, [x1, x4]
	str	w5, [x0, x4]
	add	x4, x4, 4
	cmp	x6, x4
	bne	.L662
.L661:
	cmp	w2, w3
	bls	.L657
	.p2align 3,,7
.L663:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L663
.L657:
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
	and	w3, w0, 65535
	mov	w0, 0
	mov	w2, 15
	.p2align 3,,7
.L680:
	sub	w1, w2, w0
	asr	w1, w3, w1
	tbnz	x1, 0, .L678
	add	w0, w0, 1
	cmp	w0, 16
	bne	.L680
.L678:
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
	and	w2, w0, 65535
	mov	w0, 0
	.p2align 3,,7
.L684:
	asr	w1, w2, w0
	tbnz	x1, 0, .L682
	add	w0, w0, 1
	cmp	w0, 16
	bne	.L684
.L682:
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
	bge	.L690
	fcvtzs	x0, s0
.L686:
	ret
	.p2align 2,,3
.L690:
	fsub	s31, s0, s31
	fcvtzs	x0, s31
	add	x0, x0, 32768
	b	.L686
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
	and	w3, w0, 65535
	mov	w0, 0
	mov	w1, 0
	.p2align 3,,7
.L693:
	asr	w2, w3, w1
	and	w2, w2, 1
	add	w0, w0, w2
	add	w1, w1, 1
	cmp	w1, 16
	bne	.L693
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
	and	w3, w0, 65535
	mov	w0, 0
	mov	w1, 0
	.p2align 3,,7
.L696:
	asr	w2, w3, w1
	and	w2, w2, 1
	add	w0, w0, w2
	add	w1, w1, 1
	cmp	w1, 16
	bne	.L696
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.p2align 4,,11
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mov	w2, w0
	mov	w0, 0
	cbz	w2, .L698
	.p2align 3,,7
.L700:
	sbfx	x3, x2, 0, 1
	and	w3, w3, w1
	add	w0, w0, w3
	lsr	w2, w2, 1
	lsl	w1, w1, 1
	cbnz	w2, .L700
.L698:
	ret
	.cfi_endproc
.LFE121:
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
	cbnz	w3, .L709
	b	.L703
	.p2align 2,,3
.L705:
	sbfx	x2, x1, 0, 1
	and	w2, w2, w3
	add	w0, w0, w2
	lsl	w3, w3, 1
	lsr	w1, w1, 1
.L709:
	cbnz	w1, .L705
.L703:
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
	bcs	.L719
	.p2align 3,,7
.L711:
	tbnz	w1, #31, .L712
	lsl	w1, w1, 1
	lsl	w3, w3, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L711
.L712:
	mov	w4, 0
	cbz	w3, .L714
.L719:
	mov	w4, 0
	b	.L713
	.p2align 2,,3
.L716:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L714
.L713:
	cmp	w0, w1
	bcc	.L716
	sub	w0, w0, w1
	orr	w4, w4, w3
	b	.L716
	.p2align 2,,3
.L714:
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
	mov	w5, 0
	tbnz	w1, #31, .L742
.L733:
	mov	w4, 0
	cbz	w1, .L734
	mov	w2, 0
	.p2align 3,,7
.L735:
	sbfx	x3, x1, 0, 1
	and	w3, w3, w0
	add	w4, w4, w3
	lsl	w0, w0, 1
	asr	w1, w1, 1
	add	w2, w2, 1
	and	w2, w2, 255
	cmp	w1, 0
	ccmp	w2, 31, 2, ne
	bls	.L735
.L734:
	cmp	w5, 0
	csneg	w0, w4, w4, eq
	ret
	.p2align 2,,3
.L742:
	neg	w1, w1
	mov	w5, 1
	b	.L733
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w19, 0
	tbnz	x0, #63, .L752
.L744:
	tbnz	x1, #63, .L753
.L745:
	mov	w2, 0
	bl	__udivmodsi4
	uxtw	x0, w0
	cmp	w19, 0
	csneg	x0, x0, x0, eq
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L752:
	.cfi_restore_state
	neg	x0, x0
	mov	w19, 1
	b	.L744
	.p2align 2,,3
.L753:
	neg	x1, x1
	eor	w19, w19, 1
	b	.L745
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w19, 0
	tbnz	x0, #63, .L762
.L755:
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	mov	w2, 1
	bl	__udivmodsi4
	uxtw	x0, w0
	cmp	w19, 0
	csneg	x0, x0, x0, eq
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L762:
	.cfi_restore_state
	neg	x0, x0
	mov	w19, 1
	b	.L755
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
	bcs	.L772
	.p2align 3,,7
.L764:
	tbnz	x1, 15, .L765
	ubfiz	w1, w1, 1, 15
	ubfiz	w3, w3, 1, 15
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L764
.L765:
	mov	w4, 0
	cbz	w3, .L767
.L772:
	mov	w4, 0
	b	.L766
	.p2align 2,,3
.L769:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbz	w3, .L767
.L766:
	cmp	w0, w1
	bcc	.L769
	sub	w0, w0, w1
	and	w0, w0, 65535
	orr	w4, w3, w4
	b	.L769
	.p2align 2,,3
.L767:
	cmp	w2, 0
	csel	w0, w0, w4, ne
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
	bcs	.L785
	.p2align 3,,7
.L777:
	tbnz	x1, 31, .L778
	lsl	x1, x1, 1
	lsl	x3, x3, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L777
.L778:
	mov	x4, 0
	cbz	x3, .L780
.L785:
	mov	x4, 0
	b	.L779
	.p2align 2,,3
.L782:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbz	x3, .L780
.L779:
	cmp	x0, x1
	bcc	.L782
	sub	x0, x0, x1
	orr	x4, x4, x3
	b	.L782
	.p2align 2,,3
.L780:
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
	tbz	x1, 5, .L791
	sub	w1, w1, #32
	lsl	w0, w0, w1
	mov	w3, 0
.L792:
	uxtw	x1, w3
	orr	x0, x1, x0, lsl 32
.L790:
	ret
	.p2align 2,,3
.L791:
	cbz	w1, .L790
	lsl	w3, w0, w1
	neg	w0, w1
	lsr	w0, w2, w0
	asr	x2, x2, 32
	lsl	w2, w2, w1
	orr	w0, w0, w2
	b	.L792
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
	tbz	x2, 6, .L797
	sub	w2, w2, #64
	lsl	x1, x0, x2
	mov	x4, 0
.L798:
	mov	x0, x4
.L799:
	ret
	.p2align 2,,3
.L797:
	cbz	w2, .L799
	lsl	x4, x0, x2
	neg	w3, w2
	lsr	x3, x0, x3
	lsl	x1, x1, x2
	orr	x1, x3, x1
	b	.L798
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
	tbz	x1, 5, .L802
	asr	x2, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, #32
	asr	w2, w2, w1
.L803:
	orr	x0, x2, x0, lsl 32
.L801:
	ret
	.p2align 2,,3
.L802:
	cbz	w1, .L801
	asr	x3, x0, 32
	asr	w0, w3, w1
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w2, w3, w2
	b	.L803
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
	tbz	x2, 6, .L808
	asr	x4, x1, 63
	sub	w2, w2, #64
	asr	x0, x1, x2
.L809:
	mov	x1, x4
.L810:
	ret
	.p2align 2,,3
.L808:
	cbz	w2, .L810
	asr	x4, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x0, x0, x2
	orr	x0, x3, x0
	b	.L809
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
	.p2align 4,,11
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
	blt	.L818
	mov	w0, 2
	bgt	.L816
	mov	w0, 0
	cmp	w2, w1
	bcc	.L816
	cset	w0, hi
	add	w0, w0, 1
.L816:
	ret
	.p2align 2,,3
.L818:
	mov	w0, 0
	b	.L816
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
	.p2align 4,,11
	.global	__cmpti2
	.type	__cmpti2, %function
__cmpti2:
.LFB143:
	.cfi_startproc
	mov	x4, x0
	mov	w0, 0
	cmp	x1, x3
	blt	.L824
	mov	w0, 2
	bgt	.L824
	mov	w0, 0
	cmp	x4, x2
	bcc	.L824
	cset	w0, hi
	add	w0, w0, 1
.L824:
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
	.p2align 4,,11
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
	.p2align 4,,11
	.global	__ffsti2
	.type	__ffsti2, %function
__ffsti2:
.LFB146:
	.cfi_startproc
	cbnz	x0, .L833
	rbit	x0, x1
	clz	x0, x0
	add	w0, w0, 65
	cmp	x1, 0
	csel	w0, w0, wzr, ne
.L832:
	ret
	.p2align 2,,3
.L833:
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
	b	.L832
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
	tbz	x1, 5, .L837
	lsr	x2, x0, 32
	sub	w1, w1, #32
	lsr	w2, w2, w1
	mov	w0, 0
.L838:
	orr	x0, x2, x0, lsl 32
.L836:
	ret
	.p2align 2,,3
.L837:
	cbz	w1, .L836
	lsr	x3, x0, 32
	lsr	w0, w3, w1
	neg	w4, w1
	lsl	w3, w3, w4
	lsr	w2, w2, w1
	orr	w2, w3, w2
	b	.L838
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
	tbz	x2, 6, .L843
	sub	w2, w2, #64
	lsr	x0, x1, x2
	mov	x4, 0
.L844:
	mov	x1, x4
.L845:
	ret
	.p2align 2,,3
.L843:
	cbz	w2, .L845
	lsr	x4, x1, x2
	neg	w3, w2
	lsl	x3, x1, x3
	lsr	x0, x0, x2
	orr	x0, x3, x0
	b	.L844
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
	.p2align 4,,11
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
	.p2align 4,,11
	.global	__mulddi3
	.type	__mulddi3, %function
__mulddi3:
.LFB151:
	.cfi_startproc
	umull	x5, w0, w1
	lsr	x3, x5, 32
	lsr	x4, x0, 32
	umaddl	x3, w1, w4, x3
	uxtw	x2, w3
	lsr	x1, x1, 32
	umaddl	x2, w0, w1, x2
	lsl	x0, x2, 32
	lsr	x3, x3, 32
	umaddl	x1, w4, w1, x3
	add	x0, x0, w5, uxtw
	add	x1, x1, x2, lsr 32
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
	.p2align 4,,11
	.global	__parityti2
	.type	__parityti2, %function
__parityti2:
.LFB156:
	.cfi_startproc
	eor	x1, x0, x1
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
	.p2align 4,,11
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
	.p2align 4,,11
	.global	__powidf2
	.type	__powidf2, %function
__powidf2:
.LFB161:
	.cfi_startproc
	fmov	d1, d0
	mov	w1, w0
	fmov	d31, 1.0e+0
	b	.L864
	.p2align 2,,3
.L862:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L863
	fmul	d1, d1, d1
.L864:
	tbz	x1, 0, .L862
	fmul	d31, d31, d1
	b	.L862
	.p2align 2,,3
.L863:
	tbnz	w0, #31, .L869
.L861:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L869:
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
	b	.L861
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
	b	.L873
	.p2align 2,,3
.L871:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L872
	fmul	s1, s1, s1
.L873:
	tbz	x1, 0, .L871
	fmul	s31, s31, s1
	b	.L871
	.p2align 2,,3
.L872:
	tbnz	w0, #31, .L878
.L870:
	fmov	s0, s31
	ret
	.p2align 2,,3
.L878:
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
	b	.L870
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
	bcc	.L881
	mov	w0, 2
	bhi	.L879
	mov	w0, 0
	cmp	w2, w1
	bcc	.L879
	cset	w0, hi
	add	w0, w0, 1
.L879:
	ret
	.p2align 2,,3
.L881:
	mov	w0, 0
	b	.L879
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
	.p2align 4,,11
	.global	__ucmpti2
	.type	__ucmpti2, %function
__ucmpti2:
.LFB165:
	.cfi_startproc
	mov	x4, x0
	mov	w0, 0
	cmp	x1, x3
	bcc	.L887
	mov	w0, 2
	bhi	.L887
	mov	w0, 0
	cmp	x4, x2
	bcc	.L887
	cset	w0, hi
	add	w0, w0, 1
.L887:
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
