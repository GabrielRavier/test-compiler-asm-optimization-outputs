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
	sub	x3, x2, #1
	cmp	x3, 6
	bls	.L7
	sub	x5, x2, #2
	add	x4, x0, x3
	add	x5, x1, x5
	sub	x4, x4, x5
	add	x4, x4, 14
	cmp	x4, 14
	bls	.L7
	add	x8, x1, x2
	add	x7, x0, x2
	cmp	x3, 14
	bls	.L24
	and	x4, x2, -16
	sub	x5, x2, #16
	sub	x4, x4, #16
	add	x6, x1, x5
	add	x5, x0, x5
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L9:
	ldr	q31, [x6, x3]
	subs	x4, x4, #1
	str	q31, [x5, x3]
	sub	x3, x3, #16
	bne	.L9
	add	x8, x8, x3
	add	x7, x7, x3
	and	x3, x2, 15
	tst	x2, 15
	beq	.L6
	sub	x4, x3, #1
	mov	x2, x3
	cmp	x4, 6
	bls	.L11
.L8:
	sub	x5, x2, #8
	and	x4, x2, -8
	sub	x8, x8, x4
	sub	x7, x7, x4
	sub	x3, x3, x4
	ldr	d31, [x1, x5]
	str	d31, [x0, x5]
	tst	x2, 7
	beq	.L6
.L11:
	ldrb	w1, [x8, -1]
	strb	w1, [x7, -1]
	cmp	x3, 1
	beq	.L6
	ldrb	w1, [x8, -2]
	strb	w1, [x7, -2]
	cmp	x3, 2
	beq	.L6
	ldrb	w1, [x8, -3]
	strb	w1, [x7, -3]
	cmp	x3, 3
	beq	.L6
	ldrb	w1, [x8, -4]
	strb	w1, [x7, -4]
	cmp	x3, 4
	beq	.L6
	ldrb	w1, [x8, -5]
	strb	w1, [x7, -5]
	cmp	x3, 5
	beq	.L6
	ldrb	w1, [x8, -6]
	strb	w1, [x7, -6]
	cmp	x3, 6
	beq	.L6
	ldrb	w1, [x8, -7]
	strb	w1, [x7, -7]
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
	sub	x3, x0, x3
	cmp	x3, 14
	bls	.L26
	cmp	x4, 14
	bls	.L27
	and	x5, x2, -16
	mov	x3, 0
	sub	x4, x5, #16
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L17:
	ldr	q31, [x1, x3]
	subs	x4, x4, #1
	str	q31, [x0, x3]
	add	x3, x3, 16
	bne	.L17
	add	x6, x1, x5
	add	x4, x0, x5
	subs	x3, x2, x5
	beq	.L6
	sub	x7, x3, #1
	mov	x2, x3
	cmp	x7, 6
	bls	.L20
.L16:
	ldr	d31, [x1, x5]
	and	x1, x2, -8
	add	x6, x6, x1
	add	x4, x4, x1
	sub	x3, x3, x1
	str	d31, [x0, x5]
	tst	x2, 7
	beq	.L6
.L20:
	ldrb	w1, [x6]
	strb	w1, [x4]
	cmp	x3, 1
	beq	.L6
	ldrb	w1, [x6, 1]
	strb	w1, [x4, 1]
	cmp	x3, 2
	beq	.L6
	ldrb	w1, [x6, 2]
	strb	w1, [x4, 2]
	cmp	x3, 3
	beq	.L6
	ldrb	w1, [x6, 3]
	strb	w1, [x4, 3]
	cmp	x3, 4
	beq	.L6
	ldrb	w1, [x6, 4]
	strb	w1, [x4, 4]
	cmp	x3, 5
	beq	.L6
	ldrb	w1, [x6, 5]
	strb	w1, [x4, 5]
	cmp	x3, 6
	beq	.L6
	ldrb	w1, [x6, 6]
	strb	w1, [x4, 6]
	ret
	.p2align 2,,3
.L7:
	sub	x1, x1, #1
	sub	x6, x0, #1
	add	x4, x3, 1
	.p2align 3,,7
.L13:
	ldrb	w5, [x1, x2]
	subs	x4, x4, #1
	strb	w5, [x6, x2]
	mov	x2, x3
	sub	x3, x3, #1
	bne	.L13
	ret
	.p2align 2,,3
.L26:
	mov	x3, 0
	.p2align 3,,7
.L22:
	ldrb	w4, [x1, x3]
	subs	x2, x2, #1
	strb	w4, [x0, x3]
	add	x3, x3, 1
	bne	.L22
	ret
.L24:
	mov	x3, x2
	b	.L8
.L27:
	mov	x6, x1
	mov	x4, x0
	mov	x3, x2
	mov	x5, 0
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
	add	x2, x2, 2
	b	.L125
	.p2align 2,,3
.L127:
	ldrb	w4, [x0]
	sub	x3, x3, #1
	cmp	w4, w1
	beq	.L124
.L125:
	mov	x0, x3
	subs	x2, x2, #1
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
	ldrb	w2, [x1, 1]!
	strb	w2, [x0, 1]!
	cbnz	w2, .L135
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
	mov	x1, x0
	.p2align 3,,7
.L163:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L163
	sub	x0, x1, x0
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
	add	x3, x3, x7
	add	x6, x2, 1
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x3, 0, 4, eq
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
	sub	x3, x6, #32
	mov	x5, x0
	mov	x4, x1
	lsr	x3, x3, 5
	add	x3, x3, 1
	.p2align 3,,7
.L182:
	ld2	{v30.16b - v31.16b}, [x5], 32
	subs	x3, x3, #1
	mov	v29.16b, v31.16b
	st2	{v29.16b - v30.16b}, [x4], 32
	bne	.L182
	lsl	x3, x8, 4
	sub	x2, x2, x8, lsl 5
	add	x4, x0, x6
	add	x8, x1, x6
	cmp	x3, x9
	beq	.L179
.L181:
	sub	x5, x7, x3
	add	x6, x5, 1
	cmp	x5, 2
	bls	.L184
	lsl	x3, x3, 1
	lsr	x5, x6, 2
	add	x9, x0, x3
	add	x7, x1, x3
	ldr	d28, [x0, x3]
	rev16	v28.8b, v28.8b
	str	d28, [x1, x3]
	cmp	x5, 1
	beq	.L185
	ldr	d27, [x9, 8]
	rev16	v27.8b, v27.8b
	str	d27, [x7, 8]
	cmp	x5, 2
	beq	.L185
	ldr	d26, [x9, 16]
	rev16	v26.8b, v26.8b
	str	d26, [x7, 16]
.L185:
	and	x1, x6, -4
	lsl	x0, x1, 1
	sub	x2, x2, x1, lsl 1
	add	x8, x8, x0
	add	x4, x4, x0
	tst	x6, 3
	beq	.L179
.L184:
	ldrh	w0, [x4]
	rev16	w0, w0
	strh	w0, [x8]
	cmp	x2, 3
	ble	.L179
	ldrh	w0, [x4, 2]
	rev16	w0, w0
	strh	w0, [x8, 2]
	cmp	x2, 5
	ble	.L179
	ldrh	w0, [x4, 4]
	rev16	w0, w0
	strh	w0, [x8, 4]
.L179:
	ret
.L187:
	mov	x8, x1
	mov	x4, x0
	mov	x3, 0
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
	bls	.L208
	mov	w2, -8232
	add	w2, w1, w2
	mov	w0, 1
	cmp	w2, w0
	bls	.L208
	mov	w0, -65529
	add	w1, w1, w0
	cmp	w1, 2
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
	add	w2, w0, w2
	mov	w0, 47061
	cmp	w2, w0
	mov	w2, 8231
	mov	w0, 1
	ccmp	w1, w2, 0, hi
	bls	.L213
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L213
	mov	w0, -65532
	mov	w2, 3
	add	w3, w1, w0
	movk	w2, 0x10, lsl 16
	mov	w0, 0
	cmp	w3, w2
	bhi	.L213
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
.L213:
	ret
	.p2align 2,,3
.L219:
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
	bls	.L222
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
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
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L244
	cmp	w0, 0
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
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L250
	cmp	w0, 0
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
	lsr	x1, x1, 63
	lsr	x0, x0, 63
	cmp	w0, w1
	beq	.L256
	cbz	w0, .L261
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
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L266
	cmp	w0, 0
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
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L272
	cmp	w0, 0
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
	lsr	x1, x1, 63
	lsr	x0, x0, 63
	cmp	w0, w1
	beq	.L278
	cbnz	w0, .L284
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
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	adrp	x4, .LANCHOR1
	mov	x2, x0
	add	x4, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L288:
	and	w3, w1, 63
	lsr	w1, w1, 6
	ldrb	w3, [x4, w3, uxtw]
	strb	w3, [x2], 1
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
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L346
.L345:
	cmp	w1, 43
	beq	.L347
	cmp	w1, 45
	bne	.L367
	ldrb	w1, [x0, 1]
	add	x0, x0, 1
	sub	w1, w1, #48
	cmp	w1, 9
	bhi	.L356
	mov	w6, 1
.L350:
	mov	w2, 0
	.p2align 3,,7
.L353:
	add	w2, w2, w2, lsl 2
	ldrb	w5, [x0, 1]!
	mov	w3, w1
	lsl	w4, w2, 1
	sub	w2, w4, w1
	sub	w1, w5, #48
	cmp	w1, 9
	bls	.L353
	sub	w0, w3, w4
	cmp	w6, 0
	csel	w0, w0, w2, eq
	ret
	.p2align 2,,3
.L367:
	sub	w1, w1, #48
	mov	w6, 0
	cmp	w1, 9
	bls	.L350
.L356:
	mov	w0, 0
.L368:
	ret
	.p2align 2,,3
.L347:
	ldrb	w1, [x0, 1]
	mov	w6, 0
	add	x0, x0, 1
	sub	w1, w1, #48
	cmp	w1, 9
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
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L371
.L370:
	cmp	w1, 43
	beq	.L372
	cmp	w1, 45
	bne	.L392
	ldrb	w1, [x0, 1]
	add	x0, x0, 1
	sub	w1, w1, #48
	cmp	w1, 9
	bhi	.L381
	mov	w6, 1
.L375:
	mov	x2, 0
	.p2align 3,,7
.L378:
	add	x2, x2, x2, lsl 2
	ldrb	w5, [x0, 1]!
	sxtw	x3, w1
	lsl	x4, x2, 1
	sub	w1, w5, #48
	sub	x2, x4, x3
	cmp	w1, 9
	bls	.L378
	sub	x0, x3, x4
	cmp	w6, 0
	csel	x0, x0, x2, eq
	ret
	.p2align 2,,3
.L392:
	sub	w1, w1, #48
	mov	w6, 0
	cmp	w1, 9
	bls	.L375
.L381:
	mov	x0, 0
.L393:
	ret
	.p2align 2,,3
.L372:
	ldrb	w1, [x0, 1]
	mov	w6, 0
	add	x0, x0, 1
	sub	w1, w1, #48
	cmp	w1, 9
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
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L396
.L395:
	cmp	w1, 43
	beq	.L397
	cmp	w1, 45
	beq	.L414
	sub	w1, w1, #48
	mov	w6, 0
	cmp	w1, 9
	bhi	.L405
.L399:
	mov	x2, 0
	.p2align 3,,7
.L402:
	add	x2, x2, x2, lsl 2
	ldrb	w5, [x0, 1]!
	sxtw	x3, w1
	lsl	x4, x2, 1
	sub	w1, w5, #48
	sub	x2, x4, x3
	cmp	w1, 9
	bls	.L402
	sub	x0, x3, x4
	cmp	w6, 0
	csel	x0, x0, x2, eq
	ret
	.p2align 2,,3
.L414:
	ldrb	w1, [x0, 1]
	mov	w6, 1
	add	x0, x0, 1
	sub	w1, w1, #48
	cmp	w1, 9
	bls	.L399
.L405:
	mov	x0, 0
	ret
	.p2align 2,,3
.L397:
	ldrb	w1, [x0, 1]
	add	x0, x0, 1
	sub	w1, w1, #48
	cmp	w1, 9
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
	mov	x1, x0
	.p2align 3,,7
.L473:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L473
	sub	x0, x1, x0
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
	sub	x3, x5, #4
	sub	x4, x5, #8
	add	x3, x0, x3
	add	x4, x1, x4
	sub	x3, x3, x4
	add	x3, x3, 8
	cmp	x3, 8
	bls	.L525
	neg	x3, x2, lsr 2
	sub	x5, x5, #16
	add	x7, x1, x5
	add	x5, x0, x5
	neg	x3, x3, lsl 4
	mov	x4, 0
	sub	x3, x3, #16
	lsr	x3, x3, 4
	add	x3, x3, 1
	.p2align 3,,7
.L526:
	ldr	q31, [x7, x4]
	subs	x3, x3, #1
	str	q31, [x5, x4]
	sub	x4, x4, #16
	bne	.L526
	and	x3, x2, -4
	sub	x3, x6, x3
	tst	x2, 3
	beq	.L546
	ldr	w2, [x1, x3, lsl 2]
	str	w2, [x0, x3, lsl 2]
	cbz	x3, .L546
	sub	x3, x3, #1
	lsl	x2, x3, 2
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	cbz	x3, .L546
	sub	x2, x2, #4
	ldr	w1, [x1, x2]
	str	w1, [x0, x2]
.L546:
	ret
	.p2align 2,,3
.L566:
	cbz	x2, .L546
	cmp	x6, 5
	bls	.L537
	add	x3, x1, 4
	sub	x3, x0, x3
	cmp	x3, 8
	mov	x3, 0
	bls	.L535
	lsr	x4, x2, 2
	.p2align 3,,7
.L532:
	ldr	q31, [x1, x3]
	subs	x4, x4, #1
	str	q31, [x0, x3]
	add	x3, x3, 16
	bne	.L532
	and	x4, x2, -4
	sub	x6, x6, x4
	lsl	x3, x4, 2
	add	x5, x1, x3
	add	x3, x0, x3
	tst	x2, 3
	beq	.L546
	ldr	w1, [x1, x4, lsl 2]
	str	w1, [x0, x4, lsl 2]
	cbz	x6, .L546
	ldr	w1, [x5, 4]
	str	w1, [x3, 4]
	cmp	x6, 1
	beq	.L546
	ldr	w1, [x5, 8]
	str	w1, [x3, 8]
	ret
	.p2align 2,,3
.L537:
	mov	x3, 0
	.p2align 3,,7
.L535:
	ldr	w4, [x1, x3, lsl 2]
	subs	x2, x2, #1
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	beq	.L546
	ldr	w4, [x1, x3, lsl 2]
	subs	x2, x2, #1
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	bne	.L535
	b	.L546
	.p2align 2,,3
.L525:
	add	x2, x6, 1
	.p2align 3,,7
.L529:
	ldr	w3, [x1, x6, lsl 2]
	subs	x2, x2, #1
	str	w3, [x0, x6, lsl 2]
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
	and	x2, x2, -4
	sub	x5, x5, x2
	add	x2, x0, x2, lsl 2
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
	sub	x3, x2, #1
	cmp	x3, 6
	bls	.L589
	sub	x5, x2, #2
	add	x4, x1, x3
	add	x5, x0, x5
	sub	x4, x4, x5
	add	x4, x4, 14
	cmp	x4, 14
	bls	.L589
	add	x8, x0, x2
	add	x7, x1, x2
	cmp	x3, 14
	bls	.L606
	and	x4, x2, -16
	sub	x5, x2, #16
	sub	x4, x4, #16
	add	x6, x0, x5
	add	x5, x1, x5
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L591:
	ldr	q31, [x6, x3]
	subs	x4, x4, #1
	str	q31, [x5, x3]
	sub	x3, x3, #16
	bne	.L591
	add	x7, x7, x3
	add	x8, x8, x3
	and	x3, x2, 15
	tst	x2, 15
	beq	.L586
	sub	x4, x3, #1
	mov	x2, x3
	cmp	x4, 6
	bls	.L593
.L590:
	sub	x5, x2, #8
	and	x4, x2, -8
	sub	x7, x7, x4
	sub	x8, x8, x4
	sub	x3, x3, x4
	ldr	d31, [x0, x5]
	str	d31, [x1, x5]
	tst	x2, 7
	beq	.L586
.L593:
	ldrb	w0, [x8, -1]
	strb	w0, [x7, -1]
	cmp	x3, 1
	beq	.L586
	ldrb	w0, [x8, -2]
	strb	w0, [x7, -2]
	cmp	x3, 2
	beq	.L586
	ldrb	w0, [x8, -3]
	strb	w0, [x7, -3]
	cmp	x3, 3
	beq	.L586
	ldrb	w0, [x8, -4]
	strb	w0, [x7, -4]
	cmp	x3, 4
	beq	.L586
	ldrb	w0, [x8, -5]
	strb	w0, [x7, -5]
	cmp	x3, 5
	beq	.L586
	ldrb	w0, [x8, -6]
	strb	w0, [x7, -6]
	cmp	x3, 6
	beq	.L586
	ldrb	w0, [x8, -7]
	strb	w0, [x7, -7]
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
	sub	x3, x1, x3
	cmp	x3, 14
	bls	.L608
	cmp	x4, 14
	bls	.L609
	and	x5, x2, -16
	mov	x3, 0
	sub	x4, x5, #16
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L599:
	ldr	q31, [x0, x3]
	subs	x4, x4, #1
	str	q31, [x1, x3]
	add	x3, x3, 16
	bne	.L599
	add	x4, x1, x5
	add	x6, x0, x5
	subs	x3, x2, x5
	beq	.L586
	sub	x7, x3, #1
	mov	x2, x3
	cmp	x7, 6
	bls	.L602
.L598:
	ldr	d31, [x0, x5]
	and	x0, x2, -8
	add	x4, x4, x0
	add	x6, x6, x0
	sub	x3, x3, x0
	str	d31, [x1, x5]
	tst	x2, 7
	beq	.L586
.L602:
	ldrb	w0, [x6]
	strb	w0, [x4]
	cmp	x3, 1
	beq	.L586
	ldrb	w0, [x6, 1]
	strb	w0, [x4, 1]
	cmp	x3, 2
	beq	.L586
	ldrb	w0, [x6, 2]
	strb	w0, [x4, 2]
	cmp	x3, 3
	beq	.L586
	ldrb	w0, [x6, 3]
	strb	w0, [x4, 3]
	cmp	x3, 4
	beq	.L586
	ldrb	w0, [x6, 4]
	strb	w0, [x4, 4]
	cmp	x3, 5
	beq	.L586
	ldrb	w0, [x6, 5]
	strb	w0, [x4, 5]
	cmp	x3, 6
	beq	.L586
	ldrb	w0, [x6, 6]
	strb	w0, [x4, 6]
	ret
	.p2align 2,,3
.L589:
	sub	x0, x0, #1
	sub	x1, x1, #1
	add	x4, x3, 1
	.p2align 3,,7
.L595:
	ldrb	w5, [x0, x2]
	subs	x4, x4, #1
	strb	w5, [x1, x2]
	mov	x2, x3
	sub	x3, x3, #1
	bne	.L595
	ret
	.p2align 2,,3
.L608:
	mov	x3, 0
	.p2align 3,,7
.L604:
	ldrb	w4, [x0, x3]
	subs	x2, x2, #1
	strb	w4, [x1, x3]
	add	x3, x3, 1
	bne	.L604
	ret
.L606:
	mov	x3, x2
	b	.L590
.L609:
	mov	x4, x1
	mov	x6, x0
	mov	x3, x2
	mov	x5, 0
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
	adrp	x1, .LC0
	dup	v31.4s, w0
	movi	v29.4s, 0x1
	ldr	q30, [x1, #:lo12:.LC0]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L686
	adrp	x1, .LC1
	ldr	q30, [x1, #:lo12:.LC1]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L687
	adrp	x1, .LC2
	ldr	q30, [x1, #:lo12:.LC2]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L688
	adrp	x1, .LC3
	ldr	q30, [x1, #:lo12:.LC3]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L689
	adrp	x1, .LC4
	ldr	q30, [x1, #:lo12:.LC4]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L690
	adrp	x1, .LC5
	ldr	q30, [x1, #:lo12:.LC5]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L691
	adrp	x1, .LC6
	ldr	q30, [x1, #:lo12:.LC6]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L692
	adrp	x1, .LC7
	ldr	q30, [x1, #:lo12:.LC7]
	ushl	v31.4s, v31.4s, v30.4s
	cmtst	v31.4s, v31.4s, v29.4s
	umaxp	v31.4s, v31.4s, v31.4s
	fmov	x1, d31
	cbnz	x1, .L693
.L694:
	mov	w0, 0
.L679:
	ret
.L686:
	adrp	x1, .LC8
	ldr	q31, [x1, #:lo12:.LC8]
	adrp	x1, .LC9
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC9]
	umov	x2, v31.d[0]
	.p2align 3,,7
.L680:
	mov	w7, w2
	add	w1, w2, 1
	lsr	w6, w0, w2
	tbnz	x6, 0, .L682
	lsr	w6, w0, w1
	add	w1, w2, 2
	tbnz	x6, 0, .L682
	cmp	w4, 2
	beq	.L694
	lsr	w6, w0, w1
	add	w1, w2, 3
	tbnz	x6, 0, .L682
	cmp	w4, 3
	beq	.L694
	lsr	w1, w0, w1
	mov	w0, 0
	tbz	x1, 0, .L679
	add	w1, w7, 4
.L682:
	mov	w0, w1
	ret
.L687:
	adrp	x1, .LC10
	ldr	q31, [x1, #:lo12:.LC10]
	adrp	x1, .LC11
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC11]
	umov	x2, v31.d[0]
	b	.L680
.L693:
	adrp	x1, .LC22
	ldr	q31, [x1, #:lo12:.LC22]
	adrp	x1, .LC23
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC23]
	umov	x2, v31.d[0]
	b	.L680
.L688:
	adrp	x1, .LC12
	ldr	q31, [x1, #:lo12:.LC12]
	adrp	x1, .LC13
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC13]
	umov	x2, v31.d[0]
	b	.L680
.L689:
	adrp	x1, .LC14
	ldr	q31, [x1, #:lo12:.LC14]
	adrp	x1, .LC15
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC15]
	umov	x2, v31.d[0]
	b	.L680
.L690:
	adrp	x1, .LC16
	ldr	q31, [x1, #:lo12:.LC16]
	adrp	x1, .LC17
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC17]
	umov	x2, v31.d[0]
	b	.L680
.L691:
	adrp	x1, .LC18
	ldr	q31, [x1, #:lo12:.LC18]
	adrp	x1, .LC19
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC19]
	umov	x2, v31.d[0]
	b	.L680
.L692:
	adrp	x1, .LC20
	ldr	q31, [x1, #:lo12:.LC20]
	adrp	x1, .LC21
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC21]
	umov	x2, v31.d[0]
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
	fmov	s31, w0
	fcmpe	s0, s31
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
	mov	x0, 9218868437227405311
	fmov	d31, x0
	fcmpe	d0, d31
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
	add	x0, x0, :lo12:.LC24
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
	tbnz	w1, #31, .L711
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	ldr	q0, [sp, 16]
	ldr	q1, [x0]
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
	fcsel	s31, s30, s31, ge
	tbz	x0, 0, .L722
	.p2align 3,,7
.L723:
	fmul	s0, s0, s31
.L722:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L720
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L723
.L732:
	asr	w0, w1, 1
	fmul	s31, s31, s31
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
	fcsel	d31, d30, d31, ge
	tbz	x0, 0, .L736
	.p2align 3,,7
.L737:
	fmul	d0, d0, d31
.L736:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L734
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L737
.L746:
	asr	w0, w1, 1
	fmul	d31, d31, d31
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
	add	x0, x0, :lo12:.LC26
	ldr	q1, [x0]
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
	add	w0, w19, w19, lsr 31
	mov	v1.16b, v0.16b
	tbnz	x19, 0, .L752
.L764:
	asr	w19, w0, 1
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
	add	w0, w19, w19, lsr 31
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
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	ldr	q1, [x0]
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
	lsr	x4, x4, 4
	add	x4, x4, 1
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
	add	x3, x0, x6
	mov	x5, x7
	add	x4, x1, x6
	cmp	x2, x6
	beq	.L766
.L767:
	sub	x2, x7, #1
	cmp	x2, 6
	bls	.L770
	ldr	d26, [x1, x6]
	and	x1, x7, -8
	ldr	d25, [x0, x6]
	add	x3, x3, x1
	add	x4, x4, x1
	sub	x5, x5, x1
	eor	v25.8b, v26.8b, v25.8b
	str	d25, [x0, x6]
	tst	x7, 7
	beq	.L766
.L770:
	ldrb	w1, [x3]
	ldrb	w2, [x4]
	eor	w1, w1, w2
	strb	w1, [x3]
	cmp	x5, 1
	beq	.L766
	ldrb	w2, [x3, 1]
	ldrb	w1, [x4, 1]
	eor	w1, w1, w2
	strb	w1, [x3, 1]
	cmp	x5, 2
	beq	.L766
	ldrb	w2, [x3, 2]
	ldrb	w1, [x4, 2]
	eor	w1, w1, w2
	strb	w1, [x3, 2]
	cmp	x5, 3
	beq	.L766
	ldrb	w2, [x3, 3]
	ldrb	w1, [x4, 3]
	eor	w1, w1, w2
	strb	w1, [x3, 3]
	cmp	x5, 4
	beq	.L766
	ldrb	w2, [x3, 4]
	ldrb	w1, [x4, 4]
	eor	w1, w1, w2
	strb	w1, [x3, 4]
	cmp	x5, 5
	beq	.L766
	ldrb	w2, [x3, 5]
	ldrb	w1, [x4, 5]
	eor	w1, w1, w2
	strb	w1, [x3, 5]
	cmp	x5, 6
	beq	.L766
	ldrb	w2, [x3, 6]
	ldrb	w1, [x4, 6]
	eor	w1, w1, w2
	strb	w1, [x3, 6]
.L766:
	ret
	.p2align 2,,3
.L801:
	ldr	q27, [x0, x3]
	subs	x4, x4, #1
	ldr	q28, [x1, x3]
	eor	v27.16b, v28.16b, v27.16b
	str	q27, [x0, x3]
	add	x3, x3, 16
	beq	.L802
	ldr	q27, [x0, x3]
	subs	x4, x4, #1
	ldr	q28, [x1, x3]
	eor	v27.16b, v28.16b, v27.16b
	str	q27, [x0, x3]
	add	x3, x3, 16
	bne	.L801
	b	.L802
.L772:
	mov	x5, x2
	mov	x7, x2
	mov	x3, x0
	mov	x4, x1
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
	mov	x3, x0
	.p2align 3,,7
.L805:
	ldrb	w4, [x3, 1]!
	cbnz	w4, .L805
.L804:
	cbnz	x2, .L806
	b	.L807
	.p2align 2,,3
.L808:
	beq	.L807
.L806:
	ldrb	w4, [x1]
	subs	x2, x2, #1
	strb	w4, [x3]
	add	x1, x1, 1
	add	x3, x3, 1
	cbnz	w4, .L808
	ret
	.p2align 2,,3
.L807:
	strb	wzr, [x3]
	ret
	.p2align 2,,3
.L810:
	mov	x3, x0
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
.L838:
	ldrb	w3, [x2]
	cmp	w1, w3
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L838
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
	cbz	w8, .L851
	mov	x7, x1
	.p2align 3,,7
.L842:
	ldrb	w0, [x7, 1]!
	cbnz	w0, .L842
	subs	x7, x7, x1
	mov	x0, x5
	sub	x9, x1, #1
	bne	.L856
	b	.L840
	.p2align 2,,3
.L858:
	add	x5, x5, 1
	cbz	w2, .L857
.L856:
	ldrb	w2, [x5]
	cmp	w2, w8
	bne	.L858
	mov	w0, w8
	mov	x4, x1
	mov	x6, x5
	b	.L847
	.p2align 2,,3
.L846:
	ldrb	w2, [x6, 1]!
	add	x3, x4, 1
	ldrb	w0, [x4, 1]
	cbz	w2, .L845
	mov	x4, x3
.L847:
	cmp	w0, 0
	sub	x3, x7, x4
	ccmp	w2, w0, 0, ne
	add	x3, x9, x3
	ccmp	x3, 0, 4, eq
	bne	.L846
.L845:
	cmp	w2, w0
	beq	.L851
	add	x5, x5, 1
	b	.L856
	.p2align 2,,3
.L857:
	mov	x0, 0
.L840:
	ret
.L851:
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
	bmi	.L866
	bgt	.L867
	ret
	.p2align 2,,3
.L867:
	fcmpe	d1, #0.0
	bmi	.L862
	ret
	.p2align 2,,3
.L862:
	fneg	d0, d0
	ret
	.p2align 2,,3
.L866:
	fcmpe	d1, #0.0
	bgt	.L862
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
	cbz	x3, .L870
	cmp	x1, x3
	bcc	.L881
	sub	x1, x1, x3
	adds	x8, x0, x1
	bcs	.L881
	ldrb	w9, [x2]
	b	.L876
	.p2align 2,,3
.L880:
	mov	x0, x5
.L872:
	cmp	x8, x0
	bcc	.L881
.L876:
	mov	x5, x0
	ldrb	w1, [x5], 1
	cmp	w1, w9
	bne	.L880
	cmp	x3, 1
	beq	.L870
.L875:
	sub	x4, x3, #1
	mov	x1, 1
	b	.L873
	.p2align 2,,3
.L874:
	subs	x4, x4, #1
	beq	.L870
.L873:
	ldrb	w7, [x0, x1]
	ldrb	w6, [x2, x1]
	add	x1, x1, 1
	cmp	w7, w6
	beq	.L874
	cmp	x8, x5
	bcc	.L881
	mov	x0, x5
	ldrb	w1, [x0], 1
	cmp	w9, w1
	bne	.L872
	mov	x1, x5
	mov	x5, x0
	mov	x0, x1
	b	.L875
	.p2align 2,,3
.L881:
	mov	x0, 0
.L870:
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
	cbz	x2, .L891
	bl	memmove
.L891:
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
	bmi	.L913
	fmov	d2, 1.0e+0
	mov	w2, 0
	fcmpe	d0, d2
	bge	.L899
	fmov	d1, 5.0e-1
	fcmpe	d0, d1
	bmi	.L914
.L902:
	fmov	d31, d0
	str	wzr, [x0]
	fmov	d0, d31
	ret
	.p2align 2,,3
.L908:
	fmov	d0, d30
	mov	w2, 1
.L899:
	mov	w1, 0
	fmov	d5, 5.0e-1
	fmov	d4, 1.0e+0
	.p2align 3,,7
.L905:
	fmul	d0, d0, d5
	add	w1, w1, 1
	fcmpe	d0, d4
	bge	.L905
.L906:
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d31, d31, d0, ne
	fmov	d0, d31
	ret
	.p2align 2,,3
.L913:
	fmov	d6, -1.0e+0
	fneg	d30, d0
	fcmpe	d0, d6
	bls	.L908
	fmov	d3, -5.0e-1
	fcmpe	d0, d3
	bgt	.L909
	b	.L902
	.p2align 2,,3
.L914:
	fcmp	d0, #0.0
	beq	.L902
	fmov	d30, d0
	b	.L900
	.p2align 2,,3
.L909:
	mov	w2, 1
.L900:
	fmov	d0, d30
	mov	w1, 0
	fmov	d29, 5.0e-1
	.p2align 3,,7
.L907:
	fadd	d0, d0, d0
	sub	w1, w1, #1
	fcmpe	d0, d29
	bmi	.L907
	b	.L906
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
	and	x3, x3, x1
	lsl	x1, x1, 1
	add	x0, x0, x3
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
	bcs	.L926
	.p2align 3,,7
.L925:
	tbnz	w1, #31, .L926
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L925
	mov	w4, 0
	cbz	w3, .L929
.L926:
	mov	w4, 0
	.p2align 3,,7
.L931:
	cmp	w0, w1
	bcc	.L930
	sub	w0, w0, w1
	orr	w4, w4, w3
.L930:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L931
.L929:
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
	cbz	w2, .L946
	.p2align 3,,7
.L948:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L948
.L946:
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
	bcc	.L956
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1026
.L956:
	cbz	w5, .L1027
	sub	w3, w5, #1
	cmp	w3, 6
	bls	.L958
	add	x3, x1, 8
	cmp	x0, x3
	beq	.L958
	and	x4, x2, 4294967280
	lsr	w7, w2, 4
	sub	x4, x4, #16
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L959:
	ldr	q31, [x1, x3]
	subs	x4, x4, #1
	str	q31, [x0, x3]
	add	x3, x3, 16
	bne	.L959
	lsl	w3, w7, 1
	cmp	w5, w3
	beq	.L962
	ldr	x4, [x1, x3, lsl 3]
	str	x4, [x0, x3, lsl 3]
.L962:
	cmp	w2, w9
	bls	.L951
	sub	w8, w2, w9
	uxtw	x5, w9
	sub	w4, w8, #1
	cmp	w4, 6
	bls	.L954
	add	x3, x5, 1
	add	x7, x0, x5
	add	x3, x1, x3
	sub	x3, x7, x3
	cmp	x3, 14
	bls	.L954
	cmp	w4, 14
	bls	.L979
	and	x4, x8, 4294967280
	add	x6, x1, x5
	sub	x4, x4, #16
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L964:
	ldr	q31, [x6, x3]
	subs	x4, x4, #1
	str	q31, [x7, x3]
	add	x3, x3, 16
	bne	.L964
	and	w3, w8, -16
	add	w6, w9, w3
	tst	x8, 15
	beq	.L951
	sub	w8, w8, w3
	sub	w4, w8, #1
	cmp	w4, 6
	bls	.L966
.L963:
	add	x3, x5, w3, uxtw
	and	w4, w8, -8
	add	w6, w6, w4
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x8, 7
	beq	.L951
.L966:
	ldrb	w4, [x1, w6, uxtw]
	add	w3, w6, 1
	strb	w4, [x0, w6, uxtw]
	cmp	w2, w3
	bls	.L951
	ldrb	w5, [x1, w3, uxtw]
	add	w4, w6, 2
	strb	w5, [x0, w3, uxtw]
	cmp	w4, w2
	bcs	.L951
	ldrb	w5, [x1, w4, uxtw]
	add	w3, w6, 3
	strb	w5, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L951
	ldrb	w5, [x1, w3, uxtw]
	add	w4, w6, 4
	strb	w5, [x0, w3, uxtw]
	cmp	w2, w4
	bls	.L951
	ldrb	w5, [x1, w4, uxtw]
	add	w3, w6, 5
	strb	w5, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L951
	ldrb	w4, [x1, w3, uxtw]
	add	w6, w6, 6
	strb	w4, [x0, w3, uxtw]
	cmp	w2, w6
	bls	.L951
.L1025:
	ldrb	w1, [x1, w6, uxtw]
	strb	w1, [x0, w6, uxtw]
.L951:
	ret
	.p2align 2,,3
.L1026:
	sub	w6, w2, #1
	cbz	w2, .L951
	uxtw	x5, w6
	cmp	w6, 6
	bls	.L970
	sub	x4, x5, #1
	add	x3, x0, x5
	add	x4, x1, x4
	sub	x3, x3, x4
	add	x3, x3, 14
	cmp	x3, 14
	bls	.L970
	cmp	w6, 14
	bls	.L980
	and	x4, x2, 4294967280
	sub	x7, x5, #15
	sub	x4, x4, #16
	add	x8, x1, x7
	add	x7, x0, x7
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L972:
	ldr	q31, [x8, x3]
	subs	x4, x4, #1
	str	q31, [x7, x3]
	sub	x3, x3, #16
	bne	.L972
	and	w4, w2, -16
	sub	w6, w6, w4
	tst	x2, 15
	beq	.L951
	sub	w2, w2, w4
	sub	w3, w2, #1
	cmp	w3, 6
	bls	.L975
	and	w9, w2, -8
.L971:
	sub	x3, x5, #7
	sub	w6, w6, w9
	sub	x3, x3, w4, uxtw
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x2, 7
	beq	.L951
.L975:
	ldrb	w3, [x1, w6, uxtw]
	sub	w2, w6, #1
	strb	w3, [x0, w6, uxtw]
	cbz	w6, .L951
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w6, #2
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L951
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w6, #3
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L951
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w6, #4
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L951
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w6, #5
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L951
	ldrb	w3, [x1, w2, uxtw]
	sub	w6, w6, #6
	strb	w3, [x0, w2, uxtw]
	cbnz	w2, .L1025
	b	.L951
.L979:
	mov	w3, 0
	b	.L963
	.p2align 2,,3
.L958:
	lsl	w3, w5, 3
	mov	x4, 0
	sub	x3, x3, #8
	lsr	x3, x3, 3
	add	x3, x3, 1
	.p2align 3,,7
.L961:
	ldr	x5, [x1, x4]
	str	x5, [x0, x4]
	subs	x3, x3, #1
	add	x4, x4, 8
	bne	.L961
	b	.L962
	.p2align 2,,3
.L1027:
	uxtw	x5, w9
	cbz	w2, .L951
.L954:
	mvn	w3, w5
	mov	x4, x5
	add	w3, w2, w3
	add	w5, w5, 1
	add	x3, x3, 1
	cmp	w5, w2
	bhi	.L1010
	cbz	w2, .L1010
.L1024:
	ldrb	w2, [x1, x4]
	subs	x3, x3, #1
	strb	w2, [x0, x4]
	add	x4, x4, 1
	bne	.L1024
	ret
.L1010:
	mov	x3, 1
	b	.L1024
.L970:
	mov	x2, x5
	add	x3, x5, 1
	.p2align 3,,7
.L977:
	ldrb	w4, [x1, x2]
	subs	x3, x3, #1
	strb	w4, [x0, x2]
	sub	x2, x2, #1
	bne	.L977
	ret
.L980:
	mov	w4, 0
	b	.L971
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
	bcc	.L1032
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1083
.L1032:
	cbz	w5, .L1031
	sub	w3, w5, #1
	cmp	w3, 6
	bls	.L1035
	add	x3, x1, 2
	sub	x3, x0, x3
	cmp	x3, 12
	bls	.L1035
	and	x4, x2, 4294967280
	lsr	w6, w2, 4
	sub	x4, x4, #16
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L1036:
	ldr	q31, [x1, x3]
	subs	x4, x4, #1
	str	q31, [x0, x3]
	add	x3, x3, 16
	bne	.L1036
	lsl	w3, w6, 3
	cmp	w5, w3
	beq	.L1031
	uxtw	x4, w3
	add	w6, w3, 1
	ldrsh	w7, [x1, x4, lsl 1]
	strh	w7, [x0, x4, lsl 1]
	cmp	w5, w6
	bls	.L1031
	ldrsh	w7, [x1, w6, uxtw 1]
	add	w4, w3, 2
	strh	w7, [x0, w6, uxtw 1]
	cmp	w5, w4
	bls	.L1031
	ldrsh	w7, [x1, x4, lsl 1]
	add	w6, w3, 3
	strh	w7, [x0, x4, lsl 1]
	cmp	w5, w6
	bls	.L1031
	ldrsh	w7, [x1, w6, uxtw 1]
	add	w4, w3, 4
	strh	w7, [x0, w6, uxtw 1]
	cmp	w5, w4
	bls	.L1031
	ldrsh	w7, [x1, x4, lsl 1]
	add	w6, w3, 5
	strh	w7, [x0, x4, lsl 1]
	cmp	w5, w6
	bls	.L1031
	ldrsh	w4, [x1, w6, uxtw 1]
	add	w3, w3, 6
	strh	w4, [x0, w6, uxtw 1]
	cmp	w5, w3
	bls	.L1031
	ldrsh	w4, [x1, x3, lsl 1]
	strh	w4, [x0, x3, lsl 1]
.L1031:
	tbz	x2, 0, .L1028
.L1084:
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L1028:
	ret
	.p2align 2,,3
.L1083:
	sub	w6, w2, #1
	cbz	w2, .L1028
	uxtw	x5, w6
	cmp	w6, 6
	bls	.L1041
	sub	x4, x5, #1
	add	x3, x0, x5
	add	x4, x1, x4
	sub	x3, x3, x4
	add	x3, x3, 14
	cmp	x3, 14
	bls	.L1041
	cmp	w6, 14
	bls	.L1049
	and	x4, x2, 4294967280
	sub	x7, x5, #15
	sub	x4, x4, #16
	add	x8, x1, x7
	add	x7, x0, x7
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L1043:
	ldr	q31, [x8, x3]
	subs	x4, x4, #1
	str	q31, [x7, x3]
	sub	x3, x3, #16
	bne	.L1043
	and	w4, w2, -16
	sub	w6, w6, w4
	tst	x2, 15
	beq	.L1028
	sub	w2, w2, w4
	sub	w3, w2, #1
	cmp	w3, 6
	bls	.L1045
.L1042:
	sub	x3, x5, #7
	and	w5, w2, -8
	sub	x3, x3, w4, uxtw
	sub	w6, w6, w5
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x2, 7
	beq	.L1028
.L1045:
	ldrb	w3, [x1, w6, uxtw]
	sub	w2, w6, #1
	strb	w3, [x0, w6, uxtw]
	cbz	w6, .L1028
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w6, #2
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L1028
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w6, #3
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L1028
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w6, #4
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L1028
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w6, #5
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L1028
	ldrb	w3, [x1, w2, uxtw]
	sub	w6, w6, #6
	strb	w3, [x0, w2, uxtw]
	cbz	w2, .L1028
	ldrb	w1, [x1, w6, uxtw]
	strb	w1, [x0, w6, uxtw]
	ret
	.p2align 2,,3
.L1035:
	lsl	w3, w5, 1
	mov	x4, 0
	sub	x3, x3, #2
	lsr	x3, x3, 1
	add	x3, x3, 1
	.p2align 3,,7
.L1038:
	ldrsh	w5, [x1, x4]
	subs	x3, x3, #1
	strh	w5, [x0, x4]
	add	x4, x4, 2
	bne	.L1038
	tbz	x2, 0, .L1028
	b	.L1084
.L1041:
	mov	x2, x5
	add	x3, x5, 1
	.p2align 3,,7
.L1047:
	ldrb	w4, [x1, x2]
	subs	x3, x3, #1
	strb	w4, [x0, x2]
	sub	x2, x2, #1
	bne	.L1047
	ret
.L1049:
	mov	w4, 0
	b	.L1042
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
	bcc	.L1090
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1159
.L1090:
	cbz	w6, .L1160
	sub	w3, w6, #1
	cmp	w3, 5
	bls	.L1092
	add	x3, x1, 4
	sub	x3, x0, x3
	cmp	x3, 8
	bls	.L1092
	and	x4, x2, 4294967280
	lsr	w7, w2, 4
	sub	x4, x4, #16
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L1093:
	ldr	q31, [x1, x3]
	subs	x4, x4, #1
	str	q31, [x0, x3]
	add	x3, x3, 16
	bne	.L1093
	lsl	w3, w7, 2
	cmp	w6, w3
	beq	.L1096
	uxtw	x7, w3
	add	w4, w3, 1
	ldr	w8, [x1, x7, lsl 2]
	str	w8, [x0, x7, lsl 2]
	cmp	w6, w4
	bls	.L1096
	ldr	w7, [x1, x4, lsl 2]
	add	w3, w3, 2
	str	w7, [x0, x4, lsl 2]
	cmp	w6, w3
	bls	.L1096
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
.L1096:
	cmp	w2, w5
	bls	.L1085
	sub	w8, w2, w5
	uxtw	x6, w5
	sub	w4, w8, #1
	cmp	w4, 6
	bls	.L1088
	add	x3, x6, 1
	add	x7, x0, x6
	add	x3, x1, x3
	sub	x3, x7, x3
	cmp	x3, 14
	bls	.L1088
	cmp	w4, 14
	bls	.L1113
	and	x4, x8, 4294967280
	add	x9, x1, x6
	sub	x4, x4, #16
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L1098:
	ldr	q31, [x9, x3]
	subs	x4, x4, #1
	str	q31, [x7, x3]
	add	x3, x3, 16
	bne	.L1098
	and	w3, w8, -16
	add	w5, w5, w3
	tst	x8, 15
	beq	.L1085
	sub	w8, w8, w3
	sub	w4, w8, #1
	cmp	w4, 6
	bls	.L1100
.L1097:
	add	x3, x6, w3, uxtw
	and	w4, w8, -8
	add	w5, w5, w4
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x8, 7
	beq	.L1085
.L1100:
	ldrb	w4, [x1, w5, uxtw]
	add	w3, w5, 1
	strb	w4, [x0, w5, uxtw]
	cmp	w2, w3
	bls	.L1085
	ldrb	w6, [x1, w3, uxtw]
	add	w4, w5, 2
	strb	w6, [x0, w3, uxtw]
	cmp	w4, w2
	bcs	.L1085
	ldrb	w6, [x1, w4, uxtw]
	add	w3, w5, 3
	strb	w6, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L1085
	ldrb	w6, [x1, w3, uxtw]
	add	w4, w5, 4
	strb	w6, [x0, w3, uxtw]
	cmp	w2, w4
	bls	.L1085
	ldrb	w6, [x1, w4, uxtw]
	add	w3, w5, 5
	strb	w6, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L1085
	ldrb	w4, [x1, w3, uxtw]
	add	w5, w5, 6
	strb	w4, [x0, w3, uxtw]
	cmp	w2, w5
	bls	.L1085
	ldrb	w1, [x1, w5, uxtw]
	strb	w1, [x0, w5, uxtw]
.L1085:
	ret
	.p2align 2,,3
.L1159:
	sub	w6, w2, #1
	cbz	w2, .L1085
	uxtw	x5, w6
	cmp	w6, 6
	bls	.L1104
	sub	x4, x5, #1
	add	x3, x0, x5
	add	x4, x1, x4
	sub	x3, x3, x4
	add	x3, x3, 14
	cmp	x3, 14
	bls	.L1104
	cmp	w6, 14
	bls	.L1114
	and	x4, x2, 4294967280
	sub	x7, x5, #15
	sub	x4, x4, #16
	add	x8, x1, x7
	add	x7, x0, x7
	mov	x3, 0
	lsr	x4, x4, 4
	add	x4, x4, 1
	.p2align 3,,7
.L1106:
	ldr	q31, [x8, x3]
	subs	x4, x4, #1
	str	q31, [x7, x3]
	sub	x3, x3, #16
	bne	.L1106
	and	w4, w2, -16
	sub	w6, w6, w4
	tst	x2, 15
	beq	.L1085
	sub	w2, w2, w4
	sub	w3, w2, #1
	cmp	w3, 6
	bls	.L1109
.L1105:
	sub	x3, x5, #7
	and	w5, w2, -8
	sub	x3, x3, w4, uxtw
	sub	w6, w6, w5
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x2, 7
	beq	.L1085
.L1109:
	ldrb	w3, [x1, w6, uxtw]
	sub	w2, w6, #1
	strb	w3, [x0, w6, uxtw]
	cbz	w6, .L1085
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w6, #2
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L1085
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w6, #3
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L1085
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w6, #4
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L1085
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w6, #5
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L1085
	ldrb	w3, [x1, w2, uxtw]
	sub	w6, w6, #6
	strb	w3, [x0, w2, uxtw]
	cbz	w2, .L1085
	ldrb	w1, [x1, w6, uxtw]
	strb	w1, [x0, w6, uxtw]
	ret
.L1113:
	mov	w3, 0
	b	.L1097
	.p2align 2,,3
.L1092:
	lsl	w3, w6, 2
	mov	x4, 0
	sub	x3, x3, #4
	lsr	x3, x3, 2
	add	x3, x3, 1
	.p2align 3,,7
.L1095:
	ldr	w6, [x1, x4]
	subs	x3, x3, #1
	str	w6, [x0, x4]
	add	x4, x4, 4
	bne	.L1095
	b	.L1096
	.p2align 2,,3
.L1160:
	uxtw	x6, w5
	cbz	w2, .L1085
.L1088:
	mvn	w3, w6
	add	w5, w6, 1
	add	w3, w2, w3
	mov	x4, x6
	add	x3, x3, 1
	cmp	w5, w2
	bhi	.L1144
	cbz	w2, .L1144
.L1158:
	ldrb	w2, [x1, x4]
	subs	x3, x3, #1
	strb	w2, [x0, x4]
	add	x4, x4, 1
	bne	.L1158
	ret
.L1144:
	mov	x3, 1
	b	.L1158
.L1104:
	mov	x2, x5
	add	x3, x5, 1
	.p2align 3,,7
.L1111:
	ldrb	w4, [x1, x2]
	subs	x3, x3, #1
	strb	w4, [x0, x2]
	sub	x2, x2, #1
	bne	.L1111
	ret
.L1114:
	mov	w4, 0
	b	.L1105
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
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1173
	adrp	x0, .LC29
	ldr	q30, [x0, #:lo12:.LC29]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1174
	adrp	x0, .LC30
	ldr	q30, [x0, #:lo12:.LC30]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1175
	adrp	x0, .LC31
	ldr	q30, [x0, #:lo12:.LC31]
	sshl	v31.4s, v31.4s, v30.4s
	cmtst	v31.4s, v31.4s, v29.4s
	umaxp	v31.4s, v31.4s, v31.4s
	fmov	x0, d31
	cbnz	x0, .L1176
.L1178:
	mov	w0, 16
.L1167:
	ret
.L1173:
	adrp	x0, .LC16
	ldr	q31, [x0, #:lo12:.LC16]
	adrp	x0, .LC9
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC9]
	umov	x4, v31.d[0]
.L1168:
	mov	w3, 15
	sub	w0, w3, w4
	asr	w0, w2, w0
	tbnz	x0, 0, .L1184
	add	w0, w4, 1
	sub	w1, w3, w0
	asr	w1, w2, w1
	tbnz	x1, 0, .L1167
	add	w0, w4, 2
	cmp	w6, 2
	beq	.L1178
	sub	w1, w3, w0
	asr	w1, w2, w1
	tbnz	x1, 0, .L1167
	add	w1, w4, 3
	cmp	w6, 3
	beq	.L1178
	sub	w3, w3, w1
	mov	w0, 16
	asr	w2, w2, w3
	tst	x2, 1
	csel	w0, w1, w0, ne
	ret
.L1174:
	adrp	x0, .LC18
	ldr	q31, [x0, #:lo12:.LC18]
	adrp	x0, .LC11
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC11]
	umov	x4, v31.d[0]
	b	.L1168
.L1176:
	adrp	x0, .LC22
	ldr	q31, [x0, #:lo12:.LC22]
	adrp	x0, .LC15
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC15]
	umov	x4, v31.d[0]
	b	.L1168
.L1175:
	adrp	x0, .LC20
	ldr	q31, [x0, #:lo12:.LC20]
	adrp	x0, .LC13
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC13]
	umov	x4, v31.d[0]
	b	.L1168
.L1184:
	mov	w0, w4
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
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1191
	adrp	x0, .LC1
	ldr	q30, [x0, #:lo12:.LC1]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1192
	adrp	x0, .LC2
	ldr	q30, [x0, #:lo12:.LC2]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1193
	adrp	x0, .LC3
	ldr	q30, [x0, #:lo12:.LC3]
	sshl	v31.4s, v31.4s, v30.4s
	cmtst	v31.4s, v31.4s, v29.4s
	umaxp	v31.4s, v31.4s, v31.4s
	fmov	x0, d31
	cbnz	x0, .L1194
.L1196:
	mov	w0, 16
.L1185:
	ret
.L1191:
	adrp	x0, .LC16
	ldr	q31, [x0, #:lo12:.LC16]
	adrp	x0, .LC9
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC9]
	umov	x4, v31.d[0]
.L1186:
	asr	w0, w2, w4
	tbnz	x0, 0, .L1202
	add	w0, w4, 1
	asr	w1, w2, w0
	tbnz	x1, 0, .L1185
	add	w0, w4, 2
	cmp	w6, 2
	beq	.L1196
	asr	w1, w2, w0
	tbnz	x1, 0, .L1185
	add	w1, w4, 3
	cmp	w6, 3
	beq	.L1196
	asr	w2, w2, w1
	mov	w0, 16
	tst	x2, 1
	csel	w0, w1, w0, ne
	ret
.L1192:
	adrp	x0, .LC18
	ldr	q31, [x0, #:lo12:.LC18]
	adrp	x0, .LC11
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC11]
	umov	x4, v31.d[0]
	b	.L1186
.L1194:
	adrp	x0, .LC22
	ldr	q31, [x0, #:lo12:.LC22]
	adrp	x0, .LC15
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC15]
	umov	x4, v31.d[0]
	b	.L1186
.L1193:
	adrp	x0, .LC20
	ldr	q31, [x0, #:lo12:.LC20]
	adrp	x0, .LC13
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC13]
	umov	x4, v31.d[0]
	b	.L1186
.L1202:
	mov	w0, w4
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
	bge	.L1207
	fcvtzs	x0, s0
	ret
	.p2align 2,,3
.L1207:
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
	adrp	x1, .LC0
	movi	v27.4s, 0x1
	dup	v31.4s, w0
	adrp	x0, .LC1
	ldr	q29, [x1, #:lo12:.LC0]
	ldr	q28, [x0, #:lo12:.LC1]
	adrp	x0, .LC2
	sshl	v29.4s, v31.4s, v29.4s
	ldr	q30, [x0, #:lo12:.LC2]
	adrp	x0, .LC3
	sshl	v28.4s, v31.4s, v28.4s
	ldr	q26, [x0, #:lo12:.LC3]
	and	v29.16b, v29.16b, v27.16b
	and	v28.16b, v28.16b, v27.16b
	sshl	v30.4s, v31.4s, v30.4s
	sshl	v31.4s, v31.4s, v26.4s
	add	v29.4s, v29.4s, v28.4s
	and	v30.16b, v30.16b, v27.16b
	and	v31.16b, v31.16b, v27.16b
	add	v30.4s, v30.4s, v29.4s
	add	v31.4s, v31.4s, v30.4s
	addv	s31, v31.4s
	fmov	w0, s31
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
	and	w0, w0, 65535
	adrp	x1, .LC0
	movi	v29.4s, 0x1
	dup	v31.4s, w0
	adrp	x0, .LC1
	ldr	q1, [x1, #:lo12:.LC0]
	ldr	q0, [x0, #:lo12:.LC1]
	adrp	x0, .LC2
	sshl	v1.4s, v31.4s, v1.4s
	ldr	q30, [x0, #:lo12:.LC2]
	adrp	x0, .LC3
	sshl	v0.4s, v31.4s, v0.4s
	ldr	q28, [x0, #:lo12:.LC3]
	and	v1.16b, v1.16b, v29.16b
	and	v0.16b, v0.16b, v29.16b
	sshl	v30.4s, v31.4s, v30.4s
	sshl	v28.4s, v31.4s, v28.4s
	add	v0.4s, v1.4s, v0.4s
	and	v30.16b, v30.16b, v29.16b
	and	v28.16b, v28.16b, v29.16b
	add	v30.4s, v30.4s, v0.4s
	add	v28.4s, v28.4s, v30.4s
	addv	s31, v28.4s
	fmov	w0, s31
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
	cbz	w2, .L1212
	.p2align 3,,7
.L1214:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L1214
.L1212:
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
	cbz	w3, .L1217
	cbz	w1, .L1217
	.p2align 3,,7
.L1219:
	sbfx	x2, x1, 0, 1
	lsr	w1, w1, 1
	and	w2, w2, w3
	lsl	w3, w3, 1
	add	w0, w0, w2
	cbnz	w1, .L1219
.L1217:
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
	bcs	.L1226
	.p2align 3,,7
.L1225:
	tbnz	w1, #31, .L1226
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L1225
	mov	w4, 0
	cbz	w3, .L1229
.L1226:
	mov	w4, 0
	.p2align 3,,7
.L1231:
	cmp	w0, w1
	bcc	.L1230
	sub	w0, w0, w1
	orr	w4, w4, w3
.L1230:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L1231
.L1229:
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
	cmp	w1, 0
	blt	.L1257
	beq	.L1253
	mov	w5, 0
.L1250:
	mov	w4, 0
	mov	w2, 0
	.p2align 3,,7
.L1252:
	add	w2, w2, 1
	sbfx	x3, x1, 0, 1
	and	w2, w2, 255
	and	w3, w3, w0
	asr	w1, w1, 1
	cmp	w2, 32
	ccmp	w1, 0, 4, ne
	add	w4, w4, w3
	lsl	w0, w0, 1
	bne	.L1252
	cmp	w5, 0
	csneg	w0, w4, w4, eq
	ret
	.p2align 2,,3
.L1257:
	neg	w1, w1
	mov	w5, 1
	b	.L1250
	.p2align 2,,3
.L1253:
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
	mov	w5, 0
	tbnz	x0, #63, .L1276
.L1259:
	tbz	x1, #63, .L1260
	neg	x1, x1
	mov	w5, w2
.L1260:
	mov	w4, w0
	mov	w2, w1
	mov	w3, 1
	cmp	w0, w1
	bls	.L1262
	.p2align 3,,7
.L1261:
	tbnz	w2, #31, .L1262
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L1261
	mov	x0, 0
	cbz	w3, .L1263
.L1262:
	mov	x0, 0
	.p2align 3,,7
.L1266:
	cmp	w2, w4
	bhi	.L1265
	sub	w4, w4, w2
	orr	w0, w0, w3
.L1265:
	lsr	w3, w3, 1
	lsr	w2, w2, 1
	cbnz	w3, .L1266
.L1263:
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
	.p2align 2,,3
.L1276:
	neg	x0, x0
	mov	w2, 0
	mov	w5, 1
	b	.L1259
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
	tbz	x0, #63, .L1278
	neg	x0, x0
	mov	w5, 1
.L1278:
	cmp	x1, 0
	mov	w4, w0
	csneg	x1, x1, x1, ge
	mov	w3, 1
	mov	w2, w1
	cmp	w0, w1
	bls	.L1293
	.p2align 3,,7
.L1279:
	tbnz	w2, #31, .L1293
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L1279
	cbz	w3, .L1296
	.p2align 3,,7
.L1293:
	subs	w0, w4, w2
	lsr	w3, w3, 1
	csel	w4, w0, w4, cs
	lsr	w2, w2, 1
	cbnz	w3, .L1293
.L1296:
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
	bcc	.L1298
	b	.L1381
	.p2align 2,,3
.L1301:
	cmp	w3, 0
	ccmp	w0, w4, 0, ne
	bls	.L1300
	mov	w5, w3
	mov	w1, w4
.L1298:
	ubfiz	w3, w5, 1, 15
	ubfiz	w4, w1, 1, 15
	tbz	x1, 15, .L1301
	mov	w3, 0
	cmp	w0, w1
	bcc	.L1324
	sub	w0, w0, w1
	mov	w3, w5
	and	w0, w0, 65535
.L1324:
	ubfx	x7, x5, 1, 16
	lsr	w6, w1, 1
	cbz	w7, .L1303
.L1305:
	cmp	w0, w6
	bcc	.L1306
	sub	w6, w0, w6
	orr	w7, w3, w7
	and	w0, w6, 65535
	and	w3, w7, 65535
.L1306:
	ubfx	x4, x5, 2, 16
	lsr	w6, w1, 2
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1307
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1307:
	ubfx	x4, x5, 3, 16
	lsr	w6, w1, 3
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1308
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1308:
	ubfx	x4, x5, 4, 16
	lsr	w6, w1, 4
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1309
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1309:
	ubfx	x4, x5, 5, 16
	lsr	w6, w1, 5
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1310
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1310:
	ubfx	x4, x5, 6, 16
	lsr	w6, w1, 6
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1311
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1311:
	ubfx	x4, x5, 7, 16
	lsr	w6, w1, 7
	cbz	w4, .L1303
	cmp	w0, w6
	bcs	.L1382
.L1312:
	ubfx	x4, x5, 8, 16
	lsr	w6, w1, 8
	cbz	w4, .L1303
	cmp	w0, w6
	bcs	.L1383
.L1313:
	ubfx	x4, x5, 9, 16
	lsr	w6, w1, 9
	cbz	w4, .L1303
	cmp	w0, w6
	bcs	.L1384
.L1314:
	ubfx	x4, x5, 10, 16
	lsr	w6, w1, 10
	cbz	w4, .L1303
	cmp	w0, w6
	bcs	.L1385
.L1315:
	ubfx	x4, x5, 11, 16
	lsr	w6, w1, 11
	cbz	w4, .L1303
	cmp	w0, w6
	bcs	.L1386
.L1316:
	ubfx	x4, x5, 12, 16
	lsr	w6, w1, 12
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1317
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1317:
	ubfx	x4, x5, 13, 16
	lsr	w6, w1, 13
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1318
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1318:
	ubfx	x4, x5, 14, 16
	lsr	w6, w1, 14
	cbz	w4, .L1303
	cmp	w0, w6
	bcc	.L1319
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1319:
	lsr	w1, w1, 15
	tbz	x5, 15, .L1303
	cmp	w0, w1
	bcc	.L1327
	sub	w1, w0, w1
	orr	w3, w3, 1
	and	w0, w1, 65535
	and	w3, w3, 65535
.L1303:
	cmp	w2, 0
	csel	w0, w0, w3, ne
	ret
	.p2align 2,,3
.L1300:
	cbz	w3, .L1303
	cmp	w0, w4
	bcc	.L1304
	sub	w0, w0, w4
	and	w7, w5, 32767
	and	w6, w1, 32767
	and	w0, w0, 65535
	mov	w5, w3
	mov	w1, w4
	b	.L1305
	.p2align 2,,3
.L1382:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1312
	.p2align 2,,3
.L1304:
	and	w7, w5, 32767
	and	w6, w1, 32767
	mov	w5, w3
	mov	w1, w4
	mov	w3, 0
	b	.L1305
	.p2align 2,,3
.L1383:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1313
	.p2align 2,,3
.L1384:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1314
	.p2align 2,,3
.L1385:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1315
	.p2align 2,,3
.L1386:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1316
.L1327:
	mov	w0, 0
	b	.L1303
.L1381:
	csel	w0, w0, wzr, ne
	cset	w3, eq
	b	.L1303
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
	bcs	.L1389
	.p2align 3,,7
.L1388:
	tbnz	x1, 31, .L1389
	lsl	x3, x3, 1
	lsl	x1, x1, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L1388
	mov	x4, 0
	cbz	x3, .L1392
.L1389:
	mov	x4, 0
	.p2align 3,,7
.L1394:
	cmp	x0, x1
	bcc	.L1393
	sub	x0, x0, x1
	orr	x4, x4, x3
.L1393:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbnz	x3, .L1394
.L1392:
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
	tbz	x1, 5, .L1404
	sub	w1, w1, #32
	mov	w3, 0
	lsl	w0, w0, w1
.L1405:
	uxtw	x1, w3
	orr	x0, x1, x0, lsl 32
.L1403:
	ret
	.p2align 2,,3
.L1404:
	cbz	w1, .L1403
	neg	w4, w1
	asr	x0, x0, 32
	lsl	w3, w2, w1
	lsl	w0, w0, w1
	lsr	w2, w2, w4
	orr	w0, w2, w0
	b	.L1405
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
	tbz	x2, 6, .L1410
	sub	w2, w2, #64
	mov	x3, 0
	lsl	x1, x0, x2
	mov	x0, x3
.L1412:
	ret
	.p2align 2,,3
.L1410:
	cbz	w2, .L1412
	neg	w4, w2
	lsl	x1, x1, x2
	lsl	x3, x0, x2
	lsr	x2, x0, x4
	mov	x0, x3
	orr	x1, x2, x1
	b	.L1412
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
	tbz	x1, 5, .L1415
	asr	x2, x0, 32
	sub	w1, w1, #32
	asr	w0, w2, 31
	asr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L1414:
	ret
	.p2align 2,,3
.L1415:
	cbz	w1, .L1414
	asr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	asr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L1414
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
	tbz	x2, 6, .L1421
	sub	w2, w2, #64
	asr	x3, x1, 63
	asr	x0, x1, x2
	mov	x1, x3
.L1423:
	ret
	.p2align 2,,3
.L1421:
	cbz	w2, .L1423
	neg	w4, w2
	lsr	x0, x0, x2
	asr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1423
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
	blt	.L1431
	mov	w0, 2
	bgt	.L1429
	cmp	w2, w1
	mov	w3, 0
	cset	w0, hi
	add	w0, w0, 1
	csel	w0, w0, w3, cs
.L1429:
	ret
	.p2align 2,,3
.L1431:
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
	blt	.L1437
	mov	w0, 1
	bgt	.L1435
	cmp	w2, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L1435:
	ret
	.p2align 2,,3
.L1437:
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
	blt	.L1440
	mov	w0, 2
	bgt	.L1440
	cmp	x4, x2
	mov	w3, 0
	cset	w1, hi
	add	w0, w1, 1
	csel	w0, w0, w3, cs
.L1440:
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
	cbnz	x0, .L1449
	cmp	x1, 0
	rbit	x1, x1
	clz	x1, x1
	add	w1, w1, 65
	csel	w0, w1, wzr, ne
	ret
	.p2align 2,,3
.L1449:
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
	tbz	x1, 5, .L1453
	lsr	x2, x0, 32
	sub	w1, w1, #32
	mov	w0, 0
	lsr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L1452:
	ret
	.p2align 2,,3
.L1453:
	cbz	w1, .L1452
	lsr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	lsr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L1452
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
	tbz	x2, 6, .L1459
	sub	w2, w2, #64
	mov	x3, 0
	lsr	x0, x1, x2
	mov	x1, x3
.L1461:
	ret
	.p2align 2,,3
.L1459:
	cbz	w2, .L1461
	neg	w4, w2
	lsr	x0, x0, x2
	lsr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1461
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
	tbz	x0, 0, .L1476
	.p2align 3,,7
.L1478:
	fmul	d31, d31, d1
.L1476:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L1477
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1478
.L1482:
	asr	w1, w2, 1
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1478
	b	.L1482
	.p2align 2,,3
.L1477:
	tbz	w0, #31, .L1475
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
.L1475:
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
	tbz	x0, 0, .L1484
	.p2align 3,,7
.L1486:
	fmul	s31, s31, s1
.L1484:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L1485
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1486
.L1490:
	asr	w1, w2, 1
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1486
	b	.L1490
	.p2align 2,,3
.L1485:
	tbz	w0, #31, .L1483
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
.L1483:
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
	bcc	.L1493
	mov	w0, 2
	bhi	.L1491
	cmp	w2, w1
	mov	w3, 0
	cset	w0, hi
	add	w0, w0, 1
	csel	w0, w0, w3, cs
.L1491:
	ret
	.p2align 2,,3
.L1493:
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
	bcc	.L1499
	mov	w0, 1
	bhi	.L1497
	cmp	w2, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L1497:
	ret
	.p2align 2,,3
.L1499:
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
	bcc	.L1502
	mov	w0, 2
	bhi	.L1502
	cmp	x4, x2
	mov	w3, 0
	cset	w1, hi
	add	w0, w1, 1
	csel	w0, w0, w3, cs
.L1502:
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
