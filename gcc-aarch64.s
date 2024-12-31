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
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	bcs	.L8
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	b	.L9
.L10:
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
.L9:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L10
	b	.L11
.L8:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	beq	.L11
	b	.L12
.L13:
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
.L12:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L13
.L11:
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
	b	.L17
.L19:
	ldr	x0, [sp]
	sub	x0, x0, #1
	str	x0, [sp]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L17:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L18
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 12]
	cmp	w0, w1
	bne	.L19
.L18:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L20
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	b	.L21
.L20:
	mov	x0, 0
.L21:
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
	b	.L24
.L26:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L24:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L25
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L26
.L25:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L27
	ldr	x0, [sp, 40]
	b	.L29
.L27:
	mov	x0, 0
.L29:
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
	b	.L32
.L34:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L32:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L33
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L34
.L33:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L35
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	b	.L37
.L35:
	mov	w0, 0
.L37:
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
	b	.L40
.L41:
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
.L40:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L41
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
	b	.L45
.L47:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L45
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	b	.L46
.L45:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L47
	mov	x0, 0
.L46:
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
	b	.L50
.L51:
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
.L50:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L51
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
	b	.L55
.L56:
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L55:
	ldr	x0, [sp]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L56
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
	b	.L60
.L62:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L60:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L61
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 4]
	cmp	w0, w1
	bne	.L62
.L61:
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
.L68:
	ldrb	w1, [x0]
	mov	w2, w1
	ldr	w1, [sp, 12]
	cmp	w1, w2
	bne	.L66
	b	.L67
.L66:
	mov	x1, x0
	add	x0, x1, 1
	ldrb	w1, [x1]
	cmp	w1, 0
	bne	.L68
	mov	x0, 0
.L67:
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
	b	.L71
.L73:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
.L71:
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L72
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L73
.L72:
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
	b	.L77
.L78:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L77:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L78
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
	bne	.L84
	mov	w0, 0
	b	.L83
.L86:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L84:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L85
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L85
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L85
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L86
.L85:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	sub	w0, w1, w0
.L83:
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
	b	.L89
.L90:
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
.L89:
	ldr	x0, [sp, 8]
	cmp	x0, 1
	bgt	.L90
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
	beq	.L99
	ldr	w0, [sp, 12]
	cmp	w0, 9
	bne	.L100
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
	bls	.L105
	ldr	w0, [sp, 12]
	cmp	w0, 127
	bne	.L106
.L105:
	mov	w0, 1
	b	.L108
.L106:
	mov	w0, 0
.L108:
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
	beq	.L123
	ldr	w0, [sp, 12]
	sub	w0, w0, #9
	cmp	w0, 4
	bhi	.L124
.L123:
	mov	w0, 1
	b	.L126
.L124:
	mov	w0, 0
.L126:
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
	bls	.L132
	ldr	w0, [sp, 12]
	sub	w0, w0, #127
	cmp	w0, 32
	bls	.L132
	ldr	w1, [sp, 12]
	mov	w0, -8232
	add	w0, w1, w0
	cmp	w0, 1
	bls	.L132
	ldr	w1, [sp, 12]
	mov	w0, -65529
	add	w0, w1, w0
	cmp	w0, 2
	bhi	.L133
.L132:
	mov	w0, 1
	b	.L135
.L133:
	mov	w0, 0
.L135:
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
	bhi	.L141
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	and	w0, w0, 127
	cmp	w0, 32
	cset	w0, hi
	and	w0, w0, 255
	b	.L142
.L141:
	ldr	w1, [sp, 12]
	mov	w0, 8231
	cmp	w1, w0
	bls	.L143
	ldr	w1, [sp, 12]
	mov	w0, -8234
	add	w1, w1, w0
	mov	w0, 47061
	cmp	w1, w0
	bls	.L143
	ldr	w0, [sp, 12]
	sub	w1, w0, #57344
	mov	w0, 8184
	cmp	w1, w0
	bhi	.L144
.L143:
	mov	w0, 1
	b	.L142
.L144:
	ldr	w1, [sp, 12]
	mov	w0, -65532
	add	w1, w1, w0
	mov	w0, 3
	movk	w0, 0x10, lsl 16
	cmp	w1, w0
	bhi	.L145
	ldr	w0, [sp, 12]
	and	w1, w0, 65534
	mov	w0, 65534
	cmp	w1, w0
	bne	.L146
.L145:
	mov	w0, 0
	b	.L142
.L146:
	mov	w0, 1
.L142:
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
	bls	.L149
	ldr	w0, [sp, 12]
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	bhi	.L150
.L149:
	mov	w0, 1
	b	.L152
.L150:
	mov	w0, 0
.L152:
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
	bvc	.L158
	ldr	d31, [sp, 8]
	b	.L159
.L158:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L160
	ldr	d31, [sp]
	b	.L159
.L160:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bgt	.L164
	b	.L165
.L164:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fsub	d31, d30, d31
	b	.L159
.L165:
	movi	d31, #0
.L159:
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
	bvc	.L168
	ldr	s31, [sp, 12]
	b	.L169
.L168:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L170
	ldr	s31, [sp, 8]
	b	.L169
.L170:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bgt	.L174
	b	.L175
.L174:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fsub	s31, s30, s31
	b	.L169
.L175:
	movi	v31.2s, #0
.L169:
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
	bvc	.L178
	ldr	d31, [sp]
	b	.L179
.L178:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L180
	ldr	d31, [sp, 8]
	b	.L179
.L180:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L181
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L182
	ldr	d31, [sp]
	b	.L179
.L182:
	ldr	d31, [sp, 8]
	b	.L179
.L181:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L187
	b	.L188
.L187:
	ldr	d31, [sp]
	b	.L179
.L188:
	ldr	d31, [sp, 8]
.L179:
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
	bvc	.L191
	ldr	s31, [sp, 8]
	b	.L192
.L191:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L193
	ldr	s31, [sp, 12]
	b	.L192
.L193:
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L194
	ldr	w0, [sp, 12]
	ands	w0, w0, -2147483648
	beq	.L195
	ldr	s31, [sp, 8]
	b	.L192
.L195:
	ldr	s31, [sp, 12]
	b	.L192
.L194:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L200
	b	.L201
.L200:
	ldr	s31, [sp, 8]
	b	.L192
.L201:
	ldr	s31, [sp, 12]
.L192:
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	q0, [sp, 32]
	str	q1, [sp, 16]
	ldr	q1, [sp, 32]
	ldr	q0, [sp, 32]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L218
	ldr	q30, [sp, 16]
	b	.L206
.L218:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L219
	ldr	q30, [sp, 32]
	b	.L206
.L219:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L209
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L210
	ldr	q30, [sp, 16]
	b	.L206
.L210:
	ldr	q30, [sp, 32]
	b	.L206
.L209:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L220
	ldr	q30, [sp, 16]
	b	.L206
.L220:
	ldr	q30, [sp, 32]
.L206:
	mov	v0.16b, v30.16b
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	bvc	.L223
	ldr	d31, [sp]
	b	.L224
.L223:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L225
	ldr	d31, [sp, 8]
	b	.L224
.L225:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L226
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L227
	ldr	d31, [sp, 8]
	b	.L224
.L227:
	ldr	d31, [sp]
	b	.L224
.L226:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L232
	b	.L233
.L232:
	ldr	d31, [sp, 8]
	b	.L224
.L233:
	ldr	d31, [sp]
.L224:
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
	bvc	.L236
	ldr	s31, [sp, 8]
	b	.L237
.L236:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L238
	ldr	s31, [sp, 12]
	b	.L237
.L238:
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L239
	ldr	w0, [sp, 12]
	ands	w0, w0, -2147483648
	beq	.L240
	ldr	s31, [sp, 12]
	b	.L237
.L240:
	ldr	s31, [sp, 8]
	b	.L237
.L239:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L245
	b	.L246
.L245:
	ldr	s31, [sp, 12]
	b	.L237
.L246:
	ldr	s31, [sp, 8]
.L237:
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	q0, [sp, 32]
	str	q1, [sp, 16]
	ldr	q1, [sp, 32]
	ldr	q0, [sp, 32]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L263
	ldr	q30, [sp, 16]
	b	.L251
.L263:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L264
	ldr	q30, [sp, 32]
	b	.L251
.L264:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L254
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L255
	ldr	q30, [sp, 32]
	b	.L251
.L255:
	ldr	q30, [sp, 16]
	b	.L251
.L254:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L265
	ldr	q30, [sp, 32]
	b	.L251
.L265:
	ldr	q30, [sp, 16]
.L251:
	mov	v0.16b, v30.16b
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	b	.L268
.L269:
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
.L268:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L269
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
	bne	.L277
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	b	.L276
.L277:
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
	beq	.L276
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
.L276:
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
	beq	.L281
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	ldr	x1, [x1, 8]
	str	x1, [x0, 8]
.L281:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L283
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [sp, 24]
	ldr	x1, [x1]
	str	x1, [x0]
.L283:
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
	stp	x30, x19, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -96
	.cfi_offset 19, -88
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x19, [sp, 32]
	mov	x0, x19
	sub	x0, x19, #1
	str	x0, [sp, 80]
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 64]
	str	xzr, [sp, 88]
	b	.L286
.L289:
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x2
	cmp	w0, 0
	bne	.L287
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	b	.L288
.L287:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L286:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	bcc	.L289
	ldr	x0, [sp, 64]
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 64]
	mul	x0, x19, x0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 56]
	bl	memcpy
.L288:
	ldp	x30, x19, [sp], 96
	.cfi_restore 19
	.cfi_restore 30
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
	stp	x30, x19, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -96
	.cfi_offset 19, -88
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x19, [sp, 32]
	mov	x0, x19
	sub	x0, x19, #1
	str	x0, [sp, 80]
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 64]
	str	xzr, [sp, 88]
	b	.L292
.L295:
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x2
	cmp	w0, 0
	bne	.L293
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	b	.L294
.L293:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L292:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	bcc	.L295
	mov	x0, 0
.L294:
	ldp	x30, x19, [sp], 96
	.cfi_restore 19
	.cfi_restore 30
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L301
.L302:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L301:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L302
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L303
	cmp	w0, 45
	bne	.L305
	mov	w0, 1
	str	w0, [sp, 40]
.L303:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L305
.L306:
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
.L305:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L306
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L307
	ldr	w0, [sp, 44]
	neg	w0, w0
	b	.L309
.L307:
	ldr	w0, [sp, 44]
.L309:
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L312
.L313:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L312:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L313
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L314
	cmp	w0, 45
	bne	.L316
	mov	w0, 1
	str	w0, [sp, 36]
.L314:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L316
.L317:
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
.L316:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L317
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L318
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L320
.L318:
	ldr	x0, [sp, 40]
.L320:
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L323
.L324:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L323:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L324
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L325
	cmp	w0, 45
	bne	.L327
	mov	w0, 1
	str	w0, [sp, 36]
.L325:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L327
.L328:
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
.L327:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L328
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L329
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L331
.L329:
	ldr	x0, [sp, 40]
.L331:
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	str	x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 30, -80
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	b	.L334
.L339:
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
	bge	.L335
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	str	x0, [sp, 40]
	b	.L334
.L335:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L337
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
	b	.L334
.L337:
	ldr	x0, [sp, 72]
	b	.L338
.L334:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L339
	mov	x0, 0
.L338:
	ldr	x30, [sp], 80
	.cfi_restore 30
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
	str	x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -96
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
	b	.L342
.L346:
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
	bne	.L343
	ldr	x0, [sp, 72]
	b	.L344
.L343:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L345
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
.L345:
	ldr	w0, [sp, 84]
	asr	w0, w0, 1
	str	w0, [sp, 84]
.L342:
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bne	.L346
	mov	x0, 0
.L344:
	ldr	x30, [sp], 96
	.cfi_restore 30
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
	mov	x2, x3
	mov	x1, x0
	mov	x0, x2
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
	mov	x2, x3
	mov	x1, x0
	mov	x0, x2
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
	mov	x2, x3
	mov	x1, x0
	mov	x0, x2
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
	b	.L370
.L372:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
.L370:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L371
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L372
.L371:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L373
	ldr	x0, [sp, 8]
	b	.L375
.L373:
	mov	x0, 0
.L375:
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
	b	.L378
.L380:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 4
	str	x0, [sp]
.L378:
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L379
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L379
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L380
.L379:
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L381
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L383
.L381:
	mov	w0, -1
.L383:
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
.L386:
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
	bne	.L386
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
	b	.L390
.L391:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
.L390:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L391
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
	b	.L395
.L397:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	str	x0, [sp, 16]
.L395:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L396
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L396
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L396
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L397
.L396:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L398
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L399
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L402
.L399:
	mov	w0, -1
	b	.L402
.L398:
	mov	w0, 0
.L402:
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
	b	.L405
.L407:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
.L405:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L406
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L407
.L406:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L408
	ldr	x0, [sp, 24]
	b	.L410
.L408:
	mov	x0, 0
.L410:
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
	b	.L413
.L415:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	str	x0, [sp, 16]
.L413:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L414
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L415
.L414:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L416
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L417
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L420
.L417:
	mov	w0, -1
	b	.L420
.L416:
	mov	w0, 0
.L420:
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
	b	.L423
.L424:
	ldr	x1, [sp, 16]
	add	x0, x1, 4
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x2, x0, 4
	str	x2, [sp, 24]
	ldr	w1, [x1]
	str	w1, [x0]
.L423:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L424
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
	bne	.L428
	ldr	x0, [sp, 24]
	b	.L429
.L428:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 2
	cmp	x1, x0
	bcs	.L434
	b	.L431
.L432:
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
.L431:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L432
	b	.L433
.L435:
	ldr	x1, [sp, 16]
	add	x0, x1, 4
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x2, x0, 4
	str	x2, [sp, 24]
	ldr	w1, [x1]
	str	w1, [x0]
.L434:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L435
.L433:
	ldr	x0, [sp, 40]
.L429:
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
	b	.L438
.L439:
	ldr	x0, [sp, 24]
	add	x1, x0, 4
	str	x1, [sp, 24]
	ldr	w1, [sp, 20]
	str	w1, [x0]
.L438:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L439
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
	bcs	.L443
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 32]
	b	.L444
.L445:
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
.L444:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L445
	b	.L449
.L443:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	beq	.L449
	b	.L447
.L448:
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
.L447:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L448
.L449:
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
	b	.L491
.L494:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	lsr	w0, w1, w0
	ands	w0, w0, 1
	beq	.L492
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	b	.L493
.L492:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L491:
	ldr	w0, [sp, 28]
	cmp	w0, 31
	bls	.L494
	mov	w0, 0
.L493:
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
	cmp	w0, 0
	bne	.L497
	mov	w0, 0
	ret
.L497:
	str	x19, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 19, -16
	mov	w19, 1
	b	.L499
.L500:
	asr	w0, w0, 1
	add	w19, w19, 1
.L499:
	ands	w1, w0, 1
	beq	.L500
	mov	w0, w19
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
	bmi	.L505
	ldr	s31, [sp, 12]
	mov	w0, 2139095039
	fmov	s30, w0
	fcmpe	s31, s30
	bgt	.L505
	b	.L510
.L505:
	mov	w0, 1
	b	.L509
.L510:
	mov	w0, 0
.L509:
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
	bmi	.L513
	ldr	d31, [sp, 8]
	mov	x0, 9218868437227405311
	fmov	d30, x0
	fcmpe	d31, d30
	bgt	.L513
	b	.L518
.L513:
	mov	w0, 1
	b	.L517
.L518:
	mov	w0, 0
.L517:
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
	str	x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	q0, [sp, 16]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__lttf2
	cmp	w0, 0
	blt	.L521
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	ble	.L526
.L521:
	mov	w0, 1
	b	.L525
.L526:
	mov	w0, 0
.L525:
	ldr	x30, [sp], 32
	.cfi_restore 30
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
	str	x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
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
	ldr	x30, [sp], 32
	.cfi_restore 30
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
	bvs	.L531
	ldr	s31, [sp, 12]
	fadd	s31, s31, s31
	ldr	s30, [sp, 12]
	fcmp	s30, s31
	beq	.L531
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L532
	fmov	s31, 5.0e-1
	b	.L533
.L532:
	fmov	s31, 2.0e+0
.L533:
	str	s31, [sp, 28]
.L536:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L534
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 28]
	fmul	s31, s30, s31
	str	s31, [sp, 12]
.L534:
	ldr	w0, [sp, 8]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L538
	ldr	s31, [sp, 28]
	fmul	s31, s31, s31
	str	s31, [sp, 28]
	b	.L536
.L538:
	nop
.L531:
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
	bvs	.L541
	ldr	d31, [sp, 8]
	fadd	d31, d31, d31
	ldr	d30, [sp, 8]
	fcmp	d30, d31
	beq	.L541
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bge	.L542
	fmov	d31, 5.0e-1
	b	.L543
.L542:
	fmov	d31, 2.0e+0
.L543:
	str	d31, [sp, 24]
.L546:
	ldr	w0, [sp, 4]
	ands	w0, w0, 1
	beq	.L544
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 24]
	fmul	d31, d30, d31
	str	d31, [sp, 8]
.L544:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L548
	ldr	d31, [sp, 24]
	fmul	d31, d31, d31
	str	d31, [sp, 24]
	b	.L546
.L548:
	nop
.L541:
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
	str	x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
	str	q0, [sp, 32]
	str	w0, [sp, 28]
	ldr	q1, [sp, 32]
	ldr	q0, [sp, 32]
	bl	__unordtf2
	cmp	w0, 0
	bne	.L551
	ldr	q30, [sp, 32]
	mov	v1.16b, v30.16b
	mov	v0.16b, v30.16b
	bl	__addtf3
	mov	v30.16b, v0.16b
	mov	v1.16b, v30.16b
	ldr	q0, [sp, 32]
	bl	__netf2
	cmp	w0, 0
	beq	.L551
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L553
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q30, [x0]
	b	.L554
.L553:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q30, [x0]
.L554:
	str	q30, [sp, 48]
.L557:
	ldr	w0, [sp, 28]
	ands	w0, w0, 1
	beq	.L555
	ldr	q1, [sp, 48]
	ldr	q0, [sp, 32]
	bl	__multf3
	mov	v30.16b, v0.16b
	str	q30, [sp, 32]
.L555:
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L560
	ldr	q1, [sp, 48]
	ldr	q0, [sp, 48]
	bl	__multf3
	mov	v30.16b, v0.16b
	str	q30, [sp, 48]
	b	.L557
.L560:
	nop
.L551:
	ldr	q30, [sp, 32]
	mov	v0.16b, v30.16b
	ldr	x30, [sp], 64
	.cfi_restore 30
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
	b	.L563
.L564:
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
.L563:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L564
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
	str	x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	strlen
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	str	x0, [sp, 56]
	b	.L568
.L570:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
.L568:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L569
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 56]
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L570
.L569:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L571
	ldr	x0, [sp, 56]
	strb	wzr, [x0]
.L571:
	ldr	x0, [sp, 40]
	ldr	x30, [sp], 64
	.cfi_restore 30
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
	b	.L575
.L580:
	nop
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L575:
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	cmp	x1, x0
	bcs	.L576
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L580
.L576:
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
	b	.L583
.L587:
	ldr	x0, [sp]
	str	x0, [sp, 24]
	b	.L584
.L586:
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L584
	ldr	x0, [sp, 8]
	b	.L585
.L584:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L586
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L583:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L587
	mov	x0, 0
.L585:
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
.L591:
	ldrb	w1, [x0]
	mov	w2, w1
	ldr	w1, [sp, 12]
	cmp	w1, w2
	bne	.L590
	str	x0, [sp, 24]
.L590:
	mov	x1, x0
	add	x0, x1, 1
	ldrb	w1, [x1]
	cmp	w1, 0
	bne	.L591
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	bl	strlen
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L597
	ldr	x0, [sp, 24]
	b	.L596
.L599:
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	bl	strncmp
	cmp	w0, 0
	bne	.L598
	ldr	x0, [sp, 40]
	b	.L596
.L598:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L597:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	strchr
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L599
	mov	x0, 0
.L596:
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	bmi	.L609
	b	.L602
.L609:
	ldr	d31, [sp]
	fcmpe	d31, #0.0
	bgt	.L604
.L602:
	ldr	d31, [sp, 8]
	fcmpe	d31, #0.0
	bgt	.L610
	b	.L605
.L610:
	ldr	d31, [sp]
	fcmpe	d31, #0.0
	bmi	.L604
	b	.L605
.L604:
	ldr	d31, [sp, 8]
	fneg	d31, d31
	b	.L608
.L605:
	ldr	d31, [sp, 8]
.L608:
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
	str	x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
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
	bne	.L613
	ldr	x0, [sp, 40]
	b	.L614
.L613:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	ands	x0, x0, 255
	beq	.L615
	mov	x0, 0
	b	.L614
.L615:
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L616
.L618:
	ldr	x0, [sp, 56]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L617
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
	bne	.L617
	ldr	x0, [sp, 56]
	b	.L614
.L617:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L616:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bls	.L618
	mov	x0, 0
.L614:
	ldr	x30, [sp], 64
	.cfi_restore 30
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
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
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	bmi	.L636
	b	.L624
.L636:
	ldr	d31, [sp, 8]
	fneg	d31, d31
	str	d31, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 28]
.L624:
	ldr	d30, [sp, 8]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	bge	.L628
	b	.L639
.L629:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	fmov	d31, 2.0e+0
	ldr	d30, [sp, 8]
	fdiv	d31, d30, d31
	str	d31, [sp, 8]
.L628:
	ldr	d30, [sp, 8]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	bge	.L629
	b	.L630
.L639:
	ldr	d30, [sp, 8]
	fmov	d31, 5.0e-1
	fcmpe	d30, d31
	bmi	.L638
	b	.L630
.L638:
	ldr	d31, [sp, 8]
	fcmp	d31, #0.0
	beq	.L630
	b	.L632
.L633:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	d31, [sp, 8]
	fadd	d31, d31, d31
	str	d31, [sp, 8]
.L632:
	ldr	d30, [sp, 8]
	fmov	d31, 5.0e-1
	fcmpe	d30, d31
	bmi	.L633
.L630:
	ldr	x0, [sp]
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L634
	ldr	d31, [sp, 8]
	fneg	d31, d31
	str	d31, [sp, 8]
.L634:
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
	b	.L642
.L644:
	ldr	x0, [sp, 16]
	ands	x0, x0, 1
	beq	.L643
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	add	x0, x1, x0
	str	x0, [sp, 24]
.L643:
	ldr	x0, [sp]
	lsl	x0, x0, 1
	str	x0, [sp]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L642:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L644
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
	b	.L648
.L650:
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L648:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcs	.L651
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L651
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L650
	b	.L651
.L653:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L652
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L652:
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L651:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L653
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L654
	ldr	w0, [sp, 12]
	b	.L655
.L654:
	ldr	w0, [sp, 24]
.L655:
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
	bne	.L658
	mov	w0, 7
	b	.L659
.L658:
	ldrb	w0, [sp, 15]
	lsl	w0, w0, 8
	clz	w0, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
.L659:
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
	bge	.L662
	ldr	x0, [sp, 8]
	mvn	x0, x0
	str	x0, [sp, 8]
.L662:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L663
	mov	w0, 63
	b	.L664
.L663:
	ldr	x0, [sp, 8]
	clz	x0, x0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
.L664:
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
	b	.L667
.L669:
	ldr	w0, [sp, 12]
	ands	w0, w0, 1
	beq	.L668
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L668:
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
.L667:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L669
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
	bcc	.L673
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bls	.L680
.L673:
	str	wzr, [sp, 60]
	b	.L675
.L676:
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
.L675:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bcc	.L676
	b	.L677
.L678:
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
.L677:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bhi	.L678
	b	.L679
.L681:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L680:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L681
	nop
.L679:
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
	bcc	.L684
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bls	.L690
.L684:
	str	wzr, [sp, 60]
	b	.L686
.L687:
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
.L686:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bcc	.L687
	ldr	w0, [sp, 12]
	ands	w0, w0, 1
	beq	.L689
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
	b	.L689
.L691:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L690:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L691
	nop
.L689:
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
	bcc	.L694
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bls	.L701
.L694:
	str	wzr, [sp, 60]
	b	.L696
.L697:
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
.L696:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bcc	.L697
	b	.L698
.L699:
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
.L698:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bhi	.L699
	b	.L700
.L702:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L701:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L702
	nop
.L700:
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
	b	.L723
.L726:
	ldrh	w1, [sp, 14]
	mov	w2, 15
	ldr	w0, [sp, 28]
	sub	w0, w2, w0
	asr	w0, w1, w0
	ands	w0, w0, 1
	bne	.L728
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L723:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L726
	b	.L725
.L728:
	nop
.L725:
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
	b	.L731
.L734:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	ands	w0, w0, 1
	bne	.L736
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L731:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L734
	b	.L733
.L736:
	nop
.L733:
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
	bge	.L742
	b	.L743
.L742:
	ldr	s30, [sp, 12]
	movi	v31.2s, 0x47, lsl 24
	fsub	s31, s30, s31
	fcvtzs	x0, s31
	add	x0, x0, 32768
	b	.L741
.L743:
	ldr	s31, [sp, 12]
	fcvtzs	x0, s31
.L741:
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
	b	.L746
.L748:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	ands	w0, w0, 1
	beq	.L747
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L747:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L746:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L748
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
	b	.L752
.L754:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	ands	w0, w0, 1
	beq	.L753
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L753:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L752:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L754
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
	b	.L758
.L760:
	ldr	w0, [sp, 12]
	ands	w0, w0, 1
	beq	.L759
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L759:
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
.L758:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L760
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
	bne	.L766
	mov	w0, 0
	b	.L765
.L768:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L767
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L767:
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L766:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L768
	ldr	w0, [sp, 28]
.L765:
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
	b	.L771
.L773:
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L771:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcs	.L774
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L774
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L773
	b	.L774
.L776:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L775
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L775:
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L774:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L776
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L777
	ldr	w0, [sp, 12]
	b	.L778
.L777:
	ldr	w0, [sp, 24]
.L778:
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
	bmi	.L786
	b	.L788
.L786:
	mov	w0, -1
	b	.L783
.L788:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bgt	.L787
	b	.L789
.L787:
	mov	w0, 1
	b	.L783
.L789:
	mov	w0, 0
.L783:
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
	bmi	.L797
	b	.L799
.L797:
	mov	w0, -1
	b	.L794
.L799:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bgt	.L798
	b	.L800
.L798:
	mov	w0, 1
	b	.L794
.L800:
	mov	w0, 0
.L794:
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
	bge	.L809
	ldr	w0, [sp, 8]
	neg	w0, w0
	str	w0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 24]
.L809:
	strb	wzr, [sp, 31]
	b	.L810
.L813:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L811
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L811:
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldrb	w0, [sp, 31]
	add	w0, w0, 1
	strb	w0, [sp, 31]
.L810:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L812
	ldrb	w0, [sp, 31]
	cmp	w0, 31
	bls	.L813
.L812:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L814
	ldr	w0, [sp, 20]
	neg	w0, w0
	b	.L816
.L814:
	ldr	w0, [sp, 20]
.L816:
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L819
	ldr	x0, [sp, 24]
	neg	x0, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 44]
.L819:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L820
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 44]
.L820:
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
	beq	.L821
	ldr	x0, [sp, 32]
	neg	x0, x0
	str	x0, [sp, 32]
.L821:
	ldr	x0, [sp, 32]
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	str	x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L825
	ldr	x0, [sp, 24]
	neg	x0, x0
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 44]
.L825:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L826
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 16]
.L826:
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
	beq	.L827
	ldr	x0, [sp, 32]
	neg	x0, x0
	str	x0, [sp, 32]
.L827:
	ldr	x0, [sp, 32]
	ldr	x30, [sp], 48
	.cfi_restore 30
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
	b	.L831
.L833:
	ldrh	w0, [sp, 12]
	ubfiz	w0, w0, 1, 15
	strh	w0, [sp, 12]
	ldrh	w0, [sp, 30]
	ubfiz	w0, w0, 1, 15
	strh	w0, [sp, 30]
.L831:
	ldrh	w1, [sp, 12]
	ldrh	w0, [sp, 14]
	cmp	w1, w0
	bcs	.L834
	ldrh	w0, [sp, 30]
	cmp	w0, 0
	beq	.L834
	ldrsh	w0, [sp, 12]
	cmp	w0, 0
	bge	.L833
	b	.L834
.L836:
	ldrh	w1, [sp, 14]
	ldrh	w0, [sp, 12]
	cmp	w1, w0
	bcc	.L835
	ldrh	w1, [sp, 14]
	ldrh	w0, [sp, 12]
	sub	w0, w1, w0
	strh	w0, [sp, 14]
	ldrh	w1, [sp, 28]
	ldrh	w0, [sp, 30]
	orr	w0, w1, w0
	strh	w0, [sp, 28]
.L835:
	ldrh	w0, [sp, 30]
	lsr	w0, w0, 1
	strh	w0, [sp, 30]
	ldrh	w0, [sp, 12]
	lsr	w0, w0, 1
	strh	w0, [sp, 12]
.L834:
	ldrh	w0, [sp, 30]
	cmp	w0, 0
	bne	.L836
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L837
	ldrh	w0, [sp, 14]
	b	.L838
.L837:
	ldrh	w0, [sp, 28]
.L838:
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
	b	.L841
.L843:
	ldr	x0, [sp, 16]
	lsl	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 1
	str	x0, [sp, 40]
.L841:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcs	.L844
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L844
	ldr	x0, [sp, 16]
	ands	x0, x0, 2147483648
	beq	.L843
	b	.L844
.L846:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L845
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	orr	x0, x1, x0
	str	x0, [sp, 32]
.L845:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L844:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L846
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L847
	ldr	x0, [sp, 24]
	b	.L848
.L847:
	ldr	x0, [sp, 32]
.L848:
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
	ands	w0, w1, w0
	beq	.L851
	str	wzr, [sp, 24]
	ldr	w1, [sp, 32]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsl	w0, w1, w0
	str	w0, [sp, 28]
	b	.L852
.L851:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L853
	ldr	x0, [sp, 8]
	b	.L855
.L853:
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
.L852:
	ldr	x0, [sp, 24]
.L855:
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
	ands	w0, w1, w0
	beq	.L858
	str	xzr, [sp, 32]
	ldr	x1, [sp, 48]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	lsl	x0, x1, x0
	str	x0, [sp, 40]
	b	.L859
.L858:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L860
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	b	.L862
.L860:
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
.L859:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
.L862:
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	ands	w0, w1, w0
	beq	.L865
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
	b	.L866
.L865:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L867
	ldr	x0, [sp, 8]
	b	.L869
.L867:
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
.L866:
	ldr	x0, [sp, 24]
.L869:
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
	ands	w0, w1, w0
	beq	.L872
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
	b	.L873
.L872:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L874
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	b	.L876
.L874:
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
.L873:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
.L876:
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	bhi	.L885
	mov	w0, 16
	b	.L886
.L885:
	mov	w0, 0
.L886:
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
	ands	w0, w0, 65280
	bne	.L887
	mov	w0, 8
	b	.L888
.L887:
	mov	w0, 0
.L888:
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
	ands	w0, w0, 240
	bne	.L889
	mov	w0, 4
	b	.L890
.L889:
	mov	w0, 0
.L890:
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
	ands	w0, w0, 12
	bne	.L891
	mov	w0, 2
	b	.L892
.L891:
	mov	w0, 0
.L892:
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
	ands	w0, w0, 2
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
	bge	.L899
	mov	w0, 0
	b	.L904
.L899:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L901
	mov	w0, 2
	b	.L904
.L901:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bcs	.L902
	mov	w0, 0
	b	.L904
.L902:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bls	.L903
	mov	w0, 2
	b	.L904
.L903:
	mov	w0, 1
.L904:
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
	str	x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	__cmpdi2
	sub	w0, w0, #1
	ldr	x30, [sp], 32
	.cfi_restore 30
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
	bge	.L910
	mov	w0, 0
	b	.L915
.L910:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L912
	mov	w0, 2
	b	.L915
.L912:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L913
	mov	w0, 0
	b	.L915
.L913:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L914
	mov	w0, 2
	b	.L915
.L914:
	mov	w0, 1
.L915:
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
	ands	w0, w0, 65535
	bne	.L918
	mov	w0, 16
	b	.L919
.L918:
	mov	w0, 0
.L919:
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	ands	w0, w0, 255
	bne	.L920
	mov	w0, 8
	b	.L921
.L920:
	mov	w0, 0
.L921:
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
	ands	w0, w0, 15
	bne	.L922
	mov	w0, 4
	b	.L923
.L922:
	mov	w0, 0
.L923:
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
	ands	w0, w0, 3
	bne	.L924
	mov	w0, 2
	b	.L925
.L924:
	mov	w0, 0
.L925:
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
	bne	.L932
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L933
	mov	w0, 0
	b	.L935
.L933:
	ldr	x0, [sp, 24]
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 65
	b	.L935
.L932:
	ldr	x0, [sp, 16]
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
.L935:
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
	ands	w0, w1, w0
	beq	.L938
	str	wzr, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsr	w0, w1, w0
	str	w0, [sp, 24]
	b	.L939
.L938:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L940
	ldr	x0, [sp, 8]
	b	.L942
.L940:
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
.L939:
	ldr	x0, [sp, 24]
.L942:
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
	ands	w0, w1, w0
	beq	.L945
	str	xzr, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	lsr	x0, x1, x0
	str	x0, [sp, 32]
	b	.L946
.L945:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L947
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	b	.L949
.L947:
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
.L946:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
.L949:
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	str	x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
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
	ldr	x30, [sp], 64
	.cfi_restore 30
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
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	str	x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -96
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
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
	ldr	x30, [sp], 96
	.cfi_restore 30
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
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	subs	x1, xzr, x1
	sbc	x0, xzr, x0
	mov	x2, x1
	mov	x1, x0
	mov	x0, x2
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 32]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 63
	ldr	x0, [sp, 32]
	lsr	x0, x0, 1
	orr	x0, x1, x0
	ldr	x1, [sp, 40]
	lsr	x1, x1, 1
	and	x2, x0, 6148914691236517205
	and	x0, x1, 6148914691236517205
	ldr	x3, [sp, 32]
	ldr	x1, [sp, 40]
	subs	x2, x3, x2
	sbc	x0, x1, x0
	mov	x1, x2
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 62
	ldr	x0, [sp, 32]
	lsr	x0, x0, 2
	orr	x0, x1, x0
	ldr	x1, [sp, 40]
	lsr	x1, x1, 2
	and	x0, x0, 3689348814741910323
	and	x1, x1, 3689348814741910323
	ldr	x2, [sp, 32]
	and	x4, x2, 3689348814741910323
	ldr	x2, [sp, 40]
	and	x3, x2, 3689348814741910323
	mov	x2, x4
	adds	x2, x0, x2
	mov	x0, x3
	adc	x0, x1, x0
	mov	x1, x2
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 60
	ldr	x0, [sp, 32]
	lsr	x0, x0, 4
	orr	x0, x1, x0
	ldr	x1, [sp, 40]
	lsr	x1, x1, 4
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	adds	x0, x0, x3
	adc	x1, x1, x2
	and	x0, x0, 1085102592571150095
	str	x0, [sp, 32]
	and	x0, x1, 1085102592571150095
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	add	x0, x0, x1
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
	and	w0, w0, 255
	add	sp, sp, 48
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
.L991:
	ldr	w0, [sp, 4]
	ands	w0, w0, 1
	beq	.L988
	ldr	d30, [sp, 24]
	ldr	d31, [sp, 8]
	fmul	d31, d30, d31
	str	d31, [sp, 24]
.L988:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L996
	ldr	d31, [sp, 8]
	fmul	d31, d31, d31
	str	d31, [sp, 8]
	b	.L991
.L996:
	nop
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L992
	ldr	d31, [sp, 24]
	fmov	d30, 1.0e+0
	fdiv	d31, d30, d31
	b	.L994
.L992:
	ldr	d31, [sp, 24]
.L994:
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
.L1002:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L999
	ldr	s30, [sp, 28]
	ldr	s31, [sp, 12]
	fmul	s31, s30, s31
	str	s31, [sp, 28]
.L999:
	ldr	w0, [sp, 8]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L1007
	ldr	s31, [sp, 12]
	fmul	s31, s31, s31
	str	s31, [sp, 12]
	b	.L1002
.L1007:
	nop
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L1003
	ldr	s31, [sp, 28]
	fmov	s30, 1.0e+0
	fdiv	s31, s30, s31
	b	.L1005
.L1003:
	ldr	s31, [sp, 28]
.L1005:
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
	bcs	.L1010
	mov	w0, 0
	b	.L1015
.L1010:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bls	.L1012
	mov	w0, 2
	b	.L1015
.L1012:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bcs	.L1013
	mov	w0, 0
	b	.L1015
.L1013:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bls	.L1014
	mov	w0, 2
	b	.L1015
.L1014:
	mov	w0, 1
.L1015:
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
	str	x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	__ucmpdi2
	sub	w0, w0, #1
	ldr	x30, [sp], 32
	.cfi_restore 30
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
	bcs	.L1021
	mov	w0, 0
	b	.L1026
.L1021:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bls	.L1023
	mov	w0, 2
	b	.L1026
.L1023:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L1024
	mov	w0, 0
	b	.L1026
.L1024:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L1025
	mov	w0, 2
	b	.L1026
.L1025:
	mov	w0, 1
.L1026:
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
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
