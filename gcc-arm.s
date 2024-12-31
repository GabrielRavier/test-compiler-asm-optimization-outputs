	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bcs	.L2
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L3
.L4:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L3:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L4
	b	.L5
.L2:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	beq	.L5
	b	.L6
.L7:
	ldr	r2, [fp, #-12]
	add	r3, r2, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	str	r1, [fp, #-8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L6:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L7
.L5:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.syntax unified
	.arm
	.type	memccpy, %function
memccpy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	uxtb	r3, r3
	str	r3, [fp, #-24]
	b	.L10
.L12:
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	cmp	r3, r2
	bne	.L12
.L11:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	b	.L14
.L13:
	mov	r3, #0
.L14:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.syntax unified
	.arm
	.type	memchr, %function
memchr:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	uxtb	r3, r3
	str	r3, [fp, #-20]
	b	.L16
.L18:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L16:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r3, r2
	bne	.L18
.L17:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [fp, #-8]
	b	.L21
.L19:
	mov	r3, #0
.L21:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	b	.L23
.L25:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L23:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L25
.L24:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	b	.L28
.L26:
	mov	r3, #0
.L28:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	b	.L30
.L31:
	ldr	r2, [fp, #-12]
	add	r3, r2, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	str	r1, [fp, #-8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L30:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L31
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	uxtb	r3, r3
	str	r3, [fp, #-20]
	b	.L34
.L36:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r3, r2
	bne	.L34
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	b	.L35
.L34:
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L36
	mov	r3, #0
.L35:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L38
.L39:
	ldr	r3, [fp, #-20]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L38:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L39
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.syntax unified
	.arm
	.type	stpcpy, %function
stpcpy:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	b	.L42
.L43:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L42:
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L43
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.syntax unified
	.arm
	.type	strchrnul, %function
strchrnul:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	uxtb	r3, r3
	str	r3, [fp, #-12]
	b	.L46
.L48:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L46:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	bne	.L48
.L47:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.syntax unified
	.arm
	.type	strchr, %function
strchr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	str	r1, [fp, #-8]
.L53:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [fp, #-8]
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.syntax unified
	.arm
	.type	strcmp, %function
strcmp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	b	.L55
.L57:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L55:
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L56
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L57
.L56:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.syntax unified
	.arm
	.type	strlen, %function
strlen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L60
.L61:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L60:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L66
	mov	r3, #0
	b	.L65
.L68:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L66:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L68
.L67:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
.L65:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.syntax unified
	.arm
	.type	swab, %function
swab:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	b	.L70
.L71:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldr	r2, [fp, #-8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #2
	str	r3, [fp, #-24]
.L70:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bgt	.L71
	nop
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.syntax unified
	.arm
	.type	isalpha, %function
isalpha:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	orr	r3, r3, #32
	sub	r3, r3, #97
	cmp	r3, #25
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.syntax unified
	.arm
	.type	isascii, %function
isascii:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #127
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.syntax unified
	.arm
	.type	isblank, %function
isblank:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #32
	beq	.L77
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	bne	.L78
.L77:
	mov	r3, #1
	b	.L80
.L78:
	mov	r3, #0
.L80:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.syntax unified
	.arm
	.type	iscntrl, %function
iscntrl:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L82
	ldr	r3, [fp, #-8]
	cmp	r3, #127
	bne	.L83
.L82:
	mov	r3, #1
	b	.L85
.L83:
	mov	r3, #0
.L85:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.syntax unified
	.arm
	.type	isdigit, %function
isdigit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.syntax unified
	.arm
	.type	isgraph, %function
isgraph:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #33
	cmp	r3, #93
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.syntax unified
	.arm
	.type	islower, %function
islower:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #97
	cmp	r3, #25
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	islower, .-islower
	.align	2
	.global	isprint
	.syntax unified
	.arm
	.type	isprint, %function
isprint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #32
	cmp	r3, #94
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.syntax unified
	.arm
	.type	isspace, %function
isspace:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #32
	beq	.L95
	ldr	r3, [fp, #-8]
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.syntax unified
	.arm
	.type	isupper, %function
isupper:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #65
	cmp	r3, #25
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.syntax unified
	.arm
	.type	iswcntrl, %function
iswcntrl:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L102
	ldr	r3, [fp, #-8]
	sub	r3, r3, #127
	cmp	r3, #32
	bls	.L102
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L102
	ldr	r3, [fp, #-8]
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.syntax unified
	.arm
	.type	iswdigit, %function
iswdigit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.syntax unified
	.arm
	.type	iswprint, %function
iswprint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #254
	bhi	.L109
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	and	r3, r3, #127
	cmp	r3, #32
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	b	.L110
.L109:
	ldr	r3, [fp, #-8]
	movw	r2, #8231
	cmp	r3, r2
	bls	.L111
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8192
	sub	r3, r3, #42
	movw	r2, #47061
	cmp	r3, r2
	bls	.L111
	ldr	r3, [fp, #-8]
	sub	r3, r3, #57344
	movw	r2, #8184
	cmp	r3, r2
	bhi	.L112
.L111:
	mov	r3, #1
	b	.L110
.L112:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #65280
	sub	r3, r3, #252
	mov	r2, #3
	movt	r2, 16
	cmp	r3, r2
	bhi	.L113
	ldr	r2, [fp, #-8]
	movw	r3, #65534
	and	r3, r3, r2
	movw	r2, #65534
	cmp	r3, r2
	bne	.L114
.L113:
	mov	r3, #0
	b	.L110
.L114:
	mov	r3, #1
.L110:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.syntax unified
	.arm
	.type	iswxdigit, %function
iswxdigit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L116
	ldr	r3, [fp, #-8]
	orr	r3, r3, #32
	sub	r3, r3, #97
	cmp	r3, #5
	bhi	.L117
.L116:
	mov	r3, #1
	b	.L119
.L117:
	mov	r3, #0
.L119:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.syntax unified
	.arm
	.type	toascii, %function
toascii:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #127
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.syntax unified
	.arm
	.type	fdim, %function
fdim:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L123
	vldr.64	d7, [fp, #-12]
	b	.L124
.L123:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L125
	vldr.64	d7, [fp, #-20]
	b	.L124
.L125:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L130
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vsub.f64	d7, d6, d7
	b	.L124
.L130:
	vldr.64	d7, .L131
.L124:
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L132:
	.align	3
.L131:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vstr.32	s1, [fp, #-12]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L134
	vldr.32	s15, [fp, #-8]
	b	.L135
.L134:
	vldr.32	s14, [fp, #-12]
	vldr.32	s15, [fp, #-12]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L136
	vldr.32	s15, [fp, #-12]
	b	.L135
.L136:
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L141
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vsub.f32	s15, s14, s15
	b	.L135
.L141:
	vldr.32	s15, .L142
.L135:
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L143:
	.align	2
.L142:
	.word	0
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.syntax unified
	.arm
	.type	fmax, %function
fmax:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L145
	ldrd	r2, [fp, #-20]
	b	.L146
.L145:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L147
	ldrd	r2, [fp, #-12]
	b	.L146
.L147:
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [fp, #-16]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L148
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L149
	ldrd	r2, [fp, #-20]
	b	.L146
.L149:
	ldrd	r2, [fp, #-12]
	b	.L146
.L148:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L155
	ldrd	r2, [fp, #-20]
	b	.L146
.L155:
	ldrd	r2, [fp, #-12]
.L146:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.syntax unified
	.arm
	.type	fmaxf, %function
fmaxf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vstr.32	s1, [fp, #-12]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L157
	ldr	r3, [fp, #-12]	@ float
	b	.L158
.L157:
	vldr.32	s14, [fp, #-12]
	vldr.32	s15, [fp, #-12]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L159
	ldr	r3, [fp, #-8]	@ float
	b	.L158
.L159:
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [fp, #-12]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L160
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L161
	ldr	r3, [fp, #-12]	@ float
	b	.L158
.L161:
	ldr	r3, [fp, #-8]	@ float
	b	.L158
.L160:
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L167
	ldr	r3, [fp, #-12]	@ float
	b	.L158
.L167:
	ldr	r3, [fp, #-8]	@ float
.L158:
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.syntax unified
	.arm
	.type	fmaxl, %function
fmaxl:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L169
	ldrd	r2, [fp, #-20]
	b	.L170
.L169:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L171
	ldrd	r2, [fp, #-12]
	b	.L170
.L171:
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [fp, #-16]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L172
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L173
	ldrd	r2, [fp, #-20]
	b	.L170
.L173:
	ldrd	r2, [fp, #-12]
	b	.L170
.L172:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L179
	ldrd	r2, [fp, #-20]
	b	.L170
.L179:
	ldrd	r2, [fp, #-12]
.L170:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.syntax unified
	.arm
	.type	fmin, %function
fmin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L181
	ldrd	r2, [fp, #-20]
	b	.L182
.L181:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L183
	ldrd	r2, [fp, #-12]
	b	.L182
.L183:
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [fp, #-16]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L184
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L185
	ldrd	r2, [fp, #-12]
	b	.L182
.L185:
	ldrd	r2, [fp, #-20]
	b	.L182
.L184:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L191
	ldrd	r2, [fp, #-12]
	b	.L182
.L191:
	ldrd	r2, [fp, #-20]
.L182:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.syntax unified
	.arm
	.type	fminf, %function
fminf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vstr.32	s1, [fp, #-12]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L193
	ldr	r3, [fp, #-12]	@ float
	b	.L194
.L193:
	vldr.32	s14, [fp, #-12]
	vldr.32	s15, [fp, #-12]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L195
	ldr	r3, [fp, #-8]	@ float
	b	.L194
.L195:
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [fp, #-12]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L196
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L197
	ldr	r3, [fp, #-8]	@ float
	b	.L194
.L197:
	ldr	r3, [fp, #-12]	@ float
	b	.L194
.L196:
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L203
	ldr	r3, [fp, #-8]	@ float
	b	.L194
.L203:
	ldr	r3, [fp, #-12]	@ float
.L194:
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.syntax unified
	.arm
	.type	fminl, %function
fminl:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L205
	ldrd	r2, [fp, #-20]
	b	.L206
.L205:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L207
	ldrd	r2, [fp, #-12]
	b	.L206
.L207:
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [fp, #-16]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L208
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L209
	ldrd	r2, [fp, #-12]
	b	.L206
.L209:
	ldrd	r2, [fp, #-20]
	b	.L206
.L208:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L215
	ldrd	r2, [fp, #-12]
	b	.L206
.L215:
	ldrd	r2, [fp, #-20]
.L206:
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-12]
	movw	r3, #:lower16:s.0
	movt	r3, #:upper16:s.0
	str	r3, [fp, #-8]
	b	.L217
.L218:
	ldr	r3, [fp, #-12]
	and	r2, r3, #63
	movw	r3, #:lower16:digits
	movt	r3, #:upper16:digits
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsr	r3, r3, #6
	str	r3, [fp, #-12]
.L217:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L218
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3]
	movw	r3, #:lower16:s.0
	movt	r3, #:upper16:s.0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r2, #0
	mov	r4, r3
	mov	r5, r2
	movw	r3, #:lower16:seed
	movt	r3, #:upper16:seed
	strd	r4, [r3]
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	bx	lr
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
	movw	r1, #:lower16:seed
	movt	r1, #:upper16:seed
	ldrd	r0, [r1]
	movw	ip, #32557
	movt	ip, 19605
	mul	lr, ip, r1
	movw	ip, #62509
	movt	ip, 22609
	mul	ip, ip, r0
	add	lr, lr, ip
	movw	ip, #32557
	movt	ip, 19605
	umull	r2, r3, r0, ip
	add	r1, lr, r3
	mov	r3, r1
	adds	r4, r2, #1
	adc	r5, r3, #0
	movw	r3, #:lower16:seed
	movt	r3, #:upper16:seed
	strd	r4, [r3]
	movw	r3, #:lower16:seed
	movt	r3, #:upper16:seed
	ldrd	r0, [r3]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #1
	mov	r3, #0
	mov	r3, r2
	mov	r0, r3
	pop	{r4, r5, fp, pc}
	.size	rand, .-rand
	.align	2
	.global	insque
	.syntax unified
	.arm
	.type	insque, %function
insque:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L224
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L223
.L224:
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L223
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #4]
.L223:
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	insque, .-insque
	.align	2
	.global	remque
	.syntax unified
	.arm
	.type	remque, %function
remque:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L227
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L227:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L229
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-8]
	ldr	r2, [r2]
	str	r2, [r3]
.L229:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r6, [fp, #-52]
	mov	r3, r6
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	mov	r4, r6
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r5, #3
	orr	r3, r3, r4, lsr #29
	lsl	r2, r4, #3
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L231
.L234:
	ldr	r3, [fp, #-24]
	mul	r3, r3, r6
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #4]
	mov	r1, r2
	ldr	r0, [fp, #-40]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L232
	ldr	r3, [fp, #-24]
	mul	r3, r3, r6
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	b	.L233
.L232:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L231:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bcc	.L234
	ldr	r3, [fp, #-36]
	add	r2, r3, #1
	ldr	r3, [fp, #-48]
	str	r2, [r3]
	ldr	r3, [fp, #-36]
	mul	r3, r3, r6
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [fp, #-52]
	ldr	r1, [fp, #-40]
	mov	r0, r3
	bl	memcpy
	mov	r3, r0
.L233:
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.syntax unified
	.arm
	.type	lfind, %function
lfind:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r6, [fp, #-52]
	mov	r3, r6
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	mov	r4, r6
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r5, #3
	orr	r3, r3, r4, lsr #29
	lsl	r2, r4, #3
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L236
.L239:
	ldr	r3, [fp, #-24]
	mul	r3, r3, r6
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #4]
	mov	r1, r2
	ldr	r0, [fp, #-40]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L237
	ldr	r3, [fp, #-24]
	mul	r3, r3, r6
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	b	.L238
.L237:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L236:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bcc	.L239
	mov	r3, #0
.L238:
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.syntax unified
	.arm
	.type	abs, %function
abs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	rsblt	r3, r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	abs, .-abs
	.align	2
	.global	atoi
	.syntax unified
	.arm
	.type	atoi, %function
atoi:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L243
.L244:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L243:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L244
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L245
	cmp	r3, #45
	bne	.L247
	mov	r3, #1
	str	r3, [fp, #-12]
.L245:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L247
.L248:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	sub	r3, r1, r3
	str	r3, [fp, #-8]
.L247:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L248
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L249
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #0
	b	.L251
.L249:
	ldr	r3, [fp, #-8]
.L251:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L253
.L254:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L253:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L254
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L255
	cmp	r3, #45
	bne	.L257
	mov	r3, #1
	str	r3, [fp, #-12]
.L255:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L257
.L258:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	sub	r3, r1, r3
	str	r3, [fp, #-8]
.L257:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L258
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L259
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #0
	b	.L261
.L259:
	ldr	r3, [fp, #-8]
.L261:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	sub	sp, sp, #48
	str	r0, [fp, #-48]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L263
.L264:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L263:
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L264
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L265
	cmp	r3, #45
	bne	.L267
	mov	r3, #1
	str	r3, [fp, #-40]
.L265:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	b	.L267
.L268:
	ldrd	r6, [fp, #-36]
	mov	r2, r6
	mov	r3, r7
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #2
	orr	r1, r1, r2, lsr #30
	lsl	r0, r2, #2
	mov	r2, r0
	mov	r3, r1
	adds	r4, r2, r6
	adc	r5, r3, r7
	adds	r3, r4, r4
	str	r3, [fp, #-68]
	adc	r3, r5, r5
	str	r3, [fp, #-64]
	ldrd	r4, [fp, #-68]
	mov	r2, r4
	mov	r3, r5
	ldr	r1, [fp, #-48]
	add	r0, r1, #1
	str	r0, [fp, #-48]
	ldrb	r1, [r1]	@ zero_extendqisi2
	sub	r1, r1, #48
	asr	r0, r1, #31
	str	r1, [fp, #-60]
	str	r0, [fp, #-56]
	ldrd	r0, [fp, #-60]
	mov	ip, r0
	subs	ip, r2, ip
	str	ip, [fp, #-76]
	sbc	r3, r3, r1
	str	r3, [fp, #-72]
	ldrd	r2, [fp, #-76]
	strd	r2, [fp, #-36]
.L267:
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L268
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L269
	ldrd	r2, [fp, #-36]
	rsbs	r8, r2, #0
	rsc	r9, r3, #0
	b	.L271
.L269:
	ldrd	r8, [fp, #-36]
.L271:
	mov	r2, r8
	mov	r3, r9
	mov	r0, r2
	mov	r1, r3
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
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L273
.L277:
	ldr	r3, [fp, #-24]
	lsr	r3, r3, #1
	ldr	r2, [fp, #-28]
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #4]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	blx	r3
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L274
	ldr	r3, [fp, #-24]
	lsr	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L273
.L274:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	ble	.L275
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	lsr	r3, r3, #1
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L273
.L275:
	ldr	r3, [fp, #-8]
	b	.L276
.L273:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L277
	mov	r3, #0
.L276:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.syntax unified
	.arm
	.type	bsearch_r, %function
bsearch_r:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	b	.L279
.L283:
	ldr	r3, [fp, #-12]
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-36]
	mul	r3, r3, r2
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #8]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-24]
	blx	r3
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L280
	ldr	r3, [fp, #-16]
	b	.L281
.L280:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	ble	.L282
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
.L282:
	ldr	r3, [fp, #-12]
	asr	r3, r3, #1
	str	r3, [fp, #-12]
.L279:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L283
	mov	r3, #0
.L281:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-28]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r4, [r3]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #4]
	ldr	r0, [fp, #-24]
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	div, .-div
	.align	2
	.global	imaxabs
	.syntax unified
	.arm
	.type	imaxabs, %function
imaxabs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #12
	strd	r0, [fp, #-28]
	ldrd	r0, [fp, #-28]
	mov	r2, #0
	mov	r3, #0
	asr	r2, r1, #31
	asr	r3, r1, #31
	ldrd	r0, [fp, #-28]
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
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	bx	lr
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.syntax unified
	.arm
	.type	imaxdiv, %function
imaxdiv:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	strd	r2, [fp, #-44]
	ldrd	r2, [fp, #4]
	ldrd	r0, [fp, #-44]
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod
	ldr	r1, [fp, #-32]
	strd	r4, [r1]
	ldr	r1, [fp, #-32]
	strd	r2, [r1, #8]
	ldr	r0, [fp, #-32]
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.syntax unified
	.arm
	.type	labs, %function
labs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	rsblt	r3, r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.syntax unified
	.arm
	.type	ldiv, %function
ldiv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-28]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r4, [r3]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #4]
	ldr	r0, [fp, #-24]
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.syntax unified
	.arm
	.type	llabs, %function
llabs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #12
	strd	r0, [fp, #-28]
	ldrd	r0, [fp, #-28]
	mov	r2, #0
	mov	r3, #0
	asr	r2, r1, #31
	asr	r3, r1, #31
	ldrd	r0, [fp, #-28]
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
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	bx	lr
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.syntax unified
	.arm
	.type	lldiv, %function
lldiv:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	strd	r2, [fp, #-44]
	ldrd	r2, [fp, #4]
	ldrd	r0, [fp, #-44]
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod
	ldr	r1, [fp, #-32]
	strd	r4, [r1]
	ldr	r1, [fp, #-32]
	strd	r2, [r1, #8]
	ldr	r0, [fp, #-32]
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.syntax unified
	.arm
	.type	wcschr, %function
wcschr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	b	.L299
.L301:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L299:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L300
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bne	.L301
.L300:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L302
	ldr	r3, [fp, #-8]
	b	.L304
.L302:
	mov	r3, #0
.L304:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.syntax unified
	.arm
	.type	wcscmp, %function
wcscmp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	b	.L306
.L308:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L306:
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L307
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L307
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L308
.L307:
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L309
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	b	.L311
.L309:
	mvn	r3, #0
.L311:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.syntax unified
	.arm
	.type	wcscpy, %function
wcscpy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	nop
.L313:
	ldr	r2, [fp, #-20]
	add	r3, r2, #4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r1, r3, #4
	str	r1, [fp, #-16]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L313
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.syntax unified
	.arm
	.type	wcslen, %function
wcslen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L316
.L317:
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
.L316:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L317
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	asr	r3, r3, #2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.syntax unified
	.arm
	.type	wcsncmp, %function
wcsncmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	b	.L320
.L322:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L320:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L321
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L321
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L321
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L322
.L321:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L323
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L324
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	b	.L327
.L324:
	mvn	r3, #0
	b	.L327
.L323:
	mov	r3, #0
.L327:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.syntax unified
	.arm
	.type	wmemchr, %function
wmemchr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	b	.L329
.L331:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L329:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L330
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bne	.L331
.L330:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L332
	ldr	r3, [fp, #-8]
	b	.L334
.L332:
	mov	r3, #0
.L334:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	b	.L336
.L338:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L336:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L337
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L338
.L337:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L339
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L340
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	b	.L343
.L340:
	mvn	r3, #0
	b	.L343
.L339:
	mov	r3, #0
.L343:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L345
.L346:
	ldr	r2, [fp, #-20]
	add	r3, r2, #4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r1, r3, #4
	str	r1, [fp, #-16]
	ldr	r2, [r2]
	str	r2, [r3]
.L345:
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L346
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L349
	ldr	r3, [fp, #-16]
	b	.L350
.L349:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r2, r2, r3
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	cmp	r2, r3
	bcs	.L355
	b	.L352
.L353:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
.L352:
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L353
	b	.L354
.L356:
	ldr	r2, [fp, #-20]
	add	r3, r2, #4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r1, r3, #4
	str	r1, [fp, #-16]
	ldr	r2, [r2]
	str	r2, [r3]
.L355:
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L356
.L354:
	ldr	r3, [fp, #-8]
.L350:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.syntax unified
	.arm
	.type	wmemset, %function
wmemset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L358
.L359:
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-20]
	str	r2, [r3]
.L358:
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L359
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bcs	.L362
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	b	.L363
.L364:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L363:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L364
	b	.L368
.L362:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	beq	.L368
	b	.L366
.L367:
	ldr	r2, [fp, #-8]
	add	r3, r2, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L366:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L367
.L368:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	sub	sp, sp, #20
	strd	r0, [fp, #-36]
	str	r2, [fp, #-40]
	ldrd	r2, [fp, #-36]
	ldr	r1, [fp, #-40]
	sub	ip, r1, #32
	rsb	r0, r1, #32
	lsl	r7, r3, r1
	orr	r7, r7, r2, lsl ip
	orr	r7, r7, r2, lsr r0
	lsl	r6, r2, r1
	ldr	r1, [fp, #-40]
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
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	bx	lr
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	sub	sp, sp, #20
	strd	r0, [fp, #-36]
	str	r2, [fp, #-40]
	ldrd	r2, [fp, #-36]
	ldr	r1, [fp, #-40]
	rsb	ip, r1, #32
	sub	r0, r1, #32
	lsr	r6, r2, r1
	orr	r6, r6, r3, lsl ip
	orr	r6, r6, r3, lsr r0
	lsr	r7, r3, r1
	ldr	r1, [fp, #-40]
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
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	bx	lr
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.syntax unified
	.arm
	.type	rotl32, %function
rotl32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #32
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.syntax unified
	.arm
	.type	rotr32, %function
rotr32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.syntax unified
	.arm
	.type	rotl_sz, %function
rotl_sz:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #32
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.syntax unified
	.arm
	.type	rotr_sz, %function
rotr_sz:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	ror	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.syntax unified
	.arm
	.type	rotl16, %function
rotl16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	str	r1, [fp, #-12]
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r2, [fp, #-6]
	ldr	r3, [fp, #-12]
	lsl	r3, r2, r3
	uxth	r2, r3
	ldrh	r1, [fp, #-6]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #16
	lsr	r3, r1, r3
	uxth	r3, r3
	orr	r3, r2, r3
	uxth	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.syntax unified
	.arm
	.type	rotr16, %function
rotr16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	str	r1, [fp, #-12]
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r2, [fp, #-6]
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	uxth	r2, r3
	ldrh	r1, [fp, #-6]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #16
	lsl	r3, r1, r3
	uxth	r3, r3
	orr	r3, r2, r3
	uxth	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.syntax unified
	.arm
	.type	rotl8, %function
rotl8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	str	r1, [fp, #-12]
	strb	r3, [fp, #-5]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	lsl	r3, r2, r3
	uxtb	r2, r3
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #8
	lsr	r3, r1, r3
	uxtb	r3, r3
	orr	r3, r2, r3
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.syntax unified
	.arm
	.type	rotr8, %function
rotr8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	str	r1, [fp, #-12]
	strb	r3, [fp, #-5]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	uxtb	r2, r3
	ldrb	r1, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #8
	lsl	r3, r1, r3
	uxtb	r3, r3
	orr	r3, r2, r3
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.syntax unified
	.arm
	.type	bswap_16, %function
bswap_16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #255
	str	r3, [fp, #-8]
	ldrh	r2, [fp, #-14]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #8
	and	r3, r3, r2
	lsr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [fp, #-8]
	uxth	r1, r3
	ldrh	r3, [fp, #-14]	@ movhi
	and	r3, r3, r1
	uxth	r3, r3
	lsl	r3, r3, #8
	uxth	r3, r3
	orr	r3, r2, r3
	uxth	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.syntax unified
	.arm
	.type	bswap_32, %function
bswap_32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #255
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsl	r2, r3, #24
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	lsr	r2, r3, #24
	ldr	r3, [fp, #-8]
	lsl	r1, r3, #16
	ldr	r3, [fp, #-16]
	and	r3, r3, r1
	lsr	r3, r3, #8
	orr	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r1, r3, #8
	ldr	r3, [fp, #-16]
	and	r3, r3, r1
	lsl	r3, r3, #8
	orr	r2, r2, r3
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, r1
	lsl	r3, r3, #24
	orr	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.syntax unified
	.arm
	.type	bswap_64, %function
bswap_64:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	sub	sp, sp, #124
	strd	r0, [fp, #-44]
	mov	r2, #255
	mov	r3, #0
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r2, #24
	mov	r0, #0
	ldrd	r2, [fp, #-44]
	and	r4, r0, r2
	and	r5, r1, r3
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r5, #24
	mov	r7, #0
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r2, #16
	mov	r0, #0
	ldrd	r2, [fp, #-44]
	and	ip, r0, r2
	str	ip, [fp, #-52]
	and	r3, r1, r3
	str	r3, [fp, #-48]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-48]
	lsr	r2, r1, #8
	mov	r3, #0
	orr	r1, r6, r2
	str	r1, [fp, #-60]
	orr	r3, r7, r3
	str	r3, [fp, #-56]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r2, #8
	mov	r0, #0
	ldrd	r2, [fp, #-44]
	and	r8, r0, r2
	and	r9, r1, r3
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r8, #24
	orr	r2, r2, r9, lsl #8
	lsr	r3, r9, #24
	ldrd	r0, [fp, #-60]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-68]
	orr	r3, r1, r3
	str	r3, [fp, #-64]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	mov	r1, r2
	mov	r0, #0
	ldrd	r2, [fp, #-44]
	and	ip, r0, r2
	str	ip, [fp, #-76]
	and	r3, r1, r3
	str	r3, [fp, #-72]
	mov	r2, #0
	mov	r3, #0
	ldrd	r0, [fp, #-76]
	mov	ip, r0
	lsr	r2, ip, #8
	mov	ip, r1
	orr	r2, r2, ip, lsl #24
	lsr	r3, r1, #8
	ldrd	r0, [fp, #-68]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-84]
	orr	r3, r1, r3
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #24
	orr	r1, r1, r2, lsr #8
	lsl	r0, r2, #24
	ldrd	r2, [fp, #-44]
	and	ip, r0, r2
	str	ip, [fp, #-92]
	and	r3, r1, r3
	str	r3, [fp, #-88]
	mov	r2, #0
	mov	r3, #0
	ldrd	r0, [fp, #-92]
	mov	ip, r1
	lsl	r3, ip, #8
	mov	ip, r0
	orr	r3, r3, ip, lsr #24
	mov	r1, r0
	lsl	r2, r1, #8
	ldrd	r0, [fp, #-84]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-100]
	orr	r3, r1, r3
	str	r3, [fp, #-96]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #16
	orr	r1, r1, r2, lsr #16
	lsl	r0, r2, #16
	ldrd	r2, [fp, #-44]
	and	ip, r0, r2
	str	ip, [fp, #-108]
	and	r3, r1, r3
	str	r3, [fp, #-104]
	mov	r2, #0
	mov	r3, #0
	ldrd	r0, [fp, #-108]
	mov	ip, r1
	lsl	r3, ip, #24
	mov	ip, r0
	orr	r3, r3, ip, lsr #8
	mov	r1, r0
	lsl	r2, r1, #24
	ldrd	r0, [fp, #-100]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-116]
	orr	r3, r1, r3
	str	r3, [fp, #-112]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsl	r0, r2, #8
	ldrd	r2, [fp, #-44]
	and	ip, r0, r2
	str	ip, [fp, #-124]
	and	r3, r1, r3
	str	r3, [fp, #-120]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-124]
	lsl	r3, r1, #8
	mov	r2, #0
	ldrd	r0, [fp, #-116]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-132]
	orr	r3, r1, r3
	str	r3, [fp, #-128]
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #-36]
	and	ip, r0, r2
	str	ip, [fp, #-140]
	and	r3, r1, r3
	str	r3, [fp, #-136]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-140]
	lsl	r3, r1, #24
	mov	r2, #0
	ldrd	r0, [fp, #-132]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-148]
	orr	r3, r1, r3
	str	r3, [fp, #-144]
	ldrd	r2, [fp, #-148]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	bx	lr
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.syntax unified
	.arm
	.type	ffs, %function
ffs:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L396
.L399:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L397
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	b	.L398
.L397:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L396:
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L399
	mov	r3, #0
.L398:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
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
	push	{r4, fp}
	add	fp, sp, #4
	mov	r3, r0
	cmp	r3, #0
	bne	.L401
	mov	r3, #0
	b	.L402
.L401:
	mov	r4, #1
	b	.L403
.L404:
	asr	r3, r3, #1
	add	r4, r4, #1
.L403:
	and	r2, r3, #1
	cmp	r2, #0
	beq	.L404
	mov	r3, r4
.L402:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{r4, fp}
	bx	lr
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.syntax unified
	.arm
	.type	gl_isinff, %function
gl_isinff:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L412
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bmi	.L406
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L412+4
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L411
.L406:
	mov	r3, #1
	b	.L410
.L411:
	mov	r3, #0
.L410:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L413:
	.align	2
.L412:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.64	d0, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vldr.64	d6, .L421
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L415
	vldr.64	d7, [fp, #-12]
	vldr.64	d6, .L421+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L420
.L415:
	mov	r3, #1
	b	.L419
.L420:
	mov	r3, #0
.L419:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L422:
	.align	3
.L421:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.64	d0, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vldr.64	d6, .L430
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L424
	vldr.64	d7, [fp, #-12]
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L431:
	.align	3
.L430:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	ldr	r3, [fp, #-8]
	vstr.64	d7, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.syntax unified
	.arm
	.type	ldexpf, %function
ldexpf:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.32	s0, [fp, #-16]
	str	r0, [fp, #-20]
	vldr.32	s14, [fp, #-16]
	vldr.32	s15, [fp, #-16]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvs	.L434
	vldr.32	s15, [fp, #-16]
	vadd.f32	s15, s15, s15
	vldr.32	s14, [fp, #-16]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	beq	.L434
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L435
	mov	r3, #1056964608
	b	.L436
.L435:
	mov	r3, #1073741824
.L436:
	str	r3, [fp, #-8]	@ float
.L439:
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L437
	vldr.32	s14, [fp, #-16]
	vldr.32	s15, [fp, #-8]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-16]
.L437:
	ldr	r3, [fp, #-20]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L441
	vldr.32	s15, [fp, #-8]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [fp, #-8]
	b	.L439
.L441:
	nop
.L434:
	ldr	r3, [fp, #-16]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.syntax unified
	.arm
	.type	ldexp, %function
ldexp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	vstr.64	d0, [fp, #-20]
	str	r0, [fp, #-24]
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvs	.L443
	vldr.64	d7, [fp, #-20]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L443
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L444
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16352
	b	.L445
.L444:
	mov	r2, #0
	mov	r3, #1073741824
.L445:
	strd	r2, [fp, #-12]
.L448:
	ldr	r3, [fp, #-24]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L446
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-12]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [fp, #-20]
.L446:
	ldr	r3, [fp, #-24]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L450
	vldr.64	d7, [fp, #-12]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [fp, #-12]
	b	.L448
.L450:
	nop
.L443:
	ldrd	r2, [fp, #-20]
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.syntax unified
	.arm
	.type	ldexpl, %function
ldexpl:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	vstr.64	d0, [fp, #-20]
	str	r0, [fp, #-24]
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvs	.L452
	vldr.64	d7, [fp, #-20]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [fp, #-20]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L452
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L453
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16352
	b	.L454
.L453:
	mov	r2, #0
	mov	r3, #1073741824
.L454:
	strd	r2, [fp, #-12]
.L457:
	ldr	r3, [fp, #-24]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L455
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-12]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [fp, #-20]
.L455:
	ldr	r3, [fp, #-24]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L459
	vldr.64	d7, [fp, #-12]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [fp, #-12]
	b	.L457
.L459:
	nop
.L452:
	ldrd	r2, [fp, #-20]
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-12]
	b	.L461
.L462:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	str	r2, [fp, #-8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	eor	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L461:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L462
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	b	.L465
.L467:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L465:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L466
	ldr	r3, [fp, #-20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L467
.L466:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L468
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3]
.L468:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.type	strnlen, %function
strnlen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L471
.L476:
	nop
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L471:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcs	.L472
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L476
.L472:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.syntax unified
	.arm
	.type	strpbrk, %function
strpbrk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	b	.L478
.L482:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-8]
	b	.L479
.L481:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	str	r2, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L479
	ldr	r3, [fp, #-16]
	b	.L480
.L479:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L481
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L478:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L482
	mov	r3, #0
.L480:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.syntax unified
	.arm
	.type	strrchr, %function
strrchr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	str	r1, [fp, #-16]
	mov	r2, #0
	str	r2, [fp, #-8]
.L485:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [fp, #-16]
	cmp	r2, r1
	bne	.L484
	str	r3, [fp, #-8]
.L484:
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L485
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-20]
	bl	strlen
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L490
	ldr	r3, [fp, #-16]
	b	.L489
.L492:
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L491
	ldr	r3, [fp, #-8]
	b	.L489
.L491:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L490:
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	strchr
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L492
	mov	r3, #0
.L489:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.syntax unified
	.arm
	.type	copysign, %function
copysign:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d7, [fp, #-12]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L494
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L496
.L494:
	vldr.64	d7, [fp, #-12]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L497
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L497
.L496:
	vldr.64	d7, [fp, #-12]
	vneg.f64	d7, d7
	b	.L500
.L497:
	vldr.64	d7, [fp, #-12]
.L500:
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.syntax unified
	.arm
	.type	memmem, %function
memmem:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L504
	ldr	r3, [fp, #-16]
	b	.L505
.L504:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L506
	mov	r3, #0
	b	.L505
.L506:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L507
.L509:
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L508
	ldr	r3, [fp, #-8]
	add	r0, r3, #1
	ldr	r3, [fp, #-24]
	add	r1, r3, #1
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	mov	r2, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L508
	ldr	r3, [fp, #-8]
	b	.L505
.L508:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L507:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bls	.L509
	mov	r3, #0
.L505:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	memcpy
	mov	r2, r0
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.syntax unified
	.arm
	.type	frexp, %function
frexp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	vstr.64	d0, [fp, #-20]
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L513
	vldr.64	d7, [fp, #-20]
	vneg.f64	d7, d7
	vstr.64	d7, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-8]
.L513:
	vldr.64	d7, [fp, #-20]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	blt	.L528
	b	.L517
.L518:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	vldr.64	d6, [fp, #-20]
	vmov.f64	d5, #2.0e+0
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [fp, #-20]
.L517:
	vldr.64	d7, [fp, #-20]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bge	.L518
	b	.L519
.L528:
	vldr.64	d7, [fp, #-20]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L519
	vldr.64	d7, [fp, #-20]
	vcmp.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L519
	b	.L521
.L522:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vadd.f64	d7, d7, d7
	vstr.64	d7, [fp, #-20]
.L521:
	vldr.64	d7, [fp, #-20]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L522
.L519:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L523
	vldr.64	d7, [fp, #-20]
	vneg.f64	d7, d7
	vstr.64	d7, [fp, #-20]
.L523:
	ldrd	r2, [fp, #-20]
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.syntax unified
	.arm
	.type	__muldi3, %function
__muldi3:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	sub	sp, sp, #36
	strd	r0, [fp, #-52]
	strd	r2, [fp, #-60]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-52]
	strd	r2, [fp, #-44]
	b	.L530
.L532:
	ldrd	r2, [fp, #-44]
	and	r4, r2, #1
	mov	r5, #0
	orrs	r3, r4, r5
	beq	.L531
	ldrd	r0, [fp, #-36]
	ldrd	r2, [fp, #-60]
	adds	r6, r0, r2
	adc	r7, r1, r3
	strd	r6, [fp, #-36]
.L531:
	ldrd	r2, [fp, #-60]
	adds	r8, r2, r2
	adc	r9, r3, r3
	strd	r8, [fp, #-60]
	ldrd	r0, [fp, #-44]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsr	r3, r1, #1
	strd	r2, [fp, #-44]
.L530:
	ldrd	r2, [fp, #-44]
	orrs	r3, r2, r3
	bne	.L532
	ldrd	r2, [fp, #-36]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	bx	lr
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.syntax unified
	.arm
	.type	udivmodsi4, %function
udivmodsi4:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L535
.L537:
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	str	r3, [fp, #-8]
.L535:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcs	.L538
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L538
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L537
	b	.L538
.L540:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L539
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	orr	r3, r2, r3
	str	r3, [fp, #-12]
.L539:
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #1
	str	r3, [fp, #-20]
.L538:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L540
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L541
	ldr	r3, [fp, #-16]
	b	.L542
.L541:
	ldr	r3, [fp, #-12]
.L542:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strb	r3, [fp, #-13]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L544
	mov	r3, #7
	b	.L545
.L544:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	lsl	r3, r3, #8
	clz	r3, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
.L545:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	strd	r0, [fp, #-20]
	ldrd	r0, [fp, #-20]
	cmp	r1, #0
	bge	.L547
	ldrd	r0, [fp, #-20]
	mvn	r2, r0
	mvn	r3, r1
	strd	r2, [fp, #-20]
.L547:
	ldrd	r2, [fp, #-20]
	orrs	r3, r2, r3
	bne	.L548
	mov	r3, #63
	b	.L549
.L548:
	ldrd	r2, [fp, #-20]
	cmp	r3, #0
	beq	.L550
	clz	r3, r3
	b	.L551
.L550:
	clz	r3, r2
	add	r3, r3, #32
.L551:
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
.L549:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.syntax unified
	.arm
	.type	__mulsi3, %function
__mulsi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L553
.L555:
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L554
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L554:
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	str	r3, [fp, #-20]
.L553:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L555
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsr	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-40]
	bic	r3, r3, #7
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L558
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bls	.L565
.L558:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L560
.L561:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	lsl	r2, r2, #3
	ldr	r1, [fp, #-32]
	add	r1, r1, r2
	ldrd	r2, [r3]
	strd	r2, [r1]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L560:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L561
	b	.L562
.L563:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-12]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L562:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bhi	.L563
	b	.L564
.L566:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L565:
	ldr	r3, [fp, #-40]
	sub	r2, r3, #1
	str	r2, [fp, #-40]
	cmp	r3, #0
	bne	.L566
	nop
.L564:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-32]
	lsr	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L568
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bls	.L574
.L568:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L570
.L571:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldrsh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L570:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bcc	.L571
	ldr	r3, [fp, #-32]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L573
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L573
.L575:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-32]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L574:
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	str	r2, [fp, #-32]
	cmp	r3, #0
	bne	.L575
	nop
.L573:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsr	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-40]
	bic	r3, r3, #3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L577
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bls	.L584
.L577:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L579
.L580:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L579:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L580
	b	.L581
.L582:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-12]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L581:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bhi	.L582
	b	.L583
.L585:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L584:
	ldr	r3, [fp, #-40]
	sub	r2, r3, #1
	str	r2, [fp, #-40]
	cmp	r3, #0
	bne	.L585
	nop
.L583:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.syntax unified
	.arm
	.type	__modi, %function
__modi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.syntax unified
	.arm
	.type	__uitod, %function
__uitod:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d7, s15
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.syntax unified
	.arm
	.type	__uitof, %function
__uitof:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.syntax unified
	.arm
	.type	__ulltod, %function
__ulltod:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	strd	r0, [fp, #-12]
	ldrd	r0, [fp, #-12]
	bl	__aeabi_ul2d
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f64	d0, d7
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.syntax unified
	.arm
	.type	__ulltof, %function
__ulltof:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	strd	r0, [fp, #-12]
	ldrd	r0, [fp, #-12]
	bl	__aeabi_ul2f
	mov	r3, r0	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.syntax unified
	.arm
	.type	__umodi, %function
__umodi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	__aeabi_uidivmod
	mov	r3, r1
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.syntax unified
	.arm
	.type	__clzhi2, %function
__clzhi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L599
.L602:
	ldrh	r2, [fp, #-14]
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #15
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L604
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L599:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L602
	b	.L601
.L604:
	nop
.L601:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.syntax unified
	.arm
	.type	__ctzhi2, %function
__ctzhi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L606
.L609:
	ldrh	r2, [fp, #-14]
	ldr	r3, [fp, #-8]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L611
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L606:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L609
	b	.L608
.L611:
	nop
.L608:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.syntax unified
	.arm
	.type	__fixunssfsi, %function
__fixunssfsi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L618
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L617
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L618
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	add	r3, r3, #32768
	b	.L615
.L617:
	vldr.32	s15, [fp, #-8]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
.L615:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L619:
	.align	2
.L618:
	.word	1191182336
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.syntax unified
	.arm
	.type	__parityhi2, %function
__parityhi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L621
.L623:
	ldrh	r2, [fp, #-14]
	ldr	r3, [fp, #-8]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L622
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L622:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L621:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L623
	ldr	r3, [fp, #-12]
	and	r3, r3, #1
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.syntax unified
	.arm
	.type	__popcounthi2, %function
__popcounthi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L626
.L628:
	ldrh	r2, [fp, #-14]
	ldr	r3, [fp, #-8]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L627
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L627:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L626:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L628
	ldr	r3, [fp, #-12]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.syntax unified
	.arm
	.type	__mulsi3_iq2000, %function
__mulsi3_iq2000:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L631
.L633:
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L632
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L632:
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	str	r3, [fp, #-20]
.L631:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L633
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.syntax unified
	.arm
	.type	__mulsi3_lm32, %function
__mulsi3_lm32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L638
	mov	r3, #0
	b	.L637
.L640:
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L639
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L639:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #1
	str	r3, [fp, #-20]
.L638:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L640
	ldr	r3, [fp, #-8]
.L637:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.syntax unified
	.arm
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L642
.L644:
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	str	r3, [fp, #-8]
.L642:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcs	.L645
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L645
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L644
	b	.L645
.L647:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L646
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	orr	r3, r2, r3
	str	r3, [fp, #-12]
.L646:
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #1
	str	r3, [fp, #-20]
.L645:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L647
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L648
	ldr	r3, [fp, #-16]
	b	.L649
.L648:
	ldr	r3, [fp, #-12]
.L649:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.syntax unified
	.arm
	.type	__mspabi_cmpf, %function
__mspabi_cmpf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vstr.32	s1, [fp, #-12]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L658
	mvn	r3, #0
	b	.L653
.L658:
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L659
	mov	r3, #1
	b	.L653
.L659:
	mov	r3, #0
.L653:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.syntax unified
	.arm
	.type	__mspabi_cmpd, %function
__mspabi_cmpd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L668
	mvn	r3, #0
	b	.L663
.L668:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L669
	mov	r3, #1
	b	.L663
.L669:
	mov	r3, #0
.L663:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.syntax unified
	.arm
	.type	__mspabi_mpysll, %function
__mspabi_mpysll:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #12
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r1, [fp, #-24]
	asr	r0, r1, #31
	mov	r6, r1
	mov	r7, r0
	ldr	r1, [fp, #-28]
	asr	r0, r1, #31
	mov	r4, r1
	mov	r5, r0
	mul	r0, r4, r7
	mul	r1, r6, r5
	add	r1, r0, r1
	umull	r2, r3, r6, r4
	add	r1, r1, r3
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	bx	lr
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.syntax unified
	.arm
	.type	__mspabi_mpyull, %function
__mspabi_mpyull:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #12
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r1, [fp, #-24]
	mov	r0, #0
	mov	r6, r1
	mov	r7, r0
	ldr	r1, [fp, #-28]
	mov	r0, #0
	mov	r4, r1
	mov	r5, r0
	mul	r0, r4, r7
	mul	r1, r6, r5
	add	r1, r0, r1
	umull	r2, r3, r6, r4
	add	r1, r1, r3
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	bx	lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.syntax unified
	.arm
	.type	__mulhi3, %function
__mulhi3:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bge	.L675
	ldr	r3, [fp, #-28]
	rsb	r3, r3, #0
	str	r3, [fp, #-28]
	mov	r3, #1
	str	r3, [fp, #-12]
.L675:
	mov	r3, #0
	strb	r3, [fp, #-5]
	b	.L676
.L679:
	ldr	r3, [fp, #-28]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L677
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L677:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	asr	r3, r3, #1
	str	r3, [fp, #-28]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	r3, [fp, #-5]
.L676:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L678
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L679
.L678:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L680
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	b	.L682
.L680:
	ldr	r3, [fp, #-16]
.L682:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.syntax unified
	.arm
	.type	__divsi3, %function
__divsi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L684
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-8]
.L684:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L685
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-8]
.L685:
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r2, #0
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L686
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #0
	str	r3, [fp, #-12]
.L686:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L689
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	mov	r3, #1
	str	r3, [fp, #-8]
.L689:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L690
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #0
	str	r3, [fp, #-20]
.L690:
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r2, #1
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L691
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #0
	str	r3, [fp, #-12]
.L691:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	str	r2, [fp, #-20]
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-16]	@ movhi
	mov	r3, #1
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	b	.L694
.L696:
	ldrh	r3, [fp, #-16]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [fp, #-16]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [fp, #-6]	@ movhi
.L694:
	ldrh	r2, [fp, #-16]
	ldrh	r3, [fp, #-14]
	cmp	r2, r3
	bcs	.L697
	ldrh	r3, [fp, #-6]
	cmp	r3, #0
	beq	.L697
	ldrsh	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L696
	b	.L697
.L699:
	ldrh	r2, [fp, #-14]
	ldrh	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L698
	ldrh	r2, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-16]	@ movhi
	sub	r3, r2, r3
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r2, [fp, #-8]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	orr	r3, r2, r3
	strh	r3, [fp, #-8]	@ movhi
.L698:
	ldrh	r3, [fp, #-6]
	lsr	r3, r3, #1
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-16]
	lsr	r3, r3, #1
	strh	r3, [fp, #-16]	@ movhi
.L697:
	ldrh	r3, [fp, #-6]
	cmp	r3, #0
	bne	.L699
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L700
	ldrh	r3, [fp, #-14]
	b	.L701
.L700:
	ldrh	r3, [fp, #-8]
.L701:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.syntax unified
	.arm
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L703
.L705:
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	str	r3, [fp, #-8]
.L703:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcs	.L706
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L706
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L705
	b	.L706
.L708:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L707
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	orr	r3, r2, r3
	str	r3, [fp, #-12]
.L707:
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #1
	str	r3, [fp, #-20]
.L706:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L708
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L709
	ldr	r3, [fp, #-16]
	b	.L710
.L709:
	ldr	r3, [fp, #-12]
.L710:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.syntax unified
	.arm
	.type	__ashldi3, %function
__ashldi3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	strd	r0, [fp, #-36]
	str	r2, [fp, #-40]
	mov	r3, #32
	str	r3, [fp, #-8]
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-20]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L712
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-8]
	sub	r3, r1, r3
	lsl	r3, r2, r3
	str	r3, [fp, #-24]
	b	.L713
.L712:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L714
	ldrd	r2, [fp, #-36]
	b	.L716
.L714:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-40]
	lsl	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-40]
	lsl	r2, r2, r3
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	ldr	r3, [fp, #-40]
	sub	r3, r0, r3
	lsr	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [fp, #-24]
.L713:
	ldrd	r2, [fp, #-28]
.L716:
	mov	r0, r2
	mov	r1, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.syntax unified
	.arm
	.type	__ashrdi3, %function
__ashrdi3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	strd	r0, [fp, #-36]
	str	r2, [fp, #-40]
	mov	r3, #32
	str	r3, [fp, #-8]
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-20]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L718
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	asr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-8]
	sub	r3, r1, r3
	asr	r3, r2, r3
	str	r3, [fp, #-28]
	b	.L719
.L718:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L720
	ldrd	r2, [fp, #-36]
	b	.L722
.L720:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-40]
	asr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	mov	r1, r3
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-40]
	sub	r3, r2, r3
	lsl	r2, r1, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-40]
	lsr	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [fp, #-28]
.L719:
	ldrd	r2, [fp, #-28]
.L722:
	mov	r0, r2
	mov	r1, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	sub	sp, sp, #96
	strd	r0, [fp, #-36]
	ldrd	r2, [fp, #-36]
	mov	r6, #0
	mov	r7, #0
	lsr	r6, r3, #24
	mov	r7, #0
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r3, #8
	mov	r1, #0
	and	r4, r0, #65280
	mov	r5, #0
	orr	r3, r6, r4
	str	r3, [fp, #-44]
	orr	r3, r7, r5
	str	r3, [fp, #-40]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #24
	orr	r0, r0, r3, lsl #8
	lsr	r1, r3, #24
	and	r8, r0, #16711680
	mov	r9, #0
	ldrd	r2, [fp, #-44]
	mov	r1, r2
	orr	r1, r1, r8
	str	r1, [fp, #-52]
	orr	r3, r3, r9
	str	r3, [fp, #-48]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #8
	orr	r0, r0, r3, lsl #24
	lsr	r1, r3, #8
	and	r3, r0, #-16777216
	str	r3, [fp, #-60]
	mov	ip, #0
	str	ip, [fp, #-56]
	ldrd	r0, [fp, #-52]
	mov	lr, r0
	ldrd	r2, [fp, #-60]
	mov	r4, r2
	orr	lr, lr, r4
	str	lr, [fp, #-68]
	orr	r3, r1, r3
	str	r3, [fp, #-64]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsl	r0, r2, #8
	str	ip, [fp, #-76]
	and	r3, r1, #255
	str	r3, [fp, #-72]
	ldrd	r0, [fp, #-68]
	mov	lr, r0
	ldrd	r2, [fp, #-76]
	mov	r4, r2
	orr	lr, lr, r4
	str	lr, [fp, #-84]
	orr	r3, r1, r3
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #24
	orr	r1, r1, r2, lsr #8
	lsl	r0, r2, #24
	str	ip, [fp, #-92]
	and	r3, r1, #65280
	str	r3, [fp, #-88]
	ldrd	r0, [fp, #-84]
	mov	lr, r0
	ldrd	r2, [fp, #-92]
	mov	r4, r2
	orr	lr, lr, r4
	str	lr, [fp, #-100]
	orr	r3, r1, r3
	str	r3, [fp, #-96]
	ldrd	r0, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r0, #8
	mov	r2, #0
	str	ip, [fp, #-108]
	and	r3, r3, #16711680
	str	r3, [fp, #-104]
	ldrd	r0, [fp, #-100]
	mov	ip, r0
	ldrd	r2, [fp, #-108]
	mov	lr, r2
	orr	ip, ip, lr
	str	ip, [fp, #-116]
	orr	r3, r1, r3
	str	r3, [fp, #-112]
	ldrd	r0, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r0, #24
	mov	r2, #0
	ldrd	r0, [fp, #-116]
	mov	ip, r0
	orr	ip, ip, r2
	str	ip, [fp, #-124]
	orr	r3, r1, r3
	str	r3, [fp, #-120]
	ldrd	r2, [fp, #-124]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.syntax unified
	.arm
	.type	__bswapsi2, %function
__bswapsi2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #24
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #8
	and	r3, r3, #65280
	orr	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #8
	and	r3, r3, #16711680
	orr	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #24
	orr	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.syntax unified
	.arm
	.type	__clzsi2, %function
__clzsi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #65536
	bcs	.L728
	mov	r3, #16
	b	.L729
.L728:
	mov	r3, #0
.L729:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #16
	ldr	r2, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, #65280
	cmp	r3, #0
	bne	.L730
	mov	r3, #8
	b	.L731
.L730:
	mov	r3, #0
.L731:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #8
	ldr	r2, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, #240
	cmp	r3, #0
	bne	.L732
	mov	r3, #4
	b	.L733
.L732:
	mov	r3, #0
.L733:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #4
	ldr	r2, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, #12
	cmp	r3, #0
	bne	.L734
	mov	r3, #2
	b	.L735
.L734:
	mov	r3, #0
.L735:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #2
	ldr	r2, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, #2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #2
	mul	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.syntax unified
	.arm
	.type	__cmpdi2, %function
__cmpdi2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	strd	r0, [fp, #-28]
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-28]
	strd	r2, [fp, #-12]
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bge	.L738
	mov	r3, #0
	b	.L743
.L738:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L740
	mov	r3, #2
	b	.L743
.L740:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcs	.L741
	mov	r3, #0
	b	.L743
.L741:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bls	.L742
	mov	r3, #2
	b	.L743
.L742:
	mov	r3, #1
.L743:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.syntax unified
	.arm
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	strd	r0, [fp, #-12]
	strd	r2, [fp, #-20]
	ldrd	r2, [fp, #-20]
	ldrd	r0, [fp, #-12]
	bl	__cmpdi2
	mov	r3, r0
	sub	r3, r3, #1
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.syntax unified
	.arm
	.type	__ctzsi2, %function
__ctzsi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	uxth	r3, r3
	cmp	r3, #0
	bne	.L747
	mov	r3, #16
	b	.L748
.L747:
	mov	r3, #0
.L748:
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L749
	mov	r3, #8
	b	.L750
.L749:
	mov	r3, #0
.L750:
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L751
	mov	r3, #4
	b	.L752
.L751:
	mov	r3, #0
.L752:
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L753
	mov	r3, #2
	b	.L754
.L753:
	mov	r3, #0
.L754:
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	mvn	r3, r3
	and	r2, r3, #1
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	rsb	r2, r2, #0
	and	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.syntax unified
	.arm
	.type	__lshrdi3, %function
__lshrdi3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	strd	r0, [fp, #-36]
	str	r2, [fp, #-40]
	mov	r3, #32
	str	r3, [fp, #-8]
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-20]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L757
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-8]
	sub	r3, r1, r3
	lsr	r3, r2, r3
	str	r3, [fp, #-28]
	b	.L758
.L757:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L759
	ldrd	r2, [fp, #-36]
	b	.L761
.L759:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-40]
	lsr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-8]
	ldr	r3, [fp, #-40]
	sub	r3, r1, r3
	lsl	r2, r2, r3
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-40]
	lsr	r3, r1, r3
	orr	r3, r2, r3
	str	r3, [fp, #-28]
.L758:
	ldrd	r2, [fp, #-28]
.L761:
	mov	r0, r2
	mov	r1, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.syntax unified
	.arm
	.type	__muldsi3, %function
__muldsi3:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r3, #16
	str	r3, [fp, #-8]
	mvn	r2, #0
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-12]
	and	r3, r3, r2
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-12]
	and	r2, r2, r1
	mul	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	and	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-12]
	and	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-12]
	and	r1, r1, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	and	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	and	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-12]
	and	r1, r1, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r0, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	lsr	r3, r2, r3
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-8]
	lsr	r2, r1, r2
	mul	r3, r2, r3
	add	r3, r0, r3
	str	r3, [fp, #-24]
	ldrd	r2, [fp, #-28]
	mov	r0, r2
	mov	r1, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	strd	r0, [fp, #-36]
	strd	r2, [fp, #-44]
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-12]
	ldrd	r2, [fp, #-44]
	strd	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	mov	r1, r2
	mov	r0, r3
	bl	__muldsi3
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r1, r3
	ldr	r3, [fp, #-8]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	mul	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r0, [fp, #-16]
	mul	r3, r0, r3
	add	r3, r2, r3
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldrd	r2, [fp, #-28]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.syntax unified
	.arm
	.type	__negdi2, %function
__negdi2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #12
	strd	r0, [fp, #-20]
	ldrd	r2, [fp, #-20]
	rsbs	r4, r2, #0
	rsc	r5, r3, #0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	bx	lr
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.syntax unified
	.arm
	.type	__paritydi2, %function
__paritydi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	strd	r0, [fp, #-28]
	ldrd	r2, [fp, #-28]
	strd	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #16
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #8
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #4
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	movw	r2, #27030
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.syntax unified
	.arm
	.type	__paritysi2, %function
__paritysi2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #16
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #8
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #4
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	movw	r2, #27030
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	add	fp, sp, #24
	sub	sp, sp, #60
	strd	r0, [fp, #-52]
	ldrd	r2, [fp, #-52]
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #1
	orr	r0, r0, r3, lsl #31
	lsr	r1, r3, #1
	adr	r3, .L774
	ldrd	r2, [r3]
	and	r4, r0, r2
	and	r5, r1, r3
	ldrd	r2, [fp, #-36]
	subs	r1, r2, r4
	str	r1, [fp, #-68]
	sbc	r3, r3, r5
	str	r3, [fp, #-64]
	ldrd	r2, [fp, #-68]
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-36]
	mov	r0, #0
	mov	r1, #0
	lsr	r0, r2, #2
	orr	r0, r0, r3, lsl #30
	lsr	r1, r3, #2
	adr	r3, .L774+8
	ldrd	r2, [r3]
	and	ip, r0, r2
	str	ip, [fp, #-60]
	and	r3, r1, r3
	str	r3, [fp, #-56]
	ldrd	r2, [fp, #-36]
	adr	r1, .L774+8
	ldrd	r0, [r1]
	and	r8, r2, r0
	and	r9, r3, r1
	ldrd	r2, [fp, #-60]
	mov	r1, r2
	adds	r1, r1, r8
	str	r1, [fp, #-76]
	adc	r3, r3, r9
	str	r3, [fp, #-72]
	ldrd	r2, [fp, #-76]
	strd	r2, [fp, #-36]
	ldrd	r0, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #4
	orr	r2, r2, r1, lsl #28
	lsr	r3, r1, #4
	ldrd	r0, [fp, #-36]
	adds	r6, r2, r0
	adc	r7, r3, r1
	adr	r3, .L774+16
	ldrd	r2, [r3]
	and	r1, r6, r2
	str	r1, [fp, #-84]
	and	r3, r7, r3
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-84]
	strd	r2, [fp, #-36]
	ldr	ip, [fp, #-36]
	ldrd	r0, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	mov	r2, r1
	mov	r3, #0
	mov	r3, r2
	add	r3, ip, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsr	r3, r3, #16
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	and	r3, r3, #127
	mov	r0, r3
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	bx	lr
.L775:
	.align	3
.L774:
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
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #1
	movw	r3, #21845
	movt	r3, 21845
	and	r3, r3, r2
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #2
	movw	r2, #13107
	movt	r2, 13107
	and	r2, r2, r3
	ldr	r1, [fp, #-8]
	movw	r3, #13107
	movt	r3, 13107
	and	r3, r3, r1
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #4
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	movw	r3, #3855
	movt	r3, 3855
	and	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #16
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	and	r3, r3, #63
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.syntax unified
	.arm
	.type	__powidf2, %function
__powidf2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	vstr.64	d0, [fp, #-28]
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	lsr	r3, r3, #31
	uxtb	r3, r3
	str	r3, [fp, #-16]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [fp, #-12]
.L782:
	ldr	r3, [fp, #-32]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L779
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-28]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [fp, #-12]
.L779:
	ldr	r3, [fp, #-32]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L787
	vldr.64	d7, [fp, #-28]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [fp, #-28]
	b	.L782
.L787:
	nop
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L783
	vmov.f64	d5, #1.0e+0
	vldr.64	d6, [fp, #-12]
	vdiv.f64	d7, d5, d6
	b	.L785
.L783:
	vldr.64	d7, [fp, #-12]
.L785:
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.syntax unified
	.arm
	.type	__powisf2, %function
__powisf2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	vstr.32	s0, [fp, #-16]
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #31
	uxtb	r3, r3
	str	r3, [fp, #-12]
	mov	r3, #1065353216
	str	r3, [fp, #-8]	@ float
.L792:
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L789
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-16]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-8]
.L789:
	ldr	r3, [fp, #-20]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L797
	vldr.32	s15, [fp, #-16]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [fp, #-16]
	b	.L792
.L797:
	nop
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L793
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [fp, #-8]
	vdiv.f32	s15, s13, s14
	b	.L795
.L793:
	vldr.32	s15, [fp, #-8]
.L795:
	vmov.f32	s0, s15
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.syntax unified
	.arm
	.type	__ucmpdi2, %function
__ucmpdi2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	strd	r0, [fp, #-28]
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-28]
	strd	r2, [fp, #-12]
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcs	.L799
	mov	r3, #0
	b	.L804
.L799:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bls	.L801
	mov	r3, #2
	b	.L804
.L801:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcs	.L802
	mov	r3, #0
	b	.L804
.L802:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bls	.L803
	mov	r3, #2
	b	.L804
.L803:
	mov	r3, #1
.L804:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.syntax unified
	.arm
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	strd	r0, [fp, #-12]
	strd	r2, [fp, #-20]
	ldrd	r0, [fp, #-12]
	ldrd	r2, [fp, #-20]
	bl	__ucmpdi2
	mov	r3, r0
	sub	r3, r3, #1
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.global	__aeabi_uidivmod
	.global	__aeabi_ul2f
	.global	__aeabi_ul2d
	.global	__aeabi_ldivmod
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
