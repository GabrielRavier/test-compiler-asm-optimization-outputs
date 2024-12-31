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
	bls	.L2
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L3
.L4:
	sub	r3, r3, #1
	ldrb	ip, [r3]	@ zero_extendqisi2
	sub	r2, r2, #1
	strb	ip, [r2]
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
	add	r3, r3, #1
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2
	add	ip, ip, #1
	strb	r1, [ip]
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
	mov	ip, r0
	cmp	r3, #0
	beq	.L10
	add	r1, r1, #1
	ldrb	lr, [r1]	@ zero_extendqisi2
	strb	lr, [r0]
	add	r0, r0, #1
	ldrb	lr, [r0, #-1]	@ zero_extendqisi2
	cmp	r2, lr
	bne	.L11
.L10:
	cmp	r3, #0
	beq	.L13
	add	r0, ip, #1
	pop	{fp, pc}
.L13:
	mov	r0, #0
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
	b	.L15
.L17:
	sub	r2, r2, #1
.L15:
	mov	r3, r0
	cmp	r2, #0
	beq	.L16
	ldrb	ip, [r0]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r1, ip
	bne	.L17
.L16:
	cmp	r2, #0
	movne	r0, r3
.L19:
	moveq	r0, #0
.L18:
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
	b	.L21
.L23:
	sub	r2, r2, #1
.L21:
	mov	r3, r1
	mov	ip, r0
	cmp	r2, #0
	beq	.L22
	ldrb	r4, [r0]	@ zero_extendqisi2
	add	r0, r0, #1
	ldrb	lr, [r1]	@ zero_extendqisi2
	add	r1, r1, #1
	cmp	r4, lr
	beq	.L23
.L22:
	cmp	r2, #0
	beq	.L25
	ldrb	r0, [ip]	@ zero_extendqisi2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{r4, fp, pc}
.L25:
	mov	r0, #0
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
	b	.L27
.L28:
	add	r1, r1, #1
	ldrb	ip, [r1, #-1]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	ip, [r3]
.L27:
	cmp	r1, r2
	bne	.L28
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
	push	{fp, lr}
	add	fp, sp, #4
	and	r1, r1, #255
	add	r2, r0, r2
	mov	ip, r0
	b	.L30
.L32:
	sub	r2, r2, #1
	ldrb	lr, [r2]	@ zero_extendqisi2
	cmp	r1, lr
	bne	.L30
	add	r0, r0, r3
	pop	{fp, pc}
.L30:
	mvn	r3, r0
	add	r3, r3, r2
	cmp	r2, ip
	bne	.L32
	mov	r0, #0
	pop	{fp, pc}
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
	b	.L34
.L35:
	and	ip, r1, #255
	strb	ip, [r3]
	add	r3, r3, #1
.L34:
	cmp	r3, r2
	bne	.L35
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
.L37:
	mov	r0, r3
	add	r1, r1, #1
	ldrb	r2, [r1]	@ zero_extendqisi2
	strb	r2, [r3]
	add	r3, r3, #1
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L37
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
.L40:
	mov	r0, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	cmp	r2, #0
	beq	.L39
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r1, r2
	bne	.L40
.L39:
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
.L43:
	mov	r3, r0
	ldrb	r2, [r0]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r1, r2
	beq	.L44
	ldrb	r3, [r0, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L43
	mov	r0, #0
	b	.L42
.L44:
	mov	r0, r3
.L42:
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
.L47:
	mov	r3, r1
	mov	r2, r0
	ldrb	lr, [r0]	@ zero_extendqisi2
	add	r0, r0, #1
	ldrb	ip, [r1]	@ zero_extendqisi2
	add	r1, r1, #1
	cmp	lr, ip
	bne	.L46
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L47
.L46:
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldrb	r3, [r3]	@ zero_extendqisi2
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
.L49:
	mov	r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	cmp	r1, #0
	bne	.L49
	sub	r0, r2, r0
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
	beq	.L54
	mov	r3, r0
.L53:
	mov	ip, r1
	mov	lr, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	cmp	r4, #0
	beq	.L52
	ldrb	r4, [r1]	@ zero_extendqisi2
	add	r5, r0, r2
	cmp	r5, r3
	cmpne	r4, #0
	beq	.L52
	ldrb	r5, [r3, #-1]	@ zero_extendqisi2
	add	r1, r1, #1
	cmp	r5, r4
	beq	.L53
.L52:
	ldrb	r0, [lr]	@ zero_extendqisi2
	ldrb	r3, [ip]	@ zero_extendqisi2
	sub	r0, r0, r3
	pop	{r4, r5, fp, pc}
.L54:
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
	mov	r3, r1
	b	.L56
.L57:
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	strb	ip, [r3, #-2]
	ldrb	ip, [r0, #-2]	@ zero_extendqisi2
	strb	ip, [r3, #-1]
.L56:
	add	r0, r0, #2
	add	r3, r3, #2
	rsb	ip, r3, #2
	add	ip, ip, r2
	add	ip, ip, r1
	cmp	ip, #1
	bgt	.L57
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
	bls	.L70
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L71
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	bhi	.L72
	mov	r0, #1
	b	.L69
.L70:
	mov	r0, #1
	b	.L69
.L71:
	mov	r0, #1
	b	.L69
.L72:
	mov	r0, #0
.L69:
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
	bhi	.L75
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	b	.L76
.L75:
	sub	r3, r0, #8192
	sub	r3, r3, #42
	ldr	r1, .L81
	ldr	r2, .L81+4
	cmp	r3, r2
	cmphi	r0, r1
	bls	.L77
	sub	r3, r0, #57344
	ldr	r2, .L81+8
	cmp	r3, r2
	bls	.L78
	sub	r3, r0, #65280
	sub	r3, r3, #252
	ldr	r2, .L81+12
	cmp	r3, r2
	bhi	.L79
	ldr	r3, .L81+16
	bics	r3, r3, r0
	beq	.L80
	mov	r0, #1
	b	.L76
.L77:
	mov	r0, #1
	b	.L76
.L78:
	mov	r0, #1
	b	.L76
.L79:
	mov	r0, #0
	b	.L76
.L80:
	mov	r0, #0
.L76:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L82:
	.align	2
.L81:
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
	bls	.L85
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	bhi	.L86
	mov	r0, #1
	b	.L84
.L85:
	mov	r0, #1
	b	.L84
.L86:
	mov	r0, #0
.L84:
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
	bvs	.L89
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L92
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L95
	vsub.f64	d0, d0, d1
	b	.L89
.L92:
	vmov.f64	d0, d1
	b	.L89
.L95:
	vldr.64	d0, .L96
.L89:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L97:
	.align	3
.L96:
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
	bvs	.L99
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L102
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L105
	vsub.f32	s0, s0, s1
	b	.L99
.L102:
	vmov.f32	s0, s1
	b	.L99
.L105:
	vldr.32	s0, .L106
.L99:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L107:
	.align	2
.L106:
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
	bvs	.L112
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L109
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L110
	vmov	r3, s1	@ int
	mov	r3, r2
	cmp	r3, #0
	vmovne.f64	d0, d1
	b	.L109
.L110:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	b	.L109
.L112:
	vmov.f64	d0, d1
.L109:
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
	bvs	.L122
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L119
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L120
	vmov	r3, s0	@ int
	mov	r3, r2
	cmp	r3, #0
	vmovne.f32	s0, s1
	b	.L119
.L120:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	b	.L119
.L122:
	vmov.f32	s0, s1
.L119:
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
	bvs	.L132
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L129
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L130
	vmov	r3, s1	@ int
	mov	r3, r2
	cmp	r3, #0
	vmovne.f64	d0, d1
	b	.L129
.L130:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	b	.L129
.L132:
	vmov.f64	d0, d1
.L129:
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
	bvs	.L142
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L139
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L140
	vmov	r3, s1	@ int
	mov	r3, r2
	cmp	r3, #0
	beq	.L144
	b	.L139
.L140:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L147
	b	.L139
.L142:
	vmov.f64	d0, d1
	b	.L139
.L144:
	vmov.f64	d0, d1
	b	.L139
.L147:
	vmov.f64	d0, d1
.L139:
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
	bvs	.L152
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L149
	vmov	r2, s0	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L150
	vmov	r3, s0	@ int
	mov	r3, r2
	cmp	r3, #0
	beq	.L154
	b	.L149
.L150:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L157
	b	.L149
.L152:
	vmov.f32	s0, s1
	b	.L149
.L154:
	vmov.f32	s0, s1
	b	.L149
.L157:
	vmov.f32	s0, s1
.L149:
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
	bvs	.L162
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L159
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	vmov	r3, s3	@ int
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L160
	vmov	r3, s1	@ int
	mov	r3, r2
	cmp	r3, #0
	beq	.L164
	b	.L159
.L160:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L167
	b	.L159
.L162:
	vmov.f64	d0, d1
	b	.L159
.L164:
	vmov.f64	d0, d1
	b	.L159
.L167:
	vmov.f64	d0, d1
.L159:
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
	ldr	r3, .L171
	b	.L169
.L170:
	and	r2, r0, #63
	ldr	r1, .L171+4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	add	r3, r3, #1
	lsr	r0, r0, #6
.L169:
	cmp	r0, #0
	bne	.L170
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, .L171
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L172:
	.align	2
.L171:
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
	mov	r2, #0
	mov	r3, #0
	sub	r2, r0, #1
	mov	r3, #0
	ldr	r1, .L174
	stm	r1, {r2-r3}
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L175:
	.align	2
.L174:
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
	ldr	ip, .L177
	ldmia	ip, {r4-r5}
	ldr	r0, .L177+4
	ldr	r1, .L177+8
	mul	r1, r4, r1
	mla	r1, r0, r5, r1
	mov	r2, #0
	mov	r3, #0
	umull	r2, lr, r4, r0
	mov	r3, lr
	add	r3, r1, r3
	mov	r4, #0
	mov	r5, #0
	adds	r4, r2, #1
	adc	r5, r3, #0
	stm	ip, {r4-r5}
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r5, #1
	mov	r1, #0
	pop	{r4, r5, fp, pc}
.L178:
	.align	2
.L177:
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
	beq	.L179
.L180:
	ldr	r3, [r1]
	str	r3, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
.L179:
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
.L183:
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ldrne	r2, [r0]
	strne	r2, [r3]
.L182:
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
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #36
	mov	r6, r0
	mov	r4, r1
	mov	r7, r2
	mov	r5, r3
	ldr	r9, [r7]
	mov	r10, r4
	mov	r8, #0
	b	.L186
.L189:
	mov	r1, r10
	mov	r0, r6
	ldr	r3, [fp, #4]
	mov	lr, pc
	mov	pc, r3
	add	r10, r10, r5
	cmp	r0, #0
	bne	.L187
	mla	r0, r5, r8, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L187:
	add	r8, r8, #1
.L186:
	cmp	r8, r9
	bne	.L189
	add	r3, r9, #1
	str	r3, [r7]
	mla	r0, r9, r5, r4
	mov	r2, r5
	mov	r1, r6
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
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	mov	r8, r0
	mov	r4, r1
	mov	r6, r3
	ldr	r9, [r2]
	mov	r7, r4
	mov	r5, #0
	b	.L191
.L194:
	mov	r1, r7
	mov	r0, r8
	ldr	r3, [fp, #4]
	mov	lr, pc
	mov	pc, r3
	add	r7, r7, r6
	cmp	r0, #0
	bne	.L192
	mla	r0, r6, r5, r4
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L192:
	add	r5, r5, #1
.L191:
	cmp	r5, r9
	bne	.L194
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
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
.L197:
	mov	r4, r5
	ldrb	r0, [r5]	@ zero_extendqisi2
	add	r5, r5, #1
	bl	isspace
	cmp	r0, #0
	bne	.L197
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L203
	cmp	r3, #45
	bne	.L204
	mov	r3, #1
	b	.L198
.L203:
	mov	r3, #0
.L198:
	add	r4, r4, #1
	b	.L199
.L204:
	mov	r3, #0
.L199:
	sub	r4, r4, #1
	mov	r0, #0
	b	.L200
.L201:
	add	r0, r0, r0, lsl #2
	lsl	r2, r0, #1
	ldrb	r0, [r4]	@ zero_extendqisi2
	sub	r0, r0, #48
	sub	r0, r2, r0
.L200:
	add	r4, r4, #1
	ldrb	r2, [r4]	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L201
	cmp	r3, #0
	popne	{r4, r5, fp, pc}
	rsb	r0, r0, #0
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
.L207:
	mov	r4, r5
	ldrb	r0, [r5]	@ zero_extendqisi2
	add	r5, r5, #1
	bl	isspace
	cmp	r0, #0
	bne	.L207
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L213
	cmp	r3, #45
	bne	.L214
	mov	r3, #1
	b	.L208
.L213:
	mov	r3, #0
.L208:
	add	r4, r4, #1
	b	.L209
.L214:
	mov	r3, #0
.L209:
	sub	r4, r4, #1
	mov	r0, #0
	b	.L210
.L211:
	add	r0, r0, r0, lsl #2
	lsl	r2, r0, #1
	ldrb	r0, [r4]	@ zero_extendqisi2
	sub	r0, r0, #48
	sub	r0, r2, r0
.L210:
	add	r4, r4, #1
	ldrb	r2, [r4]	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L211
	cmp	r3, #0
	popne	{r4, r5, fp, pc}
	rsb	r0, r0, #0
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
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	sub	sp, sp, #8
	mov	r5, r0
.L217:
	mov	r4, r5
	ldrb	r0, [r5]	@ zero_extendqisi2
	add	r5, r5, #1
	bl	isspace
	cmp	r0, #0
	bne	.L217
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L223
	cmp	r3, #45
	bne	.L224
	mov	ip, #1
	b	.L218
.L223:
	mov	ip, #0
.L218:
	add	r4, r4, #1
	b	.L219
.L224:
	mov	ip, #0
.L219:
	sub	r4, r4, #1
	mov	r2, #0
	mov	r3, #0
	b	.L220
.L221:
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #2
	orr	r1, r1, r2, lsr #30
	lsl	r0, r2, #2
	adds	r6, r0, r2
	adc	r7, r1, r3
	adds	r8, r6, r6
	adc	r9, r7, r7
	mov	r6, r8
	mov	r7, r9
	ldrb	r1, [r4]	@ zero_extendqisi2
	sub	r1, r1, #48
	str	r1, [fp, #-36]
	asr	r1, r1, #31
	str	r1, [fp, #-32]
	sub	r1, fp, #36
	ldmia	r1, {r0-r1}
	mov	lr, r0
	subs	r2, r8, lr
	sbc	r3, r9, r1
.L220:
	add	r4, r4, #1
	ldrb	r1, [r4]	@ zero_extendqisi2
	sub	r1, r1, #48
	cmp	r1, #9
	bls	.L221
	cmp	ip, #0
	bne	.L225
	mov	r0, #0
	mov	r1, #0
	rsbs	r0, r2, #0
	rsc	r1, r3, #0
	b	.L222
.L225:
	mov	r0, r2
	mov	r1, r3
.L222:
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
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
	b	.L227
.L231:
	lsr	r5, r4, #1
	mla	r5, r6, r5, r7
	mov	r1, r5
	mov	r0, r8
	ldr	r3, [fp, #4]
	mov	lr, pc
	mov	pc, r3
	cmp	r0, #0
	lsrlt	r4, r4, #1
	blt	.L227
.L228:
	cmp	r0, #0
	ble	.L232
	add	r7, r5, r6
	sub	r3, r4, #1
	sub	r4, r3, r4, lsr #1
.L227:
	cmp	r4, #0
	bne	.L231
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L232:
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
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	mov	r8, r0
	mov	r7, r3
	mov	r5, r2
	mov	r6, r1
	b	.L234
.L237:
	asr	r4, r5, #1
	mla	r4, r7, r4, r6
	ldr	r2, [fp, #8]
	mov	r1, r4
	mov	r0, r8
	ldr	r3, [fp, #4]
	mov	lr, pc
	mov	pc, r3
	cmp	r0, #0
	beq	.L238
	addgt	r6, r4, r7
	subgt	r5, r5, #1
.L236:
	asr	r5, r5, #1
.L234:
	cmp	r5, #0
	bne	.L237
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L238:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
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
	mov	r1, r6
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
	mov	r2, #0
	mov	r3, #0
	asr	r2, r1, #31
	mov	r3, r2
	mov	r4, #0
	mov	r5, #0
	eor	r4, r2, r0
	eor	r5, r3, r1
	mov	r0, #0
	mov	r1, #0
	subs	r0, r4, r2
	sbc	r1, r5, r3
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
	mov	r1, r6
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
	mov	r2, #0
	mov	r3, #0
	asr	r2, r1, #31
	mov	r3, r2
	mov	r4, #0
	mov	r5, #0
	eor	r4, r2, r0
	eor	r5, r3, r1
	mov	r0, #0
	mov	r1, #0
	subs	r0, r4, r2
	sbc	r1, r5, r3
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
.L248:
	mov	r3, r0
	ldr	r2, [r0]
	add	r0, r0, #4
	cmp	r2, #0
	beq	.L247
	ldr	r2, [r0, #-4]
	cmp	r1, r2
	bne	.L248
.L247:
	ldr	r2, [r3]
	cmp	r2, #0
	movne	r0, r3
.L250:
	moveq	r0, #0
.L249:
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
.L253:
	mov	r3, r1
	mov	r2, r0
	ldr	lr, [r0]
	add	r0, r0, #4
	ldr	ip, [r1]
	add	r1, r1, #4
	cmp	lr, ip
	bne	.L252
	ldr	ip, [r0, #-4]
	cmp	ip, #0
	beq	.L252
	ldr	ip, [r1, #-4]
	cmp	ip, #0
	bne	.L253
.L252:
	ldr	r0, [r2]
	ldr	r1, [r3]
	cmp	r0, r1
	bcc	.L255
	mov	r3, r1
	cmp	r0, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{fp, pc}
.L255:
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
	sub	r3, r0, #4
.L257:
	add	r1, r1, #4
	ldr	r2, [r1, #-4]
	add	r3, r3, #4
	str	r2, [r3]
	cmp	r2, #0
	bne	.L257
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
	mov	r2, r0
.L259:
	mov	r3, r2
	ldr	r1, [r2]
	add	r2, r2, #4
	cmp	r1, #0
	bne	.L259
	sub	r0, r3, r0
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
	b	.L261
.L263:
	sub	r2, r2, #1
.L261:
	mov	r3, r1
	mov	ip, r0
	cmp	r2, #0
	beq	.L262
	ldr	lr, [r1]
	ldr	r4, [r0]
	cmp	r4, lr
	bne	.L262
	mov	lr, r4
	add	r0, r0, #4
	cmp	lr, #0
	beq	.L262
	ldr	lr, [r1]
	add	r1, r1, #4
	cmp	lr, #0
	bne	.L263
.L262:
	cmp	r2, #0
	beq	.L265
	ldr	r1, [ip]
	ldr	r2, [r3]
	cmp	r1, r2
	bcc	.L266
	mov	r0, r1
	mov	r3, r2
	cmp	r0, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, fp, pc}
.L265:
	mov	r0, #0
	pop	{r4, fp, pc}
.L266:
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
	b	.L268
.L270:
	sub	r2, r2, #1
.L268:
	mov	r3, r0
	cmp	r2, #0
	beq	.L269
	ldr	ip, [r0]
	add	r0, r0, #4
	cmp	r1, ip
	bne	.L270
.L269:
	cmp	r2, #0
	movne	r0, r3
.L272:
	moveq	r0, #0
.L271:
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
	b	.L274
.L276:
	sub	r2, r2, #1
.L274:
	mov	r3, r1
	mov	ip, r0
	cmp	r2, #0
	beq	.L275
	ldr	r4, [r0]
	add	r0, r0, #4
	ldr	lr, [r1]
	add	r1, r1, #4
	cmp	r4, lr
	beq	.L276
.L275:
	cmp	r2, #0
	beq	.L278
	ldr	r1, [ip]
	ldr	r2, [r3]
	cmp	r1, r2
	bcc	.L279
	mov	r0, r1
	mov	r3, r2
	cmp	r0, r3
	movls	r0, #0
	movhi	r0, #1
	pop	{r4, fp, pc}
.L278:
	mov	r0, #0
	pop	{r4, fp, pc}
.L279:
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
	b	.L281
.L282:
	add	r1, r1, #4
	ldr	ip, [r1, #-4]
	add	r3, r3, #4
	str	ip, [r3]
.L281:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L282
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
	beq	.L284
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	subcs	r3, r0, #4
	bcs	.L286
.L285:
	add	r1, r1, r2, lsl #2
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #2
	sub	r3, r0, #4
	b	.L287
.L288:
	sub	r1, r1, #4
	ldr	ip, [r1]
	str	ip, [r2]
	sub	r2, r2, #4
.L287:
	cmp	r2, r3
	bne	.L288
	b	.L284
.L289:
	add	r1, r1, #4
	ldr	ip, [r1, #-4]
	add	r3, r3, #4
	str	ip, [r3]
.L286:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L289
.L284:
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
	b	.L291
.L292:
	add	r3, r3, #4
	str	r1, [r3, #-4]
.L291:
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L292
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
	bcs	.L294
	add	r3, r0, r2
	add	r1, r1, r2
	b	.L295
.L296:
	sub	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r1, r1, #1
	strb	r2, [r1]
.L295:
	cmp	r3, r0
	bne	.L296
	b	.L293
.L294:
	cmp	r0, r1
	beq	.L293
	sub	r1, r1, #1
	add	r2, r0, r2
	mov	r3, r0
	b	.L298
.L299:
	add	r3, r3, #1
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	add	r1, r1, #1
	strb	r0, [r1]
.L298:
	cmp	r3, r2
	bne	.L299
.L293:
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
	mov	r4, #0
	mov	r5, #0
	lsl	r5, r1, r2
	orr	r5, r5, r0, lsl ip
	orr	r5, r5, r0, lsr r3
	lsl	r4, r0, r2
	rsb	r2, r2, #0
	and	r2, r2, #63
	rsb	ip, r2, #32
	sub	r3, r2, #32
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r0, r2
	orr	r6, r6, r1, lsl ip
	orr	r6, r6, r1, lsr r3
	lsr	r7, r1, r2
	mov	r0, #0
	mov	r1, #0
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
	mov	r4, #0
	mov	r5, #0
	lsr	r4, r0, r2
	orr	r4, r4, r1, lsl ip
	orr	r4, r4, r1, lsr r3
	lsr	r5, r1, r2
	rsb	r2, r2, #0
	and	r2, r2, #63
	sub	ip, r2, #32
	rsb	r3, r2, #32
	mov	r6, #0
	mov	r7, #0
	lsl	r7, r1, r2
	orr	r7, r7, r0, lsl ip
	orr	r7, r7, r0, lsr r3
	lsl	r6, r0, r2
	mov	r0, #0
	mov	r1, #0
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
	and	r3, r0, #255
	lsl	r3, r3, #8
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
	mov	r4, #0
	mov	r5, #0
	and	r5, r1, #-16777216
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r5, #24
	mov	r3, #0
	mov	r4, #0
	mov	r5, #0
	mov	r4, r3
	and	r5, r1, #16711680
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r5, #8
	mov	r7, r3
	mov	r8, #0
	mov	r9, #0
	orr	r8, r6, r2
	mov	r9, r3
	mov	r6, #0
	mov	r7, #0
	mov	r6, r3
	and	r7, r1, #65280
	mov	r4, #0
	mov	r5, #0
	lsr	r4, r6, #24
	orr	r4, r4, r7, lsl #8
	lsr	r5, r7, #24
	mov	r6, #0
	mov	r7, #0
	orr	r6, r8, r4
	mov	r7, r5
	mov	r4, #0
	mov	r5, #0
	mov	r4, r3
	and	r5, r1, #255
	mov	r8, #0
	mov	r9, #0
	lsr	r8, r4, #8
	orr	r8, r8, r5, lsl #24
	lsr	r9, r5, #8
	mov	r4, #0
	mov	r5, #0
	orr	r4, r6, r8
	orr	r5, r7, r9
	mov	r8, #0
	mov	r9, #0
	and	r8, r0, #-16777216
	mov	r9, r3
	mov	r6, #0
	mov	r7, #0
	mov	r7, r3
	lsr	r7, r8, #24
	lsl	r6, r8, #8
	mov	r8, #0
	mov	r9, #0
	orr	r8, r4, r6
	orr	r9, r5, r7
	mov	r6, #0
	mov	r7, #0
	and	r6, r0, #16711680
	mov	r7, r3
	mov	r4, #0
	mov	r5, #0
	mov	r5, r3
	lsr	r5, r6, #8
	lsl	r4, r6, #24
	mov	r6, #0
	mov	r7, #0
	orr	r6, r8, r4
	orr	r7, r9, r5
	mov	r4, #0
	mov	r5, #0
	and	r4, r0, #65280
	mov	r5, r3
	mov	r8, #0
	mov	r9, #0
	lsl	r9, r4, #8
	mov	r8, r3
	mov	r4, #0
	mov	r5, #0
	mov	r4, r6
	orr	r5, r7, r9
	mov	r6, #0
	mov	r7, #0
	and	r6, r0, #255
	mov	r7, r3
	mov	r8, #0
	mov	r9, #0
	lsl	r9, r6, #24
	mov	r8, r3
	mov	r0, #0
	mov	r1, #0
	mov	r0, r4
	orr	r1, r5, r9
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
	b	.L314
.L317:
	lsr	r2, r0, r3
	tst	r2, #1
	addne	r0, r3, #1
	bne	.L316
.L315:
	add	r3, r3, #1
.L314:
	cmp	r3, #32
	bne	.L317
	mov	r0, #0
.L316:
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
	beq	.L322
	mov	r0, #1
	b	.L320
.L321:
	asr	r3, r3, #1
	add	r0, r0, #1
.L320:
	tst	r3, #1
	beq	.L321
	b	.L319
.L322:
	mov	r0, #0
.L319:
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
	vldr.32	s15, .L330
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L326
	vldr.32	s15, .L330+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L329
	mov	r0, #1
	b	.L324
.L326:
	mov	r0, #1
	b	.L324
.L329:
	mov	r0, #0
.L324:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L331:
	.align	2
.L330:
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
	vldr.64	d7, .L339
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L335
	vldr.64	d7, .L339+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L338
	mov	r0, #1
	b	.L333
.L335:
	mov	r0, #1
	b	.L333
.L338:
	mov	r0, #0
.L333:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L340:
	.align	3
.L339:
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
	vldr.64	d7, .L348
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L344
	vldr.64	d7, .L348+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L347
	mov	r0, #1
	b	.L342
.L344:
	mov	r0, #1
	b	.L342
.L347:
	mov	r0, #0
.L342:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L349:
	.align	3
.L348:
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
	bvs	.L352
	vadd.f32	s15, s0, s0
	vcmp.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	beq	.L352
	cmp	r0, #0
	vmovlt.f32	s15, #5.0e-1
.L356:
	vmovge.f32	s15, #2.0e+0
.L355:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
.L354:
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	cmp	r0, #0
	vmulne.f32	s15, s15, s15
	bne	.L355
.L352:
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
	bvs	.L358
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L358
	cmp	r0, #0
	vmovlt.f64	d7, #5.0e-1
.L362:
	vmovge.f64	d7, #2.0e+0
.L361:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
.L360:
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	cmp	r0, #0
	vmulne.f64	d7, d7, d7
	bne	.L361
.L358:
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
	bvs	.L364
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L364
	cmp	r0, #0
	vmovlt.f64	d7, #5.0e-1
.L368:
	vmovge.f64	d7, #2.0e+0
.L367:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
.L366:
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	cmp	r0, #0
	vmulne.f64	d7, d7, d7
	bne	.L367
.L364:
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
	mov	r3, r0
	b	.L370
.L371:
	add	r1, r1, #1
	ldrb	ip, [r1, #-1]	@ zero_extendqisi2
	add	r3, r3, #1
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	eor	ip, ip, lr
	strb	ip, [r3, #-1]
.L370:
	cmp	r1, r2
	popeq	{fp, pc}
	b	.L371
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
	mov	r5, r0
	mov	r4, r1
	mov	r6, r2
	bl	strlen
	sub	r1, r4, #1
	add	r3, r5, r0
	b	.L374
.L376:
	sub	r6, r6, #1
.L374:
	mov	r2, r3
	cmp	r6, #0
	beq	.L375
	add	r1, r1, #1
	ldrb	r0, [r1]	@ zero_extendqisi2
	strb	r0, [r3]
	add	r3, r3, #1
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L376
.L375:
	cmp	r6, #0
	moveq	r3, #0
	strbeq	r3, [r2]
.L377:
	mov	r0, r5
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
	mov	r3, r0
	sub	r2, r3, #1
	add	r1, r3, r1
	sub	r1, r1, #1
.L380:
	rsb	r0, r3, #1
	add	r0, r0, r2
	cmp	r2, r1
	beq	.L379
	add	r2, r2, #1
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L380
.L379:
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
	b	.L382
.L384:
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	cmp	lr, ip
	beq	.L386
.L385:
	add	r2, r2, #1
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L384
.L382:
	mov	r3, r0
	ldrb	r2, [r0]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r2, #0
	beq	.L387
	sub	r2, r1, #1
	b	.L385
.L386:
	mov	r0, r3
	pop	{fp, pc}
.L387:
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
.L390:
	mov	r2, r3
	ldrb	ip, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	cmp	r1, ip
	moveq	r0, r2
.L389:
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L390
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
	mov	r0, r5
	bl	strlen
	mov	r6, r0
	cmp	r6, #0
	beq	.L396
	ldrb	r7, [r5]	@ zero_extendqisi2
	b	.L394
.L395:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	strncmp
	cmp	r0, #0
	beq	.L397
	add	r4, r4, #1
.L394:
	mov	r1, r7
	mov	r0, r4
	bl	strchr
	subs	r4, r0, #0
	popeq	{r4, r5, r6, r7, fp, pc}
	b	.L395
.L396:
	mov	r0, r4
	pop	{r4, r5, r6, r7, fp, pc}
.L397:
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
	bpl	.L400
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L402
.L400:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L403
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L403
.L402:
	vneg.f64	d0, d0
.L403:
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
	mov	r7, r2
	mov	r6, r3
	sub	r8, r1, r6
	add	r8, r0, r8
	cmp	r6, #0
	popeq	{r4, r5, r6, r7, r8, r9, fp, pc}
	cmp	r1, r6
	movcs	r1, #0
	movcc	r1, #1
	cmp	r1, #0
	bne	.L417
	mov	r5, r0
	b	.L414
.L415:
	ldrb	r2, [r5]	@ zero_extendqisi2
	add	r5, r5, #1
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L414
	sub	r2, r6, #1
	add	r1, r7, #1
	mov	r0, r5
	bl	memcmp
	cmp	r0, #0
	beq	.L418
.L414:
	mov	r4, r5
	cmp	r5, r8
	bls	.L415
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L417:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L418:
	mov	r0, r4
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
.L434:
	movpl	r2, #0
.L421:
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L431
	b	.L435
.L425:
	add	r3, r3, #1
	vmov.f64	d7, #5.0e-1
	vmul.f64	d0, d0, d7
	b	.L423
.L431:
	mov	r3, #0
.L423:
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L425
	b	.L426
.L435:
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
	bne	.L432
	b	.L426
.L428:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
	b	.L427
.L432:
	mov	r3, #0
.L427:
	vmov.f64	d7, #5.0e-1
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L428
.L426:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
.L429:
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
	mov	r4, r0
	mov	r5, r1
	mov	r0, #0
	mov	r1, #0
	b	.L437
.L439:
	and	r8, r4, #1
	mov	r9, #0
	orrs	ip, r8, r9
	beq	.L438
	adds	ip, r0, r2
	str	ip, [fp, #-36]
	adc	r1, r1, r3
	str	r1, [fp, #-32]
	sub	r1, fp, #36
	ldmia	r1, {r0-r1}
.L438:
	adds	ip, r2, r2
	str	ip, [fp, #-44]
	adc	r3, r3, r3
	str	r3, [fp, #-40]
	sub	r3, fp, #44
	ldmia	r3, {r2-r3}
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r4, #1
	orr	r6, r6, r5, lsl #31
	lsr	r7, r5, #1
	mov	r4, r6
	mov	r5, r7
.L437:
	orrs	ip, r4, r5
	bne	.L439
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
	b	.L441
.L443:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L441:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L448
	cmp	r1, #0
	bge	.L443
	mov	ip, #0
	b	.L445
.L446:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
.L444:
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L445
.L448:
	mov	ip, #0
.L445:
	cmp	r3, #0
	bne	.L446
	cmp	r2, #0
	moveq	r0, ip
.L447:
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
	beq	.L452
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{fp, pc}
.L452:
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
	bge	.L454
	mov	r2, #0
	mov	r3, #0
	mvn	r2, r0
	mvn	r3, r1
	mov	r0, r2
	mov	r1, r3
.L454:
	orrs	r3, r0, r1
	beq	.L456
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{fp, pc}
.L456:
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
	b	.L458
.L460:
	tst	r3, #1
	addne	r0, r0, r1
.L459:
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L458:
	cmp	r3, #0
	bne	.L460
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
	lsr	lr, r2, #3
	bic	r3, r2, #7
	cmp	r0, r1
	bcc	.L462
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L463
.L462:
	mov	ip, r1
	mov	r4, r0
	add	lr, r1, lr, lsl #3
	b	.L464
.L463:
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L465
.L466:
	vldr.64	d7, [ip]	@ int
	add	ip, ip, #8
	vstr.64	d7, [r4]	@ int
	add	r4, r4, #8
.L464:
	cmp	ip, lr
	bne	.L466
	sub	r3, r3, #1
	add	ip, r1, r3
	add	r0, r0, r3
	b	.L467
.L468:
	add	ip, ip, #1
	ldrb	r3, [ip]	@ zero_extendqisi2
	add	r0, r0, #1
	strb	r3, [r0]
.L467:
	rsb	r3, r1, #1
	add	r3, r3, ip
	cmp	r2, r3
	popls	{r4, fp, pc}
	b	.L468
.L470:
	sub	r3, r3, #1
	ldrb	r0, [r3]	@ zero_extendqisi2
	sub	r2, r2, #1
	strb	r0, [r2]
.L465:
	cmp	r3, r1
	popeq	{r4, fp, pc}
	b	.L470
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
	lsr	ip, r2, #1
	cmp	r0, r1
	bcc	.L473
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L474
.L473:
	sub	r3, r1, #2
	sub	lr, r0, #2
	add	ip, r3, ip, lsl #1
	b	.L475
.L474:
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L476
.L477:
	add	r3, r3, #2
	ldrsh	r4, [r3]
	add	lr, lr, #2
	strh	r4, [lr]	@ movhi
.L475:
	cmp	r3, ip
	bne	.L477
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, fp, pc}
.L479:
	sub	r3, r3, #1
	ldrb	r0, [r3]	@ zero_extendqisi2
	sub	r2, r2, #1
	strb	r0, [r2]
.L476:
	cmp	r3, r1
	popeq	{r4, fp, pc}
	b	.L479
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
	lsr	lr, r2, #2
	bic	r3, r2, #3
	cmp	r0, r1
	bcc	.L481
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L482
.L481:
	sub	ip, r1, #4
	sub	r4, r0, #4
	add	lr, ip, lr, lsl #2
	b	.L483
.L482:
	add	r3, r1, r2
	add	r2, r0, r2
	b	.L484
.L485:
	add	ip, ip, #4
	add	r4, r4, #4
	ldr	r5, [ip]
	str	r5, [r4]
.L483:
	cmp	ip, lr
	bne	.L485
	sub	r3, r3, #1
	add	ip, r1, r3
	add	r0, r0, r3
	b	.L486
.L487:
	add	ip, ip, #1
	ldrb	r3, [ip]	@ zero_extendqisi2
	add	r0, r0, #1
	strb	r3, [r0]
.L486:
	rsb	r3, r1, #1
	add	r3, r3, ip
	cmp	r2, r3
	popls	{r4, r5, fp, pc}
	b	.L487
.L489:
	sub	r3, r3, #1
	ldrb	r0, [r3]	@ zero_extendqisi2
	sub	r2, r2, #1
	strb	r0, [r2]
.L484:
	cmp	r3, r1
	popeq	{r4, r5, fp, pc}
	b	.L489
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
	mov	r3, r0
	mov	r0, #0
	b	.L498
.L500:
	rsb	r2, r0, #15
	asr	r2, r3, r2
	tst	r2, #1
	bne	.L499
	add	r0, r0, #1
.L498:
	cmp	r0, #16
	bne	.L500
.L499:
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
	mov	r3, r0
	mov	r0, #0
	b	.L502
.L504:
	asr	r2, r3, r0
	tst	r2, #1
	bne	.L503
	add	r0, r0, #1
.L502:
	cmp	r0, #16
	bne	.L504
.L503:
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
	vldr.32	s15, .L511
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L510
	vsub.f32	s0, s0, s15
	vcvt.s32.f32	s0, s0
	vmov	r3, s0	@ int
	add	r0, r3, #32768
	b	.L508
.L510:
	vcvt.s32.f32	s15, s0
	vmov	r0, s15	@ int
.L508:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L512:
	.align	2
.L511:
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
	mov	r3, #0
	mov	r2, r3
	b	.L514
.L516:
	asr	r1, r0, r2
	tst	r1, #1
	addne	r3, r3, #1
.L515:
	add	r2, r2, #1
.L514:
	cmp	r2, #16
	bne	.L516
	and	r0, r3, #1
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
	mov	r2, r0
	mov	r0, #0
	mov	r3, r0
	b	.L518
.L520:
	asr	r1, r2, r3
	tst	r1, #1
	addne	r0, r0, #1
.L519:
	add	r3, r3, #1
.L518:
	cmp	r3, #16
	bne	.L520
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
	b	.L522
.L524:
	tst	r3, #1
	addne	r0, r0, r1
.L523:
	lsr	r3, r3, #1
	lsl	r1, r1, #1
.L522:
	cmp	r3, #0
	bne	.L524
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
	beq	.L530
	mov	r0, #0
	b	.L527
.L529:
	tst	r1, #1
	addne	r0, r0, r3
.L528:
	lsl	r3, r3, #1
	lsr	r1, r1, #1
.L527:
	cmp	r1, #0
	bne	.L529
	b	.L526
.L530:
	mov	r0, #0
.L526:
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
	b	.L532
.L534:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L532:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L539
	cmp	r1, #0
	bge	.L534
	mov	ip, #0
	b	.L536
.L537:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
.L535:
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L536
.L539:
	mov	ip, #0
.L536:
	cmp	r3, #0
	bne	.L537
	cmp	r2, #0
	moveq	r0, ip
.L538:
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
	bmi	.L543
	vcmpe.f32	s0, s1
	bgt	.L544
	mov	r0, #0
	b	.L542
.L543:
	mvn	r0, #0
	b	.L542
.L544:
	mov	r0, #1
.L542:
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
	bmi	.L547
	vcmpe.f64	d0, d1
	bgt	.L548
	mov	r0, #0
	b	.L546
.L547:
	mvn	r0, #0
	b	.L546
.L548:
	mov	r0, #1
.L546:
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
	mov	r4, #0
	mov	r5, #0
	mov	r4, r0
	asr	r5, r0, #31
	mov	r6, #0
	mov	r7, #0
	mov	r6, r1
	asr	r7, r1, #31
	mov	r2, r7
	mul	r3, r4, r2
	mov	r2, r6
	mla	r3, r2, r5, r3
	mov	r0, #0
	mov	r1, #0
	umull	r0, r2, r4, r6
	mov	r1, r2
	add	r1, r3, r1
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
	mov	ip, #0
	mov	r4, #0
	mov	r5, #0
	mov	r4, r0
	mov	r5, ip
	mov	r2, #0
	mov	r3, #0
	mov	r2, r1
	mov	r3, ip
	mov	r0, #0
	mov	r1, #0
	umull	r0, ip, r4, r2
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
	movlt	ip, #1
.L557:
	movge	ip, #0
.L552:
	mov	r2, #0
	mov	r3, r2
	b	.L553
.L555:
	tst	r1, #1
	addne	r3, r3, r0
.L554:
	lsl	r0, r0, #1
	asr	r1, r1, #1
	add	r2, r2, #1
.L553:
	and	r4, r2, #255
	subs	lr, r1, #0
	movne	lr, #1
	cmp	r4, #31
	movls	lr, lr
	movhi	lr, #0
	cmp	lr, #0
	bne	.L555
	cmp	ip, #0
	beq	.L558
	rsb	r0, r3, #0
	pop	{r4, fp, pc}
.L558:
	mov	r0, r3
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
.L563:
	movge	r4, #0
.L560:
	cmp	r1, #0
	rsblt	r1, r1, #0
	eorlt	r4, r4, #1
.L561:
	mov	r2, #0
	bl	__udivmodsi4
	cmp	r4, #0
	popeq	{r4, r5, fp, pc}
	rsb	r0, r0, #0
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
.L568:
	movge	r4, #0
.L565:
	cmp	r1, #0
	rsblt	r1, r1, #0
.L566:
	mov	r2, #1
	bl	__udivmodsi4
	cmp	r4, #0
	popeq	{r4, r5, fp, pc}
	rsb	r0, r0, #0
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
	b	.L570
.L572:
	lsl	r1, r1, #17
	lsr	r1, r1, #16
	lsl	r3, r3, #17
	lsr	r3, r3, #16
.L570:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L577
	tst	r1, #32768
	beq	.L572
	mov	ip, #0
	b	.L574
.L575:
	cmp	r0, r1
	subcs	r0, r0, r1
	lslcs	r0, r0, #16
	lsrcs	r0, r0, #16
	orrcs	ip, ip, r3
.L573:
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L574
.L577:
	mov	ip, #0
.L574:
	cmp	r3, #0
	bne	.L575
	cmp	r2, #0
	moveq	r0, ip
.L576:
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
	b	.L580
.L582:
	lsl	r1, r1, #1
	lsl	r3, r3, #1
.L580:
	cmp	r3, #0
	cmpne	r1, r0
	bcs	.L587
	cmp	r1, #0
	bge	.L582
	mov	ip, #0
	b	.L584
.L585:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
.L583:
	lsr	r3, r3, #1
	lsr	r1, r1, #1
	b	.L584
.L587:
	mov	ip, #0
.L584:
	cmp	r3, #0
	bne	.L585
	cmp	r2, #0
	moveq	r0, ip
.L586:
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
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	mov	r6, r0
	mov	r7, r1
	tst	r2, #32
	beq	.L590
	mov	r4, #0
	mov	r5, #0
	sub	r2, r2, #32
	lsl	r2, r6, r2
	mov	r5, r2
	b	.L591
.L590:
	cmp	r2, #0
	beq	.L592
	mov	r3, r6
	mov	r4, #0
	mov	r5, #0
	lsl	r4, r3, r2
	rsb	r1, r2, #32
	lsr	r3, r3, r1
	orr	r3, r3, r7, lsl r2
	mov	r5, r3
.L591:
	mov	r0, r4
	mov	r1, r5
.L592:
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
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
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	mov	r6, r0
	mov	r7, r1
	tst	r2, #32
	beq	.L595
	mov	r3, r7
	mov	r4, #0
	mov	r5, #0
	asr	r5, r3, #31
	sub	r2, r2, #32
	asr	r3, r3, r2
	mov	r4, r3
	b	.L596
.L595:
	cmp	r2, #0
	beq	.L597
	mov	r3, r7
	mov	r4, #0
	mov	r5, #0
	asr	r5, r3, r2
	rsb	r1, r2, #32
	lsr	r2, r6, r2
	orr	r4, r2, r3, lsl r1
.L596:
	mov	r0, r4
	mov	r1, r5
.L597:
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
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
	vldr.64	d7, .L600	@ int
	lsr	r3, r1, #24
	vmov	s14, r3	@ int
	vldr.32	s15, .L600+8	@ int
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #8
	vmov	r3, s15	@ int
	mov	r4, #0
	mov	r5, #0
	str	r4, [fp, #-36]
	str	r5, [fp, #-32]
	and	r3, r2, #65280
	str	r3, [fp, #-36]
	vstr.32	s15, [fp, #-32]	@ int
	mov	r2, r4
	mov	r3, r5
	lsr	r2, r0, #24
	orr	r2, r2, r1, lsl #8
	lsr	r3, r1, #24
	str	r4, [fp, #-44]
	str	r5, [fp, #-40]
	and	r3, r2, #16711680
	str	r3, [fp, #-44]
	vstr.32	s15, [fp, #-40]	@ int
	mov	r2, r4
	mov	r3, r5
	lsr	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsr	r3, r1, #8
	mov	r9, r4
	mov	r10, r5
	and	r9, r2, #-16777216
	vmov	r10, s15	@ int
	lsl	r5, r1, #8
	orr	r5, r5, r0, lsr #24
	lsl	r4, r0, #8
	mov	r2, #0
	mov	r3, #0
	str	r2, [fp, #-52]
	str	r3, [fp, #-48]
	vstr.32	s15, [fp, #-52]	@ int
	and	r3, r5, #255
	str	r3, [fp, #-48]
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #24
	orr	r3, r3, r0, lsr #8
	lsl	r2, r0, #24
	mov	r6, #0
	mov	r7, #0
	vmov	r6, s15	@ int
	and	r7, r3, #65280
	mov	r0, #0
	mov	r1, #0
	mov	r1, r4
	vmov	r0, s15	@ int
	mov	r4, #0
	mov	r5, #0
	vmov	r4, s15	@ int
	and	r5, r1, #16711680
	mov	r0, #0
	mov	r1, #0
	str	r0, [fp, #-60]
	str	r1, [fp, #-56]
	str	r2, [fp, #-56]
	vstr.32	s15, [fp, #-60]	@ int
	mov	r0, #0
	mov	r1, #0
	vmov	r0, s14	@ int
	mov	r1, r2
	mov	r2, #0
	mov	r3, #0
	ldr	ip, [fp, #-36]
	orr	r2, r0, ip
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	ldr	ip, [fp, #-44]
	orr	r0, r2, ip
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	orr	r2, r0, r9
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	sub	r9, fp, #52
	ldmia	r9, {r8-r9}
	mov	ip, r8
	orr	r0, r2, ip
	mov	ip, r9
	orr	r1, r3, ip
	mov	r2, #0
	mov	r3, #0
	orr	r2, r0, r6
	orr	r3, r1, r7
	mov	r0, #0
	mov	r1, #0
	orr	r0, r2, r4
	orr	r1, r3, r5
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	mov	pc, lr
.L601:
	.align	3
.L600:
	.word	0
	.word	0
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
	orr	r0, r3, r0, lsr #24
	orr	r0, r0, r1
	orr	r0, r0, r2
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
	movcc	r3, #16
.L608:
	movcs	r3, #0
.L604:
	rsb	r2, r3, #16
	lsr	r0, r0, r2
	tst	r0, #65280
	moveq	r2, #8
.L609:
	movne	r2, #0
.L605:
	rsb	r1, r2, #8
	lsr	r0, r0, r1
	add	r3, r3, r2
	tst	r0, #240
	moveq	r2, #4
.L610:
	movne	r2, #0
.L606:
	rsb	r1, r2, #4
	lsr	r0, r0, r1
	add	r3, r3, r2
	tst	r0, #12
	moveq	r2, #2
.L611:
	movne	r2, #0
.L607:
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
	push	{r4, r5, fp}
	add	fp, sp, #8
	mov	r4, r0
	mov	r5, r1
	cmp	r3, r5
	bgt	.L614
	blt	.L615
	cmp	r2, r4
	bhi	.L616
	bcc	.L617
	mov	r0, #1
	b	.L613
.L614:
	mov	r0, #0
	b	.L613
.L615:
	mov	r0, #2
	b	.L613
.L616:
	mov	r0, #0
	b	.L613
.L617:
	mov	r0, #2
.L613:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
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
	moveq	r2, #16
.L624:
	movne	r2, #0
.L620:
	lsr	r0, r0, r2
	and	r3, r0, #255
	cmp	r3, #0
	moveq	r3, #8
.L625:
	movne	r3, #0
.L621:
	lsr	r0, r0, r3
	add	r2, r2, r3
	tst	r0, #15
	moveq	r3, #4
.L626:
	movne	r3, #0
.L622:
	lsr	r0, r0, r3
	add	r2, r2, r3
	tst	r0, #3
	moveq	r3, #2
.L627:
	movne	r3, #0
.L623:
	lsr	r0, r0, r3
	and	r0, r0, #3
	add	r2, r2, r3
	mvn	r1, r0
	lsr	r3, r0, #1
	rsb	r3, r3, #2
	ands	r1, r1, #1
	mvnne	r1, #0
	and	r3, r3, r1
	add	r0, r2, r3
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
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	mov	r6, r0
	mov	r7, r1
	tst	r2, #32
	beq	.L629
	mov	r4, #0
	mov	r5, #0
	sub	r2, r2, #32
	lsr	r4, r7, r2
	b	.L630
.L629:
	cmp	r2, #0
	beq	.L631
	mov	r3, r7
	mov	r4, #0
	mov	r5, #0
	lsr	r5, r3, r2
	rsb	r1, r2, #32
	lsr	r2, r6, r2
	orr	r4, r2, r3, lsl r1
.L630:
	mov	r0, r4
	mov	r1, r5
.L631:
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
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
	lsl	r2, r0, #16
	lsr	r2, r2, #16
	lsl	r3, r1, #16
	lsr	r3, r3, #16
	mul	lr, r3, r2
	mov	r4, #0
	mov	r5, #0
	mov	r4, lr
	lsl	ip, lr, #16
	lsr	ip, ip, #16
	mov	r4, ip
	lsr	r0, r0, #16
	mul	r3, r0, r3
	add	r3, r3, lr, lsr #16
	add	r4, ip, r3, lsl #16
	lsr	r3, r3, #16
	mov	r5, r3
	mov	r3, r4
	lsl	ip, r3, #16
	lsr	ip, ip, #16
	mov	r4, ip
	lsr	r1, r1, #16
	mul	r2, r1, r2
	add	r3, r2, r3, lsr #16
	add	r4, ip, r3, lsl #16
	add	r3, r5, r3, lsr #16
	mov	r5, r3
	mla	r3, r1, r0, r3
	mov	r5, r3
	mov	r0, r4
	mov	r1, r5
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
	mov	r8, r2
	mov	r9, r3
	mov	r4, r6
	mov	r5, r8
	mov	r1, r8
	mov	r0, r6
	bl	__muldsi3
	mov	r2, r0
	mov	r3, r1
	mul	r4, r9, r4
	mla	r4, r5, r7, r4
	add	r4, r4, r1
	mov	r3, r4
	mov	r0, r2
	mov	r1, r3
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
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	rsbs	r0, r2, #0
	rsc	r1, r3, #0
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
	ldr	r3, .L637
	asr	r0, r3, r0
	and	r0, r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L638:
	.align	2
.L637:
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
	eor	r3, r0, r0, lsr #16
	eor	r3, r3, r3, lsr #8
	eor	r3, r3, r3, lsr #4
	and	r3, r3, #15
	ldr	r0, .L640
	asr	r0, r0, r3
	and	r0, r0, #1
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L641:
	.align	2
.L640:
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
	mov	r4, #0
	mov	r5, #0
	lsr	r4, r0, #1
	orr	r4, r4, r1, lsl #31
	lsr	r5, r1, #1
	adr	r7, .L643
	ldmia	r7, {r6-r7}
	mov	r2, #0
	mov	r3, #0
	and	r2, r4, r6
	and	r3, r5, r7
	mov	r4, #0
	mov	r5, #0
	subs	r4, r0, r2
	sbc	r5, r1, r3
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r4, #2
	orr	r0, r0, r5, lsl #30
	lsr	r1, r5, #2
	adr	r7, .L643+8
	ldmia	r7, {r6-r7}
	mov	r8, #0
	mov	r9, #0
	and	r8, r0, r6
	and	r9, r1, r7
	mov	r0, #0
	mov	r1, #0
	and	r0, r4, r6
	and	r1, r5, r7
	adds	r2, r8, r0
	adc	r3, r9, r1
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #4
	orr	r0, r0, r3, lsl #28
	lsr	r1, r3, #4
	mov	r4, #0
	mov	r5, #0
	adds	r4, r0, r2
	adc	r5, r1, r3
	adr	r1, .L643+16
	ldmia	r1, {r0-r1}
	and	r2, r4, r0
	and	r3, r5, r1
	mov	r0, #0
	mov	r1, #0
	mov	r0, r3
	mov	r1, #0
	add	r0, r0, r2
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	mov	pc, lr
.L644:
	.align	3
.L643:
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
	ldr	r3, .L646
	and	r3, r3, r0, lsr #1
	sub	r3, r0, r3
	ldr	r2, .L646+4
	and	r1, r2, r3, lsr #2
	and	r3, r3, r2
	add	r3, r1, r3
	add	r2, r3, r3, lsr #4
	ldr	r3, .L646+8
	and	r3, r3, r2
	add	r3, r3, r3, lsr #16
	add	r3, r3, r3, lsr #8
	and	r0, r3, #63
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	mov	pc, lr
.L647:
	.align	2
.L646:
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
.L651:
	tst	r0, #1
	vmulne.f64	d7, d7, d0
.L649:
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	cmp	r0, #0
	vmulne.f64	d0, d0, d0
	bne	.L651
.L650:
	cmp	r3, #0
	vmovne.f64	d6, #1.0e+0
	vdivne.f64	d0, d6, d7
.L653:
	vmoveq.f64	d0, d7
.L652:
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
.L657:
	tst	r0, #1
	vmulne.f32	s15, s15, s0
.L655:
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	cmp	r0, #0
	vmulne.f32	s0, s0, s0
	bne	.L657
.L656:
	cmp	r3, #0
	vmovne.f32	s14, #1.0e+0
	vdivne.f32	s0, s14, s15
.L659:
	vmoveq.f32	s0, s15
.L658:
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
	push	{r4, r5, fp}
	add	fp, sp, #8
	mov	r4, r0
	mov	r5, r1
	cmp	r3, r5
	bhi	.L662
	bcc	.L663
	cmp	r2, r4
	bhi	.L664
	bcc	.L665
	mov	r0, #1
	b	.L661
.L662:
	mov	r0, #0
	b	.L661
.L663:
	mov	r0, #2
	b	.L661
.L664:
	mov	r0, #0
	b	.L661
.L665:
	mov	r0, #2
.L661:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
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
