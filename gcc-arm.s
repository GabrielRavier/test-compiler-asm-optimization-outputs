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
	cmp	r0, r1
	moveq	pc, lr
	sub	ip, r0, #1
	add	r2, r1, r2
	mov	r3, r1
	b	.L6
.L9:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	strb	ip, [r2, #-1]!
.L3:
	cmp	r3, r1
	bne	.L9
	mov	pc, lr
.L10:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	strb	r1, [ip, #1]!
.L6:
	cmp	r3, r2
	bne	.L10
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
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
	b	.L12
.L14:
	sub	r3, r3, #1
.L12:
	mov	lr, r0
	cmp	r3, #0
	beq	.L13
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	cmp	r2, ip
	bne	.L14
.L13:
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
	b	.L20
.L22:
	sub	r2, r2, #1
.L20:
	mov	ip, r0
	cmp	r2, #0
	beq	.L21
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L22
.L21:
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
	b	.L27
.L29:
	sub	r2, r2, #1
.L27:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L28
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	cmp	ip, r3
	beq	.L29
.L28:
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
	b	.L35
.L38:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	strb	ip, [r3, #1]!
.L35:
	cmp	r1, r2
	bne	.L38
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
.L40:
	add	lr, ip, r2
	cmp	r2, r0
	beq	.L45
	ldrb	r3, [r2, #-1]!	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L40
	add	r0, r0, lr
	ldr	pc, [sp], #4
.L45:
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
	b	.L47
.L50:
	strb	r1, [r3], #1
.L47:
	cmp	r3, r2
	bne	.L50
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
	sub	r1, r1, #1
	mov	r3, r0
.L52:
	mov	r0, r3
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r2, #0
	bne	.L52
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
	mov	r3, r0
.L57:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r1, r2
	bne	.L57
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
.L61:
	mov	r2, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L62
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
	mov	r0, #0
	mov	pc, lr
.L62:
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
.L66:
	mov	ip, r1
	mov	lr, r0
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L65
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L66
.L65:
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
.L70:
	mov	r1, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L70
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
	cmp	r2, #0
	beq	.L76
	push	{r4, lr}
	mov	r3, r0
	add	r0, r0, r2
.L75:
	mov	lr, r1
	mov	r4, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L74
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r0, r3
	cmpne	r2, #0
	beq	.L74
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2
	ldrb	r2, [r1], #1	@ zero_extendqisi2
	cmp	ip, r2
	beq	.L75
.L74:
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldrb	r3, [lr]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{r4, pc}
.L76:
	mov	r0, #0
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
	mov	ip, r1
	b	.L83
.L86:
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	strb	r3, [ip, #-2]
	ldrb	r3, [r0, #-2]	@ zero_extendqisi2
	strb	r3, [ip, #-1]
.L83:
	add	r0, r0, #2
	add	ip, ip, #2
	rsb	r3, ip, #2
	add	r3, r3, r2
	add	r3, r3, r1
	cmp	r3, #1
	bgt	.L86
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
	bls	.L99
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L100
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L99:
	mov	r0, #1
	mov	pc, lr
.L100:
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
	bls	.L110
	sub	r3, r0, #8192
	sub	r3, r3, #42
	ldr	r1, .L111
	ldr	r2, .L111+4
	cmp	r3, r2
	cmphi	r0, r1
	bls	.L106
	sub	r2, r0, #57344
	ldr	r3, .L111+8
	cmp	r2, r3
	bls	.L107
	sub	r3, r0, #65280
	sub	r3, r3, #252
	ldr	r2, .L111+12
	cmp	r3, r2
	bhi	.L108
	ldr	r3, .L111+16
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	mov	pc, lr
.L110:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	mov	pc, lr
.L106:
	mov	r0, #1
	mov	pc, lr
.L107:
	mov	r0, #1
	mov	pc, lr
.L108:
	mov	r0, #0
	mov	pc, lr
.L112:
	.align	2
.L111:
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
	bls	.L115
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L115:
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
	bvs	.L122
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L125
	vsub.f64	d0, d0, d1
	mov	pc, lr
.L122:
	vmov.f64	d0, d1
	mov	pc, lr
.L125:
	vldr.64	d0, .L126
	mov	pc, lr
.L127:
	.align	3
.L126:
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
	bvs	.L132
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L135
	vsub.f32	s0, s0, s1
	mov	pc, lr
.L132:
	vmov.f32	s0, s1
	mov	pc, lr
.L135:
	vldr.32	s0, .L136
	mov	pc, lr
.L137:
	.align	2
.L136:
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
	bvs	.L142
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L140
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	mov	pc, lr
.L140:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L142:
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
	bvs	.L151
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L149
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovlt.f32	s0, s1
	mov	pc, lr
.L149:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	mov	pc, lr
.L151:
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
	bvs	.L160
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L158
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	mov	pc, lr
.L158:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L160:
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
	beq	.L167
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	mov	pc, lr
.L167:
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
	bvs	.L178
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L176
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovge.f32	s0, s1
	mov	pc, lr
.L176:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	mov	pc, lr
.L178:
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
	bvs	.L187
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L185
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	mov	pc, lr
.L185:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L187:
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
	ldr	r3, .L195
	ldr	r1, .L195+4
	b	.L193
.L194:
	and	r2, r0, #63
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3], #1
	lsr	r0, r0, #6
.L193:
	cmp	r0, #0
	bne	.L194
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, .L195
	mov	pc, lr
.L196:
	.align	2
.L195:
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
	ldr	r1, .L198
	stm	r1, {r2-r3}
	mov	pc, lr
.L199:
	.align	2
.L198:
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
	ldr	ip, .L202
	ldmia	ip, {r4-r5}
	ldr	r0, .L202+4
	ldr	r1, .L202+8
	mul	r1, r4, r1
	mla	r1, r0, r5, r1
	umull	r2, lr, r4, r0
	add	r3, r1, lr
	adds	r4, r2, #1
	adc	r5, r3, #0
	stm	ip, {r4-r5}
	lsr	r0, r5, #1
	pop	{r4, r5, pc}
.L203:
	.align	2
.L202:
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
	beq	.L207
	ldr	r3, [r1]
	str	r3, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
	mov	pc, lr
.L207:
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
	mov	r5, r1
	mov	r4, #0
	b	.L212
.L213:
	add	r4, r4, #1
.L212:
	cmp	r4, r8
	beq	.L217
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	add	r5, r5, r6
	cmp	r0, #0
	bne	.L213
	mla	r0, r6, r4, r10
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L217:
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
	b	.L219
.L220:
	add	r4, r4, #1
.L219:
	cmp	r4, r8
	beq	.L224
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	add	r5, r5, r6
	cmp	r0, #0
	bne	.L220
	mla	r0, r6, r4, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L224:
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
.L227:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L227
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L233
	cmp	r3, #45
	moveq	r1, #1
	beq	.L228
	mov	r1, #0
	b	.L229
.L233:
	mov	r1, #0
.L228:
	add	r4, r4, #1
.L229:
	sub	r3, r4, #1
	mov	r0, #0
	b	.L230
.L231:
	add	r0, r0, r0, lsl #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r2, r2, #48
	rsb	r0, r2, r0, lsl #1
.L230:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L231
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
.L239:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L239
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L245
	cmp	r3, #45
	moveq	r1, #1
	beq	.L240
	mov	r1, #0
	b	.L241
.L245:
	mov	r1, #0
.L240:
	add	r4, r4, #1
.L241:
	sub	r3, r4, #1
	mov	r0, #0
	b	.L242
.L243:
	add	r0, r0, r0, lsl #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r2, r2, #48
	rsb	r0, r2, r0, lsl #1
.L242:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L243
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
.L251:
	mov	r10, fp
	ldrb	r0, [fp], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L251
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L257
	cmp	r3, #45
	moveq	r0, #1
	beq	.L252
	mov	r0, #0
	b	.L253
.L257:
	mov	r0, #0
.L252:
	add	r10, r10, #1
.L253:
	sub	r1, r10, #1
	mov	r10, #0
	mov	fp, #0
	b	.L254
.L255:
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
.L254:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L255
	cmp	r0, #0
	bne	.L259
	rsbs	r0, r10, #0
	rsc	r1, fp, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L259:
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
.L263:
	cmp	r4, #0
	beq	.L270
	lsr	r5, r4, #1
	mla	r5, r6, r5, r7
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	lsrlt	r4, r4, #1
	blt	.L263
	cmp	r0, #0
	ble	.L268
	add	r7, r5, r6
	sub	r3, r4, #1
	sub	r4, r3, r4, lsr #1
	b	.L263
.L270:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L268:
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
	b	.L272
.L279:
	addgt	r6, r5, r7
	subgt	r4, r4, #1
	asr	r4, r4, #1
.L272:
	cmp	r4, #0
	beq	.L278
	asr	r5, r4, #1
	mla	r5, r7, r5, r6
	mov	r2, r9
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r10
	cmp	r0, #0
	bne	.L279
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L278:
	mov	r0, #0
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
.L295:
	mov	r2, r0
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r0, #-4]
	cmp	r1, r3
	bne	.L295
.L294:
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
.L301:
	mov	ip, r1
	mov	lr, r0
	ldr	r2, [r0], #4
	ldr	r3, [r1], #4
	cmp	r2, r3
	bne	.L300
	ldr	r3, [r0, #-4]
	cmp	r3, #0
	beq	.L300
	ldr	r3, [r1, #-4]
	cmp	r3, #0
	bne	.L301
.L300:
	ldr	r2, [lr]
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L303
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	ldr	pc, [sp], #4
.L303:
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
.L307:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	bne	.L307
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
	mov	r3, r0
.L311:
	mov	r1, r3
	ldr	r2, [r3], #4
	cmp	r2, #0
	bne	.L311
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
.L314:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L315
	ldr	ip, [r0]
	ldr	r3, [r1]
	cmp	ip, r3
	bne	.L315
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L315
	ldr	r3, [r1], #4
	cmp	r3, #0
	subne	r2, r2, #1
	bne	.L314
.L315:
	cmp	r2, #0
	beq	.L318
	ldr	r2, [r4]
	ldr	r3, [lr]
	cmp	r2, r3
	bcc	.L319
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, pc}
.L318:
	mov	r0, #0
	pop	{r4, pc}
.L319:
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
	b	.L323
.L325:
	sub	r2, r2, #1
.L323:
	mov	ip, r0
	cmp	r2, #0
	beq	.L324
	ldr	r3, [r0], #4
	cmp	r1, r3
	bne	.L325
.L324:
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
	b	.L330
.L332:
	sub	r2, r2, #1
.L330:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L331
	ldr	ip, [r0], #4
	ldr	r3, [r1], #4
	cmp	ip, r3
	beq	.L332
.L331:
	cmp	r2, #0
	beq	.L334
	ldr	r2, [r4]
	ldr	r3, [lr]
	cmp	r2, r3
	bcc	.L335
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, pc}
.L334:
	mov	r0, #0
	pop	{r4, pc}
.L335:
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
	b	.L339
.L342:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L339:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L342
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
	subcs	r3, r0, #4
	bcs	.L346
	add	r1, r1, r2, lsl #2
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #2
	sub	ip, r0, #4
	b	.L347
.L351:
	ldr	r3, [r1, #-4]!
	str	r3, [r2], #-4
.L347:
	cmp	r2, ip
	bne	.L351
	mov	pc, lr
.L352:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L346:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L352
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
	mov	r3, r0
	b	.L354
.L357:
	str	r1, [r3], #4
.L354:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L357
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
	addcc	r3, r0, r2
	addcc	r1, r1, r2
	bcc	.L360
	cmp	r0, r1
	moveq	pc, lr
	sub	r1, r1, #1
	add	r2, r0, r2
	mov	r3, r0
	b	.L363
.L366:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r1, #-1]!
.L360:
	cmp	r3, r0
	bne	.L366
	mov	pc, lr
.L367:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	strb	r0, [r1, #1]!
.L363:
	cmp	r3, r2
	bne	.L367
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
.L385:
	cmp	r3, #32
	beq	.L389
	lsr	r2, r0, r3
	tst	r2, #1
	addeq	r3, r3, #1
	beq	.L385
.L390:
	add	r0, r3, #1
	mov	pc, lr
.L389:
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
	bne	.L393
	mov	r0, #0
	mov	pc, lr
.L397:
	asr	r3, r3, #1
	add	r0, r0, #1
.L393:
	tst	r3, #1
	beq	.L397
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
	vldr.32	s15, .L404
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L401
	vldr.32	s15, .L404+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L401:
	mov	r0, #1
	mov	pc, lr
.L405:
	.align	2
.L404:
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
	vldr.64	d7, .L412
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L409
	vldr.64	d7, .L412+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L409:
	mov	r0, #1
	mov	pc, lr
.L413:
	.align	3
.L412:
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
	vldr.64	d7, .L420
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L417
	vldr.64	d7, .L420+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L417:
	mov	r0, #1
	mov	pc, lr
.L421:
	.align	3
.L420:
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
.L427:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f32	s15, s15, s15
	b	.L427
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
.L433:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L433
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
.L439:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L439
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r1, r2
	mov	ip, r0
	cmp	r1, r2
	moveq	pc, lr
	str	lr, [sp, #-4]!
.L443:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
	cmp	r1, r2
	bne	.L443
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
	sub	r1, r5, #1
	add	r3, r6, r0
	b	.L451
.L453:
	sub	r4, r4, #1
.L451:
	mov	r0, r3
	cmp	r4, #0
	beq	.L452
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L453
.L452:
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
.L459:
	add	r0, r3, r2
	cmp	r2, r1
	moveq	pc, lr
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	moveq	pc, lr
	b	.L459
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
.L463:
	mov	lr, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L468
	sub	r3, r1, #1
.L466:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L463
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	cmp	ip, r2
	bne	.L466
	mov	r0, lr
	ldr	pc, [sp], #4
.L468:
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
.L472:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L472
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
	beq	.L480
	ldrb	r7, [r5]	@ zero_extendqisi2
.L478:
	mov	r1, r7
	mov	r0, r4
	bl	strchr
	subs	r4, r0, #0
	popeq	{r4, r5, r6, r7, r8, pc}
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	strncmp
	cmp	r0, #0
	beq	.L481
	add	r4, r4, #1
	b	.L478
.L480:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L481:
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
	bmi	.L497
.L485:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
	b	.L487
.L497:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L485
.L487:
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
	sub	r6, r1, r3
	add	r6, r0, r6
	cmp	r3, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r5, r2
	cmp	r1, r3
	bcc	.L504
	mov	r4, r0
	add	r8, r2, #1
	sub	r9, r3, #1
.L500:
	mov	r7, r4
	cmp	r4, r6
	bhi	.L507
	ldrb	r1, [r4], #1	@ zero_extendqisi2
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L500
	mov	r2, r9
	mov	r1, r8
	mov	r0, r4
	bl	memcmp
	cmp	r0, #0
	bne	.L500
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L507:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L504:
	mov	r0, #0
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
	blt	.L526
	mov	r3, #0
	vmov.f64	d7, #1.0e+0
	vmov.f64	d6, #5.0e-1
	b	.L513
.L515:
	add	r3, r3, #1
	vmul.f64	d0, d0, d6
.L513:
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L515
.L516:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
	mov	pc, lr
.L526:
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
	beq	.L516
	mov	r3, #0
	vmov.f64	d7, #5.0e-1
	b	.L517
.L518:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
.L517:
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L518
	b	.L516
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
	b	.L528
.L529:
	adds	r8, r2, r2
	adc	r9, r3, r3
	mov	r2, r8
	mov	r3, r9
	lsr	r6, r0, #1
	orr	r6, r6, r1, lsl #31
	lsr	r7, r1, #1
	mov	r0, r6
	mov	r1, r7
.L528:
	orrs	ip, r0, r1
	beq	.L532
	and	r4, r0, #1
	mov	r5, #0
	orrs	ip, r4, r5
	beq	.L529
	adds	ip, r10, r2
	str	ip, [sp]
	adc	ip, fp, r3
	str	ip, [sp, #4]
	ldmia	sp, {r10-fp}
	b	.L529
.L532:
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
	b	.L534
.L537:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L534:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L543
	cmp	r1, #0
	bge	.L537
	mov	ip, #0
	b	.L536
.L543:
	mov	ip, #0
.L536:
	cmp	r3, #0
	beq	.L544
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L536
.L544:
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
	beq	.L547
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L547:
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
	cmp	r1, #0
	blt	.L560
.L553:
	orrs	r3, r0, r1
	beq	.L555
	push	{r4, lr}
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L560:
	mvn	r2, r0
	mvn	r3, r1
	mov	r0, r2
	mov	r1, r3
	b	.L553
.L555:
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
	mov	r3, r0
	mov	r0, #0
	b	.L562
.L566:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L562:
	cmp	r3, #0
	bne	.L566
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
	bcc	.L568
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L569
.L568:
	mov	r3, r1
	mov	lr, r0
	add	r4, r1, r4, lsl #3
	b	.L570
.L569:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L571
.L572:
	vldmia.64	r3!, {d7}	@ int
	vstmia.64	lr!, {d7}	@ int
.L570:
	cmp	r3, r4
	bne	.L572
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	rsb	r1, r1, #1
	b	.L573
.L579:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
.L573:
	add	ip, r1, r3
	cmp	r2, ip
	bhi	.L579
	pop	{r4, pc}
.L580:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L571:
	cmp	r3, r1
	bne	.L580
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
	bcc	.L582
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L583
.L582:
	sub	r3, r1, #2
	sub	ip, r0, #2
	add	r4, r3, r4, lsl #1
	b	.L584
.L583:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L585
.L586:
	ldrsh	lr, [r3, #2]!
	strh	lr, [ip, #2]!	@ movhi
.L584:
	cmp	r3, r4
	bne	.L586
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, pc}
.L590:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L585:
	cmp	r3, r1
	bne	.L590
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
	bcc	.L592
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L593
.L592:
	sub	r3, r1, #4
	sub	lr, r0, #4
	add	r5, r3, r5, lsl #2
	b	.L594
.L593:
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L595
.L596:
	ldr	r4, [r3, #4]!
	str	r4, [lr, #4]!
.L594:
	cmp	r3, r5
	bne	.L596
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	rsb	r1, r1, #1
	b	.L597
.L603:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
.L597:
	add	ip, r1, r3
	cmp	r2, ip
	bhi	.L603
	pop	{r4, r5, pc}
.L604:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
.L595:
	cmp	r3, r1
	bne	.L604
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
.L616:
	cmp	r0, #16
	moveq	pc, lr
	rsb	r3, r0, #15
	asr	r3, r2, r3
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	b	.L616
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
.L620:
	cmp	r0, #16
	moveq	pc, lr
	asr	r3, r2, r0
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	b	.L620
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
	vldr.32	s15, .L629
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vcvtlt.s32.f32	s15, s0
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L630:
	.align	2
.L629:
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
	b	.L632
.L634:
	asr	r2, r0, r3
	tst	r2, #1
	addne	r1, r1, #1
	add	r3, r3, #1
.L632:
	cmp	r3, #16
	bne	.L634
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
	b	.L636
.L640:
	asr	r2, r1, r3
	tst	r2, #1
	addne	r0, r0, #1
	add	r3, r3, #1
.L636:
	cmp	r3, #16
	bne	.L640
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
	mov	r3, r0
	mov	r0, #0
	b	.L642
.L646:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L642:
	cmp	r3, #0
	bne	.L646
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
	subs	r3, r0, #0
	movne	r0, #0
	bne	.L649
	mov	r0, #0
	mov	pc, lr
.L654:
	tst	r1, #1
	addne	r0, r0, r3
	lsl	r3, r3, #1
	lsr	r1, r1, #1
.L649:
	cmp	r1, #0
	bne	.L654
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
	b	.L656
.L659:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L656:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L665
	cmp	r1, #0
	bge	.L659
	mov	ip, #0
	b	.L658
.L665:
	mov	ip, #0
.L658:
	cmp	r3, #0
	beq	.L666
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L658
.L666:
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
	bmi	.L669
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L669:
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
	bmi	.L673
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L673:
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
	b	.L681
.L683:
	tst	r1, #1
	addne	lr, lr, r0
	lsl	r0, r0, #1
	asr	r1, r1, #1
	add	r3, r3, #1
.L681:
	and	ip, r3, #255
	subs	r2, r1, #0
	movne	r2, #1
	cmp	ip, #31
	movhi	r2, #0
	cmp	r2, #0
	bne	.L683
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
	b	.L701
.L704:
	lsl	r1, r1, #17
	lsr	r1, r1, #16
	lsl	r3, r3, #17
	lsr	r3, r3, #16
.L701:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L710
	tst	r1, #32768
	beq	.L704
	mov	ip, #0
	b	.L703
.L710:
	mov	ip, #0
.L703:
	cmp	r3, #0
	beq	.L711
	cmp	r0, r1
	subcs	r0, r0, r1
	lslcs	r0, r0, #16
	lsrcs	r0, r0, #16
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L703
.L711:
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
	b	.L713
.L716:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L713:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L722
	cmp	r1, #0
	bge	.L716
	mov	ip, #0
	b	.L715
.L722:
	mov	ip, #0
.L715:
	cmp	r3, #0
	beq	.L723
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L715
.L723:
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
	tst	r2, #32
	beq	.L725
	mov	r0, #0
	sub	r2, r2, #32
	lsl	r1, r4, r2
.L727:
	pop	{r4, r5}
	mov	pc, lr
.L725:
	mov	r5, r1
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	lslne	r0, r4, r2
	rsbne	r3, r2, #32
	lsrne	r3, r4, r3
	orrne	r1, r3, r5, lsl r2
	moveq	r0, r4
	moveq	r1, r5
	b	.L727
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
	mov	r5, r1
	tst	r2, #32
	beq	.L731
	asr	r1, r1, #31
	sub	r2, r2, #32
	asr	r0, r5, r2
.L733:
	pop	{r4, r5}
	mov	pc, lr
.L731:
	mov	r4, r0
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	asrne	r1, r5, r2
	rsbne	r3, r2, #32
	lsrne	r2, r4, r2
	orrne	r0, r2, r5, lsl r3
	moveq	r0, r4
	moveq	r1, r5
	b	.L733
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
	blt	.L750
	bgt	.L751
	cmp	r0, r2
	bcc	.L752
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L750:
	mov	r0, #0
	mov	pc, lr
.L751:
	mov	r0, #2
	mov	pc, lr
.L752:
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
	mov	r5, r1
	tst	r2, #32
	beq	.L766
	mov	r1, #0
	sub	r2, r2, #32
	lsr	r0, r5, r2
.L768:
	pop	{r4, r5}
	mov	pc, lr
.L766:
	mov	r4, r0
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	lsrne	r1, r5, r2
	rsbne	r3, r2, #32
	lsrne	r2, r4, r2
	orrne	r0, r2, r5, lsl r3
	moveq	r0, r4
	moveq	r1, r5
	b	.L768
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
	ldr	r3, .L777
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L778:
	.align	2
.L777:
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
	ldr	r3, .L780
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L781:
	.align	2
.L780:
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
	adr	r5, .L784
	ldmia	r5, {r4-r5}
	and	r6, r2, r4
	and	r7, r3, r5
	subs	r4, r0, r6
	sbc	r5, r1, r7
	lsr	r0, r4, #2
	orr	r0, r0, r5, lsl #30
	lsr	r1, r5, #2
	adr	r7, .L784+8
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
	adr	r1, .L784+16
	ldmia	r1, {r0-r1}
	and	r2, r4, r0
	and	r3, r5, r1
	add	r0, r3, r2
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	pop	{r4, r5, r6, r7, r8, r9}
	mov	pc, lr
.L785:
	.align	3
.L784:
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
	ldr	r3, .L787
	and	r3, r3, r0, lsr #1
	sub	r0, r0, r3
	ldr	r3, .L787+4
	and	r2, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r2, r0
	add	r3, r0, r0, lsr #4
	ldr	r0, .L787+8
	and	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	mov	pc, lr
.L788:
	.align	2
.L787:
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
.L792:
	tst	r0, #1
	vmulne.f64	d7, d7, d0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d0, d0, d0
	bne	.L792
.L791:
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
.L798:
	tst	r0, #1
	vmulne.f32	s15, s15, s0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f32	s0, s0, s0
	bne	.L798
.L797:
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
	bcc	.L803
	bhi	.L804
	cmp	r0, r2
	bcc	.L805
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L803:
	mov	r0, #0
	mov	pc, lr
.L804:
	mov	r0, #2
	mov	pc, lr
.L805:
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
