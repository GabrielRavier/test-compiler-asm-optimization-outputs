	.arch armv8-a
	.file	"mini-libc.c"
	.text
	.align	2
	.global	make_ti
	.type	make_ti, %function
make_ti:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldp	x0, x1, [sp, 16]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldp	x0, x1, [sp, 16]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcs	.L6
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	b	.L7
.L8:
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L7:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L8
	b	.L9
.L6:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	beq	.L9
	b	.L10
.L11:
	ldr	x1, [sp, 32]
	add	x0, x1, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x2, x0, 1
	str	x2, [sp, 40]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L10:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L11
.L9:
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	x3, [sp]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	w0, [sp, 12]
	and	w0, w0, 255
	str	w0, [sp, 12]
	b	.L14
.L16:
	ldr	x0, [sp]
	sub	x0, x0, #1
	str	x0, [sp]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L14:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L15
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 12]
	cmp	w0, w1
	bne	.L16
.L15:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L17
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	b	.L18
.L17:
	mov	x0, 0
.L18:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	w0, [sp, 20]
	and	w0, w0, 255
	str	w0, [sp, 20]
	b	.L20
.L22:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L20:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L21
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L22
.L21:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L23
	ldr	x0, [sp, 40]
	b	.L25
.L23:
	mov	x0, 0
.L25:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	b	.L27
.L29:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L27:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L28
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L29
.L28:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L30
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	b	.L32
.L30:
	mov	w0, 0
.L32:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	b	.L34
.L35:
	ldr	x1, [sp, 32]
	add	x0, x1, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x2, x0, 1
	str	x2, [sp, 40]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L34:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L35
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	w0, [sp, 20]
	and	w0, w0, 255
	str	w0, [sp, 20]
	b	.L38
.L40:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L38
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	b	.L39
.L38:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L40
	mov	x0, 0
.L39:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L42
.L43:
	ldr	w0, [sp, 20]
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L42:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L43
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	b	.L46
.L47:
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L46:
	ldr	x0, [sp]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L47
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	and	w0, w0, 255
	str	w0, [sp, 4]
	b	.L50
.L52:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L50:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L51
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 4]
	cmp	w0, w1
	bne	.L52
.L51:
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w1, [sp, 12]
.L57:
	ldrb	w1, [x0]
	mov	w2, w1
	ldr	w1, [sp, 12]
	cmp	w1, w2
	bne	.L55
	b	.L56
.L55:
	mov	x1, x0
	add	x0, x1, 1
	ldrb	w1, [x1]
	cmp	w1, 0
	bne	.L57
	mov	x0, 0
.L56:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	b	.L59
.L61:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
.L59:
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L60
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L61
.L60:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	b	.L64
.L65:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L64:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L65
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L70
	mov	w0, 0
	b	.L69
.L72:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L70:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L71
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L71
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L71
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L72
.L71:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	sub	w0, w1, w0
.L69:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	b	.L74
.L75:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldr	x1, [sp, 40]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 2
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	sub	x0, x0, #2
	str	x0, [sp, 8]
.L74:
	ldr	x0, [sp, 8]
	cmp	x0, 1
	bgt	.L75
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 25
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 127
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 32
	beq	.L81
	ldr	w0, [sp, 12]
	cmp	w0, 9
	bne	.L82
.L81:
	mov	w0, 1
	b	.L84
.L82:
	mov	w0, 0
.L84:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 31
	bls	.L86
	ldr	w0, [sp, 12]
	cmp	w0, 127
	bne	.L87
.L86:
	mov	w0, 1
	b	.L89
.L87:
	mov	w0, 0
.L89:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #48
	cmp	w0, 9
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #33
	cmp	w0, 93
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #97
	cmp	w0, 25
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #32
	cmp	w0, 94
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 32
	beq	.L99
	ldr	w0, [sp, 12]
	sub	w0, w0, #9
	cmp	w0, 4
	bhi	.L100
.L99:
	mov	w0, 1
	b	.L102
.L100:
	mov	w0, 0
.L102:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #65
	cmp	w0, 25
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 31
	bls	.L106
	ldr	w0, [sp, 12]
	sub	w0, w0, #127
	cmp	w0, 32
	bls	.L106
	ldr	w1, [sp, 12]
	mov	w0, -8232
	add	w0, w1, w0
	cmp	w0, 1
	bls	.L106
	ldr	w1, [sp, 12]
	mov	w0, -65529
	add	w0, w1, w0
	cmp	w0, 2
	bhi	.L107
.L106:
	mov	w0, 1
	b	.L109
.L107:
	mov	w0, 0
.L109:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #48
	cmp	w0, 9
	cset	w0, ls
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 254
	bhi	.L113
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	and	w0, w0, 127
	cmp	w0, 32
	cset	w0, hi
	and	w0, w0, 255
	b	.L114
.L113:
	ldr	w1, [sp, 12]
	mov	w0, 8231
	cmp	w1, w0
	bls	.L115
	ldr	w1, [sp, 12]
	mov	w0, -8234
	add	w1, w1, w0
	mov	w0, 47061
	cmp	w1, w0
	bls	.L115
	ldr	w0, [sp, 12]
	sub	w1, w0, #57344
	mov	w0, 8184
	cmp	w1, w0
	bhi	.L116
.L115:
	mov	w0, 1
	b	.L114
.L116:
	ldr	w1, [sp, 12]
	mov	w0, -65532
	add	w1, w1, w0
	mov	w0, 3
	movk	w0, 0x10, lsl 16
	cmp	w1, w0
	bhi	.L117
	ldr	w0, [sp, 12]
	and	w1, w0, 65534
	mov	w0, 65534
	cmp	w1, w0
	bne	.L118
.L117:
	mov	w0, 0
	b	.L114
.L118:
	mov	w0, 1
.L114:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L120
	ldr	w0, [sp, 12]
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	bhi	.L121
.L120:
	mov	w0, 1
	b	.L123
.L121:
	mov	w0, 0
.L123:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	and	w0, w0, 127
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	str	d1, [sp]
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 8]
	fcmp	d30, d31
	bvc	.L127
	ldr	d31, [sp, 8]
	b	.L128
.L127:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L129
	ldr	d31, [sp]
	b	.L128
.L129:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bgt	.L133
	b	.L134
.L133:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fsub	d31, d30, d31
	b	.L128
.L134:
	movi	d31, #0
.L128:
	fmov	d0, d31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	str	s1, [sp, 8]
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 12]
	fcmp	s30, s31
	bvc	.L136
	ldr	s31, [sp, 12]
	b	.L137
.L136:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L138
	ldr	s31, [sp, 8]
	b	.L137
.L138:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bgt	.L142
	b	.L143
.L142:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fsub	s31, s30, s31
	b	.L137
.L143:
	movi	v31.2s, #0
.L137:
	fmov	s0, s31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	str	d1, [sp]
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 8]
	fcmp	d30, d31
	bvc	.L145
	ldr	d31, [sp]
	b	.L146
.L145:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L147
	ldr	d31, [sp, 8]
	b	.L146
.L147:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L148
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L149
	ldr	d31, [sp]
	b	.L146
.L149:
	ldr	d31, [sp, 8]
	b	.L146
.L148:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L154
	b	.L155
.L154:
	ldr	d31, [sp]
	b	.L146
.L155:
	ldr	d31, [sp, 8]
.L146:
	fmov	d0, d31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	str	s1, [sp, 8]
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 12]
	fcmp	s30, s31
	bvc	.L157
	ldr	s31, [sp, 8]
	b	.L158
.L157:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L159
	ldr	s31, [sp, 12]
	b	.L158
.L159:
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L160
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	cmp	w0, 0
	beq	.L161
	ldr	s31, [sp, 8]
	b	.L158
.L161:
	ldr	s31, [sp, 12]
	b	.L158
.L160:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L166
	b	.L167
.L166:
	ldr	s31, [sp, 8]
	b	.L158
.L167:
	ldr	s31, [sp, 12]
.L158:
	fmov	s0, s31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	str	q0, [sp, 32]
	str	q1, [sp, 16]
	ldr	q1, [sp, 32]
	ldr	q0, [sp, 32]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L183
	ldr	q30, [sp, 16]
	b	.L171
.L183:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L184
	ldr	q30, [sp, 32]
	b	.L171
.L184:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L174
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L175
	ldr	q30, [sp, 16]
	b	.L171
.L175:
	ldr	q30, [sp, 32]
	b	.L171
.L174:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L185
	ldr	q30, [sp, 16]
	b	.L171
.L185:
	ldr	q30, [sp, 32]
.L171:
	mov	v0.16b, v30.16b
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	str	d1, [sp]
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 8]
	fcmp	d30, d31
	bvc	.L187
	ldr	d31, [sp]
	b	.L188
.L187:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L189
	ldr	d31, [sp, 8]
	b	.L188
.L189:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L190
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L191
	ldr	d31, [sp, 8]
	b	.L188
.L191:
	ldr	d31, [sp]
	b	.L188
.L190:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L196
	b	.L197
.L196:
	ldr	d31, [sp, 8]
	b	.L188
.L197:
	ldr	d31, [sp]
.L188:
	fmov	d0, d31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	str	s1, [sp, 8]
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 12]
	fcmp	s30, s31
	bvc	.L199
	ldr	s31, [sp, 8]
	b	.L200
.L199:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L201
	ldr	s31, [sp, 12]
	b	.L200
.L201:
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L202
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	cmp	w0, 0
	beq	.L203
	ldr	s31, [sp, 12]
	b	.L200
.L203:
	ldr	s31, [sp, 8]
	b	.L200
.L202:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L208
	b	.L209
.L208:
	ldr	s31, [sp, 12]
	b	.L200
.L209:
	ldr	s31, [sp, 8]
.L200:
	fmov	s0, s31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	str	q0, [sp, 32]
	str	q1, [sp, 16]
	ldr	q1, [sp, 32]
	ldr	q0, [sp, 32]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L225
	ldr	q30, [sp, 16]
	b	.L213
.L225:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L226
	ldr	q30, [sp, 32]
	b	.L213
.L226:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L216
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L217
	ldr	q30, [sp, 32]
	b	.L213
.L217:
	ldr	q30, [sp, 16]
	b	.L213
.L216:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L227
	ldr	q30, [sp, 32]
	b	.L213
.L227:
	ldr	q30, [sp, 16]
.L213:
	mov	v0.16b, v30.16b
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	w0, [sp, 20]
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	str	x0, [sp, 24]
	b	.L229
.L230:
	ldr	w0, [sp, 20]
	and	w2, w0, 63
	adrp	x0, digits
	add	x1, x0, :lo12:digits
	uxtw	x0, w2
	ldrb	w1, [x1, x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	w0, [sp, 20]
	lsr	w0, w0, 6
	str	w0, [sp, 20]
.L229:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L230
	ldr	x0, [sp, 24]
	strb	wzr, [x0]
	adrp	x0, s.0
	add	x0, x0, :lo12:s.0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	uxtw	x1, w0
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x1, [x0]
	mov	x0, 32557
	movk	x0, 0x4c95, lsl 16
	movk	x0, 0xf42d, lsl 32
	movk	x0, 0x5851, lsl 48
	mul	x0, x1, x0
	add	x1, x0, 1
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	str	x1, [x0]
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x0, [x0]
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L236
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	b	.L235
.L236:
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L235
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
.L235:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L239
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	ldr	x1, [x1, 8]
	str	x1, [x0, 8]
.L239:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L241
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [sp, 24]
	ldr	x1, [x1]
	str	x1, [x0]
.L241:
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x19, [sp, 48]
	mov	x0, x19
	sub	x0, x0, #1
	str	x0, [sp, 96]
	mov	x8, x19
	mov	x9, 0
	lsr	x0, x8, 61
	lsl	x7, x9, 3
	orr	x7, x0, x7
	lsl	x6, x8, 3
	ldr	x0, [sp, 64]
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 80]
	str	xzr, [sp, 104]
	b	.L243
.L246:
	ldr	x0, [sp, 104]
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 72]
	blr	x2
	cmp	w0, 0
	bne	.L244
	ldr	x0, [sp, 104]
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	b	.L245
.L244:
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	str	x0, [sp, 104]
.L243:
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bcc	.L246
	ldr	x0, [sp, 80]
	add	x1, x0, 1
	ldr	x0, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 80]
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 72]
	bl	memcpy
.L245:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x19, [sp, 48]
	mov	x0, x19
	sub	x0, x0, #1
	str	x0, [sp, 96]
	mov	x8, x19
	mov	x9, 0
	lsr	x0, x8, 61
	lsl	x7, x9, 3
	orr	x7, x0, x7
	lsl	x6, x8, 3
	ldr	x0, [sp, 64]
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 80]
	str	xzr, [sp, 104]
	b	.L248
.L251:
	ldr	x0, [sp, 104]
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 72]
	blr	x2
	cmp	w0, 0
	bne	.L249
	ldr	x0, [sp, 104]
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	b	.L250
.L249:
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	str	x0, [sp, 104]
.L248:
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bcc	.L251
	mov	x0, 0
.L250:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L255
.L256:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L255:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L256
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L257
	cmp	w0, 45
	bne	.L259
	mov	w0, 1
	str	w0, [sp, 40]
.L257:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L259
.L260:
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sub	w0, w2, w0
	str	w0, [sp, 44]
.L259:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L260
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L261
	ldr	w0, [sp, 44]
	neg	w0, w0
	b	.L263
.L261:
	ldr	w0, [sp, 44]
.L263:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L265
.L266:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L265:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L266
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L267
	cmp	w0, 45
	bne	.L269
	mov	w0, 1
	str	w0, [sp, 36]
.L267:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L269
.L270:
	ldr	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	mov	x2, x0
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	sub	x0, x2, x0
	str	x0, [sp, 40]
.L269:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L270
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L271
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L273
.L271:
	ldr	x0, [sp, 40]
.L273:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L275
.L276:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L275:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L276
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L277
	cmp	w0, 45
	bne	.L279
	mov	w0, 1
	str	w0, [sp, 36]
.L277:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L279
.L280:
	ldr	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	mov	x2, x0
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	sub	x0, x2, x0
	str	x0, [sp, 40]
.L279:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L280
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L281
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L283
.L281:
	ldr	x0, [sp, 40]
.L283:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
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
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	b	.L285
.L289:
	ldr	x0, [sp, 40]
	lsr	x1, x0, 1
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	blr	x2
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bge	.L286
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	str	x0, [sp, 40]
	b	.L285
.L286:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L287
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	ldr	x1, [sp, 40]
	sub	x0, x1, x0
	sub	x0, x0, #1
	str	x0, [sp, 40]
	b	.L285
.L287:
	ldr	x0, [sp, 72]
	b	.L288
.L285:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L289
	mov	x0, 0
.L288:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	str	x5, [sp, 16]
	ldr	x0, [sp, 48]
	str	x0, [sp, 88]
	ldr	x0, [sp, 40]
	str	w0, [sp, 84]
	b	.L291
.L295:
	ldr	w0, [sp, 84]
	asr	w0, w0, 1
	sxtw	x1, w0
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	blr	x3
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L292
	ldr	x0, [sp, 72]
	b	.L293
.L292:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L294
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
.L294:
	ldr	w0, [sp, 84]
	asr	w0, w0, 1
	str	w0, [sp, 84]
.L291:
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bne	.L295
	mov	x0, 0
.L293:
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sdiv	w4, w1, w0
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w3, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w3, w1
	sub	w0, w0, w1
	mov	x1, x4
	bfi	x2, x1, 0, 32
	bfi	x2, x0, 32, 32
	mov	x0, x2
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	sdiv	x3, x1, x0
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	sdiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	mov	x4, x3
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	sdiv	x3, x1, x0
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	sdiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	mov	x4, x3
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	sdiv	x3, x1, x0
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	sdiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	mov	x4, x3
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	b	.L311
.L313:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
.L311:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L312
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L313
.L312:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L314
	ldr	x0, [sp, 8]
	b	.L316
.L314:
	mov	x0, 0
.L316:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	b	.L318
.L320:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 4
	str	x0, [sp]
.L318:
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L319
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L319
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L320
.L319:
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L321
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L323
.L321:
	mov	w0, -1
.L323:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	nop
.L325:
	ldr	x1, [sp]
	add	x0, x1, 4
	str	x0, [sp]
	ldr	x0, [sp, 8]
	add	x2, x0, 4
	str	x2, [sp, 8]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L325
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	b	.L328
.L329:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
.L328:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L329
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	b	.L332
.L334:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	str	x0, [sp, 16]
.L332:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L333
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L333
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L333
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L334
.L333:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L335
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L336
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L339
.L336:
	mov	w0, -1
	b	.L339
.L335:
	mov	w0, 0
.L339:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	b	.L341
.L343:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
.L341:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L342
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L343
.L342:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L344
	ldr	x0, [sp, 24]
	b	.L346
.L344:
	mov	x0, 0
.L346:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	b	.L348
.L350:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	str	x0, [sp, 16]
.L348:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L349
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L350
.L349:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L351
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L352
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L355
.L352:
	mov	w0, -1
	b	.L355
.L351:
	mov	w0, 0
.L355:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L357
.L358:
	ldr	x1, [sp, 16]
	add	x0, x1, 4
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x2, x0, 4
	str	x2, [sp, 24]
	ldr	w1, [x1]
	str	w1, [x0]
.L357:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L358
	ldr	x0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L361
	ldr	x0, [sp, 24]
	b	.L362
.L361:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 2
	cmp	x1, x0
	bcs	.L367
	b	.L364
.L365:
	ldr	x0, [sp, 8]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L364:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L365
	b	.L366
.L368:
	ldr	x1, [sp, 16]
	add	x0, x1, 4
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x2, x0, 4
	str	x2, [sp, 24]
	ldr	w1, [x1]
	str	w1, [x0]
.L367:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L368
.L366:
	ldr	x0, [sp, 40]
.L362:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L370
.L371:
	ldr	x0, [sp, 24]
	add	x1, x0, 4
	str	x1, [sp, 24]
	ldr	w1, [sp, 20]
	str	w1, [x0]
.L370:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L371
	ldr	x0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L374
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 32]
	b	.L375
.L376:
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L375:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L376
	b	.L380
.L374:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	beq	.L380
	b	.L378
.L379:
	ldr	x1, [sp, 40]
	add	x0, x1, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x2, x0, 1
	str	x2, [sp, 32]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L378:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L379
.L380:
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	ldr	x1, [sp, 8]
	neg	w0, w0
	ror	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	ldr	x1, [sp, 8]
	ror	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 12]
	neg	w0, w0
	ror	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 12]
	ror	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	ldr	x1, [sp, 8]
	lsl	x1, x1, x0
	ldr	w0, [sp, 4]
	mov	w2, 64
	sub	w0, w2, w0
	ldr	x2, [sp, 8]
	lsr	x0, x2, x0
	orr	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	ldr	x1, [sp, 8]
	lsr	x1, x1, x0
	ldr	w0, [sp, 4]
	mov	w2, 64
	sub	w0, w2, w0
	ldr	x2, [sp, 8]
	lsl	x0, x2, x0
	orr	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w0, [sp, 14]
	str	w1, [sp, 8]
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 8]
	lsl	w0, w1, w0
	and	w1, w0, 65535
	ldrh	w2, [sp, 14]
	mov	w3, 16
	ldr	w0, [sp, 8]
	sub	w0, w3, w0
	lsr	w0, w2, w0
	and	w0, w0, 65535
	orr	w0, w1, w0
	and	w0, w0, 65535
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w0, [sp, 14]
	str	w1, [sp, 8]
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 8]
	lsr	w0, w1, w0
	and	w1, w0, 65535
	ldrh	w2, [sp, 14]
	mov	w3, 16
	ldr	w0, [sp, 8]
	sub	w0, w3, w0
	lsl	w0, w2, w0
	and	w0, w0, 65535
	orr	w0, w1, w0
	and	w0, w0, 65535
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	str	w1, [sp, 8]
	ldrb	w1, [sp, 15]
	ldr	w0, [sp, 8]
	lsl	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [sp, 15]
	mov	w3, 8
	ldr	w0, [sp, 8]
	sub	w0, w3, w0
	lsr	w0, w2, w0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	str	w1, [sp, 8]
	ldrb	w1, [sp, 15]
	ldr	w0, [sp, 8]
	lsr	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [sp, 15]
	mov	w3, 8
	ldr	w0, [sp, 8]
	sub	w0, w3, w0
	lsl	w0, w2, w0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strh	w0, [sp, 14]
	mov	x0, 255
	str	x0, [sp, 24]
	ldrh	w1, [sp, 14]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 8
	and	x0, x1, x0
	lsr	x0, x0, 8
	and	w1, w0, 65535
	ldr	x0, [sp, 24]
	and	w2, w0, 65535
	ldrh	w0, [sp, 14]
	and	w0, w2, w0
	and	w0, w0, 65535
	ubfiz	w0, w0, 8, 8
	and	w0, w0, 65535
	orr	w0, w1, w0
	and	w0, w0, 65535
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	mov	x0, 255
	str	x0, [sp, 24]
	ldr	w1, [sp, 12]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 24
	and	x0, x1, x0
	lsr	x0, x0, 24
	mov	w2, w0
	ldr	w1, [sp, 12]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 16
	and	x0, x1, x0
	lsr	x0, x0, 8
	orr	w1, w2, w0
	ldr	x0, [sp, 24]
	lsl	w2, w0, 8
	ldr	w0, [sp, 12]
	and	w0, w2, w0
	lsl	w0, w0, 8
	orr	w1, w1, w0
	ldr	x0, [sp, 24]
	mov	w2, w0
	ldr	w0, [sp, 12]
	and	w0, w2, w0
	lsl	w0, w0, 24
	orr	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	mov	x0, 255
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x1, x0, 56
	ldr	x0, [sp, 8]
	and	x0, x1, x0
	lsr	x1, x0, 56
	ldr	x0, [sp, 24]
	lsl	x2, x0, 48
	ldr	x0, [sp, 8]
	and	x0, x2, x0
	lsr	x0, x0, 40
	orr	x1, x1, x0
	ldr	x0, [sp, 24]
	lsl	x2, x0, 40
	ldr	x0, [sp, 8]
	and	x0, x2, x0
	lsr	x0, x0, 24
	orr	x1, x1, x0
	ldr	x0, [sp, 24]
	lsl	x2, x0, 32
	ldr	x0, [sp, 8]
	and	x0, x2, x0
	lsr	x0, x0, 8
	orr	x1, x1, x0
	ldr	x0, [sp, 24]
	lsl	x2, x0, 24
	ldr	x0, [sp, 8]
	and	x0, x2, x0
	lsl	x0, x0, 8
	orr	x1, x1, x0
	ldr	x0, [sp, 24]
	lsl	x2, x0, 16
	ldr	x0, [sp, 8]
	and	x0, x2, x0
	lsl	x0, x0, 24
	orr	x1, x1, x0
	ldr	x0, [sp, 24]
	lsl	x2, x0, 8
	ldr	x0, [sp, 8]
	and	x0, x2, x0
	lsl	x0, x0, 40
	orr	x1, x1, x0
	ldr	x2, [sp, 8]
	ldr	x0, [sp, 24]
	and	x0, x2, x0
	lsl	x0, x0, 56
	orr	x0, x1, x0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L408
.L411:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	lsr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L409
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	b	.L410
.L409:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L408:
	ldr	w0, [sp, 28]
	cmp	w0, 31
	bls	.L411
	mov	w0, 0
.L410:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	str	x19, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 19, -16
	cmp	w0, 0
	bne	.L413
	mov	w0, 0
	b	.L414
.L413:
	mov	w19, 1
	b	.L415
.L416:
	asr	w0, w0, 1
	add	w19, w19, 1
.L415:
	and	w1, w0, 1
	cmp	w1, 0
	beq	.L416
	mov	w0, w19
.L414:
	ldr	x19, [sp], 16
	.cfi_restore 19
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	ldr	s30, [sp, 12]
	mvni	v31.2s, 0x80, lsl 16
	fcmpe	s30, s31
	bmi	.L418
	ldr	s31, [sp, 12]
	mov	w0, 2139095039
	fmov	s30, w0
	fcmpe	s31, s30
	bgt	.L418
	b	.L423
.L418:
	mov	w0, 1
	b	.L422
.L423:
	mov	w0, 0
.L422:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	ldr	d31, [sp, 8]
	mov	x0, -4503599627370497
	fmov	d30, x0
	fcmpe	d31, d30
	bmi	.L425
	ldr	d31, [sp, 8]
	mov	x0, 9218868437227405311
	fmov	d30, x0
	fcmpe	d31, d30
	bgt	.L425
	b	.L430
.L425:
	mov	w0, 1
	b	.L429
.L430:
	mov	w0, 0
.L429:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	ldr	q0, [sp, 16]
	bl	__lttf2
	cmp	w0, 0
	blt	.L432
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	ble	.L437
.L432:
	mov	w0, 1
	b	.L436
.L437:
	mov	w0, 0
.L436:
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
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	scvtf	d31, w0
	fmov	d0, d31
	bl	__extenddftf2
	mov	v30.16b, v0.16b
	ldr	x0, [sp, 24]
	str	q30, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	s0, [sp, 12]
	str	w0, [sp, 8]
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 12]
	fcmp	s30, s31
	bvs	.L440
	ldr	s31, [sp, 12]
	fadd	s31, s31, s31
	ldr	s30, [sp, 12]
	fcmp	s30, s31
	beq	.L440
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L441
	fmov	s31, 5.0e-1
	b	.L442
.L441:
	fmov	s31, 2.0e+0
.L442:
	str	s31, [sp, 28]
.L445:
	ldr	w0, [sp, 8]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L443
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 28]
	fmul	s31, s30, s31
	str	s31, [sp, 12]
.L443:
	ldr	w0, [sp, 8]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L447
	ldr	s31, [sp, 28]
	fmul	s31, s31, s31
	str	s31, [sp, 28]
	b	.L445
.L447:
	nop
.L440:
	ldr	s31, [sp, 12]
	fmov	s0, s31
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	w0, [sp, 4]
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 8]
	fcmp	d30, d31
	bvs	.L449
	ldr	d31, [sp, 8]
	fadd	d31, d31, d31
	ldr	d30, [sp, 8]
	fcmp	d30, d31
	beq	.L449
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bge	.L450
	fmov	d31, 5.0e-1
	b	.L451
.L450:
	fmov	d31, 2.0e+0
.L451:
	str	d31, [sp, 24]
.L454:
	ldr	w0, [sp, 4]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L452
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 24]
	fmul	d31, d30, d31
	str	d31, [sp, 8]
.L452:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L456
	ldr	d31, [sp, 24]
	fmul	d31, d31, d31
	str	d31, [sp, 24]
	b	.L454
.L456:
	nop
.L449:
	ldr	d31, [sp, 8]
	fmov	d0, d31
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	str	q0, [sp, 32]
	str	w0, [sp, 28]
	ldr	q1, [sp, 32]
	ldr	q0, [sp, 32]
	bl	__unordtf2
	cmp	w0, 0
	bne	.L458
	ldr	q30, [sp, 32]
	mov	v1.16b, v30.16b
	mov	v0.16b, v30.16b
	bl	__addtf3
	mov	v30.16b, v0.16b
	mov	v1.16b, v30.16b
	ldr	q0, [sp, 32]
	bl	__netf2
	cmp	w0, 0
	beq	.L458
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L460
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q30, [x0]
	b	.L461
.L460:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q30, [x0]
.L461:
	str	q30, [sp, 48]
.L464:
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L462
	ldr	q1, [sp, 48]
	ldr	q0, [sp, 32]
	bl	__multf3
	mov	v30.16b, v0.16b
	str	q30, [sp, 32]
.L462:
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L467
	ldr	q1, [sp, 48]
	ldr	q0, [sp, 48]
	bl	__multf3
	mov	v30.16b, v0.16b
	str	q30, [sp, 48]
	b	.L464
.L467:
	nop
.L458:
	ldr	q30, [sp, 32]
	mov	v0.16b, v30.16b
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	b	.L469
.L470:
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	str	x1, [sp, 40]
	ldrb	w2, [x0]
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldrb	w1, [x0]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L469:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L470
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	strlen
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	str	x0, [sp, 56]
	b	.L473
.L475:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
.L473:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L474
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 56]
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L475
.L474:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L476
	ldr	x0, [sp, 56]
	strb	wzr, [x0]
.L476:
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	xzr, [sp, 24]
	b	.L479
.L484:
	nop
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L479:
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	cmp	x1, x0
	bcs	.L480
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L484
.L480:
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	b	.L486
.L490:
	ldr	x0, [sp]
	str	x0, [sp, 24]
	b	.L487
.L489:
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L487
	ldr	x0, [sp, 8]
	b	.L488
.L487:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L489
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L486:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L490
	mov	x0, 0
.L488:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w1, [sp, 12]
	str	xzr, [sp, 24]
.L493:
	ldrb	w1, [x0]
	mov	w2, w1
	ldr	w1, [sp, 12]
	cmp	w1, w2
	bne	.L492
	str	x0, [sp, 24]
.L492:
	mov	x1, x0
	add	x0, x1, 1
	ldrb	w1, [x1]
	cmp	w1, 0
	bne	.L493
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	bl	strlen
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L498
	ldr	x0, [sp, 24]
	b	.L497
.L500:
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	bl	strncmp
	cmp	w0, 0
	bne	.L499
	ldr	x0, [sp, 40]
	b	.L497
.L499:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L498:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	strchr
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L500
	mov	x0, 0
.L497:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	str	d1, [sp]
	ldr	d31, [sp, 8]
	fcmpe	d31, #0.0
	bmi	.L509
	b	.L502
.L509:
	ldr	d31, [sp]
	fcmpe	d31, #0.0
	bgt	.L504
.L502:
	ldr	d31, [sp, 8]
	fcmpe	d31, #0.0
	bgt	.L510
	b	.L505
.L510:
	ldr	d31, [sp]
	fcmpe	d31, #0.0
	bmi	.L504
	b	.L505
.L504:
	ldr	d31, [sp, 8]
	fneg	d31, d31
	b	.L508
.L505:
	ldr	d31, [sp, 8]
.L508:
	fmov	d0, d31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L512
	ldr	x0, [sp, 40]
	b	.L513
.L512:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	.L514
	mov	x0, 0
	b	.L513
.L514:
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L515
.L517:
	ldr	x0, [sp, 56]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L516
	ldr	x0, [sp, 56]
	add	x3, x0, 1
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	mov	x2, x0
	mov	x0, x3
	bl	memcmp
	cmp	w0, 0
	bne	.L516
	ldr	x0, [sp, 56]
	b	.L513
.L516:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L515:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bls	.L517
	mov	x0, 0
.L513:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	memcpy
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	x0, [sp]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	ldr	d31, [sp, 8]
	fcmpe	d31, #0.0
	bmi	.L533
	b	.L521
.L533:
	ldr	d31, [sp, 8]
	fneg	d31, d31
	str	d31, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 28]
.L521:
	ldr	d30, [sp, 8]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	bge	.L525
	b	.L536
.L526:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	fmov	d31, 2.0e+0
	ldr	d30, [sp, 8]
	fdiv	d31, d30, d31
	str	d31, [sp, 8]
.L525:
	ldr	d30, [sp, 8]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	bge	.L526
	b	.L527
.L536:
	ldr	d30, [sp, 8]
	fmov	d31, 5.0e-1
	fcmpe	d30, d31
	bmi	.L535
	b	.L527
.L535:
	ldr	d31, [sp, 8]
	fcmp	d31, #0.0
	beq	.L527
	b	.L529
.L530:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	d31, [sp, 8]
	fadd	d31, d31, d31
	str	d31, [sp, 8]
.L529:
	ldr	d30, [sp, 8]
	fmov	d31, 5.0e-1
	fcmpe	d30, d31
	bmi	.L530
.L527:
	ldr	x0, [sp]
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L531
	ldr	d31, [sp, 8]
	fneg	d31, d31
	str	d31, [sp, 8]
.L531:
	ldr	d31, [sp, 8]
	fmov	d0, d31
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	xzr, [sp, 24]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	b	.L538
.L540:
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L539
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	add	x0, x1, x0
	str	x0, [sp, 24]
.L539:
	ldr	x0, [sp]
	lsl	x0, x0, 1
	str	x0, [sp]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L538:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L540
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	x2, [sp]
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L543
.L545:
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L543:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcs	.L546
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L546
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L545
	b	.L546
.L548:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L547
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L547:
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L546:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L548
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L549
	ldr	w0, [sp, 12]
	b	.L550
.L549:
	ldr	w0, [sp, 24]
.L550:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 0
	bne	.L552
	mov	w0, 7
	b	.L553
.L552:
	ldrb	w0, [sp, 15]
	lsl	w0, w0, 8
	clz	w0, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
.L553:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bge	.L555
	ldr	x0, [sp, 8]
	mvn	x0, x0
	str	x0, [sp, 8]
.L555:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L556
	mov	w0, 63
	b	.L557
.L556:
	ldr	x0, [sp, 8]
	clz	x0, x0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
.L557:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 28]
	b	.L559
.L561:
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L560
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L560:
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
.L559:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L561
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 3
	str	w0, [sp, 52]
	ldr	w0, [sp, 12]
	and	w0, w0, -8
	str	w0, [sp, 56]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L564
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bls	.L571
.L564:
	str	wzr, [sp, 60]
	b	.L566
.L567:
	ldr	w0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L566:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bcc	.L567
	b	.L568
.L569:
	ldr	w0, [sp, 56]
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L568:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bhi	.L569
	b	.L570
.L572:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L571:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L572
	nop
.L570:
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 56]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L574
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bls	.L580
.L574:
	str	wzr, [sp, 60]
	b	.L576
.L577:
	ldr	w0, [sp, 60]
	lsl	x0, x0, 1
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	lsl	x0, x0, 1
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrsh	w1, [x1]
	strh	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L576:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bcc	.L577
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L579
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	b	.L579
.L581:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L580:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L581
	nop
.L579:
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 2
	str	w0, [sp, 52]
	ldr	w0, [sp, 12]
	and	w0, w0, -4
	str	w0, [sp, 56]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L583
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bls	.L590
.L583:
	str	wzr, [sp, 60]
	b	.L585
.L586:
	ldr	w0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L585:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bcc	.L586
	b	.L587
.L588:
	ldr	w0, [sp, 56]
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L587:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bhi	.L588
	b	.L589
.L591:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L590:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L591
	nop
.L589:
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	ucvtf	d31, w0
	fmov	d0, d31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	s31, [sp, 12]
	ucvtf	s31, s31
	fmov	s0, s31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	d31, [sp, 8]
	ucvtf	d31, d31
	fmov	d0, d31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ucvtf	s31, x0
	fmov	s0, s31
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	udiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strh	w0, [sp, 14]
	str	wzr, [sp, 28]
	b	.L605
.L608:
	ldrh	w1, [sp, 14]
	mov	w2, 15
	ldr	w0, [sp, 28]
	sub	w0, w2, w0
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L610
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L605:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L608
	b	.L607
.L610:
	nop
.L607:
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strh	w0, [sp, 14]
	str	wzr, [sp, 28]
	b	.L612
.L615:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L617
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L612:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L615
	b	.L614
.L617:
	nop
.L614:
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	ldr	s30, [sp, 12]
	movi	v31.2s, 0x47, lsl 24
	fcmpe	s30, s31
	bge	.L622
	b	.L623
.L622:
	ldr	s30, [sp, 12]
	movi	v31.2s, 0x47, lsl 24
	fsub	s31, s30, s31
	fcvtzs	x0, s31
	add	x0, x0, 32768
	b	.L621
.L623:
	ldr	s31, [sp, 12]
	fcvtzs	x0, s31
.L621:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strh	w0, [sp, 14]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L625
.L627:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L626
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L626:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L625:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L627
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strh	w0, [sp, 14]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L630
.L632:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L631
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L631:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L630:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L632
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 28]
	b	.L635
.L637:
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L636
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L636:
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
.L635:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L637
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L642
	mov	w0, 0
	b	.L641
.L644:
	ldr	w0, [sp, 8]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L643
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L643:
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L642:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L644
	ldr	w0, [sp, 28]
.L641:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L646
.L648:
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L646:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcs	.L649
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L649
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L648
	b	.L649
.L651:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L650
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L650:
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L649:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L651
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L652
	ldr	w0, [sp, 12]
	b	.L653
.L652:
	ldr	w0, [sp, 24]
.L653:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	str	s1, [sp, 8]
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L660
	b	.L662
.L660:
	mov	w0, -1
	b	.L657
.L662:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bgt	.L661
	b	.L663
.L661:
	mov	w0, 1
	b	.L657
.L663:
	mov	w0, 0
.L657:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	str	d1, [sp]
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L670
	b	.L672
.L670:
	mov	w0, -1
	b	.L667
.L672:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bgt	.L671
	b	.L673
.L671:
	mov	w0, 1
	b	.L667
.L673:
	mov	w0, 0
.L667:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	mul	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	mul	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L679
	ldr	w0, [sp, 8]
	neg	w0, w0
	str	w0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 24]
.L679:
	strb	wzr, [sp, 31]
	b	.L680
.L683:
	ldr	w0, [sp, 8]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L681
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L681:
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldrb	w0, [sp, 31]
	add	w0, w0, 1
	strb	w0, [sp, 31]
.L680:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L682
	ldrb	w0, [sp, 31]
	cmp	w0, 31
	bls	.L683
.L682:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L684
	ldr	w0, [sp, 20]
	neg	w0, w0
	b	.L686
.L684:
	ldr	w0, [sp, 20]
.L686:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L688
	ldr	x0, [sp, 24]
	neg	x0, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 44]
.L688:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L689
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 44]
.L689:
	ldr	x0, [sp, 24]
	mov	w3, w0
	ldr	x0, [sp, 16]
	mov	w2, 0
	mov	w1, w0
	mov	w0, w3
	bl	__udivmodsi4
	uxtw	x0, w0
	str	x0, [sp, 32]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L690
	ldr	x0, [sp, 32]
	neg	x0, x0
	str	x0, [sp, 32]
.L690:
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L693
	ldr	x0, [sp, 24]
	neg	x0, x0
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 44]
.L693:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L694
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 16]
.L694:
	ldr	x0, [sp, 24]
	mov	w3, w0
	ldr	x0, [sp, 16]
	mov	w2, 1
	mov	w1, w0
	mov	w0, w3
	bl	__udivmodsi4
	uxtw	x0, w0
	str	x0, [sp, 32]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L695
	ldr	x0, [sp, 32]
	neg	x0, x0
	str	x0, [sp, 32]
.L695:
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strh	w0, [sp, 14]
	strh	w1, [sp, 12]
	str	w2, [sp, 8]
	mov	w0, 1
	strh	w0, [sp, 30]
	strh	wzr, [sp, 28]
	b	.L698
.L700:
	ldrh	w0, [sp, 12]
	ubfiz	w0, w0, 1, 15
	strh	w0, [sp, 12]
	ldrh	w0, [sp, 30]
	ubfiz	w0, w0, 1, 15
	strh	w0, [sp, 30]
.L698:
	ldrh	w1, [sp, 12]
	ldrh	w0, [sp, 14]
	cmp	w1, w0
	bcs	.L701
	ldrh	w0, [sp, 30]
	cmp	w0, 0
	beq	.L701
	ldrsh	w0, [sp, 12]
	cmp	w0, 0
	bge	.L700
	b	.L701
.L703:
	ldrh	w1, [sp, 14]
	ldrh	w0, [sp, 12]
	cmp	w1, w0
	bcc	.L702
	ldrh	w1, [sp, 14]
	ldrh	w0, [sp, 12]
	sub	w0, w1, w0
	strh	w0, [sp, 14]
	ldrh	w1, [sp, 28]
	ldrh	w0, [sp, 30]
	orr	w0, w1, w0
	strh	w0, [sp, 28]
.L702:
	ldrh	w0, [sp, 30]
	lsr	w0, w0, 1
	strh	w0, [sp, 30]
	ldrh	w0, [sp, 12]
	lsr	w0, w0, 1
	strh	w0, [sp, 12]
.L701:
	ldrh	w0, [sp, 30]
	cmp	w0, 0
	bne	.L703
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L704
	ldrh	w0, [sp, 14]
	b	.L705
.L704:
	ldrh	w0, [sp, 28]
.L705:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	mov	x0, 1
	str	x0, [sp, 40]
	str	xzr, [sp, 32]
	b	.L707
.L709:
	ldr	x0, [sp, 16]
	lsl	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 1
	str	x0, [sp, 40]
.L707:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcs	.L710
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L710
	ldr	x0, [sp, 16]
	and	x0, x0, 2147483648
	cmp	x0, 0
	beq	.L709
	b	.L710
.L712:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L711
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	orr	x0, x1, x0
	str	x0, [sp, 32]
.L711:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L710:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L712
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L713
	ldr	x0, [sp, 24]
	b	.L714
.L713:
	ldr	x0, [sp, 32]
.L714:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, 32
	str	w0, [sp, 44]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L716
	str	wzr, [sp, 24]
	ldr	w1, [sp, 32]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsl	w0, w1, w0
	str	w0, [sp, 28]
	b	.L717
.L716:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L718
	ldr	x0, [sp, 8]
	b	.L720
.L718:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	lsl	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 36]
	mov	w1, w0
	ldr	w0, [sp, 4]
	lsl	w1, w1, w0
	ldr	w2, [sp, 32]
	ldr	w3, [sp, 44]
	ldr	w0, [sp, 4]
	sub	w0, w3, w0
	lsr	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 28]
.L717:
	ldr	x0, [sp, 24]
.L720:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	mov	w0, 64
	str	w0, [sp, 76]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 48]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 76]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L722
	str	xzr, [sp, 32]
	ldr	x1, [sp, 48]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	lsl	x0, x1, x0
	str	x0, [sp, 40]
	b	.L723
.L722:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L724
	ldp	x0, x1, [sp, 16]
	b	.L726
.L724:
	ldr	x1, [sp, 48]
	ldr	w0, [sp, 12]
	lsl	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	w0, [sp, 12]
	lsl	x1, x1, x0
	ldr	x2, [sp, 48]
	ldr	w3, [sp, 76]
	ldr	w0, [sp, 12]
	sub	w0, w3, w0
	lsr	x0, x2, x0
	orr	x0, x1, x0
	str	x0, [sp, 40]
.L723:
	ldp	x0, x1, [sp, 32]
.L726:
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, 32
	str	w0, [sp, 44]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L728
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	asr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	asr	w0, w1, w0
	str	w0, [sp, 24]
	b	.L729
.L728:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L730
	ldr	x0, [sp, 8]
	b	.L732
.L730:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 4]
	asr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 36]
	mov	w2, w0
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 4]
	sub	w0, w1, w0
	lsl	w1, w2, w0
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 4]
	lsr	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L729:
	ldr	x0, [sp, 24]
.L732:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	mov	w0, 64
	str	w0, [sp, 76]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 48]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 76]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L734
	ldr	x1, [sp, 56]
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	asr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	asr	x0, x1, x0
	str	x0, [sp, 32]
	b	.L735
.L734:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L736
	ldp	x0, x1, [sp, 16]
	b	.L738
.L736:
	ldr	x1, [sp, 56]
	ldr	w0, [sp, 12]
	asr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x2, x0
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	lsl	x1, x2, x0
	ldr	x2, [sp, 48]
	ldr	w0, [sp, 12]
	lsr	x0, x2, x0
	orr	x0, x1, x0
	str	x0, [sp, 32]
.L735:
	ldp	x0, x1, [sp, 32]
.L738:
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	lsr	x1, x0, 56
	ldr	x0, [sp, 8]
	lsr	x0, x0, 40
	and	x0, x0, 65280
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	lsr	x0, x0, 24
	and	x0, x0, 16711680
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	lsr	x0, x0, 8
	and	x0, x0, 4278190080
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 8
	and	x0, x0, 1095216660480
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 24
	and	x0, x0, 280375465082880
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 40
	and	x0, x0, 71776119061217280
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 56
	orr	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w1, w0, 24
	ldr	w0, [sp, 12]
	lsr	w0, w0, 8
	and	w0, w0, 65280
	orr	w1, w1, w0
	ldr	w0, [sp, 12]
	lsl	w0, w0, 8
	and	w0, w0, 16711680
	orr	w1, w1, w0
	ldr	w0, [sp, 12]
	lsl	w0, w0, 24
	orr	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, 65535
	cmp	w1, w0
	bhi	.L744
	mov	w0, 16
	b	.L745
.L744:
	mov	w0, 0
.L745:
	str	w0, [sp, 24]
	mov	w1, 16
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 65280
	cmp	w0, 0
	bne	.L746
	mov	w0, 8
	b	.L747
.L746:
	mov	w0, 0
.L747:
	str	w0, [sp, 24]
	mov	w1, 8
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 240
	cmp	w0, 0
	bne	.L748
	mov	w0, 4
	b	.L749
.L748:
	mov	w0, 0
.L749:
	str	w0, [sp, 24]
	mov	w1, 4
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 12
	cmp	w0, 0
	bne	.L750
	mov	w0, 2
	b	.L751
.L750:
	mov	w0, 0
.L751:
	str	w0, [sp, 24]
	mov	w1, 2
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w2, w0
	mov	w1, 2
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	mul	w1, w2, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	neg	w0, w0
	sxtw	x0, w0
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	mvn	x0, x0
	and	x0, x1, x0
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	and	x0, x1, x0
	orr	x0, x2, x0
	clz	x0, x0
	mov	w1, w0
	ldr	x0, [sp, 40]
	and	w0, w0, 64
	add	w0, w1, w0
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L756
	mov	w0, 0
	b	.L761
.L756:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L758
	mov	w0, 2
	b	.L761
.L758:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bcs	.L759
	mov	w0, 0
	b	.L761
.L759:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bls	.L760
	mov	w0, 2
	b	.L761
.L760:
	mov	w0, 1
.L761:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	__cmpdi2
	sub	w0, w0, #1
	ldp	x29, x30, [sp], 32
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x0, x1, [sp, 16]
	stp	x2, x3, [sp]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 48]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bge	.L765
	mov	w0, 0
	b	.L770
.L765:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L767
	mov	w0, 2
	b	.L770
.L767:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L768
	mov	w0, 0
	b	.L770
.L768:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L769
	mov	w0, 2
	b	.L770
.L769:
	mov	w0, 1
.L770:
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 65535
	cmp	w0, 0
	bne	.L772
	mov	w0, 16
	b	.L773
.L772:
	mov	w0, 0
.L773:
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L774
	mov	w0, 8
	b	.L775
.L774:
	mov	w0, 0
.L775:
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 15
	cmp	w0, 0
	bne	.L776
	mov	w0, 4
	b	.L777
.L776:
	mov	w0, 0
.L777:
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L778
	mov	w0, 2
	b	.L779
.L778:
	mov	w0, 0
.L779:
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 3
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	mvn	w0, w0
	and	w1, w0, 1
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	mov	w2, 2
	sub	w0, w2, w0
	neg	w1, w1
	and	w1, w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	neg	w0, w0
	sxtw	x0, w0
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	and	x0, x1, x0
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	mvn	x0, x0
	and	x0, x1, x0
	orr	x0, x2, x0
	rbit	x0, x0
	clz	x0, x0
	mov	w1, w0
	ldr	x0, [sp, 40]
	and	w0, w0, 64
	add	w0, w1, w0
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L784
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L785
	mov	w0, 0
	b	.L787
.L785:
	ldr	x0, [sp, 24]
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 65
	b	.L787
.L784:
	ldr	x0, [sp, 16]
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
.L787:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, 32
	str	w0, [sp, 44]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L789
	str	wzr, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsr	w0, w1, w0
	str	w0, [sp, 24]
	b	.L790
.L789:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L791
	ldr	x0, [sp, 8]
	b	.L793
.L791:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 4]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 4]
	sub	w0, w2, w0
	lsl	w1, w1, w0
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 4]
	lsr	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L790:
	ldr	x0, [sp, 24]
.L793:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	mov	w0, 64
	str	w0, [sp, 76]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 48]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 76]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L795
	str	xzr, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	lsr	x0, x1, x0
	str	x0, [sp, 32]
	b	.L796
.L795:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L797
	ldp	x0, x1, [sp, 16]
	b	.L799
.L797:
	ldr	x1, [sp, 56]
	ldr	w0, [sp, 12]
	lsr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	w2, [sp, 76]
	ldr	w0, [sp, 12]
	sub	w0, w2, w0
	lsl	x1, x1, x0
	ldr	x2, [sp, 48]
	ldr	w0, [sp, 12]
	lsr	x0, x2, x0
	orr	x0, x1, x0
	str	x0, [sp, 32]
.L796:
	ldp	x0, x1, [sp, 32]
.L799:
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	mov	w0, 16
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	mov	w1, -1
	lsr	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 40]
	and	w1, w1, w0
	ldr	w2, [sp, 8]
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 44]
	lsr	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	and	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 12]
	lsr	w1, w1, w0
	ldr	w2, [sp, 8]
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	mul	w0, w1, w0
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 36]
	ldr	w0, [sp, 40]
	and	w2, w2, w0
	ldr	w0, [sp, 44]
	lsl	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 36]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 44]
	lsr	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	and	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 8]
	lsr	w1, w1, w0
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	mul	w0, w1, w0
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 36]
	ldr	w0, [sp, 40]
	and	w2, w2, w0
	ldr	w0, [sp, 44]
	lsl	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	mov	w2, w0
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 36]
	lsr	w0, w1, w0
	add	w0, w2, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mov	w3, w0
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 12]
	lsr	w1, w1, w0
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 8]
	lsr	w0, w2, w0
	mul	w0, w1, w0
	add	w0, w3, w0
	str	w0, [sp, 28]
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	ldr	w0, [sp, 56]
	ldr	w1, [sp, 48]
	bl	__muldsi3
	str	x0, [sp, 40]
	ldr	w0, [sp, 44]
	mov	w2, w0
	ldr	w0, [sp, 60]
	mov	w1, w0
	ldr	w0, [sp, 48]
	mul	w1, w1, w0
	ldr	w0, [sp, 56]
	ldr	w3, [sp, 52]
	mul	w0, w0, w3
	add	w0, w1, w0
	add	w0, w2, w0
	str	w0, [sp, 44]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 32
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	mov	x1, -1
	lsr	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	and	x1, x1, x0
	ldr	x2, [sp]
	ldr	x0, [sp, 48]
	and	x0, x2, x0
	mul	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 60]
	lsr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 48]
	and	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 8]
	lsr	x1, x1, x0
	ldr	x2, [sp]
	ldr	x0, [sp, 48]
	and	x0, x2, x0
	mul	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x2, [sp, 40]
	ldr	x0, [sp, 48]
	and	x2, x2, x0
	ldr	w0, [sp, 60]
	lsl	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 40]
	lsr	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 60]
	lsr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 48]
	and	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 60]
	ldr	x1, [sp]
	lsr	x1, x1, x0
	ldr	x2, [sp, 8]
	ldr	x0, [sp, 48]
	and	x0, x2, x0
	mul	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x2, [sp, 40]
	ldr	x0, [sp, 48]
	and	x2, x2, x0
	ldr	w0, [sp, 60]
	lsl	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 40]
	lsr	x0, x1, x0
	add	x0, x2, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x3, x0
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 8]
	lsr	x1, x1, x0
	ldr	w0, [sp, 60]
	ldr	x2, [sp]
	lsr	x0, x2, x0
	mul	x0, x1, x0
	add	x0, x3, x0
	str	x0, [sp, 24]
	ldp	x0, x1, [sp, 16]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x0, x1, [sp, 32]
	stp	x2, x3, [sp, 16]
	ldp	x0, x1, [sp, 32]
	stp	x0, x1, [sp, 80]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	x1, [sp, 64]
	bl	__mulddi3
	stp	x0, x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	x2, x0
	ldr	x0, [sp, 88]
	mov	x1, x0
	ldr	x0, [sp, 64]
	mul	x1, x1, x0
	ldr	x0, [sp, 80]
	ldr	x3, [sp, 72]
	mul	x0, x0, x3
	add	x0, x1, x0
	add	x0, x2, x0
	str	x0, [sp, 56]
	ldp	x0, x1, [sp, 48]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	neg	x0, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	subs	x4, xzr, x0
	sbc	x0, xzr, x1
	mov	x2, x4
	mov	x3, x0
	mov	x0, x2
	mov	x1, x3
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	ldr	w0, [sp, 20]
	mov	w1, w0
	ldr	w0, [sp, 16]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 16
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 8
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 4
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 28]
	mov	w1, w0
	ldr	w0, [sp, 24]
	eor	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	lsr	w0, w0, 16
	ldr	w1, [sp, 60]
	eor	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	lsr	w0, w0, 8
	ldr	w1, [sp, 60]
	eor	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	lsr	w0, w0, 4
	ldr	w1, [sp, 60]
	eor	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 16
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 8
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 4
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	lsr	x0, x0, 1
	and	x0, x0, 6148914691236517205
	ldr	x1, [sp, 24]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	lsr	x0, x0, 2
	and	x1, x0, 3689348814741910323
	ldr	x0, [sp, 24]
	and	x0, x0, 3689348814741910323
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	lsr	x1, x0, 4
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	and	x0, x0, 1085102592571150095
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 32
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	lsr	w0, w0, 16
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	lsr	w1, w0, 8
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	and	w0, w0, 127
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	and	w0, w0, 1431655765
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 2
	and	w1, w0, 858993459
	ldr	w0, [sp, 28]
	and	w0, w0, 858993459
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 4
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	and	w0, w0, 252645135
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 16
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 8
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	and	w0, w0, 63
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x19, x20, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	str	x21, [sp, 16]
	.cfi_offset 21, -64
	stp	x0, x1, [sp, 32]
	ldp	x0, x1, [sp, 32]
	stp	x0, x1, [sp, 64]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 63
	ldr	x1, [sp, 64]
	lsr	x6, x1, 1
	orr	x6, x0, x6
	ldr	x0, [sp, 72]
	lsr	x7, x0, 1
	and	x10, x6, 6148914691236517205
	and	x11, x7, 6148914691236517205
	ldp	x0, x1, [sp, 64]
	subs	x6, x0, x10
	sbc	x0, x1, x11
	mov	x18, x6
	mov	x19, x0
	stp	x18, x19, [sp, 64]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 62
	ldr	x1, [sp, 64]
	lsr	x4, x1, 2
	orr	x4, x0, x4
	ldr	x0, [sp, 72]
	lsr	x5, x0, 2
	and	x8, x4, 3689348814741910323
	and	x9, x5, 3689348814741910323
	ldr	x0, [sp, 64]
	and	x14, x0, 3689348814741910323
	ldr	x0, [sp, 72]
	and	x15, x0, 3689348814741910323
	mov	x0, x14
	adds	x1, x8, x0
	mov	x0, x15
	adc	x0, x9, x0
	mov	x16, x1
	mov	x17, x0
	stp	x16, x17, [sp, 64]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 60
	ldr	x1, [sp, 64]
	lsr	x2, x1, 4
	orr	x2, x0, x2
	ldr	x0, [sp, 72]
	lsr	x3, x0, 4
	ldp	x0, x1, [sp, 64]
	mov	x4, x0
	adds	x4, x2, x4
	mov	x0, x1
	adc	x0, x3, x0
	mov	x12, x4
	mov	x13, x0
	and	x0, x12, 1085102592571150095
	str	x0, [sp, 64]
	and	x0, x13, 1085102592571150095
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	mov	x20, x1
	mov	x21, 0
	mov	x1, x20
	add	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	mov	w1, w0
	ldr	x0, [sp, 56]
	lsr	x0, x0, 32
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	lsr	w0, w0, 16
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	lsr	w1, w0, 8
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	and	w0, w0, 255
	ldr	x21, [sp, 16]
	ldp	x19, x20, [sp], 80
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 21
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	lsr	w0, w0, 31
	and	w0, w0, 255
	str	w0, [sp, 20]
	fmov	d31, 1.0e+0
	str	d31, [sp, 24]
.L828:
	ldr	w0, [sp, 4]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L825
	ldr	d30, [sp, 24]
	ldr	d31, [sp, 8]
	fmul	d31, d30, d31
	str	d31, [sp, 24]
.L825:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L833
	ldr	d31, [sp, 8]
	fmul	d31, d31, d31
	str	d31, [sp, 8]
	b	.L828
.L833:
	nop
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L829
	ldr	d31, [sp, 24]
	fmov	d30, 1.0e+0
	fdiv	d31, d30, d31
	b	.L831
.L829:
	ldr	d31, [sp, 24]
.L831:
	fmov	d0, d31
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	s0, [sp, 12]
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 31
	and	w0, w0, 255
	str	w0, [sp, 24]
	fmov	s31, 1.0e+0
	str	s31, [sp, 28]
.L838:
	ldr	w0, [sp, 8]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L835
	ldr	s30, [sp, 28]
	ldr	s31, [sp, 12]
	fmul	s31, s30, s31
	str	s31, [sp, 28]
.L835:
	ldr	w0, [sp, 8]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L843
	ldr	s31, [sp, 12]
	fmul	s31, s31, s31
	str	s31, [sp, 12]
	b	.L838
.L843:
	nop
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L839
	ldr	s31, [sp, 28]
	fmov	s30, 1.0e+0
	fdiv	s31, s30, s31
	b	.L841
.L839:
	ldr	s31, [sp, 28]
.L841:
	fmov	s0, s31
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bcs	.L845
	mov	w0, 0
	b	.L850
.L845:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bls	.L847
	mov	w0, 2
	b	.L850
.L847:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bcs	.L848
	mov	w0, 0
	b	.L850
.L848:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bls	.L849
	mov	w0, 2
	b	.L850
.L849:
	mov	w0, 1
.L850:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	__ucmpdi2
	sub	w0, w0, #1
	ldp	x29, x30, [sp], 32
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x0, x1, [sp, 16]
	stp	x2, x3, [sp]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 48]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcs	.L854
	mov	w0, 0
	b	.L859
.L854:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bls	.L856
	mov	w0, 2
	b	.L859
.L856:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L857
	mov	w0, 0
	b	.L859
.L857:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L858
	mov	w0, 2
	b	.L859
.L858:
	mov	w0, 1
.L859:
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
