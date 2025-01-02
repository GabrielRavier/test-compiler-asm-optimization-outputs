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
	neg	x5, x2, lsr 4
	sub	x4, x2, #16
	add	x6, x1, x4
	add	x4, x0, x4
	lsl	x5, x5, 4
	mov	x3, 0
	.p2align 3,,7
.L9:
	ldr	q31, [x6, x3]
	str	q31, [x4, x3]
	sub	x3, x3, #16
	cmp	x3, x5
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
	and	x4, x2, -16
	mov	x3, 0
	.p2align 3,,7
.L17:
	ldr	q31, [x1, x3]
	str	q31, [x0, x3]
	add	x3, x3, 16
	cmp	x3, x4
	bne	.L17
	add	x6, x1, x4
	add	x5, x0, x4
	subs	x3, x2, x4
	beq	.L6
	sub	x7, x3, #1
	mov	x2, x3
	cmp	x7, 6
	bls	.L20
.L16:
	ldr	d31, [x1, x4]
	and	x1, x2, -8
	add	x6, x6, x1
	add	x5, x5, x1
	sub	x3, x3, x1
	str	d31, [x0, x4]
	tst	x2, 7
	beq	.L6
.L20:
	ldrb	w1, [x6]
	strb	w1, [x5]
	cmp	x3, 1
	beq	.L6
	ldrb	w1, [x6, 1]
	strb	w1, [x5, 1]
	cmp	x3, 2
	beq	.L6
	ldrb	w1, [x6, 2]
	strb	w1, [x5, 2]
	cmp	x3, 3
	beq	.L6
	ldrb	w1, [x6, 3]
	strb	w1, [x5, 3]
	cmp	x3, 4
	beq	.L6
	ldrb	w1, [x6, 4]
	strb	w1, [x5, 4]
	cmp	x3, 5
	beq	.L6
	ldrb	w1, [x6, 5]
	strb	w1, [x5, 5]
	cmp	x3, 6
	beq	.L6
	ldrb	w1, [x6, 6]
	strb	w1, [x5, 6]
	ret
	.p2align 2,,3
.L7:
	sub	x1, x1, #1
	sub	x5, x0, #1
	b	.L13
	.p2align 2,,3
.L84:
	sub	x3, x3, #1
.L13:
	ldrb	w4, [x1, x2]
	strb	w4, [x5, x2]
	mov	x2, x3
	cbnz	x3, .L84
	ret
	.p2align 2,,3
.L26:
	mov	x3, 0
	.p2align 3,,7
.L22:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L22
	ret
.L24:
	mov	x3, x2
	b	.L8
.L27:
	mov	x6, x1
	mov	x5, x0
	mov	x3, x2
	mov	x4, 0
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
	cbnz	x3, .L86
	b	.L88
	.p2align 2,,3
.L89:
	subs	x3, x3, #1
	beq	.L88
.L86:
	ldrb	w4, [x1]
	add	x0, x0, 1
	strb	w4, [x0, -1]
	add	x1, x1, 1
	cmp	w4, w2
	bne	.L89
	ret
	.p2align 2,,3
.L88:
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
	b	.L99
	.p2align 2,,3
.L98:
	add	x0, x0, 1
	subs	x2, x2, #1
	beq	.L99
.L96:
	ldrb	w3, [x0]
	cmp	w3, w1
	bne	.L98
	ret
	.p2align 2,,3
.L99:
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
	cbnz	x2, .L102
	b	.L106
	.p2align 2,,3
.L104:
	subs	x2, x2, #1
	beq	.L106
.L102:
	ldrb	w3, [x0]
	add	x1, x1, 1
	ldrb	w4, [x1, -1]
	add	x0, x0, 1
	cmp	w3, w4
	beq	.L104
	sub	w0, w3, w4
	ret
	.p2align 2,,3
.L106:
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
	cbz	x2, .L110
	bl	memcpy
.L110:
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
	b	.L116
	.p2align 2,,3
.L118:
	ldrb	w3, [x0]
	sub	x2, x2, #1
	cmp	w3, w1
	beq	.L115
.L116:
	mov	x0, x2
	cmp	x2, x4
	bne	.L118
	mov	x0, 0
.L115:
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
	cbz	x2, .L122
	and	w1, w1, 255
	bl	memset
.L122:
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
	cbz	w2, .L125
	.p2align 3,,7
.L126:
	ldrb	w2, [x1, 1]!
	strb	w2, [x0, 1]!
	cbnz	w2, .L126
.L125:
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
	cbnz	w2, .L132
	b	.L131
	.p2align 2,,3
.L134:
	ldrb	w2, [x0, 1]!
	cbz	w2, .L131
.L132:
	cmp	w2, w1
	bne	.L134
.L131:
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
.L140:
	ldrb	w2, [x0]
	cmp	w2, w1
	beq	.L139
	add	x0, x0, 1
	cbnz	w2, .L140
	mov	x0, 0
.L139:
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
	bne	.L144
	.p2align 3,,7
.L143:
	cbz	w3, .L144
	ldrb	w3, [x0, x2]
	add	x2, x2, 1
	ldrb	w1, [x4, x2]
	cmp	w3, w1
	beq	.L143
.L144:
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
	cbz	w1, .L152
	mov	x1, x0
	.p2align 3,,7
.L151:
	ldrb	w2, [x1, 1]!
	cbnz	w2, .L151
	sub	x0, x1, x0
	ret
	.p2align 2,,3
.L152:
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
	cbz	x2, .L160
	ldrb	w4, [x0]
	sub	x7, x2, #1
	mov	x2, x1
	cbnz	w4, .L158
	b	.L163
	.p2align 2,,3
.L159:
	ldrb	w4, [x0, 1]!
	cbz	w4, .L164
	mov	x2, x6
.L158:
	ldrb	w5, [x2]
	sub	x3, x1, x2
	add	x3, x3, x7
	add	x6, x2, 1
	cmp	w5, 0
	ccmp	w5, w4, 0, ne
	ccmp	x3, 0, 4, eq
	bne	.L159
	sub	w0, w4, w5
.L154:
	ret
	.p2align 2,,3
.L160:
	mov	w0, 0
	ret
	.p2align 2,,3
.L164:
	ldrb	w5, [x2, 1]
	sub	w0, w4, w5
	b	.L154
.L163:
	ldrb	w5, [x1]
	sub	w0, w4, w5
	b	.L154
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
	ble	.L165
	lsr	x9, x2, 1
	sub	x3, x2, #2
	sub	x7, x9, #1
	cmp	x3, 29
	bls	.L173
	and	x6, x2, -32
	lsr	x8, x2, 5
	add	x5, x0, x6
	mov	x3, x0
	mov	x4, x1
	.p2align 3,,7
.L168:
	ld2	{v30.16b - v31.16b}, [x3], 32
	mov	v29.16b, v31.16b
	st2	{v29.16b - v30.16b}, [x4], 32
	cmp	x5, x3
	bne	.L168
	lsl	x3, x8, 4
	sub	x2, x2, x8, lsl 5
	add	x4, x0, x6
	add	x8, x1, x6
	cmp	x3, x9
	beq	.L165
.L167:
	sub	x5, x7, x3
	add	x6, x5, 1
	cmp	x5, 2
	bls	.L170
	lsl	x3, x3, 1
	lsr	x5, x6, 2
	add	x9, x0, x3
	add	x7, x1, x3
	ldr	d28, [x0, x3]
	rev16	v28.8b, v28.8b
	str	d28, [x1, x3]
	cmp	x5, 1
	beq	.L171
	ldr	d27, [x9, 8]
	rev16	v27.8b, v27.8b
	str	d27, [x7, 8]
	cmp	x5, 2
	beq	.L171
	ldr	d26, [x9, 16]
	rev16	v26.8b, v26.8b
	str	d26, [x7, 16]
.L171:
	and	x1, x6, -4
	lsl	x0, x1, 1
	sub	x2, x2, x1, lsl 1
	add	x8, x8, x0
	add	x4, x4, x0
	tst	x6, 3
	beq	.L165
.L170:
	ldrh	w0, [x4]
	rev16	w0, w0
	strh	w0, [x8]
	cmp	x2, 3
	ble	.L165
	ldrh	w0, [x4, 2]
	rev16	w0, w0
	strh	w0, [x8, 2]
	cmp	x2, 5
	ble	.L165
	ldrh	w0, [x4, 4]
	rev16	w0, w0
	strh	w0, [x8, 4]
.L165:
	ret
.L173:
	mov	x8, x1
	mov	x4, x0
	mov	x3, 0
	b	.L167
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
	bls	.L194
	mov	w2, -8232
	add	w2, w1, w2
	mov	w0, 1
	cmp	w2, w0
	bls	.L194
	mov	w0, -65529
	add	w1, w1, w0
	cmp	w1, 2
	cset	w0, ls
.L194:
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
	bls	.L205
	mov	w2, -8234
	add	w2, w0, w2
	mov	w0, 47061
	cmp	w2, w0
	mov	w2, 8231
	mov	w0, 1
	ccmp	w1, w2, 0, hi
	bls	.L199
	sub	w3, w1, #57344
	mov	w2, 8184
	cmp	w3, w2
	bls	.L199
	mov	w0, -65532
	mov	w2, 3
	add	w3, w1, w0
	movk	w2, 0x10, lsl 16
	mov	w0, 0
	cmp	w3, w2
	bhi	.L199
	and	w1, w1, 65534
	mov	w0, 65534
	cmp	w1, w0
	cset	w0, ne
.L199:
	ret
	.p2align 2,,3
.L205:
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
	bls	.L208
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	cset	w0, ls
	ret
	.p2align 2,,3
.L208:
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
	fcmpe	d0, d1
	bls	.L215
	fsub	d0, d0, d1
	ret
	.p2align 2,,3
.L215:
	movi	d0, #0
	ret
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
	fcmpe	s0, s1
	bls	.L221
	fsub	s0, s0, s1
	ret
	.p2align 2,,3
.L221:
	movi	v0.2s, #0
	ret
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
	fmov	x0, d0
	fmov	x1, d1
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L223
	cmp	w0, 0
	fcsel	d0, d0, d1, eq
	ret
	.p2align 2,,3
.L223:
	fcmpe	d0, d1
	fcsel	d0, d1, d0, mi
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
	fmov	w0, s0
	fmov	w1, s1
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L227
	cmp	w0, 0
	fcsel	s0, s0, s1, eq
	ret
	.p2align 2,,3
.L227:
	fcmpe	s0, s1
	fcsel	s0, s1, s0, mi
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
	stp	q0, q1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L231
	cbz	w0, .L230
	mov	v0.16b, v1.16b
.L230:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L231:
	.cfi_restore_state
	bl	__lttf2
	ldr	q0, [sp, 32]
	tbnz	w0, #31, .L230
	ldr	q0, [sp, 16]
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
	fmov	x0, d0
	fmov	x1, d1
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L239
	cmp	w0, 0
	fcsel	d0, d1, d0, eq
	ret
	.p2align 2,,3
.L239:
	fcmpe	d0, d1
	fcsel	d0, d0, d1, mi
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
	fmov	w0, s0
	fmov	w1, s1
	and	w0, w0, -2147483648
	and	w1, w1, -2147483648
	cmp	w0, w1
	beq	.L243
	cmp	w0, 0
	fcsel	s0, s1, s0, eq
	ret
	.p2align 2,,3
.L243:
	fcmpe	s0, s1
	fcsel	s0, s0, s1, mi
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
	stp	q0, q1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	lsr	x0, x0, 63
	lsr	x1, x1, 63
	cmp	w0, w1
	beq	.L247
	cbz	w0, .L252
.L246:
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L247:
	.cfi_restore_state
	bl	__lttf2
	ldr	q0, [sp, 16]
	tbnz	w0, #31, .L246
	ldr	q0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L252:
	.cfi_restore_state
	mov	v0.16b, v1.16b
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
	cbz	w0, .L257
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	adrp	x4, .LANCHOR1
	mov	x2, x0
	add	x4, x4, :lo12:.LANCHOR1
	.p2align 3,,7
.L256:
	and	w3, w1, 63
	lsr	w1, w1, 6
	ldrb	w3, [x4, w3, uxtw]
	strb	w3, [x2], 1
	cbnz	w1, .L256
	strb	wzr, [x2]
	ret
	.p2align 2,,3
.L257:
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
	cbz	x1, .L267
	ldr	x2, [x1]
	stp	x2, x1, [x0]
	str	x0, [x1]
	ldr	x1, [x0]
	cbz	x1, .L261
	str	x0, [x1, 8]
.L261:
	ret
	.p2align 2,,3
.L267:
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
	cbz	x1, .L269
	ldr	x2, [x0, 8]
	str	x2, [x1, 8]
.L269:
	ldr	x0, [x0, 8]
	cbz	x0, .L268
	str	x1, [x0]
.L268:
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
	cbz	x24, .L278
	mov	x23, x4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x19, x1
	mov	x20, 0
	b	.L280
	.p2align 2,,3
.L295:
	add	x19, x19, x21
	cmp	x24, x20
	beq	.L294
.L280:
	mov	x1, x19
	mov	x0, x22
	mov	x27, x19
	add	x20, x20, 1
	blr	x23
	cbnz	w0, .L295
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L277:
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
.L294:
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
.L278:
	add	x0, x24, 1
	str	x0, [x25]
	madd	x27, x21, x24, x26
	cbz	x21, .L277
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
	cbz	x24, .L297
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
	b	.L299
	.p2align 2,,3
.L310:
	add	x19, x19, x23
	cmp	x24, x20
	beq	.L309
.L299:
	mov	x1, x19
	mov	x0, x21
	mov	x25, x19
	add	x20, x20, 1
	blr	x22
	cbnz	w0, .L310
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
.L309:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L297:
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
	bhi	.L313
	.p2align 3,,7
.L314:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L314
.L313:
	cmp	w1, 43
	beq	.L315
	cmp	w1, 45
	bne	.L333
	ldrb	w1, [x0, 1]
	add	x2, x0, 1
	sub	w3, w1, #48
	cmp	w3, 9
	bhi	.L324
	mov	w6, 1
.L318:
	mov	w0, 0
	.p2align 3,,7
.L321:
	add	w0, w0, w0, lsl 2
	ldrb	w1, [x2, 1]!
	mov	w4, w3
	lsl	w5, w0, 1
	sub	w0, w5, w3
	sub	w3, w1, #48
	cmp	w3, 9
	bls	.L321
	sub	w4, w4, w5
	cmp	w6, 0
	csel	w0, w4, w0, eq
	ret
	.p2align 2,,3
.L333:
	sub	w3, w1, #48
	mov	x2, x0
	mov	w6, 0
	cmp	w3, 9
	bls	.L318
.L324:
	mov	w0, 0
.L334:
	ret
	.p2align 2,,3
.L315:
	ldrb	w1, [x0, 1]
	add	x2, x0, 1
	mov	w6, 0
	sub	w3, w1, #48
	cmp	w3, 9
	bls	.L318
	mov	w0, 0
	b	.L334
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
	bhi	.L336
	.p2align 3,,7
.L337:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L337
.L336:
	cmp	w1, 43
	beq	.L338
	cmp	w1, 45
	bne	.L356
	ldrb	w1, [x0, 1]
	add	x2, x0, 1
	sub	w3, w1, #48
	cmp	w3, 9
	bhi	.L347
	mov	w6, 1
.L341:
	mov	x0, 0
	.p2align 3,,7
.L344:
	add	x0, x0, x0, lsl 2
	ldrb	w1, [x2, 1]!
	sxtw	x4, w3
	lsl	x5, x0, 1
	sub	w3, w1, #48
	sub	x0, x5, x4
	cmp	w3, 9
	bls	.L344
	sub	x4, x4, x5
	cmp	w6, 0
	csel	x0, x4, x0, eq
	ret
	.p2align 2,,3
.L356:
	sub	w3, w1, #48
	mov	x2, x0
	mov	w6, 0
	cmp	w3, 9
	bls	.L341
.L347:
	mov	x0, 0
.L357:
	ret
	.p2align 2,,3
.L338:
	ldrb	w1, [x0, 1]
	add	x2, x0, 1
	mov	w6, 0
	sub	w3, w1, #48
	cmp	w3, 9
	bls	.L341
	mov	x0, 0
	b	.L357
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
	bhi	.L359
	.p2align 3,,7
.L360:
	ldrb	w1, [x0, 1]!
	cmp	w1, 32
	sub	w2, w1, #9
	ccmp	w2, 4, 0, ne
	bls	.L360
.L359:
	cmp	w1, 43
	beq	.L361
	cmp	w1, 45
	beq	.L377
	sub	w3, w1, #48
	mov	x2, x0
	mov	w6, 0
	cmp	w3, 9
	bhi	.L369
.L363:
	mov	x0, 0
	.p2align 3,,7
.L366:
	add	x0, x0, x0, lsl 2
	ldrb	w1, [x2, 1]!
	sxtw	x4, w3
	lsl	x5, x0, 1
	sub	w3, w1, #48
	sub	x0, x5, x4
	cmp	w3, 9
	bls	.L366
	sub	x4, x4, x5
	cmp	w6, 0
	csel	x0, x4, x0, eq
	ret
	.p2align 2,,3
.L377:
	ldrb	w1, [x0, 1]
	add	x2, x0, 1
	mov	w6, 1
	sub	w3, w1, #48
	cmp	w3, 9
	bls	.L363
.L369:
	mov	x0, 0
	ret
	.p2align 2,,3
.L361:
	ldrb	w1, [x0, 1]
	add	x2, x0, 1
	sub	w3, w1, #48
	cmp	w3, 9
	bhi	.L369
	mov	w6, 0
	b	.L363
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
	cbz	x2, .L379
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
.L382:
	lsr	x20, x19, 1
	mov	x0, x24
	sub	x19, x19, #1
	madd	x21, x20, x22, x23
	mov	x1, x21
	blr	x25
	cmp	w0, 0
	blt	.L383
	beq	.L389
	add	x23, x21, x22
	sub	x19, x19, x20
	cbnz	x19, .L382
.L390:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L379:
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
.L383:
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
	cbnz	x19, .L382
	b	.L390
	.p2align 2,,3
.L389:
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
	mov	x22, x1
	mov	x21, x3
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x24, x4
	mov	x23, x5
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x25, x0
	cbz	w2, .L396
	.p2align 3,,7
.L392:
	asr	w26, w19, 1
	mov	x2, x23
	mov	x0, x25
	sub	w19, w19, #1
	sxtw	x20, w26
	madd	x20, x20, x21, x22
	mov	x1, x20
	blr	x24
	cmp	w0, 0
	cbz	w0, .L391
	ble	.L394
	add	x22, x20, x21
	asr	w19, w19, 1
	cbnz	w19, .L392
.L396:
	mov	x20, 0
.L391:
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
.L394:
	.cfi_restore_state
	cbz	w26, .L396
	mov	w19, w26
	b	.L392
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
	cbnz	w2, .L413
	b	.L416
	.p2align 2,,3
.L415:
	ldr	w2, [x0, 4]!
	cbz	w2, .L416
.L413:
	cmp	w1, w2
	bne	.L415
	ret
	.p2align 2,,3
.L416:
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
	bne	.L420
	.p2align 3,,7
.L419:
	cbz	w3, .L420
	ldr	w3, [x0, x2]
	add	x2, x2, 4
	ldr	w1, [x4, x2]
	cmp	w3, w1
	beq	.L419
.L420:
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
.L427:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cbnz	w3, .L427
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
	cbz	w1, .L432
	mov	x1, x0
	.p2align 3,,7
.L431:
	ldr	w2, [x1, 4]!
	cbnz	w2, .L431
	sub	x0, x1, x0
	asr	x0, x0, 2
	ret
	.p2align 2,,3
.L432:
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
	cbnz	x2, .L435
	b	.L440
	.p2align 2,,3
.L437:
	subs	x2, x2, #1
	beq	.L440
.L435:
	ldr	w3, [x0]
	add	x1, x1, 4
	ldr	w4, [x1, -4]
	add	x0, x0, 4
	cmp	w3, 0
	ccmp	w4, w3, 0, ne
	beq	.L437
	cmp	w3, w4
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L440:
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
	cbnz	x2, .L444
	b	.L447
	.p2align 2,,3
.L446:
	add	x0, x0, 4
	subs	x2, x2, #1
	beq	.L447
.L444:
	ldr	w3, [x0]
	cmp	w3, w1
	bne	.L446
	ret
	.p2align 2,,3
.L447:
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
	cbnz	x2, .L450
	b	.L455
	.p2align 2,,3
.L452:
	subs	x2, x2, #1
	beq	.L455
.L450:
	ldr	w4, [x0]
	add	x1, x1, 4
	ldr	w3, [x1, -4]
	add	x0, x0, 4
	cmp	w4, w3
	beq	.L452
	cset	w0, hi
	csinv	w0, w0, wzr, cs
	ret
	.p2align 2,,3
.L455:
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
	cbz	x2, .L459
	lsl	x2, x2, 2
	bl	memcpy
.L459:
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
	beq	.L490
	lsl	x4, x2, 2
	sub	x3, x0, x1
	sub	x5, x2, #1
	cmp	x3, x4
	bcs	.L511
	cbz	x2, .L490
	cmp	x5, 13
	bls	.L473
	sub	x3, x4, #4
	sub	x6, x4, #8
	add	x3, x0, x3
	add	x6, x1, x6
	sub	x3, x3, x6
	add	x3, x3, 8
	cmp	x3, 8
	bls	.L473
	neg	x6, x2, lsr 2
	sub	x4, x4, #16
	add	x7, x1, x4
	add	x4, x0, x4
	lsl	x6, x6, 4
	mov	x3, 0
	.p2align 3,,7
.L470:
	ldr	q31, [x7, x3]
	str	q31, [x4, x3]
	sub	x3, x3, #16
	cmp	x6, x3
	bne	.L470
	and	x3, x2, -4
	sub	x5, x5, x3
	tst	x2, 3
	beq	.L490
	ldr	w2, [x1, x5, lsl 2]
	str	w2, [x0, x5, lsl 2]
	cbz	x5, .L490
	sub	x5, x5, #1
	lsl	x2, x5, 2
	ldr	w3, [x1, x5, lsl 2]
	str	w3, [x0, x5, lsl 2]
	cbz	x5, .L490
	sub	x2, x2, #4
	ldr	w1, [x1, x2]
	str	w1, [x0, x2]
.L490:
	ret
	.p2align 2,,3
.L511:
	cbz	x2, .L490
	cmp	x5, 5
	bls	.L481
	add	x3, x1, 4
	sub	x3, x0, x3
	cmp	x3, 8
	mov	x3, 0
	bls	.L479
	lsr	x6, x2, 2
	mov	x4, 0
	.p2align 3,,7
.L476:
	ldr	q31, [x1, x3]
	add	x4, x4, 1
	str	q31, [x0, x3]
	add	x3, x3, 16
	cmp	x6, x4
	bne	.L476
	and	x4, x2, -4
	sub	x5, x5, x4
	lsl	x3, x4, 2
	add	x6, x1, x3
	add	x3, x0, x3
	tst	x2, 3
	beq	.L490
	ldr	w1, [x1, x4, lsl 2]
	str	w1, [x0, x4, lsl 2]
	cbz	x5, .L490
	ldr	w1, [x6, 4]
	str	w1, [x3, 4]
	cmp	x5, 1
	beq	.L490
	ldr	w1, [x6, 8]
	str	w1, [x3, 8]
	ret
	.p2align 2,,3
.L481:
	mov	x3, 0
	.p2align 3,,7
.L479:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x2, x3
	beq	.L490
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L479
	b	.L490
	.p2align 2,,3
.L473:
	ldr	w2, [x1, x5, lsl 2]
	str	w2, [x0, x5, lsl 2]
	sub	x5, x5, #1
	cmn	x5, #1
	beq	.L490
	ldr	w2, [x1, x5, lsl 2]
	str	w2, [x0, x5, lsl 2]
	sub	x5, x5, #1
	cmn	x5, #1
	bne	.L473
	b	.L490
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
	cbz	x2, .L513
	cmp	x5, 2
	bls	.L517
	dup	v31.4s, v30.s[0]
	lsr	x4, x2, 2
	mov	x1, 0
	.p2align 3,,7
.L515:
	lsl	x3, x1, 4
	add	x1, x1, 1
	str	q31, [x0, x3]
	cmp	x4, x1
	bne	.L515
	tst	x2, 3
	beq	.L513
	and	x2, x2, -4
	sub	x5, x5, x2
	add	x2, x0, x2, lsl 2
.L514:
	str	s30, [x2]
	cbz	x5, .L513
	str	s30, [x2, 4]
	cmp	x5, 1
	beq	.L513
	str	s30, [x2, 8]
.L513:
	ret
.L517:
	mov	x2, x0
	b	.L514
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
	bcs	.L532
	cbz	x2, .L531
	sub	x3, x2, #1
	cmp	x3, 6
	bls	.L534
	sub	x5, x2, #2
	add	x4, x1, x3
	add	x5, x0, x5
	sub	x4, x4, x5
	add	x4, x4, 14
	cmp	x4, 14
	bls	.L534
	add	x8, x0, x2
	add	x7, x1, x2
	cmp	x3, 14
	bls	.L551
	neg	x5, x2, lsr 4
	sub	x4, x2, #16
	add	x6, x0, x4
	add	x4, x1, x4
	lsl	x5, x5, 4
	mov	x3, 0
	.p2align 3,,7
.L536:
	ldr	q31, [x6, x3]
	str	q31, [x4, x3]
	sub	x3, x3, #16
	cmp	x3, x5
	bne	.L536
	add	x7, x7, x3
	add	x8, x8, x3
	and	x3, x2, 15
	tst	x2, 15
	beq	.L531
	sub	x4, x3, #1
	mov	x2, x3
	cmp	x4, 6
	bls	.L538
.L535:
	sub	x5, x2, #8
	and	x4, x2, -8
	sub	x7, x7, x4
	sub	x8, x8, x4
	sub	x3, x3, x4
	ldr	d31, [x0, x5]
	str	d31, [x1, x5]
	tst	x2, 7
	beq	.L531
.L538:
	ldrb	w0, [x8, -1]
	strb	w0, [x7, -1]
	cmp	x3, 1
	beq	.L531
	ldrb	w0, [x8, -2]
	strb	w0, [x7, -2]
	cmp	x3, 2
	beq	.L531
	ldrb	w0, [x8, -3]
	strb	w0, [x7, -3]
	cmp	x3, 3
	beq	.L531
	ldrb	w0, [x8, -4]
	strb	w0, [x7, -4]
	cmp	x3, 4
	beq	.L531
	ldrb	w0, [x8, -5]
	strb	w0, [x7, -5]
	cmp	x3, 5
	beq	.L531
	ldrb	w0, [x8, -6]
	strb	w0, [x7, -6]
	cmp	x3, 6
	beq	.L531
	ldrb	w0, [x8, -7]
	strb	w0, [x7, -7]
.L531:
	ret
	.p2align 2,,3
.L532:
	beq	.L531
	cbz	x2, .L531
	sub	x4, x2, #1
	cmp	x4, 6
	bls	.L553
	add	x3, x0, 1
	sub	x3, x1, x3
	cmp	x3, 14
	bls	.L553
	cmp	x4, 14
	bls	.L554
	and	x4, x2, -16
	mov	x3, 0
	.p2align 3,,7
.L544:
	ldr	q31, [x0, x3]
	str	q31, [x1, x3]
	add	x3, x3, 16
	cmp	x3, x4
	bne	.L544
	add	x5, x1, x4
	add	x6, x0, x4
	subs	x3, x2, x4
	beq	.L531
	sub	x7, x3, #1
	mov	x2, x3
	cmp	x7, 6
	bls	.L547
.L543:
	ldr	d31, [x0, x4]
	and	x0, x2, -8
	add	x5, x5, x0
	add	x6, x6, x0
	sub	x3, x3, x0
	str	d31, [x1, x4]
	tst	x2, 7
	beq	.L531
.L547:
	ldrb	w0, [x6]
	strb	w0, [x5]
	cmp	x3, 1
	beq	.L531
	ldrb	w0, [x6, 1]
	strb	w0, [x5, 1]
	cmp	x3, 2
	beq	.L531
	ldrb	w0, [x6, 2]
	strb	w0, [x5, 2]
	cmp	x3, 3
	beq	.L531
	ldrb	w0, [x6, 3]
	strb	w0, [x5, 3]
	cmp	x3, 4
	beq	.L531
	ldrb	w0, [x6, 4]
	strb	w0, [x5, 4]
	cmp	x3, 5
	beq	.L531
	ldrb	w0, [x6, 5]
	strb	w0, [x5, 5]
	cmp	x3, 6
	beq	.L531
	ldrb	w0, [x6, 6]
	strb	w0, [x5, 6]
	ret
	.p2align 2,,3
.L534:
	sub	x0, x0, #1
	sub	x1, x1, #1
	b	.L540
	.p2align 2,,3
.L611:
	sub	x3, x3, #1
.L540:
	ldrb	w4, [x0, x2]
	strb	w4, [x1, x2]
	mov	x2, x3
	cbnz	x3, .L611
	ret
	.p2align 2,,3
.L553:
	mov	x3, 0
	.p2align 3,,7
.L549:
	ldrb	w4, [x0, x3]
	strb	w4, [x1, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L549
	ret
.L551:
	mov	x3, x2
	b	.L535
.L554:
	mov	x5, x1
	mov	x6, x0
	mov	x3, x2
	mov	x4, 0
	b	.L543
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
	cbnz	x1, .L632
	adrp	x1, .LC1
	ldr	q30, [x1, #:lo12:.LC1]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L633
	adrp	x1, .LC2
	ldr	q30, [x1, #:lo12:.LC2]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L634
	adrp	x1, .LC3
	ldr	q30, [x1, #:lo12:.LC3]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L635
	adrp	x1, .LC4
	ldr	q30, [x1, #:lo12:.LC4]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L636
	adrp	x1, .LC5
	ldr	q30, [x1, #:lo12:.LC5]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L637
	adrp	x1, .LC6
	ldr	q30, [x1, #:lo12:.LC6]
	ushl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x1, d30
	cbnz	x1, .L638
	adrp	x1, .LC7
	ldr	q30, [x1, #:lo12:.LC7]
	ushl	v31.4s, v31.4s, v30.4s
	cmtst	v31.4s, v31.4s, v29.4s
	umaxp	v31.4s, v31.4s, v31.4s
	fmov	x1, d31
	cbnz	x1, .L639
.L640:
	mov	w0, 0
.L625:
	ret
.L632:
	adrp	x1, .LC8
	ldr	q31, [x1, #:lo12:.LC8]
	adrp	x1, .LC9
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC9]
	umov	x2, v31.d[0]
	.p2align 3,,7
.L626:
	mov	w7, w2
	add	w1, w2, 1
	lsr	w6, w0, w2
	tbnz	x6, 0, .L628
	lsr	w6, w0, w1
	add	w1, w2, 2
	tbnz	x6, 0, .L628
	cmp	w4, 2
	beq	.L640
	lsr	w6, w0, w1
	add	w1, w2, 3
	tbnz	x6, 0, .L628
	cmp	w4, 3
	beq	.L640
	lsr	w1, w0, w1
	mov	w0, 0
	tbz	x1, 0, .L625
	add	w1, w7, 4
.L628:
	mov	w0, w1
	ret
.L633:
	adrp	x1, .LC10
	ldr	q31, [x1, #:lo12:.LC10]
	adrp	x1, .LC11
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC11]
	umov	x2, v31.d[0]
	b	.L626
.L639:
	adrp	x1, .LC22
	ldr	q31, [x1, #:lo12:.LC22]
	adrp	x1, .LC23
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC23]
	umov	x2, v31.d[0]
	b	.L626
.L634:
	adrp	x1, .LC12
	ldr	q31, [x1, #:lo12:.LC12]
	adrp	x1, .LC13
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC13]
	umov	x2, v31.d[0]
	b	.L626
.L635:
	adrp	x1, .LC14
	ldr	q31, [x1, #:lo12:.LC14]
	adrp	x1, .LC15
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC15]
	umov	x2, v31.d[0]
	b	.L626
.L636:
	adrp	x1, .LC16
	ldr	q31, [x1, #:lo12:.LC16]
	adrp	x1, .LC17
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC17]
	umov	x2, v31.d[0]
	b	.L626
.L637:
	adrp	x1, .LC18
	ldr	q31, [x1, #:lo12:.LC18]
	adrp	x1, .LC19
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC19]
	umov	x2, v31.d[0]
	b	.L626
.L638:
	adrp	x1, .LC20
	ldr	q31, [x1, #:lo12:.LC20]
	adrp	x1, .LC21
	umov	x4, v31.d[0]
	ldr	q31, [x1, #:lo12:.LC21]
	umov	x2, v31.d[0]
	b	.L626
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
	cbz	w1, .L646
	and	w0, w1, 1
	tbnz	x1, 0, .L646
	mov	w0, 1
	.p2align 3,,7
.L648:
	asr	w1, w1, 1
	add	w0, w0, 1
	tbz	x1, 0, .L648
.L646:
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
	mov	w0, 0
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
	mov	w0, 0
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
	mov	w0, 0
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
	fadd	s1, s0, s0
	fcmp	s1, s0
	beq	.L658
	cmp	w0, 0
	fmov	s30, 2.0e+0
	fmov	s31, 5.0e-1
	fcsel	s31, s30, s31, ge
	tbz	x0, 0, .L660
	.p2align 3,,7
.L661:
	fmul	s0, s0, s31
.L660:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L658
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L661
.L670:
	asr	w0, w1, 1
	fmul	s31, s31, s31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L661
	b	.L670
	.p2align 2,,3
.L658:
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
	fadd	d1, d0, d0
	fcmp	d1, d0
	beq	.L672
	cmp	w0, 0
	fmov	d30, 2.0e+0
	fmov	d31, 5.0e-1
	fcsel	d31, d30, d31, ge
	tbz	x0, 0, .L674
	.p2align 3,,7
.L675:
	fmul	d0, d0, d31
.L674:
	add	w0, w0, w0, lsr 31
	asr	w0, w0, 1
	cbz	w0, .L672
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L675
.L684:
	asr	w0, w1, 1
	fmul	d31, d31, d31
	add	w1, w0, w0, lsr 31
	tbnz	x0, 0, .L675
	b	.L684
	.p2align 2,,3
.L672:
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
	bl	__addtf3
	ldr	q1, [sp, 32]
	bl	__netf2
	cbz	w0, .L686
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	ldr	q1, [x0]
	tbnz	w19, #31, .L701
	tbz	x19, 0, .L689
	.p2align 3,,7
.L690:
	ldr	q0, [sp, 32]
	str	q1, [sp, 48]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	q1, [sp, 48]
.L689:
	add	w19, w19, w19, lsr 31
	asr	w19, w19, 1
	cbz	w19, .L686
	mov	v0.16b, v1.16b
	bl	__multf3
	add	w0, w19, w19, lsr 31
	mov	v1.16b, v0.16b
	tbnz	x19, 0, .L690
.L702:
	asr	w19, w0, 1
	mov	v0.16b, v1.16b
	bl	__multf3
	mov	v1.16b, v0.16b
	add	w0, w19, w19, lsr 31
	tbnz	x19, 0, .L690
	b	.L702
	.p2align 2,,3
.L686:
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
.L701:
	.cfi_restore_state
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	ldr	q1, [x0]
	tbz	x19, 0, .L689
	b	.L690
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
	cbz	x2, .L704
	sub	x3, x2, #1
	cmp	x3, 14
	bls	.L710
	and	x4, x2, -16
	mov	x3, 0
	.p2align 3,,7
.L706:
	ldr	q30, [x0, x3]
	ldr	q31, [x1, x3]
	eor	v30.16b, v31.16b, v30.16b
	str	q30, [x0, x3]
	add	x3, x3, 16
	cmp	x3, x4
	bne	.L706
	sub	x7, x2, x4
	add	x3, x0, x4
	mov	x6, x7
	add	x5, x1, x4
	cmp	x2, x4
	beq	.L704
.L705:
	sub	x2, x7, #1
	cmp	x2, 6
	bls	.L708
	ldr	d29, [x1, x4]
	and	x1, x7, -8
	ldr	d28, [x0, x4]
	add	x3, x3, x1
	add	x5, x5, x1
	sub	x6, x6, x1
	eor	v28.8b, v29.8b, v28.8b
	str	d28, [x0, x4]
	tst	x7, 7
	beq	.L704
.L708:
	ldrb	w1, [x3]
	ldrb	w2, [x5]
	eor	w1, w1, w2
	strb	w1, [x3]
	cmp	x6, 1
	beq	.L704
	ldrb	w2, [x3, 1]
	ldrb	w1, [x5, 1]
	eor	w1, w1, w2
	strb	w1, [x3, 1]
	cmp	x6, 2
	beq	.L704
	ldrb	w2, [x3, 2]
	ldrb	w1, [x5, 2]
	eor	w1, w1, w2
	strb	w1, [x3, 2]
	cmp	x6, 3
	beq	.L704
	ldrb	w2, [x3, 3]
	ldrb	w1, [x5, 3]
	eor	w1, w1, w2
	strb	w1, [x3, 3]
	cmp	x6, 4
	beq	.L704
	ldrb	w2, [x3, 4]
	ldrb	w1, [x5, 4]
	eor	w1, w1, w2
	strb	w1, [x3, 4]
	cmp	x6, 5
	beq	.L704
	ldrb	w2, [x3, 5]
	ldrb	w1, [x5, 5]
	eor	w1, w1, w2
	strb	w1, [x3, 5]
	cmp	x6, 6
	beq	.L704
	ldrb	w2, [x3, 6]
	ldrb	w1, [x5, 6]
	eor	w1, w1, w2
	strb	w1, [x3, 6]
.L704:
	ret
.L710:
	mov	x6, x2
	mov	x7, x2
	mov	x3, x0
	mov	x5, x1
	mov	x4, 0
	b	.L705
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
	cbz	w3, .L743
	mov	x3, x0
	.p2align 3,,7
.L738:
	ldrb	w4, [x3, 1]!
	cbnz	w4, .L738
.L737:
	cbnz	x2, .L739
	b	.L740
	.p2align 2,,3
.L741:
	beq	.L740
.L739:
	ldrb	w4, [x1]
	subs	x2, x2, #1
	strb	w4, [x3]
	add	x1, x1, 1
	add	x3, x3, 1
	cbnz	w4, .L741
	ret
	.p2align 2,,3
.L740:
	strb	wzr, [x3]
	ret
	.p2align 2,,3
.L743:
	mov	x3, x0
	b	.L737
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
	cbz	x1, .L749
.L750:
	ldrb	w3, [x2, x0]
	cbnz	w3, .L752
.L749:
	ret
	.p2align 2,,3
.L752:
	add	x0, x0, 1
	cmp	x1, x0
	bne	.L750
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
	cbz	w4, .L762
.L758:
	mov	x2, x1
	b	.L761
	.p2align 2,,3
.L760:
	cmp	w3, w4
	beq	.L759
.L761:
	ldrb	w3, [x2]
	add	x2, x2, 1
	cbnz	w3, .L760
	ldrb	w4, [x0, 1]!
	cbnz	w4, .L758
.L762:
	mov	x0, 0
.L759:
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
.L766:
	ldrb	w3, [x2]
	cmp	w1, w3
	csel	x0, x0, x2, ne
	add	x2, x2, 1
	cbnz	w3, .L766
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
	cbz	w8, .L779
	mov	x7, x1
	.p2align 3,,7
.L770:
	ldrb	w0, [x7, 1]!
	cbnz	w0, .L770
	subs	x7, x7, x1
	mov	x0, x5
	sub	x9, x1, #1
	bne	.L776
	b	.L768
	.p2align 2,,3
.L785:
	add	x5, x5, 1
	cbz	w2, .L784
.L776:
	ldrb	w2, [x5]
	cmp	w2, w8
	bne	.L785
	mov	w0, w8
	mov	x4, x1
	mov	x6, x5
	b	.L775
	.p2align 2,,3
.L774:
	ldrb	w2, [x6, 1]!
	add	x3, x4, 1
	ldrb	w0, [x4, 1]
	cbz	w2, .L773
	mov	x4, x3
.L775:
	cmp	w0, 0
	sub	x3, x7, x4
	ccmp	w2, w0, 0, ne
	add	x3, x9, x3
	ccmp	x3, 0, 4, eq
	bne	.L774
.L773:
	cmp	w2, w0
	beq	.L779
	add	x5, x5, 1
	b	.L776
	.p2align 2,,3
.L784:
	mov	x0, 0
.L768:
	ret
.L779:
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
	movi	d30, #0
	fccmpe	d1, d30, 4, mi
	bgt	.L787
	fcmpe	d0, d30
	fmov	d31, d0
	fccmpe	d1, d30, 0, gt
	cset	w0, mi
	cbnz	w0, .L787
	fmov	d0, d31
	ret
	.p2align 2,,3
.L787:
	fneg	d31, d0
	fmov	d0, d31
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
	cbz	x3, .L791
	cmp	x1, x3
	bcc	.L802
	sub	x1, x1, x3
	adds	x7, x0, x1
	bcs	.L802
	ldrb	w8, [x2]
	b	.L797
	.p2align 2,,3
.L801:
	mov	x0, x4
.L793:
	cmp	x7, x0
	bcc	.L802
.L797:
	mov	x4, x0
	ldrb	w1, [x4], 1
	cmp	w1, w8
	bne	.L801
	cmp	x3, 1
	beq	.L791
.L796:
	mov	x1, 1
	b	.L794
	.p2align 2,,3
.L795:
	cmp	x3, x1
	beq	.L791
.L794:
	ldrb	w6, [x0, x1]
	ldrb	w5, [x2, x1]
	add	x1, x1, 1
	cmp	w6, w5
	beq	.L795
	cmp	x7, x4
	bcc	.L802
	mov	x0, x4
	ldrb	w1, [x0], 1
	cmp	w8, w1
	bne	.L793
	mov	x1, x4
	mov	x4, x0
	mov	x0, x1
	b	.L796
	.p2align 2,,3
.L802:
	mov	x0, 0
.L791:
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
	cbz	x2, .L809
	bl	memmove
.L809:
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
	bmi	.L836
	fmov	d2, 1.0e+0
	mov	w2, 0
	fcmpe	d0, d2
	bmi	.L837
.L817:
	mov	w1, 0
	fmov	d6, 5.0e-1
	fmov	d5, 2.0e+0
	.p2align 3,,7
.L823:
	fmov	d4, d0
	add	w1, w1, 1
	fmul	d0, d0, d6
	fcmpe	d4, d5
	bge	.L823
.L824:
	fneg	d31, d0
	cmp	w2, 0
	str	w1, [x0]
	fcsel	d31, d31, d0, ne
	fmov	d0, d31
	ret
	.p2align 2,,3
.L837:
	fmov	d1, 5.0e-1
	fcmpe	d0, d1
	bge	.L820
	fcmp	d0, #0.0
	bne	.L829
.L820:
	fmov	d31, d0
	str	wzr, [x0]
	fmov	d0, d31
	ret
	.p2align 2,,3
.L836:
	fmov	d7, -1.0e+0
	fneg	d30, d0
	fcmpe	d0, d7
	bgt	.L838
	fmov	d0, d30
	mov	w2, 1
	b	.L817
	.p2align 2,,3
.L838:
	fmov	d3, -5.0e-1
	fcmpe	d0, d3
	bls	.L820
	mov	w2, 1
.L818:
	fmov	d0, d30
	mov	w1, 0
	fmov	d29, 2.5e-1
	.p2align 3,,7
.L825:
	fmov	d28, d0
	sub	w1, w1, #1
	fadd	d0, d0, d0
	fcmpe	d28, d29
	bmi	.L825
	b	.L824
.L829:
	fmov	d30, d0
	b	.L818
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
	cbz	x2, .L839
	.p2align 3,,7
.L841:
	sbfx	x3, x2, 0, 1
	lsr	x2, x2, 1
	and	x3, x3, x1
	lsl	x1, x1, 1
	add	x0, x0, x3
	cbnz	x2, .L841
.L839:
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
	bcs	.L846
	.p2align 3,,7
.L845:
	tbnz	w1, #31, .L846
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L845
	mov	w4, 0
	cbz	w3, .L849
.L846:
	mov	w4, 0
	.p2align 3,,7
.L851:
	cmp	w0, w1
	bcc	.L850
	sub	w0, w0, w1
	orr	w4, w4, w3
.L850:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L851
.L849:
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
	cbz	w2, .L865
	.p2align 3,,7
.L867:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L867
.L865:
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
	lsr	w6, w2, 3
	mov	w5, w9
	cmp	x0, x1
	bcc	.L875
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L942
.L875:
	cbz	w6, .L943
	sub	w3, w6, #1
	cmp	w3, 6
	bls	.L877
	add	x3, x1, 8
	cmp	x0, x3
	beq	.L877
	lsr	w7, w2, 4
	and	x4, x2, 4294967280
	mov	x3, 0
	.p2align 3,,7
.L878:
	ldr	q31, [x1, x3]
	str	q31, [x0, x3]
	add	x3, x3, 16
	cmp	x4, x3
	bne	.L878
	lsl	w3, w7, 1
	cmp	w6, w3
	beq	.L881
	ldr	x4, [x1, x3, lsl 3]
	str	x4, [x0, x3, lsl 3]
.L881:
	cmp	w2, w9
	bls	.L870
	sub	w7, w2, w9
	uxtw	x4, w9
	sub	w8, w7, #1
	cmp	w8, 6
	bls	.L873
	add	x3, x4, 1
	add	x6, x0, x4
	add	x3, x1, x3
	sub	x3, x6, x3
	cmp	x3, 14
	bls	.L873
	cmp	w8, 14
	bls	.L898
	add	x8, x1, x4
	and	x5, x7, 4294967280
	mov	x3, 0
	.p2align 3,,7
.L883:
	ldr	q31, [x8, x3]
	str	q31, [x6, x3]
	add	x3, x3, 16
	cmp	x3, x5
	bne	.L883
	and	w3, w7, -16
	add	w5, w9, w3
	tst	x7, 15
	beq	.L870
	sub	w7, w7, w3
	sub	w6, w7, #1
	cmp	w6, 6
	bls	.L885
.L882:
	add	x3, x4, w3, uxtw
	and	w4, w7, -8
	add	w5, w5, w4
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x7, 7
	beq	.L870
.L885:
	ldrb	w4, [x1, w5, uxtw]
	add	w3, w5, 1
	strb	w4, [x0, w5, uxtw]
	cmp	w2, w3
	bls	.L870
	ldrb	w6, [x1, w3, uxtw]
	add	w4, w5, 2
	strb	w6, [x0, w3, uxtw]
	cmp	w4, w2
	bcs	.L870
	ldrb	w6, [x1, w4, uxtw]
	add	w3, w5, 3
	strb	w6, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L870
	ldrb	w6, [x1, w3, uxtw]
	add	w4, w5, 4
	strb	w6, [x0, w3, uxtw]
	cmp	w2, w4
	bls	.L870
	ldrb	w6, [x1, w4, uxtw]
	add	w3, w5, 5
	strb	w6, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L870
	ldrb	w4, [x1, w3, uxtw]
	add	w5, w5, 6
	strb	w4, [x0, w3, uxtw]
	cmp	w2, w5
	bls	.L870
.L941:
	ldrb	w1, [x1, w5, uxtw]
	strb	w1, [x0, w5, uxtw]
.L870:
	ret
	.p2align 2,,3
.L942:
	sub	w5, w2, #1
	cbz	w2, .L870
	uxtw	x4, w5
	cmp	w5, 6
	bls	.L889
	sub	x6, x4, #1
	add	x3, x0, x4
	add	x6, x1, x6
	sub	x3, x3, x6
	add	x3, x3, 14
	cmp	x3, 14
	bls	.L889
	cmp	w5, 14
	bls	.L899
	lsr	w7, w2, 4
	sub	x6, x4, #15
	add	x8, x1, x6
	add	x6, x0, x6
	neg	x7, x7, lsl 4
	mov	x3, 0
	.p2align 3,,7
.L891:
	ldr	q31, [x8, x3]
	str	q31, [x6, x3]
	sub	x3, x3, #16
	cmp	x3, x7
	bne	.L891
	and	w6, w2, -16
	sub	w5, w5, w6
	tst	x2, 15
	beq	.L870
	sub	w2, w2, w6
	sub	w3, w2, #1
	cmp	w3, 6
	bls	.L894
	and	w9, w2, -8
.L890:
	sub	x3, x4, #7
	sub	w5, w5, w9
	sub	x3, x3, w6, uxtw
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x2, 7
	beq	.L870
.L894:
	ldrb	w3, [x1, w5, uxtw]
	sub	w2, w5, #1
	strb	w3, [x0, w5, uxtw]
	cbz	w5, .L870
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w5, #2
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L870
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w5, #3
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L870
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w5, #4
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L870
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w5, #5
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L870
	ldrb	w3, [x1, w2, uxtw]
	sub	w5, w5, #6
	strb	w3, [x0, w2, uxtw]
	cbnz	w2, .L941
	b	.L870
.L898:
	mov	w3, 0
	b	.L882
	.p2align 2,,3
.L877:
	lsl	w6, w6, 3
	mov	x3, 0
	.p2align 3,,7
.L880:
	ldr	x4, [x1, x3]
	str	x4, [x0, x3]
	add	x3, x3, 8
	cmp	x6, x3
	bne	.L880
	b	.L881
	.p2align 2,,3
.L943:
	uxtw	x4, w9
	cbz	w2, .L870
.L873:
	mov	x3, x4
	.p2align 3,,7
.L887:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L887
	ret
.L889:
	mov	x2, x4
	.p2align 3,,7
.L896:
	ldrb	w3, [x1, x2]
	strb	w3, [x0, x2]
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L896
	ret
.L899:
	mov	w6, 0
	b	.L890
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
	bcc	.L948
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L999
.L948:
	cbz	w4, .L947
	sub	w3, w4, #1
	cmp	w3, 6
	bls	.L951
	add	x3, x1, 2
	sub	x3, x0, x3
	cmp	x3, 12
	bls	.L951
	lsr	w5, w2, 4
	and	x6, x2, 4294967280
	mov	x3, 0
	.p2align 3,,7
.L952:
	ldr	q31, [x1, x3]
	str	q31, [x0, x3]
	add	x3, x3, 16
	cmp	x3, x6
	bne	.L952
	lsl	w3, w5, 3
	cmp	w4, w3
	beq	.L947
	uxtw	x5, w3
	add	w6, w3, 1
	ldrsh	w7, [x1, x5, lsl 1]
	strh	w7, [x0, x5, lsl 1]
	cmp	w4, w6
	bls	.L947
	ldrsh	w7, [x1, w6, uxtw 1]
	add	w5, w3, 2
	strh	w7, [x0, w6, uxtw 1]
	cmp	w4, w5
	bls	.L947
	ldrsh	w7, [x1, x5, lsl 1]
	add	w6, w3, 3
	strh	w7, [x0, x5, lsl 1]
	cmp	w4, w6
	bls	.L947
	ldrsh	w7, [x1, w6, uxtw 1]
	add	w5, w3, 4
	strh	w7, [x0, w6, uxtw 1]
	cmp	w4, w5
	bls	.L947
	ldrsh	w7, [x1, x5, lsl 1]
	add	w6, w3, 5
	strh	w7, [x0, x5, lsl 1]
	cmp	w4, w6
	bls	.L947
	ldrsh	w5, [x1, w6, uxtw 1]
	add	w3, w3, 6
	strh	w5, [x0, w6, uxtw 1]
	cmp	w4, w3
	bls	.L947
	ldrsh	w4, [x1, x3, lsl 1]
	strh	w4, [x0, x3, lsl 1]
.L947:
	tbz	x2, 0, .L944
.L1000:
	sub	w2, w2, #1
	ldrb	w1, [x1, w2, uxtw]
	strb	w1, [x0, w2, uxtw]
.L944:
	ret
	.p2align 2,,3
.L999:
	sub	w5, w2, #1
	cbz	w2, .L944
	uxtw	x4, w5
	cmp	w5, 6
	bls	.L957
	sub	x6, x4, #1
	add	x3, x0, x4
	add	x6, x1, x6
	sub	x3, x3, x6
	add	x3, x3, 14
	cmp	x3, 14
	bls	.L957
	cmp	w5, 14
	bls	.L965
	lsr	w7, w2, 4
	sub	x6, x4, #15
	add	x8, x1, x6
	add	x6, x0, x6
	neg	x7, x7, lsl 4
	mov	x3, 0
	.p2align 3,,7
.L959:
	ldr	q31, [x8, x3]
	str	q31, [x6, x3]
	sub	x3, x3, #16
	cmp	x3, x7
	bne	.L959
	and	w6, w2, -16
	sub	w5, w5, w6
	tst	x2, 15
	beq	.L944
	sub	w2, w2, w6
	sub	w3, w2, #1
	cmp	w3, 6
	bls	.L961
.L958:
	sub	x3, x4, #7
	and	w4, w2, -8
	sub	x3, x3, w6, uxtw
	sub	w5, w5, w4
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x2, 7
	beq	.L944
.L961:
	ldrb	w3, [x1, w5, uxtw]
	sub	w2, w5, #1
	strb	w3, [x0, w5, uxtw]
	cbz	w5, .L944
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w5, #2
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L944
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w5, #3
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L944
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w5, #4
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L944
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w5, #5
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L944
	ldrb	w3, [x1, w2, uxtw]
	sub	w5, w5, #6
	strb	w3, [x0, w2, uxtw]
	cbz	w2, .L944
	ldrb	w1, [x1, w5, uxtw]
	strb	w1, [x0, w5, uxtw]
	ret
	.p2align 2,,3
.L951:
	lsl	w4, w4, 1
	mov	x3, 0
	.p2align 3,,7
.L954:
	ldrsh	w5, [x1, x3]
	strh	w5, [x0, x3]
	add	x3, x3, 2
	cmp	x4, x3
	bne	.L954
	tbz	x2, 0, .L944
	b	.L1000
.L957:
	mov	x2, x4
	.p2align 3,,7
.L963:
	ldrb	w3, [x1, x2]
	strb	w3, [x0, x2]
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L963
	ret
.L965:
	mov	w6, 0
	b	.L958
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
	bcc	.L1006
	add	x3, x1, w2, uxtw
	cmp	x0, x3
	bls	.L1073
.L1006:
	cbz	w6, .L1074
	sub	w3, w6, #1
	cmp	w3, 5
	bls	.L1008
	add	x3, x1, 4
	sub	x3, x0, x3
	cmp	x3, 8
	bls	.L1008
	lsr	w7, w2, 4
	and	x4, x2, 4294967280
	mov	x3, 0
	.p2align 3,,7
.L1009:
	ldr	q31, [x1, x3]
	str	q31, [x0, x3]
	add	x3, x3, 16
	cmp	x3, x4
	bne	.L1009
	lsl	w3, w7, 2
	cmp	w6, w3
	beq	.L1012
	uxtw	x7, w3
	add	w4, w3, 1
	ldr	w8, [x1, x7, lsl 2]
	str	w8, [x0, x7, lsl 2]
	cmp	w6, w4
	bls	.L1012
	ldr	w7, [x1, x4, lsl 2]
	add	w3, w3, 2
	str	w7, [x0, x4, lsl 2]
	cmp	w6, w3
	bls	.L1012
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
.L1012:
	cmp	w2, w5
	bls	.L1001
	sub	w7, w2, w5
	uxtw	x4, w5
	sub	w8, w7, #1
	cmp	w8, 6
	bls	.L1004
	add	x3, x4, 1
	add	x6, x0, x4
	add	x3, x1, x3
	sub	x3, x6, x3
	cmp	x3, 14
	bls	.L1004
	cmp	w8, 14
	bls	.L1029
	add	x9, x1, x4
	and	x8, x7, 4294967280
	mov	x3, 0
	.p2align 3,,7
.L1014:
	ldr	q31, [x9, x3]
	str	q31, [x6, x3]
	add	x3, x3, 16
	cmp	x3, x8
	bne	.L1014
	and	w3, w7, -16
	add	w5, w5, w3
	tst	x7, 15
	beq	.L1001
	sub	w7, w7, w3
	sub	w6, w7, #1
	cmp	w6, 6
	bls	.L1016
.L1013:
	add	x3, x4, w3, uxtw
	and	w4, w7, -8
	add	w5, w5, w4
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x7, 7
	beq	.L1001
.L1016:
	ldrb	w4, [x1, w5, uxtw]
	add	w3, w5, 1
	strb	w4, [x0, w5, uxtw]
	cmp	w2, w3
	bls	.L1001
	ldrb	w6, [x1, w3, uxtw]
	add	w4, w5, 2
	strb	w6, [x0, w3, uxtw]
	cmp	w4, w2
	bcs	.L1001
	ldrb	w6, [x1, w4, uxtw]
	add	w3, w5, 3
	strb	w6, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L1001
	ldrb	w6, [x1, w3, uxtw]
	add	w4, w5, 4
	strb	w6, [x0, w3, uxtw]
	cmp	w2, w4
	bls	.L1001
	ldrb	w6, [x1, w4, uxtw]
	add	w3, w5, 5
	strb	w6, [x0, w4, uxtw]
	cmp	w2, w3
	bls	.L1001
	ldrb	w4, [x1, w3, uxtw]
	add	w5, w5, 6
	strb	w4, [x0, w3, uxtw]
	cmp	w2, w5
	bls	.L1001
.L1072:
	ldrb	w1, [x1, w5, uxtw]
	strb	w1, [x0, w5, uxtw]
.L1001:
	ret
	.p2align 2,,3
.L1073:
	sub	w5, w2, #1
	cbz	w2, .L1001
	uxtw	x4, w5
	cmp	w5, 6
	bls	.L1020
	sub	x6, x4, #1
	add	x3, x0, x4
	add	x6, x1, x6
	sub	x3, x3, x6
	add	x3, x3, 14
	cmp	x3, 14
	bls	.L1020
	cmp	w5, 14
	bls	.L1030
	lsr	w7, w2, 4
	sub	x6, x4, #15
	add	x8, x1, x6
	add	x6, x0, x6
	neg	x7, x7, lsl 4
	mov	x3, 0
	.p2align 3,,7
.L1022:
	ldr	q31, [x8, x3]
	str	q31, [x6, x3]
	sub	x3, x3, #16
	cmp	x3, x7
	bne	.L1022
	and	w6, w2, -16
	sub	w5, w5, w6
	tst	x2, 15
	beq	.L1001
	sub	w2, w2, w6
	sub	w3, w2, #1
	cmp	w3, 6
	bls	.L1025
.L1021:
	sub	x3, x4, #7
	and	w4, w2, -8
	sub	x3, x3, w6, uxtw
	sub	w5, w5, w4
	ldr	d31, [x1, x3]
	str	d31, [x0, x3]
	tst	x2, 7
	beq	.L1001
.L1025:
	ldrb	w3, [x1, w5, uxtw]
	sub	w2, w5, #1
	strb	w3, [x0, w5, uxtw]
	cbz	w5, .L1001
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w5, #2
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L1001
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w5, #3
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L1001
	ldrb	w4, [x1, w2, uxtw]
	sub	w3, w5, #4
	strb	w4, [x0, w2, uxtw]
	cbz	w2, .L1001
	ldrb	w4, [x1, w3, uxtw]
	sub	w2, w5, #5
	strb	w4, [x0, w3, uxtw]
	cbz	w3, .L1001
	ldrb	w3, [x1, w2, uxtw]
	sub	w5, w5, #6
	strb	w3, [x0, w2, uxtw]
	cbnz	w2, .L1072
	b	.L1001
.L1029:
	mov	w3, 0
	b	.L1013
	.p2align 2,,3
.L1008:
	lsl	w6, w6, 2
	mov	x3, 0
	.p2align 3,,7
.L1011:
	ldr	w4, [x1, x3]
	str	w4, [x0, x3]
	add	x3, x3, 4
	cmp	x6, x3
	bne	.L1011
	b	.L1012
	.p2align 2,,3
.L1074:
	uxtw	x4, w5
	cbz	w2, .L1001
.L1004:
	mov	x3, x4
	.p2align 3,,7
.L1018:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	w2, w3
	bhi	.L1018
	ret
.L1020:
	mov	x2, x4
	.p2align 3,,7
.L1027:
	ldrb	w3, [x1, x2]
	strb	w3, [x0, x2]
	sub	x2, x2, #1
	cmn	x2, #1
	bne	.L1027
	ret
.L1030:
	mov	w6, 0
	b	.L1021
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
	and	w1, w0, 65535
	adrp	x0, .LC26
	dup	v31.4s, w1
	ldr	q30, [x0, #:lo12:.LC26]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1087
	adrp	x0, .LC27
	ldr	q30, [x0, #:lo12:.LC27]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1088
	adrp	x0, .LC28
	ldr	q30, [x0, #:lo12:.LC28]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1089
	adrp	x0, .LC29
	ldr	q30, [x0, #:lo12:.LC29]
	sshl	v31.4s, v31.4s, v30.4s
	cmtst	v31.4s, v31.4s, v29.4s
	umaxp	v31.4s, v31.4s, v31.4s
	fmov	x0, d31
	cbnz	x0, .L1090
.L1092:
	mov	w0, 16
.L1081:
	ret
.L1087:
	adrp	x0, .LC16
	ldr	q31, [x0, #:lo12:.LC16]
	adrp	x0, .LC9
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC9]
	umov	x4, v31.d[0]
.L1082:
	mov	w2, 15
	sub	w0, w2, w4
	asr	w0, w1, w0
	tbnz	x0, 0, .L1097
	add	w0, w4, 1
	sub	w3, w2, w0
	asr	w3, w1, w3
	tbnz	x3, 0, .L1081
	add	w0, w4, 2
	cmp	w6, 2
	beq	.L1092
	sub	w3, w2, w0
	asr	w3, w1, w3
	tbnz	x3, 0, .L1081
	add	w0, w4, 3
	cmp	w6, 3
	beq	.L1092
	sub	w2, w2, w0
	mov	w3, 16
	asr	w1, w1, w2
	tst	x1, 1
	csel	w0, w0, w3, ne
	ret
.L1088:
	adrp	x0, .LC18
	ldr	q31, [x0, #:lo12:.LC18]
	adrp	x0, .LC11
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC11]
	umov	x4, v31.d[0]
	b	.L1082
.L1090:
	adrp	x0, .LC22
	ldr	q31, [x0, #:lo12:.LC22]
	adrp	x0, .LC15
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC15]
	umov	x4, v31.d[0]
	b	.L1082
.L1089:
	adrp	x0, .LC20
	ldr	q31, [x0, #:lo12:.LC20]
	adrp	x0, .LC13
	umov	x6, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC13]
	umov	x4, v31.d[0]
	b	.L1082
.L1097:
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
	and	w1, w0, 65535
	adrp	x0, .LC0
	dup	v31.4s, w1
	ldr	q30, [x0, #:lo12:.LC0]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1104
	adrp	x0, .LC1
	ldr	q30, [x0, #:lo12:.LC1]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1105
	adrp	x0, .LC2
	ldr	q30, [x0, #:lo12:.LC2]
	sshl	v30.4s, v31.4s, v30.4s
	cmtst	v30.4s, v30.4s, v29.4s
	umaxp	v30.4s, v30.4s, v30.4s
	fmov	x0, d30
	cbnz	x0, .L1106
	adrp	x0, .LC3
	ldr	q30, [x0, #:lo12:.LC3]
	sshl	v31.4s, v31.4s, v30.4s
	cmtst	v31.4s, v31.4s, v29.4s
	umaxp	v31.4s, v31.4s, v31.4s
	fmov	x0, d31
	cbnz	x0, .L1107
.L1109:
	mov	w0, 16
.L1098:
	ret
.L1104:
	adrp	x0, .LC16
	ldr	q31, [x0, #:lo12:.LC16]
	adrp	x0, .LC9
	umov	x4, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC9]
	umov	x2, v31.d[0]
.L1099:
	asr	w0, w1, w2
	tbnz	x0, 0, .L1114
	add	w0, w2, 1
	asr	w6, w1, w0
	tbnz	x6, 0, .L1098
	add	w0, w2, 2
	cmp	w4, 2
	beq	.L1109
	asr	w6, w1, w0
	tbnz	x6, 0, .L1098
	add	w0, w2, 3
	cmp	w4, 3
	beq	.L1109
	asr	w1, w1, w0
	mov	w2, 16
	tst	x1, 1
	csel	w0, w0, w2, ne
	ret
.L1105:
	adrp	x0, .LC18
	ldr	q31, [x0, #:lo12:.LC18]
	adrp	x0, .LC11
	umov	x4, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC11]
	umov	x2, v31.d[0]
	b	.L1099
.L1107:
	adrp	x0, .LC22
	ldr	q31, [x0, #:lo12:.LC22]
	adrp	x0, .LC15
	umov	x4, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC15]
	umov	x2, v31.d[0]
	b	.L1099
.L1106:
	adrp	x0, .LC20
	ldr	q31, [x0, #:lo12:.LC20]
	adrp	x0, .LC13
	umov	x4, v31.d[0]
	ldr	q31, [x0, #:lo12:.LC13]
	umov	x2, v31.d[0]
	b	.L1099
.L1114:
	mov	w0, w2
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
	fcvtzs	x0, s0
	fcmpe	s0, s31
	bge	.L1121
	ret
	.p2align 2,,3
.L1121:
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
	cbz	w2, .L1124
	.p2align 3,,7
.L1126:
	sbfx	x3, x2, 0, 1
	lsr	w2, w2, 1
	and	w3, w3, w1
	lsl	w1, w1, 1
	add	w0, w0, w3
	cbnz	w2, .L1126
.L1124:
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
	cbz	w3, .L1129
	cbz	w1, .L1129
	.p2align 3,,7
.L1131:
	sbfx	x2, x1, 0, 1
	lsr	w1, w1, 1
	and	w2, w2, w3
	lsl	w3, w3, 1
	add	w0, w0, w2
	cbnz	w1, .L1131
.L1129:
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
	bcs	.L1138
	.p2align 3,,7
.L1137:
	tbnz	w1, #31, .L1138
	lsl	w3, w3, 1
	lsl	w1, w1, 1
	cmp	w3, 0
	ccmp	w0, w1, 0, ne
	bhi	.L1137
	mov	w4, 0
	cbz	w3, .L1141
.L1138:
	mov	w4, 0
	.p2align 3,,7
.L1143:
	cmp	w0, w1
	bcc	.L1142
	sub	w0, w0, w1
	orr	w4, w4, w3
.L1142:
	lsr	w3, w3, 1
	lsr	w1, w1, 1
	cbnz	w3, .L1143
.L1141:
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
	csinv	w0, w0, wzr, ge
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
	csinv	w0, w0, wzr, ge
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
	blt	.L1168
	beq	.L1164
	mov	w5, 0
.L1161:
	mov	w0, 0
	mov	w2, 0
	.p2align 3,,7
.L1163:
	add	w2, w2, 1
	sbfx	x3, x1, 0, 1
	and	w2, w2, 255
	and	w3, w3, w4
	asr	w1, w1, 1
	cmp	w2, 32
	ccmp	w1, 0, 4, ne
	add	w0, w0, w3
	lsl	w4, w4, 1
	bne	.L1163
	cmp	w5, 0
	csneg	w0, w0, w0, eq
	ret
	.p2align 2,,3
.L1168:
	neg	w1, w1
	mov	w5, 1
	b	.L1161
	.p2align 2,,3
.L1164:
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
	tbnz	x0, #63, .L1186
.L1170:
	tbz	x1, #63, .L1171
	neg	x1, x1
	mov	w5, w2
.L1171:
	mov	w4, w0
	mov	w2, w1
	mov	w3, 1
	cmp	w0, w1
	bls	.L1173
	.p2align 3,,7
.L1172:
	tbnz	w2, #31, .L1173
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L1172
	mov	x0, 0
	cbz	w3, .L1174
.L1173:
	mov	x0, 0
	.p2align 3,,7
.L1177:
	cmp	w2, w4
	bhi	.L1176
	sub	w4, w4, w2
	orr	w0, w0, w3
.L1176:
	lsr	w3, w3, 1
	lsr	w2, w2, 1
	cbnz	w3, .L1177
.L1174:
	cmp	w5, 0
	csneg	x0, x0, x0, eq
	ret
	.p2align 2,,3
.L1186:
	neg	x0, x0
	mov	w2, 0
	mov	w5, 1
	b	.L1170
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
	tbz	x0, #63, .L1188
	neg	x0, x0
	mov	w5, 1
.L1188:
	cmp	x1, 0
	mov	w4, w0
	csneg	x1, x1, x1, ge
	mov	w3, 1
	mov	w2, w1
	cmp	w0, w1
	bls	.L1194
	.p2align 3,,7
.L1189:
	tbnz	w2, #31, .L1194
	lsl	w3, w3, 1
	lsl	w2, w2, 1
	cmp	w3, 0
	ccmp	w4, w2, 0, ne
	bhi	.L1189
	cbz	w3, .L1204
	.p2align 3,,7
.L1194:
	subs	w0, w4, w2
	lsr	w3, w3, 1
	csel	w4, w0, w4, cs
	lsr	w2, w2, 1
	cbnz	w3, .L1194
.L1204:
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
	bcc	.L1206
	b	.L1285
	.p2align 2,,3
.L1209:
	cmp	w3, 0
	ccmp	w0, w4, 0, ne
	bls	.L1208
	mov	w5, w3
	mov	w1, w4
.L1206:
	ubfiz	w3, w5, 1, 15
	ubfiz	w4, w1, 1, 15
	tbz	x1, 15, .L1209
	mov	w3, 0
	cmp	w0, w1
	bcc	.L1232
	sub	w0, w0, w1
	mov	w3, w5
	and	w0, w0, 65535
.L1232:
	ubfx	x7, x5, 1, 16
	lsr	w6, w1, 1
	cbz	w7, .L1211
.L1213:
	cmp	w0, w6
	bcc	.L1214
	sub	w6, w0, w6
	orr	w7, w3, w7
	and	w0, w6, 65535
	and	w3, w7, 65535
.L1214:
	ubfx	x4, x5, 2, 16
	lsr	w6, w1, 2
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1215
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1215:
	ubfx	x4, x5, 3, 16
	lsr	w6, w1, 3
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1216
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1216:
	ubfx	x4, x5, 4, 16
	lsr	w6, w1, 4
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1217
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1217:
	ubfx	x4, x5, 5, 16
	lsr	w6, w1, 5
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1218
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1218:
	ubfx	x4, x5, 6, 16
	lsr	w6, w1, 6
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1219
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1219:
	ubfx	x4, x5, 7, 16
	lsr	w6, w1, 7
	cbz	w4, .L1211
	cmp	w0, w6
	bcs	.L1286
.L1220:
	ubfx	x4, x5, 8, 16
	lsr	w6, w1, 8
	cbz	w4, .L1211
	cmp	w0, w6
	bcs	.L1287
.L1221:
	ubfx	x4, x5, 9, 16
	lsr	w6, w1, 9
	cbz	w4, .L1211
	cmp	w0, w6
	bcs	.L1288
.L1222:
	ubfx	x4, x5, 10, 16
	lsr	w6, w1, 10
	cbz	w4, .L1211
	cmp	w0, w6
	bcs	.L1289
.L1223:
	ubfx	x4, x5, 11, 16
	lsr	w6, w1, 11
	cbz	w4, .L1211
	cmp	w0, w6
	bcs	.L1290
.L1224:
	ubfx	x4, x5, 12, 16
	lsr	w6, w1, 12
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1225
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1225:
	ubfx	x4, x5, 13, 16
	lsr	w6, w1, 13
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1226
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1226:
	ubfx	x4, x5, 14, 16
	lsr	w6, w1, 14
	cbz	w4, .L1211
	cmp	w0, w6
	bcc	.L1227
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
.L1227:
	lsr	w1, w1, 15
	tbz	x5, 15, .L1211
	cmp	w0, w1
	bcc	.L1235
	sub	w1, w0, w1
	orr	w3, w3, 1
	and	w0, w1, 65535
	and	w3, w3, 65535
.L1211:
	cmp	w2, 0
	csel	w0, w0, w3, ne
	ret
	.p2align 2,,3
.L1208:
	cbz	w3, .L1211
	cmp	w0, w4
	bcc	.L1212
	sub	w0, w0, w4
	and	w7, w5, 32767
	and	w6, w1, 32767
	and	w0, w0, 65535
	mov	w5, w3
	mov	w1, w4
	b	.L1213
	.p2align 2,,3
.L1286:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1220
	.p2align 2,,3
.L1212:
	and	w7, w5, 32767
	and	w6, w1, 32767
	mov	w5, w3
	mov	w1, w4
	mov	w3, 0
	b	.L1213
	.p2align 2,,3
.L1287:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1221
	.p2align 2,,3
.L1288:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1222
	.p2align 2,,3
.L1289:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1223
	.p2align 2,,3
.L1290:
	sub	w6, w0, w6
	orr	w4, w3, w4
	and	w0, w6, 65535
	and	w3, w4, 65535
	b	.L1224
.L1235:
	mov	w0, 0
	b	.L1211
.L1285:
	csel	w0, w0, wzr, ne
	cset	w3, eq
	b	.L1211
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
	bcs	.L1293
	.p2align 3,,7
.L1292:
	tbnz	x1, 31, .L1293
	lsl	x3, x3, 1
	lsl	x1, x1, 1
	cmp	x3, 0
	ccmp	x0, x1, 0, ne
	bhi	.L1292
	mov	x4, 0
	cbz	x3, .L1296
.L1293:
	mov	x4, 0
	.p2align 3,,7
.L1298:
	cmp	x0, x1
	bcc	.L1297
	sub	x0, x0, x1
	orr	x4, x4, x3
.L1297:
	lsr	x3, x3, 1
	lsr	x1, x1, 1
	cbnz	x3, .L1298
.L1296:
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
	tbz	x1, 5, .L1307
	sub	w1, w1, #32
	mov	w3, 0
	lsl	w0, w0, w1
.L1308:
	uxtw	x1, w3
	orr	x0, x1, x0, lsl 32
.L1306:
	ret
	.p2align 2,,3
.L1307:
	cbz	w1, .L1306
	neg	w4, w1
	asr	x0, x0, 32
	lsl	w3, w2, w1
	lsl	w0, w0, w1
	lsr	w2, w2, w4
	orr	w0, w2, w0
	b	.L1308
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
	tbz	x2, 6, .L1313
	sub	w2, w2, #64
	mov	x3, 0
	lsl	x1, x0, x2
	mov	x0, x3
.L1315:
	ret
	.p2align 2,,3
.L1313:
	cbz	w2, .L1315
	neg	w4, w2
	lsl	x1, x1, x2
	lsl	x3, x0, x2
	lsr	x2, x0, x4
	mov	x0, x3
	orr	x1, x2, x1
	b	.L1315
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
	tbz	x1, 5, .L1318
	asr	x2, x0, 32
	sub	w1, w1, #32
	asr	w0, w2, 31
	asr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L1317:
	ret
	.p2align 2,,3
.L1318:
	cbz	w1, .L1317
	asr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	asr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L1317
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
	tbz	x2, 6, .L1324
	sub	w2, w2, #64
	asr	x3, x1, 63
	asr	x0, x1, x2
	mov	x1, x3
.L1326:
	ret
	.p2align 2,,3
.L1324:
	cbz	w2, .L1326
	neg	w4, w2
	lsr	x0, x0, x2
	asr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1326
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
	blt	.L1334
	mov	w0, 2
	bgt	.L1332
	mov	w0, 0
	cmp	w2, w1
	bcc	.L1332
	cset	w0, hi
	add	w0, w0, 1
.L1332:
	ret
	.p2align 2,,3
.L1334:
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
	blt	.L1340
	mov	w0, 1
	bgt	.L1338
	cmp	w2, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L1338:
	ret
	.p2align 2,,3
.L1340:
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
	blt	.L1343
	mov	w0, 2
	bgt	.L1343
	mov	w0, 0
	cmp	x4, x2
	bcc	.L1343
	cset	w0, hi
	add	w0, w0, 1
.L1343:
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
	cbnz	x0, .L1352
	cmp	x1, 0
	rbit	x1, x1
	clz	x1, x1
	add	w1, w1, 65
	csel	w0, w1, wzr, ne
	ret
	.p2align 2,,3
.L1352:
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
	tbz	x1, 5, .L1356
	lsr	x2, x0, 32
	sub	w1, w1, #32
	mov	w0, 0
	lsr	w2, w2, w1
	orr	x0, x2, x0, lsl 32
.L1355:
	ret
	.p2align 2,,3
.L1356:
	cbz	w1, .L1355
	lsr	x0, x0, 32
	neg	w3, w1
	lsr	w2, w2, w1
	lsl	w3, w0, w3
	orr	w2, w3, w2
	lsr	w0, w0, w1
	orr	x0, x2, x0, lsl 32
	b	.L1355
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
	tbz	x2, 6, .L1362
	sub	w2, w2, #64
	mov	x3, 0
	lsr	x0, x1, x2
	mov	x1, x3
.L1364:
	ret
	.p2align 2,,3
.L1362:
	cbz	w2, .L1364
	neg	w4, w2
	lsr	x0, x0, x2
	lsr	x3, x1, x2
	lsl	x2, x1, x4
	mov	x1, x3
	orr	x0, x2, x0
	b	.L1364
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
	tbz	x0, 0, .L1379
	.p2align 3,,7
.L1381:
	fmul	d31, d31, d1
.L1379:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L1380
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1381
.L1385:
	asr	w1, w2, 1
	fmul	d1, d1, d1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1381
	b	.L1385
	.p2align 2,,3
.L1380:
	tbz	w0, #31, .L1378
	fmov	d0, 1.0e+0
	fdiv	d31, d0, d31
.L1378:
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
	tbz	x0, 0, .L1387
	.p2align 3,,7
.L1389:
	fmul	s31, s31, s1
.L1387:
	add	w1, w1, w1, lsr 31
	asr	w1, w1, 1
	cbz	w1, .L1388
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1389
.L1393:
	asr	w1, w2, 1
	fmul	s1, s1, s1
	add	w2, w1, w1, lsr 31
	tbnz	x1, 0, .L1389
	b	.L1393
	.p2align 2,,3
.L1388:
	tbz	w0, #31, .L1386
	fmov	s0, 1.0e+0
	fdiv	s31, s0, s31
.L1386:
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
	bcc	.L1396
	mov	w0, 2
	bhi	.L1394
	mov	w0, 0
	cmp	w2, w1
	bcc	.L1394
	cset	w0, hi
	add	w0, w0, 1
.L1394:
	ret
	.p2align 2,,3
.L1396:
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
	bcc	.L1402
	mov	w0, 1
	bhi	.L1400
	cmp	w2, w1
	cset	w0, hi
	csinv	w0, w0, wzr, cs
.L1400:
	ret
	.p2align 2,,3
.L1402:
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
	bcc	.L1405
	mov	w0, 2
	bhi	.L1405
	mov	w0, 0
	cmp	x4, x2
	bcc	.L1405
	cset	w0, hi
	add	w0, w0, 1
.L1405:
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
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC25:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	4
.LC26:
	.word	-15
	.word	-14
	.word	-13
	.word	-12
	.align	4
.LC27:
	.word	-11
	.word	-10
	.word	-9
	.word	-8
	.align	4
.LC28:
	.word	-7
	.word	-6
	.word	-5
	.word	-4
	.align	4
.LC29:
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
	.global	__lttf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
