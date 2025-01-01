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
	sub	r0, r0, #1
	ldr	r3, .L198
	str	r0, [r3]
	mov	r2, #0
	str	r2, [r3, #4]
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
	str	lr, [sp, #-4]!
	ldr	r2, .L202
	ldr	ip, [r2]
	ldr	r3, [r2, #4]
	ldr	r1, .L202+4
	ldr	r0, .L202+8
	mul	r0, ip, r0
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r3, r3, #1
	adc	r0, r0, lr
	str	r3, [r2]
	str	r0, [r2, #4]
	lsr	r0, r0, #1
	ldr	pc, [sp], #4
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
	push	{r4, r5, r6, lr}
	mov	r5, r0
.L251:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L251
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L257
	cmp	r3, #45
	moveq	lr, #1
	beq	.L252
	mov	lr, #0
	b	.L253
.L257:
	mov	lr, #0
.L252:
	add	r4, r4, #1
.L253:
	sub	ip, r4, #1
	mov	r0, #0
	mov	r1, r0
	b	.L254
.L255:
	lsl	r2, r1, #2
	orr	r2, r2, r0, lsr #30
	lsl	r3, r0, #2
	adds	r3, r3, r0
	adc	r1, r1, r2
	adds	r3, r3, r3
	adc	r1, r1, r1
	ldrb	r2, [ip]	@ zero_extendqisi2
	sub	r2, r2, #48
	subs	r0, r3, r2
	sbc	r1, r1, r2, asr #31
.L254:
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L255
	cmp	lr, #0
	popne	{r4, r5, r6, pc}
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	pop	{r4, r5, r6, pc}
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
.L293:
	mov	r2, r0
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L292
	ldr	r3, [r0, #-4]
	cmp	r1, r3
	bne	.L293
.L292:
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
.L299:
	mov	ip, r1
	mov	lr, r0
	ldr	r2, [r0], #4
	ldr	r3, [r1], #4
	cmp	r2, r3
	bne	.L298
	ldr	r3, [r0, #-4]
	cmp	r3, #0
	beq	.L298
	ldr	r3, [r1, #-4]
	cmp	r3, #0
	bne	.L299
.L298:
	ldr	r2, [lr]
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L301
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	ldr	pc, [sp], #4
.L301:
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
.L305:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	bne	.L305
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
.L309:
	mov	r1, r3
	ldr	r2, [r3], #4
	cmp	r2, #0
	bne	.L309
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
.L312:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L313
	ldr	ip, [r0]
	ldr	r3, [r1]
	cmp	ip, r3
	bne	.L313
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L313
	ldr	r3, [r1], #4
	cmp	r3, #0
	subne	r2, r2, #1
	bne	.L312
.L313:
	cmp	r2, #0
	beq	.L316
	ldr	r2, [r4]
	ldr	r3, [lr]
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
	b	.L321
.L323:
	sub	r2, r2, #1
.L321:
	mov	ip, r0
	cmp	r2, #0
	beq	.L322
	ldr	r3, [r0], #4
	cmp	r1, r3
	bne	.L323
.L322:
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
	b	.L328
.L330:
	sub	r2, r2, #1
.L328:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L329
	ldr	ip, [r0], #4
	ldr	r3, [r1], #4
	cmp	ip, r3
	beq	.L330
.L329:
	cmp	r2, #0
	beq	.L332
	ldr	r2, [r4]
	ldr	r3, [lr]
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
	sub	r3, r0, #4
	b	.L337
.L340:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L337:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L340
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
	bcs	.L344
	add	r1, r1, r2, lsl #2
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #2
	sub	ip, r0, #4
	b	.L345
.L349:
	ldr	r3, [r1, #-4]!
	str	r3, [r2], #-4
.L345:
	cmp	r2, ip
	bne	.L349
	mov	pc, lr
.L350:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L344:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L350
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
	b	.L352
.L355:
	str	r1, [r3], #4
.L352:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L355
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
	bcc	.L358
	cmp	r0, r1
	moveq	pc, lr
	sub	r1, r1, #1
	add	r2, r0, r2
	mov	r3, r0
	b	.L361
.L364:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r1, #-1]!
.L358:
	cmp	r3, r0
	bne	.L364
	mov	pc, lr
.L365:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	strb	r0, [r1, #1]!
.L361:
	cmp	r3, r2
	bne	.L365
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
.L382:
	cmp	r3, #32
	beq	.L386
	lsr	r2, r0, r3
	tst	r2, #1
	addeq	r3, r3, #1
	beq	.L382
.L387:
	add	r0, r3, #1
	mov	pc, lr
.L386:
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
	bne	.L390
	mov	r0, #0
	mov	pc, lr
.L394:
	asr	r3, r3, #1
	add	r0, r0, #1
.L390:
	tst	r3, #1
	beq	.L394
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
	vldr.32	s15, .L401
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L398
	vldr.32	s15, .L401+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L398:
	mov	r0, #1
	mov	pc, lr
.L402:
	.align	2
.L401:
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
	vldr.64	d7, .L409
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L406
	vldr.64	d7, .L409+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L406:
	mov	r0, #1
	mov	pc, lr
.L410:
	.align	3
.L409:
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
	vldr.64	d7, .L417
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L414
	vldr.64	d7, .L417+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L414:
	mov	r0, #1
	mov	pc, lr
.L418:
	.align	3
.L417:
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
.L424:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f32	s15, s15, s15
	b	.L424
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
.L430:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L430
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
.L436:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L436
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
.L440:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
	cmp	r1, r2
	bne	.L440
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
	b	.L448
.L450:
	sub	r4, r4, #1
.L448:
	mov	r0, r3
	cmp	r4, #0
	beq	.L449
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L450
.L449:
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
.L456:
	add	r0, r3, r2
	cmp	r2, r1
	moveq	pc, lr
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	moveq	pc, lr
	b	.L456
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
.L460:
	mov	lr, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L465
	sub	r3, r1, #1
.L463:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L460
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	cmp	ip, r2
	bne	.L463
	mov	r0, lr
	ldr	pc, [sp], #4
.L465:
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
.L469:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L469
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
	beq	.L477
	ldrb	r7, [r5]	@ zero_extendqisi2
.L475:
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
	beq	.L478
	add	r4, r4, #1
	b	.L475
.L477:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L478:
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
	bmi	.L494
.L482:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
	b	.L484
.L494:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L482
.L484:
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
	bcc	.L501
	mov	r4, r0
	add	r8, r2, #1
	sub	r9, r3, #1
.L497:
	mov	r7, r4
	cmp	r4, r6
	bhi	.L504
	ldrb	r1, [r4], #1	@ zero_extendqisi2
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L497
	mov	r2, r9
	mov	r1, r8
	mov	r0, r4
	bl	memcmp
	cmp	r0, #0
	bne	.L497
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L504:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L501:
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
	blt	.L523
	mov	r3, #0
	vmov.f64	d7, #1.0e+0
	vmov.f64	d6, #5.0e-1
	b	.L510
.L512:
	add	r3, r3, #1
	vmul.f64	d0, d0, d6
.L510:
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L512
.L513:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
	mov	pc, lr
.L523:
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
	beq	.L513
	mov	r3, #0
	vmov.f64	d7, #5.0e-1
	b	.L514
.L515:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
.L514:
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L515
	b	.L513
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
	mov	lr, r1
	mov	ip, r0
	mov	r0, #0
	mov	r1, r0
	mov	r5, r0
	b	.L525
.L526:
	adds	r2, r2, r2
	adc	r3, r3, r3
	lsr	ip, ip, #1
	orr	ip, ip, lr, lsl #31
	lsr	lr, lr, #1
.L525:
	orrs	r4, ip, lr
	popeq	{r4, r5, pc}
	and	r4, ip, #1
	orrs	r4, r4, r5
	beq	.L526
	adds	r0, r0, r2
	adc	r1, r1, r3
	b	.L526
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
	b	.L531
.L534:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L531:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L540
	cmp	r1, #0
	bge	.L534
	mov	ip, #0
	b	.L533
.L540:
	mov	ip, #0
.L533:
	cmp	r3, #0
	beq	.L541
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L533
.L541:
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
	beq	.L544
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L544:
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
	mvnlt	r0, r0
	mvnlt	r1, r1
	orrs	r3, r0, r1
	beq	.L552
	push	{r4, lr}
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L552:
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
	b	.L558
.L562:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L558:
	cmp	r3, #0
	bne	.L562
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
	bcc	.L564
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L565
.L564:
	mov	r3, r1
	mov	lr, r0
	add	r4, r1, r4, lsl #3
	b	.L566
.L565:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L567
.L568:
	vldmia.64	r3!, {d7}	@ int
	vstmia.64	lr!, {d7}	@ int
.L566:
	cmp	r3, r4
	bne	.L568
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	rsb	r1, r1, #1
	b	.L569
.L575:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
.L569:
	add	ip, r1, r3
	cmp	r2, ip
	bhi	.L575
	pop	{r4, pc}
.L576:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L567:
	cmp	r3, r1
	bne	.L576
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
	bcc	.L578
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L579
.L578:
	sub	r3, r1, #2
	sub	ip, r0, #2
	add	r4, r3, r4, lsl #1
	b	.L580
.L579:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L581
.L582:
	ldrsh	lr, [r3, #2]!
	strh	lr, [ip, #2]!	@ movhi
.L580:
	cmp	r3, r4
	bne	.L582
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, pc}
.L586:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L581:
	cmp	r3, r1
	bne	.L586
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
	bcc	.L588
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L589
.L588:
	sub	r3, r1, #4
	sub	lr, r0, #4
	add	r5, r3, r5, lsl #2
	b	.L590
.L589:
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L591
.L592:
	ldr	r4, [r3, #4]!
	str	r4, [lr, #4]!
.L590:
	cmp	r3, r5
	bne	.L592
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	rsb	r1, r1, #1
	b	.L593
.L599:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
.L593:
	add	ip, r1, r3
	cmp	r2, ip
	bhi	.L599
	pop	{r4, r5, pc}
.L600:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
.L591:
	cmp	r3, r1
	bne	.L600
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
.L612:
	cmp	r0, #16
	moveq	pc, lr
	rsb	r3, r0, #15
	asr	r3, r2, r3
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	b	.L612
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
.L616:
	cmp	r0, #16
	moveq	pc, lr
	asr	r3, r2, r0
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	b	.L616
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
	vldr.32	s15, .L625
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vcvtlt.s32.f32	s15, s0
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L626:
	.align	2
.L625:
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
	b	.L628
.L630:
	asr	r2, r0, r3
	tst	r2, #1
	addne	r1, r1, #1
	add	r3, r3, #1
.L628:
	cmp	r3, #16
	bne	.L630
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
	b	.L632
.L636:
	asr	r2, r1, r3
	tst	r2, #1
	addne	r0, r0, #1
	add	r3, r3, #1
.L632:
	cmp	r3, #16
	bne	.L636
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
	b	.L638
.L642:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L638:
	cmp	r3, #0
	bne	.L642
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
	bne	.L645
	mov	r0, #0
	mov	pc, lr
.L650:
	tst	r1, #1
	addne	r0, r0, r3
	lsl	r3, r3, #1
	lsr	r1, r1, #1
.L645:
	cmp	r1, #0
	bne	.L650
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
	b	.L652
.L655:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L652:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L661
	cmp	r1, #0
	bge	.L655
	mov	ip, #0
	b	.L654
.L661:
	mov	ip, #0
.L654:
	cmp	r3, #0
	beq	.L662
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L654
.L662:
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
	bmi	.L665
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L665:
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
	bmi	.L669
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L669:
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
	push	{r4, lr}
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	r4, #1
	movge	r4, #0
	mov	r3, #0
	mov	lr, r3
	b	.L675
.L677:
	tst	r1, #1
	addne	lr, lr, r0
	lsl	r0, r0, #1
	asr	r1, r1, #1
	add	r3, r3, #1
.L675:
	and	ip, r3, #255
	subs	r2, r1, #0
	movne	r2, #1
	cmp	ip, #31
	movhi	r2, #0
	cmp	r2, #0
	bne	.L677
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
	b	.L695
.L698:
	lsl	r1, r1, #17
	lsr	r1, r1, #16
	lsl	r3, r3, #17
	lsr	r3, r3, #16
.L695:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L704
	tst	r1, #32768
	beq	.L698
	mov	ip, #0
	b	.L697
.L704:
	mov	ip, #0
.L697:
	cmp	r3, #0
	beq	.L705
	cmp	r0, r1
	subcs	r0, r0, r1
	lslcs	r0, r0, #16
	lsrcs	r0, r0, #16
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L697
.L705:
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
	b	.L707
.L710:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L707:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L716
	cmp	r1, #0
	bge	.L710
	mov	ip, #0
	b	.L709
.L716:
	mov	ip, #0
.L709:
	cmp	r3, #0
	beq	.L717
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L709
.L717:
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
	beq	.L719
	mov	ip, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
.L720:
	mov	r0, ip
	mov	pc, lr
.L719:
	cmp	r2, #0
	moveq	pc, lr
	lsl	ip, r0, r2
	rsb	r3, r2, #32
	lsr	r3, r0, r3
	orr	r1, r3, r1, lsl r2
	b	.L720
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
	beq	.L724
	asr	r3, r1, #31
	sub	r2, r2, #32
	asr	r0, r1, r2
.L725:
	mov	r1, r3
	mov	pc, lr
.L724:
	cmp	r2, #0
	moveq	pc, lr
	asr	r3, r1, r2
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	orr	r0, r0, r1, lsl ip
	b	.L725
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
	blt	.L742
	bgt	.L743
	cmp	r0, r2
	bcc	.L744
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L742:
	mov	r0, #0
	mov	pc, lr
.L743:
	mov	r0, #2
	mov	pc, lr
.L744:
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
	tst	r2, #32
	beq	.L758
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
.L759:
	mov	r1, r3
	mov	pc, lr
.L758:
	cmp	r2, #0
	moveq	pc, lr
	lsr	r3, r1, r2
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	orr	r0, r0, r1, lsl ip
	b	.L759
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
	lsl	ip, r0, #16
	lsr	ip, ip, #16
	lsl	r3, r1, #16
	lsr	r3, r3, #16
	mul	r4, r3, ip
	lsl	lr, r4, #16
	lsr	lr, lr, #16
	lsr	r2, r0, #16
	mul	r3, r2, r3
	add	r3, r3, r4, lsr #16
	add	r4, lr, r3, lsl #16
	lsr	r0, r3, #16
	lsr	r1, r1, #16
	mul	ip, r1, ip
	add	r3, ip, r4, lsr #16
	add	ip, r0, r3, lsr #16
	add	r0, lr, r3, lsl #16
	mla	r1, r2, r1, ip
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
	ldr	r0, .L768
	asr	r0, r0, r1
	and	r0, r0, #1
	mov	pc, lr
.L769:
	.align	2
.L768:
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
	ldr	r3, .L771
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L772:
	.align	2
.L771:
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
	ldr	r2, .L774
	and	r0, r0, r2
	and	r2, r2, r1, lsr #1
	subs	r3, r3, r0
	sbc	r1, r1, r2
	lsr	r2, r3, #2
	orr	r2, r2, r1, lsl #30
	ldr	ip, .L774+4
	and	r2, r2, ip
	and	r0, ip, r1, lsr #2
	and	r3, r3, ip
	and	r1, r1, ip
	adds	r3, r2, r3
	adc	r0, r0, r1
	lsr	r2, r3, #4
	orr	r2, r2, r0, lsl #28
	adds	r3, r2, r3
	adc	r0, r0, r0, lsr #4
	ldr	r2, .L774+8
	and	r3, r3, r2
	and	r0, r0, r2
	add	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	mov	pc, lr
.L775:
	.align	2
.L774:
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
	ldr	r3, .L777
	and	r3, r3, r0, lsr #1
	sub	r0, r0, r3
	ldr	r3, .L777+4
	and	r2, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r2, r0
	add	r3, r0, r0, lsr #4
	ldr	r0, .L777+8
	and	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	mov	pc, lr
.L778:
	.align	2
.L777:
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
.L782:
	tst	r0, #1
	vmulne.f64	d7, d7, d0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d0, d0, d0
	bne	.L782
.L781:
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
.L788:
	tst	r0, #1
	vmulne.f32	s15, s15, s0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f32	s0, s0, s0
	bne	.L788
.L787:
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
	bcc	.L793
	bhi	.L794
	cmp	r0, r2
	bcc	.L795
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	mov	pc, lr
.L793:
	mov	r0, #0
	mov	pc, lr
.L794:
	mov	r0, #2
	mov	pc, lr
.L795:
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
