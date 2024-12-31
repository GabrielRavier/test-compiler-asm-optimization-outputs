	.file	"mini-libc.c"
	.section	".text"
	.align 4
	.global make_ti
	.type	make_ti, #function
	.proc	05
make_ti:
	.register	%g2, #scratch
	.register	%g3, #scratch
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g3
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	make_ti, .-make_ti
	.align 4
	.global make_tu
	.type	make_tu, #function
	.proc	017
make_tu:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g3
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	make_tu, .-make_tu
	.align 4
	.global memmove
	.type	memmove, #function
	.proc	0120
memmove:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2183], %g2
	ldx	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L6
	 nop
	ldx	[%fp+2183], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L7
	 nop
.L8:
	ldx	[%fp+2023], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2039], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2023], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2039], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L7:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L8
	 nop
	ba,pt	%xcc, .L9
	 nop
.L6:
	ldx	[%fp+2183], %g2
	ldx	[%fp+2175], %g1
	cmp	%g2, %g1
	be	%xcc, .L9
	 nop
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L10
	 nop
.L11:
	ldx	[%fp+2183], %g2
	add	%g2, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g3
	stx	%g3, [%fp+2031]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L10:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L11
	 nop
.L9:
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memmove, .-memmove
	.align 4
	.global memccpy
	.type	memccpy, #function
	.proc	0120
memccpy:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	stx	%i3, [%fp+2199]
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L14
	 nop
.L16:
	ldx	[%fp+2199], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2199]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L14:
	ldx	[%fp+2199], %g1
	brz	%g1, .L15
	 nop
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2175], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2043], %g2
	cmp	%g2, %g1
	bne	%icc, .L16
	 nop
.L15:
	ldx	[%fp+2199], %g1
	brz	%g1, .L17
	 nop
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	ba,pt	%xcc, .L18
	 nop
.L17:
	mov	0, %g1
.L18:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memccpy, .-memccpy
	.align 4
	.global memchr
	.type	memchr, #function
	.proc	0120
memchr:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	stx	%i2, [%fp+2191]
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L20
	 nop
.L22:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L20:
	ldx	[%fp+2191], %g1
	brz	%g1, .L21
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2043], %g2
	cmp	%g2, %g1
	bne	%icc, .L22
	 nop
.L21:
	ldx	[%fp+2191], %g1
	brz	%g1, .L23
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L25
	 nop
.L23:
	mov	0, %g1
.L25:
	nop
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ba,pt	%xcc, .L27
	 nop
.L29:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
.L27:
	ldx	[%fp+2191], %g1
	brz	%g1, .L28
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	%icc, .L29
	 nop
.L28:
	ldx	[%fp+2191], %g1
	brz	%g1, .L30
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
	ba,pt	%xcc, .L32
	 nop
.L30:
	mov	0, %g1
.L32:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memcmp, .-memcmp
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L34
	 nop
.L35:
	ldx	[%fp+2183], %g2
	add	%g2, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g3
	stx	%g3, [%fp+2039]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L34:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L35
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memcpy, .-memcpy
	.align 4
	.global memrchr
	.type	memrchr, #function
	.proc	0120
memrchr:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	stx	%i2, [%fp+2191]
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L38
	 nop
.L40:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2043], %g2
	cmp	%g2, %g1
	bne	%icc, .L38
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L39
	 nop
.L38:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L40
	 nop
	mov	0, %g1
.L39:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memrchr, .-memrchr
	.align 4
	.global memset
	.type	memset, #function
	.proc	0120
memset:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	stx	%i2, [%fp+2191]
	st	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L42
	 nop
.L43:
	ldx	[%fp+2039], %g1
	ld	[%fp+2183], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L42:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L43
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memset, .-memset
	.align 4
	.global stpcpy
	.type	stpcpy, #function
	.proc	0102
stpcpy:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ba,pt	%xcc, .L46
	 nop
.L47:
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L46:
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2175], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L47
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	stpcpy, .-stpcpy
	.align 4
	.global strchrnul
	.type	strchrnul, #function
	.proc	0102
strchrnul:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L50
	 nop
.L52:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L50:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	be	%icc, .L51
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2043], %g2
	cmp	%g2, %g1
	bne	%icc, .L52
	 nop
.L51:
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strchrnul, .-strchrnul
	.align 4
	.global strchr
	.type	strchr, #function
	.proc	0102
strchr:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g2, [%fp+2183]
.L57:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	ld	[%fp+2183], %g3
	cmp	%g3, %g2
	be	%icc, .L58
	 nop
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	%icc, .L57
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L56
	 nop
.L58:
	nop
.L56:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strchr, .-strchr
	.align 4
	.global strcmp
	.type	strcmp, #function
	.proc	04
strcmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ba,pt	%xcc, .L60
	 nop
.L62:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
.L60:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	%icc, .L61
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L62
	 nop
.L61:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strcmp, .-strcmp
	.align 4
	.global strlen
	.type	strlen, #function
	.proc	017
strlen:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L65
	 nop
.L66:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L65:
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L66
	 nop
	ldx	[%fp+2039], %g2
	ldx	[%fp+2175], %g1
	sub	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strlen, .-strlen
	.align 4
	.global strncmp
	.type	strncmp, #function
	.proc	04
strncmp:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2039]
	brnz	%g1, .L71
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L70
	 nop
.L73:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2039]
.L71:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	%icc, .L72
	 nop
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	%icc, .L72
	 nop
	ldx	[%fp+2039], %g1
	brz	%g1, .L72
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	%icc, .L73
	 nop
.L72:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
.L70:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strncmp, .-strncmp
	.align 4
	.global swab
	.type	swab, #function
	.proc	020
swab:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ba,pt	%xcc, .L75
	 nop
.L76:
	mov	1, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ldx	[%fp+2183], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	ldx	[%fp+2175], %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2183], %g1
	add	%g1, 2, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	add	%g1, 2, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2191], %g1
	add	%g1, -2, %g1
	stx	%g1, [%fp+2191]
.L75:
	ldx	[%fp+2191], %g1
	cmp	%g1, 1
	bg	%xcc, .L76
	 nop
	nop
	nop
	return	%i7+8
	 nop
	.size	swab, .-swab
	.align 4
	.global isalpha
	.type	isalpha, #function
	.proc	04
isalpha:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 25
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isalpha, .-isalpha
	.align 4
	.global isascii
	.type	isascii, #function
	.proc	04
isascii:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	cmp	%g1, 127
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isascii, .-isascii
	.align 4
	.global isblank
	.type	isblank, #function
	.proc	04
isblank:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	cmp	%g1, 32
	be	%icc, .L82
	 nop
	ld	[%fp+2175], %g1
	cmp	%g1, 9
	bne	%icc, .L83
	 nop
.L82:
	mov	1, %g1
	ba,pt	%xcc, .L85
	 nop
.L83:
	mov	0, %g1
.L85:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isblank, .-isblank
	.align 4
	.global iscntrl
	.type	iscntrl, #function
	.proc	04
iscntrl:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	cmp	%g1, 31
	bleu	%icc, .L87
	 nop
	ld	[%fp+2175], %g1
	cmp	%g1, 127
	bne	%icc, .L88
	 nop
.L87:
	mov	1, %g1
	ba,pt	%xcc, .L90
	 nop
.L88:
	mov	0, %g1
.L90:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	iscntrl, .-iscntrl
	.align 4
	.global isdigit
	.type	isdigit, #function
	.proc	04
isdigit:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isdigit, .-isdigit
	.align 4
	.global isgraph
	.type	isgraph, #function
	.proc	04
isgraph:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -33, %g1
	cmp	%g1, 93
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isgraph, .-isgraph
	.align 4
	.global islower
	.type	islower, #function
	.proc	04
islower:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -97, %g1
	cmp	%g1, 25
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	islower, .-islower
	.align 4
	.global isprint
	.type	isprint, #function
	.proc	04
isprint:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -32, %g1
	cmp	%g1, 94
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isprint, .-isprint
	.align 4
	.global isspace
	.type	isspace, #function
	.proc	04
isspace:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	cmp	%g1, 32
	be	%icc, .L100
	 nop
	ld	[%fp+2175], %g1
	add	%g1, -9, %g1
	cmp	%g1, 4
	bgu	%icc, .L101
	 nop
.L100:
	mov	1, %g1
	ba,pt	%xcc, .L103
	 nop
.L101:
	mov	0, %g1
.L103:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isspace, .-isspace
	.align 4
	.global isupper
	.type	isupper, #function
	.proc	04
isupper:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -65, %g1
	cmp	%g1, 25
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	isupper, .-isupper
	.align 4
	.global iswcntrl
	.type	iswcntrl, #function
	.proc	04
iswcntrl:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	cmp	%g1, 31
	bleu	%icc, .L107
	 nop
	ld	[%fp+2175], %g1
	add	%g1, -127, %g1
	cmp	%g1, 32
	bleu	%icc, .L107
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu	%icc, .L107
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 2
	bgu	%icc, .L108
	 nop
.L107:
	mov	1, %g1
	ba,pt	%xcc, .L110
	 nop
.L108:
	mov	0, %g1
.L110:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global iswdigit
	.type	iswdigit, #function
	.proc	04
iswdigit:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	mov	0, %g1
	movleu	%icc, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	iswdigit, .-iswdigit
	.align 4
	.global iswprint
	.type	iswprint, #function
	.proc	04
iswprint:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	cmp	%g1, 254
	bgu	%icc, .L114
	 nop
	ld	[%fp+2175], %g1
	add	%g1, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	mov	0, %g1
	movgu	%icc, 1, %g1
	ba,pt	%xcc, .L115
	 nop
.L114:
	ld	[%fp+2175], %g2
	sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g2, %g1
	bleu	%icc, .L116
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%g2, %g1, %g2
	sethi	%hi(46080), %g1
	or	%g1, 981, %g1
	cmp	%g2, %g1
	bleu	%icc, .L116
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-57344), %g1
	add	%g2, %g1, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bgu	%icc, .L117
	 nop
.L116:
	mov	1, %g1
	ba,pt	%xcc, .L115
	 nop
.L117:
	ld	[%fp+2175], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%g2, %g1, %g2
	sethi	%hi(1048576), %g1
	or	%g1, 3, %g1
	cmp	%g2, %g1
	bgu	%icc, .L118
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%g2, %g1, %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	cmp	%g2, %g1
	bne	%icc, .L119
	 nop
.L118:
	mov	0, %g1
	ba,pt	%xcc, .L115
	 nop
.L119:
	mov	1, %g1
.L115:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	iswprint, .-iswprint
	.align 4
	.global iswxdigit
	.type	iswxdigit, #function
	.proc	04
iswxdigit:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L121
	 nop
	ld	[%fp+2175], %g1
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	bgu	%icc, .L122
	 nop
.L121:
	mov	1, %g1
	ba,pt	%xcc, .L124
	 nop
.L122:
	mov	0, %g1
.L124:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global toascii
	.type	toascii, #function
	.proc	04
toascii:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	and	%g1, 127, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	toascii, .-toascii
	.align 4
	.global fdim
	.type	fdim, #function
	.proc	07
fdim:
	save	%sp, -176, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	ldd	[%fp+2175], %f10
	ldd	[%fp+2175], %f8
	fcmpd	%fcc0, %f10, %f8
	fbo	%fcc0, .L128
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L129
	 nop
.L128:
	ldd	[%fp+2183], %f10
	ldd	[%fp+2183], %f8
	fcmpd	%fcc1, %f10, %f8
	fbo	%fcc1, .L130
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L129
	 nop
.L130:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc2, %f10, %f8
	fbule	%fcc2, .L135
	 nop
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fsubd	%f10, %f8, %f8
	ba,pt	%xcc, .L129
	 nop
.L135:
	fzero	%f8
.L129:
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	fdim, .-fdim
	.align 4
	.global fdimf
	.type	fdimf, #function
	.proc	06
fdimf:
	save	%sp, -176, %sp
	st	%f1, [%fp+2175]
	st	%f3, [%fp+2183]
	ld	[%fp+2175], %f9
	ld	[%fp+2175], %f8
	fcmps	%fcc3, %f9, %f8
	fbo	%fcc3, .L137
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L138
	 nop
.L137:
	ld	[%fp+2183], %f9
	ld	[%fp+2183], %f8
	fcmps	%fcc0, %f9, %f8
	fbo	%fcc0, .L139
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L138
	 nop
.L139:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc1, %f9, %f8
	fbule	%fcc1, .L144
	 nop
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fsubs	%f9, %f8, %f8
	ba,pt	%xcc, .L138
	 nop
.L144:
	fzeros	%f8
.L138:
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	fdimf, .-fdimf
	.align 4
	.global fmax
	.type	fmax, #function
	.proc	07
fmax:
	save	%sp, -176, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	ldd	[%fp+2175], %f10
	ldd	[%fp+2175], %f8
	fcmpd	%fcc2, %f10, %f8
	fbo	%fcc2, .L146
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L147
	 nop
.L146:
	ldd	[%fp+2183], %f10
	ldd	[%fp+2183], %f8
	fcmpd	%fcc3, %f10, %f8
	fbo	%fcc3, .L148
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L147
	 nop
.L148:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2183], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L149
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L150
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L147
	 nop
.L150:
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L147
	 nop
.L149:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc0, %f10, %f8
	fbuge	%fcc0, .L156
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L147
	 nop
.L156:
	ldd	[%fp+2175], %f8
.L147:
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	fmax, .-fmax
	.align 4
	.global fmaxf
	.type	fmaxf, #function
	.proc	06
fmaxf:
	save	%sp, -176, %sp
	st	%f1, [%fp+2175]
	st	%f3, [%fp+2183]
	ld	[%fp+2175], %f9
	ld	[%fp+2175], %f8
	fcmps	%fcc1, %f9, %f8
	fbo	%fcc1, .L158
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L159
	 nop
.L158:
	ld	[%fp+2183], %f9
	ld	[%fp+2183], %f8
	fcmps	%fcc2, %f9, %f8
	fbo	%fcc2, .L160
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L159
	 nop
.L160:
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+2183], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	%icc, .L161
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L162
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L159
	 nop
.L162:
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L159
	 nop
.L161:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc3, %f9, %f8
	fbuge	%fcc3, .L168
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L159
	 nop
.L168:
	ld	[%fp+2175], %f8
.L159:
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -272, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	std	%f4, [%fp+2191]
	std	%f6, [%fp+2199]
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g4, [%fp+2031]
	stx	%g5, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2031, %g1
	add	%fp, 2015, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_cmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 3
	bne	%xcc, .L170
	 nop
	ldd	[%fp+2191], %f8
	ldd	[%fp+2199], %f10
	ba,pt	%xcc, .L171
	 nop
.L170:
	ldx	[%fp+2191], %g4
	ldx	[%fp+2199], %g5
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g4, [%fp+1999]
	stx	%g5, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1999, %g1
	add	%fp, 1983, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_cmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 3
	bne	%xcc, .L172
	 nop
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
	ba,pt	%xcc, .L171
	 nop
.L172:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2191], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L173
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L174
	 nop
	ldd	[%fp+2191], %f8
	ldd	[%fp+2199], %f10
	ba,pt	%xcc, .L171
	 nop
.L174:
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
	ba,pt	%xcc, .L171
	 nop
.L173:
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g4, [%fp+1967]
	stx	%g5, [%fp+1975]
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1967, %g1
	add	%fp, 1951, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_flt, 0
	 nop
	mov	%o0, %g1
	brz	%g1, .L180
	 nop
	ldd	[%fp+2191], %f8
	ldd	[%fp+2199], %f10
	ba,pt	%xcc, .L171
	 nop
.L180:
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
.L171:
	fmovd	%f8, %f0
	fmovd	%f10, %f2
	return	%i7+8
	 nop
	.size	fmaxl, .-fmaxl
	.align 4
	.global fmin
	.type	fmin, #function
	.proc	07
fmin:
	save	%sp, -176, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	ldd	[%fp+2175], %f10
	ldd	[%fp+2175], %f8
	fcmpd	%fcc0, %f10, %f8
	fbo	%fcc0, .L182
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L183
	 nop
.L182:
	ldd	[%fp+2183], %f10
	ldd	[%fp+2183], %f8
	fcmpd	%fcc1, %f10, %f8
	fbo	%fcc1, .L184
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L183
	 nop
.L184:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2183], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L185
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L186
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L183
	 nop
.L186:
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L183
	 nop
.L185:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc2, %f10, %f8
	fbuge	%fcc2, .L192
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L183
	 nop
.L192:
	ldd	[%fp+2183], %f8
.L183:
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	fmin, .-fmin
	.align 4
	.global fminf
	.type	fminf, #function
	.proc	06
fminf:
	save	%sp, -176, %sp
	st	%f1, [%fp+2175]
	st	%f3, [%fp+2183]
	ld	[%fp+2175], %f9
	ld	[%fp+2175], %f8
	fcmps	%fcc3, %f9, %f8
	fbo	%fcc3, .L194
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L195
	 nop
.L194:
	ld	[%fp+2183], %f9
	ld	[%fp+2183], %f8
	fcmps	%fcc0, %f9, %f8
	fbo	%fcc0, .L196
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L195
	 nop
.L196:
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+2183], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	%icc, .L197
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L198
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L195
	 nop
.L198:
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L195
	 nop
.L197:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc1, %f9, %f8
	fbuge	%fcc1, .L204
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L195
	 nop
.L204:
	ld	[%fp+2183], %f8
.L195:
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -272, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	std	%f4, [%fp+2191]
	std	%f6, [%fp+2199]
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g4, [%fp+2031]
	stx	%g5, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2031, %g1
	add	%fp, 2015, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_cmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 3
	bne	%xcc, .L206
	 nop
	ldd	[%fp+2191], %f8
	ldd	[%fp+2199], %f10
	ba,pt	%xcc, .L207
	 nop
.L206:
	ldx	[%fp+2191], %g4
	ldx	[%fp+2199], %g5
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g4, [%fp+1999]
	stx	%g5, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1999, %g1
	add	%fp, 1983, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_cmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 3
	bne	%xcc, .L208
	 nop
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
	ba,pt	%xcc, .L207
	 nop
.L208:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2191], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L209
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L210
	 nop
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
	ba,pt	%xcc, .L207
	 nop
.L210:
	ldd	[%fp+2191], %f8
	ldd	[%fp+2199], %f10
	ba,pt	%xcc, .L207
	 nop
.L209:
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g4, [%fp+1967]
	stx	%g5, [%fp+1975]
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1967, %g1
	add	%fp, 1951, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_flt, 0
	 nop
	mov	%o0, %g1
	brz	%g1, .L216
	 nop
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
	ba,pt	%xcc, .L207
	 nop
.L216:
	ldd	[%fp+2191], %f8
	ldd	[%fp+2199], %f10
.L207:
	fmovd	%f8, %f0
	fmovd	%f10, %f2
	return	%i7+8
	 nop
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
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	st	%g1, [%fp+2035]
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L218
	 nop
.L219:
	ld	[%fp+2035], %g1
	and	%g1, 63, %g3
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g2
	srl	%g3, 0, %g1
	ldub	[%g2+%g1], %g2
	ldx	[%fp+2039], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ld	[%fp+2035], %g1
	srl	%g1, 6, %g1
	st	%g1, [%fp+2035]
.L218:
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L219
	 nop
	ldx	[%fp+2039], %g1
	stb	%g0, [%g1]
	sethi	%hi(s.0), %g1
	or	%g1, %lo(s.0), %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	l64a, .-l64a
	.local	seed
	.common	seed,8,8
	.align 4
	.global srand
	.type	srand, #function
	.proc	020
srand:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	add	%g1, -1, %g1
	srl	%g1, 0, %g2
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	stx	%g2, [%g1]
	nop
	return	%i7+8
	 nop
	.size	srand, .-srand
	.align 4
	.global rand
	.type	rand, #function
	.proc	04
rand:
	save	%sp, -176, %sp
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	ldx	[%g1], %g2
	sethi	%hi(1481765888), %g1
	or	%g1, 45, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(1284865024), %g1
	or	%g1, 813, %g1
	add	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	add	%g1, 1, %g2
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	stx	%g2, [%g1]
	sethi	%hi(seed), %g1
	or	%g1, %lo(seed), %g1
	ldx	[%g1], %g1
	srlx	%g1, 33, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rand, .-rand
	.align 4
	.global insque
	.type	insque, #function
	.proc	020
insque:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2183], %g1
	brnz	%g1, .L225
	 nop
	ldx	[%fp+2175], %g1
	stx	%g0, [%g1+8]
	ldx	[%fp+2175], %g1
	ldx	[%g1+8], %g2
	ldx	[%fp+2175], %g1
	stx	%g2, [%g1]
	return	%i7+8
	 nop
.L225:
	ldx	[%fp+2183], %g1
	ldx	[%g1], %g2
	ldx	[%fp+2175], %g1
	stx	%g2, [%g1]
	ldx	[%fp+2175], %g1
	ldx	[%fp+2183], %g2
	stx	%g2, [%g1+8]
	ldx	[%fp+2183], %g1
	ldx	[%fp+2175], %g2
	stx	%g2, [%g1]
	ldx	[%fp+2175], %g1
	ldx	[%g1], %g1
	brz	%g1, .L224
	 nop
	ldx	[%fp+2175], %g1
	ldx	[%g1], %g1
	ldx	[%fp+2175], %g2
	stx	%g2, [%g1+8]
.L224:
	return	%i7+8
	 nop
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	ldx	[%g1], %g1
	brz	%g1, .L228
	 nop
	ldx	[%fp+2175], %g1
	ldx	[%g1], %g1
	ldx	[%fp+2175], %g2
	ldx	[%g2+8], %g2
	stx	%g2, [%g1+8]
.L228:
	ldx	[%fp+2175], %g1
	ldx	[%g1+8], %g1
	brz	%g1, .L230
	 nop
	ldx	[%fp+2175], %g1
	ldx	[%g1+8], %g1
	ldx	[%fp+2175], %g2
	ldx	[%g2], %g2
	stx	%g2, [%g1]
.L230:
	nop
	return	%i7+8
	 nop
	.size	remque, .-remque
	.align 4
	.global lsearch
	.type	lsearch, #function
	.proc	0120
lsearch:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	stx	%i4, [%fp+2207]
	ldx	[%fp+2199], %i5
	add	%i5, -1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2191], %g1
	ldx	[%g1], %g1
	stx	%g1, [%fp+2023]
	stx	%g0, [%fp+2039]
	ba,pt	%xcc, .L232
	 nop
.L235:
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g2
	ldx	[%fp+2207], %g1
	mov	%g2, %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L233
	 nop
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L234
	 nop
.L233:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L232:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	blu	%xcc, .L235
	 nop
	ldx	[%fp+2023], %g1
	add	%g1, 1, %g2
	ldx	[%fp+2191], %g1
	stx	%g2, [%g1]
	ldx	[%fp+2023], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2199], %o2
	ldx	[%fp+2175], %o1
	mov	%g1, %o0
	call	memcpy, 0
	 nop
	mov	%o0, %g1
.L234:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	lsearch, .-lsearch
	.align 4
	.global lfind
	.type	lfind, #function
	.proc	0120
lfind:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	stx	%i4, [%fp+2207]
	ldx	[%fp+2199], %i5
	add	%i5, -1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2191], %g1
	ldx	[%g1], %g1
	stx	%g1, [%fp+2023]
	stx	%g0, [%fp+2039]
	ba,pt	%xcc, .L237
	 nop
.L240:
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g2
	ldx	[%fp+2207], %g1
	mov	%g2, %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L238
	 nop
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L239
	 nop
.L238:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L237:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	blu	%xcc, .L240
	 nop
	mov	0, %g1
.L239:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	lfind, .-lfind
	.align 4
	.global abs
	.type	abs, #function
	.proc	04
abs:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	sra	%g1, 31, %g2
	ld	[%fp+2175], %g1
	xor	%g2, %g1, %g1
	sub	%g1, %g2, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	abs, .-abs
	.align 4
	.global atoi
	.type	atoi, #function
	.proc	04
atoi:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	st	%g0, [%fp+2043]
	st	%g0, [%fp+2039]
	ba,pt	%xcc, .L244
	 nop
.L245:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L244:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sra	%g1, 0, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L245
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	%icc, .L246
	 nop
	cmp	%g1, 45
	bne	%icc, .L248
	 nop
	mov	1, %g1
	st	%g1, [%fp+2039]
.L246:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ba,pt	%xcc, .L248
	 nop
.L249:
	ld	[%fp+2043], %g2
	mov	%g2, %g1
	sll	%g1, 2, %g1
	add	%g1, %g2, %g1
	add	%g1, %g1, %g1
	mov	%g1, %g3
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2175]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	sub	%g3, %g1, %g1
	st	%g1, [%fp+2043]
.L248:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L249
	 nop
	ld	[%fp+2039], %g1
	cmp	%g1, 0
	bne	%icc, .L250
	 nop
	ld	[%fp+2043], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L252
	 nop
.L250:
	ld	[%fp+2043], %g1
.L252:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	atoi, .-atoi
	.align 4
	.global atol
	.type	atol, #function
	.proc	05
atol:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%g0, [%fp+2039]
	st	%g0, [%fp+2035]
	ba,pt	%xcc, .L254
	 nop
.L255:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L254:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sra	%g1, 0, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L255
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	%icc, .L256
	 nop
	cmp	%g1, 45
	bne	%icc, .L258
	 nop
	mov	1, %g1
	st	%g1, [%fp+2035]
.L256:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ba,pt	%xcc, .L258
	 nop
.L259:
	ldx	[%fp+2039], %g2
	mov	%g2, %g1
	sllx	%g1, 2, %g1
	add	%g1, %g2, %g1
	add	%g1, %g1, %g1
	mov	%g1, %g3
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2175]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g3, %g1, %g1
	stx	%g1, [%fp+2039]
.L258:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L259
	 nop
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L260
	 nop
	ldx	[%fp+2039], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L262
	 nop
.L260:
	ldx	[%fp+2039], %g1
.L262:
	nop
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	atol, .-atol
	.align 4
	.global atoll
	.type	atoll, #function
	.proc	05
atoll:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%g0, [%fp+2039]
	st	%g0, [%fp+2035]
	ba,pt	%xcc, .L264
	 nop
.L265:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L264:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sra	%g1, 0, %g1
	mov	%g1, %o0
	call	isspace, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L265
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	%icc, .L266
	 nop
	cmp	%g1, 45
	bne	%icc, .L268
	 nop
	mov	1, %g1
	st	%g1, [%fp+2035]
.L266:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ba,pt	%xcc, .L268
	 nop
.L269:
	ldx	[%fp+2039], %g2
	mov	%g2, %g1
	sllx	%g1, 2, %g1
	add	%g1, %g2, %g1
	add	%g1, %g1, %g1
	mov	%g1, %g3
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2175]
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	sra	%g1, 0, %g1
	sub	%g3, %g1, %g1
	stx	%g1, [%fp+2039]
.L268:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L269
	 nop
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L270
	 nop
	ldx	[%fp+2039], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L272
	 nop
.L270:
	ldx	[%fp+2039], %g1
.L272:
	nop
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	atoll, .-atoll
	.align 4
	.global bsearch
	.type	bsearch, #function
	.proc	0120
bsearch:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	stx	%i4, [%fp+2207]
	ba,pt	%xcc, .L274
	 nop
.L279:
	ldx	[%fp+2191], %g1
	srlx	%g1, 1, %g2
	ldx	[%fp+2199], %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2207], %g1
	ldx	[%fp+2039], %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bge	%icc, .L275
	 nop
	ldx	[%fp+2191], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2191]
	ba,pt	%xcc, .L274
	 nop
.L275:
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	ble	%icc, .L277
	 nop
	ldx	[%fp+2039], %g2
	ldx	[%fp+2199], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2191], %g1
	srlx	%g1, 1, %g1
	ldx	[%fp+2191], %g2
	sub	%g2, %g1, %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ba,pt	%xcc, .L274
	 nop
.L277:
	ldx	[%fp+2039], %g1
	ba,pt	%xcc, .L278
	 nop
.L274:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L279
	 nop
	mov	0, %g1
.L278:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	bsearch, .-bsearch
	.align 4
	.global bsearch_r
	.type	bsearch_r, #function
	.proc	0120
bsearch_r:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	stx	%i4, [%fp+2207]
	stx	%i5, [%fp+2215]
	ldx	[%fp+2191], %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L281
	 nop
.L285:
	ld	[%fp+2043], %g1
	sra	%g1, 1, %g1
	sra	%g1, 0, %g2
	ldx	[%fp+2199], %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2207], %g1
	ldx	[%fp+2215], %o2
	ldx	[%fp+2031], %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2027], %g1
	cmp	%g1, 0
	bne	%icc, .L282
	 nop
	ldx	[%fp+2031], %g1
	ba,pt	%xcc, .L283
	 nop
.L282:
	ld	[%fp+2027], %g1
	cmp	%g1, 0
	ble	%icc, .L284
	 nop
	ldx	[%fp+2031], %g2
	ldx	[%fp+2199], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+2043]
.L284:
	ld	[%fp+2043], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L281:
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	bne	%icc, .L285
	 nop
	mov	0, %g1
.L283:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global div
	.type	div, #function
	.proc	010
div:
	save	%sp, -208, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2175], %g1
	sra	%g1, 31, %g2
	ld	[%fp+2183], %g3
	wr	%g0, %g2, %y
	sdiv	%g1, %g3, %g2
	ld	[%fp+2175], %g1
	sra	%g1, 31, %g3
	ld	[%fp+2183], %g4
	wr	%g0, %g3, %y
	sdiv	%g1, %g4, %g4
	ld	[%fp+2183], %g3
	smul	%g4, %g3, %g3
	sub	%g1, %g3, %g1
	st	%g2, [%fp+2039]
	st	%g1, [%fp+2043]
	ldx	[%fp+2039], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	div, .-div
	.align 4
	.global imaxabs
	.type	imaxabs, #function
	.proc	05
imaxabs:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	srax	%g1, 63, %g2
	ldx	[%fp+2175], %g1
	xor	%g2, %g1, %g1
	sub	%g1, %g2, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	imaxabs, .-imaxabs
	.align 4
	.global imaxdiv
	.type	imaxdiv, #function
	.proc	010
imaxdiv:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sdivx	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	ldx	[%fp+2183], %g3
	sdivx	%g1, %g3, %g4
	ldx	[%fp+2183], %g3
	mulx	%g4, %g3, %g3
	sub	%g1, %g3, %g1
	stx	%g2, [%fp+2031]
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	mov	%g2, %i0
	mov	%g1, %i1
	return	%i7+8
	 nop
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global labs
	.type	labs, #function
	.proc	05
labs:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	srax	%g1, 63, %g2
	ldx	[%fp+2175], %g1
	xor	%g2, %g1, %g1
	sub	%g1, %g2, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	labs, .-labs
	.align 4
	.global ldiv
	.type	ldiv, #function
	.proc	010
ldiv:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sdivx	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	ldx	[%fp+2183], %g3
	sdivx	%g1, %g3, %g4
	ldx	[%fp+2183], %g3
	mulx	%g4, %g3, %g3
	sub	%g1, %g3, %g1
	stx	%g2, [%fp+2031]
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	mov	%g2, %i0
	mov	%g1, %i1
	return	%i7+8
	 nop
	.size	ldiv, .-ldiv
	.align 4
	.global llabs
	.type	llabs, #function
	.proc	05
llabs:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	srax	%g1, 63, %g2
	ldx	[%fp+2175], %g1
	xor	%g2, %g1, %g1
	sub	%g1, %g2, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	llabs, .-llabs
	.align 4
	.global lldiv
	.type	lldiv, #function
	.proc	010
lldiv:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sdivx	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	ldx	[%fp+2183], %g3
	sdivx	%g1, %g3, %g4
	ldx	[%fp+2183], %g3
	mulx	%g4, %g3, %g3
	sub	%g1, %g3, %g1
	stx	%g2, [%fp+2031]
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	mov	%g2, %i0
	mov	%g1, %i1
	return	%i7+8
	 nop
	.size	lldiv, .-lldiv
	.align 4
	.global wcschr
	.type	wcschr, #function
	.proc	0104
wcschr:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ba,pt	%xcc, .L301
	 nop
.L303:
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
.L301:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L302
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	ld	[%fp+2183], %g2
	cmp	%g2, %g1
	bne	%icc, .L303
	 nop
.L302:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L304
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L306
	 nop
.L304:
	mov	0, %g1
.L306:
	nop
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wcschr, .-wcschr
	.align 4
	.global wcscmp
	.type	wcscmp, #function
	.proc	04
wcscmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ba,pt	%xcc, .L308
	 nop
.L310:
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2183]
.L308:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	%icc, .L309
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L309
	 nop
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L310
	 nop
.L309:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	%icc, .L311
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L313
	 nop
.L311:
	mov	-1, %g1
.L313:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wcscmp, .-wcscmp
	.align 4
	.global wcscpy
	.type	wcscpy, #function
	.proc	0104
wcscpy:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
.L315:
	ldx	[%fp+2183], %g2
	add	%g2, 4, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, 4, %g3
	stx	%g3, [%fp+2039]
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L315
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wcscpy, .-wcscpy
	.align 4
	.global wcslen
	.type	wcslen, #function
	.proc	017
wcslen:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L318
	 nop
.L319:
	ldx	[%fp+2039], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2039]
.L318:
	ldx	[%fp+2039], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L319
	 nop
	ldx	[%fp+2039], %g2
	ldx	[%fp+2175], %g1
	sub	%g2, %g1, %g1
	srax	%g1, 2, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wcslen, .-wcslen
	.align 4
	.global wcsncmp
	.type	wcsncmp, #function
	.proc	04
wcsncmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ba,pt	%xcc, .L322
	 nop
.L324:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2183]
.L322:
	ldx	[%fp+2191], %g1
	brz	%g1, .L323
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	%icc, .L323
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L323
	 nop
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L324
	 nop
.L323:
	ldx	[%fp+2191], %g1
	brz	%g1, .L325
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	%icc, .L326
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L329
	 nop
.L326:
	mov	-1, %g1
	ba,pt	%xcc, .L329
	 nop
.L325:
	mov	0, %g1
.L329:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global wmemchr
	.type	wmemchr, #function
	.proc	0104
wmemchr:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	stx	%i2, [%fp+2191]
	st	%g1, [%fp+2183]
	ba,pt	%xcc, .L331
	 nop
.L333:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
.L331:
	ldx	[%fp+2191], %g1
	brz	%g1, .L332
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	ld	[%fp+2183], %g2
	cmp	%g2, %g1
	bne	%icc, .L333
	 nop
.L332:
	ldx	[%fp+2191], %g1
	brz	%g1, .L334
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L336
	 nop
.L334:
	mov	0, %g1
.L336:
	nop
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wmemchr, .-wmemchr
	.align 4
	.global wmemcmp
	.type	wmemcmp, #function
	.proc	04
wmemcmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ba,pt	%xcc, .L338
	 nop
.L340:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2183]
.L338:
	ldx	[%fp+2191], %g1
	brz	%g1, .L339
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	be	%icc, .L340
	 nop
.L339:
	ldx	[%fp+2191], %g1
	brz	%g1, .L341
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	%icc, .L342
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L345
	 nop
.L342:
	mov	-1, %g1
	ba,pt	%xcc, .L345
	 nop
.L341:
	mov	0, %g1
.L345:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global wmemcpy
	.type	wmemcpy, #function
	.proc	0104
wmemcpy:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L347
	 nop
.L348:
	ldx	[%fp+2183], %g2
	add	%g2, 4, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, 4, %g3
	stx	%g3, [%fp+2039]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L347:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L348
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global wmemmove
	.type	wmemmove, #function
	.proc	0104
wmemmove:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	bne	%xcc, .L351
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L352
	 nop
.L351:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sub	%g2, %g1, %g2
	ldx	[%fp+2191], %g1
	sllx	%g1, 2, %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L353
	 nop
	ba,pt	%xcc, .L354
	 nop
.L355:
	ldx	[%fp+2191], %g1
	sllx	%g1, 2, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2191], %g2
	sllx	%g2, 2, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ld	[%g2], %g2
	st	%g2, [%g1]
.L354:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L355
	 nop
	ba,pt	%xcc, .L356
	 nop
.L353:
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L357
	 nop
.L358:
	ldx	[%fp+2183], %g2
	add	%g2, 4, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, 4, %g3
	stx	%g3, [%fp+2039]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L357:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L358
	 nop
.L356:
	ldx	[%fp+2175], %g1
.L352:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wmemmove, .-wmemmove
	.align 4
	.global wmemset
	.type	wmemset, #function
	.proc	0104
wmemset:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	stx	%i2, [%fp+2191]
	st	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L360
	 nop
.L361:
	ldx	[%fp+2039], %g1
	add	%g1, 4, %g2
	stx	%g2, [%fp+2039]
	ld	[%fp+2183], %g2
	st	%g2, [%g1]
.L360:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L361
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	wmemset, .-wmemset
	.align 4
	.global bcopy
	.type	bcopy, #function
	.proc	020
bcopy:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L364
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L365
	 nop
.L366:
	ldx	[%fp+2039], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2031], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L365:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L366
	 nop
	ba,pt	%xcc, .L370
	 nop
.L364:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	be	%xcc, .L370
	 nop
	ba,pt	%xcc, .L368
	 nop
.L369:
	ldx	[%fp+2175], %g2
	add	%g2, 1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g3
	stx	%g3, [%fp+2183]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L368:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L369
	 nop
.L370:
	nop
	return	%i7+8
	 nop
	.size	bcopy, .-bcopy
	.align 4
	.global rotl64
	.type	rotl64, #function
	.proc	017
rotl64:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sllx	%g2, %g1, %g3
	ld	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	srlx	%g2, %g1, %g1
	or	%g1, %g3, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotl64, .-rotl64
	.align 4
	.global rotr64
	.type	rotr64, #function
	.proc	017
rotr64:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	srlx	%g2, %g1, %g3
	ld	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	and	%g1, 63, %g1
	sllx	%g2, %g1, %g1
	or	%g1, %g3, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotr64, .-rotr64
	.align 4
	.global rotl32
	.type	rotl32, #function
	.proc	016
rotl32:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sll	%g2, %g1, %g3
	ld	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	and	%g1, 31, %g1
	srl	%g2, %g1, %g1
	or	%g1, %g3, %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotl32, .-rotl32
	.align 4
	.global rotr32
	.type	rotr32, #function
	.proc	016
rotr32:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	srl	%g2, %g1, %g3
	ld	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	and	%g1, 31, %g1
	sll	%g2, %g1, %g1
	or	%g1, %g3, %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotr32, .-rotr32
	.align 4
	.global rotl_sz
	.type	rotl_sz, #function
	.proc	017
rotl_sz:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sllx	%g2, %g1, %g2
	mov	64, %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	ldx	[%fp+2175], %g3
	srlx	%g3, %g1, %g1
	or	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global rotr_sz
	.type	rotr_sz, #function
	.proc	017
rotr_sz:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	srlx	%g2, %g1, %g2
	mov	64, %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	ldx	[%fp+2175], %g3
	sllx	%g3, %g1, %g1
	or	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global rotl16
	.type	rotl16, #function
	.proc	015
rotl16:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	sth	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2183], %g1
	sll	%g2, %g1, %g1
	mov	%g1, %g4
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	16, %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	or	%g4, %g1, %g1
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotl16, .-rotl16
	.align 4
	.global rotr16
	.type	rotr16, #function
	.proc	015
rotr16:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	sth	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2183], %g1
	srl	%g2, %g1, %g1
	mov	%g1, %g4
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	16, %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	or	%g4, %g1, %g1
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotr16, .-rotr16
	.align 4
	.global rotl8
	.type	rotl8, #function
	.proc	014
rotl8:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	stb	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ldub	[%fp+2175], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+2183], %g1
	sll	%g2, %g1, %g1
	mov	%g1, %g4
	ldub	[%fp+2175], %g1
	and	%g1, 0xff, %g2
	mov	8, %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	or	%g4, %g1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotl8, .-rotl8
	.align 4
	.global rotr8
	.type	rotr8, #function
	.proc	014
rotr8:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	stb	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ldub	[%fp+2175], %g1
	and	%g1, 0xff, %g2
	ld	[%fp+2183], %g1
	srl	%g2, %g1, %g1
	mov	%g1, %g4
	ldub	[%fp+2175], %g1
	and	%g1, 0xff, %g2
	mov	8, %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	or	%g4, %g1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	rotr8, .-rotr8
	.align 4
	.global bswap_16
	.type	bswap_16, #function
	.proc	015
bswap_16:
	save	%sp, -192, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+2175]
	mov	255, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	sllx	%g1, 8, %g1
	lduh	[%fp+2175], %g2
	sllx	%g2, 48, %g2
	srlx	%g2, 48, %g2
	and	%g2, %g1, %g1
	srlx	%g1, 8, %g2
	ldx	[%fp+2039], %g3
	lduh	[%fp+2175], %g1
	and	%g1, %g3, %g1
	sll	%g1, 8, %g1
	or	%g2, %g1, %g1
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	bswap_16, .-bswap_16
	.align 4
	.global bswap_32
	.type	bswap_32, #function
	.proc	016
bswap_32:
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	mov	255, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	sllx	%g1, 24, %g1
	ld	[%fp+2175], %g2
	srl	%g2, 0, %g2
	and	%g2, %g1, %g1
	srlx	%g1, 24, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 16, %g1
	ld	[%fp+2175], %g3
	srl	%g3, 0, %g3
	and	%g3, %g1, %g1
	srlx	%g1, 8, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	sll	%g1, 8, %g1
	ld	[%fp+2175], %g3
	and	%g1, %g3, %g1
	sll	%g1, 8, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	ld	[%fp+2175], %g3
	and	%g3, %g1, %g1
	sll	%g1, 24, %g1
	or	%g2, %g1, %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	bswap_32, .-bswap_32
	.align 4
	.global bswap_64
	.type	bswap_64, #function
	.proc	017
bswap_64:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	255, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	sllx	%g1, 56, %g2
	ldx	[%fp+2175], %g1
	and	%g2, %g1, %g1
	srlx	%g1, 56, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 48, %g3
	ldx	[%fp+2175], %g1
	and	%g3, %g1, %g1
	srlx	%g1, 40, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 40, %g3
	ldx	[%fp+2175], %g1
	and	%g3, %g1, %g1
	srlx	%g1, 24, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 32, %g3
	ldx	[%fp+2175], %g1
	and	%g3, %g1, %g1
	srlx	%g1, 8, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 24, %g3
	ldx	[%fp+2175], %g1
	and	%g3, %g1, %g1
	sllx	%g1, 8, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 16, %g3
	ldx	[%fp+2175], %g1
	and	%g3, %g1, %g1
	sllx	%g1, 24, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 8, %g3
	ldx	[%fp+2175], %g1
	and	%g3, %g1, %g1
	sllx	%g1, 40, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g3
	ldx	[%fp+2039], %g1
	and	%g3, %g1, %g1
	sllx	%g1, 56, %g1
	or	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	bswap_64, .-bswap_64
	.align 4
	.global ffs
	.type	ffs, #function
	.proc	04
ffs:
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L398
	 nop
.L401:
	ld	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L399
	 nop
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	ba,pt	%xcc, .L400
	 nop
.L399:
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L398:
	ld	[%fp+2043], %g1
	cmp	%g1, 31
	bleu	%icc, .L401
	 nop
	mov	0, %g1
.L400:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	ffs, .-ffs
	.align 4
	.global libiberty_ffs
	.type	libiberty_ffs, #function
	.proc	04
libiberty_ffs:
	save	%sp, -176, %sp
	mov	%i0, %g1
	brnz	%g1, .L403
	 nop
	mov	0, %i5
	ba,pt	%xcc, .L404
	 nop
.L403:
	mov	1, %i5
	ba,pt	%xcc, .L405
	 nop
.L406:
	sra	%g1, 1, %g1
	sra	%g1, 0, %g1
	add	%i5, 1, %i5
.L405:
	and	%g1, 1, %g2
	cmp	%g2, 0
	be	%icc, .L406
	 nop
	nop
.L404:
	sra	%i5, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	-8388609
	.align 4
.LC1:
	.long	2139095039
	.section	".text"
	.align 4
	.global gl_isinff
	.type	gl_isinff, #function
	.proc	04
gl_isinff:
	save	%sp, -176, %sp
	st	%f1, [%fp+2175]
	ld	[%fp+2175], %f9
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ld	[%g1], %f8
	fcmpes	%fcc2, %f9, %f8
	fbl	%fcc2, .L408
	 nop
	ld	[%fp+2175], %f9
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ld	[%g1], %f8
	fcmpes	%fcc3, %f9, %f8
	fbule	%fcc3, .L413
	 nop
.L408:
	mov	1, %g1
	ba,pt	%xcc, .L412
	 nop
.L413:
	mov	0, %g1
.L412:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	-1048577
	.long	-1
	.align 8
.LC3:
	.long	2146435071
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfd
	.type	gl_isinfd, #function
	.proc	04
gl_isinfd:
	save	%sp, -176, %sp
	std	%f0, [%fp+2175]
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %g1
	ldd	[%g1], %f8
	fcmped	%fcc0, %f10, %f8
	fbl	%fcc0, .L415
	 nop
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ldd	[%g1], %f8
	fcmped	%fcc1, %f10, %f8
	fbule	%fcc1, .L420
	 nop
.L415:
	mov	1, %g1
	ba,pt	%xcc, .L419
	 nop
.L420:
	mov	0, %g1
.L419:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC4:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align 16
.LC5:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
	.section	".text"
	.align 4
	.global gl_isinfl
	.type	gl_isinfl, #function
	.proc	04
gl_isinfl:
	save	%sp, -240, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	sethi	%hi(.LC4), %g1
	or	%g1, %lo(.LC4), %g1
	ldx	[%g1], %g2
	ldx	[%g1+8], %g3
	stx	%g4, [%fp+2031]
	stx	%g5, [%fp+2039]
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	add	%fp, 2031, %g1
	add	%fp, 2015, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_flt, 0
	 nop
	mov	%o0, %g1
	brnz	%g1, .L422
	 nop
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	sethi	%hi(.LC5), %g1
	or	%g1, %lo(.LC5), %g1
	ldx	[%g1], %g2
	ldx	[%g1+8], %g3
	stx	%g4, [%fp+1999]
	stx	%g5, [%fp+2007]
	stx	%g2, [%fp+1983]
	stx	%g3, [%fp+1991]
	add	%fp, 1999, %g1
	add	%fp, 1983, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_fgt, 0
	 nop
	mov	%o0, %g1
	brz	%g1, .L427
	 nop
.L422:
	mov	1, %g1
	ba,pt	%xcc, .L426
	 nop
.L427:
	mov	0, %g1
.L426:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global _Qp_itoq
	.type	_Qp_itoq, #function
	.proc	020
_Qp_itoq:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %f8
	fitod	%f8, %f8
	add	%fp, 2031, %g1
	fmovd	%f8, %f2
	mov	%g1, %o0
	call	_Qp_dtoq, 0
	 nop
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g3
	ldx	[%fp+2175], %g1
	stx	%g2, [%g1]
	stx	%g3, [%g1+8]
	nop
	return	%i7+8
	 nop
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC6:
	.long	1056964608
	.align 4
.LC7:
	.long	1073741824
	.section	".text"
	.align 4
	.global ldexpf
	.type	ldexpf, #function
	.proc	06
ldexpf:
	save	%sp, -192, %sp
	st	%f1, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2175], %f9
	ld	[%fp+2175], %f8
	fcmps	%fcc2, %f9, %f8
	fbu	%fcc2, .L430
	 nop
	ld	[%fp+2175], %f8
	fadds	%f8, %f8, %f8
	ld	[%fp+2175], %f9
	fcmps	%fcc3, %f9, %f8
	fbe	%fcc3, .L430
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L431
	 nop
	sethi	%hi(.LC6), %g1
	or	%g1, %lo(.LC6), %g1
	ld	[%g1], %f8
	ba,pt	%xcc, .L432
	 nop
.L431:
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ld	[%g1], %f8
.L432:
	st	%f8, [%fp+2043]
.L435:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L433
	 nop
	ld	[%fp+2175], %f9
	ld	[%fp+2043], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp+2175]
.L433:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L437
	 nop
	ld	[%fp+2043], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp+2043]
	ba,pt	%xcc, .L435
	 nop
.L437:
	nop
.L430:
	ld	[%fp+2175], %f8
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC8:
	.long	1071644672
	.long	0
	.align 8
.LC9:
	.long	1073741824
	.long	0
	.section	".text"
	.align 4
	.global ldexp
	.type	ldexp, #function
	.proc	07
ldexp:
	save	%sp, -192, %sp
	std	%f0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ldd	[%fp+2175], %f10
	ldd	[%fp+2175], %f8
	fcmpd	%fcc0, %f10, %f8
	fbu	%fcc0, .L439
	 nop
	ldd	[%fp+2175], %f8
	faddd	%f8, %f8, %f8
	ldd	[%fp+2175], %f10
	fcmpd	%fcc1, %f10, %f8
	fbe	%fcc1, .L439
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L440
	 nop
	sethi	%hi(.LC8), %g1
	or	%g1, %lo(.LC8), %g1
	ldd	[%g1], %f8
	ba,pt	%xcc, .L441
	 nop
.L440:
	sethi	%hi(.LC9), %g1
	or	%g1, %lo(.LC9), %g1
	ldd	[%g1], %f8
.L441:
	std	%f8, [%fp+2039]
.L444:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L442
	 nop
	ldd	[%fp+2175], %f10
	ldd	[%fp+2039], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp+2175]
.L442:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L446
	 nop
	ldd	[%fp+2039], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp+2039]
	ba,pt	%xcc, .L444
	 nop
.L446:
	nop
.L439:
	ldd	[%fp+2175], %f8
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
	.align 16
.LC10:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.align 16
.LC11:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global ldexpl
	.type	ldexpl, #function
	.proc	07
ldexpl:
	save	%sp, -336, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g4, [%fp+2015]
	stx	%g5, [%fp+2023]
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	add	%fp, 2015, %g1
	add	%fp, 1999, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_cmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 3
	be	%xcc, .L448
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+1967]
	stx	%g3, [%fp+1975]
	stx	%g2, [%fp+1951]
	stx	%g3, [%fp+1959]
	add	%fp, 1983, %g1
	add	%fp, 1967, %g2
	add	%fp, 1951, %g3
	mov	%g3, %o2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_add, 0
	 nop
	ldx	[%fp+1983], %g2
	ldx	[%fp+1991], %g3
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	stx	%g4, [%fp+1935]
	stx	%g5, [%fp+1943]
	stx	%g2, [%fp+1919]
	stx	%g3, [%fp+1927]
	add	%fp, 1935, %g1
	add	%fp, 1919, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_feq, 0
	 nop
	mov	%o0, %g1
	brnz	%g1, .L448
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bge	%icc, .L449
	 nop
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %g1
	ldx	[%g1], %g2
	ldx	[%g1+8], %g3
	ba,pt	%xcc, .L450
	 nop
.L449:
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %g1
	ldx	[%g1], %g2
	ldx	[%g1+8], %g3
.L450:
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
.L453:
	ld	[%fp+2191], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L451
	 nop
	add	%fp, 1903, %g1
	add	%fp, 2031, %g2
	mov	%g2, %o2
	add	%fp, 2175, %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_mul, 0
	 nop
	ldx	[%fp+1903], %g2
	ldx	[%fp+1911], %g3
	stx	%g2, [%fp+2175]
	stx	%g3, [%fp+2183]
.L451:
	ld	[%fp+2191], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L455
	 nop
	add	%fp, 1887, %g1
	add	%fp, 2031, %g2
	add	%fp, 2031, %g3
	mov	%g3, %o2
	mov	%g2, %o1
	mov	%g1, %o0
	call	_Qp_mul, 0
	 nop
	ldx	[%fp+1887], %g2
	ldx	[%fp+1895], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	ba,pt	%xcc, .L453
	 nop
.L455:
	nop
.L448:
	ldd	[%fp+2175], %f8
	ldd	[%fp+2183], %f10
	fmovd	%f8, %f0
	fmovd	%f10, %f2
	return	%i7+8
	 nop
	.size	ldexpl, .-ldexpl
	.align 4
	.global memxor
	.type	memxor, #function
	.proc	0120
memxor:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L457
	 nop
.L458:
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2183]
	ldub	[%g1], %g3
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2039]
	ldub	[%g1], %g2
	xor	%g3, %g2, %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L457:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L458
	 nop
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memxor, .-memxor
	.align 4
	.global strncat
	.type	strncat, #function
	.proc	0102
strncat:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %o0
	call	strlen, 0
	 nop
	mov	%o0, %g2
	ldx	[%fp+2175], %g1
	add	%g1, %g2, %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L461
	 nop
.L463:
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L461:
	ldx	[%fp+2191], %g1
	brz	%g1, .L462
	 nop
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2039], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L463
	 nop
.L462:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L464
	 nop
	ldx	[%fp+2039], %g1
	stb	%g0, [%g1]
.L464:
	ldx	[%fp+2175], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strncat, .-strncat
	.align 4
	.global strnlen
	.type	strnlen, #function
	.proc	017
strnlen:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%g0, [%fp+2039]
	ba,pt	%xcc, .L467
	 nop
.L472:
	nop
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L467:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L468
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2039], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L472
	 nop
.L468:
	ldx	[%fp+2039], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.global strpbrk
	.type	strpbrk, #function
	.proc	0102
strpbrk:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ba,pt	%xcc, .L474
	 nop
.L478:
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L475
	 nop
.L477:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2039]
	ldub	[%g1], %g2
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	%icc, .L475
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L476
	 nop
.L475:
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L477
	 nop
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L474:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L478
	 nop
	mov	0, %g1
.L476:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strpbrk, .-strpbrk
	.align 4
	.global strrchr
	.type	strrchr, #function
	.proc	0102
strrchr:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g2, [%fp+2183]
	stx	%g0, [%fp+2039]
.L481:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	ld	[%fp+2183], %g3
	cmp	%g3, %g2
	bne	%icc, .L480
	 nop
	stx	%g1, [%fp+2039]
.L480:
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	%icc, .L481
	 nop
	ldx	[%fp+2039], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strrchr, .-strrchr
	.align 4
	.global strstr
	.type	strstr, #function
	.proc	0102
strstr:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2183], %o0
	call	strlen, 0
	 nop
	stx	%o0, [%fp+2039]
	ldx	[%fp+2039], %g1
	brnz	%g1, .L486
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L485
	 nop
.L488:
	ldx	[%fp+2039], %o2
	ldx	[%fp+2183], %o1
	ldx	[%fp+2031], %o0
	call	strncmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L487
	 nop
	ldx	[%fp+2031], %g1
	ba,pt	%xcc, .L485
	 nop
.L487:
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L486:
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sra	%g1, 0, %g1
	mov	%g1, %o1
	ldx	[%fp+2175], %o0
	call	strchr, 0
	 nop
	stx	%o0, [%fp+2031]
	ldx	[%fp+2031], %g1
	brnz	%g1, .L488
	 nop
	mov	0, %g1
.L485:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	strstr, .-strstr
	.align 4
	.global copysign
	.type	copysign, #function
	.proc	07
copysign:
	save	%sp, -176, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	ldd	[%fp+2175], %f8
	fzero	%f10
	fcmped	%fcc2, %f8, %f10
	fbuge	%fcc2, .L490
	 nop
	ldd	[%fp+2183], %f8
	fzero	%f10
	fcmped	%fcc3, %f8, %f10
	fbg	%fcc3, .L492
	 nop
.L490:
	ldd	[%fp+2175], %f8
	fzero	%f10
	fcmped	%fcc0, %f8, %f10
	fbule	%fcc0, .L493
	 nop
	ldd	[%fp+2183], %f8
	fzero	%f10
	fcmped	%fcc1, %f8, %f10
	fbuge	%fcc1, .L493
	 nop
.L492:
	ldd	[%fp+2175], %f8
	fnegd	%f8, %f8
	ba,pt	%xcc, .L496
	 nop
.L493:
	ldd	[%fp+2175], %f8
.L496:
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	copysign, .-copysign
	.align 4
	.global memmem
	.type	memmem, #function
	.proc	0120
memmem:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	ldx	[%fp+2183], %g2
	ldx	[%fp+2199], %g1
	sub	%g2, %g1, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2199], %g1
	brnz	%g1, .L500
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L501
	 nop
.L500:
	ldx	[%fp+2183], %g2
	ldx	[%fp+2199], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brz	%g1, .L503
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L501
	 nop
.L505:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2191], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	%icc, .L504
	 nop
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g2
	ldx	[%fp+2199], %g1
	add	%g1, -1, %g3
	ldx	[%fp+2191], %g1
	add	%g1, 1, %g1
	mov	%g3, %o2
	mov	%g1, %o1
	mov	%g2, %o0
	call	memcmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L504
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L501
	 nop
.L504:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L503:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2039], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L505
	 nop
	mov	0, %g1
.L501:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memmem, .-memmem
	.align 4
	.global mempcpy
	.type	mempcpy, #function
	.proc	0120
mempcpy:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2191], %o2
	ldx	[%fp+2183], %o1
	ldx	[%fp+2175], %o0
	call	memcpy, 0
	 nop
	mov	%o0, %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC12:
	.long	1072693248
	.long	0
	.align 8
.LC13:
	.long	1073741824
	.long	0
	.align 8
.LC14:
	.long	1071644672
	.long	0
	.section	".text"
	.align 4
	.global frexp
	.type	frexp, #function
	.proc	07
frexp:
	save	%sp, -192, %sp
	std	%f0, [%fp+2175]
	stx	%i1, [%fp+2183]
	st	%g0, [%fp+2039]
	st	%g0, [%fp+2043]
	ldd	[%fp+2175], %f8
	fzero	%f10
	fcmped	%fcc2, %f8, %f10
	fbuge	%fcc2, .L509
	 nop
	ldd	[%fp+2175], %f8
	fnegd	%f8, %f8
	std	%f8, [%fp+2175]
	mov	1, %g1
	st	%g1, [%fp+2043]
.L509:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %g1
	ldd	[%g1], %f8
	fcmped	%fcc3, %f10, %f8
	fbul	%fcc3, .L524
	 nop
	ba,pt	%xcc, .L513
	 nop
.L514:
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC13), %g1
	or	%g1, %lo(.LC13), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%fp+2175]
.L513:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %g1
	ldd	[%g1], %f8
	fcmped	%fcc0, %f10, %f8
	fbge	%fcc0, .L514
	 nop
	ba,pt	%xcc, .L515
	 nop
.L524:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%fcc1, %f10, %f8
	fbuge	%fcc1, .L515
	 nop
	ldd	[%fp+2175], %f8
	fzero	%f10
	fcmpd	%fcc2, %f8, %f10
	fbe	%fcc2, .L515
	 nop
	ba,pt	%xcc, .L517
	 nop
.L518:
	ld	[%fp+2039], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+2039]
	ldd	[%fp+2175], %f8
	faddd	%f8, %f8, %f8
	std	%f8, [%fp+2175]
.L517:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%fcc3, %f10, %f8
	fbl	%fcc3, .L518
	 nop
.L515:
	ldx	[%fp+2183], %g1
	ld	[%fp+2039], %g2
	st	%g2, [%g1]
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L519
	 nop
	ldd	[%fp+2175], %f8
	fnegd	%f8, %f8
	std	%f8, [%fp+2175]
.L519:
	ldd	[%fp+2175], %f8
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	frexp, .-frexp
	.align 4
	.global __muldi3
	.type	__muldi3, #function
	.proc	05
__muldi3:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%g0, [%fp+2039]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L526
	 nop
.L528:
	ldx	[%fp+2031], %g1
	and	%g1, 1, %g1
	brz	%g1, .L527
	 nop
	ldx	[%fp+2039], %g2
	ldx	[%fp+2183], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
.L527:
	ldx	[%fp+2183], %g1
	add	%g1, %g1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2031], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2031]
.L526:
	ldx	[%fp+2031], %g1
	brnz	%g1, .L528
	 nop
	ldx	[%fp+2039], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__muldi3, .-__muldi3
	.align 4
	.global udivmodsi4
	.type	udivmodsi4, #function
	.proc	016
udivmodsi4:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	stx	%i2, [%fp+2191]
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	mov	1, %g1
	st	%g1, [%fp+2043]
	st	%g0, [%fp+2039]
	ba,pt	%xcc, .L531
	 nop
.L533:
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2043]
.L531:
	ld	[%fp+2183], %g2
	ld	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L534
	 nop
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L534
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L533
	 nop
	ba,pt	%xcc, .L534
	 nop
.L536:
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%icc, .L535
	 nop
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2039], %g2
	ld	[%fp+2043], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2039]
.L535:
	ld	[%fp+2043], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2183], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2183]
.L534:
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	bne	%icc, .L536
	 nop
	ldx	[%fp+2191], %g1
	brz	%g1, .L537
	 nop
	ld	[%fp+2175], %g1
	ba,pt	%xcc, .L538
	 nop
.L537:
	ld	[%fp+2039], %g1
.L538:
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global __clrsbqi2
	.type	__clrsbqi2, #function
	.proc	04
__clrsbqi2:
	save	%sp, -192, %sp
	mov	%i0, %g1
	stb	%g1, [%fp+2175]
	ldub	[%fp+2175], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bge	%icc, .L540
	 nop
	ldub	[%fp+2175], %g1
	xnor	%g0, %g1, %g1
	stb	%g1, [%fp+2175]
.L540:
	ldub	[%fp+2175], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L541
	 nop
	mov	7, %g1
	ba,pt	%xcc, .L542
	 nop
.L541:
	ldub	[%fp+2175], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sll	%g1, 8, %g1
	srl	%g1, 0, %g1
	mov	%g1, %o0
	call	__clzdi2, 0
	 nop
	mov	%o0, %g1
	srl	%g1, 0, %g1
	add	%g1, -32, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
.L542:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global __clrsbdi2
	.type	__clrsbdi2, #function
	.proc	04
__clrsbdi2:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	brgez	%g1, .L544
	 nop
	ldx	[%fp+2175], %g1
	xnor	%g0, %g1, %g1
	stx	%g1, [%fp+2175]
.L544:
	ldx	[%fp+2175], %g1
	brnz	%g1, .L545
	 nop
	mov	63, %g1
	ba,pt	%xcc, .L546
	 nop
.L545:
	ldx	[%fp+2175], %o0
	call	__clzdi2, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
.L546:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global __mulsi3
	.type	__mulsi3, #function
	.proc	016
__mulsi3:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L548
	 nop
.L550:
	ld	[%fp+2175], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L549
	 nop
	ld	[%fp+2043], %g2
	ld	[%fp+2183], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
.L549:
	ld	[%fp+2175], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
.L548:
	ld	[%fp+2175], %g1
	cmp	%g1, 0
	bne	%icc, .L550
	 nop
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global __cmovd
	.type	__cmovd, #function
	.proc	020
__cmovd:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	srl	%g1, 3, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2191], %g1
	and	%g1, -8, %g1
	st	%g1, [%fp+2039]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%xcc, .L553
	 nop
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2175], %g2
	cmp	%g2, %g1
	bleu	%xcc, .L560
	 nop
.L553:
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L555
	 nop
.L556:
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	sllx	%g1, 3, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, 0, %g2
	sllx	%g2, 3, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldx	[%g2], %g2
	stx	%g2, [%g1]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L555:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	blu	%icc, .L556
	 nop
	ba,pt	%xcc, .L557
	 nop
.L558:
	ld	[%fp+2039], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2039], %g2
	srl	%g2, 0, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L557:
	ld	[%fp+2191], %g2
	ld	[%fp+2039], %g1
	cmp	%g2, %g1
	bgu	%icc, .L558
	 nop
	ba,pt	%xcc, .L559
	 nop
.L561:
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2191], %g2
	srl	%g2, 0, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L560:
	ld	[%fp+2191], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+2191]
	cmp	%g1, 0
	bne	%icc, .L561
	 nop
	nop
.L559:
	nop
	return	%i7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2039]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%xcc, .L563
	 nop
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2175], %g2
	cmp	%g2, %g1
	bleu	%xcc, .L569
	 nop
.L563:
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L565
	 nop
.L566:
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	ldx	[%fp+2183], %g3
	add	%g3, %g1, %g1
	lduh	[%g1], %g1
	sth	%g1, [%g2]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L565:
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	cmp	%g2, %g1
	blu	%icc, .L566
	 nop
	ld	[%fp+2191], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L568
	 nop
	ld	[%fp+2191], %g1
	add	%g1, -1, %g1
	srl	%g1, 0, %g2
	ld	[%fp+2191], %g1
	add	%g1, -1, %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2175], %g3
	add	%g3, %g1, %g1
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ba,pt	%xcc, .L568
	 nop
.L570:
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2191], %g2
	srl	%g2, 0, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L569:
	ld	[%fp+2191], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+2191]
	cmp	%g1, 0
	bne	%icc, .L570
	 nop
	nop
.L568:
	nop
	return	%i7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	srl	%g1, 2, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2191], %g1
	and	%g1, -4, %g1
	st	%g1, [%fp+2039]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%xcc, .L572
	 nop
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2175], %g2
	cmp	%g2, %g1
	bleu	%xcc, .L579
	 nop
.L572:
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L574
	 nop
.L575:
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	sllx	%g1, 2, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, 0, %g2
	sllx	%g2, 2, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L574:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	blu	%icc, .L575
	 nop
	ba,pt	%xcc, .L576
	 nop
.L577:
	ld	[%fp+2039], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2039], %g2
	srl	%g2, 0, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L576:
	ld	[%fp+2191], %g2
	ld	[%fp+2039], %g1
	cmp	%g2, %g1
	bgu	%icc, .L577
	 nop
	ba,pt	%xcc, .L578
	 nop
.L580:
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2175], %g2
	add	%g2, %g1, %g1
	ld	[%fp+2191], %g2
	srl	%g2, 0, %g2
	ldx	[%fp+2183], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L579:
	ld	[%fp+2191], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+2191]
	cmp	%g1, 0
	bne	%icc, .L580
	 nop
	nop
.L578:
	nop
	return	%i7+8
	 nop
	.size	__cmovw, .-__cmovw
	.align 4
	.global __modi
	.type	__modi, #function
	.proc	04
__modi:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2175], %g1
	sra	%g1, 31, %g2
	ld	[%fp+2183], %g3
	wr	%g0, %g2, %y
	sdiv	%g1, %g3, %g3
	ld	[%fp+2183], %g2
	smul	%g3, %g2, %g2
	sub	%g1, %g2, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__modi, .-__modi
	.align 4
	.global __uitod
	.type	__uitod, #function
	.proc	07
__uitod:
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	srl	%g1, 0, %g1
	brlz	%g1, .L584
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	ba,pt	%xcc, .L586
	 nop
.L584:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	faddd	%f8, %f8, %f8
.L586:
	nop
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	__uitod, .-__uitod
	.align 4
	.global __uitof
	.type	__uitof, #function
	.proc	06
__uitof:
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	srl	%g1, 0, %g1
	brlz	%g1, .L588
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	ba,pt	%xcc, .L590
	 nop
.L588:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	fadds	%f8, %f8, %f8
.L590:
	nop
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	__uitof, .-__uitof
	.align 4
	.global __ulltod
	.type	__ulltod, #function
	.proc	07
__ulltod:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	brlz	%g1, .L592
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	ba,pt	%xcc, .L594
	 nop
.L592:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	faddd	%f8, %f8, %f8
.L594:
	nop
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	__ulltod, .-__ulltod
	.align 4
	.global __ulltof
	.type	__ulltof, #function
	.proc	06
__ulltof:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	brlz	%g1, .L596
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	ba,pt	%xcc, .L598
	 nop
.L596:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	fadds	%f8, %f8, %f8
.L598:
	nop
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	__ulltof, .-__ulltof
	.align 4
	.global __umodi
	.type	__umodi, #function
	.proc	016
__umodi:
	save	%sp, -176, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2175], %g1
	ld	[%fp+2183], %g2
	wr	%g0, 0, %y
	udiv	%g1, %g2, %g3
	ld	[%fp+2183], %g2
	smul	%g3, %g2, %g2
	sub	%g1, %g2, %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__umodi, .-__umodi
	.align 4
	.global __clzhi2
	.type	__clzhi2, #function
	.proc	04
__clzhi2:
	save	%sp, -192, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+2175]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L602
	 nop
.L605:
	mov	15, %g2
	ld	[%fp+2043], %g1
	sub	%g2, %g1, %g1
	lduh	[%fp+2175], %g2
	sll	%g2, 16, %g2
	srl	%g2, 16, %g2
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	%icc, .L607
	 nop
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L602:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L605
	 nop
	ba,pt	%xcc, .L604
	 nop
.L607:
	nop
.L604:
	ld	[%fp+2043], %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global __ctzhi2
	.type	__ctzhi2, #function
	.proc	04
__ctzhi2:
	save	%sp, -192, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+2175]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L609
	 nop
.L612:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2043], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	%icc, .L614
	 nop
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L609:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L612
	 nop
	ba,pt	%xcc, .L611
	 nop
.L614:
	nop
.L611:
	ld	[%fp+2043], %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC15:
	.long	1191182336
	.section	".text"
	.align 4
	.global __fixunssfsi
	.type	__fixunssfsi, #function
	.proc	05
__fixunssfsi:
	save	%sp, -192, %sp
	st	%f1, [%fp+2175]
	ld	[%fp+2175], %f9
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %g1
	ld	[%g1], %f8
	fcmpes	%fcc0, %f9, %f8
	fbul	%fcc0, .L620
	 nop
	ld	[%fp+2175], %f9
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %g1
	ld	[%g1], %f8
	fsubs	%f9, %f8, %f8
	fstox	%f8, %f8
	std	%f8, [%fp+2039]
	sethi	%hi(32768), %g1
	ldx	[%fp+2039], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L618
	 nop
.L620:
	ld	[%fp+2175], %f8
	fstox	%f8, %f8
	std	%f8, [%fp+2039]
.L618:
	ldx	[%fp+2039], %i0
	return	%i7+8
	 nop
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global __parityhi2
	.type	__parityhi2, #function
	.proc	04
__parityhi2:
	save	%sp, -192, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+2175]
	st	%g0, [%fp+2039]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L622
	 nop
.L624:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2043], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L623
	 nop
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L623:
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L622:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L624
	 nop
	ld	[%fp+2039], %g1
	and	%g1, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global __popcounthi2
	.type	__popcounthi2, #function
	.proc	04
__popcounthi2:
	save	%sp, -192, %sp
	mov	%i0, %g1
	sth	%g1, [%fp+2175]
	st	%g0, [%fp+2039]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L627
	 nop
.L629:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2043], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L628
	 nop
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L628:
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L627:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L629
	 nop
	ld	[%fp+2039], %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, #function
	.proc	016
__mulsi3_iq2000:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L632
	 nop
.L634:
	ld	[%fp+2175], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L633
	 nop
	ld	[%fp+2043], %g2
	ld	[%fp+2183], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
.L633:
	ld	[%fp+2175], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
.L632:
	ld	[%fp+2175], %g1
	cmp	%g1, 0
	bne	%icc, .L634
	 nop
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, #function
	.proc	016
__mulsi3_lm32:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	st	%g0, [%fp+2043]
	ld	[%fp+2175], %g1
	cmp	%g1, 0
	bne	%icc, .L639
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L638
	 nop
.L641:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L640
	 nop
	ld	[%fp+2043], %g2
	ld	[%fp+2175], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
.L640:
	ld	[%fp+2175], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2183]
.L639:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L641
	 nop
	ld	[%fp+2043], %g1
.L638:
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global __udivmodsi4
	.type	__udivmodsi4, #function
	.proc	016
__udivmodsi4:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g3
	mov	%i2, %g2
	st	%g1, [%fp+2175]
	mov	%g3, %g1
	st	%g1, [%fp+2183]
	mov	%g2, %g1
	st	%g1, [%fp+2191]
	mov	1, %g1
	st	%g1, [%fp+2043]
	st	%g0, [%fp+2039]
	ba,pt	%xcc, .L643
	 nop
.L645:
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2043]
.L643:
	ld	[%fp+2183], %g2
	ld	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L646
	 nop
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L646
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L645
	 nop
	ba,pt	%xcc, .L646
	 nop
.L648:
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%icc, .L647
	 nop
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2039], %g2
	ld	[%fp+2043], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2039]
.L647:
	ld	[%fp+2043], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2183], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2183]
.L646:
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	bne	%icc, .L648
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L649
	 nop
	ld	[%fp+2175], %g1
	ba,pt	%xcc, .L650
	 nop
.L649:
	ld	[%fp+2039], %g1
.L650:
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, #function
	.proc	04
__mspabi_cmpf:
	save	%sp, -176, %sp
	st	%f1, [%fp+2175]
	st	%f3, [%fp+2183]
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc1, %f9, %f8
	fbuge	%fcc1, .L659
	 nop
	mov	-1, %g1
	ba,pt	%xcc, .L654
	 nop
.L659:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc2, %f9, %f8
	fbule	%fcc2, .L660
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L654
	 nop
.L660:
	mov	0, %g1
.L654:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, #function
	.proc	04
__mspabi_cmpd:
	save	%sp, -176, %sp
	std	%f0, [%fp+2175]
	std	%f2, [%fp+2183]
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc3, %f10, %f8
	fbuge	%fcc3, .L669
	 nop
	mov	-1, %g1
	ba,pt	%xcc, .L664
	 nop
.L669:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc0, %f10, %f8
	fbule	%fcc0, .L670
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L664
	 nop
.L670:
	mov	0, %g1
.L664:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, #function
	.proc	05
__mspabi_mpysll:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	mulx	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, #function
	.proc	017
__mspabi_mpyull:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	mulx	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global __mulhi3
	.type	__mulhi3, #function
	.proc	04
__mulhi3:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	st	%g0, [%fp+2039]
	st	%g0, [%fp+2035]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L676
	 nop
	ld	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+2183]
	mov	1, %g1
	st	%g1, [%fp+2039]
.L676:
	stb	%g0, [%fp+2046]
	ba,pt	%xcc, .L677
	 nop
.L680:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L678
	 nop
	ld	[%fp+2035], %g2
	ld	[%fp+2175], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
.L678:
	ld	[%fp+2175], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ldub	[%fp+2046], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp+2046]
.L677:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L679
	 nop
	ldub	[%fp+2046], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 31
	bleu	%icc, .L680
	 nop
.L679:
	ld	[%fp+2039], %g1
	cmp	%g1, 0
	be	%icc, .L681
	 nop
	ld	[%fp+2035], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L683
	 nop
.L681:
	ld	[%fp+2035], %g1
.L683:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global __divsi3
	.type	__divsi3, #function
	.proc	05
__divsi3:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	st	%g0, [%fp+2043]
	ldx	[%fp+2175], %g1
	brgez	%g1, .L685
	 nop
	ldx	[%fp+2175], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2175]
	ld	[%fp+2043], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
.L685:
	ldx	[%fp+2183], %g1
	brgez	%g1, .L686
	 nop
	ldx	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
.L686:
	ldx	[%fp+2183], %g1
	srl	%g1, 0, %g2
	ldx	[%fp+2175], %g1
	srl	%g1, 0, %g1
	mov	0, %o2
	mov	%g2, %o1
	mov	%g1, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %g1
	srl	%g1, 0, %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L687
	 nop
	ldx	[%fp+2031], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2031]
.L687:
	ldx	[%fp+2031], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__divsi3, .-__divsi3
	.align 4
	.global __modsi3
	.type	__modsi3, #function
	.proc	05
__modsi3:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	st	%g0, [%fp+2043]
	ldx	[%fp+2175], %g1
	brgez	%g1, .L690
	 nop
	ldx	[%fp+2175], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2175]
	mov	1, %g1
	st	%g1, [%fp+2043]
.L690:
	ldx	[%fp+2183], %g1
	brgez	%g1, .L691
	 nop
	ldx	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2183]
.L691:
	ldx	[%fp+2183], %g1
	srl	%g1, 0, %g2
	ldx	[%fp+2175], %g1
	srl	%g1, 0, %g1
	mov	1, %o2
	mov	%g2, %o1
	mov	%g1, %o0
	call	__udivmodsi4, 0
	 nop
	mov	%o0, %g1
	srl	%g1, 0, %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L692
	 nop
	ldx	[%fp+2031], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2031]
.L692:
	ldx	[%fp+2031], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__modsi3, .-__modsi3
	.align 4
	.global __udivmodhi4
	.type	__udivmodhi4, #function
	.proc	015
__udivmodhi4:
	save	%sp, -192, %sp
	mov	%i0, %g1
	mov	%i1, %g3
	mov	%i2, %g2
	sth	%g1, [%fp+2175]
	mov	%g3, %g1
	sth	%g1, [%fp+2183]
	mov	%g2, %g1
	st	%g1, [%fp+2191]
	mov	1, %g1
	sth	%g1, [%fp+2045]
	sth	%g0, [%fp+2043]
	ba,pt	%xcc, .L695
	 nop
.L697:
	lduh	[%fp+2183], %g1
	add	%g1, %g1, %g1
	sth	%g1, [%fp+2183]
	lduh	[%fp+2045], %g1
	add	%g1, %g1, %g1
	sth	%g1, [%fp+2045]
.L695:
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	bgeu	%icc, .L698
	 nop
	lduh	[%fp+2045], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	be	%icc, .L698
	 nop
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	sra	%g1, 16, %g1
	cmp	%g1, 0
	bge	%icc, .L697
	 nop
	ba,pt	%xcc, .L698
	 nop
.L700:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	blu	%icc, .L699
	 nop
	lduh	[%fp+2175], %g2
	lduh	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	sth	%g1, [%fp+2175]
	lduh	[%fp+2043], %g2
	lduh	[%fp+2045], %g1
	or	%g2, %g1, %g1
	sth	%g1, [%fp+2043]
.L699:
	lduh	[%fp+2045], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	srl	%g1, 1, %g1
	sth	%g1, [%fp+2045]
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	srl	%g1, 1, %g1
	sth	%g1, [%fp+2183]
.L698:
	lduh	[%fp+2045], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	bne	%icc, .L700
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L701
	 nop
	lduh	[%fp+2175], %g1
	ba,pt	%xcc, .L702
	 nop
.L701:
	lduh	[%fp+2043], %g1
.L702:
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, #function
	.proc	017
__udivmodsi4_libgcc:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	mov	1, %g1
	stx	%g1, [%fp+2039]
	stx	%g0, [%fp+2031]
	ba,pt	%xcc, .L704
	 nop
.L706:
	ldx	[%fp+2183], %g1
	add	%g1, %g1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, %g1, %g1
	stx	%g1, [%fp+2039]
.L704:
	ldx	[%fp+2183], %g2
	ldx	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L707
	 nop
	ldx	[%fp+2039], %g1
	brz	%g1, .L707
	 nop
	ldx	[%fp+2183], %g2
	sethi	%hi(2147483648), %g1
	and	%g2, %g1, %g1
	brz	%g1, .L706
	 nop
	ba,pt	%xcc, .L707
	 nop
.L709:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%xcc, .L708
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	or	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
.L708:
	ldx	[%fp+2039], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2183]
.L707:
	ldx	[%fp+2039], %g1
	brnz	%g1, .L709
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L710
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L711
	 nop
.L710:
	ldx	[%fp+2031], %g1
.L711:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global __ashldi3
	.type	__ashldi3, #function
	.proc	05
__ashldi3:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	mov	32, %g1
	st	%g1, [%fp+2043]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L713
	 nop
	st	%g0, [%fp+2027]
	ld	[%fp+2035], %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ba,pt	%xcc, .L714
	 nop
.L713:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L715
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L717
	 nop
.L715:
	ld	[%fp+2035], %g2
	ld	[%fp+2183], %g1
	sll	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2031], %g1
	mov	%g1, %g2
	ld	[%fp+2183], %g1
	sll	%g2, %g1, %g2
	ld	[%fp+2035], %g3
	ld	[%fp+2043], %g4
	ld	[%fp+2183], %g1
	sub	%g4, %g1, %g1
	srl	%g3, %g1, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2023]
.L714:
	ldx	[%fp+2023], %g1
.L717:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global __ashlti3
	.type	__ashlti3, #function
	.proc	05
__ashlti3:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	mov	64, %g1
	st	%g1, [%fp+2043]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ld	[%fp+2191], %g2
	ld	[%fp+2043], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L719
	 nop
	stx	%g0, [%fp+2007]
	ldx	[%fp+2023], %g2
	ld	[%fp+2191], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	sllx	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ba,pt	%xcc, .L720
	 nop
.L719:
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bne	%icc, .L721
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L723
	 nop
.L721:
	ldx	[%fp+2023], %g2
	ld	[%fp+2191], %g1
	sllx	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ldx	[%fp+2015], %g1
	mov	%g1, %g2
	ld	[%fp+2191], %g1
	sllx	%g2, %g1, %g2
	ldx	[%fp+2023], %g3
	ld	[%fp+2043], %g4
	ld	[%fp+2191], %g1
	sub	%g4, %g1, %g1
	srlx	%g3, %g1, %g1
	or	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
.L720:
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
.L723:
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__ashlti3, .-__ashlti3
	.align 4
	.global __ashrdi3
	.type	__ashrdi3, #function
	.proc	05
__ashrdi3:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	mov	32, %g1
	st	%g1, [%fp+2043]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L725
	 nop
	ld	[%fp+2031], %g2
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
	sra	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2031], %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	sra	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ba,pt	%xcc, .L726
	 nop
.L725:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L727
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L729
	 nop
.L727:
	ld	[%fp+2031], %g2
	ld	[%fp+2183], %g1
	sra	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2031], %g1
	mov	%g1, %g3
	ld	[%fp+2043], %g2
	ld	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	sll	%g3, %g1, %g2
	ld	[%fp+2035], %g3
	ld	[%fp+2183], %g1
	srl	%g3, %g1, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2027]
.L726:
	ldx	[%fp+2023], %g1
.L729:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global __ashrti3
	.type	__ashrti3, #function
	.proc	05
__ashrti3:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	mov	64, %g1
	st	%g1, [%fp+2043]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ld	[%fp+2191], %g2
	ld	[%fp+2043], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L731
	 nop
	ldx	[%fp+2015], %g2
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
	srax	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+2015], %g2
	ld	[%fp+2191], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	srax	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ba,pt	%xcc, .L732
	 nop
.L731:
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bne	%icc, .L733
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L735
	 nop
.L733:
	ldx	[%fp+2015], %g2
	ld	[%fp+2191], %g1
	srax	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+2015], %g1
	mov	%g1, %g3
	ld	[%fp+2043], %g2
	ld	[%fp+2191], %g1
	sub	%g2, %g1, %g1
	sllx	%g3, %g1, %g2
	ldx	[%fp+2023], %g3
	ld	[%fp+2191], %g1
	srlx	%g3, %g1, %g1
	or	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
.L732:
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
.L735:
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__ashrti3, .-__ashrti3
	.align 4
	.global __bswapdi2
	.type	__bswapdi2, #function
	.proc	017
__bswapdi2:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	srlx	%g1, 56, %g2
	ldx	[%fp+2175], %g1
	srlx	%g1, 40, %g1
	mov	255, %g3
	sllx	%g3, 8, %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	srlx	%g1, 24, %g1
	sethi	%hi(16711680), %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	srlx	%g1, 8, %g1
	sethi	%hi(4278190080), %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 8, %g1
	mov	255, %g3
	sllx	%g3, 32, %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 24, %g1
	mov	255, %g3
	sllx	%g3, 40, %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 40, %g1
	mov	255, %g3
	sllx	%g3, 48, %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 56, %g1
	or	%g2, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global __bswapsi2
	.type	__bswapsi2, #function
	.proc	016
__bswapsi2:
	save	%sp, -176, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	srl	%g1, 24, %g2
	ld	[%fp+2175], %g1
	srl	%g1, 8, %g1
	sethi	%hi(64512), %g3
	or	%g3, 768, %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ld	[%fp+2175], %g1
	sll	%g1, 8, %g1
	sethi	%hi(16711680), %g3
	and	%g1, %g3, %g1
	or	%g2, %g1, %g2
	ld	[%fp+2175], %g1
	sll	%g1, 24, %g1
	or	%g2, %g1, %g1
	srl	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global __clzsi2
	.type	__clzsi2, #function
	.proc	04
__clzsi2:
	save	%sp, -240, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%g2, %g1
	bgu	%icc, .L741
	 nop
	mov	16, %g1
	ba,pt	%xcc, .L742
	 nop
.L741:
	mov	0, %g1
.L742:
	st	%g1, [%fp+2039]
	mov	16, %g2
	ld	[%fp+2039], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2039], %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2035], %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	%icc, .L743
	 nop
	mov	8, %g1
	ba,pt	%xcc, .L744
	 nop
.L743:
	mov	0, %g1
.L744:
	st	%g1, [%fp+2027]
	mov	8, %g2
	ld	[%fp+2027], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2035], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2031], %g2
	ld	[%fp+2027], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2023], %g1
	and	%g1, 240, %g1
	cmp	%g1, 0
	bne	%icc, .L745
	 nop
	mov	4, %g1
	ba,pt	%xcc, .L746
	 nop
.L745:
	mov	0, %g1
.L746:
	st	%g1, [%fp+2015]
	mov	4, %g2
	ld	[%fp+2015], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2023], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2011]
	ld	[%fp+2019], %g2
	ld	[%fp+2015], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2007]
	ld	[%fp+2011], %g1
	and	%g1, 12, %g1
	cmp	%g1, 0
	bne	%icc, .L747
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L748
	 nop
.L747:
	mov	0, %g1
.L748:
	st	%g1, [%fp+2003]
	mov	2, %g2
	ld	[%fp+2003], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2011], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+1999]
	ld	[%fp+2007], %g2
	ld	[%fp+2003], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+1995]
	ld	[%fp+1999], %g1
	and	%g1, 2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	mov	%g1, %g3
	mov	2, %g2
	ld	[%fp+1999], %g1
	sub	%g2, %g1, %g1
	smul	%g3, %g1, %g2
	ld	[%fp+1995], %g1
	add	%g2, %g1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global __clzti2
	.type	__clzti2, #function
	.proc	04
__clzti2:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2015], %g2
	mov	0, %g1
	movre	%g2, 1, %g1
	sub	%g0, %g1, %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2015], %g2
	ldx	[%fp+2039], %g1
	xnor	%g0, %g1, %g1
	and	%g2, %g1, %g2
	ldx	[%fp+2023], %g3
	ldx	[%fp+2039], %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g1
	mov	%g1, %o0
	call	__clzdi2, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ldx	[%fp+2039], %g1
	and	%g1, 64, %g1
	add	%g2, %g1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__clzti2, .-__clzti2
	.align 4
	.global __cmpdi2
	.type	__cmpdi2, #function
	.proc	04
__cmpdi2:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2039], %g2
	ld	[%fp+2031], %g1
	cmp	%g2, %g1
	bge	%icc, .L753
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L758
	 nop
.L753:
	ld	[%fp+2039], %g2
	ld	[%fp+2031], %g1
	cmp	%g2, %g1
	ble	%icc, .L755
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L758
	 nop
.L755:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L756
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L758
	 nop
.L756:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bleu	%icc, .L757
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L758
	 nop
.L757:
	mov	1, %g1
.L758:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, #function
	.proc	04
__aeabi_lcmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2183], %o1
	ldx	[%fp+2175], %o0
	call	__cmpdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, -1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global __cmpti2
	.type	__cmpti2, #function
	.proc	04
__cmpti2:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	bge	%xcc, .L762
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L767
	 nop
.L762:
	ldx	[%fp+2031], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	ble	%xcc, .L764
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L767
	 nop
.L764:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L765
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L767
	 nop
.L765:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L766
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L767
	 nop
.L766:
	mov	1, %g1
.L767:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__cmpti2, .-__cmpti2
	.align 4
	.global __ctzsi2
	.type	__ctzsi2, #function
	.proc	04
__ctzsi2:
	save	%sp, -240, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	%icc, .L769
	 nop
	mov	16, %g1
	ba,pt	%xcc, .L770
	 nop
.L769:
	mov	0, %g1
.L770:
	st	%g1, [%fp+2039]
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2039], %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2035], %g1
	and	%g1, 255, %g1
	cmp	%g1, 0
	bne	%icc, .L771
	 nop
	mov	8, %g1
	ba,pt	%xcc, .L772
	 nop
.L771:
	mov	0, %g1
.L772:
	st	%g1, [%fp+2027]
	ld	[%fp+2035], %g2
	ld	[%fp+2027], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2031], %g2
	ld	[%fp+2027], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2023], %g1
	and	%g1, 15, %g1
	cmp	%g1, 0
	bne	%icc, .L773
	 nop
	mov	4, %g1
	ba,pt	%xcc, .L774
	 nop
.L773:
	mov	0, %g1
.L774:
	st	%g1, [%fp+2015]
	ld	[%fp+2023], %g2
	ld	[%fp+2015], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2011]
	ld	[%fp+2019], %g2
	ld	[%fp+2015], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2007]
	ld	[%fp+2011], %g1
	and	%g1, 3, %g1
	cmp	%g1, 0
	bne	%icc, .L775
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L776
	 nop
.L775:
	mov	0, %g1
.L776:
	st	%g1, [%fp+2003]
	ld	[%fp+2011], %g2
	ld	[%fp+2003], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+1999]
	ld	[%fp+1999], %g1
	and	%g1, 3, %g1
	st	%g1, [%fp+1995]
	ld	[%fp+2007], %g2
	ld	[%fp+2003], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+1991]
	ld	[%fp+1995], %g1
	srl	%g1, 1, %g1
	mov	2, %g2
	sub	%g2, %g1, %g1
	ld	[%fp+1995], %g2
	xnor	%g0, %g2, %g2
	and	%g2, 1, %g2
	sub	%g0, %g2, %g2
	and	%g2, %g1, %g2
	ld	[%fp+1991], %g1
	add	%g2, %g1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global __ctzti2
	.type	__ctzti2, #function
	.proc	04
__ctzti2:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2023], %g2
	mov	0, %g1
	movre	%g2, 1, %g1
	sub	%g0, %g1, %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2015], %g2
	ldx	[%fp+2039], %g1
	and	%g2, %g1, %g2
	ldx	[%fp+2023], %g3
	ldx	[%fp+2039], %g1
	xnor	%g0, %g1, %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g1
	mov	%g1, %o0
	call	__ctzdi2, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %g2
	ldx	[%fp+2039], %g1
	and	%g1, 64, %g1
	add	%g2, %g1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ctzti2, .-__ctzti2
	.align 4
	.global __ffsti2
	.type	__ffsti2, #function
	.proc	04
__ffsti2:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	ldx	[%fp+2039], %g1
	brnz	%g1, .L781
	 nop
	ldx	[%fp+2031], %g1
	brnz	%g1, .L782
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L784
	 nop
.L782:
	ldx	[%fp+2031], %g1
	mov	%g1, %o0
	call	__ctzdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, 65, %g1
	ba,pt	%xcc, .L784
	 nop
.L781:
	ldx	[%fp+2039], %g1
	mov	%g1, %o0
	call	__ctzdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, 1, %g1
.L784:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ffsti2, .-__ffsti2
	.align 4
	.global __lshrdi3
	.type	__lshrdi3, #function
	.proc	05
__lshrdi3:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	mov	32, %g1
	st	%g1, [%fp+2043]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L786
	 nop
	st	%g0, [%fp+2023]
	ld	[%fp+2031], %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ba,pt	%xcc, .L787
	 nop
.L786:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L788
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L790
	 nop
.L788:
	ld	[%fp+2031], %g2
	ld	[%fp+2183], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2031], %g2
	ld	[%fp+2043], %g3
	ld	[%fp+2183], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g2
	ld	[%fp+2035], %g3
	ld	[%fp+2183], %g1
	srl	%g3, %g1, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2027]
.L787:
	ldx	[%fp+2023], %g1
.L790:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global __lshrti3
	.type	__lshrti3, #function
	.proc	05
__lshrti3:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	mov	64, %g1
	st	%g1, [%fp+2043]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ld	[%fp+2191], %g2
	ld	[%fp+2043], %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L792
	 nop
	stx	%g0, [%fp+1999]
	ldx	[%fp+2015], %g2
	ld	[%fp+2191], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ba,pt	%xcc, .L793
	 nop
.L792:
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bne	%icc, .L794
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L796
	 nop
.L794:
	ldx	[%fp+2015], %g2
	ld	[%fp+2191], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+2015], %g2
	ld	[%fp+2043], %g3
	ld	[%fp+2191], %g1
	sub	%g3, %g1, %g1
	sllx	%g2, %g1, %g2
	ldx	[%fp+2023], %g3
	ld	[%fp+2191], %g1
	srlx	%g3, %g1, %g1
	or	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
.L793:
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
.L796:
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__lshrti3, .-__lshrti3
	.align 4
	.global __muldsi3
	.type	__muldsi3, #function
	.proc	05
__muldsi3:
	save	%sp, -208, %sp
	mov	%i0, %g1
	mov	%i1, %g2
	st	%g1, [%fp+2175]
	mov	%g2, %g1
	st	%g1, [%fp+2183]
	mov	16, %g1
	st	%g1, [%fp+2043]
	mov	-1, %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2039]
	ld	[%fp+2175], %g2
	ld	[%fp+2039], %g1
	and	%g2, %g1, %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g1
	smul	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2019], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2019], %g1
	ld	[%fp+2039], %g2
	and	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g1
	smul	%g2, %g1, %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2019], %g2
	ld	[%fp+2031], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2031], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2015]
	ld	[%fp+2019], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2019], %g1
	ld	[%fp+2039], %g2
	and	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g2
	ld	[%fp+2175], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g1
	smul	%g2, %g1, %g1
	ld	[%fp+2027], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2019], %g2
	ld	[%fp+2023], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2015], %g2
	ld	[%fp+2023], %g3
	ld	[%fp+2043], %g1
	srl	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2015]
	ld	[%fp+2015], %g2
	ld	[%fp+2175], %g3
	ld	[%fp+2043], %g1
	srl	%g3, %g1, %g3
	ld	[%fp+2183], %g4
	ld	[%fp+2043], %g1
	srl	%g4, %g1, %g1
	smul	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2015]
	ldx	[%fp+2015], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, #function
	.proc	05
__muldi3_compiler_rt:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2035], %g1
	srl	%g1, 0, %g2
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	mov	%g2, %o1
	mov	%g1, %o0
	call	__muldsi3, 0
	 nop
	mov	%o0, %g1
	stx	%g1, [%fp+2023]
	ld	[%fp+2023], %g2
	ld	[%fp+2039], %g3
	ld	[%fp+2035], %g1
	smul	%g3, %g1, %g3
	ld	[%fp+2043], %g4
	ld	[%fp+2031], %g1
	smul	%g4, %g1, %g1
	add	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ldx	[%fp+2023], %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global __mulddi3
	.type	__mulddi3, #function
	.proc	05
__mulddi3:
	save	%sp, -240, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	32, %g1
	st	%g1, [%fp+2043]
	mov	-1, %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2031], %g1
	and	%g2, %g1, %g2
	ldx	[%fp+2183], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	stx	%g1, [%fp+1991]
	ldx	[%fp+1991], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+1991], %g1
	ldx	[%fp+2031], %g2
	and	%g2, %g1, %g1
	stx	%g1, [%fp+1991]
	ldx	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g2
	ldx	[%fp+2183], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2015]
	ldx	[%fp+1991], %g2
	ldx	[%fp+2015], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sllx	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1991]
	ldx	[%fp+2015], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+1983]
	ldx	[%fp+1991], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ldx	[%fp+1991], %g1
	ldx	[%fp+2031], %g2
	and	%g2, %g1, %g1
	stx	%g1, [%fp+1991]
	ldx	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g2
	ldx	[%fp+2175], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2007], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+1991], %g2
	ldx	[%fp+1999], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sllx	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1991]
	ldx	[%fp+1983], %g2
	ldx	[%fp+1999], %g3
	ld	[%fp+2043], %g1
	srlx	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1983]
	ldx	[%fp+1983], %g2
	ldx	[%fp+2175], %g3
	ld	[%fp+2043], %g1
	srlx	%g3, %g1, %g3
	ldx	[%fp+2183], %g4
	ld	[%fp+2043], %g1
	srlx	%g4, %g1, %g1
	mulx	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1983]
	ldx	[%fp+1983], %g2
	ldx	[%fp+1991], %g3
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__mulddi3, .-__mulddi3
	.align 4
	.global __multi3
	.type	__multi3, #function
	.proc	05
__multi3:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2023], %o1
	ldx	[%fp+2039], %o0
	call	__mulddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	ldx	[%fp+1999], %g2
	ldx	[%fp+2031], %g3
	ldx	[%fp+2023], %g1
	mulx	%g3, %g1, %g3
	ldx	[%fp+2039], %g4
	ldx	[%fp+2015], %g1
	mulx	%g4, %g1, %g1
	add	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__multi3, .-__multi3
	.align 4
	.global __negdi2
	.type	__negdi2, #function
	.proc	05
__negdi2:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	sub	%g0, %g1, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__negdi2, .-__negdi2
	.align 4
	.global __negti2
	.type	__negti2, #function
	.proc	05
__negti2:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g4
	ldx	[%fp+2183], %g5
	mov	0, %i5
	mov	0, %g1
	sub	%g1, %g5, %g3
	cmp	%g3, %g1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	sub	%i5, %g4, %g2
	sub	%g2, %g1, %g1
	mov	%g1, %g2
	mov	%g3, %g1
	mov	%g2, %i0
	mov	%g1, %i1
	return	%i7+8
	 nop
	.size	__negti2, .-__negti2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2023]
	ld	[%fp+2023], %g2
	ld	[%fp+2027], %g1
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2039]
	ld	[%fp+2039], %g1
	srl	%g1, 8, %g1
	ld	[%fp+2039], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	srl	%g1, 4, %g1
	ld	[%fp+2035], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2031], %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %g2
	or	%g2, 406, %g2
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global __parityti2
	.type	__parityti2, #function
	.proc	04
__parityti2:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2015], %g2
	ldx	[%fp+2023], %g1
	xor	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ld	[%fp+2007], %g2
	ld	[%fp+2011], %g1
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2039]
	ld	[%fp+2039], %g1
	srl	%g1, 8, %g1
	ld	[%fp+2039], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	srl	%g1, 4, %g1
	ld	[%fp+2035], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2031], %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %g2
	or	%g2, 406, %g2
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__parityti2, .-__parityti2
	.align 4
	.global __paritysi2
	.type	__paritysi2, #function
	.proc	04
__paritysi2:
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2039]
	ld	[%fp+2039], %g1
	srl	%g1, 8, %g1
	ld	[%fp+2039], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	srl	%g1, 4, %g1
	ld	[%fp+2035], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2031], %g1
	and	%g1, 15, %g1
	sethi	%hi(26624), %g2
	or	%g2, 406, %g2
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global __popcountdi2
	.type	__popcountdi2, #function
	.proc	04
__popcountdi2:
	save	%sp, -224, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	ldx	[%fp+2039], %g2
	sub	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2031], %g1
	srlx	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g3, %g1, %g1
	and	%g2, %g1, %g2
	ldx	[%fp+2031], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g4, %g1, %g1
	and	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2023], %g1
	srlx	%g1, 4, %g2
	ldx	[%fp+2023], %g1
	add	%g2, %g1, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	stx	%g1, [%fp+2015]
	ldx	[%fp+2015], %g1
	mov	%g1, %g2
	ldx	[%fp+2015], %g1
	srlx	%g1, 32, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2011]
	ld	[%fp+2011], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2011], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2007]
	ld	[%fp+2007], %g1
	srl	%g1, 8, %g2
	ld	[%fp+2007], %g1
	add	%g2, %g1, %g1
	and	%g1, 127, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global __popcountsi2
	.type	__popcountsi2, #function
	.proc	04
__popcountsi2:
	save	%sp, -208, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 1, %g2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	and	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	sub	%g2, %g1, %g1
	st	%g1, [%fp+2039]
	ld	[%fp+2039], %g1
	srl	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	ld	[%fp+2039], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	srl	%g1, 4, %g2
	ld	[%fp+2035], %g1
	add	%g2, %g1, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp+2031]
	ld	[%fp+2031], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2031], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2027], %g1
	srl	%g1, 8, %g2
	ld	[%fp+2027], %g1
	add	%g2, %g1, %g1
	and	%g1, 63, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global __popcountti2
	.type	__popcountti2, #function
	.proc	04
__popcountti2:
	save	%sp, -256, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	ldx	[%fp+2031], %g1
	sllx	%g1, 63, %g2
	ldx	[%fp+2039], %g1
	srlx	%g1, 1, %g1
	or	%g2, %g1, %g1
	ldx	[%fp+2031], %g2
	srlx	%g2, 1, %g3
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	sllx	%g2, 32, %g4
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	add	%g4, %g2, %g2
	and	%g3, %g2, %g4
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	sllx	%g2, 32, %g3
	sethi	%hi(1431655424), %g2
	or	%g2, 341, %g2
	add	%g3, %g2, %g2
	and	%g1, %g2, %i5
	ldx	[%fp+2031], %g5
	ldx	[%fp+2039], %g2
	sub	%g2, %i5, %g3
	cmp	%g3, %g2
	mov	0, %g2
	movgu	%xcc, 1, %g2
	sub	%g5, %g4, %g1
	sub	%g1, %g2, %g1
	stx	%g1, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2015], %g1
	sllx	%g1, 62, %g2
	ldx	[%fp+2023], %g1
	srlx	%g1, 2, %g1
	or	%g2, %g1, %g1
	ldx	[%fp+2015], %g2
	srlx	%g2, 2, %g3
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	sllx	%g2, 32, %g4
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	add	%g4, %g2, %g2
	and	%g3, %g2, %g5
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	sllx	%g2, 32, %g3
	sethi	%hi(858992640), %g2
	or	%g2, 819, %g2
	add	%g3, %g2, %g2
	and	%g1, %g2, %g2
	ldx	[%fp+2015], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g4, %g1, %g1
	and	%g3, %g1, %g4
	ldx	[%fp+2023], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %i5
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%i5, %g1, %g1
	and	%g3, %g1, %i5
	add	%g2, %i5, %g3
	cmp	%g3, %g2
	mov	0, %g2
	movlu	%xcc, 1, %g2
	add	%g5, %g4, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	stx	%g3, [%fp+2007]
	ldx	[%fp+1999], %g1
	sllx	%g1, 60, %g2
	ldx	[%fp+2007], %g1
	srlx	%g1, 4, %g1
	or	%g2, %g1, %g1
	ldx	[%fp+1999], %g2
	srlx	%g2, 4, %g5
	ldx	[%fp+1999], %g4
	ldx	[%fp+2007], %i5
	add	%g1, %i5, %g3
	cmp	%g3, %g1
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%g5, %g4, %g2
	add	%g1, %g2, %g1
	mov	%g1, %g2
	mov	%g2, %g4
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	add	%g2, %g1, %g1
	and	%g4, %g1, %g1
	stx	%g1, [%fp+1983]
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	add	%g2, %g1, %g1
	and	%g3, %g1, %g1
	stx	%g1, [%fp+1991]
	ldx	[%fp+1991], %g1
	ldx	[%fp+1983], %g2
	srlx	%g2, 0, %g2
	add	%g1, %g2, %g1
	stx	%g1, [%fp+1975]
	ldx	[%fp+1975], %g1
	mov	%g1, %g2
	ldx	[%fp+1975], %g1
	srlx	%g1, 32, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+1971]
	ld	[%fp+1971], %g1
	srl	%g1, 16, %g1
	ld	[%fp+1971], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+1967]
	ld	[%fp+1967], %g1
	srl	%g1, 8, %g2
	ld	[%fp+1967], %g1
	add	%g2, %g1, %g1
	and	%g1, 255, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__popcountti2, .-__popcountti2
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global __powidf2
	.type	__powidf2, #function
	.proc	07
__powidf2:
	save	%sp, -192, %sp
	std	%f0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2035]
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp+2039]
.L825:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L822
	 nop
	ldd	[%fp+2039], %f10
	ldd	[%fp+2175], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp+2039]
.L822:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L830
	 nop
	ldd	[%fp+2175], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp+2175]
	ba,pt	%xcc, .L825
	 nop
.L830:
	nop
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	be	%icc, .L826
	 nop
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f10
	ldd	[%fp+2039], %f8
	fdivd	%f10, %f8, %f8
	ba,pt	%xcc, .L828
	 nop
.L826:
	ldd	[%fp+2039], %f8
.L828:
	nop
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC17:
	.long	1065353216
	.section	".text"
	.align 4
	.global __powisf2
	.type	__powisf2, #function
	.proc	06
__powisf2:
	save	%sp, -192, %sp
	st	%f1, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2039]
	sethi	%hi(.LC17), %g1
	or	%g1, %lo(.LC17), %g1
	ld	[%g1], %f8
	st	%f8, [%fp+2043]
.L835:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L832
	 nop
	ld	[%fp+2043], %f9
	ld	[%fp+2175], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp+2043]
.L832:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L840
	 nop
	ld	[%fp+2175], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp+2175]
	ba,pt	%xcc, .L835
	 nop
.L840:
	nop
	ld	[%fp+2039], %g1
	cmp	%g1, 0
	be	%icc, .L836
	 nop
	sethi	%hi(.LC17), %g1
	or	%g1, %lo(.LC17), %g1
	ld	[%g1], %f9
	ld	[%fp+2043], %f8
	fdivs	%f9, %f8, %f8
	ba,pt	%xcc, .L838
	 nop
.L836:
	ld	[%fp+2043], %f8
.L838:
	nop
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	__powisf2, .-__powisf2
	.align 4
	.global __ucmpdi2
	.type	__ucmpdi2, #function
	.proc	04
__ucmpdi2:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2039], %g2
	ld	[%fp+2031], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L842
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L847
	 nop
.L842:
	ld	[%fp+2039], %g2
	ld	[%fp+2031], %g1
	cmp	%g2, %g1
	bleu	%icc, .L844
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L847
	 nop
.L844:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L845
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L847
	 nop
.L845:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bleu	%icc, .L846
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L847
	 nop
.L846:
	mov	1, %g1
.L847:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, #function
	.proc	04
__aeabi_ulcmp:
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2183], %o1
	ldx	[%fp+2175], %o0
	call	__ucmpdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, -1, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 4
	.global __ucmpti2
	.type	__ucmpti2, #function
	.proc	04
__ucmpti2:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	stx	%g2, [%fp+2015]
	stx	%g3, [%fp+2023]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L851
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L856
	 nop
.L851:
	ldx	[%fp+2031], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L853
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L856
	 nop
.L853:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L854
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L856
	 nop
.L854:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L855
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L856
	 nop
.L855:
	mov	1, %g1
.L856:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.common	s.0,7,8
	.global __ctzdi2
	.global __clzdi2
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_mul
	.global _Qp_feq
	.global _Qp_add
	.global _Qp_cmp
	.global _Qp_dtoq
	.global _Qp_fgt
	.global _Qp_flt
	.global _Qp_flt
	.global _Qp_cmp
	.global _Qp_cmp
	.global _Qp_flt
	.global _Qp_cmp
	.global _Qp_cmp
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
