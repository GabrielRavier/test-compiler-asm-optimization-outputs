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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L2
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #28]
	b	.L3
.L4:
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #28]
	sub	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #28]
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
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	beq	.L5
	ldr	r3, [sp, #12]
	str	r3, [sp, #24]
	b	.L6
.L7:
	ldr	r2, [sp, #8]
	add	r3, r2, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #24]
	add	r1, r3, #1
	str	r1, [sp, #24]
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
	add	sp, sp, #32
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
	ldr	r3, [sp, #4]
	and	r3, r3, #255
	str	r3, [sp, #20]
	b	.L11
.L13:
	ldr	r3, [sp]
	sub	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L11:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	strb	r2, [r3]
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #20]
	cmp	r3, r2
	bne	.L13
.L12:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [sp, #12]
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
	ldr	r3, [sp, #8]
	and	r3, r3, #255
	str	r3, [sp, #20]
	b	.L18
.L20:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L18:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #20]
	cmp	r3, r2
	bne	.L20
.L19:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [sp, #12]
	b	.L23
.L21:
	mov	r3, #0
.L23:
	nop
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	b	.L26
.L28:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L26:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L28
.L27:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	b	.L31
.L29:
	mov	r3, #0
.L31:
	nop
	mov	r0, r3
	add	sp, sp, #16
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
	b	.L34
.L35:
	ldr	r2, [sp, #8]
	add	r3, r2, #1
	str	r3, [sp, #8]
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
	ldr	r3, [sp, #8]
	and	r3, r3, #255
	str	r3, [sp, #20]
	b	.L39
.L41:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #20]
	cmp	r3, r2
	bne	.L39
	ldr	r2, [sp, #12]
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp]
	and	r3, r3, #255
	str	r3, [sp, #12]
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
	ldr	r3, [sp, #12]
	cmp	r3, r2
	bne	.L56
.L55:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #16
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
	beq	.L63
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L62
	mov	r3, #0
	b	.L61
.L63:
	nop
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
	b	.L66
.L68:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
.L66:
	ldr	r3, [sp, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L67
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L68
.L67:
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
	b	.L72
.L73:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L72:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L73
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
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
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #20]
	cmp	r3, #0
	bne	.L79
	mov	r3, #0
	b	.L78
.L81:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
.L79:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L80
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L80
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L81
.L80:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
.L78:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	b	.L84
.L85:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #8]
	strb	r2, [r3]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	ldr	r2, [sp, #12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #8]
	add	r3, r3, #2
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	r3, r3, #2
	str	r3, [sp, #12]
	ldr	r3, [sp, #4]
	sub	r3, r3, #2
	str	r3, [sp, #4]
.L84:
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bgt	.L85
	nop
	nop
	add	sp, sp, #16
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
	beq	.L94
	ldr	r3, [sp, #4]
	cmp	r3, #9
	bne	.L95
.L94:
	mov	r3, #1
	b	.L97
.L95:
	mov	r3, #0
.L97:
	nop
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
	bls	.L100
	ldr	r3, [sp, #4]
	cmp	r3, #127
	bne	.L101
.L100:
	mov	r3, #1
	b	.L103
.L101:
	mov	r3, #0
.L103:
	nop
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
	beq	.L118
	ldr	r3, [sp, #4]
	sub	r3, r3, #9
	cmp	r3, #4
	bhi	.L119
.L118:
	mov	r3, #1
	b	.L121
.L119:
	mov	r3, #0
.L121:
	nop
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
	bls	.L127
	ldr	r3, [sp, #4]
	sub	r3, r3, #127
	cmp	r3, #32
	bls	.L127
	ldr	r3, [sp, #4]
	sub	r3, r3, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L127
	ldr	r3, [sp, #4]
	sub	r3, r3, #65280
	sub	r3, r3, #249
	cmp	r3, #2
	bhi	.L128
.L127:
	mov	r3, #1
	b	.L130
.L128:
	mov	r3, #0
.L130:
	nop
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
	bhi	.L136
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	and	r3, r3, #127
	cmp	r3, #32
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L137
.L136:
	ldr	r3, [sp, #4]
	ldr	r2, .L143
	cmp	r3, r2
	bls	.L138
	ldr	r3, [sp, #4]
	sub	r3, r3, #8192
	sub	r3, r3, #42
	ldr	r2, .L143+4
	cmp	r3, r2
	bls	.L138
	ldr	r3, [sp, #4]
	sub	r3, r3, #57344
	ldr	r2, .L143+8
	cmp	r3, r2
	bhi	.L139
.L138:
	mov	r3, #1
	b	.L137
.L139:
	ldr	r3, [sp, #4]
	sub	r3, r3, #65280
	sub	r3, r3, #252
	ldr	r2, .L143+12
	cmp	r3, r2
	bhi	.L140
	ldr	r2, [sp, #4]
	ldr	r3, .L143+16
	and	r3, r3, r2
	ldr	r2, .L143+16
	cmp	r3, r2
	bne	.L141
.L140:
	mov	r3, #0
	b	.L137
.L141:
	mov	r3, #1
.L137:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L144:
	.align	2
.L143:
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
	bls	.L146
	ldr	r3, [sp, #4]
	orr	r3, r3, #32
	sub	r3, r3, #97
	cmp	r3, #5
	bhi	.L147
.L146:
	mov	r3, #1
	b	.L149
.L147:
	mov	r3, #0
.L149:
	nop
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
	bvc	.L155
	vldr.64	d7, [sp, #8]
	b	.L156
.L155:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L157
	vldr.64	d7, [sp]
	b	.L156
.L157:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L162
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vsub.f64	d7, d6, d7
	b	.L156
.L162:
	vldr.64	d7, .L164
.L156:
	vmov.f64	d0, d7
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L165:
	.align	3
.L164:
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
	bvc	.L167
	vldr.32	s15, [sp, #4]
	b	.L168
.L167:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L169
	vldr.32	s15, [sp]
	b	.L168
.L169:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L174
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vsub.f32	s15, s14, s15
	b	.L168
.L174:
	vldr.32	s15, .L176
.L168:
	vmov.f32	s0, s15
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L177:
	.align	2
.L176:
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
	bvc	.L179
	vldr.64	d7, [sp]
	b	.L180
.L179:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L181
	vldr.64	d7, [sp, #8]
	b	.L180
.L181:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L182
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L183
	vldr.64	d7, [sp]
	b	.L180
.L183:
	vldr.64	d7, [sp, #8]
	b	.L180
.L182:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L189
	vldr.64	d7, [sp]
	b	.L180
.L189:
	vldr.64	d7, [sp, #8]
.L180:
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
	bvc	.L192
	vldr.32	s15, [sp]
	b	.L193
.L192:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L194
	vldr.32	s15, [sp, #4]
	b	.L193
.L194:
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L195
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L196
	vldr.32	s15, [sp]
	b	.L193
.L196:
	vldr.32	s15, [sp, #4]
	b	.L193
.L195:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L202
	vldr.32	s15, [sp]
	b	.L193
.L202:
	vldr.32	s15, [sp, #4]
.L193:
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
	bvc	.L205
	vldr.64	d7, [sp]
	b	.L206
.L205:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L207
	vldr.64	d7, [sp, #8]
	b	.L206
.L207:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L208
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L209
	vldr.64	d7, [sp]
	b	.L206
.L209:
	vldr.64	d7, [sp, #8]
	b	.L206
.L208:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L215
	vldr.64	d7, [sp]
	b	.L206
.L215:
	vldr.64	d7, [sp, #8]
.L206:
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
	bvc	.L218
	vldr.64	d7, [sp]
	b	.L219
.L218:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L220
	vldr.64	d7, [sp, #8]
	b	.L219
.L220:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L221
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L222
	vldr.64	d7, [sp, #8]
	b	.L219
.L222:
	vldr.64	d7, [sp]
	b	.L219
.L221:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L228
	vldr.64	d7, [sp, #8]
	b	.L219
.L228:
	vldr.64	d7, [sp]
.L219:
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
	bvc	.L231
	vldr.32	s15, [sp]
	b	.L232
.L231:
	vldr.32	s14, [sp]
	vldr.32	s15, [sp]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bvc	.L233
	vldr.32	s15, [sp, #4]
	b	.L232
.L233:
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L234
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L235
	vldr.32	s15, [sp, #4]
	b	.L232
.L235:
	vldr.32	s15, [sp]
	b	.L232
.L234:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L241
	vldr.32	s15, [sp, #4]
	b	.L232
.L241:
	vldr.32	s15, [sp]
.L232:
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
	bvc	.L244
	vldr.64	d7, [sp]
	b	.L245
.L244:
	vldr.64	d6, [sp]
	vldr.64	d7, [sp]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bvc	.L246
	vldr.64	d7, [sp, #8]
	b	.L245
.L246:
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	mov	r2, r3
	ldr	r3, [sp, #4]
	and	r3, r3, #-2147483648
	cmp	r2, r3
	beq	.L247
	ldr	r3, [sp, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #0
	beq	.L248
	vldr.64	d7, [sp, #8]
	b	.L245
.L248:
	vldr.64	d7, [sp]
	b	.L245
.L247:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L254
	vldr.64	d7, [sp, #8]
	b	.L245
.L254:
	vldr.64	d7, [sp]
.L245:
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
	ldr	r3, .L261
	str	r3, [sp, #12]
	b	.L257
.L258:
	ldr	r3, [sp, #8]
	and	r3, r3, #63
	ldr	r2, .L261+4
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	strb	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #6
	str	r3, [sp, #8]
.L257:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L258
	ldr	r3, [sp, #12]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L261
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	mov	pc, lr
.L262:
	.align	2
.L261:
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
	ldr	r3, .L265
	str	r1, [r3]
	str	r2, [r3, #4]
	nop
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L266:
	.align	2
.L265:
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
	ldr	r3, .L269
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	ldr	r1, .L269+4
	mul	r1, r3, r1
	ldr	r3, .L269+8
	mul	r3, r2, r3
	add	r0, r1, r3
	ldr	ip, .L269+4
	umull	r1, r3, r2, ip
	add	r3, r0, r3
	adds	r1, r1, #1
	adc	r2, r3, #0
	ldr	r3, .L269
	str	r1, [r3]
	str	r2, [r3, #4]
	ldr	r3, .L269
	ldr	r3, [r3, #4]
	lsr	r2, r3, #1
	mov	r3, r2
	mov	r0, r3
	mov	pc, lr
.L270:
	.align	2
.L269:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L272
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #4]
	str	r2, [r3]
	b	.L271
.L272:
	ldr	r3, [sp]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	str	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #4]
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	str	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L271
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
.L271:
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
	.size	insque, .-insque
	.align	2
	.global	remque
	.syntax unified
	.arm
	.type	remque, %function
remque:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L276
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L276:
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L278
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [sp, #4]
	ldr	r2, [r2]
	str	r2, [r3]
.L278:
	nop
	add	sp, sp, #8
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
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L281
.L284:
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #40]
	mov	r1, r2
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L282
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	b	.L283
.L282:
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L281:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcc	.L284
	ldr	r3, [sp, #20]
	add	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3]
	ldr	r3, [sp, #20]
	mul	r3, r4, r3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	ldr	r2, [sp]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	memcpy
	mov	r3, r0
.L283:
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
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L287
.L290:
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #40]
	mov	r1, r2
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L288
	ldr	r3, [sp, #28]
	mul	r3, r4, r3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	b	.L289
.L288:
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L287:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcc	.L290
	mov	r3, #0
.L289:
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
	b	.L296
.L297:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L296:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L297
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L298
	cmp	r3, #45
	bne	.L300
	mov	r3, #1
	str	r3, [sp, #8]
.L298:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L300
.L301:
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
.L300:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L301
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L302
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L304
.L302:
	ldr	r3, [sp, #12]
.L304:
	nop
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
	b	.L307
.L308:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L307:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L308
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L309
	cmp	r3, #45
	bne	.L311
	mov	r3, #1
	str	r3, [sp, #8]
.L309:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L311
.L312:
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
.L311:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L312
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L313
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L315
.L313:
	ldr	r3, [sp, #12]
.L315:
	nop
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
	b	.L318
.L319:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L318:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L319
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L320
	cmp	r3, #45
	bne	.L322
	mov	r3, #1
	str	r3, [sp, #12]
.L320:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	b	.L322
.L323:
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
.L322:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L323
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L324
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	rsbs	r2, r2, #0
	rsc	r3, r3, #0
	b	.L326
.L324:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
.L326:
	nop
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
	b	.L329
.L334:
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
	bge	.L330
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	b	.L329
.L330:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L332
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
	b	.L329
.L332:
	ldr	r3, [sp, #20]
	b	.L333
.L329:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L334
	mov	r3, #0
.L333:
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
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	b	.L337
.L341:
	ldr	r3, [sp, #28]
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp]
	mul	r3, r2, r3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #12]
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L338
	ldr	r3, [sp, #24]
	b	.L339
.L338:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ble	.L340
	ldr	r2, [sp, #24]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r3, [sp, #28]
	sub	r3, r3, #1
	str	r3, [sp, #28]
.L340:
	ldr	r3, [sp, #28]
	asr	r3, r3, #1
	str	r3, [sp, #28]
.L337:
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L341
	mov	r3, #0
.L339:
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
	b	.L365
.L367:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
.L365:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L366
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	ldr	r2, [sp]
	cmp	r2, r3
	bne	.L367
.L366:
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L368
	ldr	r3, [sp, #4]
	b	.L370
.L368:
	mov	r3, #0
.L370:
	nop
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
	b	.L373
.L375:
	ldr	r3, [sp, #4]
	add	r3, r3, #4
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r3, r3, #4
	str	r3, [sp]
.L373:
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L374
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L374
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L375
.L374:
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L376
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L378
.L376:
	mvn	r3, #0
.L378:
	nop
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
.L381:
	ldr	r2, [sp]
	add	r3, r2, #4
	str	r3, [sp]
	ldr	r3, [sp, #12]
	add	r1, r3, #4
	str	r1, [sp, #12]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L381
	ldr	r3, [sp, #4]
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
	b	.L385
.L386:
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
.L385:
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L386
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
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
	b	.L390
.L392:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #8]
.L390:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L391
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L391
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L391
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L392
.L391:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L393
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L394
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L397
.L394:
	mvn	r3, #0
	b	.L397
.L393:
	mov	r3, #0
.L397:
	nop
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
	b	.L400
.L402:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
.L400:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L401
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bne	.L402
.L401:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L403
	ldr	r3, [sp, #12]
	b	.L405
.L403:
	mov	r3, #0
.L405:
	nop
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
	b	.L408
.L410:
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #8]
.L408:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L409
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L410
.L409:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L411
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L412
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	movhi	r3, #1
	movls	r3, #0
	and	r3, r3, #255
	b	.L415
.L412:
	mvn	r3, #0
	b	.L415
.L411:
	mov	r3, #0
.L415:
	nop
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
	b	.L418
.L419:
	ldr	r2, [sp, #8]
	add	r3, r2, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	add	r1, r3, #4
	str	r1, [sp, #20]
	ldr	r2, [r2]
	str	r2, [r3]
.L418:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L419
	ldr	r3, [sp, #12]
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
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bne	.L423
	ldr	r3, [sp, #12]
	b	.L424
.L423:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r2, r2, r3
	ldr	r3, [sp, #4]
	lsl	r3, r3, #2
	cmp	r2, r3
	bcs	.L425
	b	.L426
.L427:
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
.L426:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L427
	b	.L428
.L425:
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L429
.L430:
	ldr	r2, [sp, #8]
	add	r3, r2, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	add	r1, r3, #4
	str	r1, [sp, #20]
	ldr	r2, [r2]
	str	r2, [r3]
.L429:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L430
.L428:
	ldr	r3, [sp, #12]
.L424:
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
	b	.L433
.L434:
	ldr	r3, [sp, #20]
	add	r2, r3, #4
	str	r2, [sp, #20]
	ldr	r2, [sp, #8]
	str	r2, [r3]
.L433:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L434
	ldr	r3, [sp, #12]
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
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcs	.L438
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #16]
	b	.L439
.L440:
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
.L439:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L440
	b	.L444
.L438:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	beq	.L444
	b	.L442
.L443:
	ldr	r2, [sp, #12]
	add	r3, r2, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r1, r3, #1
	str	r1, [sp, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L442:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L443
.L444:
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
	mov	r0, r3
	mov	r1, r2
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
	mov	r0, r1
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
	b	.L486
.L489:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L487
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	b	.L488
.L487:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L486:
	ldr	r3, [sp, #12]
	cmp	r3, #31
	bls	.L489
	mov	r3, #0
.L488:
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
	cmp	r0, #0
	bne	.L492
	mov	r4, #0
	b	.L493
.L492:
	mov	r3, r0
	mov	r4, #1
	b	.L494
.L495:
	asr	r3, r3, #1
	add	r4, r4, #1
.L494:
	and	r2, r3, #1
	cmp	r2, #0
	beq	.L495
	nop
.L493:
	mov	r0, r4
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
	vldr.32	s14, .L505
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bmi	.L498
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L505+4
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L503
.L498:
	mov	r3, #1
	b	.L502
.L503:
	mov	r3, #0
.L502:
	nop
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L506:
	.align	2
.L505:
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
	vldr.64	d6, .L515
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L508
	vldr.64	d7, [sp]
	vldr.64	d6, .L515+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L513
.L508:
	mov	r3, #1
	b	.L512
.L513:
	mov	r3, #0
.L512:
	nop
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L516:
	.align	3
.L515:
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
	vldr.64	d6, .L525
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L518
	vldr.64	d7, [sp]
	vldr.64	d6, .L525+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L523
.L518:
	mov	r3, #1
	b	.L522
.L523:
	mov	r3, #0
.L522:
	nop
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L526:
	.align	3
.L525:
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
	bvs	.L530
	vldr.32	s15, [sp, #4]
	vadd.f32	s15, s15, s15
	vldr.32	s14, [sp, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	beq	.L530
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L531
	mov	r3, #1056964608
	b	.L532
.L531:
	mov	r3, #1073741824
.L532:
	str	r3, [sp, #12]	@ float
.L535:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L533
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #4]
.L533:
	ldr	r3, [sp]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L537
	vldr.32	s15, [sp, #12]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [sp, #12]
	b	.L535
.L537:
	nop
.L530:
	vldr.32	s15, [sp, #4]
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
	bvs	.L540
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L540
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L541
	mov	r2, #0
	ldr	r3, .L549
	b	.L542
.L541:
	mov	r2, #0
	mov	r3, #1073741824
.L542:
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L545:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L543
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #8]
.L543:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L547
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #16]
	b	.L545
.L547:
	nop
.L540:
	vldr.64	d7, [sp, #8]
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L550:
	.align	2
.L549:
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
	bvs	.L552
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vldr.64	d6, [sp, #8]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	beq	.L552
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L553
	mov	r2, #0
	ldr	r3, .L561
	b	.L554
.L553:
	mov	r2, #0
	mov	r3, #1073741824
.L554:
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.L557:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L555
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #8]
.L555:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L559
	vldr.64	d7, [sp, #16]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #16]
	b	.L557
.L559:
	nop
.L552:
	vldr.64	d7, [sp, #8]
	vmov.f64	d0, d7
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L562:
	.align	2
.L561:
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
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	b	.L564
.L565:
	ldr	r3, [sp, #8]
	add	r2, r3, #1
	str	r2, [sp, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	add	r2, r3, #1
	str	r2, [sp, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	eor	r2, r2, r1
	and	r2, r2, #255
	strb	r2, [r3]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L564:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L565
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
	b	.L569
.L571:
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
.L569:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L570
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L571
.L570:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L572
	ldr	r3, [sp, #20]
	mov	r2, #0
	strb	r2, [r3]
.L572:
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
	b	.L576
.L581:
	nop
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L576:
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	cmp	r2, r3
	bcs	.L577
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L581
.L577:
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
	b	.L584
.L588:
	ldr	r3, [sp]
	str	r3, [sp, #12]
	b	.L585
.L587:
	ldr	r3, [sp, #12]
	add	r2, r3, #1
	str	r2, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L585
	ldr	r3, [sp, #4]
	b	.L586
.L585:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L587
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L584:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L588
	mov	r3, #0
.L586:
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
.L592:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [sp, #4]
	cmp	r2, r1
	bne	.L591
	str	r3, [sp, #12]
.L591:
	mov	r2, r3
	add	r3, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L592
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
	ldr	r0, [sp]
	bl	strlen
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L598
	ldr	r3, [sp, #4]
	b	.L597
.L600:
	ldr	r2, [sp, #12]
	ldr	r1, [sp]
	ldr	r0, [sp, #8]
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L599
	ldr	r3, [sp, #8]
	b	.L597
.L599:
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L598:
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	strchr
	str	r0, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L600
	mov	r3, #0
.L597:
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
	bpl	.L603
	vldr.64	d7, [sp]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L605
.L603:
	vldr.64	d7, [sp, #8]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L606
	vldr.64	d7, [sp]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L606
.L605:
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	b	.L609
.L606:
	vldr.64	d7, [sp, #8]
.L609:
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
	str	r3, [sp, #20]
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L614
	ldr	r3, [sp, #12]
	b	.L615
.L614:
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L617
	mov	r3, #0
	b	.L615
.L619:
	ldr	r3, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L618
	ldr	r3, [sp, #12]
	add	r0, r3, #1
	ldr	r3, [sp, #4]
	add	r1, r3, #1
	ldr	r3, [sp]
	sub	r3, r3, #1
	mov	r2, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L618
	ldr	r3, [sp, #12]
	b	.L615
.L618:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L617:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L619
	mov	r3, #0
.L615:
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
	bpl	.L625
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	vstr.64	d7, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #20]
.L625:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	blt	.L640
	b	.L629
.L630:
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	vldr.64	d6, [sp, #8]
	vmov.f64	d5, #2.0e+0
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [sp, #8]
.L629:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #1.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bge	.L630
	b	.L631
.L640:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L631
	vldr.64	d7, [sp, #8]
	vcmp.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L631
	b	.L633
.L634:
	ldr	r3, [sp, #16]
	sub	r3, r3, #1
	str	r3, [sp, #16]
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d7
	vstr.64	d7, [sp, #8]
.L633:
	vldr.64	d7, [sp, #8]
	vmov.f64	d6, #5.0e-1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L634
.L631:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #16]
	str	r2, [r3]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L635
	vldr.64	d7, [sp, #8]
	vneg.f64	d7, d7
	vstr.64	d7, [sp, #8]
.L635:
	vldr.64	d7, [sp, #8]
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
	b	.L643
.L645:
	ldr	r3, [sp, #16]
	and	r3, r3, #1
	mov	r2, #0
	orrs	r3, r3, r2
	beq	.L644
	ldr	r3, [sp, #24]
	ldr	r0, [sp, #28]
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	adds	r2, r3, r2
	adc	r3, r0, r1
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L644:
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
.L643:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orrs	r3, r2, r3
	bne	.L645
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
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
	b	.L649
.L651:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L649:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L652
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L652
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L651
	b	.L652
.L654:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L653
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L653:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L652:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L654
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L655
	ldr	r3, [sp, #12]
	b	.L656
.L655:
	ldr	r3, [sp, #16]
.L656:
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
	bne	.L659
	mov	r3, #7
	b	.L660
.L659:
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsl	r3, r3, #8
	mov	r0, r3
	bl	__clzsi2
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	sub	r3, r3, #1
.L660:
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
	bge	.L663
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	mvn	r2, r2
	mvn	r3, r3
	str	r2, [sp]
	str	r3, [sp, #4]
.L663:
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	orrs	r3, r2, r3
	bne	.L664
	mov	r3, #63
	b	.L665
.L664:
	ldmia	sp, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	bl	__clzdi2
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	sub	r3, r3, #1
.L665:
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
	b	.L668
.L670:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L669
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L669:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsl	r3, r3, #1
	str	r3, [sp]
.L668:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L670
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #3
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	bic	r3, r3, #7
	str	r3, [sp, #24]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L674
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bls	.L681
.L674:
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L676
.L677:
	ldr	r3, [sp, #28]
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	ldr	r2, [sp, #28]
	lsl	r2, r2, #3
	ldr	r1, [sp, #12]
	add	r1, r1, r2
	ldmia	r3, {r2-r3}
	stm	r1, {r2-r3}
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L676:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcc	.L677
	b	.L678
.L679:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	add	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #24]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #24]
	add	r3, r3, #1
	str	r3, [sp, #24]
.L678:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bhi	.L679
	b	.L680
.L682:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L681:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L682
	nop
.L680:
	nop
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L685
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bls	.L691
.L685:
	mov	r3, #0
	str	r3, [sp, #20]
	b	.L687
.L688:
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	ldr	r1, [sp, #12]
	add	r3, r1, r3
	ldrsh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L687:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcc	.L688
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L690
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	ldr	r1, [sp, #12]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L690
.L692:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L691:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L692
	nop
.L690:
	nop
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #4]
	lsr	r3, r3, #2
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	bic	r3, r3, #3
	str	r3, [sp, #24]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L695
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bls	.L702
.L695:
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L697
.L698:
	ldr	r3, [sp, #28]
	lsl	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	ldr	r3, [sp, #28]
	lsl	r3, r3, #2
	ldr	r1, [sp, #12]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L697:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bcc	.L698
	b	.L699
.L700:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	add	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #24]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [sp, #24]
	add	r3, r3, #1
	str	r3, [sp, #24]
.L699:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bhi	.L700
	b	.L701
.L703:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L702:
	ldr	r3, [sp, #4]
	sub	r2, r3, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	bne	.L703
	nop
.L701:
	nop
	add	sp, sp, #32
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
	vmov	d0, r2, r3
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
	vmov	s0, r3
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
	b	.L724
.L727:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	rsb	r3, r3, #15
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L729
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L724:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L727
	b	.L726
.L729:
	nop
.L726:
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
	b	.L732
.L735:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L737
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L732:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L735
	b	.L734
.L737:
	nop
.L734:
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
	vldr.32	s14, .L746
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L744
	vldr.32	s15, [sp, #4]
	vldr.32	s14, .L746
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	add	r3, r3, #32768
	b	.L742
.L744:
	vldr.32	s15, [sp, #4]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
.L742:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	mov	pc, lr
.L747:
	.align	2
.L746:
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
	b	.L749
.L751:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L750
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L750:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L749:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L751
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
	b	.L755
.L757:
	ldrh	r2, [sp, #6]
	ldr	r3, [sp, #12]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L756
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L756:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L755:
	ldr	r3, [sp, #12]
	cmp	r3, #15
	ble	.L757
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
	b	.L761
.L763:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L762
	ldr	r2, [sp, #12]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L762:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsl	r3, r3, #1
	str	r3, [sp]
.L761:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L763
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
	bne	.L769
	mov	r3, #0
	b	.L768
.L771:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L770
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L770:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	lsr	r3, r3, #1
	str	r3, [sp]
.L769:
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L771
	ldr	r3, [sp, #12]
.L768:
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
	b	.L774
.L776:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L774:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L777
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L777
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L776
	b	.L777
.L779:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L778
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L778:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L777:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L779
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L780
	ldr	r3, [sp, #12]
	b	.L781
.L780:
	ldr	r3, [sp, #16]
.L781:
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
	bpl	.L791
	mvn	r3, #0
	b	.L786
.L791:
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L792
	mov	r3, #1
	b	.L786
.L792:
	mov	r3, #0
.L786:
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
	bpl	.L802
	mvn	r3, #0
	b	.L797
.L802:
	vldr.64	d6, [sp, #8]
	vldr.64	d7, [sp]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L803
	mov	r3, #1
	b	.L797
.L803:
	mov	r3, #0
.L797:
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
	mov	r0, ip
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
	mov	r0, ip
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
	bge	.L812
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
	mov	r3, #1
	str	r3, [sp, #16]
.L812:
	mov	r3, #0
	strb	r3, [sp, #23]
	b	.L813
.L816:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L814
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	str	r3, [sp, #12]
.L814:
	ldr	r3, [sp, #4]
	lsl	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp]
	asr	r3, r3, #1
	str	r3, [sp]
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	r3, [sp, #23]
.L813:
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L815
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L816
.L815:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L817
	ldr	r3, [sp, #12]
	rsb	r3, r3, #0
	b	.L819
.L817:
	ldr	r3, [sp, #12]
.L819:
	nop
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
	bge	.L822
	ldr	r3, [sp, #4]
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	str	r3, [sp, #12]
.L822:
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L823
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	str	r3, [sp, #12]
.L823:
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #0
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L824
	ldr	r3, [sp, #8]
	rsb	r3, r3, #0
	str	r3, [sp, #8]
.L824:
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
	bge	.L828
	ldr	r3, [sp, #4]
	rsb	r3, r3, #0
	str	r3, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #12]
.L828:
	ldr	r3, [sp]
	cmp	r3, #0
	bge	.L829
	ldr	r3, [sp]
	rsb	r3, r3, #0
	str	r3, [sp]
.L829:
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r0, r3
	bl	__udivmodsi4
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L830
	ldr	r3, [sp, #8]
	rsb	r3, r3, #0
	str	r3, [sp, #8]
.L830:
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
	b	.L834
.L836:
	ldrh	r3, [sp, #4]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [sp, #4]	@ movhi
	ldrh	r3, [sp, #14]	@ movhi
	lsl	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
.L834:
	ldrh	r2, [sp, #4]
	ldrh	r3, [sp, #6]
	cmp	r2, r3
	bcs	.L837
	ldrh	r3, [sp, #14]
	cmp	r3, #0
	beq	.L837
	ldrsh	r3, [sp, #4]
	cmp	r3, #0
	bge	.L836
	b	.L837
.L839:
	ldrh	r2, [sp, #6]
	ldrh	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L838
	ldrh	r2, [sp, #6]	@ movhi
	ldrh	r3, [sp, #4]	@ movhi
	sub	r3, r2, r3
	strh	r3, [sp, #6]	@ movhi
	ldrh	r2, [sp, #12]	@ movhi
	ldrh	r3, [sp, #14]	@ movhi
	orr	r3, r2, r3
	strh	r3, [sp, #12]	@ movhi
.L838:
	ldrh	r3, [sp, #14]
	lsr	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
	ldrh	r3, [sp, #4]
	lsr	r3, r3, #1
	strh	r3, [sp, #4]	@ movhi
.L837:
	ldrh	r3, [sp, #14]
	cmp	r3, #0
	bne	.L839
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L840
	ldrh	r3, [sp, #6]
	b	.L841
.L840:
	ldrh	r3, [sp, #12]
.L841:
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
	b	.L844
.L846:
	ldr	r3, [sp, #8]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	lsl	r3, r3, #1
	str	r3, [sp, #20]
.L844:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L847
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L847
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L846
	b	.L847
.L849:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L848
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	orr	r3, r2, r3
	str	r3, [sp, #16]
.L848:
	ldr	r3, [sp, #20]
	lsr	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	lsr	r3, r3, #1
	str	r3, [sp, #8]
.L847:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L849
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L850
	ldr	r3, [sp, #12]
	b	.L851
.L850:
	ldr	r3, [sp, #16]
.L851:
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
	beq	.L854
	mov	r3, #0
	str	r3, [sp, #16]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	lsl	r3, r2, r3
	str	r3, [sp, #20]
	b	.L855
.L854:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L856
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L858
.L856:
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
.L855:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
.L858:
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
	beq	.L861
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
	b	.L862
.L861:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L863
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	b	.L865
.L863:
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
.L862:
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
.L865:
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
	mov	r0, r1
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
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #64
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #65536
	bcs	.L874
	mov	r3, #16
	b	.L875
.L874:
	mov	r3, #0
.L875:
	str	r3, [sp, #56]
	ldr	r3, [sp, #56]
	rsb	r3, r3, #16
	ldr	r2, [sp, #60]
	lsr	r3, r2, r3
	str	r3, [sp, #52]
	ldr	r3, [sp, #56]
	str	r3, [sp, #48]
	ldr	r3, [sp, #52]
	and	r3, r3, #65280
	cmp	r3, #0
	bne	.L876
	mov	r3, #8
	b	.L877
.L876:
	mov	r3, #0
.L877:
	str	r3, [sp, #44]
	ldr	r3, [sp, #44]
	rsb	r3, r3, #8
	ldr	r2, [sp, #52]
	lsr	r3, r2, r3
	str	r3, [sp, #40]
	ldr	r3, [sp, #44]
	ldr	r2, [sp, #48]
	add	r3, r2, r3
	str	r3, [sp, #36]
	ldr	r3, [sp, #40]
	and	r3, r3, #240
	cmp	r3, #0
	bne	.L878
	mov	r3, #4
	b	.L879
.L878:
	mov	r3, #0
.L879:
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	rsb	r3, r3, #4
	ldr	r2, [sp, #40]
	lsr	r3, r2, r3
	str	r3, [sp, #28]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r3, [sp, #28]
	and	r3, r3, #12
	cmp	r3, #0
	bne	.L880
	mov	r3, #2
	b	.L881
.L880:
	mov	r3, #0
.L881:
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	rsb	r3, r3, #2
	ldr	r2, [sp, #28]
	lsr	r3, r2, r3
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #24]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #16]
	and	r3, r3, #2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	mov	r2, r3
	ldr	r3, [sp, #16]
	rsb	r3, r3, #2
	mul	r2, r3, r2
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #64
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
	bge	.L885
	mov	r3, #0
	b	.L890
.L885:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	ble	.L887
	mov	r3, #2
	b	.L890
.L887:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L888
	mov	r3, #0
	b	.L890
.L888:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L889
	mov	r3, #2
	b	.L890
.L889:
	mov	r3, #1
.L890:
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
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #64
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #60]
	ldr	r3, [sp, #60]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	bne	.L896
	mov	r3, #16
	b	.L897
.L896:
	mov	r3, #0
.L897:
	str	r3, [sp, #56]
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #56]
	lsr	r3, r2, r3
	str	r3, [sp, #52]
	ldr	r3, [sp, #56]
	str	r3, [sp, #48]
	ldr	r3, [sp, #52]
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L898
	mov	r3, #8
	b	.L899
.L898:
	mov	r3, #0
.L899:
	str	r3, [sp, #44]
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #44]
	lsr	r3, r2, r3
	str	r3, [sp, #40]
	ldr	r3, [sp, #44]
	ldr	r2, [sp, #48]
	add	r3, r2, r3
	str	r3, [sp, #36]
	ldr	r3, [sp, #40]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L900
	mov	r3, #4
	b	.L901
.L900:
	mov	r3, #0
.L901:
	str	r3, [sp, #32]
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #32]
	lsr	r3, r2, r3
	str	r3, [sp, #28]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r3, [sp, #28]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L902
	mov	r3, #2
	b	.L903
.L902:
	mov	r3, #0
.L903:
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	lsr	r3, r2, r3
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	and	r3, r3, #3
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #24]
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	mvn	r3, r3
	and	r2, r3, #1
	ldr	r3, [sp, #12]
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	rsb	r2, r2, #0
	and	r2, r2, r3
	ldr	r3, [sp, #8]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, sp, #64
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
	beq	.L907
	mov	r3, #0
	str	r3, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #36]
	sub	r3, r1, r3
	lsr	r3, r2, r3
	str	r3, [sp, #16]
	b	.L908
.L907:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L909
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	b	.L911
.L909:
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
.L908:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
.L911:
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, #16
	str	r3, [sp, #36]
	mvn	r2, #0
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	str	r3, [sp, #32]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #32]
	and	r3, r3, r2
	ldr	r1, [sp]
	ldr	r2, [sp, #32]
	and	r2, r2, r1
	mul	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	str	r3, [sp, #28]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #32]
	and	r3, r3, r2
	str	r3, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	ldr	r1, [sp]
	ldr	r2, [sp, #32]
	and	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #32]
	and	r1, r1, r3
	ldr	r3, [sp, #36]
	lsl	r3, r1, r3
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #32]
	and	r3, r3, r2
	str	r3, [sp, #8]
	ldr	r2, [sp]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #32]
	and	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #16]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #32]
	and	r1, r1, r3
	ldr	r3, [sp, #36]
	lsl	r3, r1, r3
	add	r3, r2, r3
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	mov	r1, r3
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	add	r3, r1, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	mov	r0, r3
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	lsr	r3, r2, r3
	ldr	r1, [sp]
	ldr	r2, [sp, #36]
	lsr	r2, r1, r2
	mul	r3, r2, r3
	add	r3, r0, r3
	str	r3, [sp, #12]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #40
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	stm	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	mov	r2, r3
	ldr	r3, [sp, #8]
	eor	r3, r3, r2
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	lsr	r3, r3, #16
	ldr	r2, [sp, #28]
	eor	r3, r3, r2
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	lsr	r3, r3, #8
	ldr	r2, [sp, #24]
	eor	r3, r3, r2
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsr	r3, r3, #4
	ldr	r2, [sp, #20]
	eor	r3, r3, r2
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	and	r3, r3, #15
	ldr	r2, .L925
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
.L926:
	.align	2
.L925:
	.word	27030
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.syntax unified
	.arm
	.type	__paritysi2, %function
__paritysi2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsr	r3, r3, #16
	ldr	r2, [sp, #20]
	eor	r3, r3, r2
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	lsr	r3, r3, #8
	ldr	r2, [sp, #16]
	eor	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r3, r3, #4
	ldr	r2, [sp, #12]
	eor	r3, r3, r2
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	and	r3, r3, #15
	ldr	r2, .L930
	asr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	mov	pc, lr
.L931:
	.align	2
.L930:
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
	str	lr, [sp, #-4]!
	sub	sp, sp, #52
	stm	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r2, [sp, #40]
	str	r3, [sp, #44]
	ldr	r0, [sp, #40]
	ldr	r2, [sp, #44]
	lsr	r3, r0, #1
	orr	r3, r3, r2, lsl #31
	lsr	r1, r2, #1
	ldr	r2, .L935
	ldr	r0, .L935
	and	r2, r2, r3
	and	r3, r1, r0
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	subs	r2, r0, r2
	sbc	r3, r1, r3
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	ldr	r0, [sp, #32]
	ldr	r2, [sp, #36]
	lsr	r3, r0, #2
	orr	r3, r3, r2, lsl #30
	lsr	r1, r2, #2
	ldr	r0, .L935+4
	ldr	r2, .L935+4
	and	r3, r3, r0
	and	r0, r1, r2
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #36]
	ldr	lr, .L935+4
	ldr	ip, .L935+4
	and	r2, r2, lr
	and	r1, r1, ip
	adds	r2, r3, r2
	adc	r3, r0, r1
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldr	r0, [sp, #24]
	ldr	r2, [sp, #28]
	lsr	r3, r0, #4
	orr	r3, r3, r2, lsl #28
	lsr	r1, r2, #4
	ldr	r2, [sp, #24]
	ldr	r0, [sp, #28]
	adds	r2, r3, r2
	adc	r3, r1, r0
	ldr	r0, .L935+8
	ldr	r1, .L935+8
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
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	lsr	r2, r3, #8
	ldr	r3, [sp, #8]
	add	r3, r2, r3
	and	r3, r3, #127
	mov	r0, r3
	add	sp, sp, #52
	@ sp needed
	ldr	pc, [sp], #4
.L936:
	.align	2
.L935:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	lsr	r2, r3, #1
	ldr	r3, .L940
	and	r3, r3, r2
	ldr	r2, [sp, #28]
	sub	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	lsr	r3, r3, #2
	ldr	r2, .L940+4
	and	r2, r2, r3
	ldr	r1, [sp, #24]
	ldr	r3, .L940+4
	and	r3, r3, r1
	add	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	lsr	r2, r3, #4
	ldr	r3, [sp, #20]
	add	r2, r2, r3
	ldr	r3, .L940+8
	and	r3, r3, r2
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	lsr	r3, r3, #16
	ldr	r2, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	lsr	r2, r3, #8
	ldr	r3, [sp, #12]
	add	r3, r2, r3
	and	r3, r3, #63
	mov	r0, r3
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
.L941:
	.align	2
.L940:
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
	ldr	r3, .L953
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L946:
	ldr	r3, [sp, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L943
	vldr.64	d6, [sp, #24]
	vldr.64	d7, [sp, #8]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [sp, #24]
.L943:
	ldr	r3, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L951
	vldr.64	d7, [sp, #8]
	vmul.f64	d7, d7, d7
	vstr.64	d7, [sp, #8]
	b	.L946
.L951:
	nop
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L947
	vmov.f64	d5, #1.0e+0
	vldr.64	d6, [sp, #24]
	vdiv.f64	d7, d5, d6
	b	.L949
.L947:
	vldr.64	d7, [sp, #24]
.L949:
	nop
	vmov.f64	d0, d7
	add	sp, sp, #32
	@ sp needed
	mov	pc, lr
.L954:
	.align	2
.L953:
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
.L959:
	ldr	r3, [sp]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L956
	vldr.32	s14, [sp, #12]
	vldr.32	s15, [sp, #4]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #12]
.L956:
	ldr	r3, [sp]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L964
	vldr.32	s15, [sp, #4]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [sp, #4]
	b	.L959
.L964:
	nop
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L960
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [sp, #12]
	vdiv.f32	s15, s13, s14
	b	.L962
.L960:
	vldr.32	s15, [sp, #12]
.L962:
	nop
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
	bcs	.L967
	mov	r3, #0
	b	.L972
.L967:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L969
	mov	r3, #2
	b	.L972
.L969:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bcs	.L970
	mov	r3, #0
	b	.L972
.L970:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	bls	.L971
	mov	r3, #2
	b	.L972
.L971:
	mov	r3, #1
.L972:
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
