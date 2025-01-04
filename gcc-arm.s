	.arch armv4t
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"mini-libc.c"
	.text
	.align	2
	.global	memmove
	.syntax unified
	.arm
	.type	memmove, %function
memmove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bls	.L2
	cmp	r2, #0
	add	r3, r1, r2
	add	r2, r0, r2
	bxeq	lr
	sub	r1, r3, r1
	cmp	r1, #2
	ble	.L37
	sub	r1, r1, #1
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
.L4:
	subs	r1, r1, #1
	strb	ip, [r2, #-1]!
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	bne	.L4
	strb	ip, [r2, #-1]!
	bx	lr
.L2:
	bxeq	lr
	cmp	r2, #0
	bxeq	lr
	sub	r3, r2, #1
	cmp	r3, #6
	push	{r4, r5, r6, lr}
	addls	ip, r1, #1
	bls	.L5
	add	ip, r1, #1
	sub	lr, r0, ip
	orr	r4, r1, r0
	cmp	lr, #2
	and	r5, r4, #3
	movls	lr, #0
	movhi	lr, #1
	cmp	r5, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L5
	bic	r5, r2, #3
	sub	r3, r5, #4
	lsr	r4, r3, #2
	add	r3, r4, #1
	cmp	r3, #2
	mov	ip, r0
	sub	lr, r1, #4
	lsr	r6, r2, #2
	ble	.L38
	sub	r3, r3, #1
	ldr	r4, [lr, #4]!
.L6:
	subs	r3, r3, #1
	str	r4, [ip], #4
	ldr	r4, [lr, #4]!
	bne	.L6
	str	r4, [ip], #4
.L39:
	cmp	r2, r5
	sub	r2, r2, r5
	add	r5, r1, r5
	beq	.L3
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r1, [ip]
	beq	.L3
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r6, [ip, #1]
	ldrbne	lr, [r5, #2]	@ zero_extendqisi2
	strbne	lr, [ip, #2]
.L3:
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	ip, [r2, #-1]!
	bne	.L37
	bx	lr
.L38:
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	beq	.L39
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	bne	.L38
	b	.L39
.L5:
	add	r3, r1, r2
	sub	r2, r3, ip
	sub	r4, r0, #1
	add	r1, r2, #1
.L9:
	ldrb	r5, [ip, #-1]	@ zero_extendqisi2
	subs	r1, r1, #1
	add	ip, ip, #1
	strb	r5, [r4, #1]!
	bne	.L9
	b	.L3
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.syntax unified
	.arm
	.type	memccpy, %function
memccpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	beq	.L58
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
	b	.L47
.L49:
	subs	r3, r3, #1
	beq	.L46
.L47:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, r2
	strb	ip, [r0], #1
	bne	.L49
	ldr	lr, [sp], #4
	bx	lr
.L46:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L58:
	mov	r0, #0
	bx	lr
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.syntax unified
	.arm
	.type	memchr, %function
memchr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	and	r1, r1, #255
	beq	.L68
	mov	r3, r0
.L63:
	mov	r0, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L63
.L68:
	mov	r0, #0
	bx	lr
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bne	.L72
	b	.L78
.L73:
	subs	r2, r2, #1
	beq	.L78
.L72:
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	ip, r3
	add	r1, r1, #1
	beq	.L73
	sub	r0, ip, r3
	bx	lr
.L78:
	mov	r0, #0
	bx	lr
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	blne	memcpy
.L82:
	mov	r0, r4
	pop	{r4, lr}
	bx	lr
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r2, #1
	add	r3, r0, r2
	and	r1, r1, #255
	add	r2, r2, #2
	b	.L88
.L90:
	mov	r0, r3
	ldrb	ip, [r0]	@ zero_extendqisi2
	sub	r3, r3, #1
	cmp	ip, r1
	bxeq	lr
.L88:
	subs	r2, r2, #1
	bne	.L90
	mov	r0, #0
	bx	lr
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	andne	r1, r1, #255
	blne	memset
.L94:
	mov	r0, r4
	pop	{r4, lr}
	bx	lr
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.syntax unified
	.arm
	.type	stpcpy, %function
stpcpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	strb	r3, [r0]
	bxeq	lr
	add	ip, r0, #1
.L98:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	mov	r0, ip
	cmp	r2, #0
	strb	r2, [ip], #1
	bne	.L98
	bx	lr
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.syntax unified
	.arm
	.type	strchrnul, %function
strchrnul:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	and	r1, r1, #255
	cmp	r3, #0
	bxeq	lr
	cmp	r3, r1
	bxeq	lr
.L109:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
	cmp	r3, r1
	bne	.L109
	bx	lr
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.syntax unified
	.arm
	.type	strchr, %function
strchr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
.L112:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r1
	add	r2, r2, #1
	bxeq	lr
	cmp	r3, #0
	bne	.L112
	mov	r0, r3
	bx	lr
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.syntax unified
	.arm
	.type	strcmp, %function
strcmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L117
	b	.L116
.L118:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, r2
	bne	.L116
.L117:
	cmp	r3, #0
	bne	.L118
.L116:
	sub	r0, r3, r2
	bx	lr
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.syntax unified
	.arm
	.type	strlen, %function
strlen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	mov	r1, r0
.L122:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L122
	sub	r0, r1, r0
	bx	lr
.L123:
	mov	r0, r3
	bx	lr
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r2, #0
	beq	.L131
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L138
	push	{r4, lr}
	add	lr, r1, r3
	b	.L129
.L130:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L139
.L129:
	mov	r4, r1
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	subs	r2, r3, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	lr, r1
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L130
	sub	r0, ip, r3
	pop	{r4, lr}
	bx	lr
.L131:
	mov	r0, r3
	bx	lr
.L139:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	pop	{r4, lr}
	sub	r0, ip, r3
	bx	lr
.L138:
	ldrb	r0, [r1]	@ zero_extendqisi2
	sub	r0, ip, r0
	bx	lr
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.syntax unified
	.arm
	.type	swab, %function
swab:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #1
	bxle	lr
	sub	r3, r2, #2
	lsr	r2, r3, #1
	add	r0, r0, #2
	add	r1, r1, #2
	add	r3, r2, #1
.L142:
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r1, r1, #2
	add	r0, r0, #2
	strb	ip, [r1, #-4]
	strb	r2, [r1, #-3]
	bne	.L142
	bx	lr
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.syntax unified
	.arm
	.type	isalpha, %function
isalpha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.syntax unified
	.arm
	.type	isascii, %function
isascii:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.syntax unified
	.arm
	.type	isblank, %function
isblank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #9
	cmpne	r0, #32
	moveq	r0, #1
	movne	r0, #0
	bx	lr
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.syntax unified
	.arm
	.type	iscntrl, %function
iscntrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127
	cmpne	r0, #31
	movls	r0, #1
	movhi	r0, #0
	bx	lr
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.syntax unified
	.arm
	.type	isdigit, %function
isdigit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #48
	cmp	r0, #9
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.syntax unified
	.arm
	.type	isgraph, %function
isgraph:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #33
	cmp	r0, #93
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.syntax unified
	.arm
	.type	islower, %function
islower:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #97
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	islower, .-islower
	.align	2
	.global	isprint
	.syntax unified
	.arm
	.type	isprint, %function
isprint:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #32
	cmp	r0, #94
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.syntax unified
	.arm
	.type	isspace, %function
isspace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #9
	cmp	r0, #32
	cmpne	r3, #4
	movls	r0, #1
	movhi	r0, #0
	bx	lr
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.syntax unified
	.arm
	.type	isupper, %function
isupper:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #65
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.syntax unified
	.arm
	.type	iswcntrl, %function
iswcntrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #127
	cmp	r0, #31
	cmphi	r3, #32
	bls	.L157
	sub	r1, r0, #8192
	sub	r2, r1, #40
	cmp	r2, #1
	bls	.L157
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L157:
	mov	r0, #1
	bx	lr
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.syntax unified
	.arm
	.type	iswdigit, %function
iswdigit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #48
	cmp	r0, #9
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.syntax unified
	.arm
	.type	iswprint, %function
iswprint:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #254
	bls	.L165
	ldr	r1, .L166
	ldr	r2, .L166+4
	sub	r3, r0, #8192
	sub	ip, r3, #42
	cmp	r0, r2
	cmphi	ip, r1
	movls	ip, #1
	movhi	ip, #0
	bls	.L163
	sub	r2, r2, #47
	sub	r1, r0, #57344
	cmp	r1, r2
	bls	.L163
	ldr	r3, .L166+8
	sub	r2, r0, #65280
	sub	r1, r2, #252
	cmp	r1, r3
	bhi	.L164
	ldr	ip, .L166+12
	bics	r3, ip, r0
	movne	r0, #1
	moveq	r0, #0
	bx	lr
.L163:
	mov	r0, #1
	bx	lr
.L165:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.L164:
	mov	r0, ip
	bx	lr
.L167:
	.align	2
.L166:
	.word	47061
	.word	8231
	.word	1048579
	.word	65534
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.syntax unified
	.arm
	.type	iswxdigit, %function
iswxdigit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #48
	cmp	r3, #9
	bls	.L170
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L170:
	mov	r0, #1
	bx	lr
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.syntax unified
	.arm
	.type	toascii, %function
toascii:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, #127
	bx	lr
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.syntax unified
	.arm
	.type	fdim, %function
fdim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L176
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L179
	vsub.f64	d0, d0, d1
	bx	lr
.L179:
	vldr.64	d0, .L180
	bx	lr
.L176:
	vmov.f64	d0, d1
	bx	lr
.L181:
	.align	3
.L180:
	.word	0
	.word	0
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.syntax unified
	.arm
	.type	fdimf, %function
fdimf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L186
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L189
	vsub.f32	s0, s0, s1
	bx	lr
.L189:
	vldr.32	s0, .L190
	bx	lr
.L186:
	vmov.f32	s0, s1
	bx	lr
.L191:
	.align	2
.L190:
	.word	0
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.syntax unified
	.arm
	.type	fmax, %function
fmax:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L195
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L194
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L194:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L195:
	vmov.f64	d0, d1
	bx	lr
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.syntax unified
	.arm
	.type	fmaxf, %function
fmaxf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L201
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L200
	cmp	r0, #0
	vmovne.f32	s0, s1
	bx	lr
.L200:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	bx	lr
.L201:
	vmov.f32	s0, s1
	bx	lr
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.syntax unified
	.arm
	.type	fmaxl, %function
fmaxl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L207
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L206
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L206:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L207:
	vmov.f64	d0, d1
	bx	lr
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.syntax unified
	.arm
	.type	fmin, %function
fmin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L213
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L212
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L212:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L213:
	vmov.f64	d0, d1
	bx	lr
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.syntax unified
	.arm
	.type	fminf, %function
fminf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L219
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L218
	cmp	r0, #0
	vmoveq.f32	s0, s1
	bx	lr
.L218:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	bx	lr
.L219:
	vmov.f32	s0, s1
	bx	lr
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.syntax unified
	.arm
	.type	fminl, %function
fminl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L225
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L224
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L224:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L225:
	vmov.f64	d0, d1
	bx	lr
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.syntax unified
	.arm
	.type	l64a, %function
l64a:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	ldr	r3, .L233
	beq	.L229
	ldr	r1, .L233+4
.L230:
	and	r2, r0, #63
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	ip, [r3], #1
	bne	.L230
.L229:
	mov	r1, #0
	ldr	r0, .L233
	strb	r1, [r3]
	bx	lr
.L234:
	.align	2
.L233:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	l64a, .-l64a
	.align	2
	.global	srand
	.syntax unified
	.arm
	.type	srand, %function
srand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L236
	sub	r0, r0, #1
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	bx	lr
.L237:
	.align	2
.L236:
	.word	.LANCHOR0
	.size	srand, .-srand
	.align	2
	.global	rand
	.syntax unified
	.arm
	.type	rand, %function
rand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L240
	ldr	r0, .L240+4
	ldr	ip, [r2, #8]
	ldr	r1, .L240+8
	mul	r0, ip, r0
	ldr	r3, [r2, #12]
	str	lr, [sp, #-4]!
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r1, r3, #1
	adc	r0, r0, lr
	str	r0, [r2, #12]
	ldr	lr, [sp], #4
	lsr	r0, r0, #1
	str	r1, [r2, #8]
	bx	lr
.L241:
	.align	2
.L240:
	.word	.LANCHOR0
	.word	1481765933
	.word	1284865837
	.size	rand, .-rand
	.align	2
	.global	insque
	.syntax unified
	.arm
	.type	insque, %function
insque:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L248
	ldr	r3, [r1]
	str	r1, [r0, #4]
	str	r3, [r0]
	str	r0, [r1]
	ldr	r1, [r0]
	cmp	r1, #0
	strne	r0, [r1, #4]
	bx	lr
.L248:
	str	r1, [r0, #4]
	str	r1, [r0]
	bx	lr
	.size	insque, .-insque
	.align	2
	.global	remque
	.syntax unified
	.arm
	.type	remque, %function
remque:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #0
	ldrne	r2, [r0, #4]
	strne	r2, [r3, #4]
	ldr	r2, [r0, #4]
	cmp	r2, #0
	strne	r3, [r2]
	bx	lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [r2]
	sub	sp, sp, #12
	cmp	r6, #0
	mov	r10, r2
	mov	r7, r0
	mov	r5, r3
	ldr	r9, [sp, #48]
	str	r1, [sp, #4]
	beq	.L259
	mov	r4, r1
	mov	fp, #0
	b	.L261
.L274:
	cmp	r6, fp
	beq	.L259
.L261:
	mov	r1, r4
	mov	r0, r7
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	bne	.L274
.L258:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L259:
	ldr	r8, [sp, #4]
	add	r0, r6, #1
	cmp	r5, #0
	mla	r8, r6, r5, r8
	str	r0, [r10]
	beq	.L258
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	memmove
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.syntax unified
	.arm
	.type	lfind, %function
lfind:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, [r2]
	ldr	r8, [sp, #32]
	cmp	r7, #0
	beq	.L276
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	mov	r5, #0
	b	.L278
.L287:
	cmp	r7, r5
	beq	.L276
.L278:
	mov	r1, r4
	mov	r0, r6
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	mov	r10, r4
	add	r5, r5, #1
	add	r4, r4, r9
	bne	.L287
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L276:
	mov	r10, #0
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.syntax unified
	.arm
	.type	abs, %function
abs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	rsblt	r0, r0, #0
	bx	lr
	.size	abs, .-abs
	.align	2
	.global	atoi
	.syntax unified
	.arm
	.type	atoi, %function
atoi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L290
.L291:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L291
.L290:
	cmp	r3, #43
	beq	.L292
	cmp	r3, #45
	bne	.L314
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r4, #48
	cmp	r3, #9
	bhi	.L301
	mov	r4, #1
.L295:
	mov	r0, #0
.L298:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	mov	ip, r3
	rsb	r0, r3, r1, lsl #1
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	lr, r1, #1
	bls	.L298
	cmp	r4, #0
	subeq	r0, ip, lr
	pop	{r4, lr}
	bx	lr
.L314:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L301
.L313:
	mov	r4, #0
	b	.L295
.L292:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L313
.L301:
	pop	{r4, lr}
	mov	r0, #0
	bx	lr
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L316
.L317:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L317
.L316:
	cmp	r3, #43
	beq	.L318
	cmp	r3, #45
	bne	.L319
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	movls	r4, #1
	bhi	.L326
.L320:
	mov	r0, #0
.L323:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	mov	ip, r3
	rsb	r0, r3, r1, lsl #1
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	lr, r1, #1
	bls	.L323
	cmp	r4, #0
	subeq	r0, ip, lr
	pop	{r4, lr}
	bx	lr
.L319:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L326
.L336:
	mov	r4, #0
	b	.L320
.L318:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L336
.L326:
	pop	{r4, lr}
	mov	r0, #0
	bx	lr
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	ip, [r0]	@ zero_extendqisi2
	sub	r3, ip, #9
	cmp	ip, #32
	cmpne	r3, #4
	bhi	.L338
.L339:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	sub	r1, ip, #9
	cmp	ip, #32
	cmpne	r1, #4
	bls	.L339
.L338:
	cmp	ip, #43
	beq	.L340
	cmp	ip, #45
	bne	.L362
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r4, #48
	cmp	ip, #9
	bhi	.L349
	mov	r6, #1
.L343:
	mov	r0, #0
	mov	r4, r0
.L346:
	lsl	r5, r4, #2
	lsl	r7, r0, #2
	adds	r3, r7, r0
	orr	r0, r5, r0, lsr #30
	adc	r1, r4, r0
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	adds	r3, r3, r3
	adc	r1, r1, r1
	subs	r0, r3, ip
	sbc	r4, r1, ip, asr #31
	mov	r2, ip
	asr	r7, ip, #31
	sub	ip, r5, #48
	cmp	ip, #9
	bls	.L346
	cmp	r6, #0
	bne	.L337
	subs	r0, r2, r3
	sbc	r4, r7, r1
.L337:
	mov	r1, r4
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L362:
	sub	ip, ip, #48
	cmp	ip, #9
	movls	lr, r0
	bhi	.L349
.L361:
	mov	r6, #0
	b	.L343
.L340:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r2, #48
	cmp	ip, #9
	bls	.L361
.L349:
	mov	r0, #0
	mov	r4, r0
	mov	r1, r4
	pop	{r4, r5, r6, r7, lr}
	bx	lr
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.syntax unified
	.arm
	.type	bsearch, %function
bsearch:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r4, r2, #0
	ldr	r10, [sp, #32]
	beq	.L364
	mov	r9, r0
	mov	r7, r1
	mov	r8, r3
	b	.L367
.L374:
	beq	.L363
	sub	r4, r4, r5
	cmp	r4, #0
	add	r7, r6, r8
	beq	.L364
.L367:
	lsr	r5, r4, #1
	mla	r6, r8, r5, r7
	mov	r0, r9
	mov	r1, r6
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	sub	r4, r4, #1
	bge	.L374
	mov	r4, r5
	cmp	r4, #0
	bne	.L367
.L364:
	mov	r6, #0
.L363:
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.syntax unified
	.arm
	.type	bsearch_r, %function
bsearch_r:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r2, #0
	mov	r8, r0
	mov	r6, r1
	mov	r7, r3
	ldr	r9, [sp, #40]
	ldr	r10, [sp, #44]
	beq	.L380
.L388:
	asr	fp, r4, #1
	mla	r5, r7, fp, r6
	mov	r2, r10
	mov	r0, r8
	mov	r1, r5
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	sub	r4, r4, #1
	beq	.L375
	ble	.L378
	asrs	r4, r4, #1
	add	r6, r5, r7
	bne	.L388
.L380:
	mov	r5, #0
.L375:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L378:
	cmp	fp, #0
	beq	.L380
	mov	r4, fp
	b	.L388
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r2, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r2, [r4]
	pop	{r4, lr}
	bx	lr
	.size	div, .-div
	.align	2
	.global	imaxabs
	.syntax unified
	.arm
	.type	imaxabs, %function
imaxabs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asr	r3, r1, #31
	eor	r0, r0, r1, asr #31
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	bx	lr
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.syntax unified
	.arm
	.type	imaxdiv, %function
imaxdiv:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r4, r0
	mov	r1, r3
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r0, r6
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r6, r7, lr}
	bx	lr
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.syntax unified
	.arm
	.type	labs, %function
labs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	rsblt	r0, r0, #0
	bx	lr
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.syntax unified
	.arm
	.type	ldiv, %function
ldiv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r2, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r2, [r4]
	pop	{r4, lr}
	bx	lr
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.syntax unified
	.arm
	.type	llabs, %function
llabs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asr	r3, r1, #31
	eor	r0, r0, r1, asr #31
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	bx	lr
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.syntax unified
	.arm
	.type	lldiv, %function
lldiv:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r4, r0
	mov	r1, r3
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r0, r6
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r6, r7, lr}
	bx	lr
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.syntax unified
	.arm
	.type	wcschr, %function
wcschr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L406
.L403:
	cmp	r1, r3
	bxeq	lr
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	bne	.L403
.L406:
	mov	r0, r3
	bx	lr
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.syntax unified
	.arm
	.type	wcscmp, %function
wcscmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r1]
	cmp	r3, r2
	beq	.L413
	b	.L412
.L414:
	ldr	r3, [r0, #4]!
	ldr	r2, [r1, #4]!
	cmp	r3, r2
	bne	.L412
.L413:
	cmp	r3, #0
	bne	.L414
.L412:
	cmp	r3, r2
	bcc	.L416
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L416:
	mvn	r0, #0
	bx	lr
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.syntax unified
	.arm
	.type	wcscpy, %function
wcscpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r0, #4
.L418:
	ldr	r3, [r1], #4
	cmp	r3, #0
	str	r3, [r2, #4]!
	bne	.L418
	bx	lr
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.syntax unified
	.arm
	.type	wcslen, %function
wcslen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0
	ldr	r0, [r0]
	cmp	r0, #0
	bxeq	lr
	mov	r3, r1
.L423:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L423
	sub	r0, r3, r1
	asr	r0, r0, #2
	bx	lr
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.syntax unified
	.arm
	.type	wcsncmp, %function
wcsncmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L434
	push	{r4, lr}
	b	.L430
.L431:
	subs	r2, r2, #1
	beq	.L437
.L430:
	ldr	r3, [r1]
	mov	r4, r0
	ldr	ip, [r0], #4
	add	r1, r1, #4
	cmp	r3, ip
	moveq	lr, #1
	movne	lr, #0
	cmp	ip, #0
	moveq	lr, #0
	cmp	lr, #0
	bne	.L431
	ldr	r2, [r4]
	cmp	r2, r3
	bcs	.L433
	pop	{r4, lr}
	mvn	r0, #0
	bx	lr
.L433:
	movhi	r0, #1
	pop	{r4, lr}
	movls	r0, #0
	bx	lr
.L437:
	mov	r0, #0
	pop	{r4, lr}
	bx	lr
.L434:
	mov	r0, r2
	bx	lr
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.syntax unified
	.arm
	.type	wmemchr, %function
wmemchr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	beq	.L451
	mov	r3, r0
.L446:
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L446
.L451:
	mov	r0, #0
	bx	lr
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bne	.L455
	b	.L462
.L456:
	subs	r2, r2, #1
	beq	.L462
.L455:
	ldr	ip, [r0]
	ldr	r3, [r1]
	add	r0, r0, #4
	cmp	ip, r3
	add	r1, r1, #4
	beq	.L456
	bcc	.L465
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L462:
	mov	r0, #0
	bx	lr
.L465:
	mvn	r0, #0
	bx	lr
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	lslne	r2, r2, #2
	blne	memcpy
.L467:
	mov	r0, r4
	pop	{r4, lr}
	bx	lr
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bxeq	lr
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	push	{r4, r5, lr}
	lsl	ip, r2, #2
	mov	lr, r1
	bcc	.L474
	cmp	r2, #0
	beq	.L487
	sub	r3, r2, #1
	cmp	r3, #8
	addls	ip, r1, #4
	bls	.L478
	orr	r4, r1, r0
	add	ip, r1, #4
	subs	r5, r0, ip
	and	r4, r4, #7
	movne	r5, #1
	cmp	r4, #0
	movne	r5, #0
	cmp	r5, #0
	beq	.L478
	mov	ip, r0
	lsr	r3, r2, #1
.L479:
	vldmia.64	lr!, {d7}	@ int
	subs	r3, r3, #1
	vstmia.64	ip!, {d7}	@ int
	bne	.L479
	tst	r2, #1
	beq	.L487
	pop	{r4, r5, lr}
	bic	r2, r2, #1
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [r0, r2, lsl #2]
	bx	lr
.L474:
	cmp	r2, #0
	beq	.L487
	sub	r3, ip, #4
	lsr	lr, r3, #2
	add	r3, lr, #1
	cmp	r3, #2
	add	r1, r1, ip
	add	r2, r0, ip
	ble	.L502
	sub	r3, r3, #1
	ldr	ip, [r1, #-4]!
.L477:
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	ldr	ip, [r1, #-4]!
	bne	.L477
	str	ip, [r2, #-4]!
.L487:
	pop	{r4, r5, lr}
	bx	lr
.L502:
	ldr	r4, [r1, #-4]!
	subs	r3, r3, #1
	str	r4, [r2, #-4]!
	beq	.L487
	ldr	r4, [r1, #-4]!
	subs	r3, r3, #1
	str	r4, [r2, #-4]!
	bne	.L502
	b	.L487
.L478:
	sub	lr, r0, #4
	add	r5, r3, #1
.L482:
	ldr	r4, [ip, #-4]
	subs	r5, r5, #1
	add	ip, ip, #4
	str	r4, [lr, #4]!
	bne	.L482
	b	.L487
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.syntax unified
	.arm
	.type	wmemset, %function
wmemset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxeq	lr
	push	{r4, lr}
	sub	lr, r2, #1
	lsr	r3, r0, #2
	cmp	lr, #5
	and	ip, r3, #1
	bls	.L513
	mov	r4, r0
	cmp	ip, #0
	subne	lr, r2, #2
	sub	r2, r2, ip
	add	r3, r0, ip, lsl #2
	strne	r1, [r4], #4
	lsr	ip, r2, #1
.L511:
	subs	ip, ip, #1
	str	r1, [r3]
	str	r1, [r3, #4]
	add	r3, r3, #8
	bne	.L511
	tst	r2, #1
	beq	.L508
	bic	r2, r2, #1
	sub	lr, lr, r2
	add	r2, r4, r2, lsl #2
.L509:
	cmp	lr, #0
	str	r1, [r2]
	beq	.L508
	cmp	lr, #1
	str	r1, [r2, #4]
	beq	.L508
	cmp	lr, #2
	str	r1, [r2, #8]
	beq	.L508
	cmp	lr, #3
	str	r1, [r2, #12]
	beq	.L508
	cmp	lr, #4
	str	r1, [r2, #16]
	strne	r1, [r2, #20]
.L508:
	pop	{r4, lr}
	bx	lr
.L513:
	mov	r2, r0
	b	.L509
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bcs	.L542
	cmp	r2, #0
	add	r3, r0, r2
	add	r2, r1, r2
	bxeq	lr
	sub	r0, r3, r0
	cmp	r0, #2
	ble	.L577
	sub	r0, r0, #1
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
.L544:
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	bne	.L544
	strb	r1, [r2, #-1]!
	bx	lr
.L542:
	bxeq	lr
	cmp	r2, #0
	bxeq	lr
	sub	r3, r2, #1
	cmp	r3, #6
	push	{r4, r5, lr}
	addls	ip, r0, #1
	bls	.L545
	add	ip, r0, #1
	sub	lr, r1, ip
	orr	r4, r1, r0
	cmp	lr, #2
	and	r5, r4, #3
	movls	lr, #0
	movhi	lr, #1
	cmp	r5, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L545
	bic	r4, r2, #3
	sub	r3, r4, #4
	lsr	lr, r3, #2
	add	r3, lr, #1
	cmp	r3, #2
	sub	ip, r0, #4
	lsr	r5, r2, #2
	ble	.L578
	sub	r3, r3, #1
	ldr	lr, [ip, #4]!
.L546:
	subs	r3, r3, #1
	str	lr, [r1], #4
	ldr	lr, [ip, #4]!
	bne	.L546
	str	lr, [r1], #4
.L579:
	cmp	r2, r4
	add	ip, r0, r4
	sub	r2, r2, r4
	beq	.L541
	ldrb	r0, [r0, r5, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r0, [r1]
	beq	.L541
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r4, [r1, #1]
	ldrbne	r5, [ip, #2]	@ zero_extendqisi2
	strbne	r5, [r1, #2]
.L541:
	pop	{r4, r5, lr}
	bx	lr
.L577:
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	bne	.L577
	bx	lr
.L578:
	ldr	lr, [ip, #4]!
	subs	r3, r3, #1
	str	lr, [r1], #4
	beq	.L579
	ldr	lr, [ip, #4]!
	subs	r3, r3, #1
	str	lr, [r1], #4
	bne	.L578
	b	.L579
.L545:
	add	r3, r0, r2
	sub	lr, r3, ip
	sub	r1, r1, #1
	add	r0, lr, #1
.L549:
	ldrb	r2, [ip, #-1]	@ zero_extendqisi2
	subs	r0, r0, #1
	add	ip, ip, #1
	strb	r2, [r1, #1]!
	bne	.L549
	b	.L541
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r1
	push	{r4, lr}
	lsl	r1, r1, r2
	sub	r4, r2, #32
	orr	r4, r1, r0, lsl r4
	rsb	lr, r2, #32
	rsb	r3, r2, #0
	and	r3, r3, #63
	orr	lr, r4, r0, lsr lr
	orr	r1, lr, ip, lsr r3
	rsb	r4, r3, #32
	lsr	lr, r0, r3
	orr	r4, lr, ip, lsl r4
	sub	r3, r3, #32
	orr	ip, r4, ip, lsr r3
	pop	{r4, lr}
	orr	r0, ip, r0, lsl r2
	bx	lr
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r0
	push	{r4, lr}
	lsr	r0, r0, r2
	rsb	r4, r2, #32
	orr	r4, r0, r1, lsl r4
	sub	lr, r2, #32
	rsb	r3, r2, #0
	and	r3, r3, #63
	orr	lr, r4, r1, lsr lr
	orr	r0, lr, ip, lsl r3
	sub	r4, r3, #32
	lsl	lr, r1, r3
	orr	r4, lr, ip, lsl r4
	rsb	r3, r3, #32
	orr	ip, r4, ip, lsr r3
	pop	{r4, lr}
	orr	r1, ip, r1, lsr r2
	bx	lr
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.syntax unified
	.arm
	.type	rotl32, %function
rotl32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, #32
	ror	r0, r0, r1
	bx	lr
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.syntax unified
	.arm
	.type	rotr32, %function
rotr32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ror	r0, r0, r1
	bx	lr
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.syntax unified
	.arm
	.type	rotl_sz, %function
rotl_sz:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, #32
	ror	r0, r0, r1
	bx	lr
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.syntax unified
	.arm
	.type	rotr_sz, %function
rotr_sz:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ror	r0, r0, r1
	bx	lr
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.syntax unified
	.arm
	.type	rotl16, %function
rotl16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r2, r3, #15
	lsr	ip, r0, r2
	orr	r0, ip, r0, lsl r1
	lsl	r1, r0, #16
	lsr	r0, r1, #16
	bx	lr
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.syntax unified
	.arm
	.type	rotr16, %function
rotr16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r2, r3, #15
	lsl	ip, r0, r2
	orr	r0, ip, r0, lsr r1
	lsl	r1, r0, #16
	lsr	r0, r1, #16
	bx	lr
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.syntax unified
	.arm
	.type	rotl8, %function
rotl8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r2, r3, #7
	lsr	ip, r0, r2
	orr	r0, ip, r0, lsl r1
	and	r0, r0, #255
	bx	lr
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.syntax unified
	.arm
	.type	rotr8, %function
rotr8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r2, r3, #7
	lsl	ip, r0, r2
	orr	r0, ip, r0, lsr r1
	and	r0, r0, #255
	bx	lr
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.syntax unified
	.arm
	.type	bswap_16, %function
bswap_16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r3, r0, #8
	orr	r0, r3, r0, lsr #8
	lsl	r1, r0, #16
	lsr	r0, r1, #16
	bx	lr
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.syntax unified
	.arm
	.type	bswap_32, %function
bswap_32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r0, r0, ror #16
	lsr	r1, r3, #8
	bic	r2, r1, #65280
	eor	r0, r2, r0, ror #8
	bx	lr
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.syntax unified
	.arm
	.type	bswap_64, %function
bswap_64:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	eor	ip, r1, r1, ror #16
	lsr	r0, r3, #8
	lsr	ip, ip, #8
	bic	r3, r0, #65280
	bic	r0, ip, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
	bx	lr
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.syntax unified
	.arm
	.type	ffs, %function
ffs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #32
	b	.L602
.L600:
	subs	r1, r1, #1
	beq	.L604
.L602:
	lsr	r3, r0, r2
	ands	ip, r3, #1
	add	r2, r2, #1
	beq	.L600
	mov	r0, r2
	bx	lr
.L604:
	mov	r0, ip
	bx	lr
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.syntax unified
	.arm
	.type	libiberty_ffs, %function
libiberty_ffs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L608
	ands	r0, r3, #1
	bxne	lr
	mov	r0, #1
.L607:
	asr	r3, r3, #1
	tst	r3, #1
	add	r0, r0, #1
	beq	.L607
	bx	lr
.L608:
	mov	r0, r3
	bx	lr
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.syntax unified
	.arm
	.type	gl_isinff, %function
gl_isinff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L615
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L614
	vldr.32	s1, .L615+4
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L614:
	mov	r0, #1
	bx	lr
.L616:
	.align	2
.L615:
	.word	-8388609
	.word	2139095039
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.syntax unified
	.arm
	.type	gl_isinfd, %function
gl_isinfd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L620
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L619
	vldr.64	d1, .L620+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L619:
	mov	r0, #1
	bx	lr
.L621:
	.align	3
.L620:
	.word	-1
	.word	-1048577
	.word	-1
	.word	2146435071
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.syntax unified
	.arm
	.type	gl_isinfl, %function
gl_isinfl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L625
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L624
	vldr.64	d1, .L625+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L624:
	mov	r0, #1
	bx	lr
.L626:
	.align	3
.L625:
	.word	-1
	.word	-1048577
	.word	-1
	.word	2146435071
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.syntax unified
	.arm
	.type	_Qp_itoq, %function
_Qp_itoq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s14, r1	@ int
	vcvt.f64.s32	d0, s14
	vstr.64	d0, [r0]
	bx	lr
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.syntax unified
	.arm
	.type	ldexpf, %function
ldexpf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vadd.f32	s15, s0, s0
	vcmp.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	bxeq	lr
	vmov.f32	s1, #2.0e+0
	vmov.f32	s14, #5.0e-1
	cmp	r0, #0
	vmovlt.f32	s1, s14
	tst	r0, #1
	beq	.L631
.L632:
	vmul.f32	s0, s0, s1
.L631:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L632
.L641:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L632
	b	.L641
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.syntax unified
	.arm
	.type	ldexp, %function
ldexp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vadd.f64	d7, d0, d0
	vcmp.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	bxeq	lr
	vmov.f64	d1, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d1, d6
	tst	r0, #1
	beq	.L645
.L646:
	vmul.f64	d0, d0, d1
.L645:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L646
.L655:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L646
	b	.L655
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.syntax unified
	.arm
	.type	ldexpl, %function
ldexpl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bxeq	lr
	vmov.f64	d1, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d1, d6
	tst	r0, #1
	beq	.L659
.L660:
	vmul.f64	d0, d0, d1
.L659:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L660
.L669:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L660
	b	.L669
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r4, r2, #0
	beq	.L671
	sub	r3, r4, #1
	cmp	r3, #3
	bls	.L672
	orr	r2, r0, r1
	tst	r2, #3
	bne	.L672
	mov	lr, r0
	bic	r5, r4, #3
	sub	ip, r5, #4
	lsr	r7, ip, #2
	add	ip, r7, #1
	sub	r2, r1, #4
	lsr	r6, r4, #2
	add	r7, r0, r5
.L673:
	ldr	r8, [lr]
	ldr	r3, [r2, #4]!
	subs	ip, ip, #1
	eor	r3, r3, r8
	str	r3, [lr], #4
	bne	.L673
	cmp	r5, r4
	add	lr, r1, r5
	sub	r4, r4, r5
	beq	.L671
	ldrb	r2, [r0, r6, lsl #2]	@ zero_extendqisi2
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r4, #1
	eor	r2, r2, r1
	strb	r2, [r0, r6, lsl #2]
	beq	.L671
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	ldrb	r5, [lr, #1]	@ zero_extendqisi2
	cmp	r4, #2
	eor	r5, r5, r6
	strb	r5, [r7, #1]
	ldrbne	ip, [r7, #2]	@ zero_extendqisi2
	ldrbne	r3, [lr, #2]	@ zero_extendqisi2
	eorne	r3, r3, ip
	strbne	r3, [r7, #2]
.L671:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L672:
	mov	r7, r0
	mov	lr, r4
.L675:
	ldrb	r8, [r7], #1	@ zero_extendqisi2
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	subs	lr, lr, #1
	eor	r4, r4, r8
	strb	r4, [r7, #-1]
	bne	.L675
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	mov	r3, r0
	beq	.L690
.L691:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L691
.L690:
	cmp	r2, #0
	beq	.L692
	sub	r1, r1, #1
.L693:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	strb	ip, [r3], #1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L693
.L692:
	mov	r2, #0
	strb	r2, [r3]
	bx	lr
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.type	strnlen, %function
strnlen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	mov	r3, r0
	beq	.L707
	mov	r0, #0
	sub	ip, r3, #1
.L705:
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bxeq	lr
	subs	r1, r1, #1
	add	r0, r0, #1
	bne	.L705
	bx	lr
.L707:
	mov	r0, r1
	bx	lr
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.syntax unified
	.arm
	.type	strpbrk, %function
strpbrk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L716
	sub	r1, r1, #1
.L712:
	mov	r2, r1
	b	.L715
.L714:
	cmp	r3, ip
	bxeq	lr
.L715:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L714
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L712
.L716:
	mov	r0, ip
	bx	lr
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.syntax unified
	.arm
	.type	strrchr, %function
strrchr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r0, #0
.L720:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, r1
	moveq	r0, r3
	cmp	r2, #0
	add	r3, r3, #1
	bne	.L720
	bx	lr
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrb	r4, [r1]	@ zero_extendqisi2
	mov	r2, r0
	cmp	r4, #0
	beq	.L734
	mov	r6, r1
	mov	r3, r1
.L725:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L725
	subs	r0, r3, r6
	beq	.L734
	sub	r5, r6, #1
	add	r5, r5, r0
	b	.L732
.L739:
	cmp	r3, #0
	beq	.L738
.L732:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r4
	add	r2, r2, #1
	bne	.L739
	mov	lr, r6
	mov	ip, r4
	mov	r1, r0
	b	.L727
.L730:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L740
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
.L727:
	subs	r2, ip, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	r5, lr
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L730
.L729:
	cmp	r3, ip
	beq	.L723
	add	r2, r0, #1
	b	.L732
.L738:
	mov	r0, r3
.L723:
	pop	{r4, r5, r6, lr}
	bx	lr
.L740:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	b	.L729
.L734:
	mov	r0, r2
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.syntax unified
	.arm
	.type	copysign, %function
copysign:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L751
	bxle	lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bxpl	lr
	vneg.f64	d0, d0
	bx	lr
.L751:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bxle	lr
	vneg.f64	d0, d0
	bx	lr
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.syntax unified
	.arm
	.type	memmem, %function
memmem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r7, r3, #0
	beq	.L752
	cmp	r1, r7
	bcc	.L763
	sub	r1, r1, r7
	adds	r6, r0, r1
	bcs	.L763
	ldrb	r8, [r2]	@ zero_extendqisi2
	b	.L758
.L754:
	cmp	r6, r0
	bcc	.L763
.L758:
	mov	ip, r0
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	cmp	r3, r8
	movne	r0, ip
	bne	.L754
	cmp	r7, #1
	beq	.L752
.L757:
	mov	r3, r2
	sub	lr, ip, #1
	sub	r1, r7, #1
	b	.L755
.L756:
	subs	r1, r1, #1
	beq	.L752
.L755:
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	cmp	r5, r4
	beq	.L756
	cmp	r6, ip
	bcc	.L763
	mov	r0, ip
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	cmp	r8, lr
	bne	.L754
	mov	r1, ip
	mov	ip, r0
	mov	r0, r1
	b	.L757
.L763:
	mov	r0, #0
.L752:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r2, #0
	mov	r5, r0
	blne	memmove
.L776:
	add	r0, r5, r4
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.syntax unified
	.arm
	.type	frexp, %function
frexp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L803
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movge	r2, #0
	blt	.L804
.L784:
	mov	r1, #0
	vmov.f64	d5, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L790:
	vmul.f64	d0, d0, d5
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r1, r1, #1
	bge	.L790
.L791:
	cmp	r2, #0
	vnegne.f64	d0, d0
	str	r1, [r0]
	bx	lr
.L804:
	vmov.f64	d1, #5.0e-1
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L787
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L796
.L787:
	mov	r3, #0
	str	r3, [r0]
	bx	lr
.L803:
	vmov.f64	d2, #-1.0e+0
	vcmpe.f64	d0, d2
	vneg.f64	d6, d0
	vmrs	APSR_nzcv, FPSCR
	vmovls.f64	d0, d6
	movls	r2, #1
	bls	.L784
	vmov.f64	d3, #-5.0e-1
	vcmpe.f64	d0, d3
	vmrs	APSR_nzcv, FPSCR
	ble	.L787
	mov	r2, #1
.L785:
	vmov.f64	d0, d6
	mov	r1, #0
	vmov.f64	d4, #5.0e-1
.L792:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d4
	vmrs	APSR_nzcv, FPSCR
	sub	r1, r1, #1
	bmi	.L792
	b	.L791
.L796:
	vmov.f64	d6, d0
	mov	r2, #0
	b	.L785
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, r1
	orrs	r1, r5, r0
	beq	.L808
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
.L807:
	ands	ip, r4, #1
	mvnne	ip, #0
	mov	lr, ip
	and	ip, ip, r2
	adds	r0, ip, r0
	and	lr, lr, r3
	lsr	r4, r4, #1
	orr	r4, r4, r5, lsl #31
	adc	r1, r1, lr
	lsr	r5, r5, #1
	adds	r2, r2, r2
	adc	r3, r3, r3
	orrs	ip, r4, r5
	bne	.L807
	pop	{r4, r5, lr}
	bx	lr
.L808:
	mov	r0, #0
	pop	{r4, r5, lr}
	mov	r1, r0
	bx	lr
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.syntax unified
	.arm
	.type	udivmodsi4, %function
udivmodsi4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	movcc	r3, #1
	bcc	.L812
	b	.L832
.L815:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L833
.L812:
	cmp	r1, #0
	bge	.L815
.L816:
	mov	ip, #0
	push	{r4, lr}
.L818:
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L818
	pop	{r4, lr}
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L833:
	cmp	r3, #0
	bne	.L816
	mov	ip, r3
.L830:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L832:
	sub	r1, r0, r1
	movls	ip, #1
	movhi	ip, #0
	movls	r0, r1
	b	.L830
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L836
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	pop	{r4, lr}
	sub	r0, r0, #1
	bx	lr
.L836:
	mov	r0, #7
	bx	lr
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	asr	r2, r1, #31
	cmp	r1, r2
	cmpeq	r3, r2
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	beq	.L843
	push	{r4, lr}
	bl	__clzdi2
	pop	{r4, lr}
	sub	r0, r0, #1
	bx	lr
.L843:
	mov	r0, #63
	bx	lr
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.syntax unified
	.arm
	.type	__mulsi3, %function
__mulsi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L851
	mov	r0, #0
.L850:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L850
	bx	lr
.L851:
	mov	r0, r3
	bx	lr
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r3, r2, #3
	bic	r4, r2, #7
	bcc	.L858
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L894
.L858:
	cmp	r3, #0
	beq	.L895
	mov	lr, r1
	mov	ip, r0
	lsl	r5, r3, #3
	sub	r6, r5, #8
	lsr	r7, r6, #3
	add	r3, r7, #1
.L861:
	vldmia.64	lr!, {d7}	@ int
	subs	r3, r3, #1
	vstmia.64	ip!, {d7}	@ int
	bne	.L861
	cmp	r2, r4
	bls	.L854
	sub	r7, r2, r4
	sub	r5, r7, #1
	cmp	r5, #6
	bls	.L863
	add	ip, r4, #1
	add	lr, r0, r4
	add	r3, r1, ip
	add	r6, r1, r4
	sub	ip, lr, r3
	orr	r5, r6, lr
	cmp	ip, #2
	and	r3, r5, #3
	movls	ip, #0
	movhi	ip, #1
	cmp	r3, #0
	movne	ip, #0
	cmp	ip, #0
	beq	.L863
	sub	ip, r6, #4
	bic	r6, r7, #3
	sub	r5, r6, #4
	lsr	r3, r5, #2
	add	r3, r3, #1
	cmp	r3, #2
	ble	.L889
	sub	r3, r3, #1
	ldr	r5, [ip, #4]!
.L864:
	subs	r3, r3, #1
	str	r5, [lr], #4
	ldr	r5, [ip, #4]!
	bne	.L864
	str	r5, [lr], #4
.L890:
	cmp	r7, r6
	add	r4, r4, r6
	beq	.L854
	ldrb	r7, [r1, r4]	@ zero_extendqisi2
	add	lr, r4, #1
	cmp	r2, lr
	strb	r7, [r0, r4]
	bls	.L854
	add	r6, r4, #2
	cmp	r2, r6
	ldrb	r2, [r1, lr]	@ zero_extendqisi2
	strb	r2, [r0, lr]
	ldrbhi	r1, [r1, r6]	@ zero_extendqisi2
	strbhi	r1, [r0, r6]
.L854:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L889:
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	beq	.L890
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	bne	.L889
	b	.L890
.L894:
	cmp	r2, #0
	beq	.L854
	sub	r1, ip, r1
	cmp	r1, #2
	mov	r3, ip
	add	r0, r0, r2
	ble	.L892
	sub	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L868:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L868
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L892:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	beq	.L854
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L892
	b	.L854
.L895:
	cmp	r2, #0
	beq	.L854
.L863:
	sub	r5, r4, #1
	sub	r3, r1, #1
	add	ip, r1, r5
	add	r7, r3, r2
	sub	r3, r7, ip
	cmp	r3, #2
	add	r4, r0, r5
	ble	.L891
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L866:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L866
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L891:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	beq	.L854
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L891
	b	.L854
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r5, r2, #1
	bcc	.L900
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L933
.L900:
	cmp	r5, #0
	beq	.L899
	sub	r3, r5, #1
	cmp	r3, #8
	bls	.L903
	orr	ip, r1, r0
	add	r6, r1, #2
	subs	r7, r0, r6
	and	r4, ip, #3
	movne	r7, #1
	cmp	r4, #0
	movne	r7, #0
	cmp	r7, #0
	beq	.L903
	bic	r6, r2, #3
	sub	r3, r6, #4
	lsr	r4, r3, #2
	add	r3, r4, #1
	cmp	r3, #2
	mov	ip, r0
	lsr	r7, r2, #2
	sub	lr, r1, #4
	ble	.L928
	sub	r3, r3, #1
	ldr	r4, [lr, #4]!
.L904:
	subs	r3, r3, #1
	str	r4, [ip], #4
	ldr	r4, [lr, #4]!
	bne	.L904
	str	r4, [ip], #4
.L929:
	cmp	r5, r7, lsl #1
	ldrshne	r5, [r1, r6]
	strhne	r5, [r0, r6]	@ movhi
.L899:
	tst	r2, #1
	beq	.L896
.L934:
	sub	r2, r2, #1
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	strb	r1, [r0, r2]
.L896:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L928:
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	beq	.L929
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	bne	.L928
	b	.L929
.L933:
	cmp	r2, #0
	beq	.L896
	sub	r1, r3, r1
	cmp	r1, #2
	add	r2, r0, r2
	ble	.L931
	sub	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L909:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L909
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L931:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	beq	.L896
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L931
	b	.L896
.L903:
	lsl	ip, r5, #1
	sub	r6, ip, #2
	lsr	r7, r6, #1
	add	r3, r7, #1
	cmp	r3, #2
	sub	lr, r1, #2
	sub	ip, r0, #2
	ble	.L930
	sub	r3, r3, #1
	ldrsh	r4, [lr, #2]!
.L906:
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	ldrsh	r4, [lr, #2]!
	bne	.L906
	strh	r4, [ip, #2]!	@ movhi
	tst	r2, #1
	beq	.L896
	b	.L934
.L930:
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	beq	.L899
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	bne	.L930
	b	.L899
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r5, r2, #2
	bic	r4, r2, #3
	bcc	.L940
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L981
.L940:
	cmp	r5, #0
	beq	.L982
	sub	r3, r5, #1
	cmp	r3, #8
	bls	.L942
	orr	ip, r0, r1
	add	r7, r1, #4
	subs	lr, r0, r7
	and	r6, ip, #7
	movne	lr, #1
	cmp	r6, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L942
	mov	r7, r1
	mov	ip, r0
	bic	r3, r2, #7
	sub	r6, r3, #8
	lsr	lr, r6, #3
	add	r3, lr, #1
	lsr	r6, r2, #3
.L943:
	vldmia.64	r7!, {d7}	@ int
	subs	r3, r3, #1
	vstmia.64	ip!, {d7}	@ int
	bne	.L943
	cmp	r5, r6, lsl #1
	ldrne	r5, [r1, r6, lsl #3]
	strne	r5, [r0, r6, lsl #3]
.L946:
	cmp	r2, r4
	bls	.L935
	sub	r7, r2, r4
	sub	r3, r7, #1
	cmp	r3, #6
	bls	.L938
	add	r5, r4, #1
	add	r6, r1, r5
	add	lr, r0, r4
	add	ip, r1, r4
	sub	r3, lr, r6
	orr	r5, ip, lr
	cmp	r3, #2
	and	r6, r5, #3
	movls	r3, #0
	movhi	r3, #1
	cmp	r6, #0
	movne	r3, #0
	cmp	r3, #0
	beq	.L938
	bic	r6, r7, #3
	sub	r3, r6, #4
	lsr	r5, r3, #2
	add	r3, r5, #1
	cmp	r3, #2
	sub	ip, ip, #4
	ble	.L976
	sub	r3, r3, #1
	ldr	r5, [ip, #4]!
.L947:
	subs	r3, r3, #1
	str	r5, [lr], #4
	ldr	r5, [ip, #4]!
	bne	.L947
	str	r5, [lr], #4
.L977:
	cmp	r7, r6
	add	r4, r4, r6
	beq	.L935
	ldrb	r7, [r1, r4]	@ zero_extendqisi2
	add	lr, r4, #1
	cmp	r2, lr
	strb	r7, [r0, r4]
	bls	.L935
	add	ip, r4, #2
	cmp	r2, ip
	ldrb	r2, [r1, lr]	@ zero_extendqisi2
	strb	r2, [r0, lr]
	ldrbhi	r1, [r1, ip]	@ zero_extendqisi2
	strbhi	r1, [r0, ip]
.L935:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L976:
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	beq	.L977
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	bne	.L976
	b	.L977
.L981:
	cmp	r2, #0
	beq	.L935
	sub	r1, r3, r1
	cmp	r1, #2
	add	r2, r0, r2
	ble	.L979
	sub	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L951:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L951
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L979:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	beq	.L935
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L979
	b	.L935
.L942:
	lsl	r7, r5, #2
	sub	ip, r7, #4
	lsr	lr, ip, #2
	add	r3, lr, #1
	cmp	r3, #2
	sub	lr, r1, #4
	sub	ip, r0, #4
	ble	.L975
	sub	r3, r3, #1
	ldr	r5, [lr, #4]!
.L945:
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	ldr	r5, [lr, #4]!
	bne	.L945
	str	r5, [ip, #4]!
	b	.L946
.L975:
	ldr	r6, [lr, #4]!
	subs	r3, r3, #1
	str	r6, [ip, #4]!
	beq	.L946
	ldr	r6, [lr, #4]!
	subs	r3, r3, #1
	str	r6, [ip, #4]!
	bne	.L975
	b	.L946
.L982:
	cmp	r2, #0
	beq	.L935
.L938:
	sub	r6, r4, #1
	sub	r3, r1, #1
	add	ip, r1, r6
	add	r5, r3, r2
	sub	r3, r5, ip
	cmp	r3, #2
	add	r4, r0, r6
	ble	.L978
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L949:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L949
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L978:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	beq	.L935
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L978
	b	.L935
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.syntax unified
	.arm
	.type	__modi, %function
__modi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_idivmod
	pop	{r4, lr}
	mov	r0, r1
	bx	lr
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.syntax unified
	.arm
	.type	__uitod, %function
__uitod:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s0, r0	@ int
	vcvt.f64.u32	d0, s0
	bx	lr
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.syntax unified
	.arm
	.type	__uitof, %function
__uitof:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s0, r0	@ int
	vcvt.f32.u32	s0, s0
	bx	lr
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.syntax unified
	.arm
	.type	__ulltod, %function
__ulltod:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_ul2d
	pop	{r4, lr}
	vmov	d0, r0, r1
	bx	lr
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.syntax unified
	.arm
	.type	__ulltof, %function
__ulltof:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_ul2f
	pop	{r4, lr}
	vmov	s0, r0
	bx	lr
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.syntax unified
	.arm
	.type	__umodi, %function
__umodi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_uidivmod
	pop	{r4, lr}
	mov	r0, r1
	bx	lr
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.syntax unified
	.arm
	.type	__clzhi2, %function
__clzhi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r0, #15
	mov	r3, r0
	bne	.L996
	asrs	r0, r0, #14
	bxne	lr
	lsrs	r2, r3, #13
	bne	.L997
	lsrs	r2, r3, #12
	bne	.L998
	lsrs	r2, r3, #11
	bne	.L999
	lsrs	r2, r3, #10
	bne	.L1000
	lsrs	r2, r3, #9
	bne	.L1001
	lsrs	r2, r3, #8
	bne	.L1002
	lsrs	r2, r3, #7
	bne	.L1003
	lsrs	r2, r3, #6
	bne	.L1004
	lsrs	r2, r3, #5
	bne	.L1005
	lsrs	r2, r3, #4
	bne	.L1006
	lsrs	r2, r3, #3
	bne	.L1007
	lsrs	r2, r3, #2
	bne	.L1008
	lsrs	r2, r3, #1
	bne	.L1009
	cmp	r3, #0
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L996:
	mov	r0, #0
	bx	lr
.L1007:
	mov	r0, #12
	bx	lr
.L997:
	mov	r0, #2
	bx	lr
.L998:
	mov	r0, #3
	bx	lr
.L999:
	mov	r0, #4
	bx	lr
.L1000:
	mov	r0, #5
	bx	lr
.L1001:
	mov	r0, #6
	bx	lr
.L1002:
	mov	r0, #7
	bx	lr
.L1003:
	mov	r0, #8
	bx	lr
.L1004:
	mov	r0, #9
	bx	lr
.L1005:
	mov	r0, #10
	bx	lr
.L1006:
	mov	r0, #11
	bx	lr
.L1008:
	mov	r0, #13
	bx	lr
.L1009:
	mov	r0, #14
	bx	lr
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.syntax unified
	.arm
	.type	__ctzhi2, %function
__ctzhi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	bne	.L1014
	tst	r0, #2
	bne	.L1015
	tst	r0, #4
	bne	.L1016
	tst	r0, #8
	bne	.L1017
	tst	r0, #16
	bne	.L1018
	tst	r0, #32
	bne	.L1019
	tst	r0, #64
	bne	.L1020
	tst	r0, #128
	bne	.L1021
	tst	r0, #256
	bne	.L1022
	tst	r0, #512
	bne	.L1023
	tst	r0, #1024
	bne	.L1024
	tst	r0, #2048
	bne	.L1025
	tst	r0, #4096
	bne	.L1026
	tst	r0, #8192
	bne	.L1027
	tst	r0, #16384
	bne	.L1028
	lsrs	r0, r0, #15
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L1014:
	mov	r0, #0
	bx	lr
.L1015:
	mov	r0, #1
	bx	lr
.L1026:
	mov	r0, #12
	bx	lr
.L1016:
	mov	r0, #2
	bx	lr
.L1017:
	mov	r0, #3
	bx	lr
.L1018:
	mov	r0, #4
	bx	lr
.L1019:
	mov	r0, #5
	bx	lr
.L1020:
	mov	r0, #6
	bx	lr
.L1021:
	mov	r0, #7
	bx	lr
.L1022:
	mov	r0, #8
	bx	lr
.L1023:
	mov	r0, #9
	bx	lr
.L1024:
	mov	r0, #10
	bx	lr
.L1025:
	mov	r0, #11
	bx	lr
.L1027:
	mov	r0, #13
	bx	lr
.L1028:
	mov	r0, #14
	bx	lr
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.syntax unified
	.arm
	.type	__fixunssfsi, %function
__fixunssfsi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L1036
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	bx	lr
.L1037:
	.align	2
.L1036:
	.word	1191182336
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.syntax unified
	.arm
	.type	__parityhi2, %function
__parityhi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r2, r0, #30
	and	r3, r0, #1
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #29
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #28
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #27
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #26
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #25
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #24
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #23
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #22
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #21
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #20
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #19
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #18
	lsl	ip, r0, #17
	add	r1, r3, r2, lsr #31
	add	r3, r1, ip, lsr #31
	add	r0, r3, r0, lsr #15
	and	r0, r0, #1
	bx	lr
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.syntax unified
	.arm
	.type	__popcounthi2, %function
__popcounthi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r2, r0, #30
	and	r3, r0, #1
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #29
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #28
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #27
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #26
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #25
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #24
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #23
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #22
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #21
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #20
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #19
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #18
	lsl	ip, r0, #17
	add	r1, r3, r2, lsr #31
	add	r3, r1, ip, lsr #31
	add	r0, r3, r0, lsr #15
	bx	lr
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.syntax unified
	.arm
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L1043
	mov	r0, #0
.L1042:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L1042
	bx	lr
.L1043:
	mov	r0, r3
	bx	lr
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.syntax unified
	.arm
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #0
	beq	.L1049
	cmp	r1, #0
	beq	.L1050
	mov	r0, #0
.L1048:
	ands	r3, r1, #1
	mvnne	r3, #0
	lsrs	r1, r1, #1
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L1048
	bx	lr
.L1049:
	mov	r0, r2
	bx	lr
.L1050:
	mov	r0, r1
	bx	lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.syntax unified
	.arm
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	movhi	r3, #1
	bhi	.L1054
	b	.L1074
.L1057:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1075
.L1054:
	cmp	r1, #0
	bge	.L1057
.L1058:
	mov	ip, #0
	push	{r4, lr}
.L1060:
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L1060
	pop	{r4, lr}
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1075:
	cmp	r3, #0
	bne	.L1058
	mov	ip, r3
.L1072:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1074:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1072
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.syntax unified
	.arm
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L1078
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1078:
	mvn	r0, #0
	bx	lr
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.syntax unified
	.arm
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L1081
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1081:
	mvn	r0, #0
	bx	lr
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.syntax unified
	.arm
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r2, r1
	smull	r0, r1, r3, r2
	bx	lr
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.syntax unified
	.arm
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r2, r1
	umull	r0, r1, r3, r2
	bx	lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.syntax unified
	.arm
	.type	__mulhi3, %function
__mulhi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	rsblt	r1, r1, #0
	mov	lr, r0
	movlt	r4, #1
	blt	.L1086
	moveq	r0, r1
	beq	.L1084
	mov	r4, #0
.L1086:
	mov	r0, #0
	mov	r3, r0
.L1088:
	ands	ip, r1, #1
	mvnne	ip, #0
	asrs	r1, r1, #1
	movne	r2, #1
	moveq	r2, #0
	add	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #32
	moveq	r2, #0
	andne	r2, r2, #1
	and	ip, ip, lr
	cmp	r2, #0
	add	r0, r0, ip
	lsl	lr, lr, #1
	bne	.L1088
	cmp	r4, #0
	rsbne	r0, r0, #0
.L1084:
	pop	{r4, lr}
	bx	lr
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.syntax unified
	.arm
	.type	__divsi3, %function
__divsi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0
	movlt	r3, #0
	push	{r4, lr}
	rsblt	ip, ip, #0
	movlt	r4, #1
	movge	r3, #1
	movge	r4, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	r4, r3
	cmp	ip, r1
	mov	r2, ip
	movhi	r3, #1
	bls	.L1118
.L1098:
	lsls	r3, r3, #1
	movne	r0, #1
	moveq	r0, #0
	lsl	r1, r1, #1
	cmp	ip, r1
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	bne	.L1098
	cmp	r3, #0
	moveq	r0, r3
	beq	.L1101
.L1100:
	cmp	r2, r1
	movcc	ip, #0
	movcs	ip, #1
	cmp	ip, #0
	movne	ip, r3
	moveq	ip, #0
	sub	lr, r2, r1
	movne	r2, lr
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	r0, r0, ip
	bne	.L1100
.L1101:
	cmp	r4, #0
	pop	{r4, lr}
	rsbne	r0, r0, #0
	bx	lr
.L1118:
	movcs	r0, #1
	movcc	r0, #0
	b	.L1101
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0
	eor	r3, r1, r1, asr #31
	rsblt	ip, ip, #0
	sub	r3, r3, r1, asr #31
	str	lr, [sp, #-4]!
	movlt	lr, #1
	movge	lr, #0
	cmp	ip, r3
	mov	r0, ip
	movhi	r2, #1
	bls	.L1143
.L1121:
	lsls	r2, r2, #1
	movne	r1, #1
	moveq	r1, #0
	lsl	r3, r3, #1
	cmp	ip, r3
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	bne	.L1121
	cmp	r2, #0
	moveq	r0, ip
	beq	.L1124
.L1123:
	cmp	r0, r3
	sub	ip, r0, r3
	movcs	r0, ip
	lsrs	r2, r2, #1
	lsr	r3, r3, #1
	bne	.L1123
.L1124:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L1143:
	sub	r1, ip, r3
	movcs	r0, r1
	b	.L1124
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	movcc	lr, #1
	bcc	.L1145
	b	.L1203
.L1148:
	cmp	r3, #0
	cmpne	r4, r5
	lsr	ip, ip, #16
	lsr	r3, r3, #16
	bcs	.L1147
	mov	lr, r3
	mov	r1, ip
.L1145:
	lsl	ip, r1, #17
	tst	r1, #32768
	lsl	r3, lr, #17
	lsr	r4, ip, #16
	beq	.L1148
	sub	r0, r5, r1
	cmp	r5, r1
	lsl	r3, r0, #16
	lsr	r0, r3, #16
	movcc	r0, r5
	cmp	r5, r1
	movcs	r6, lr
	movcc	r6, #0
	lsr	r5, lr, #1
	lsl	r4, r5, #16
	lsr	r5, r4, #16
	lsl	r6, r6, #16
	cmp	r5, #0
	lsr	r4, r1, #1
	lsr	r6, r6, #16
	beq	.L1204
.L1152:
	cmp	r4, r0
	movhi	ip, #0
	movls	ip, #1
	cmp	ip, #0
	moveq	r5, #0
	sub	r3, r0, r4
	lsl	r4, r3, #16
	lsr	r3, r4, #16
	lsr	ip, lr, #2
	movne	r0, r3
	orr	r3, r6, r5
	lsl	r6, ip, #16
	lsr	r4, r6, #16
	cmp	r4, #0
	lsr	ip, r1, #2
	beq	.L1150
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	r6, r0, ip
	lsl	ip, r6, #16
	lsr	r6, ip, #16
	moveq	r6, r0
	orr	r3, r3, r4
	lsr	r4, lr, #3
	lsl	ip, r4, #16
	lsl	r0, r6, #16
	lsr	r6, ip, #16
	cmp	r6, #0
	lsr	r0, r0, #16
	lsr	r4, r1, #3
	beq	.L1150
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r6, #0
	sub	ip, r0, r4
	lsl	r4, ip, #16
	orr	r3, r3, r6
	lsr	r6, lr, #4
	lsr	ip, r4, #16
	lsl	r4, r6, #16
	movne	r0, ip
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r6, r1, #4
	beq	.L1150
	cmp	r0, r6
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r6
	lsl	r6, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #5
	lsr	r4, r6, #16
	lsl	r6, ip, #16
	lsr	ip, r6, #16
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #5
	beq	.L1150
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r6, r0, r4
	lsl	r4, r6, #16
	orr	r3, r3, ip
	lsr	ip, lr, #6
	lsr	r6, r4, #16
	lsl	r4, ip, #16
	movne	r0, r6
	lsr	r6, r4, #16
	cmp	r6, #0
	lsr	ip, r1, #6
	beq	.L1150
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r6, #0
	sub	r4, r0, ip
	lsl	ip, r4, #16
	orr	r3, r3, r6
	lsr	r6, lr, #7
	lsr	r4, ip, #16
	lsl	ip, r6, #16
	lsr	r6, ip, #16
	movne	r0, r4
	cmp	r6, #0
	lsr	r4, r1, #7
	beq	.L1150
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r6, #0
	sub	ip, r0, r4
	lsl	r4, ip, #16
	orr	r3, r3, r6
	lsr	r6, lr, #8
	lsr	ip, r4, #16
	lsl	r4, r6, #16
	movne	r0, ip
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r6, r1, #8
	beq	.L1150
	cmp	r0, r6
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r6
	lsl	r6, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #9
	lsr	r4, r6, #16
	lsl	r6, ip, #16
	lsr	ip, r6, #16
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #9
	beq	.L1150
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r6, r0, r4
	lsl	r4, r6, #16
	orr	r3, r3, ip
	lsr	ip, lr, #10
	lsr	r6, r4, #16
	lsl	r4, ip, #16
	movne	r0, r6
	lsr	r6, r4, #16
	cmp	r6, #0
	lsr	ip, r1, #10
	beq	.L1150
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r6, #0
	sub	r4, r0, ip
	lsl	ip, r4, #16
	orr	r3, r3, r6
	lsr	r6, lr, #11
	lsr	r4, ip, #16
	lsl	ip, r6, #16
	lsr	r6, ip, #16
	movne	r0, r4
	cmp	r6, #0
	lsr	r4, r1, #11
	beq	.L1150
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r6, #0
	sub	ip, r0, r4
	lsl	r4, ip, #16
	orr	r3, r3, r6
	lsr	r6, lr, #12
	lsr	ip, r4, #16
	lsl	r4, r6, #16
	movne	r0, ip
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r6, r1, #12
	beq	.L1150
	cmp	r0, r6
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r6
	lsl	r6, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #13
	lsr	r4, r6, #16
	lsl	r6, ip, #16
	lsr	ip, r6, #16
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #13
	beq	.L1150
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r6, r0, r4
	lsl	r4, r6, #16
	orr	r3, r3, ip
	lsr	ip, lr, #14
	lsr	r6, r4, #16
	lsl	r4, ip, #16
	movne	r0, r6
	lsr	r6, r4, #16
	cmp	r6, #0
	lsr	ip, r1, #14
	beq	.L1150
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r6, #0
	lsr	lr, lr, #15
	sub	ip, r0, ip
	lsl	r4, lr, #16
	lsr	lr, r4, #16
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	movne	r0, ip
	cmp	lr, #0
	lsr	r1, r1, #15
	orr	r3, r3, r6
	beq	.L1150
	sub	r5, r0, r1
	cmp	r0, r1
	lsl	r6, r5, #16
	movcc	lr, #0
	movcs	lr, #1
	lsr	r4, r6, #16
	cmp	r0, r1
	movcs	r0, r4
	orr	r3, lr, r3
.L1150:
	cmp	r2, #0
	pop	{r4, r5, r6, lr}
	moveq	r0, r3
	bx	lr
.L1147:
	cmp	r3, #0
	moveq	r0, r5
	beq	.L1150
	sub	r0, r5, ip
	lsl	r4, r0, #16
	cmp	r5, ip
	lsr	r0, r4, #16
	ldr	r4, .L1205
	movcc	r0, r5
	cmp	r5, ip
	movcs	r6, r3
	and	r5, lr, r4
	movcc	r6, #0
	and	r4, r4, r1
	mov	lr, r3
	mov	r1, ip
	b	.L1152
.L1203:
	sub	r0, r0, r1
	lsl	r3, r0, #16
	sub	r1, r1, r5
	lsr	r0, r3, #16
	movne	r0, r5
	rsbs	r4, r1, #0
	adc	r3, r4, r1
	b	.L1150
.L1204:
	mov	r3, r6
	b	.L1150
.L1206:
	.align	2
.L1205:
	.word	32767
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.syntax unified
	.arm
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	movhi	r3, #1
	bhi	.L1208
	b	.L1228
.L1211:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1229
.L1208:
	cmp	r1, #0
	bge	.L1211
.L1212:
	mov	ip, #0
	push	{r4, lr}
.L1214:
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L1214
	pop	{r4, lr}
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1229:
	cmp	r3, #0
	bne	.L1212
	mov	ip, r3
.L1226:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1228:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1226
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.syntax unified
	.arm
	.type	__ashldi3, %function
__ashldi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #32
	beq	.L1231
	mov	r3, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r0, r3
	bx	lr
.L1231:
	cmp	r2, #0
	bxeq	lr
	rsb	ip, r2, #32
	lsl	r1, r1, r2
	lsl	r3, r0, r2
	orr	r1, r1, r0, lsr ip
	mov	r0, r3
	bx	lr
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.syntax unified
	.arm
	.type	__ashrdi3, %function
__ashrdi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #32
	beq	.L1236
	sub	r2, r2, #32
	asr	r3, r1, #31
	asr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1236:
	cmp	r2, #0
	bxeq	lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	asr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	bx	lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	eor	ip, r1, r1, ror #16
	lsr	r0, r3, #8
	lsr	ip, ip, #8
	bic	r3, r0, #65280
	bic	r0, ip, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
	bx	lr
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.syntax unified
	.arm
	.type	__bswapsi2, %function
__bswapsi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r0, r0, ror #16
	lsr	r1, r3, #8
	bic	r2, r1, #65280
	eor	r0, r2, r0, ror #8
	bx	lr
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.syntax unified
	.arm
	.type	__clzsi2, %function
__clzsi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #65536
	movcs	r1, #0
	movcc	r1, #1
	lsl	r1, r1, #4
	rsb	r3, r1, #16
	lsr	ip, r0, r3
	tst	ip, #65280
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #3
	rsb	r0, r2, #8
	lsr	r3, ip, r0
	tst	r3, #240
	add	r1, r2, r1
	moveq	r2, #1
	movne	r2, #0
	lsl	ip, r2, #2
	rsb	r0, ip, #4
	lsr	r3, r3, r0
	tst	r3, #12
	moveq	r0, #1
	movne	r0, #0
	add	r2, ip, r1
	lsl	ip, r0, #1
	rsb	r1, ip, #2
	lsr	r3, r3, r1
	tst	r3, #2
	add	r0, ip, r2
	rsb	r2, r3, #2
	movne	r2, #0
	add	r0, r2, r0
	bx	lr
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.syntax unified
	.arm
	.type	__cmpdi2, %function
__cmpdi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1247
	bgt	.L1248
	cmp	r0, r2
	bcc	.L1247
	bhi	.L1248
	mov	r0, #1
	bx	lr
.L1247:
	mov	r0, #0
	bx	lr
.L1248:
	mov	r0, #2
	bx	lr
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.syntax unified
	.arm
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1253
	bgt	.L1252
	cmp	r0, r2
	bcc	.L1253
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1253:
	mvn	r0, #0
	bx	lr
.L1252:
	mov	r0, #1
	bx	lr
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.syntax unified
	.arm
	.type	__ctzsi2, %function
__ctzsi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r3, r0, #16
	lsr	r1, r3, #16
	rsbs	r2, r1, #1
	movcc	r2, #0
	lsl	ip, r2, #4
	lsr	r3, r0, ip
	and	r1, r3, #255
	rsbs	r2, r1, #1
	movcc	r2, #0
	lsl	r1, r2, #3
	lsr	r3, r3, r1
	tst	r3, #15
	add	r2, r1, ip
	moveq	ip, #1
	movne	ip, #0
	lsl	ip, ip, #2
	lsr	r3, r3, ip
	tst	r3, #3
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	add	r1, ip, r2
	lsr	r2, r3, r0
	and	r3, r2, #3
	add	ip, r0, r1
	mvn	r1, r3
	ands	r2, r1, #1
	mvnne	r2, #0
	lsr	r0, r3, #1
	rsb	r3, r0, #2
	and	r3, r3, r2
	add	r0, r3, ip
	bx	lr
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.syntax unified
	.arm
	.type	__lshrdi3, %function
__lshrdi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #32
	beq	.L1256
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1256:
	cmp	r2, #0
	bxeq	lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	lsr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	bx	lr
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.syntax unified
	.arm
	.type	__muldsi3, %function
__muldsi3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L1262
	lsr	r4, r1, #16
	and	r3, r0, lr
	and	ip, r1, lr
	lsr	r0, r0, #16
	mul	r2, ip, r3
	mul	ip, r0, ip
	mul	r1, r4, r3
	mul	r0, r4, r0
	add	r3, ip, r2, lsr #16
	and	r2, r2, lr
	add	ip, r2, r3, lsl #16
	add	r4, r0, r3, lsr #16
	add	r2, r1, ip, lsr #16
	and	lr, ip, lr
	add	r0, lr, r2, lsl #16
	add	r1, r4, r2, lsr #16
	pop	{r4, lr}
	bx	lr
.L1263:
	.align	2
.L1262:
	.word	65535
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L1266
	lsr	ip, r0, #16
	and	lr, r0, r6
	and	r4, r2, r6
	mul	r5, r4, lr
	mul	r4, ip, r4
	lsr	r7, r2, #16
	mul	lr, r7, lr
	mul	ip, r7, ip
	add	r4, r4, r5, lsr #16
	and	r5, r5, r6
	add	r5, r5, r4, lsl #16
	add	lr, lr, r5, lsr #16
	add	ip, ip, r4, lsr #16
	add	r4, ip, lr, lsr #16
	mla	r3, r0, r3, r4
	and	r6, r6, r5
	add	r0, r6, lr, lsl #16
	pop	{r4, r5, r6, r7, lr}
	mla	r1, r2, r1, r3
	bx	lr
.L1267:
	.align	2
.L1266:
	.word	65535
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.syntax unified
	.arm
	.type	__negdi2, %function
__negdi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	bx	lr
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.syntax unified
	.arm
	.type	__paritydi2, %function
__paritydi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r1, r1, r0
	eor	r1, r1, r1, lsr #16
	eor	r0, r1, r1, lsr #8
	eor	r2, r0, r0, lsr #4
	ldr	r3, .L1270
	and	ip, r2, #15
	asr	r3, r3, ip
	and	r0, r3, #1
	bx	lr
.L1271:
	.align	2
.L1270:
	.word	27030
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.syntax unified
	.arm
	.type	__paritysi2, %function
__paritysi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r0, r0, lsr #16
	eor	r0, r3, r3, lsr #8
	eor	r1, r0, r0, lsr #4
	ldr	r2, .L1273
	and	ip, r1, #15
	asr	r2, r2, ip
	and	r0, r2, #1
	bx	lr
.L1274:
	.align	2
.L1273:
	.word	27030
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L1277
	lsr	r3, r0, #1
	orr	r3, r3, r1, lsl #31
	and	r3, r3, r2
	subs	r0, r0, r3
	and	r2, r2, r1, lsr #1
	sbc	r1, r1, r2
	lsr	r3, r0, #2
	str	lr, [sp, #-4]!
	ldr	lr, .L1277+4
	orr	r2, r3, r1, lsl #30
	and	r0, r0, lr
	and	r2, r2, lr
	and	r3, lr, r1, lsr #2
	adds	r2, r2, r0
	and	r1, r1, lr
	adc	r0, r3, r1
	lsr	lr, r2, #4
	orr	r1, lr, r0, lsl #28
	ldr	ip, .L1277+8
	adds	r2, r1, r2
	adc	r3, r0, r0, lsr #4
	and	r2, r2, ip
	and	r3, r3, ip
	add	ip, r3, r2
	add	lr, ip, ip, lsr #16
	add	r0, lr, lr, lsr #8
	and	r0, r0, #127
	ldr	lr, [sp], #4
	bx	lr
.L1278:
	.align	2
.L1277:
	.word	1431655765
	.word	858993459
	.word	252645135
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.syntax unified
	.arm
	.type	__popcountsi2, %function
__popcountsi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L1280
	ldr	r1, .L1280+4
	and	ip, r2, r0, lsr #1
	sub	r0, r0, ip
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	add	r1, r2, r0
	ldr	r3, .L1280+8
	add	ip, r1, r1, lsr #4
	and	r3, r3, ip
	add	r3, r3, r3, lsr #16
	add	r0, r3, r3, lsr #8
	and	r0, r0, #63
	bx	lr
.L1281:
	.align	2
.L1280:
	.word	1431655765
	.word	858993459
	.word	252645135
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.syntax unified
	.arm
	.type	__powidf2, %function
__powidf2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	vmov.f64	d7, d0
	mov	r1, r0
	vmov.f64	d0, #1.0e+0
	beq	.L1283
.L1285:
	vmul.f64	d0, d0, d7
.L1283:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1284
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1285
.L1289:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1285
	b	.L1289
.L1284:
	cmp	r0, #0
	vmovlt.f64	d7, #1.0e+0
	vdivlt.f64	d0, d7, d0
	bx	lr
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.syntax unified
	.arm
	.type	__powisf2, %function
__powisf2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	vmov.f32	s15, s0
	mov	r1, r0
	vmov.f32	s0, #1.0e+0
	beq	.L1291
.L1293:
	vmul.f32	s0, s0, s15
.L1291:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1292
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1293
.L1297:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1293
	b	.L1297
.L1292:
	cmp	r0, #0
	vmovlt.f32	s15, #1.0e+0
	vdivlt.f32	s0, s15, s0
	bx	lr
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.syntax unified
	.arm
	.type	__ucmpdi2, %function
__ucmpdi2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1302
	bhi	.L1303
	cmp	r0, r2
	bcc	.L1302
	bhi	.L1303
	mov	r0, #1
	bx	lr
.L1302:
	mov	r0, #0
	bx	lr
.L1303:
	mov	r0, #2
	bx	lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.syntax unified
	.arm
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1308
	bhi	.L1307
	cmp	r0, r2
	bcc	.L1308
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1308:
	mvn	r0, #0
	bx	lr
.L1307:
	mov	r0, #1
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
	.global	__clzdi2
	.global	__clzsi2
	.global	__aeabi_ldivmod
	.global	__aeabi_idivmod
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
