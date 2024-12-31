	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L2
	 nop
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp+68], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	b	.L3
	 nop
.L4:
	ld	[%fp-12], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-12], %g1
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
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	be	.L5
	 nop
	ld	[%fp+68], %g1
	st	%g1, [%fp-8]
	b	.L6
	 nop
.L7:
	ld	[%fp+72], %g2
	add	%g2, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-8], %g1
	add	%g1, 1, %g3
	st	%g3, [%fp-8]
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
	ld	[%fp+76], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
	b	.L10
	 nop
.L12:
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+80]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L10:
	ld	[%fp+80], %g1
	cmp	%g1, 0
	be	.L11
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g2
	ld	[%fp+68], %g1
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp-4], %g2
	cmp	%g2, %g1
	bne	.L12
	 nop
.L11:
	ld	[%fp+80], %g1
	cmp	%g1, 0
	be	.L13
	 nop
	ld	[%fp+68], %g1
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
	ld	[%fp+72], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
	b	.L16
	 nop
.L18:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L16:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L17
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp-4], %g2
	cmp	%g2, %g1
	bne	.L18
	 nop
.L17:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L19
	 nop
	ld	[%fp+68], %g1
	b	.L21
	 nop
.L19:
	mov	0, %g1
.L21:
	nop
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	b	.L23
	 nop
.L25:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
.L23:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L24
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g2
	ld	[%fp+72], %g1
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
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
	b	.L28
	 nop
.L26:
	mov	0, %g1
.L28:
	nop
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
	b	.L30
	 nop
.L31:
	ld	[%fp+72], %g2
	add	%g2, 1, %g1
	st	%g1, [%fp+72]
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
	ld	[%fp+72], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
	b	.L34
	 nop
.L36:
	ld	[%fp+68], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp-4], %g2
	cmp	%g2, %g1
	bne	.L34
	 nop
	ld	[%fp+68], %g2
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
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
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
	ld	[%fp-4], %g2
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
	be	.L54
	 nop
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	.L53
	 nop
	mov	0, %g1
	b	.L52
	 nop
.L54:
	nop
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
	b	.L56
	 nop
.L58:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
.L56:
	ld	[%fp+68], %g1
	ldub	[%g1], %g2
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	.L57
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L58
	 nop
.L57:
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
	b	.L61
	 nop
.L62:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L61:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L62
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+68], %g1
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
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp-4]
	cmp	%g1, 0
	bne	.L67
	 nop
	mov	0, %g1
	b	.L66
	 nop
.L69:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
.L67:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	.L68
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	.L68
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L68
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g2
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	.L69
	 nop
.L68:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
.L66:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	b	.L71
	 nop
.L72:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	ldub	[%g1], %g2
	ld	[%fp+72], %g1
	stb	%g2, [%g1]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	ld	[%fp+68], %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+72], %g1
	add	%g1, 2, %g1
	st	%g1, [%fp+72]
	ld	[%fp+68], %g1
	add	%g1, 2, %g1
	st	%g1, [%fp+68]
	ld	[%fp+76], %g1
	add	%g1, -2, %g1
	st	%g1, [%fp+76]
.L71:
	ld	[%fp+76], %g1
	cmp	%g1, 1
	bg	.L72
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
	bleu	.L74
	 nop
	mov	0, %g2
.L74:
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
	bleu	.L77
	 nop
	mov	0, %g2
.L77:
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
	be	.L80
	 nop
	ld	[%fp+68], %g1
	cmp	%g1, 9
	bne	.L81
	 nop
.L80:
	mov	1, %g1
	b	.L83
	 nop
.L81:
	mov	0, %g1
.L83:
	nop
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
	bleu	.L85
	 nop
	ld	[%fp+68], %g1
	cmp	%g1, 127
	bne	.L86
	 nop
.L85:
	mov	1, %g1
	b	.L88
	 nop
.L86:
	mov	0, %g1
.L88:
	nop
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
	bleu	.L90
	 nop
	mov	0, %g2
.L90:
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
	bleu	.L93
	 nop
	mov	0, %g2
.L93:
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
	bleu	.L96
	 nop
	mov	0, %g2
.L96:
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
	bleu	.L99
	 nop
	mov	0, %g2
.L99:
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
	be	.L102
	 nop
	ld	[%fp+68], %g1
	add	%g1, -9, %g1
	cmp	%g1, 4
	bgu	.L103
	 nop
.L102:
	mov	1, %g1
	b	.L105
	 nop
.L103:
	mov	0, %g1
.L105:
	nop
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
	bleu	.L107
	 nop
	mov	0, %g2
.L107:
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
	bleu	.L110
	 nop
	ld	[%fp+68], %g1
	add	%g1, -127, %g1
	cmp	%g1, 32
	bleu	.L110
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu	.L110
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 2
	bgu	.L111
	 nop
.L110:
	mov	1, %g1
	b	.L113
	 nop
.L111:
	mov	0, %g1
.L113:
	nop
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
	bleu	.L115
	 nop
	mov	0, %g2
.L115:
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
	bgu	.L118
	 nop
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	and	%g1, 127, %g1
	mov	1, %g2
	cmp	%g1, 32
	bgu	.L119
	 nop
	mov	0, %g2
.L119:
	and	%g2, 0xff, %g1
	b	.L120
	 nop
.L118:
	ld	[%fp+68], %g2
	sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g2, %g1
	bleu	.L121
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%g2, %g1, %g2
	sethi	%hi(46080), %g1
	or	%g1, 981, %g1
	cmp	%g2, %g1
	bleu	.L121
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-57344), %g1
	add	%g2, %g1, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bgu	.L122
	 nop
.L121:
	mov	1, %g1
	b	.L120
	 nop
.L122:
	ld	[%fp+68], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%g2, %g1, %g2
	sethi	%hi(1048576), %g1
	or	%g1, 3, %g1
	cmp	%g2, %g1
	bgu	.L123
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%g2, %g1, %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	cmp	%g2, %g1
	bne	.L124
	 nop
.L123:
	mov	0, %g1
	b	.L120
	 nop
.L124:
	mov	1, %g1
.L120:
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
	bleu	.L126
	 nop
	ld	[%fp+68], %g1
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	bgu	.L127
	 nop
.L126:
	mov	1, %g1
	b	.L129
	 nop
.L127:
	mov	0, %g1
.L129:
	nop
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
	.section	.rodata.cst8,"aM",@progbits,8
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
	fbo	.L133
	 nop
	ldd	[%fp-8], %f8
	b	.L134
	 nop
.L133:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L135
	 nop
	ldd	[%fp-16], %f8
	b	.L134
	 nop
.L135:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L140
	 nop
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fsubd	%f10, %f8, %f8
	b	.L134
	 nop
.L140:
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
.L134:
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
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
	fbo	.L142
	 nop
	ld	[%fp+68], %f8
	b	.L143
	 nop
.L142:
	ld	[%fp+72], %f9
	ld	[%fp+72], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L144
	 nop
	ld	[%fp+72], %f8
	b	.L143
	 nop
.L144:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbule	.L149
	 nop
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fsubs	%f9, %f8, %f8
	b	.L143
	 nop
.L149:
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ld	[%g1], %f8
.L143:
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
	fbo	.L151
	 nop
	ldd	[%fp-16], %f8
	b	.L152
	 nop
.L151:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L153
	 nop
	ldd	[%fp-8], %f8
	b	.L152
	 nop
.L153:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L154
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L155
	 nop
	ldd	[%fp-16], %f8
	b	.L152
	 nop
.L155:
	ldd	[%fp-8], %f8
	b	.L152
	 nop
.L154:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L161
	 nop
	ldd	[%fp-16], %f8
	b	.L152
	 nop
.L161:
	ldd	[%fp-8], %f8
.L152:
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
	fbo	.L163
	 nop
	ld	[%fp+72], %f8
	b	.L164
	 nop
.L163:
	ld	[%fp+72], %f9
	ld	[%fp+72], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L165
	 nop
	ld	[%fp+68], %f8
	b	.L164
	 nop
.L165:
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+72], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L166
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L167
	 nop
	ld	[%fp+72], %f8
	b	.L164
	 nop
.L167:
	ld	[%fp+68], %f8
	b	.L164
	 nop
.L166:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbuge	.L173
	 nop
	ld	[%fp+72], %f8
	b	.L164
	 nop
.L173:
	ld	[%fp+68], %f8
.L164:
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
	fbo	.L175
	 nop
	ldd	[%fp-16], %f8
	b	.L176
	 nop
.L175:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L177
	 nop
	ldd	[%fp-8], %f8
	b	.L176
	 nop
.L177:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L178
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L179
	 nop
	ldd	[%fp-16], %f8
	b	.L176
	 nop
.L179:
	ldd	[%fp-8], %f8
	b	.L176
	 nop
.L178:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L185
	 nop
	ldd	[%fp-16], %f8
	b	.L176
	 nop
.L185:
	ldd	[%fp-8], %f8
.L176:
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
	fbo	.L187
	 nop
	ldd	[%fp-16], %f8
	b	.L188
	 nop
.L187:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L189
	 nop
	ldd	[%fp-8], %f8
	b	.L188
	 nop
.L189:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L190
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L191
	 nop
	ldd	[%fp-8], %f8
	b	.L188
	 nop
.L191:
	ldd	[%fp-16], %f8
	b	.L188
	 nop
.L190:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L197
	 nop
	ldd	[%fp-8], %f8
	b	.L188
	 nop
.L197:
	ldd	[%fp-16], %f8
.L188:
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
	fbo	.L199
	 nop
	ld	[%fp+72], %f8
	b	.L200
	 nop
.L199:
	ld	[%fp+72], %f9
	ld	[%fp+72], %f8
	fcmps	%f9, %f8
	nop
	fbo	.L201
	 nop
	ld	[%fp+68], %f8
	b	.L200
	 nop
.L201:
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+72], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L202
	 nop
	ld	[%fp+68], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L203
	 nop
	ld	[%fp+68], %f8
	b	.L200
	 nop
.L203:
	ld	[%fp+72], %f8
	b	.L200
	 nop
.L202:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbuge	.L209
	 nop
	ld	[%fp+68], %f8
	b	.L200
	 nop
.L209:
	ld	[%fp+72], %f8
.L200:
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
	fbo	.L211
	 nop
	ldd	[%fp-16], %f8
	b	.L212
	 nop
.L211:
	ldd	[%fp-16], %f10
	ldd	[%fp-16], %f8
	fcmpd	%f10, %f8
	nop
	fbo	.L213
	 nop
	ldd	[%fp-8], %f8
	b	.L212
	 nop
.L213:
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp-16], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	.L214
	 nop
	ld	[%fp-8], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	.L215
	 nop
	ldd	[%fp-8], %f8
	b	.L212
	 nop
.L215:
	ldd	[%fp-16], %f8
	b	.L212
	 nop
.L214:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L221
	 nop
	ldd	[%fp-8], %f8
	b	.L212
	 nop
.L221:
	ldd	[%fp-16], %f8
.L212:
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
	b	.L223
	 nop
.L224:
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
.L223:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L224
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
	mov	%g1, %g2
	mov	0, %g3
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	st	%g3, [%g1]
	st	%g2, [%g1+4]
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
	mov	%o1, %g1
	mov	%g2, %i4
	mov	%g1, %i5
	addcc	%i5, 1, %g3
	addx	%i4, 0, %g2
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	std	%g2, [%g1]
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	ld	[%g1], %g1
	srl	%g1, 1, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bne	.L230
	 nop
	ld	[%fp+68], %g1
	st	%g0, [%g1+4]
	ld	[%fp+68], %g1
	ld	[%g1+4], %g2
	ld	[%fp+68], %g1
	st	%g2, [%g1]
	jmp	%i7+8
	 restore
.L230:
	ld	[%fp+72], %g1
	ld	[%g1], %g2
	ld	[%fp+68], %g1
	st	%g2, [%g1]
	ld	[%fp+68], %g1
	ld	[%fp+72], %g2
	st	%g2, [%g1+4]
	ld	[%fp+72], %g1
	ld	[%fp+68], %g2
	st	%g2, [%g1]
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L229
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ld	[%fp+68], %g2
	st	%g2, [%g1+4]
.L229:
	jmp	%i7+8
	 restore
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L233
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ld	[%fp+68], %g2
	ld	[%g2+4], %g2
	st	%g2, [%g1+4]
.L233:
	ld	[%fp+68], %g1
	ld	[%g1+4], %g1
	cmp	%g1, 0
	be	.L235
	 nop
	ld	[%fp+68], %g1
	ld	[%g1+4], %g1
	ld	[%fp+68], %g2
	ld	[%g2], %g2
	st	%g2, [%g1]
.L235:
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
	ld	[%fp+80], %i5
	mov	%i5, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-12]
	st	%g0, [%fp-4]
	b	.L237
	 nop
.L240:
	ld	[%fp-4], %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g2
	ld	[%fp+84], %g1
	mov	%g2, %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L238
	 nop
	ld	[%fp-4], %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g1
	b	.L239
	 nop
.L238:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L237:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	blu	.L240
	 nop
	ld	[%fp-12], %g1
	add	%g1, 1, %g2
	ld	[%fp+76], %g1
	st	%g2, [%g1]
	ld	[%fp-12], %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g1
	ld	[%fp+80], %o2
	ld	[%fp+68], %o1
	mov	%g1, %o0
	call	memcpy, 0
	 nop
	mov	%o0, %g1
.L239:
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
	ld	[%fp+80], %i5
	mov	%i5, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-12]
	st	%g0, [%fp-4]
	b	.L242
	 nop
.L245:
	ld	[%fp-4], %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g2
	ld	[%fp+84], %g1
	mov	%g2, %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L243
	 nop
	ld	[%fp-4], %o1
	mov	%i5, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g1
	b	.L244
	 nop
.L243:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L242:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	blu	.L245
	 nop
	mov	0, %g1
.L244:
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
	b	.L249
	 nop
.L250:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L249:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L250
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L251
	 nop
	cmp	%g1, 45
	bne	.L253
	 nop
	mov	1, %g1
	st	%g1, [%fp-8]
.L251:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L253
	 nop
.L254:
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
.L253:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L254
	 nop
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L255
	 nop
	ld	[%fp-4], %g1
	sub	%g0, %g1, %g1
	b	.L257
	 nop
.L255:
	ld	[%fp-4], %g1
.L257:
	nop
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
	b	.L259
	 nop
.L260:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L259:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L260
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L261
	 nop
	cmp	%g1, 45
	bne	.L263
	 nop
	mov	1, %g1
	st	%g1, [%fp-8]
.L261:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L263
	 nop
.L264:
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
.L263:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L264
	 nop
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L265
	 nop
	ld	[%fp-4], %g1
	sub	%g0, %g1, %g1
	b	.L267
	 nop
.L265:
	ld	[%fp-4], %g1
.L267:
	nop
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
	b	.L269
	 nop
.L270:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L269:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L270
	 nop
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	.L271
	 nop
	cmp	%g1, 45
	bne	.L273
	 nop
	mov	1, %g1
	st	%g1, [%fp-12]
.L271:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L273
	 nop
.L274:
	ldd	[%fp-8], %i4
	mov	%i4, %g2
	mov	%i5, %g3
	srl	%g3, 30, %g4
	sll	%g2, 2, %g1
	or	%g4, %g1, %g1
	sll	%g3, 2, %g4
	mov	%g1, %g2
	mov	%g4, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	addcc	%i1, %i5, %g3
	addx	%i0, %i4, %g2
	srl	%g3, 31, %g4
	sll	%g2, 1, %g1
	or	%g4, %g1, %g1
	sll	%g3, 1, %g4
	mov	%g1, %g2
	mov	%g4, %g3
	mov	%g2, %i4
	mov	%g3, %i5
	ld	[%fp+68], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp+68]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	mov	%g1, %i3
	sra	%g1, 31, %g1
	mov	%g1, %i2
	subcc	%i5, %i3, %g3
	subx	%i4, %i2, %g2
	std	%g2, [%fp-8]
.L273:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	.L274
	 nop
	ld	[%fp-12], %g1
	cmp	%g1, 0
	bne	.L275
	 nop
	ldd	[%fp-8], %i4
	subcc	%g0, %i5, %g3
	subx	%g0, %i4, %g2
	b	.L277
	 nop
.L275:
	ldd	[%fp-8], %g2
.L277:
	nop
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
	b	.L279
	 nop
.L284:
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
	bge	.L280
	 nop
	ld	[%fp+76], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+76]
	b	.L279
	 nop
.L280:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	ble	.L282
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
	b	.L279
	 nop
.L282:
	ld	[%fp-4], %g1
	b	.L283
	 nop
.L279:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L284
	 nop
	mov	0, %g1
.L283:
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
	ld	[%fp+76], %g1
	st	%g1, [%fp-4]
	b	.L286
	 nop
.L290:
	ld	[%fp-4], %g1
	sra	%g1, 1, %g1
	ld	[%fp+80], %o1
	mov	%g1, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp+72], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-8]
	ld	[%fp+84], %g1
	ld	[%fp+88], %o2
	ld	[%fp-8], %o1
	ld	[%fp+68], %o0
	call	%g1, 0
	 nop
	st	%o0, [%fp-12]
	ld	[%fp-12], %g1
	cmp	%g1, 0
	bne	.L287
	 nop
	ld	[%fp-8], %g1
	b	.L288
	 nop
.L287:
	ld	[%fp-12], %g1
	cmp	%g1, 0
	ble	.L289
	 nop
	ld	[%fp-8], %g2
	ld	[%fp+80], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
.L289:
	ld	[%fp-4], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp-4]
.L286:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L290
	 nop
	mov	0, %g1
.L288:
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
	mov	%i4, %i0
	mov	%i5, %i1
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
	mov	%o1, %g1
	mov	%g2, %i3
	mov	%g1, %i4
	ldd	[%fp-24], %g2
	ldd	[%fp-32], %o2
	mov	%g2, %o0
	mov	%g3, %o1
	call	__moddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g1
	st	%i3, [%i5]
	st	%i4, [%i5+4]
	st	%g2, [%i5+8]
	st	%g1, [%i5+12]
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
	mov	%i4, %i0
	mov	%i5, %i1
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
	mov	%o1, %g1
	mov	%g2, %i3
	mov	%g1, %i4
	ldd	[%fp-24], %g2
	ldd	[%fp-32], %o2
	mov	%g2, %o0
	mov	%g3, %o1
	call	__moddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g1
	st	%i3, [%i5]
	st	%i4, [%i5+4]
	st	%g2, [%i5+8]
	st	%g1, [%i5+12]
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
	b	.L306
	 nop
.L308:
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
.L306:
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L307
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L308
	 nop
.L307:
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L309
	 nop
	ld	[%fp+68], %g1
	b	.L311
	 nop
.L309:
	mov	0, %g1
.L311:
	nop
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
	b	.L313
	 nop
.L315:
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+72]
.L313:
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	.L314
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L314
	 nop
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L315
	 nop
.L314:
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	.L316
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	mov	1, %g3
	cmp	%g2, %g1
	bg	.L317
	 nop
	mov	0, %g3
.L317:
	and	%g3, 0xff, %g1
	b	.L319
	 nop
.L316:
	mov	-1, %g1
.L319:
	nop
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
.L321:
	ld	[%fp+72], %g2
	add	%g2, 4, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, 4, %g3
	st	%g3, [%fp-4]
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L321
	 nop
	ld	[%fp+68], %g1
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
	b	.L324
	 nop
.L325:
	ld	[%fp-4], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp-4]
.L324:
	ld	[%fp-4], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L325
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+68], %g1
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
	b	.L328
	 nop
.L330:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+72]
.L328:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L329
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	.L329
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	.L329
	 nop
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	.L330
	 nop
.L329:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L331
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	.L332
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	mov	1, %g3
	cmp	%g2, %g1
	bg	.L333
	 nop
	mov	0, %g3
.L333:
	and	%g3, 0xff, %g1
	b	.L336
	 nop
.L332:
	mov	-1, %g1
	b	.L336
	 nop
.L331:
	mov	0, %g1
.L336:
	nop
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
	b	.L338
	 nop
.L340:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
.L338:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L339
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ld	[%fp+72], %g2
	cmp	%g2, %g1
	bne	.L340
	 nop
.L339:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L341
	 nop
	ld	[%fp+68], %g1
	b	.L343
	 nop
.L341:
	mov	0, %g1
.L343:
	nop
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
	b	.L345
	 nop
.L347:
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+68], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+72]
.L345:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L346
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	be	.L347
	 nop
.L346:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L348
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	.L349
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g2
	ld	[%fp+72], %g1
	ld	[%g1], %g1
	mov	1, %g3
	cmp	%g2, %g1
	bg	.L350
	 nop
	mov	0, %g3
.L350:
	and	%g3, 0xff, %g1
	b	.L353
	 nop
.L349:
	mov	-1, %g1
	b	.L353
	 nop
.L348:
	mov	0, %g1
.L353:
	nop
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
	b	.L355
	 nop
.L356:
	ld	[%fp+72], %g2
	add	%g2, 4, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, 4, %g3
	st	%g3, [%fp-4]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L355:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L356
	 nop
	ld	[%fp+68], %g1
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
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	bne	.L359
	 nop
	ld	[%fp+68], %g1
	b	.L360
	 nop
.L359:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g2
	ld	[%fp+76], %g1
	sll	%g1, 2, %g1
	cmp	%g2, %g1
	bgeu	.L361
	 nop
	b	.L362
	 nop
.L363:
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
.L362:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L363
	 nop
	b	.L364
	 nop
.L361:
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L365
	 nop
.L366:
	ld	[%fp+72], %g2
	add	%g2, 4, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, 4, %g3
	st	%g3, [%fp-4]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L365:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L366
	 nop
.L364:
	ld	[%fp+68], %g1
.L360:
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
	b	.L368
	 nop
.L369:
	ld	[%fp-4], %g1
	add	%g1, 4, %g2
	st	%g2, [%fp-4]
	ld	[%fp+72], %g2
	st	%g2, [%g1]
.L368:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L369
	 nop
	ld	[%fp+68], %g1
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
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	bgeu	.L372
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-8]
	b	.L373
	 nop
.L374:
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
.L373:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L374
	 nop
	b	.L378
	 nop
.L372:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	be	.L378
	 nop
	b	.L376
	 nop
.L377:
	ld	[%fp+68], %g2
	add	%g2, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	add	%g1, 1, %g3
	st	%g3, [%fp+72]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L376:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L377
	 nop
.L378:
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
	ld	[%fp-8], %g3
	ld	[%fp-4], %g1
	ld	[%fp+76], %g2
	and	%g2, 32, %g2
	cmp	%g2, 0
	be	.L380
	 nop
	ld	[%fp+76], %g2
	sll	%g1, %g2, %g2
	mov	0, %i5
	b	.L381
	 nop
.L380:
	srl	%g1, 1, %g4
	ld	[%fp+76], %g2
	xnor	%g0, %g2, %g2
	srl	%g4, %g2, %g4
	ld	[%fp+76], %g2
	sll	%g3, %g2, %g2
	or	%g4, %g2, %g2
	ld	[%fp+76], %g4
	sll	%g1, %g4, %i5
.L381:
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	and	%g4, 32, %g4
	cmp	%g4, 0
	be	.L382
	 nop
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	srl	%g3, %g1, %g1
	mov	0, %g3
	b	.L383
	 nop
.L382:
	sll	%g3, 1, %i4
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	xnor	%g0, %g4, %g4
	sll	%i4, %g4, %i4
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	srl	%g1, %g4, %g1
	or	%i4, %g1, %g1
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	srl	%g3, %g4, %g3
.L383:
	or	%g3, %g2, %g2
	or	%g1, %i5, %g1
	mov	%g2, %g3
	mov	%g3, %i0
	mov	%g1, %i1
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
	ld	[%fp-8], %g1
	ld	[%fp-4], %g3
	ld	[%fp+76], %g2
	and	%g2, 32, %g2
	cmp	%g2, 0
	be	.L386
	 nop
	ld	[%fp+76], %g2
	srl	%g1, %g2, %g2
	mov	0, %i5
	b	.L387
	 nop
.L386:
	sll	%g1, 1, %g4
	ld	[%fp+76], %g2
	xnor	%g0, %g2, %g2
	sll	%g4, %g2, %g4
	ld	[%fp+76], %g2
	srl	%g3, %g2, %g2
	or	%g4, %g2, %g2
	ld	[%fp+76], %g4
	srl	%g1, %g4, %i5
.L387:
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	and	%g4, 32, %g4
	cmp	%g4, 0
	be	.L388
	 nop
	ld	[%fp+76], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	sll	%g3, %g1, %g1
	mov	0, %g3
	b	.L389
	 nop
.L388:
	srl	%g3, 1, %i4
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	xnor	%g0, %g4, %g4
	srl	%i4, %g4, %i4
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	sll	%g1, %g4, %g1
	or	%i4, %g1, %g1
	ld	[%fp+76], %g4
	sub	%g0, %g4, %g4
	and	%g4, 63, %g4
	sll	%g3, %g4, %g3
.L389:
	or	%g1, %i5, %g1
	or	%g3, %g2, %g2
	mov	%g2, %g3
	mov	%g1, %i0
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
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	mov	0, %g2
	mov	255, %g3
	std	%g2, [%fp-8]
	ld	[%fp-4], %g1
	sll	%g1, 24, %g1
	ld	[%fp-16], %g2
	and	%g2, %g1, %g1
	srl	%g1, 24, %g2
	mov	0, %g4
	ld	[%fp-4], %g1
	sll	%g1, 16, %g1
	ld	[%fp-16], %g3
	and	%g3, %g1, %g1
	srl	%g1, 8, %g1
	mov	0, %g3
	or	%g4, %g3, %g3
	or	%g2, %g1, %g4
	ld	[%fp-4], %g1
	sll	%g1, 8, %g1
	mov	0, %i5
	ld	[%fp-16], %g2
	and	%g2, %g1, %g2
	ld	[%fp-12], %g1
	and	%g1, %i5, %g1
	sll	%g2, 8, %i5
	srl	%g1, 24, %g1
	or	%i5, %g1, %g1
	srl	%g2, 24, %g2
	or	%g3, %g2, %g3
	or	%g4, %g1, %g4
	ld	[%fp-4], %g1
	sll	%g1, 0, %g1
	mov	0, %i5
	ld	[%fp-16], %g2
	and	%g2, %g1, %g2
	ld	[%fp-12], %g1
	and	%g1, %i5, %g1
	sll	%g2, 24, %i5
	srl	%g1, 8, %g1
	or	%i5, %g1, %g1
	srl	%g2, 8, %g2
	or	%g3, %g2, %g3
	or	%g4, %g1, %g4
	ld	[%fp-4], %g1
	srl	%g1, 8, %g2
	ld	[%fp-8], %g1
	sll	%g1, 24, %g1
	or	%g2, %g1, %g1
	ld	[%fp-4], %g2
	sll	%g2, 24, %g2
	ld	[%fp-16], %i5
	and	%i5, %g1, %g1
	ld	[%fp-12], %i5
	and	%i5, %g2, %g2
	srl	%g2, 24, %i5
	sll	%g1, 8, %g1
	or	%i5, %g1, %g1
	sll	%g2, 8, %g2
	or	%g3, %g1, %g3
	or	%g4, %g2, %g4
	ld	[%fp-4], %g1
	srl	%g1, 16, %g2
	ld	[%fp-8], %g1
	sll	%g1, 16, %g1
	or	%g2, %g1, %g1
	ld	[%fp-4], %g2
	sll	%g2, 16, %g2
	ld	[%fp-16], %i5
	and	%i5, %g1, %g1
	ld	[%fp-12], %i5
	and	%i5, %g2, %g2
	srl	%g2, 8, %i5
	sll	%g1, 24, %g1
	or	%i5, %g1, %g1
	sll	%g2, 24, %g2
	or	%g3, %g1, %g3
	or	%g4, %g2, %g1
	ld	[%fp-4], %g2
	sll	%g2, 8, %g2
	ld	[%fp-12], %g4
	and	%g4, %g2, %g2
	sll	%g2, 8, %g2
	mov	0, %g4
	or	%g3, %g2, %g3
	or	%g1, %g4, %g1
	ld	[%fp-12], %g4
	ld	[%fp-4], %g2
	and	%g4, %g2, %g2
	sll	%g2, 24, %g2
	mov	0, %g4
	or	%g3, %g2, %g2
	or	%g1, %g4, %g1
	mov	%g2, %i0
	mov	%g1, %i1
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
	b	.L414
	 nop
.L417:
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L415
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	b	.L416
	 nop
.L415:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L414:
	ld	[%fp-4], %g1
	cmp	%g1, 31
	bleu	.L417
	 nop
	mov	0, %g1
.L416:
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
	bne	.L419
	 nop
	mov	0, %i5
	b	.L420
	 nop
.L419:
	mov	1, %i5
	b	.L421
	 nop
.L422:
	sra	%g1, 1, %g1
	add	%i5, 1, %i5
.L421:
	and	%g1, 1, %g2
	cmp	%g2, 0
	be	.L422
	 nop
	nop
.L420:
	mov	%i5, %i0
	jmp	%i7+8
	 restore
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4
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
	fbl	.L424
	 nop
	ld	[%fp+68], %f9
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ld	[%g1], %f8
	fcmpes	%f9, %f8
	nop
	fbule	.L429
	 nop
.L424:
	mov	1, %g1
	b	.L428
	 nop
.L429:
	mov	0, %g1
.L428:
	nop
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8
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
	fbl	.L431
	 nop
	ldd	[%fp-8], %f10
	sethi	%hi(.LC5), %g1
	or	%g1, %lo(.LC5), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L436
	 nop
.L431:
	mov	1, %g1
	b	.L435
	 nop
.L436:
	mov	0, %g1
.L435:
	nop
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst8
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
	fbl	.L438
	 nop
	ldd	[%fp-8], %f10
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L443
	 nop
.L438:
	mov	1, %g1
	b	.L442
	 nop
.L443:
	mov	0, %g1
.L442:
	nop
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
	.section	.rodata.cst4
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
	fbu	.L446
	 nop
	ld	[%fp+68], %f8
	fadds	%f8, %f8, %f8
	ld	[%fp+68], %f9
	fcmps	%f9, %f8
	nop
	fbe	.L446
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L447
	 nop
	sethi	%hi(.LC8), %g1
	or	%g1, %lo(.LC8), %g1
	ld	[%g1], %f8
	b	.L448
	 nop
.L447:
	sethi	%hi(.LC9), %g1
	or	%g1, %lo(.LC9), %g1
	ld	[%g1], %f8
.L448:
	st	%f8, [%fp-4]
.L451:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L449
	 nop
	ld	[%fp+68], %f9
	ld	[%fp-4], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp+68]
.L449:
	ld	[%fp+72], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	be	.L453
	 nop
	ld	[%fp-4], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp-4]
	b	.L451
	 nop
.L453:
	nop
.L446:
	ld	[%fp+68], %f8
	fmovs	%f8, %f0
	jmp	%i7+8
	 restore
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
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
	fbu	.L455
	 nop
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f8
	ldd	[%fp-16], %f10
	fcmpd	%f10, %f8
	nop
	fbe	.L455
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bge	.L456
	 nop
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %g1
	ldd	[%g1], %f8
	b	.L457
	 nop
.L456:
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %g1
	ldd	[%g1], %f8
.L457:
	std	%f8, [%fp-8]
.L460:
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L458
	 nop
	ldd	[%fp-16], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-16]
.L458:
	ld	[%fp+76], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L462
	 nop
	ldd	[%fp-8], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp-8]
	b	.L460
	 nop
.L462:
	nop
.L455:
	ldd	[%fp-16], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
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
	fbu	.L464
	 nop
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f8
	ldd	[%fp-16], %f10
	fcmpd	%f10, %f8
	nop
	fbe	.L464
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bge	.L465
	 nop
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %g1
	ldd	[%g1], %f8
	b	.L466
	 nop
.L465:
	sethi	%hi(.LC13), %g1
	or	%g1, %lo(.LC13), %g1
	ldd	[%g1], %f8
.L466:
	std	%f8, [%fp-8]
.L469:
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L467
	 nop
	ldd	[%fp-16], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-16]
.L467:
	ld	[%fp+76], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L471
	 nop
	ldd	[%fp-8], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp-8]
	b	.L469
	 nop
.L471:
	nop
.L464:
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
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L473
	 nop
.L474:
	ld	[%fp+72], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp+72]
	ldub	[%g1], %g3
	ld	[%fp-4], %g1
	add	%g1, 1, %g2
	st	%g2, [%fp-4]
	ldub	[%g1], %g2
	xor	%g3, %g2, %g2
	stb	%g2, [%g1]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L473:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L474
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
	b	.L477
	 nop
.L479:
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+76]
.L477:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L478
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
	bne	.L479
	 nop
.L478:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L480
	 nop
	ld	[%fp-4], %g1
	stb	%g0, [%g1]
.L480:
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
	b	.L483
	 nop
.L488:
	nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L483:
	ld	[%fp-4], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	bgeu	.L484
	 nop
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L488
	 nop
.L484:
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
	b	.L490
	 nop
.L494:
	ld	[%fp+72], %g1
	st	%g1, [%fp-4]
	b	.L491
	 nop
.L493:
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
	bne	.L491
	 nop
	ld	[%fp+68], %g1
	b	.L492
	 nop
.L491:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L493
	 nop
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L490:
	ld	[%fp+68], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L494
	 nop
	mov	0, %g1
.L492:
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
.L497:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	ld	[%fp+72], %g3
	cmp	%g3, %g2
	bne	.L496
	 nop
	st	%g1, [%fp-4]
.L496:
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	.L497
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
	ld	[%fp+72], %o0
	call	strlen, 0
	 nop
	st	%o0, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L502
	 nop
	ld	[%fp+68], %g1
	b	.L501
	 nop
.L504:
	ld	[%fp-4], %o2
	ld	[%fp+72], %o1
	ld	[%fp-8], %o0
	call	strncmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	.L503
	 nop
	ld	[%fp-8], %g1
	b	.L501
	 nop
.L503:
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L502:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o1
	ld	[%fp+68], %o0
	call	strchr, 0
	 nop
	st	%o0, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L504
	 nop
	mov	0, %g1
.L501:
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	strstr, .-strstr
	.section	.rodata.cst8
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
	fbuge	.L506
	 nop
	ldd	[%fp-16], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbg	.L508
	 nop
.L506:
	ldd	[%fp-8], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L509
	 nop
	ldd	[%fp-16], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L509
	 nop
.L508:
	ldd	[%fp-8], %f8
	fnegs	%f8, %f8
	b	.L512
	 nop
.L509:
	ldd	[%fp-8], %f8
.L512:
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
	st	%g1, [%fp-4]
	ld	[%fp+80], %g1
	cmp	%g1, 0
	bne	.L516
	 nop
	ld	[%fp+68], %g1
	b	.L517
	 nop
.L516:
	ld	[%fp+72], %g2
	ld	[%fp+80], %g1
	cmp	%g2, %g1
	addx	%g0, 0, %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	.L519
	 nop
	mov	0, %g1
	b	.L517
	 nop
.L521:
	ld	[%fp+68], %g1
	ldub	[%g1], %g2
	ld	[%fp+76], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	.L520
	 nop
	ld	[%fp+68], %g1
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
	bne	.L520
	 nop
	ld	[%fp+68], %g1
	b	.L517
	 nop
.L520:
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L519:
	ld	[%fp+68], %g2
	ld	[%fp-4], %g1
	cmp	%g2, %g1
	bleu	.L521
	 nop
	mov	0, %g1
.L517:
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
	.section	.rodata.cst8
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
	fbuge	.L525
	 nop
	ldd	[%fp-16], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-16]
	mov	1, %g1
	st	%g1, [%fp-4]
.L525:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbul	.L540
	 nop
	b	.L529
	 nop
.L530:
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ldd	[%fp-16], %f10
	sethi	%hi(.LC17), %g1
	or	%g1, %lo(.LC17), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%fp-16]
.L529:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbge	.L530
	 nop
	b	.L531
	 nop
.L540:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC18), %g1
	or	%g1, %lo(.LC18), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L531
	 nop
	ldd	[%fp-16], %f10
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %g1
	ldd	[%g1], %f8
	fcmpd	%f10, %f8
	nop
	fbe	.L531
	 nop
	b	.L533
	 nop
.L534:
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f8
	std	%f8, [%fp-16]
.L533:
	ldd	[%fp-16], %f10
	sethi	%hi(.LC18), %g1
	or	%g1, %lo(.LC18), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L534
	 nop
.L531:
	ld	[%fp+76], %g1
	ld	[%fp-8], %g2
	st	%g2, [%g1]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L535
	 nop
	ldd	[%fp-16], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-16]
.L535:
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
	ldd	[%fp-24], %g2
	std	%g2, [%fp-16]
	b	.L542
	 nop
.L545:
	ld	[%fp-16], %g1
	and	%g1, 0, %g3
	ld	[%fp-12], %g1
	and	%g1, 1, %g2
	mov	%g3, %g1
	or	%g1, %g2, %g1
	cmp	%g1, 0
	be	.L543
	 nop
	ldd	[%fp-8], %i2
	ldd	[%fp-32], %i4
	addcc	%i3, %i5, %g3
	addx	%i2, %i4, %g2
	std	%g2, [%fp-8]
.L543:
	ld	[%fp-28], %g1
	srl	%g1, 31, %g2
	ld	[%fp-32], %g1
	sll	%g1, 1, %g1
	or	%g2, %g1, %g1
	ld	[%fp-28], %g2
	sll	%g2, 1, %g2
	st	%g1, [%fp-32]
	st	%g2, [%fp-28]
	ld	[%fp-16], %g1
	sll	%g1, 31, %g2
	ld	[%fp-12], %g1
	srl	%g1, 1, %g1
	or	%g2, %g1, %g1
	ld	[%fp-16], %g2
	srl	%g2, 1, %g2
	st	%g2, [%fp-16]
	st	%g1, [%fp-12]
.L542:
	ld	[%fp-16], %g1
	ld	[%fp-12], %g2
	or	%g1, %g2, %g1
	cmp	%g1, 0
	bne	.L545
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
	b	.L548
	 nop
.L550:
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp-4]
.L548:
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L551
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L551
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L550
	 nop
	b	.L551
	 nop
.L553:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L552
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L552:
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L551:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L553
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L554
	 nop
	ld	[%fp+68], %g1
	b	.L555
	 nop
.L554:
	ld	[%fp-8], %g1
.L555:
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
	bge	.L557
	 nop
	ldub	[%fp+68], %g1
	xnor	%g0, %g1, %g1
	stb	%g1, [%fp+68]
.L557:
	ldub	[%fp+68], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L558
	 nop
	mov	7, %g1
	b	.L559
	 nop
.L558:
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
.L559:
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
	bge	.L561
	 nop
	ld	[%fp-16], %g1
	xnor	%g0, %g1, %g2
	ld	[%fp-12], %g1
	xnor	%g0, %g1, %g1
	st	%g2, [%fp-16]
	st	%g1, [%fp-12]
.L561:
	ld	[%fp-16], %g1
	ld	[%fp-12], %g2
	or	%g1, %g2, %g1
	cmp	%g1, 0
	bne	.L563
	 nop
	mov	63, %g1
	b	.L564
	 nop
.L563:
	ldd	[%fp-16], %g2
	mov	%g2, %o0
	mov	%g3, %o1
	call	__clzdi2, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
.L564:
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
	b	.L566
	 nop
.L568:
	ld	[%fp+68], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L567
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+72], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
.L567:
	ld	[%fp+68], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
.L566:
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bne	.L568
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
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 3, %g1
	st	%g1, [%fp-12]
	ld	[%fp+76], %g1
	and	%g1, -8, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L571
	 nop
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ld	[%fp+68], %g2
	cmp	%g2, %g1
	bleu	.L578
	 nop
.L571:
	st	%g0, [%fp-4]
	b	.L573
	 nop
.L574:
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
.L573:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	blu	.L574
	 nop
	b	.L575
	 nop
.L576:
	ld	[%fp+72], %g2
	ld	[%fp-8], %g1
	add	%g2, %g1, %g2
	ld	[%fp+68], %g3
	ld	[%fp-8], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L575:
	ld	[%fp+76], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bgu	.L576
	 nop
	b	.L577
	 nop
.L579:
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g2
	ld	[%fp+68], %g3
	ld	[%fp+76], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L578:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L579
	 nop
	nop
.L577:
	nop
	jmp	%i7+8
	 restore
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L581
	 nop
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ld	[%fp+68], %g2
	cmp	%g2, %g1
	bleu	.L587
	 nop
.L581:
	st	%g0, [%fp-4]
	b	.L583
	 nop
.L584:
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
.L583:
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	blu	.L584
	 nop
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L586
	 nop
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g2
	ld	[%fp+76], %g1
	add	%g1, -1, %g1
	ld	[%fp+68], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	b	.L586
	 nop
.L588:
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g2
	ld	[%fp+68], %g3
	ld	[%fp+76], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L587:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L588
	 nop
	nop
.L586:
	nop
	jmp	%i7+8
	 restore
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+76], %g1
	srl	%g1, 2, %g1
	st	%g1, [%fp-12]
	ld	[%fp+76], %g1
	and	%g1, -4, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L590
	 nop
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g1
	ld	[%fp+68], %g2
	cmp	%g2, %g1
	bleu	.L597
	 nop
.L590:
	st	%g0, [%fp-4]
	b	.L592
	 nop
.L593:
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
.L592:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	blu	.L593
	 nop
	b	.L594
	 nop
.L595:
	ld	[%fp+72], %g2
	ld	[%fp-8], %g1
	add	%g2, %g1, %g2
	ld	[%fp+68], %g3
	ld	[%fp-8], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L594:
	ld	[%fp+76], %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bgu	.L595
	 nop
	b	.L596
	 nop
.L598:
	ld	[%fp+72], %g2
	ld	[%fp+76], %g1
	add	%g2, %g1, %g2
	ld	[%fp+68], %g3
	ld	[%fp+76], %g1
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L597:
	ld	[%fp+76], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+76]
	cmp	%g1, 0
	bne	.L598
	 nop
	nop
.L596:
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
	.section	.rodata.cst8
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
	bge	.L603
	 nop
	sethi	%hi(.LC19), %g1
	or	%g1, %lo(.LC19), %g1
	ldd	[%g1], %f10
	faddd	%f8, %f10, %f8
.L603:
	nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	__uitod, .-__uitod
	.section	.rodata.cst8
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
	bge	.L605
	 nop
	sethi	%hi(.LC20), %g1
	or	%g1, %lo(.LC20), %g1
	ldd	[%g1], %f10
	faddd	%f8, %f10, %f8
.L605:
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
	b	.L614
	 nop
.L617:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	15, %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L619
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L614:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L617
	 nop
	b	.L616
	 nop
.L619:
	nop
.L616:
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
	b	.L621
	 nop
.L624:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L626
	 nop
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L621:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L624
	 nop
	b	.L623
	 nop
.L626:
	nop
.L623:
	ld	[%fp-4], %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
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
	fbul	.L632
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
	b	.L630
	 nop
.L632:
	ld	[%fp+68], %f8
	fstoi	%f8, %f8
	st	%f8, [%fp-4]
	ld	[%fp-4], %g1
.L630:
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
	b	.L634
	 nop
.L636:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L635
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L635:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L634:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L636
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
	b	.L639
	 nop
.L641:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp-4], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L640
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L640:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L639:
	ld	[%fp-4], %g1
	cmp	%g1, 15
	ble	.L641
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
	b	.L644
	 nop
.L646:
	ld	[%fp+68], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L645
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+72], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
.L645:
	ld	[%fp+68], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
.L644:
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bne	.L646
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
	bne	.L651
	 nop
	mov	0, %g1
	b	.L650
	 nop
.L653:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L652
	 nop
	ld	[%fp-4], %g2
	ld	[%fp+68], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-4]
.L652:
	ld	[%fp+68], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L651:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bne	.L653
	 nop
	ld	[%fp-4], %g1
.L650:
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
	b	.L655
	 nop
.L657:
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp-4]
.L655:
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L658
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L658
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L657
	 nop
	b	.L658
	 nop
.L660:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L659
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L659:
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L658:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L660
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L661
	 nop
	ld	[%fp+68], %g1
	b	.L662
	 nop
.L661:
	ld	[%fp-8], %g1
.L662:
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
	fbuge	.L671
	 nop
	mov	-1, %g1
	b	.L666
	 nop
.L671:
	ld	[%fp+68], %f9
	ld	[%fp+72], %f8
	fcmpes	%f9, %f8
	nop
	fbule	.L672
	 nop
	mov	1, %g1
	b	.L666
	 nop
.L672:
	mov	0, %g1
.L666:
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
	fbuge	.L681
	 nop
	mov	-1, %g1
	b	.L676
	 nop
.L681:
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fcmped	%f10, %f8
	nop
	fbule	.L682
	 nop
	mov	1, %g1
	b	.L676
	 nop
.L682:
	mov	0, %g1
.L676:
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
	mov	%g1, %g2
	sra	%g1, 31, %g1
	mov	%g1, %g3
	ld	[%fp+72], %g1
	mov	%g1, %g4
	sra	%g1, 31, %g1
	mov	%g1, %o2
	mov	%g4, %o3
	mov	%g3, %o0
	mov	%g2, %o1
	call	__muldi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g1
	mov	%g2, %i0
	mov	%g1, %i1
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
	mov	%g1, %g2
	mov	0, %g3
	ld	[%fp+72], %g1
	mov	0, %g4
	mov	%g4, %o2
	mov	%g1, %o3
	mov	%g3, %o0
	mov	%g2, %o1
	call	__muldi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g1
	mov	%g2, %i0
	mov	%g1, %i1
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
	bge	.L688
	 nop
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
	mov	1, %g1
	st	%g1, [%fp-8]
.L688:
	stb	%g0, [%fp-1]
	b	.L689
	 nop
.L692:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L690
	 nop
	ld	[%fp-12], %g2
	ld	[%fp+68], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
.L690:
	ld	[%fp+68], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp+72], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+72]
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L689:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	be	.L691
	 nop
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 31
	bleu	.L692
	 nop
.L691:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	be	.L693
	 nop
	ld	[%fp-12], %g1
	sub	%g0, %g1, %g1
	b	.L695
	 nop
.L693:
	ld	[%fp-12], %g1
.L695:
	nop
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
	bge	.L697
	 nop
	ld	[%fp+68], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-4], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
.L697:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L698
	 nop
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-4]
.L698:
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
	be	.L699
	 nop
	ld	[%fp-8], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp-8]
.L699:
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
	bge	.L702
	 nop
	ld	[%fp+68], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+68]
	mov	1, %g1
	st	%g1, [%fp-4]
.L702:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L703
	 nop
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
.L703:
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
	be	.L704
	 nop
	ld	[%fp-8], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp-8]
.L704:
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
	b	.L707
	 nop
.L709:
	lduh	[%fp+72], %g1
	sll	%g1, 1, %g1
	sth	%g1, [%fp+72]
	lduh	[%fp-2], %g1
	sll	%g1, 1, %g1
	sth	%g1, [%fp-2]
.L707:
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	bgeu	.L710
	 nop
	lduh	[%fp-2], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	be	.L710
	 nop
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	sra	%g1, 16, %g1
	cmp	%g1, 0
	bge	.L709
	 nop
	b	.L710
	 nop
.L712:
	lduh	[%fp+68], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+72], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	blu	.L711
	 nop
	lduh	[%fp+68], %g2
	lduh	[%fp+72], %g1
	sub	%g2, %g1, %g1
	sth	%g1, [%fp+68]
	lduh	[%fp-4], %g2
	lduh	[%fp-2], %g1
	or	%g2, %g1, %g1
	sth	%g1, [%fp-4]
.L711:
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
.L710:
	lduh	[%fp-2], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L712
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L713
	 nop
	lduh	[%fp+68], %g1
	b	.L714
	 nop
.L713:
	lduh	[%fp-4], %g1
.L714:
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
	b	.L716
	 nop
.L718:
	ld	[%fp+72], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp-4], %g1
	sll	%g1, 1, %g1
	st	%g1, [%fp-4]
.L716:
	ld	[%fp+72], %g2
	ld	[%fp+68], %g1
	cmp	%g2, %g1
	bgeu	.L719
	 nop
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L719
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L718
	 nop
	b	.L719
	 nop
.L721:
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	blu	.L720
	 nop
	ld	[%fp+68], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g2
	ld	[%fp-4], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L720:
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp-4]
	ld	[%fp+72], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+72]
.L719:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bne	.L721
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L722
	 nop
	ld	[%fp+68], %g1
	b	.L723
	 nop
.L722:
	ld	[%fp-8], %g1
.L723:
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
	be	.L725
	 nop
	st	%g0, [%fp-20]
	ld	[%fp-12], %g2
	ld	[%fp+76], %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	st	%g1, [%fp-24]
	b	.L726
	 nop
.L725:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L727
	 nop
	ldd	[%fp-32], %g2
	b	.L729
	 nop
.L727:
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
.L726:
	ldd	[%fp-24], %g2
.L729:
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
	be	.L731
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
	b	.L732
	 nop
.L731:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L733
	 nop
	ldd	[%fp-32], %g2
	b	.L735
	 nop
.L733:
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
.L732:
	ldd	[%fp-24], %g2
.L735:
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
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ld	[%fp-8], %g1
	srl	%g1, 24, %g2
	mov	0, %i5
	ld	[%fp-8], %g1
	srl	%g1, 8, %g4
	mov	0, %g1
	and	%g1, 0, %g3
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g4, %g1, %g1
	or	%i5, %g3, %g4
	or	%g2, %g1, %g2
	ld	[%fp-8], %g1
	sll	%g1, 8, %g3
	ld	[%fp-4], %g1
	srl	%g1, 24, %g1
	or	%g3, %g1, %g1
	ld	[%fp-8], %g3
	srl	%g3, 24, %g3
	and	%g3, 0, %g3
	sethi	%hi(16711680), %i5
	and	%g1, %i5, %g1
	or	%g4, %g3, %g4
	or	%g2, %g1, %g2
	ld	[%fp-8], %g1
	sll	%g1, 24, %g3
	ld	[%fp-4], %g1
	srl	%g1, 8, %g1
	or	%g3, %g1, %g1
	ld	[%fp-8], %g3
	srl	%g3, 8, %g3
	and	%g3, 0, %g3
	sethi	%hi(-16777216), %i5
	and	%g1, %i5, %g1
	or	%g4, %g3, %g4
	or	%g2, %g1, %g2
	ld	[%fp-4], %g1
	srl	%g1, 24, %g3
	ld	[%fp-8], %g1
	sll	%g1, 8, %g1
	or	%g3, %g1, %g1
	ld	[%fp-4], %g3
	sll	%g3, 8, %i5
	and	%g1, 255, %g3
	and	%i5, 0, %g1
	or	%g4, %g3, %g4
	or	%g2, %g1, %g2
	ld	[%fp-4], %g1
	srl	%g1, 8, %g3
	ld	[%fp-8], %g1
	sll	%g1, 24, %g1
	or	%g3, %g1, %g1
	ld	[%fp-4], %g3
	sll	%g3, 24, %i5
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g1, %g3, %g3
	and	%i5, 0, %g1
	or	%g4, %g3, %g4
	or	%g2, %g1, %g2
	ld	[%fp-4], %g1
	sll	%g1, 8, %g3
	mov	0, %i5
	sethi	%hi(16711680), %g1
	and	%g3, %g1, %g3
	and	%i5, 0, %g1
	or	%g4, %g3, %g3
	or	%g2, %g1, %g1
	ld	[%fp-4], %g2
	sll	%g2, 24, %g2
	mov	0, %g4
	or	%g3, %g2, %g2
	or	%g1, %g4, %g1
	mov	%g2, %i0
	mov	%g1, %i1
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
	save	%sp, -152, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%g2, %g1
	bgu	.L741
	 nop
	mov	16, %g1
	b	.L742
	 nop
.L741:
	mov	0, %g1
.L742:
	st	%g1, [%fp-8]
	mov	16, %g2
	ld	[%fp-8], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-4], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g1
	st	%g1, [%fp-16]
	ld	[%fp-12], %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	.L743
	 nop
	mov	8, %g1
	b	.L744
	 nop
.L743:
	mov	0, %g1
.L744:
	st	%g1, [%fp-20]
	mov	8, %g2
	ld	[%fp-20], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-12], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-20], %g1
	ld	[%fp-16], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-24], %g1
	and	%g1, 240, %g1
	cmp	%g1, 0
	bne	.L745
	 nop
	mov	4, %g1
	b	.L746
	 nop
.L745:
	mov	0, %g1
.L746:
	st	%g1, [%fp-32]
	mov	4, %g2
	ld	[%fp-32], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-24], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-36]
	ld	[%fp-32], %g1
	ld	[%fp-28], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-40]
	ld	[%fp-36], %g1
	and	%g1, 12, %g1
	cmp	%g1, 0
	bne	.L747
	 nop
	mov	2, %g1
	b	.L748
	 nop
.L747:
	mov	0, %g1
.L748:
	st	%g1, [%fp-44]
	mov	2, %g2
	ld	[%fp-44], %g1
	sub	%g2, %g1, %g1
	ld	[%fp-36], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp-48]
	ld	[%fp-44], %g1
	ld	[%fp-40], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-52]
	ld	[%fp-48], %g1
	and	%g1, 2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %g3
	mov	2, %g2
	ld	[%fp-48], %g1
	sub	%g2, %g1, %g1
	mov	%g1, %o1
	mov	%g3, %o0
	call	.umul, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ld	[%fp-52], %g1
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
	bge	.L751
	 nop
	mov	0, %g1
	b	.L756
	 nop
.L751:
	ld	[%fp-8], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	ble	.L753
	 nop
	mov	2, %g1
	b	.L756
	 nop
.L753:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgeu	.L754
	 nop
	mov	0, %g1
	b	.L756
	 nop
.L754:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bleu	.L755
	 nop
	mov	2, %g1
	b	.L756
	 nop
.L755:
	mov	1, %g1
.L756:
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
	save	%sp, -152, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	.L760
	 nop
	mov	16, %g1
	b	.L761
	 nop
.L760:
	mov	0, %g1
.L761:
	st	%g1, [%fp-8]
	ld	[%fp-4], %g2
	ld	[%fp-8], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g1
	st	%g1, [%fp-16]
	ld	[%fp-12], %g1
	and	%g1, 255, %g1
	cmp	%g1, 0
	bne	.L762
	 nop
	mov	8, %g1
	b	.L763
	 nop
.L762:
	mov	0, %g1
.L763:
	st	%g1, [%fp-20]
	ld	[%fp-12], %g2
	ld	[%fp-20], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-24]
	ld	[%fp-20], %g1
	ld	[%fp-16], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-24], %g1
	and	%g1, 15, %g1
	cmp	%g1, 0
	bne	.L764
	 nop
	mov	4, %g1
	b	.L765
	 nop
.L764:
	mov	0, %g1
.L765:
	st	%g1, [%fp-32]
	ld	[%fp-24], %g2
	ld	[%fp-32], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-36]
	ld	[%fp-32], %g1
	ld	[%fp-28], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-40]
	ld	[%fp-36], %g1
	and	%g1, 3, %g1
	cmp	%g1, 0
	bne	.L766
	 nop
	mov	2, %g1
	b	.L767
	 nop
.L766:
	mov	0, %g1
.L767:
	st	%g1, [%fp-44]
	ld	[%fp-36], %g2
	ld	[%fp-44], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-48]
	ld	[%fp-48], %g1
	and	%g1, 3, %g1
	st	%g1, [%fp-52]
	ld	[%fp-44], %g1
	ld	[%fp-40], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-56]
	ld	[%fp-52], %g1
	xnor	%g0, %g1, %g1
	and	%g1, 1, %g2
	ld	[%fp-52], %g1
	srl	%g1, 1, %g1
	mov	2, %g3
	sub	%g3, %g1, %g1
	sub	%g0, %g2, %g2
	and	%g2, %g1, %g2
	ld	[%fp-56], %g1
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
	be	.L770
	 nop
	st	%g0, [%fp-24]
	ld	[%fp-16], %g2
	ld	[%fp+76], %g3
	ld	[%fp-4], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-20]
	b	.L771
	 nop
.L770:
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bne	.L772
	 nop
	ld	[%fp-32], %g2
	ld	[%fp-28], %g1
	b	.L774
	 nop
.L772:
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
.L771:
	ld	[%fp-24], %g2
	ld	[%fp-20], %g1
.L774:
	mov	%g2, %i0
	mov	%g1, %i1
	jmp	%i7+8
	 restore
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -128, %sp
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
	st	%g1, [%fp-28]
	ld	[%fp-28], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-28], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-28]
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
	st	%g1, [%fp-16]
	ld	[%fp-28], %g2
	ld	[%fp-16], %g3
	ld	[%fp-8], %g1
	and	%g3, %g1, %g3
	ld	[%fp-4], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-16], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-32]
	ld	[%fp-28], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp-28], %g2
	ld	[%fp-8], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-28]
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
	ld	[%fp-20], %g1
	add	%g1, %g2, %g1
	st	%g1, [%fp-24]
	ld	[%fp-28], %g2
	ld	[%fp-24], %g3
	ld	[%fp-8], %g1
	and	%g3, %g1, %g3
	ld	[%fp-4], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-32], %g1
	mov	%g1, %g3
	ld	[%fp-24], %g2
	ld	[%fp-4], %g1
	srl	%g2, %g1, %g1
	add	%g3, %g1, %g1
	st	%g1, [%fp-32]
	ld	[%fp-32], %g1
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
	st	%g1, [%fp-32]
	ldd	[%fp-32], %g2
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
	mov	%i5, %g1
	mov	%g2, %i0
	mov	%g1, %i1
	jmp	%i7+8
	 restore
	.size	__negdi2, .-__negdi2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -128, %sp
	std	%i0, [%fp-32]
	ldd	[%fp-32], %g2
	std	%g2, [%fp-24]
	ld	[%fp-24], %g1
	mov	%g1, %g2
	ld	[%fp-20], %g1
	xor	%g2, %g1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 16, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	srl	%g1, 8, %g1
	ld	[%fp-8], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	srl	%g1, 4, %g1
	ld	[%fp-12], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-16]
	ld	[%fp-16], %g1
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
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	srl	%g1, 16, %g1
	ld	[%fp-4], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	srl	%g1, 8, %g1
	ld	[%fp-8], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	srl	%g1, 4, %g1
	ld	[%fp-12], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp-16]
	ld	[%fp-16], %g1
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
	save	%sp, -144, %sp
	std	%i0, [%fp-48]
	ldd	[%fp-48], %i0
	std	%i0, [%fp-8]
	ld	[%fp-8], %g1
	sll	%g1, 31, %g4
	ld	[%fp-4], %g1
	srl	%g1, 1, %g1
	or	%g4, %g1, %g1
	ld	[%fp-8], %g4
	srl	%g4, 1, %i1
	sethi	%hi(1431655424), %g4
	or	%g4, 341, %g4
	and	%i1, %g4, %o4
	sethi	%hi(1431655424), %g4
	or	%g4, 341, %g4
	and	%g1, %g4, %o5
	ldd	[%fp-8], %o2
	subcc	%o3, %o5, %i1
	subx	%o2, %o4, %i0
	std	%i0, [%fp-16]
	ld	[%fp-16], %g1
	sll	%g1, 30, %g4
	ld	[%fp-12], %g1
	srl	%g1, 2, %g1
	or	%g4, %g1, %g1
	ld	[%fp-16], %g4
	srl	%g4, 2, %i1
	sethi	%hi(858992640), %g4
	or	%g4, 819, %g4
	and	%i1, %g4, %i2
	sethi	%hi(858992640), %g4
	or	%g4, 819, %g4
	and	%g1, %g4, %i3
	ld	[%fp-16], %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g4, %g1, %i4
	ld	[%fp-12], %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g4, %g1, %i5
	addcc	%i3, %i5, %i1
	addx	%i2, %i4, %i0
	std	%i0, [%fp-24]
	ld	[%fp-24], %g1
	sll	%g1, 28, %g1
	ld	[%fp-20], %g4
	srl	%g4, 4, %g3
	or	%g1, %g3, %g3
	ld	[%fp-24], %g1
	srl	%g1, 4, %g2
	ldd	[%fp-24], %i2
	addcc	%g3, %i3, %i5
	addx	%g2, %i2, %i4
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%i4, %g1, %g1
	st	%g1, [%fp-32]
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%i5, %g1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-28], %g1
	ld	[%fp-32], %g2
	srl	%g2, 0, %g2
	add	%g1, %g2, %g1
	st	%g1, [%fp-36]
	ld	[%fp-36], %g1
	srl	%g1, 16, %g1
	ld	[%fp-36], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-40]
	ld	[%fp-40], %g1
	srl	%g1, 8, %g2
	ld	[%fp-40], %g1
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
	save	%sp, -120, %sp
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
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	srl	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	ld	[%fp-8], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	srl	%g1, 4, %g2
	ld	[%fp-12], %g1
	add	%g2, %g1, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp-16]
	ld	[%fp-16], %g1
	srl	%g1, 16, %g1
	ld	[%fp-16], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-20]
	ld	[%fp-20], %g1
	srl	%g1, 8, %g2
	ld	[%fp-20], %g1
	add	%g2, %g1, %g1
	and	%g1, 63, %g1
	mov	%g1, %i0
	jmp	%i7+8
	 restore
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
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
.L793:
	ld	[%fp+76], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L790
	 nop
	ldd	[%fp-8], %f10
	ldd	[%fp-24], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-8]
.L790:
	ld	[%fp+76], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+76]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	be	.L798
	 nop
	ldd	[%fp-24], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp-24]
	b	.L793
	 nop
.L798:
	nop
	ld	[%fp-12], %g1
	cmp	%g1, 0
	be	.L794
	 nop
	sethi	%hi(.LC22), %g1
	or	%g1, %lo(.LC22), %g1
	ldd	[%g1], %f10
	ldd	[%fp-8], %f8
	fdivd	%f10, %f8, %f8
	b	.L796
	 nop
.L794:
	ldd	[%fp-8], %f8
.L796:
	nop
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	jmp	%i7+8
	 restore
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
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
.L803:
	ld	[%fp+72], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L800
	 nop
	ld	[%fp-4], %f9
	ld	[%fp+68], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp-4]
.L800:
	ld	[%fp+72], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	be	.L808
	 nop
	ld	[%fp+68], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp+68]
	b	.L803
	 nop
.L808:
	nop
	ld	[%fp-8], %g1
	cmp	%g1, 0
	be	.L804
	 nop
	sethi	%hi(.LC23), %g1
	or	%g1, %lo(.LC23), %g1
	ld	[%g1], %f9
	ld	[%fp-4], %f8
	fdivs	%f9, %f8, %f8
	b	.L806
	 nop
.L804:
	ld	[%fp-4], %f8
.L806:
	nop
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
	bgeu	.L810
	 nop
	mov	0, %g1
	b	.L815
	 nop
.L810:
	ld	[%fp-8], %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	bleu	.L812
	 nop
	mov	2, %g1
	b	.L815
	 nop
.L812:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgeu	.L813
	 nop
	mov	0, %g1
	b	.L815
	 nop
.L813:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bleu	.L814
	 nop
	mov	2, %g1
	b	.L815
	 nop
.L814:
	mov	1, %g1
.L815:
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
