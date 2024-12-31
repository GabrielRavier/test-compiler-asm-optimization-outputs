	.arch armv4
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcs	.L2
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #20]
	b	.L3
.L4:
	ldr	r3, [sp, #16]
	sub	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L3:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L4
	b	.L5
.L2:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	beq	.L5
	b	.L6
.L7:
	ldr	r2, [sp, #16]
	add	r3, r2, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	add	r1, r3, #1
	str	r1, [sp, #20]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L6:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L7
.L5:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.syntax unified
	.arm
	.type	memccpy, %function
memccpy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	and	r3, r3, #255
	str	r3, [sp, #4]
	b	.L11
.L13:
	ldr	r3, [sp]
	sub	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L11:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [sp, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bne	.L13
.L12:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	b	.L15
.L14:
	mov	r3, #0
.L15:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.syntax unified
	.arm
	.type	memchr, %function
memchr:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	and	r3, r3, #255
	str	r3, [sp, #8]
	b	.L18
.L20:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L18:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #8]
	cmp	r3, r2
	bne	.L20
.L19:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [sp, #20]
	b	.L23
.L21:
	mov	r3, #0
.L23:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	b	.L26
.L28:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
.L26:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L28
.L27:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	b	.L31
.L29:
	mov	r3, #0
.L31:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	b	.L34
.L35:
	ldr	r2, [sp, #16]
	add	r3, r2, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	add	r1, r3, #1
	str	r1, [sp, #20]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L34:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L35
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	and	r3, r3, #255
	str	r3, [sp, #8]
	b	.L39
.L41:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #8]
	cmp	r3, r2
	bne	.L39
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	b	.L40
.L39:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L41
	mov	r3, #0
.L40:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L44
.L45:
	ldr	r3, [sp, #8]
	and	r2, r3, #255
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L44:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L45
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.syntax unified
	.arm
	.type	stpcpy, %function
stpcpy:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.L49
.L50:
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L49:
	ldr	r3, [sp]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L50
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.syntax unified
	.arm
	.type	strchrnul, %function
strchrnul:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp]
	and	r3, r3, #255
	str	r3, [sp]
	b	.L54
.L56:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L54:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp]
	cmp	r3, r2
	bne	.L56
.L55:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.syntax unified
	.arm
	.type	strchr, %function
strchr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r3, r0
	str	r1, [sp, #4]
.L62:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [sp, #4]
	cmp	r2, r1
	bne	.L60
	b	.L61
.L60:
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L62
	mov	r3, #0
.L61:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.syntax unified
	.arm
	.type	strcmp, %function
strcmp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.L65
.L67:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
.L65:
	ldr	r3, [sp, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L66
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L67
.L66:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.syntax unified
	.arm
	.type	strlen, %function
strlen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	b	.L71
.L72:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L71:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L72
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	sub	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L78
	mov	r3, #0
	b	.L77
.L80:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L78:
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L80
.L79:
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
.L77:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.syntax unified
	.arm
	.type	swab, %function
swab:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	b	.L83
.L84:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	strb	r2, [r3]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	ldr	r2, [sp, #20]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #16]
	add	r3, r3, #2
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	add	r3, r3, #2
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	sub	r3, r3, #2
	str	r3, [sp, #4]
.L83:
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bgt	.L84
	nop
	nop
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.syntax unified
	.arm
	.type	isalpha, %function
isalpha:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	orr	r3, r3, #32
	sub	r3, r3, #97
	cmp	r3, #25
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.syntax unified
	.arm
	.type	isascii, %function
isascii:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #127
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.syntax unified
	.arm
	.type	isblank, %function
isblank:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #32
	beq	.L93
	ldr	r3, [sp, #4]
	cmp	r3, #9
	bne	.L94
.L93:
	mov	r3, #1
	b	.L96
.L94:
	mov	r3, #0
.L96:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.syntax unified
	.arm
	.type	iscntrl, %function
iscntrl:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #31
	bls	.L99
	ldr	r3, [sp, #4]
	cmp	r3, #127
	bne	.L100
.L99:
	mov	r3, #1
	b	.L102
.L100:
	mov	r3, #0
.L102:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.syntax unified
	.arm
	.type	isdigit, %function
isdigit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.syntax unified
	.arm
	.type	isgraph, %function
isgraph:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #33
	cmp	r3, #93
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.syntax unified
	.arm
	.type	islower, %function
islower:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #97
	cmp	r3, #25
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	islower, .-islower
	.align	2
	.global	isprint
	.syntax unified
	.arm
	.type	isprint, %function
isprint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #32
	cmp	r3, #94
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.syntax unified
	.arm
	.type	isspace, %function
isspace:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #32
	beq	.L117
	ldr	r3, [sp, #4]
	sub	r3, r3, #9
	cmp	r3, #4
	bhi	.L118
.L117:
	mov	r3, #1
	b	.L120
.L118:
	mov	r3, #0
.L120:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.syntax unified
	.arm
	.type	isupper, %function
isupper:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #65
	cmp	r3, #25
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.syntax unified
	.arm
	.type	iswcntrl, %function
iswcntrl:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #31
	bls	.L126
	ldr	r3, [sp, #4]
	sub	r3, r3, #127
	cmp	r3, #32
	bls	.L126
	ldr	r3, [sp, #4]
	sub	r3, r3, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L126
	ldr	r3, [sp, #4]
	sub	r3, r3, #65280
	sub	r3, r3, #249
	cmp	r3, #2
	bhi	.L127
.L126:
	mov	r3, #1
	b	.L129
.L127:
	mov	r3, #0
.L129:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.syntax unified
	.arm
	.type	iswdigit, %function
iswdigit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r3, #1
	movhi	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.syntax unified
	.arm
	.type	iswprint, %function
iswprint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #254
	bhi	.L135
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	and	r3, r3, #127
	cmp	r3, #32
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L136
.L135:
	ldr	r3, [sp, #4]
	ldr	r2, .L142
	cmp	r3, r2
	bls	.L137
	ldr	r3, [sp, #4]
	sub	r3, r3, #8192
	sub	r3, r3, #42
	ldr	r2, .L142+4
	cmp	r3, r2
	bls	.L137
	ldr	r3, [sp, #4]
	sub	r3, r3, #57344
	ldr	r2, .L142+8
	cmp	r3, r2
	bhi	.L138
.L137:
	mov	r3, #1
	b	.L136
.L138:
	ldr	r3, [sp, #4]
	sub	r3, r3, #65280
	sub	r3, r3, #252
	ldr	r2, .L142+12
	cmp	r3, r2
	bhi	.L139
	ldr	r2, [sp, #4]
	ldr	r3, .L142+16
	and	r3, r3, r2
	ldr	r2, .L142+16
	cmp	r3, r2
	bne	.L140
.L139:
	mov	r3, #0
	b	.L136
.L140:
	mov	r3, #1
.L136:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L143:
	.align	2
.L142:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L145
	ldr	r3, [sp, #4]
	orr	r3, r3, #32
	sub	r3, r3, #97
	cmp	r3, #5
	bhi	.L146
.L145:
	mov	r3, #1
	b	.L148
.L146:
	mov	r3, #0
.L148:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.syntax unified
	.arm
	.type	toascii, %function
toascii:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	and	r3, r3, #127
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.syntax unified
	.arm
	.type	fdim, %function
fdim:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L154
	vldr.64	d7, [sp, #8]
	b	.L155
.L154:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L156
	vldr.64	d7, [sp]
	b	.L155
.L156:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L161
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vsub.f64	d7, d6, d7
	b	.L155
.L161:
	vldr.64	d7, .L163
.L155:
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L164:
	.align	3
.L163:
	.word	0
	.word	0
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.syntax unified
	.arm
	.type	fdimf, %function
fdimf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.32	s0, [sp, #4]
	vstr.32	s1, [sp]
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L166
	vldr.32	s15, [sp, #4]
	b	.L167
.L166:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L168
	vldr.32	s15, [sp]
	b	.L167
.L168:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L173
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vsub.f32	s15, s14, s15
	b	.L167
.L173:
	vldr.32	s15, .L175
.L167:
	vmov.f32	s0, s15
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L176:
	.align	2
.L175:
	.word	0
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.syntax unified
	.arm
	.type	fmax, %function
fmax:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L178
	ldmia	sp, {r2-r3}
	b	.L179
.L178:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L180
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L179
.L180:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L181
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L182
	ldmia	sp, {r2-r3}
	b	.L179
.L182:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L179
.L181:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L188
	ldmia	sp, {r2-r3}
	b	.L179
.L188:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
.L179:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.syntax unified
	.arm
	.type	fmaxf, %function
fmaxf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.32	s0, [sp, #4]
	vstr.32	s1, [sp]
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L191
	ldr	r3, [sp]	@ float
	b	.L192
.L191:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L193
	ldr	r3, [sp, #4]	@ float
	b	.L192
.L193:
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L194
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L195
	ldr	r3, [sp]	@ float
	b	.L192
.L195:
	ldr	r3, [sp, #4]	@ float
	b	.L192
.L194:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L201
	ldr	r3, [sp]	@ float
	b	.L192
.L201:
	ldr	r3, [sp, #4]	@ float
.L192:
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.syntax unified
	.arm
	.type	fmaxl, %function
fmaxl:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L204
	ldmia	sp, {r2-r3}
	b	.L205
.L204:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L206
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L205
.L206:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L207
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L208
	ldmia	sp, {r2-r3}
	b	.L205
.L208:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L205
.L207:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L214
	ldmia	sp, {r2-r3}
	b	.L205
.L214:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
.L205:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.syntax unified
	.arm
	.type	fmin, %function
fmin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L217
	ldmia	sp, {r2-r3}
	b	.L218
.L217:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L219
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L218
.L219:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L220
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L221
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L218
.L221:
	ldmia	sp, {r2-r3}
	b	.L218
.L220:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L227
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L218
.L227:
	ldmia	sp, {r2-r3}
.L218:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.syntax unified
	.arm
	.type	fminf, %function
fminf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.32	s0, [sp, #4]
	vstr.32	s1, [sp]
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L230
	ldr	r3, [sp]	@ float
	b	.L231
.L230:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L232
	ldr	r3, [sp, #4]	@ float
	b	.L231
.L232:
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L233
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L234
	ldr	r3, [sp, #4]	@ float
	b	.L231
.L234:
	ldr	r3, [sp]	@ float
	b	.L231
.L233:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L240
	ldr	r3, [sp, #4]	@ float
	b	.L231
.L240:
	ldr	r3, [sp]	@ float
.L231:
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.syntax unified
	.arm
	.type	fminl, %function
fminl:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L243
	ldmia	sp, {r2-r3}
	b	.L244
.L243:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L245
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L244
.L245:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L246
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L247
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L244
.L247:
	ldmia	sp, {r2-r3}
	b	.L244
.L246:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L253
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L244
.L253:
	ldmia	sp, {r2-r3}
.L244:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L260
	str	r3, [sp, #12]
	b	.L256
.L257:
	ldr	r3, [sp, #8]
	and	r3, r3, #63
	ldr	r2, .L260+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	strb	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #6
	str	r3, [sp, #8]
.L256:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L257
	ldr	r3, [sp, #12]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L260
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L261:
	.align	2
.L260:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	mov	r2, #0
	mov	r1, r3
	ldr	r3, .L264
	str	r1, [r3]
	str	r2, [r3, #4]
	nop
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L265:
	.align	2
.L264:
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
	@ link register save eliminated.
	ldr	r3, .L268
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	ldr	r1, .L268+4
	mul	r1, r3, r1
	ldr	r3, .L268+8
	mul	r3, r2, r3
	add	r0, r1, r3
	ldr	ip, .L268+4
	umull	r1, r3, r2, ip
	add	r3, r0, r3
	adds	r1, r1, #1
	adc	r2, r3, #0
	ldr	r3, .L268
	str	r1, [r3]
	str	r2, [r3, #4]
	ldr	r3, .L268
	ldr	r3, [r3, #4]
	lsr	r2, r3, #1
	mov	r3, r2
	mov	r0, r3
	mov	pc, lr
.L269:
	.align	2
.L268:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L271
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #12]
	str	r2, [r3]
	b	.L270
.L271:
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	ldr	r3, [sp, #12]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #4]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #12]
	str	r2, [r3, #4]
.L270:
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	insque, .-insque
	.align	2
	.global	remque
	.syntax unified
	.arm
	.type	remque, %function
remque:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L275
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L275:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L277
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
.L277:
	nop
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [sp]
	mov	r3, r4
	sub	r3, r4, #1
	str	r3, [sp, #24]
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L280
.L283:
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	ldr	r3, [sp, #40]
	mov	r1, r2
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L281
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	b	.L282
.L281:
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L280:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcc	.L283
	ldr	r3, [sp, #16]
	add	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3]
	ldr	r3, [sp, #16]
	mul	r3, r4, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	ldr	r2, [sp]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	memcpy
	mov	r3, r0
.L282:
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.syntax unified
	.arm
	.type	lfind, %function
lfind:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [sp]
	mov	r3, r4
	sub	r3, r4, #1
	str	r3, [sp, #24]
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L286
.L289:
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	ldr	r3, [sp, #40]
	mov	r1, r2
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L287
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	b	.L288
.L287:
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L286:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcc	.L289
	mov	r3, #0
.L288:
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.syntax unified
	.arm
	.type	abs, %function
abs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	rsblt	r3, r3, #0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	abs, .-abs
	.align	2
	.global	atoi
	.syntax unified
	.arm
	.type	atoi, %function
atoi:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L295
.L296:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L295:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L296
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L297
	cmp	r3, #45
	bne	.L299
	mov	r3, #1
	str	r3, [sp, #8]
.L297:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L299
.L300:
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	str	r2, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	sub	r3, r1, r3
	str	r3, [sp, #12]
.L299:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L300
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L301
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L303
.L301:
	ldr	r3, [sp, #12]
.L303:
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L306
.L307:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L306:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L307
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L308
	cmp	r3, #45
	bne	.L310
	mov	r3, #1
	str	r3, [sp, #8]
.L308:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L310
.L311:
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	str	r2, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	sub	r3, r1, r3
	str	r3, [sp, #12]
.L310:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L311
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L312
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L314
.L312:
	ldr	r3, [sp, #12]
.L314:
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #28
	str	r0, [sp, #4]
	mov	r2, #0
	mov	r3, #0
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L317
.L318:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L317:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L318
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L319
	cmp	r3, #45
	bne	.L321
	mov	r3, #1
	str	r3, [sp, #12]
.L319:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L321
.L322:
	ldr	r0, [sp, #16]
	ldr	ip, [sp, #20]
	mov	r2, r0
	mov	r1, ip
	lsl	r3, r1, #2
	orr	r3, r3, r2, lsr #30
	lsl	lr, r2, #2
	mov	r2, lr
	mov	r1, r3
	adds	r3, r2, r0
	adc	r2, r1, ip
	adds	r3, r3, r3
	adc	r2, r2, r2
	mov	r0, r3
	mov	r1, r2
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	str	r2, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	asr	ip, r3, #31
	mov	r2, r3
	mov	r3, ip
	subs	r2, r0, r2
	sbc	r3, r1, r3
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L321:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L322
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L323
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	rsbs	r2, r2, #0
	rsc	r3, r3, #0
	b	.L325
.L323:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
.L325:
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.syntax unified
	.arm
	.type	bsearch, %function
bsearch:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	b	.L328
.L333:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	ldr	r2, [sp]
	mul	r3, r2, r3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bge	.L329
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	b	.L328
.L329:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L331
	ldr	r2, [sp, #20]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	ldr	r2, [sp, #4]
	sub	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [sp, #4]
	b	.L328
.L331:
	ldr	r3, [sp, #20]
	b	.L332
.L328:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L333
	mov	r3, #0
.L332:
	mov	r0, r3
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.syntax unified
	.arm
	.type	bsearch_r, %function
bsearch_r:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	str	r3, [sp, #24]
	b	.L336
.L340:
	ldr	r3, [sp, #24]
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp]
	mul	r3, r2, r3
	ldr	r2, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L337
	ldr	r3, [sp, #20]
	b	.L338
.L337:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L339
	ldr	r2, [sp, #20]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #28]
	ldr	r3, [sp, #24]
	sub	r3, r3, #1
	str	r3, [sp, #24]
.L339:
	ldr	r3, [sp, #24]
	asr	r3, r3, #1
	str	r3, [sp, #24]
.L336:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L340
	mov	r3, #0
.L338:
	mov	r0, r3
	add	sp, sp, #36
	@ sp needed
	ldr	pc, [sp], #4
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [sp, #12]
	str	r4, [r3]
	ldr	r3, [sp, #12]
	str	r2, [r3, #4]
	ldr	r0, [sp, #12]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
	.size	div, .-div
	.align	2
	.global	imaxabs
	.syntax unified
	.arm
	.type	imaxabs, %function
imaxabs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldr	r1, [sp, #4]
	asr	r2, r1, #31
	asr	r3, r1, #31
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	eor	r0, r0, r2
	eor	r1, r1, r3
	subs	r2, r0, r2
	sbc	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.syntax unified
	.arm
	.type	imaxdiv, %function
imaxdiv:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #36
	str	r0, [sp, #12]
	stm	sp, {r2-r3}
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	ldmia	sp, {r0-r1}
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	mov	r5, r2
	mov	r4, r3
	ldmia	sp, {r0-r1}
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	bl	__aeabi_ldivmod
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [sp, #12]
	str	r5, [r3]
	str	r4, [r3, #4]
	ldr	r3, [sp, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	ldr	r0, [sp, #12]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, pc}
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.syntax unified
	.arm
	.type	labs, %function
labs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	rsblt	r3, r3, #0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.syntax unified
	.arm
	.type	ldiv, %function
ldiv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [sp, #12]
	str	r4, [r3]
	ldr	r3, [sp, #12]
	str	r2, [r3, #4]
	ldr	r0, [sp, #12]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.syntax unified
	.arm
	.type	llabs, %function
llabs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldr	r1, [sp, #4]
	asr	r2, r1, #31
	asr	r3, r1, #31
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	eor	r0, r0, r2
	eor	r1, r1, r3
	subs	r2, r0, r2
	sbc	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.syntax unified
	.arm
	.type	lldiv, %function
lldiv:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #36
	str	r0, [sp, #12]
	stm	sp, {r2-r3}
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	ldmia	sp, {r0-r1}
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	mov	r5, r2
	mov	r4, r3
	ldmia	sp, {r0-r1}
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	bl	__aeabi_ldivmod
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [sp, #12]
	str	r5, [r3]
	str	r4, [r3, #4]
	ldr	r3, [sp, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	ldr	r0, [sp, #12]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, pc}
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.syntax unified
	.arm
	.type	wcschr, %function
wcschr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.L364
.L366:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
.L364:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L365
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	ldr	r2, [sp]
	cmp	r2, r3
	bne	.L366
.L365:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L367
	ldr	r3, [sp, #4]
	b	.L369
.L367:
	mov	r3, #0
.L369:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.syntax unified
	.arm
	.type	wcscmp, %function
wcscmp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.L372
.L374:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r3, r3, #4
	str	r3, [sp]
.L372:
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L373
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L373
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L374
.L373:
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L375
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L377
.L375:
	mvn	r3, #0
.L377:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.syntax unified
	.arm
	.type	wcscpy, %function
wcscpy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	nop
.L380:
	ldr	r2, [sp]
	add	r3, r2, #4
	str	r3, [sp]
	ldr	r3, [sp, #4]
	add	r1, r3, #4
	str	r1, [sp, #4]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L380
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.syntax unified
	.arm
	.type	wcslen, %function
wcslen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	b	.L384
.L385:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
.L384:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L385
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	sub	r3, r2, r3
	asr	r3, r3, #2
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.syntax unified
	.arm
	.type	wcsncmp, %function
wcsncmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	b	.L389
.L391:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #8]
.L389:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L390
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L390
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L390
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L391
.L390:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L392
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L393
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L396
.L393:
	mvn	r3, #0
	b	.L396
.L392:
	mov	r3, #0
.L396:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.syntax unified
	.arm
	.type	wmemchr, %function
wmemchr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	b	.L399
.L401:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
.L399:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L400
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bne	.L401
.L400:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L402
	ldr	r3, [sp, #12]
	b	.L404
.L402:
	mov	r3, #0
.L404:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	b	.L407
.L409:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #8]
.L407:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L408
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L409
.L408:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L410
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L411
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L414
.L411:
	mvn	r3, #0
	b	.L414
.L410:
	mov	r3, #0
.L414:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L417
.L418:
	ldr	r2, [sp, #8]
	add	r3, r2, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	r1, r3, #4
	str	r1, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
.L417:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L418
	ldr	r3, [sp, #20]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bne	.L422
	ldr	r3, [sp, #12]
	b	.L423
.L422:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r2, r2, r3
	ldr	r3, [sp, #4]
	lsl	r3, r3, #2
	cmp	r2, r3
	bcs	.L428
	b	.L425
.L426:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	lsl	r3, r3, #2
	ldr	r1, [sp, #12]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
.L425:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L426
	b	.L427
.L429:
	ldr	r2, [sp, #8]
	add	r3, r2, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	r1, r3, #4
	str	r1, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
.L428:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L429
.L427:
	ldr	r3, [sp, #20]
.L423:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.syntax unified
	.arm
	.type	wmemset, %function
wmemset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L432
.L433:
	ldr	r3, [sp, #12]
	add	r2, r3, #4
	str	r2, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
.L432:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L433
	ldr	r3, [sp, #20]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L437
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #16]
	b	.L438
.L439:
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	sub	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L438:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L439
	b	.L443
.L437:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	beq	.L443
	b	.L441
.L442:
	ldr	r2, [sp, #20]
	add	r3, r2, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r1, r3, #1
	str	r1, [sp, #16]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L441:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L442
.L443:
	nop
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	ldr	r3, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #4]
	sub	lr, r2, #32
	rsb	ip, r2, #32
	lsl	r1, r0, r2
	orr	r1, r1, r3, lsl lr
	orr	r1, r1, r3, lsr ip
	lsl	ip, r3, r2
	ldr	r2, [sp, #4]
	rsb	r2, r2, #0
	and	r2, r2, #63
	rsb	r4, r2, #32
	sub	lr, r2, #32
	lsr	r3, r3, r2
	orr	r3, r3, r0, lsl r4
	orr	r3, r3, r0, lsr lr
	lsr	r2, r0, r2
	orr	r3, ip, r3
	orr	r2, r1, r2
	mov	r1, r3
	mov	r3, r2
	mov	r0, r1
	mov	r1, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	rsb	lr, r2, #32
	sub	ip, r2, #32
	lsr	r1, r0, r2
	orr	r1, r1, r3, lsl lr
	orr	r1, r1, r3, lsr ip
	lsr	ip, r3, r2
	ldr	r2, [sp, #4]
	rsb	r2, r2, #0
	and	r2, r2, #63
	sub	r4, r2, #32
	rsb	lr, r2, #32
	lsl	r3, r3, r2
	orr	r3, r3, r0, lsl r4
	orr	r3, r3, r0, lsr lr
	lsl	r2, r0, r2
	orr	r2, r1, r2
	orr	r3, ip, r3
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.syntax unified
	.arm
	.type	rotl32, %function
rotl32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	rsb	r3, r3, #32
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.syntax unified
	.arm
	.type	rotr32, %function
rotr32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.syntax unified
	.arm
	.type	rotl_sz, %function
rotl_sz:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	rsb	r3, r3, #32
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.syntax unified
	.arm
	.type	rotr_sz, %function
rotr_sz:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.syntax unified
	.arm
	.type	rotl16, %function
rotl16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r3, r0
	str	r1, [sp]
	strh	r3, [sp, #6]	@ movhi
	ldrh	r2, [sp, #6]
	ldr	r3, [sp]
	lsl	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r1, [sp, #6]
	ldr	r3, [sp]
	rsb	r3, r3, #16
	lsr	r3, r1, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.syntax unified
	.arm
	.type	rotr16, %function
rotr16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r3, r0
	str	r1, [sp]
	strh	r3, [sp, #6]	@ movhi
	ldrh	r2, [sp, #6]
	ldr	r3, [sp]
	lsr	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r1, [sp, #6]
	ldr	r3, [sp]
	rsb	r3, r3, #16
	lsl	r3, r1, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.syntax unified
	.arm
	.type	rotl8, %function
rotl8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	ldr	r3, [sp]
	lsl	r3, r2, r3
	and	r2, r3, #255
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r3, [sp]
	rsb	r3, r3, #8
	lsr	r3, r1, r3
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.syntax unified
	.arm
	.type	rotr8, %function
rotr8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	ldr	r3, [sp]
	lsr	r3, r2, r3
	and	r2, r3, #255
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r3, [sp]
	rsb	r3, r3, #8
	lsl	r3, r1, r3
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.syntax unified
	.arm
	.type	bswap_16, %function
bswap_16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	mov	r3, #255
	str	r3, [sp, #12]
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	lsl	r3, r3, #8
	and	r3, r3, r2
	lsr	r3, r3, #8
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldr	r3, [sp, #12]
	lsl	r3, r3, #16
	lsr	r1, r3, #16
	ldrh	r3, [sp, #6]	@ movhi
	and	r3, r3, r1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #8
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.syntax unified
	.arm
	.type	bswap_32, %function
bswap_32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	mov	r3, #255
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsl	r2, r3, #24
	ldr	r3, [sp, #4]
	and	r3, r3, r2
	lsr	r2, r3, #24
	ldr	r3, [sp, #12]
	lsl	r1, r3, #16
	ldr	r3, [sp, #4]
	and	r3, r3, r1
	lsr	r3, r3, #8
	orr	r2, r2, r3
	ldr	r3, [sp, #12]
	lsl	r1, r3, #8
	ldr	r3, [sp, #4]
	and	r3, r3, r1
	lsl	r3, r3, #8
	orr	r2, r2, r3
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #12]
	and	r3, r3, r1
	lsl	r3, r3, #24
	orr	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.syntax unified
	.arm
	.type	bswap_64, %function
bswap_64:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	stm	sp, {r0-r1}
	mov	r2, #255
	mov	r3, #0
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	ldr	r2, [sp, #8]
	lsl	r3, r2, #24
	ldr	r2, [sp, #4]
	and	r3, r3, r2
	lsr	r2, r3, #24
	mov	ip, #0
	ldr	r1, [sp, #8]
	lsl	r3, r1, #16
	ldr	r1, [sp, #4]
	and	r0, r3, r1
	lsr	r3, r0, #8
	mov	r1, #0
	orr	r0, r2, r3
	orr	ip, ip, r1
	ldr	r2, [sp, #8]
	lsl	r3, r2, #8
	mov	lr, #0
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	and	lr, lr, r1
	and	r2, r2, r3
	lsr	r3, lr, #24
	orr	r3, r3, r2, lsl #8
	lsr	r1, r2, #24
	orr	r0, r0, r3
	orr	ip, ip, r1
	ldr	r2, [sp, #8]
	mov	r3, r2
	mov	lr, #0
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	and	lr, lr, r1
	and	r2, r2, r3
	lsr	r3, lr, #8
	orr	r3, r3, r2, lsl #24
	lsr	r1, r2, #8
	orr	r0, r0, r3
	orr	ip, ip, r1
	ldr	r2, [sp, #8]
	ldr	lr, [sp, #12]
	lsl	r3, lr, #24
	orr	r3, r3, r2, lsr #8
	lsl	r1, r2, #24
	ldr	r2, [sp]
	ldr	lr, [sp, #4]
	and	r2, r2, r1
	and	lr, lr, r3
	lsl	r3, lr, #8
	orr	r3, r3, r2, lsr #24
	lsl	r1, r2, #8
	orr	r0, r0, r1
	orr	ip, ip, r3
	ldr	r2, [sp, #8]
	ldr	lr, [sp, #12]
	lsl	r3, lr, #16
	orr	r3, r3, r2, lsr #16
	lsl	r1, r2, #16
	ldr	r2, [sp]
	ldr	lr, [sp, #4]
	and	r2, r2, r1
	and	lr, lr, r3
	lsl	r3, lr, #24
	orr	r3, r3, r2, lsr #8
	lsl	r1, r2, #24
	orr	r0, r0, r1
	orr	r2, ip, r3
	ldr	r1, [sp, #8]
	lsl	r3, r1, #8
	ldr	r1, [sp]
	and	ip, r3, r1
	lsl	r3, ip, #8
	mov	r1, #0
	orr	r0, r0, r1
	orr	r2, r2, r3
	ldr	r1, [sp]
	ldr	r3, [sp, #8]
	and	ip, r1, r3
	lsl	r3, ip, #24
	mov	r1, #0
	orr	r1, r0, r1
	orr	r3, r2, r3
	mov	r2, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.syntax unified
	.arm
	.type	ffs, %function
ffs:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L485
.L488:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L486
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	b	.L487
.L486:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L485:
	ldr	r3, [sp, #12]
	cmp	r3, #31
	bls	.L488
	mov	r3, #0
.L487:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
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
	cmp	r0, #0
	bne	.L491
	mov	r3, #0
	b	.L496
.L491:
	str	r4, [sp, #-4]!
	mov	r3, r0
	mov	r4, #1
	b	.L493
.L494:
	asr	r3, r3, #1
	add	r4, r4, #1
.L493:
	and	r2, r3, #1
	cmp	r2, #0
	beq	.L494
	mov	r3, r4
	mov	r0, r3
	ldr	r4, [sp], #4
	mov	pc, lr
.L496:
	mov	r0, r3
	mov	pc, lr
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.syntax unified
	.arm
	.type	gl_isinff, %function
gl_isinff:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.32	s0, [sp, #4]
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L506
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bmi	.L499
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L506+4
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L504
.L499:
	mov	r3, #1
	b	.L503
.L504:
	mov	r3, #0
.L503:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L507:
	.align	2
.L506:
	.word	-8388609
	.word	2139095039
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.syntax unified
	.arm
	.type	gl_isinfd, %function
gl_isinfd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.64	d0, [sp]
	vldr.64	d7, [sp]
	vldr.64	d6, .L516
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L509
	vldr.64	d7, [sp]
	vldr.64	d6, .L516+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L514
.L509:
	mov	r3, #1
	b	.L513
.L514:
	mov	r3, #0
.L513:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L517:
	.align	3
.L516:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.64	d0, [sp]
	vldr.64	d7, [sp]
	vldr.64	d6, .L526
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L519
	vldr.64	d7, [sp]
	vldr.64	d6, .L526+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L524
.L519:
	mov	r3, #1
	b	.L523
.L524:
	mov	r3, #0
.L523:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L527:
	.align	3
.L526:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	ldr	r3, [sp, #4]
	vstr.64	d7, [r3]
	nop
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.syntax unified
	.arm
	.type	ldexpf, %function
ldexpf:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.32	s0, [sp, #4]
	str	r0, [sp]
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvs	.L531
	vldr.32	s15, [sp, #4]
	vadd.f32	s15, s15, s15
	vldr.32	s14, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	beq	.L531
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L532
	mov	r3, #1056964608
	b	.L533
.L532:
	mov	r3, #1073741824
.L533:
	str	r3, [sp, #12]	@ float
.L536:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L534
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #4]
.L534:
	ldr	r3, [sp]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L538
	vldr.32	s15, [sp, #12]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [sp, #12]
	b	.L536
.L538:
	nop
.L531:
	ldr	r3, [sp, #4]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.syntax unified
	.arm
	.type	ldexp, %function
ldexp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	vstr.64	d0, [sp, #8]
	str	r0, [sp, #4]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvs	.L541
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L541
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L542
	mov	r2, #0
	ldr	r3, .L550
	b	.L543
.L542:
	mov	r2, #0
	mov	r3, #1073741824
.L543:
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L546:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L544
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #8]
.L544:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L548
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #16]
	b	.L546
.L548:
	nop
.L541:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L551:
	.align	2
.L550:
	.word	1071644672
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.syntax unified
	.arm
	.type	ldexpl, %function
ldexpl:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	vstr.64	d0, [sp, #8]
	str	r0, [sp, #4]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvs	.L553
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L553
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L554
	mov	r2, #0
	ldr	r3, .L562
	b	.L555
.L554:
	mov	r2, #0
	mov	r3, #1073741824
.L555:
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L558:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L556
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #8]
.L556:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L560
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #16]
	b	.L558
.L560:
	nop
.L553:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L563:
	.align	2
.L562:
	.word	1071644672
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	b	.L565
.L566:
	ldr	r3, [sp, #20]
	add	r2, r3, #1
	str	r2, [sp, #20]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	add	r2, r3, #1
	str	r2, [sp, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	eor	r2, r2, r1
	and	r2, r2, #255
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L565:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L566
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [sp, #12]
	bl	strlen
	mov	r2, r0
	ldr	r3, [sp, #12]
	add	r3, r3, r0
	str	r3, [sp, #20]
	b	.L570
.L572:
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L570:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L571
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L572
.L571:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L573
	ldr	r3, [sp, #20]
	mov	r2, #0
	strb	r2, [r3]
.L573:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.type	strnlen, %function
strnlen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L577
.L582:
	nop
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L577:
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	cmp	r2, r3
	bcs	.L578
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L582
.L578:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.syntax unified
	.arm
	.type	strpbrk, %function
strpbrk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.L585
.L589:
	ldr	r3, [sp]
	str	r3, [sp, #12]
	b	.L586
.L588:
	ldr	r3, [sp, #12]
	add	r2, r3, #1
	str	r2, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L586
	ldr	r3, [sp, #4]
	b	.L587
.L586:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L588
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L585:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L589
	mov	r3, #0
.L587:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.syntax unified
	.arm
	.type	strrchr, %function
strrchr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	str	r1, [sp, #4]
	mov	r2, #0
	str	r2, [sp, #12]
.L593:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [sp, #4]
	cmp	r2, r1
	bne	.L592
	str	r3, [sp, #12]
.L592:
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L593
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	ldr	r0, [sp]
	bl	strlen
	str	r0, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L599
	ldr	r3, [sp, #4]
	b	.L598
.L601:
	ldr	r2, [sp, #8]
	ldr	r1, [sp]
	ldr	r0, [sp, #12]
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L600
	ldr	r3, [sp, #12]
	b	.L598
.L600:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L599:
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	strchr
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L601
	mov	r3, #0
.L598:
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.syntax unified
	.arm
	.type	copysign, %function
copysign:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d7, [sp, #8]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L604
	vldr.64	d7, [sp]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L606
.L604:
	vldr.64	d7, [sp, #8]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L607
	vldr.64	d7, [sp]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L607
.L606:
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	b	.L610
.L607:
	vldr.64	d7, [sp, #8]
.L610:
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.syntax unified
	.arm
	.type	memmem, %function
memmem:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	sub	r3, r2, r3
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #16]
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L615
	ldr	r3, [sp, #12]
	b	.L616
.L615:
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L617
	mov	r3, #0
	b	.L616
.L617:
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L618
.L620:
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L619
	ldr	r3, [sp, #20]
	add	r0, r3, #1
	ldr	r3, [sp, #4]
	add	r1, r3, #1
	ldr	r3, [sp]
	sub	r3, r3, #1
	mov	r2, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L619
	ldr	r3, [sp, #20]
	b	.L616
.L619:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L618:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L620
	mov	r3, #0
.L616:
	mov	r0, r3
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	memcpy
	mov	r2, r0
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.syntax unified
	.arm
	.type	frexp, %function
frexp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	vstr.64	d0, [sp, #8]
	str	r0, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #20]
	vldr.64	d7, [sp, #8]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L626
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	vstr.64	d7, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #20]
.L626:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	blt	.L641
	b	.L630
.L631:
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	vldr.64	d6, [sp, #8]
	vmov.f64	d5, #2.0e+0
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [sp, #8]
.L630:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bge	.L631
	b	.L632
.L641:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L632
	vldr.64	d7, [sp, #8]
	vcmp.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L632
	b	.L634
.L635:
	ldr	r3, [sp, #16]
	sub	r3, r3, #1
	str	r3, [sp, #16]
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vstr.64	d7, [sp, #8]
.L634:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L635
.L632:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #16]
	str	r2, [r3]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L636
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	vstr.64	d7, [sp, #8]
.L636:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	stm	sp, {r2-r3}
	mov	r2, #0
	mov	r3, #0
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	b	.L644
.L646:
	ldr	r3, [sp, #16]
	and	r3, r3, #1
	mov	r2, #0
	orrs	r3, r3, r2
	beq	.L645
	ldr	r3, [sp, #24]
	ldr	r0, [sp, #28]
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	adds	r2, r3, r2
	adc	r3, r0, r1
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L645:
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	adds	r1, r3, r3
	adc	r3, r2, r2
	str	r1, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #20]
	lsr	r3, r0, #1
	orr	r3, r3, r2, lsl #31
	lsr	r1, r2, #1
	str	r3, [sp, #16]
	str	r1, [sp, #20]
.L644:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orrs	r3, r2, r3
	bne	.L646
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.syntax unified
	.arm
	.type	udivmodsi4, %function
udivmodsi4:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #16]
	b	.L650
.L652:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L650:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L653
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L653
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L652
	b	.L653
.L655:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L654
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L654:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L653:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L655
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L656
	ldr	r3, [sp, #12]
	b	.L657
.L656:
	ldr	r3, [sp, #16]
.L657:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	mov	r3, r0
	strb	r0, [sp, #7]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L660
	mov	r3, #7
	b	.L661
.L660:
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsl	r3, r3, #8
	mov	r0, r3
	bl	__clzsi2
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	sub	r3, r3, #1
.L661:
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	stm	sp, {r0-r1}
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L664
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	mvn	r2, r2
	mvn	r3, r3
	str	r2, [sp]
	str	r3, [sp, #4]
.L664:
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	orrs	r3, r2, r3
	bne	.L665
	mov	r3, #63
	b	.L666
.L665:
	ldmia	sp, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	bl	__clzdi2
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	sub	r3, r3, #1
.L666:
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.syntax unified
	.arm
	.type	__mulsi3, %function
__mulsi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L669
.L671:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L670
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L670:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsl	r3, r3, #1
	str	r3, [sp]
.L669:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L671
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #3
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	bic	r3, r3, #7
	str	r3, [sp, #32]
	ldr	r3, [sp, #12]
	str	r3, [sp, #24]
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcc	.L675
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bls	.L682
.L675:
	mov	r3, #0
	str	r3, [sp, #36]
	b	.L677
.L678:
	ldr	r3, [sp, #36]
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	ldr	r2, [sp, #36]
	lsl	r2, r2, #3
	ldr	r1, [sp, #12]
	add	r1, r1, r2
	ldmia	r3, {r2-r3}
	stm	r1, {r2-r3}
	ldr	r3, [sp, #36]
	add	r3, r3, #1
	str	r3, [sp, #36]
.L677:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bcc	.L678
	b	.L679
.L680:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #32]
	add	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #32]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #32]
	add	r3, r3, #1
	str	r3, [sp, #32]
.L679:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bhi	.L680
	b	.L681
.L683:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L682:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L683
	nop
.L681:
	nop
	add	sp, sp, #40
	@ sp needed
	mov	pc, lr
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #24]
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcc	.L686
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bls	.L692
.L686:
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L688
.L689:
	ldr	r3, [sp, #28]
	lsl	r3, r3, #1
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #28]
	lsl	r3, r3, #1
	ldr	r1, [sp, #12]
	add	r3, r1, r3
	ldrsh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L688:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bcc	.L689
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L691
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	ldr	r2, [sp, #16]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	ldr	r1, [sp, #20]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L691
.L693:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L692:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L693
	nop
.L691:
	nop
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #2
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	bic	r3, r3, #3
	str	r3, [sp, #32]
	ldr	r3, [sp, #12]
	str	r3, [sp, #24]
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcc	.L696
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bls	.L703
.L696:
	mov	r3, #0
	str	r3, [sp, #36]
	b	.L698
.L699:
	ldr	r3, [sp, #36]
	lsl	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #36]
	lsl	r3, r3, #2
	ldr	r1, [sp, #12]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #36]
	add	r3, r3, #1
	str	r3, [sp, #36]
.L698:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bcc	.L699
	b	.L700
.L701:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #32]
	add	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #32]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #32]
	add	r3, r3, #1
	str	r3, [sp, #32]
.L700:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bhi	.L701
	b	.L702
.L704:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L703:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L704
	nop
.L702:
	nop
	add	sp, sp, #40
	@ sp needed
	mov	pc, lr
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.syntax unified
	.arm
	.type	__modi, %function
__modi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.syntax unified
	.arm
	.type	__uitod, %function
__uitod:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d7, s15
	vmov.f64	d0, d7
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.syntax unified
	.arm
	.type	__uitof, %function
__uitof:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vmov.f32	s0, s15
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.syntax unified
	.arm
	.type	__ulltod, %function
__ulltod:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	stm	sp, {r0-r1}
	ldmia	sp, {r0-r1}
	bl	__aeabi_ul2d
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.syntax unified
	.arm
	.type	__ulltof, %function
__ulltof:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	stm	sp, {r0-r1}
	ldmia	sp, {r0-r1}
	bl	__aeabi_ul2f
	mov	r3, r0	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.syntax unified
	.arm
	.type	__umodi, %function
__umodi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r0, r3
	bl	__aeabi_uidivmod
	mov	r3, r1
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.syntax unified
	.arm
	.type	__clzhi2, %function
__clzhi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	strh	r0, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L725
.L728:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	rsb	r3, r3, #15
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L730
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L725:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L728
	b	.L727
.L730:
	nop
.L727:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.syntax unified
	.arm
	.type	__ctzhi2, %function
__ctzhi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	strh	r0, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L733
.L736:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L738
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L733:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L736
	b	.L735
.L738:
	nop
.L735:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.syntax unified
	.arm
	.type	__fixunssfsi, %function
__fixunssfsi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.32	s0, [sp, #4]
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L747
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L745
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L747
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	add	r3, r3, #32768
	b	.L743
.L745:
	vldr.32	s15, [sp, #4]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
.L743:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L748:
	.align	2
.L747:
	.word	1191182336
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.syntax unified
	.arm
	.type	__parityhi2, %function
__parityhi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	strh	r0, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L750
.L752:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L751
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L751:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L750:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L752
	ldr	r3, [sp, #8]
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.syntax unified
	.arm
	.type	__popcounthi2, %function
__popcounthi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	strh	r0, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L756
.L758:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L757
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L757:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L756:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L758
	ldr	r3, [sp, #8]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.syntax unified
	.arm
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L762
.L764:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L763
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L763:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsl	r3, r3, #1
	str	r3, [sp]
.L762:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L764
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.syntax unified
	.arm
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #12]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L770
	mov	r3, #0
	b	.L769
.L772:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L771
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L771:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsr	r3, r3, #1
	str	r3, [sp]
.L770:
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L772
	ldr	r3, [sp, #12]
.L769:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.syntax unified
	.arm
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #16]
	b	.L775
.L777:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L775:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L778
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L778
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L777
	b	.L778
.L780:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L779
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L779:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L778:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L780
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L781
	ldr	r3, [sp, #12]
	b	.L782
.L781:
	ldr	r3, [sp, #16]
.L782:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.syntax unified
	.arm
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	vstr.32	s0, [sp, #4]
	vstr.32	s1, [sp]
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L792
	mvn	r3, #0
	b	.L787
.L792:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L793
	mov	r3, #1
	b	.L787
.L793:
	mov	r3, #0
.L787:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.syntax unified
	.arm
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.64	d0, [sp, #8]
	vstr.64	d1, [sp]
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L803
	mvn	r3, #0
	b	.L798
.L803:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L804
	mov	r3, #1
	b	.L798
.L804:
	mov	r3, #0
.L798:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.syntax unified
	.arm
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	asr	r2, r3, #31
	mov	r1, r3
	mov	r0, r2
	ldr	r3, [sp]
	asr	ip, r3, #31
	mov	r2, r3
	mov	r3, ip
	mul	r0, r2, r0
	mul	r3, r1, r3
	add	r0, r0, r3
	umull	ip, r3, r1, r2
	add	r3, r0, r3
	mov	r2, ip
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.syntax unified
	.arm
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp, #4]
	mov	r2, #0
	mov	r1, r3
	mov	r0, r2
	ldr	r3, [sp]
	mov	ip, #0
	mov	r2, r3
	mov	r3, ip
	mul	r0, r2, r0
	mul	r3, r1, r3
	add	r0, r0, r3
	umull	ip, r3, r1, r2
	add	r3, r0, r3
	mov	r2, ip
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.syntax unified
	.arm
	.type	__mulhi3, %function
__mulhi3:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #12]
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L813
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
	mov	r3, #1
	str	r3, [sp, #16]
.L813:
	mov	r3, #0
	strb	r3, [sp, #23]
	b	.L814
.L817:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L815
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L815:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	asr	r3, r3, #1
	str	r3, [sp]
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	r3, [sp, #23]
.L814:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L816
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L817
.L816:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L818
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L820
.L818:
	ldr	r3, [sp, #12]
.L820:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.syntax unified
	.arm
	.type	__divsi3, %function
__divsi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #12]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L823
	ldr	r3, [sp, #4]
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	str	r3, [sp, #12]
.L823:
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L824
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	str	r3, [sp, #12]
.L824:
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #0
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L825
	ldr	r3, [sp, #8]
	rsb	r3, r3, #0
	str	r3, [sp, #8]
.L825:
	ldr	r3, [sp, #8]
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #0
	str	r3, [sp, #12]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L829
	ldr	r3, [sp, #4]
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #12]
.L829:
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L830
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
.L830:
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L831
	ldr	r3, [sp, #8]
	rsb	r3, r3, #0
	str	r3, [sp, #8]
.L831:
	ldr	r3, [sp, #8]
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	str	r2, [sp]
	strh	r0, [sp, #6]	@ movhi
	mov	r3, r1	@ movhi
	strh	r1, [sp, #4]	@ movhi
	mov	r3, #1
	strh	r3, [sp, #14]	@ movhi
	mov	r3, #0
	strh	r3, [sp, #12]	@ movhi
	b	.L835
.L837:
	ldrh	r3, [sp, #4]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [sp, #4]	@ movhi
	ldrh	r3, [sp, #14]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
.L835:
	ldrh	r2, [sp, #4]
	ldrh	r3, [sp, #6]
	cmp	r2, r3
	bcs	.L838
	ldrh	r3, [sp, #14]
	cmp	r3, #0
	beq	.L838
	ldrsh	r3, [sp, #4]
	cmp	r3, #0
	bge	.L837
	b	.L838
.L840:
	ldrh	r2, [sp, #6]
	ldrh	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L839
	ldrh	r2, [sp, #6]	@ movhi
	ldrh	r3, [sp, #4]	@ movhi
	sub	r3, r2, r3
	strh	r3, [sp, #6]	@ movhi
	ldrh	r2, [sp, #12]	@ movhi
	ldrh	r3, [sp, #14]	@ movhi
	orr	r3, r2, r3
	strh	r3, [sp, #12]	@ movhi
.L839:
	ldrh	r3, [sp, #14]
	lsr	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
	ldrh	r3, [sp, #4]
	lsr	r3, r3, #1
	strh	r3, [sp, #4]	@ movhi
.L838:
	ldrh	r3, [sp, #14]
	cmp	r3, #0
	bne	.L840
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L841
	ldrh	r3, [sp, #6]
	b	.L842
.L841:
	ldrh	r3, [sp, #12]
.L842:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.syntax unified
	.arm
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #16]
	b	.L845
.L847:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L845:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L848
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L848
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L847
	b	.L848
.L850:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L849
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L849:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L848:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L850
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L851
	ldr	r3, [sp, #12]
	b	.L852
.L851:
	ldr	r3, [sp, #16]
.L852:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.syntax unified
	.arm
	.type	__ashldi3, %function
__ashldi3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	mov	r3, #32
	str	r3, [sp, #36]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L855
	mov	r3, #0
	str	r3, [sp, #16]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	lsl	r3, r2, r3
	str	r3, [sp, #20]
	b	.L856
.L855:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L857
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	b	.L859
.L857:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	lsl	r3, r2, r3
	str	r3, [sp, #16]
	ldr	r3, [sp, #28]
	mov	r2, r3
	ldr	r3, [sp, #4]
	lsl	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #36]
	ldr	r3, [sp, #4]
	sub	r3, r0, r3
	lsr	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [sp, #20]
.L856:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
.L859:
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #40
	@ sp needed
	mov	pc, lr
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.syntax unified
	.arm
	.type	__ashrdi3, %function
__ashrdi3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	mov	r3, #32
	str	r3, [sp, #36]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L862
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #36]
	sub	r3, r3, #1
	asr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	asr	r3, r2, r3
	str	r3, [sp, #16]
	b	.L863
.L862:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L864
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	b	.L866
.L864:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	asr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #28]
	mov	r1, r3
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #4]
	sub	r3, r2, r3
	lsl	r2, r1, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	lsr	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L863:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
.L866:
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #40
	@ sp needed
	mov	pc, lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldr	r2, [sp, #4]
	lsr	r3, r2, #24
	mov	r0, #0
	ldr	r1, [sp, #4]
	lsr	r2, r1, #8
	and	r2, r2, #65280
	mov	ip, #0
	orr	r1, r3, r2
	orr	r2, r0, ip
	ldr	ip, [sp]
	ldr	r0, [sp, #4]
	lsr	r3, ip, #24
	orr	r3, r3, r0, lsl #8
	and	r3, r3, #16711680
	mov	r0, #0
	orr	r1, r1, r3
	orr	r2, r2, r0
	ldr	ip, [sp]
	ldr	r0, [sp, #4]
	lsr	r3, ip, #8
	orr	r3, r3, r0, lsl #24
	and	r3, r3, #-16777216
	mov	r0, #0
	orr	r1, r1, r3
	orr	r2, r2, r0
	ldr	r0, [sp]
	ldr	ip, [sp, #4]
	lsl	r3, ip, #8
	orr	r3, r3, r0, lsr #24
	mov	r0, #0
	and	r3, r3, #255
	orr	r1, r1, r0
	orr	r2, r2, r3
	ldr	r0, [sp]
	ldr	ip, [sp, #4]
	lsl	r3, ip, #24
	orr	r3, r3, r0, lsr #8
	mov	r0, #0
	and	r3, r3, #65280
	orr	r1, r1, r0
	orr	r2, r2, r3
	ldr	r0, [sp]
	lsl	r3, r0, #8
	mov	r0, #0
	and	r3, r3, #16711680
	orr	r0, r1, r0
	orr	r2, r2, r3
	ldr	ip, [sp]
	lsl	r3, ip, #24
	mov	r1, #0
	orr	r1, r0, r1
	orr	r3, r2, r3
	mov	r2, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.syntax unified
	.arm
	.type	__bswapsi2, %function
__bswapsi2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r2, r3, #24
	ldr	r3, [sp, #4]
	lsr	r3, r3, #8
	and	r3, r3, #65280
	orr	r2, r2, r3
	ldr	r3, [sp, #4]
	lsl	r3, r3, #8
	and	r3, r3, #16711680
	orr	r2, r2, r3
	ldr	r3, [sp, #4]
	lsl	r3, r3, #24
	orr	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.syntax unified
	.arm
	.type	__clzsi2, %function
__clzsi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #65536
	bcs	.L875
	mov	r3, #16
	b	.L876
.L875:
	mov	r3, #0
.L876:
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	rsb	r3, r3, #16
	ldr	r2, [sp, #20]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #65280
	cmp	r3, #0
	bne	.L877
	mov	r3, #8
	b	.L878
.L877:
	mov	r3, #0
.L878:
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	rsb	r3, r3, #8
	ldr	r2, [sp, #20]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #240
	cmp	r3, #0
	bne	.L879
	mov	r3, #4
	b	.L880
.L879:
	mov	r3, #0
.L880:
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	rsb	r3, r3, #4
	ldr	r2, [sp, #20]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #12
	cmp	r3, #0
	bne	.L881
	mov	r3, #2
	b	.L882
.L881:
	mov	r3, #0
.L882:
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	rsb	r3, r3, #2
	ldr	r2, [sp, #20]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	mov	r2, r3
	ldr	r3, [sp, #20]
	rsb	r3, r3, #2
	mul	r2, r3, r2
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.syntax unified
	.arm
	.type	__cmpdi2, %function
__cmpdi2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	stm	sp, {r2-r3}
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldmia	sp, {r2-r3}
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bge	.L886
	mov	r3, #0
	b	.L891
.L886:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	ble	.L888
	mov	r3, #2
	b	.L891
.L888:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L889
	mov	r3, #0
	b	.L891
.L889:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L890
	mov	r3, #2
	b	.L891
.L890:
	mov	r3, #1
.L891:
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.syntax unified
	.arm
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	stm	sp, {r2-r3}
	ldmia	sp, {r2-r3}
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__cmpdi2
	mov	r3, r0
	sub	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.syntax unified
	.arm
	.type	__ctzsi2, %function
__ctzsi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	bne	.L897
	mov	r3, #16
	b	.L898
.L897:
	mov	r3, #0
.L898:
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L899
	mov	r3, #8
	b	.L900
.L899:
	mov	r3, #0
.L900:
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L901
	mov	r3, #4
	b	.L902
.L901:
	mov	r3, #0
.L902:
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L903
	mov	r3, #2
	b	.L904
.L903:
	mov	r3, #0
.L904:
	str	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	and	r3, r3, #3
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	mvn	r3, r3
	and	r2, r3, #1
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	rsb	r2, r2, #0
	and	r2, r2, r3
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.syntax unified
	.arm
	.type	__lshrdi3, %function
__lshrdi3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	mov	r3, #32
	str	r3, [sp, #36]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L908
	mov	r3, #0
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	lsr	r3, r2, r3
	str	r3, [sp, #16]
	b	.L909
.L908:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L910
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	b	.L912
.L910:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #36]
	ldr	r3, [sp, #4]
	sub	r3, r1, r3
	lsl	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	lsr	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L909:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
.L912:
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #40
	@ sp needed
	mov	pc, lr
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.syntax unified
	.arm
	.type	__muldsi3, %function
__muldsi3:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #16
	str	r3, [sp, #28]
	mvn	r2, #0
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	and	r3, r3, r2
	ldr	r1, [sp]
	ldr	r2, [sp, #24]
	and	r2, r2, r1
	mul	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	and	r3, r3, r2
	str	r3, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	ldr	r1, [sp]
	ldr	r2, [sp, #24]
	and	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #24]
	and	r1, r1, r3
	ldr	r3, [sp, #28]
	lsl	r3, r1, r3
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	and	r3, r3, r2
	str	r3, [sp, #8]
	ldr	r2, [sp]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #24]
	and	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #24]
	and	r1, r1, r3
	ldr	r3, [sp, #28]
	lsl	r3, r1, r3
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	mov	r1, r3
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	add	r3, r1, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	mov	r0, r3
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #28]
	lsr	r3, r2, r3
	ldr	r1, [sp]
	ldr	r2, [sp, #28]
	lsr	r2, r1, r2
	mul	r3, r2, r3
	add	r3, r0, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #44
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	stm	sp, {r2-r3}
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	ldmia	sp, {r2-r3}
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	mov	r1, r2
	mov	r0, r3
	bl	__muldsi3
	mov	r2, r0
	mov	r3, r1
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	mov	r1, r3
	ldr	r3, [sp, #36]
	mov	r2, r3
	ldr	r3, [sp, #24]
	mul	r2, r3, r2
	ldr	r3, [sp, #32]
	ldr	r0, [sp, #28]
	mul	r3, r0, r3
	add	r3, r2, r3
	add	r3, r1, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #44
	@ sp needed
	ldr	pc, [sp], #4
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.syntax unified
	.arm
	.type	__negdi2, %function
__negdi2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	rsbs	r2, r2, #0
	rsc	r3, r3, #0
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.syntax unified
	.arm
	.type	__paritydi2, %function
__paritydi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	stm	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	mov	r2, r3
	ldr	r3, [sp, #8]
	eor	r3, r3, r2
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsr	r3, r3, #16
	ldr	r2, [sp, #20]
	eor	r3, r3, r2
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsr	r3, r3, #8
	ldr	r2, [sp, #20]
	eor	r3, r3, r2
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsr	r3, r3, #4
	ldr	r2, [sp, #20]
	eor	r3, r3, r2
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	and	r3, r3, #15
	ldr	r2, .L926
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L927:
	.align	2
.L926:
	.word	27030
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.syntax unified
	.arm
	.type	__paritysi2, %function
__paritysi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #16
	ldr	r2, [sp, #12]
	eor	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #8
	ldr	r2, [sp, #12]
	eor	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #4
	ldr	r2, [sp, #12]
	eor	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	and	r3, r3, #15
	ldr	r2, .L931
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L932:
	.align	2
.L931:
	.word	27030
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #28
	stm	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #20]
	lsr	r3, r0, #1
	orr	r3, r3, r2, lsl #31
	lsr	r1, r2, #1
	ldr	r2, .L936
	ldr	r0, .L936
	and	r2, r2, r3
	and	r3, r1, r0
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	subs	r2, r0, r2
	sbc	r3, r1, r3
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #20]
	lsr	r3, r0, #2
	orr	r3, r3, r2, lsl #30
	lsr	r1, r2, #2
	ldr	r0, .L936+4
	ldr	r2, .L936+4
	and	r3, r3, r0
	and	r0, r1, r2
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	lr, .L936+4
	ldr	ip, .L936+4
	and	r2, r2, lr
	and	r1, r1, ip
	adds	r2, r3, r2
	adc	r3, r0, r1
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #20]
	lsr	r3, r0, #4
	orr	r3, r3, r2, lsl #28
	lsr	r1, r2, #4
	ldr	r2, [sp, #16]
	ldr	r0, [sp, #20]
	adds	r2, r3, r2
	adc	r3, r1, r0
	ldr	r0, .L936+8
	ldr	r1, .L936+8
	and	r2, r2, r0
	and	r3, r3, r1
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	mov	r1, r2
	mov	r2, r1
	add	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #16
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #8
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	and	r3, r3, #127
	mov	r0, r3
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
.L937:
	.align	2
.L936:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #1
	ldr	r3, .L941
	and	r3, r3, r2
	ldr	r2, [sp, #12]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #2
	ldr	r2, .L941+4
	and	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, .L941+4
	and	r3, r3, r1
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #4
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	ldr	r3, .L941+8
	and	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #16
	ldr	r2, [sp, #12]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #8
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	and	r3, r3, #63
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L942:
	.align	2
.L941:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	vstr.64	d0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #31
	and	r3, r3, #255
	str	r3, [sp, #20]
	mov	r2, #0
	ldr	r3, .L954
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L947:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L944
	vldr.64	d6, [sp, #24]
	vldr.64	d7, [sp, #8]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #24]
.L944:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L952
	vldr.64	d7, [sp, #8]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #8]
	b	.L947
.L952:
	nop
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L948
	vmov.f64	d5, #1.0e+0
	vldr.64	d6, [sp, #24]
	vdiv.f64	d7, d5, d6
	b	.L950
.L948:
	vldr.64	d7, [sp, #24]
.L950:
	vmov.f64	d0, d7
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
.L955:
	.align	2
.L954:
	.word	1072693248
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.syntax unified
	.arm
	.type	__powisf2, %function
__powisf2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	vstr.32	s0, [sp, #4]
	str	r0, [sp]
	ldr	r3, [sp]
	lsr	r3, r3, #31
	and	r3, r3, #255
	str	r3, [sp, #8]
	mov	r3, #1065353216
	str	r3, [sp, #12]	@ float
.L960:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L957
	vldr.32	s14, [sp, #12]
	vldr.32	s15, [sp, #4]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #12]
.L957:
	ldr	r3, [sp]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L965
	vldr.32	s15, [sp, #4]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [sp, #4]
	b	.L960
.L965:
	nop
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L961
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [sp, #12]
	vdiv.f32	s15, s13, s14
	b	.L963
.L961:
	vldr.32	s15, [sp, #12]
.L963:
	vmov.f32	s0, s15
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.syntax unified
	.arm
	.type	__ucmpdi2, %function
__ucmpdi2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	stm	sp, {r2-r3}
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldmia	sp, {r2-r3}
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcs	.L968
	mov	r3, #0
	b	.L973
.L968:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L970
	mov	r3, #2
	b	.L973
.L970:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L971
	mov	r3, #0
	b	.L973
.L971:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L972
	mov	r3, #2
	b	.L973
.L972:
	mov	r3, #1
.L973:
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.syntax unified
	.arm
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	stm	sp, {r2-r3}
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	ldmia	sp, {r2-r3}
	bl	__ucmpdi2
	mov	r3, r0
	sub	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
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
