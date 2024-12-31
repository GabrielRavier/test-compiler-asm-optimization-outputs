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
	b	.L10
.L12:
	ldr	r3, [sp]
	sub	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L10:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [sp, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bne	.L12
.L11:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	b	.L14
.L13:
	mov	r3, #0
.L14:
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
	b	.L16
.L18:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L16:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #8]
	cmp	r3, r2
	bne	.L18
.L17:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [sp, #20]
	b	.L21
.L19:
	mov	r3, #0
.L21:
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
	b	.L23
.L25:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
.L23:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L25
.L24:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	b	.L28
.L26:
	mov	r3, #0
.L28:
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
	b	.L30
.L31:
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
.L30:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L31
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
	b	.L34
.L36:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #8]
	cmp	r3, r2
	bne	.L34
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	b	.L35
.L34:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L36
	mov	r3, #0
.L35:
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
	b	.L38
.L39:
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
.L38:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L39
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
	b	.L42
.L43:
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L42:
	ldr	r3, [sp]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L43
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
	b	.L46
.L48:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L46:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp]
	cmp	r3, r2
	bne	.L48
.L47:
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
.L53:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [sp, #4]
	cmp	r2, r1
	bne	.L51
	b	.L52
.L51:
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L53
	mov	r3, #0
.L52:
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
	b	.L55
.L57:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
.L55:
	ldr	r3, [sp, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L56
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L57
.L56:
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
	b	.L60
.L61:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L60:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
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
	bne	.L66
	mov	r3, #0
	b	.L65
.L68:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L66:
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L68
.L67:
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
.L65:
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
	b	.L70
.L71:
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
.L70:
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bgt	.L71
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
	beq	.L77
	ldr	r3, [sp, #4]
	cmp	r3, #9
	bne	.L78
.L77:
	mov	r3, #1
	b	.L80
.L78:
	mov	r3, #0
.L80:
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
	bls	.L82
	ldr	r3, [sp, #4]
	cmp	r3, #127
	bne	.L83
.L82:
	mov	r3, #1
	b	.L85
.L83:
	mov	r3, #0
.L85:
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
	beq	.L95
	ldr	r3, [sp, #4]
	sub	r3, r3, #9
	cmp	r3, #4
	bhi	.L96
.L95:
	mov	r3, #1
	b	.L98
.L96:
	mov	r3, #0
.L98:
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
	bls	.L102
	ldr	r3, [sp, #4]
	sub	r3, r3, #127
	cmp	r3, #32
	bls	.L102
	ldr	r3, [sp, #4]
	sub	r3, r3, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L102
	ldr	r3, [sp, #4]
	sub	r3, r3, #65280
	sub	r3, r3, #249
	cmp	r3, #2
	bhi	.L103
.L102:
	mov	r3, #1
	b	.L105
.L103:
	mov	r3, #0
.L105:
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
	bhi	.L109
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	and	r3, r3, #127
	cmp	r3, #32
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L110
.L109:
	ldr	r3, [sp, #4]
	ldr	r2, .L115
	cmp	r3, r2
	bls	.L111
	ldr	r3, [sp, #4]
	sub	r3, r3, #8192
	sub	r3, r3, #42
	ldr	r2, .L115+4
	cmp	r3, r2
	bls	.L111
	ldr	r3, [sp, #4]
	sub	r3, r3, #57344
	ldr	r2, .L115+8
	cmp	r3, r2
	bhi	.L112
.L111:
	mov	r3, #1
	b	.L110
.L112:
	ldr	r3, [sp, #4]
	sub	r3, r3, #65280
	sub	r3, r3, #252
	ldr	r2, .L115+12
	cmp	r3, r2
	bhi	.L113
	ldr	r2, [sp, #4]
	ldr	r3, .L115+16
	and	r3, r3, r2
	ldr	r2, .L115+16
	cmp	r3, r2
	bne	.L114
.L113:
	mov	r3, #0
	b	.L110
.L114:
	mov	r3, #1
.L110:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L116:
	.align	2
.L115:
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
	bls	.L118
	ldr	r3, [sp, #4]
	orr	r3, r3, #32
	sub	r3, r3, #97
	cmp	r3, #5
	bhi	.L119
.L118:
	mov	r3, #1
	b	.L121
.L119:
	mov	r3, #0
.L121:
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
	bvc	.L125
	vldr.64	d7, [sp, #8]
	b	.L126
.L125:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L127
	vldr.64	d7, [sp]
	b	.L126
.L127:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L132
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vsub.f64	d7, d6, d7
	b	.L126
.L132:
	vldr.64	d7, .L133
.L126:
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L134:
	.align	3
.L133:
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
	bvc	.L136
	vldr.32	s15, [sp, #4]
	b	.L137
.L136:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L138
	vldr.32	s15, [sp]
	b	.L137
.L138:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L143
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vsub.f32	s15, s14, s15
	b	.L137
.L143:
	vldr.32	s15, .L144
.L137:
	vmov.f32	s0, s15
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L145:
	.align	2
.L144:
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
	bvc	.L147
	ldmia	sp, {r2-r3}
	b	.L148
.L147:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L149
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L148
.L149:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L150
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L151
	ldmia	sp, {r2-r3}
	b	.L148
.L151:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L148
.L150:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L157
	ldmia	sp, {r2-r3}
	b	.L148
.L157:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
.L148:
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
	bvc	.L159
	ldr	r3, [sp]	@ float
	b	.L160
.L159:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L161
	ldr	r3, [sp, #4]	@ float
	b	.L160
.L161:
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L162
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L163
	ldr	r3, [sp]	@ float
	b	.L160
.L163:
	ldr	r3, [sp, #4]	@ float
	b	.L160
.L162:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L169
	ldr	r3, [sp]	@ float
	b	.L160
.L169:
	ldr	r3, [sp, #4]	@ float
.L160:
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
	bvc	.L171
	ldmia	sp, {r2-r3}
	b	.L172
.L171:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L173
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L172
.L173:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L174
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L175
	ldmia	sp, {r2-r3}
	b	.L172
.L175:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L172
.L174:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L181
	ldmia	sp, {r2-r3}
	b	.L172
.L181:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
.L172:
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
	bvc	.L183
	ldmia	sp, {r2-r3}
	b	.L184
.L183:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L185
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L184
.L185:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L186
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L187
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L184
.L187:
	ldmia	sp, {r2-r3}
	b	.L184
.L186:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L193
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L184
.L193:
	ldmia	sp, {r2-r3}
.L184:
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
	bvc	.L195
	ldr	r3, [sp]	@ float
	b	.L196
.L195:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L197
	ldr	r3, [sp, #4]	@ float
	b	.L196
.L197:
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L198
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L199
	ldr	r3, [sp, #4]	@ float
	b	.L196
.L199:
	ldr	r3, [sp]	@ float
	b	.L196
.L198:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L205
	ldr	r3, [sp, #4]	@ float
	b	.L196
.L205:
	ldr	r3, [sp]	@ float
.L196:
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
	bvc	.L207
	ldmia	sp, {r2-r3}
	b	.L208
.L207:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L209
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L208
.L209:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L210
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L211
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L208
.L211:
	ldmia	sp, {r2-r3}
	b	.L208
.L210:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L217
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L208
.L217:
	ldmia	sp, {r2-r3}
.L208:
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
	ldr	r3, .L222
	str	r3, [sp, #12]
	b	.L219
.L220:
	ldr	r3, [sp, #8]
	and	r3, r3, #63
	ldr	r2, .L222+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	strb	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #6
	str	r3, [sp, #8]
.L219:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L220
	ldr	r3, [sp, #12]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L222
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L223:
	.align	2
.L222:
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
	ldr	r1, [sp, #4]
	sub	r1, r1, #1
	mov	r0, #0
	mov	r2, r1
	mov	r3, r0
	ldr	r1, .L225
	stm	r1, {r2-r3}
	nop
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L226:
	.align	2
.L225:
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
	push	{r4, r5, r6, lr}
	ldr	r1, .L229
	ldmia	r1, {r0-r1}
	ldr	ip, .L229+4
	mul	lr, ip, r1
	ldr	ip, .L229+8
	mul	ip, r0, ip
	add	ip, lr, ip
	ldr	lr, .L229+4
	umull	r2, r6, r0, lr
	mov	r3, r6
	add	r1, ip, r3
	mov	r3, r1
	adds	r4, r2, #1
	adc	r5, r3, #0
	ldr	r3, .L229
	stm	r3, {r4-r5}
	ldr	r3, .L229
	ldmia	r3, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #1
	mov	r3, #0
	mov	r3, r2
	mov	r0, r3
	pop	{r4, r5, r6, pc}
.L230:
	.align	2
.L229:
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
	bne	.L232
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #12]
	str	r2, [r3]
	b	.L231
.L232:
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
	beq	.L231
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #12]
	str	r2, [r3, #4]
.L231:
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
	beq	.L235
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L235:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L237
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
.L237:
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
	push	{r4, r5, r6, lr}
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r6, [sp]
	mov	r3, r6
	sub	r3, r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	mov	r4, r6
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r5, #3
	orr	r3, r3, r4, lsr #29
	lsl	r2, r4, #3
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L239
.L242:
	ldr	r3, [sp, #28]
	mul	r3, r6, r3
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	ldr	r3, [sp, #48]
	mov	r1, r2
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L240
	ldr	r3, [sp, #28]
	mul	r3, r6, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	b	.L241
.L240:
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L239:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcc	.L242
	ldr	r3, [sp, #16]
	add	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3]
	ldr	r3, [sp, #16]
	mul	r3, r6, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	ldr	r2, [sp]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	memcpy
	mov	r3, r0
.L241:
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.syntax unified
	.arm
	.type	lfind, %function
lfind:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r6, [sp]
	mov	r3, r6
	sub	r3, r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	mov	r4, r6
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r5, #3
	orr	r3, r3, r4, lsr #29
	lsl	r2, r4, #3
	ldr	r3, [sp, #8]
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L244
.L247:
	ldr	r3, [sp, #28]
	mul	r3, r6, r3
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	ldr	r3, [sp, #48]
	mov	r1, r2
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L245
	ldr	r3, [sp, #28]
	mul	r3, r6, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	b	.L246
.L245:
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L244:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcc	.L247
	mov	r3, #0
.L246:
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
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
	b	.L251
.L252:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L251:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L252
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L253
	cmp	r3, #45
	bne	.L255
	mov	r3, #1
	str	r3, [sp, #8]
.L253:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L255
.L256:
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
.L255:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L256
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L257
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L259
.L257:
	ldr	r3, [sp, #12]
.L259:
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
	b	.L261
.L262:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L261:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L262
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L263
	cmp	r3, #45
	bne	.L265
	mov	r3, #1
	str	r3, [sp, #8]
.L263:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L265
.L266:
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
.L265:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L266
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L267
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L269
.L267:
	ldr	r3, [sp, #12]
.L269:
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r0, [sp, #20]
	mov	r2, #0
	mov	r3, #0
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L271
.L272:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L271:
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L272
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L273
	cmp	r3, #45
	bne	.L275
	mov	r3, #1
	str	r3, [sp, #28]
.L273:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	b	.L275
.L276:
	add	r9, sp, #32
	ldmia	r9, {r8-r9}
	mov	r2, r8
	mov	r3, r9
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #2
	orr	r1, r1, r2, lsr #30
	lsl	r0, r2, #2
	mov	r2, r0
	mov	r3, r1
	adds	r4, r2, r8
	adc	r5, r3, r9
	adds	r3, r4, r4
	str	r3, [sp]
	adc	r3, r5, r5
	str	r3, [sp, #4]
	ldmia	sp, {r4-r5}
	mov	r2, r4
	mov	r3, r5
	ldr	r1, [sp, #20]
	add	r0, r1, #1
	str	r0, [sp, #20]
	ldrb	r1, [r1]	@ zero_extendqisi2
	sub	r1, r1, #48
	asr	r0, r1, #31
	mov	r10, r1
	mov	fp, r0
	subs	r1, r2, r10
	str	r1, [sp, #8]
	sbc	r3, r3, fp
	str	r3, [sp, #12]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #32]
	str	r3, [sp, #36]
.L275:
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L276
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L277
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	rsbs	r6, r2, #0
	rsc	r7, r3, #0
	b	.L279
.L277:
	add	r7, sp, #32
	ldmia	r7, {r6-r7}
.L279:
	mov	r2, r6
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
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
	b	.L281
.L286:
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
	bge	.L282
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	b	.L281
.L282:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L284
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
	b	.L281
.L284:
	ldr	r3, [sp, #20]
	b	.L285
.L281:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L286
	mov	r3, #0
.L285:
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
	b	.L288
.L292:
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
	bne	.L289
	ldr	r3, [sp, #20]
	b	.L290
.L289:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L291
	ldr	r2, [sp, #20]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #28]
	ldr	r3, [sp, #24]
	sub	r3, r3, #1
	str	r3, [sp, #24]
.L291:
	ldr	r3, [sp, #24]
	asr	r3, r3, #1
	str	r3, [sp, #24]
.L288:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L292
	mov	r3, #0
.L290:
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
	push	{r4, r5, r6, r7}
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldmia	sp, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	asr	r2, r1, #31
	asr	r3, r1, #31
	ldmia	sp, {r0-r1}
	eor	r4, r2, r0
	eor	r5, r3, r1
	subs	r6, r4, r2
	sbc	r7, r5, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7}
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
	mov	r4, r2
	mov	r5, r3
	ldmia	sp, {r0-r1}
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	bl	__aeabi_ldivmod
	ldr	r1, [sp, #12]
	stm	r1, {r4-r5}
	ldr	r1, [sp, #12]
	str	r2, [r1, #8]
	str	r3, [r1, #12]
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
	push	{r4, r5, r6, r7}
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldmia	sp, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	asr	r2, r1, #31
	asr	r3, r1, #31
	ldmia	sp, {r0-r1}
	eor	r4, r2, r0
	eor	r5, r3, r1
	subs	r6, r4, r2
	sbc	r7, r5, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7}
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
	mov	r4, r2
	mov	r5, r3
	ldmia	sp, {r0-r1}
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	bl	__aeabi_ldivmod
	ldr	r1, [sp, #12]
	stm	r1, {r4-r5}
	ldr	r1, [sp, #12]
	str	r2, [r1, #8]
	str	r3, [r1, #12]
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
	b	.L308
.L310:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
.L308:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L309
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	ldr	r2, [sp]
	cmp	r2, r3
	bne	.L310
.L309:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L311
	ldr	r3, [sp, #4]
	b	.L313
.L311:
	mov	r3, #0
.L313:
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
	b	.L315
.L317:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r3, r3, #4
	str	r3, [sp]
.L315:
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L316
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L316
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L317
.L316:
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L318
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L320
.L318:
	mvn	r3, #0
.L320:
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
.L322:
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
	bne	.L322
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
	b	.L325
.L326:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
.L325:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L326
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
	b	.L329
.L331:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #8]
.L329:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L330
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L330
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L330
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L331
.L330:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L332
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L333
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L336
.L333:
	mvn	r3, #0
	b	.L336
.L332:
	mov	r3, #0
.L336:
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
	b	.L338
.L340:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
.L338:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L339
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bne	.L340
.L339:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L341
	ldr	r3, [sp, #12]
	b	.L343
.L341:
	mov	r3, #0
.L343:
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
	b	.L345
.L347:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #8]
.L345:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L346
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L347
.L346:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L348
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L349
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L352
.L349:
	mvn	r3, #0
	b	.L352
.L348:
	mov	r3, #0
.L352:
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
	b	.L354
.L355:
	ldr	r2, [sp, #8]
	add	r3, r2, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	r1, r3, #4
	str	r1, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
.L354:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L355
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
	bne	.L358
	ldr	r3, [sp, #12]
	b	.L359
.L358:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r2, r2, r3
	ldr	r3, [sp, #4]
	lsl	r3, r3, #2
	cmp	r2, r3
	bcs	.L364
	b	.L361
.L362:
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
.L361:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L362
	b	.L363
.L365:
	ldr	r2, [sp, #8]
	add	r3, r2, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	r1, r3, #4
	str	r1, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
.L364:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L365
.L363:
	ldr	r3, [sp, #20]
.L359:
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
	b	.L367
.L368:
	ldr	r3, [sp, #12]
	add	r2, r3, #4
	str	r2, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
.L367:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L368
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
	bcs	.L371
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #16]
	b	.L372
.L373:
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
.L372:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L373
	b	.L377
.L371:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	beq	.L377
	b	.L375
.L376:
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
.L375:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L376
.L377:
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
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	ldr	r1, [sp, #4]
	sub	ip, r1, #32
	rsb	r0, r1, #32
	lsl	r7, r3, r1
	orr	r7, r7, r2, lsl ip
	orr	r7, r7, r2, lsr r0
	lsl	r6, r2, r1
	ldr	r1, [sp, #4]
	rsb	r1, r1, #0
	and	r1, r1, #63
	rsb	ip, r1, #32
	sub	r0, r1, #32
	lsr	r4, r2, r1
	orr	r4, r4, r3, lsl ip
	orr	r4, r4, r3, lsr r0
	lsr	r5, r3, r1
	orr	r8, r6, r4
	orr	r9, r7, r5
	mov	r4, r8
	mov	r5, r9
	mov	r2, r4
	mov	r3, r5
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9}
	mov	pc, lr
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	ldr	r1, [sp, #4]
	rsb	ip, r1, #32
	sub	r0, r1, #32
	lsr	r6, r2, r1
	orr	r6, r6, r3, lsl ip
	orr	r6, r6, r3, lsr r0
	lsr	r7, r3, r1
	ldr	r1, [sp, #4]
	rsb	r1, r1, #0
	and	r1, r1, #63
	sub	ip, r1, #32
	rsb	r0, r1, #32
	lsl	r5, r3, r1
	orr	r5, r5, r2, lsl ip
	orr	r5, r5, r2, lsr r0
	lsl	r4, r2, r1
	orr	r8, r6, r4
	orr	r9, r7, r5
	mov	r4, r8
	mov	r5, r9
	mov	r2, r4
	mov	r3, r5
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9}
	mov	pc, lr
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
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	sub	sp, sp, #112
	str	r0, [sp, #96]
	str	r1, [sp, #100]
	mov	r2, #255
	mov	r3, #0
	str	r2, [sp, #104]
	str	r3, [sp, #108]
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r2, #24
	mov	r0, #0
	add	r3, sp, #96
	ldmia	r3, {r2-r3}
	and	r4, r0, r2
	and	r5, r1, r3
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r5, #24
	mov	r7, #0
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r2, #16
	mov	r0, #0
	add	r3, sp, #96
	ldmia	r3, {r2-r3}
	and	ip, r0, r2
	str	ip, [sp]
	and	r3, r1, r3
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [sp, #4]
	lsr	r2, r1, #8
	mov	r3, #0
	orr	r1, r6, r2
	str	r1, [sp, #8]
	orr	r3, r7, r3
	str	r3, [sp, #12]
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r2, #8
	mov	r0, #0
	add	r3, sp, #96
	ldmia	r3, {r2-r3}
	and	r8, r0, r2
	and	r9, r1, r3
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r8, #24
	orr	r2, r2, r9, lsl #8
	lsr	r3, r9, #24
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #16]
	orr	r3, r1, r3
	str	r3, [sp, #20]
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	mov	r1, r2
	mov	r0, #0
	add	r3, sp, #96
	ldmia	r3, {r2-r3}
	and	r10, r0, r2
	and	fp, r1, r3
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r10, #8
	orr	r2, r2, fp, lsl #24
	lsr	r3, fp, #8
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #24]
	orr	r3, r1, r3
	str	r3, [sp, #28]
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #24
	orr	r1, r1, r2, lsr #8
	lsl	r0, r2, #24
	add	r3, sp, #96
	ldmia	r3, {r2-r3}
	and	ip, r0, r2
	str	ip, [sp, #32]
	and	r3, r1, r3
	str	r3, [sp, #36]
	mov	r2, #0
	mov	r3, #0
	add	r1, sp, #32
	ldmia	r1, {r0-r1}
	mov	ip, r1
	lsl	r3, ip, #8
	mov	ip, r0
	orr	r3, r3, ip, lsr #24
	mov	r1, r0
	lsl	r2, r1, #8
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #40]
	orr	r3, r1, r3
	str	r3, [sp, #44]
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #16
	orr	r1, r1, r2, lsr #16
	lsl	r0, r2, #16
	add	r3, sp, #96
	ldmia	r3, {r2-r3}
	and	ip, r0, r2
	str	ip, [sp, #48]
	and	r3, r1, r3
	str	r3, [sp, #52]
	mov	r2, #0
	mov	r3, #0
	add	r1, sp, #48
	ldmia	r1, {r0-r1}
	mov	ip, r1
	lsl	r3, ip, #24
	mov	ip, r0
	orr	r3, r3, ip, lsr #8
	mov	r1, r0
	lsl	r2, r1, #24
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #56]
	orr	r3, r1, r3
	str	r3, [sp, #60]
	add	r1, sp, #104
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsl	r2, r0, #8
	add	r1, sp, #96
	ldmia	r1, {r0-r1}
	and	ip, r2, r0
	str	ip, [sp, #64]
	and	r3, r3, r1
	str	r3, [sp, #68]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [sp, #64]
	lsl	r3, r1, #8
	mov	r2, #0
	add	r1, sp, #56
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #72]
	orr	r3, r1, r3
	str	r3, [sp, #76]
	add	r1, sp, #96
	ldmia	r1, {r0-r1}
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	and	ip, r0, r2
	str	ip, [sp, #80]
	and	r3, r1, r3
	str	r3, [sp, #84]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [sp, #80]
	lsl	r3, r1, #24
	mov	r2, #0
	add	r1, sp, #72
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #88]
	orr	r3, r1, r3
	str	r3, [sp, #92]
	add	r3, sp, #88
	ldmia	r3, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #112
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	mov	pc, lr
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
	b	.L405
.L408:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L406
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	b	.L407
.L406:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L405:
	ldr	r3, [sp, #12]
	cmp	r3, #31
	bls	.L408
	mov	r3, #0
.L407:
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
	str	r4, [sp, #-4]!
	mov	r3, r0
	cmp	r3, #0
	bne	.L410
	mov	r3, #0
	b	.L411
.L410:
	mov	r4, #1
	b	.L412
.L413:
	asr	r3, r3, #1
	add	r4, r4, #1
.L412:
	and	r2, r3, #1
	cmp	r2, #0
	beq	.L413
	mov	r3, r4
.L411:
	mov	r0, r3
	ldr	r4, [sp], #4
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
	vldr.32	s14, .L421
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bmi	.L415
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L421+4
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L420
.L415:
	mov	r3, #1
	b	.L419
.L420:
	mov	r3, #0
.L419:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L422:
	.align	2
.L421:
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
	vldr.64	d6, .L430
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L424
	vldr.64	d7, [sp]
	vldr.64	d6, .L430+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L429
.L424:
	mov	r3, #1
	b	.L428
.L429:
	mov	r3, #0
.L428:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L431:
	.align	3
.L430:
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
	vldr.64	d6, .L439
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L433
	vldr.64	d7, [sp]
	vldr.64	d6, .L439+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L438
.L433:
	mov	r3, #1
	b	.L437
.L438:
	mov	r3, #0
.L437:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L440:
	.align	3
.L439:
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
	bvs	.L443
	vldr.32	s15, [sp, #4]
	vadd.f32	s15, s15, s15
	vldr.32	s14, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	beq	.L443
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L444
	mov	r3, #1056964608
	b	.L445
.L444:
	mov	r3, #1073741824
.L445:
	str	r3, [sp, #12]	@ float
.L448:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L446
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #4]
.L446:
	ldr	r3, [sp]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L450
	vldr.32	s15, [sp, #12]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [sp, #12]
	b	.L448
.L450:
	nop
.L443:
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
	bvs	.L452
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L452
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L453
	mov	r2, #0
	ldr	r3, .L460
	b	.L454
.L453:
	mov	r2, #0
	mov	r3, #1073741824
.L454:
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L457:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L455
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #8]
.L455:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L459
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #16]
	b	.L457
.L459:
	nop
.L452:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L461:
	.align	2
.L460:
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
	bvs	.L463
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L463
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L464
	mov	r2, #0
	ldr	r3, .L471
	b	.L465
.L464:
	mov	r2, #0
	mov	r3, #1073741824
.L465:
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L468:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L466
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #8]
.L466:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L470
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #16]
	b	.L468
.L470:
	nop
.L463:
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L472:
	.align	2
.L471:
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
	b	.L474
.L475:
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
.L474:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L475
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
	add	r3, r3, r2
	str	r3, [sp, #20]
	b	.L478
.L480:
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L478:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L479
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L480
.L479:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L481
	ldr	r3, [sp, #20]
	mov	r2, #0
	strb	r2, [r3]
.L481:
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
	b	.L484
.L489:
	nop
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L484:
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	cmp	r2, r3
	bcs	.L485
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L489
.L485:
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
	b	.L491
.L495:
	ldr	r3, [sp]
	str	r3, [sp, #12]
	b	.L492
.L494:
	ldr	r3, [sp, #12]
	add	r2, r3, #1
	str	r2, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L492
	ldr	r3, [sp, #4]
	b	.L493
.L492:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L494
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L491:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L495
	mov	r3, #0
.L493:
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
.L498:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [sp, #4]
	cmp	r2, r1
	bne	.L497
	str	r3, [sp, #12]
.L497:
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L498
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
	bne	.L503
	ldr	r3, [sp, #4]
	b	.L502
.L505:
	ldr	r2, [sp, #8]
	ldr	r1, [sp]
	ldr	r0, [sp, #12]
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L504
	ldr	r3, [sp, #12]
	b	.L502
.L504:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L503:
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	strchr
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L505
	mov	r3, #0
.L502:
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
	bpl	.L507
	vldr.64	d7, [sp]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L509
.L507:
	vldr.64	d7, [sp, #8]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L510
	vldr.64	d7, [sp]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L510
.L509:
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	b	.L513
.L510:
	vldr.64	d7, [sp, #8]
.L513:
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
	bne	.L517
	ldr	r3, [sp, #12]
	b	.L518
.L517:
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L519
	mov	r3, #0
	b	.L518
.L519:
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L520
.L522:
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L521
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
	bne	.L521
	ldr	r3, [sp, #20]
	b	.L518
.L521:
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L520:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L522
	mov	r3, #0
.L518:
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
	bpl	.L526
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	vstr.64	d7, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #20]
.L526:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	blt	.L541
	b	.L530
.L531:
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	vldr.64	d6, [sp, #8]
	vmov.f64	d5, #2.0e+0
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [sp, #8]
.L530:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bge	.L531
	b	.L532
.L541:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L532
	vldr.64	d7, [sp, #8]
	vcmp.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L532
	b	.L534
.L535:
	ldr	r3, [sp, #16]
	sub	r3, r3, #1
	str	r3, [sp, #16]
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vstr.64	d7, [sp, #8]
.L534:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L535
.L532:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #16]
	str	r2, [r3]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L536
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	vstr.64	d7, [sp, #8]
.L536:
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
	push	{r4, r5, r6, r7, r8, r9}
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
	b	.L543
.L545:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	and	r4, r2, #1
	mov	r5, #0
	orrs	r3, r4, r5
	beq	.L544
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	ldmia	sp, {r2-r3}
	adds	r6, r0, r2
	adc	r7, r1, r3
	str	r6, [sp, #24]
	str	r7, [sp, #28]
.L544:
	ldmia	sp, {r2-r3}
	adds	r8, r2, r2
	adc	r9, r3, r3
	stm	sp, {r8-r9}
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsr	r3, r1, #1
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L543:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	orrs	r3, r2, r3
	bne	.L545
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9}
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
	b	.L548
.L550:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L548:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L551
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L551
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L550
	b	.L551
.L553:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L552
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L552:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L551:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L553
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L554
	ldr	r3, [sp, #12]
	b	.L555
.L554:
	ldr	r3, [sp, #16]
.L555:
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
	strb	r3, [sp, #7]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L557
	mov	r3, #7
	b	.L558
.L557:
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsl	r3, r3, #8
	mov	r0, r3
	bl	__clzsi2
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	sub	r3, r3, #1
.L558:
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
	ldmia	sp, {r0-r1}
	cmp	r1, #0
	bge	.L560
	ldmia	sp, {r0-r1}
	mvn	r2, r0
	mvn	r3, r1
	stm	sp, {r2-r3}
.L560:
	ldmia	sp, {r2-r3}
	orrs	r3, r2, r3
	bne	.L561
	mov	r3, #63
	b	.L562
.L561:
	ldmia	sp, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	bl	__clzdi2
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	sub	r3, r3, #1
.L562:
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
	b	.L564
.L566:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L565
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L565:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsl	r3, r3, #1
	str	r3, [sp]
.L564:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L566
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
	bcc	.L569
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bls	.L576
.L569:
	mov	r3, #0
	str	r3, [sp, #36]
	b	.L571
.L572:
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
.L571:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bcc	.L572
	b	.L573
.L574:
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
.L573:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bhi	.L574
	b	.L575
.L577:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L576:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L577
	nop
.L575:
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
	bcc	.L579
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bls	.L585
.L579:
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L581
.L582:
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
.L581:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bcc	.L582
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L584
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
	b	.L584
.L586:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L585:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L586
	nop
.L584:
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
	bcc	.L588
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bls	.L595
.L588:
	mov	r3, #0
	str	r3, [sp, #36]
	b	.L590
.L591:
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
.L590:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bcc	.L591
	b	.L592
.L593:
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
.L592:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bhi	.L593
	b	.L594
.L596:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L595:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L596
	nop
.L594:
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
	strh	r3, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L610
.L613:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	rsb	r3, r3, #15
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L615
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L610:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L613
	b	.L612
.L615:
	nop
.L612:
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
	strh	r3, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L617
.L620:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L622
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L617:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L620
	b	.L619
.L622:
	nop
.L619:
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
	vldr.32	s14, .L629
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L628
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L629
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	add	r3, r3, #32768
	b	.L626
.L628:
	vldr.32	s15, [sp, #4]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
.L626:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L632
.L634:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L633
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L633:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L632:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L634
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
	strh	r3, [sp, #6]	@ movhi
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L637
.L639:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L638
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L638:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L637:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L639
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
	b	.L642
.L644:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L643
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L643:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsl	r3, r3, #1
	str	r3, [sp]
.L642:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L644
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
	bne	.L649
	mov	r3, #0
	b	.L648
.L651:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L650
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L650:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsr	r3, r3, #1
	str	r3, [sp]
.L649:
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L651
	ldr	r3, [sp, #12]
.L648:
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
	b	.L653
.L655:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L653:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L656
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L656
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L655
	b	.L656
.L658:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L657
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L657:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L656:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L658
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L659
	ldr	r3, [sp, #12]
	b	.L660
.L659:
	ldr	r3, [sp, #16]
.L660:
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
	bpl	.L669
	mvn	r3, #0
	b	.L664
.L669:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L670
	mov	r3, #1
	b	.L664
.L670:
	mov	r3, #0
.L664:
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
	bpl	.L679
	mvn	r3, #0
	b	.L674
.L679:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L680
	mov	r3, #1
	b	.L674
.L680:
	mov	r3, #0
.L674:
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
	push	{r4, r5, r6, r7}
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [sp, #4]
	asr	r0, r1, #31
	mov	r6, r1
	mov	r7, r0
	ldr	r1, [sp]
	asr	r0, r1, #31
	mov	r4, r1
	mov	r5, r0
	mul	r0, r4, r7
	mul	r1, r6, r5
	add	r1, r0, r1
	umull	r2, r0, r6, r4
	mov	r3, r0
	add	r1, r1, r3
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7}
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
	push	{r4, r5, r6, r7}
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [sp, #4]
	mov	r0, #0
	mov	r6, r1
	mov	r7, r0
	ldr	r1, [sp]
	mov	r0, #0
	mov	r4, r1
	mov	r5, r0
	mul	r0, r4, r7
	mul	r1, r6, r5
	add	r1, r0, r1
	umull	r2, r0, r6, r4
	mov	r3, r0
	add	r1, r1, r3
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7}
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
	bge	.L686
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
	mov	r3, #1
	str	r3, [sp, #16]
.L686:
	mov	r3, #0
	strb	r3, [sp, #23]
	b	.L687
.L690:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L688
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L688:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	asr	r3, r3, #1
	str	r3, [sp]
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	r3, [sp, #23]
.L687:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L689
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L690
.L689:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L691
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L693
.L691:
	ldr	r3, [sp, #12]
.L693:
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
	bge	.L695
	ldr	r3, [sp, #4]
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	str	r3, [sp, #12]
.L695:
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L696
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	str	r3, [sp, #12]
.L696:
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #0
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L697
	ldr	r3, [sp, #8]
	rsb	r3, r3, #0
	str	r3, [sp, #8]
.L697:
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
	bge	.L700
	ldr	r3, [sp, #4]
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #12]
.L700:
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L701
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
.L701:
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L702
	ldr	r3, [sp, #8]
	rsb	r3, r3, #0
	str	r3, [sp, #8]
.L702:
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
	strh	r3, [sp, #6]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [sp, #4]	@ movhi
	mov	r3, #1
	strh	r3, [sp, #14]	@ movhi
	mov	r3, #0
	strh	r3, [sp, #12]	@ movhi
	b	.L705
.L707:
	ldrh	r3, [sp, #4]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [sp, #4]	@ movhi
	ldrh	r3, [sp, #14]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
.L705:
	ldrh	r2, [sp, #4]
	ldrh	r3, [sp, #6]
	cmp	r2, r3
	bcs	.L708
	ldrh	r3, [sp, #14]
	cmp	r3, #0
	beq	.L708
	ldrsh	r3, [sp, #4]
	cmp	r3, #0
	bge	.L707
	b	.L708
.L710:
	ldrh	r2, [sp, #6]
	ldrh	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L709
	ldrh	r2, [sp, #6]	@ movhi
	ldrh	r3, [sp, #4]	@ movhi
	sub	r3, r2, r3
	strh	r3, [sp, #6]	@ movhi
	ldrh	r2, [sp, #12]	@ movhi
	ldrh	r3, [sp, #14]	@ movhi
	orr	r3, r2, r3
	strh	r3, [sp, #12]	@ movhi
.L709:
	ldrh	r3, [sp, #14]
	lsr	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
	ldrh	r3, [sp, #4]
	lsr	r3, r3, #1
	strh	r3, [sp, #4]	@ movhi
.L708:
	ldrh	r3, [sp, #14]
	cmp	r3, #0
	bne	.L710
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L711
	ldrh	r3, [sp, #6]
	b	.L712
.L711:
	ldrh	r3, [sp, #12]
.L712:
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
	b	.L714
.L716:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L714:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L717
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L717
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L716
	b	.L717
.L719:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L718
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L718:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L717:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L719
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L720
	ldr	r3, [sp, #12]
	b	.L721
.L720:
	ldr	r3, [sp, #16]
.L721:
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
	beq	.L723
	mov	r3, #0
	str	r3, [sp, #16]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	lsl	r3, r2, r3
	str	r3, [sp, #20]
	b	.L724
.L723:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L725
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L727
.L725:
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
.L724:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
.L727:
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
	beq	.L729
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
	b	.L730
.L729:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L731
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L733
.L731:
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
.L730:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
.L733:
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
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	str	r0, [sp, #80]
	str	r1, [sp, #84]
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r3, #24
	mov	r7, #0
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r3, #8
	mov	r1, #0
	and	r4, r0, #65280
	mov	r5, #0
	orr	r10, r6, r4
	orr	fp, r7, r5
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #24
	orr	r0, r0, r3, lsl #8
	lsr	r1, r3, #24
	and	r8, r0, #16711680
	mov	r9, #0
	orr	r3, r10, r8
	str	r3, [sp]
	orr	r3, fp, r9
	str	r3, [sp, #4]
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #8
	orr	r0, r0, r3, lsl #24
	lsr	r1, r3, #8
	and	r3, r0, #-16777216
	str	r3, [sp, #8]
	mov	ip, #0
	str	ip, [sp, #12]
	ldmia	sp, {r1-r2}
	mov	r0, r1
	add	r4, sp, #8
	ldmia	r4, {r3-r4}
	mov	lr, r3
	orr	r0, r0, lr
	str	r0, [sp, #16]
	mov	r3, r4
	orr	r3, r2, r3
	str	r3, [sp, #20]
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsl	r0, r2, #8
	str	ip, [sp, #24]
	and	r3, r1, #255
	str	r3, [sp, #28]
	add	r2, sp, #16
	ldmia	r2, {r1-r2}
	mov	r0, r1
	add	r4, sp, #24
	ldmia	r4, {r3-r4}
	mov	lr, r3
	orr	r0, r0, lr
	str	r0, [sp, #32]
	mov	r3, r4
	orr	r3, r2, r3
	str	r3, [sp, #36]
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #24
	orr	r1, r1, r2, lsr #8
	lsl	r0, r2, #24
	str	ip, [sp, #40]
	and	r3, r1, #65280
	str	r3, [sp, #44]
	add	r2, sp, #32
	ldmia	r2, {r1-r2}
	mov	r0, r1
	add	r4, sp, #40
	ldmia	r4, {r3-r4}
	mov	lr, r3
	orr	r0, r0, lr
	str	r0, [sp, #48]
	mov	r3, r4
	orr	r3, r2, r3
	str	r3, [sp, #52]
	add	r1, sp, #80
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r0, #8
	mov	r2, #0
	str	ip, [sp, #56]
	and	r3, r3, #16711680
	str	r3, [sp, #60]
	add	r2, sp, #48
	ldmia	r2, {r1-r2}
	mov	r0, r1
	add	r4, sp, #56
	ldmia	r4, {r3-r4}
	mov	ip, r3
	orr	r0, r0, ip
	str	r0, [sp, #64]
	mov	r3, r4
	orr	r3, r2, r3
	str	r3, [sp, #68]
	add	r1, sp, #80
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r0, #24
	mov	r2, #0
	add	r1, sp, #64
	ldmia	r1, {r0-r1}
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [sp, #72]
	orr	r3, r1, r3
	str	r3, [sp, #76]
	add	r3, sp, #72
	ldmia	r3, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
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
	bcs	.L739
	mov	r3, #16
	b	.L740
.L739:
	mov	r3, #0
.L740:
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
	bne	.L741
	mov	r3, #8
	b	.L742
.L741:
	mov	r3, #0
.L742:
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
	bne	.L743
	mov	r3, #4
	b	.L744
.L743:
	mov	r3, #0
.L744:
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
	bne	.L745
	mov	r3, #2
	b	.L746
.L745:
	mov	r3, #0
.L746:
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
	bge	.L749
	mov	r3, #0
	b	.L754
.L749:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	ble	.L751
	mov	r3, #2
	b	.L754
.L751:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L752
	mov	r3, #0
	b	.L754
.L752:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L753
	mov	r3, #2
	b	.L754
.L753:
	mov	r3, #1
.L754:
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
	bne	.L758
	mov	r3, #16
	b	.L759
.L758:
	mov	r3, #0
.L759:
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
	bne	.L760
	mov	r3, #8
	b	.L761
.L760:
	mov	r3, #0
.L761:
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
	bne	.L762
	mov	r3, #4
	b	.L763
.L762:
	mov	r3, #0
.L763:
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
	bne	.L764
	mov	r3, #2
	b	.L765
.L764:
	mov	r3, #0
.L765:
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
	beq	.L768
	mov	r3, #0
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	lsr	r3, r2, r3
	str	r3, [sp, #16]
	b	.L769
.L768:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L770
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L772
.L770:
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
.L769:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
.L772:
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
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
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
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
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
	push	{r4, r5}
	sub	sp, sp, #8
	stm	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	rsbs	r4, r2, #0
	rsc	r5, r3, #0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5}
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
	ldr	r2, .L781
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L782:
	.align	2
.L781:
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
	ldr	r2, .L785
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L786:
	.align	2
.L785:
	.word	27030
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	sub	sp, sp, #48
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	str	r2, [sp, #40]
	str	r3, [sp, #44]
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #1
	orr	r0, r0, r3, lsl #31
	lsr	r1, r3, #1
	adr	r3, .L789
	ldmia	r3, {r2-r3}
	and	r10, r0, r2
	and	fp, r1, r3
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	subs	r1, r2, r10
	str	r1, [sp]
	sbc	r3, r3, fp
	str	r3, [sp, #4]
	ldmia	sp, {r2-r3}
	str	r2, [sp, #40]
	str	r3, [sp, #44]
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #2
	orr	r2, r2, r1, lsl #30
	lsr	r3, r1, #2
	adr	r1, .L789+8
	ldmia	r1, {r0-r1}
	and	r8, r2, r0
	and	r9, r3, r1
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	adr	r1, .L789+8
	ldmia	r1, {r0-r1}
	and	r6, r2, r0
	and	r7, r3, r1
	adds	r3, r8, r6
	str	r3, [sp, #8]
	adc	r3, r9, r7
	str	r3, [sp, #12]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r2, [sp, #40]
	str	r3, [sp, #44]
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #4
	orr	r2, r2, r1, lsl #28
	lsr	r3, r1, #4
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	adds	r4, r2, r0
	adc	r5, r3, r1
	adr	r3, .L789+16
	ldmia	r3, {r2-r3}
	and	r1, r4, r2
	str	r1, [sp, #16]
	and	r3, r5, r3
	str	r3, [sp, #20]
	add	r4, sp, #16
	ldmia	r4, {r3-r4}
	str	r3, [sp, #40]
	str	r4, [sp, #44]
	ldr	ip, [sp, #40]
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	mov	r2, r1
	mov	r3, #0
	mov	r3, r2
	add	r3, ip, r3
	str	r3, [sp, #36]
	ldr	r3, [sp, #36]
	lsr	r3, r3, #16
	ldr	r2, [sp, #36]
	add	r3, r2, r3
	str	r3, [sp, #36]
	ldr	r3, [sp, #36]
	lsr	r2, r3, #8
	ldr	r3, [sp, #36]
	add	r3, r2, r3
	and	r3, r3, #127
	mov	r0, r3
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	mov	pc, lr
.L790:
	.align	3
.L789:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #1
	ldr	r3, .L793
	and	r3, r3, r2
	ldr	r2, [sp, #12]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #2
	ldr	r2, .L793+4
	and	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, .L793+4
	and	r3, r3, r1
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #4
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	ldr	r3, .L793+8
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
.L794:
	.align	2
.L793:
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
	ldr	r3, .L805
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L799:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L796
	vldr.64	d6, [sp, #24]
	vldr.64	d7, [sp, #8]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #24]
.L796:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L804
	vldr.64	d7, [sp, #8]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #8]
	b	.L799
.L804:
	nop
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L800
	vmov.f64	d5, #1.0e+0
	vldr.64	d6, [sp, #24]
	vdiv.f64	d7, d5, d6
	b	.L802
.L800:
	vldr.64	d7, [sp, #24]
.L802:
	vmov.f64	d0, d7
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
.L806:
	.align	2
.L805:
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
.L811:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L808
	vldr.32	s14, [sp, #12]
	vldr.32	s15, [sp, #4]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #12]
.L808:
	ldr	r3, [sp]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L816
	vldr.32	s15, [sp, #4]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [sp, #4]
	b	.L811
.L816:
	nop
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L812
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [sp, #12]
	vdiv.f32	s15, s13, s14
	b	.L814
.L812:
	vldr.32	s15, [sp, #12]
.L814:
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
	bcs	.L818
	mov	r3, #0
	b	.L823
.L818:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L820
	mov	r3, #2
	b	.L823
.L820:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L821
	mov	r3, #0
	b	.L823
.L821:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L822
	mov	r3, #2
	b	.L823
.L822:
	mov	r3, #1
.L823:
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
