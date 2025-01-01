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
	bls	.L2
	add	r3, r1, r2
	add	ip, r0, r2
	cmp	r2, #0
	moveq	pc, lr
	mov	r2, ip
.L4:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	.L4
	mov	pc, lr
.L2:
	cmp	r0, r1
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r0, #1
	add	r2, r1, r2
.L5:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	strb	ip, [r3, #1]!
	cmp	r1, r2
	bne	.L5
	mov	pc, lr
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
	beq	.L17
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
	mov	ip, r0
.L11:
	mov	r0, ip
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2
	strb	lr, [ip], #1
	cmp	r2, lr
	beq	.L10
	mov	r0, ip
	subs	r3, r3, #1
	bne	.L11
.L10:
	cmp	r3, #0
	addne	r0, r0, #1
	moveq	r0, #0
	ldr	pc, [sp], #4
.L17:
	cmp	r3, #0
	addne	r0, r0, #1
	moveq	r0, #0
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
	and	r1, r1, #255
	cmp	r2, #0
	beq	.L28
.L25:
	mov	r3, r0
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	cmp	r1, ip
	beq	.L24
	mov	r3, r0
	subs	r2, r2, #1
	bne	.L25
.L24:
	cmp	r2, #0
	movne	r0, r3
	moveq	r0, #0
	mov	pc, lr
.L28:
	mov	r3, r0
	b	.L24
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L38
	push	{r4, lr}
	mov	ip, r0
	mov	r3, r1
.L32:
	mov	r1, r3
	mov	r0, ip
	ldrb	r4, [ip], #1	@ zero_extendqisi2
	ldrb	lr, [r3], #1	@ zero_extendqisi2
	cmp	r4, lr
	bne	.L31
	mov	r0, ip
	mov	r1, r3
	subs	r2, r2, #1
	bne	.L32
.L31:
	cmp	r2, #0
	ldrbne	r0, [r0]	@ zero_extendqisi2
	ldrbne	r3, [r1]	@ zero_extendqisi2
	subne	r0, r0, r3
	moveq	r0, #0
	pop	{r4, pc}
.L38:
	cmp	r2, #0
	ldrbne	r0, [r0]	@ zero_extendqisi2
	ldrbne	r3, [r1]	@ zero_extendqisi2
	subne	r0, r0, r3
	moveq	r0, #0
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
	@ link register save eliminated.
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r0, #1
	add	r2, r1, r2
.L46:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	strb	ip, [r3, #1]!
	cmp	r1, r2
	bne	.L46
	mov	pc, lr
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
.L49:
	add	lr, ip, r2
	cmp	r2, r0
	beq	.L54
	ldrb	r3, [r2, #-1]!	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L49
	add	r0, r0, lr
	ldr	pc, [sp], #4
.L54:
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
	cmp	r2, #0
	moveq	pc, lr
	add	r2, r0, r2
	mov	r3, r0
	and	r1, r1, #255
.L57:
	strb	r1, [r3], #1
	cmp	r3, r2
	bne	.L57
	mov	pc, lr
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
	strb	r3, [r0]
	cmp	r3, #0
	moveq	pc, lr
	add	r3, r0, #1
.L61:
	mov	r0, r3
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r2, #0
	bne	.L61
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
	and	r1, r1, #255
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	pc, lr
.L65:
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r1, r3
	moveq	pc, lr
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L65
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
	mov	r3, r0
.L73:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r1, r2
	moveq	pc, lr
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L73
	mov	r0, #0
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
	ldrb	r2, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L76
	mov	r3, r0
.L77:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L76
	mov	r0, r3
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, r2
	beq	.L77
.L76:
	ldrb	r0, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	r0, r0, r3
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
	beq	.L82
	mov	r3, r0
.L81:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L81
.L80:
	sub	r0, r3, r0
	mov	pc, lr
.L82:
	mov	r3, r0
	b	.L80
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L89
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L90
	push	{r4, lr}
	mov	ip, r1
	mov	r3, r0
	sub	r2, r2, #1
	add	r0, r2, r0
.L87:
	mov	r1, ip
	mov	r2, r3
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	cmp	r0, r3
	cmpne	lr, #0
	beq	.L86
	ldrb	r4, [r3], #1	@ zero_extendqisi2
	ldrb	lr, [ip, #-1]	@ zero_extendqisi2
	cmp	r4, lr
	bne	.L86
	mov	r2, r3
	mov	r1, ip
	ldrb	lr, [r3]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L87
.L86:
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{r4, pc}
.L89:
	mov	r0, #0
	mov	pc, lr
.L90:
	ldrb	r0, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	r0, r0, r3
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
	add	r3, r1, #2
	add	r0, r0, #2
	sub	r2, r2, #2
	bic	r2, r2, #1
	add	r1, r1, #4
	add	r1, r1, r2
.L98:
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	strb	r2, [r3, #-2]
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	strb	r2, [r3, #-1]
	add	r3, r3, #2
	add	r0, r0, #2
	cmp	r3, r1
	bne	.L98
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
	cmp	r3, #32
	cmphi	r0, #31
	bls	.L112
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L113
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L112:
	mov	r0, #1
	mov	pc, lr
.L113:
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
	bls	.L121
	sub	r3, r0, #8192
	sub	r3, r3, #42
	ldr	r1, .L122
	ldr	r2, .L122+4
	cmp	r3, r2
	cmphi	r0, r1
	bls	.L118
	sub	r2, r0, #57344
	ldr	r3, .L122+8
	cmp	r2, r3
	bls	.L119
	sub	r3, r0, #65280
	sub	r3, r3, #252
	ldr	r2, .L122+12
	cmp	r3, r2
	bhi	.L120
	ldr	r3, .L122+16
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	mov	pc, lr
.L121:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	mov	pc, lr
.L118:
	mov	r0, #1
	mov	pc, lr
.L119:
	mov	r0, #1
	mov	pc, lr
.L120:
	mov	r0, #0
	mov	pc, lr
.L123:
	.align	2
.L122:
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
	bls	.L126
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L126:
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
	bvs	.L132
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L135
	vsub.f64	d0, d0, d1
	mov	pc, lr
.L132:
	vmov.f64	d0, d1
	mov	pc, lr
.L135:
	vldr.64	d0, .L136
	mov	pc, lr
.L137:
	.align	3
.L136:
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
	bvs	.L142
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L145
	vsub.f32	s0, s0, s1
	mov	pc, lr
.L142:
	vmov.f32	s0, s1
	mov	pc, lr
.L145:
	vldr.32	s0, .L146
	mov	pc, lr
.L147:
	.align	2
.L146:
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
	bvs	.L151
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L150
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	mov	pc, lr
.L150:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L151:
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
	bvs	.L157
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L156
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovlt.f32	s0, s1
	mov	pc, lr
.L156:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	mov	pc, lr
.L157:
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
	bvs	.L163
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L162
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	mov	pc, lr
.L162:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L163:
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
	bvs	.L169
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L168
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	mov	pc, lr
.L168:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L169:
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
	bvs	.L175
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L174
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovge.f32	s0, s1
	mov	pc, lr
.L174:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	mov	pc, lr
.L175:
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
	bvs	.L181
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L180
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	mov	pc, lr
.L180:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L181:
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
	cmp	r0, #0
	beq	.L187
	ldr	r3, .L189
	ldr	r1, .L189+4
.L186:
	and	r2, r0, #63
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3], #1
	lsrs	r0, r0, #6
	bne	.L186
.L185:
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, .L189
	mov	pc, lr
.L187:
	ldr	r3, .L189
	b	.L185
.L190:
	.align	2
.L189:
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
	sub	r0, r0, #1
	ldr	r3, .L192
	str	r0, [r3]
	mov	r2, #0
	str	r2, [r3, #4]
	mov	pc, lr
.L193:
	.align	2
.L192:
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
	str	lr, [sp, #-4]!
	ldr	r2, .L196
	ldr	ip, [r2]
	ldr	r3, [r2, #4]
	ldr	r1, .L196+4
	ldr	r0, .L196+8
	mul	r0, ip, r0
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r3, r3, #1
	adc	r0, r0, lr
	str	r3, [r2]
	str	r0, [r2, #4]
	lsr	r0, r0, #1
	ldr	pc, [sp], #4
.L197:
	.align	2
.L196:
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
	beq	.L201
	ldr	r3, [r1]
	str	r3, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
	mov	pc, lr
.L201:
	mov	r3, #0
	str	r3, [r0, #4]
	str	r3, [r0]
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
	cmp	r8, #0
	beq	.L206
	mov	r5, r1
	mov	r4, #0
.L209:
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	beq	.L212
	add	r4, r4, #1
	add	r5, r5, r6
	cmp	r4, r8
	bne	.L209
.L206:
	add	r3, r8, #1
	str	r3, [fp]
	mov	r2, r6
	mov	r1, r7
	mla	r0, r8, r6, r10
	bl	memcpy
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L212:
	mla	r0, r6, r4, r10
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
	ldr	r9, [sp, #32]
	ldr	r8, [r2]
	cmp	r8, #0
	beq	.L217
	mov	r7, r0
	mov	r10, r1
	mov	r6, r3
	mov	r5, r1
	mov	r4, #0
.L216:
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	beq	.L220
	add	r4, r4, #1
	add	r5, r5, r6
	cmp	r4, r8
	bne	.L216
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L220:
	mla	r0, r6, r4, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L217:
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
.L223:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L223
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L229
	cmp	r3, #45
	moveq	r2, #1
	beq	.L224
	mov	r2, #0
	b	.L225
.L229:
	mov	r2, #0
.L224:
	add	r4, r4, #1
.L225:
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bhi	.L231
	mov	r0, #0
.L227:
	add	r0, r0, r0, lsl #2
	ldrb	r3, [r4], #1	@ zero_extendqisi2
	sub	r3, r3, #48
	rsb	r0, r3, r0, lsl #1
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L227
.L226:
	cmp	r2, #0
	rsbeq	r0, r0, #0
	pop	{r4, r5, r6, pc}
.L231:
	mov	r0, #0
	b	.L226
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
.L236:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L236
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L242
	cmp	r3, #45
	moveq	r2, #1
	beq	.L237
	mov	r2, #0
	b	.L238
.L242:
	mov	r2, #0
.L237:
	add	r4, r4, #1
.L238:
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bhi	.L244
	mov	r0, #0
.L240:
	add	r0, r0, r0, lsl #2
	ldrb	r3, [r4], #1	@ zero_extendqisi2
	sub	r3, r3, #48
	rsb	r0, r3, r0, lsl #1
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L240
.L239:
	cmp	r2, #0
	rsbeq	r0, r0, #0
	pop	{r4, r5, r6, pc}
.L244:
	mov	r0, #0
	b	.L239
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
.L249:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L249
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L255
	cmp	r3, #45
	moveq	ip, #1
	beq	.L250
	mov	ip, #0
	b	.L251
.L255:
	mov	ip, #0
.L250:
	add	r4, r4, #1
.L251:
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bhi	.L257
	mov	r0, #0
	mov	r1, r0
.L253:
	lsl	r2, r1, #2
	orr	r2, r2, r0, lsr #30
	lsl	r3, r0, #2
	adds	r0, r3, r0
	adc	r1, r1, r2
	adds	r0, r0, r0
	adc	r1, r1, r1
	ldrb	r3, [r4], #1	@ zero_extendqisi2
	sub	r3, r3, #48
	subs	r0, r0, r3
	sbc	r1, r1, r3, asr #31
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L253
.L252:
	cmp	ip, #0
	popne	{r4, r5, r6, pc}
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	pop	{r4, r5, r6, pc}
.L257:
	mov	r0, #0
	mov	r1, r0
	b	.L252
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
	mov	r6, r3
	ldr	r9, [sp, #32]
	subs	r4, r2, #0
	bne	.L265
	mov	r5, #0
	b	.L261
.L264:
	cmp	r4, #0
	beq	.L269
.L265:
	lsr	r5, r4, #1
	mla	r5, r6, r5, r7
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	lsrlt	r4, r4, #1
	blt	.L264
	cmp	r0, #0
	ble	.L261
	add	r7, r5, r6
	sub	r3, r4, #1
	sub	r4, r3, r4, lsr #1
	b	.L264
.L269:
	mov	r5, #0
.L261:
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
	mov	r7, r1
	mov	r6, r3
	ldr	r10, [sp, #32]
	ldr	r9, [sp, #36]
	mov	r4, r2
	cmp	r2, #0
	beq	.L274
.L273:
	asr	r5, r4, #1
	mla	r5, r6, r5, r7
	mov	r2, r9
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r10
	cmp	r0, #0
	beq	.L270
	addgt	r7, r5, r6
	subgt	r4, r4, #1
	asrs	r4, r4, #1
	bne	.L273
	mov	r5, #0
.L270:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L274:
	mov	r5, #0
	b	.L270
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
	asr	r3, r1, #31
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	subs	r0, r0, r3
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	mov	r6, r2
	mov	r5, r3
	add	r9, sp, #32
	ldmia	r9, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_ldivmod
	mov	r10, r0
	mov	r7, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_ldivmod
	str	r10, [r4]
	str	r7, [r4, #4]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
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
	asr	r3, r1, #31
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	subs	r0, r0, r3
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	mov	r6, r2
	mov	r5, r3
	add	r9, sp, #32
	ldmia	r9, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_ldivmod
	mov	r10, r0
	mov	r7, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_ldivmod
	str	r10, [r4]
	str	r7, [r4, #4]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
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
	beq	.L290
.L289:
	ldr	r3, [r0]
	cmp	r1, r3
	beq	.L290
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	bne	.L289
.L290:
	ldr	r3, [r0]
	cmp	r3, #0
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
	ldr	r2, [r0]
	ldr	r3, [r1]
	cmp	r2, r3
	bne	.L296
	mov	r3, r0
	mov	r2, r1
.L297:
	mov	r1, r2
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, #0
	beq	.L296
	ldr	ip, [r2], #4
	cmp	ip, #0
	beq	.L296
	mov	r0, r3
	mov	r1, r2
	ldr	lr, [r3]
	ldr	ip, [r2]
	cmp	lr, ip
	beq	.L297
.L296:
	ldr	r2, [r0]
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L300
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	ldr	pc, [sp], #4
.L300:
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
.L303:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	bne	.L303
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
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L309
	mov	r3, r0
.L308:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L308
.L307:
	sub	r0, r3, r0
	asr	r0, r0, #2
	mov	pc, lr
.L309:
	mov	r3, r0
	b	.L307
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
	cmp	r2, #0
	beq	.L312
	mov	r3, r0
	mov	ip, r1
.L313:
	mov	r1, ip
	mov	r0, r3
	ldr	r4, [r3], #4
	ldr	lr, [ip], #4
	cmp	r4, lr
	bne	.L312
	ldr	lr, [r3, #-4]
	cmp	lr, #0
	beq	.L312
	ldr	lr, [ip, #-4]
	cmp	lr, #0
	beq	.L312
	mov	r0, r3
	mov	r1, ip
	subs	r2, r2, #1
	bne	.L313
.L312:
	cmp	r2, #0
	beq	.L316
	ldr	r2, [r0]
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L317
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, pc}
.L316:
	mov	r0, #0
	pop	{r4, pc}
.L317:
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
	cmp	r2, #0
	beq	.L325
.L322:
	mov	r3, r0
	ldr	ip, [r0], #4
	cmp	r1, ip
	beq	.L321
	mov	r3, r0
	subs	r2, r2, #1
	bne	.L322
.L321:
	cmp	r2, #0
	movne	r0, r3
	moveq	r0, #0
	mov	pc, lr
.L325:
	mov	r3, r0
	b	.L321
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
	cmp	r2, #0
	beq	.L328
	mov	ip, r0
	mov	r3, r1
.L329:
	mov	r1, r3
	mov	r0, ip
	ldr	r4, [ip], #4
	ldr	lr, [r3], #4
	cmp	r4, lr
	bne	.L328
	mov	r0, ip
	mov	r1, r3
	subs	r2, r2, #1
	bne	.L329
.L328:
	cmp	r2, #0
	beq	.L332
	ldr	r2, [r0]
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L333
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, pc}
.L332:
	mov	r0, #0
	pop	{r4, pc}
.L333:
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
	sub	r3, r2, #1
	cmp	r2, #0
	moveq	pc, lr
	sub	r2, r0, #4
.L338:
	ldr	ip, [r1], #4
	str	ip, [r2, #4]!
	sub	r3, r3, #1
	cmn	r3, #1
	bne	.L338
	mov	pc, lr
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
	bcc	.L342
	sub	r3, r2, #1
	cmp	r2, #0
	moveq	pc, lr
	sub	r2, r0, #4
.L345:
	ldr	ip, [r1], #4
	str	ip, [r2, #4]!
	sub	r3, r3, #1
	cmn	r3, #1
	bne	.L345
	mov	pc, lr
.L342:
	cmp	r2, #0
	moveq	pc, lr
	add	r3, r1, r2, lsl #2
	add	r2, r0, r2, lsl #2
.L344:
	ldr	ip, [r3, #-4]!
	str	ip, [r2, #-4]!
	cmp	r3, r1
	bne	.L344
	mov	pc, lr
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
	sub	r3, r2, #1
	cmp	r2, #0
	moveq	pc, lr
	mov	r2, r0
.L352:
	str	r1, [r2], #4
	sub	r3, r3, #1
	cmn	r3, #1
	bne	.L352
	mov	pc, lr
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
	bcs	.L355
	add	r3, r0, r2
	add	r1, r1, r2
	cmp	r2, #0
	moveq	pc, lr
.L357:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r1, #-1]!
	cmp	r0, r3
	bne	.L357
	mov	pc, lr
.L355:
	cmp	r0, r1
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r1, r1, #1
	add	r2, r0, r2
.L358:
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	strb	r3, [r1, #1]!
	cmp	r0, r2
	bne	.L358
	mov	pc, lr
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	lr, r2, #32
	rsb	r3, r2, #32
	lsl	ip, r1, r2
	orr	ip, ip, r0, lsl lr
	orr	ip, ip, r0, lsr r3
	rsb	r3, r2, #0
	and	r3, r3, #63
	rsb	r5, r3, #32
	sub	r4, r3, #32
	lsr	lr, r0, r3
	orr	lr, lr, r1, lsl r5
	orr	lr, lr, r1, lsr r4
	orr	r0, lr, r0, lsl r2
	orr	r1, ip, r1, lsr r3
	pop	{r4, r5, pc}
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	rsb	ip, r2, #32
	sub	r3, r2, #32
	lsr	lr, r0, r2
	orr	lr, lr, r1, lsl ip
	orr	lr, lr, r1, lsr r3
	rsb	r3, r2, #0
	and	r3, r3, #63
	sub	r5, r3, #32
	rsb	r4, r3, #32
	lsl	ip, r1, r3
	orr	ip, ip, r0, lsl r5
	orr	ip, ip, r0, lsr r4
	orr	r0, lr, r0, lsl r3
	orr	r1, ip, r1, lsr r2
	pop	{r4, r5, pc}
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
	mov	ip, r0
	and	r2, r1, #16711680
	lsr	r2, r2, #8
	orr	r2, r2, r1, lsr #24
	and	r3, r1, #65280
	orr	r2, r2, r3, lsl #8
	and	r3, r0, #16711680
	lsr	r3, r3, #8
	orr	r3, r3, r0, lsr #24
	and	r0, r0, #65280
	orr	r3, r3, r0, lsl #8
	orr	r0, r2, r1, lsl #24
	orr	r1, r3, ip, lsl #24
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
.L380:
	lsr	r2, r0, r3
	tst	r2, #1
	bne	.L382
	add	r3, r3, #1
	cmp	r3, #32
	bne	.L380
	mov	r0, #0
	mov	pc, lr
.L382:
	add	r0, r3, #1
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
	beq	.L386
	tst	r3, #1
	bne	.L387
	mov	r0, #1
.L385:
	asr	r3, r3, #1
	add	r0, r0, #1
	tst	r3, #1
	beq	.L385
	mov	pc, lr
.L386:
	mov	r0, #0
	mov	pc, lr
.L387:
	mov	r0, #1
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
	vldr.32	s15, .L393
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L392
	vldr.32	s15, .L393+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L392:
	mov	r0, #1
	mov	pc, lr
.L394:
	.align	2
.L393:
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
	vldr.64	d7, .L398
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L397
	vldr.64	d7, .L398+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L397:
	mov	r0, #1
	mov	pc, lr
.L399:
	.align	3
.L398:
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
	vldr.64	d7, .L403
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L402
	vldr.64	d7, .L403+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L402:
	mov	r0, #1
	mov	pc, lr
.L404:
	.align	3
.L403:
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
.L410:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f32	s15, s15, s15
	b	.L410
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
.L416:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L416
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
.L422:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L422
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
	str	lr, [sp, #-4]!
	add	r2, r1, r2
	mov	ip, r0
.L426:
	ldrb	lr, [r1], #1	@ zero_extendqisi2
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
	cmp	r1, r2
	bne	.L426
	ldr	pc, [sp], #4
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
	add	r0, r6, r0
	cmp	r4, #0
	beq	.L433
	sub	r1, r5, #1
	mov	r3, r0
.L434:
	mov	r0, r3
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r2, #0
	beq	.L433
	mov	r0, r3
	subs	r4, r4, #1
	bne	.L434
.L433:
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
	cmp	r1, #0
	beq	.L443
	sub	r3, r0, #1
	mov	r0, #0
.L441:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	add	r0, r0, #1
	cmp	r0, r1
	bne	.L441
	mov	pc, lr
.L443:
	mov	r0, #0
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L452
.L446:
	sub	r3, r1, #1
.L449:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L453
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r2, [r0]	@ zero_extendqisi2
	cmp	ip, r2
	bne	.L449
	mov	pc, lr
.L452:
	mov	r0, #0
	mov	pc, lr
.L453:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L446
	mov	r0, #0
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
.L456:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L456
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r1
	bl	strlen
	subs	r6, r0, #0
	beq	.L460
	ldrb	r7, [r5]	@ zero_extendqisi2
.L462:
	mov	r1, r7
	mov	r0, r4
	bl	strchr
	subs	r4, r0, #0
	beq	.L466
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	strncmp
	cmp	r0, #0
	beq	.L460
	add	r4, r4, #1
	b	.L462
.L466:
	mov	r4, #0
.L460:
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
	bmi	.L476
.L468:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
	b	.L470
.L476:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L468
.L470:
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
	mov	r4, r0
	sub	r5, r1, r3
	add	r5, r0, r5
	cmp	r3, #0
	moveq	r6, r0
	beq	.L477
	cmp	r1, r3
	bcc	.L482
	cmp	r0, r5
	bhi	.L483
	mov	r8, r2
	ldrb	r7, [r8], #1	@ zero_extendqisi2
	sub	r9, r3, #1
	b	.L480
.L479:
	cmp	r5, r4
	bcc	.L486
.L480:
	mov	r6, r4
	ldrb	r3, [r4], #1	@ zero_extendqisi2
	cmp	r3, r7
	bne	.L479
	mov	r2, r9
	mov	r1, r8
	mov	r0, r4
	bl	memcmp
	cmp	r0, #0
	bne	.L479
	b	.L477
.L486:
	mov	r6, #0
.L477:
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L482:
	mov	r6, #0
	b	.L477
.L483:
	mov	r6, #0
	b	.L477
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
	blt	.L505
	mov	r3, #0
	vmov.f64	d6, #5.0e-1
.L494:
	add	r3, r3, #1
	vmul.f64	d0, d0, d6
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L494
.L495:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
	mov	pc, lr
.L505:
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
	moveq	r3, #0
	beq	.L495
	mov	r3, #0
.L496:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L496
	b	.L495
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	orrs	r1, r1, r0
	beq	.L509
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
	mov	r6, r0
.L508:
	and	ip, r4, #1
	rsbs	ip, ip, #0
	rsc	lr, r6, #0
	and	ip, ip, r2
	and	lr, lr, r3
	adds	ip, r0, ip
	mov	r0, ip
	adc	r1, lr, r1
	adds	r2, r2, r2
	adc	r3, r3, r3
	lsr	ip, r4, #1
	orr	ip, ip, r5, lsl #31
	lsr	lr, r5, #1
	mov	r4, ip
	mov	r5, lr
	orrs	ip, ip, lr
	bne	.L508
	pop	{r4, r5, r6, pc}
.L509:
	mov	r0, #0
	mov	r1, r0
	pop	{r4, r5, r6, pc}
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
	movcs	r3, #1
	bcs	.L515
	mov	r3, #1
.L514:
	cmp	r1, #0
	blt	.L515
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	bne	.L514
.L515:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L517
	mov	ip, #0
.L516:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L516
.L517:
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
	cmp	r0, #0
	beq	.L528
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L528:
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
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	orrs	r3, r0, r1
	beq	.L535
	push	{r4, lr}
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L535:
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
	beq	.L543
	mov	r0, #0
.L542:
	ands	r2, r3, #1
	mvnne	r2, #0
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L542
	mov	pc, lr
.L543:
	mov	r0, #0
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
	push	{r4, lr}
	lsr	r4, r2, #3
	bic	ip, r2, #7
	cmp	r0, r1
	bcs	.L547
.L550:
	cmp	r4, #0
	movne	r3, r1
	movne	lr, r0
	addne	r4, r1, r4, lsl #3
	beq	.L549
.L553:
	vldmia.64	r3!, {d7}	@ int
	vstmia.64	lr!, {d7}	@ int
	cmp	r3, r4
	bne	.L553
.L549:
	cmp	r2, ip
	popls	{r4, pc}
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	sub	r1, r1, #1
	add	r2, r1, r2
.L554:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
	cmp	r3, r2
	bne	.L554
	pop	{r4, pc}
.L547:
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L550
	cmp	r2, #0
	popeq	{r4, pc}
	add	r3, r1, r2
	add	r2, r0, r2
.L555:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
	cmp	r3, r1
	bne	.L555
	pop	{r4, pc}
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
	bcs	.L563
.L566:
	cmp	r4, #0
	subne	r3, r1, #2
	subne	ip, r0, #2
	addne	r4, r3, r4, lsl #1
	beq	.L565
.L569:
	ldrsh	lr, [r3, #2]!
	strh	lr, [ip, #2]!	@ movhi
	cmp	r3, r4
	bne	.L569
.L565:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, pc}
.L563:
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L566
	cmp	r2, #0
	popeq	{r4, pc}
	add	r3, r1, r2
	add	r0, r0, r2
.L570:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
	cmp	r3, r1
	bne	.L570
	pop	{r4, pc}
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
	bcs	.L576
.L579:
	cmp	r5, #0
	subne	r3, r1, #4
	subne	lr, r0, #4
	addne	r5, r3, r5, lsl #2
	beq	.L578
.L582:
	ldr	r4, [r3, #4]!
	str	r4, [lr, #4]!
	cmp	r3, r5
	bne	.L582
.L578:
	cmp	r2, ip
	popls	{r4, r5, pc}
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	sub	r1, r1, #1
	add	r2, r1, r2
.L583:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
	cmp	r3, r2
	bne	.L583
	pop	{r4, r5, pc}
.L576:
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L579
	cmp	r2, #0
	popeq	{r4, r5, pc}
	add	r3, r1, r2
	add	r2, r0, r2
.L584:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
	cmp	r3, r1
	bne	.L584
	pop	{r4, r5, pc}
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
.L603:
	rsb	r3, r0, #15
	asr	r3, r2, r3
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	cmp	r0, #16
	bne	.L603
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
	mov	r2, r0
	mov	r0, #0
.L607:
	asr	r3, r2, r0
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	cmp	r0, #16
	bne	.L607
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
	vldr.32	s15, .L615
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vcvtlt.s32.f32	s15, s0
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L616:
	.align	2
.L615:
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
.L618:
	asr	r2, r0, r3
	and	r2, r2, #1
	add	r1, r1, r2
	add	r3, r3, #1
	cmp	r3, #16
	bne	.L618
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
.L621:
	asr	r2, r1, r3
	and	r2, r2, #1
	add	r0, r0, r2
	add	r3, r3, #1
	cmp	r3, #16
	bne	.L621
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
	beq	.L627
	mov	r0, #0
.L626:
	ands	r2, r3, #1
	mvnne	r2, #0
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L626
	mov	pc, lr
.L627:
	mov	r0, #0
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
	beq	.L633
	cmp	r1, #0
	beq	.L634
	mov	r0, #0
.L632:
	ands	r3, r1, #1
	mvnne	r3, #0
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	lsrs	r1, r1, #1
	bne	.L632
	mov	pc, lr
.L633:
	mov	r0, #0
	mov	pc, lr
.L634:
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
	cmp	r1, r0
	movcs	r3, #1
	bcs	.L639
	mov	r3, #1
.L638:
	cmp	r1, #0
	blt	.L639
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	bne	.L638
.L639:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L641
	mov	ip, #0
.L640:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L640
.L641:
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
	bmi	.L652
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L652:
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
	bmi	.L655
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L655:
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
	asr	r0, r0, #31
	asr	r2, r1, #31
	mul	r2, r3, r2
	mla	r2, r1, r0, r2
	umull	r0, ip, r3, r1
	add	r1, r2, ip
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
	str	lr, [sp, #-4]!
	mov	ip, r0
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	lr, #1
	movge	lr, #0
	cmp	r1, #0
	beq	.L664
	mov	r0, #0
	mov	r3, r0
.L661:
	ands	r2, r1, #1
	mvnne	r2, #0
	and	r2, r2, ip
	add	r0, r0, r2
	lsl	ip, ip, #1
	add	r3, r3, #1
	and	r3, r3, #255
	asrs	r1, r1, #1
	movne	r2, #1
	moveq	r2, #0
	cmp	r3, #31
	movhi	r2, #0
	andls	r2, r2, #1
	cmp	r2, #0
	bne	.L661
.L660:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
.L664:
	mov	r0, #0
	b	.L660
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
	str	lr, [sp, #-4]!
	cmp	r1, r0
	movcs	r3, #1
	bcs	.L680
	mov	r3, #1
.L679:
	tst	r1, #32768
	bne	.L680
	lsl	ip, r1, #17
	lsr	r1, ip, #16
	lsl	lr, r3, #17
	mov	ip, r1
	lsr	r3, lr, #16
	cmp	lr, #0
	cmpne	r1, r0
	bcc	.L679
.L680:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L682
	mov	ip, #0
	b	.L681
.L684:
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	beq	.L682
.L681:
	cmp	r0, r1
	bcc	.L684
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	orr	ip, ip, r3
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	b	.L684
.L682:
	cmp	r2, #0
	moveq	r0, ip
	ldr	pc, [sp], #4
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
	cmp	r1, r0
	movcs	r3, #1
	bcs	.L694
	mov	r3, #1
.L693:
	cmp	r1, #0
	blt	.L694
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	bne	.L693
.L694:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L696
	mov	ip, #0
.L695:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L695
.L696:
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
	tst	r2, #32
	beq	.L706
	mov	ip, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
.L707:
	mov	r0, ip
	mov	pc, lr
.L706:
	cmp	r2, #0
	moveq	pc, lr
	lsl	ip, r0, r2
	rsb	r3, r2, #32
	lsr	r3, r0, r3
	orr	r1, r3, r1, lsl r2
	b	.L707
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
	beq	.L711
	asr	r3, r1, #31
	sub	r2, r2, #32
	asr	r0, r1, r2
.L712:
	mov	r1, r3
	mov	pc, lr
.L711:
	cmp	r2, #0
	moveq	pc, lr
	asr	r3, r1, r2
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	orr	r0, r0, r1, lsl ip
	b	.L712
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, r1
	lsr	r3, r1, #8
	and	r3, r3, #65280
	lsl	r4, r1, #8
	and	r4, r4, #16711680
	lsr	lr, r0, #8
	and	lr, lr, #65280
	lsl	ip, r0, #8
	and	ip, ip, #16711680
	lsl	r1, r0, #24
	orr	r3, r3, r2, lsr #24
	orr	r3, r3, r4
	orr	r1, r1, r0, lsr #24
	orr	r1, r1, lr
	orr	r0, r3, r2, lsl #24
	orr	r1, r1, ip
	pop	{r4, pc}
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
	movcs	r2, #0
	movcc	r2, #1
	lsl	r2, r2, #4
	rsb	r3, r2, #16
	lsr	r3, r0, r3
	tst	r3, #65280
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #3
	rsb	r1, r0, #8
	lsr	r3, r3, r1
	add	r2, r0, r2
	tst	r3, #240
	moveq	r1, #1
	movne	r1, #0
	lsl	r1, r1, #2
	rsb	r0, r1, #4
	lsr	r3, r3, r0
	add	r2, r2, r1
	tst	r3, #12
	moveq	r1, #1
	movne	r1, #0
	lsl	r1, r1, #1
	rsb	r0, r1, #2
	lsr	r3, r3, r0
	add	r2, r2, r1
	and	r0, r3, #2
	rsbs	r0, r0, #1
	movcc	r0, #0
	rsb	r3, r3, #2
	rsb	r0, r0, #0
	and	r0, r0, r3
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
	blt	.L721
	bgt	.L722
	cmp	r0, r2
	bcc	.L723
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L721:
	mov	r0, #0
	mov	pc, lr
.L722:
	mov	r0, #2
	mov	pc, lr
.L723:
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
	rsbs	r3, r3, #1
	movcc	r3, #0
	lsl	r2, r3, #4
	lsr	r3, r0, r2
	and	r0, r3, #255
	rsbs	r0, r0, #1
	movcc	r0, #0
	lsl	r0, r0, #3
	lsr	r3, r3, r0
	add	r0, r0, r2
	tst	r3, #15
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #2
	lsr	r3, r3, r2
	add	r0, r0, r2
	tst	r3, #3
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #1
	lsr	r3, r3, r2
	and	r3, r3, #3
	add	r0, r0, r2
	mvn	r2, r3
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	ands	r2, r2, #1
	mvnne	r2, #0
	and	r3, r3, r2
	add	r0, r0, r3
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
	beq	.L729
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
.L730:
	mov	r1, r3
	mov	pc, lr
.L729:
	cmp	r2, #0
	moveq	pc, lr
	lsr	r3, r1, r2
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	orr	r0, r0, r1, lsl ip
	b	.L730
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
	lsl	r3, r0, #16
	lsr	r3, r3, #16
	lsl	r2, r1, #16
	lsr	r2, r2, #16
	mul	ip, r2, r3
	lsl	r4, ip, #16
	lsr	r4, r4, #16
	lsr	lr, r0, #16
	mul	r2, lr, r2
	add	r2, r2, ip, lsr #16
	add	r0, r4, r2, lsl #16
	lsr	ip, r1, #16
	mul	r3, ip, r3
	add	r0, r3, r0, lsr #16
	lsr	r1, r0, #16
	add	r1, r1, r2, lsr #16
	add	r0, r4, r0, lsl #16
	mla	r1, ip, lr, r1
	pop	{r4, pc}
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	mov	r7, r3
	mov	r1, r2
	bl	__muldsi3
	mul	r4, r7, r4
	mla	r4, r5, r6, r4
	add	r1, r4, r1
	pop	{r4, r5, r6, r7, r8, pc}
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
	eor	r1, r1, r1, lsr #4
	and	r1, r1, #15
	ldr	r0, .L739
	asr	r0, r0, r1
	and	r0, r0, #1
	mov	pc, lr
.L740:
	.align	2
.L739:
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
	ldr	r3, .L742
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L743:
	.align	2
.L742:
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
	mov	r3, r0
	lsr	r0, r0, #1
	orr	r0, r0, r1, lsl #31
	ldr	r2, .L745
	and	r0, r0, r2
	and	r2, r2, r1, lsr #1
	subs	r0, r3, r0
	sbc	r1, r1, r2
	lsr	r2, r0, #2
	orr	r2, r2, r1, lsl #30
	ldr	ip, .L745+4
	and	r2, r2, ip
	and	r3, ip, r1, lsr #2
	and	r0, r0, ip
	and	r1, r1, ip
	adds	r2, r2, r0
	adc	r3, r3, r1
	lsr	r1, r2, #4
	orr	r1, r1, r3, lsl #28
	adds	r1, r1, r2
	adc	r0, r3, r3, lsr #4
	ldr	r3, .L745+8
	and	r1, r1, r3
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	mov	pc, lr
.L746:
	.align	2
.L745:
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
	ldr	r3, .L748
	and	r3, r3, r0, lsr #1
	sub	r0, r0, r3
	ldr	r2, .L748+4
	and	r3, r2, r0, lsr #2
	and	r0, r0, r2
	add	r3, r3, r0
	add	r3, r3, r3, lsr #4
	ldr	r0, .L748+8
	and	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	mov	pc, lr
.L749:
	.align	2
.L748:
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
	vmov.f64	d7, d0
	lsr	r3, r0, #31
	vmov.f64	d0, #1.0e+0
.L753:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d7, d7, d7
	bne	.L753
.L752:
	cmp	r3, #0
	vmovne.f64	d7, #1.0e+0
	vdivne.f64	d0, d7, d0
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
	vmov.f32	s15, s0
	lsr	r3, r0, #31
	vmov.f32	s0, #1.0e+0
.L758:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f32	s15, s15, s15
	bne	.L758
.L757:
	cmp	r3, #0
	vmovne.f32	s15, #1.0e+0
	vdivne.f32	s0, s15, s0
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
	bcc	.L762
	bhi	.L763
	cmp	r0, r2
	bcc	.L764
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L762:
	mov	r0, #0
	mov	pc, lr
.L763:
	mov	r0, #2
	mov	pc, lr
.L764:
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
