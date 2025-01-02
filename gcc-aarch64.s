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
	sub	x4, x2, #1
	cmp	x4, 6
	bls	.L7
	sub	x6, x2, #2
	add	x7, x0, x4
	add	x9, x1, x6
	sub	x10, x7, x9
	add	x11, x10, 14
	cmp	x11, 14
	bls	.L7
	add	x8, x1, x2
	add	x7, x0, x2
	cmp	x4, 14
	bls	.L24
	and	x12, x2, -16
	sub	x13, x2, #16
	sub	x14, x12, #16
	add	x15, x1, x13
	add	x16, x0, x13
	mov	x4, 0
	lsr	x17, x14, 4
	add	x18, x17, 1
	.p2align 3,,7
.L9:
	ldr	q1, [x15, x4]
	subs	x18, x18, #1
	str	q1, [x16, x4]
	sub	x4, x4, #16
	bne	.L9
	add	x8, x8, x4
	add	x7, x7, x4
	and	x3, x2, 15
	tst	x2, 15
	beq	.L6
	sub	x5, x3, #1
	mov	x2, x3
	cmp	x5, 6
	bls	.L11
.L8:
	sub	x6, x2, #8
	and	x9, x2, -8
	sub	x8, x8, x9
	sub	x7, x7, x9
	sub	x3, x3, x9
	ldr	d2, [x1, x6]
	str	d2, [x0, x6]
	tst	x2, 7
	beq	.L6
.L11:
	ldrb	w1, [x8, -1]
	strb	w1, [x7, -1]
	cmp	x3, 1
	beq	.L6
	ldrb	w2, [x8, -2]
	strb	w2, [x7, -2]
	cmp	x3, 2
	beq	.L6
	ldrb	w10, [x8, -3]
	strb	w10, [x7, -3]
	cmp	x3, 3
	beq	.L6
	ldrb	w11, [x8, -4]
	strb	w11, [x7, -4]
	cmp	x3, 4
	beq	.L6
	ldrb	w12, [x8, -5]
	strb	w12, [x7, -5]
	cmp	x3, 5
	beq	.L6
	ldrb	w13, [x8, -6]
	strb	w13, [x7, -6]
	cmp	x3, 6
	beq	.L6
	ldrb	w14, [x8, -7]
	strb	w14, [x7, -7]
.L6:
	ret
	.p2align 2,,3
.L5:
	beq	.L6
	cbz	x2, .L6
	sub	x4, x2, #1
	cmp	x4, 6
	bls	.L26
	add	x3, x1, 1
	sub	x5, x0, x3
	cmp	x5, 14
	bls	.L26
	cmp	x4, 14
	bls	.L27
	and	x8, x2, -16
	mov	x10, 0
	sub	x6, x8, #16
	lsr	x7, x6, 4
	add	x9, x7, 1
	.p2align 3,,7
.L17:
	ldr	q31, [x1, x10]
	subs	x9, x9, #1
	str	q31, [x0, x10]
	add	x10, x10, 16
	bne	.L17
	add	x12, x1, x8
	add	x13, x0, x8
	subs	x14, x2, x8
	beq	.L6
	sub	x11, x14, #1
	mov	x2, x14
	cmp	x11, 6
	bls	.L20
.L16:
	ldr	d0, [x1, x8]
	and	x1, x2, -8
	add	x12, x12, x1
	add	x13, x13, x1
	sub	x14, x14, x1
	str	d0, [x0, x8]
	tst	x2, 7
	beq	.L6
.L20:
	ldrb	w2, [x12]
	strb	w2, [x13]
	cmp	x14, 1
	beq	.L6
	ldrb	w15, [x12, 1]
	strb	w15, [x13, 1]
	cmp	x14, 2
	beq	.L6
	ldrb	w16, [x12, 2]
	strb	w16, [x13, 2]
	cmp	x14, 3
	beq	.L6
	ldrb	w17, [x12, 3]
	strb	w17, [x13, 3]
	cmp	x14, 4
	beq	.L6
	ldrb	w18, [x12, 4]
	strb	w18, [x13, 4]
	cmp	x14, 5
	beq	.L6
	ldrb	w4, [x12, 5]
	strb	w4, [x13, 5]
	cmp	x14, 6
	beq	.L6
	ldrb	w3, [x12, 6]
	strb	w3, [x13, 6]
	ret
	.p2align 2,,3
.L7:
	sub	x15, x1, #1
	sub	x16, x0, #1
	add	x18, x4, 1
	.p2align 3,,7
.L13:
	ldrb	w17, [x15, x2]
	subs	x18, x18, #1
	strb	w17, [x16, x2]
	mov	x2, x4
	sub	x4, x4, #1
	bne	.L13
	ret
	.p2align 2,,3
.L26:
	mov	x8, 0
	.p2align 3,,7
.L22:
	ldrb	w5, [x1, x8]
	subs	x2, x2, #1
	strb	w5, [x0, x8]
	add	x8, x8, 1
	bne	.L22
	ret
.L24:
	mov	x3, x2
	b	.L8
.L27:
	mov	x12, x1
	mov	x13, x0
	mov	x14, x2
	mov	x8, 0
	b	.L16
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
	cbnz	x3, .L85
	b	.L87
	.p2align 2,,3
.L88:
	subs	x3, x3, #1
	beq	.L87
.L85:
	ldrb	w4, [x1]
	add	x0, x0, 1
	strb	w4, [x0, -1]
	add	x1, x1, 1
	cmp	w4, w2
	bne	.L88
	ret
	.p2align 2,,3
.L87:
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
	cbnz	x2, .L96
	b	.L102
	.p2align 2,,3
.L98:
	add	x0, x0, 1
	subs	x2, x2, #1
	beq	.L102
.L96:
	ldrb	w3, [x0]
	cmp	w3, w1
	bne	.L98
	ret
	.p2align 2,,3
.L102:
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
	cbnz	x2, .L106
	b	.L113
	.p2align 2,,3
.L108:
	subs	x2, x2, #1
	beq	.L113
.L106:
	ldrb	w3, [x0]
	add	x1, x1, 1
	ldrb	w4, [x1, -1]
	add	x0, x0, 1
	cmp	w3, w4
	beq	.L108
	sub	w0, w3, w4
	ret
	.p2align 2,,3
.L113:
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
	cbz	x2, .L119
	bl	memcpy
.L119:
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
	b	.L125
	.p2align 2,,3
.L127:
	ldrb	w4, [x0]
	sub	x3, x3, #1
	cmp	w4, w1
	beq	.L124
.L125:
	mov	x0, x3
	subs	x5, x5, #1
	bne	.L127
	mov	x0, 0
.L124:
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
	cbz	x2, .L131
	and	w1, w1, 255
	bl	memset
.L131:
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
	cbz	w2, .L134
	.p2align 3,,7
.L135:
	ldrb	w3, [x1, 1]!
	strb	w3, [x0, 1]!
	cbnz	w3, .L135
.L134:
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
	cbnz	w2, .L141
	b	.L140
	.p2align 2,,3
.L143:
	ldrb	w2, [x0, 1]!
	cbz	w2, .L140
.L141:
	cmp	w2, w1
	bne	.L143
.L140:
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
.L150:
	ldrb	w2, [x0]
	cmp	w2, w1
	beq	.L149
	add	x0, x0, 1
	cbnz	w2, .L150
	mov	x0, 0
.L149:
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
	bne	.L154
	.p2align 3,,7
.L153:
	cbz	w3, .L154
	ldrb	w3, [x0, x2]
	add	x2, x2, 1
	ldrb	w1, [x4, x2]
	cmp	w3, w1
	beq	.L153
.L154:
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
	cbz	w1, .L164
	mov	x3, x0
	.p2align 3,,7
.L163:
	ldrb	w2, [x3, 1]!
	cbnz	w2, .L163
	sub	x0, x3, x0
	ret
	.p2align 2,,3
.L164:
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
	cbz	x2, .L172
	ldrb	w4, [x0]
	sub	x7, x2, #1
	mov	x2, x1
	cbnz	w4, .L170
	b	.L177
	.p2align 2,,3
.L171:
	ldrb	w4, [x0, 1]!
	cbz	w4, .L178
	mov	x2, x6
.L170:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x8, x3, x7
	add	x6, x2, 1
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x8, 0, 4, eq
	bne	.L171
	sub	w0, w4, w5
.L166:
	ret
	.p2align 2,,3
.L172:
	mov	w0, 0
	ret
	.p2align 2,,3
.L178:
	ldrb	w5, [x2, 1]
	sub	w0, w4, w5
	b	.L166
.L177:
	ldrb	w5, [x1]
	sub	w0, w4, w5
	b	.L166
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
	ble	.L179
	lsr	x9, x2, 1
	sub	x3, x2, #2
	sub	x7, x9, #1
	cmp	x3, 29
	bls	.L187
	and	x6, x2, -32
	lsr	x8, x2, 5
	sub	x11, x6, #32
	mov	x5, x0
	mov	x4, x1
	lsr	x12, x11, 5
	add	x13, x12, 1
	.p2align 3,,7
.L182:
	ld2	{v30.16b - v31.16b}, [x5], 32
	subs	x13, x13, #1
	mov	v29.16b, v31.16b
	st2	{v29.16b - v30.16b}, [x4], 32
	bne	.L182
	lsl	x10, x8, 4
	add	x3, x1, x6
	sub	x2, x2, x8, lsl 5
	add	x6, x0, x6
	cmp	x10, x9
	beq	.L179
.L181:
	sub	x14, x7, x10
	add	x15, x14, 1
	cmp	x14, 2
	bls	.L184
	lsl	x16, x10, 1
	lsr	x17, x15, 2
	add	x18, x0, x16
	add	x9, x1, x16
	ldr	d28, [x0, x16]
	rev16	v0.8b, v28.8b
	str	d0, [x1, x16]
	cmp	x17, 1
	beq	.L185
	ldr	d27, [x18, 8]
	rev16	v1.8b, v27.8b
	str	d1, [x9, 8]
	cmp	x17, 2
	beq	.L185
	ldr	d26, [x18, 16]
	rev16	v2.8b, v26.8b
	str	d2, [x9, 16]
.L185:
	and	x1, x15, -4
	lsl	x0, x1, 1
	sub	x2, x2, x1, lsl 1
	add	x3, x3, x0
	add	x6, x6, x0
	tst	x15, 3
	beq	.L179
.L184:
	ldrh	w7, [x6]
	rev16	w10, w7
	strh	w10, [x3]
	cmp	x2, 3
	ble	.L179
	ldrh	w8, [x6, 2]
	rev16	w11, w8
	strh	w11, [x3, 2]
	cmp	x2, 5
	ble	.L179
	ldrh	w2, [x6, 4]
	rev16	w5, w2
	strh	w5, [x3, 4]
.L179:
	ret
.L187:
	mov	x3, x1
	mov	x6, x0
	mov	x10, 0
	b	.L181
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
	bls	.L208
	mov	w2, -8232
	add	w3, w1, w2
	mov	w0, 1
	cmp	w3, w0
	bls	.L208
	mov	w4, -65529
	add	w5, w1, w4
	cmp	w5, 2
	cset	w0, ls
.L208:
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
	bls	.L219
	mov	w2, -8234
	add	w3, w0, w2
	mov	w0, 47061
	cmp	w3, w0
	mov	w4, 8231
	mov	w0, 1
	ccmp	w1, w4, 0, hi
	bls	.L213
	sub	w5, w1, #57344
	mov	w6, 8184
	cmp	w5, w6
	bls	.L213
	mov	w7, -65532
	mov	w9, 3
	add	w8, w1, w7
	movk	w9, 0x10, lsl 16
	mov	w0, 0
	cmp	w8, w9
	bhi	.L213
	and	w10, w1, 65534
	mov	w11, 65534
	cmp	w10, w11
	cset	w0, ne
.L213:
	ret
	.p2align 2,,3
.L219:
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
	bls	.L222
	orr	w0, w0, 32
	sub	w2, w0, #97
	cmp	w2, 5
	cset	w0, ls
	ret
	.p2align 2,,3
.L222:
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
	bvs	.L227
	fcmp	d1, d1
	bvs	.L228
	fcmpe	d0, d1
	bgt	.L230
	movi	d31, #0
.L224:
	fmov	d0, d31
	ret
	.p2align 2,,3
.L230:
	fsub	d31, d0, d1
	fmov	d0, d31
	ret
	.p2align 2,,3
.L227:
	fmov	d31, d0
	b	.L224
	.p2align 2,,3
.L228:
	fmov	d31, d1
	b	.L224
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
	bvs	.L236
	fcmp	s1, s1
	bvs	.L237
	fcmpe	s0, s1
	bgt	.L239
	movi	v31.2s, #0
.L233:
	fmov	s0, s31
	ret
	.p2align 2,,3
.L239:
	fsub	s31, s0, s1
	fmov	s0, s31
	ret
	.p2align 2,,3
.L236:
	fmov	s31, s0
	b	.L233
	.p2align 2,,3
.L237:
	fmov	s31, s1
	b	.L233
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
	bvs	.L245
	fcmp	d1, d1
	bvs	.L242
	fmov	x0, d0
	fmov	x1, d1
	lsr	x2, x0, 63
	lsr	x3, x1, 63
	cmp	w2, w3
	beq	.L244
	cmp	w2, 0
	fcsel	d0, d1, d0, ne
.L242:
	ret
	.p2align 2,,3
.L244:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
	ret
	.p2align 2,,3
.L245:
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
	bvs	.L251
	fcmp	s1, s1
	bvs	.L248
	fmov	w0, s0
	fmov	w1, s1
	and	w2, w0, -2147483648
	and	w3, w1, -2147483648
	cmp	w2, w3
	beq	.L250
	cmp	w2, 0
	fcsel	s0, s1, s0, ne
.L248:
	ret
	.p2align 2,,3
.L250:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
	ret
	.p2align 2,,3
.L251:
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
	cbnz	w0, .L262
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L261
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x3, x1, 63
	lsr	x2, x0, 63
	cmp	w2, w3
	beq	.L256
	cbz	w2, .L261
.L262:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L256:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbnz	w0, #31, .L262
.L261:
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
	bvs	.L267
	fcmp	d1, d1
	bvs	.L264
	fmov	x0, d0
	fmov	x1, d1
	lsr	x2, x0, 63
	lsr	x3, x1, 63
	cmp	w2, w3
	beq	.L266
	cmp	w2, 0
	fcsel	d0, d0, d1, ne
.L264:
	ret
	.p2align 2,,3
.L266:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
	ret
	.p2align 2,,3
.L267:
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
	bvs	.L273
	fcmp	s1, s1
	bvs	.L270
	fmov	w0, s0
	fmov	w1, s1
	and	w2, w0, -2147483648
	and	w3, w1, -2147483648
	cmp	w2, w3
	beq	.L272
	cmp	w2, 0
	fcsel	s0, s0, s1, ne
.L270:
	ret
	.p2align 2,,3
.L272:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
	ret
	.p2align 2,,3
.L273:
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
	cbnz	w0, .L282
	ldr	q1, [sp, 16]
	mov	v0.16b, v1.16b
	bl	__unordtf2
	cbnz	w0, .L284
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	lsr	x3, x1, 63
	lsr	x2, x0, 63
	cmp	w2, w3
	beq	.L278
	cbnz	w2, .L284
.L282:
	ldr	q0, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L278:
	.cfi_restore_state
	ldp	q1, q0, [sp, 16]
	bl	__lttf2
	tbz	w0, #31, .L282
.L284:
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
	cbz	w0, .L289
	adrp	x3, .LANCHOR0
	add	x0, x3, :lo12:.LANCHOR0
	adrp	x4, .LANCHOR1
	mov	x2, x0
	add	x5, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L288:
	and	w6, w1, 63
	lsr	w1, w1, 6
	ldrb	w7, [x5, w6, uxtw]
	strb	w7, [x2], 1
	cbnz	w1, .L288
	strb	wzr, [x2]
	ret
	.p2align 2,,3
.L289:
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
	cbz	x1, .L299
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L293
	str	x0, [x1, 8]
.L293:
	ret
	.p2align 2,,3
.L299:
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
	cbz	x1, .L301
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L301:
	ldr	x0, [x0, 8]
	cbz	x0, .L300
	str	x1, [x0]
.L300:
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
	cbz	x24, .L310
	mov	x23, x4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x19, x1
	mov	x20, 0
	b	.L312
	.p2align 2,,3
.L327:
	add	x19, x19, x21
	cmp	x24, x20
	beq	.L326
.L312:
	mov	x1, x19
	mov	x0, x22
	mov	x27, x19
	add	x20, x20, 1
	blr	x23
	cbnz	w0, .L327
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L309:
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
.L326:
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
.L310:
	add	x0, x24, 1
	str	x0, [x25]
	madd	x27, x21, x24, x26
	cbz	x21, .L309
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
	cbz	x24, .L329
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
	b	.L331
	.p2align 2,,3
.L342:
	add	x19, x19, x23
	cmp	x24, x20
	beq	.L341
.L331:
	mov	x1, x19
	mov	x0, x21
	mov	x25, x19
	add	x20, x20, 1
	blr	x22
	cbnz	w0, .L342
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
.L341:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L329:
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
	bhi	.L345
	.p2align 3,,7
.L346:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w3, w1, #9
	ccmp	w3, 4, 0, ne
	bls	.L346
.L345:
	cmp	w1, 43
	beq	.L347
	cmp	w1, 45
	bne	.L367
	ldrb	w5, [x0, 1]
	add	x0, x0, 1
	sub	w7, w5, #48
	cmp	w7, 9
	bhi	.L356
	mov	w6, 1
.L350:
	mov	w11, 0
	.p2align 3,,7
.L353:
	add	w8, w11, w11, lsl 2
	ldrb	w9, [x0, 1]!
	mov	w1, w7
	lsl	w10, w8, 1
	sub	w11, w10, w7
	sub	w7, w9, #48
	cmp	w7, 9
	bls	.L353
	sub	w0, w1, w10
	cmp	w6, 0
	csel	w0, w0, w11, eq
	ret
	.p2align 2,,3
.L367:
	sub	w7, w1, #48
	mov	w6, 0
	cmp	w7, 9
	bls	.L350
.L356:
	mov	w0, 0
.L368:
	ret
	.p2align 2,,3
.L347:
	ldrb	w4, [x0, 1]
	mov	w6, 0
	add	x0, x0, 1
	sub	w7, w4, #48
	cmp	w7, 9
	bls	.L350
	mov	w0, 0
	b	.L368
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
	bhi	.L370
	.p2align 3,,7
.L371:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w3, w1, #9
	ccmp	w3, 4, 0, ne
	bls	.L371
.L370:
	cmp	w1, 43
	beq	.L372
	cmp	w1, 45
	bne	.L392
	ldrb	w5, [x0, 1]
	add	x0, x0, 1
	sub	w7, w5, #48
	cmp	w7, 9
	bhi	.L381
	mov	w6, 1
.L375:
	mov	x12, 0
	.p2align 3,,7
.L378:
	add	x8, x12, x12, lsl 2
	ldrb	w9, [x0, 1]!
	sxtw	x10, w7
	lsl	x11, x8, 1
	sub	w7, w9, #48
	sub	x12, x11, x10
	cmp	w7, 9
	bls	.L378
	sub	x0, x10, x11
	cmp	w6, 0
	csel	x0, x0, x12, eq
	ret
	.p2align 2,,3
.L392:
	sub	w7, w1, #48
	mov	w6, 0
	cmp	w7, 9
	bls	.L375
.L381:
	mov	x0, 0
.L393:
	ret
	.p2align 2,,3
.L372:
	ldrb	w4, [x0, 1]
	mov	w6, 0
	add	x0, x0, 1
	sub	w7, w4, #48
	cmp	w7, 9
	bls	.L375
	mov	x0, 0
	b	.L393
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
	bhi	.L395
	.p2align 3,,7
.L396:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w3, w1, #9
	ccmp	w3, 4, 0, ne
	bls	.L396
.L395:
	cmp	w1, 43
	beq	.L397
	cmp	w1, 45
	beq	.L414
	sub	w7, w1, #48
	mov	w6, 0
	cmp	w7, 9
	bhi	.L405
.L399:
	mov	x12, 0
	.p2align 3,,7
.L402:
	add	x8, x12, x12, lsl 2
	ldrb	w9, [x0, 1]!
	sxtw	x10, w7
	lsl	x11, x8, 1
	sub	w7, w9, #48
	sub	x12, x11, x10
	cmp	w7, 9
	bls	.L402
	sub	x0, x10, x11
	cmp	w6, 0
	csel	x0, x0, x12, eq
	ret
	.p2align 2,,3
.L414:
	ldrb	w5, [x0, 1]
	mov	w6, 1
	add	x0, x0, 1
	sub	w7, w5, #48
	cmp	w7, 9
	bls	.L399
.L405:
	mov	x0, 0
	ret
	.p2align 2,,3
.L397:
	ldrb	w4, [x0, 1]
	add	x0, x0, 1
	sub	w7, w4, #48
	cmp	w7, 9
	bhi	.L405
	mov	w6, 0
	b	.L399
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
	cbz	x2, .L416
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
.L419:
	lsr	x20, x19, 1
	mov	x0, x24
	sub	x19, x19, #1
	madd	x21, x20, x23, x22
	mov	x1, x21
	blr	x25
	cmp	w0, 0
	blt	.L420
	beq	.L426
	add	x22, x21, x23
	sub	x19, x19, x20
	cbnz	x19, .L419
.L427:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L416:
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
.L420:
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
	cbnz	x19, .L419
	b	.L427
	.p2align 2,,3
.L426:
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
	cbz	w2, .L433
	.p2align 3,,7
.L441:
	asr	w26, w19, 1
	mov	x2, x25
	mov	x0, x23
	sub	w19, w19, #1
	sxtw	x20, w26
	madd	x20, x20, x22, x21
	mov	x1, x20
	blr	x24
	cmp	w0, 0
	cbz	w0, .L428
	ble	.L431
	add	x21, x20, x22
	asr	w19, w19, 1
	cbnz	w19, .L441
.L433:
	mov	x20, 0
.L428:
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
.L431:
	.cfi_restore_state
	cbz	w26, .L433
	mov	w19, w26
	b	.L441
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
	cbnz	w2, .L452
	b	.L455
	.p2align 2,,3
.L454:
	ldr	w2, [x0, 4]!
	cbz	w2, .L455
.L452:
	cmp	w1, w2
	bne	.L454
	ret
	.p2align 2,,3
.L455:
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
	bne	.L461
	.p2align 3,,7
.L460:
	cbz	w3, .L461
	ldr	w3, [x0, x2]
	add	x2, x2, 4
	ldr	w1, [x4, x2]
	cmp	w3, w1
	beq	.L460
.L461:
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
.L469:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L469
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
	cbz	w1, .L474
	mov	x3, x0
	.p2align 3,,7
.L473:
	ldr	w2, [x3, 4]!
	cbnz	w2, .L473
	sub	x0, x3, x0
	asr	x0, x0, 2
	ret
	.p2align 2,,3
.L474:
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
	cbnz	x2, .L477
	b	.L485
	.p2align 2,,3
.L479:
	subs	x2, x2, #1
	beq	.L485
.L477:
	ldr	w3, [x0]
	add	x1, x1, 4
	ldr	w4, [x1, -4]
	add	x0, x0, 4
	cmp	w3, 0
	ccmp	w4, w3, 0, ne
	beq	.L479
	cmp	w3, w4
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L485:
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
	cbnz	x2, .L491
	b	.L497
	.p2align 2,,3
.L493:
	add	x0, x0, 4
	subs	x2, x2, #1
	beq	.L497
.L491:
	ldr	w3, [x0]
	cmp	w3, w1
	bne	.L493
	ret
	.p2align 2,,3
.L497:
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
	cbnz	x2, .L501
	b	.L509
	.p2align 2,,3
.L503:
	subs	x2, x2, #1
	beq	.L509
.L501:
	ldr	w4, [x0]
	add	x1, x1, 4
	ldr	w3, [x1, -4]
	add	x0, x0, 4
	cmp	w4, w3
	beq	.L503
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L509:
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
	cbz	x2, .L515
	lsl	x2, x2, 2
	bl	memcpy
.L515:
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
	beq	.L546
	lsl	x5, x2, 2
	sub	x3, x0, x1
	sub	x6, x2, #1
	cmp	x3, x5
	bcs	.L566
	cbz	x2, .L546
	cmp	x6, 13
	bls	.L525
	sub	x16, x5, #4
	sub	x17, x5, #8
	add	x18, x0, x16
	add	x3, x1, x17
	sub	x4, x18, x3
	add	x7, x4, 8
	cmp	x7, 8
	bls	.L525
	neg	x8, x2, lsr 2
	sub	x5, x5, #16
	add	x9, x1, x5
	add	x11, x0, x5
	neg	x10, x8, lsl 4
	mov	x15, 0
	sub	x12, x10, #16
	lsr	x13, x12, 4
	add	x14, x13, 1
	.p2align 3,,7
.L526:
	ldr	q0, [x9, x15]
	subs	x14, x14, #1
	str	q0, [x11, x15]
	sub	x15, x15, #16
	bne	.L526
	and	x16, x2, -4
	sub	x6, x6, x16
	tst	x2, 3
	beq	.L546
	ldr	w2, [x1, x6, lsl 2]
	str	w2, [x0, x6, lsl 2]
	cbz	x6, .L546
	sub	x17, x6, #1
	lsl	x18, x17, 2
	ldr	w3, [x1, x17, lsl 2]
	str	w3, [x0, x17, lsl 2]
	cbz	x17, .L546
	sub	x4, x18, #4
	ldr	w1, [x1, x4]
	str	w1, [x0, x4]
.L546:
	ret
	.p2align 2,,3
.L566:
	cbz	x2, .L546
	cmp	x6, 5
	bls	.L537
	add	x4, x1, 4
	mov	x15, 0
	sub	x7, x0, x4
	cmp	x7, 8
	bls	.L535
	lsr	x8, x2, 2
	.p2align 3,,7
.L532:
	ldr	q31, [x1, x15]
	subs	x8, x8, #1
	str	q31, [x0, x15]
	add	x15, x15, 16
	bne	.L532
	and	x9, x2, -4
	sub	x6, x6, x9
	lsl	x10, x9, 2
	add	x11, x1, x10
	add	x12, x0, x10
	tst	x2, 3
	beq	.L546
	ldr	w1, [x1, x9, lsl 2]
	str	w1, [x0, x9, lsl 2]
	cbz	x6, .L546
	ldr	w2, [x11, 4]
	str	w2, [x12, 4]
	cmp	x6, 1
	beq	.L546
	ldr	w13, [x11, 8]
	str	w13, [x12, 8]
	ret
	.p2align 2,,3
.L537:
	mov	x15, 0
	.p2align 3,,7
.L535:
	ldr	w14, [x1, x15, lsl 2]
	subs	x2, x2, #1
	str	w14, [x0, x15, lsl 2]
	add	x15, x15, 1
	beq	.L546
	ldr	w14, [x1, x15, lsl 2]
	subs	x2, x2, #1
	str	w14, [x0, x15, lsl 2]
	add	x15, x15, 1
	bne	.L535
	b	.L546
	.p2align 2,,3
.L525:
	add	x8, x6, 1
	.p2align 3,,7
.L529:
	ldr	w7, [x1, x6, lsl 2]
	subs	x8, x8, #1
	str	w7, [x0, x6, lsl 2]
	sub	x6, x6, #1
	bne	.L529
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
	sub	x5, x2, #1
	fmov	s30, w1
	cbz	x2, .L568
	cmp	x5, 2
	bls	.L572
	dup	v31.4s, v30.s[0]
	lsr	x4, x2, 2
	mov	x3, 0
	.p2align 3,,7
.L570:
	lsl	x1, x3, 4
	subs	x4, x4, #1
	add	x3, x3, 1
	str	q31, [x0, x1]
	bne	.L570
	tst	x2, 3
	beq	.L568
	and	x6, x2, -4
	sub	x5, x5, x6
	add	x2, x0, x6, lsl 2
.L569:
	str	s30, [x2]
	cbz	x5, .L568
	str	s30, [x2, 4]
	cmp	x5, 1
	beq	.L568
	str	s30, [x2, 8]
.L568:
	ret
.L572:
	mov	x2, x0
	b	.L569
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
	bcs	.L587
	cbz	x2, .L586
	sub	x17, x2, #1
	cmp	x17, 6
	bls	.L589
	sub	x8, x2, #2
	add	x6, x1, x17
	add	x7, x0, x8
	sub	x9, x6, x7
	add	x10, x9, 14
	cmp	x10, 14
	bls	.L589
	add	x8, x0, x2
	add	x7, x1, x2
	cmp	x17, 14
	bls	.L606
	and	x11, x2, -16
	sub	x12, x2, #16
	sub	x13, x11, #16
	add	x14, x0, x12
	add	x15, x1, x12
	mov	x18, 0
	lsr	x16, x13, 4
	add	x17, x16, 1
	.p2align 3,,7
.L591:
	ldr	q1, [x14, x18]
	subs	x17, x17, #1
	str	q1, [x15, x18]
	sub	x18, x18, #16
	bne	.L591
	add	x7, x7, x18
	add	x8, x8, x18
	and	x3, x2, 15
	tst	x2, 15
	beq	.L586
	sub	x4, x3, #1
	mov	x2, x3
	cmp	x4, 6
	bls	.L593
.L590:
	sub	x5, x2, #8
	and	x6, x2, -8
	sub	x7, x7, x6
	sub	x8, x8, x6
	sub	x3, x3, x6
	ldr	d2, [x0, x5]
	str	d2, [x1, x5]
	tst	x2, 7
	beq	.L586
.L593:
	ldrb	w0, [x8, -1]
	strb	w0, [x7, -1]
	cmp	x3, 1
	beq	.L586
	ldrb	w1, [x8, -2]
	strb	w1, [x7, -2]
	cmp	x3, 2
	beq	.L586
	ldrb	w2, [x8, -3]
	strb	w2, [x7, -3]
	cmp	x3, 3
	beq	.L586
	ldrb	w9, [x8, -4]
	strb	w9, [x7, -4]
	cmp	x3, 4
	beq	.L586
	ldrb	w10, [x8, -5]
	strb	w10, [x7, -5]
	cmp	x3, 5
	beq	.L586
	ldrb	w11, [x8, -6]
	strb	w11, [x7, -6]
	cmp	x3, 6
	beq	.L586
	ldrb	w12, [x8, -7]
	strb	w12, [x7, -7]
.L586:
	ret
	.p2align 2,,3
.L587:
	beq	.L586
	cbz	x2, .L586
	sub	x4, x2, #1
	cmp	x4, 6
	bls	.L608
	add	x3, x0, 1
	sub	x5, x1, x3
	cmp	x5, 14
	bls	.L608
	cmp	x4, 14
	bls	.L609
	and	x8, x2, -16
	mov	x10, 0
	sub	x6, x8, #16
	lsr	x7, x6, 4
	add	x9, x7, 1
	.p2align 3,,7
.L599:
	ldr	q31, [x0, x10]
	subs	x9, x9, #1
	str	q31, [x1, x10]
	add	x10, x10, 16
	bne	.L599
	add	x12, x1, x8
	add	x13, x0, x8
	subs	x14, x2, x8
	beq	.L586
	sub	x11, x14, #1
	mov	x2, x14
	cmp	x11, 6
	bls	.L602
.L598:
	ldr	d0, [x0, x8]
	and	x0, x2, -8
	add	x12, x12, x0
	add	x13, x13, x0
	sub	x14, x14, x0
	str	d0, [x1, x8]
	tst	x2, 7
	beq	.L586
.L602:
	ldrb	w1, [x13]
	strb	w1, [x12]
	cmp	x14, 1
	beq	.L586
	ldrb	w2, [x13, 1]
	strb	w2, [x12, 1]
	cmp	x14, 2
	beq	.L586
	ldrb	w15, [x13, 2]
	strb	w15, [x12, 2]
	cmp	x14, 3
	beq	.L586
	ldrb	w16, [x13, 3]
	strb	w16, [x12, 3]
	cmp	x14, 4
	beq	.L586
	ldrb	w17, [x13, 4]
	strb	w17, [x12, 4]
	cmp	x14, 5
	beq	.L586
	ldrb	w18, [x13, 5]
	strb	w18, [x12, 5]
	cmp	x14, 6
	beq	.L586
	ldrb	w4, [x13, 6]
	strb	w4, [x12, 6]
	ret
	.p2align 2,,3
.L589:
	sub	x13, x0, #1
	sub	x14, x1, #1
	add	x16, x17, 1
	.p2align 3,,7
.L595:
	ldrb	w15, [x13, x2]
	subs	x16, x16, #1
	strb	w15, [x14, x2]
	mov	x2, x17
	sub	x17, x17, #1
	bne	.L595
	ret
	.p2align 2,,3
.L608:
	mov	x3, 0
	.p2align 3,,7
.L604:
	ldrb	w5, [x0, x3]
	subs	x2, x2, #1
	strb	w5, [x1, x3]
	add	x3, x3, 1
	bne	.L604
	ret
.L606:
	mov	x3, x2
	b	.L590
.L609:
	mov	x12, x1
	mov	x13, x0
	mov	x14, x2
	mov	x8, 0
	b	.L598
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
	adrp	x1, .LC0
	dup	v31.4s, w0
	movi	v29.4s, 0x1
	ldr	q30, [x1, #:lo12:.LC0]
	ushl	v0.4s, v31.4s, v30.4s
	cmtst	v1.4s, v0.4s, v29.4s
	umaxp	v2.4s, v1.4s, v1.4s
	fmov	x2, d2
	cbnz	x2, .L686
	adrp	x3, .LC1
	ldr	q3, [x3, #:lo12:.LC1]
	ushl	v4.4s, v31.4s, v3.4s
	cmtst	v5.4s, v4.4s, v29.4s
	umaxp	v6.4s, v5.4s, v5.4s
	fmov	x4, d6
	cbnz	x4, .L687
	adrp	x5, .LC2
	ldr	q7, [x5, #:lo12:.LC2]
	ushl	v16.4s, v31.4s, v7.4s
	cmtst	v17.4s, v16.4s, v29.4s
	umaxp	v18.4s, v17.4s, v17.4s
	fmov	x6, d18
	cbnz	x6, .L688
	adrp	x7, .LC3
	ldr	q19, [x7, #:lo12:.LC3]
	ushl	v20.4s, v31.4s, v19.4s
	cmtst	v21.4s, v20.4s, v29.4s
	umaxp	v22.4s, v21.4s, v21.4s
	fmov	x8, d22
	cbnz	x8, .L689
	adrp	x9, .LC4
	ldr	q23, [x9, #:lo12:.LC4]
	ushl	v24.4s, v31.4s, v23.4s
	cmtst	v25.4s, v24.4s, v29.4s
	umaxp	v26.4s, v25.4s, v25.4s
	fmov	x10, d26
	cbnz	x10, .L690
	adrp	x11, .LC5
	ldr	q27, [x11, #:lo12:.LC5]
	ushl	v28.4s, v31.4s, v27.4s
	cmtst	v30.4s, v28.4s, v29.4s
	umaxp	v0.4s, v30.4s, v30.4s
	fmov	x12, d0
	cbnz	x12, .L691
	adrp	x13, .LC6
	ldr	q1, [x13, #:lo12:.LC6]
	ushl	v2.4s, v31.4s, v1.4s
	cmtst	v3.4s, v2.4s, v29.4s
	umaxp	v4.4s, v3.4s, v3.4s
	fmov	x14, d4
	cbnz	x14, .L692
	adrp	x15, .LC7
	ldr	q5, [x15, #:lo12:.LC7]
	ushl	v31.4s, v31.4s, v5.4s
	cmtst	v29.4s, v31.4s, v29.4s
	umaxp	v6.4s, v29.4s, v29.4s
	fmov	x16, d6
	cbnz	x16, .L693
.L694:
	mov	w0, 0
.L679:
	ret
.L686:
	adrp	x15, .LC8
	adrp	x16, .LC9
	ldr	q30, [x15, #:lo12:.LC8]
	ldr	q0, [x16, #:lo12:.LC9]
	umov	x18, v30.d[0]
	umov	x2, v0.d[0]
	.p2align 3,,7
.L680:
	mov	w17, w2
	add	w1, w2, 1
	lsr	w3, w0, w2
	tbnz	x3, 0, .L682
	lsr	w4, w0, w1
	add	w1, w2, 2
	tbnz	x4, 0, .L682
	cmp	w18, 2
	beq	.L694
	lsr	w5, w0, w1
	add	w1, w2, 3
	tbnz	x5, 0, .L682
	cmp	w18, 3
	beq	.L694
	lsr	w18, w0, w1
	mov	w0, 0
	tbz	x18, 0, .L679
	add	w1, w17, 4
.L682:
	mov	w0, w1
	ret
.L687:
	adrp	x13, .LC10
	adrp	x14, .LC11
	ldr	q27, [x13, #:lo12:.LC10]
	ldr	q28, [x14, #:lo12:.LC11]
	umov	x18, v27.d[0]
	umov	x2, v28.d[0]
	b	.L680
.L693:
	adrp	x17, .LC22
	adrp	x1, .LC23
	ldr	q7, [x17, #:lo12:.LC22]
	ldr	q16, [x1, #:lo12:.LC23]
	umov	x18, v7.d[0]
	umov	x2, v16.d[0]
	b	.L680
.L688:
	adrp	x11, .LC12
	adrp	x12, .LC13
	ldr	q25, [x11, #:lo12:.LC12]
	ldr	q26, [x12, #:lo12:.LC13]
	umov	x18, v25.d[0]
	umov	x2, v26.d[0]
	b	.L680
.L689:
	adrp	x9, .LC14
	adrp	x10, .LC15
	ldr	q23, [x9, #:lo12:.LC14]
	ldr	q24, [x10, #:lo12:.LC15]
	umov	x18, v23.d[0]
	umov	x2, v24.d[0]
	b	.L680
.L690:
	adrp	x7, .LC16
	adrp	x8, .LC17
	ldr	q21, [x7, #:lo12:.LC16]
	ldr	q22, [x8, #:lo12:.LC17]
	umov	x18, v21.d[0]
	umov	x2, v22.d[0]
	b	.L680
.L691:
	adrp	x5, .LC18
	adrp	x6, .LC19
	ldr	q19, [x5, #:lo12:.LC18]
	ldr	q20, [x6, #:lo12:.LC19]
	umov	x18, v19.d[0]
	umov	x2, v20.d[0]
	b	.L680
.L692:
	adrp	x3, .LC20
	adrp	x4, .LC21
	ldr	q17, [x3, #:lo12:.LC20]
	ldr	q18, [x4, #:lo12:.LC21]
	umov	x18, v17.d[0]
	umov	x2, v18.d[0]
	b	.L680
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
	cbz	w1, .L699
	and	w0, w1, 1
	tbnz	x1, 0, .L699
	mov	w0, 1
	.p2align 3,,7
.L701:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L701
.L699:
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
	bmi	.L705
	mov	w0, 2139095039
	fmov	s1, w0
	fcmpe	s0, s1
	cset	w0, gt
.L705:
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
	bmi	.L708
	mov	x1, 9218868437227405311
	fmov	d1, x1
	fcmpe	d0, d1
	cset	w0, gt
.L708:
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
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
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
	tbnz	w2, #31, .L711
	adrp	x3, .LC25
	add	x4, x3, :lo12:.LC25
	ldr	q0, [sp, 16]
	ldr	q1, [x4]
	bl	__gttf2
	cmp	w0, 0
	cset	w0, gt
.L711:
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
	bvs	.L720
	fadd	s1, s0, s0
	fcmp	s1, s0
	beq	.L720
	cmp	w0, 0
	fmov	s30, 2.0e+0
	fmov	s31, 5.0e-1
	fcsel	s2, s30, s31, ge
	tbz	x0, 0, .L722
	.p2align 3,,7
.L723:
	fmul	s0, s0, s2
.L722:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L720
	fmul	s2, s2, s2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L723
.L732:
	asr	w0, w1, 1
	fmul	s2, s2, s2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L723
	b	.L732
	.p2align 2,,3
.L720:
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
	bvs	.L734
	fadd	d1, d0, d0
	fcmp	d1, d0
	beq	.L734
	cmp	w0, 0
	fmov	d30, 2.0e+0
	fmov	d31, 5.0e-1
	fcsel	d2, d30, d31, ge
	tbz	x0, 0, .L736
	.p2align 3,,7
.L737:
	fmul	d0, d0, d2
.L736:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L734
	fmul	d2, d2, d2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L737
.L746:
	asr	w0, w1, 1
	fmul	d2, d2, d2
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L737
	b	.L746
	.p2align 2,,3
.L734:
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
	cbnz	w0, .L748
	ldr	q1, [sp, 32]
	mov	v0.16b, v1.16b
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L748
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	ldr	q1, [x1]
	tbnz	w19, #31, .L763
.L750:
	tbz	x19, 0, .L751
	.p2align 3,,7
.L752:
	ldr	q0, [sp, 32]
	str	q1, [sp, 48]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	q1, [sp, 48]
.L751:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L748
	mov	v0.16b, v1.16b
	bl	__multf3
	add	w4, w19, w19, lsr 31
	mov	v1.16b, v0.16b
	tbnz	x19, 0, .L752
.L764:
	asr	w19, w4, 1
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
	add	w4, w19, w19, lsr 31
	tbnz	x19, 0, .L752
	b	.L764
	.p2align 2,,3
.L748:
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
.L763:
	.cfi_restore_state
	adrp	x2, .LC27
	add	x3, x2, :lo12:.LC27
	ldr	q1, [x3]
	b	.L750
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
	cbz	x2, .L766
	sub	x3, x2, #1
	cmp	x3, 14
	bls	.L772
	and	x6, x2, -16
	mov	x3, 0
	sub	x4, x6, #16
	lsr	x5, x4, 4
	add	x4, x5, 1
	cmp	x4, 2
	ble	.L801
	sub	x4, x4, #1
	ldr	q31, [x1, x3]
	ldr	q30, [x0, x3]
	.p2align 3,,7
.L768:
	mov	x5, x3
	eor	v29.16b, v31.16b, v30.16b
	add	x3, x3, 16
	ldr	q31, [x1, x3]
	subs	x4, x4, #1
	str	q29, [x0, x5]
	ldr	q30, [x0, x3]
	bne	.L768
	eor	v29.16b, v31.16b, v30.16b
	str	q29, [x0, x3]
.L802:
	sub	x7, x2, x6
	add	x8, x0, x6
	mov	x10, x7
	add	x9, x1, x6
	cmp	x2, x6
	beq	.L766
.L767:
	sub	x2, x7, #1
	cmp	x2, 6
	bls	.L770
	ldr	d26, [x1, x6]
	and	x1, x7, -8
	ldr	d25, [x0, x6]
	add	x8, x8, x1
	add	x9, x9, x1
	sub	x10, x10, x1
	eor	v1.8b, v26.8b, v25.8b
	str	d1, [x0, x6]
	tst	x7, 7
	beq	.L766
.L770:
	ldrb	w6, [x8]
	ldrb	w11, [x9]
	eor	w12, w6, w11
	strb	w12, [x8]
	cmp	x10, 1
	beq	.L766
	ldrb	w14, [x8, 1]
	ldrb	w13, [x9, 1]
	eor	w15, w13, w14
	strb	w15, [x8, 1]
	cmp	x10, 2
	beq	.L766
	ldrb	w17, [x8, 2]
	ldrb	w16, [x9, 2]
	eor	w18, w16, w17
	strb	w18, [x8, 2]
	cmp	x10, 3
	beq	.L766
	ldrb	w7, [x8, 3]
	ldrb	w3, [x9, 3]
	eor	w4, w3, w7
	strb	w4, [x8, 3]
	cmp	x10, 4
	beq	.L766
	ldrb	w2, [x8, 4]
	ldrb	w5, [x9, 4]
	eor	w1, w5, w2
	strb	w1, [x8, 4]
	cmp	x10, 5
	beq	.L766
	ldrb	w11, [x8, 5]
	ldrb	w6, [x9, 5]
	eor	w12, w6, w11
	strb	w12, [x8, 5]
	cmp	x10, 6
	beq	.L766
	ldrb	w10, [x8, 6]
	ldrb	w9, [x9, 6]
	eor	w13, w9, w10
	strb	w13, [x8, 6]
.L766:
	ret
	.p2align 2,,3
.L801:
	ldr	q27, [x0, x3]
	subs	x4, x4, #1
	ldr	q28, [x1, x3]
	eor	v0.16b, v28.16b, v27.16b
	str	q0, [x0, x3]
	add	x3, x3, 16
	beq	.L802
	ldr	q27, [x0, x3]
	subs	x4, x4, #1
	ldr	q28, [x1, x3]
	eor	v0.16b, v28.16b, v27.16b
	str	q0, [x0, x3]
	add	x3, x3, 16
	bne	.L801
	b	.L802
.L772:
	mov	x10, x2
	mov	x7, x2
	mov	x8, x0
	mov	x9, x1
	mov	x6, 0
	b	.L767
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
	cbz	w3, .L810
	mov	x6, x0
	.p2align 3,,7
.L805:
	ldrb	w4, [x6, 1]!
	cbnz	w4, .L805
.L804:
	cbnz	x2, .L806
	b	.L807
	.p2align 2,,3
.L808:
	beq	.L807
.L806:
	ldrb	w5, [x1]
	subs	x2, x2, #1
	strb	w5, [x6]
	add	x1, x1, 1
	add	x6, x6, 1
	cbnz	w5, .L808
	ret
	.p2align 2,,3
.L807:
	strb	wzr, [x6]
	ret
	.p2align 2,,3
.L810:
	mov	x6, x0
	b	.L804
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
	cbz	x1, .L817
.L818:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L820
.L817:
	ret
	.p2align 2,,3
.L820:
	add	x0, x0, 1
	subs	x1, x1, #1
	bne	.L818
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
	cbz	w4, .L832
.L828:
	mov	x2, x1
	b	.L831
	.p2align 2,,3
.L830:
	cmp	w3, w4
	beq	.L829
.L831:
	ldrb	w3, [x2]
	add	x2, x2, 1
	cbnz	w3, .L830
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L828
.L832:
	mov	x0, 0
.L829:
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
.L837:
	ldrb	w3, [x2]
	cmp	w3, w1
	csel	x0, x2, x0, eq
	add	x2, x2, 1
	cbnz	w3, .L837
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
	cbz	w8, .L850
	mov	x7, x1
	.p2align 3,,7
.L841:
	ldrb	w0, [x7, 1]!
	cbnz	w0, .L841
	subs	x10, x7, x1
	mov	x0, x5
	sub	x9, x1, #1
	bne	.L855
	b	.L839
	.p2align 2,,3
.L857:
	add	x5, x5, 1
	cbz	w2, .L856
.L855:
	ldrb	w2, [x5]
	cmp	w2, w8
	bne	.L857
	mov	w11, w8
	mov	x4, x1
	mov	x6, x5
	b	.L846
	.p2align 2,,3
.L845:
	ldrb	w2, [x6, 1]!
	add	x13, x4, 1
	ldrb	w11, [x4, 1]
	cbz	w2, .L844
	mov	x4, x13
.L846:
	cmp	w11, 0
	sub	x3, x10, x4
	ccmp	w2, w11, 0, ne
	add	x12, x9, x3
	ccmp	x12, 0, 4, eq
	bne	.L845
.L844:
	cmp	w2, w11
	beq	.L850
	add	x5, x5, 1
	b	.L855
	.p2align 2,,3
.L856:
	mov	x0, 0
.L839:
	ret
.L850:
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
	bmi	.L865
	bgt	.L866
	ret
	.p2align 2,,3
.L866:
	fcmpe	d1, #0.0
	bmi	.L861
	ret
	.p2align 2,,3
.L861:
	fneg	d0, d0
	ret
	.p2align 2,,3
.L865:
	fcmpe	d1, #0.0
	bgt	.L861
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
	cbz	x3, .L869
	cmp	x1, x3
	bcc	.L880
	sub	x1, x1, x3
	adds	x8, x0, x1
	bcs	.L880
	ldrb	w9, [x2]
	b	.L875
	.p2align 2,,3
.L879:
	mov	x0, x5
.L871:
	cmp	x8, x0
	bcc	.L880
.L875:
	mov	x5, x0
	ldrb	w4, [x5], 1
	cmp	w4, w9
	bne	.L879
	cmp	x3, 1
	beq	.L869
.L874:
	sub	x13, x3, #1
	mov	x10, 1
	b	.L872
	.p2align 2,,3
.L873:
	subs	x13, x13, #1
	beq	.L869
.L872:
	ldrb	w7, [x0, x10]
	ldrb	w6, [x2, x10]
	add	x10, x10, 1
	cmp	w7, w6
	beq	.L873
	cmp	x8, x5
	bcc	.L880
	mov	x0, x5
	ldrb	w11, [x0], 1
	cmp	w9, w11
	bne	.L871
	mov	x12, x5
	mov	x5, x0
	mov	x0, x12
	b	.L874
	.p2align 2,,3
.L880:
	mov	x0, 0
.L869:
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
	cbz	x2, .L890
	bl	memmove
.L890:
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
	bmi	.L912
	fmov	d2, 1.0e+0
	mov	w2, 0
	fcmpe	d0, d2
	bge	.L898
	fmov	d1, 5.0e-1
	fcmpe	d0, d1
	bmi	.L913
.L901:
	str	wzr, [x0]
.L895:
	ret
	.p2align 2,,3
.L907:
	fmov	d0, d30
	mov	w2, 1
.L898:
	mov	w1, 0
	fmov	d5, 5.0e-1
	fmov	d4, 1.0e+0
	.p2align 3,,7
.L904:
	fmul	d0, d0, d5
	add	w1, w1, 1
	fcmpe	d0, d4
	bge	.L904
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d0, d31, d0, ne
.L918:
	ret
	.p2align 2,,3
.L912:
	fmov	d6, -1.0e+0
	fneg	d30, d0
	fcmpe	d0, d6
	bls	.L907
	fmov	d3, -5.0e-1
	fcmpe	d0, d3
	bgt	.L908
	str	wzr, [x0]
	b	.L895
	.p2align 2,,3
.L913:
	fcmp	d0, #0.0
	beq	.L901
	fmov	d30, d0
	b	.L899
	.p2align 2,,3
.L908:
	mov	w2, 1
.L899:
	fmov	d0, d30
	mov	w1, 0
	fmov	d29, 5.0e-1
	.p2align 3,,7
.L906:
	fadd	d0, d0, d0
	sub	w1, w1, #1
	fcmpe	d0, d29
	bmi	.L906
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d0, d31, d0, ne
	b	.L918
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
	cbz	x2, .L919
	.p2align 3,,7
.L921:
	sbfx	x3, x2, 0, 1
	lsr	x2, x2, 1
	and	x4, x3, x1
	lsl	x1, x1, 1
	add	x0, x0, x4
	cbnz	x2, .L921
.L919:
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
	bcs	.L942
	.p2align 3,,7
.L925:
	tbnz	w1, #31, .L929
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L925
	mov	w4, 0
	cbz	w3, .L930
.L929:
	mov	w4, 0
	.p2align 3,,7
.L931:
	subs	w6, w0, w1
	lsr	w1, w1, 1
	cset	w5, cs
	cmp	w5, 0
	csel	w7, w3, wzr, ne
	csel	w0, w6, w0, ne
	orr	w4, w4, w7
	lsr	w3, w3, 1
	cbnz	w3, .L931
.L930:
	cmp	x2, 0
	csel	w0, w4, w0, eq
	ret
.L942:
	sub	w1, w0, w1
	cset	w4, ls
	csel	w0, w1, w0, ls
	b	.L930
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
	cbz	w2, .L950
	.p2align 3,,7
.L952:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w4, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w4
	cbnz	w2, .L952
.L950:
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
	and	w9, w2, -8
	lsr	w5, w2, 3
	mov	w6, w9
	cmp	x0, x1
	bcc	.L960
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1030
.L960:
	cbz	w5, .L1031
	sub	w7, w5, #1
	cmp	w7, 6
	bls	.L962
	add	x8, x1, 8
	cmp	x0, x8
	beq	.L962
	and	x11, x2, 4294967280
	lsr	w13, w2, 4
	sub	x12, x11, #16
	mov	x16, 0
	lsr	x14, x12, 4
	add	x15, x14, 1
	.p2align 3,,7
.L963:
	ldr	q1, [x1, x16]
	subs	x15, x15, #1
	str	q1, [x0, x16]
	add	x16, x16, 16
	bne	.L963
	lsl	w17, w13, 1
	cmp	w5, w17
	beq	.L966
	ldr	x18, [x1, x17, lsl 3]
	str	x18, [x0, x17, lsl 3]
.L966:
	cmp	w2, w9
	bls	.L955
	sub	w11, w2, w9
	uxtw	x13, w9
	sub	w12, w11, #1
	cmp	w12, 6
	bls	.L958
	add	x14, x13, 1
	add	x15, x0, x13
	add	x16, x1, x14
	sub	x17, x15, x16
	cmp	x17, 14
	bls	.L958
	cmp	w12, 14
	bls	.L983
	and	x6, x11, 4294967280
	add	x10, x1, x13
	sub	x5, x6, #16
	mov	x3, 0
	lsr	x7, x5, 4
	add	x8, x7, 1
	.p2align 3,,7
.L968:
	ldr	q2, [x10, x3]
	subs	x8, x8, #1
	str	q2, [x15, x3]
	add	x3, x3, 16
	bne	.L968
	and	w18, w11, -16
	add	w6, w9, w18
	tst	x11, 15
	beq	.L955
	sub	w11, w11, w18
	sub	w9, w11, #1
	cmp	w9, 6
	bls	.L970
.L967:
	add	x12, x13, w18, uxtw
	and	w4, w11, -8
	add	w6, w6, w4
	ldr	d3, [x1, x12]
	str	d3, [x0, x12]
	tst	x11, 7
	beq	.L955
.L970:
	ldrb	w11, [x1, w6, uxtw]
	add	w13, w6, 1
	strb	w11, [x0, w6, uxtw]
	cmp	w2, w13
	bls	.L955
	ldrb	w14, [x1, w13, uxtw]
	add	w15, w6, 2
	strb	w14, [x0, w13, uxtw]
	cmp	w15, w2
	bcs	.L955
	ldrb	w16, [x1, w15, uxtw]
	add	w17, w6, 3
	strb	w16, [x0, w15, uxtw]
	cmp	w2, w17
	bls	.L955
	ldrb	w18, [x1, w17, uxtw]
	add	w10, w6, 4
	strb	w18, [x0, w17, uxtw]
	cmp	w2, w10
	bls	.L955
	ldrb	w5, [x1, w10, uxtw]
	add	w7, w6, 5
	strb	w5, [x0, w10, uxtw]
	cmp	w2, w7
	bls	.L955
	ldrb	w8, [x1, w7, uxtw]
	add	w5, w6, 6
	strb	w8, [x0, w7, uxtw]
	cmp	w2, w5
	bls	.L955
.L1029:
	ldrb	w1, [x1, w5, uxtw]
	strb	w1, [x0, w5, uxtw]
.L955:
	ret
	.p2align 2,,3
.L1030:
	sub	w6, w2, #1
	cbz	w2, .L955
	uxtw	x10, w6
	cmp	w6, 6
	bls	.L974
	sub	x4, x10, #1
	add	x7, x0, x10
	add	x8, x1, x4
	sub	x11, x7, x8
	add	x12, x11, 14
	cmp	x12, 14
	bls	.L974
	cmp	w6, 14
	bls	.L984
	and	x14, x2, 4294967280
	sub	x15, x10, #15
	sub	x16, x14, #16
	add	x17, x1, x15
	add	x18, x0, x15
	mov	x3, 0
	lsr	x9, x16, 4
	add	x5, x9, 1
	.p2align 3,,7
.L976:
	ldr	q31, [x17, x3]
	subs	x5, x5, #1
	str	q31, [x18, x3]
	sub	x3, x3, #16
	bne	.L976
	and	w13, w2, -16
	sub	w6, w6, w13
	tst	x2, 15
	beq	.L955
	sub	w2, w2, w13
	sub	w4, w2, #1
	cmp	w4, 6
	bls	.L979
	and	w9, w2, -8
.L975:
	sub	x10, x10, #7
	sub	w6, w6, w9
	sub	x7, x10, w13, uxtw
	ldr	d0, [x1, x7]
	str	d0, [x0, x7]
	tst	x2, 7
	beq	.L955
.L979:
	ldrb	w8, [x1, w6, uxtw]
	sub	w2, w6, #1
	strb	w8, [x0, w6, uxtw]
	cbz	w6, .L955
	ldrb	w11, [x1, w2, uxtw]
	sub	w12, w6, #2
	strb	w11, [x0, w2, uxtw]
	cbz	w2, .L955
	ldrb	w13, [x1, w12, uxtw]
	sub	w14, w6, #3
	strb	w13, [x0, w12, uxtw]
	cbz	w12, .L955
	ldrb	w15, [x1, w14, uxtw]
	sub	w16, w6, #4
	strb	w15, [x0, w14, uxtw]
	cbz	w14, .L955
	ldrb	w17, [x1, w16, uxtw]
	sub	w18, w6, #5
	strb	w17, [x0, w16, uxtw]
	cbz	w16, .L955
	ldrb	w9, [x1, w18, uxtw]
	sub	w5, w6, #6
	strb	w9, [x0, w18, uxtw]
	cbnz	w18, .L1029
	b	.L955
.L983:
	mov	w18, 0
	b	.L967
	.p2align 2,,3
.L962:
	lsl	w5, w5, 3
	mov	x4, 0
	sub	x3, x5, #8
	lsr	x10, x3, 3
	add	x8, x10, 1
	.p2align 3,,7
.L965:
	ldr	x7, [x1, x4]
	str	x7, [x0, x4]
	subs	x8, x8, #1
	add	x4, x4, 8
	bne	.L965
	b	.L966
	.p2align 2,,3
.L1031:
	uxtw	x13, w9
	cbz	w2, .L955
.L958:
	mvn	w3, w13
	add	w9, w13, 1
	add	w12, w2, w3
	mov	x4, x13
	add	x6, x12, 1
	cmp	w9, w2
	bhi	.L1014
	cbz	w2, .L1014
.L1028:
	ldrb	w2, [x1, x4]
	subs	x6, x6, #1
	strb	w2, [x0, x4]
	add	x4, x4, 1
	bne	.L1028
	ret
.L1014:
	mov	x6, 1
	b	.L1028
.L974:
	add	x3, x10, 1
	.p2align 3,,7
.L981:
	ldrb	w4, [x1, x10]
	subs	x3, x3, #1
	strb	w4, [x0, x10]
	sub	x10, x10, #1
	bne	.L981
	ret
.L984:
	mov	w13, 0
	b	.L975
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
	bcc	.L1036
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1087
.L1036:
	cbz	w5, .L1035
	sub	w8, w5, #1
	cmp	w8, 6
	bls	.L1039
	add	x6, x1, 2
	sub	x10, x0, x6
	cmp	x10, 12
	bls	.L1039
	and	x11, x2, 4294967280
	lsr	w13, w2, 4
	sub	x12, x11, #16
	mov	x16, 0
	lsr	x14, x12, 4
	add	x15, x14, 1
	.p2align 3,,7
.L1040:
	ldr	q1, [x1, x16]
	subs	x15, x15, #1
	str	q1, [x0, x16]
	add	x16, x16, 16
	bne	.L1040
	lsl	w17, w13, 3
	cmp	w5, w17
	beq	.L1035
	uxtw	x18, w17
	add	w3, w17, 1
	ldrsh	w4, [x1, x18, lsl 1]
	strh	w4, [x0, x18, lsl 1]
	cmp	w5, w3
	bls	.L1035
	ldrsh	w9, [x1, w3, uxtw 1]
	add	w8, w17, 2
	strh	w9, [x0, w3, uxtw 1]
	cmp	w5, w8
	bls	.L1035
	ldrsh	w7, [x1, x8, lsl 1]
	add	w6, w17, 3
	strh	w7, [x0, x8, lsl 1]
	cmp	w5, w6
	bls	.L1035
	ldrsh	w10, [x1, w6, uxtw 1]
	add	w11, w17, 4
	strh	w10, [x0, w6, uxtw 1]
	cmp	w5, w11
	bls	.L1035
	ldrsh	w13, [x1, x11, lsl 1]
	add	w12, w17, 5
	strh	w13, [x0, x11, lsl 1]
	cmp	w5, w12
	bls	.L1035
	ldrsh	w14, [x1, w12, uxtw 1]
	add	w15, w17, 6
	strh	w14, [x0, w12, uxtw 1]
	cmp	w5, w15
	bls	.L1035
	ldrsh	w5, [x1, x15, lsl 1]
	strh	w5, [x0, x15, lsl 1]
.L1035:
	tbz	x2, 0, .L1032
.L1088:
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L1032:
	ret
	.p2align 2,,3
.L1087:
	sub	w6, w2, #1
	cbz	w2, .L1032
	uxtw	x9, w6
	cmp	w6, 6
	bls	.L1045
	sub	x4, x9, #1
	add	x7, x0, x9
	add	x8, x1, x4
	sub	x10, x7, x8
	add	x11, x10, 14
	cmp	x11, 14
	bls	.L1045
	cmp	w6, 14
	bls	.L1053
	and	x13, x2, 4294967280
	sub	x14, x9, #15
	sub	x15, x13, #16
	add	x16, x1, x14
	add	x17, x0, x14
	mov	x3, 0
	lsr	x18, x15, 4
	add	x5, x18, 1
	.p2align 3,,7
.L1047:
	ldr	q31, [x16, x3]
	subs	x5, x5, #1
	str	q31, [x17, x3]
	sub	x3, x3, #16
	bne	.L1047
	and	w12, w2, -16
	sub	w6, w6, w12
	tst	x2, 15
	beq	.L1032
	sub	w2, w2, w12
	sub	w4, w2, #1
	cmp	w4, 6
	bls	.L1049
.L1046:
	sub	x9, x9, #7
	and	w7, w2, -8
	sub	x8, x9, w12, uxtw
	sub	w6, w6, w7
	ldr	d0, [x1, x8]
	str	d0, [x0, x8]
	tst	x2, 7
	beq	.L1032
.L1049:
	ldrb	w10, [x1, w6, uxtw]
	sub	w2, w6, #1
	strb	w10, [x0, w6, uxtw]
	cbz	w6, .L1032
	ldrb	w11, [x1, w2, uxtw]
	sub	w12, w6, #2
	strb	w11, [x0, w2, uxtw]
	cbz	w2, .L1032
	ldrb	w13, [x1, w12, uxtw]
	sub	w14, w6, #3
	strb	w13, [x0, w12, uxtw]
	cbz	w12, .L1032
	ldrb	w15, [x1, w14, uxtw]
	sub	w16, w6, #4
	strb	w15, [x0, w14, uxtw]
	cbz	w14, .L1032
	ldrb	w17, [x1, w16, uxtw]
	sub	w18, w6, #5
	strb	w17, [x0, w16, uxtw]
	cbz	w16, .L1032
	ldrb	w5, [x1, w18, uxtw]
	sub	w3, w6, #6
	strb	w5, [x0, w18, uxtw]
	cbz	w18, .L1032
	ldrb	w1, [x1, w3, uxtw]
	strb	w1, [x0, w3, uxtw]
	ret
	.p2align 2,,3
.L1039:
	lsl	w16, w5, 1
	mov	x4, 0
	sub	x17, x16, #2
	lsr	x18, x17, 1
	add	x3, x18, 1
	.p2align 3,,7
.L1042:
	ldrsh	w9, [x1, x4]
	subs	x3, x3, #1
	strh	w9, [x0, x4]
	add	x4, x4, 2
	bne	.L1042
	tbz	x2, 0, .L1032
	b	.L1088
.L1045:
	mov	x7, x9
	add	x9, x9, 1
	.p2align 3,,7
.L1051:
	ldrb	w4, [x1, x7]
	subs	x9, x9, #1
	strb	w4, [x0, x7]
	sub	x7, x7, #1
	bne	.L1051
	ret
.L1053:
	mov	w12, 0
	b	.L1046
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
	and	w5, w2, -4
	cmp	x0, x1
	bcc	.L1094
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1163
.L1094:
	cbz	w6, .L1164
	sub	w8, w6, #1
	cmp	w8, 5
	bls	.L1096
	add	x9, x1, 4
	sub	x10, x0, x9
	cmp	x10, 8
	bls	.L1096
	and	x11, x2, 4294967280
	lsr	w13, w2, 4
	sub	x12, x11, #16
	mov	x16, 0
	lsr	x14, x12, 4
	add	x15, x14, 1
	.p2align 3,,7
.L1097:
	ldr	q1, [x1, x16]
	subs	x15, x15, #1
	str	q1, [x0, x16]
	add	x16, x16, 16
	bne	.L1097
	lsl	w17, w13, 2
	cmp	w6, w17
	beq	.L1100
	uxtw	x18, w17
	add	w4, w17, 1
	ldr	w3, [x1, x18, lsl 2]
	str	w3, [x0, x18, lsl 2]
	cmp	w6, w4
	bls	.L1100
	ldr	w7, [x1, x4, lsl 2]
	add	w8, w17, 2
	str	w7, [x0, x4, lsl 2]
	cmp	w6, w8
	bls	.L1100
	ldr	w6, [x1, x8, lsl 2]
	str	w6, [x0, x8, lsl 2]
.L1100:
	cmp	w2, w5
	bls	.L1089
	sub	w15, w2, w5
	uxtw	x17, w5
	sub	w16, w15, #1
	cmp	w16, 6
	bls	.L1092
	add	x18, x17, 1
	add	x8, x0, x17
	add	x4, x1, x18
	sub	x3, x8, x4
	cmp	x3, 14
	bls	.L1092
	cmp	w16, 14
	bls	.L1117
	and	x6, x15, 4294967280
	add	x9, x1, x17
	sub	x10, x6, #16
	mov	x13, 0
	lsr	x11, x10, 4
	add	x12, x11, 1
	.p2align 3,,7
.L1102:
	ldr	q2, [x9, x13]
	subs	x12, x12, #1
	str	q2, [x8, x13]
	add	x13, x13, 16
	bne	.L1102
	and	w7, w15, -16
	add	w5, w5, w7
	tst	x15, 15
	beq	.L1089
	sub	w15, w15, w7
	sub	w14, w15, #1
	cmp	w14, 6
	bls	.L1104
.L1101:
	add	x16, x17, w7, uxtw
	and	w17, w15, -8
	add	w5, w5, w17
	ldr	d3, [x1, x16]
	str	d3, [x0, x16]
	tst	x15, 7
	beq	.L1089
.L1104:
	ldrb	w15, [x1, w5, uxtw]
	add	w18, w5, 1
	strb	w15, [x0, w5, uxtw]
	cmp	w2, w18
	bls	.L1089
	ldrb	w8, [x1, w18, uxtw]
	add	w4, w5, 2
	strb	w8, [x0, w18, uxtw]
	cmp	w4, w2
	bcs	.L1089
	ldrb	w7, [x1, w4, uxtw]
	add	w3, w5, 3
	strb	w7, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L1089
	ldrb	w6, [x1, w3, uxtw]
	add	w10, w5, 4
	strb	w6, [x0, w3, uxtw]
	cmp	w2, w10
	bls	.L1089
	ldrb	w9, [x1, w10, uxtw]
	add	w11, w5, 5
	strb	w9, [x0, w10, uxtw]
	cmp	w2, w11
	bls	.L1089
	ldrb	w12, [x1, w11, uxtw]
	add	w13, w5, 6
	strb	w12, [x0, w11, uxtw]
	cmp	w2, w13
	bls	.L1089
	ldrb	w2, [x1, w13, uxtw]
	strb	w2, [x0, w13, uxtw]
.L1089:
	ret
	.p2align 2,,3
.L1163:
	sub	w6, w2, #1
	cbz	w2, .L1089
	uxtw	x5, w6
	cmp	w6, 6
	bls	.L1108
	sub	x4, x5, #1
	add	x7, x0, x5
	add	x8, x1, x4
	sub	x9, x7, x8
	add	x10, x9, 14
	cmp	x10, 14
	bls	.L1108
	cmp	w6, 14
	bls	.L1118
	and	x12, x2, 4294967280
	sub	x13, x5, #15
	sub	x14, x12, #16
	add	x15, x1, x13
	add	x16, x0, x13
	mov	x3, 0
	lsr	x17, x14, 4
	add	x18, x17, 1
	.p2align 3,,7
.L1110:
	ldr	q31, [x15, x3]
	subs	x18, x18, #1
	str	q31, [x16, x3]
	sub	x3, x3, #16
	bne	.L1110
	and	w11, w2, -16
	sub	w6, w6, w11
	tst	x2, 15
	beq	.L1089
	sub	w2, w2, w11
	sub	w4, w2, #1
	cmp	w4, 6
	bls	.L1113
.L1109:
	sub	x7, x5, #7
	and	w5, w2, -8
	sub	x8, x7, w11, uxtw
	sub	w6, w6, w5
	ldr	d0, [x1, x8]
	str	d0, [x0, x8]
	tst	x2, 7
	beq	.L1089
.L1113:
	ldrb	w9, [x1, w6, uxtw]
	sub	w2, w6, #1
	strb	w9, [x0, w6, uxtw]
	cbz	w6, .L1089
	ldrb	w10, [x1, w2, uxtw]
	sub	w11, w6, #2
	strb	w10, [x0, w2, uxtw]
	cbz	w2, .L1089
	ldrb	w12, [x1, w11, uxtw]
	sub	w13, w6, #3
	strb	w12, [x0, w11, uxtw]
	cbz	w11, .L1089
	ldrb	w14, [x1, w13, uxtw]
	sub	w15, w6, #4
	strb	w14, [x0, w13, uxtw]
	cbz	w13, .L1089
	ldrb	w16, [x1, w15, uxtw]
	sub	w17, w6, #5
	strb	w16, [x0, w15, uxtw]
	cbz	w15, .L1089
	ldrb	w18, [x1, w17, uxtw]
	sub	w3, w6, #6
	strb	w18, [x0, w17, uxtw]
	cbz	w17, .L1089
	ldrb	w1, [x1, w3, uxtw]
	strb	w1, [x0, w3, uxtw]
	ret
.L1117:
	mov	w7, 0
	b	.L1101
	.p2align 2,,3
.L1096:
	lsl	w9, w6, 2
	mov	x14, 0
	sub	x10, x9, #4
	lsr	x11, x10, 2
	add	x13, x11, 1
	.p2align 3,,7
.L1099:
	ldr	w12, [x1, x14]
	subs	x13, x13, #1
	str	w12, [x0, x14]
	add	x14, x14, 4
	bne	.L1099
	b	.L1100
	.p2align 2,,3
.L1164:
	uxtw	x17, w5
	cbz	w2, .L1089
.L1092:
	mvn	w14, w17
	mov	x18, x17
	add	w16, w17, 1
	add	w17, w2, w14
	add	x15, x17, 1
	cmp	w16, w2
	bhi	.L1148
	cbz	w2, .L1148
.L1162:
	ldrb	w5, [x1, x18]
	subs	x15, x15, #1
	strb	w5, [x0, x18]
	add	x18, x18, 1
	bne	.L1162
	ret
.L1148:
	mov	x15, 1
	b	.L1162
.L1108:
	add	x7, x5, 1
	.p2align 3,,7
.L1115:
	ldrb	w4, [x1, x5]
	subs	x7, x7, #1
	strb	w4, [x0, x5]
	sub	x5, x5, #1
	bne	.L1115
	ret
.L1118:
	mov	w11, 0
	b	.L1109
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
	movi	v29.4s, 0x1
	and	w2, w0, 65535
	adrp	x0, .LC28
	dup	v31.4s, w2
	ldr	q30, [x0, #:lo12:.LC28]
	sshl	v0.4s, v31.4s, v30.4s
	cmtst	v1.4s, v0.4s, v29.4s
	umaxp	v2.4s, v1.4s, v1.4s
	fmov	x1, d2
	cbnz	x1, .L1177
	adrp	x3, .LC29
	ldr	q3, [x3, #:lo12:.LC29]
	sshl	v4.4s, v31.4s, v3.4s
	cmtst	v5.4s, v4.4s, v29.4s
	umaxp	v6.4s, v5.4s, v5.4s
	fmov	x4, d6
	cbnz	x4, .L1178
	adrp	x5, .LC30
	ldr	q7, [x5, #:lo12:.LC30]
	sshl	v16.4s, v31.4s, v7.4s
	cmtst	v17.4s, v16.4s, v29.4s
	umaxp	v18.4s, v17.4s, v17.4s
	fmov	x6, d18
	cbnz	x6, .L1179
	adrp	x7, .LC31
	ldr	q19, [x7, #:lo12:.LC31]
	sshl	v20.4s, v31.4s, v19.4s
	cmtst	v21.4s, v20.4s, v29.4s
	umaxp	v22.4s, v21.4s, v21.4s
	fmov	x8, d22
	cbnz	x8, .L1180
.L1182:
	mov	w0, 16
.L1171:
	ret
.L1177:
	adrp	x17, .LC16
	adrp	x18, .LC9
	ldr	q30, [x17, #:lo12:.LC16]
	ldr	q31, [x18, #:lo12:.LC9]
	umov	x10, v30.d[0]
	umov	x12, v31.d[0]
.L1172:
	mov	w3, 15
	sub	w0, w3, w12
	asr	w1, w2, w0
	tbnz	x1, 0, .L1188
	add	w0, w12, 1
	sub	w4, w3, w0
	asr	w5, w2, w4
	tbnz	x5, 0, .L1171
	add	w0, w12, 2
	cmp	w10, 2
	beq	.L1182
	sub	w6, w3, w0
	asr	w7, w2, w6
	tbnz	x7, 0, .L1171
	add	w8, w12, 3
	cmp	w10, 3
	beq	.L1182
	sub	w9, w3, w8
	mov	w10, 16
	asr	w2, w2, w9
	tst	x2, 1
	csel	w0, w8, w10, ne
	ret
.L1178:
	adrp	x15, .LC18
	adrp	x16, .LC11
	ldr	q27, [x15, #:lo12:.LC18]
	ldr	q28, [x16, #:lo12:.LC11]
	umov	x10, v27.d[0]
	umov	x12, v28.d[0]
	b	.L1172
.L1180:
	adrp	x9, .LC22
	adrp	x11, .LC15
	ldr	q23, [x9, #:lo12:.LC22]
	ldr	q24, [x11, #:lo12:.LC15]
	umov	x10, v23.d[0]
	umov	x12, v24.d[0]
	b	.L1172
.L1179:
	adrp	x13, .LC20
	adrp	x14, .LC13
	ldr	q25, [x13, #:lo12:.LC20]
	ldr	q26, [x14, #:lo12:.LC13]
	umov	x10, v25.d[0]
	umov	x12, v26.d[0]
	b	.L1172
.L1188:
	mov	w0, w12
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
	movi	v29.4s, 0x1
	and	w2, w0, 65535
	adrp	x0, .LC0
	dup	v31.4s, w2
	ldr	q30, [x0, #:lo12:.LC0]
	sshl	v0.4s, v31.4s, v30.4s
	cmtst	v1.4s, v0.4s, v29.4s
	umaxp	v2.4s, v1.4s, v1.4s
	fmov	x1, d2
	cbnz	x1, .L1195
	adrp	x3, .LC1
	ldr	q3, [x3, #:lo12:.LC1]
	sshl	v4.4s, v31.4s, v3.4s
	cmtst	v5.4s, v4.4s, v29.4s
	umaxp	v6.4s, v5.4s, v5.4s
	fmov	x4, d6
	cbnz	x4, .L1196
	adrp	x5, .LC2
	ldr	q7, [x5, #:lo12:.LC2]
	sshl	v16.4s, v31.4s, v7.4s
	cmtst	v17.4s, v16.4s, v29.4s
	umaxp	v18.4s, v17.4s, v17.4s
	fmov	x6, d18
	cbnz	x6, .L1197
	adrp	x7, .LC3
	ldr	q19, [x7, #:lo12:.LC3]
	sshl	v20.4s, v31.4s, v19.4s
	cmtst	v21.4s, v20.4s, v29.4s
	umaxp	v22.4s, v21.4s, v21.4s
	fmov	x8, d22
	cbnz	x8, .L1198
.L1200:
	mov	w0, 16
.L1189:
	ret
.L1195:
	adrp	x17, .LC16
	adrp	x18, .LC9
	ldr	q30, [x17, #:lo12:.LC16]
	ldr	q31, [x18, #:lo12:.LC9]
	umov	x10, v30.d[0]
	umov	x12, v31.d[0]
.L1190:
	asr	w0, w2, w12
	tbnz	x0, 0, .L1206
	add	w0, w12, 1
	asr	w1, w2, w0
	tbnz	x1, 0, .L1189
	add	w0, w12, 2
	cmp	w10, 2
	beq	.L1200
	asr	w3, w2, w0
	tbnz	x3, 0, .L1189
	add	w4, w12, 3
	cmp	w10, 3
	beq	.L1200
	asr	w2, w2, w4
	mov	w5, 16
	tst	x2, 1
	csel	w0, w4, w5, ne
	ret
.L1196:
	adrp	x15, .LC18
	adrp	x16, .LC11
	ldr	q27, [x15, #:lo12:.LC18]
	ldr	q28, [x16, #:lo12:.LC11]
	umov	x10, v27.d[0]
	umov	x12, v28.d[0]
	b	.L1190
.L1198:
	adrp	x9, .LC22
	adrp	x11, .LC15
	ldr	q23, [x9, #:lo12:.LC22]
	ldr	q24, [x11, #:lo12:.LC15]
	umov	x10, v23.d[0]
	umov	x12, v24.d[0]
	b	.L1190
.L1197:
	adrp	x13, .LC20
	adrp	x14, .LC13
	ldr	q25, [x13, #:lo12:.LC20]
	ldr	q26, [x14, #:lo12:.LC13]
	umov	x10, v25.d[0]
	umov	x12, v26.d[0]
	b	.L1190
.L1206:
	mov	w0, w12
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
	bge	.L1211
	fcvtzs	x0, s0
	ret
	.p2align 2,,3
.L1211:
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
	and	w0, w0, 65535
	adrp	x1, .LC0
	adrp	x2, .LC1
	adrp	x3, .LC2
	dup	v31.4s, w0
	adrp	x4, .LC3
	ldr	q29, [x1, #:lo12:.LC0]
	ldr	q28, [x2, #:lo12:.LC1]
	movi	v27.4s, 0x1
	sshl	v0.4s, v31.4s, v29.4s
	sshl	v1.4s, v31.4s, v28.4s
	ldr	q30, [x3, #:lo12:.LC2]
	and	v2.16b, v0.16b, v27.16b
	and	v3.16b, v1.16b, v27.16b
	sshl	v4.4s, v31.4s, v30.4s
	ldr	q26, [x4, #:lo12:.LC3]
	add	v5.4s, v2.4s, v3.4s
	and	v6.16b, v4.16b, v27.16b
	sshl	v7.4s, v31.4s, v26.4s
	add	v16.4s, v6.4s, v5.4s
	and	v17.16b, v7.16b, v27.16b
	add	v18.4s, v17.4s, v16.4s
	addv	s19, v18.4s
	fmov	w5, s19
	and	w0, w5, 1
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
	adrp	x1, .LC0
	adrp	x2, .LC1
	adrp	x3, .LC2
	dup	v31.4s, w0
	adrp	x4, .LC3
	ldr	q1, [x1, #:lo12:.LC0]
	ldr	q0, [x2, #:lo12:.LC1]
	movi	v29.4s, 0x1
	sshl	v2.4s, v31.4s, v1.4s
	sshl	v3.4s, v31.4s, v0.4s
	ldr	q30, [x3, #:lo12:.LC2]
	and	v4.16b, v2.16b, v29.16b
	and	v5.16b, v3.16b, v29.16b
	sshl	v6.4s, v31.4s, v30.4s
	ldr	q28, [x4, #:lo12:.LC3]
	add	v7.4s, v4.4s, v5.4s
	and	v16.16b, v6.16b, v29.16b
	sshl	v17.4s, v31.4s, v28.4s
	add	v18.4s, v16.4s, v7.4s
	and	v19.16b, v17.16b, v29.16b
	add	v20.4s, v19.4s, v18.4s
	addv	s21, v20.4s
	fmov	w0, s21
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
	cbz	w2, .L1216
	.p2align 3,,7
.L1218:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w4, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w4
	cbnz	w2, .L1218
.L1216:
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
	cbz	w3, .L1221
	cbz	w1, .L1221
	.p2align 3,,7
.L1223:
	sbfx	x2, x1, 0, 1
	lsr	w1, w1, 1
	and	w4, w2, w3
	lsl	w3, w3, 1
	add	w0, w0, w4
	cbnz	w1, .L1223
.L1221:
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
	bcs	.L1246
	.p2align 3,,7
.L1229:
	tbnz	w1, #31, .L1233
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L1229
	mov	w4, 0
	cbz	w3, .L1234
.L1233:
	mov	w4, 0
	.p2align 3,,7
.L1235:
	subs	w6, w0, w1
	lsr	w1, w1, 1
	cset	w5, cs
	cmp	w5, 0
	csel	w7, w3, wzr, ne
	csel	w0, w6, w0, ne
	orr	w4, w4, w7
	lsr	w3, w3, 1
	cbnz	w3, .L1235
.L1234:
	cmp	w2, 0
	csel	w0, w4, w0, eq
	ret
.L1246:
	sub	w1, w0, w1
	cset	w4, ls
	csel	w0, w1, w0, ls
	b	.L1234
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
	blt	.L1265
	beq	.L1261
	mov	w5, 0
.L1258:
	mov	w4, 0
	mov	w6, 0
	.p2align 3,,7
.L1260:
	add	w2, w6, 1
	sbfx	x3, x1, 0, 1
	and	w6, w2, 255
	and	w7, w3, w0
	asr	w1, w1, 1
	cmp	w6, 32
	ccmp	w1, 0, 4, ne
	add	w4, w4, w7
	lsl	w0, w0, 1
	bne	.L1260
	cmp	w5, 0
	csneg	w0, w4, w4, eq
	ret
	.p2align 2,,3
.L1265:
	neg	w1, w1
	mov	w5, 1
	b	.L1258
	.p2align 2,,3
.L1261:
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
	tbnz	x0, #63, .L1289
.L1267:
	tbz	x1, #63, .L1268
	neg	x1, x1
	mov	w6, w2
.L1268:
	mov	w4, w0
	mov	w8, w1
	mov	w3, 1
	cmp	w0, w1
	bls	.L1287
	.p2align 3,,7
.L1269:
	tbnz	w8, #31, .L1271
	lsl	w3, w3, 1
	lsl	w8, w8, 1
	cmp	w3, 0
	ccmp	w4, w8, 0, ne
	bhi	.L1269
	mov	x0, 0
	cbz	w3, .L1272
.L1271:
	mov	w0, 0
	.p2align 3,,7
.L1274:
	subs	w5, w4, w8
	lsr	w8, w8, 1
	cset	w1, cs
	cmp	w1, 0
	csel	w7, w3, wzr, ne
	csel	w4, w5, w4, ne
	orr	w0, w0, w7
	lsr	w3, w3, 1
	cbnz	w3, .L1274
.L1272:
	cmp	w6, 0
	csneg	x0, x0, x0, eq
	ret
	.p2align 2,,3
.L1289:
	neg	x0, x0
	mov	w2, 0
	mov	w6, 1
	b	.L1267
.L1287:
	cset	w0, cs
	b	.L1272
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
	tbz	x0, #63, .L1291
	neg	x0, x0
	mov	w5, 1
.L1291:
	cmp	x1, 0
	mov	w4, w0
	csneg	x1, x1, x1, ge
	mov	w3, 1
	mov	w7, w1
	cmp	w0, w1
	bls	.L1310
	.p2align 3,,7
.L1292:
	tbnz	w7, #31, .L1308
	lsl	w3, w3, 1
	lsl	w7, w7, 1
	cmp	w3, 0
	ccmp	w4, w7, 0, ne
	bhi	.L1292
	cbz	w3, .L1295
	.p2align 3,,7
.L1308:
	subs	w6, w4, w7
	lsr	w3, w3, 1
	csel	w4, w6, w4, cs
	lsr	w7, w7, 1
	cbnz	w3, .L1308
.L1295:
	uxtw	x0, w4
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
.L1310:
	sub	w2, w0, w1
	csel	w4, w2, w0, cs
	b	.L1295
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
	bcc	.L1314
	b	.L1376
	.p2align 2,,3
.L1317:
	cmp	w13, 0
	ubfiz	w14, w4, 1, 15
	ccmp	w11, w5, 0, ne
	bls	.L1316
	mov	w4, w13
	mov	w1, w5
.L1314:
	ubfiz	w13, w4, 1, 15
	ubfiz	w5, w1, 1, 15
	tbz	x1, 15, .L1317
	subs	w3, w11, w1
	ubfx	x9, x4, 1, 16
	cset	w6, cs
	lsr	w7, w1, 1
	cmp	w6, 0
	csel	w8, w3, w11, ne
	csel	w10, w4, wzr, ne
	and	w11, w8, 65535
	and	w12, w10, 65535
	cbz	w9, .L1377
.L1321:
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
	cbz	w3, .L1319
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
	cbz	w12, .L1319
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
	cbz	w3, .L1319
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
	cbz	w9, .L1319
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
	cbz	w18, .L1319
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
	cbz	w10, .L1319
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
	cbz	w16, .L1319
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
	cbz	w10, .L1319
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
	cbz	w15, .L1319
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
	cbz	w10, .L1319
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
	cbz	w15, .L1319
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
	cbz	w10, .L1319
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
	cbz	w8, .L1319
	subs	w17, w11, w14
	lsr	w1, w1, 15
	cset	w11, cs
	cmp	w11, 0
	csel	w18, w8, wzr, ne
	csel	w10, w17, w16, ne
	orr	w13, w13, w18
	and	w11, w10, 65535
	and	w13, w13, 65535
	tbz	x4, 15, .L1319
	subs	w4, w11, w1
	csel	w0, w4, w10, cs
	cset	w3, cs
	and	w11, w0, 65535
	orr	w13, w3, w13
.L1319:
	cmp	w2, 0
	csel	w0, w11, w13, ne
	ret
	.p2align 2,,3
.L1316:
	cbz	w13, .L1319
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
	b	.L1321
.L1376:
	sub	w1, w11, w1
	cset	w13, eq
	csel	w0, w1, w11, eq
	and	w11, w0, 65535
	b	.L1319
.L1377:
	mov	w13, w12
	b	.L1319
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
	bcs	.L1396
	.p2align 3,,7
.L1379:
	tbnz	x1, 31, .L1383
	lsl	x3, x3, 1
	lsl	x1, x1, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L1379
	mov	x4, 0
	cbz	x3, .L1384
.L1383:
	mov	x4, 0
	.p2align 3,,7
.L1385:
	subs	x6, x0, x1
	lsr	x1, x1, 1
	cset	w5, cs
	cmp	w5, 0
	csel	x7, x3, xzr, ne
	csel	x0, x6, x0, ne
	orr	x4, x4, x7
	lsr	x3, x3, 1
	cbnz	x3, .L1385
.L1384:
	cmp	w2, 0
	csel	x0, x4, x0, eq
	ret
.L1396:
	sub	x1, x0, x1
	cset	x4, ls
	csel	x0, x1, x0, ls
	b	.L1384
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
	tbz	x1, 5, .L1399
	sub	w7, w1, #32
	mov	w3, 0
	lsl	w6, w0, w7
.L1400:
	uxtw	x8, w3
	orr	x0, x8, x6, lsl 32
.L1398:
	ret
	.p2align 2,,3
.L1399:
	cbz	w1, .L1398
	neg	w4, w1
	asr	x0, x0, 32
	lsl	w3, w2, w1
	lsr	w5, w2, w4
	lsl	w1, w0, w1
	orr	w6, w5, w1
	b	.L1400
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
	tbz	x2, 6, .L1405
	sub	w5, w2, #64
	mov	x3, 0
	lsl	x1, x0, x5
	mov	x0, x3
.L1407:
	ret
	.p2align 2,,3
.L1405:
	cbz	w2, .L1407
	neg	w4, w2
	lsl	x1, x1, x2
	lsl	x3, x0, x2
	lsr	x2, x0, x4
	mov	x0, x3
	orr	x1, x2, x1
	b	.L1407
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
	tbz	x1, 5, .L1410
	asr	x8, x0, 32
	sub	w1, w1, #32
	asr	w7, w8, 31
	asr	w6, w8, w1
	orr	x0, x6, x7, lsl 32
.L1409:
	ret
	.p2align 2,,3
.L1410:
	cbz	w1, .L1409
	asr	x0, x0, 32
	neg	w3, w1
	lsr	w4, w2, w1
	lsl	w5, w0, w3
	orr	w6, w5, w4
	asr	w7, w0, w1
	orr	x0, x6, x7, lsl 32
	b	.L1409
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
	tbz	x2, 6, .L1416
	sub	w5, w2, #64
	asr	x3, x1, 63
	asr	x0, x1, x5
	mov	x1, x3
.L1418:
	ret
	.p2align 2,,3
.L1416:
	cbz	w2, .L1418
	neg	w4, w2
	lsr	x0, x0, x2
	asr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1418
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
	blt	.L1426
	mov	w0, 2
	bgt	.L1424
	cmp	w2, w1
	mov	w4, 0
	cset	w1, hi
	add	w5, w1, 1
	csel	w0, w5, w4, cs
.L1424:
	ret
	.p2align 2,,3
.L1426:
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
	blt	.L1432
	mov	w0, 1
	bgt	.L1430
	cmp	w2, w1
	cset	w1, hi
	csinv	w0, w1, wzr, cs
.L1430:
	ret
	.p2align 2,,3
.L1432:
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
	blt	.L1435
	mov	w0, 2
	bgt	.L1435
	cmp	x4, x2
	mov	w3, 0
	cset	w1, hi
	add	w0, w1, 1
	csel	w0, w0, w3, cs
.L1435:
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
	cbnz	x0, .L1444
	rbit	x2, x1
	cmp	x1, 0
	clz	x3, x2
	add	w4, w3, 65
	csel	w0, w4, wzr, ne
	ret
	.p2align 2,,3
.L1444:
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
	tbz	x1, 5, .L1448
	lsr	x8, x0, 32
	sub	w1, w1, #32
	mov	w7, 0
	lsr	w6, w8, w1
	orr	x0, x6, x7, lsl 32
.L1447:
	ret
	.p2align 2,,3
.L1448:
	cbz	w1, .L1447
	lsr	x0, x0, 32
	neg	w3, w1
	lsr	w4, w2, w1
	lsl	w5, w0, w3
	orr	w6, w5, w4
	lsr	w7, w0, w1
	orr	x0, x6, x7, lsl 32
	b	.L1447
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
	tbz	x2, 6, .L1454
	sub	w5, w2, #64
	mov	x3, 0
	lsr	x0, x1, x5
	mov	x1, x3
.L1456:
	ret
	.p2align 2,,3
.L1454:
	cbz	w2, .L1456
	neg	w4, w2
	lsr	x0, x0, x2
	lsr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1456
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
	tbz	x0, 0, .L1471
	.p2align 3,,7
.L1473:
	fmul	d31, d31, d1
.L1471:
	add	w1, w3, w3, lsr 31
	asr	w3, w1, 1
	cbz	w3, .L1472
	fmul	d1, d1, d1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1473
.L1477:
	asr	w3, w2, 1
	fmul	d1, d1, d1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1473
	b	.L1477
	.p2align 2,,3
.L1472:
	tbz	w0, #31, .L1470
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
.L1470:
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
	tbz	x0, 0, .L1479
	.p2align 3,,7
.L1481:
	fmul	s31, s31, s1
.L1479:
	add	w1, w3, w3, lsr 31
	asr	w3, w1, 1
	cbz	w3, .L1480
	fmul	s1, s1, s1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1481
.L1485:
	asr	w3, w2, 1
	fmul	s1, s1, s1
	add	w2, w3, w3, lsr 31
	tbnz	x3, 0, .L1481
	b	.L1485
	.p2align 2,,3
.L1480:
	tbz	w0, #31, .L1478
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
.L1478:
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
	bcc	.L1488
	mov	w0, 2
	bhi	.L1486
	cmp	w2, w1
	mov	w4, 0
	cset	w1, hi
	add	w5, w1, 1
	csel	w0, w5, w4, cs
.L1486:
	ret
	.p2align 2,,3
.L1488:
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
	bcc	.L1494
	mov	w0, 1
	bhi	.L1492
	cmp	w2, w1
	cset	w1, hi
	csinv	w0, w1, wzr, cs
.L1492:
	ret
	.p2align 2,,3
.L1494:
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
	bcc	.L1497
	mov	w0, 2
	bhi	.L1497
	cmp	x4, x2
	mov	w3, 0
	cset	w1, hi
	add	w0, w1, 1
	csel	w0, w0, w3, cs
.L1497:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	0
	.word	-1
	.word	-2
	.word	-3
	.align	4
.LC1:
	.word	-4
	.word	-5
	.word	-6
	.word	-7
	.align	4
.LC2:
	.word	-8
	.word	-9
	.word	-10
	.word	-11
	.align	4
.LC3:
	.word	-12
	.word	-13
	.word	-14
	.word	-15
	.align	4
.LC4:
	.word	-16
	.word	-17
	.word	-18
	.word	-19
	.align	4
.LC5:
	.word	-20
	.word	-21
	.word	-22
	.word	-23
	.align	4
.LC6:
	.word	-24
	.word	-25
	.word	-26
	.word	-27
	.align	4
.LC7:
	.word	-28
	.word	-29
	.word	-30
	.word	-31
	.align	4
.LC8:
	.word	32
	.word	31
	.word	30
	.word	29
	.align	4
.LC9:
	.word	0
	.word	1
	.word	2
	.word	3
	.align	4
.LC10:
	.word	28
	.word	27
	.word	26
	.word	25
	.align	4
.LC11:
	.word	4
	.word	5
	.word	6
	.word	7
	.align	4
.LC12:
	.word	24
	.word	23
	.word	22
	.word	21
	.align	4
.LC13:
	.word	8
	.word	9
	.word	10
	.word	11
	.align	4
.LC14:
	.word	20
	.word	19
	.word	18
	.word	17
	.align	4
.LC15:
	.word	12
	.word	13
	.word	14
	.word	15
	.align	4
.LC16:
	.word	16
	.word	15
	.word	14
	.word	13
	.align	4
.LC17:
	.word	16
	.word	17
	.word	18
	.word	19
	.align	4
.LC18:
	.word	12
	.word	11
	.word	10
	.word	9
	.align	4
.LC19:
	.word	20
	.word	21
	.word	22
	.word	23
	.align	4
.LC20:
	.word	8
	.word	7
	.word	6
	.word	5
	.align	4
.LC21:
	.word	24
	.word	25
	.word	26
	.word	27
	.align	4
.LC22:
	.word	4
	.word	3
	.word	2
	.word	1
	.align	4
.LC23:
	.word	28
	.word	29
	.word	30
	.word	31
	.align	4
.LC24:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC25:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.align	4
.LC26:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC27:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	4
.LC28:
	.word	-15
	.word	-14
	.word	-13
	.word	-12
	.align	4
.LC29:
	.word	-11
	.word	-10
	.word	-9
	.word	-8
	.align	4
.LC30:
	.word	-7
	.word	-6
	.word	-5
	.word	-4
	.align	4
.LC31:
	.word	-3
	.word	-2
	.word	-1
	.word	0
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
