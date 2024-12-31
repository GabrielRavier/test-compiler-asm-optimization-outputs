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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcs	.L8
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 56]
	b	.L9
.L10:
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 56]
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
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L11
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	b	.L12
.L13:
	ldr	x1, [sp, 16]
	add	x0, x1, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 48]
	add	x2, x0, 1
	str	x2, [sp, 48]
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
	add	sp, sp, 64
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
	ldr	w0, [sp, 12]
	and	w0, w0, 255
	str	w0, [sp, 44]
	b	.L17
.L19:
	ldr	x0, [sp]
	sub	x0, x0, #1
	str	x0, [sp]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L17:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L18
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 44]
	cmp	w0, w1
	bne	.L19
.L18:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L20
	ldr	x0, [sp, 24]
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
	ldr	w0, [sp, 20]
	and	w0, w0, 255
	str	w0, [sp, 44]
	b	.L24
.L26:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L24:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L25
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 44]
	cmp	w0, w1
	bne	.L26
.L25:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L27
	ldr	x0, [sp, 24]
	b	.L29
.L27:
	mov	x0, 0
.L29:
	nop
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	b	.L32
.L34:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L32:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L33
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L34
.L33:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L35
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	b	.L37
.L35:
	mov	w0, 0
.L37:
	nop
	add	sp, sp, 32
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
	b	.L40
.L41:
	ldr	x1, [sp, 16]
	add	x0, x1, 1
	str	x0, [sp, 16]
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
	ldr	w0, [sp, 20]
	and	w0, w0, 255
	str	w0, [sp, 44]
	b	.L45
.L47:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 44]
	cmp	w0, w1
	bne	.L45
	ldr	x1, [sp, 24]
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	and	w0, w0, 255
	str	w0, [sp, 28]
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
	ldr	w0, [sp, 28]
	cmp	w0, w1
	bne	.L62
.L61:
	ldr	x0, [sp, 8]
	add	sp, sp, 32
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
	beq	.L69
	mov	x1, x0
	add	x0, x1, 1
	ldrb	w1, [x1]
	cmp	w1, 0
	bne	.L68
	mov	x0, 0
	b	.L67
.L69:
	nop
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
	b	.L72
.L74:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
.L72:
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L73
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L74
.L73:
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
	b	.L78
.L79:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L78:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L79
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
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
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 40]
	cmp	x0, 0
	bne	.L85
	mov	w0, 0
	b	.L84
.L87:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
.L85:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L86
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L86
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L86
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L87
.L86:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	sub	w0, w1, w0
.L84:
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	b	.L90
.L91:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	strb	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 2
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 2
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x0, x0, #2
	str	x0, [sp, 8]
.L90:
	ldr	x0, [sp, 8]
	cmp	x0, 1
	bgt	.L91
	nop
	nop
	add	sp, sp, 32
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
	beq	.L100
	ldr	w0, [sp, 12]
	cmp	w0, 9
	bne	.L101
.L100:
	mov	w0, 1
	b	.L103
.L101:
	mov	w0, 0
.L103:
	nop
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
	bls	.L106
	ldr	w0, [sp, 12]
	cmp	w0, 127
	bne	.L107
.L106:
	mov	w0, 1
	b	.L109
.L107:
	mov	w0, 0
.L109:
	nop
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
	beq	.L124
	ldr	w0, [sp, 12]
	sub	w0, w0, #9
	cmp	w0, 4
	bhi	.L125
.L124:
	mov	w0, 1
	b	.L127
.L125:
	mov	w0, 0
.L127:
	nop
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
	bls	.L133
	ldr	w0, [sp, 12]
	sub	w0, w0, #127
	cmp	w0, 32
	bls	.L133
	ldr	w1, [sp, 12]
	mov	w0, -8232
	add	w0, w1, w0
	cmp	w0, 1
	bls	.L133
	ldr	w1, [sp, 12]
	mov	w0, -65529
	add	w0, w1, w0
	cmp	w0, 2
	bhi	.L134
.L133:
	mov	w0, 1
	b	.L136
.L134:
	mov	w0, 0
.L136:
	nop
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
	bhi	.L142
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	and	w0, w0, 127
	cmp	w0, 32
	cset	w0, hi
	and	w0, w0, 255
	b	.L143
.L142:
	ldr	w1, [sp, 12]
	mov	w0, 8231
	cmp	w1, w0
	bls	.L144
	ldr	w1, [sp, 12]
	mov	w0, -8234
	add	w1, w1, w0
	mov	w0, 47061
	cmp	w1, w0
	bls	.L144
	ldr	w0, [sp, 12]
	sub	w1, w0, #57344
	mov	w0, 8184
	cmp	w1, w0
	bhi	.L145
.L144:
	mov	w0, 1
	b	.L143
.L145:
	ldr	w1, [sp, 12]
	mov	w0, -65532
	add	w1, w1, w0
	mov	w0, 3
	movk	w0, 0x10, lsl 16
	cmp	w1, w0
	bhi	.L146
	ldr	w0, [sp, 12]
	and	w1, w0, 65534
	mov	w0, 65534
	cmp	w1, w0
	bne	.L147
.L146:
	mov	w0, 0
	b	.L143
.L147:
	mov	w0, 1
.L143:
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
	bls	.L150
	ldr	w0, [sp, 12]
	orr	w0, w0, 32
	sub	w0, w0, #97
	cmp	w0, 5
	bhi	.L151
.L150:
	mov	w0, 1
	b	.L153
.L151:
	mov	w0, 0
.L153:
	nop
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
	bvc	.L159
	ldr	d31, [sp, 8]
	b	.L160
.L159:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L161
	ldr	d31, [sp]
	b	.L160
.L161:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bgt	.L165
	b	.L166
.L165:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fsub	d31, d30, d31
	b	.L160
.L166:
	movi	d31, #0
.L160:
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
	bvc	.L169
	ldr	s31, [sp, 12]
	b	.L170
.L169:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L171
	ldr	s31, [sp, 8]
	b	.L170
.L171:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bgt	.L175
	b	.L176
.L175:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fsub	s31, s30, s31
	b	.L170
.L176:
	movi	v31.2s, #0
.L170:
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
	bvc	.L179
	ldr	d31, [sp]
	b	.L180
.L179:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L181
	ldr	d31, [sp, 8]
	b	.L180
.L181:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L182
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L183
	ldr	d31, [sp]
	b	.L180
.L183:
	ldr	d31, [sp, 8]
	b	.L180
.L182:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L188
	b	.L189
.L188:
	ldr	d31, [sp]
	b	.L180
.L189:
	ldr	d31, [sp, 8]
.L180:
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
	bvc	.L192
	ldr	s31, [sp, 8]
	b	.L193
.L192:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L194
	ldr	s31, [sp, 12]
	b	.L193
.L194:
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L195
	ldr	w0, [sp, 12]
	ands	w0, w0, -2147483648
	beq	.L196
	ldr	s31, [sp, 8]
	b	.L193
.L196:
	ldr	s31, [sp, 12]
	b	.L193
.L195:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L201
	b	.L202
.L201:
	ldr	s31, [sp, 8]
	b	.L193
.L202:
	ldr	s31, [sp, 12]
.L193:
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
	beq	.L219
	ldr	q30, [sp, 16]
	b	.L207
.L219:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L220
	ldr	q30, [sp, 32]
	b	.L207
.L220:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L210
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L211
	ldr	q30, [sp, 16]
	b	.L207
.L211:
	ldr	q30, [sp, 32]
	b	.L207
.L210:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L221
	ldr	q30, [sp, 16]
	b	.L207
.L221:
	ldr	q30, [sp, 32]
.L207:
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
	bvc	.L224
	ldr	d31, [sp]
	b	.L225
.L224:
	ldr	d30, [sp]
	ldr	d31, [sp]
	fcmp	d30, d31
	bvc	.L226
	ldr	d31, [sp, 8]
	b	.L225
.L226:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L227
	ldr	x0, [sp, 8]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L228
	ldr	d31, [sp, 8]
	b	.L225
.L228:
	ldr	d31, [sp]
	b	.L225
.L227:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bmi	.L233
	b	.L234
.L233:
	ldr	d31, [sp, 8]
	b	.L225
.L234:
	ldr	d31, [sp]
.L225:
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
	bvc	.L237
	ldr	s31, [sp, 8]
	b	.L238
.L237:
	ldr	s30, [sp, 8]
	ldr	s31, [sp, 8]
	fcmp	s30, s31
	bvc	.L239
	ldr	s31, [sp, 12]
	b	.L238
.L239:
	ldr	w0, [sp, 12]
	and	w0, w0, -2147483648
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w0, -2147483648
	cmp	w1, w0
	beq	.L240
	ldr	w0, [sp, 12]
	ands	w0, w0, -2147483648
	beq	.L241
	ldr	s31, [sp, 12]
	b	.L238
.L241:
	ldr	s31, [sp, 8]
	b	.L238
.L240:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bmi	.L246
	b	.L247
.L246:
	ldr	s31, [sp, 12]
	b	.L238
.L247:
	ldr	s31, [sp, 8]
.L238:
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
	beq	.L264
	ldr	q30, [sp, 16]
	b	.L252
.L264:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__unordtf2
	cmp	w0, 0
	beq	.L265
	ldr	q30, [sp, 32]
	b	.L252
.L265:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	and	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 24]
	lsr	x0, x0, 63
	and	w0, w0, 1
	cmp	w1, w0
	beq	.L255
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	ands	w0, w0, 1
	beq	.L256
	ldr	q30, [sp, 32]
	b	.L252
.L256:
	ldr	q30, [sp, 16]
	b	.L252
.L255:
	ldr	q1, [sp, 16]
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L266
	ldr	q30, [sp, 32]
	b	.L252
.L266:
	ldr	q30, [sp, 16]
.L252:
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
	b	.L269
.L270:
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
.L269:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L270
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L278
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	b	.L277
.L278:
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L277
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
.L277:
	add	sp, sp, 16
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L282
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	ldr	x1, [x1, 8]
	str	x1, [x0, 8]
.L282:
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L284
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	ldr	x1, [sp, 8]
	ldr	x1, [x1]
	str	x1, [x0]
.L284:
	nop
	add	sp, sp, 16
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
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 72]
	str	xzr, [sp, 88]
	b	.L287
.L290:
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x2
	cmp	w0, 0
	bne	.L288
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	b	.L289
.L288:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L287:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 72]
	cmp	x1, x0
	bcc	.L290
	ldr	x0, [sp, 72]
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	mul	x0, x19, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 56]
	bl	memcpy
.L289:
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
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 72]
	str	xzr, [sp, 88]
	b	.L293
.L296:
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x2
	cmp	w0, 0
	bne	.L294
	ldr	x0, [sp, 88]
	mul	x0, x19, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	b	.L295
.L294:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L293:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 72]
	cmp	x1, x0
	bcc	.L296
	mov	x0, 0
.L295:
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
	b	.L302
.L303:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L302:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L303
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L304
	cmp	w0, 45
	bne	.L306
	mov	w0, 1
	str	w0, [sp, 40]
.L304:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L306
.L307:
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
.L306:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L307
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L308
	ldr	w0, [sp, 44]
	neg	w0, w0
	b	.L310
.L308:
	ldr	w0, [sp, 44]
.L310:
	nop
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
	b	.L313
.L314:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L313:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L314
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L315
	cmp	w0, 45
	bne	.L317
	mov	w0, 1
	str	w0, [sp, 36]
.L315:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L317
.L318:
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
.L317:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L318
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L319
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L321
.L319:
	ldr	x0, [sp, 40]
.L321:
	nop
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
	b	.L324
.L325:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L324:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	isspace
	cmp	w0, 0
	bne	.L325
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L326
	cmp	w0, 45
	bne	.L328
	mov	w0, 1
	str	w0, [sp, 36]
.L326:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L328
.L329:
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
.L328:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 9
	bls	.L329
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L330
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L332
.L330:
	ldr	x0, [sp, 40]
.L332:
	nop
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
	b	.L335
.L340:
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
	bge	.L336
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	str	x0, [sp, 40]
	b	.L335
.L336:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L338
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
	b	.L335
.L338:
	ldr	x0, [sp, 72]
	b	.L339
.L335:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L340
	mov	x0, 0
.L339:
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
	ldr	x0, [sp, 40]
	str	w0, [sp, 92]
	b	.L343
.L347:
	ldr	w0, [sp, 92]
	asr	w0, w0, 1
	sxtw	x1, w0
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 56]
	blr	x3
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	cmp	w0, 0
	bne	.L344
	ldr	x0, [sp, 80]
	b	.L345
.L344:
	ldr	w0, [sp, 76]
	cmp	w0, 0
	ble	.L346
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w0, [sp, 92]
	sub	w0, w0, #1
	str	w0, [sp, 92]
.L346:
	ldr	w0, [sp, 92]
	asr	w0, w0, 1
	str	w0, [sp, 92]
.L343:
	ldr	w0, [sp, 92]
	cmp	w0, 0
	bne	.L347
	mov	x0, 0
.L345:
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
	b	.L371
.L373:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
.L371:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L372
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L373
.L372:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L374
	ldr	x0, [sp, 8]
	b	.L376
.L374:
	mov	x0, 0
.L376:
	nop
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
	b	.L379
.L381:
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 4
	str	x0, [sp]
.L379:
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L380
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L380
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L381
.L380:
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L382
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L384
.L382:
	mov	w0, -1
.L384:
	nop
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
.L387:
	ldr	x1, [sp]
	add	x0, x1, 4
	str	x0, [sp]
	ldr	x0, [sp, 24]
	add	x2, x0, 4
	str	x2, [sp, 24]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L387
	ldr	x0, [sp, 8]
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
	b	.L391
.L392:
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
.L391:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L392
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
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
	b	.L396
.L398:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	str	x0, [sp, 16]
.L396:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L397
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L397
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L397
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L398
.L397:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L399
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L400
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L403
.L400:
	mov	w0, -1
	b	.L403
.L399:
	mov	w0, 0
.L403:
	nop
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
	b	.L406
.L408:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
.L406:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L407
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L408
.L407:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L409
	ldr	x0, [sp, 24]
	b	.L411
.L409:
	mov	x0, 0
.L411:
	nop
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
	b	.L414
.L416:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	str	x0, [sp, 16]
.L414:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L415
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L416
.L415:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L417
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L418
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	b	.L421
.L418:
	mov	w0, -1
	b	.L421
.L417:
	mov	w0, 0
.L421:
	nop
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
	b	.L424
.L425:
	ldr	x1, [sp, 16]
	add	x0, x1, 4
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	add	x2, x0, 4
	str	x2, [sp, 40]
	ldr	w1, [x1]
	str	w1, [x0]
.L424:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L425
	ldr	x0, [sp, 24]
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
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L429
	ldr	x0, [sp, 24]
	b	.L430
.L429:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 2
	cmp	x1, x0
	bcs	.L431
	b	.L432
.L433:
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
.L432:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L433
	b	.L434
.L431:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L435
.L436:
	ldr	x1, [sp, 16]
	add	x0, x1, 4
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	add	x2, x0, 4
	str	x2, [sp, 40]
	ldr	w1, [x1]
	str	w1, [x0]
.L435:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L436
.L434:
	ldr	x0, [sp, 24]
.L430:
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
	b	.L439
.L440:
	ldr	x0, [sp, 40]
	add	x1, x0, 4
	str	x1, [sp, 40]
	ldr	w1, [sp, 20]
	str	w1, [x0]
.L439:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L440
	ldr	x0, [sp, 24]
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
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcs	.L444
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 32]
	b	.L445
.L446:
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
.L445:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L446
	b	.L450
.L444:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	beq	.L450
	b	.L448
.L449:
	ldr	x1, [sp, 24]
	add	x0, x1, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x2, x0, 1
	str	x2, [sp, 16]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L448:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L449
.L450:
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
	b	.L492
.L495:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	lsr	w0, w1, w0
	ands	w0, w0, 1
	beq	.L493
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	b	.L494
.L493:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L492:
	ldr	w0, [sp, 28]
	cmp	w0, 31
	bls	.L495
	mov	w0, 0
.L494:
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
	bne	.L498
	mov	w19, 0
	b	.L499
.L498:
	mov	w19, 1
	b	.L500
.L501:
	asr	w0, w0, 1
	add	w19, w19, 1
.L500:
	ands	w1, w0, 1
	beq	.L501
	nop
.L499:
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
	bmi	.L504
	ldr	s31, [sp, 12]
	mov	w0, 2139095039
	fmov	s30, w0
	fcmpe	s31, s30
	bgt	.L504
	b	.L509
.L504:
	mov	w0, 1
	b	.L508
.L509:
	mov	w0, 0
.L508:
	nop
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
	bmi	.L512
	ldr	d31, [sp, 8]
	mov	x0, 9218868437227405311
	fmov	d30, x0
	fcmpe	d31, d30
	bgt	.L512
	b	.L517
.L512:
	mov	w0, 1
	b	.L516
.L517:
	mov	w0, 0
.L516:
	nop
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
	blt	.L520
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__gttf2
	cmp	w0, 0
	ble	.L525
.L520:
	mov	w0, 1
	b	.L524
.L525:
	mov	w0, 0
.L524:
	nop
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
	bvs	.L530
	ldr	s31, [sp, 12]
	fadd	s31, s31, s31
	ldr	s30, [sp, 12]
	fcmp	s30, s31
	beq	.L530
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L531
	fmov	s31, 5.0e-1
	b	.L532
.L531:
	fmov	s31, 2.0e+0
.L532:
	str	s31, [sp, 28]
.L535:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L533
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 28]
	fmul	s31, s30, s31
	str	s31, [sp, 12]
.L533:
	ldr	w0, [sp, 8]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L537
	ldr	s31, [sp, 28]
	fmul	s31, s31, s31
	str	s31, [sp, 28]
	b	.L535
.L537:
	nop
.L530:
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
	bvs	.L540
	ldr	d31, [sp, 8]
	fadd	d31, d31, d31
	ldr	d30, [sp, 8]
	fcmp	d30, d31
	beq	.L540
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bge	.L541
	fmov	d31, 5.0e-1
	b	.L542
.L541:
	fmov	d31, 2.0e+0
.L542:
	str	d31, [sp, 24]
.L545:
	ldr	w0, [sp, 4]
	ands	w0, w0, 1
	beq	.L543
	ldr	d30, [sp, 8]
	ldr	d31, [sp, 24]
	fmul	d31, d30, d31
	str	d31, [sp, 8]
.L543:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L547
	ldr	d31, [sp, 24]
	fmul	d31, d31, d31
	str	d31, [sp, 24]
	b	.L545
.L547:
	nop
.L540:
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
	bne	.L550
	ldr	q30, [sp, 32]
	mov	v1.16b, v30.16b
	mov	v0.16b, v30.16b
	bl	__addtf3
	mov	v30.16b, v0.16b
	mov	v1.16b, v30.16b
	ldr	q0, [sp, 32]
	bl	__netf2
	cmp	w0, 0
	beq	.L550
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L552
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	q30, [x0]
	b	.L553
.L552:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q30, [x0]
.L553:
	str	q30, [sp, 48]
.L556:
	ldr	w0, [sp, 28]
	ands	w0, w0, 1
	beq	.L554
	ldr	q1, [sp, 48]
	ldr	q0, [sp, 32]
	bl	__multf3
	mov	v30.16b, v0.16b
	str	q30, [sp, 32]
.L554:
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L559
	ldr	q1, [sp, 48]
	ldr	q0, [sp, 48]
	bl	__multf3
	mov	v30.16b, v0.16b
	str	q30, [sp, 48]
	b	.L556
.L559:
	nop
.L550:
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
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L562
.L563:
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	str	x1, [sp, 16]
	ldrb	w2, [x0]
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	str	x1, [sp, 40]
	ldrb	w1, [x0]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L562:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L563
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
	b	.L567
.L569:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
.L567:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L568
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 56]
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L569
.L568:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L570
	ldr	x0, [sp, 56]
	strb	wzr, [x0]
.L570:
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
	b	.L574
.L579:
	nop
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L574:
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	cmp	x1, x0
	bcs	.L575
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L579
.L575:
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
	b	.L582
.L586:
	ldr	x0, [sp]
	str	x0, [sp, 24]
	b	.L583
.L585:
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L583
	ldr	x0, [sp, 8]
	b	.L584
.L583:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L585
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L582:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L586
	mov	x0, 0
.L584:
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
.L590:
	ldrb	w1, [x0]
	mov	w2, w1
	ldr	w1, [sp, 12]
	cmp	w1, w2
	bne	.L589
	str	x0, [sp, 24]
.L589:
	mov	x1, x0
	add	x0, x1, 1
	ldrb	w1, [x1]
	cmp	w1, 0
	bne	.L590
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
	ldr	x0, [sp, 16]
	bl	strlen
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L596
	ldr	x0, [sp, 24]
	b	.L595
.L598:
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 32]
	bl	strncmp
	cmp	w0, 0
	bne	.L597
	ldr	x0, [sp, 32]
	b	.L595
.L597:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L596:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	strchr
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L598
	mov	x0, 0
.L595:
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
	bmi	.L608
	b	.L601
.L608:
	ldr	d31, [sp]
	fcmpe	d31, #0.0
	bgt	.L603
.L601:
	ldr	d31, [sp, 8]
	fcmpe	d31, #0.0
	bgt	.L609
	b	.L604
.L609:
	ldr	d31, [sp]
	fcmpe	d31, #0.0
	bmi	.L603
	b	.L604
.L603:
	ldr	d31, [sp, 8]
	fneg	d31, d31
	b	.L607
.L604:
	ldr	d31, [sp, 8]
.L607:
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
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L612
	ldr	x0, [sp, 40]
	b	.L613
.L612:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	ands	x0, x0, 255
	beq	.L615
	mov	x0, 0
	b	.L613
.L617:
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L616
	ldr	x0, [sp, 40]
	add	x3, x0, 1
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	mov	x2, x0
	mov	x0, x3
	bl	memcmp
	cmp	w0, 0
	bne	.L616
	ldr	x0, [sp, 40]
	b	.L613
.L616:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L615:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bls	.L617
	mov	x0, 0
.L613:
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
	bmi	.L635
	b	.L623
.L635:
	ldr	d31, [sp, 8]
	fneg	d31, d31
	str	d31, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 28]
.L623:
	ldr	d30, [sp, 8]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	bge	.L627
	b	.L638
.L628:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	fmov	d31, 2.0e+0
	ldr	d30, [sp, 8]
	fdiv	d31, d30, d31
	str	d31, [sp, 8]
.L627:
	ldr	d30, [sp, 8]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	bge	.L628
	b	.L629
.L638:
	ldr	d30, [sp, 8]
	fmov	d31, 5.0e-1
	fcmpe	d30, d31
	bmi	.L637
	b	.L629
.L637:
	ldr	d31, [sp, 8]
	fcmp	d31, #0.0
	beq	.L629
	b	.L631
.L632:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	d31, [sp, 8]
	fadd	d31, d31, d31
	str	d31, [sp, 8]
.L631:
	ldr	d30, [sp, 8]
	fmov	d31, 5.0e-1
	fcmpe	d30, d31
	bmi	.L632
.L629:
	ldr	x0, [sp]
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L633
	ldr	d31, [sp, 8]
	fneg	d31, d31
	str	d31, [sp, 8]
.L633:
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
	b	.L641
.L643:
	ldr	x0, [sp, 16]
	ands	x0, x0, 1
	beq	.L642
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	add	x0, x1, x0
	str	x0, [sp, 24]
.L642:
	ldr	x0, [sp]
	lsl	x0, x0, 1
	str	x0, [sp]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L641:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L643
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
	b	.L647
.L649:
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L647:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcs	.L650
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L650
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L649
	b	.L650
.L652:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L651
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L651:
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L650:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L652
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L653
	ldr	w0, [sp, 12]
	b	.L654
.L653:
	ldr	w0, [sp, 24]
.L654:
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
	bne	.L657
	mov	w0, 7
	b	.L658
.L657:
	ldrb	w0, [sp, 15]
	lsl	w0, w0, 8
	clz	w0, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
.L658:
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
	bge	.L661
	ldr	x0, [sp, 8]
	mvn	x0, x0
	str	x0, [sp, 8]
.L661:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L662
	mov	w0, 63
	b	.L663
.L662:
	ldr	x0, [sp, 8]
	clz	x0, x0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
.L663:
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
	b	.L666
.L668:
	ldr	w0, [sp, 12]
	ands	w0, w0, 1
	beq	.L667
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L667:
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
.L666:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L668
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 3
	str	w0, [sp, 36]
	ldr	w0, [sp, 12]
	and	w0, w0, -8
	str	w0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L672
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bls	.L679
.L672:
	str	wzr, [sp, 44]
	b	.L674
.L675:
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L674:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bcc	.L675
	b	.L676
.L677:
	ldr	w0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 40]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L676:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bhi	.L677
	b	.L678
.L680:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L679:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L680
	nop
.L678:
	nop
	add	sp, sp, 48
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L683
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bls	.L689
.L683:
	str	wzr, [sp, 44]
	b	.L685
.L686:
	ldr	w0, [sp, 44]
	lsl	x0, x0, 1
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 1
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrsh	w1, [x1]
	strh	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L685:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bcc	.L686
	ldr	w0, [sp, 12]
	ands	w0, w0, 1
	beq	.L688
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	b	.L688
.L690:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L689:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L690
	nop
.L688:
	nop
	add	sp, sp, 48
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 2
	str	w0, [sp, 36]
	ldr	w0, [sp, 12]
	and	w0, w0, -4
	str	w0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L693
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bls	.L700
.L693:
	str	wzr, [sp, 44]
	b	.L695
.L696:
	ldr	w0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L695:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bcc	.L696
	b	.L697
.L698:
	ldr	w0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 40]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L697:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bhi	.L698
	b	.L699
.L701:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 12]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L700:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bne	.L701
	nop
.L699:
	nop
	add	sp, sp, 48
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
	b	.L722
.L725:
	ldrh	w1, [sp, 14]
	mov	w2, 15
	ldr	w0, [sp, 28]
	sub	w0, w2, w0
	asr	w0, w1, w0
	ands	w0, w0, 1
	bne	.L727
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L722:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L725
	b	.L724
.L727:
	nop
.L724:
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
	b	.L730
.L733:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	ands	w0, w0, 1
	bne	.L735
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L730:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L733
	b	.L732
.L735:
	nop
.L732:
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
	bge	.L741
	b	.L742
.L741:
	ldr	s30, [sp, 12]
	movi	v31.2s, 0x47, lsl 24
	fsub	s31, s30, s31
	fcvtzs	x0, s31
	add	x0, x0, 32768
	b	.L740
.L742:
	ldr	s31, [sp, 12]
	fcvtzs	x0, s31
.L740:
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
	b	.L745
.L747:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	ands	w0, w0, 1
	beq	.L746
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L746:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L745:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L747
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
	b	.L751
.L753:
	ldrh	w1, [sp, 14]
	ldr	w0, [sp, 28]
	asr	w0, w1, w0
	ands	w0, w0, 1
	beq	.L752
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L752:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L751:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L753
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
	b	.L757
.L759:
	ldr	w0, [sp, 12]
	ands	w0, w0, 1
	beq	.L758
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L758:
	ldr	w0, [sp, 12]
	lsr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
.L757:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L759
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
	bne	.L765
	mov	w0, 0
	b	.L764
.L767:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L766
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L766:
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L765:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L767
	ldr	w0, [sp, 28]
.L764:
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
	b	.L770
.L772:
	ldr	w0, [sp, 8]
	lsl	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L770:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcs	.L773
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L773
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bge	.L772
	b	.L773
.L775:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L774
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 24]
.L774:
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	lsr	w0, w0, 1
	str	w0, [sp, 8]
.L773:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L775
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L776
	ldr	w0, [sp, 12]
	b	.L777
.L776:
	ldr	w0, [sp, 24]
.L777:
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
	bmi	.L785
	b	.L787
.L785:
	mov	w0, -1
	b	.L782
.L787:
	ldr	s30, [sp, 12]
	ldr	s31, [sp, 8]
	fcmpe	s30, s31
	bgt	.L786
	b	.L788
.L786:
	mov	w0, 1
	b	.L782
.L788:
	mov	w0, 0
.L782:
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
	bmi	.L796
	b	.L798
.L796:
	mov	w0, -1
	b	.L793
.L798:
	ldr	d30, [sp, 8]
	ldr	d31, [sp]
	fcmpe	d30, d31
	bgt	.L797
	b	.L799
.L797:
	mov	w0, 1
	b	.L793
.L799:
	mov	w0, 0
.L793:
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
	bge	.L808
	ldr	w0, [sp, 8]
	neg	w0, w0
	str	w0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 24]
.L808:
	strb	wzr, [sp, 31]
	b	.L809
.L812:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L810
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L810:
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldrb	w0, [sp, 31]
	add	w0, w0, 1
	strb	w0, [sp, 31]
.L809:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L811
	ldrb	w0, [sp, 31]
	cmp	w0, 31
	bls	.L812
.L811:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L813
	ldr	w0, [sp, 20]
	neg	w0, w0
	b	.L815
.L813:
	ldr	w0, [sp, 20]
.L815:
	nop
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
	bge	.L818
	ldr	x0, [sp, 24]
	neg	x0, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 44]
.L818:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L819
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 44]
.L819:
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
	beq	.L820
	ldr	x0, [sp, 32]
	neg	x0, x0
	str	x0, [sp, 32]
.L820:
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
	bge	.L824
	ldr	x0, [sp, 24]
	neg	x0, x0
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 44]
.L824:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L825
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 16]
.L825:
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
	beq	.L826
	ldr	x0, [sp, 32]
	neg	x0, x0
	str	x0, [sp, 32]
.L826:
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
	b	.L830
.L832:
	ldrh	w0, [sp, 12]
	ubfiz	w0, w0, 1, 15
	strh	w0, [sp, 12]
	ldrh	w0, [sp, 30]
	ubfiz	w0, w0, 1, 15
	strh	w0, [sp, 30]
.L830:
	ldrh	w1, [sp, 12]
	ldrh	w0, [sp, 14]
	cmp	w1, w0
	bcs	.L833
	ldrh	w0, [sp, 30]
	cmp	w0, 0
	beq	.L833
	ldrsh	w0, [sp, 12]
	cmp	w0, 0
	bge	.L832
	b	.L833
.L835:
	ldrh	w1, [sp, 14]
	ldrh	w0, [sp, 12]
	cmp	w1, w0
	bcc	.L834
	ldrh	w1, [sp, 14]
	ldrh	w0, [sp, 12]
	sub	w0, w1, w0
	strh	w0, [sp, 14]
	ldrh	w1, [sp, 28]
	ldrh	w0, [sp, 30]
	orr	w0, w1, w0
	strh	w0, [sp, 28]
.L834:
	ldrh	w0, [sp, 30]
	lsr	w0, w0, 1
	strh	w0, [sp, 30]
	ldrh	w0, [sp, 12]
	lsr	w0, w0, 1
	strh	w0, [sp, 12]
.L833:
	ldrh	w0, [sp, 30]
	cmp	w0, 0
	bne	.L835
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L836
	ldrh	w0, [sp, 14]
	b	.L837
.L836:
	ldrh	w0, [sp, 28]
.L837:
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
	b	.L840
.L842:
	ldr	x0, [sp, 16]
	lsl	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 1
	str	x0, [sp, 40]
.L840:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcs	.L843
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L843
	ldr	x0, [sp, 16]
	ands	x0, x0, 2147483648
	beq	.L842
	b	.L843
.L845:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L844
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	orr	x0, x1, x0
	str	x0, [sp, 32]
.L844:
	ldr	x0, [sp, 40]
	lsr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L843:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L845
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L846
	ldr	x0, [sp, 24]
	b	.L847
.L846:
	ldr	x0, [sp, 32]
.L847:
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
	beq	.L850
	str	wzr, [sp, 24]
	ldr	w1, [sp, 32]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsl	w0, w1, w0
	str	w0, [sp, 28]
	b	.L851
.L850:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L852
	ldr	x0, [sp, 8]
	b	.L854
.L852:
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
.L851:
	ldr	x0, [sp, 24]
.L854:
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
	beq	.L857
	str	xzr, [sp, 32]
	ldr	x1, [sp, 48]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	lsl	x0, x1, x0
	str	x0, [sp, 40]
	b	.L858
.L857:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L859
	ldp	x0, x1, [sp, 16]
	b	.L861
.L859:
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
.L858:
	ldp	x0, x1, [sp, 32]
.L861:
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
	beq	.L864
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
	b	.L865
.L864:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L866
	ldr	x0, [sp, 8]
	b	.L868
.L866:
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
.L865:
	ldr	x0, [sp, 24]
.L868:
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
	beq	.L871
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
	b	.L872
.L871:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L873
	ldp	x0, x1, [sp, 16]
	b	.L875
.L873:
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
.L872:
	ldp	x0, x1, [sp, 32]
.L875:
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
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	mov	w0, 65535
	cmp	w1, w0
	bhi	.L884
	mov	w0, 16
	b	.L885
.L884:
	mov	w0, 0
.L885:
	str	w0, [sp, 72]
	mov	w1, 16
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	ldr	w1, [sp, 76]
	lsr	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 72]
	str	w0, [sp, 64]
	ldr	w0, [sp, 68]
	ands	w0, w0, 65280
	bne	.L886
	mov	w0, 8
	b	.L887
.L886:
	mov	w0, 0
.L887:
	str	w0, [sp, 60]
	mov	w1, 8
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	ldr	w1, [sp, 68]
	lsr	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 64]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	ands	w0, w0, 240
	bne	.L888
	mov	w0, 4
	b	.L889
.L888:
	mov	w0, 0
.L889:
	str	w0, [sp, 48]
	mov	w1, 4
	ldr	w0, [sp, 48]
	sub	w0, w1, w0
	ldr	w1, [sp, 56]
	lsr	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	ands	w0, w0, 12
	bne	.L890
	mov	w0, 2
	b	.L891
.L890:
	mov	w0, 0
.L891:
	str	w0, [sp, 36]
	mov	w1, 2
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	lsr	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 32]
	ands	w0, w0, 2
	cset	w0, eq
	and	w0, w0, 255
	mov	w2, w0
	mov	w1, 2
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	mul	w1, w2, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	add	sp, sp, 80
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
	bge	.L898
	mov	w0, 0
	b	.L903
.L898:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L900
	mov	w0, 2
	b	.L903
.L900:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bcs	.L901
	mov	w0, 0
	b	.L903
.L901:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bls	.L902
	mov	w0, 2
	b	.L903
.L902:
	mov	w0, 1
.L903:
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
	bge	.L909
	mov	w0, 0
	b	.L914
.L909:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L911
	mov	w0, 2
	b	.L914
.L911:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L912
	mov	w0, 0
	b	.L914
.L912:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L913
	mov	w0, 2
	b	.L914
.L913:
	mov	w0, 1
.L914:
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
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	ands	w0, w0, 65535
	bne	.L917
	mov	w0, 16
	b	.L918
.L917:
	mov	w0, 0
.L918:
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 76]
	lsr	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 72]
	str	w0, [sp, 64]
	ldr	w0, [sp, 68]
	ands	w0, w0, 255
	bne	.L919
	mov	w0, 8
	b	.L920
.L919:
	mov	w0, 0
.L920:
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 68]
	lsr	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 64]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	ands	w0, w0, 15
	bne	.L921
	mov	w0, 4
	b	.L922
.L921:
	mov	w0, 0
.L922:
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 56]
	lsr	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	ands	w0, w0, 3
	bne	.L923
	mov	w0, 2
	b	.L924
.L923:
	mov	w0, 0
.L924:
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	lsr	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	and	w0, w0, 3
	str	w0, [sp, 28]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	mvn	w0, w0
	and	w1, w0, 1
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	mov	w2, 2
	sub	w0, w2, w0
	neg	w1, w1
	and	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	add	sp, sp, 80
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
	bne	.L931
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L932
	mov	w0, 0
	b	.L934
.L932:
	ldr	x0, [sp, 24]
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 65
	b	.L934
.L931:
	ldr	x0, [sp, 16]
	rbit	x0, x0
	clz	x0, x0
	add	w0, w0, 1
.L934:
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
	beq	.L937
	str	wzr, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 4]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsr	w0, w1, w0
	str	w0, [sp, 24]
	b	.L938
.L937:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L939
	ldr	x0, [sp, 8]
	b	.L941
.L939:
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
.L938:
	ldr	x0, [sp, 24]
.L941:
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
	beq	.L944
	str	xzr, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 76]
	sub	w0, w2, w0
	lsr	x0, x1, x0
	str	x0, [sp, 32]
	b	.L945
.L944:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L946
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 24]
	b	.L948
.L946:
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
.L945:
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
.L948:
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
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 44]
	lsr	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 40]
	and	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 12]
	lsr	w1, w1, w0
	ldr	w2, [sp, 8]
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	mul	w0, w1, w0
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 16]
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 40]
	and	w2, w2, w0
	ldr	w0, [sp, 44]
	lsl	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 32]
	lsr	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 44]
	lsr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 40]
	and	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 8]
	lsr	w1, w1, w0
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	mul	w0, w1, w0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 16]
	ldr	w2, [sp, 24]
	ldr	w0, [sp, 40]
	and	w2, w2, w0
	ldr	w0, [sp, 44]
	lsl	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 20]
	mov	w2, w0
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 24]
	lsr	w0, w1, w0
	add	w0, w2, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	mov	w3, w0
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 12]
	lsr	w1, w1, w0
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 8]
	lsr	w0, w2, w0
	mul	w0, w1, w0
	add	w0, w3, w0
	str	w0, [sp, 20]
	ldr	x0, [sp, 16]
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
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 32
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	mov	x1, -1
	lsr	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 64]
	and	x1, x1, x0
	ldr	x2, [sp]
	ldr	x0, [sp, 64]
	and	x0, x2, x0
	mul	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 76]
	lsr	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 64]
	and	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 76]
	ldr	x1, [sp, 8]
	lsr	x1, x1, x0
	ldr	x2, [sp]
	ldr	x0, [sp, 64]
	and	x0, x2, x0
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 16]
	ldr	x2, [sp, 48]
	ldr	x0, [sp, 64]
	and	x2, x2, x0
	ldr	w0, [sp, 76]
	lsl	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 76]
	ldr	x1, [sp, 48]
	lsr	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 76]
	lsr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 64]
	and	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 76]
	ldr	x1, [sp]
	lsr	x1, x1, x0
	ldr	x2, [sp, 8]
	ldr	x0, [sp, 64]
	and	x0, x2, x0
	mul	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x2, [sp, 32]
	ldr	x0, [sp, 64]
	and	x2, x2, x0
	ldr	w0, [sp, 76]
	lsl	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	w0, [sp, 76]
	ldr	x1, [sp, 32]
	lsr	x0, x1, x0
	add	x0, x2, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x3, x0
	ldr	w0, [sp, 76]
	ldr	x1, [sp, 8]
	lsr	x1, x1, x0
	ldr	w0, [sp, 76]
	ldr	x2, [sp]
	lsr	x0, x2, x0
	mul	x0, x1, x0
	add	x0, x3, x0
	str	x0, [sp, 24]
	ldp	x0, x1, [sp, 16]
	add	sp, sp, 80
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
	ldp	x0, x1, [sp, 48]
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	w0, [sp, 28]
	mov	w1, w0
	ldr	w0, [sp, 24]
	eor	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 16
	ldr	w1, [sp, 44]
	eor	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	lsr	w0, w0, 8
	ldr	w1, [sp, 40]
	eor	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	lsr	w0, w0, 4
	ldr	w1, [sp, 36]
	eor	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	and	w0, w0, 15
	mov	w1, 27030
	asr	w0, w1, w0
	and	w0, w0, 1
	add	sp, sp, 48
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
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	lsr	w0, w0, 8
	ldr	w1, [sp, 56]
	eor	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	lsr	w0, w0, 4
	ldr	w1, [sp, 52]
	eor	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
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
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	lsr	w0, w0, 8
	ldr	w1, [sp, 24]
	eor	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	lsr	w0, w0, 4
	ldr	w1, [sp, 20]
	eor	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	lsr	x0, x0, 1
	and	x0, x0, 6148914691236517205
	ldr	x1, [sp, 56]
	sub	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	lsr	x0, x0, 2
	and	x1, x0, 3689348814741910323
	ldr	x0, [sp, 48]
	and	x0, x0, 3689348814741910323
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x1, x0, 4
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	and	x0, x0, 1085102592571150095
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	mov	w1, w0
	ldr	x0, [sp, 32]
	lsr	x0, x0, 32
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 16
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 8
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	and	w0, w0, 127
	add	sp, sp, 64
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 1
	and	w0, w0, 1431655765
	ldr	w1, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	lsr	w0, w0, 2
	and	w1, w0, 858993459
	ldr	w0, [sp, 40]
	and	w0, w0, 858993459
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	lsr	w1, w0, 4
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	and	w0, w0, 252645135
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	lsr	w0, w0, 16
	ldr	w1, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 8
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	and	w0, w0, 63
	add	sp, sp, 48
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
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x0, x1, [sp]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 80]
	ldr	x0, [sp, 88]
	lsl	x1, x0, 63
	ldr	x0, [sp, 80]
	lsr	x0, x0, 1
	orr	x0, x1, x0
	ldr	x1, [sp, 88]
	lsr	x1, x1, 1
	and	x2, x0, 6148914691236517205
	and	x0, x1, 6148914691236517205
	ldr	x3, [sp, 80]
	ldr	x1, [sp, 88]
	subs	x2, x3, x2
	sbc	x0, x1, x0
	mov	x1, x2
	str	x1, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	lsl	x1, x0, 62
	ldr	x0, [sp, 64]
	lsr	x0, x0, 2
	orr	x0, x1, x0
	ldr	x1, [sp, 72]
	lsr	x1, x1, 2
	and	x0, x0, 3689348814741910323
	and	x1, x1, 3689348814741910323
	ldr	x2, [sp, 64]
	and	x4, x2, 3689348814741910323
	ldr	x2, [sp, 72]
	and	x3, x2, 3689348814741910323
	mov	x2, x4
	adds	x2, x0, x2
	mov	x0, x3
	adc	x0, x1, x0
	mov	x1, x2
	str	x1, [sp, 48]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	lsl	x1, x0, 60
	ldr	x0, [sp, 48]
	lsr	x0, x0, 4
	orr	x0, x1, x0
	ldr	x1, [sp, 56]
	lsr	x1, x1, 4
	ldr	x3, [sp, 48]
	ldr	x2, [sp, 56]
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
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	lsr	w1, w0, 8
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	and	w0, w0, 255
	add	sp, sp, 96
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
.L990:
	ldr	w0, [sp, 4]
	ands	w0, w0, 1
	beq	.L987
	ldr	d30, [sp, 24]
	ldr	d31, [sp, 8]
	fmul	d31, d30, d31
	str	d31, [sp, 24]
.L987:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L995
	ldr	d31, [sp, 8]
	fmul	d31, d31, d31
	str	d31, [sp, 8]
	b	.L990
.L995:
	nop
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L991
	ldr	d31, [sp, 24]
	fmov	d30, 1.0e+0
	fdiv	d31, d30, d31
	b	.L993
.L991:
	ldr	d31, [sp, 24]
.L993:
	nop
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
.L1001:
	ldr	w0, [sp, 8]
	ands	w0, w0, 1
	beq	.L998
	ldr	s30, [sp, 28]
	ldr	s31, [sp, 12]
	fmul	s31, s30, s31
	str	s31, [sp, 28]
.L998:
	ldr	w0, [sp, 8]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L1006
	ldr	s31, [sp, 12]
	fmul	s31, s31, s31
	str	s31, [sp, 12]
	b	.L1001
.L1006:
	nop
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L1002
	ldr	s31, [sp, 28]
	fmov	s30, 1.0e+0
	fdiv	s31, s30, s31
	b	.L1004
.L1002:
	ldr	s31, [sp, 28]
.L1004:
	nop
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
	bcs	.L1009
	mov	w0, 0
	b	.L1014
.L1009:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bls	.L1011
	mov	w0, 2
	b	.L1014
.L1011:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bcs	.L1012
	mov	w0, 0
	b	.L1014
.L1012:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bls	.L1013
	mov	w0, 2
	b	.L1014
.L1013:
	mov	w0, 1
.L1014:
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
	bcs	.L1020
	mov	w0, 0
	b	.L1025
.L1020:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bls	.L1022
	mov	w0, 2
	b	.L1025
.L1022:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L1023
	mov	w0, 0
	b	.L1025
.L1023:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L1024
	mov	w0, 2
	b	.L1025
.L1024:
	mov	w0, 1
.L1025:
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
