	.arch armv4
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
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
	@ link register save eliminated.
	cmp	r0, r1
	addhi	r3, r1, r2
	addhi	r2, r0, r2
	bhi	.L3
	b	.L2
.L4:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	strb	ip, [r2, #-1]!
.L3:
	cmp	r3, r1
	moveq	pc, lr
	b	.L4
.L2:
	cmp	r0, r1
	moveq	pc, lr
	sub	ip, r0, #1
	add	r2, r1, r2
	mov	r3, r1
	b	.L6
.L7:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	strb	r1, [ip, #1]!
.L6:
	cmp	r3, r2
	moveq	pc, lr
	b	.L7
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.syntax unified
	.arm
	.type	memccpy, %function
memccpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
	b	.L10
.L12:
	sub	r3, r3, #1
.L10:
	mov	lr, r0
	cmp	r3, #0
	beq	.L11
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	cmp	r2, ip
	bne	.L12
.L11:
	cmp	r3, #0
	addne	r0, lr, #1
	moveq	r0, #0
	ldr	pc, [sp], #4
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
	and	r1, r1, #255
	b	.L17
.L19:
	sub	r2, r2, #1
.L17:
	mov	ip, r0
	cmp	r2, #0
	beq	.L18
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L19
.L18:
	cmp	r2, #0
	movne	r0, ip
	moveq	r0, #0
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
	push	{r4, lr}
	b	.L24
.L26:
	sub	r2, r2, #1
.L24:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L25
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	cmp	ip, r3
	beq	.L26
.L25:
	cmp	r2, #0
	ldrbne	r0, [r4]	@ zero_extendqisi2
	ldrbne	r3, [lr]	@ zero_extendqisi2
	subne	r0, r0, r3
	moveq	r0, #0
	pop	{r4, pc}
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #1
	add	r2, r1, r2
	b	.L31
.L32:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	strb	ip, [r3, #1]!
.L31:
	cmp	r1, r2
	moveq	pc, lr
	b	.L32
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	and	r1, r1, #255
	add	r2, r0, r2
	mvn	ip, r0
	b	.L35
.L37:
	ldrb	r3, [r2, #-1]!	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L35
	add	r0, r0, lr
	ldr	pc, [sp], #4
.L35:
	add	lr, ip, r2
	cmp	r2, r0
	bne	.L37
	mov	r0, #0
	ldr	pc, [sp], #4
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, r2
	mov	r3, r0
	and	r1, r1, #255
	b	.L40
.L41:
	strb	r1, [r3], #1
.L40:
	cmp	r3, r2
	moveq	pc, lr
	b	.L41
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
	sub	r1, r1, #1
	mov	r3, r0
.L44:
	mov	r0, r3
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r2, #0
	moveq	pc, lr
	b	.L44
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
	and	r1, r1, #255
	mov	r3, r0
.L49:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r1, r2
	moveq	pc, lr
	b	.L49
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
.L53:
	mov	r2, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L54
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L53
	mov	r0, #0
	mov	pc, lr
.L54:
	mov	r0, r2
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
	str	lr, [sp, #-4]!
.L58:
	mov	ip, r1
	mov	lr, r0
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L57
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L58
.L57:
	ldrb	r0, [lr]	@ zero_extendqisi2
	ldrb	r3, [ip]	@ zero_extendqisi2
	sub	r0, r0, r3
	ldr	pc, [sp], #4
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
	mov	r3, r0
.L61:
	mov	r1, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L61
	sub	r0, r1, r0
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
	push	{r4, lr}
	cmp	r2, #0
	beq	.L67
	mov	r3, r0
	add	r0, r0, r2
.L66:
	mov	lr, r1
	mov	r4, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L65
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r0, r3
	cmpne	r2, #0
	beq	.L65
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2
	ldrb	r2, [r1], #1	@ zero_extendqisi2
	cmp	ip, r2
	beq	.L66
.L65:
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldrb	r3, [lr]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{r4, pc}
.L67:
	mov	r0, #0
	pop	{r4, pc}
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
	mov	ip, r1
	b	.L70
.L71:
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	strb	r3, [ip, #-2]
	ldrb	r3, [r0, #-2]	@ zero_extendqisi2
	strb	r3, [ip, #-1]
.L70:
	add	r0, r0, #2
	add	ip, ip, #2
	rsb	r3, ip, #2
	add	r3, r3, r2
	add	r3, r3, r1
	cmp	r3, #1
	movle	pc, lr
	b	.L71
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
	cmp	r3, #32
	cmphi	r0, #31
	bls	.L85
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L86
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L85:
	mov	r0, #1
	mov	pc, lr
.L86:
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
	bhi	.L90
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	mov	pc, lr
.L90:
	sub	r3, r0, #8192
	sub	r3, r3, #42
	ldr	r1, .L96
	ldr	r2, .L96+4
	cmp	r3, r2
	cmphi	r0, r1
	bls	.L92
	sub	r2, r0, #57344
	ldr	r3, .L96+8
	cmp	r2, r3
	bls	.L93
	sub	r3, r0, #65280
	sub	r3, r3, #252
	ldr	r2, .L96+12
	cmp	r3, r2
	bhi	.L94
	ldr	r3, .L96+16
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	mov	pc, lr
.L92:
	mov	r0, #1
	mov	pc, lr
.L93:
	mov	r0, #1
	mov	pc, lr
.L94:
	mov	r0, #0
	mov	pc, lr
.L97:
	.align	2
.L96:
	.word	8231
	.word	47061
	.word	8184
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
	bls	.L100
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L100:
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
	bvs	.L107
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L110
	vsub.f64	d0, d0, d1
	mov	pc, lr
.L107:
	vmov.f64	d0, d1
	mov	pc, lr
.L110:
	vldr.64	d0, .L111
	mov	pc, lr
.L112:
	.align	3
.L111:
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
	bvs	.L117
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L120
	vsub.f32	s0, s0, s1
	mov	pc, lr
.L117:
	vmov.f32	s0, s1
	mov	pc, lr
.L120:
	vldr.32	s0, .L121
	mov	pc, lr
.L122:
	.align	2
.L121:
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
	bvs	.L127
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L125
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	mov	pc, lr
.L125:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L127:
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
	bvs	.L136
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L134
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovlt.f32	s0, s1
	mov	pc, lr
.L134:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	mov	pc, lr
.L136:
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
	bvs	.L145
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L143
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	mov	pc, lr
.L143:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L145:
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
	bvs	.L154
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L152
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	mov	pc, lr
.L152:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L154:
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
	bvs	.L163
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L161
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovge.f32	s0, s1
	mov	pc, lr
.L161:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	mov	pc, lr
.L163:
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
	bvs	.L172
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L170
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	mov	pc, lr
.L170:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L172:
	vmov.f64	d0, d1
	mov	pc, lr
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, %object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklm"
	.ascii	"nopqrstuvwxyz\000"
	.text
	.align	2
	.global	l64a
	.syntax unified
	.arm
	.type	l64a, %function
l64a:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L180
	ldr	r1, .L180+4
	b	.L178
.L179:
	and	r2, r0, #63
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3], #1
	lsr	r0, r0, #6
.L178:
	cmp	r0, #0
	bne	.L179
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, .L180
	mov	pc, lr
.L181:
	.align	2
.L180:
	.word	s.0
	.word	digits
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.global	srand
	.syntax unified
	.arm
	.type	srand, %function
srand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r0, #1
	mov	r3, #0
	ldr	r1, .L183
	stm	r1, {r2-r3}
	mov	pc, lr
.L184:
	.align	2
.L183:
	.word	seed
	.size	srand, .-srand
	.align	2
	.global	rand
	.syntax unified
	.arm
	.type	rand, %function
rand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	ip, .L186
	ldmia	ip, {r4-r5}
	ldr	r0, .L186+4
	ldr	r1, .L186+8
	mul	r1, r4, r1
	mla	r1, r0, r5, r1
	umull	r2, lr, r4, r0
	add	r3, r1, lr
	adds	r4, r2, #1
	adc	r5, r3, #0
	stm	ip, {r4-r5}
	lsr	r0, r5, #1
	pop	{r4, r5, pc}
.L187:
	.align	2
.L186:
	.word	seed
	.word	1284865837
	.word	1481765933
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
	bne	.L189
	mov	r3, #0
	str	r3, [r0, #4]
	str	r3, [r0]
	mov	pc, lr
.L189:
	ldr	r3, [r1]
	str	r3, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
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
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ldrne	r2, [r0]
	strne	r2, [r3]
	mov	pc, lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	mov	r10, r1
	mov	fp, r2
	mov	r6, r3
	ldr	r9, [sp, #40]
	ldr	r8, [r2]
	mov	r5, r1
	mov	r4, #0
	b	.L195
.L198:
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	add	r5, r5, r6
	cmp	r0, #0
	bne	.L196
	mla	r0, r6, r4, r10
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L196:
	add	r4, r4, #1
.L195:
	cmp	r4, r8
	bne	.L198
	add	r3, r8, #1
	str	r3, [fp]
	mov	r2, r6
	mov	r1, r7
	mla	r0, r8, r6, r10
	bl	memcpy
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
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
	mov	r7, r0
	mov	r10, r1
	mov	r6, r3
	ldr	r9, [sp, #32]
	ldr	r8, [r2]
	mov	r5, r1
	mov	r4, #0
	b	.L200
.L203:
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	add	r5, r5, r6
	cmp	r0, #0
	bne	.L201
	mla	r0, r6, r4, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L201:
	add	r4, r4, #1
.L200:
	cmp	r4, r8
	bne	.L203
	mov	r0, #0
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
	push	{r4, r5, r6, lr}
	mov	r5, r0
.L206:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L206
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L212
	cmp	r3, #45
	moveq	r1, #1
	beq	.L207
	b	.L213
.L212:
	mov	r1, #0
.L207:
	add	r4, r4, #1
	b	.L208
.L213:
	mov	r1, #0
.L208:
	sub	r3, r4, #1
	mov	r0, #0
	b	.L209
.L210:
	add	r0, r0, r0, lsl #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r2, r2, #48
	rsb	r0, r2, r0, lsl #1
.L209:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L210
	cmp	r1, #0
	rsbeq	r0, r0, #0
	pop	{r4, r5, r6, pc}
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
.L217:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L217
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L223
	cmp	r3, #45
	moveq	r1, #1
	beq	.L218
	b	.L224
.L223:
	mov	r1, #0
.L218:
	add	r4, r4, #1
	b	.L219
.L224:
	mov	r1, #0
.L219:
	sub	r3, r4, #1
	mov	r0, #0
	b	.L220
.L221:
	add	r0, r0, r0, lsl #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r2, r2, #48
	rsb	r0, r2, r0, lsl #1
.L220:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L221
	cmp	r1, #0
	rsbeq	r0, r0, #0
	pop	{r4, r5, r6, pc}
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
.L228:
	mov	r10, fp
	ldrb	r0, [fp], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L228
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L234
	cmp	r3, #45
	moveq	r0, #1
	beq	.L229
	b	.L235
.L234:
	mov	r0, #0
.L229:
	add	r10, r10, #1
	b	.L230
.L235:
	mov	r0, #0
.L230:
	sub	r1, r10, #1
	mov	r10, #0
	mov	fp, #0
	b	.L231
.L232:
	lsl	r3, fp, #2
	orr	r3, r3, r10, lsr #30
	lsl	r2, r10, #2
	adds	r4, r2, r10
	adc	r5, r3, fp
	adds	r6, r4, r4
	adc	r7, r5, r5
	mov	r4, r6
	mov	r5, r7
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	r3, r3, #48
	mov	r8, r3
	asr	r9, r3, #31
	subs	r10, r6, r3
	sbc	fp, r7, r9
.L231:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L232
	cmp	r0, #0
	bne	.L236
	rsbs	r0, r10, #0
	rsc	r1, fp, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L236:
	mov	r0, r10
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
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
	mov	r8, r0
	mov	r7, r1
	mov	r4, r2
	mov	r6, r3
	ldr	r9, [sp, #32]
	b	.L239
.L243:
	lsr	r5, r4, #1
	mla	r5, r6, r5, r7
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	lsrlt	r4, r4, #1
	blt	.L239
.L240:
	cmp	r0, #0
	ble	.L244
	add	r7, r5, r6
	sub	r3, r4, #1
	sub	r4, r3, r4, lsr #1
.L239:
	cmp	r4, #0
	bne	.L243
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L244:
	mov	r0, r5
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	mov	r7, r3
	ldr	r10, [sp, #32]
	ldr	r9, [sp, #36]
	mov	r4, r2
	mov	r6, r1
	b	.L246
.L249:
	asr	r5, r4, #1
	mla	r5, r7, r5, r6
	mov	r2, r9
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r10
	cmp	r0, #0
	beq	.L250
	addgt	r6, r5, r7
	subgt	r4, r4, #1
	asr	r4, r4, #1
.L246:
	cmp	r4, #0
	bne	.L249
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L250:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r1, r2
	mov	r0, r5
	bl	__aeabi_idiv
	mov	r7, r0
	mov	r1, r6
	mov	r0, r5
	bl	__aeabi_idivmod
	str	r7, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
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
	push	{r4, r5}
	asr	r2, r1, #31
	eor	r4, r2, r0
	eor	r5, r2, r1
	subs	r0, r4, r2
	sbc	r1, r5, r2
	pop	{r4, r5}
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
	push	{r4, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	mov	r6, r2
	mov	r7, r3
	add	r9, sp, #32
	ldmia	r9, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	mov	r10, r0
	mov	fp, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	stm	r4, {r10-fp}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r6, r7, r8, r9, r10, fp, pc}
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r1, r2
	mov	r0, r5
	bl	__aeabi_idiv
	mov	r7, r0
	mov	r1, r6
	mov	r0, r5
	bl	__aeabi_idivmod
	str	r7, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
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
	push	{r4, r5}
	asr	r2, r1, #31
	eor	r4, r2, r0
	eor	r5, r2, r1
	subs	r0, r4, r2
	sbc	r1, r5, r2
	pop	{r4, r5}
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
	push	{r4, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	mov	r6, r2
	mov	r7, r3
	add	r9, sp, #32
	ldmia	r9, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	mov	r10, r0
	mov	fp, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	stm	r4, {r10-fp}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r6, r7, r8, r9, r10, fp, pc}
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
.L260:
	mov	r2, r0
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r0, #-4]
	cmp	r1, r3
	bne	.L260
.L259:
	ldr	r3, [r2]
	cmp	r3, #0
	movne	r0, r2
	moveq	r0, #0
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
	str	lr, [sp, #-4]!
.L266:
	mov	ip, r1
	mov	lr, r0
	ldr	r2, [r0], #4
	ldr	r3, [r1], #4
	cmp	r2, r3
	bne	.L265
	ldr	r3, [r0, #-4]
	cmp	r3, #0
	beq	.L265
	ldr	r3, [r1, #-4]
	cmp	r3, #0
	bne	.L266
.L265:
	ldr	r2, [lr]
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L268
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	ldr	pc, [sp], #4
.L268:
	mvn	r0, #0
	ldr	pc, [sp], #4
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
.L271:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	moveq	pc, lr
	b	.L271
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
	mov	r3, r0
.L275:
	mov	r1, r3
	ldr	r2, [r3], #4
	cmp	r2, #0
	bne	.L275
	sub	r0, r1, r0
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
	push	{r4, lr}
	b	.L278
.L280:
	sub	r2, r2, #1
.L278:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L279
	ldr	ip, [r0]
	ldr	r3, [r1]
	cmp	ip, r3
	bne	.L279
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L279
	ldr	r3, [r1], #4
	cmp	r3, #0
	bne	.L280
.L279:
	cmp	r2, #0
	beq	.L282
	ldr	r2, [r4]
	ldr	r3, [lr]
	cmp	r2, r3
	bcc	.L283
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, pc}
.L282:
	mov	r0, #0
	pop	{r4, pc}
.L283:
	mvn	r0, #0
	pop	{r4, pc}
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
	b	.L286
.L288:
	sub	r2, r2, #1
.L286:
	mov	ip, r0
	cmp	r2, #0
	beq	.L287
	ldr	r3, [r0], #4
	cmp	r1, r3
	bne	.L288
.L287:
	cmp	r2, #0
	movne	r0, ip
	moveq	r0, #0
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
	push	{r4, lr}
	b	.L293
.L295:
	sub	r2, r2, #1
.L293:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L294
	ldr	ip, [r0], #4
	ldr	r3, [r1], #4
	cmp	ip, r3
	beq	.L295
.L294:
	cmp	r2, #0
	beq	.L297
	ldr	r2, [r4]
	ldr	r3, [lr]
	cmp	r2, r3
	bcc	.L298
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, pc}
.L297:
	mov	r0, #0
	pop	{r4, pc}
.L298:
	mvn	r0, #0
	pop	{r4, pc}
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #4
	b	.L301
.L302:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L301:
	sub	r2, r2, #1
	cmn	r2, #1
	moveq	pc, lr
	b	.L302
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	moveq	pc, lr
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	subcs	r3, r0, #4
	bcs	.L307
.L306:
	add	r1, r1, r2, lsl #2
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #2
	sub	ip, r0, #4
	b	.L308
.L309:
	ldr	r3, [r1, #-4]!
	str	r3, [r2], #-4
.L308:
	cmp	r2, ip
	moveq	pc, lr
	b	.L309
.L310:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L307:
	sub	r2, r2, #1
	cmn	r2, #1
	moveq	pc, lr
	b	.L310
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.syntax unified
	.arm
	.type	wmemset, %function
wmemset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	b	.L313
.L314:
	str	r1, [r3], #4
.L313:
	sub	r2, r2, #1
	cmn	r2, #1
	moveq	pc, lr
	b	.L314
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	addcc	r3, r0, r2
	addcc	r1, r1, r2
	bcc	.L318
	b	.L317
.L319:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r1, #-1]!
.L318:
	cmp	r3, r0
	moveq	pc, lr
	b	.L319
.L317:
	cmp	r0, r1
	moveq	pc, lr
	sub	r1, r1, #1
	add	r2, r0, r2
	mov	r3, r0
	b	.L321
.L322:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	strb	r0, [r1, #1]!
.L321:
	cmp	r3, r2
	moveq	pc, lr
	b	.L322
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	sub	ip, r2, #32
	rsb	r3, r2, #32
	lsl	r5, r1, r2
	orr	r5, r5, r0, lsl ip
	orr	r5, r5, r0, lsr r3
	lsl	r4, r0, r2
	rsb	r2, r2, #0
	and	r2, r2, #63
	rsb	ip, r2, #32
	sub	r3, r2, #32
	lsr	r6, r0, r2
	orr	r6, r6, r1, lsl ip
	orr	r6, r6, r1, lsr r3
	lsr	r7, r1, r2
	orr	r0, r4, r6
	orr	r1, r5, r7
	pop	{r4, r5, r6, r7}
	mov	pc, lr
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	rsb	ip, r2, #32
	sub	r3, r2, #32
	lsr	r4, r0, r2
	orr	r4, r4, r1, lsl ip
	orr	r4, r4, r1, lsr r3
	lsr	r5, r1, r2
	rsb	r2, r2, #0
	and	r2, r2, #63
	sub	ip, r2, #32
	rsb	r3, r2, #32
	lsl	r7, r1, r2
	orr	r7, r7, r0, lsl ip
	orr	r7, r7, r0, lsr r3
	lsl	r6, r0, r2
	orr	r0, r4, r6
	orr	r1, r5, r7
	pop	{r4, r5, r6, r7}
	mov	pc, lr
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
	rsb	r3, r1, #16
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
	rsb	r3, r1, #16
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
	rsb	r3, r1, #8
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
	rsb	r3, r1, #8
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
	lsl	r3, r0, #24
	lsr	r3, r3, #16
	orr	r0, r3, r0, lsr #8
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
	and	r3, r0, #16711680
	lsr	r3, r3, #8
	orr	r3, r3, r0, lsr #24
	and	r2, r0, #65280
	orr	r3, r3, r2, lsl #8
	orr	r0, r3, r0, lsl #24
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
	push	{r4, r5, r6, r7, r8, r9}
	and	r5, r1, #-16777216
	lsr	r2, r5, #24
	mov	r3, #0
	and	r7, r1, #16711680
	lsr	r4, r7, #8
	orr	r8, r4, r2
	and	r7, r1, #65280
	lsr	r4, r3, #24
	orr	r4, r4, r7, lsl #8
	lsr	r5, r7, #24
	orr	r6, r8, r4
	mov	r7, r5
	and	r9, r1, #255
	lsr	r4, r3, #8
	orr	r4, r4, r9, lsl #24
	lsr	r5, r9, #8
	orr	r8, r6, r4
	orr	r9, r7, r5
	and	r6, r0, #-16777216
	lsr	r5, r6, #24
	lsl	r4, r6, #8
	orr	r6, r8, r4
	orr	r7, r9, r5
	and	r8, r0, #16711680
	lsr	r5, r8, #8
	lsl	r4, r8, #24
	orr	r8, r6, r4
	orr	r9, r7, r5
	and	r4, r0, #65280
	lsl	r7, r4, #8
	mov	r4, r8
	orr	r5, r9, r7
	and	r8, r0, #255
	lsl	r7, r8, #24
	mov	r0, r4
	orr	r1, r5, r7
	pop	{r4, r5, r6, r7, r8, r9}
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
	mov	r3, #0
	b	.L338
.L341:
	lsr	r2, r0, r3
	tst	r2, #1
	beq	.L339
	add	r0, r3, #1
	mov	pc, lr
.L339:
	add	r3, r3, #1
.L338:
	cmp	r3, #32
	bne	.L341
	mov	r0, #0
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
	movne	r0, #1
	bne	.L344
	b	.L346
.L345:
	asr	r3, r3, #1
	add	r0, r0, #1
.L344:
	tst	r3, #1
	movne	pc, lr
	b	.L345
.L346:
	mov	r0, #0
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
	vldr.32	s15, .L354
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L351
	vldr.32	s15, .L354+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L351:
	mov	r0, #1
	mov	pc, lr
.L355:
	.align	2
.L354:
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
	vldr.64	d7, .L362
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L359
	vldr.64	d7, .L362+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L359:
	mov	r0, #1
	mov	pc, lr
.L363:
	.align	3
.L362:
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
	vldr.64	d7, .L370
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L367
	vldr.64	d7, .L370+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L367:
	mov	r0, #1
	mov	pc, lr
.L371:
	.align	3
.L370:
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
	vcmp.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	cmp	r0, #0
	vmov.f32	s15, #2.0e+0
	vmov.f32	s14, #5.0e-1
	vmovlt.f32	s15, s14
.L377:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f32	s15, s15, s15
	b	.L377
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
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	cmp	r0, #0
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	vmovlt.f64	d7, d6
.L383:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L383
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
	cmp	r0, #0
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	vmovlt.f64	d7, d6
.L389:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L389
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	add	r2, r1, r2
	mov	ip, r0
	b	.L392
.L393:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
.L392:
	cmp	r1, r2
	ldreq	pc, [sp], #4
	b	.L393
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	bl	strlen
	sub	r1, r5, #1
	add	r3, r6, r0
	b	.L396
.L398:
	sub	r4, r4, #1
.L396:
	mov	r0, r3
	cmp	r4, #0
	beq	.L397
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L398
.L397:
	cmp	r4, #0
	moveq	r3, #0
	strbeq	r3, [r0]
	mov	r0, r6
	pop	{r4, r5, r6, pc}
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
	sub	r2, r0, #1
	add	r1, r0, r1
	sub	r1, r1, #1
	rsb	r3, r0, #1
.L403:
	add	r0, r3, r2
	cmp	r2, r1
	moveq	pc, lr
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	moveq	pc, lr
	b	.L403
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.syntax unified
	.arm
	.type	strpbrk, %function
strpbrk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	b	.L407
.L409:
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	cmp	ip, r2
	beq	.L411
.L410:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L409
.L407:
	mov	lr, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L412
	sub	r3, r1, #1
	b	.L410
.L411:
	mov	r0, lr
	ldr	pc, [sp], #4
.L412:
	mov	r0, #0
	ldr	pc, [sp], #4
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
.L415:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	b	.L415
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r1
	bl	strlen
	subs	r6, r0, #0
	beq	.L423
	ldrb	r7, [r5]	@ zero_extendqisi2
	b	.L421
.L422:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	strncmp
	cmp	r0, #0
	beq	.L424
	add	r4, r4, #1
.L421:
	mov	r1, r7
	mov	r0, r4
	bl	strchr
	subs	r4, r0, #0
	popeq	{r4, r5, r6, r7, r8, pc}
	b	.L422
.L423:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L424:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
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
	bpl	.L427
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L429
.L427:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
.L429:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r2
	sub	r6, r1, r3
	add	r6, r0, r6
	cmp	r3, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	cmp	r1, r3
	bcc	.L445
	mov	r4, r0
	add	r8, r2, #1
	sub	r9, r3, #1
	b	.L441
.L443:
	ldrb	r1, [r4], #1	@ zero_extendqisi2
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L441
	mov	r2, r9
	mov	r1, r8
	mov	r0, r4
	bl	memcmp
	cmp	r0, #0
	beq	.L446
.L441:
	mov	r7, r4
	cmp	r4, r6
	bls	.L443
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L445:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L446:
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r2
	bl	memcpy
	add	r0, r0, r4
	pop	{r4, pc}
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
	vnegmi.f64	d0, d0
	movmi	r2, #1
	movpl	r2, #0
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L459
	b	.L463
.L453:
	add	r3, r3, #1
	vmul.f64	d0, d0, d6
	b	.L451
.L459:
	mov	r3, #0
	vmov.f64	d7, #1.0e+0
	vmov.f64	d6, #5.0e-1
.L451:
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L453
	b	.L454
.L463:
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	movne	r3, #1
	moveq	r3, #0
	vmov.f64	d7, #5.0e-1
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movpl	r3, #0
	andmi	r3, r3, #1
	cmp	r3, #0
	bne	.L460
	b	.L454
.L456:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
	b	.L455
.L460:
	mov	r3, #0
	vmov.f64	d7, #5.0e-1
.L455:
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L456
.L454:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
	mov	pc, lr
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	sub	sp, sp, #8
	mov	r10, #0
	mov	fp, #0
	b	.L465
.L467:
	and	r4, r0, #1
	mov	r5, #0
	orrs	ip, r4, r5
	beq	.L466
	adds	ip, r10, r2
	str	ip, [sp]
	adc	ip, fp, r3
	str	ip, [sp, #4]
	ldmia	sp, {r10-fp}
.L466:
	adds	r8, r2, r2
	adc	r9, r3, r3
	mov	r2, r8
	mov	r3, r9
	lsr	r6, r0, #1
	orr	r6, r6, r1, lsl #31
	lsr	r7, r1, #1
	mov	r0, r6
	mov	r1, r7
.L465:
	orrs	ip, r0, r1
	bne	.L467
	mov	r0, r10
	mov	r1, fp
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	mov	pc, lr
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
	mov	r3, #1
	b	.L469
.L472:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L469:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L471
.L470:
	cmp	r1, #0
	bge	.L472
	mov	ip, #0
	b	.L471
.L475:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L471:
	cmp	r3, #0
	bne	.L475
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	cmp	r0, #0
	beq	.L480
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L480:
	mov	r0, #7
	pop	{r4, pc}
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	cmp	r1, #0
	mvnlt	r2, r0
	mvnlt	r3, r1
	movlt	r0, r2
	movlt	r1, r3
.L482:
	orrs	r3, r0, r1
	beq	.L484
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L484:
	mov	r0, #63
	pop	{r4, pc}
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
	mov	r3, r0
	mov	r0, #0
	b	.L486
.L488:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L486:
	cmp	r3, #0
	moveq	pc, lr
	b	.L488
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	lsr	r4, r2, #3
	bic	ip, r2, #7
	cmp	r0, r1
	bcc	.L491
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L492
.L491:
	mov	r3, r1
	mov	lr, r0
	add	r4, r1, r4, lsl #3
	b	.L493
.L492:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L494
.L495:
	vldmia.64	r3!, {d7}	@ int
	vstmia.64	lr!, {d7}	@ int
.L493:
	cmp	r3, r4
	bne	.L495
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	rsb	r1, r1, #1
	b	.L496
.L497:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
.L496:
	add	ip, r1, r3
	cmp	r2, ip
	popls	{r4, pc}
	b	.L497
.L499:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L494:
	cmp	r3, r1
	popeq	{r4, pc}
	b	.L499
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	lsr	r4, r2, #1
	cmp	r0, r1
	bcc	.L502
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L503
.L502:
	sub	r3, r1, #2
	sub	ip, r0, #2
	add	r4, r3, r4, lsl #1
	b	.L504
.L503:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L505
.L506:
	ldrsh	lr, [r3, #2]!
	strh	lr, [ip, #2]!	@ movhi
.L504:
	cmp	r3, r4
	bne	.L506
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, pc}
.L508:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L505:
	cmp	r3, r1
	popeq	{r4, pc}
	b	.L508
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	lsr	r5, r2, #2
	bic	ip, r2, #3
	cmp	r0, r1
	bcc	.L510
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L511
.L510:
	sub	r3, r1, #4
	sub	lr, r0, #4
	add	r5, r3, r5, lsl #2
	b	.L512
.L511:
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L513
.L514:
	ldr	r4, [r3, #4]!
	str	r4, [lr, #4]!
.L512:
	cmp	r3, r5
	bne	.L514
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	rsb	r1, r1, #1
	b	.L515
.L516:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
.L515:
	add	ip, r1, r3
	cmp	r2, ip
	popls	{r4, r5, pc}
	b	.L516
.L518:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
.L513:
	cmp	r3, r1
	popeq	{r4, r5, pc}
	b	.L518
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
	mov	r2, r0
	mov	r0, #0
	b	.L527
.L529:
	rsb	r3, r0, #15
	asr	r3, r2, r3
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
.L527:
	cmp	r0, #16
	moveq	pc, lr
	b	.L529
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
	mov	r2, r0
	mov	r0, #0
	b	.L531
.L533:
	asr	r3, r2, r0
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
.L531:
	cmp	r0, #16
	moveq	pc, lr
	b	.L533
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
	vldr.32	s15, .L540
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vcvtlt.s32.f32	s15, s0
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L541:
	.align	2
.L540:
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
	mov	r1, #0
	mov	r3, r1
	b	.L543
.L545:
	asr	r2, r0, r3
	tst	r2, #1
	addne	r1, r1, #1
	add	r3, r3, #1
.L543:
	cmp	r3, #16
	bne	.L545
	and	r0, r1, #1
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
	mov	r1, r0
	mov	r0, #0
	mov	r3, r0
	b	.L547
.L549:
	asr	r2, r1, r3
	tst	r2, #1
	addne	r0, r0, #1
	add	r3, r3, #1
.L547:
	cmp	r3, #16
	moveq	pc, lr
	b	.L549
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
	mov	r3, r0
	mov	r0, #0
	b	.L552
.L554:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L552:
	cmp	r3, #0
	moveq	pc, lr
	b	.L554
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
	subs	r3, r0, #0
	movne	r0, #0
	bne	.L558
	b	.L561
.L560:
	tst	r1, #1
	addne	r0, r0, r3
	lsl	r3, r3, #1
	lsr	r1, r1, #1
.L558:
	cmp	r1, #0
	moveq	pc, lr
	b	.L560
.L561:
	mov	r0, #0
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
	mov	r3, #1
	b	.L564
.L567:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L564:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L566
.L565:
	cmp	r1, #0
	bge	.L567
	mov	ip, #0
	b	.L566
.L570:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L566:
	cmp	r3, #0
	bne	.L570
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
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
	bmi	.L575
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L575:
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
	bmi	.L579
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L579:
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
	push	{r4, r5, fp}
	mov	r4, r0
	asr	r5, r0, #31
	asr	ip, r1, #31
	mul	r3, r0, ip
	mla	r3, r1, r5, r3
	umull	r0, r2, r4, r1
	add	r1, r3, r2
	pop	{r4, r5, fp}
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
	push	{r4, r5}
	mov	r4, r0
	umull	r0, ip, r4, r1
	mov	r1, ip
	pop	{r4, r5}
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
	push	{r4, lr}
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	r4, #1
	movge	r4, #0
	mov	r3, #0
	mov	lr, r3
	b	.L585
.L587:
	tst	r1, #1
	addne	lr, lr, r0
	lsl	r0, r0, #1
	asr	r1, r1, #1
	add	r3, r3, #1
.L585:
	and	ip, r3, #255
	subs	r2, r1, #0
	movne	r2, #1
	cmp	ip, #31
	movhi	r2, #0
	cmp	r2, #0
	bne	.L587
	cmp	r4, #0
	rsbne	r0, lr, #0
	moveq	r0, lr
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
	push	{r4, lr}
	cmp	r0, #0
	rsblt	r0, r0, #0
	movlt	r4, #1
	movge	r4, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	eorlt	r4, r4, #1
	mov	r2, #0
	bl	__udivmodsi4
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	cmp	r0, #0
	rsblt	r0, r0, #0
	movlt	r4, #1
	movge	r4, #0
	mov	r2, #1
	cmp	r1, #0
	rsblt	r1, r1, #0
	bl	__udivmodsi4
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	b	.L602
.L605:
	lsl	r1, r1, #17
	lsr	r1, r1, #16
	lsl	r3, r3, #17
	lsr	r3, r3, #16
.L602:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L604
.L603:
	tst	r1, #32768
	beq	.L605
	mov	ip, #0
	b	.L604
.L608:
	cmp	r0, r1
	subcs	r0, r0, r1
	lslcs	r0, r0, #16
	lsrcs	r0, r0, #16
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L604:
	cmp	r3, #0
	bne	.L608
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
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
	mov	r3, #1
	b	.L612
.L615:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L612:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L614
.L613:
	cmp	r1, #0
	bge	.L615
	mov	ip, #0
	b	.L614
.L618:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L614:
	cmp	r3, #0
	bne	.L618
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
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
	push	{r4, r5}
	mov	r4, r0
	mov	r5, r1
	tst	r2, #32
	movne	r0, #0
	subne	r2, r2, #32
	lslne	r1, r4, r2
	bne	.L624
.L622:
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	lslne	r0, r4, r2
	rsbne	r3, r2, #32
	lsrne	r3, r4, r3
	orrne	r1, r3, r5, lsl r2
	moveq	r0, r4
	moveq	r1, r5
.L624:
	pop	{r4, r5}
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
	push	{r4, r5}
	mov	r4, r0
	mov	r5, r1
	tst	r2, #32
	asrne	r1, r1, #31
	subne	r2, r2, #32
	asrne	r0, r5, r2
	bne	.L629
.L627:
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	asrne	r1, r5, r2
	rsbne	r3, r2, #32
	lsrne	r2, r4, r2
	orrne	r0, r2, r5, lsl r3
	moveq	r0, r4
	moveq	r1, r5
.L629:
	pop	{r4, r5}
	mov	pc, lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	sub	sp, sp, #24
	lsr	r10, r1, #24
	mov	fp, #0
	lsr	r2, r1, #8
	and	r3, r2, #65280
	str	r3, [sp]
	str	fp, [sp, #4]
	lsr	r2, r0, #24
	orr	r2, r2, r1, lsl #8
	and	r3, r2, #16711680
	str	r3, [sp, #8]
	str	fp, [sp, #12]
	lsr	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	and	r3, r2, #-16777216
	str	r3, [sp, #16]
	str	fp, [sp, #20]
	lsl	r9, r1, #8
	orr	r9, r9, r0, lsr #24
	lsl	r8, r0, #8
	and	r5, r9, #255
	mov	r7, r2
	lsl	r6, r0, #24
	and	r3, r7, #65280
	and	r9, r8, #16711680
	mov	r7, r6
	ldr	ip, [sp]
	orr	r0, r10, ip
	ldr	ip, [sp, #8]
	orr	r10, r0, ip
	ldr	r1, [sp, #16]
	orr	r6, r10, r1
	orr	r0, r6, fp
	orr	r1, r7, r5
	orr	r4, r0, fp
	orr	r5, r1, r3
	orr	r0, r4, fp
	orr	r1, r5, r9
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
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
	lsr	r1, r0, #8
	and	r1, r1, #65280
	lsl	r2, r0, #8
	and	r2, r2, #16711680
	lsl	r3, r0, #24
	orr	r3, r3, r0, lsr #24
	orr	r3, r3, r1
	orr	r0, r3, r2
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
	movcs	r3, #0
	movcc	r3, #16
	rsb	r2, r3, #16
	lsr	r0, r0, r2
	tst	r0, #65280
	movne	r2, #0
	moveq	r2, #8
	rsb	r1, r2, #8
	lsr	r0, r0, r1
	add	r3, r3, r2
	tst	r0, #240
	movne	r2, #0
	moveq	r2, #4
	rsb	r1, r2, #4
	lsr	r0, r0, r1
	add	r3, r3, r2
	tst	r0, #12
	movne	r2, #0
	moveq	r2, #2
	rsb	r1, r2, #2
	lsr	r0, r0, r1
	add	r3, r3, r2
	tst	r0, #2
	moveq	r2, #1
	movne	r2, #0
	rsb	r0, r0, #2
	mla	r0, r2, r0, r3
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
	blt	.L644
	bgt	.L645
	cmp	r0, r2
	bcc	.L646
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L644:
	mov	r0, #0
	mov	pc, lr
.L645:
	mov	r0, #2
	mov	pc, lr
.L646:
	mov	r0, #0
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
	push	{r4, lr}
	bl	__cmpdi2
	sub	r0, r0, #1
	pop	{r4, pc}
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
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #16
	lsr	r0, r0, r3
	and	r2, r0, #255
	cmp	r2, #0
	movne	r2, #0
	moveq	r2, #8
	lsr	r0, r0, r2
	add	r3, r3, r2
	tst	r0, #15
	movne	r2, #0
	moveq	r2, #4
	lsr	r0, r0, r2
	add	r3, r3, r2
	tst	r0, #3
	movne	r2, #0
	moveq	r2, #2
	lsr	r0, r0, r2
	and	r0, r0, #3
	add	r3, r3, r2
	mvn	r2, r0
	lsr	r0, r0, #1
	rsb	r0, r0, #2
	ands	r2, r2, #1
	mvnne	r2, #0
	and	r0, r0, r2
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
	push	{r4, r5}
	mov	r4, r0
	mov	r5, r1
	tst	r2, #32
	movne	r1, #0
	subne	r2, r2, #32
	lsrne	r0, r5, r2
	bne	.L661
.L659:
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	lsrne	r1, r5, r2
	rsbne	r3, r2, #32
	lsrne	r2, r4, r2
	orrne	r0, r2, r5, lsl r3
	moveq	r0, r4
	moveq	r1, r5
.L661:
	pop	{r4, r5}
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
	push	{r4, r5, lr}
	mov	ip, r1
	lsl	r4, r0, #16
	lsr	r4, r4, #16
	lsl	r3, r1, #16
	lsr	r3, r3, #16
	mul	r5, r3, r4
	lsl	lr, r5, #16
	lsr	lr, lr, #16
	lsr	r2, r0, #16
	mul	r3, r2, r3
	add	r3, r3, r5, lsr #16
	add	r0, lr, r3, lsl #16
	lsr	r1, r3, #16
	lsr	r3, r0, #16
	lsl	lr, r0, #16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
	mla	r3, ip, r4, r3
	add	r0, lr, r3, lsl #16
	add	r3, r1, r3, lsr #16
	mla	r1, ip, r2, r3
	pop	{r4, r5, pc}
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	mov	r6, r0
	mov	r7, r1
	mov	r4, r2
	mov	r5, r3
	mov	r1, r2
	bl	__muldsi3
	mov	fp, r0
	mul	r2, r5, r6
	mla	r2, r7, r4, r2
	add	r1, r2, r1
	pop	{r4, r5, r6, r7, fp, pc}
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
	eor	r0, r0, r1
	eor	r0, r0, r0, lsr #16
	eor	r0, r0, r0, lsr #8
	eor	r0, r0, r0, lsr #4
	and	r0, r0, #15
	ldr	r3, .L667
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L668:
	.align	2
.L667:
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
	eor	r0, r0, r0, lsr #16
	eor	r0, r0, r0, lsr #8
	eor	r0, r0, r0, lsr #4
	and	r0, r0, #15
	ldr	r3, .L670
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L671:
	.align	2
.L670:
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
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	lsr	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsr	r3, r1, #1
	adr	r5, .L673
	ldmia	r5, {r4-r5}
	and	r6, r2, r4
	and	r7, r3, r5
	subs	r4, r0, r6
	sbc	r5, r1, r7
	lsr	r0, r4, #2
	orr	r0, r0, r5, lsl #30
	lsr	r1, r5, #2
	adr	r7, .L673+8
	ldmia	r7, {r6-r7}
	and	r8, r0, r6
	and	r9, r1, r7
	and	r0, r4, r6
	and	r1, r5, r7
	adds	r2, r8, r0
	adc	r3, r9, r1
	lsr	r0, r2, #4
	orr	r0, r0, r3, lsl #28
	lsr	r1, r3, #4
	adds	r4, r0, r2
	adc	r5, r1, r3
	adr	r1, .L673+16
	ldmia	r1, {r0-r1}
	and	r2, r4, r0
	and	r3, r5, r1
	add	r0, r3, r2
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	pop	{r4, r5, r6, r7, r8, r9}
	mov	pc, lr
.L674:
	.align	3
.L673:
	.word	1431655765
	.word	1431655765
	.word	858993459
	.word	858993459
	.word	252645135
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
	ldr	r3, .L676
	and	r3, r3, r0, lsr #1
	sub	r0, r0, r3
	ldr	r3, .L676+4
	and	r2, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r2, r0
	add	r3, r0, r0, lsr #4
	ldr	r0, .L676+8
	and	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	mov	pc, lr
.L677:
	.align	2
.L676:
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
	lsr	r3, r0, #31
	vmov.f64	d7, #1.0e+0
.L681:
	tst	r0, #1
	vmulne.f64	d7, d7, d0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d0, d0, d0
	bne	.L681
.L680:
	cmp	r3, #0
	vmovne.f64	d6, #1.0e+0
	vdivne.f64	d0, d6, d7
	vmoveq.f64	d0, d7
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
	lsr	r3, r0, #31
	vmov.f32	s15, #1.0e+0
.L687:
	tst	r0, #1
	vmulne.f32	s15, s15, s0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f32	s0, s0, s0
	bne	.L687
.L686:
	cmp	r3, #0
	vmovne.f32	s14, #1.0e+0
	vdivne.f32	s0, s14, s15
	vmoveq.f32	s0, s15
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
	bcc	.L692
	bhi	.L693
	cmp	r0, r2
	bcc	.L694
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L692:
	mov	r0, #0
	mov	pc, lr
.L693:
	mov	r0, #2
	mov	pc, lr
.L694:
	mov	r0, #0
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
	push	{r4, lr}
	bl	__ucmpdi2
	sub	r0, r0, #1
	pop	{r4, pc}
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.global	__aeabi_uidivmod
	.global	__aeabi_ul2f
	.global	__aeabi_ul2d
	.global	__clzdi2
	.global	__clzsi2
	.global	__aeabi_ldivmod
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
