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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
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
	bne	.L4
	b	.L5
.L2:
	cmp	r0, r1
	beq	.L5
	sub	ip, r0, #1
	add	r2, r1, r2
	mov	r3, r1
	b	.L6
.L7:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	strb	r1, [ip, #1]!
.L6:
	cmp	r3, r2
	bne	.L7
.L5:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.syntax unified
	.arm
	.type	memccpy, %function
memccpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	and	r2, r2, #255
	sub	r1, r1, #1
	b	.L9
.L11:
	sub	r3, r3, #1
.L9:
	mov	lr, r0
	cmp	r3, #0
	beq	.L10
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	cmp	r2, ip
	bne	.L11
.L10:
	cmp	r3, #0
	addne	r0, lr, #1
	moveq	r0, #0
	pop	{fp, pc}
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.syntax unified
	.arm
	.type	memchr, %function
memchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	and	r1, r1, #255
	b	.L16
.L18:
	sub	r2, r2, #1
.L16:
	mov	ip, r0
	cmp	r2, #0
	beq	.L17
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L18
.L17:
	cmp	r2, #0
	movne	r0, ip
	moveq	r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	b	.L23
.L25:
	sub	r2, r2, #1
.L23:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L24
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	cmp	ip, r3
	beq	.L25
.L24:
	cmp	r2, #0
	ldrbne	r0, [r4]	@ zero_extendqisi2
	ldrbne	r3, [lr]	@ zero_extendqisi2
	subne	r0, r0, r3
	moveq	r0, #0
	pop	{r4, fp, pc}
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r3, r0, #1
	add	r2, r1, r2
	b	.L30
.L31:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	strb	ip, [r3, #1]!
.L30:
	cmp	r1, r2
	bne	.L31
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	and	r1, r1, #255
	add	r2, r0, r2
	b	.L33
.L35:
	ldrb	ip, [r2, #-1]!	@ zero_extendqisi2
	cmp	r1, ip
	addeq	r0, r0, r3
	beq	.L34
.L33:
	mvn	r3, r0
	add	r3, r3, r2
	cmp	r2, r0
	bne	.L35
	mov	r0, #0
.L34:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	r2, r0, r2
	mov	r3, r0
	b	.L38
.L39:
	strb	r1, [r3], #1
.L38:
	cmp	r3, r2
	bne	.L39
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.syntax unified
	.arm
	.type	stpcpy, %function
stpcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r1, r1, #1
	mov	r3, r0
.L41:
	mov	r0, r3
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r2, #0
	bne	.L41
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.syntax unified
	.arm
	.type	strchrnul, %function
strchrnul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	and	r1, r1, #255
	mov	r3, r0
.L45:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L44
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r1, r2
	bne	.L45
.L44:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.syntax unified
	.arm
	.type	strchr, %function
strchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
.L49:
	mov	r2, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L50
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L49
	mov	r0, #0
	b	.L48
.L50:
	mov	r0, r2
.L48:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.syntax unified
	.arm
	.type	strcmp, %function
strcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
.L54:
	mov	ip, r1
	mov	lr, r0
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L53
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L54
.L53:
	ldrb	r0, [lr]	@ zero_extendqisi2
	ldrb	r3, [ip]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{fp, pc}
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.syntax unified
	.arm
	.type	strlen, %function
strlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
.L57:
	mov	r1, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L57
	sub	r0, r1, r0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	cmp	r2, #0
	beq	.L63
	mov	r3, r0
.L62:
	mov	r4, r1
	mov	r5, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L61
	ldrb	ip, [r1]	@ zero_extendqisi2
	add	lr, r0, r2
	cmp	lr, r3
	cmpne	ip, #0
	beq	.L61
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	cmp	lr, ip
	beq	.L62
.L61:
	ldrb	r0, [r5]	@ zero_extendqisi2
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{r4, r5, fp, pc}
.L63:
	mov	r0, #0
	pop	{r4, r5, fp, pc}
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.syntax unified
	.arm
	.type	swab, %function
swab:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	ip, r1
	b	.L66
.L67:
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	strb	r3, [ip, #-2]
	ldrb	r3, [r0, #-2]	@ zero_extendqisi2
	strb	r3, [ip, #-1]
.L66:
	add	r0, r0, #2
	add	ip, ip, #2
	rsb	r3, ip, #2
	add	r3, r3, r2
	add	r3, r3, r1
	cmp	r3, #1
	bgt	.L67
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.syntax unified
	.arm
	.type	isalpha, %function
isalpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.syntax unified
	.arm
	.type	isascii, %function
isascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, #127
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.syntax unified
	.arm
	.type	isblank, %function
isblank:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, #9
	cmpne	r0, #32
	moveq	r0, #1
	movne	r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.syntax unified
	.arm
	.type	iscntrl, %function
iscntrl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, #127
	cmpne	r0, #31
	movls	r0, #1
	movhi	r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.syntax unified
	.arm
	.type	isdigit, %function
isdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r0, r0, #48
	cmp	r0, #9
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.syntax unified
	.arm
	.type	isgraph, %function
isgraph:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r0, r0, #33
	cmp	r0, #93
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.syntax unified
	.arm
	.type	islower, %function
islower:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r0, r0, #97
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	islower, .-islower
	.align	2
	.global	isprint
	.syntax unified
	.arm
	.type	isprint, %function
isprint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r0, r0, #32
	cmp	r0, #94
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.syntax unified
	.arm
	.type	isspace, %function
isspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r3, r0, #9
	cmp	r0, #32
	cmpne	r3, #4
	movls	r0, #1
	movhi	r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.syntax unified
	.arm
	.type	isupper, %function
isupper:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r0, r0, #65
	cmp	r0, #25
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.syntax unified
	.arm
	.type	iswcntrl, %function
iswcntrl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r3, r0, #127
	cmp	r3, #32
	cmphi	r0, #31
	movls	r0, #1
	bls	.L79
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	movls	r0, #1
	bls	.L79
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	b	.L79
.L79:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.syntax unified
	.arm
	.type	iswdigit, %function
iswdigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r0, r0, #48
	cmp	r0, #9
	movhi	r0, #0
	movls	r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.syntax unified
	.arm
	.type	iswprint, %function
iswprint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, #254
	bhi	.L85
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	b	.L86
.L85:
	sub	r3, r0, #8192
	sub	r3, r3, #42
	ldr	r1, .L91
	ldr	r2, .L91+4
	cmp	r3, r2
	cmphi	r0, r1
	movls	r0, #1
	bls	.L86
	sub	r2, r0, #57344
	ldr	r3, .L91+8
	cmp	r2, r3
	movls	r0, #1
	bls	.L86
	sub	r3, r0, #65280
	sub	r3, r3, #252
	ldr	r2, .L91+12
	cmp	r3, r2
	movhi	r0, #0
	bhi	.L86
	ldr	r3, .L91+16
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	b	.L86
.L86:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L92:
	.align	2
.L91:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r3, r0, #48
	cmp	r3, #9
	movls	r0, #1
	bls	.L94
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	b	.L94
.L94:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.syntax unified
	.arm
	.type	toascii, %function
toascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	and	r0, r0, #127
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.syntax unified
	.arm
	.type	fdim, %function
fdim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L99
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L102
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L105
	vsub.f64	d0, d0, d1
	b	.L99
.L102:
	vmov.f64	d0, d1
	b	.L99
.L105:
	vldr.64	d0, .L106
.L99:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L107:
	.align	3
.L106:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L109
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L112
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vsubgt.f32	s0, s0, s1
	bgt	.L109
	b	.L115
.L112:
	vmov.f32	s0, s1
	b	.L109
.L115:
	vldr.32	s0, .L116
.L109:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L117:
	.align	2
.L116:
	.word	0
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.syntax unified
	.arm
	.type	fmax, %function
fmax:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L122
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L119
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L120
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	b	.L119
.L120:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	b	.L119
.L122:
	vmov.f64	d0, d1
.L119:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.syntax unified
	.arm
	.type	fmaxf, %function
fmaxf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L131
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L128
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L129
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovlt.f32	s0, s1
	b	.L128
.L129:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	b	.L128
.L131:
	vmov.f32	s0, s1
.L128:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.syntax unified
	.arm
	.type	fmaxl, %function
fmaxl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L140
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L137
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L138
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovlt.f64	d0, d1
	b	.L137
.L138:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	b	.L137
.L140:
	vmov.f64	d0, d1
.L137:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.syntax unified
	.arm
	.type	fmin, %function
fmin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L149
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L146
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L147
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	b	.L146
.L147:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	b	.L146
.L149:
	vmov.f64	d0, d1
.L146:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.syntax unified
	.arm
	.type	fminf, %function
fminf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L158
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L155
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L156
	vmov	r3, s0	@ int
	cmp	r3, #0
	vmovge.f32	s0, s1
	b	.L155
.L156:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	b	.L155
.L158:
	vmov.f32	s0, s1
.L155:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.syntax unified
	.arm
	.type	fminl, %function
fminl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L167
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L164
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L165
	vmov	r3, s1	@ int
	cmp	r3, #0
	vmovge.f64	d0, d1
	b	.L164
.L165:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	b	.L164
.L167:
	vmov.f64	d0, d1
.L164:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L175
	b	.L173
.L174:
	and	r2, r0, #63
	ldr	r1, .L175+4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3], #1
	lsr	r0, r0, #6
.L173:
	cmp	r0, #0
	bne	.L174
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, .L175
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L176:
	.align	2
.L175:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r2, r0, #1
	mov	r3, #0
	ldr	r1, .L178
	stm	r1, {r2-r3}
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L179:
	.align	2
.L178:
	.word	seed
	.size	srand, .-srand
	.align	2
	.global	rand
	.syntax unified
	.arm
	.type	rand, %function
rand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	ldr	ip, .L181
	ldmia	ip, {r4-r5}
	ldr	r0, .L181+4
	ldr	r1, .L181+8
	mul	r1, r4, r1
	mla	r1, r0, r5, r1
	umull	r2, lr, r4, r0
	add	r3, r1, lr
	adds	r4, r2, #1
	adc	r5, r3, #0
	stm	ip, {r4-r5}
	lsr	r0, r5, #1
	pop	{r4, r5, fp, pc}
.L182:
	.align	2
.L181:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r1, #0
	moveq	r3, #0
	streq	r3, [r0, #4]
	streq	r3, [r0]
	beq	.L183
.L184:
	ldr	r3, [r1]
	str	r3, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
.L183:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	insque, .-insque
	.align	2
	.global	remque
	.syntax unified
	.arm
	.type	remque, %function
remque:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, [r0]
	cmp	r3, #0
	ldrne	r2, [r0, #4]
	strne	r2, [r3, #4]
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ldrne	r2, [r0]
	strne	r2, [r3]
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #12
	mov	r7, r0
	str	r1, [fp, #-40]
	mov	r10, r2
	mov	r6, r3
	ldr	r9, [fp, #4]
	ldr	r8, [r2]
	mov	r5, r1
	mov	r4, #0
	b	.L190
.L193:
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	add	r5, r5, r6
	cmp	r0, #0
	ldreq	r0, [fp, #-40]
	mlaeq	r0, r6, r4, r0
	beq	.L192
.L191:
	add	r4, r4, #1
.L190:
	cmp	r4, r8
	bne	.L193
	add	r3, r8, #1
	str	r3, [r10]
	mov	r2, r6
	mov	r1, r7
	ldr	r0, [fp, #-40]
	mla	r0, r8, r6, r0
	bl	memcpy
.L192:
	sub	sp, fp, #32
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
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #36
	mov	r7, r0
	mov	r10, r1
	mov	r6, r3
	ldr	r9, [fp, #4]
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
	mov	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.syntax unified
	.arm
	.type	abs, %function
abs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, #0
	rsblt	r0, r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	abs, .-abs
	.align	2
	.global	atoi
	.syntax unified
	.arm
	.type	atoi, %function
atoi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	mov	r5, r0
.L201:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L201
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L207
	cmp	r3, #45
	moveq	r1, #1
	beq	.L202
	b	.L208
.L207:
	mov	r1, #0
.L202:
	add	r4, r4, #1
	b	.L203
.L208:
	mov	r1, #0
.L203:
	sub	r3, r4, #1
	mov	r0, #0
	b	.L204
.L205:
	add	r0, r0, r0, lsl #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r2, r2, #48
	rsb	r0, r2, r0, lsl #1
.L204:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L205
	cmp	r1, #0
	rsbeq	r0, r0, #0
	pop	{r4, r5, fp, pc}
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	mov	r5, r0
.L212:
	mov	r4, r5
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L212
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L218
	cmp	r3, #45
	moveq	r1, #1
	beq	.L213
	b	.L219
.L218:
	mov	r1, #0
.L213:
	add	r4, r4, #1
	b	.L214
.L219:
	mov	r1, #0
.L214:
	sub	r3, r4, #1
	mov	r0, #0
	b	.L215
.L216:
	add	r0, r0, r0, lsl #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r2, r2, #48
	rsb	r0, r2, r0, lsl #1
.L215:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L216
	cmp	r1, #0
	rsbeq	r0, r0, #0
	pop	{r4, r5, fp, pc}
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #12
	mov	r10, r0
.L223:
	str	r10, [fp, #-40]
	ldrb	r0, [r10], #1	@ zero_extendqisi2
	bl	isspace
	cmp	r0, #0
	bne	.L223
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L229
	cmp	r3, #45
	moveq	ip, #1
	beq	.L224
	b	.L230
.L229:
	mov	ip, #0
.L224:
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	b	.L225
.L230:
	mov	ip, #0
.L225:
	ldr	r3, [fp, #-40]
	sub	lr, r3, #1
	mov	r0, #0
	mov	r1, #0
	b	.L226
.L227:
	lsl	r3, r1, #2
	orr	r3, r3, r0, lsr #30
	lsl	r2, r0, #2
	adds	r4, r2, r0
	adc	r5, r3, r1
	adds	r6, r4, r4
	adc	r7, r5, r5
	ldrb	r3, [lr]	@ zero_extendqisi2
	sub	r3, r3, #48
	asr	r9, r3, #31
	subs	r0, r6, r3
	sbc	r1, r7, r9
.L226:
	ldrb	r3, [lr, #1]!	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L227
	cmp	ip, #0
	movne	r2, r0
	movne	r3, r1
	bne	.L228
	rsbs	r2, r0, #0
	rsc	r3, r1, #0
	b	.L228
.L228:
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.syntax unified
	.arm
	.type	bsearch, %function
bsearch:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	mov	r8, r0
	mov	r7, r1
	mov	r4, r2
	mov	r6, r3
	ldr	r9, [fp, #4]
	b	.L234
.L238:
	lsr	r5, r4, #1
	mla	r5, r6, r5, r7
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	lsrlt	r4, r4, #1
	blt	.L234
.L235:
	cmp	r0, #0
	ble	.L239
	add	r7, r5, r6
	sub	r3, r4, #1
	sub	r4, r3, r4, lsr #1
.L234:
	cmp	r4, #0
	bne	.L238
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L239:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.syntax unified
	.arm
	.type	bsearch_r, %function
bsearch_r:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #36
	mov	r8, r0
	mov	r7, r3
	ldr	r10, [fp, #4]
	ldr	r9, [fp, #8]
	mov	r4, r2
	mov	r6, r1
	b	.L241
.L244:
	asr	r5, r4, #1
	mla	r5, r7, r5, r6
	mov	r2, r9
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	mov	pc, r10
	cmp	r0, #0
	beq	.L245
	addgt	r6, r5, r7
	subgt	r4, r4, #1
	asr	r4, r4, #1
.L241:
	cmp	r4, #0
	bne	.L244
	mov	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L245:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
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
	pop	{r4, r5, r6, r7, fp, pc}
	.size	div, .-div
	.align	2
	.global	imaxabs
	.syntax unified
	.arm
	.type	imaxabs, %function
imaxabs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	asr	r2, r1, #31
	eor	r4, r2, r0
	eor	r5, r2, r1
	subs	r0, r4, r2
	sbc	r1, r5, r2
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	mov	pc, lr
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.syntax unified
	.arm
	.type	imaxdiv, %function
imaxdiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #36
	mov	r4, r0
	mov	r6, r2
	mov	r7, r3
	ldmib	fp, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	vmov	d8, r0, r1	@ int
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	vstr.64	d8, [r4]	@ int
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	sub	sp, fp, #36
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.syntax unified
	.arm
	.type	labs, %function
labs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, #0
	rsblt	r0, r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.syntax unified
	.arm
	.type	ldiv, %function
ldiv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
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
	pop	{r4, r5, r6, r7, fp, pc}
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.syntax unified
	.arm
	.type	llabs, %function
llabs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	asr	r2, r1, #31
	eor	r4, r2, r0
	eor	r5, r2, r1
	subs	r0, r4, r2
	sbc	r1, r5, r2
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	mov	pc, lr
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.syntax unified
	.arm
	.type	lldiv, %function
lldiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #36
	mov	r4, r0
	mov	r6, r2
	mov	r7, r3
	ldmib	fp, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	vmov	d8, r0, r1	@ int
	mov	r2, r8
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ldivmod
	vstr.64	d8, [r4]	@ int
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	sub	sp, fp, #36
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.syntax unified
	.arm
	.type	wcschr, %function
wcschr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
.L255:
	mov	r2, r0
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L254
	ldr	r3, [r0, #-4]
	cmp	r1, r3
	bne	.L255
.L254:
	ldr	r3, [r2]
	cmp	r3, #0
	movne	r0, r2
	moveq	r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.syntax unified
	.arm
	.type	wcscmp, %function
wcscmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
.L261:
	mov	ip, r1
	mov	lr, r0
	ldr	r2, [r0], #4
	ldr	r3, [r1], #4
	cmp	r2, r3
	bne	.L260
	ldr	r3, [r0, #-4]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r1, #-4]
	cmp	r3, #0
	bne	.L261
.L260:
	ldr	r2, [lr]
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L263
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{fp, pc}
.L263:
	mvn	r0, #0
	pop	{fp, pc}
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.syntax unified
	.arm
	.type	wcscpy, %function
wcscpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r2, r0, #4
.L266:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	bne	.L266
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.syntax unified
	.arm
	.type	wcslen, %function
wcslen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
.L269:
	mov	r1, r3
	ldr	r2, [r3], #4
	cmp	r2, #0
	bne	.L269
	sub	r0, r1, r0
	asr	r0, r0, #2
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.syntax unified
	.arm
	.type	wcsncmp, %function
wcsncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	b	.L272
.L274:
	sub	r2, r2, #1
.L272:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L273
	ldr	ip, [r0]
	ldr	r3, [r1]
	cmp	ip, r3
	bne	.L273
	ldr	r3, [r0], #4
	cmp	r3, #0
	beq	.L273
	ldr	r3, [r1], #4
	cmp	r3, #0
	bne	.L274
.L273:
	cmp	r2, #0
	beq	.L276
	ldr	r2, [r4]
	ldr	r3, [lr]
	cmp	r2, r3
	bcc	.L277
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, fp, pc}
.L276:
	mov	r0, #0
	pop	{r4, fp, pc}
.L277:
	mvn	r0, #0
	pop	{r4, fp, pc}
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.syntax unified
	.arm
	.type	wmemchr, %function
wmemchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	b	.L280
.L282:
	sub	r2, r2, #1
.L280:
	mov	ip, r0
	cmp	r2, #0
	beq	.L281
	ldr	r3, [r0], #4
	cmp	r1, r3
	bne	.L282
.L281:
	cmp	r2, #0
	movne	r0, ip
	moveq	r0, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	b	.L287
.L289:
	sub	r2, r2, #1
.L287:
	mov	lr, r1
	mov	r4, r0
	cmp	r2, #0
	beq	.L288
	ldr	ip, [r0], #4
	ldr	r3, [r1], #4
	cmp	ip, r3
	beq	.L289
.L288:
	cmp	r2, #0
	beq	.L291
	ldr	r2, [r4]
	ldr	r3, [lr]
	cmp	r2, r3
	bcc	.L292
	mov	r0, r2
	cmp	r2, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, fp, pc}
.L291:
	mov	r0, #0
	pop	{r4, fp, pc}
.L292:
	mvn	r0, #0
	pop	{r4, fp, pc}
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	r3, r0, #4
	b	.L295
.L296:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L295:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L296
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, r1
	beq	.L298
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	subcs	r3, r0, #4
	bcs	.L300
.L299:
	add	r1, r1, r2, lsl #2
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #2
	sub	ip, r0, #4
	b	.L301
.L302:
	ldr	r3, [r1, #-4]!
	str	r3, [r2], #-4
.L301:
	cmp	r2, ip
	bne	.L302
	b	.L298
.L303:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
.L300:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L303
.L298:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.syntax unified
	.arm
	.type	wmemset, %function
wmemset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
	b	.L305
.L306:
	str	r1, [r3], #4
.L305:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L306
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r0, r1
	addcc	r3, r0, r2
	addcc	r1, r1, r2
	bcc	.L309
	b	.L308
.L310:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r1, #-1]!
.L309:
	cmp	r3, r0
	bne	.L310
	b	.L307
.L308:
	cmp	r0, r1
	beq	.L307
	sub	r1, r1, #1
	add	r2, r0, r2
	mov	r3, r0
	b	.L312
.L313:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	strb	r0, [r1, #1]!
.L312:
	cmp	r3, r2
	bne	.L313
.L307:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
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
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	mov	pc, lr
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
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
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	mov	pc, lr
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.syntax unified
	.arm
	.type	rotl32, %function
rotl32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsb	r1, r1, #32
	ror	r0, r0, r1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.syntax unified
	.arm
	.type	rotr32, %function
rotr32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ror	r0, r0, r1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.syntax unified
	.arm
	.type	rotl_sz, %function
rotl_sz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsb	r1, r1, #32
	ror	r0, r0, r1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.syntax unified
	.arm
	.type	rotr_sz, %function
rotr_sz:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ror	r0, r0, r1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.syntax unified
	.arm
	.type	rotl16, %function
rotl16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsb	r3, r1, #16
	lsr	r3, r0, r3
	orr	r0, r3, r0, lsl r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.syntax unified
	.arm
	.type	rotr16, %function
rotr16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsb	r3, r1, #16
	lsl	r3, r0, r3
	orr	r0, r3, r0, lsr r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.syntax unified
	.arm
	.type	rotl8, %function
rotl8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsb	r3, r1, #8
	lsr	r3, r0, r3
	orr	r0, r3, r0, lsl r1
	and	r0, r0, #255
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.syntax unified
	.arm
	.type	rotr8, %function
rotr8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsb	r3, r1, #8
	lsl	r3, r0, r3
	orr	r0, r3, r0, lsr r1
	and	r0, r0, #255
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.syntax unified
	.arm
	.type	bswap_16, %function
bswap_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	lsl	r3, r0, #24
	lsr	r3, r3, #16
	orr	r0, r3, r0, lsr #8
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.syntax unified
	.arm
	.type	bswap_32, %function
bswap_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	and	r3, r0, #16711680
	lsr	r3, r3, #8
	orr	r3, r3, r0, lsr #24
	and	r2, r0, #65280
	orr	r3, r3, r2, lsl #8
	orr	r0, r3, r0, lsl #24
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.syntax unified
	.arm
	.type	bswap_64, %function
bswap_64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
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
	and	r5, r1, #255
	lsr	r8, r3, #8
	orr	r8, r8, r5, lsl #24
	lsr	r9, r5, #8
	orr	r4, r6, r8
	orr	r5, r7, r9
	and	r6, r0, #-16777216
	lsr	r9, r6, #24
	lsl	r8, r6, #8
	orr	r6, r4, r8
	orr	r7, r5, r9
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
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	mov	pc, lr
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.syntax unified
	.arm
	.type	ffs, %function
ffs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, #0
	b	.L328
.L331:
	lsr	r2, r0, r3
	tst	r2, #1
	addne	r0, r3, #1
	bne	.L330
.L329:
	add	r3, r3, #1
.L328:
	cmp	r3, #32
	bne	.L331
	mov	r0, #0
.L330:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.syntax unified
	.arm
	.type	libiberty_ffs, %function
libiberty_ffs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	subs	r3, r0, #0
	movne	r0, #1
	bne	.L334
	b	.L336
.L335:
	asr	r3, r3, #1
	add	r0, r0, #1
.L334:
	tst	r3, #1
	beq	.L335
	b	.L333
.L336:
	mov	r0, #0
.L333:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.syntax unified
	.arm
	.type	gl_isinff, %function
gl_isinff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vldr.32	s15, .L343
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movmi	r0, #1
	bmi	.L338
	vldr.32	s15, .L343+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	b	.L338
.L338:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L344:
	.align	2
.L343:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vldr.64	d7, .L351
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movmi	r0, #1
	bmi	.L346
	vldr.64	d7, .L351+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	b	.L346
.L346:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L352:
	.align	3
.L351:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vldr.64	d7, .L359
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movmi	r0, #1
	bmi	.L354
	vldr.64	d7, .L359+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	b	.L354
.L354:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L360:
	.align	3
.L359:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vmov	s14, r1	@ int
	vcvt.f64.s32	d7, s14
	vstr.64	d7, [r0]
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.syntax unified
	.arm
	.type	ldexpf, %function
ldexpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f32	s0, s0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L363
	vadd.f32	s15, s0, s0
	vcmp.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	beq	.L363
	cmp	r0, #0
	vmov.f32	s15, #2.0e+0
	vmov.f32	s14, #5.0e-1
	vmovlt.f32	s15, s14
.L366:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f32	s15, s15, s15
	bne	.L366
.L363:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.syntax unified
	.arm
	.type	ldexp, %function
ldexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L369
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L369
	cmp	r0, #0
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	vmovlt.f64	d7, d6
.L372:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d7, d7, d7
	bne	.L372
.L369:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.syntax unified
	.arm
	.type	ldexpl, %function
ldexpl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmp.f64	d0, d0
	vmrs	APSR_nzcv, FPSCR
	bvs	.L375
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L375
	cmp	r0, #0
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	vmovlt.f64	d7, d6
.L378:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d7, d7, d7
	bne	.L378
.L375:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	add	r2, r1, r2
	mov	ip, r0
	b	.L381
.L382:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
.L381:
	cmp	r1, r2
	popeq	{fp, pc}
	b	.L382
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	bl	strlen
	sub	r1, r5, #1
	add	r3, r6, r0
	b	.L385
.L387:
	sub	r4, r4, #1
.L385:
	mov	r0, r3
	cmp	r4, #0
	beq	.L386
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L387
.L386:
	cmp	r4, #0
	moveq	r3, #0
	strbeq	r3, [r0]
	mov	r0, r6
	pop	{r4, r5, r6, r7, fp, pc}
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.type	strnlen, %function
strnlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r2, r0
	sub	r3, r0, #1
	add	r1, r0, r1
	sub	r1, r1, #1
.L392:
	rsb	r0, r2, #1
	add	r0, r0, r3
	cmp	r3, r1
	beq	.L391
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L392
.L391:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.syntax unified
	.arm
	.type	strpbrk, %function
strpbrk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	b	.L396
.L398:
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	cmp	ip, r2
	beq	.L400
.L399:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L398
.L396:
	mov	lr, r0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L401
	sub	r3, r1, #1
	b	.L399
.L400:
	mov	r0, lr
	pop	{fp, pc}
.L401:
	mov	r0, #0
	pop	{fp, pc}
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.syntax unified
	.arm
	.type	strrchr, %function
strrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
	mov	r0, #0
.L404:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L404
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
	mov	r4, r0
	mov	r5, r1
	mov	r0, r1
	bl	strlen
	subs	r6, r0, #0
	beq	.L411
	ldrb	r7, [r5]	@ zero_extendqisi2
	b	.L409
.L410:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	strncmp
	cmp	r0, #0
	beq	.L412
	add	r4, r4, #1
.L409:
	mov	r1, r7
	mov	r0, r4
	bl	strchr
	subs	r4, r0, #0
	popeq	{r4, r5, r6, r7, fp, pc}
	b	.L410
.L411:
	mov	r0, r4
	pop	{r4, r5, r6, r7, fp, pc}
.L412:
	mov	r0, r4
	pop	{r4, r5, r6, r7, fp, pc}
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.syntax unified
	.arm
	.type	copysign, %function
copysign:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L415
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L417
.L415:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L418
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L418
.L417:
	vneg.f64	d0, d0
.L418:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.syntax unified
	.arm
	.type	memmem, %function
memmem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	mov	r5, r2
	mov	r7, r3
	sub	r6, r1, r3
	add	r6, r0, r6
	cmp	r3, #0
	popeq	{r4, r5, r6, r7, r8, r9, fp, pc}
	cmp	r1, r3
	bcc	.L433
	mov	r4, r0
	b	.L429
.L431:
	ldrb	r0, [r4], #1	@ zero_extendqisi2
	ldrb	r1, [r5]	@ zero_extendqisi2
	cmp	r0, r1
	bne	.L429
	sub	r2, r7, #1
	add	r1, r5, #1
	mov	r0, r4
	bl	memcmp
	cmp	r0, #0
	beq	.L434
.L429:
	mov	r8, r4
	cmp	r4, r6
	bls	.L431
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L433:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L434:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	mov	r4, r2
	bl	memcpy
	add	r0, r0, r4
	pop	{r4, r5, fp, pc}
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.syntax unified
	.arm
	.type	frexp, %function
frexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	vnegmi.f64	d0, d0
	movmi	r2, #1
	movpl	r2, #0
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movge	r3, #0
	bge	.L439
	b	.L451
.L441:
	add	r3, r3, #1
	vmov.f64	d7, #5.0e-1
	vmul.f64	d0, d0, d7
	b	.L439
.L439:
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L441
	b	.L442
.L451:
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
	bne	.L448
	b	.L442
.L444:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
	b	.L443
.L448:
	mov	r3, #0
.L443:
	vmov.f64	d7, #5.0e-1
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L444
.L442:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	sub	sp, sp, #20
	mov	r6, #0
	mov	r7, #0
	str	r6, [fp, #-44]
	str	r7, [fp, #-40]
	b	.L453
.L455:
	and	r4, r0, #1
	mov	r5, #0
	orrs	ip, r4, r5
	beq	.L454
	sub	r7, fp, #44
	ldmia	r7, {r6-r7}
	adds	ip, r6, r2
	str	ip, [fp, #-36]
	adc	ip, r7, r3
	str	ip, [fp, #-32]
	sub	r7, fp, #36
	ldmia	r7, {r6-r7}
	str	r6, [fp, #-44]
	str	r7, [fp, #-40]
.L454:
	adds	r8, r2, r2
	adc	r9, r3, r3
	mov	r2, r8
	mov	r3, r9
	lsr	r6, r0, #1
	orr	r6, r6, r1, lsl #31
	lsr	r7, r1, #1
	mov	r0, r6
	mov	r1, r7
.L453:
	orrs	ip, r0, r1
	bne	.L455
	sub	r1, fp, #44
	ldmia	r1, {r0-r1}
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	mov	pc, lr
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.syntax unified
	.arm
	.type	udivmodsi4, %function
udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, #1
	b	.L457
.L460:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L457:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L459
.L458:
	cmp	r1, #0
	bge	.L460
	mov	ip, #0
	b	.L459
.L463:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L459:
	cmp	r3, #0
	bne	.L463
	cmp	r2, #0
	moveq	r0, ip
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	cmp	r0, #0
	beq	.L468
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{fp, pc}
.L468:
	mov	r0, #7
	pop	{fp, pc}
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	cmp	r1, #0
	mvnlt	r2, r0
	mvnlt	r3, r1
	movlt	r0, r2
	movlt	r1, r3
.L470:
	orrs	r3, r0, r1
	beq	.L472
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{fp, pc}
.L472:
	mov	r0, #63
	pop	{fp, pc}
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.syntax unified
	.arm
	.type	__mulsi3, %function
__mulsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
	mov	r0, #0
	b	.L474
.L476:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L474:
	cmp	r3, #0
	bne	.L476
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	lsr	r4, r2, #3
	bic	r3, r2, #7
	cmp	r0, r1
	bcc	.L478
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L479
.L478:
	mov	ip, r1
	mov	lr, r0
	add	r4, r1, r4, lsl #3
	b	.L480
.L479:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L481
.L482:
	vldmia.64	ip!, {d7}	@ int
	vstmia.64	lr!, {d7}	@ int
.L480:
	cmp	ip, r4
	bne	.L482
	sub	r3, r3, #1
	add	ip, r1, r3
	add	r0, r0, r3
	b	.L483
.L484:
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	strb	r3, [r0, #1]!
.L483:
	rsb	r3, r1, #1
	add	r3, r3, ip
	cmp	r2, r3
	popls	{r4, fp, pc}
	b	.L484
.L486:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L481:
	cmp	r3, r1
	popeq	{r4, fp, pc}
	b	.L486
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	lsr	r4, r2, #1
	cmp	r0, r1
	bcc	.L489
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L490
.L489:
	sub	r3, r1, #2
	sub	ip, r0, #2
	add	r4, r3, r4, lsl #1
	b	.L491
.L490:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L492
.L493:
	ldrsh	lr, [r3, #2]!
	strh	lr, [ip, #2]!	@ movhi
.L491:
	cmp	r3, r4
	bne	.L493
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, fp, pc}
.L495:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L492:
	cmp	r3, r1
	popeq	{r4, fp, pc}
	b	.L495
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	lsr	r5, r2, #2
	bic	r3, r2, #3
	cmp	r0, r1
	bcc	.L497
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L498
.L497:
	sub	ip, r1, #4
	sub	lr, r0, #4
	add	r5, ip, r5, lsl #2
	b	.L499
.L498:
	add	r3, r1, r2
	add	r0, r0, r2
	b	.L500
.L501:
	ldr	r4, [ip, #4]!
	str	r4, [lr, #4]!
.L499:
	cmp	ip, r5
	bne	.L501
	sub	r3, r3, #1
	add	ip, r1, r3
	add	r0, r0, r3
	b	.L502
.L503:
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	strb	r3, [r0, #1]!
.L502:
	rsb	r3, r1, #1
	add	r3, r3, ip
	cmp	r2, r3
	popls	{r4, r5, fp, pc}
	b	.L503
.L505:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
.L500:
	cmp	r3, r1
	popeq	{r4, r5, fp, pc}
	b	.L505
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.syntax unified
	.arm
	.type	__modi, %function
__modi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__aeabi_idivmod
	mov	r0, r1
	pop	{fp, pc}
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.syntax unified
	.arm
	.type	__uitod, %function
__uitod:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vmov	s0, r0	@ int
	vcvt.f64.u32	d0, s0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.syntax unified
	.arm
	.type	__uitof, %function
__uitof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vmov	s0, r0	@ int
	vcvt.f32.u32	s0, s0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.syntax unified
	.arm
	.type	__ulltod, %function
__ulltod:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__aeabi_ul2d
	vmov	d0, r0, r1
	pop	{fp, pc}
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.syntax unified
	.arm
	.type	__ulltof, %function
__ulltof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__aeabi_ul2f
	vmov	s0, r0
	pop	{fp, pc}
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.syntax unified
	.arm
	.type	__umodi, %function
__umodi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__aeabi_uidivmod
	mov	r0, r1
	pop	{fp, pc}
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.syntax unified
	.arm
	.type	__clzhi2, %function
__clzhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r2, r0
	mov	r0, #0
	b	.L514
.L516:
	rsb	r3, r0, #15
	asr	r3, r2, r3
	tst	r3, #1
	bne	.L515
	add	r0, r0, #1
.L514:
	cmp	r0, #16
	bne	.L516
.L515:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.syntax unified
	.arm
	.type	__ctzhi2, %function
__ctzhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r2, r0
	mov	r0, #0
	b	.L518
.L520:
	asr	r3, r2, r0
	tst	r3, #1
	bne	.L519
	add	r0, r0, #1
.L518:
	cmp	r0, #16
	bne	.L520
.L519:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.syntax unified
	.arm
	.type	__fixunssfsi, %function
__fixunssfsi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vldr.32	s15, .L527
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vcvtlt.s32.f32	s15, s0
	vmovlt	r0, s15	@ int
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L528:
	.align	2
.L527:
	.word	1191182336
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.syntax unified
	.arm
	.type	__parityhi2, %function
__parityhi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r1, #0
	mov	r3, r1
	b	.L530
.L532:
	asr	r2, r0, r3
	tst	r2, #1
	addne	r1, r1, #1
	add	r3, r3, #1
.L530:
	cmp	r3, #16
	bne	.L532
	and	r0, r1, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.syntax unified
	.arm
	.type	__popcounthi2, %function
__popcounthi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r1, r0
	mov	r0, #0
	mov	r3, r0
	b	.L534
.L536:
	asr	r2, r1, r3
	tst	r2, #1
	addne	r0, r0, #1
	add	r3, r3, #1
.L534:
	cmp	r3, #16
	bne	.L536
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.syntax unified
	.arm
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
	mov	r0, #0
	b	.L538
.L540:
	tst	r3, #1
	addne	r0, r0, r1
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L538:
	cmp	r3, #0
	bne	.L540
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.syntax unified
	.arm
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	subs	r3, r0, #0
	movne	r0, #0
	bne	.L543
	b	.L546
.L545:
	tst	r1, #1
	addne	r0, r0, r3
	lsl	r3, r3, #1
	lsr	r1, r1, #1
.L543:
	cmp	r1, #0
	bne	.L545
	b	.L542
.L546:
	mov	r0, #0
.L542:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.syntax unified
	.arm
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, #1
	b	.L548
.L551:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L548:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L550
.L549:
	cmp	r1, #0
	bge	.L551
	mov	ip, #0
	b	.L550
.L554:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L550:
	cmp	r3, #0
	bne	.L554
	cmp	r2, #0
	moveq	r0, ip
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.syntax unified
	.arm
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	mvnmi	r0, #0
	bmi	.L558
	movgt	r0, #1
	movle	r0, #0
	b	.L558
.L558:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.syntax unified
	.arm
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	mvnmi	r0, #0
	bmi	.L562
	movgt	r0, #1
	movle	r0, #0
	b	.L562
.L562:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.syntax unified
	.arm
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	mov	r4, r0
	asr	r5, r0, #31
	asr	r7, r1, #31
	mul	r3, r0, r7
	mla	r3, r1, r5, r3
	umull	r0, r2, r4, r1
	add	r1, r3, r2
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	mov	pc, lr
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.syntax unified
	.arm
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	mov	r4, r0
	umull	r0, ip, r4, r1
	mov	r1, ip
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	mov	pc, lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.syntax unified
	.arm
	.type	__mulhi3, %function
__mulhi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	r4, #1
	movge	r4, #0
	mov	r3, #0
	mov	lr, r3
	b	.L569
.L571:
	tst	r1, #1
	addne	lr, lr, r0
	lsl	r0, r0, #1
	asr	r1, r1, #1
	add	r3, r3, #1
.L569:
	and	ip, r3, #255
	subs	r2, r1, #0
	movne	r2, #1
	cmp	ip, #31
	movhi	r2, #0
	cmp	r2, #0
	bne	.L571
	cmp	r4, #0
	rsbne	r0, lr, #0
	moveq	r0, lr
	pop	{r4, fp, pc}
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.syntax unified
	.arm
	.type	__divsi3, %function
__divsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
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
	pop	{r4, r5, fp, pc}
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
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
	pop	{r4, r5, fp, pc}
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, #1
	b	.L586
.L589:
	lsl	r1, r1, #17
	lsr	r1, r1, #16
	lsl	r3, r3, #17
	lsr	r3, r3, #16
.L586:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L588
.L587:
	tst	r1, #32768
	beq	.L589
	mov	ip, #0
	b	.L588
.L592:
	cmp	r0, r1
	subcs	r0, r0, r1
	lslcs	r0, r0, #16
	lsrcs	r0, r0, #16
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L588:
	cmp	r3, #0
	bne	.L592
	cmp	r2, #0
	moveq	r0, ip
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.syntax unified
	.arm
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, #1
	b	.L596
.L599:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L596:
	cmp	r3, #0
	cmpne	r1, r0
	movcs	ip, #0
	bcs	.L598
.L597:
	cmp	r1, #0
	bge	.L599
	mov	ip, #0
	b	.L598
.L602:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r3, r3, #1
	lsr	r1, r1, #1
.L598:
	cmp	r3, #0
	bne	.L602
	cmp	r2, #0
	moveq	r0, ip
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.syntax unified
	.arm
	.type	__ashldi3, %function
__ashldi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	mov	r4, r0
	mov	r5, r1
	tst	r2, #32
	movne	r0, #0
	subne	r2, r2, #32
	lslne	r1, r4, r2
	bne	.L608
.L606:
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	lslne	r0, r4, r2
	rsbne	r3, r2, #32
	lsrne	r3, r4, r3
	orrne	r1, r3, r5, lsl r2
	moveq	r0, r4
	moveq	r1, r5
.L608:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	mov	pc, lr
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.syntax unified
	.arm
	.type	__ashrdi3, %function
__ashrdi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	mov	r4, r0
	mov	r5, r1
	tst	r2, #32
	asrne	r1, r1, #31
	subne	r2, r2, #32
	asrne	r0, r5, r2
	bne	.L613
.L611:
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	asrne	r1, r5, r2
	rsbne	r3, r2, #32
	lsrne	r2, r4, r2
	orrne	r0, r2, r5, lsl r3
	moveq	r0, r4
	moveq	r1, r5
.L613:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	mov	pc, lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	add	fp, sp, #28
	sub	sp, sp, #32
	lsr	r3, r1, #24
	vmov	s14, r3	@ int
	vldr.32	s15, .L616	@ int
	lsr	r2, r1, #8
	and	r3, r2, #65280
	str	r3, [fp, #-36]
	vstr.32	s15, [fp, #-32]	@ int
	lsr	r2, r0, #24
	orr	r2, r2, r1, lsl #8
	and	r3, r2, #16711680
	str	r3, [fp, #-44]
	vstr.32	s15, [fp, #-40]	@ int
	lsr	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	and	r9, r2, #-16777216
	lsl	r5, r1, #8
	orr	r5, r5, r0, lsr #24
	lsl	r4, r0, #8
	vstr.32	s15, [fp, #-52]	@ int
	and	r3, r5, #255
	str	r3, [fp, #-48]
	lsl	r3, r1, #24
	orr	r3, r3, r0, lsr #8
	lsl	r2, r0, #24
	vmov	r6, s15	@ int
	and	r7, r3, #65280
	and	r5, r4, #16711680
	str	r2, [fp, #-56]
	vstr.32	s15, [fp, #-60]	@ int
	vmov	r0, s14	@ int
	mov	r1, r2
	ldr	ip, [fp, #-36]
	orr	r2, r0, ip
	ldr	ip, [fp, #-44]
	orr	r0, r2, ip
	orr	r2, r0, r9
	sub	r9, fp, #52
	ldmia	r9, {r8-r9}
	orr	r0, r2, r8
	orr	r1, r1, r9
	orr	r2, r0, r6
	orr	r3, r1, r7
	orr	r0, r2, r6
	orr	r1, r3, r5
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	mov	pc, lr
.L617:
	.align	2
.L616:
	.word	0
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.syntax unified
	.arm
	.type	__bswapsi2, %function
__bswapsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	lsr	r1, r0, #8
	and	r1, r1, #65280
	lsl	r2, r0, #8
	and	r2, r2, #16711680
	lsl	r3, r0, #24
	orr	r3, r3, r0, lsr #24
	orr	r3, r3, r1
	orr	r0, r3, r2
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.syntax unified
	.arm
	.type	__clzsi2, %function
__clzsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.syntax unified
	.arm
	.type	__cmpdi2, %function
__cmpdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r1, r3
	movlt	r0, #0
	blt	.L629
	movgt	r0, #2
	bgt	.L629
	cmp	r0, r2
	movcc	r0, #0
	bcc	.L629
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	b	.L629
.L629:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.syntax unified
	.arm
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__cmpdi2
	sub	r0, r0, #1
	pop	{fp, pc}
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.syntax unified
	.arm
	.type	__ctzsi2, %function
__ctzsi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.syntax unified
	.arm
	.type	__lshrdi3, %function
__lshrdi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	mov	r4, r0
	mov	r5, r1
	tst	r2, #32
	movne	r1, #0
	subne	r2, r2, #32
	lsrne	r0, r5, r2
	bne	.L647
.L645:
	cmp	r2, #0
	movne	r0, #0
	movne	r1, #0
	lsrne	r1, r5, r2
	rsbne	r3, r2, #32
	lsrne	r2, r4, r2
	orrne	r0, r2, r5, lsl r3
	moveq	r0, r4
	moveq	r1, r5
.L647:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	mov	pc, lr
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.syntax unified
	.arm
	.type	__muldsi3, %function
__muldsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
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
	pop	{r4, r5, fp, pc}
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	mov	r6, r0
	mov	r7, r1
	mov	r4, r2
	mov	r5, r3
	mov	r1, r2
	bl	__muldsi3
	mov	r8, r0
	mov	r9, r1
	mul	r2, r5, r6
	mla	r2, r7, r4, r2
	add	r1, r2, r1
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.syntax unified
	.arm
	.type	__negdi2, %function
__negdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.syntax unified
	.arm
	.type	__paritydi2, %function
__paritydi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	eor	r0, r0, r1
	eor	r0, r0, r0, lsr #16
	eor	r0, r0, r0, lsr #8
	eor	r0, r0, r0, lsr #4
	and	r0, r0, #15
	ldr	r3, .L653
	asr	r0, r3, r0
	and	r0, r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L654:
	.align	2
.L653:
	.word	27030
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.syntax unified
	.arm
	.type	__paritysi2, %function
__paritysi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	eor	r0, r0, r0, lsr #16
	eor	r0, r0, r0, lsr #8
	eor	r0, r0, r0, lsr #4
	and	r0, r0, #15
	ldr	r3, .L656
	asr	r0, r3, r0
	and	r0, r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L657:
	.align	2
.L656:
	.word	27030
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	lsr	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsr	r3, r1, #1
	adr	r5, .L659
	ldmia	r5, {r4-r5}
	and	r6, r2, r4
	and	r7, r3, r5
	subs	r4, r0, r6
	sbc	r5, r1, r7
	lsr	r0, r4, #2
	orr	r0, r0, r5, lsl #30
	lsr	r1, r5, #2
	adr	r7, .L659+8
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
	adr	r1, .L659+16
	ldmia	r1, {r0-r1}
	and	r2, r4, r0
	and	r3, r5, r1
	add	r0, r3, r2
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	mov	pc, lr
.L660:
	.align	3
.L659:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L662
	and	r3, r3, r0, lsr #1
	sub	r0, r0, r3
	ldr	r3, .L662+4
	and	r2, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r2, r0
	add	r3, r0, r0, lsr #4
	ldr	r0, .L662+8
	and	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L663:
	.align	2
.L662:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	lsr	r3, r0, #31
	vmov.f64	d7, #1.0e+0
.L667:
	tst	r0, #1
	vmulne.f64	d7, d7, d0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f64	d0, d0, d0
	bne	.L667
.L666:
	cmp	r3, #0
	vmovne.f64	d6, #1.0e+0
	vdivne.f64	d0, d6, d7
	vmoveq.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.syntax unified
	.arm
	.type	__powisf2, %function
__powisf2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	lsr	r3, r0, #31
	vmov.f32	s15, #1.0e+0
.L673:
	tst	r0, #1
	vmulne.f32	s15, s15, s0
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	vmulne.f32	s0, s0, s0
	bne	.L673
.L672:
	cmp	r3, #0
	vmovne.f32	s14, #1.0e+0
	vdivne.f32	s0, s14, s15
	vmoveq.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.syntax unified
	.arm
	.type	__ucmpdi2, %function
__ucmpdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	cmp	r1, r3
	movcc	r0, #0
	bcc	.L677
	movhi	r0, #2
	bhi	.L677
	cmp	r0, r2
	movcc	r0, #0
	bcc	.L677
	cmp	r0, r2
	movhi	r0, #2
	movls	r0, #1
	b	.L677
.L677:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.syntax unified
	.arm
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__ucmpdi2
	sub	r0, r0, #1
	pop	{fp, pc}
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
