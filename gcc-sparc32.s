	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	cmp	%g2, %g1
	bgeu	.L2
	 nop
	ld	[%fp-8], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	b	.L3
	 nop
.L4:
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ldub	[%g1], %g2
	ld	[%fp-4], %g1
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L3:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L4
	 nop
	b	.L5
	 nop
.L2:
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	cmp	%g2, %g1
	be	.L5
	 nop
	b	.L6
	 nop
.L7:
	ld	[%fp-8], %g2
	add	%g2, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 1, %g3
	st	%g3, [%fp-4]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L6:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L7
	 nop
.L5:
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	ld	[%fp+76], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+76]
	b	.L10
	 nop
.L12:
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+80]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L10:
	ld	[%fp+80], %g1
	cmp	%g1, 0
	be	.L11
	 nop
	ld	[%fp-8], %g1
	ldub	[%g1], %g2
	ld	[%fp-4], %g1
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+76], %g2
	cmp	%g2, %g1
	bne	.L12
	 nop
.L11:
	ld	[%fp+80], %g1
	cmp	%g1, 0
	be	.L13
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	b	.L14
	 nop
.L13:
	mov	0, %g1
.L14:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+72]
	b	.L16
	 nop
.L18:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L16:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L17
	 nop
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L18
	 nop
.L17:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L19
	 nop
	ld	[%fp-4], %g1
	b	.L21
	 nop
.L19:
	mov	0, %g1
.L21:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	b	.L23
	 nop
.L25:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L23:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L24
	 nop
	ld	[%fp-4], %g1
	ldub	[%g1], %g2
	ld	[%fp-8], %g1
	ldub	[%g1], %g1
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L25
	 nop
.L24:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L26
	 nop
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
	b	.L28
	 nop
.L26:
	mov	0, %g1
.L28:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	b	.L30
	 nop
.L31:
	ld	[%fp-8], %g2
	add	%g2, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 1, %g3
	st	%g3, [%fp-4]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L30:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L31
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+72]
	b	.L34
	 nop
.L36:
	ld	[%fp-4], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L34
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	b	.L35
	 nop
.L34:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L36
	 nop
	mov	0, %g1
.L35:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L38
	 nop
.L39:
	ld	[%fp+72], %g1
	mov	%g1, %g2
	ld	[%fp-4], %g1
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L38:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L39
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	b	.L42
	 nop
.L43:
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L42:
	ld	[%fp+72], %g1
	ldub	[%g1], %g2
	ld	[%fp+68], %g1
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L43
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+72]
	b	.L46
	 nop
.L48:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L46:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	be	.L47
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L48
	 nop
.L47:
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	save	%sp, -96, %sp
	mov	%i0, %g1
	st	%i1, [%fp+72]
.L53:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	ld	[%fp+72], %g3
	cmp	%g3, %g2
	bne	.L51
	 nop
	b	.L52
	 nop
.L51:
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	.L53
	 nop
	mov	0, %g1
.L52:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	b	.L55
	 nop
.L57:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
.L55:
	ld	[%fp+68], %g1
	ldub	[%g1], %g2
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	.L56
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L57
	 nop
.L56:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	016
strlen:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L60
	 nop
.L61:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L60:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L61
	 nop
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	sub	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L66
	 nop
	mov	0, %g1
	b	.L65
	 nop
.L68:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L66:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	.L67
	 nop
	ld	[%fp-8], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	.L67
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L67
	 nop
	ld	[%fp-4], %g1
	ldub	[%g1], %g2
	ld	[%fp-8], %g1
	ldub	[%g1], %g1
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L68
	 nop
.L67:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-8], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
.L65:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	b	.L70
	 nop
.L71:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	ldub	[%g1], %g2
	ld	[%fp-8], %g1
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	ld	[%fp-4], %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 2, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 2, %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, -2, %g1
	st	%g1, [%fp+76]
.L70:
	ld	[%fp+76], %g1
	cmp	%g1, 1
	bg	.L71
	 nop
	nop
	nop
	jmp	%i7+8
	 restore
	.size	swab, .-swab
	.align 4
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	mov	1, %g2
	cmp	%g1, 25
	bleu	.L73
	 nop
	mov	0, %g2
.L73:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	mov	1, %g2
	cmp	%g1, 127
	bleu	.L76
	 nop
	mov	0, %g2
.L76:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isascii, .-isascii
	.align 4
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 32
	be	.L79
	 nop
	ld	[%fp+68], %g1
	cmp	%g1, 9
	bne	.L80
	 nop
.L79:
	mov	1, %g1
	b	.L82
	 nop
.L80:
	mov	0, %g1
.L82:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isblank, .-isblank
	.align 4
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 31
	bleu	.L84
	 nop
	ld	[%fp+68], %g1
	cmp	%g1, 127
	bne	.L85
	 nop
.L84:
	mov	1, %g1
	b	.L87
	 nop
.L85:
	mov	0, %g1
.L87:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -48, %g1
	mov	1, %g2
	cmp	%g1, 9
	bleu	.L89
	 nop
	mov	0, %g2
.L89:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -33, %g1
	mov	1, %g2
	cmp	%g1, 93
	bleu	.L92
	 nop
	mov	0, %g2
.L92:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -97, %g1
	mov	1, %g2
	cmp	%g1, 25
	bleu	.L95
	 nop
	mov	0, %g2
.L95:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -32, %g1
	mov	1, %g2
	cmp	%g1, 94
	bleu	.L98
	 nop
	mov	0, %g2
.L98:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isprint, .-isprint
	.align 4
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 32
	be	.L101
	 nop
	ld	[%fp+68], %g1
	add	%g1, -9, %g1
	cmp	%g1, 4
	bgu	.L102
	 nop
.L101:
	mov	1, %g1
	b	.L104
	 nop
.L102:
	mov	0, %g1
.L104:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -65, %g1
	mov	1, %g2
	cmp	%g1, 25
	bleu	.L106
	 nop
	mov	0, %g2
.L106:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 31
	bleu	.L109
	 nop
	ld	[%fp+68], %g1
	add	%g1, -127, %g1
	cmp	%g1, 32
	bleu	.L109
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu	.L109
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 2
	bgu	.L110
	 nop
.L109:
	mov	1, %g1
	b	.L112
	 nop
.L110:
	mov	0, %g1
.L112:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -48, %g1
	mov	1, %g2
	cmp	%g1, 9
	bleu	.L114
	 nop
	mov	0, %g2
.L114:
	and	%g2, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 254
	bgu	.L117
	 nop
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	and	%g1, 127, %g1
	mov	1, %g2
	cmp	%g1, 32
	bgu	.L118
	 nop
	mov	0, %g2
.L118:
	and	%g2, 0xff, %g1
	b	.L119
	 nop
.L117:
	ld	[%fp+68], %g2
	sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g2, %g1
	bleu	.L120
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%g2, %g1, %g2
	sethi	%hi(46080), %g1
	or	%g1, 981, %g1
	cmp	%g2, %g1
	bleu	.L120
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-57344), %g1
	add	%g2, %g1, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bgu	.L121
	 nop
.L120:
	mov	1, %g1
	b	.L119
	 nop
.L121:
	ld	[%fp+68], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%g2, %g1, %g2
	sethi	%hi(1048576), %g1
	or	%g1, 3, %g1
	cmp	%g2, %g1
	bgu	.L122
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%g2, %g1, %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	cmp	%g2, %g1
	bne	.L123
	 nop
.L122:
	mov	0, %g1
	b	.L119
	 nop
.L123:
	mov	1, %g1
.L119:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L125
	 nop
	ld	[%fp+68], %g1
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	bgu	.L126
	 nop
.L125:
	mov	1, %g1
	b	.L128
	 nop
.L126:
	mov	0, %g1
.L128:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	and	%g1, 127, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	toascii, .-toascii
	.section	".rodata"
	.align 8
.LC0:
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L132
	 nop
	ldd	[%fp-8], %f8
	b	.L133
	 nop
.L132:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L134
	 nop
	ldd	[%fp-16], %f8
	b	.L133
	 nop
.L134:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L139
	 nop
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fsubd	%f10, %f8, %f8
	b	.L133
	 nop
.L139:
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
.L133:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	fdim, .-fdim
	.section	".rodata"
	.align 4
.LC1:
	.long	0
	.section	".text"
	.align 4
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %f9
	ld	[%fp+68], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L141
	 nop
	ld	[%fp+68], %f8
	b	.L142
	 nop
.L141:
	ld	[%fp+72], %f9
	ld	[%fp+72], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L143
	 nop
	ld	[%fp+72], %f8
	b	.L142
	 nop
.L143:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbule	.L148
	 nop
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fsubs	%f9, %f8, %f8
	b	.L142
	 nop
.L148:
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ld	[%g1], %f8
.L142:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L150
	 nop
	ldd	[%fp-16], %f8
	b	.L151
	 nop
.L150:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L152
	 nop
	ldd	[%fp-8], %f8
	b	.L151
	 nop
.L152:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L153
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L154
	 nop
	ldd	[%fp-16], %f8
	b	.L151
	 nop
.L154:
	ldd	[%fp-8], %f8
	b	.L151
	 nop
.L153:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L160
	 nop
	ldd	[%fp-16], %f8
	b	.L151
	 nop
.L160:
	ldd	[%fp-8], %f8
.L151:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %f9
	ld	[%fp+68], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L162
	 nop
	ld	[%fp+72], %f8
	b	.L163
	 nop
.L162:
	ld	[%fp+72], %f9
	ld	[%fp+72], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L164
	 nop
	ld	[%fp+68], %f8
	b	.L163
	 nop
.L164:
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+72], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L165
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L166
	 nop
	ld	[%fp+72], %f8
	b	.L163
	 nop
.L166:
	ld	[%fp+68], %f8
	b	.L163
	 nop
.L165:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbuge	.L172
	 nop
	ld	[%fp+72], %f8
	b	.L163
	 nop
.L172:
	ld	[%fp+68], %f8
.L163:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L174
	 nop
	ldd	[%fp-16], %f8
	b	.L175
	 nop
.L174:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L176
	 nop
	ldd	[%fp-8], %f8
	b	.L175
	 nop
.L176:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L177
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L178
	 nop
	ldd	[%fp-16], %f8
	b	.L175
	 nop
.L178:
	ldd	[%fp-8], %f8
	b	.L175
	 nop
.L177:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L184
	 nop
	ldd	[%fp-16], %f8
	b	.L175
	 nop
.L184:
	ldd	[%fp-8], %f8
.L175:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	fmaxl, .-fmaxl
	.align 4
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L186
	 nop
	ldd	[%fp-16], %f8
	b	.L187
	 nop
.L186:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L188
	 nop
	ldd	[%fp-8], %f8
	b	.L187
	 nop
.L188:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L189
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L190
	 nop
	ldd	[%fp-8], %f8
	b	.L187
	 nop
.L190:
	ldd	[%fp-16], %f8
	b	.L187
	 nop
.L189:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L196
	 nop
	ldd	[%fp-8], %f8
	b	.L187
	 nop
.L196:
	ldd	[%fp-16], %f8
.L187:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %f9
	ld	[%fp+68], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L198
	 nop
	ld	[%fp+72], %f8
	b	.L199
	 nop
.L198:
	ld	[%fp+72], %f9
	ld	[%fp+72], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L200
	 nop
	ld	[%fp+68], %f8
	b	.L199
	 nop
.L200:
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+72], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L201
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L202
	 nop
	ld	[%fp+68], %f8
	b	.L199
	 nop
.L202:
	ld	[%fp+72], %f8
	b	.L199
	 nop
.L201:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbuge	.L208
	 nop
	ld	[%fp+68], %f8
	b	.L199
	 nop
.L208:
	ld	[%fp+72], %f8
.L199:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L210
	 nop
	ldd	[%fp-16], %f8
	b	.L211
	 nop
.L210:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L212
	 nop
	ldd	[%fp-8], %f8
	b	.L211
	 nop
.L212:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L213
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L214
	 nop
	ldd	[%fp-8], %f8
	b	.L211
	 nop
.L214:
	ldd	[%fp-16], %f8
	b	.L211
	 nop
.L213:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L220
	 nop
	ldd	[%fp-8], %f8
	b	.L211
	 nop
.L220:
	ldd	[%fp-16], %f8
.L211:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	fminl, .-fminl
	.section	".rodata"
	.align 8
	.type	digits, #object
	.size	digits, 65
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 4
	.global l64a
	.type	l64a, #function
	.proc	0102
l64a:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-8]
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	st	%g1, [%fp-4]
	b	.L222
	 nop
.L223:
	ld	[%fp-8], %g1
	and	%g1, 63, %g1
	sethi	%hi(digits), %g2
	or	%g2, %lo(digits), %g2
	ldub	[%g2+%g1], %g2
	ld	[%fp-4], %g1
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	srl	%g1, 6, %g1
	st	%g1, [%fp-8]
.L222:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L223
	 nop
	ld	[%fp-4], %g1
	stb	%g0, [%g1]
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	l64a, .-l64a
	.local	seed
	.common	seed,8,8
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	add	%g1, -1, %g1
	mov	%g1, %g3
	mov	0, %g2
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	std	%g2, [%g1]
	nop
	jmp	%i7+8
	 restore
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -96, %sp
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	ldd	[%g1], %g2
	sethi	%hi(1481765888), %o2
	or	%o2, 45, %o2
	sethi	%hi(1284865024), %o3
	or	%o3, 813, %o3
	mov	%g2, %o0
	mov	%g3, %o1
	call	__muldi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mov	%g2, %i2
	mov	%g3, %i3
	addcc	%i3, 1, %g3
	addx	%i2, 0, %g2
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	std	%g2, [%g1]
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	ldd	[%g1], %g2
	srl	%g2, 1, %i5
	mov	0, %i4
	mov	%i5, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L229
	 nop
	ld	[%fp-4], %g1
	st	%g0, [%g1+4]
	ld	[%fp-4], %g1
	ld	[%g1+4], %g2
	ld	[%fp-4], %g1
	st	%g2, [%g1]
	jmp	%i7+8
	 restore
.L229:
	ld	[%fp-8], %g1
	ld	[%g1], %g2
	ld	[%fp-4], %g1
	st	%g2, [%g1]
	ld	[%fp-4], %g1
	ld	[%fp-8], %g2
	st	%g2, [%g1+4]
	ld	[%fp-8], %g1
	ld	[%fp-4], %g2
	st	%g2, [%g1]
	ld	[%fp-4], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L228
	 nop
	ld	[%fp-4], %g1
	ld	[%g1], %g1
	ld	[%fp-4], %g2
	st	%g2, [%g1+4]
.L228:
	jmp	%i7+8
	 restore
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L232
	 nop
	ld	[%fp-4], %g1
	ld	[%g1], %g1
	ld	[%fp-4], %g2
	ld	[%g2+4], %g2
	st	%g2, [%g1+4]
.L232:
	ld	[%fp-4], %g1
	ld	[%g1+4], %g1
	cmp	%g1, 0
	be	.L234
	 nop
	ld	[%fp-4], %g1
	ld	[%g1+4], %g1
	ld	[%fp-4], %g2
	ld	[%g2], %g2
	st	%g2, [%g1]
.L234:
	nop
	jmp	%i7+8
	 restore
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	ld	[%fp+80], %i3
	mov	%i3, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	mov	%i3, %i5
	mov	0, %i4
	srl	%i5, 29, %g1
	sll	%i4, 3, %g2
	or	%g1, %g2, %g2
	sll	%i5, 3, %g3
	ld	[%fp+72], %g1
	st	%g1, [%fp-12]
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-16]
	st	%g0, [%fp-4]
	b	.L236
	 nop
.L239:
	ld	[%fp-4], %o1
	mov	%i3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g2
	ld	[%fp+84], %g1
	mov	%g2, %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L237
	 nop
	ld	[%fp-4], %o1
	mov	%i3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g1
	b	.L238
	 nop
.L237:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L236:
	ld	[%fp-4], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	blu	.L239
	 nop
	ld	[%fp-16], %g1
	add	%g1, 1, %g2
	ld	[%fp+76], %g1
	st	%g2, [%g1]
	ld	[%fp-16], %o1
	mov	%i3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g1
	ld	[%fp+80], %o2
	ld	[%fp+68], %o1
	mov	%g1, %o0
	call	memcpy, 0
	 nop
	mov	%o0, %g1
.L238:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	ld	[%fp+80], %i3
	mov	%i3, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	mov	%i3, %i5
	mov	0, %i4
	srl	%i5, 29, %g1
	sll	%i4, 3, %g2
	or	%g1, %g2, %g2
	sll	%i5, 3, %g3
	ld	[%fp+72], %g1
	st	%g1, [%fp-12]
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-16]
	st	%g0, [%fp-4]
	b	.L241
	 nop
.L244:
	ld	[%fp-4], %o1
	mov	%i3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g2
	ld	[%fp+84], %g1
	mov	%g2, %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L242
	 nop
	ld	[%fp-4], %o1
	mov	%i3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g1
	b	.L243
	 nop
.L242:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L241:
	ld	[%fp-4], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	blu	.L244
	 nop
	mov	0, %g1
.L243:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	lfind, .-lfind
	.align 4
	.global abs
	.type	abs, #function
	.proc	04
abs:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	sra	%g1, 31, %g2
	ld	[%fp+68], %g1
	xor	%g2, %g1, %g1
	sub	%g1, %g2, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%g0, [%fp-4]
	st	%g0, [%fp-8]
	b	.L248
	 nop
.L249:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L248:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L249
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L250
	 nop
	cmp	%g1, 45
	bne	.L252
	 nop
	mov	1, %g1
	st	%g1, [%fp-8]
.L250:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L252
	 nop
.L253:
	ld	[%fp-4], %g2
	mov	%g2, %g1
	sll	%g1, 2, %g1
	add	%g1, %g2, %g1
	sll	%g1, 1, %g1
	mov	%g1, %g3
	ld	[%fp+68], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp+68]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	sub	%g3, %g1, %g1
	st	%g1, [%fp-4]
.L252:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L253
	 nop
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L254
	 nop
	ld	[%fp-4], %g1
	sub	%g0, %g1, %g1
	b	.L256
	 nop
.L254:
	ld	[%fp-4], %g1
.L256:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	04
atol:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%g0, [%fp-4]
	st	%g0, [%fp-8]
	b	.L258
	 nop
.L259:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L258:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L259
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L260
	 nop
	cmp	%g1, 45
	bne	.L262
	 nop
	mov	1, %g1
	st	%g1, [%fp-8]
.L260:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L262
	 nop
.L263:
	ld	[%fp-4], %g2
	mov	%g2, %g1
	sll	%g1, 2, %g1
	add	%g1, %g2, %g1
	sll	%g1, 1, %g1
	mov	%g1, %g3
	ld	[%fp+68], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp+68]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	sub	%g3, %g1, %g1
	st	%g1, [%fp-4]
.L262:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L263
	 nop
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L264
	 nop
	ld	[%fp-4], %g1
	sub	%g0, %g1, %g1
	b	.L266
	 nop
.L264:
	ld	[%fp-4], %g1
.L266:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	st	%g0, [%fp-12]
	b	.L268
	 nop
.L269:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L268:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L269
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L270
	 nop
	cmp	%g1, 45
	bne	.L272
	 nop
	mov	1, %g1
	st	%g1, [%fp-12]
.L270:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L272
	 nop
.L273:
	ldd	[%fp-8], %i0
	mov	%i0, %g2
	mov	%i1, %g3
	srl	%g3, 30, %g1
	sll	%g2, 2, %i4
	or	%g1, %i4, %i4
	sll	%g3, 2, %i5
	mov	%i4, %g2
	mov	%i5, %g3
	mov	%g2, %o4
	mov	%g3, %o5
	addcc	%o5, %i1, %g3
	addx	%o4, %i0, %g2
	srl	%g3, 31, %g1
	sll	%g2, 1, %i2
	or	%g1, %i2, %i2
	sll	%g3, 1, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	ld	[%fp+68], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp+68]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	mov	%g1, %l1
	sra	%g1, 31, %g1
	mov	%g1, %l0
	subcc	%i1, %l1, %g3
	subx	%i0, %l0, %g2
	std	%g2, [%fp-8]
.L272:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L273
	 nop
	ld	[%fp-12], %g1
	cmp	%g1, 0
	bne	.L274
	 nop
	ldd	[%fp-8], %i4
	subcc	%g0, %i5, %g3
	subx	%g0, %i4, %g2
	b	.L276
	 nop
.L274:
	ldd	[%fp-8], %g2
.L276:
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	b	.L278
	 nop
.L283:
	ld	[%fp+76], %g1
	srl	%g1, 1, %g1
	ld	[%fp+80], %o1
	mov	%g1, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-4]
	ld	[%fp+84], %g1
	ld	[%fp-4], %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	st	%o0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bge	.L279
	 nop
	ld	[%fp+76], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+76]
	b	.L278
	 nop
.L279:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	ble	.L281
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+80], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+76], %g1
	srl	%g1, 1, %g1
	ld	[%fp+76], %g2
	sub	%g2, %g1, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	b	.L278
	 nop
.L281:
	ld	[%fp-4], %g1
	b	.L282
	 nop
.L278:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L283
	 nop
	mov	0, %g1
.L282:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	ld	[%fp+72], %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	st	%g1, [%fp-8]
	b	.L285
	 nop
.L289:
	ld	[%fp-8], %g1
	sra	%g1, 1, %g1
	ld	[%fp+80], %o1
	mov	%g1, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-4], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-12]
	ld	[%fp+84], %g1
	ld	[%fp+88], %o2
	ld	[%fp-12], %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	st	%o0, [%fp-16]
	ld	[%fp-16], %g1
	cmp	%g1, 0
	bne	.L286
	 nop
	ld	[%fp-12], %g1
	b	.L287
	 nop
.L286:
	ld	[%fp-16], %g1
	cmp	%g1, 0
	ble	.L288
	 nop
	ld	[%fp-12], %g2
	ld	[%fp+80], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
.L288:
	ld	[%fp-8], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp-8]
.L285:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L289
	 nop
	mov	0, %g1
.L287:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global div
	.type	div, #function
	.proc	010
div:
	save	%sp, -104, %sp
	ld	[%fp+64], %i5
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %o1
	ld	[%fp+68], %o0
	call	.div, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i4
	ld	[%fp+68], %g1
	ld	[%fp+72], %o1
	mov	%g1, %o0
	call	.rem, 0
	 nop
	mov	%o0, %g1
	st	%i4, [%i5]
	st	%g1, [%i5+4]
	mov	%i5, %i0
	jmp	%i7+12
	 restore
	.size	div, .-div
	.align 4
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ld	[%fp-8], %g1
	sra	%g1, 31, %g3
	ld	[%fp-8], %g1
	sra	%g1, 31, %g2
	ld	[%fp-8], %g1
	xor	%g1, %g2, %i4
	ld	[%fp-4], %g1
	xor	%g1, %g3, %i5
	mov	%i4, %i0
	mov	%i5, %i1
	subcc	%i1, %g3, %i5
	subx	%i0, %g2, %i4
	mov	%i4, %g2
	mov	%i5, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	imaxabs, .-imaxabs
	.align 4
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -128, %sp
	ld	[%fp+64], %i5
	std	%i0, [%fp-24]
	std	%i2, [%fp-32]
	ldd	[%fp-32], %o2
	ldd	[%fp-24], %o0
	call	__divdi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mov	%g2, %i2
	mov	%g3, %i3
	ldd	[%fp-24], %g2
	ldd	[%fp-32], %o2
	mov	%g2, %o0
	mov	%g3, %o1
	call	__moddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	std	%i2, [%i5]
	std	%g2, [%i5+8]
	mov	%i5, %i0
	jmp	%i7+12
	 restore
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	04
labs:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	sra	%g1, 31, %g2
	ld	[%fp+68], %g1
	xor	%g2, %g1, %g1
	sub	%g1, %g2, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	labs, .-labs
	.align 4
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	save	%sp, -104, %sp
	ld	[%fp+64], %i5
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %o1
	ld	[%fp+68], %o0
	call	.div, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i4
	ld	[%fp+68], %g1
	ld	[%fp+72], %o1
	mov	%g1, %o0
	call	.rem, 0
	 nop
	mov	%o0, %g1
	st	%i4, [%i5]
	st	%g1, [%i5+4]
	mov	%i5, %i0
	jmp	%i7+12
	 restore
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ld	[%fp-8], %g1
	sra	%g1, 31, %g3
	ld	[%fp-8], %g1
	sra	%g1, 31, %g2
	ld	[%fp-8], %g1
	xor	%g1, %g2, %i4
	ld	[%fp-4], %g1
	xor	%g1, %g3, %i5
	mov	%i4, %i0
	mov	%i5, %i1
	subcc	%i1, %g3, %i5
	subx	%i0, %g2, %i4
	mov	%i4, %g2
	mov	%i5, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	llabs, .-llabs
	.align 4
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -128, %sp
	ld	[%fp+64], %i5
	std	%i0, [%fp-24]
	std	%i2, [%fp-32]
	ldd	[%fp-32], %o2
	ldd	[%fp-24], %o0
	call	__divdi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mov	%g2, %i2
	mov	%g3, %i3
	ldd	[%fp-24], %g2
	ldd	[%fp-32], %o2
	mov	%g2, %o0
	mov	%g3, %o1
	call	__moddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	std	%i2, [%i5]
	std	%g2, [%i5+8]
	mov	%i5, %i0
	jmp	%i7+12
	 restore
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	b	.L305
	 nop
.L307:
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
.L305:
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L306
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L307
	 nop
.L306:
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L308
	 nop
	ld	[%fp+68], %g1
	b	.L310
	 nop
.L308:
	mov	0, %g1
.L310:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	b	.L312
	 nop
.L314:
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+72]
.L312:
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	.L313
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L313
	 nop
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L314
	 nop
.L313:
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	.L315
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	mov	1, %g3
	cmp	%g2, %g1
	bg	.L316
	 nop
	mov	0, %g3
.L316:
	and	%g3, 0xff, %g1
	b	.L318
	 nop
.L315:
	mov	-1, %g1
.L318:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	nop
.L320:
	ld	[%fp+72], %g2
	add	%g2, 4, %g1
	st	%g1, [%fp+72]
	ld	[%fp+68], %g1
	add	%g1, 4, %g3
	st	%g3, [%fp+68]
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L320
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	016
wcslen:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L323
	 nop
.L324:
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
.L323:
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L324
	 nop
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	sub	%g2, %g1, %g1
	sra	%g1, 2, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	b	.L327
	 nop
.L329:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+72]
.L327:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L328
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	.L328
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L328
	 nop
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L329
	 nop
.L328:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L330
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	.L331
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	mov	1, %g3
	cmp	%g2, %g1
	bg	.L332
	 nop
	mov	0, %g3
.L332:
	and	%g3, 0xff, %g1
	b	.L335
	 nop
.L331:
	mov	-1, %g1
	b	.L335
	 nop
.L330:
	mov	0, %g1
.L335:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	b	.L337
	 nop
.L339:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
.L337:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L338
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L339
	 nop
.L338:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L340
	 nop
	ld	[%fp+68], %g1
	b	.L342
	 nop
.L340:
	mov	0, %g1
.L342:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	b	.L344
	 nop
.L346:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+72]
.L344:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L345
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	be	.L346
	 nop
.L345:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L347
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	.L348
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	mov	1, %g3
	cmp	%g2, %g1
	bg	.L349
	 nop
	mov	0, %g3
.L349:
	and	%g3, 0xff, %g1
	b	.L352
	 nop
.L348:
	mov	-1, %g1
	b	.L352
	 nop
.L347:
	mov	0, %g1
.L352:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L354
	 nop
.L355:
	ld	[%fp+72], %g2
	add	%g2, 4, %g1
	st	%g1, [%fp+72]
	ld	[%fp+68], %g1
	add	%g1, 4, %g3
	st	%g3, [%fp+68]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L354:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L355
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	bne	.L358
	 nop
	ld	[%fp+68], %g1
	b	.L359
	 nop
.L358:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g2
	ld	[%fp+76], %g1
	sll	%g1, 2, %g1
	cmp	%g2, %g1
	bgeu	.L364
	 nop
	b	.L361
	 nop
.L362:
	ld	[%fp+76], %g1
	sll	%g1, 2, %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g2
	ld	[%fp+76], %g1
	sll	%g1, 2, %g1
	ld	[%fp+68], %g3
	add	%g3, %g1, %g1
	ld	[%g2], %g2
	st	%g2, [%g1]
.L361:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L362
	 nop
	b	.L363
	 nop
.L365:
	ld	[%fp+72], %g2
	add	%g2, 4, %g1
	st	%g1, [%fp+72]
	ld	[%fp+68], %g1
	add	%g1, 4, %g3
	st	%g3, [%fp+68]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L364:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L365
	 nop
.L363:
	ld	[%fp-4], %g1
.L359:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L367
	 nop
.L368:
	ld	[%fp+68], %g1
	add	%g1, 4, %g2
	st	%g2, [%fp+68]
	ld	[%fp+72], %g2
	st	%g2, [%g1]
.L367:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L368
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bgeu	.L371
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-8]
	b	.L372
	 nop
.L373:
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	ldub	[%g1], %g2
	ld	[%fp-8], %g1
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L372:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L373
	 nop
	b	.L377
	 nop
.L371:
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	be	.L377
	 nop
	b	.L375
	 nop
.L376:
	ld	[%fp-4], %g2
	add	%g2, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	add	%g1, 1, %g3
	st	%g3, [%fp-8]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L375:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L376
	 nop
.L377:
	nop
	jmp	%i7+8
	 restore
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	st	%i2, [%fp+76]
	ldd	[%fp-8], %g2
	ld	[%fp+76], %g1
	and	%g1, 32, %g1
	cmp	%g1, 0
	be	.L379
	 nop
	ld	[%fp+76], %g1
	sll	%g3, %g1, %o4
	mov	0, %o5
	b	.L380
	 nop
.L379:
	srl	%g3, 1, %g4
	ld	[%fp+76], %g1
	xnor	%g0, %g1, %g1
	srl	%g4, %g1, %g1
	ld	[%fp+76], %g4
	sll	%g2, %g4, %o4
	or	%g1, %o4, %o4
	ld	[%fp+76], %g1
	sll	%g3, %g1, %o5
.L380:
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	and	%g1, 32, %g1
	cmp	%g1, 0
	be	.L381
	 nop
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	srl	%g2, %g1, %i5
	mov	0, %i4
	b	.L382
	 nop
.L381:
	sll	%g2, 1, %g4
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	xnor	%g0, %g1, %g1
	sll	%g4, %g1, %g4
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	srl	%g3, %g1, %i5
	or	%g4, %i5, %i5
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	srl	%g2, %g1, %i4
.L382:
	or	%i4, %o4, %o2
	or	%i5, %o5, %o3
	mov	%o2, %i4
	mov	%o3, %i5
	mov	%i4, %g2
	mov	%i5, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	st	%i2, [%fp+76]
	ldd	[%fp-8], %g2
	ld	[%fp+76], %g1
	and	%g1, 32, %g1
	cmp	%g1, 0
	be	.L385
	 nop
	ld	[%fp+76], %g1
	srl	%g2, %g1, %o5
	mov	0, %o4
	b	.L386
	 nop
.L385:
	sll	%g2, 1, %g4
	ld	[%fp+76], %g1
	xnor	%g0, %g1, %g1
	sll	%g4, %g1, %g1
	ld	[%fp+76], %g4
	srl	%g3, %g4, %o5
	or	%g1, %o5, %o5
	ld	[%fp+76], %g1
	srl	%g2, %g1, %o4
.L386:
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	and	%g1, 32, %g1
	cmp	%g1, 0
	be	.L387
	 nop
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	sll	%g3, %g1, %i4
	mov	0, %i5
	b	.L388
	 nop
.L387:
	srl	%g3, 1, %g4
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	xnor	%g0, %g1, %g1
	srl	%g4, %g1, %g4
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	sll	%g2, %g1, %i4
	or	%g4, %i4, %i4
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	sll	%g3, %g1, %i5
.L388:
	or	%i4, %o4, %o2
	or	%i5, %o5, %o3
	mov	%o2, %i4
	mov	%o3, %i5
	mov	%i4, %g2
	mov	%i5, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	rotr64, .-rotr64
	.align 4
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sll	%g2, %g1, %g3
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	and	%g1, 31, %g1
	srl	%g2, %g1, %g1
	or	%g1, %g3, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotl32, .-rotl32
	.align 4
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	srl	%g2, %g1, %g3
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	and	%g1, 31, %g1
	sll	%g2, %g1, %g1
	or	%g1, %g3, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotr32, .-rotr32
	.align 4
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	016
rotl_sz:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sll	%g2, %g1, %g3
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	and	%g1, 31, %g1
	srl	%g2, %g1, %g1
	or	%g1, %g3, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	016
rotr_sz:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	srl	%g2, %g1, %g3
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	and	%g1, 31, %g1
	sll	%g2, %g1, %g1
	or	%g1, %g3, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	save	%sp, -96, %sp
	mov	%i0, %g1
	st	%i1, [%fp+72]
	sth	%g1, [%fp+68]
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+72], %g1
	sll	%g2, %g1, %g1
	mov	%g1, %g4
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	16, %g3
	ld	[%fp+72], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	or	%g4, %g1, %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotl16, .-rotl16
	.align 4
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	save	%sp, -96, %sp
	mov	%i0, %g1
	st	%i1, [%fp+72]
	sth	%g1, [%fp+68]
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+72], %g1
	srl	%g2, %g1, %g1
	mov	%g1, %g4
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	16, %g3
	ld	[%fp+72], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	or	%g4, %g1, %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotr16, .-rotr16
	.align 4
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	save	%sp, -96, %sp
	mov	%i0, %g1
	st	%i1, [%fp+72]
	stb	%g1, [%fp+68]
	ldub	[%fp+68], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+72], %g1
	sll	%g2, %g1, %g1
	mov	%g1, %g4
	ldub	[%fp+68], %g1
	and	%g1, 0xff, %g2
	mov	8, %g3
	ld	[%fp+72], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	or	%g4, %g1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	save	%sp, -96, %sp
	mov	%i0, %g1
	st	%i1, [%fp+72]
	stb	%g1, [%fp+68]
	ldub	[%fp+68], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+72], %g1
	srl	%g2, %g1, %g1
	mov	%g1, %g4
	ldub	[%fp+68], %g1
	and	%g1, 0xff, %g2
	mov	8, %g3
	ld	[%fp+72], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	or	%g4, %g1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rotr8, .-rotr8
	.align 4
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	save	%sp, -104, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+68]
	mov	255, %g1
	st	%g1, [%fp-4]
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sll	%g1, 8, %g1
	and	%g2, %g1, %g1
	srl	%g1, 8, %g1
	mov	%g1, %g2
	ld	[%fp-4], %g1
	mov	%g1, %g3
	lduh	[%fp+68], %g1
	and	%g1, %g3, %g1
	sll	%g1, 8, %g1
	or	%g2, %g1, %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	mov	255, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	sll	%g1, 24, %g2
	ld	[%fp+68], %g1
	and	%g2, %g1, %g1
	srl	%g1, 24, %g2
	ld	[%fp-4], %g1
	sll	%g1, 16, %g3
	ld	[%fp+68], %g1
	and	%g3, %g1, %g1
	srl	%g1, 8, %g1
	or	%g2, %g1, %g2
	ld	[%fp-4], %g1
	sll	%g1, 8, %g3
	ld	[%fp+68], %g1
	and	%g3, %g1, %g1
	sll	%g1, 8, %g1
	or	%g2, %g1, %g2
	ld	[%fp+68], %g3
	ld	[%fp-4], %g1
	and	%g3, %g1, %g1
	sll	%g1, 24, %g1
	or	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	save	%sp, -280, %sp
	std	%i0, [%fp-16]
	mov	0, %g2
	mov	255, %g3
	std	%g2, [%fp-8]
	ld	[%fp-4], %g1
	sll	%g1, 24, %i4
	mov	0, %i5
	ld	[%fp-16], %g1
	and	%g1, %i4, %i2
	ld	[%fp-12], %g1
	and	%g1, %i5, %i3
	srl	%i2, 24, %g1
	st	%g1, [%fp-60]
	st	%g0, [%fp-64]
	ld	[%fp-4], %g1
	sll	%g1, 16, %o2
	mov	0, %o3
	ld	[%fp-16], %g1
	and	%g1, %o2, %g1
	st	%g1, [%fp-72]
	ld	[%fp-12], %g1
	and	%g1, %o3, %g1
	st	%g1, [%fp-68]
	ld	[%fp-72], %g1
	srl	%g1, 8, %l1
	mov	0, %l0
	ldd	[%fp-64], %g2
	mov	%g2, %g1
	or	%g1, %l0, %g1
	st	%g1, [%fp-80]
	mov	%g3, %g1
	or	%g1, %l1, %g1
	st	%g1, [%fp-76]
	ld	[%fp-4], %g1
	sll	%g1, 8, %l6
	mov	0, %l7
	ld	[%fp-16], %g1
	and	%g1, %l6, %o0
	ld	[%fp-12], %g1
	and	%g1, %l7, %o1
	sll	%o0, 8, %g1
	srl	%o1, 24, %o5
	or	%g1, %o5, %o5
	srl	%o0, 24, %o4
	ldd	[%fp-80], %g2
	mov	%g2, %g1
	or	%g1, %o4, %g1
	st	%g1, [%fp-88]
	mov	%g3, %g1
	or	%g1, %o5, %g1
	st	%g1, [%fp-84]
	ld	[%fp-4], %g1
	sll	%g1, 0, %g1
	st	%g1, [%fp-96]
	st	%g0, [%fp-92]
	ld	[%fp-16], %g1
	ldd	[%fp-96], %g2
	mov	%g2, %g4
	and	%g1, %g4, %l4
	ld	[%fp-12], %g1
	mov	%g3, %g2
	and	%g1, %g2, %l5
	sll	%l4, 24, %g1
	srl	%l5, 8, %l3
	or	%g1, %l3, %l3
	srl	%l4, 8, %l2
	ldd	[%fp-88], %g2
	mov	%g2, %g1
	or	%g1, %l2, %g1
	st	%g1, [%fp-104]
	mov	%g3, %g1
	or	%g1, %l3, %g1
	st	%g1, [%fp-100]
	ld	[%fp-4], %g1
	srl	%g1, 8, %g2
	ld	[%fp-8], %g1
	sll	%g1, 24, %g1
	st	%g1, [%fp-24]
	ld	[%fp-24], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-4], %g1
	sll	%g1, 24, %g1
	st	%g1, [%fp-20]
	ld	[%fp-16], %g1
	ldd	[%fp-24], %g2
	mov	%g2, %g4
	and	%g1, %g4, %g1
	st	%g1, [%fp-112]
	ld	[%fp-12], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	st	%g1, [%fp-108]
	ldd	[%fp-112], %g2
	mov	%g3, %g1
	srl	%g1, 24, %g1
	mov	%g2, %g4
	sll	%g4, 8, %g4
	st	%g4, [%fp-32]
	ld	[%fp-32], %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-32]
	mov	%g3, %g1
	sll	%g1, 8, %g1
	st	%g1, [%fp-28]
	ldd	[%fp-104], %i4
	mov	%i4, %g1
	ldd	[%fp-32], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-120]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-116]
	ld	[%fp-4], %g1
	srl	%g1, 16, %g1
	ld	[%fp-8], %g2
	sll	%g2, 16, %g2
	st	%g2, [%fp-40]
	ld	[%fp-40], %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-40]
	ld	[%fp-4], %g1
	sll	%g1, 16, %g1
	st	%g1, [%fp-36]
	ld	[%fp-16], %g1
	ldd	[%fp-40], %g2
	mov	%g2, %g4
	and	%g1, %g4, %g1
	st	%g1, [%fp-128]
	ld	[%fp-12], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	st	%g1, [%fp-124]
	ldd	[%fp-128], %g2
	mov	%g3, %g1
	srl	%g1, 8, %g1
	mov	%g2, %g4
	sll	%g4, 24, %g4
	st	%g4, [%fp-48]
	ld	[%fp-48], %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-48]
	mov	%g3, %g1
	sll	%g1, 24, %g1
	st	%g1, [%fp-44]
	ldd	[%fp-120], %i4
	mov	%i4, %g1
	ldd	[%fp-48], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-136]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-132]
	ld	[%fp-4], %g1
	srl	%g1, 24, %g1
	ld	[%fp-8], %g2
	sll	%g2, 8, %g2
	st	%g2, [%fp-56]
	ld	[%fp-56], %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-56]
	ld	[%fp-4], %g1
	sll	%g1, 8, %g1
	st	%g1, [%fp-52]
	ld	[%fp-16], %g1
	ldd	[%fp-56], %g2
	mov	%g2, %g4
	and	%g1, %g4, %g1
	st	%g1, [%fp-144]
	ld	[%fp-12], %g1
	mov	%g3, %g2
	and	%g1, %g2, %g1
	st	%g1, [%fp-140]
	ld	[%fp-140], %g1
	sll	%g1, 8, %g1
	st	%g1, [%fp-152]
	st	%g0, [%fp-148]
	ldd	[%fp-136], %i4
	mov	%i4, %g1
	ldd	[%fp-152], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-160]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-156]
	ld	[%fp-16], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-168]
	ld	[%fp-12], %g2
	ld	[%fp-4], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-164]
	ld	[%fp-164], %g1
	sll	%g1, 24, %g1
	st	%g1, [%fp-176]
	st	%g0, [%fp-172]
	ldd	[%fp-160], %i4
	mov	%i4, %g1
	ldd	[%fp-176], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-184]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-180]
	ldd	[%fp-184], %g2
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%g0, [%fp-4]
	b	.L413
	 nop
.L416:
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L414
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	b	.L415
	 nop
.L414:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L413:
	ld	[%fp-4], %g1
	cmp	%g1, 31
	bleu	.L416
	 nop
	mov	0, %g1
.L415:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -96, %sp
	mov	%i0, %g1
	cmp	%g1, 0
	bne	.L418
	 nop
	mov	0, %g1
	b	.L419
	 nop
.L418:
	mov	1, %i5
	b	.L420
	 nop
.L421:
	sra	%g1, 1, %g1
	add	%i5, 1, %i5
.L420:
	and	%g1, 1, %g2
	cmp	%g2, 0
	be	.L421
	 nop
	mov	%i5, %g1
.L419:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	libiberty_ffs, .-libiberty_ffs
	.section	".rodata"
	.align 4
.LC2:
	.long	-8388609
	.align 4
.LC3:
	.long	2139095039
	.section	".text"
	.align 4
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %f9
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %g1
	ld	[%g1], %f8
	fcmpes	%f9, %f8
	nop
	fbl	.L423
	 nop
	ld	[%fp+68], %f9
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ld	[%g1], %f8
	fcmpes	%f9, %f8
	nop
	fbule	.L428
	 nop
.L423:
	mov	1, %g1
	b	.L427
	 nop
.L428:
	mov	0, %g1
.L427:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	gl_isinff, .-gl_isinff
	.section	".rodata"
	.align 8
.LC4:
	.long	-1048577
	.long	-1
	.align 8
.LC5:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f10
	sethi	%hi(.LC4), %g1
	or	%g1, %lo(.LC4), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L430
	 nop
	ldd	[%fp-8], %f10
	sethi	%hi(.LC5), %g1
	or	%g1, %lo(.LC5), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L435
	 nop
.L430:
	mov	1, %g1
	b	.L434
	 nop
.L435:
	mov	0, %g1
.L434:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	gl_isinfd, .-gl_isinfd
	.section	".rodata"
	.align 8
.LC6:
	.long	-1048577
	.long	-1
	.align 8
.LC7:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f10
	sethi	%hi(.LC6), %g1
	or	%g1, %lo(.LC6), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L437
	 nop
	ldd	[%fp-8], %f10
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L442
	 nop
.L437:
	mov	1, %g1
	b	.L441
	 nop
.L442:
	mov	0, %g1
.L441:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %f8
	fitod	%f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	nop
	jmp	%i7+8
	 restore
	.size	_Qp_itoq, .-_Qp_itoq
	.section	".rodata"
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1073741824
	.section	".text"
	.align 4
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %f9
	ld	[%fp+68], %f8
	fcmps	%f9, %f8
	nop
	fbu	.L445
	 nop
	ld	[%fp+68], %f8
	fadds	%f8, %f8, %f8
	ld	[%fp+68], %f9
	fcmps	%f9, %f8
	nop
	fbe	.L445
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L446
	 nop
	sethi	%hi(.LC8), %g1
	or	%g1, %lo(.LC8), %g1
	ld	[%g1], %f8
	b	.L447
	 nop
.L446:
	sethi	%hi(.LC9), %g1
	or	%g1, %lo(.LC9), %g1
	ld	[%g1], %f8
.L447:
	st	%f8, [%fp-4]
.L450:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L448
	 nop
	ld	[%fp+68], %f9
	ld	[%fp-4], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp+68]
.L448:
	ld	[%fp+72], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	be	.L452
	 nop
	ld	[%fp-4], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp-4]
	b	.L450
	 nop
.L452:
	nop
.L445:
	ld	[%fp+68], %f8
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	ldexpf, .-ldexpf
	.section	".rodata"
	.align 8
.LC10:
	.long	1071644672
	.long	0
	.align 8
.LC11:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	st	%i2, [%fp+76]
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbu	.L454
	 nop
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f8
	ldd	[%fp-16], %f10
	fcmpd	%f10, %f8
	nop
	fbe	.L454
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bge	.L455
	 nop
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %g1
	ldd	[%g1], %f8
	b	.L456
	 nop
.L455:
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %g1
	ldd	[%g1], %f8
.L456:
	std	%f8, [%fp-8]
.L459:
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L457
	 nop
	ldd	[%fp-16], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-16]
.L457:
	ld	[%fp+76], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L461
	 nop
	ldd	[%fp-8], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp-8]
	b	.L459
	 nop
.L461:
	nop
.L454:
	ldd	[%fp-16], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	ldexp, .-ldexp
	.section	".rodata"
	.align 8
.LC12:
	.long	1071644672
	.long	0
	.align 8
.LC13:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	st	%i2, [%fp+76]
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbu	.L463
	 nop
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f8
	ldd	[%fp-16], %f10
	fcmpd	%f10, %f8
	nop
	fbe	.L463
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bge	.L464
	 nop
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %g1
	ldd	[%g1], %f8
	b	.L465
	 nop
.L464:
	sethi	%hi(.LC13), %g1
	or	%g1, %lo(.LC13), %g1
	ldd	[%g1], %f8
.L465:
	std	%f8, [%fp-8]
.L468:
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L466
	 nop
	ldd	[%fp-16], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-16]
.L466:
	ld	[%fp+76], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L470
	 nop
	ldd	[%fp-8], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp-8]
	b	.L468
	 nop
.L470:
	nop
.L463:
	ldd	[%fp-16], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	st	%g1, [%fp-4]
	ld	[%fp+68], %g1
	st	%g1, [%fp-8]
	b	.L472
	 nop
.L473:
	ld	[%fp-4], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp-4]
	ldub	[%g1], %g3
	ld	[%fp-8], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp-8]
	ldub	[%g1], %g2
	xor	%g3, %g2, %g2
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L472:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L473
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %o0
	call	strlen, 0
	 nop
	mov	%o0, %g2
	ld	[%fp+68], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-4]
	b	.L476
	 nop
.L478:
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L476:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L477
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g2
	ld	[%fp-4], %g1
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L478
	 nop
.L477:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L479
	 nop
	ld	[%fp-4], %g1
	stb	%g0, [%g1]
.L479:
	ld	[%fp+68], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	016
strnlen:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	b	.L482
	 nop
.L487:
	nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L482:
	ld	[%fp-4], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	bgeu	.L483
	 nop
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L487
	 nop
.L483:
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	b	.L489
	 nop
.L493:
	ld	[%fp+72], %g1
	st	%g1, [%fp-4]
	b	.L490
	 nop
.L492:
	ld	[%fp-4], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp-4]
	ldub	[%g1], %g2
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	.L490
	 nop
	ld	[%fp+68], %g1
	b	.L491
	 nop
.L490:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L492
	 nop
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L489:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L493
	 nop
	mov	0, %g1
.L491:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	save	%sp, -104, %sp
	mov	%i0, %g1
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
.L496:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	ld	[%fp+72], %g3
	cmp	%g3, %g2
	bne	.L495
	 nop
	st	%g1, [%fp-4]
.L495:
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	.L496
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %o0
	call	strlen, 0
	 nop
	st	%o0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L501
	 nop
	ld	[%fp+68], %g1
	b	.L500
	 nop
.L503:
	ld	[%fp-8], %o2
	ld	[%fp+72], %o1
	ld	[%fp-4], %o0
	call	strncmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L502
	 nop
	ld	[%fp-4], %g1
	b	.L500
	 nop
.L502:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L501:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o1
	ld	[%fp-4], %o0
	call	strchr, 0
	 nop
	st	%o0, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L503
	 nop
	mov	0, %g1
.L500:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strstr, .-strstr
	.section	".rodata"
	.align 8
.LC14:
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L505
	 nop
	ldd	[%fp-16], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbg	.L507
	 nop
.L505:
	ldd	[%fp-8], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L508
	 nop
	ldd	[%fp-16], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L508
	 nop
.L507:
	ldd	[%fp-8], %f8
	fnegs	%f8, %f8
	b	.L511
	 nop
.L508:
	ldd	[%fp-8], %f8
.L511:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	ld	[%fp+72], %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+68], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+80], %g1
	cmp	%g1, 0
	bne	.L515
	 nop
	ld	[%fp+68], %g1
	b	.L516
	 nop
.L515:
	ld	[%fp+72], %g2
	ld	[%fp+80], %g1
	cmp	%g2, %g1
	addx	%g0, 0, %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	.L517
	 nop
	mov	0, %g1
	b	.L516
	 nop
.L517:
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L518
	 nop
.L520:
	ld	[%fp-4], %g1
	ldub	[%g1], %g2
	ld	[%fp+76], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	.L519
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g2
	ld	[%fp+76], %g1
	add	%g1, 1, %g3
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	mov	%g1, %o2
	mov	%g3, %o1
	mov	%g2, %o0
	call	memcmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L519
	 nop
	ld	[%fp-4], %g1
	b	.L516
	 nop
.L519:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L518:
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bleu	.L520
	 nop
	mov	0, %g1
.L516:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %o2
	ld	[%fp+72], %o1
	ld	[%fp+68], %o0
	call	memcpy, 0
	 nop
	mov	%o0, %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	mempcpy, .-mempcpy
	.section	".rodata"
	.align 8
.LC15:
	.long	0
	.long	0
	.align 8
.LC16:
	.long	1072693248
	.long	0
	.align 8
.LC17:
	.long	1073741824
	.long	0
	.align 8
.LC18:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	st	%i2, [%fp+76]
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-16], %f10
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L524
	 nop
	ldd	[%fp-16], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-16]
	mov	1, %g1
	st	%g1, [%fp-4]
.L524:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbul	.L539
	 nop
	b	.L528
	 nop
.L529:
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ldd	[%fp-16], %f10
	sethi	%hi(.LC17), %g1
	or	%g1, %lo(.LC17), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%fp-16]
.L528:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbge	.L529
	 nop
	b	.L530
	 nop
.L539:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC18), %g1
	or	%g1, %lo(.LC18), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L530
	 nop
	ldd	[%fp-16], %f10
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %g1
	ldd	[%g1], %f8
	fcmpd	%f10, %f8
	nop
	fbe	.L530
	 nop
	b	.L532
	 nop
.L533:
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f8
	std	%f8, [%fp-16]
.L532:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC18), %g1
	or	%g1, %lo(.LC18), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L533
	 nop
.L530:
	ld	[%fp+76], %g1
	ld	[%fp-8], %g2
	st	%g2, [%g1]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L534
	 nop
	ldd	[%fp-16], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-16]
.L534:
	ldd	[%fp-16], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -128, %sp
	std	%i0, [%fp-24]
	std	%i2, [%fp-32]
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	ldd	[%fp-24], %i2
	std	%i2, [%fp-16]
	b	.L541
	 nop
.L544:
	ld	[%fp-16], %g1
	and	%g1, 0, %o4
	ld	[%fp-12], %g1
	and	%g1, 1, %o5
	mov	%o4, %g1
	or	%g1, %o5, %g1
	cmp	%g1, 0
	be	.L542
	 nop
	ldd	[%fp-8], %o2
	ldd	[%fp-32], %i0
	addcc	%o3, %i1, %i3
	addx	%o2, %i0, %i2
	std	%i2, [%fp-8]
.L542:
	ld	[%fp-28], %g1
	srl	%g1, 31, %g1
	ld	[%fp-32], %g4
	sll	%g4, 1, %g2
	or	%g1, %g2, %g2
	ld	[%fp-28], %g1
	sll	%g1, 1, %g3
	std	%g2, [%fp-32]
	ld	[%fp-16], %g1
	sll	%g1, 31, %g1
	ld	[%fp-12], %g4
	srl	%g4, 1, %i5
	or	%g1, %i5, %i5
	ld	[%fp-16], %g1
	srl	%g1, 1, %i4
	std	%i4, [%fp-16]
.L541:
	ld	[%fp-16], %g1
	ld	[%fp-12], %g4
	or	%g1, %g4, %g1
	cmp	%g1, 0
	bne	.L544
	 nop
	ldd	[%fp-8], %g2
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	mov	1, %g1
	st	%g1, [%fp-4]
	st	%g0, [%fp-8]
	b	.L547
	 nop
.L549:
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp-4]
.L547:
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L550
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L550
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L549
	 nop
	b	.L550
	 nop
.L552:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L551
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L551:
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L550:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L552
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L553
	 nop
	ld	[%fp+68], %g1
	b	.L554
	 nop
.L553:
	ld	[%fp-8], %g1
.L554:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -104, %sp
	mov	%i0, %g1
	stb	%g1, [%fp+68]
	ldub	[%fp+68], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bge	.L556
	 nop
	ldub	[%fp+68], %g1
	xnor	%g0, %g1, %g1
	stb	%g1, [%fp+68]
.L556:
	ldub	[%fp+68], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L557
	 nop
	mov	7, %g1
	b	.L558
	 nop
.L557:
	ldub	[%fp+68], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sll	%g1, 8, %g1
	mov	%g1, %o0
	call	__clzsi2, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
.L558:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	ld	[%fp-16], %g1
	cmp	%g1, 0
	bge	.L560
	 nop
	ld	[%fp-16], %g1
	xnor	%g0, %g1, %g2
	ld	[%fp-12], %g1
	xnor	%g0, %g1, %g3
	std	%g2, [%fp-16]
.L560:
	ld	[%fp-16], %g1
	ld	[%fp-12], %g2
	or	%g1, %g2, %g1
	cmp	%g1, 0
	bne	.L562
	 nop
	mov	63, %g1
	b	.L563
	 nop
.L562:
	ldd	[%fp-16], %g2
	mov	%g2, %o0
	mov	%g3, %o1
	call	__clzdi2, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
.L563:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	b	.L565
	 nop
.L567:
	ld	[%fp+68], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L566
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+72], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
.L566:
	ld	[%fp+68], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
.L565:
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bne	.L567
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 3, %g1
	st	%g1, [%fp-12]
	ld	[%fp+76], %g1
	and	%g1, -8, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g1
	st	%g1, [%fp-16]
	ld	[%fp+72], %g1
	st	%g1, [%fp-20]
	ld	[%fp-16], %g2
	ld	[%fp-20], %g1
	cmp	%g2, %g1
	blu	.L570
	 nop
	ld	[%fp-20], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ld	[%fp-16], %g2
	cmp	%g2, %g1
	bleu	.L577
	 nop
.L570:
	st	%g0, [%fp-4]
	b	.L572
	 nop
.L573:
	ld	[%fp-4], %g1
	sll	%g1, 3, %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g2
	ld	[%fp-4], %g1
	sll	%g1, 3, %g1
	ld	[%fp+68], %g3
	add	%g3, %g1, %g1
	ldd	[%g2], %g2
	std	%g2, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L572:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	blu	.L573
	 nop
	b	.L574
	 nop
.L575:
	ld	[%fp-20], %g2
	ld	[%fp-8], %g1
	add	%g2, %g1, %g2
	ld	[%fp-16], %g3
	ld	[%fp-8], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L574:
	ld	[%fp+76], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bgu	.L575
	 nop
	b	.L576
	 nop
.L578:
	ld	[%fp-20], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g2
	ld	[%fp-16], %g3
	ld	[%fp+76], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L577:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L578
	 nop
	nop
.L576:
	nop
	jmp	%i7+8
	 restore
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g1
	st	%g1, [%fp-12]
	ld	[%fp+72], %g1
	st	%g1, [%fp-16]
	ld	[%fp-12], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	blu	.L580
	 nop
	ld	[%fp-16], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ld	[%fp-12], %g2
	cmp	%g2, %g1
	bleu	.L586
	 nop
.L580:
	st	%g0, [%fp-4]
	b	.L582
	 nop
.L583:
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g2
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	ld	[%fp+68], %g3
	add	%g3, %g1, %g1
	lduh	[%g2], %g2
	sth	%g2, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L582:
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	blu	.L583
	 nop
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L585
	 nop
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	ld	[%fp-16], %g2
	add	%g2, %g1, %g2
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	ld	[%fp-12], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	b	.L585
	 nop
.L587:
	ld	[%fp-16], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g2
	ld	[%fp-12], %g3
	ld	[%fp+76], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L586:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L587
	 nop
	nop
.L585:
	nop
	jmp	%i7+8
	 restore
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 2, %g1
	st	%g1, [%fp-12]
	ld	[%fp+76], %g1
	and	%g1, -4, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g1
	st	%g1, [%fp-16]
	ld	[%fp+72], %g1
	st	%g1, [%fp-20]
	ld	[%fp-16], %g2
	ld	[%fp-20], %g1
	cmp	%g2, %g1
	blu	.L589
	 nop
	ld	[%fp-20], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ld	[%fp-16], %g2
	cmp	%g2, %g1
	bleu	.L596
	 nop
.L589:
	st	%g0, [%fp-4]
	b	.L591
	 nop
.L592:
	ld	[%fp-4], %g1
	sll	%g1, 2, %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g2
	ld	[%fp-4], %g1
	sll	%g1, 2, %g1
	ld	[%fp+68], %g3
	add	%g3, %g1, %g1
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L591:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	blu	.L592
	 nop
	b	.L593
	 nop
.L594:
	ld	[%fp-20], %g2
	ld	[%fp-8], %g1
	add	%g2, %g1, %g2
	ld	[%fp-16], %g3
	ld	[%fp-8], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L593:
	ld	[%fp+76], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bgu	.L594
	 nop
	b	.L595
	 nop
.L597:
	ld	[%fp-20], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g2
	ld	[%fp-16], %g3
	ld	[%fp+76], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L596:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L597
	 nop
	nop
.L595:
	nop
	jmp	%i7+8
	 restore
	.size	__cmovw, .-__cmovw
	.align 4
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	ld	[%fp+72], %o1
	mov	%g1, %o0
	call	.rem, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__modi, .-__modi
	.section	".rodata"
	.align 8
.LC19:
	.long	1106247680
	.long	0
	.section	".text"
	.align 4
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %f8
	fitod	%f8, %f8
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bge	.L602
	 nop
	sethi	%hi(.LC19), %g1
	or	%g1, %lo(.LC19), %g1
	ldd	[%g1], %f10
	faddd	%f8, %f10, %f8
.L602:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	__uitod, .-__uitod
	.section	".rodata"
	.align 8
.LC20:
	.long	1106247680
	.long	0
	.section	".text"
	.align 4
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %f8
	fitod	%f8, %f8
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bge	.L604
	 nop
	sethi	%hi(.LC20), %g1
	or	%g1, %lo(.LC20), %g1
	ldd	[%g1], %f10
	faddd	%f8, %f10, %f8
.L604:
	fdtos	%f8, %f8
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %o0
	call	__floatundidf, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %o0
	call	__floatundisf, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	__ulltof, .-__ulltof
	.align 4
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	ld	[%fp+72], %o1
	mov	%g1, %o0
	call	.urem, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	save	%sp, -104, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+68]
	st	%g0, [%fp-4]
	b	.L613
	 nop
.L616:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	15, %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L618
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L613:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L616
	 nop
	b	.L615
	 nop
.L618:
	nop
.L615:
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -104, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+68]
	st	%g0, [%fp-4]
	b	.L620
	 nop
.L623:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L625
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L620:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L623
	 nop
	b	.L622
	 nop
.L625:
	nop
.L622:
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__ctzhi2, .-__ctzhi2
	.section	".rodata"
	.align 4
.LC21:
	.long	1191182336
	.section	".text"
	.align 4
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	04
__fixunssfsi:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %f9
	sethi	%hi(.LC21), %g1
	or	%g1, %lo(.LC21), %g1
	ld	[%g1], %f8
	fcmpes	%f9, %f8
	nop
	fbul	.L631
	 nop
	ld	[%fp+68], %f9
	sethi	%hi(.LC21), %g1
	or	%g1, %lo(.LC21), %g1
	ld	[%g1], %f8
	fsubs	%f9, %f8, %f8
	fstoi	%f8, %f8
	st	%f8, [%fp-4]
	ld	[%fp-4], %g2
	sethi	%hi(32768), %g1
	add	%g2, %g1, %g1
	b	.L629
	 nop
.L631:
	ld	[%fp+68], %f8
	fstoi	%f8, %f8
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
.L629:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	save	%sp, -104, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+68]
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	b	.L633
	 nop
.L635:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L634
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L634:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L633:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L635
	 nop
	ld	[%fp-8], %g1
	and	%g1, 1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -104, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+68]
	st	%g0, [%fp-8]
	st	%g0, [%fp-4]
	b	.L638
	 nop
.L640:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L639
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L639:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L638:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L640
	 nop
	ld	[%fp-8], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	b	.L643
	 nop
.L645:
	ld	[%fp+68], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L644
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+72], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
.L644:
	ld	[%fp+68], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
.L643:
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bne	.L645
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bne	.L650
	 nop
	mov	0, %g1
	b	.L649
	 nop
.L652:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L651
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+68], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
.L651:
	ld	[%fp+68], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L650:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bne	.L652
	 nop
	ld	[%fp-4], %g1
.L649:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	mov	1, %g1
	st	%g1, [%fp-4]
	st	%g0, [%fp-8]
	b	.L654
	 nop
.L656:
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp-4]
.L654:
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L657
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L657
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L656
	 nop
	b	.L657
	 nop
.L659:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L658
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L658:
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L657:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L659
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L660
	 nop
	ld	[%fp+68], %g1
	b	.L661
	 nop
.L660:
	ld	[%fp-8], %g1
.L661:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbuge	.L670
	 nop
	mov	-1, %g1
	b	.L665
	 nop
.L670:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbule	.L671
	 nop
	mov	1, %g1
	b	.L665
	 nop
.L671:
	mov	0, %g1
.L665:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L680
	 nop
	mov	-1, %g1
	b	.L675
	 nop
.L680:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L681
	 nop
	mov	1, %g1
	b	.L675
	 nop
.L681:
	mov	0, %g1
.L675:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	mov	%g1, %g3
	sra	%g1, 31, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	mov	%g1, %i5
	sra	%g1, 31, %g1
	mov	%g1, %i4
	mov	%i4, %o2
	mov	%i5, %o3
	mov	%g2, %o0
	mov	%g3, %o1
	call	__muldi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	mov	%g1, %g3
	mov	0, %g2
	ld	[%fp+72], %g1
	mov	%g1, %i5
	mov	0, %i4
	mov	%i4, %o2
	mov	%i5, %o3
	mov	%g2, %o0
	mov	%g3, %o1
	call	__muldi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-8]
	st	%g0, [%fp-12]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L687
	 nop
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
	mov	1, %g1
	st	%g1, [%fp-8]
.L687:
	stb	%g0, [%fp-1]
	b	.L688
	 nop
.L691:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L689
	 nop
	ld	[%fp-12], %g2
	ld	[%fp+68], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
.L689:
	ld	[%fp+68], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+72]
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L688:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	be	.L690
	 nop
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 31
	bleu	.L691
	 nop
.L690:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	be	.L692
	 nop
	ld	[%fp-12], %g1
	sub	%g0, %g1, %g1
	b	.L694
	 nop
.L692:
	ld	[%fp-12], %g1
.L694:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	04
__divsi3:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bge	.L696
	 nop
	ld	[%fp+68], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-4], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
.L696:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L697
	 nop
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
.L697:
	ld	[%fp+68], %g1
	ld	[%fp+72], %g2
	mov	0, %o2
	mov	%g2, %o1
	mov	%g1, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L698
	 nop
	ld	[%fp-8], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp-8]
.L698:
	ld	[%fp-8], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	04
__modsi3:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bge	.L701
	 nop
	ld	[%fp+68], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+68]
	mov	1, %g1
	st	%g1, [%fp-4]
.L701:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L702
	 nop
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
.L702:
	ld	[%fp+68], %g1
	ld	[%fp+72], %g2
	mov	1, %o2
	mov	%g2, %o1
	mov	%g1, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L703
	 nop
	ld	[%fp-8], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp-8]
.L703:
	ld	[%fp-8], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -104, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%i2, [%fp+76]
	sth	%g1, [%fp+68]
	mov	%g2, %g1
	sth	%g1, [%fp+72]
	mov	1, %g1
	sth	%g1, [%fp-2]
	sth	%g0, [%fp-4]
	b	.L706
	 nop
.L708:
	lduh	[%fp+72], %g1
	sll	%g1, 1, %g1
	sth	%g1, [%fp+72]
	lduh	[%fp-2], %g1
	sll	%g1, 1, %g1
	sth	%g1, [%fp-2]
.L706:
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	bgeu	.L709
	 nop
	lduh	[%fp-2], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	be	.L709
	 nop
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	sra	%g1, 16, %g1
	cmp	%g1, 0
	bge	.L708
	 nop
	b	.L709
	 nop
.L711:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	blu	.L710
	 nop
	lduh	[%fp+68], %g2
	lduh	[%fp+72], %g1
	sub	%g2, %g1, %g1
	sth	%g1, [%fp+68]
	lduh	[%fp-4], %g2
	lduh	[%fp-2], %g1
	or	%g2, %g1, %g1
	sth	%g1, [%fp-4]
.L710:
	lduh	[%fp-2], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	srl	%g1, 1, %g1
	sth	%g1, [%fp-2]
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	srl	%g1, 1, %g1
	sth	%g1, [%fp+72]
.L709:
	lduh	[%fp-2], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L711
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L712
	 nop
	lduh	[%fp+68], %g1
	b	.L713
	 nop
.L712:
	lduh	[%fp-4], %g1
.L713:
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	016
__udivmodsi4_libgcc:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	mov	1, %g1
	st	%g1, [%fp-4]
	st	%g0, [%fp-8]
	b	.L715
	 nop
.L717:
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp-4]
.L715:
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L718
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L718
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L717
	 nop
	b	.L718
	 nop
.L720:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L719
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L719:
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L718:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L720
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L721
	 nop
	ld	[%fp+68], %g1
	b	.L722
	 nop
.L721:
	ld	[%fp-8], %g1
.L722:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -128, %sp
	std	%i0, [%fp-32]
	st	%i2, [%fp+76]
	mov	32, %g1
	st	%g1, [%fp-4]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-16]
	ld	[%fp+76], %g2
	ld	[%fp-4], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L724
	 nop
	st	%g0, [%fp-20]
	ld	[%fp-12], %g2
	ld	[%fp+76], %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	st	%g1, [%fp-24]
	b	.L725
	 nop
.L724:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L726
	 nop
	ldd	[%fp-32], %g2
	b	.L728
	 nop
.L726:
	ld	[%fp-12], %g2
	ld	[%fp+76], %g1
	sll	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp-16], %g1
	mov	%g1, %g2
	ld	[%fp+76], %g1
	sll	%g2, %g1, %g2
	ld	[%fp-12], %g3
	ld	[%fp-4], %g4
	ld	[%fp+76], %g1
	sub	%g4, %g1, %g1
	srl	%g3, %g1, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-24]
.L725:
	ldd	[%fp-24], %g2
.L728:
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -128, %sp
	std	%i0, [%fp-32]
	st	%i2, [%fp+76]
	mov	32, %g1
	st	%g1, [%fp-4]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-16]
	ld	[%fp+76], %g2
	ld	[%fp-4], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L730
	 nop
	ld	[%fp-16], %g2
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	sra	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-16], %g2
	ld	[%fp+76], %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	sra	%g2, %g1, %g1
	st	%g1, [%fp-20]
	b	.L731
	 nop
.L730:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L732
	 nop
	ldd	[%fp-32], %g2
	b	.L734
	 nop
.L732:
	ld	[%fp-16], %g2
	ld	[%fp+76], %g1
	sra	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-16], %g1
	mov	%g1, %g3
	ld	[%fp-4], %g2
	ld	[%fp+76], %g1
	sub	%g2, %g1, %g1
	sll	%g3, %g1, %g2
	ld	[%fp-12], %g3
	ld	[%fp+76], %g1
	srl	%g3, %g1, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-20]
.L731:
	ldd	[%fp-24], %g2
.L734:
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -192, %sp
	std	%i0, [%fp-8]
	ld	[%fp-8], %g1
	srl	%g1, 24, %o1
	mov	0, %o0
	ld	[%fp-8], %g1
	srl	%g1, 8, %g3
	mov	0, %g2
	and	%g2, 0, %i4
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g3, %g1, %i5
	or	%o0, %i4, %l4
	or	%o1, %i5, %l5
	ld	[%fp-8], %g1
	sll	%g1, 8, %g2
	ld	[%fp-4], %g1
	srl	%g1, 24, %i3
	or	%g2, %i3, %i3
	ld	[%fp-8], %g1
	srl	%g1, 24, %i2
	and	%i2, 0, %l2
	sethi	%hi(16711680), %g1
	and	%i3, %g1, %l3
	or	%l4, %l2, %g1
	st	%g1, [%fp-16]
	or	%l5, %l3, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g1
	sll	%g1, 24, %g2
	ld	[%fp-4], %g1
	srl	%g1, 8, %l1
	or	%g2, %l1, %l1
	ld	[%fp-8], %g1
	srl	%g1, 8, %l0
	and	%l0, 0, %g1
	st	%g1, [%fp-24]
	sethi	%hi(-16777216), %g1
	and	%l1, %g1, %g1
	st	%g1, [%fp-20]
	ldd	[%fp-16], %i4
	mov	%i4, %g1
	ldd	[%fp-24], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-32]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-28]
	ld	[%fp-4], %g1
	srl	%g1, 24, %g1
	ld	[%fp-8], %g2
	sll	%g2, 8, %o2
	or	%g1, %o2, %o2
	ld	[%fp-4], %g1
	sll	%g1, 8, %o3
	and	%o2, 255, %g1
	st	%g1, [%fp-40]
	and	%o3, 0, %g1
	st	%g1, [%fp-36]
	ldd	[%fp-32], %i4
	mov	%i4, %g1
	ldd	[%fp-40], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-48]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-44]
	ld	[%fp-4], %g1
	srl	%g1, 8, %g1
	ld	[%fp-8], %g2
	sll	%g2, 24, %o4
	or	%g1, %o4, %o4
	ld	[%fp-4], %g1
	sll	%g1, 24, %o5
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%o4, %g1, %g1
	st	%g1, [%fp-56]
	and	%o5, 0, %g1
	st	%g1, [%fp-52]
	ldd	[%fp-48], %i4
	mov	%i4, %g1
	ldd	[%fp-56], %g2
	mov	%g2, %g4
	or	%g1, %g4, %g1
	st	%g1, [%fp-64]
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %g1
	st	%g1, [%fp-60]
	ld	[%fp-4], %g1
	sll	%g1, 8, %g1
	st	%g1, [%fp-72]
	st	%g0, [%fp-68]
	sethi	%hi(16711680), %g1
	ldd	[%fp-72], %g2
	mov	%g2, %g4
	and	%g4, %g1, %g1
	st	%g1, [%fp-80]
	mov	%g3, %g1
	and	%g1, 0, %g1
	st	%g1, [%fp-76]
	ldd	[%fp-64], %i4
	mov	%i4, %g1
	ldd	[%fp-80], %g2
	mov	%g2, %g4
	or	%g1, %g4, %l6
	mov	%i5, %g1
	mov	%g3, %g2
	or	%g1, %g2, %l7
	ld	[%fp-4], %g1
	sll	%g1, 24, %g1
	st	%g1, [%fp-88]
	st	%g0, [%fp-84]
	ldd	[%fp-88], %g2
	mov	%g2, %g1
	or	%l6, %g1, %g1
	st	%g1, [%fp-96]
	mov	%g3, %g1
	or	%l7, %g1, %g1
	st	%g1, [%fp-92]
	ldd	[%fp-96], %g2
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	srl	%g1, 24, %g2
	ld	[%fp+68], %g1
	srl	%g1, 8, %g3
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ld	[%fp+68], %g1
	sll	%g1, 8, %g3
	sethi	%hi(16711680), %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ld	[%fp+68], %g1
	sll	%g1, 24, %g1
	or	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%g2, %g1
	bgu	.L740
	 nop
	mov	16, %g1
	b	.L741
	 nop
.L740:
	mov	0, %g1
.L741:
	st	%g1, [%fp-8]
	mov	16, %g2
	ld	[%fp-8], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-4], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	.L742
	 nop
	mov	8, %g1
	b	.L743
	 nop
.L742:
	mov	0, %g1
.L743:
	st	%g1, [%fp-8]
	mov	8, %g2
	ld	[%fp-8], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-4], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	and	%g1, 240, %g1
	cmp	%g1, 0
	bne	.L744
	 nop
	mov	4, %g1
	b	.L745
	 nop
.L744:
	mov	0, %g1
.L745:
	st	%g1, [%fp-8]
	mov	4, %g2
	ld	[%fp-8], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-4], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	and	%g1, 12, %g1
	cmp	%g1, 0
	bne	.L746
	 nop
	mov	2, %g1
	b	.L747
	 nop
.L746:
	mov	0, %g1
.L747:
	st	%g1, [%fp-8]
	mov	2, %g2
	ld	[%fp-8], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-4], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	and	%g1, 2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %g3
	mov	2, %g2
	ld	[%fp-4], %g1
	sub	%g2, %g1, %g1
	mov	%g1, %o1
	mov	%g3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	save	%sp, -128, %sp
	std	%i0, [%fp-24]
	std	%i2, [%fp-32]
	ldd	[%fp-24], %g2
	std	%g2, [%fp-8]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-16]
	ld	[%fp-8], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	bge	.L750
	 nop
	mov	0, %g1
	b	.L755
	 nop
.L750:
	ld	[%fp-8], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	ble	.L752
	 nop
	mov	2, %g1
	b	.L755
	 nop
.L752:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgeu	.L753
	 nop
	mov	0, %g1
	b	.L755
	 nop
.L753:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bleu	.L754
	 nop
	mov	2, %g1
	b	.L755
	 nop
.L754:
	mov	1, %g1
.L755:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-16], %o2
	ldd	[%fp-8], %o0
	call	__cmpdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, -1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	.L759
	 nop
	mov	16, %g1
	b	.L760
	 nop
.L759:
	mov	0, %g1
.L760:
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	and	%g1, 255, %g1
	cmp	%g1, 0
	bne	.L761
	 nop
	mov	8, %g1
	b	.L762
	 nop
.L761:
	mov	0, %g1
.L762:
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	and	%g1, 15, %g1
	cmp	%g1, 0
	bne	.L763
	 nop
	mov	4, %g1
	b	.L764
	 nop
.L763:
	mov	0, %g1
.L764:
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	and	%g1, 3, %g1
	cmp	%g1, 0
	bne	.L765
	 nop
	mov	2, %g1
	b	.L766
	 nop
.L765:
	mov	0, %g1
.L766:
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, 3, %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	xnor	%g0, %g1, %g1
	and	%g1, 1, %g2
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	mov	2, %g3
	sub	%g3, %g1, %g1
	sub	%g0, %g2, %g2
	and	%g2, %g1, %g2
	ld	[%fp-12], %g1
	add	%g2, %g1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -128, %sp
	std	%i0, [%fp-32]
	st	%i2, [%fp+76]
	mov	32, %g1
	st	%g1, [%fp-4]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-16]
	ld	[%fp+76], %g2
	ld	[%fp-4], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L769
	 nop
	st	%g0, [%fp-24]
	ld	[%fp-16], %g2
	ld	[%fp+76], %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-20]
	b	.L770
	 nop
.L769:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L771
	 nop
	ldd	[%fp-32], %g2
	b	.L773
	 nop
.L771:
	ld	[%fp-16], %g2
	ld	[%fp+76], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-16], %g2
	ld	[%fp-4], %g3
	ld	[%fp+76], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g2
	ld	[%fp-12], %g3
	ld	[%fp+76], %g1
	srl	%g3, %g1, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-20]
.L770:
	ldd	[%fp-24], %g2
.L773:
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	mov	16, %g1
	st	%g1, [%fp-4]
	mov	-1, %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g3
	ld	[%fp+72], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	mov	%g1, %o1
	mov	%g3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-20]
	ld	[%fp-20], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-20], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g3
	ld	[%fp+72], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	mov	%g1, %o1
	mov	%g3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-12]
	ld	[%fp-20], %g2
	ld	[%fp-12], %g3
	ld	[%fp-8], %g1
	and	%g3, %g1, %g3
	ld	[%fp-4], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp-12], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-20], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-20], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp+72], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g3
	ld	[%fp+68], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	mov	%g1, %o1
	mov	%g3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-12]
	ld	[%fp-20], %g2
	ld	[%fp-12], %g3
	ld	[%fp-8], %g1
	and	%g3, %g1, %g3
	ld	[%fp-4], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp-24], %g1
	mov	%g1, %g3
	ld	[%fp-12], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	add	%g3, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-24], %g1
	mov	%g1, %i5
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g3
	ld	[%fp+72], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	mov	%g1, %o1
	mov	%g3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	add	%i5, %g1, %g1
	st	%g1, [%fp-24]
	ldd	[%fp-24], %g2
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -136, %sp
	std	%i0, [%fp-32]
	std	%i2, [%fp-40]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-8]
	ldd	[%fp-40], %g2
	std	%g2, [%fp-16]
	ld	[%fp-4], %g1
	ld	[%fp-12], %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	__muldsi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	std	%g2, [%fp-24]
	ld	[%fp-24], %g1
	mov	%g1, %i5
	ld	[%fp-8], %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	mov	%g1, %o1
	mov	%g2, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i4
	ld	[%fp-4], %g1
	ld	[%fp-16], %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	add	%i4, %g1, %g1
	add	%i5, %g1, %g1
	st	%g1, [%fp-24]
	ldd	[%fp-24], %g2
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %g2
	subcc	%g0, %g3, %i5
	subx	%g0, %g2, %i4
	mov	%i4, %g2
	mov	%i5, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	jmp	%i7+8
	 restore
	.size	__negdi2, .-__negdi2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -120, %sp
	std	%i0, [%fp-24]
	ldd	[%fp-24], %g2
	std	%g2, [%fp-16]
	ld	[%fp-16], %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 16, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 8, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 4, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %g2
	or	%g2, 406, %g2
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 16, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 8, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 4, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %g2
	or	%g2, 406, %g2
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	save	%sp, -120, %sp
	std	%i0, [%fp-24]
	ldd	[%fp-24], %i0
	std	%i0, [%fp-8]
	ld	[%fp-8], %g1
	sll	%g1, 31, %g1
	ld	[%fp-4], %g4
	srl	%g4, 1, %i5
	or	%g1, %i5, %i5
	ld	[%fp-8], %g1
	srl	%g1, 1, %i4
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%i4, %g1, %o0
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%i5, %g1, %o1
	ldd	[%fp-8], %i0
	subcc	%i1, %o1, %i5
	subx	%i0, %o0, %i4
	std	%i4, [%fp-8]
	ld	[%fp-8], %g1
	sll	%g1, 30, %g1
	ld	[%fp-4], %g4
	srl	%g4, 2, %g3
	or	%g1, %g3, %g3
	ld	[%fp-8], %g1
	srl	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %o2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g3, %g1, %o3
	ld	[%fp-8], %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %o4
	ld	[%fp-4], %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %o5
	addcc	%o3, %o5, %g3
	addx	%o2, %o4, %g2
	std	%g2, [%fp-8]
	ld	[%fp-8], %g1
	sll	%g1, 28, %g1
	ld	[%fp-4], %g2
	srl	%g2, 4, %i3
	or	%g1, %i3, %i3
	ld	[%fp-8], %g1
	srl	%g1, 4, %i2
	ldd	[%fp-8], %i4
	addcc	%i3, %i5, %g3
	addx	%i2, %i4, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-8]
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%g3, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	ld	[%fp-8], %g2
	srl	%g2, 0, %l1
	mov	0, %l0
	mov	%l1, %g2
	add	%g1, %g2, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	srl	%g1, 16, %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	srl	%g1, 8, %g2
	ld	[%fp-12], %g1
	add	%g2, %g1, %g1
	and	%g1, 127, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%g2, %g1, %g1
	ld	[%fp-4], %g2
	sub	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	ld	[%fp-4], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 4, %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 16, %g1
	ld	[%fp-4], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 8, %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	and	%g1, 63, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__popcountsi2, .-__popcountsi2
	.section	".rodata"
	.align 8
.LC22:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	save	%sp, -120, %sp
	std	%i0, [%fp-24]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 31, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-12]
	sethi	%hi(.LC22), %g1
	or	%g1, %lo(.LC22), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-8]
.L792:
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L789
	 nop
	ldd	[%fp-8], %f10
	ldd	[%fp-24], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-8]
.L789:
	ld	[%fp+76], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L797
	 nop
	ldd	[%fp-24], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp-24]
	b	.L792
	 nop
.L797:
	nop
	ld	[%fp-12], %g1
	cmp	%g1, 0
	be	.L793
	 nop
	sethi	%hi(.LC22), %g1
	or	%g1, %lo(.LC22), %g1
	ldd	[%g1], %f10
	ldd	[%fp-8], %f8
	fdivd	%f10, %f8, %f8
	b	.L795
	 nop
.L793:
	ldd	[%fp-8], %f8
.L795:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	__powidf2, .-__powidf2
	.section	".rodata"
	.align 4
.LC23:
	.long	1065353216
	.section	".text"
	.align 4
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	srl	%g1, 31, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-8]
	sethi	%hi(.LC23), %g1
	or	%g1, %lo(.LC23), %g1
	ld	[%g1], %f8
	st	%f8, [%fp-4]
.L802:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L799
	 nop
	ld	[%fp-4], %f9
	ld	[%fp+68], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp-4]
.L799:
	ld	[%fp+72], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	be	.L807
	 nop
	ld	[%fp+68], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp+68]
	b	.L802
	 nop
.L807:
	nop
	ld	[%fp-8], %g1
	cmp	%g1, 0
	be	.L803
	 nop
	sethi	%hi(.LC23), %g1
	or	%g1, %lo(.LC23), %g1
	ld	[%g1], %f9
	ld	[%fp-4], %f8
	fdivs	%f9, %f8, %f8
	b	.L805
	 nop
.L803:
	ld	[%fp-4], %f8
.L805:
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	save	%sp, -128, %sp
	std	%i0, [%fp-24]
	std	%i2, [%fp-32]
	ldd	[%fp-24], %g2
	std	%g2, [%fp-8]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-16]
	ld	[%fp-8], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	bgeu	.L809
	 nop
	mov	0, %g1
	b	.L814
	 nop
.L809:
	ld	[%fp-8], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	bleu	.L811
	 nop
	mov	2, %g1
	b	.L814
	 nop
.L811:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgeu	.L812
	 nop
	mov	0, %g1
	b	.L814
	 nop
.L812:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bleu	.L813
	 nop
	mov	2, %g1
	b	.L814
	 nop
.L813:
	mov	1, %g1
.L814:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	std	%i2, [%fp-16]
	ldd	[%fp-8], %g2
	ldd	[%fp-16], %i4
	mov	%i4, %o2
	mov	%i5, %o3
	mov	%g2, %o0
	mov	%g3, %o1
	call	__ucmpdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, -1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.common	s.0,7,8
	.global .urem
	.global __floatundisf
	.global __floatundidf
	.global __clzdi2
	.global __clzsi2
	.global __moddi3
	.global __divdi3
	.global .rem
	.global .div
	.global .umul
	.global __muldi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
