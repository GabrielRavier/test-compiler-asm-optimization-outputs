	.arch armv4
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 19, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 22, 1
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bls	.L2
	cmp	r2, #0
	add	r3, r1, r2
	add	r2, r0, r2
	moveq	pc, lr
.L4:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	cmp	r1, r3
	strb	ip, [r2, #-1]!
	bne	.L4
	mov	pc, lr
.L2:
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r2, #1
	cmp	r3, #6
	push	{r4, r5, r6, lr}
	addls	r3, r1, #1
	bls	.L5
	add	r3, r1, #1
	sub	lr, r0, r3
	orr	ip, r1, r0
	cmp	lr, #2
	and	ip, ip, #3
	movls	lr, #0
	movhi	lr, #1
	cmp	ip, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L5
	mov	r3, r0
	bic	r5, r2, #3
	sub	ip, r1, #4
	lsr	r6, r2, #2
	add	r4, r0, r5
.L6:
	ldr	lr, [ip, #4]!
	str	lr, [r3], #4
	cmp	r3, r4
	bne	.L6
	cmp	r2, r5
	sub	r2, r2, r5
	add	r5, r1, r5
	popeq	{r4, r5, r6, pc}
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r1, [r3]
	popeq	{r4, r5, r6, pc}
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r1, [r3, #1]
	ldrbne	r2, [r5, #2]	@ zero_extendqisi2
	strbne	r2, [r3, #2]
	pop	{r4, r5, r6, pc}
.L5:
	sub	ip, r0, #1
	add	r1, r1, r2
.L9:
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [ip, #1]!
	add	r3, r3, #1
	bne	.L9
	pop	{r4, r5, r6, pc}
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.syntax unified
	.arm
	.type	memccpy, %function
memccpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	beq	.L51
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
.L39:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	mov	lr, r0
	cmp	ip, r2
	strb	ip, [r0], #1
	ldreq	pc, [sp], #4
	subs	r3, r3, #1
	bne	.L39
	mov	r0, #0
	ldr	pc, [sp], #4
.L51:
	mov	r0, #0
	mov	pc, lr
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.syntax unified
	.arm
	.type	memchr, %function
memchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	and	r1, r1, #255
	beq	.L59
	mov	r3, r0
.L56:
	mov	r0, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, r1
	moveq	pc, lr
	subs	r2, r2, #1
	bne	.L56
.L59:
	mov	r0, r2
	mov	pc, lr
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bne	.L64
	b	.L68
.L65:
	subs	r2, r2, #1
	beq	.L68
.L64:
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	ip, r3
	add	r1, r1, #1
	beq	.L65
	sub	r0, ip, r3
	mov	pc, lr
.L68:
	mov	r0, r2
	mov	pc, lr
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	blne	memcpy
.L72:
	mov	r0, r4
	pop	{r4, pc}
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r2, #1
	and	r1, r1, #255
	add	r2, r0, r2
	sub	ip, r0, #1
	b	.L78
.L80:
	mov	r0, r2
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r2, #1
	cmp	r3, r1
	moveq	pc, lr
.L78:
	cmp	r2, ip
	bne	.L80
	mov	r0, #0
	mov	pc, lr
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	andne	r1, r1, #255
	blne	memset
.L84:
	mov	r0, r4
	pop	{r4, pc}
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.syntax unified
	.arm
	.type	stpcpy, %function
stpcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	strb	r3, [r0]
	moveq	pc, lr
	add	r3, r0, #1
.L88:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	mov	r0, r3
	cmp	r2, #0
	strb	r2, [r3], #1
	bne	.L88
	mov	pc, lr
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.syntax unified
	.arm
	.type	strchrnul, %function
strchrnul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	and	r1, r1, #255
	cmp	r3, #0
	moveq	pc, lr
	cmp	r3, r1
	moveq	pc, lr
.L99:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	moveq	pc, lr
	cmp	r3, r1
	bne	.L99
	mov	pc, lr
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.syntax unified
	.arm
	.type	strchr, %function
strchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
.L102:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r1
	add	r2, r2, #1
	moveq	pc, lr
	cmp	r3, #0
	bne	.L102
	mov	r0, r3
	mov	pc, lr
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.syntax unified
	.arm
	.type	strcmp, %function
strcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L107
	b	.L106
.L108:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, r2
	bne	.L106
.L107:
	cmp	r3, #0
	bne	.L108
.L106:
	sub	r0, r3, r2
	mov	pc, lr
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.syntax unified
	.arm
	.type	strlen, %function
strlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L113
	mov	r3, r0
.L112:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L112
	sub	r0, r3, r0
	mov	pc, lr
.L113:
	mov	r0, r3
	mov	pc, lr
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r2, #0
	beq	.L121
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L128
	push	{r4, lr}
	add	lr, r1, r3
	b	.L119
.L120:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L129
.L119:
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
	bne	.L120
	sub	r0, ip, r3
	pop	{r4, pc}
.L121:
	mov	r0, r3
	mov	pc, lr
.L129:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	sub	r0, ip, r3
	pop	{r4, pc}
.L128:
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	r0, ip, r3
	mov	pc, lr
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.syntax unified
	.arm
	.type	swab, %function
swab:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #1
	movle	pc, lr
	sub	r3, r2, #2
	bic	r3, r3, #1
	add	r2, r1, #4
	add	r0, r0, #2
	add	r1, r1, #2
	add	r3, r3, r2
.L132:
	add	r1, r1, #2
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	cmp	r1, r3
	add	r0, r0, #2
	strb	ip, [r1, #-4]
	strb	r2, [r1, #-3]
	bne	.L132
	mov	pc, lr
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.syntax unified
	.arm
	.type	isalpha, %function
isalpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.syntax unified
	.arm
	.type	isascii, %function
isascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.syntax unified
	.arm
	.type	isblank, %function
isblank:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #9
	cmpne	r0, #32
	moveq	r0, #1
	movne	r0, #0
	mov	pc, lr
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.syntax unified
	.arm
	.type	iscntrl, %function
iscntrl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127
	cmpne	r0, #31
	movls	r0, #1
	movhi	r0, #0
	mov	pc, lr
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.syntax unified
	.arm
	.type	isdigit, %function
isdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #48
	cmp	r0, #9
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.syntax unified
	.arm
	.type	isgraph, %function
isgraph:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #33
	cmp	r0, #93
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.syntax unified
	.arm
	.type	islower, %function
islower:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #97
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	islower, .-islower
	.align	2
	.global	isprint
	.syntax unified
	.arm
	.type	isprint, %function
isprint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #32
	cmp	r0, #94
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.syntax unified
	.arm
	.type	isspace, %function
isspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #9
	cmp	r0, #32
	cmpne	r3, #4
	movls	r0, #1
	movhi	r0, #0
	mov	pc, lr
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.syntax unified
	.arm
	.type	isupper, %function
isupper:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #65
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.syntax unified
	.arm
	.type	iswcntrl, %function
iswcntrl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #127
	cmp	r0, #31
	cmphi	r3, #32
	bls	.L147
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L147
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L147:
	mov	r0, #1
	mov	pc, lr
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.syntax unified
	.arm
	.type	iswdigit, %function
iswdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #48
	cmp	r0, #9
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.syntax unified
	.arm
	.type	iswprint, %function
iswprint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #254
	bls	.L155
	ldr	r1, .L156
	ldr	r2, .L156+4
	sub	r3, r0, #8192
	sub	r3, r3, #42
	cmp	r0, r2
	cmphi	r3, r1
	movls	r3, #1
	movhi	r3, #0
	bls	.L153
	sub	r2, r2, #47
	sub	r1, r0, #57344
	cmp	r1, r2
	bls	.L153
	ldr	r1, .L156+8
	sub	r2, r0, #65280
	sub	r2, r2, #252
	cmp	r2, r1
	bhi	.L154
	ldr	r3, .L156+12
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	mov	pc, lr
.L153:
	mov	r0, #1
	mov	pc, lr
.L155:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	mov	pc, lr
.L154:
	mov	r0, r3
	mov	pc, lr
.L157:
	.align	2
.L156:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #48
	cmp	r3, #9
	bls	.L160
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L160:
	mov	r0, #1
	mov	pc, lr
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.syntax unified
	.arm
	.type	toascii, %function
toascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, #127
	mov	pc, lr
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.syntax unified
	.arm
	.type	fdim, %function
fdim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L166
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L169
	vsub.f64	d0, d0, d1
	mov	pc, lr
.L169:
	vldr.64	d0, .L170
	mov	pc, lr
.L166:
	vmov.f64	d0, d1
	mov	pc, lr
.L171:
	.align	3
.L170:
	.word	0
	.word	0
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.syntax unified
	.arm
	.type	fdimf, %function
fdimf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L176
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L179
	vsub.f32	s0, s0, s1
	mov	pc, lr
.L179:
	vldr.32	s0, .L180
	mov	pc, lr
.L176:
	vmov.f32	s0, s1
	mov	pc, lr
.L181:
	.align	2
.L180:
	.word	0
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.syntax unified
	.arm
	.type	fmax, %function
fmax:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L185
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L184
	cmp	r3, #0
	vmovne.f64	d0, d1
	mov	pc, lr
.L184:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L185:
	vmov.f64	d0, d1
	mov	pc, lr
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.syntax unified
	.arm
	.type	fmaxf, %function
fmaxf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L191
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L190
	cmp	r3, #0
	vmovne.f32	s0, s1
	mov	pc, lr
.L190:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	mov	pc, lr
.L191:
	vmov.f32	s0, s1
	mov	pc, lr
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.syntax unified
	.arm
	.type	fmaxl, %function
fmaxl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L197
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L196
	cmp	r3, #0
	vmovne.f64	d0, d1
	mov	pc, lr
.L196:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L197:
	vmov.f64	d0, d1
	mov	pc, lr
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.syntax unified
	.arm
	.type	fmin, %function
fmin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L203
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L202
	cmp	r3, #0
	vmoveq.f64	d0, d1
	mov	pc, lr
.L202:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L203:
	vmov.f64	d0, d1
	mov	pc, lr
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.syntax unified
	.arm
	.type	fminf, %function
fminf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L209
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L208
	cmp	r3, #0
	vmoveq.f32	s0, s1
	mov	pc, lr
.L208:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	mov	pc, lr
.L209:
	vmov.f32	s0, s1
	mov	pc, lr
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.syntax unified
	.arm
	.type	fminl, %function
fminl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L215
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L214
	cmp	r3, #0
	vmoveq.f64	d0, d1
	mov	pc, lr
.L214:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L215:
	vmov.f64	d0, d1
	mov	pc, lr
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.syntax unified
	.arm
	.type	l64a, %function
l64a:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	ldr	r3, .L223
	beq	.L219
	ldr	r1, .L223+4
.L220:
	and	r2, r0, #63
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	r2, [r3], #1
	bne	.L220
.L219:
	mov	r2, #0
	ldr	r0, .L223
	strb	r2, [r3]
	mov	pc, lr
.L224:
	.align	2
.L223:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	l64a, .-l64a
	.align	2
	.global	srand
	.syntax unified
	.arm
	.type	srand, %function
srand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L226
	sub	r0, r0, #1
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	mov	pc, lr
.L227:
	.align	2
.L226:
	.word	.LANCHOR0
	.size	srand, .-srand
	.align	2
	.global	rand
	.syntax unified
	.arm
	.type	rand, %function
rand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L230
	ldr	r0, .L230+4
	ldr	ip, [r2, #8]
	ldr	r3, [r2, #12]
	mul	r0, ip, r0
	ldr	r1, .L230+8
	str	lr, [sp, #-4]!
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r3, r3, #1
	adc	r0, r0, lr
	str	r0, [r2, #12]
	str	r3, [r2, #8]
	lsr	r0, r0, #1
	ldr	pc, [sp], #4
.L231:
	.align	2
.L230:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L238
	ldr	r3, [r1]
	str	r1, [r0, #4]
	str	r3, [r0]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
	mov	pc, lr
.L238:
	str	r1, [r0, #4]
	str	r1, [r0]
	mov	pc, lr
	.size	insque, .-insque
	.align	2
	.global	remque
	.syntax unified
	.arm
	.type	remque, %function
remque:
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
	mov	pc, lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
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
	beq	.L249
	mov	r4, r1
	mov	fp, #0
	b	.L251
.L264:
	cmp	r6, fp
	beq	.L249
.L251:
	mov	r1, r4
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	bne	.L264
.L248:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L249:
	ldr	r8, [sp, #4]
	cmp	r5, #0
	mla	r8, r6, r5, r8
	add	r6, r6, #1
	str	r6, [r10]
	beq	.L248
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	memmove
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.syntax unified
	.arm
	.type	lfind, %function
lfind:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, [r2]
	ldr	r8, [sp, #32]
	cmp	r7, #0
	beq	.L266
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	mov	r5, #0
	b	.L268
.L277:
	cmp	r7, r5
	beq	.L266
.L268:
	mov	r1, r4
	mov	r0, r6
	mov	lr, pc
	mov	pc, r8
	cmp	r0, #0
	mov	r10, r4
	add	r5, r5, #1
	add	r4, r4, r9
	bne	.L277
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L266:
	mov	r10, #0
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.syntax unified
	.arm
	.type	abs, %function
abs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	rsblt	r0, r0, #0
	mov	pc, lr
	.size	abs, .-abs
	.align	2
	.global	atoi
	.syntax unified
	.arm
	.type	atoi, %function
atoi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L280
.L281:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L281
.L280:
	cmp	r3, #43
	beq	.L282
	cmp	r3, #45
	bne	.L302
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	ip, r3, #48
	cmp	ip, #9
	bhi	.L291
	mov	r4, #1
.L285:
	mov	r0, #0
.L288:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, ip, r1, lsl #1
	mov	lr, ip
	sub	ip, r3, #48
	cmp	ip, #9
	lsl	r1, r1, #1
	bls	.L288
	cmp	r4, #0
	subeq	r0, lr, r1
	pop	{r4, pc}
.L302:
	sub	ip, r3, #48
	cmp	ip, #9
	movls	r2, r0
	bhi	.L291
.L301:
	mov	r4, #0
	b	.L285
.L282:
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	ip, r3, #48
	cmp	ip, #9
	bls	.L301
.L291:
	mov	r0, #0
	pop	{r4, pc}
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L304
.L305:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L305
.L304:
	cmp	r3, #43
	beq	.L306
	cmp	r3, #45
	bne	.L307
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	ip, r3, #48
	cmp	ip, #9
	movls	r4, #1
	bhi	.L314
.L308:
	mov	r0, #0
.L311:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, ip, r1, lsl #1
	mov	lr, ip
	sub	ip, r3, #48
	cmp	ip, #9
	lsl	r1, r1, #1
	bls	.L311
	cmp	r4, #0
	subeq	r0, lr, r1
	pop	{r4, pc}
.L307:
	sub	ip, r3, #48
	cmp	ip, #9
	movls	r2, r0
	bhi	.L314
.L323:
	mov	r4, #0
	b	.L308
.L306:
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	ip, r3, #48
	cmp	ip, #9
	bls	.L323
.L314:
	mov	r0, #0
	pop	{r4, pc}
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	ip, [r0]	@ zero_extendqisi2
	sub	r3, ip, #9
	cmp	ip, #32
	cmpne	r3, #4
	bhi	.L325
.L326:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	sub	r3, ip, #9
	cmp	ip, #32
	cmpne	r3, #4
	bls	.L326
.L325:
	cmp	ip, #43
	beq	.L327
	cmp	ip, #45
	bne	.L347
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	r4, ip, #48
	cmp	r4, #9
	bhi	.L336
	mov	r7, #1
.L330:
	mov	r0, #0
	mov	r1, r0
.L333:
	lsl	r2, r1, #2
	lsl	r3, r0, #2
	adds	r3, r3, r0
	orr	r2, r2, r0, lsr #30
	adc	r2, r1, r2
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
	adds	r3, r3, r3
	adc	r2, r2, r2
	subs	r0, r3, r4
	sbc	r1, r2, r4, asr #31
	mov	r5, r4
	asr	r6, r4, #31
	sub	r4, ip, #48
	cmp	r4, #9
	bls	.L333
	cmp	r7, #0
	popne	{r4, r5, r6, r7, pc}
	subs	r0, r5, r3
	sbc	r1, r6, r2
	pop	{r4, r5, r6, r7, pc}
.L347:
	sub	r4, ip, #48
	cmp	r4, #9
	movls	lr, r0
	bhi	.L336
.L346:
	mov	r7, #0
	b	.L330
.L327:
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	r4, ip, #48
	cmp	r4, #9
	bls	.L346
.L336:
	mov	r0, #0
	mov	r1, r0
	pop	{r4, r5, r6, r7, pc}
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.syntax unified
	.arm
	.type	bsearch, %function
bsearch:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r4, r2, #0
	ldr	r9, [sp, #32]
	beq	.L349
	mov	r10, r0
	mov	r8, r1
	mov	r7, r3
	b	.L352
.L359:
	beq	.L348
	sub	r4, r4, r5
	cmp	r4, #0
	add	r8, r6, r7
	beq	.L349
.L352:
	lsr	r5, r4, #1
	mla	r6, r7, r5, r8
	mov	r0, r10
	mov	r1, r6
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	sub	r4, r4, #1
	bge	.L359
	mov	r4, r5
	cmp	r4, #0
	bne	.L352
.L349:
	mov	r6, #0
.L348:
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.syntax unified
	.arm
	.type	bsearch_r, %function
bsearch_r:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r2, #0
	mov	r10, r0
	mov	r7, r1
	mov	r6, r3
	ldr	r9, [sp, #40]
	ldr	r8, [sp, #44]
	beq	.L365
.L361:
	asr	fp, r4, #1
	mla	r5, r6, fp, r7
	mov	r2, r8
	mov	r0, r10
	mov	r1, r5
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	sub	r4, r4, #1
	beq	.L360
	ble	.L363
	asrs	r4, r4, #1
	add	r7, r5, r6
	bne	.L361
.L365:
	mov	r5, #0
.L360:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L363:
	cmp	fp, #0
	beq	.L365
	mov	r4, fp
	b	.L361
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
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
	mov	r3, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r3, [r4]
	pop	{r4, pc}
	.size	div, .-div
	.align	2
	.global	imaxabs
	.syntax unified
	.arm
	.type	imaxabs, %function
imaxabs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asr	r3, r1, #31
	eor	r0, r0, r1, asr #31
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	mov	pc, lr
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.syntax unified
	.arm
	.type	imaxdiv, %function
imaxdiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r7, r3
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r6, r7, pc}
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.syntax unified
	.arm
	.type	labs, %function
labs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	rsblt	r0, r0, #0
	mov	pc, lr
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.syntax unified
	.arm
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
	mov	r3, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r3, [r4]
	pop	{r4, pc}
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.syntax unified
	.arm
	.type	llabs, %function
llabs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asr	r3, r1, #31
	eor	r0, r0, r1, asr #31
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	mov	pc, lr
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.syntax unified
	.arm
	.type	lldiv, %function
lldiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r7, r3
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r6, r7, pc}
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.syntax unified
	.arm
	.type	wcschr, %function
wcschr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L389
.L386:
	cmp	r1, r3
	moveq	pc, lr
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	bne	.L386
.L389:
	mov	r0, r3
	mov	pc, lr
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.syntax unified
	.arm
	.type	wcscmp, %function
wcscmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r1]
	cmp	r3, r2
	beq	.L394
	b	.L393
.L395:
	ldr	r3, [r0, #4]!
	ldr	r2, [r1, #4]!
	cmp	r3, r2
	bne	.L393
.L394:
	cmp	r3, #0
	bne	.L395
.L393:
	cmp	r3, r2
	bcc	.L397
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L397:
	mvn	r0, #0
	mov	pc, lr
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.syntax unified
	.arm
	.type	wcscpy, %function
wcscpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r0, #4
.L399:
	ldr	r3, [r1], #4
	cmp	r3, #0
	str	r3, [r2, #4]!
	bne	.L399
	mov	pc, lr
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.syntax unified
	.arm
	.type	wcslen, %function
wcslen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0
	ldr	r0, [r0]
	cmp	r0, #0
	moveq	pc, lr
	mov	r3, r1
.L404:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L404
	sub	r0, r3, r1
	asr	r0, r0, #2
	mov	pc, lr
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.syntax unified
	.arm
	.type	wcsncmp, %function
wcsncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L415
	mov	ip, r0
	push	{r4, lr}
	b	.L411
.L412:
	subs	r2, r2, #1
	beq	.L416
.L411:
	ldr	r3, [r1]
	mov	r4, ip
	ldr	r0, [ip], #4
	add	r1, r1, #4
	cmp	r3, r0
	moveq	lr, #1
	movne	lr, #0
	cmp	r0, #0
	moveq	lr, #0
	cmp	lr, #0
	bne	.L412
	ldr	r2, [r4]
	cmp	r2, r3
	bcc	.L423
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, pc}
.L423:
	mvn	r0, #0
	pop	{r4, pc}
.L416:
	mov	r0, r2
	pop	{r4, pc}
.L415:
	mov	r0, r2
	mov	pc, lr
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.syntax unified
	.arm
	.type	wmemchr, %function
wmemchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	beq	.L429
	mov	r3, r0
.L426:
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, r1
	moveq	pc, lr
	subs	r2, r2, #1
	bne	.L426
.L429:
	mov	r0, r2
	mov	pc, lr
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bne	.L434
	b	.L439
.L435:
	subs	r2, r2, #1
	beq	.L439
.L434:
	ldr	ip, [r0]
	ldr	r3, [r1]
	add	r0, r0, #4
	cmp	ip, r3
	add	r1, r1, #4
	beq	.L435
	bcc	.L442
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L439:
	mov	r0, r2
	mov	pc, lr
.L442:
	mvn	r0, #0
	mov	pc, lr
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	lslne	r2, r2, #2
	blne	memcpy
.L444:
	mov	r0, r4
	pop	{r4, pc}
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	moveq	pc, lr
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	push	{r4, r5, lr}
	lsl	ip, r2, #2
	mov	r4, r1
	bcc	.L451
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	r3, r2, #1
	cmp	r3, #8
	addls	ip, r1, #4
	bls	.L455
	orr	lr, r1, r0
	add	ip, r1, #4
	subs	r5, r0, ip
	and	lr, lr, #7
	movne	r5, #1
	cmp	lr, #0
	movne	r5, #0
	cmp	r5, #0
	beq	.L455
	mov	ip, r0
	mov	r3, #0
	lsr	lr, r2, #1
.L456:
	vldmia.64	r4!, {d7}	@ int
	add	r3, r3, #1
	cmp	r3, lr
	vstmia.64	ip!, {d7}	@ int
	bne	.L456
	tst	r2, #1
	bicne	r2, r2, #1
	ldrne	r3, [r1, r2, lsl #2]
	strne	r3, [r0, r2, lsl #2]
	pop	{r4, r5, pc}
.L451:
	cmp	r2, #0
	popeq	{r4, r5, pc}
	add	r3, r1, ip
	add	r2, r0, ip
.L454:
	ldr	ip, [r3, #-4]!
	cmp	r1, r3
	str	ip, [r2, #-4]!
	bne	.L454
	pop	{r4, r5, pc}
.L455:
	sub	r2, r0, #4
.L459:
	ldr	r1, [ip, #-4]
	sub	r3, r3, #1
	cmn	r3, #1
	str	r1, [r2, #4]!
	add	ip, ip, #4
	bne	.L459
	pop	{r4, r5, pc}
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.syntax unified
	.arm
	.type	wmemset, %function
wmemset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	moveq	pc, lr
	push	{r4, r5, lr}
	sub	r4, r2, #1
	lsr	r3, r0, #2
	cmp	r4, #5
	and	r3, r3, #1
	bls	.L488
	mov	r5, r0
	mov	ip, #0
	cmp	r3, #0
	subne	r4, r2, #2
	sub	r2, r2, r3
	strne	r1, [r5], #4
	add	r3, r0, r3, lsl #2
	lsr	lr, r2, #1
.L486:
	add	ip, ip, #1
	cmp	ip, lr
	str	r1, [r3]
	str	r1, [r3, #4]
	add	r3, r3, #8
	bne	.L486
	tst	r2, #1
	popeq	{r4, r5, pc}
	bic	r2, r2, #1
	sub	r4, r4, r2
	add	r3, r5, r2, lsl #2
.L484:
	cmp	r4, #0
	str	r1, [r3]
	popeq	{r4, r5, pc}
	cmp	r4, #1
	str	r1, [r3, #4]
	popeq	{r4, r5, pc}
	cmp	r4, #2
	str	r1, [r3, #8]
	popeq	{r4, r5, pc}
	cmp	r4, #3
	str	r1, [r3, #12]
	popeq	{r4, r5, pc}
	cmp	r4, #4
	str	r1, [r3, #16]
	strne	r1, [r3, #20]
	pop	{r4, r5, pc}
.L488:
	mov	r3, r0
	b	.L484
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bcs	.L517
	cmp	r2, #0
	add	r3, r0, r2
	add	r2, r1, r2
	moveq	pc, lr
.L519:
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	cmp	r0, r3
	strb	r1, [r2, #-1]!
	bne	.L519
	mov	pc, lr
.L517:
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r2, #1
	cmp	r3, #6
	push	{r4, r5, lr}
	addls	r3, r0, #1
	bls	.L520
	add	r3, r0, #1
	sub	lr, r1, r3
	orr	ip, r1, r0
	cmp	lr, #2
	and	ip, ip, #3
	movls	lr, #0
	movhi	lr, #1
	cmp	ip, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L520
	bic	r4, r2, #3
	sub	r3, r0, #4
	lsr	r5, r2, #2
	add	lr, r1, r4
.L521:
	ldr	ip, [r3, #4]!
	str	ip, [r1], #4
	cmp	r1, lr
	bne	.L521
	cmp	r2, r4
	sub	r2, r2, r4
	add	r4, r0, r4
	popeq	{r4, r5, pc}
	ldrb	r3, [r0, r5, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r3, [r1]
	popeq	{r4, r5, pc}
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r3, [r1, #1]
	ldrbne	r3, [r4, #2]	@ zero_extendqisi2
	strbne	r3, [r1, #2]
	pop	{r4, r5, pc}
.L520:
	sub	r1, r1, #1
	add	r0, r0, r2
.L524:
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r2, [r1, #1]!
	add	r3, r3, #1
	bne	.L524
	pop	{r4, r5, pc}
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r1
	push	{r4, lr}
	rsb	r3, r2, #0
	sub	r4, r2, #32
	lsl	r1, r1, r2
	and	r3, r3, #63
	rsb	lr, r2, #32
	orr	r1, r1, r0, lsl r4
	orr	r1, r1, r0, lsr lr
	rsb	r4, r3, #32
	lsr	lr, r0, r3
	orr	r1, r1, ip, lsr r3
	orr	lr, lr, ip, lsl r4
	sub	r3, r3, #32
	orr	lr, lr, ip, lsr r3
	orr	r0, lr, r0, lsl r2
	pop	{r4, pc}
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r0
	push	{r4, lr}
	rsb	r3, r2, #0
	rsb	r4, r2, #32
	lsr	r0, r0, r2
	and	r3, r3, #63
	sub	lr, r2, #32
	orr	r0, r0, r1, lsl r4
	orr	r0, r0, r1, lsr lr
	sub	r4, r3, #32
	lsl	lr, r1, r3
	orr	r0, r0, ip, lsl r3
	orr	lr, lr, ip, lsl r4
	rsb	r3, r3, #32
	orr	lr, lr, ip, lsr r3
	orr	r1, lr, r1, lsr r2
	pop	{r4, pc}
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.syntax unified
	.arm
	.type	rotl32, %function
rotl32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, #32
	ror	r0, r0, r1
	mov	pc, lr
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.syntax unified
	.arm
	.type	rotr32, %function
rotr32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ror	r0, r0, r1
	mov	pc, lr
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.syntax unified
	.arm
	.type	rotl_sz, %function
rotl_sz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, #32
	ror	r0, r0, r1
	mov	pc, lr
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.syntax unified
	.arm
	.type	rotr_sz, %function
rotr_sz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ror	r0, r0, r1
	mov	pc, lr
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.syntax unified
	.arm
	.type	rotl16, %function
rotl16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r3, r3, #15
	lsr	r3, r0, r3
	orr	r0, r3, r0, lsl r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	pc, lr
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.syntax unified
	.arm
	.type	rotr16, %function
rotr16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r3, r3, #15
	lsl	r3, r0, r3
	orr	r0, r3, r0, lsr r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	pc, lr
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.syntax unified
	.arm
	.type	rotl8, %function
rotl8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r3, r3, #7
	lsr	r3, r0, r3
	orr	r0, r3, r0, lsl r1
	and	r0, r0, #255
	mov	pc, lr
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.syntax unified
	.arm
	.type	rotr8, %function
rotr8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r3, r3, #7
	lsl	r3, r0, r3
	orr	r0, r3, r0, lsr r1
	and	r0, r0, #255
	mov	pc, lr
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.syntax unified
	.arm
	.type	bswap_16, %function
bswap_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r3, r0, #8
	orr	r0, r3, r0, lsr #8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	pc, lr
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.syntax unified
	.arm
	.type	bswap_32, %function
bswap_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r0, r0, ror #16
	lsr	r3, r3, #8
	bic	r3, r3, #65280
	eor	r0, r3, r0, ror #8
	mov	pc, lr
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.syntax unified
	.arm
	.type	bswap_64, %function
bswap_64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	eor	r0, r1, r1, ror #16
	lsr	r3, r3, #8
	lsr	r0, r0, #8
	bic	r3, r3, #65280
	bic	r0, r0, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
	mov	pc, lr
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.syntax unified
	.arm
	.type	ffs, %function
ffs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	b	.L569
.L567:
	cmp	r2, #32
	beq	.L571
.L569:
	lsr	r3, r0, r2
	ands	r3, r3, #1
	add	r2, r2, #1
	beq	.L567
	mov	r0, r2
	mov	pc, lr
.L571:
	mov	r0, r3
	mov	pc, lr
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.syntax unified
	.arm
	.type	libiberty_ffs, %function
libiberty_ffs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L575
	ands	r0, r3, #1
	movne	pc, lr
	mov	r0, #1
.L574:
	asr	r3, r3, #1
	tst	r3, #1
	add	r0, r0, #1
	beq	.L574
	mov	pc, lr
.L575:
	mov	r0, r3
	mov	pc, lr
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.syntax unified
	.arm
	.type	gl_isinff, %function
gl_isinff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L582
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L581
	vldr.32	s15, .L582+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L581:
	mov	r0, #1
	mov	pc, lr
.L583:
	.align	2
.L582:
	.word	-8388609
	.word	2139095039
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.syntax unified
	.arm
	.type	gl_isinfd, %function
gl_isinfd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L587
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L586
	vldr.64	d7, .L587+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L586:
	mov	r0, #1
	mov	pc, lr
.L588:
	.align	3
.L587:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L592
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L591
	vldr.64	d7, .L592+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L591:
	mov	r0, #1
	mov	pc, lr
.L593:
	.align	3
.L592:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s14, r1	@ int
	vcvt.f64.s32	d7, s14
	vstr.64	d7, [r0]
	mov	pc, lr
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.syntax unified
	.arm
	.type	ldexpf, %function
ldexpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vadd.f32	s15, s0, s0
	vcmp.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	vmov.f32	s15, #2.0e+0
	vmov.f32	s14, #5.0e-1
	cmp	r0, #0
	vmovlt.f32	s15, s14
	tst	r0, #1
	beq	.L599
.L600:
	vmul.f32	s0, s0, s15
.L599:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	tst	r0, #1
	vmul.f32	s15, s15, s15
	add	r3, r0, r0, lsr #31
	bne	.L600
.L610:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f32	s15, s15, s15
	add	r3, r0, r0, lsr #31
	bne	.L600
	b	.L610
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.syntax unified
	.arm
	.type	ldexp, %function
ldexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vadd.f64	d7, d0, d0
	vcmp.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d7, d6
	tst	r0, #1
	beq	.L615
.L616:
	vmul.f64	d0, d0, d7
.L615:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L616
.L626:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L616
	b	.L626
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.syntax unified
	.arm
	.type	ldexpl, %function
ldexpl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d7, d6
	tst	r0, #1
	beq	.L631
.L632:
	vmul.f64	d0, d0, d7
.L631:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L632
.L642:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L632
	b	.L642
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r2, #1
	cmp	r3, #3
	push	{r4, r5, r6, r7, lr}
	bls	.L645
	orr	r3, r0, r1
	tst	r3, #3
	bne	.L645
	mov	r3, r0
	bic	r5, r2, #3
	sub	lr, r1, #4
	lsr	r6, r2, #2
	add	r4, r0, r5
.L646:
	ldr	r7, [r3]
	ldr	ip, [lr, #4]!
	eor	ip, ip, r7
	str	ip, [r3], #4
	cmp	r4, r3
	bne	.L646
	cmp	r5, r2
	sub	r2, r2, r5
	add	r5, r1, r5
	popeq	{r4, r5, r6, r7, pc}
	ldrb	r3, [r0, r6, lsl #2]	@ zero_extendqisi2
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	eor	r3, r3, r1
	strb	r3, [r0, r6, lsl #2]
	popeq	{r4, r5, r6, r7, pc}
	cmp	r2, #2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	eor	r3, r3, r2
	strb	r3, [r4, #1]
	ldrbne	r2, [r4, #2]	@ zero_extendqisi2
	ldrbne	r3, [r5, #2]	@ zero_extendqisi2
	eorne	r3, r3, r2
	strbne	r3, [r4, #2]
	pop	{r4, r5, r6, r7, pc}
.L645:
	mov	ip, r0
	add	r2, r1, r2
.L648:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	cmp	r2, r1
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
	bne	.L648
	pop	{r4, r5, r6, r7, pc}
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	mov	r3, r0
	beq	.L666
.L667:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L667
.L666:
	cmp	r2, #0
	beq	.L668
	sub	r1, r1, #1
.L669:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	strb	ip, [r3], #1
	moveq	pc, lr
	subs	r2, r2, #1
	bne	.L669
.L668:
	mov	r2, #0
	strb	r2, [r3]
	mov	pc, lr
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.type	strnlen, %function
strnlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	mov	r3, r0
	beq	.L683
	mov	r0, #0
	sub	r3, r3, #1
.L681:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	add	r0, r0, #1
	cmp	r1, r0
	bne	.L681
	mov	pc, lr
.L683:
	mov	r0, r1
	mov	pc, lr
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.syntax unified
	.arm
	.type	strpbrk, %function
strpbrk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L691
	sub	r1, r1, #1
.L687:
	mov	r2, r1
	b	.L690
.L689:
	cmp	r3, ip
	moveq	pc, lr
.L690:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L689
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L687
.L691:
	mov	r0, ip
	mov	pc, lr
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.syntax unified
	.arm
	.type	strrchr, %function
strrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r0, #0
.L696:
	mov	ip, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, ip
	cmp	r2, #0
	bne	.L696
	mov	pc, lr
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrb	r4, [r1]	@ zero_extendqisi2
	mov	r2, r0
	cmp	r4, #0
	beq	.L710
	mov	r6, r1
	mov	r3, r1
.L701:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L701
	subs	r3, r3, r6
	beq	.L710
	sub	r5, r6, #1
	add	r5, r5, r3
	b	.L708
.L715:
	cmp	r3, #0
	beq	.L714
.L708:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r4
	add	r2, r2, #1
	bne	.L715
	mov	lr, r6
	mov	ip, r4
	mov	r1, r0
	b	.L703
.L706:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L716
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
.L703:
	subs	r2, ip, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	r5, lr
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L706
	cmp	r3, ip
	popeq	{r4, r5, r6, pc}
.L717:
	add	r2, r0, #1
	b	.L708
.L714:
	mov	r0, r3
	pop	{r4, r5, r6, pc}
.L716:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	cmp	r3, ip
	bne	.L717
	pop	{r4, r5, r6, pc}
.L710:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.syntax unified
	.arm
	.type	copysign, %function
copysign:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L728
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
	vneg.f64	d0, d0
	mov	pc, lr
.L728:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
	vneg.f64	d0, d0
	mov	pc, lr
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.syntax unified
	.arm
	.type	memmem, %function
memmem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r6, r3, #0
	popeq	{r4, r5, r6, r7, r8, r9, pc}
	cmp	r1, r6
	bcc	.L740
	sub	r1, r1, r6
	adds	r7, r0, r1
	bcs	.L740
	mvn	r8, #1
	ldrb	r9, [r2]	@ zero_extendqisi2
	b	.L735
.L731:
	cmp	r7, r0
	bcc	.L740
.L735:
	mov	ip, r0
	ldrb	r1, [ip], #1	@ zero_extendqisi2
	cmp	r1, r9
	movne	r0, ip
	bne	.L731
	cmp	r6, #1
	popeq	{r4, r5, r6, r7, r8, r9, pc}
.L734:
	mov	r3, r2
	sub	lr, ip, #1
	b	.L732
.L733:
	cmn	ip, r1
	popeq	{r4, r5, r6, r7, r8, r9, pc}
.L732:
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	sub	r1, r8, lr
	cmp	r5, r4
	add	r1, r1, r6
	beq	.L733
	cmp	r7, ip
	bcc	.L740
	mov	r0, ip
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r9, r3
	bne	.L731
	mov	r3, ip
	mov	ip, r0
	mov	r0, r3
	b	.L734
.L740:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r2, #0
	mov	r5, r0
	blne	memmove
.L753:
	add	r0, r5, r4
	pop	{r4, r5, r6, pc}
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.syntax unified
	.arm
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
	movge	r2, #0
	blt	.L781
.L761:
	mov	r3, #0
	vmov.f64	d6, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L767:
	vmul.f64	d0, d0, d6
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r3, r3, #1
	bge	.L767
.L768:
	cmp	r2, #0
	vnegne.f64	d0, d0
	str	r3, [r0]
	mov	pc, lr
.L781:
	vmov.f64	d7, #5.0e-1
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L764
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L773
.L764:
	mov	r3, #0
	str	r3, [r0]
	mov	pc, lr
.L780:
	vmov.f64	d7, #-1.0e+0
	vcmpe.f64	d0, d7
	vneg.f64	d6, d0
	vmrs	APSR_nzcv, FPSCR
	vmovls.f64	d0, d6
	movls	r2, #1
	bls	.L761
	vmov.f64	d7, #-5.0e-1
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L764
	mov	r2, #1
.L762:
	vmov.f64	d0, d6
	mov	r3, #0
	vmov.f64	d7, #5.0e-1
.L769:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	sub	r3, r3, #1
	bmi	.L769
	b	.L768
.L773:
	vmov.f64	d6, d0
	mov	r2, #0
	b	.L762
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, r1
	orrs	r1, r5, r0
	beq	.L785
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
.L784:
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
	bne	.L784
	pop	{r4, r5, pc}
.L785:
	mov	r0, #0
	mov	r1, r0
	pop	{r4, r5, pc}
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.syntax unified
	.arm
	.type	udivmodsi4, %function
udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r0
	mov	r3, #1
	bcc	.L790
	b	.L791
.L793:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L802
.L790:
	cmp	r1, #0
	bge	.L793
.L791:
	mov	ip, #0
.L796:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L796
.L794:
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
.L802:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L791
	b	.L794
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L805
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L805:
	mov	r0, #7
	mov	pc, lr
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	asr	r2, r1, #31
	cmp	r1, r2
	cmpeq	r3, r2
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	beq	.L812
	push	{r4, lr}
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L812:
	mov	r0, #63
	mov	pc, lr
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.syntax unified
	.arm
	.type	__mulsi3, %function
__mulsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L820
	mov	r0, #0
.L819:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L819
	mov	pc, lr
.L820:
	mov	r0, r3
	mov	pc, lr
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	lr, r2, #3
	bic	r4, r2, #7
	bcc	.L827
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L827
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	add	r2, r0, r2
.L837:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r0, [r2, #-1]!
	bne	.L837
	pop	{r4, r5, r6, r7, pc}
.L827:
	cmp	lr, #0
	movne	r3, r1
	movne	ip, r0
	addne	lr, r1, lr, lsl #3
	beq	.L851
.L830:
	vldmia.64	r3!, {d7}	@ int
	cmp	r3, lr
	vstmia.64	ip!, {d7}	@ int
	bne	.L830
	cmp	r2, r4
	popls	{r4, r5, r6, r7, pc}
	sub	r7, r2, r4
	sub	r3, r7, #1
	cmp	r3, #6
	bls	.L832
	add	lr, r4, #1
	add	r3, r0, r4
	add	ip, r1, r4
	add	lr, r1, lr
	sub	lr, r3, lr
	orr	r5, ip, r3
	cmp	lr, #2
	and	r5, r5, #3
	movls	lr, #0
	movhi	lr, #1
	cmp	r5, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L832
	bic	r6, r7, #3
	sub	ip, ip, #4
	add	r5, r3, r6
.L833:
	ldr	lr, [ip, #4]!
	str	lr, [r3], #4
	cmp	r3, r5
	bne	.L833
	cmp	r7, r6
	add	r6, r4, r6
	popeq	{r4, r5, r6, r7, pc}
	ldrb	r3, [r1, r6]	@ zero_extendqisi2
	strb	r3, [r0, r6]
	add	r3, r6, #1
	cmp	r2, r3
	popls	{r4, r5, r6, r7, pc}
	add	r6, r6, #2
	cmp	r2, r6
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r0, r3]
	ldrbhi	r3, [r1, r6]	@ zero_extendqisi2
	strbhi	r3, [r0, r6]
	pop	{r4, r5, r6, r7, pc}
.L851:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
.L832:
	sub	r4, r4, #1
	add	r3, r1, r4
	sub	r1, r1, #1
	add	r1, r1, r2
	add	r4, r0, r4
.L835:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r4, #1]!
	bne	.L835
	pop	{r4, r5, r6, r7, pc}
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r5, r2, #1
	bcc	.L856
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L877
.L856:
	cmp	r5, #0
	beq	.L855
	sub	r3, r5, #1
	cmp	r3, #8
	bls	.L859
	orr	ip, r1, r0
	add	r3, r1, #2
	subs	r3, r0, r3
	and	ip, ip, #3
	movne	r3, #1
	cmp	ip, #0
	movne	r3, #0
	cmp	r3, #0
	beq	.L859
	mov	r3, r0
	bic	r6, r2, #3
	lsr	r7, r2, #2
	sub	ip, r1, #4
	add	r4, r0, r6
.L860:
	ldr	lr, [ip, #4]!
	str	lr, [r3], #4
	cmp	r3, r4
	bne	.L860
	cmp	r5, r7, lsl #1
	ldrshne	r3, [r1, r6]
	strhne	r3, [r0, r6]	@ movhi
.L855:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, r5, r6, r7, pc}
.L877:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	add	r2, r0, r2
.L865:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r0, [r2, #-1]!
	bne	.L865
	pop	{r4, r5, r6, r7, pc}
.L859:
	sub	r3, r1, #2
	add	r5, r3, r5, lsl #1
	sub	ip, r0, #2
.L862:
	ldrsh	lr, [r3, #2]!
	cmp	r3, r5
	strh	lr, [ip, #2]!	@ movhi
	bne	.L862
	b	.L855
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r5, r2, #2
	bic	r4, r2, #3
	bcc	.L883
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L910
.L883:
	cmp	r5, #0
	beq	.L911
	sub	r3, r5, #1
	cmp	r3, #8
	bls	.L885
	orr	ip, r0, r1
	add	r3, r1, #4
	subs	r3, r0, r3
	and	ip, ip, #7
	movne	r3, #1
	cmp	ip, #0
	movne	r3, #0
	cmp	r3, #0
	beq	.L885
	mov	ip, r1
	mov	r3, r0
	bic	lr, r2, #7
	add	lr, r0, lr
	lsr	r6, r2, #3
.L886:
	vldmia.64	ip!, {d7}	@ int
	vstmia.64	r3!, {d7}	@ int
	cmp	r3, lr
	bne	.L886
	cmp	r5, r6, lsl #1
	ldrne	r3, [r1, r6, lsl #3]
	strne	r3, [r0, r6, lsl #3]
.L889:
	cmp	r2, r4
	popls	{r4, r5, r6, r7, pc}
.L912:
	sub	r7, r2, r4
	sub	r3, r7, #1
	cmp	r3, #6
	bls	.L881
	add	lr, r4, #1
	add	r3, r0, r4
	add	ip, r1, r4
	add	lr, r1, lr
	sub	lr, r3, lr
	orr	r5, ip, r3
	cmp	lr, #2
	and	r5, r5, #3
	movls	lr, #0
	movhi	lr, #1
	cmp	r5, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L881
	bic	r6, r7, #3
	sub	ip, ip, #4
	add	r5, r3, r6
.L890:
	ldr	lr, [ip, #4]!
	str	lr, [r3], #4
	cmp	r3, r5
	bne	.L890
	cmp	r7, r6
	add	r6, r4, r6
	popeq	{r4, r5, r6, r7, pc}
	ldrb	r3, [r1, r6]	@ zero_extendqisi2
	strb	r3, [r0, r6]
	add	r3, r6, #1
	cmp	r2, r3
	popls	{r4, r5, r6, r7, pc}
	add	r6, r6, #2
	cmp	r2, r6
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r0, r3]
	ldrbhi	r3, [r1, r6]	@ zero_extendqisi2
	strbhi	r3, [r0, r6]
	pop	{r4, r5, r6, r7, pc}
.L910:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	add	r2, r0, r2
.L894:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r0, [r2, #-1]!
	bne	.L894
	pop	{r4, r5, r6, r7, pc}
.L911:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
.L881:
	sub	r4, r4, #1
	add	r3, r1, r4
	sub	r1, r1, #1
	add	r1, r1, r2
	add	r4, r0, r4
.L892:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r4, #1]!
	bne	.L892
	pop	{r4, r5, r6, r7, pc}
.L885:
	sub	r3, r1, #4
	add	r5, r3, r5, lsl #2
	sub	ip, r0, #4
.L888:
	ldr	lr, [r3, #4]!
	cmp	r3, r5
	str	lr, [ip, #4]!
	bne	.L888
	cmp	r2, r4
	bhi	.L912
	pop	{r4, r5, r6, r7, pc}
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.syntax unified
	.arm
	.type	__modi, %function
__modi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_idivmod
	mov	r0, r1
	pop	{r4, pc}
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.syntax unified
	.arm
	.type	__uitod, %function
__uitod:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s0, r0	@ int
	vcvt.f64.u32	d0, s0
	mov	pc, lr
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.syntax unified
	.arm
	.type	__uitof, %function
__uitof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmov	s0, r0	@ int
	vcvt.f32.u32	s0, s0
	mov	pc, lr
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.syntax unified
	.arm
	.type	__ulltod, %function
__ulltod:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_ul2d
	vmov	d0, r0, r1
	pop	{r4, pc}
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.syntax unified
	.arm
	.type	__ulltof, %function
__ulltof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_ul2f
	vmov	s0, r0
	pop	{r4, pc}
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.syntax unified
	.arm
	.type	__umodi, %function
__umodi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_uidivmod
	mov	r0, r1
	pop	{r4, pc}
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.syntax unified
	.arm
	.type	__clzhi2, %function
__clzhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r0, #15
	mov	r3, r0
	bne	.L926
	asrs	r0, r0, #14
	movne	pc, lr
	lsrs	r2, r3, #13
	bne	.L927
	lsrs	r2, r3, #12
	bne	.L928
	lsrs	r2, r3, #11
	bne	.L929
	lsrs	r2, r3, #10
	bne	.L930
	lsrs	r2, r3, #9
	bne	.L931
	lsrs	r2, r3, #8
	bne	.L932
	lsrs	r2, r3, #7
	bne	.L933
	lsrs	r2, r3, #6
	bne	.L934
	lsrs	r2, r3, #5
	bne	.L935
	lsrs	r2, r3, #4
	bne	.L936
	lsrs	r2, r3, #3
	bne	.L937
	lsrs	r2, r3, #2
	bne	.L938
	lsrs	r2, r3, #1
	bne	.L939
	cmp	r3, #0
	moveq	r0, #16
	movne	r0, #15
	mov	pc, lr
.L926:
	mov	r0, #0
	mov	pc, lr
.L937:
	mov	r0, #12
	mov	pc, lr
.L927:
	mov	r0, #2
	mov	pc, lr
.L928:
	mov	r0, #3
	mov	pc, lr
.L929:
	mov	r0, #4
	mov	pc, lr
.L930:
	mov	r0, #5
	mov	pc, lr
.L931:
	mov	r0, #6
	mov	pc, lr
.L932:
	mov	r0, #7
	mov	pc, lr
.L933:
	mov	r0, #8
	mov	pc, lr
.L934:
	mov	r0, #9
	mov	pc, lr
.L935:
	mov	r0, #10
	mov	pc, lr
.L936:
	mov	r0, #11
	mov	pc, lr
.L938:
	mov	r0, #13
	mov	pc, lr
.L939:
	mov	r0, #14
	mov	pc, lr
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.syntax unified
	.arm
	.type	__ctzhi2, %function
__ctzhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	bne	.L944
	tst	r0, #2
	bne	.L945
	tst	r0, #4
	bne	.L946
	tst	r0, #8
	bne	.L947
	tst	r0, #16
	bne	.L948
	tst	r0, #32
	bne	.L949
	tst	r0, #64
	bne	.L950
	tst	r0, #128
	bne	.L951
	tst	r0, #256
	bne	.L952
	tst	r0, #512
	bne	.L953
	tst	r0, #1024
	bne	.L954
	tst	r0, #2048
	bne	.L955
	tst	r0, #4096
	bne	.L956
	tst	r0, #8192
	bne	.L957
	tst	r0, #16384
	bne	.L958
	lsrs	r0, r0, #15
	moveq	r0, #16
	movne	r0, #15
	mov	pc, lr
.L944:
	mov	r0, #0
	mov	pc, lr
.L945:
	mov	r0, #1
	mov	pc, lr
.L956:
	mov	r0, #12
	mov	pc, lr
.L946:
	mov	r0, #2
	mov	pc, lr
.L947:
	mov	r0, #3
	mov	pc, lr
.L948:
	mov	r0, #4
	mov	pc, lr
.L949:
	mov	r0, #5
	mov	pc, lr
.L950:
	mov	r0, #6
	mov	pc, lr
.L951:
	mov	r0, #7
	mov	pc, lr
.L952:
	mov	r0, #8
	mov	pc, lr
.L953:
	mov	r0, #9
	mov	pc, lr
.L954:
	mov	r0, #10
	mov	pc, lr
.L955:
	mov	r0, #11
	mov	pc, lr
.L957:
	mov	r0, #13
	mov	pc, lr
.L958:
	mov	r0, #14
	mov	pc, lr
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.syntax unified
	.arm
	.type	__fixunssfsi, %function
__fixunssfsi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L966
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L967:
	.align	2
.L966:
	.word	1191182336
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.syntax unified
	.arm
	.type	__parityhi2, %function
__parityhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r2, r0, #30
	and	r3, r0, #1
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #29
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #28
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #27
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #26
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #25
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #24
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #23
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #22
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #21
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #20
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #19
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #18
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #17
	add	r3, r3, r2, lsr #31
	add	r0, r3, r0, lsr #15
	and	r0, r0, #1
	mov	pc, lr
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.syntax unified
	.arm
	.type	__popcounthi2, %function
__popcounthi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r2, r0, #30
	and	r3, r0, #1
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #29
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #28
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #27
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #26
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #25
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #24
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #23
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #22
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #21
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #20
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #19
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #18
	add	r3, r3, r2, lsr #31
	lsl	r2, r0, #17
	add	r3, r3, r2, lsr #31
	add	r0, r3, r0, lsr #15
	mov	pc, lr
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.syntax unified
	.arm
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L973
	mov	r0, #0
.L972:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L972
	mov	pc, lr
.L973:
	mov	r0, r3
	mov	pc, lr
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.syntax unified
	.arm
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #0
	beq	.L979
	cmp	r1, #0
	beq	.L980
	mov	r0, #0
.L978:
	ands	r3, r1, #1
	mvnne	r3, #0
	lsrs	r1, r1, #1
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L978
	mov	pc, lr
.L979:
	mov	r0, r2
	mov	pc, lr
.L980:
	mov	r0, r1
	mov	pc, lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.syntax unified
	.arm
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	mov	r3, #1
	bhi	.L984
	b	.L985
.L987:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L996
.L984:
	cmp	r1, #0
	bge	.L987
.L985:
	mov	ip, #0
.L990:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L990
.L988:
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
.L996:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L985
	b	.L988
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.syntax unified
	.arm
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L999
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L999:
	mvn	r0, #0
	mov	pc, lr
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.syntax unified
	.arm
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L1002
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L1002:
	mvn	r0, #0
	mov	pc, lr
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.syntax unified
	.arm
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r2, r1
	smull	r0, r1, r3, r2
	mov	pc, lr
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.syntax unified
	.arm
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r2, r1
	umull	r0, r1, r3, r2
	mov	pc, lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.syntax unified
	.arm
	.type	__mulhi3, %function
__mulhi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	rsblt	r1, r1, #0
	mov	lr, r0
	movlt	r4, #1
	blt	.L1007
	beq	.L1010
	mov	r4, #0
.L1007:
	mov	r0, #0
	mov	r3, r0
.L1009:
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
	bne	.L1009
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1010:
	mov	r0, r1
	pop	{r4, pc}
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.syntax unified
	.arm
	.type	__divsi3, %function
__divsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	movlt	r3, #0
	str	lr, [sp, #-4]!
	rsblt	r0, r0, #0
	movlt	lr, #1
	movge	r3, #1
	movge	lr, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	lr, r3
	cmp	r0, r1
	mov	ip, r0
	mov	r3, #1
	bls	.L1020
.L1019:
	lsls	r3, r3, #1
	movne	r2, #1
	moveq	r2, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	r2, #0
	andhi	r2, r2, #1
	cmp	r2, #0
	bne	.L1019
	cmp	r3, #0
	moveq	r0, r3
	beq	.L1021
.L1020:
	mov	r0, #0
.L1024:
	cmp	r1, ip
	subls	ip, ip, r1
	orrls	r0, r0, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L1024
.L1021:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
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
	mov	r2, #1
	bls	.L1042
.L1037:
	lsls	r2, r2, #1
	movne	r1, #1
	moveq	r1, #0
	lsl	r3, r3, #1
	cmp	ip, r3
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	bne	.L1037
	cmp	r2, #0
	moveq	r0, ip
	beq	.L1039
.L1042:
	cmp	r3, r0
	subls	r0, r0, r3
	lsrs	r2, r2, #1
	lsr	r3, r3, #1
	bne	.L1042
.L1039:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	push	{r4, r5, r6, lr}
	movcc	r4, #1
	bcc	.L1054
	b	.L1103
.L1057:
	cmp	lr, #0
	cmpne	ip, r0
	lsr	r3, r3, #16
	movcc	ip, #1
	movcs	ip, #0
	lsr	lr, lr, #16
	bcs	.L1056
	mov	r4, lr
	mov	r1, r3
.L1054:
	lsl	r3, r1, #17
	tst	r1, #32768
	lsl	lr, r4, #17
	lsr	ip, r3, #16
	beq	.L1057
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, r4
	subcs	r0, r0, r1
	lslcs	r0, r0, #16
	lsrcs	r0, r0, #16
.L1080:
	lsr	r5, r4, #1
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	cmp	r5, #0
	lsr	r6, r1, #1
	beq	.L1059
.L1061:
	cmp	r0, r6
	bcc	.L1062
	sub	r6, r0, r6
	orr	r5, lr, r5
	lsl	r0, r6, #16
	lsl	lr, r5, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1062:
	lsr	r3, r4, #2
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #2
	beq	.L1059
	cmp	r0, ip
	bcc	.L1063
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1063:
	lsr	r3, r4, #3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #3
	beq	.L1059
	cmp	r0, ip
	bcc	.L1064
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1064:
	lsr	r3, r4, #4
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #4
	beq	.L1059
	cmp	r0, ip
	bcc	.L1065
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1065:
	lsr	r3, r4, #5
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #5
	beq	.L1059
	cmp	r0, ip
	bcc	.L1066
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1066:
	lsr	r3, r4, #6
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #6
	beq	.L1059
	cmp	r0, ip
	bcc	.L1067
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1067:
	lsr	r3, r4, #7
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #7
	beq	.L1059
	cmp	r0, ip
	bcs	.L1104
.L1068:
	lsr	r3, r4, #8
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #8
	beq	.L1059
	cmp	r0, ip
	bcs	.L1105
.L1069:
	lsr	r3, r4, #9
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #9
	beq	.L1059
	cmp	r0, ip
	bcs	.L1106
.L1070:
	lsr	r3, r4, #10
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #10
	beq	.L1059
	cmp	r0, ip
	bcs	.L1107
.L1071:
	lsr	r3, r4, #11
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #11
	beq	.L1059
	cmp	r0, ip
	bcs	.L1108
.L1072:
	lsr	r3, r4, #12
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #12
	beq	.L1059
	cmp	r0, ip
	bcc	.L1073
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1073:
	lsr	r3, r4, #13
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #13
	beq	.L1059
	cmp	r0, ip
	bcc	.L1074
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1074:
	lsr	r3, r4, #14
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	lsr	ip, r1, #14
	beq	.L1059
	cmp	r0, ip
	bcc	.L1075
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
.L1075:
	lsr	r4, r4, #15
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	cmp	r4, #0
	lsr	r1, r1, #15
	beq	.L1059
	cmp	r0, r1
	movcc	r0, #0
	subcs	r1, r0, r1
	orrcs	lr, lr, #1
	lslcs	r0, r1, #16
	lslcs	lr, lr, #16
	lsrcs	r0, r0, #16
	lsrcs	lr, lr, #16
.L1059:
	cmp	r2, #0
	moveq	r0, lr
	pop	{r4, r5, r6, pc}
.L1056:
	cmp	lr, #0
	beq	.L1059
	cmp	r0, r3
	bcc	.L1060
	ldr	r6, .L1109
	sub	r0, r0, r3
	lsl	r0, r0, #16
	and	r5, r4, r6
	lsr	r0, r0, #16
	and	r6, r6, r1
	mov	r4, lr
	mov	r1, r3
	b	.L1061
.L1104:
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
	b	.L1068
.L1060:
	ldr	r6, .L1109
	and	r5, r4, r6
	mov	r4, lr
	and	r6, r6, r1
	mov	lr, ip
	mov	r1, r3
	b	.L1061
.L1105:
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
	b	.L1069
.L1106:
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
	b	.L1070
.L1107:
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
	b	.L1071
.L1108:
	sub	ip, r0, ip
	orr	r3, lr, r3
	lsl	r0, ip, #16
	lsl	lr, r3, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
	b	.L1072
.L1103:
	moveq	lr, #1
	moveq	r0, #0
	movne	lr, #0
	b	.L1059
.L1110:
	.align	2
.L1109:
	.word	32767
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.syntax unified
	.arm
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	mov	r3, #1
	bhi	.L1112
	b	.L1113
.L1115:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1124
.L1112:
	cmp	r1, #0
	bge	.L1115
.L1113:
	mov	ip, #0
.L1118:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L1118
.L1116:
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
.L1124:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L1113
	b	.L1116
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.syntax unified
	.arm
	.type	__ashldi3, %function
__ashldi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #32
	beq	.L1126
	mov	r3, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r0, r3
	mov	pc, lr
.L1126:
	cmp	r2, #0
	moveq	pc, lr
	rsb	ip, r2, #32
	lsl	r1, r1, r2
	lsl	r3, r0, r2
	orr	r1, r1, r0, lsr ip
	mov	r0, r3
	mov	pc, lr
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.syntax unified
	.arm
	.type	__ashrdi3, %function
__ashrdi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #32
	beq	.L1131
	sub	r2, r2, #32
	asr	r3, r1, #31
	asr	r0, r1, r2
	mov	r1, r3
	mov	pc, lr
.L1131:
	cmp	r2, #0
	moveq	pc, lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	asr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	mov	pc, lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	eor	r0, r1, r1, ror #16
	lsr	r3, r3, #8
	lsr	r0, r0, #8
	bic	r3, r3, #65280
	bic	r0, r0, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
	mov	pc, lr
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.syntax unified
	.arm
	.type	__bswapsi2, %function
__bswapsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r0, r0, ror #16
	lsr	r3, r3, #8
	bic	r3, r3, #65280
	eor	r0, r3, r0, ror #8
	mov	pc, lr
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.syntax unified
	.arm
	.type	__clzsi2, %function
__clzsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #65536
	movcs	r1, #0
	movcc	r1, #1
	lsl	r1, r1, #4
	rsb	r3, r1, #16
	lsr	r3, r0, r3
	tst	r3, #65280
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #3
	rsb	r0, r2, #8
	lsr	r3, r3, r0
	tst	r3, #240
	add	r1, r2, r1
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #2
	rsb	r0, r2, #4
	lsr	r3, r3, r0
	tst	r3, #12
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	add	r2, r2, r1
	rsb	r1, r0, #2
	lsr	r3, r3, r1
	tst	r3, #2
	add	r0, r0, r2
	rsb	r2, r3, #2
	movne	r2, #0
	add	r0, r2, r0
	mov	pc, lr
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.syntax unified
	.arm
	.type	__cmpdi2, %function
__cmpdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1142
	bgt	.L1143
	cmp	r0, r2
	bcc	.L1142
	bhi	.L1143
	mov	r0, #1
	mov	pc, lr
.L1142:
	mov	r0, #0
	mov	pc, lr
.L1143:
	mov	r0, #2
	mov	pc, lr
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.syntax unified
	.arm
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1148
	bgt	.L1147
	cmp	r0, r2
	bcc	.L1148
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L1148:
	mvn	r0, #0
	mov	pc, lr
.L1147:
	mov	r0, #1
	mov	pc, lr
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.syntax unified
	.arm
	.type	__ctzsi2, %function
__ctzsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r3, r0, #16
	lsr	r3, r3, #16
	rsbs	r3, r3, #1
	movcc	r3, #0
	lsl	r1, r3, #4
	lsr	r3, r0, r1
	and	r2, r3, #255
	rsbs	r2, r2, #1
	movcc	r2, #0
	lsl	r2, r2, #3
	lsr	r3, r3, r2
	tst	r3, #15
	add	r2, r2, r1
	moveq	r1, #1
	movne	r1, #0
	lsl	r1, r1, #2
	lsr	r3, r3, r1
	tst	r3, #3
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	lsr	r3, r3, r0
	and	r3, r3, #3
	add	r1, r1, r2
	mvn	r2, r3
	ands	r2, r2, #1
	mvnne	r2, #0
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	add	r0, r0, r1
	and	r3, r3, r2
	add	r0, r3, r0
	mov	pc, lr
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.syntax unified
	.arm
	.type	__lshrdi3, %function
__lshrdi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #32
	beq	.L1151
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r1, r3
	mov	pc, lr
.L1151:
	cmp	r2, #0
	moveq	pc, lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	lsr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	mov	pc, lr
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.syntax unified
	.arm
	.type	__muldsi3, %function
__muldsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L1157
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
	add	r2, r2, r3, lsl #16
	add	r1, r1, r2, lsr #16
	add	r3, r0, r3, lsr #16
	and	r0, r2, lr
	add	r0, r0, r1, lsl #16
	add	r1, r3, r1, lsr #16
	pop	{r4, pc}
.L1158:
	.align	2
.L1157:
	.word	65535
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L1161
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
	add	ip, ip, lr, lsr #16
	mla	r3, r0, r3, ip
	and	r6, r6, r5
	mla	r1, r2, r1, r3
	add	r0, r6, lr, lsl #16
	pop	{r4, r5, r6, r7, pc}
.L1162:
	.align	2
.L1161:
	.word	65535
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.syntax unified
	.arm
	.type	__negdi2, %function
__negdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	mov	pc, lr
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.syntax unified
	.arm
	.type	__paritydi2, %function
__paritydi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r1, r1, r0
	eor	r1, r1, r1, lsr #16
	eor	r1, r1, r1, lsr #8
	ldr	r3, .L1165
	eor	r1, r1, r1, lsr #4
	and	r1, r1, #15
	asr	r0, r3, r1
	and	r0, r0, #1
	mov	pc, lr
.L1166:
	.align	2
.L1165:
	.word	27030
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.syntax unified
	.arm
	.type	__paritysi2, %function
__paritysi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r0, r0, lsr #16
	eor	r3, r3, r3, lsr #8
	ldr	r2, .L1168
	eor	r3, r3, r3, lsr #4
	and	r3, r3, #15
	asr	r0, r2, r3
	and	r0, r0, #1
	mov	pc, lr
.L1169:
	.align	2
.L1168:
	.word	27030
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L1172
	lsr	r3, r0, #1
	orr	r3, r3, r1, lsl #31
	and	r3, r3, r2
	subs	r0, r0, r3
	and	r2, r2, r1, lsr #1
	sbc	r1, r1, r2
	str	lr, [sp, #-4]!
	lsr	r2, r0, #2
	ldr	lr, .L1172+4
	orr	r2, r2, r1, lsl #30
	and	r0, r0, lr
	and	r2, r2, lr
	adds	r2, r2, r0
	and	r3, lr, r1, lsr #2
	and	r1, r1, lr
	adc	r3, r3, r1
	lsr	r0, r2, #4
	orr	r0, r0, r3, lsl #28
	ldr	ip, .L1172+8
	adds	r2, r0, r2
	adc	r0, r3, r3, lsr #4
	and	r0, r0, ip
	and	r3, r2, ip
	add	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	ldr	pc, [sp], #4
.L1173:
	.align	2
.L1172:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L1175
	ldr	r1, .L1175+4
	and	r2, r2, r0, lsr #1
	sub	r0, r0, r2
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	add	r2, r2, r0
	ldr	r3, .L1175+8
	add	r2, r2, r2, lsr #4
	and	r3, r3, r2
	add	r3, r3, r3, lsr #16
	add	r3, r3, r3, lsr #8
	and	r0, r3, #63
	mov	pc, lr
.L1176:
	.align	2
.L1175:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	vmov.f64	d7, d0
	mov	r3, r0
	vmov.f64	d0, #1.0e+0
	beq	.L1178
.L1180:
	vmul.f64	d0, d0, d7
.L1178:
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	beq	.L1179
	tst	r3, #1
	vmul.f64	d7, d7, d7
	add	r2, r3, r3, lsr #31
	bne	.L1180
.L1184:
	asr	r3, r2, #1
	tst	r3, #1
	vmul.f64	d7, d7, d7
	add	r2, r3, r3, lsr #31
	bne	.L1180
	b	.L1184
.L1179:
	cmp	r0, #0
	vmovlt.f64	d7, #1.0e+0
	vdivlt.f64	d0, d7, d0
	mov	pc, lr
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.syntax unified
	.arm
	.type	__powisf2, %function
__powisf2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	vmov.f32	s15, s0
	mov	r3, r0
	vmov.f32	s0, #1.0e+0
	beq	.L1186
.L1188:
	vmul.f32	s0, s0, s15
.L1186:
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	beq	.L1187
	tst	r3, #1
	vmul.f32	s15, s15, s15
	add	r2, r3, r3, lsr #31
	bne	.L1188
.L1192:
	asr	r3, r2, #1
	tst	r3, #1
	vmul.f32	s15, s15, s15
	add	r2, r3, r3, lsr #31
	bne	.L1188
	b	.L1192
.L1187:
	cmp	r0, #0
	vmovlt.f32	s15, #1.0e+0
	vdivlt.f32	s0, s15, s0
	mov	pc, lr
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.syntax unified
	.arm
	.type	__ucmpdi2, %function
__ucmpdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1197
	bhi	.L1198
	cmp	r0, r2
	bcc	.L1197
	bhi	.L1198
	mov	r0, #1
	mov	pc, lr
.L1197:
	mov	r0, #0
	mov	pc, lr
.L1198:
	mov	r0, #2
	mov	pc, lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.syntax unified
	.arm
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1203
	bhi	.L1202
	cmp	r0, r2
	bcc	.L1203
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L1203:
	mvn	r0, #0
	mov	pc, lr
.L1202:
	mov	r0, #1
	mov	pc, lr
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
