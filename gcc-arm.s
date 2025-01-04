	.arch armv7
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"mini-libc.c"
	.text
	.align	1
	.p2align 2,,3
	.global	memmove
	.syntax unified
	.thumb
	.thumb_func
	.type	memmove, %function
memmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bls	.L2
	add	ip, r1, r2
	adds	r3, r0, r2
	cmp	r2, #0
	beq	.L38
	sub	r1, ip, r1
	cmp	r1, #2
	ble	.L34
	subs	r1, r1, #1
	ldrb	r2, [ip, #-1]!	@ zero_extendqisi2
.L4:
	subs	r1, r1, #1
	strb	r2, [r3, #-1]!
	ldrb	r2, [ip, #-1]!	@ zero_extendqisi2
	bne	.L4
	strb	r2, [r3, #-1]!
	bx	lr
.L2:
	beq	.L38
	cbz	r2, .L38
	subs	r3, r2, #1
	cmp	r3, #5
	push	{r4, r5, r6, r7, lr}
	add	r4, r1, #1
	bls	.L5
	subs	r5, r0, r4
	cmp	r5, #2
	bls	.L5
	bic	r5, r2, #3
	subs	r7, r5, #4
	lsrs	r3, r7, #2
	adds	r3, r3, #1
	cmp	r3, #2
	mov	lr, r1
	mov	ip, r0
	lsr	r6, r2, #2
	add	r7, r1, r5
	ble	.L35
	subs	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L6:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L6
	str	r4, [ip], #4	@ unaligned
.L36:
	cmp	r2, r5
	add	r4, r0, r5
	sub	r3, r2, r5
	beq	.L3
	ldrb	r2, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r3, #1
	strb	r2, [r0, r6, lsl #2]
	beq	.L3
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #2
	strb	r1, [r4, #1]
	beq	.L3
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	strb	r6, [r4, #2]
.L3:
	pop	{r4, r5, r6, r7, pc}
.L34:
	ldrb	r2, [ip, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r3, #-1]!
	bne	.L34
.L38:
	bx	lr
.L35:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L36
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L35
	b	.L36
.L5:
	adds	r5, r1, r2
	subs	r3, r5, r4
	add	ip, r0, #-1
	adds	r3, r3, #1
.L9:
	ldrb	r7, [r4, #-1]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r4, r4, #1
	strb	r7, [ip, #1]!
	bne	.L9
	pop	{r4, r5, r6, r7, pc}
	.size	memmove, .-memmove
	.align	1
	.p2align 2,,3
	.global	memccpy
	.syntax unified
	.thumb
	.thumb_func
	.type	memccpy, %function
memccpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r3, .L55
	push	{lr}
	uxtb	r2, r2
	subs	r1, r1, #1
	b	.L44
.L46:
	subs	r3, r3, #1
	beq	.L43
.L44:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	mov	lr, r0
	cmp	ip, r2
	strb	ip, [r0], #1
	bne	.L46
	ldr	pc, [sp], #4
.L43:
	movs	r0, #0
	ldr	pc, [sp], #4
.L55:
	movs	r0, #0
	bx	lr
	.size	memccpy, .-memccpy
	.align	1
	.p2align 2,,3
	.global	memchr
	.syntax unified
	.thumb
	.thumb_func
	.type	memchr, %function
memchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1
	cbz	r2, .L65
	mov	r3, r0
	b	.L60
.L61:
	subs	r2, r2, #1
	beq	.L65
.L60:
	mov	r0, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, r1
	bne	.L61
	bx	lr
.L65:
	movs	r0, #0
	bx	lr
	.size	memchr, .-memchr
	.align	1
	.p2align 2,,3
	.global	memcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r2, .L68
	b	.L74
.L69:
	subs	r2, r2, #1
	beq	.L74
.L68:
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	adds	r0, r0, #1
	cmp	ip, r3
	add	r1, r1, #1
	beq	.L69
	sub	r0, ip, r3
	bx	lr
.L74:
	movs	r0, #0
	bx	lr
	.size	memcmp, .-memcmp
	.align	1
	.p2align 2,,3
	.global	memcpy
	.syntax unified
	.thumb
	.thumb_func
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r2, .L78
	bl	memcpy
.L78:
	mov	r0, r4
	pop	{r4, pc}
	.size	memcpy, .-memcpy
	.align	1
	.p2align 2,,3
	.global	memrchr
	.syntax unified
	.thumb
	.thumb_func
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r2, #1
	adds	r3, r0, r2
	uxtb	r1, r1
	adds	r2, r2, #2
	b	.L84
.L86:
	mov	r0, r3
	ldrb	ip, [r0]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	ip, r1
	beq	.L83
.L84:
	subs	r2, r2, #1
	bne	.L86
	movs	r0, #0
.L83:
	bx	lr
	.size	memrchr, .-memrchr
	.align	1
	.p2align 2,,3
	.global	memset
	.syntax unified
	.thumb
	.thumb_func
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r2, .L90
	uxtb	r1, r1
	bl	memset
.L90:
	mov	r0, r4
	pop	{r4, pc}
	.size	memset, .-memset
	.align	1
	.p2align 2,,3
	.global	stpcpy
	.syntax unified
	.thumb
	.thumb_func
	.type	stpcpy, %function
stpcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r0]
	cbz	r3, .L92
	adds	r3, r0, #1
.L94:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	mov	r0, r3
	strb	r2, [r3], #1
	cmp	r2, #0
	bne	.L94
.L92:
	bx	lr
	.size	stpcpy, .-stpcpy
	.align	1
	.p2align 2,,3
	.global	strchrnul
	.syntax unified
	.thumb
	.thumb_func
	.type	strchrnul, %function
strchrnul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	uxtb	r1, r1
	cbnz	r3, .L98
	b	.L97
.L100:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cbz	r3, .L97
.L98:
	cmp	r3, r1
	bne	.L100
.L97:
	bx	lr
	.size	strchrnul, .-strchrnul
	.align	1
	.p2align 2,,3
	.global	strchr
	.syntax unified
	.thumb
	.thumb_func
	.type	strchr, %function
strchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	b	.L107
.L110:
	cbz	r3, .L109
.L107:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r1
	add	r2, r2, #1
	bne	.L110
	bx	lr
.L109:
	mov	r0, r3
	bx	lr
	.size	strchr, .-strchr
	.align	1
	.p2align 2,,3
	.global	strcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	strcmp, %function
strcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r3, r2
	bne	.L113
.L114:
	cbz	r3, .L113
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L114
.L113:
	subs	r0, r3, r2
	bx	lr
	.size	strcmp, .-strcmp
	.align	1
	.p2align 2,,3
	.global	strlen
	.syntax unified
	.thumb
	.thumb_func
	.type	strlen, %function
strlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cbz	r3, .L120
	mov	r1, r0
.L119:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L119
	subs	r0, r1, r0
	bx	lr
.L120:
	mov	r0, r3
	bx	lr
	.size	strlen, .-strlen
	.align	1
	.p2align 2,,3
	.global	strncmp
	.syntax unified
	.thumb
	.thumb_func
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r2, .L128
	push	{r4, lr}
	ldrb	r4, [r0]	@ zero_extendqisi2
	add	ip, r1, r2
	cbnz	r4, .L126
	b	.L134
.L127:
	ldrb	r4, [r0, #1]!	@ zero_extendqisi2
	cbz	r4, .L135
.L126:
	mov	lr, r1
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	subs	r2, r3, #0
	it	ne
	movne	r2, #1
	cmp	r3, r4
	it	ne
	movne	r2, #0
	cmp	ip, r1
	ite	eq
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L127
.L125:
	subs	r0, r4, r3
	pop	{r4, pc}
.L128:
	mov	r0, r2
	bx	lr
.L135:
	ldrb	r3, [lr, #1]	@ zero_extendqisi2
	subs	r0, r4, r3
	pop	{r4, pc}
.L134:
	ldrb	r3, [r1]	@ zero_extendqisi2
	b	.L125
	.size	strncmp, .-strncmp
	.align	1
	.p2align 2,,3
	.global	swab
	.syntax unified
	.thumb
	.thumb_func
	.type	swab, %function
swab:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #1
	ble	.L136
	subs	r3, r2, #2
	lsrs	r3, r3, #1
	adds	r0, r0, #2
	adds	r1, r1, #2
	adds	r3, r3, #1
.L138:
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r1, r1, #2
	add	r0, r0, #2
	strb	ip, [r1, #-4]
	strb	r2, [r1, #-3]
	bne	.L138
.L136:
	bx	lr
	.size	swab, .-swab
	.align	1
	.p2align 2,,3
	.global	isalpha
	.syntax unified
	.thumb
	.thumb_func
	.type	isalpha, %function
isalpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r0, r0, #32
	subs	r0, r0, #97
	cmp	r0, #25
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isalpha, .-isalpha
	.align	1
	.p2align 2,,3
	.global	isascii
	.syntax unified
	.thumb
	.thumb_func
	.type	isascii, %function
isascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isascii, .-isascii
	.align	1
	.p2align 2,,3
	.global	isblank
	.syntax unified
	.thumb
	.thumb_func
	.type	isblank, %function
isblank:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #9
	it	ne
	cmpne	r0, #32
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	bx	lr
	.size	isblank, .-isblank
	.align	1
	.p2align 2,,3
	.global	iscntrl
	.syntax unified
	.thumb
	.thumb_func
	.type	iscntrl, %function
iscntrl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127
	it	ne
	cmpne	r0, #31
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	bx	lr
	.size	iscntrl, .-iscntrl
	.align	1
	.p2align 2,,3
	.global	isdigit
	.syntax unified
	.thumb
	.thumb_func
	.type	isdigit, %function
isdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #48
	cmp	r0, #9
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isdigit, .-isdigit
	.align	1
	.p2align 2,,3
	.global	isgraph
	.syntax unified
	.thumb
	.thumb_func
	.type	isgraph, %function
isgraph:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #33
	cmp	r0, #93
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isgraph, .-isgraph
	.align	1
	.p2align 2,,3
	.global	islower
	.syntax unified
	.thumb
	.thumb_func
	.type	islower, %function
islower:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #97
	cmp	r0, #25
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	islower, .-islower
	.align	1
	.p2align 2,,3
	.global	isprint
	.syntax unified
	.thumb
	.thumb_func
	.type	isprint, %function
isprint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #32
	cmp	r0, #94
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isprint, .-isprint
	.align	1
	.p2align 2,,3
	.global	isspace
	.syntax unified
	.thumb
	.thumb_func
	.type	isspace, %function
isspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #9
	cmp	r0, #32
	it	ne
	cmpne	r3, #4
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	bx	lr
	.size	isspace, .-isspace
	.align	1
	.p2align 2,,3
	.global	isupper
	.syntax unified
	.thumb
	.thumb_func
	.type	isupper, %function
isupper:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #65
	cmp	r0, #25
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isupper, .-isupper
	.align	1
	.p2align 2,,3
	.global	iswcntrl
	.syntax unified
	.thumb
	.thumb_func
	.type	iswcntrl, %function
iswcntrl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #127
	cmp	r0, #31
	it	hi
	cmphi	r3, #32
	bls	.L153
	sub	r1, r0, #8192
	sub	r2, r1, #40
	cmp	r2, #1
	bls	.L153
	sub	r0, r0, #65280
	subs	r0, r0, #249
	cmp	r0, #2
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L153:
	movs	r0, #1
	bx	lr
	.size	iswcntrl, .-iswcntrl
	.align	1
	.p2align 2,,3
	.global	iswdigit
	.syntax unified
	.thumb
	.thumb_func
	.type	iswdigit, %function
iswdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #48
	cmp	r0, #9
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	iswdigit, .-iswdigit
	.align	1
	.p2align 2,,3
	.global	iswprint
	.syntax unified
	.thumb
	.thumb_func
	.type	iswprint, %function
iswprint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #254
	bls	.L161
	movw	r1, #47061
	movw	r2, #8231
	sub	r3, r0, #8192
	subs	r3, r3, #42
	cmp	r0, r2
	it	hi
	cmphi	r3, r1
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	bls	.L159
	movw	ip, #8184
	sub	r1, r0, #57344
	cmp	r1, ip
	bls	.L159
	mov	ip, #3
	sub	r2, r0, #65280
	sub	r1, r2, #252
	movt	ip, 16
	cmp	r1, ip
	bhi	.L160
	movw	r3, #65534
	bics	r3, r3, r0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	bx	lr
.L159:
	movs	r0, #1
	bx	lr
.L161:
	adds	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.L160:
	mov	r0, r3
	bx	lr
	.size	iswprint, .-iswprint
	.align	1
	.p2align 2,,3
	.global	iswxdigit
	.syntax unified
	.thumb
	.thumb_func
	.type	iswxdigit, %function
iswxdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #48
	cmp	r3, #9
	bls	.L164
	orr	r0, r0, #32
	subs	r0, r0, #97
	cmp	r0, #5
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L164:
	movs	r0, #1
	bx	lr
	.size	iswxdigit, .-iswxdigit
	.align	1
	.p2align 2,,3
	.global	toascii
	.syntax unified
	.thumb
	.thumb_func
	.type	toascii, %function
toascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, #127
	bx	lr
	.size	toascii, .-toascii
	.align	1
	.p2align 2,,3
	.global	fdim
	.syntax unified
	.thumb
	.thumb_func
	.type	fdim, %function
fdim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L166
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L170
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L173
	vsub.f64	d0, d0, d1
	bx	lr
.L173:
	vldr.64	d0, .L174
.L166:
	bx	lr
.L170:
	vmov.f64	d0, d1
	bx	lr
.L175:
	.align	3
.L174:
	.word	0
	.word	0
	.size	fdim, .-fdim
	.align	1
	.p2align 2,,3
	.global	fdimf
	.syntax unified
	.thumb
	.thumb_func
	.type	fdimf, %function
fdimf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L176
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L180
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L183
	vsub.f32	s0, s0, s1
	bx	lr
.L183:
	vldr.32	s0, .L184
.L176:
	bx	lr
.L180:
	vmov.f32	s0, s1
	bx	lr
.L185:
	.align	2
.L184:
	.word	0
	.size	fdimf, .-fdimf
	.align	1
	.p2align 2,,3
	.global	fmax
	.syntax unified
	.thumb
	.thumb_func
	.type	fmax, %function
fmax:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L189
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L186
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L188
	cmp	r0, #0
	it	ne
	vmovne.f64	d0, d1
	bx	lr
.L189:
	vmov.f64	d0, d1
.L186:
	bx	lr
.L188:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	it	mi
	vmovmi.f64	d0, d1
	bx	lr
	.size	fmax, .-fmax
	.align	1
	.p2align 2,,3
	.global	fmaxf
	.syntax unified
	.thumb
	.thumb_func
	.type	fmaxf, %function
fmaxf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L195
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L192
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L194
	cmp	r0, #0
	it	ne
	vmovne.f32	s0, s1
	bx	lr
.L195:
	vmov.f32	s0, s1
.L192:
	bx	lr
.L194:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	it	mi
	vmovmi.f32	s0, s1
	bx	lr
	.size	fmaxf, .-fmaxf
	.align	1
	.p2align 2,,3
	.global	fmaxl
	.syntax unified
	.thumb
	.thumb_func
	.type	fmaxl, %function
fmaxl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L201
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L198
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L200
	cmp	r0, #0
	it	ne
	vmovne.f64	d0, d1
	bx	lr
.L201:
	vmov.f64	d0, d1
.L198:
	bx	lr
.L200:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	it	mi
	vmovmi.f64	d0, d1
	bx	lr
	.size	fmaxl, .-fmaxl
	.align	1
	.p2align 2,,3
	.global	fmin
	.syntax unified
	.thumb
	.thumb_func
	.type	fmin, %function
fmin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L207
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L204
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L206
	cmp	r0, #0
	it	eq
	vmoveq.f64	d0, d1
	bx	lr
.L207:
	vmov.f64	d0, d1
.L204:
	bx	lr
.L206:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	it	pl
	vmovpl.f64	d0, d1
	bx	lr
	.size	fmin, .-fmin
	.align	1
	.p2align 2,,3
	.global	fminf
	.syntax unified
	.thumb
	.thumb_func
	.type	fminf, %function
fminf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L213
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L210
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L212
	cmp	r0, #0
	it	eq
	vmoveq.f32	s0, s1
	bx	lr
.L213:
	vmov.f32	s0, s1
.L210:
	bx	lr
.L212:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	it	pl
	vmovpl.f32	s0, s1
	bx	lr
	.size	fminf, .-fminf
	.align	1
	.p2align 2,,3
	.global	fminl
	.syntax unified
	.thumb
	.thumb_func
	.type	fminl, %function
fminl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L219
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L216
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L218
	cmp	r0, #0
	it	eq
	vmoveq.f64	d0, d1
	bx	lr
.L219:
	vmov.f64	d0, d1
.L216:
	bx	lr
.L218:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	it	pl
	vmovpl.f64	d0, d1
	bx	lr
	.size	fminl, .-fminl
	.align	1
	.p2align 2,,3
	.global	l64a
	.syntax unified
	.thumb
	.thumb_func
	.type	l64a, %function
l64a:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0
	cbz	r0, .L225
	movw	r1, #:lower16:.LANCHOR1
	movt	r3, #:upper16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR1
.L224:
	and	r2, r0, #63
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	ip, [r3], #1
	bne	.L224
.L223:
	movs	r1, #0
	movw	r0, #:lower16:.LANCHOR0
	strb	r1, [r3]
	movt	r0, #:upper16:.LANCHOR0
	bx	lr
.L225:
	movt	r3, #:upper16:.LANCHOR0
	b	.L223
	.size	l64a, .-l64a
	.align	1
	.p2align 2,,3
	.global	srand
	.syntax unified
	.thumb
	.thumb_func
	.type	srand, %function
srand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0
	movs	r2, #0
	movt	r3, #:upper16:.LANCHOR0
	subs	r0, r0, #1
	strd	r0, r2, [r3, #8]
	bx	lr
	.size	srand, .-srand
	.align	1
	.p2align 2,,3
	.global	rand
	.syntax unified
	.thumb
	.thumb_func
	.type	rand, %function
rand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0
	movw	r0, #62509
	movw	r1, #32557
	movt	r2, #:upper16:.LANCHOR0
	ldr	r3, [r2, #8]
	movt	r0, 22609
	mul	r0, r3, r0
	push	{r4}
	ldr	r4, [r2, #12]
	movt	r1, 19605
	mla	r0, r1, r4, r0
	umull	r3, r1, r3, r1
	adds	r4, r3, #1
	adc	r0, r0, r1
	strd	r4, r0, [r2, #8]
	lsrs	r0, r0, #1
	ldr	r4, [sp], #4
	bx	lr
	.size	rand, .-rand
	.align	1
	.p2align 2,,3
	.global	insque
	.syntax unified
	.thumb
	.thumb_func
	.type	insque, %function
insque:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L236
	ldr	r3, [r1]
	strd	r3, r1, [r0]
	str	r0, [r1]
	ldr	r1, [r0]
	cbz	r1, .L230
	str	r0, [r1, #4]
.L230:
	bx	lr
.L236:
	strd	r1, r1, [r0]
	bx	lr
	.size	insque, .-insque
	.align	1
	.p2align 2,,3
	.global	remque
	.syntax unified
	.thumb
	.thumb_func
	.type	remque, %function
remque:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cbz	r3, .L238
	ldr	r2, [r0, #4]
	str	r2, [r3, #4]
.L238:
	ldr	r0, [r0, #4]
	cbz	r0, .L237
	str	r3, [r0]
.L237:
	bx	lr
	.size	remque, .-remque
	.align	1
	.p2align 2,,3
	.global	lsearch
	.syntax unified
	.thumb
	.thumb_func
	.type	lsearch, %function
lsearch:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [r2]
	sub	sp, sp, #12
	mov	r10, r2
	mov	r7, r0
	mov	r5, r3
	ldr	r9, [sp, #48]
	str	r1, [sp, #4]
	cbz	r6, .L247
	mov	r4, r1
	mov	fp, #0
	b	.L249
.L262:
	cmp	r6, fp
	beq	.L247
.L249:
	mov	r1, r4
	mov	r0, r7
	blx	r9
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	cmp	r0, #0
	bne	.L262
.L246:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L247:
	ldr	r3, [sp, #4]
	mla	r8, r6, r5, r3
	adds	r6, r6, #1
	str	r6, [r10]
	cmp	r5, #0
	beq	.L246
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	memmove
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	lsearch, .-lsearch
	.align	1
	.p2align 2,,3
	.global	lfind
	.syntax unified
	.thumb
	.thumb_func
	.type	lfind, %function
lfind:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, [r2]
	ldr	r8, [sp, #32]
	cbz	r7, .L264
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	movs	r5, #0
	b	.L266
.L275:
	cmp	r7, r5
	beq	.L264
.L266:
	mov	r1, r4
	mov	r0, r6
	blx	r8
	mov	r10, r4
	adds	r5, r5, #1
	add	r4, r4, r9
	cmp	r0, #0
	bne	.L275
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L264:
	mov	r10, #0
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	lfind, .-lfind
	.align	1
	.p2align 2,,3
	.global	abs
	.syntax unified
	.thumb
	.thumb_func
	.type	abs, %function
abs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	lt
	rsblt	r0, r0, #0
	bx	lr
	.size	abs, .-abs
	.align	1
	.p2align 2,,3
	.global	atoi
	.syntax unified
	.thumb
	.thumb_func
	.type	atoi, %function
atoi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	it	ne
	cmpne	r2, #4
	bhi	.L278
.L279:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	it	ne
	cmpne	r2, #4
	bls	.L279
.L278:
	cmp	r3, #43
	beq	.L280
	cmp	r3, #45
	bne	.L302
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	adds	r2, r0, #1
	sub	r3, r4, #48
	cmp	r3, #9
	bhi	.L289
	movs	r4, #1
.L283:
	movs	r0, #0
.L286:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L286
	cbnz	r4, .L277
	sub	r0, ip, r1
.L277:
	pop	{r4, pc}
.L302:
	subs	r3, r3, #48
	cmp	r3, #9
	it	ls
	movls	r2, r0
	bhi	.L289
.L301:
	movs	r4, #0
	b	.L283
.L280:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	adds	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L301
.L289:
	movs	r0, #0
	pop	{r4, pc}
	.size	atoi, .-atoi
	.align	1
	.p2align 2,,3
	.global	atol
	.syntax unified
	.thumb
	.thumb_func
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	it	ne
	cmpne	r2, #4
	bhi	.L304
.L305:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	it	ne
	cmpne	r2, #4
	bls	.L305
.L304:
	cmp	r3, #43
	beq	.L306
	cmp	r3, #45
	bne	.L307
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	adds	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	it	ls
	movls	r4, #1
	bhi	.L314
.L308:
	movs	r0, #0
.L311:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L311
	cbnz	r4, .L303
	sub	r0, ip, r1
.L303:
	pop	{r4, pc}
.L307:
	subs	r3, r3, #48
	cmp	r3, #9
	it	ls
	movls	r2, r0
	bhi	.L314
.L324:
	movs	r4, #0
	b	.L308
.L306:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	adds	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L324
.L314:
	movs	r0, #0
	pop	{r4, pc}
	.size	atol, .-atol
	.align	1
	.p2align 2,,3
	.global	atoll
	.syntax unified
	.thumb
	.thumb_func
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	it	ne
	cmpne	r2, #4
	bhi	.L326
.L327:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r1, r3, #9
	cmp	r3, #32
	it	ne
	cmpne	r1, #4
	bls	.L327
.L326:
	cmp	r3, #43
	beq	.L328
	cmp	r3, #45
	bne	.L350
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	add	ip, r0, #1
	sub	lr, r5, #48
	cmp	lr, #9
	bhi	.L337
	movs	r6, #1
.L331:
	movs	r0, #0
	mov	r4, r0
.L334:
	lsls	r2, r0, #2
	adds	r3, r2, r0
	mov	r2, lr
	lsl	r7, r4, #2
	orr	r0, r7, r0, lsr #30
	adc	r1, r4, r0
	ldrb	r5, [ip, #1]!	@ zero_extendqisi2
	adds	r3, r3, r3
	adcs	r1, r1, r1
	subs	r0, r3, lr
	sbc	r4, r1, lr, asr #31
	sub	lr, r5, #48
	cmp	lr, #9
	asr	r7, r2, #31
	bls	.L334
	cbnz	r6, .L325
	subs	r0, r2, r3
	sbc	r4, r7, r1
.L325:
	mov	r1, r4
	pop	{r4, r5, r6, r7, pc}
.L350:
	sub	lr, r3, #48
	cmp	lr, #9
	it	ls
	movls	ip, r0
	bhi	.L337
.L349:
	movs	r6, #0
	b	.L331
.L328:
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	add	ip, r0, #1
	sub	lr, r4, #48
	cmp	lr, #9
	bls	.L349
.L337:
	movs	r0, #0
	mov	r4, r0
	mov	r1, r4
	pop	{r4, r5, r6, r7, pc}
	.size	atoll, .-atoll
	.align	1
	.p2align 2,,3
	.global	bsearch
	.syntax unified
	.thumb
	.thumb_func
	.type	bsearch, %function
bsearch:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, [sp, #32]
	cbz	r2, .L352
	mov	r8, r0
	mov	r6, r1
	mov	r7, r3
	mov	r4, r2
.L355:
	lsrs	r5, r4, #1
	mla	r10, r7, r5, r6
	mov	r0, r8
	mov	r1, r10
	blx	r9
	cmp	r0, #0
	add	r4, r4, #-1
	blt	.L356
	beq	.L351
	subs	r4, r4, r5
	add	r6, r10, r7
	cmp	r4, #0
	bne	.L355
.L352:
	mov	r10, #0
.L351:
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L356:
	mov	r4, r5
	cmp	r4, #0
	bne	.L355
	b	.L352
	.size	bsearch, .-bsearch
	.align	1
	.p2align 2,,3
	.global	bsearch_r
	.syntax unified
	.thumb
	.thumb_func
	.type	bsearch_r, %function
bsearch_r:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldrd	r8, r9, [sp, #40]
	mov	r5, r1
	mov	r6, r3
	mov	r4, r2
	cbz	r2, .L367
.L375:
	asr	r10, r4, #1
	mla	fp, r6, r10, r5
	mov	r2, r9
	mov	r0, r7
	mov	r1, fp
	blx	r8
	cmp	r0, #0
	add	r4, r4, #-1
	beq	.L362
	ble	.L365
	asrs	r4, r4, #1
	add	r5, fp, r6
	bne	.L375
.L367:
	mov	fp, #0
.L362:
	mov	r0, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L365:
	cmp	r10, #0
	beq	.L367
	mov	r4, r10
	b	.L375
	.size	bsearch_r, .-bsearch_r
	.align	1
	.p2align 2,,3
	.global	div
	.syntax unified
	.thumb
	.thumb_func
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r2, r0
	mov	r0, r4
	strd	r2, r1, [r4]
	pop	{r4, pc}
	.size	div, .-div
	.align	1
	.p2align 2,,3
	.global	imaxabs
	.syntax unified
	.thumb
	.thumb_func
	.type	imaxabs, %function
imaxabs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asrs	r3, r1, #31
	eor	r0, r0, r1, asr #31
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	bx	lr
	.size	imaxabs, .-imaxabs
	.align	1
	.p2align 2,,3
	.global	imaxdiv
	.syntax unified
	.thumb
	.thumb_func
	.type	imaxdiv, %function
imaxdiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r4, r0
	mov	r1, r3
	ldrd	r2, [sp, #16]
	mov	r0, r6
	bl	__aeabi_ldivmod
	strd	r0, [r4]
	strd	r2, [r4, #8]
	mov	r0, r4
	pop	{r4, r6, r7, pc}
	.size	imaxdiv, .-imaxdiv
	.align	1
	.p2align 2,,3
	.global	labs
	.syntax unified
	.thumb
	.thumb_func
	.type	labs, %function
labs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	lt
	rsblt	r0, r0, #0
	bx	lr
	.size	labs, .-labs
	.align	1
	.p2align 2,,3
	.global	ldiv
	.syntax unified
	.thumb
	.thumb_func
	.type	ldiv, %function
ldiv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r2, r0
	mov	r0, r4
	strd	r2, r1, [r4]
	pop	{r4, pc}
	.size	ldiv, .-ldiv
	.align	1
	.p2align 2,,3
	.global	llabs
	.syntax unified
	.thumb
	.thumb_func
	.type	llabs, %function
llabs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asrs	r3, r1, #31
	eor	r0, r0, r1, asr #31
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	bx	lr
	.size	llabs, .-llabs
	.align	1
	.p2align 2,,3
	.global	lldiv
	.syntax unified
	.thumb
	.thumb_func
	.type	lldiv, %function
lldiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r4, r0
	mov	r1, r3
	ldrd	r2, [sp, #16]
	mov	r0, r6
	bl	__aeabi_ldivmod
	strd	r0, [r4]
	strd	r2, [r4, #8]
	mov	r0, r4
	pop	{r4, r6, r7, pc}
	.size	lldiv, .-lldiv
	.align	1
	.p2align 2,,3
	.global	wcschr
	.syntax unified
	.thumb
	.thumb_func
	.type	wcschr, %function
wcschr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cbnz	r3, .L390
	b	.L393
.L392:
	ldr	r3, [r0, #4]!
	cbz	r3, .L393
.L390:
	cmp	r1, r3
	bne	.L392
	bx	lr
.L393:
	mov	r0, r3
	bx	lr
	.size	wcschr, .-wcschr
	.align	1
	.p2align 2,,3
	.global	wcscmp
	.syntax unified
	.thumb
	.thumb_func
	.type	wcscmp, %function
wcscmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r1]
	cmp	r3, r2
	bne	.L398
.L399:
	cbz	r3, .L398
	ldr	r3, [r0, #4]!
	ldr	r2, [r1, #4]!
	cmp	r3, r2
	beq	.L399
.L398:
	cmp	r3, r2
	bcc	.L402
	ite	hi
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L402:
	mov	r0, #-1
	bx	lr
	.size	wcscmp, .-wcscmp
	.align	1
	.p2align 2,,3
	.global	wcscpy
	.syntax unified
	.thumb
	.thumb_func
	.type	wcscpy, %function
wcscpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #4
.L404:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	bne	.L404
	bx	lr
	.size	wcscpy, .-wcscpy
	.align	1
	.p2align 2,,3
	.global	wcslen
	.syntax unified
	.thumb
	.thumb_func
	.type	wcslen, %function
wcslen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0
	ldr	r0, [r0]
	cbz	r0, .L406
	mov	r3, r1
.L408:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L408
	subs	r0, r3, r1
	asrs	r0, r0, #2
.L406:
	bx	lr
	.size	wcslen, .-wcslen
	.align	1
	.p2align 2,,3
	.global	wcsncmp
	.syntax unified
	.thumb
	.thumb_func
	.type	wcsncmp, %function
wcsncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L419
	push	{r4, r5}
	b	.L415
.L416:
	subs	r2, r2, #1
	beq	.L422
.L415:
	ldr	r3, [r1]
	mov	ip, r0
	ldr	r4, [r0], #4
	adds	r1, r1, #4
	subs	r5, r3, r4
	clz	r5, r5
	cmp	r4, #0
	lsr	r5, r5, #5
	it	eq
	moveq	r5, #0
	cmp	r5, #0
	bne	.L416
	ldr	r2, [ip]
	cmp	r2, r3
	bcs	.L418
	pop	{r4, r5}
	mov	r0, #-1
	bx	lr
.L418:
	it	hi
	movhi	r0, #1
	pop	{r4, r5}
	it	ls
	movls	r0, #0
	bx	lr
.L422:
	movs	r0, #0
	pop	{r4, r5}
	bx	lr
.L419:
	mov	r0, r2
	bx	lr
	.size	wcsncmp, .-wcsncmp
	.align	1
	.p2align 2,,3
	.global	wmemchr
	.syntax unified
	.thumb
	.thumb_func
	.type	wmemchr, %function
wmemchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L433
	mov	r3, r0
	push	{r4}
	b	.L431
.L432:
	subs	r2, r2, #1
	beq	.L436
.L431:
	mov	r0, r3
	ldr	r4, [r3], #4
	cmp	r4, r1
	bne	.L432
	ldr	r4, [sp], #4
	bx	lr
.L436:
	movs	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L433:
	mov	r0, r2
	bx	lr
	.size	wmemchr, .-wmemchr
	.align	1
	.p2align 2,,3
	.global	wmemcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L447
	push	{r4}
	b	.L443
.L444:
	subs	r2, r2, #1
	beq	.L450
.L443:
	ldr	r4, [r0]
	ldr	r3, [r1]
	adds	r0, r0, #4
	cmp	r4, r3
	add	r1, r1, #4
	beq	.L444
	bcs	.L446
	mov	r0, #-1
	ldr	r4, [sp], #4
	bx	lr
.L446:
	ite	hi
	movhi	r0, #1
	movls	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L450:
	movs	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L447:
	mov	r0, r2
	bx	lr
	.size	wmemcmp, .-wmemcmp
	.align	1
	.p2align 2,,3
	.global	wmemcpy
	.syntax unified
	.thumb
	.thumb_func
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r2, .L458
	lsls	r2, r2, #2
	bl	memcpy
.L458:
	mov	r0, r4
	pop	{r4, pc}
	.size	wmemcpy, .-wmemcpy
	.align	1
	.p2align 2,,3
	.global	wmemmove
	.syntax unified
	.thumb
	.thumb_func
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	beq	.L492
	push	{r4, r5, lr}
	subs	r4, r0, r1
	cmp	r4, r2, lsl #2
	mov	ip, r0
	mov	r3, r1
	lsl	lr, r2, #2
	bcc	.L465
	cbz	r2, .L477
	subs	r4, r2, #1
	cmp	r4, #6
	add	r5, r1, #4
	bls	.L469
	cmp	r0, r5
	beq	.L469
	lsr	lr, r2, #1
.L470:
	add	ip, ip, #8
	ldrd	r5, r4, [r3]
	subs	lr, lr, #1
	strd	r5, r4, [ip, #-8]
	add	r3, r3, #8
	bne	.L470
	lsls	r3, r2, #31
	bpl	.L477
	bic	r2, r2, #1
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [r0, r2, lsl #2]
.L477:
	pop	{r4, r5, pc}
.L465:
	cmp	r2, #0
	beq	.L477
	sub	r5, lr, #4
	lsrs	r3, r5, #2
	adds	r3, r3, #1
	cmp	r3, #2
	add	r1, r1, lr
	add	r2, r0, lr
	ble	.L490
	subs	r3, r3, #1
	ldr	r4, [r1, #-4]!
.L468:
	subs	r3, r3, #1
	str	r4, [r2, #-4]!
	ldr	r4, [r1, #-4]!
	bne	.L468
	str	r4, [r2, #-4]!
	pop	{r4, r5, pc}
.L490:
	ldr	r4, [r1, #-4]!
	subs	r3, r3, #1
	str	r4, [r2, #-4]!
	beq	.L477
	ldr	r4, [r1, #-4]!
	subs	r3, r3, #1
	str	r4, [r2, #-4]!
	bne	.L490
	b	.L477
.L492:
	bx	lr
.L469:
	sub	ip, r0, #4
	adds	r3, r4, #1
.L473:
	ldr	r4, [r5, #-4]
	subs	r3, r3, #1
	add	r5, r5, #4
	str	r4, [ip, #4]!
	bne	.L473
	pop	{r4, r5, pc}
	.size	wmemmove, .-wmemmove
	.align	1
	.p2align 2,,3
	.global	wmemset
	.syntax unified
	.thumb
	.thumb_func
	.type	wmemset, %function
wmemset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L496
	cmp	r2, #1
	beq	.L500
	mov	r3, r0
	lsr	ip, r2, #1
.L498:
	subs	ip, ip, #1
	strd	r1, r1, [r3]
	add	r3, r3, #8
	bne	.L498
	lsls	r3, r2, #31
	bpl	.L496
	bic	r2, r2, #1
	add	r2, r0, r2, lsl #2
.L497:
	str	r1, [r2]
.L496:
	bx	lr
.L500:
	mov	r2, r0
	b	.L497
	.size	wmemset, .-wmemset
	.align	1
	.p2align 2,,3
	.global	bcopy
	.syntax unified
	.thumb
	.thumb_func
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bcs	.L509
	adds	r3, r0, r2
	add	r1, r1, r2
	cmp	r2, #0
	beq	.L545
	subs	r0, r3, r0
	cmp	r0, #2
	ble	.L541
	subs	r0, r0, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L511:
	subs	r0, r0, #1
	strb	r2, [r1, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L511
	strb	r2, [r1, #-1]!
	bx	lr
.L509:
	beq	.L545
	cbz	r2, .L545
	subs	r3, r2, #1
	cmp	r3, #5
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #1
	bls	.L512
	subs	r5, r1, r4
	cmp	r5, #2
	bls	.L512
	bic	r5, r2, #3
	subs	r7, r5, #4
	lsrs	r3, r7, #2
	adds	r3, r3, #1
	cmp	r3, #2
	mov	lr, r0
	mov	ip, r1
	lsr	r6, r2, #2
	add	r7, r0, r5
	ble	.L542
	subs	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L513:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L513
	str	r4, [ip], #4	@ unaligned
.L543:
	cmp	r2, r5
	add	r4, r1, r5
	sub	r3, r2, r5
	beq	.L508
	ldrb	r2, [r0, r6, lsl #2]	@ zero_extendqisi2
	cmp	r3, #1
	strb	r2, [r1, r6, lsl #2]
	beq	.L508
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #2
	strb	r0, [r4, #1]
	beq	.L508
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	strb	r1, [r4, #2]
.L508:
	pop	{r4, r5, r6, r7, pc}
.L541:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r0, r0, #1
	strb	r2, [r1, #-1]!
	bne	.L541
.L545:
	bx	lr
.L542:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L543
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L542
	b	.L543
.L512:
	adds	r6, r0, r2
	subs	r7, r6, r4
	add	ip, r1, #-1
	adds	r7, r7, #1
.L516:
	ldrb	r5, [r4, #-1]	@ zero_extendqisi2
	subs	r7, r7, #1
	add	r4, r4, #1
	strb	r5, [ip, #1]!
	bne	.L516
	pop	{r4, r5, r6, r7, pc}
	.size	bcopy, .-bcopy
	.align	1
	.p2align 2,,3
	.global	rotl64
	.syntax unified
	.thumb
	.thumb_func
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	rsb	r3, r2, #32
	sub	r4, r2, #32
	lsr	lr, r0, r3
	lsl	ip, r1, r2
	lsl	r4, r0, r4
	rsbs	r3, r2, #0
	and	r3, r3, #63
	orr	r4, ip, r4
	orr	r4, r4, lr
	rsb	lr, r3, #32
	lsl	ip, r1, lr
	lsl	r2, r0, r2
	sub	lr, r3, #32
	lsrs	r0, r0, r3
	lsr	lr, r1, lr
	orr	r0, r0, ip
	lsrs	r1, r1, r3
	orr	r0, r0, lr
	orrs	r1, r1, r4
	orrs	r0, r0, r2
	pop	{r4, pc}
	.size	rotl64, .-rotl64
	.align	1
	.p2align 2,,3
	.global	rotr64
	.syntax unified
	.thumb
	.thumb_func
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	r3, r2, #32
	rsb	r4, r2, #32
	lsr	lr, r1, r3
	lsr	ip, r0, r2
	lsl	r4, r1, r4
	rsbs	r3, r2, #0
	and	r3, r3, #63
	orr	r4, ip, r4
	orr	r4, r4, lr
	sub	lr, r3, #32
	lsl	ip, r0, lr
	lsr	r2, r1, r2
	rsb	lr, r3, #32
	lsls	r1, r1, r3
	lsr	lr, r0, lr
	orr	r1, r1, ip
	lsls	r0, r0, r3
	orr	r1, r1, lr
	orrs	r0, r0, r4
	orrs	r1, r1, r2
	pop	{r4, pc}
	.size	rotr64, .-rotr64
	.align	1
	.p2align 2,,3
	.global	rotl32
	.syntax unified
	.thumb
	.thumb_func
	.type	rotl32, %function
rotl32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, #32
	rors	r0, r0, r1
	bx	lr
	.size	rotl32, .-rotl32
	.align	1
	.p2align 2,,3
	.global	rotr32
	.syntax unified
	.thumb
	.thumb_func
	.type	rotr32, %function
rotr32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rors	r0, r0, r1
	bx	lr
	.size	rotr32, .-rotr32
	.align	1
	.p2align 2,,3
	.global	rotl_sz
	.syntax unified
	.thumb
	.thumb_func
	.type	rotl_sz, %function
rotl_sz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, #32
	rors	r0, r0, r1
	bx	lr
	.size	rotl_sz, .-rotl_sz
	.align	1
	.p2align 2,,3
	.global	rotr_sz
	.syntax unified
	.thumb
	.thumb_func
	.type	rotr_sz, %function
rotr_sz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rors	r0, r0, r1
	bx	lr
	.size	rotr_sz, .-rotr_sz
	.align	1
	.p2align 2,,3
	.global	rotl16
	.syntax unified
	.thumb
	.thumb_func
	.type	rotl16, %function
rotl16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #15
	rsbs	r3, r1, #0
	and	r2, r3, #15
	lsl	r1, r0, r1
	lsrs	r0, r0, r2
	orrs	r0, r0, r1
	uxth	r0, r0
	bx	lr
	.size	rotl16, .-rotl16
	.align	1
	.p2align 2,,3
	.global	rotr16
	.syntax unified
	.thumb
	.thumb_func
	.type	rotr16, %function
rotr16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #15
	rsbs	r3, r1, #0
	and	r2, r3, #15
	lsr	r1, r0, r1
	lsls	r0, r0, r2
	orrs	r0, r0, r1
	uxth	r0, r0
	bx	lr
	.size	rotr16, .-rotr16
	.align	1
	.p2align 2,,3
	.global	rotl8
	.syntax unified
	.thumb
	.thumb_func
	.type	rotl8, %function
rotl8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	rsbs	r3, r1, #0
	and	r2, r3, #7
	lsl	r1, r0, r1
	lsrs	r0, r0, r2
	orrs	r0, r0, r1
	uxtb	r0, r0
	bx	lr
	.size	rotl8, .-rotl8
	.align	1
	.p2align 2,,3
	.global	rotr8
	.syntax unified
	.thumb
	.thumb_func
	.type	rotr8, %function
rotr8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	rsbs	r3, r1, #0
	and	r2, r3, #7
	lsr	r1, r0, r1
	lsls	r0, r0, r2
	orrs	r0, r0, r1
	uxtb	r0, r0
	bx	lr
	.size	rotr8, .-rotr8
	.align	1
	.p2align 2,,3
	.global	bswap_16
	.syntax unified
	.thumb
	.thumb_func
	.type	bswap_16, %function
bswap_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rev16	r0, r0
	uxth	r0, r0
	bx	lr
	.size	bswap_16, .-bswap_16
	.align	1
	.p2align 2,,3
	.global	bswap_32
	.syntax unified
	.thumb
	.thumb_func
	.type	bswap_32, %function
bswap_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rev	r0, r0
	bx	lr
	.size	bswap_32, .-bswap_32
	.align	1
	.p2align 2,,3
	.global	bswap_64
	.syntax unified
	.thumb
	.thumb_func
	.type	bswap_64, %function
bswap_64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r1
	rev	r1, r0
	rev	r0, r3
	bx	lr
	.size	bswap_64, .-bswap_64
	.align	1
	.p2align 2,,3
	.global	ffs
	.syntax unified
	.thumb
	.thumb_func
	.type	ffs, %function
ffs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #0
	movs	r1, #32
	b	.L566
.L564:
	subs	r1, r1, #1
	beq	.L568
.L566:
	lsr	r3, r0, r2
	ands	ip, r3, #1
	add	r2, r2, #1
	beq	.L564
	mov	r0, r2
	bx	lr
.L568:
	mov	r0, ip
	bx	lr
	.size	ffs, .-ffs
	.align	1
	.p2align 2,,3
	.global	libiberty_ffs
	.syntax unified
	.thumb
	.thumb_func
	.type	libiberty_ffs, %function
libiberty_ffs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L569
	ands	r0, r0, #1
	bne	.L569
	movs	r0, #1
.L571:
	asrs	r3, r3, #1
	lsls	r2, r3, #31
	add	r0, r0, #1
	bpl	.L571
	bx	lr
.L569:
	bx	lr
	.size	libiberty_ffs, .-libiberty_ffs
	.align	1
	.p2align 2,,3
	.global	gl_isinff
	.syntax unified
	.thumb
	.thumb_func
	.type	gl_isinff, %function
gl_isinff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L578
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L577
	vldr.32	s1, .L578+4
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L577:
	movs	r0, #1
	bx	lr
.L579:
	.align	2
.L578:
	.word	-8388609
	.word	2139095039
	.size	gl_isinff, .-gl_isinff
	.align	1
	.p2align 2,,3
	.global	gl_isinfd
	.syntax unified
	.thumb
	.thumb_func
	.type	gl_isinfd, %function
gl_isinfd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L583
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L582
	vldr.64	d1, .L583+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L582:
	movs	r0, #1
	bx	lr
.L584:
	.align	3
.L583:
	.word	-1
	.word	-1048577
	.word	-1
	.word	2146435071
	.size	gl_isinfd, .-gl_isinfd
	.align	1
	.p2align 2,,3
	.global	gl_isinfl
	.syntax unified
	.thumb
	.thumb_func
	.type	gl_isinfl, %function
gl_isinfl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L588
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L587
	vldr.64	d1, .L588+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L587:
	movs	r0, #1
	bx	lr
.L589:
	.align	3
.L588:
	.word	-1
	.word	-1048577
	.word	-1
	.word	2146435071
	.size	gl_isinfl, .-gl_isinfl
	.align	1
	.p2align 2,,3
	.global	_Qp_itoq
	.syntax unified
	.thumb
	.thumb_func
	.type	_Qp_itoq, %function
_Qp_itoq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s14, r1	@ int
	vcvt.f64.s32	d0, s14
	vstr.64	d0, [r0]
	bx	lr
	.size	_Qp_itoq, .-_Qp_itoq
	.align	1
	.p2align 2,,3
	.global	ldexpf
	.syntax unified
	.thumb
	.thumb_func
	.type	ldexpf, %function
ldexpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L592
	vadd.f32	s15, s0, s0
	vcmp.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	beq	.L592
	vmov.f32	s1, #2.0e+0
	vmov.f32	s14, #5.0e-1
	cmp	r0, #0
	it	lt
	vmovlt.f32	s1, s14
	lsls	r3, r0, #31
	bpl	.L594
.L595:
	vmul.f32	s0, s0, s1
.L594:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	beq	.L592
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L595
.L604:
	asrs	r0, r3, #1
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L595
	b	.L604
.L592:
	bx	lr
	.size	ldexpf, .-ldexpf
	.align	1
	.p2align 2,,3
	.global	ldexp
	.syntax unified
	.thumb
	.thumb_func
	.type	ldexp, %function
ldexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L606
	vadd.f64	d7, d0, d0
	vcmp.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	beq	.L606
	vmov.f64	d1, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	it	lt
	vmovlt.f64	d1, d6
	lsls	r3, r0, #31
	bpl	.L608
.L609:
	vmul.f64	d0, d0, d1
.L608:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	beq	.L606
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L609
.L618:
	asrs	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L609
	b	.L618
.L606:
	bx	lr
	.size	ldexp, .-ldexp
	.align	1
	.p2align 2,,3
	.global	ldexpl
	.syntax unified
	.thumb
	.thumb_func
	.type	ldexpl, %function
ldexpl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L620
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L620
	vmov.f64	d1, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	it	lt
	vmovlt.f64	d1, d6
	lsls	r3, r0, #31
	bpl	.L622
.L623:
	vmul.f64	d0, d0, d1
.L622:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	beq	.L620
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L623
.L632:
	asrs	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L623
	b	.L632
.L620:
	bx	lr
	.size	ldexpl, .-ldexpl
	.align	1
	.p2align 2,,3
	.global	memxor
	.syntax unified
	.thumb
	.thumb_func
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r2, .L650
	subs	r3, r2, #1
	cmp	r3, #2
	push	{r4, r5, r6, lr}
	bls	.L638
	mov	lr, r0
	bic	r5, r2, #3
	subs	r4, r5, #4
	lsr	ip, r4, #2
	add	ip, ip, #1
	adds	r6, r1, r5
.L636:
	ldr	r3, [lr]	@ unaligned
	ldr	r4, [r1], #4	@ unaligned
	subs	ip, ip, #1
	eor	r3, r3, r4
	str	r3, [lr], #4	@ unaligned
	bne	.L636
	cmp	r2, r5
	beq	.L634
	mov	r1, r6
	subs	r2, r2, r5
	adds	r6, r0, r5
.L635:
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	cmp	r2, #1
	eor	r3, r3, r5
	strb	r3, [r6]
	beq	.L634
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	cmp	r2, #2
	eor	r4, r4, r3
	it	ne
	ldrbne	r2, [r1, #2]	@ zero_extendqisi2
	strb	r4, [r6, #1]
	ittt	ne
	ldrbne	r4, [r6, #2]	@ zero_extendqisi2
	eorne	r2, r2, r4
	strbne	r2, [r6, #2]
.L634:
	pop	{r4, r5, r6, pc}
.L650:
	bx	lr
.L638:
	mov	r6, r0
	b	.L635
	.size	memxor, .-memxor
	.align	1
	.p2align 2,,3
	.global	strncat
	.syntax unified
	.thumb
	.thumb_func
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cbz	r3, .L660
	mov	r3, r0
	push	{r4}
.L655:
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L655
	cbz	r2, .L656
	add	ip, r1, #-1
	b	.L657
.L658:
	subs	r2, r2, #1
	beq	.L656
.L657:
	ldrb	r1, [ip, #1]!	@ zero_extendqisi2
	strb	r1, [r3], #1
	cmp	r1, #0
	bne	.L658
	ldr	r4, [sp], #4
	bx	lr
.L656:
	movs	r2, #0
	strb	r2, [r3]
	ldr	r4, [sp], #4
	bx	lr
.L660:
	mov	r3, r0
	cbz	r2, .L669
	add	ip, r1, #-1
	b	.L670
.L671:
	subs	r2, r2, #1
	beq	.L669
.L670:
	ldrb	r1, [ip, #1]!	@ zero_extendqisi2
	strb	r1, [r3], #1
	cmp	r1, #0
	bne	.L671
	bx	lr
.L669:
	movs	r2, #0
	strb	r2, [r3]
	bx	lr
	.size	strncat, .-strncat
	.align	1
	.p2align 2,,3
	.global	strnlen
	.syntax unified
	.thumb
	.thumb_func
	.type	strnlen, %function
strnlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r1, .L680
	movs	r0, #0
	add	ip, r3, #-1
.L678:
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	cbnz	r2, .L684
.L676:
	bx	lr
.L684:
	subs	r1, r1, #1
	add	r0, r0, #1
	bne	.L678
	b	.L676
.L680:
	mov	r0, r1
	b	.L676
	.size	strnlen, .-strnlen
	.align	1
	.p2align 2,,3
	.global	strpbrk
	.syntax unified
	.thumb
	.thumb_func
	.type	strpbrk, %function
strpbrk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldrb	r4, [r0]	@ zero_extendqisi2
	cbz	r4, .L690
	subs	r1, r1, #1
.L686:
	mov	r2, r1
	b	.L689
.L688:
	cmp	r3, r4
	beq	.L687
.L689:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L688
	ldrb	r4, [r0, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L686
.L690:
	mov	r0, r4
.L687:
	ldr	r4, [sp], #4
	bx	lr
	.size	strpbrk, .-strpbrk
	.align	1
	.p2align 2,,3
	.global	strrchr
	.syntax unified
	.thumb
	.thumb_func
	.type	strrchr, %function
strrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	movs	r0, #0
.L695:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, r1
	it	eq
	moveq	r0, r3
	adds	r3, r3, #1
	cmp	r2, #0
	bne	.L695
	bx	lr
	.size	strrchr, .-strrchr
	.align	1
	.p2align 2,,3
	.global	strstr
	.syntax unified
	.thumb
	.thumb_func
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrb	r4, [r1]	@ zero_extendqisi2
	mov	r2, r0
	cbz	r4, .L708
	mov	r6, r1
	mov	r3, r1
.L699:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L699
	subs	r0, r3, r6
	beq	.L708
	subs	r5, r6, #1
	add	r5, r5, r0
	b	.L706
.L713:
	cbz	r3, .L712
.L706:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r4
	add	r2, r2, #1
	bne	.L713
	mov	lr, r6
	mov	ip, r4
	mov	r1, r0
	b	.L701
.L704:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cbz	r3, .L714
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
.L701:
	subs	r2, ip, #0
	it	ne
	movne	r2, #1
	cmp	r3, ip
	it	ne
	movne	r2, #0
	cmp	r5, lr
	ite	eq
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L704
.L703:
	cmp	r3, ip
	beq	.L697
	adds	r2, r0, #1
	b	.L706
.L712:
	mov	r0, r3
.L697:
	pop	{r4, r5, r6, pc}
.L714:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	b	.L703
.L708:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
	.size	strstr, .-strstr
	.align	1
	.p2align 2,,3
	.global	copysign
	.syntax unified
	.thumb
	.thumb_func
	.type	copysign, %function
copysign:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L725
	ble	.L719
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L718
.L719:
	bx	lr
.L725:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L719
.L718:
	vneg.f64	d0, d0
	bx	lr
	.size	copysign, .-copysign
	.align	1
	.p2align 2,,3
	.global	memmem
	.syntax unified
	.thumb
	.thumb_func
	.type	memmem, %function
memmem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r3, .L749
	cmp	r1, r3
	bcc	.L734
	subs	r1, r1, r3
	push	{r4, r5, r6, r7, r8, lr}
	adds	r7, r0, r1
	bcs	.L737
	ldrb	r8, [r2]	@ zero_extendqisi2
	b	.L732
.L728:
	cmp	r7, r0
	bcc	.L737
.L732:
	mov	ip, r0
	ldrb	r4, [ip], #1	@ zero_extendqisi2
	cmp	r4, r8
	it	ne
	movne	r0, ip
	bne	.L728
	cmp	r3, #1
	beq	.L726
.L731:
	mov	r4, r2
	add	lr, ip, #-1
	subs	r1, r3, #1
	b	.L729
.L730:
	subs	r1, r1, #1
	beq	.L726
.L729:
	ldrb	r6, [lr, #1]!	@ zero_extendqisi2
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cmp	r6, r5
	beq	.L730
	cmp	r7, ip
	bcc	.L737
	mov	r0, ip
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	cmp	r8, r1
	bne	.L728
	mov	lr, ip
	mov	ip, r0
	mov	r0, lr
	b	.L731
.L737:
	movs	r0, #0
.L726:
	pop	{r4, r5, r6, r7, r8, pc}
.L749:
	bx	lr
.L734:
	movs	r0, #0
	bx	lr
	.size	memmem, .-memmem
	.align	1
	.p2align 2,,3
	.global	mempcpy
	.syntax unified
	.thumb
	.thumb_func
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	mov	r4, r2
	cbz	r2, .L753
	bl	memmove
.L753:
	adds	r0, r5, r4
	pop	{r3, r4, r5, pc}
	.size	mempcpy, .-mempcpy
	.align	1
	.p2align 2,,3
	.global	frexp
	.syntax unified
	.thumb
	.thumb_func
	.type	frexp, %function
frexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L780
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	it	ge
	movge	r2, #0
	blt	.L781
.L761:
	movs	r1, #0
	vmov.f64	d5, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L767:
	vmul.f64	d0, d0, d5
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r1, r1, #1
	bge	.L767
	str	r1, [r0]
	cbz	r2, .L758
.L783:
	vneg.f64	d0, d0
.L758:
	bx	lr
.L781:
	vmov.f64	d1, #5.0e-1
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L764
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L773
.L764:
	movs	r3, #0
	str	r3, [r0]
	bx	lr
.L780:
	vmov.f64	d2, #-1.0e+0
	vcmpe.f64	d0, d2
	vmrs	APSR_nzcv, FPSCR
	vneg.f64	d6, d0
	bhi	.L782
	vmov.f64	d0, d6
	movs	r2, #1
	b	.L761
.L782:
	vmov.f64	d3, #-5.0e-1
	vcmpe.f64	d0, d3
	vmrs	APSR_nzcv, FPSCR
	ble	.L764
	movs	r2, #1
.L762:
	vmov.f64	d0, d6
	movs	r1, #0
	vmov.f64	d4, #5.0e-1
.L769:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d4
	vmrs	APSR_nzcv, FPSCR
	add	r1, r1, #-1
	bmi	.L769
	str	r1, [r0]
	cmp	r2, #0
	bne	.L783
	b	.L758
.L773:
	vmov.f64	d6, d0
	movs	r2, #0
	b	.L762
	.size	frexp, .-frexp
	.align	1
	.p2align 2,,3
	.global	__muldi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, r1
	orrs	r1, r5, r0
	beq	.L787
	mov	ip, r0
	movs	r0, #0
	mov	r1, r0
.L786:
	sbfx	lr, ip, #0, #1
	mov	r4, lr
	and	lr, lr, r2
	ands	r4, r4, r3
	adds	r0, lr, r0
	lsr	ip, ip, #1
	adc	r1, r1, r4
	orr	ip, ip, r5, lsl #31
	adds	r2, r2, r2
	lsr	r5, r5, #1
	adcs	r3, r3, r3
	orrs	r4, ip, r5
	bne	.L786
	pop	{r4, r5, pc}
.L787:
	movs	r0, #0
	mov	r1, r0
	pop	{r4, r5, pc}
	.size	__muldi3, .-__muldi3
	.align	1
	.p2align 2,,3
	.global	udivmodsi4
	.syntax unified
	.thumb
	.thumb_func
	.type	udivmodsi4, %function
udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	it	cc
	movcc	r3, #1
	bcc	.L791
	b	.L811
.L794:
	lsls	r1, r1, #1
	lsls	r3, r3, #1
	cmp	r3, #0
	it	ne
	cmpne	r0, r1
	bls	.L812
.L791:
	cmp	r1, #0
	bge	.L794
.L795:
	mov	ip, #0
	push	{r4, lr}
.L797:
	cmp	r0, r1
	ite	cc
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	ite	ne
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	it	ne
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L797
	cmp	r2, #0
	it	eq
	moveq	r0, ip
	pop	{r4, pc}
.L812:
	cmp	r3, #0
	bne	.L795
	mov	ip, r3
.L809:
	cmp	r2, #0
	it	eq
	moveq	r0, ip
	bx	lr
.L811:
	sub	r1, r0, r1
	itet	ls
	movls	ip, #1
	movhi	ip, #0
	movls	r0, r1
	b	.L809
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.p2align 2,,3
	.global	__clrsbqi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L815
	lsls	r0, r0, #8
	clz	r1, r0
	subs	r0, r1, #1
	bx	lr
.L815:
	movs	r0, #7
	bx	lr
	.size	__clrsbqi2, .-__clrsbqi2
	.align	1
	.p2align 2,,3
	.global	__clrsbdi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asrs	r2, r1, #31
	cmp	r1, r2
	it	eq
	cmpeq	r0, r2
	push	{r4}
	eor	r3, r0, r1, asr #31
	eor	r4, r1, r1, asr #31
	it	eq
	moveq	r0, #63
	beq	.L816
	clz	r0, r4
	cbz	r4, .L822
.L819:
	subs	r0, r0, #1
.L816:
	ldr	r4, [sp], #4
	bx	lr
.L822:
	clz	r0, r3
	adds	r0, r0, #32
	b	.L819
	.size	__clrsbdi2, .-__clrsbdi2
	.align	1
	.p2align 2,,3
	.global	__mulsi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__mulsi3, %function
__mulsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L826
	movs	r0, #0
.L825:
	sbfx	r2, r3, #0, #1
	ands	r2, r2, r1
	lsrs	r3, r3, #1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L825
	bx	lr
.L826:
	bx	lr
	.size	__mulsi3, .-__mulsi3
	.align	1
	.p2align 2,,3
	.global	__cmovd
	.syntax unified
	.thumb
	.thumb_func
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r3, r2, #3
	bic	r4, r2, #7
	bcc	.L832
	adds	r5, r1, r2
	cmp	r5, r0
	bcs	.L860
.L832:
	cbz	r3, .L831
	lsls	r6, r3, #3
	sub	r7, r6, #8
	lsrs	r3, r7, #3
	adds	r3, r3, #1
	sub	lr, r1, #8
	sub	ip, r0, #8
.L835:
	vldr.64	d7, [lr, #8]	@ int
	subs	r3, r3, #1
	add	lr, lr, #8
	add	ip, ip, #8
	vstr.64	d7, [ip]	@ int
	bne	.L835
.L831:
	cmp	r2, r4
	bls	.L828
	subs	r6, r2, r4
	subs	r5, r6, #1
	cmp	r5, #5
	bls	.L836
	adds	r7, r4, #1
	add	r7, r7, r1
	add	ip, r0, r4
	sub	r3, ip, r7
	cmp	r3, #2
	bls	.L836
	bic	r7, r6, #3
	subs	r5, r7, #4
	lsrs	r3, r5, #2
	adds	r3, r3, #1
	cmp	r3, #2
	add	lr, r1, r4
	ble	.L855
	subs	r3, r3, #1
	ldr	r5, [lr], #4	@ unaligned
.L837:
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	ldr	r5, [lr], #4	@ unaligned
	bne	.L837
	str	r5, [ip], #4	@ unaligned
.L856:
	cmp	r6, r7
	add	r4, r4, r7
	beq	.L828
	ldrb	r6, [r1, r4]	@ zero_extendqisi2
	adds	r7, r4, #1
	cmp	r2, r7
	strb	r6, [r0, r4]
	bls	.L828
	ldrb	r3, [r1, r7]	@ zero_extendqisi2
	adds	r4, r4, #2
	cmp	r2, r4
	strb	r3, [r0, r7]
	bls	.L828
	ldrb	r1, [r1, r4]	@ zero_extendqisi2
	strb	r1, [r0, r4]
.L828:
	pop	{r4, r5, r6, r7, pc}
.L855:
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	beq	.L856
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	bne	.L855
	b	.L856
.L860:
	cmp	r2, #0
	beq	.L828
	subs	r1, r5, r1
	cmp	r1, #2
	mov	r3, r5
	add	r0, r0, r2
	ble	.L858
	subs	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L841:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L841
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L858:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	beq	.L828
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L858
	b	.L828
.L836:
	subs	r4, r4, #1
	subs	r6, r1, #1
	adds	r5, r1, r4
	add	r6, r6, r2
	subs	r3, r6, r5
	cmp	r3, #2
	add	r4, r4, r0
	ble	.L857
	subs	r3, r3, #1
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
.L839:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	bne	.L839
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, pc}
.L857:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	beq	.L828
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L857
	b	.L828
	.size	__cmovd, .-__cmovd
	.align	1
	.p2align 2,,3
	.global	__cmovh
	.syntax unified
	.thumb
	.thumb_func
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, lr}
	lsr	r5, r2, #1
	bcc	.L865
	adds	r3, r1, r2
	cmp	r3, r0
	bcs	.L895
.L865:
	cbz	r5, .L864
	subs	r3, r5, #1
	cmp	r3, #6
	bls	.L868
	adds	r4, r1, #2
	cmp	r0, r4
	beq	.L868
	bic	r3, r2, #3
	subs	r4, r3, #4
	lsrs	r3, r4, #2
	adds	r3, r3, #1
	cmp	r3, #2
	mov	lr, r1
	mov	ip, r0
	lsr	r6, r2, #2
	ble	.L890
	subs	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L869:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L869
	str	r4, [ip], #4	@ unaligned
.L891:
	cmp	r5, r6, lsl #1
	beq	.L864
	ldrsh	r5, [r1, r6, lsl #2]
	strh	r5, [r0, r6, lsl #2]	@ movhi
.L864:
	lsls	r3, r2, #31
	bpl	.L861
.L896:
	subs	r2, r2, #1
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	strb	r1, [r0, r2]
.L861:
	pop	{r4, r5, r6, pc}
.L890:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L891
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L890
	b	.L891
.L895:
	cmp	r2, #0
	beq	.L861
	subs	r1, r3, r1
	cmp	r1, #2
	add	r2, r2, r0
	ble	.L893
	subs	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L874:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L874
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, pc}
.L893:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	beq	.L861
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L893
	b	.L861
.L868:
	lsls	r6, r5, #1
	subs	r3, r6, #2
	lsrs	r3, r3, #1
	adds	r3, r3, #1
	cmp	r3, #2
	sub	r5, r1, #2
	sub	r4, r0, #2
	ble	.L892
	subs	r3, r3, #1
	ldrsh	ip, [r5, #2]!
.L871:
	subs	r3, r3, #1
	strh	ip, [r4, #2]!	@ movhi
	ldrsh	ip, [r5, #2]!
	bne	.L871
	strh	ip, [r4, #2]!	@ movhi
	lsls	r3, r2, #31
	bpl	.L861
	b	.L896
.L892:
	ldrsh	r6, [r5, #2]!
	subs	r3, r3, #1
	strh	r6, [r4, #2]!	@ movhi
	beq	.L864
	ldrsh	r6, [r5, #2]!
	subs	r3, r3, #1
	strh	r6, [r4, #2]!	@ movhi
	bne	.L892
	b	.L864
	.size	__cmovh, .-__cmovh
	.align	1
	.p2align 2,,3
	.global	__cmovw
	.syntax unified
	.thumb
	.thumb_func
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, r8, lr}
	lsr	r7, r2, #2
	bic	r4, r2, #3
	bcc	.L902
	adds	r3, r1, r2
	cmp	r3, r0
	bcs	.L937
.L902:
	cmp	r7, #0
	beq	.L938
	subs	r3, r7, #1
	cmp	r3, #6
	bls	.L904
	adds	r5, r1, #4
	cmp	r0, r5
	beq	.L904
	mov	ip, r1
	mov	r3, r0
	bic	lr, r2, #7
	sub	r6, lr, #8
	lsr	r8, r6, #3
	add	lr, r8, #1
	lsr	r8, r2, #3
.L905:
	adds	r3, r3, #8
	ldrd	r6, r5, [ip]
	subs	lr, lr, #1
	strd	r6, r5, [r3, #-8]
	add	ip, ip, #8
	bne	.L905
	cmp	r7, r8, lsl #1
	beq	.L908
	ldr	r7, [r1, r8, lsl #3]
	str	r7, [r0, r8, lsl #3]
.L908:
	cmp	r2, r4
	bls	.L897
	subs	r6, r2, r4
	subs	r5, r6, #1
	cmp	r5, #5
	bls	.L900
	adds	r3, r4, #1
	add	r3, r3, r1
	add	ip, r0, r4
	sub	r7, ip, r3
	cmp	r7, #2
	bls	.L900
	bic	r7, r6, #3
	subs	r5, r7, #4
	lsrs	r3, r5, #2
	adds	r3, r3, #1
	cmp	r3, #2
	add	lr, r1, r4
	ble	.L932
	subs	r3, r3, #1
	ldr	r5, [lr], #4	@ unaligned
.L909:
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	ldr	r5, [lr], #4	@ unaligned
	bne	.L909
	str	r5, [ip], #4	@ unaligned
.L933:
	cmp	r6, r7
	add	r4, r4, r7
	beq	.L897
	ldrb	r6, [r1, r4]	@ zero_extendqisi2
	adds	r3, r4, #1
	cmp	r2, r3
	strb	r6, [r0, r4]
	bls	.L897
	ldrb	r7, [r1, r3]	@ zero_extendqisi2
	adds	r4, r4, #2
	cmp	r2, r4
	strb	r7, [r0, r3]
	bls	.L897
	ldrb	r1, [r1, r4]	@ zero_extendqisi2
	strb	r1, [r0, r4]
.L897:
	pop	{r4, r5, r6, r7, r8, pc}
.L932:
	ldr	r8, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r8, [ip], #4	@ unaligned
	beq	.L933
	ldr	r8, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r8, [ip], #4	@ unaligned
	bne	.L932
	b	.L933
.L937:
	cmp	r2, #0
	beq	.L897
	subs	r1, r3, r1
	cmp	r1, #2
	add	r0, r0, r2
	ble	.L935
	subs	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L913:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L913
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, r8, pc}
.L935:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	beq	.L897
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L935
	b	.L897
.L904:
	lsls	r3, r7, #2
	subs	r6, r3, #4
	lsrs	r3, r6, #2
	adds	r3, r3, #1
	cmp	r3, #2
	sub	r6, r1, #4
	sub	r5, r0, #4
	ble	.L931
	subs	r3, r3, #1
	ldr	r7, [r6, #4]!
.L907:
	subs	r3, r3, #1
	str	r7, [r5, #4]!
	ldr	r7, [r6, #4]!
	bne	.L907
	str	r7, [r5, #4]!
	b	.L908
.L931:
	ldr	r7, [r6, #4]!
	subs	r3, r3, #1
	str	r7, [r5, #4]!
	beq	.L908
	ldr	r7, [r6, #4]!
	subs	r3, r3, #1
	str	r7, [r5, #4]!
	bne	.L931
	b	.L908
.L938:
	cmp	r2, #0
	beq	.L897
.L900:
	subs	r4, r4, #1
	subs	r6, r1, #1
	adds	r5, r1, r4
	adds	r2, r6, r2
	subs	r3, r2, r5
	cmp	r3, #2
	add	r4, r4, r0
	ble	.L934
	subs	r3, r3, #1
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
.L911:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	bne	.L911
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, r8, pc}
.L934:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	beq	.L897
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L934
	b	.L897
	.size	__cmovw, .-__cmovw
	.align	1
	.p2align 2,,3
	.global	__modi
	.syntax unified
	.thumb
	.thumb_func
	.type	__modi, %function
__modi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	__aeabi_idivmod
	mov	r0, r1
	pop	{r3, pc}
	.size	__modi, .-__modi
	.align	1
	.p2align 2,,3
	.global	__uitod
	.syntax unified
	.thumb
	.thumb_func
	.type	__uitod, %function
__uitod:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s0, r0	@ int
	vcvt.f64.u32	d0, s0
	bx	lr
	.size	__uitod, .-__uitod
	.align	1
	.p2align 2,,3
	.global	__uitof
	.syntax unified
	.thumb
	.thumb_func
	.type	__uitof, %function
__uitof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s0, r0	@ int
	vcvt.f32.u32	s0, s0
	bx	lr
	.size	__uitof, .-__uitof
	.align	1
	.p2align 2,,3
	.global	__ulltod
	.syntax unified
	.thumb
	.thumb_func
	.type	__ulltod, %function
__ulltod:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	__aeabi_ul2d
	vmov	d0, r0, r1
	pop	{r3, pc}
	.size	__ulltod, .-__ulltod
	.align	1
	.p2align 2,,3
	.global	__ulltof
	.syntax unified
	.thumb
	.thumb_func
	.type	__ulltof, %function
__ulltof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	__aeabi_ul2f
	vmov	s0, r0
	pop	{r3, pc}
	.size	__ulltof, .-__ulltof
	.align	1
	.p2align 2,,3
	.global	__umodi
	.syntax unified
	.thumb
	.thumb_func
	.type	__umodi, %function
__umodi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	__aeabi_uidivmod
	mov	r0, r1
	pop	{r3, pc}
	.size	__umodi, .-__umodi
	.align	1
	.p2align 2,,3
	.global	__clzhi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__clzhi2, %function
__clzhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r0, #15
	mov	r3, r0
	bne	.L952
	asrs	r0, r0, #14
	bne	.L949
	lsrs	r2, r3, #13
	bne	.L953
	lsrs	r2, r3, #12
	bne	.L954
	lsrs	r2, r3, #11
	bne	.L955
	lsrs	r2, r3, #10
	bne	.L956
	lsrs	r2, r3, #9
	bne	.L957
	lsrs	r2, r3, #8
	bne	.L958
	lsrs	r2, r3, #7
	bne	.L959
	lsrs	r2, r3, #6
	bne	.L960
	lsrs	r2, r3, #5
	bne	.L961
	lsrs	r2, r3, #4
	bne	.L962
	lsrs	r2, r3, #3
	bne	.L963
	lsrs	r2, r3, #2
	bne	.L964
	lsrs	r2, r3, #1
	bne	.L965
	cmp	r3, #0
	ite	eq
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L965:
	movs	r0, #14
.L949:
	bx	lr
.L952:
	movs	r0, #0
	bx	lr
.L963:
	movs	r0, #12
	bx	lr
.L953:
	movs	r0, #2
	bx	lr
.L954:
	movs	r0, #3
	bx	lr
.L955:
	movs	r0, #4
	bx	lr
.L956:
	movs	r0, #5
	bx	lr
.L957:
	movs	r0, #6
	bx	lr
.L958:
	movs	r0, #7
	bx	lr
.L959:
	movs	r0, #8
	bx	lr
.L960:
	movs	r0, #9
	bx	lr
.L961:
	movs	r0, #10
	bx	lr
.L962:
	movs	r0, #11
	bx	lr
.L964:
	movs	r0, #13
	bx	lr
	.size	__clzhi2, .-__clzhi2
	.align	1
	.p2align 2,,3
	.global	__ctzhi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__ctzhi2, %function
__ctzhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r0, #31
	bmi	.L970
	lsls	r2, r0, #30
	bmi	.L971
	lsls	r3, r0, #29
	bmi	.L972
	lsls	r1, r0, #28
	bmi	.L973
	lsls	r2, r0, #27
	bmi	.L974
	lsls	r3, r0, #26
	bmi	.L975
	lsls	r1, r0, #25
	bmi	.L976
	lsls	r2, r0, #24
	bmi	.L977
	lsls	r3, r0, #23
	bmi	.L978
	lsls	r1, r0, #22
	bmi	.L979
	lsls	r2, r0, #21
	bmi	.L980
	lsls	r3, r0, #20
	bmi	.L981
	lsls	r1, r0, #19
	bmi	.L982
	lsls	r2, r0, #18
	bmi	.L983
	lsls	r3, r0, #17
	bmi	.L984
	lsrs	r0, r0, #15
	ite	eq
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L970:
	movs	r0, #0
	bx	lr
.L971:
	movs	r0, #1
	bx	lr
.L982:
	movs	r0, #12
	bx	lr
.L972:
	movs	r0, #2
	bx	lr
.L973:
	movs	r0, #3
	bx	lr
.L974:
	movs	r0, #4
	bx	lr
.L975:
	movs	r0, #5
	bx	lr
.L976:
	movs	r0, #6
	bx	lr
.L977:
	movs	r0, #7
	bx	lr
.L978:
	movs	r0, #8
	bx	lr
.L979:
	movs	r0, #9
	bx	lr
.L980:
	movs	r0, #10
	bx	lr
.L981:
	movs	r0, #11
	bx	lr
.L983:
	movs	r0, #13
	bx	lr
.L984:
	movs	r0, #14
	bx	lr
	.size	__ctzhi2, .-__ctzhi2
	.align	1
	.p2align 2,,3
	.global	__fixunssfsi
	.syntax unified
	.thumb
	.thumb_func
	.type	__fixunssfsi, %function
__fixunssfsi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L992
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	ittet	ge
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	ite	ge
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	bx	lr
.L993:
	.align	2
.L992:
	.word	1191182336
	.size	__fixunssfsi, .-__fixunssfsi
	.align	1
	.p2align 2,,3
	.global	__parityhi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__parityhi2, %function
__parityhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r2, r0, #1
	ubfx	r3, r0, #1, #1
	ubfx	r1, r0, #2, #1
	add	r3, r3, r2
	ubfx	ip, r0, #3, #1
	add	r3, r3, r1
	ubfx	r2, r0, #4, #1
	add	r3, r3, ip
	ubfx	r1, r0, #5, #1
	add	r3, r3, r2
	ubfx	ip, r0, #6, #1
	add	r3, r3, r1
	ubfx	r2, r0, #7, #1
	add	r3, r3, ip
	ubfx	r1, r0, #8, #1
	add	r3, r3, r2
	ubfx	ip, r0, #9, #1
	add	r3, r3, r1
	ubfx	r2, r0, #10, #1
	add	r3, r3, ip
	ubfx	r1, r0, #11, #1
	add	r3, r3, r2
	ubfx	ip, r0, #12, #1
	add	r3, r3, r1
	ubfx	r2, r0, #13, #1
	add	r3, r3, ip
	ubfx	r1, r0, #14, #1
	add	r3, r3, r2
	add	r3, r3, r1
	add	r0, r3, r0, lsr #15
	and	r0, r0, #1
	bx	lr
	.size	__parityhi2, .-__parityhi2
	.align	1
	.p2align 2,,3
	.global	__popcounthi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__popcounthi2, %function
__popcounthi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r2, r0, #1
	ubfx	r3, r0, #1, #1
	ubfx	r1, r0, #2, #1
	add	r3, r3, r2
	ubfx	ip, r0, #3, #1
	add	r3, r3, r1
	ubfx	r2, r0, #4, #1
	add	r3, r3, ip
	ubfx	r1, r0, #5, #1
	add	r3, r3, r2
	ubfx	ip, r0, #6, #1
	add	r3, r3, r1
	ubfx	r2, r0, #7, #1
	add	r3, r3, ip
	ubfx	r1, r0, #8, #1
	add	r3, r3, r2
	ubfx	ip, r0, #9, #1
	add	r3, r3, r1
	ubfx	r2, r0, #10, #1
	add	r3, r3, ip
	ubfx	r1, r0, #11, #1
	add	r3, r3, r2
	ubfx	ip, r0, #12, #1
	add	r3, r3, r1
	ubfx	r2, r0, #13, #1
	add	r3, r3, ip
	ubfx	r1, r0, #14, #1
	add	r3, r3, r2
	add	r3, r3, r1
	add	r0, r3, r0, lsr #15
	bx	lr
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.p2align 2,,3
	.global	__mulsi3_iq2000
	.syntax unified
	.thumb
	.thumb_func
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L999
	movs	r0, #0
.L998:
	sbfx	r2, r3, #0, #1
	ands	r2, r2, r1
	lsrs	r3, r3, #1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L998
	bx	lr
.L999:
	bx	lr
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	1
	.p2align 2,,3
	.global	__mulsi3_lm32
	.syntax unified
	.thumb
	.thumb_func
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	cbz	r0, .L1004
	cbz	r1, .L1005
	movs	r0, #0
.L1003:
	sbfx	r3, r1, #0, #1
	ands	r3, r3, r2
	lsrs	r1, r1, #1
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L1003
	bx	lr
.L1004:
	bx	lr
.L1005:
	mov	r0, r1
	bx	lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	1
	.p2align 2,,3
	.global	__udivmodsi4
	.syntax unified
	.thumb
	.thumb_func
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	it	hi
	movhi	r3, #1
	bhi	.L1008
	b	.L1028
.L1011:
	lsls	r1, r1, #1
	lsls	r3, r3, #1
	cmp	r3, #0
	it	ne
	cmpne	r0, r1
	bls	.L1029
.L1008:
	cmp	r1, #0
	bge	.L1011
.L1012:
	mov	ip, #0
	push	{r4, lr}
.L1014:
	cmp	r0, r1
	ite	cc
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	ite	ne
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	it	ne
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L1014
	cmp	r2, #0
	it	eq
	moveq	r0, ip
	pop	{r4, pc}
.L1029:
	cmp	r3, #0
	bne	.L1012
	mov	ip, r3
.L1026:
	cmp	r2, #0
	it	eq
	moveq	r0, ip
	bx	lr
.L1028:
	sub	r1, r0, r1
	itet	cs
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1026
	.size	__udivmodsi4, .-__udivmodsi4
	.align	1
	.p2align 2,,3
	.global	__mspabi_cmpf
	.syntax unified
	.thumb
	.thumb_func
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L1032
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1032:
	mov	r0, #-1
	bx	lr
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	1
	.p2align 2,,3
	.global	__mspabi_cmpd
	.syntax unified
	.thumb
	.thumb_func
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L1035
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1035:
	mov	r0, #-1
	bx	lr
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	1
	.p2align 2,,3
	.global	__mspabi_mpysll
	.syntax unified
	.thumb
	.thumb_func
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	smull	r0, r1, r0, r1
	bx	lr
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	1
	.p2align 2,,3
	.global	__mspabi_mpyull
	.syntax unified
	.thumb
	.thumb_func
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	umull	r0, r1, r0, r1
	bx	lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	1
	.p2align 2,,3
	.global	__mulhi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__mulhi3, %function
__mulhi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	push	{r4}
	mov	ip, r0
	itt	lt
	movlt	r4, #1
	rsblt	r1, r1, #0
	blt	.L1040
	it	eq
	moveq	r0, r1
	beq	.L1038
	movs	r4, #0
.L1040:
	movs	r0, #0
	mov	r3, r0
.L1042:
	adds	r3, r3, #1
	sbfx	r2, r1, #0, #1
	uxtb	r3, r3
	asrs	r1, r1, #1
	cmp	r1, #0
	it	ne
	cmpne	r3, #32
	and	r2, r2, ip
	add	r0, r0, r2
	lsl	ip, ip, #1
	bne	.L1042
	cbz	r4, .L1038
	rsbs	r0, r0, #0
.L1038:
	ldr	r4, [sp], #4
	bx	lr
	.size	__mulhi3, .-__mulhi3
	.align	1
	.p2align 2,,3
	.global	__divsi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__divsi3, %function
__divsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #0
	it	lt
	movlt	r3, #0
	push	{r4, lr}
	ittee	lt
	rsblt	r2, r2, #0
	movlt	r4, #1
	movge	r3, #1
	movge	r4, #0
	cmp	r1, #0
	itt	lt
	rsblt	r1, r1, #0
	movlt	r4, r3
	cmp	r2, r1
	mov	ip, r2
	it	hi
	movhi	r3, #1
	bls	.L1072
.L1052:
	lsls	r1, r1, #1
	lsls	r3, r3, #1
	cmp	r3, #0
	it	ne
	cmpne	r2, r1
	ite	hi
	movhi	r0, #1
	movls	r0, #0
	bhi	.L1052
	cbz	r3, .L1073
.L1054:
	cmp	ip, r1
	ite	cc
	movcc	r2, #0
	movcs	r2, #1
	cmp	r2, #0
	ite	ne
	movne	r2, r3
	moveq	r2, #0
	sub	lr, ip, r1
	it	ne
	movne	ip, lr
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	r0, r0, r2
	bne	.L1054
.L1055:
	cbz	r4, .L1049
	rsbs	r0, r0, #0
.L1049:
	pop	{r4, pc}
.L1073:
	mov	r0, r3
	b	.L1055
.L1072:
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	b	.L1055
	.size	__divsi3, .-__divsi3
	.align	1
	.p2align 2,,3
	.global	__modsi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r0, #0
	eor	r3, r1, r1, asr #31
	it	lt
	rsblt	ip, ip, #0
	sub	r3, r3, r1, asr #31
	push	{r4}
	ite	lt
	movlt	r4, #1
	movge	r4, #0
	cmp	ip, r3
	mov	r0, ip
	it	hi
	movhi	r2, #1
	bls	.L1098
.L1076:
	lsls	r3, r3, #1
	lsls	r2, r2, #1
	cmp	r2, #0
	it	ne
	cmpne	ip, r3
	bhi	.L1076
	cbz	r2, .L1099
.L1078:
	subs	r1, r0, r3
	cmp	r0, r3
	it	cs
	movcs	r0, r1
	lsrs	r2, r2, #1
	lsr	r3, r3, #1
	bne	.L1078
.L1079:
	cbz	r4, .L1074
	rsbs	r0, r0, #0
.L1074:
	ldr	r4, [sp], #4
	bx	lr
.L1099:
	mov	r0, ip
	b	.L1079
.L1098:
	sub	r1, r0, r3
	it	cs
	movcs	r0, r1
	b	.L1079
	.size	__modsi3, .-__modsi3
	.align	1
	.p2align 2,,3
	.global	__udivmodhi4
	.syntax unified
	.thumb
	.thumb_func
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	it	cc
	movcc	lr, #1
	bcc	.L1101
	b	.L1159
.L1104:
	cmp	r3, #0
	it	ne
	cmpne	r4, ip
	bls	.L1103
	mov	lr, r3
	mov	r1, ip
.L1101:
	lsls	r5, r1, #1
	lsl	r6, lr, #1
	lsls	r0, r1, #16
	uxth	ip, r5
	uxth	r3, r6
	bpl	.L1104
	subs	r7, r4, r1
	uxth	r0, r7
	cmp	r4, r1
	it	cc
	movcc	r0, r4
	cmp	r4, r1
	ite	cs
	movcs	r4, lr
	movcc	r4, #0
	ubfx	r6, lr, #1, #16
	lsrs	r5, r1, #1
	uxth	r7, r4
	cmp	r6, #0
	beq	.L1160
.L1108:
	cmp	r5, r0
	ite	hi
	movhi	r3, #0
	movls	r3, #1
	cmp	r3, #0
	it	eq
	moveq	r6, #0
	sub	r5, r0, r5
	uxth	ip, r5
	ubfx	r5, lr, #2, #16
	it	ne
	movne	r0, ip
	orr	r3, r7, r6
	lsrs	r4, r1, #2
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	sub	r4, r0, r4
	it	eq
	moveq	r5, #0
	uxth	ip, r4
	it	eq
	moveq	ip, r0
	orrs	r3, r3, r5
	ubfx	r5, lr, #3, #16
	uxth	r0, ip
	lsrs	r4, r1, #3
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #4, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #4
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #5, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #5
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #6, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #6
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #7, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #7
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #8, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #8
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #9, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #9
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #10, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #10
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #11, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #11
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #12, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #12
	cmp	r5, #0
	beq	.L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #13, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #13
	cbz	r5, .L1106
	cmp	r0, r4
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	cmp	r6, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	orr	r3, r3, r5
	ubfx	r5, lr, #14, #16
	it	ne
	movne	r0, ip
	lsrs	r4, r1, #14
	cbz	r5, .L1106
	cmp	r0, r4
	ite	cc
	movcc	r7, #0
	movcs	r7, #1
	cmp	r7, #0
	it	eq
	moveq	r5, #0
	sub	r4, r0, r4
	uxth	ip, r4
	ubfx	r6, lr, #15, #16
	it	ne
	movne	r0, ip
	lsrs	r1, r1, #15
	orrs	r3, r3, r5
	cbz	r6, .L1106
	cmp	r0, r1
	sub	r7, r0, r1
	ite	cc
	movcc	r5, #0
	movcs	r5, #1
	uxth	r6, r7
	cmp	r0, r1
	it	cs
	movcs	r0, r6
	orrs	r3, r3, r5
.L1106:
	cmp	r2, #0
	it	eq
	moveq	r0, r3
	pop	{r4, r5, r6, r7, pc}
.L1103:
	mov	r0, r4
	cmp	r3, #0
	beq	.L1106
	ubfx	r6, lr, #0, #15
	sub	lr, r4, ip
	uxth	r0, lr
	ubfx	r5, r1, #0, #15
	cmp	r4, ip
	it	cc
	movcc	r0, r4
	cmp	r4, ip
	ite	cs
	movcs	r7, r3
	movcc	r7, #0
	mov	lr, r3
	mov	r1, ip
	b	.L1108
.L1159:
	sub	r3, r1, r4
	sub	r0, r0, r1
	clz	r1, r3
	uxth	r0, r0
	lsr	r3, r1, #5
	it	ne
	movne	r0, r4
	b	.L1106
.L1160:
	mov	r3, r7
	b	.L1106
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.p2align 2,,3
	.global	__udivmodsi4_libgcc
	.syntax unified
	.thumb
	.thumb_func
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	it	hi
	movhi	r3, #1
	bhi	.L1162
	b	.L1182
.L1165:
	lsls	r1, r1, #1
	lsls	r3, r3, #1
	cmp	r3, #0
	it	ne
	cmpne	r0, r1
	bls	.L1183
.L1162:
	cmp	r1, #0
	bge	.L1165
.L1166:
	mov	ip, #0
	push	{r4, lr}
.L1168:
	cmp	r0, r1
	ite	cc
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	ite	ne
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	it	ne
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L1168
	cmp	r2, #0
	it	eq
	moveq	r0, ip
	pop	{r4, pc}
.L1183:
	cmp	r3, #0
	bne	.L1166
	mov	ip, r3
.L1180:
	cmp	r2, #0
	it	eq
	moveq	r0, ip
	bx	lr
.L1182:
	sub	r1, r0, r1
	itet	cs
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1180
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	1
	.p2align 2,,3
	.global	__ashldi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__ashldi3, %function
__ashldi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r2, #26
	bpl	.L1185
	movs	r3, #0
	subs	r2, r2, #32
	lsl	r1, r0, r2
.L1186:
	mov	r0, r3
.L1187:
	bx	lr
.L1185:
	cmp	r2, #0
	beq	.L1187
	rsb	r3, r2, #32
	lsr	ip, r0, r3
	lsls	r1, r1, r2
	lsl	r3, r0, r2
	orr	r1, ip, r1
	b	.L1186
	.size	__ashldi3, .-__ashldi3
	.align	1
	.p2align 2,,3
	.global	__ashrdi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__ashrdi3, %function
__ashrdi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r2, #26
	bpl	.L1190
	subs	r2, r2, #32
	asrs	r3, r1, #31
	asr	r0, r1, r2
.L1191:
	mov	r1, r3
.L1192:
	bx	lr
.L1190:
	cmp	r2, #0
	beq	.L1192
	rsb	r3, r2, #32
	lsl	ip, r1, r3
	lsrs	r0, r0, r2
	asr	r3, r1, r2
	orr	r0, ip, r0
	b	.L1191
	.size	__ashrdi3, .-__ashrdi3
	.align	1
	.p2align 2,,3
	.global	__bswapdi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r1
	rev	r1, r0
	rev	r0, r3
	bx	lr
	.size	__bswapdi2, .-__bswapdi2
	.align	1
	.p2align 2,,3
	.global	__bswapsi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__bswapsi2, %function
__bswapsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rev	r0, r0
	bx	lr
	.size	__bswapsi2, .-__bswapsi2
	.align	1
	.p2align 2,,3
	.global	__clzsi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__clzsi2, %function
__clzsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #65536
	ite	cs
	movcs	r1, #0
	movcc	r1, #1
	lsls	r1, r1, #4
	rsb	r3, r1, #16
	lsr	r3, r0, r3
	and	r2, r3, #65280
	clz	r0, r2
	lsrs	r2, r0, #5
	lsls	r2, r2, #3
	rsb	r0, r2, #8
	lsrs	r3, r3, r0
	and	ip, r3, #240
	add	r1, r1, r2
	clz	r2, ip
	lsrs	r0, r2, #5
	lsls	r2, r0, #2
	rsb	r0, r2, #4
	lsrs	r3, r3, r0
	add	r2, r2, r1
	and	r1, r3, #12
	clz	r0, r1
	lsrs	r1, r0, #5
	lsls	r0, r1, #1
	rsb	r1, r0, #2
	lsrs	r3, r3, r1
	tst	r3, #2
	rsb	ip, r3, #2
	it	ne
	movne	ip, #0
	add	r0, r0, r2
	add	r0, r0, ip
	bx	lr
	.size	__clzsi2, .-__clzsi2
	.align	1
	.p2align 2,,3
	.global	__cmpdi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__cmpdi2, %function
__cmpdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1201
	bgt	.L1202
	cmp	r0, r2
	bcc	.L1201
	bhi	.L1202
	movs	r0, #1
	bx	lr
.L1201:
	movs	r0, #0
	bx	lr
.L1202:
	movs	r0, #2
	bx	lr
	.size	__cmpdi2, .-__cmpdi2
	.align	1
	.p2align 2,,3
	.global	__aeabi_lcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1207
	bgt	.L1206
	cmp	r0, r2
	bcc	.L1207
	ite	hi
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1207:
	mov	r0, #-1
	bx	lr
.L1206:
	movs	r0, #1
	bx	lr
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	1
	.p2align 2,,3
	.global	__ctzsi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__ctzsi2, %function
__ctzsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxth	r3, r0
	clz	r1, r3
	lsrs	r2, r1, #5
	lsls	r1, r2, #4
	lsr	r3, r0, r1
	uxtb	r0, r3
	clz	r2, r0
	lsrs	r0, r2, #5
	lsls	r2, r0, #3
	lsrs	r3, r3, r2
	and	r0, r3, #15
	add	r1, r1, r2
	clz	r2, r0
	lsrs	r0, r2, #5
	lsls	r2, r0, #2
	lsrs	r3, r3, r2
	add	r2, r2, r1
	and	r1, r3, #3
	clz	r0, r1
	lsrs	r1, r0, #5
	lsls	r0, r1, #1
	lsrs	r3, r3, r0
	and	r3, r3, #3
	add	r0, r0, r2
	mvns	r2, r3
	lsrs	r1, r3, #1
	rsb	r3, r1, #2
	sbfx	r2, r2, #0, #1
	ands	r3, r3, r2
	add	r0, r0, r3
	bx	lr
	.size	__ctzsi2, .-__ctzsi2
	.align	1
	.p2align 2,,3
	.global	__lshrdi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__lshrdi3, %function
__lshrdi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r2, #26
	bpl	.L1210
	movs	r3, #0
	subs	r2, r2, #32
	lsr	r0, r1, r2
.L1211:
	mov	r1, r3
.L1212:
	bx	lr
.L1210:
	cmp	r2, #0
	beq	.L1212
	rsb	r3, r2, #32
	lsl	ip, r1, r3
	lsrs	r0, r0, r2
	lsr	r3, r1, r2
	orr	r0, ip, r0
	b	.L1211
	.size	__lshrdi3, .-__lshrdi3
	.align	1
	.p2align 2,,3
	.global	__muldsi3
	.syntax unified
	.thumb
	.thumb_func
	.type	__muldsi3, %function
__muldsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	uxth	r3, r1
	push	{lr}
	uxth	lr, r0
	lsrs	r0, r0, #16
	mul	ip, r3, lr
	lsrs	r2, r1, #16
	mul	r3, r0, r3
	mul	r0, r2, r0
	add	r3, r3, ip, lsr #16
	add	r1, r0, r3, lsr #16
	uxth	r0, r3
	mla	r2, r2, lr, r0
	uxth	ip, ip
	add	r0, ip, r2, lsl #16
	add	r1, r1, r2, lsr #16
	ldr	pc, [sp], #4
	.size	__muldsi3, .-__muldsi3
	.align	1
	.p2align 2,,3
	.global	__muldi3_compiler_rt
	.syntax unified
	.thumb
	.thumb_func
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	uxth	r6, r2
	uxth	r5, r0
	lsr	lr, r0, #16
	mul	r4, r6, r5
	mul	ip, lr, r6
	lsrs	r6, r2, #16
	mul	lr, r6, lr
	add	ip, ip, r4, lsr #16
	add	lr, lr, ip, lsr #16
	uxth	ip, ip
	mla	r5, r6, r5, ip
	add	lr, lr, r5, lsr #16
	mla	r3, r3, r0, lr
	uxth	r4, r4
	mla	r1, r1, r2, r3
	add	r0, r4, r5, lsl #16
	pop	{r4, r5, r6, pc}
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	1
	.p2align 2,,3
	.global	__negdi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__negdi2, %function
__negdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	bx	lr
	.size	__negdi2, .-__negdi2
	.align	1
	.p2align 2,,3
	.global	__paritydi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__paritydi2, %function
__paritydi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #27030
	eors	r1, r1, r0
	eor	r1, r1, r1, lsr #16
	eor	r0, r1, r1, lsr #8
	eor	r2, r0, r0, lsr #4
	and	ip, r2, #15
	asr	r3, r3, ip
	and	r0, r3, #1
	bx	lr
	.size	__paritydi2, .-__paritydi2
	.align	1
	.p2align 2,,3
	.global	__paritysi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__paritysi2, %function
__paritysi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #27030
	eor	r3, r0, r0, lsr #16
	eor	r0, r3, r3, lsr #8
	eor	r1, r0, r0, lsr #4
	and	ip, r1, #15
	asr	r2, r2, ip
	and	r0, r2, #1
	bx	lr
	.size	__paritysi2, .-__paritysi2
	.align	1
	.p2align 2,,3
	.global	__popcountdi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r0, #1
	lsrs	r2, r1, #1
	and	ip, r3, #1431655765
	subs	r0, r0, ip
	and	r3, r2, #1431655765
	sbc	r1, r1, r3
	lsrs	r2, r0, #2
	lsrs	r3, r1, #2
	and	r2, r2, #858993459
	and	r0, r0, #858993459
	adds	r0, r2, r0
	and	r1, r1, #858993459
	and	r3, r3, #858993459
	adc	r3, r3, r1
	lsrs	r2, r0, #4
	orr	r1, r2, r3, lsl #28
	adds	r2, r1, r0
	adc	ip, r3, r3, lsr #4
	and	r0, ip, #252645135
	and	r3, r2, #252645135
	add	r0, r0, r3
	add	r1, r0, r0, lsr #16
	add	r2, r1, r1, lsr #8
	and	r0, r2, #127
	bx	lr
	.size	__popcountdi2, .-__popcountdi2
	.align	1
	.p2align 2,,3
	.global	__popcountsi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__popcountsi2, %function
__popcountsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r0, #1
	and	r1, r3, #1431655765
	subs	r2, r0, r1
	lsrs	r0, r2, #2
	and	ip, r2, #858993459
	and	r3, r0, #858993459
	add	r3, r3, ip
	add	r1, r3, r3, lsr #4
	and	r2, r1, #252645135
	add	r0, r2, r2, lsr #16
	add	r3, r0, r0, lsr #8
	and	r0, r3, #63
	bx	lr
	.size	__popcountsi2, .-__popcountsi2
	.align	1
	.p2align 2,,3
	.global	__powidf2
	.syntax unified
	.thumb
	.thumb_func
	.type	__powidf2, %function
__powidf2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #31
	vmov.f64	d7, d0
	mov	r1, r0
	vmov.f64	d0, #1.0e+0
	bpl	.L1224
.L1226:
	vmul.f64	d0, d0, d7
.L1224:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1225
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1226
.L1230:
	asrs	r1, r2, #1
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1226
	b	.L1230
.L1225:
	cmp	r0, #0
	bge	.L1223
	vmov.f64	d1, #1.0e+0
	vdiv.f64	d0, d1, d0
.L1223:
	bx	lr
	.size	__powidf2, .-__powidf2
	.align	1
	.p2align 2,,3
	.global	__powisf2
	.syntax unified
	.thumb
	.thumb_func
	.type	__powisf2, %function
__powisf2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #31
	vmov.f32	s15, s0
	mov	r1, r0
	vmov.f32	s0, #1.0e+0
	bpl	.L1232
.L1234:
	vmul.f32	s0, s0, s15
.L1232:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1233
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1234
.L1238:
	asrs	r1, r2, #1
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1234
	b	.L1238
.L1233:
	cmp	r0, #0
	itt	lt
	vmovlt.f32	s15, #1.0e+0
	vdivlt.f32	s0, s15, s0
	bx	lr
	.size	__powisf2, .-__powisf2
	.align	1
	.p2align 2,,3
	.global	__ucmpdi2
	.syntax unified
	.thumb
	.thumb_func
	.type	__ucmpdi2, %function
__ucmpdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1243
	bhi	.L1244
	cmp	r0, r2
	bcc	.L1243
	bhi	.L1244
	movs	r0, #1
	bx	lr
.L1243:
	movs	r0, #0
	bx	lr
.L1244:
	movs	r0, #2
	bx	lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	1
	.p2align 2,,3
	.global	__aeabi_ulcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1249
	bhi	.L1248
	cmp	r0, r2
	bcc	.L1249
	ite	hi
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1249:
	mov	r0, #-1
	bx	lr
.L1248:
	movs	r0, #1
	bx	lr
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	digits, %object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklm"
	.ascii	"nopqrstuvwxyz\000"
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	s.0, %object
	.size	s.0, 7
s.0:
	.space	7
	.space	1
	.type	seed, %object
	.size	seed, 8
seed:
	.space	8
	.global	__aeabi_uidivmod
	.global	__aeabi_ul2f
	.global	__aeabi_ul2d
	.global	__aeabi_ldivmod
	.global	__aeabi_idivmod
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
