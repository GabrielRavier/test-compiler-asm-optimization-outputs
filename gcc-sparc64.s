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
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L6
	 nop
	ldx	[%fp+2031], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L7
	 nop
.L8:
	ldx	[%fp+2031], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g1
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
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	cmp	%g2, %g1
	be	%xcc, .L9
	 nop
	ba,pt	%xcc, .L10
	 nop
.L11:
	ldx	[%fp+2031], %g2
	add	%g2, 1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g3
	stx	%g3, [%fp+2039]
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2191], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2191]
	ba,pt	%xcc, .L14
	 nop
.L16:
	ldx	[%fp+2199], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2199]
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L14:
	ldx	[%fp+2199], %g1
	brz	%g1, .L15
	 nop
	ldx	[%fp+2031], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2039], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2191], %g2
	cmp	%g2, %g1
	bne	%icc, .L16
	 nop
.L15:
	ldx	[%fp+2199], %g1
	brz	%g1, .L17
	 nop
	ldx	[%fp+2039], %g1
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ld	[%fp+2183], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2183]
	ba,pt	%xcc, .L20
	 nop
.L22:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L20:
	ldx	[%fp+2191], %g1
	brz	%g1, .L21
	 nop
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2183], %g2
	cmp	%g2, %g1
	bne	%icc, .L22
	 nop
.L21:
	ldx	[%fp+2191], %g1
	brz	%g1, .L23
	 nop
	ldx	[%fp+2039], %g1
	ba,pt	%xcc, .L25
	 nop
.L23:
	mov	0, %g1
.L25:
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	memchr, .-memchr
	.align 4
	.global memcmp
	.type	memcmp, #function
	.proc	04
memcmp:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L27
	 nop
.L29:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2031]
.L27:
	ldx	[%fp+2191], %g1
	brz	%g1, .L28
	 nop
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2031], %g1
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
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ldx	[%fp+2031], %g1
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
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L34
	 nop
.L35:
	ldx	[%fp+2031], %g2
	add	%g2, 1, %g1
	stx	%g1, [%fp+2031]
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ld	[%fp+2183], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2183]
	ba,pt	%xcc, .L38
	 nop
.L40:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	ld	[%fp+2183], %g2
	cmp	%g2, %g1
	bne	%icc, .L38
	 nop
	ldx	[%fp+2039], %g2
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
	ld	[%fp+2183], %g1
	mov	%g1, %g2
	ldx	[%fp+2039], %g1
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
	save	%sp, -176, %sp
	stx	%i0, [%fp+2175]
	mov	%i1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2183]
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
	ld	[%fp+2183], %g2
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
	bne	%icc, .L55
	 nop
	ba,pt	%xcc, .L56
	 nop
.L55:
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	%icc, .L57
	 nop
	mov	0, %g1
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
	ba,pt	%xcc, .L59
	 nop
.L61:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
.L59:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	%icc, .L60
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L61
	 nop
.L60:
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
	ba,pt	%xcc, .L64
	 nop
.L65:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L64:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L65
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2039], %g1
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L70
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L69
	 nop
.L72:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L70:
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	%icc, .L71
	 nop
	ldx	[%fp+2031], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	be	%icc, .L71
	 nop
	ldx	[%fp+2191], %g1
	brz	%g1, .L71
	 nop
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2031], %g1
	ldub	[%g1], %g1
	and	%g2, 0xff, %g2
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	be	%icc, .L72
	 nop
.L71:
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ldx	[%fp+2031], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	sub	%g2, %g1, %g1
.L69:
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
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L74
	 nop
.L75:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	ldub	[%g1], %g2
	ldx	[%fp+2031], %g1
	stb	%g2, [%g1]
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g1
	ldx	[%fp+2039], %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2031], %g1
	add	%g1, 2, %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g1
	add	%g1, 2, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2191], %g1
	add	%g1, -2, %g1
	stx	%g1, [%fp+2191]
.L74:
	ldx	[%fp+2191], %g1
	cmp	%g1, 1
	bg	%xcc, .L75
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
	and	%g1, 0xff, %g1
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
	and	%g1, 0xff, %g1
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
	be	%icc, .L81
	 nop
	ld	[%fp+2175], %g1
	cmp	%g1, 9
	bne	%icc, .L82
	 nop
.L81:
	mov	1, %g1
	ba,pt	%xcc, .L84
	 nop
.L82:
	mov	0, %g1
.L84:
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
	bleu	%icc, .L86
	 nop
	ld	[%fp+2175], %g1
	cmp	%g1, 127
	bne	%icc, .L87
	 nop
.L86:
	mov	1, %g1
	ba,pt	%xcc, .L89
	 nop
.L87:
	mov	0, %g1
.L89:
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
	and	%g1, 0xff, %g1
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
	and	%g1, 0xff, %g1
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
	and	%g1, 0xff, %g1
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
	and	%g1, 0xff, %g1
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
	be	%icc, .L99
	 nop
	ld	[%fp+2175], %g1
	add	%g1, -9, %g1
	cmp	%g1, 4
	bgu	%icc, .L100
	 nop
.L99:
	mov	1, %g1
	ba,pt	%xcc, .L102
	 nop
.L100:
	mov	0, %g1
.L102:
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
	and	%g1, 0xff, %g1
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
	bleu	%icc, .L106
	 nop
	ld	[%fp+2175], %g1
	add	%g1, -127, %g1
	cmp	%g1, 32
	bleu	%icc, .L106
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 984, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 1
	bleu	%icc, .L106
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 7, %g1
	add	%g2, %g1, %g1
	cmp	%g1, 2
	bgu	%icc, .L107
	 nop
.L106:
	mov	1, %g1
	ba,pt	%xcc, .L109
	 nop
.L107:
	mov	0, %g1
.L109:
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
	and	%g1, 0xff, %g1
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
	bgu	%icc, .L113
	 nop
	ld	[%fp+2175], %g1
	add	%g1, 1, %g1
	and	%g1, 127, %g1
	cmp	%g1, 32
	mov	0, %g1
	movgu	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L114
	 nop
.L113:
	ld	[%fp+2175], %g2
	sethi	%hi(8192), %g1
	or	%g1, 39, %g1
	cmp	%g2, %g1
	bleu	%icc, .L115
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-9216), %g1
	or	%g1, 982, %g1
	add	%g2, %g1, %g2
	sethi	%hi(46080), %g1
	or	%g1, 981, %g1
	cmp	%g2, %g1
	bleu	%icc, .L115
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-57344), %g1
	add	%g2, %g1, %g2
	sethi	%hi(7168), %g1
	or	%g1, 1016, %g1
	cmp	%g2, %g1
	bgu	%icc, .L116
	 nop
.L115:
	mov	1, %g1
	ba,pt	%xcc, .L114
	 nop
.L116:
	ld	[%fp+2175], %g2
	sethi	%hi(-65536), %g1
	or	%g1, 4, %g1
	add	%g2, %g1, %g2
	sethi	%hi(1048576), %g1
	or	%g1, 3, %g1
	cmp	%g2, %g1
	bgu	%icc, .L117
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	and	%g2, %g1, %g2
	sethi	%hi(64512), %g1
	or	%g1, 1022, %g1
	cmp	%g2, %g1
	bne	%icc, .L118
	 nop
.L117:
	mov	0, %g1
	ba,pt	%xcc, .L114
	 nop
.L118:
	mov	1, %g1
.L114:
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
	bleu	%icc, .L120
	 nop
	ld	[%fp+2175], %g1
	or	%g1, 32, %g1
	add	%g1, -97, %g1
	cmp	%g1, 5
	bgu	%icc, .L121
	 nop
.L120:
	mov	1, %g1
	ba,pt	%xcc, .L123
	 nop
.L121:
	mov	0, %g1
.L123:
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
	fbo	%fcc0, .L127
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L128
	 nop
.L127:
	ldd	[%fp+2183], %f10
	ldd	[%fp+2183], %f8
	fcmpd	%fcc1, %f10, %f8
	fbo	%fcc1, .L129
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L128
	 nop
.L129:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc2, %f10, %f8
	fbule	%fcc2, .L134
	 nop
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fsubd	%f10, %f8, %f8
	ba,pt	%xcc, .L128
	 nop
.L134:
	fzero	%f8
.L128:
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
	fbo	%fcc3, .L136
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L137
	 nop
.L136:
	ld	[%fp+2183], %f9
	ld	[%fp+2183], %f8
	fcmps	%fcc0, %f9, %f8
	fbo	%fcc0, .L138
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L137
	 nop
.L138:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc1, %f9, %f8
	fbule	%fcc1, .L143
	 nop
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fsubs	%f9, %f8, %f8
	ba,pt	%xcc, .L137
	 nop
.L143:
	fzeros	%f8
.L137:
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
	fbo	%fcc2, .L145
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L146
	 nop
.L145:
	ldd	[%fp+2183], %f10
	ldd	[%fp+2183], %f8
	fcmpd	%fcc3, %f10, %f8
	fbo	%fcc3, .L147
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L146
	 nop
.L147:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2183], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L148
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L149
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L146
	 nop
.L149:
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L146
	 nop
.L148:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc0, %f10, %f8
	fbuge	%fcc0, .L155
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L146
	 nop
.L155:
	ldd	[%fp+2175], %f8
.L146:
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
	fbo	%fcc1, .L157
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L158
	 nop
.L157:
	ld	[%fp+2183], %f9
	ld	[%fp+2183], %f8
	fcmps	%fcc2, %f9, %f8
	fbo	%fcc2, .L159
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L158
	 nop
.L159:
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+2183], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	%icc, .L160
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L161
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L158
	 nop
.L161:
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L158
	 nop
.L160:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc3, %f9, %f8
	fbuge	%fcc3, .L167
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L158
	 nop
.L167:
	ld	[%fp+2175], %f8
.L158:
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	fmaxf, .-fmaxf
	.align 4
	.global fmaxl
	.type	fmaxl, #function
	.proc	07
fmaxl:
	save	%sp, -288, %sp
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
	bne	%xcc, .L169
	 nop
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	ba,pt	%xcc, .L170
	 nop
.L169:
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
	bne	%xcc, .L171
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L170
	 nop
.L171:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2191], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L172
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L173
	 nop
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	ba,pt	%xcc, .L170
	 nop
.L173:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L170
	 nop
.L172:
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
	brz	%g1, .L179
	 nop
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	ba,pt	%xcc, .L170
	 nop
.L179:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
.L170:
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
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
	fbo	%fcc0, .L181
	 nop
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L182
	 nop
.L181:
	ldd	[%fp+2183], %f10
	ldd	[%fp+2183], %f8
	fcmpd	%fcc1, %f10, %f8
	fbo	%fcc1, .L183
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L182
	 nop
.L183:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2183], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L184
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L185
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L182
	 nop
.L185:
	ldd	[%fp+2183], %f8
	ba,pt	%xcc, .L182
	 nop
.L184:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc2, %f10, %f8
	fbuge	%fcc2, .L191
	 nop
	ldd	[%fp+2175], %f8
	ba,pt	%xcc, .L182
	 nop
.L191:
	ldd	[%fp+2183], %f8
.L182:
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
	fbo	%fcc3, .L193
	 nop
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L194
	 nop
.L193:
	ld	[%fp+2183], %f9
	ld	[%fp+2183], %f8
	fcmps	%fcc0, %f9, %f8
	fbo	%fcc0, .L195
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L194
	 nop
.L195:
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ld	[%fp+2183], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g3, %g1
	be	%icc, .L196
	 nop
	ld	[%fp+2175], %g2
	sethi	%hi(-2147483648), %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	be	%icc, .L197
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L194
	 nop
.L197:
	ld	[%fp+2183], %f8
	ba,pt	%xcc, .L194
	 nop
.L196:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc1, %f9, %f8
	fbuge	%fcc1, .L203
	 nop
	ld	[%fp+2175], %f8
	ba,pt	%xcc, .L194
	 nop
.L203:
	ld	[%fp+2183], %f8
.L194:
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	fminf, .-fminf
	.align 4
	.global fminl
	.type	fminl, #function
	.proc	07
fminl:
	save	%sp, -288, %sp
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
	bne	%xcc, .L205
	 nop
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	ba,pt	%xcc, .L206
	 nop
.L205:
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
	bne	%xcc, .L207
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L206
	 nop
.L207:
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	mov	%g1, %g2
	ldx	[%fp+2191], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g2, %g1
	be	%icc, .L208
	 nop
	ldx	[%fp+2175], %g1
	srlx	%g1, 63, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L209
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L206
	 nop
.L209:
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
	ba,pt	%xcc, .L206
	 nop
.L208:
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
	brz	%g1, .L215
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L206
	 nop
.L215:
	ldx	[%fp+2191], %g2
	ldx	[%fp+2199], %g3
.L206:
	stx	%g2, [%fp+1935]
	stx	%g3, [%fp+1943]
	ldd	[%fp+1935], %f8
	ldd	[%fp+1943], %f10
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
	ba,pt	%xcc, .L217
	 nop
.L218:
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
.L217:
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L218
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
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2031], %g1
	brnz	%g1, .L224
	 nop
	ldx	[%fp+2039], %g1
	stx	%g0, [%g1+8]
	ldx	[%fp+2039], %g1
	ldx	[%g1+8], %g2
	ldx	[%fp+2039], %g1
	stx	%g2, [%g1]
	return	%i7+8
	 nop
.L224:
	ldx	[%fp+2031], %g1
	ldx	[%g1], %g2
	ldx	[%fp+2039], %g1
	stx	%g2, [%g1]
	ldx	[%fp+2039], %g1
	ldx	[%fp+2031], %g2
	stx	%g2, [%g1+8]
	ldx	[%fp+2031], %g1
	ldx	[%fp+2039], %g2
	stx	%g2, [%g1]
	ldx	[%fp+2039], %g1
	ldx	[%g1], %g1
	brz	%g1, .L223
	 nop
	ldx	[%fp+2039], %g1
	ldx	[%g1], %g1
	ldx	[%fp+2039], %g2
	stx	%g2, [%g1+8]
.L223:
	return	%i7+8
	 nop
	.size	insque, .-insque
	.align 4
	.global remque
	.type	remque, #function
	.proc	020
remque:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	ldx	[%g1], %g1
	brz	%g1, .L227
	 nop
	ldx	[%fp+2039], %g1
	ldx	[%g1], %g1
	ldx	[%fp+2039], %g2
	ldx	[%g2+8], %g2
	stx	%g2, [%g1+8]
.L227:
	ldx	[%fp+2039], %g1
	ldx	[%g1+8], %g1
	brz	%g1, .L229
	 nop
	ldx	[%fp+2039], %g1
	ldx	[%g1+8], %g1
	ldx	[%fp+2039], %g2
	ldx	[%g2], %g2
	stx	%g2, [%g1]
.L229:
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
	mov	%i5, %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2031]
	mov	%i5, %g5
	mov	0, %g4
	srlx	%g5, 61, %g1
	sllx	%g4, 3, %g2
	or	%g1, %g2, %g2
	sllx	%g5, 3, %g3
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2191], %g1
	ldx	[%g1], %g1
	stx	%g1, [%fp+2015]
	stx	%g0, [%fp+2039]
	ba,pt	%xcc, .L231
	 nop
.L234:
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g2
	ldx	[%fp+2207], %g1
	mov	%g2, %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L232
	 nop
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L233
	 nop
.L232:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L231:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	blu	%xcc, .L234
	 nop
	ldx	[%fp+2015], %g1
	add	%g1, 1, %g2
	ldx	[%fp+2191], %g1
	stx	%g2, [%g1]
	ldx	[%fp+2015], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2199], %o2
	ldx	[%fp+2175], %o1
	mov	%g1, %o0
	call	memcpy, 0
	 nop
	mov	%o0, %g1
.L233:
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
	mov	%i5, %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2031]
	mov	%i5, %g5
	mov	0, %g4
	srlx	%g5, 61, %g1
	sllx	%g4, 3, %g2
	or	%g1, %g2, %g2
	sllx	%g5, 3, %g3
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2191], %g1
	ldx	[%g1], %g1
	stx	%g1, [%fp+2015]
	stx	%g0, [%fp+2039]
	ba,pt	%xcc, .L236
	 nop
.L239:
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g2
	ldx	[%fp+2207], %g1
	mov	%g2, %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L237
	 nop
	ldx	[%fp+2039], %g1
	mulx	%i5, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	ba,pt	%xcc, .L238
	 nop
.L237:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L236:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	blu	%xcc, .L239
	 nop
	mov	0, %g1
.L238:
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
	ba,pt	%xcc, .L243
	 nop
.L244:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L243:
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
	bne	%icc, .L244
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	%icc, .L245
	 nop
	cmp	%g1, 45
	bne	%icc, .L247
	 nop
	mov	1, %g1
	st	%g1, [%fp+2039]
.L245:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ba,pt	%xcc, .L247
	 nop
.L248:
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
.L247:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L248
	 nop
	ld	[%fp+2039], %g1
	cmp	%g1, 0
	bne	%icc, .L249
	 nop
	ld	[%fp+2043], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L251
	 nop
.L249:
	ld	[%fp+2043], %g1
.L251:
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
	ba,pt	%xcc, .L253
	 nop
.L254:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L253:
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
	bne	%icc, .L254
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	%icc, .L255
	 nop
	cmp	%g1, 45
	bne	%icc, .L257
	 nop
	mov	1, %g1
	st	%g1, [%fp+2035]
.L255:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ba,pt	%xcc, .L257
	 nop
.L258:
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
.L257:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L258
	 nop
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L259
	 nop
	ldx	[%fp+2039], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L261
	 nop
.L259:
	ldx	[%fp+2039], %g1
.L261:
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
	ba,pt	%xcc, .L263
	 nop
.L264:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L263:
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
	bne	%icc, .L264
	 nop
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 43
	be	%icc, .L265
	 nop
	cmp	%g1, 45
	bne	%icc, .L267
	 nop
	mov	1, %g1
	st	%g1, [%fp+2035]
.L265:
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
	ba,pt	%xcc, .L267
	 nop
.L268:
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
.L267:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -48, %g1
	cmp	%g1, 9
	bleu	%icc, .L268
	 nop
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L269
	 nop
	ldx	[%fp+2039], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L271
	 nop
.L269:
	ldx	[%fp+2039], %g1
.L271:
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
	ba,pt	%xcc, .L273
	 nop
.L277:
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
	bge	%icc, .L274
	 nop
	ldx	[%fp+2191], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2191]
	ba,pt	%xcc, .L273
	 nop
.L274:
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	ble	%icc, .L275
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
	ba,pt	%xcc, .L273
	 nop
.L275:
	ldx	[%fp+2039], %g1
	ba,pt	%xcc, .L276
	 nop
.L273:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L277
	 nop
	mov	0, %g1
.L276:
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
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2191], %g1
	st	%g1, [%fp+2035]
	ba,pt	%xcc, .L279
	 nop
.L283:
	ld	[%fp+2035], %g1
	sra	%g1, 1, %g1
	sra	%g1, 0, %g2
	ldx	[%fp+2199], %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2039], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2207], %g1
	ldx	[%fp+2215], %o2
	ldx	[%fp+2023], %o1
	ldx	[%fp+2175], %o0
	call	%g1, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2019], %g1
	cmp	%g1, 0
	bne	%icc, .L280
	 nop
	ldx	[%fp+2023], %g1
	ba,pt	%xcc, .L281
	 nop
.L280:
	ld	[%fp+2019], %g1
	cmp	%g1, 0
	ble	%icc, .L282
	 nop
	ldx	[%fp+2023], %g2
	ldx	[%fp+2199], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ld	[%fp+2035], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+2035]
.L282:
	ld	[%fp+2035], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2035]
.L279:
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	bne	%icc, .L283
	 nop
	mov	0, %g1
.L281:
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
	ba,pt	%xcc, .L299
	 nop
.L301:
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
.L299:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L300
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	ld	[%fp+2183], %g2
	cmp	%g2, %g1
	bne	%icc, .L301
	 nop
.L300:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L302
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L304
	 nop
.L302:
	mov	0, %g1
.L304:
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
	ba,pt	%xcc, .L306
	 nop
.L308:
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2183]
.L306:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	%icc, .L307
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L307
	 nop
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L308
	 nop
.L307:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	%icc, .L309
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L311
	 nop
.L309:
	mov	-1, %g1
.L311:
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
	nop
.L313:
	ldx	[%fp+2183], %g2
	add	%g2, 4, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g3
	stx	%g3, [%fp+2175]
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L313
	 nop
	ldx	[%fp+2039], %g1
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
	ba,pt	%xcc, .L316
	 nop
.L317:
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
.L316:
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L317
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2039], %g1
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
	ba,pt	%xcc, .L320
	 nop
.L322:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2183]
.L320:
	ldx	[%fp+2191], %g1
	brz	%g1, .L321
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bne	%icc, .L321
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	be	%icc, .L321
	 nop
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g1, 0
	bne	%icc, .L322
	 nop
.L321:
	ldx	[%fp+2191], %g1
	brz	%g1, .L323
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	%icc, .L324
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L327
	 nop
.L324:
	mov	-1, %g1
	ba,pt	%xcc, .L327
	 nop
.L323:
	mov	0, %g1
.L327:
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
	ba,pt	%xcc, .L329
	 nop
.L331:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
.L329:
	ldx	[%fp+2191], %g1
	brz	%g1, .L330
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g1
	ld	[%fp+2183], %g2
	cmp	%g2, %g1
	bne	%icc, .L331
	 nop
.L330:
	ldx	[%fp+2191], %g1
	brz	%g1, .L332
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L334
	 nop
.L332:
	mov	0, %g1
.L334:
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
	ba,pt	%xcc, .L336
	 nop
.L338:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2183], %g1
	add	%g1, 4, %g1
	stx	%g1, [%fp+2183]
.L336:
	ldx	[%fp+2191], %g1
	brz	%g1, .L337
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	be	%icc, .L338
	 nop
.L337:
	ldx	[%fp+2191], %g1
	brz	%g1, .L339
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	bl	%icc, .L340
	 nop
	ldx	[%fp+2175], %g1
	ld	[%g1], %g2
	ldx	[%fp+2183], %g1
	ld	[%g1], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movg	%icc, 1, %g1
	and	%g1, 0xff, %g1
	ba,pt	%xcc, .L343
	 nop
.L340:
	mov	-1, %g1
	ba,pt	%xcc, .L343
	 nop
.L339:
	mov	0, %g1
.L343:
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
	ba,pt	%xcc, .L345
	 nop
.L346:
	ldx	[%fp+2183], %g2
	add	%g2, 4, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g3
	stx	%g3, [%fp+2175]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L345:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L346
	 nop
	ldx	[%fp+2039], %g1
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	bne	%xcc, .L349
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L350
	 nop
.L349:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sub	%g2, %g1, %g2
	ldx	[%fp+2191], %g1
	sllx	%g1, 2, %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L355
	 nop
	ba,pt	%xcc, .L352
	 nop
.L353:
	ldx	[%fp+2191], %g1
	sllx	%g1, 2, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g2
	ldx	[%fp+2191], %g1
	sllx	%g1, 2, %g1
	ldx	[%fp+2175], %g3
	add	%g3, %g1, %g1
	ld	[%g2], %g2
	st	%g2, [%g1]
.L352:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L353
	 nop
	ba,pt	%xcc, .L354
	 nop
.L356:
	ldx	[%fp+2183], %g2
	add	%g2, 4, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g3
	stx	%g3, [%fp+2175]
	ld	[%g2], %g2
	st	%g2, [%g1]
.L355:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L356
	 nop
.L354:
	ldx	[%fp+2039], %g1
.L350:
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
	ba,pt	%xcc, .L358
	 nop
.L359:
	ldx	[%fp+2175], %g1
	add	%g1, 4, %g2
	stx	%g2, [%fp+2175]
	ld	[%fp+2183], %g2
	st	%g2, [%g1]
.L358:
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g2
	stx	%g2, [%fp+2191]
	brnz	%g1, .L359
	 nop
	ldx	[%fp+2039], %g1
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2039], %g2
	ldx	[%fp+2031], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L362
	 nop
	ldx	[%fp+2039], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2191], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L363
	 nop
.L364:
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
.L363:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L364
	 nop
	ba,pt	%xcc, .L368
	 nop
.L362:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2031], %g1
	cmp	%g2, %g1
	be	%xcc, .L368
	 nop
	ba,pt	%xcc, .L366
	 nop
.L367:
	ldx	[%fp+2039], %g2
	add	%g2, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g3
	stx	%g3, [%fp+2031]
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L366:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L367
	 nop
.L368:
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
	ld	[%fp+2183], %g1
	mov	64, %g3
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
	ld	[%fp+2183], %g1
	mov	64, %g3
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
	lduh	[%fp+2175], %g1
	sllx	%g1, 48, %g1
	srlx	%g1, 48, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 8, %g1
	and	%g2, %g1, %g1
	srlx	%g1, 8, %g1
	mov	%g1, %g2
	ldx	[%fp+2039], %g1
	mov	%g1, %g3
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
	ld	[%fp+2175], %g1
	srl	%g1, 0, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 24, %g1
	and	%g2, %g1, %g1
	srlx	%g1, 24, %g1
	mov	%g1, %g3
	ld	[%fp+2175], %g1
	srl	%g1, 0, %g2
	ldx	[%fp+2039], %g1
	sllx	%g1, 16, %g1
	and	%g2, %g1, %g1
	srlx	%g1, 8, %g1
	or	%g3, %g1, %g2
	ldx	[%fp+2039], %g1
	sll	%g1, 8, %g3
	ld	[%fp+2175], %g1
	and	%g3, %g1, %g1
	sll	%g1, 8, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	mov	%g1, %g3
	ld	[%fp+2175], %g1
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
	ba,pt	%xcc, .L396
	 nop
.L399:
	ld	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L397
	 nop
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	ba,pt	%xcc, .L398
	 nop
.L397:
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L396:
	ld	[%fp+2043], %g1
	cmp	%g1, 31
	bleu	%icc, .L399
	 nop
	mov	0, %g1
.L398:
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
	brnz	%g1, .L401
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L402
	 nop
.L401:
	mov	1, %i5
	ba,pt	%xcc, .L403
	 nop
.L404:
	sra	%g1, 1, %g1
	sra	%g1, 0, %g1
	add	%i5, 1, %i5
.L403:
	and	%g1, 1, %g2
	cmp	%g2, 0
	be	%icc, .L404
	 nop
	mov	%i5, %g1
.L402:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	libiberty_ffs, .-libiberty_ffs
	.section	".rodata"
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
	fbl	%fcc2, .L406
	 nop
	ld	[%fp+2175], %f9
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ld	[%g1], %f8
	fcmpes	%fcc3, %f9, %f8
	fbule	%fcc3, .L411
	 nop
.L406:
	mov	1, %g1
	ba,pt	%xcc, .L410
	 nop
.L411:
	mov	0, %g1
.L410:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	gl_isinff, .-gl_isinff
	.section	".rodata"
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
	fbl	%fcc0, .L413
	 nop
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ldd	[%g1], %f8
	fcmped	%fcc1, %f10, %f8
	fbule	%fcc1, .L418
	 nop
.L413:
	mov	1, %g1
	ba,pt	%xcc, .L417
	 nop
.L418:
	mov	0, %g1
.L417:
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	gl_isinfd, .-gl_isinfd
	.section	".rodata"
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
	brnz	%g1, .L420
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
	brz	%g1, .L425
	 nop
.L420:
	mov	1, %g1
	ba,pt	%xcc, .L424
	 nop
.L425:
	mov	0, %g1
.L424:
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
	.section	".rodata"
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
	fbu	%fcc2, .L428
	 nop
	ld	[%fp+2175], %f8
	fadds	%f8, %f8, %f8
	ld	[%fp+2175], %f9
	fcmps	%fcc3, %f9, %f8
	fbe	%fcc3, .L428
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L429
	 nop
	sethi	%hi(.LC6), %g1
	or	%g1, %lo(.LC6), %g1
	ld	[%g1], %f8
	ba,pt	%xcc, .L430
	 nop
.L429:
	sethi	%hi(.LC7), %g1
	or	%g1, %lo(.LC7), %g1
	ld	[%g1], %f8
.L430:
	st	%f8, [%fp+2043]
.L433:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L431
	 nop
	ld	[%fp+2175], %f9
	ld	[%fp+2043], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp+2175]
.L431:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L435
	 nop
	ld	[%fp+2043], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp+2043]
	ba,pt	%xcc, .L433
	 nop
.L435:
	nop
.L428:
	ld	[%fp+2175], %f8
	fmovs	%f8, %f0
	return	%i7+8
	 nop
	.size	ldexpf, .-ldexpf
	.section	".rodata"
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
	fbu	%fcc0, .L437
	 nop
	ldd	[%fp+2175], %f8
	faddd	%f8, %f8, %f8
	ldd	[%fp+2175], %f10
	fcmpd	%fcc1, %f10, %f8
	fbe	%fcc1, .L437
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L438
	 nop
	sethi	%hi(.LC8), %g1
	or	%g1, %lo(.LC8), %g1
	ldd	[%g1], %f8
	ba,pt	%xcc, .L439
	 nop
.L438:
	sethi	%hi(.LC9), %g1
	or	%g1, %lo(.LC9), %g1
	ldd	[%g1], %f8
.L439:
	std	%f8, [%fp+2039]
.L442:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L440
	 nop
	ldd	[%fp+2175], %f10
	ldd	[%fp+2039], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp+2175]
.L440:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L444
	 nop
	ldd	[%fp+2039], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp+2039]
	ba,pt	%xcc, .L442
	 nop
.L444:
	nop
.L437:
	ldd	[%fp+2175], %f8
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	ldexp, .-ldexp
	.section	".rodata"
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
	save	%sp, -352, %sp
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
	be	%xcc, .L446
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
	brnz	%g1, .L446
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bge	%icc, .L447
	 nop
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %g1
	ldx	[%g1], %g2
	ldx	[%g1+8], %g3
	ba,pt	%xcc, .L448
	 nop
.L447:
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %g1
	ldx	[%g1], %g2
	ldx	[%g1+8], %g3
.L448:
	stx	%g2, [%fp+2031]
	stx	%g3, [%fp+2039]
.L451:
	ld	[%fp+2191], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L449
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
.L449:
	ld	[%fp+2191], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L453
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
	ba,pt	%xcc, .L451
	 nop
.L453:
	nop
.L446:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	stx	%g2, [%fp+1871]
	stx	%g3, [%fp+1879]
	ldd	[%fp+1871], %f8
	ldd	[%fp+1879], %f10
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
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ba,pt	%xcc, .L455
	 nop
.L456:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2039]
	ldub	[%g1], %g3
	ldx	[%fp+2031], %g1
	add	%g1, 1, %g2
	stx	%g2, [%fp+2031]
	ldub	[%g1], %g2
	xor	%g3, %g2, %g2
	stb	%g2, [%g1]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L455:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L456
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
	ba,pt	%xcc, .L459
	 nop
.L461:
	ldx	[%fp+2183], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2191], %g1
	add	%g1, -1, %g1
	stx	%g1, [%fp+2191]
.L459:
	ldx	[%fp+2191], %g1
	brz	%g1, .L460
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
	bne	%icc, .L461
	 nop
.L460:
	ldx	[%fp+2191], %g1
	brnz	%g1, .L462
	 nop
	ldx	[%fp+2039], %g1
	stb	%g0, [%g1]
.L462:
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
	ba,pt	%xcc, .L465
	 nop
.L470:
	nop
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L465:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L466
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2039], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L470
	 nop
.L466:
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
	ba,pt	%xcc, .L472
	 nop
.L476:
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L473
	 nop
.L475:
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
	bne	%icc, .L473
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L474
	 nop
.L473:
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L475
	 nop
	ldx	[%fp+2175], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2175]
.L472:
	ldx	[%fp+2175], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L476
	 nop
	mov	0, %g1
.L474:
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
.L479:
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	ld	[%fp+2183], %g3
	cmp	%g3, %g2
	bne	%icc, .L478
	 nop
	stx	%g1, [%fp+2039]
.L478:
	mov	%g1, %g2
	add	%g2, 1, %g1
	ldub	[%g2], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 0
	bne	%icc, .L479
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %o0
	call	strlen, 0
	 nop
	stx	%o0, [%fp+2031]
	ldx	[%fp+2031], %g1
	brnz	%g1, .L484
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L483
	 nop
.L486:
	ldx	[%fp+2031], %o2
	ldx	[%fp+2183], %o1
	ldx	[%fp+2039], %o0
	call	strncmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L485
	 nop
	ldx	[%fp+2039], %g1
	ba,pt	%xcc, .L483
	 nop
.L485:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L484:
	ldx	[%fp+2183], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sra	%g1, 0, %g1
	mov	%g1, %o1
	ldx	[%fp+2039], %o0
	call	strchr, 0
	 nop
	stx	%o0, [%fp+2039]
	ldx	[%fp+2039], %g1
	brnz	%g1, .L486
	 nop
	mov	0, %g1
.L483:
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
	fbuge	%fcc2, .L488
	 nop
	ldd	[%fp+2183], %f8
	fzero	%f10
	fcmped	%fcc3, %f8, %f10
	fbg	%fcc3, .L490
	 nop
.L488:
	ldd	[%fp+2175], %f8
	fzero	%f10
	fcmped	%fcc0, %f8, %f10
	fbule	%fcc0, .L491
	 nop
	ldd	[%fp+2183], %f8
	fzero	%f10
	fcmped	%fcc1, %f8, %f10
	fbuge	%fcc1, .L491
	 nop
.L490:
	ldd	[%fp+2175], %f8
	fnegd	%f8, %f8
	ba,pt	%xcc, .L494
	 nop
.L491:
	ldd	[%fp+2175], %f8
.L494:
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
	stx	%g1, [%fp+2031]
	ldx	[%fp+2199], %g1
	brnz	%g1, .L498
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L499
	 nop
.L498:
	ldx	[%fp+2183], %g2
	ldx	[%fp+2199], %g1
	cmp	%g2, %g1
	mov	0, %g1
	movlu	%xcc, 1, %g1
	and	%g1, 0xff, %g1
	brz	%g1, .L500
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L499
	 nop
.L500:
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2039]
	ba,pt	%xcc, .L501
	 nop
.L503:
	ldx	[%fp+2039], %g1
	ldub	[%g1], %g2
	ldx	[%fp+2191], %g1
	ldub	[%g1], %g1
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g2, %g1
	bne	%icc, .L502
	 nop
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g2
	ldx	[%fp+2191], %g1
	add	%g1, 1, %g3
	ldx	[%fp+2199], %g1
	add	%g1, -1, %g1
	mov	%g1, %o2
	mov	%g3, %o1
	mov	%g2, %o0
	call	memcmp, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	bne	%icc, .L502
	 nop
	ldx	[%fp+2039], %g1
	ba,pt	%xcc, .L499
	 nop
.L502:
	ldx	[%fp+2039], %g1
	add	%g1, 1, %g1
	stx	%g1, [%fp+2039]
.L501:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2031], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L503
	 nop
	mov	0, %g1
.L499:
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
	.section	".rodata"
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
	fbuge	%fcc2, .L507
	 nop
	ldd	[%fp+2175], %f8
	fnegd	%f8, %f8
	std	%f8, [%fp+2175]
	mov	1, %g1
	st	%g1, [%fp+2043]
.L507:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %g1
	ldd	[%g1], %f8
	fcmped	%fcc3, %f10, %f8
	fbul	%fcc3, .L522
	 nop
	ba,pt	%xcc, .L511
	 nop
.L512:
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC13), %g1
	or	%g1, %lo(.LC13), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%fp+2175]
.L511:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %g1
	ldd	[%g1], %f8
	fcmped	%fcc0, %f10, %f8
	fbge	%fcc0, .L512
	 nop
	ba,pt	%xcc, .L513
	 nop
.L522:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%fcc1, %f10, %f8
	fbuge	%fcc1, .L513
	 nop
	ldd	[%fp+2175], %f8
	fzero	%f10
	fcmpd	%fcc2, %f8, %f10
	fbe	%fcc2, .L513
	 nop
	ba,pt	%xcc, .L515
	 nop
.L516:
	ld	[%fp+2039], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+2039]
	ldd	[%fp+2175], %f8
	faddd	%f8, %f8, %f8
	std	%f8, [%fp+2175]
.L515:
	ldd	[%fp+2175], %f10
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %g1
	ldd	[%g1], %f8
	fcmped	%fcc3, %f10, %f8
	fbl	%fcc3, .L516
	 nop
.L513:
	ldx	[%fp+2183], %g1
	ld	[%fp+2039], %g2
	st	%g2, [%g1]
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L517
	 nop
	ldd	[%fp+2175], %f8
	fnegd	%f8, %f8
	std	%f8, [%fp+2175]
.L517:
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
	ba,pt	%xcc, .L524
	 nop
.L526:
	ldx	[%fp+2031], %g1
	and	%g1, 1, %g1
	brz	%g1, .L525
	 nop
	ldx	[%fp+2039], %g2
	ldx	[%fp+2183], %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
.L525:
	ldx	[%fp+2183], %g1
	add	%g1, %g1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2031], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2031]
.L524:
	ldx	[%fp+2031], %g1
	brnz	%g1, .L526
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
	ba,pt	%xcc, .L529
	 nop
.L531:
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2043]
.L529:
	ld	[%fp+2183], %g2
	ld	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L532
	 nop
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L532
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L531
	 nop
	ba,pt	%xcc, .L532
	 nop
.L534:
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%icc, .L533
	 nop
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2039], %g2
	ld	[%fp+2043], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2039]
.L533:
	ld	[%fp+2043], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2183], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2183]
.L532:
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	bne	%icc, .L534
	 nop
	ldx	[%fp+2191], %g1
	brz	%g1, .L535
	 nop
	ld	[%fp+2175], %g1
	ba,pt	%xcc, .L536
	 nop
.L535:
	ld	[%fp+2039], %g1
.L536:
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
	bge	%icc, .L538
	 nop
	ldub	[%fp+2175], %g1
	xnor	%g0, %g1, %g1
	stb	%g1, [%fp+2175]
.L538:
	ldub	[%fp+2175], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	%icc, .L539
	 nop
	mov	7, %g1
	ba,pt	%xcc, .L540
	 nop
.L539:
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
.L540:
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
	brgez	%g1, .L542
	 nop
	ldx	[%fp+2175], %g1
	xnor	%g0, %g1, %g1
	stx	%g1, [%fp+2175]
.L542:
	ldx	[%fp+2175], %g1
	brnz	%g1, .L543
	 nop
	mov	63, %g1
	ba,pt	%xcc, .L544
	 nop
.L543:
	ldx	[%fp+2175], %g1
	mov	%g1, %o0
	call	__clzdi2, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
.L544:
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
	ba,pt	%xcc, .L546
	 nop
.L548:
	ld	[%fp+2175], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L547
	 nop
	ld	[%fp+2043], %g2
	ld	[%fp+2183], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
.L547:
	ld	[%fp+2175], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
.L546:
	ld	[%fp+2175], %g1
	cmp	%g1, 0
	bne	%icc, .L548
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
	save	%sp, -208, %sp
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2015]
	ldx	[%fp+2023], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	blu	%xcc, .L551
	 nop
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2015], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2023], %g2
	cmp	%g2, %g1
	bleu	%xcc, .L558
	 nop
.L551:
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L553
	 nop
.L554:
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	sllx	%g1, 3, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	sllx	%g1, 3, %g1
	ldx	[%fp+2175], %g3
	add	%g3, %g1, %g1
	ldx	[%g2], %g2
	stx	%g2, [%g1]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L553:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	blu	%icc, .L554
	 nop
	ba,pt	%xcc, .L555
	 nop
.L556:
	ld	[%fp+2039], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2015], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2039], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L555:
	ld	[%fp+2191], %g2
	ld	[%fp+2039], %g1
	cmp	%g2, %g1
	bgu	%icc, .L556
	 nop
	ba,pt	%xcc, .L557
	 nop
.L559:
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2015], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L558:
	ld	[%fp+2191], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+2191]
	cmp	%g1, 0
	bne	%icc, .L559
	 nop
	nop
.L557:
	nop
	return	%i7+8
	 nop
	.size	__cmovd, .-__cmovd
	.align 4
	.global __cmovh
	.type	__cmovh, #function
	.proc	020
__cmovh:
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	mov	%i2, %g1
	st	%g1, [%fp+2191]
	ld	[%fp+2191], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2039]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	blu	%xcc, .L561
	 nop
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2031], %g2
	cmp	%g2, %g1
	bleu	%xcc, .L567
	 nop
.L561:
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L563
	 nop
.L564:
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	mov	%g1, %g2
	ldx	[%fp+2183], %g1
	add	%g1, %g2, %g2
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	add	%g1, %g1, %g1
	mov	%g1, %g3
	ldx	[%fp+2175], %g1
	add	%g1, %g3, %g1
	lduh	[%g2], %g2
	sth	%g2, [%g1]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L563:
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	cmp	%g2, %g1
	blu	%icc, .L564
	 nop
	ld	[%fp+2191], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L566
	 nop
	ld	[%fp+2191], %g1
	add	%g1, -1, %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2191], %g1
	add	%g1, -1, %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2031], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ba,pt	%xcc, .L566
	 nop
.L568:
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2031], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L567:
	ld	[%fp+2191], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+2191]
	cmp	%g1, 0
	bne	%icc, .L568
	 nop
	nop
.L566:
	nop
	return	%i7+8
	 nop
	.size	__cmovh, .-__cmovh
	.align 4
	.global __cmovw
	.type	__cmovw, #function
	.proc	020
__cmovw:
	save	%sp, -208, %sp
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
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2183], %g1
	stx	%g1, [%fp+2015]
	ldx	[%fp+2023], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	blu	%xcc, .L570
	 nop
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2015], %g2
	add	%g2, %g1, %g1
	ldx	[%fp+2023], %g2
	cmp	%g2, %g1
	bleu	%xcc, .L577
	 nop
.L570:
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L572
	 nop
.L573:
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	sllx	%g1, 2, %g1
	ldx	[%fp+2183], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2043], %g1
	srl	%g1, 0, %g1
	sllx	%g1, 2, %g1
	ldx	[%fp+2175], %g3
	add	%g3, %g1, %g1
	ld	[%g2], %g2
	st	%g2, [%g1]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L572:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	blu	%icc, .L573
	 nop
	ba,pt	%xcc, .L574
	 nop
.L575:
	ld	[%fp+2039], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2015], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2039], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L574:
	ld	[%fp+2191], %g2
	ld	[%fp+2039], %g1
	cmp	%g2, %g1
	bgu	%icc, .L575
	 nop
	ba,pt	%xcc, .L576
	 nop
.L578:
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2015], %g2
	add	%g2, %g1, %g2
	ld	[%fp+2191], %g1
	srl	%g1, 0, %g1
	ldx	[%fp+2023], %g3
	add	%g3, %g1, %g1
	ldub	[%g2], %g2
	stb	%g2, [%g1]
.L577:
	ld	[%fp+2191], %g1
	add	%g1, -1, %g2
	st	%g2, [%fp+2191]
	cmp	%g1, 0
	bne	%icc, .L578
	 nop
	nop
.L576:
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
	brlz	%g1, .L582
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	ba,pt	%xcc, .L584
	 nop
.L582:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	faddd	%f8, %f8, %f8
.L584:
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
	brlz	%g1, .L586
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	ba,pt	%xcc, .L588
	 nop
.L586:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	fadds	%f8, %f8, %f8
.L588:
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
	brlz	%g1, .L590
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	ba,pt	%xcc, .L592
	 nop
.L590:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtod	%f8, %f8
	faddd	%f8, %f8, %f8
.L592:
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
	brlz	%g1, .L594
	 nop
	stx	%g1, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	ba,pt	%xcc, .L596
	 nop
.L594:
	srlx	%g1, 1, %g2
	and	%g1, 1, %g1
	or	%g2, %g1, %g2
	stx	%g2, [%fp+2039]
	ldd	[%fp+2039], %f8
	fxtos	%f8, %f8
	fadds	%f8, %f8, %f8
.L596:
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
	ba,pt	%xcc, .L600
	 nop
.L603:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	mov	15, %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	%icc, .L605
	 nop
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L600:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L603
	 nop
	ba,pt	%xcc, .L602
	 nop
.L605:
	nop
.L602:
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
	ba,pt	%xcc, .L607
	 nop
.L610:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2043], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	%icc, .L612
	 nop
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L607:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L610
	 nop
	ba,pt	%xcc, .L609
	 nop
.L612:
	nop
.L609:
	ld	[%fp+2043], %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__ctzhi2, .-__ctzhi2
	.section	".rodata"
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
	fbul	%fcc0, .L618
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
	ba,pt	%xcc, .L616
	 nop
.L618:
	ld	[%fp+2175], %f8
	fstox	%f8, %f8
	std	%f8, [%fp+2039]
.L616:
	ldx	[%fp+2039], %g1
	mov	%g1, %i0
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
	ba,pt	%xcc, .L620
	 nop
.L622:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2043], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L621
	 nop
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L621:
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L620:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L622
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
	ba,pt	%xcc, .L625
	 nop
.L627:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	ld	[%fp+2043], %g1
	sra	%g2, %g1, %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L626
	 nop
	ld	[%fp+2039], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2039]
.L626:
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L625:
	ld	[%fp+2043], %g1
	cmp	%g1, 15
	ble	%icc, .L627
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
	ba,pt	%xcc, .L630
	 nop
.L632:
	ld	[%fp+2175], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L631
	 nop
	ld	[%fp+2043], %g2
	ld	[%fp+2183], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
.L631:
	ld	[%fp+2175], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
.L630:
	ld	[%fp+2175], %g1
	cmp	%g1, 0
	bne	%icc, .L632
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
	bne	%icc, .L637
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L636
	 nop
.L639:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L638
	 nop
	ld	[%fp+2043], %g2
	ld	[%fp+2175], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
.L638:
	ld	[%fp+2175], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2183]
.L637:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L639
	 nop
	ld	[%fp+2043], %g1
.L636:
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
	ba,pt	%xcc, .L641
	 nop
.L643:
	ld	[%fp+2183], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2043]
.L641:
	ld	[%fp+2183], %g2
	ld	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L644
	 nop
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	be	%icc, .L644
	 nop
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bge	%icc, .L643
	 nop
	ba,pt	%xcc, .L644
	 nop
.L646:
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%icc, .L645
	 nop
	ld	[%fp+2175], %g2
	ld	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2039], %g2
	ld	[%fp+2043], %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp+2039]
.L645:
	ld	[%fp+2043], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2183], %g1
	srl	%g1, 1, %g1
	st	%g1, [%fp+2183]
.L644:
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	bne	%icc, .L646
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L647
	 nop
	ld	[%fp+2175], %g1
	ba,pt	%xcc, .L648
	 nop
.L647:
	ld	[%fp+2039], %g1
.L648:
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
	fbuge	%fcc1, .L657
	 nop
	mov	-1, %g1
	ba,pt	%xcc, .L652
	 nop
.L657:
	ld	[%fp+2175], %f9
	ld	[%fp+2183], %f8
	fcmpes	%fcc2, %f9, %f8
	fbule	%fcc2, .L658
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L652
	 nop
.L658:
	mov	0, %g1
.L652:
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
	fbuge	%fcc3, .L667
	 nop
	mov	-1, %g1
	ba,pt	%xcc, .L662
	 nop
.L667:
	ldd	[%fp+2175], %f10
	ldd	[%fp+2183], %f8
	fcmped	%fcc0, %f10, %f8
	fbule	%fcc0, .L668
	 nop
	mov	1, %g1
	ba,pt	%xcc, .L662
	 nop
.L668:
	mov	0, %g1
.L662:
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
	bge	%icc, .L674
	 nop
	ld	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+2183]
	mov	1, %g1
	st	%g1, [%fp+2039]
.L674:
	stb	%g0, [%fp+2046]
	ba,pt	%xcc, .L675
	 nop
.L678:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L676
	 nop
	ld	[%fp+2035], %g2
	ld	[%fp+2175], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
.L676:
	ld	[%fp+2175], %g1
	add	%g1, %g1, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2183], %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ldub	[%fp+2046], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp+2046]
.L675:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L677
	 nop
	ldub	[%fp+2046], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 31
	bleu	%icc, .L678
	 nop
.L677:
	ld	[%fp+2039], %g1
	cmp	%g1, 0
	be	%icc, .L679
	 nop
	ld	[%fp+2035], %g1
	sub	%g0, %g1, %g1
	ba,pt	%xcc, .L681
	 nop
.L679:
	ld	[%fp+2035], %g1
.L681:
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
	brgez	%g1, .L683
	 nop
	ldx	[%fp+2175], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2175]
	ld	[%fp+2043], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
.L683:
	ldx	[%fp+2183], %g1
	brgez	%g1, .L684
	 nop
	ldx	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2183]
	ld	[%fp+2043], %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp+2043]
.L684:
	ldx	[%fp+2175], %g1
	mov	%g1, %g3
	ldx	[%fp+2183], %g1
	srl	%g1, 0, %g2
	srl	%g3, 0, %g1
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
	be	%icc, .L685
	 nop
	ldx	[%fp+2031], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2031]
.L685:
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
	brgez	%g1, .L688
	 nop
	ldx	[%fp+2175], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2175]
	mov	1, %g1
	st	%g1, [%fp+2043]
.L688:
	ldx	[%fp+2183], %g1
	brgez	%g1, .L689
	 nop
	ldx	[%fp+2183], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2183]
.L689:
	ldx	[%fp+2175], %g1
	mov	%g1, %g3
	ldx	[%fp+2183], %g1
	srl	%g1, 0, %g2
	srl	%g3, 0, %g1
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
	be	%icc, .L690
	 nop
	ldx	[%fp+2031], %g1
	sub	%g0, %g1, %g1
	stx	%g1, [%fp+2031]
.L690:
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
	ba,pt	%xcc, .L693
	 nop
.L695:
	lduh	[%fp+2183], %g1
	add	%g1, %g1, %g1
	sth	%g1, [%fp+2183]
	lduh	[%fp+2045], %g1
	add	%g1, %g1, %g1
	sth	%g1, [%fp+2045]
.L693:
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	bgeu	%icc, .L696
	 nop
	lduh	[%fp+2045], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	be	%icc, .L696
	 nop
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	sra	%g1, 16, %g1
	cmp	%g1, 0
	bge	%icc, .L695
	 nop
	ba,pt	%xcc, .L696
	 nop
.L698:
	lduh	[%fp+2175], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g2
	lduh	[%fp+2183], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g2, %g1
	blu	%icc, .L697
	 nop
	lduh	[%fp+2175], %g2
	lduh	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	sth	%g1, [%fp+2175]
	lduh	[%fp+2043], %g2
	lduh	[%fp+2045], %g1
	or	%g2, %g1, %g1
	sth	%g1, [%fp+2043]
.L697:
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
.L696:
	lduh	[%fp+2045], %g1
	sll	%g1, 16, %g1
	srl	%g1, 16, %g1
	cmp	%g1, 0
	bne	%icc, .L698
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L699
	 nop
	lduh	[%fp+2175], %g1
	ba,pt	%xcc, .L700
	 nop
.L699:
	lduh	[%fp+2043], %g1
.L700:
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
	ba,pt	%xcc, .L702
	 nop
.L704:
	ldx	[%fp+2183], %g1
	add	%g1, %g1, %g1
	stx	%g1, [%fp+2183]
	ldx	[%fp+2039], %g1
	add	%g1, %g1, %g1
	stx	%g1, [%fp+2039]
.L702:
	ldx	[%fp+2183], %g2
	ldx	[%fp+2175], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L705
	 nop
	ldx	[%fp+2039], %g1
	brz	%g1, .L705
	 nop
	ldx	[%fp+2183], %g2
	sethi	%hi(2147483648), %g1
	and	%g2, %g1, %g1
	brz	%g1, .L704
	 nop
	ba,pt	%xcc, .L705
	 nop
.L707:
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	cmp	%g2, %g1
	blu	%xcc, .L706
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g1
	sub	%g2, %g1, %g1
	stx	%g1, [%fp+2175]
	ldx	[%fp+2031], %g2
	ldx	[%fp+2039], %g1
	or	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
.L706:
	ldx	[%fp+2039], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2183], %g1
	srlx	%g1, 1, %g1
	stx	%g1, [%fp+2183]
.L705:
	ldx	[%fp+2039], %g1
	brnz	%g1, .L707
	 nop
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	be	%icc, .L708
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L709
	 nop
.L708:
	ldx	[%fp+2031], %g1
.L709:
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
	be	%icc, .L711
	 nop
	st	%g0, [%fp+2027]
	ld	[%fp+2035], %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	sll	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ba,pt	%xcc, .L712
	 nop
.L711:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L713
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L715
	 nop
.L713:
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
.L712:
	ldx	[%fp+2023], %g1
.L715:
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
	be	%icc, .L717
	 nop
	stx	%g0, [%fp+2007]
	ldx	[%fp+2023], %g2
	ld	[%fp+2191], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	sllx	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ba,pt	%xcc, .L718
	 nop
.L717:
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bne	%icc, .L719
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L721
	 nop
.L719:
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
.L718:
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
.L721:
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
	be	%icc, .L723
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
	ba,pt	%xcc, .L724
	 nop
.L723:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L725
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L727
	 nop
.L725:
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
.L724:
	ldx	[%fp+2023], %g1
.L727:
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
	be	%icc, .L729
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
	ba,pt	%xcc, .L730
	 nop
.L729:
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bne	%icc, .L731
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L733
	 nop
.L731:
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
.L730:
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
.L733:
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
	srlx	%g1, 40, %g3
	mov	255, %g1
	sllx	%g1, 8, %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	srlx	%g1, 24, %g3
	sethi	%hi(16711680), %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	srlx	%g1, 8, %g3
	sethi	%hi(4278190080), %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 8, %g3
	mov	255, %g1
	sllx	%g1, 32, %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 24, %g3
	mov	255, %g1
	sllx	%g1, 40, %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ldx	[%fp+2175], %g1
	sllx	%g1, 40, %g3
	mov	255, %g1
	sllx	%g1, 48, %g1
	and	%g3, %g1, %g1
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
	srl	%g1, 8, %g3
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g3, %g1, %g1
	or	%g2, %g1, %g2
	ld	[%fp+2175], %g1
	sll	%g1, 8, %g3
	sethi	%hi(16711680), %g1
	and	%g3, %g1, %g1
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
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	cmp	%g2, %g1
	bgu	%icc, .L739
	 nop
	mov	16, %g1
	ba,pt	%xcc, .L740
	 nop
.L739:
	mov	0, %g1
.L740:
	st	%g1, [%fp+2039]
	mov	16, %g2
	ld	[%fp+2039], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	%icc, .L741
	 nop
	mov	8, %g1
	ba,pt	%xcc, .L742
	 nop
.L741:
	mov	0, %g1
.L742:
	st	%g1, [%fp+2039]
	mov	8, %g2
	ld	[%fp+2039], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	and	%g1, 240, %g1
	cmp	%g1, 0
	bne	%icc, .L743
	 nop
	mov	4, %g1
	ba,pt	%xcc, .L744
	 nop
.L743:
	mov	0, %g1
.L744:
	st	%g1, [%fp+2039]
	mov	4, %g2
	ld	[%fp+2039], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	and	%g1, 12, %g1
	cmp	%g1, 0
	bne	%icc, .L745
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L746
	 nop
.L745:
	mov	0, %g1
.L746:
	st	%g1, [%fp+2039]
	mov	2, %g2
	ld	[%fp+2039], %g1
	sub	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	and	%g1, 2, %g1
	cmp	%g0, %g1
	subx	%g0, -1, %g1
	and	%g1, 0xff, %g1
	mov	%g1, %g3
	mov	2, %g2
	ld	[%fp+2043], %g1
	sub	%g2, %g1, %g1
	smul	%g3, %g1, %g2
	ld	[%fp+2035], %g1
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
	and	%g1, 0xff, %g1
	sub	%g0, %g1, %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2015], %g2
	ldx	[%fp+2039], %g1
	xnor	%g0, %g1, %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ldx	[%fp+2023], %g2
	ldx	[%fp+2039], %g1
	and	%g2, %g1, %g1
	or	%g3, %g1, %g1
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
	bge	%icc, .L751
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L756
	 nop
.L751:
	ld	[%fp+2039], %g2
	ld	[%fp+2031], %g1
	cmp	%g2, %g1
	ble	%icc, .L753
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L756
	 nop
.L753:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L754
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L756
	 nop
.L754:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bleu	%icc, .L755
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L756
	 nop
.L755:
	mov	1, %g1
.L756:
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
	bge	%xcc, .L760
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L765
	 nop
.L760:
	ldx	[%fp+2031], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	ble	%xcc, .L762
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L765
	 nop
.L762:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L763
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L765
	 nop
.L763:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L764
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L765
	 nop
.L764:
	mov	1, %g1
.L765:
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
	save	%sp, -192, %sp
	mov	%i0, %g1
	st	%g1, [%fp+2175]
	ld	[%fp+2175], %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g2
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%g2, %g1, %g1
	cmp	%g1, 0
	bne	%icc, .L767
	 nop
	mov	16, %g1
	ba,pt	%xcc, .L768
	 nop
.L767:
	mov	0, %g1
.L768:
	st	%g1, [%fp+2039]
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	and	%g1, 255, %g1
	cmp	%g1, 0
	bne	%icc, .L769
	 nop
	mov	8, %g1
	ba,pt	%xcc, .L770
	 nop
.L769:
	mov	0, %g1
.L770:
	st	%g1, [%fp+2039]
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	and	%g1, 15, %g1
	cmp	%g1, 0
	bne	%icc, .L771
	 nop
	mov	4, %g1
	ba,pt	%xcc, .L772
	 nop
.L771:
	mov	0, %g1
.L772:
	st	%g1, [%fp+2039]
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	and	%g1, 3, %g1
	cmp	%g1, 0
	bne	%icc, .L773
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L774
	 nop
.L773:
	mov	0, %g1
.L774:
	st	%g1, [%fp+2039]
	ld	[%fp+2043], %g2
	ld	[%fp+2039], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	and	%g1, 3, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2039], %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2043], %g1
	xnor	%g0, %g1, %g1
	and	%g1, 1, %g2
	ld	[%fp+2043], %g1
	srl	%g1, 1, %g1
	mov	2, %g3
	sub	%g3, %g1, %g1
	sub	%g0, %g2, %g2
	and	%g2, %g1, %g2
	ld	[%fp+2035], %g1
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
	and	%g1, 0xff, %g1
	sub	%g0, %g1, %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2015], %g2
	ldx	[%fp+2039], %g1
	and	%g2, %g1, %g1
	mov	%g1, %g3
	ldx	[%fp+2023], %g2
	ldx	[%fp+2039], %g1
	xnor	%g0, %g1, %g1
	and	%g2, %g1, %g1
	or	%g3, %g1, %g1
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
	brnz	%g1, .L779
	 nop
	ldx	[%fp+2031], %g1
	brnz	%g1, .L780
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L782
	 nop
.L780:
	ldx	[%fp+2031], %g1
	mov	%g1, %o0
	call	__ctzdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, 65, %g1
	ba,pt	%xcc, .L782
	 nop
.L779:
	ldx	[%fp+2039], %g1
	mov	%g1, %o0
	call	__ctzdi2, 0
	 nop
	mov	%o0, %g1
	add	%g1, 1, %g1
.L782:
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
	be	%icc, .L784
	 nop
	st	%g0, [%fp+2023]
	ld	[%fp+2031], %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ba,pt	%xcc, .L785
	 nop
.L784:
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	bne	%icc, .L786
	 nop
	ldx	[%fp+2175], %g1
	ba,pt	%xcc, .L788
	 nop
.L786:
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
.L785:
	ldx	[%fp+2023], %g1
.L788:
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
	be	%icc, .L790
	 nop
	stx	%g0, [%fp+1999]
	ldx	[%fp+2015], %g2
	ld	[%fp+2191], %g3
	ld	[%fp+2043], %g1
	sub	%g3, %g1, %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ba,pt	%xcc, .L791
	 nop
.L790:
	ld	[%fp+2191], %g1
	cmp	%g1, 0
	bne	%icc, .L792
	 nop
	ldx	[%fp+2175], %g2
	ldx	[%fp+2183], %g3
	ba,pt	%xcc, .L794
	 nop
.L792:
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
.L791:
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
.L794:
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
	st	%g1, [%fp+2027]
	ld	[%fp+2027], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2027], %g2
	ld	[%fp+2039], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g1
	smul	%g2, %g1, %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2027], %g2
	ld	[%fp+2035], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2035], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2027], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2027], %g2
	ld	[%fp+2039], %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g2
	ld	[%fp+2175], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g1
	smul	%g2, %g1, %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2027], %g2
	ld	[%fp+2035], %g3
	ld	[%fp+2039], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sll	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2027]
	ld	[%fp+2023], %g1
	mov	%g1, %g3
	ld	[%fp+2035], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g1
	add	%g3, %g1, %g1
	st	%g1, [%fp+2023]
	ld	[%fp+2023], %g1
	mov	%g1, %g4
	ld	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srl	%g2, %g1, %g2
	ld	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	srl	%g3, %g1, %g1
	smul	%g2, %g1, %g1
	add	%g4, %g1, %g1
	st	%g1, [%fp+2023]
	ldx	[%fp+2023], %g1
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
	ld	[%fp+2043], %g1
	ld	[%fp+2035], %g2
	srl	%g2, 0, %g2
	srl	%g1, 0, %g1
	mov	%g2, %o1
	mov	%g1, %o0
	call	__muldsi3, 0
	 nop
	mov	%o0, %g1
	stx	%g1, [%fp+2023]
	ld	[%fp+2023], %g1
	mov	%g1, %g3
	ld	[%fp+2039], %g1
	mov	%g1, %g2
	ld	[%fp+2035], %g1
	smul	%g2, %g1, %g2
	ld	[%fp+2043], %g1
	ld	[%fp+2031], %g4
	smul	%g1, %g4, %g1
	add	%g2, %g1, %g1
	add	%g3, %g1, %g1
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
	save	%sp, -224, %sp
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
	stx	%g1, [%fp+2007]
	ldx	[%fp+2007], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2007], %g2
	ldx	[%fp+2031], %g1
	and	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ldx	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g2
	ldx	[%fp+2183], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2007], %g2
	ldx	[%fp+2023], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sllx	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ldx	[%fp+2023], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+2007], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2007], %g2
	ldx	[%fp+2031], %g1
	and	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ldx	[%fp+2183], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g2
	ldx	[%fp+2175], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	ldx	[%fp+2023], %g2
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2007], %g2
	ldx	[%fp+2023], %g3
	ldx	[%fp+2031], %g1
	and	%g3, %g1, %g3
	ld	[%fp+2043], %g1
	sllx	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ldx	[%fp+1999], %g1
	mov	%g1, %g3
	ldx	[%fp+2023], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g1
	add	%g3, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+1999], %g1
	mov	%g1, %g4
	ldx	[%fp+2175], %g2
	ld	[%fp+2043], %g1
	srlx	%g2, %g1, %g2
	ldx	[%fp+2183], %g3
	ld	[%fp+2043], %g1
	srlx	%g3, %g1, %g1
	mulx	%g2, %g1, %g1
	add	%g4, %g1, %g1
	stx	%g1, [%fp+1999]
	ldx	[%fp+1999], %g2
	ldx	[%fp+2007], %g3
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
	ldx	[%fp+2039], %g1
	ldx	[%fp+2023], %g2
	mov	%g2, %o1
	mov	%g1, %o0
	call	__mulddi3, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	stx	%g2, [%fp+1999]
	stx	%g3, [%fp+2007]
	ldx	[%fp+1999], %g1
	mov	%g1, %g3
	ldx	[%fp+2031], %g1
	mov	%g1, %g2
	ldx	[%fp+2023], %g1
	mulx	%g2, %g1, %g2
	ldx	[%fp+2039], %g1
	ldx	[%fp+2015], %g4
	mulx	%g1, %g4, %g1
	add	%g2, %g1, %g1
	add	%g3, %g1, %g1
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
	ldx	[%fp+2175], %i4
	ldx	[%fp+2183], %i5
	mov	0, %g4
	mov	0, %g5
	sub	%g5, %i5, %g3
	cmp	%g3, %g5
	mov	0, %g1
	movgu	%xcc, 1, %g1
	sub	%g4, %i4, %g2
	sub	%g2, %g1, %g1
	mov	%g1, %g2
	mov	%g2, %i0
	mov	%g3, %i1
	return	%i7+8
	 nop
	.size	__negti2, .-__negti2
	.align 4
	.global __paritydi2
	.type	__paritydi2, #function
	.proc	04
__paritydi2:
	save	%sp, -192, %sp
	stx	%i0, [%fp+2175]
	ldx	[%fp+2175], %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2031], %g1
	mov	%g1, %g2
	ld	[%fp+2035], %g1
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 8, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 4, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
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
	ldx	[%fp+2015], %g1
	mov	%g1, %g2
	ldx	[%fp+2023], %g1
	xor	%g2, %g1, %g1
	stx	%g1, [%fp+2007]
	ld	[%fp+2007], %g1
	mov	%g1, %g2
	ld	[%fp+2011], %g1
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 8, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 4, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
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
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 8, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 4, %g1
	ld	[%fp+2043], %g2
	xor	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
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
	save	%sp, -192, %sp
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
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g3, %g1, %g1
	and	%g2, %g1, %g2
	ldx	[%fp+2039], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g4, %g1, %g1
	and	%g3, %g1, %g1
	add	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	srlx	%g1, 4, %g2
	ldx	[%fp+2039], %g1
	add	%g2, %g1, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g3
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	add	%g3, %g1, %g1
	and	%g2, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	mov	%g1, %g2
	ldx	[%fp+2039], %g1
	srlx	%g1, 32, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2035], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2035]
	ld	[%fp+2035], %g1
	srl	%g1, 8, %g2
	ld	[%fp+2035], %g1
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
	save	%sp, -192, %sp
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
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 2, %g2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g2, %g1, %g2
	ld	[%fp+2043], %g3
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	and	%g3, %g1, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 4, %g2
	ld	[%fp+2043], %g1
	add	%g2, %g1, %g2
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	and	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2043], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2043]
	ld	[%fp+2043], %g1
	srl	%g1, 8, %g2
	ld	[%fp+2043], %g1
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
	save	%sp, -208, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	ldx	[%fp+2175], %i0
	ldx	[%fp+2183], %i1
	stx	%i0, [%fp+2031]
	stx	%i1, [%fp+2039]
	ldx	[%fp+2031], %g1
	sllx	%g1, 63, %g1
	ldx	[%fp+2039], %i1
	srlx	%i1, 1, %i5
	or	%g1, %i5, %i5
	ldx	[%fp+2031], %g1
	srlx	%g1, 1, %i4
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %i1
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	add	%i1, %g1, %g1
	and	%i4, %g1, %o2
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	sllx	%g1, 32, %i1
	sethi	%hi(1431655424), %g1
	or	%g1, 341, %g1
	add	%i1, %g1, %g1
	and	%i5, %g1, %o3
	ldx	[%fp+2031], %i0
	ldx	[%fp+2039], %i1
	sub	%i1, %o3, %i5
	cmp	%i5, %i1
	mov	0, %g1
	movgu	%xcc, 1, %g1
	sub	%i0, %o2, %i4
	sub	%i4, %g1, %g1
	mov	%g1, %i4
	stx	%i4, [%fp+2031]
	stx	%i5, [%fp+2039]
	ldx	[%fp+2031], %g1
	sllx	%g1, 62, %g1
	ldx	[%fp+2039], %i5
	srlx	%i5, 2, %g5
	or	%g1, %g5, %g5
	ldx	[%fp+2031], %g1
	srlx	%g1, 2, %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %i5
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%i5, %g1, %g1
	and	%g4, %g1, %i2
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %i5
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%i5, %g1, %g1
	and	%g5, %g1, %i3
	ldx	[%fp+2031], %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g5
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g5, %g1, %g1
	and	%g4, %g1, %o4
	ldx	[%fp+2039], %g4
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	sllx	%g1, 32, %g5
	sethi	%hi(858992640), %g1
	or	%g1, 819, %g1
	add	%g5, %g1, %g1
	and	%g4, %g1, %o5
	add	%i3, %o5, %g5
	cmp	%g5, %i3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%i2, %o4, %g4
	add	%g1, %g4, %g1
	mov	%g1, %g4
	stx	%g4, [%fp+2031]
	stx	%g5, [%fp+2039]
	ldx	[%fp+2031], %g1
	sllx	%g1, 60, %g1
	ldx	[%fp+2039], %g4
	srlx	%g4, 4, %g3
	or	%g1, %g3, %g3
	ldx	[%fp+2031], %g1
	srlx	%g1, 4, %g2
	ldx	[%fp+2031], %i4
	ldx	[%fp+2039], %i5
	add	%g3, %i5, %g5
	cmp	%g5, %g3
	mov	0, %g1
	movlu	%xcc, 1, %g1
	add	%g2, %i4, %g4
	add	%g1, %g4, %g1
	mov	%g1, %g4
	mov	%g4, %g2
	mov	%g5, %g3
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g4
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	add	%g4, %g1, %g1
	and	%g2, %g1, %g1
	stx	%g1, [%fp+2031]
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	sllx	%g1, 32, %g4
	sethi	%hi(252644352), %g1
	or	%g1, 783, %g1
	add	%g4, %g1, %g1
	and	%g3, %g1, %g1
	stx	%g1, [%fp+2039]
	ldx	[%fp+2039], %g1
	ldx	[%fp+2031], %g2
	srlx	%g2, 0, %o1
	mov	0, %o0
	mov	%o1, %g2
	add	%g1, %g2, %g1
	stx	%g1, [%fp+2023]
	ldx	[%fp+2023], %g1
	mov	%g1, %g2
	ldx	[%fp+2023], %g1
	srlx	%g1, 32, %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2019], %g1
	srl	%g1, 16, %g1
	ld	[%fp+2019], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp+2019]
	ld	[%fp+2019], %g1
	srl	%g1, 8, %g2
	ld	[%fp+2019], %g1
	add	%g2, %g1, %g1
	and	%g1, 255, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	__popcountti2, .-__popcountti2
	.section	".rodata"
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
.L823:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L820
	 nop
	ldd	[%fp+2039], %f10
	ldd	[%fp+2175], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp+2039]
.L820:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L828
	 nop
	ldd	[%fp+2175], %f8
	fmuld	%f8, %f8, %f8
	std	%f8, [%fp+2175]
	ba,pt	%xcc, .L823
	 nop
.L828:
	nop
	ld	[%fp+2035], %g1
	cmp	%g1, 0
	be	%icc, .L824
	 nop
	sethi	%hi(.LC16), %g1
	or	%g1, %lo(.LC16), %g1
	ldd	[%g1], %f10
	ldd	[%fp+2039], %f8
	fdivd	%f10, %f8, %f8
	ba,pt	%xcc, .L826
	 nop
.L824:
	ldd	[%fp+2039], %f8
.L826:
	fmovd	%f8, %f0
	return	%i7+8
	 nop
	.size	__powidf2, .-__powidf2
	.section	".rodata"
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
.L833:
	ld	[%fp+2183], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	%icc, .L830
	 nop
	ld	[%fp+2043], %f9
	ld	[%fp+2175], %f8
	fmuls	%f9, %f8, %f8
	st	%f8, [%fp+2043]
.L830:
	ld	[%fp+2183], %g1
	srl	%g1, 31, %g2
	add	%g2, %g1, %g1
	sra	%g1, 1, %g1
	st	%g1, [%fp+2183]
	ld	[%fp+2183], %g1
	cmp	%g1, 0
	be	%icc, .L838
	 nop
	ld	[%fp+2175], %f8
	fmuls	%f8, %f8, %f8
	st	%f8, [%fp+2175]
	ba,pt	%xcc, .L833
	 nop
.L838:
	nop
	ld	[%fp+2039], %g1
	cmp	%g1, 0
	be	%icc, .L834
	 nop
	sethi	%hi(.LC17), %g1
	or	%g1, %lo(.LC17), %g1
	ld	[%g1], %f9
	ld	[%fp+2043], %f8
	fdivs	%f9, %f8, %f8
	ba,pt	%xcc, .L836
	 nop
.L834:
	ld	[%fp+2043], %f8
.L836:
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
	bgeu	%icc, .L840
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L845
	 nop
.L840:
	ld	[%fp+2039], %g2
	ld	[%fp+2031], %g1
	cmp	%g2, %g1
	bleu	%icc, .L842
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L845
	 nop
.L842:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bgeu	%icc, .L843
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L845
	 nop
.L843:
	ld	[%fp+2043], %g2
	ld	[%fp+2035], %g1
	cmp	%g2, %g1
	bleu	%icc, .L844
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L845
	 nop
.L844:
	mov	1, %g1
.L845:
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
	ldx	[%fp+2175], %g1
	ldx	[%fp+2183], %g2
	mov	%g2, %o1
	mov	%g1, %o0
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
	bgeu	%xcc, .L849
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L854
	 nop
.L849:
	ldx	[%fp+2031], %g2
	ldx	[%fp+2015], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L851
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L854
	 nop
.L851:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bgeu	%xcc, .L852
	 nop
	mov	0, %g1
	ba,pt	%xcc, .L854
	 nop
.L852:
	ldx	[%fp+2039], %g2
	ldx	[%fp+2023], %g1
	cmp	%g2, %g1
	bleu	%xcc, .L853
	 nop
	mov	2, %g1
	ba,pt	%xcc, .L854
	 nop
.L853:
	mov	1, %g1
.L854:
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
