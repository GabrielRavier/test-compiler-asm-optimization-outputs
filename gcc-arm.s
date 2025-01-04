	.arch armv6
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bls	.L2
	cmp	r2, #0
	add	r3, r1, r2
	add	r2, r0, r2
	bxeq	lr
	sub	r1, r3, r1
	cmp	r1, #2
	ble	.L34
	sub	r1, r1, #1
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
.L4:
	subs	r1, r1, #1
	strb	ip, [r2, #-1]!
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	bne	.L4
	strb	ip, [r2, #-1]!
	bx	lr
.L2:
	bxeq	lr
	cmp	r2, #0
	bxeq	lr
	sub	r3, r2, #1
	cmp	r3, #5
	add	ip, r1, #1
	bls	.L5
	sub	r3, r0, ip
	cmp	r3, #2
	bls	.L5
	push	{r4, r5, r6, r7, lr}
	bic	r5, r2, #3
	sub	r4, r5, #4
	lsr	r7, r4, #2
	add	r3, r7, #1
	cmp	r3, #2
	mov	lr, r1
	mov	ip, r0
	lsr	r6, r2, #2
	add	r7, r1, r5
	ble	.L35
	sub	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L6:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L6
	str	r4, [ip], #4	@ unaligned
.L36:
	cmp	r2, r5
	sub	r2, r2, r5
	add	r5, r0, r5
	popeq	{r4, r5, r6, r7, pc}
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r1, [r0, r6, lsl #2]
	popeq	{r4, r5, r6, r7, pc}
	ldrb	ip, [r7, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	ip, [r5, #1]
	ldrbne	ip, [r7, #2]	@ zero_extendqisi2
	strbne	ip, [r5, #2]
	pop	{r4, r5, r6, r7, pc}
.L34:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	ip, [r2, #-1]!
	bne	.L34
	bx	lr
.L35:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L36
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L35
	b	.L36
.L5:
	add	r3, r1, r2
	sub	r1, r3, ip
	sub	r2, r0, #1
	add	r3, r1, #1
.L9:
	ldrb	r1, [ip, #-1]	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r1, [r2, #1]!
	add	ip, ip, #1
	bne	.L9
	bx	lr
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
	beq	.L56
	str	lr, [sp, #-4]!
	uxtb	r2, r2
	sub	r1, r1, #1
.L45:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	mov	lr, r0
	cmp	ip, r2
	strb	ip, [r0], #1
	ldreq	pc, [sp], #4
	subs	r3, r3, #1
	bne	.L45
	mov	r0, #0
	ldr	pc, [sp], #4
.L56:
	mov	r0, #0
	bx	lr
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
	cmp	r2, #0
	uxtb	r1, r1
	beq	.L66
	mov	r3, r0
.L61:
	mov	r0, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L61
.L66:
	mov	r0, #0
	bx	lr
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bne	.L70
	b	.L76
.L71:
	subs	r2, r2, #1
	beq	.L76
.L70:
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	ip, r3
	add	r1, r1, #1
	beq	.L71
	sub	r0, ip, r3
	bx	lr
.L76:
	mov	r0, #0
	bx	lr
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	beq	.L80
	bl	memcpy
.L80:
	mov	r0, r4
	pop	{r4, pc}
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.syntax unified
	.arm
	.type	memrchr, %function
memrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r2, #1
	add	r3, r0, r2
	uxtb	r1, r1
	add	r2, r2, #2
	b	.L86
.L88:
	mov	r0, r3
	ldrb	ip, [r0]	@ zero_extendqisi2
	sub	r3, r3, #1
	cmp	ip, r1
	bxeq	lr
.L86:
	subs	r2, r2, #1
	bne	.L88
	mov	r0, #0
	bx	lr
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.syntax unified
	.arm
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	beq	.L92
	uxtb	r1, r1
	bl	memset
.L92:
	mov	r0, r4
	pop	{r4, pc}
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
	cmp	r3, #0
	strb	r3, [r0]
	bxeq	lr
	add	ip, r0, #1
.L96:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	mov	r0, ip
	cmp	r2, #0
	strb	r2, [ip], #1
	bne	.L96
	bx	lr
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	uxtb	r1, r1
	cmp	r3, #0
	bxeq	lr
	cmp	r3, r1
	bxeq	lr
.L107:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
	cmp	r3, r1
	bne	.L107
	bx	lr
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
	mov	r2, r0
.L110:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r1
	add	r2, r2, #1
	bxeq	lr
	cmp	r3, #0
	bne	.L110
	mov	r0, r3
	bx	lr
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L115
	b	.L114
.L116:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, r2
	bne	.L114
.L115:
	cmp	r3, #0
	bne	.L116
.L114:
	sub	r0, r3, r2
	bx	lr
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
	beq	.L121
	mov	r1, r0
.L120:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L120
	sub	r0, r1, r0
	bx	lr
.L121:
	mov	r0, r3
	bx	lr
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.syntax unified
	.arm
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r2, #0
	beq	.L129
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L136
	push	{r4, lr}
	add	lr, r1, r3
	b	.L127
.L128:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L137
.L127:
	mov	r4, r1
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	subs	r2, r3, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	lr, r1
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L128
	sub	r0, ip, r3
	pop	{r4, pc}
.L129:
	mov	r0, r3
	bx	lr
.L137:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	sub	r0, ip, r3
	pop	{r4, pc}
.L136:
	ldrb	r0, [r1]	@ zero_extendqisi2
	sub	r0, ip, r0
	bx	lr
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
	bxle	lr
	sub	r3, r2, #2
	lsr	r2, r3, #1
	add	r0, r0, #2
	add	r1, r1, #2
	add	r3, r2, #1
.L140:
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r1, r1, #2
	add	r0, r0, #2
	strb	ip, [r1, #-4]
	strb	r2, [r1, #-3]
	bne	.L140
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	cmp	r0, #31
	cmphi	r3, #32
	bls	.L155
	sub	r1, r0, #8192
	sub	r2, r1, #40
	cmp	r2, #1
	bls	.L155
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L155:
	mov	r0, #1
	bx	lr
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
	bx	lr
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
	bls	.L163
	ldr	r1, .L164
	ldr	r2, .L164+4
	sub	r3, r0, #8192
	sub	ip, r3, #42
	cmp	r0, r2
	cmphi	ip, r1
	movls	ip, #1
	movhi	ip, #0
	bls	.L161
	sub	r2, r2, #47
	sub	r1, r0, #57344
	cmp	r1, r2
	bls	.L161
	ldr	r3, .L164+8
	sub	r2, r0, #65280
	sub	r1, r2, #252
	cmp	r1, r3
	bhi	.L162
	ldr	ip, .L164+12
	bics	r3, ip, r0
	movne	r0, #1
	moveq	r0, #0
	bx	lr
.L161:
	mov	r0, #1
	bx	lr
.L163:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.L162:
	mov	r0, ip
	bx	lr
.L165:
	.align	2
.L164:
	.word	47061
	.word	8231
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
	bls	.L168
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L168:
	mov	r0, #1
	bx	lr
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
	bx	lr
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
	bxvs	lr
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L174
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L177
	vsub.f64	d0, d0, d1
	bx	lr
.L177:
	vldr.64	d0, .L178
	bx	lr
.L174:
	vmov.f64	d0, d1
	bx	lr
.L179:
	.align	3
.L178:
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
	bxvs	lr
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bvs	.L184
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L187
	vsub.f32	s0, s0, s1
	bx	lr
.L187:
	vldr.32	s0, .L188
	bx	lr
.L184:
	vmov.f32	s0, s1
	bx	lr
.L189:
	.align	2
.L188:
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
	bvs	.L193
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L192
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L192:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L193:
	vmov.f64	d0, d1
	bx	lr
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
	bvs	.L199
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L198
	cmp	r0, #0
	vmovne.f32	s0, s1
	bx	lr
.L198:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	bx	lr
.L199:
	vmov.f32	s0, s1
	bx	lr
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
	bvs	.L205
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L204
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L204:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L205:
	vmov.f64	d0, d1
	bx	lr
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
	bvs	.L211
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L210
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L210:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L211:
	vmov.f64	d0, d1
	bx	lr
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
	bvs	.L217
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L216
	cmp	r0, #0
	vmoveq.f32	s0, s1
	bx	lr
.L216:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	bx	lr
.L217:
	vmov.f32	s0, s1
	bx	lr
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
	bvs	.L223
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L222
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L222:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L223:
	vmov.f64	d0, d1
	bx	lr
	.size	fminl, .-fminl
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
	ldr	r3, .L231
	beq	.L227
	ldr	r1, .L231+4
.L228:
	and	r2, r0, #63
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	ip, [r3], #1
	bne	.L228
.L227:
	mov	r1, #0
	ldr	r0, .L231
	strb	r1, [r3]
	bx	lr
.L232:
	.align	2
.L231:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	l64a, .-l64a
	.align	2
	.global	srand
	.syntax unified
	.arm
	.type	srand, %function
srand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L234
	sub	r0, r0, #1
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	bx	lr
.L235:
	.align	2
.L234:
	.word	.LANCHOR0
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
	ldr	r1, .L237
	ldr	r0, .L237+4
	ldr	r3, [r1, #8]
	ldr	ip, [r1, #12]
	mul	r0, r0, r3
	ldr	r2, .L237+8
	mla	ip, r2, ip, r0
	umull	r3, r2, r3, r2
	adds	r3, r3, #1
	adc	r0, ip, r2
	str	r0, [r1, #12]
	str	r3, [r1, #8]
	lsr	r0, r0, #1
	bx	lr
.L238:
	.align	2
.L237:
	.word	.LANCHOR0
	.word	1481765933
	.word	1284865837
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
	beq	.L245
	ldr	r3, [r1]
	str	r1, [r0, #4]
	str	r3, [r0]
	str	r0, [r1]
	ldr	r1, [r0]
	cmp	r1, #0
	strne	r0, [r1, #4]
	bx	lr
.L245:
	str	r1, [r0]
	str	r1, [r0, #4]
	bx	lr
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
	ldr	r2, [r0, #4]
	cmp	r2, #0
	strne	r3, [r2]
	bx	lr
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.syntax unified
	.arm
	.type	lsearch, %function
lsearch:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [r2]
	sub	sp, sp, #12
	cmp	r6, #0
	mov	r10, r2
	mov	r7, r0
	mov	r5, r3
	ldr	r9, [sp, #48]
	str	r1, [sp, #4]
	beq	.L256
	mov	r4, r1
	mov	fp, #0
	b	.L258
.L271:
	cmp	r6, fp
	beq	.L256
.L258:
	mov	r1, r4
	mov	r0, r7
	blx	r9
	cmp	r0, #0
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	bne	.L271
.L255:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L256:
	ldr	r3, [sp, #4]
	add	r0, r6, #1
	cmp	r5, #0
	mla	r8, r6, r5, r3
	str	r0, [r10]
	beq	.L255
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	memmove
	mov	r0, r8
	add	sp, sp, #12
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
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, [r2]
	ldr	r8, [sp, #32]
	cmp	r7, #0
	beq	.L273
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	mov	r5, #0
	b	.L275
.L284:
	cmp	r7, r5
	beq	.L273
.L275:
	mov	r1, r4
	mov	r0, r6
	blx	r8
	cmp	r0, #0
	mov	r10, r4
	add	r5, r5, #1
	add	r4, r4, r9
	bne	.L284
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L273:
	mov	r10, #0
	mov	r0, r10
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
	bx	lr
	.size	abs, .-abs
	.align	2
	.global	atoi
	.syntax unified
	.arm
	.type	atoi, %function
atoi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L287
.L288:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L288
.L287:
	cmp	r3, #43
	beq	.L289
	cmp	r3, #45
	bne	.L311
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	bhi	.L298
	mov	r4, #1
.L292:
	mov	r0, #0
.L295:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L295
	cmp	r4, #0
	subeq	r0, ip, r1
	pop	{r4, pc}
.L311:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L298
.L310:
	mov	r4, #0
	b	.L292
.L289:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L310
.L298:
	mov	r0, #0
	pop	{r4, pc}
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L313
.L314:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L314
.L313:
	cmp	r3, #43
	beq	.L315
	cmp	r3, #45
	bne	.L316
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	movls	r4, #1
	bhi	.L323
.L317:
	mov	r0, #0
.L320:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L320
	cmp	r4, #0
	subeq	r0, ip, r1
	pop	{r4, pc}
.L316:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L323
.L333:
	mov	r4, #0
	b	.L317
.L315:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L333
.L323:
	mov	r0, #0
	pop	{r4, pc}
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	ip, [r0]	@ zero_extendqisi2
	sub	r3, ip, #9
	cmp	ip, #32
	cmpne	r3, #4
	bhi	.L335
.L336:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	sub	r1, ip, #9
	cmp	ip, #32
	cmpne	r1, #4
	bls	.L336
.L335:
	cmp	ip, #43
	beq	.L337
	cmp	ip, #45
	bne	.L359
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r4, #48
	cmp	ip, #9
	bhi	.L346
	mov	r6, #1
.L340:
	mov	r0, #0
	mov	r4, r0
.L343:
	lsl	r5, r4, #2
	lsl	r7, r0, #2
	adds	r3, r7, r0
	orr	r0, r5, r0, lsr #30
	adc	r1, r4, r0
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	adds	r3, r3, r3
	adc	r1, r1, r1
	subs	r0, r3, ip
	sbc	r4, r1, ip, asr #31
	mov	r2, ip
	asr	r7, ip, #31
	sub	ip, r5, #48
	cmp	ip, #9
	bls	.L343
	cmp	r6, #0
	bne	.L334
	subs	r0, r2, r3
	sbc	r4, r7, r1
.L334:
	mov	r1, r4
	pop	{r4, r5, r6, r7, pc}
.L359:
	sub	ip, ip, #48
	cmp	ip, #9
	movls	lr, r0
	bhi	.L346
.L358:
	mov	r6, #0
	b	.L340
.L337:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r2, #48
	cmp	ip, #9
	bls	.L358
.L346:
	mov	r0, #0
	mov	r4, r0
	mov	r1, r4
	pop	{r4, r5, r6, r7, pc}
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
	subs	r4, r2, #0
	ldr	r10, [sp, #32]
	beq	.L361
	mov	r9, r0
	mov	r7, r1
	mov	r8, r3
	b	.L364
.L371:
	beq	.L360
	sub	r4, r4, r5
	cmp	r4, #0
	add	r7, r6, r8
	beq	.L361
.L364:
	lsr	r5, r4, #1
	mla	r6, r8, r5, r7
	mov	r0, r9
	mov	r1, r6
	blx	r10
	cmp	r0, #0
	sub	r4, r4, #1
	bge	.L371
	mov	r4, r5
	cmp	r4, #0
	bne	.L364
.L361:
	mov	r6, #0
.L360:
	mov	r0, r6
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r2, #0
	mov	r8, r0
	mov	r6, r1
	mov	r7, r3
	ldr	r9, [sp, #40]
	ldr	r10, [sp, #44]
	beq	.L377
.L385:
	asr	fp, r4, #1
	mla	r5, r7, fp, r6
	mov	r2, r10
	mov	r0, r8
	mov	r1, r5
	blx	r9
	cmp	r0, #0
	sub	r4, r4, #1
	beq	.L372
	ble	.L375
	asrs	r4, r4, #1
	add	r6, r5, r7
	bne	.L385
.L377:
	mov	r5, #0
.L372:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L375:
	cmp	fp, #0
	beq	.L377
	mov	r4, fp
	b	.L385
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r2, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r2, [r4]
	pop	{r4, pc}
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
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	bx	lr
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.syntax unified
	.arm
	.type	imaxdiv, %function
imaxdiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r7, r3
	ldrd	r2, [sp, #16]
	mov	r4, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_ldivmod
	strd	r0, [r4]
	strd	r2, [r4, #8]
	mov	r0, r4
	pop	{r4, r6, r7, pc}
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
	bx	lr
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.syntax unified
	.arm
	.type	ldiv, %function
ldiv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r2, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r2, [r4]
	pop	{r4, pc}
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
	subs	r0, r0, r3
	eor	r1, r1, r1, asr #31
	sbc	r1, r1, r3
	bx	lr
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.syntax unified
	.arm
	.type	lldiv, %function
lldiv:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, lr}
	mov	r6, r2
	mov	r7, r3
	ldrd	r2, [sp, #16]
	mov	r4, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_ldivmod
	strd	r0, [r4]
	strd	r2, [r4, #8]
	mov	r0, r4
	pop	{r4, r6, r7, pc}
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
	beq	.L403
.L400:
	cmp	r1, r3
	bxeq	lr
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	bne	.L400
.L403:
	mov	r0, r3
	bx	lr
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.syntax unified
	.arm
	.type	wcscmp, %function
wcscmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r1]
	cmp	r3, r2
	beq	.L410
	b	.L409
.L411:
	ldr	r3, [r0, #4]!
	ldr	r2, [r1, #4]!
	cmp	r3, r2
	bne	.L409
.L410:
	cmp	r3, #0
	bne	.L411
.L409:
	cmp	r3, r2
	bcc	.L413
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L413:
	mvn	r0, #0
	bx	lr
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
.L415:
	ldr	r3, [r1], #4
	cmp	r3, #0
	str	r3, [r2, #4]!
	bne	.L415
	bx	lr
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
	mov	r1, r0
	ldr	r0, [r0]
	cmp	r0, #0
	bxeq	lr
	mov	r3, r1
.L420:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L420
	sub	r0, r3, r1
	asr	r0, r0, #2
	bx	lr
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.syntax unified
	.arm
	.type	wcsncmp, %function
wcsncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L431
	push	{r4, lr}
	b	.L427
.L428:
	subs	r2, r2, #1
	beq	.L434
.L427:
	ldr	r3, [r1]
	mov	r4, r0
	ldr	ip, [r0], #4
	add	r1, r1, #4
	sub	lr, r3, ip
	clz	lr, lr
	cmp	ip, #0
	lsr	lr, lr, #5
	moveq	lr, #0
	cmp	lr, #0
	bne	.L428
	ldr	r2, [r4]
	cmp	r2, r3
	bcc	.L441
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, pc}
.L441:
	mvn	r0, #0
	pop	{r4, pc}
.L434:
	mov	r0, #0
	pop	{r4, pc}
.L431:
	mov	r0, r2
	bx	lr
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
	beq	.L449
	mov	r3, r0
.L444:
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L444
.L449:
	mov	r0, #0
	bx	lr
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bne	.L453
	b	.L460
.L454:
	subs	r2, r2, #1
	beq	.L460
.L453:
	ldr	ip, [r0]
	ldr	r3, [r1]
	add	r0, r0, #4
	cmp	ip, r3
	add	r1, r1, #4
	beq	.L454
	bcc	.L463
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L460:
	mov	r0, #0
	bx	lr
.L463:
	mvn	r0, #0
	bx	lr
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	beq	.L465
	lsl	r2, r2, #2
	bl	memcpy
.L465:
	mov	r0, r4
	pop	{r4, pc}
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.syntax unified
	.arm
	.type	wmemmove, %function
wmemmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bxeq	lr
	push	{r4, r5, lr}
	sub	lr, r0, r1
	cmp	lr, r2, lsl #2
	mov	ip, r0
	mov	r3, r1
	lsl	lr, r2, #2
	bcc	.L472
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	lr, r2, #1
	cmp	lr, #6
	add	r4, r1, #4
	bls	.L476
	cmp	r0, r4
	beq	.L476
	lsr	lr, r2, #1
.L477:
	subs	lr, lr, #1
	ldrd	r4, [r3]
	add	ip, ip, #8
	str	r5, [ip, #-4]
	str	r4, [ip, #-8]
	add	r3, r3, #8
	bne	.L477
	tst	r2, #1
	bicne	r2, r2, #1
	ldrne	r3, [r1, r2, lsl #2]
	strne	r3, [r0, r2, lsl #2]
	pop	{r4, r5, pc}
.L472:
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	ip, lr, #4
	lsr	r3, ip, #2
	add	r3, r3, #1
	cmp	r3, #2
	add	r1, r1, lr
	add	r2, r0, lr
	ble	.L497
	sub	r3, r3, #1
	ldr	ip, [r1, #-4]!
.L475:
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	ldr	ip, [r1, #-4]!
	bne	.L475
	str	ip, [r2, #-4]!
	pop	{r4, r5, pc}
.L497:
	ldr	ip, [r1, #-4]!
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	bne	.L497
	pop	{r4, r5, pc}
.L476:
	sub	r2, r0, #4
	add	r3, lr, #1
.L480:
	ldr	r1, [r4, #-4]
	subs	r3, r3, #1
	str	r1, [r2, #4]!
	add	r4, r4, #4
	bne	.L480
	pop	{r4, r5, pc}
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
	cmp	r2, #0
	bxeq	lr
	cmp	r2, #1
	beq	.L508
	mov	r3, r0
	lsr	ip, r2, #1
.L506:
	subs	ip, ip, #1
	str	r1, [r3]
	str	r1, [r3, #4]
	add	r3, r3, #8
	bne	.L506
	tst	r2, #1
	bxeq	lr
	bic	r2, r2, #1
	add	r2, r0, r2, lsl #2
.L505:
	str	r1, [r2]
	bx	lr
.L508:
	mov	r2, r0
	b	.L505
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.syntax unified
	.arm
	.type	bcopy, %function
bcopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	bcs	.L517
	cmp	r2, #0
	add	r3, r0, r2
	add	r2, r1, r2
	bxeq	lr
	sub	r0, r3, r0
	cmp	r0, #2
	ble	.L549
	sub	r0, r0, #1
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
.L519:
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	bne	.L519
	strb	r1, [r2, #-1]!
	bx	lr
.L517:
	bxeq	lr
	cmp	r2, #0
	bxeq	lr
	sub	r3, r2, #1
	cmp	r3, #5
	add	ip, r0, #1
	bls	.L520
	sub	r3, r1, ip
	cmp	r3, #2
	bls	.L520
	push	{r4, r5, r6, r7, lr}
	bic	r5, r2, #3
	sub	r4, r5, #4
	lsr	r7, r4, #2
	add	r3, r7, #1
	cmp	r3, #2
	mov	lr, r0
	mov	ip, r1
	lsr	r6, r2, #2
	add	r7, r0, r5
	ble	.L550
	sub	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L521:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L521
	str	r4, [ip], #4	@ unaligned
.L551:
	cmp	r2, r5
	sub	r2, r2, r5
	add	r5, r1, r5
	popeq	{r4, r5, r6, r7, pc}
	ldrb	r0, [r0, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r0, [r1, r6, lsl #2]
	popeq	{r4, r5, r6, r7, pc}
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r1, [r5, #1]
	ldrbne	r1, [r7, #2]	@ zero_extendqisi2
	strbne	r1, [r5, #2]
	pop	{r4, r5, r6, r7, pc}
.L549:
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	bne	.L549
	bx	lr
.L550:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L551
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L550
	b	.L551
.L520:
	add	r3, r0, r2
	sub	r2, r3, ip
	sub	r0, r1, #1
	add	r3, r2, #1
.L524:
	ldrb	r1, [ip, #-1]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	ip, ip, #1
	strb	r1, [r0, #1]!
	bne	.L524
	bx	lr
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.syntax unified
	.arm
	.type	rotl64, %function
rotl64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r1
	push	{r4, lr}
	lsl	r1, r1, r2
	sub	r4, r2, #32
	orr	r4, r1, r0, lsl r4
	rsb	lr, r2, #32
	rsb	r3, r2, #0
	and	r3, r3, #63
	orr	lr, r4, r0, lsr lr
	orr	r1, lr, ip, lsr r3
	rsb	r4, r3, #32
	lsr	lr, r0, r3
	orr	lr, lr, ip, lsl r4
	sub	r3, r3, #32
	orr	ip, lr, ip, lsr r3
	orr	r0, ip, r0, lsl r2
	pop	{r4, pc}
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.syntax unified
	.arm
	.type	rotr64, %function
rotr64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r0
	push	{r4, lr}
	lsr	r0, r0, r2
	rsb	r4, r2, #32
	orr	r4, r0, r1, lsl r4
	sub	lr, r2, #32
	rsb	r3, r2, #0
	and	r3, r3, #63
	orr	lr, r4, r1, lsr lr
	orr	r0, lr, ip, lsl r3
	sub	r4, r3, #32
	lsl	lr, r1, r3
	orr	lr, lr, ip, lsl r4
	rsb	r3, r3, #32
	orr	ip, lr, ip, lsr r3
	orr	r1, ip, r1, lsr r2
	pop	{r4, pc}
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	bx	lr
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
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r2, r3, #15
	lsr	ip, r0, r2
	orr	r0, ip, r0, lsl r1
	uxth	r0, r0
	bx	lr
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
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r2, r3, #15
	lsl	ip, r0, r2
	orr	r0, ip, r0, lsr r1
	uxth	r0, r0
	bx	lr
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
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r2, r3, #7
	lsr	ip, r0, r2
	orr	r0, ip, r0, lsl r1
	uxtb	r0, r0
	bx	lr
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
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r2, r3, #7
	lsl	ip, r0, r2
	orr	r0, ip, r0, lsr r1
	uxtb	r0, r0
	bx	lr
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
	rev16	r0, r0
	uxth	r0, r0
	bx	lr
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
	rev	r0, r0
	bx	lr
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
	mov	r3, r1
	rev	r1, r0
	rev	r0, r3
	bx	lr
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
	mov	r2, #0
	mov	r1, #32
	b	.L575
.L573:
	subs	r1, r1, #1
	beq	.L577
.L575:
	lsr	r3, r0, r2
	ands	ip, r3, #1
	add	r2, r2, #1
	beq	.L573
	mov	r0, r2
	bx	lr
.L577:
	mov	r0, ip
	bx	lr
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
	beq	.L581
	ands	r0, r3, #1
	bxne	lr
	mov	r0, #1
.L580:
	asr	r3, r3, #1
	tst	r3, #1
	add	r0, r0, #1
	beq	.L580
	bx	lr
.L581:
	mov	r0, r3
	bx	lr
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
	vldr.32	s15, .L588
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L587
	vldr.32	s1, .L588+4
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L587:
	mov	r0, #1
	bx	lr
.L589:
	.align	2
.L588:
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
	vldr.64	d7, .L593
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L592
	vldr.64	d1, .L593+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L592:
	mov	r0, #1
	bx	lr
.L594:
	.align	3
.L593:
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
	vldr.64	d7, .L598
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L597
	vldr.64	d1, .L598+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L597:
	mov	r0, #1
	bx	lr
.L599:
	.align	3
.L598:
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
	vcvt.f64.s32	d0, s14
	vstr.64	d0, [r0]
	bx	lr
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
	bxvs	lr
	vadd.f32	s15, s0, s0
	vcmp.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	bxeq	lr
	vmov.f32	s1, #2.0e+0
	vmov.f32	s14, #5.0e-1
	cmp	r0, #0
	vmovlt.f32	s1, s14
	tst	r0, #1
	beq	.L604
.L605:
	vmul.f32	s0, s0, s1
.L604:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L605
.L614:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L605
	b	.L614
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
	bxvs	lr
	vadd.f64	d7, d0, d0
	vcmp.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	bxeq	lr
	vmov.f64	d1, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d1, d6
	tst	r0, #1
	beq	.L618
.L619:
	vmul.f64	d0, d0, d1
.L618:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L619
.L628:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L619
	b	.L628
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
	bxvs	lr
	vadd.f64	d7, d0, d0
	vcmp.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bxeq	lr
	vmov.f64	d1, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d1, d6
	tst	r0, #1
	beq	.L632
.L633:
	vmul.f64	d0, d0, d1
.L632:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L633
.L642:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L633
	b	.L642
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r2, #0
	popeq	{r4, r5, r6, pc}
	sub	r3, r4, #1
	cmp	r3, #2
	bls	.L648
	mov	lr, r0
	bic	r5, r4, #3
	sub	ip, r5, #4
	lsr	r2, ip, #2
	add	ip, r2, #1
	add	r6, r1, r5
.L646:
	ldr	r3, [lr]	@ unaligned
	ldr	r2, [r1], #4	@ unaligned
	subs	ip, ip, #1
	eor	r3, r3, r2
	str	r3, [lr], #4	@ unaligned
	bne	.L646
	cmp	r4, r5
	popeq	{r4, r5, r6, pc}
	mov	r1, r6
	add	r3, r0, r5
	sub	r4, r4, r5
.L645:
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	ip, [r1]	@ zero_extendqisi2
	cmp	r4, #1
	eor	r2, r2, ip
	strb	r2, [r3]
	popeq	{r4, r5, r6, pc}
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	cmp	r4, #2
	eor	r2, r2, ip
	strb	r2, [r3, #1]
	ldrbne	ip, [r3, #2]	@ zero_extendqisi2
	ldrbne	r2, [r1, #2]	@ zero_extendqisi2
	eorne	r2, r2, ip
	strbne	r2, [r3, #2]
	pop	{r4, r5, r6, pc}
.L648:
	mov	r3, r0
	b	.L645
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.syntax unified
	.arm
	.type	strncat, %function
strncat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	mov	r3, r0
	beq	.L661
.L662:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L662
.L661:
	cmp	r2, #0
	beq	.L663
	sub	r1, r1, #1
.L664:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	strb	ip, [r3], #1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L664
.L663:
	mov	r2, #0
	strb	r2, [r3]
	bx	lr
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
	mov	r3, r0
	beq	.L678
	mov	r0, #0
	sub	ip, r3, #1
.L676:
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bxeq	lr
	subs	r1, r1, #1
	add	r0, r0, #1
	bne	.L676
	bx	lr
.L678:
	mov	r0, r1
	bx	lr
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
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L687
	sub	r1, r1, #1
.L683:
	mov	r2, r1
	b	.L686
.L685:
	cmp	r3, ip
	bxeq	lr
.L686:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L685
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L683
.L687:
	mov	r0, ip
	bx	lr
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
.L691:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, r1
	moveq	r0, r3
	cmp	r2, #0
	add	r3, r3, #1
	bne	.L691
	bx	lr
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.syntax unified
	.arm
	.type	strstr, %function
strstr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrb	r4, [r1]	@ zero_extendqisi2
	mov	r2, r0
	cmp	r4, #0
	beq	.L705
	mov	r6, r1
	mov	r3, r1
.L696:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L696
	subs	r0, r3, r6
	beq	.L705
	sub	r5, r6, #1
	add	r5, r5, r0
	b	.L703
.L710:
	cmp	r3, #0
	beq	.L709
.L703:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r4
	add	r2, r2, #1
	bne	.L710
	mov	lr, r6
	mov	ip, r4
	mov	r1, r0
	b	.L698
.L701:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L711
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
.L698:
	subs	r2, ip, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	r5, lr
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L701
	cmp	r3, ip
	popeq	{r4, r5, r6, pc}
.L712:
	add	r2, r0, #1
	b	.L703
.L709:
	mov	r0, r3
	pop	{r4, r5, r6, pc}
.L711:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	cmp	r3, ip
	bne	.L712
	pop	{r4, r5, r6, pc}
.L705:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
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
	bmi	.L723
	bxle	lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bxpl	lr
	vneg.f64	d0, d0
	bx	lr
.L723:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bxle	lr
	vneg.f64	d0, d0
	bx	lr
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.syntax unified
	.arm
	.type	memmem, %function
memmem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r7, r3, #0
	popeq	{r4, r5, r6, r7, r8, pc}
	cmp	r1, r7
	bcc	.L735
	sub	r1, r1, r7
	adds	r6, r0, r1
	bcs	.L735
	ldrb	r8, [r2]	@ zero_extendqisi2
	b	.L730
.L726:
	cmp	r6, r0
	bcc	.L735
.L730:
	mov	ip, r0
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	cmp	r3, r8
	movne	r0, ip
	bne	.L726
	cmp	r7, #1
	popeq	{r4, r5, r6, r7, r8, pc}
.L729:
	mov	r3, r2
	sub	lr, ip, #1
	sub	r1, r7, #1
	b	.L727
.L728:
	subs	r1, r1, #1
	popeq	{r4, r5, r6, r7, r8, pc}
.L727:
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	cmp	r5, r4
	beq	.L728
	cmp	r6, ip
	bcc	.L735
	mov	r0, ip
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	cmp	r8, r1
	bne	.L726
	mov	r4, ip
	mov	ip, r0
	mov	r0, r4
	b	.L729
.L735:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.syntax unified
	.arm
	.type	mempcpy, %function
mempcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r2, #0
	mov	r5, r0
	beq	.L748
	bl	memmove
.L748:
	add	r0, r5, r4
	pop	{r4, r5, r6, pc}
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
	bmi	.L775
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movge	r2, #0
	blt	.L776
.L756:
	mov	r1, #0
	vmov.f64	d5, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L762:
	vmul.f64	d0, d0, d5
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r1, r1, #1
	bge	.L762
.L763:
	cmp	r2, #0
	vnegne.f64	d0, d0
	str	r1, [r0]
	bx	lr
.L776:
	vmov.f64	d1, #5.0e-1
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L759
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L768
.L759:
	mov	r3, #0
	str	r3, [r0]
	bx	lr
.L775:
	vmov.f64	d2, #-1.0e+0
	vcmpe.f64	d0, d2
	vneg.f64	d6, d0
	vmrs	APSR_nzcv, FPSCR
	vmovls.f64	d0, d6
	movls	r2, #1
	bls	.L756
	vmov.f64	d3, #-5.0e-1
	vcmpe.f64	d0, d3
	vmrs	APSR_nzcv, FPSCR
	ble	.L759
	mov	r2, #1
.L757:
	vmov.f64	d0, d6
	mov	r1, #0
	vmov.f64	d4, #5.0e-1
.L764:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d4
	vmrs	APSR_nzcv, FPSCR
	sub	r1, r1, #1
	bmi	.L764
	b	.L763
.L768:
	vmov.f64	d6, d0
	mov	r2, #0
	b	.L757
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
	mov	r5, r1
	orrs	r1, r5, r0
	beq	.L780
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
.L779:
	ands	ip, r4, #1
	mvnne	ip, #0
	mov	lr, ip
	and	ip, ip, r2
	adds	r0, ip, r0
	and	lr, lr, r3
	lsr	r4, r4, #1
	orr	r4, r4, r5, lsl #31
	adc	r1, r1, lr
	lsr	r5, r5, #1
	adds	r2, r2, r2
	adc	r3, r3, r3
	orrs	ip, r4, r5
	bne	.L779
	pop	{r4, r5, pc}
.L780:
	mov	r0, #0
	mov	r1, r0
	pop	{r4, r5, pc}
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.syntax unified
	.arm
	.type	udivmodsi4, %function
udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	movcc	r3, #1
	bcc	.L785
	b	.L805
.L788:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L806
.L785:
	cmp	r1, #0
	bge	.L788
.L789:
	mov	ip, #0
	push	{r4, lr}
.L791:
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L791
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L806:
	cmp	r3, #0
	bne	.L789
	mov	ip, r3
.L803:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L805:
	sub	r1, r0, r1
	movls	ip, #1
	movhi	ip, #0
	movls	r0, r1
	b	.L803
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.syntax unified
	.arm
	.type	__clrsbqi2, %function
__clrsbqi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	lslne	r0, r0, #8
	clzne	r0, r0
	subne	r0, r0, #1
	moveq	r0, #7
	bx	lr
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.syntax unified
	.arm
	.type	__clrsbdi2, %function
__clrsbdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asr	r2, r1, #31
	cmp	r1, r2
	cmpeq	r0, r2
	eor	r3, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	beq	.L814
	cmp	r1, #0
	clzeq	r0, r3
	clzne	r0, r1
	addeq	r0, r0, #32
	sub	r0, r0, #1
	bx	lr
.L814:
	mov	r0, #63
	bx	lr
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
	beq	.L818
	mov	r0, #0
.L817:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L817
	bx	lr
.L818:
	mov	r0, r3
	bx	lr
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.syntax unified
	.arm
	.type	__cmovd, %function
__cmovd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r3, r2, #3
	bic	r4, r2, #7
	bcc	.L825
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L854
.L825:
	cmp	r3, #0
	beq	.L824
	lsl	lr, r3, #3
	sub	r3, lr, #8
	lsr	ip, r3, #3
	add	r3, ip, #1
	sub	lr, r1, #8
	sub	ip, r0, #8
.L828:
	vldr.64	d7, [lr, #8]	@ int
	subs	r3, r3, #1
	add	lr, lr, #8
	add	ip, ip, #8
	vstr.64	d7, [ip]	@ int
	bne	.L828
.L824:
	cmp	r2, r4
	popls	{r4, r5, r6, r7, pc}
	sub	r7, r2, r4
	sub	r3, r7, #1
	cmp	r3, #5
	bls	.L829
	add	ip, r4, #1
	add	r3, r1, ip
	add	ip, r0, r4
	sub	r3, ip, r3
	cmp	r3, #2
	bls	.L829
	bic	r6, r7, #3
	sub	r5, r6, #4
	lsr	lr, r5, #2
	add	r3, lr, #1
	cmp	r3, #2
	add	lr, r1, r4
	ble	.L848
	sub	r3, r3, #1
	ldr	r5, [lr], #4	@ unaligned
.L830:
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	ldr	r5, [lr], #4	@ unaligned
	bne	.L830
	str	r5, [ip], #4	@ unaligned
.L849:
	cmp	r7, r6
	add	r6, r4, r6
	popeq	{r4, r5, r6, r7, pc}
	ldrb	ip, [r1, r6]	@ zero_extendqisi2
	add	r3, r6, #1
	cmp	r2, r3
	strb	ip, [r0, r6]
	popls	{r4, r5, r6, r7, pc}
	add	r6, r6, #2
	cmp	r2, r6
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r0, r3]
	ldrbhi	r3, [r1, r6]	@ zero_extendqisi2
	strbhi	r3, [r0, r6]
	pop	{r4, r5, r6, r7, pc}
.L848:
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	beq	.L849
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	bne	.L848
	b	.L849
.L854:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, ip, r1
	cmp	r1, #2
	mov	r3, ip
	add	r0, r0, r2
	ble	.L851
	sub	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L834:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L834
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L851:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L851
	pop	{r4, r5, r6, r7, pc}
.L829:
	sub	r4, r4, #1
	add	ip, r1, r4
	sub	r1, r1, #1
	add	r3, r1, r2
	sub	r3, r3, ip
	cmp	r3, #2
	add	r4, r0, r4
	ble	.L850
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L832:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L832
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, pc}
.L850:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L850
	pop	{r4, r5, r6, r7, pc}
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.syntax unified
	.arm
	.type	__cmovh, %function
__cmovh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, lr}
	lsr	r5, r2, #1
	bcc	.L859
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L890
.L859:
	cmp	r5, #0
	beq	.L858
	sub	r3, r5, #1
	cmp	r3, #6
	bls	.L862
	add	r4, r1, #2
	cmp	r0, r4
	beq	.L862
	bic	r6, r2, #3
	sub	r3, r6, #4
	lsr	r4, r3, #2
	add	r3, r4, #1
	cmp	r3, #2
	mov	lr, r1
	mov	ip, r0
	lsr	r7, r2, #2
	ble	.L884
	sub	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L863:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L863
	str	r4, [ip], #4	@ unaligned
.L885:
	cmp	r5, r7, lsl #1
	ldrshne	r3, [r1, r6]
	strhne	r3, [r0, r6]	@ movhi
.L858:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, r5, r6, r7, pc}
.L884:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L885
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L884
	b	.L885
.L890:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, r3, r1
	cmp	r1, #2
	add	r2, r0, r2
	ble	.L887
	sub	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L868:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L868
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L887:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L887
	pop	{r4, r5, r6, r7, pc}
.L862:
	lsl	ip, r5, #1
	sub	r3, ip, #2
	lsr	r4, r3, #1
	add	r3, r4, #1
	cmp	r3, #2
	sub	lr, r1, #2
	sub	ip, r0, #2
	ble	.L886
	sub	r3, r3, #1
	ldrsh	r4, [lr, #2]!
.L865:
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	ldrsh	r4, [lr, #2]!
	bne	.L865
	strh	r4, [ip, #2]!	@ movhi
	b	.L858
.L886:
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	beq	.L858
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	bne	.L886
	b	.L858
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.syntax unified
	.arm
	.type	__cmovw, %function
__cmovw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	push	{r4, r5, r6, r7, r8, lr}
	lsr	r7, r2, #2
	bic	r4, r2, #3
	bcc	.L896
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L933
.L896:
	cmp	r7, #0
	beq	.L934
	sub	r3, r7, #1
	cmp	r3, #6
	bls	.L898
	add	r5, r1, #4
	cmp	r0, r5
	beq	.L898
	mov	ip, r1
	mov	r3, r0
	bic	lr, r2, #7
	sub	r6, lr, #8
	lsr	r8, r6, #3
	add	lr, r8, #1
	lsr	r8, r2, #3
.L899:
	ldr	r6, [ip]
	ldr	r5, [ip, #4]
	subs	lr, lr, #1
	str	r6, [r3]
	str	r5, [r3, #4]
	add	ip, ip, #8
	add	r3, r3, #8
	bne	.L899
	cmp	r7, r8, lsl #1
	ldrne	ip, [r1, r8, lsl #3]
	strne	ip, [r0, r8, lsl #3]
.L902:
	cmp	r2, r4
	popls	{r4, r5, r6, r7, r8, pc}
.L935:
	sub	r7, r2, r4
	sub	ip, r7, #1
	cmp	ip, #5
	bls	.L894
	add	r3, r4, #1
	add	r3, r1, r3
	add	ip, r0, r4
	sub	r3, ip, r3
	cmp	r3, #2
	bls	.L894
	bic	r6, r7, #3
	sub	r5, r6, #4
	lsr	lr, r5, #2
	add	r3, lr, #1
	cmp	r3, #2
	add	lr, r1, r4
	ble	.L926
	sub	r3, r3, #1
	ldr	r5, [lr], #4	@ unaligned
.L903:
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	ldr	r5, [lr], #4	@ unaligned
	bne	.L903
	str	r5, [ip], #4	@ unaligned
.L927:
	cmp	r7, r6
	add	r6, r4, r6
	popeq	{r4, r5, r6, r7, r8, pc}
	ldrb	ip, [r1, r6]	@ zero_extendqisi2
	add	r3, r6, #1
	cmp	r2, r3
	strb	ip, [r0, r6]
	popls	{r4, r5, r6, r7, r8, pc}
	add	r6, r6, #2
	cmp	r2, r6
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r0, r3]
	ldrbhi	r3, [r1, r6]	@ zero_extendqisi2
	strbhi	r3, [r0, r6]
	pop	{r4, r5, r6, r7, r8, pc}
.L926:
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	beq	.L927
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	bne	.L926
	b	.L927
.L933:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, r8, pc}
	sub	r1, r3, r1
	cmp	r1, #2
	add	r0, r0, r2
	ble	.L929
	sub	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L907:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L907
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, r8, pc}
.L929:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L929
	pop	{r4, r5, r6, r7, r8, pc}
.L898:
	lsl	r5, r7, #2
	sub	lr, r5, #4
	lsr	r3, lr, #2
	add	r3, r3, #1
	cmp	r3, #2
	sub	lr, r1, #4
	sub	ip, r0, #4
	ble	.L925
	sub	r3, r3, #1
	ldr	r5, [lr, #4]!
.L901:
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	ldr	r5, [lr, #4]!
	bne	.L901
	str	r5, [ip, #4]!
	cmp	r2, r4
	bhi	.L935
	pop	{r4, r5, r6, r7, r8, pc}
.L925:
	ldr	r5, [lr, #4]!
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	beq	.L902
	ldr	r5, [lr, #4]!
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	bne	.L925
	b	.L902
.L934:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, r8, pc}
.L894:
	sub	r4, r4, #1
	add	ip, r1, r4
	sub	r1, r1, #1
	add	r3, r1, r2
	sub	r3, r3, ip
	cmp	r3, #2
	add	r4, r0, r4
	ble	.L928
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L905:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L905
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, r8, pc}
.L928:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L928
	pop	{r4, r5, r6, r7, r8, pc}
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
	bx	lr
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
	bx	lr
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
	lsrs	r2, r0, #15
	mov	r3, r0
	bne	.L949
	asrs	r0, r0, #14
	bxne	lr
	lsrs	r2, r3, #13
	bne	.L950
	lsrs	r2, r3, #12
	bne	.L951
	lsrs	r2, r3, #11
	bne	.L952
	lsrs	r2, r3, #10
	bne	.L953
	lsrs	r2, r3, #9
	bne	.L954
	lsrs	r2, r3, #8
	bne	.L955
	lsrs	r2, r3, #7
	bne	.L956
	lsrs	r2, r3, #6
	bne	.L957
	lsrs	r2, r3, #5
	bne	.L958
	lsrs	r2, r3, #4
	bne	.L959
	lsrs	r2, r3, #3
	bne	.L960
	lsrs	r2, r3, #2
	bne	.L961
	lsrs	r2, r3, #1
	bne	.L962
	cmp	r3, #0
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L949:
	mov	r0, #0
	bx	lr
.L960:
	mov	r0, #12
	bx	lr
.L950:
	mov	r0, #2
	bx	lr
.L951:
	mov	r0, #3
	bx	lr
.L952:
	mov	r0, #4
	bx	lr
.L953:
	mov	r0, #5
	bx	lr
.L954:
	mov	r0, #6
	bx	lr
.L955:
	mov	r0, #7
	bx	lr
.L956:
	mov	r0, #8
	bx	lr
.L957:
	mov	r0, #9
	bx	lr
.L958:
	mov	r0, #10
	bx	lr
.L959:
	mov	r0, #11
	bx	lr
.L961:
	mov	r0, #13
	bx	lr
.L962:
	mov	r0, #14
	bx	lr
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
	tst	r0, #1
	bne	.L967
	tst	r0, #2
	bne	.L968
	tst	r0, #4
	bne	.L969
	tst	r0, #8
	bne	.L970
	tst	r0, #16
	bne	.L971
	tst	r0, #32
	bne	.L972
	tst	r0, #64
	bne	.L973
	tst	r0, #128
	bne	.L974
	tst	r0, #256
	bne	.L975
	tst	r0, #512
	bne	.L976
	tst	r0, #1024
	bne	.L977
	tst	r0, #2048
	bne	.L978
	tst	r0, #4096
	bne	.L979
	tst	r0, #8192
	bne	.L980
	tst	r0, #16384
	bne	.L981
	lsrs	r0, r0, #15
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L967:
	mov	r0, #0
	bx	lr
.L968:
	mov	r0, #1
	bx	lr
.L979:
	mov	r0, #12
	bx	lr
.L969:
	mov	r0, #2
	bx	lr
.L970:
	mov	r0, #3
	bx	lr
.L971:
	mov	r0, #4
	bx	lr
.L972:
	mov	r0, #5
	bx	lr
.L973:
	mov	r0, #6
	bx	lr
.L974:
	mov	r0, #7
	bx	lr
.L975:
	mov	r0, #8
	bx	lr
.L976:
	mov	r0, #9
	bx	lr
.L977:
	mov	r0, #10
	bx	lr
.L978:
	mov	r0, #11
	bx	lr
.L980:
	mov	r0, #13
	bx	lr
.L981:
	mov	r0, #14
	bx	lr
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
	vldr.32	s15, .L989
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	bx	lr
.L990:
	.align	2
.L989:
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
	lsl	r2, r0, #30
	and	r3, r0, #1
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #29
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #28
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #27
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #26
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #25
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #24
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #23
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #22
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #21
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #20
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #19
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #18
	lsl	ip, r0, #17
	add	r1, r3, r2, lsr #31
	add	r3, r1, ip, lsr #31
	add	r0, r3, r0, lsr #15
	and	r0, r0, #1
	bx	lr
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
	lsl	r2, r0, #30
	and	r3, r0, #1
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #29
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #28
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #27
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #26
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #25
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #24
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #23
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #22
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #21
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #20
	add	r1, r3, r2, lsr #31
	lsl	ip, r0, #19
	add	r3, r1, ip, lsr #31
	lsl	r2, r0, #18
	lsl	ip, r0, #17
	add	r1, r3, r2, lsr #31
	add	r3, r1, ip, lsr #31
	add	r0, r3, r0, lsr #15
	bx	lr
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
	beq	.L996
	mov	r0, #0
.L995:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L995
	bx	lr
.L996:
	mov	r0, r3
	bx	lr
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
	beq	.L1002
	cmp	r1, #0
	beq	.L1003
	mov	r0, #0
.L1001:
	ands	r3, r1, #1
	mvnne	r3, #0
	lsrs	r1, r1, #1
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L1001
	bx	lr
.L1002:
	mov	r0, r2
	bx	lr
.L1003:
	mov	r0, r1
	bx	lr
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.syntax unified
	.arm
	.type	__udivmodsi4, %function
__udivmodsi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	movhi	r3, #1
	bhi	.L1007
	b	.L1027
.L1010:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1028
.L1007:
	cmp	r1, #0
	bge	.L1010
.L1011:
	mov	ip, #0
	push	{r4, lr}
.L1013:
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L1013
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L1028:
	cmp	r3, #0
	bne	.L1011
	mov	ip, r3
.L1025:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1027:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1025
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
	bmi	.L1031
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1031:
	mvn	r0, #0
	bx	lr
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
	bmi	.L1034
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1034:
	mvn	r0, #0
	bx	lr
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
	smull	r0, r1, r0, r1
	bx	lr
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
	umull	r0, r1, r0, r1
	bx	lr
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.syntax unified
	.arm
	.type	__mulhi3, %function
__mulhi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	rsblt	r1, r1, #0
	mov	lr, r0
	movlt	r4, #1
	blt	.L1039
	beq	.L1042
	mov	r4, #0
.L1039:
	mov	r0, #0
	mov	r3, r0
.L1041:
	ands	ip, r1, #1
	mvnne	ip, #0
	asrs	r1, r1, #1
	movne	r2, #1
	moveq	r2, #0
	add	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #32
	moveq	r2, #0
	andne	r2, r2, #1
	and	ip, ip, lr
	cmp	r2, #0
	add	r0, r0, ip
	lsl	lr, lr, #1
	bne	.L1041
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1042:
	mov	r0, r1
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
	subs	ip, r0, #0
	movlt	r3, #0
	push	{r4, lr}
	rsblt	ip, ip, #0
	movlt	r4, #1
	movge	r3, #1
	movge	r4, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	r4, r3
	cmp	ip, r1
	mov	r2, ip
	movhi	r3, #1
	bls	.L1071
.L1051:
	lsls	r3, r3, #1
	movne	r0, #1
	moveq	r0, #0
	lsl	r1, r1, #1
	cmp	ip, r1
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	bne	.L1051
	cmp	r3, #0
	moveq	r0, r3
	beq	.L1054
.L1053:
	cmp	r2, r1
	movcc	ip, #0
	movcs	ip, #1
	cmp	ip, #0
	movne	ip, r3
	moveq	ip, #0
	sub	lr, r2, r1
	movne	r2, lr
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	r0, r0, ip
	bne	.L1053
.L1054:
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1071:
	movcs	r0, #1
	movcc	r0, #0
	b	.L1054
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0
	eor	r3, r1, r1, asr #31
	rsblt	ip, ip, #0
	sub	r3, r3, r1, asr #31
	str	lr, [sp, #-4]!
	movlt	lr, #1
	movge	lr, #0
	cmp	ip, r3
	mov	r0, ip
	movhi	r2, #1
	bls	.L1096
.L1074:
	lsls	r2, r2, #1
	movne	r1, #1
	moveq	r1, #0
	lsl	r3, r3, #1
	cmp	ip, r3
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	bne	.L1074
	cmp	r2, #0
	moveq	r0, ip
	beq	.L1077
.L1076:
	cmp	r0, r3
	sub	ip, r0, r3
	movcs	r0, ip
	lsrs	r2, r2, #1
	lsr	r3, r3, #1
	bne	.L1076
.L1077:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
.L1096:
	sub	r1, ip, r3
	movcs	r0, r1
	b	.L1077
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	movcc	lr, #1
	bcc	.L1098
	b	.L1156
.L1101:
	cmp	r3, #0
	cmpne	r4, ip
	bls	.L1100
	mov	lr, r3
	mov	r1, ip
.L1098:
	lsl	ip, r1, #1
	lsl	r3, lr, #1
	tst	r1, #32768
	uxth	ip, ip
	uxth	r3, r3
	beq	.L1101
	sub	r5, r4, r1
	cmp	r4, r1
	uxth	r0, r5
	movcc	r0, r4
	cmp	r4, r1
	movcs	r7, lr
	movcc	r7, #0
	lsr	r6, lr, #1
	uxth	r6, r6
	cmp	r6, #0
	lsr	r5, r1, #1
	uxth	r7, r7
	beq	.L1157
.L1105:
	cmp	r5, r0
	movhi	r3, #0
	movls	r3, #1
	cmp	r3, #0
	moveq	r6, #0
	sub	r4, r0, r5
	lsr	ip, lr, #2
	uxth	r5, r4
	uxth	r4, ip
	movne	r0, r5
	cmp	r4, #0
	orr	r3, r7, r6
	lsr	ip, r1, #2
	beq	.L1103
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	moveq	ip, r0
	orr	r3, r3, r4
	lsr	r4, lr, #3
	uxth	r0, ip
	uxth	ip, r4
	cmp	ip, #0
	lsr	r4, r1, #3
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #4
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #4
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #5
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #5
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #6
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #6
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #7
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #7
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #8
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #8
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #9
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #9
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #10
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #10
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #11
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #11
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #12
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #12
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #13
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #13
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	orr	r3, r3, ip
	lsr	ip, lr, #14
	uxth	r4, r4
	uxth	ip, ip
	movne	r0, r4
	cmp	ip, #0
	lsr	r4, r1, #14
	beq	.L1103
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsr	lr, lr, #15
	uxth	lr, lr
	uxth	r4, r4
	movne	r0, r4
	cmp	lr, #0
	lsr	r1, r1, #15
	orr	r3, r3, ip
	beq	.L1103
	cmp	r0, r1
	sub	ip, r0, r1
	movcc	lr, #0
	movcs	lr, #1
	uxth	ip, ip
	cmp	r0, r1
	movcs	r0, ip
	orr	r3, lr, r3
.L1103:
	cmp	r2, #0
	moveq	r0, r3
	pop	{r4, r5, r6, r7, pc}
.L1100:
	cmp	r3, #0
	moveq	r0, r4
	beq	.L1103
	ldr	r5, .L1158
	cmp	r4, ip
	and	r6, lr, r5
	sub	lr, r4, ip
	uxth	r0, lr
	movcc	r0, r4
	cmp	r4, ip
	and	r5, r5, r1
	movcs	r7, r3
	movcc	r7, #0
	mov	lr, r3
	mov	r1, ip
	b	.L1105
.L1156:
	sub	r3, r1, r4
	sub	r0, r0, r1
	clz	r1, r3
	uxth	r0, r0
	lsr	r3, r1, #5
	movne	r0, r4
	b	.L1103
.L1157:
	mov	r3, r7
	b	.L1103
.L1159:
	.align	2
.L1158:
	.word	32767
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.syntax unified
	.arm
	.type	__udivmodsi4_libgcc, %function
__udivmodsi4_libgcc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1
	movhi	r3, #1
	bhi	.L1161
	b	.L1181
.L1164:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1182
.L1161:
	cmp	r1, #0
	bge	.L1164
.L1165:
	mov	ip, #0
	push	{r4, lr}
.L1167:
	cmp	r0, r1
	movcc	lr, #0
	movcs	lr, #1
	cmp	lr, #0
	movne	lr, r3
	moveq	lr, #0
	sub	r4, r0, r1
	movne	r0, r4
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	orr	ip, ip, lr
	bne	.L1167
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L1182:
	cmp	r3, #0
	bne	.L1165
	mov	ip, r3
.L1179:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1181:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1179
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
	beq	.L1184
	mov	r3, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r0, r3
	bx	lr
.L1184:
	cmp	r2, #0
	bxeq	lr
	rsb	ip, r2, #32
	lsl	r1, r1, r2
	lsl	r3, r0, r2
	orr	r1, r1, r0, lsr ip
	mov	r0, r3
	bx	lr
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
	beq	.L1189
	sub	r2, r2, #32
	asr	r3, r1, #31
	asr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1189:
	cmp	r2, #0
	bxeq	lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	asr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	bx	lr
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.syntax unified
	.arm
	.type	__bswapdi2, %function
__bswapdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r1
	rev	r1, r0
	rev	r0, r3
	bx	lr
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
	rev	r0, r0
	bx	lr
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
	movcs	r1, #0
	movcc	r1, #1
	lsl	r1, r1, #4
	rsb	r3, r1, #16
	lsr	ip, r0, r3
	tst	ip, #65280
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #3
	rsb	r0, r2, #8
	lsr	r3, ip, r0
	tst	r3, #240
	add	r1, r2, r1
	moveq	r2, #1
	movne	r2, #0
	lsl	ip, r2, #2
	rsb	r0, ip, #4
	lsr	r3, r3, r0
	tst	r3, #12
	moveq	r0, #1
	movne	r0, #0
	add	r2, ip, r1
	lsl	ip, r0, #1
	rsb	r1, ip, #2
	lsr	r3, r3, r1
	tst	r3, #2
	add	r0, ip, r2
	rsb	r2, r3, #2
	movne	r2, #0
	add	r0, r2, r0
	bx	lr
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
	blt	.L1200
	bgt	.L1201
	cmp	r0, r2
	bcc	.L1200
	bhi	.L1201
	mov	r0, #1
	bx	lr
.L1200:
	mov	r0, #0
	bx	lr
.L1201:
	mov	r0, #2
	bx	lr
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.syntax unified
	.arm
	.type	__aeabi_lcmp, %function
__aeabi_lcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L1206
	bgt	.L1205
	cmp	r0, r2
	bcc	.L1206
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1206:
	mvn	r0, #0
	bx	lr
.L1205:
	mov	r0, #1
	bx	lr
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
	uxth	r3, r0
	clz	r1, r3
	lsr	r2, r1, #5
	lsl	ip, r2, #4
	lsr	r3, r0, ip
	uxtb	r1, r3
	clz	r2, r1
	lsr	r1, r2, #5
	lsl	r2, r1, #3
	lsr	r3, r3, r2
	tst	r3, #15
	add	r2, r2, ip
	moveq	ip, #1
	movne	ip, #0
	lsl	ip, ip, #2
	lsr	r3, r3, ip
	tst	r3, #3
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	add	r1, ip, r2
	lsr	r2, r3, r0
	and	r3, r2, #3
	add	ip, r0, r1
	mvn	r1, r3
	ands	r2, r1, #1
	mvnne	r2, #0
	lsr	r0, r3, #1
	rsb	r3, r0, #2
	and	r3, r3, r2
	add	r0, r3, ip
	bx	lr
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
	beq	.L1209
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1209:
	cmp	r2, #0
	bxeq	lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	lsr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	bx	lr
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.syntax unified
	.arm
	.type	__muldsi3, %function
__muldsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxth	r3, r0
	uxth	r2, r1
	lsr	r0, r0, #16
	mul	ip, r2, r3
	lsr	r1, r1, #16
	mul	r2, r0, r2
	mul	r3, r1, r3
	mul	r0, r1, r0
	add	r1, r2, ip, lsr #16
	uxtah	r2, r3, r1
	add	r3, r0, r1, lsr #16
	lsl	r0, r2, #16
	add	r1, r3, r2, lsr #16
	uxtah	r0, r0, ip
	bx	lr
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	lsr	ip, r0, #16
	uxth	r4, r2
	uxth	lr, r0
	mul	r5, r4, lr
	mul	r6, ip, r4
	add	r4, r6, r5, lsr #16
	lsr	r6, r2, #16
	mul	lr, r6, lr
	mul	ip, r6, ip
	uxtah	lr, lr, r4
	add	ip, ip, r4, lsr #16
	add	ip, ip, lr, lsr #16
	mla	r3, r3, r0, ip
	lsl	lr, lr, #16
	mla	r1, r1, r2, r3
	uxtah	r0, lr, r5
	pop	{r4, r5, r6, pc}
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
	bx	lr
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
	eor	r0, r1, r1, lsr #8
	eor	r2, r0, r0, lsr #4
	ldr	r3, .L1218
	and	ip, r2, #15
	asr	r3, r3, ip
	and	r0, r3, #1
	bx	lr
.L1219:
	.align	2
.L1218:
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
	eor	r3, r0, r0, lsr #16
	eor	r0, r3, r3, lsr #8
	eor	r1, r0, r0, lsr #4
	ldr	r2, .L1221
	and	ip, r1, #15
	asr	r2, r2, ip
	and	r0, r2, #1
	bx	lr
.L1222:
	.align	2
.L1221:
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
	ldr	r2, .L1225
	lsr	r3, r0, #1
	orr	r3, r3, r1, lsl #31
	and	r3, r3, r2
	subs	r0, r0, r3
	and	r2, r2, r1, lsr #1
	sbc	r1, r1, r2
	lsr	r3, r0, #2
	str	lr, [sp, #-4]!
	ldr	lr, .L1225+4
	orr	r2, r3, r1, lsl #30
	and	r0, r0, lr
	and	r2, r2, lr
	adds	r2, r2, r0
	and	r3, lr, r1, lsr #2
	and	r1, r1, lr
	adc	r3, r3, r1
	lsr	r0, r2, #4
	orr	r1, r0, r3, lsl #28
	adds	r2, r1, r2
	ldr	ip, .L1225+8
	adc	r0, r3, r3, lsr #4
	and	r2, r2, ip
	and	r0, r0, ip
	add	ip, r0, r2
	add	r3, ip, ip, lsr #16
	add	r1, r3, r3, lsr #8
	and	r0, r1, #127
	ldr	pc, [sp], #4
.L1226:
	.align	2
.L1225:
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
	ldr	r2, .L1228
	ldr	r1, .L1228+4
	and	ip, r2, r0, lsr #1
	sub	r0, r0, ip
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	add	r1, r2, r0
	ldr	r3, .L1228+8
	add	ip, r1, r1, lsr #4
	and	r3, r3, ip
	add	r3, r3, r3, lsr #16
	add	r0, r3, r3, lsr #8
	and	r0, r0, #63
	bx	lr
.L1229:
	.align	2
.L1228:
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
	tst	r0, #1
	vmov.f64	d7, d0
	mov	r1, r0
	vmov.f64	d0, #1.0e+0
	beq	.L1231
.L1233:
	vmul.f64	d0, d0, d7
.L1231:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1232
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1233
.L1237:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1233
	b	.L1237
.L1232:
	cmp	r0, #0
	vmovlt.f64	d7, #1.0e+0
	vdivlt.f64	d0, d7, d0
	bx	lr
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
	tst	r0, #1
	vmov.f32	s15, s0
	mov	r1, r0
	vmov.f32	s0, #1.0e+0
	beq	.L1239
.L1241:
	vmul.f32	s0, s0, s15
.L1239:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1240
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1241
.L1245:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1241
	b	.L1245
.L1240:
	cmp	r0, #0
	vmovlt.f32	s15, #1.0e+0
	vdivlt.f32	s0, s15, s0
	bx	lr
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
	bcc	.L1250
	bhi	.L1251
	cmp	r0, r2
	bcc	.L1250
	bhi	.L1251
	mov	r0, #1
	bx	lr
.L1250:
	mov	r0, #0
	bx	lr
.L1251:
	mov	r0, #2
	bx	lr
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.syntax unified
	.arm
	.type	__aeabi_ulcmp, %function
__aeabi_ulcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L1256
	bhi	.L1255
	cmp	r0, r2
	bcc	.L1256
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1256:
	mvn	r0, #0
	bx	lr
.L1255:
	mov	r0, #1
	bx	lr
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	digits, %object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklm"
	.ascii	"nopqrstuvwxyz\000"
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	s.0, %object
	.size	s.0, 7
s.0:
	.space	7
	.space	1
	.type	seed, %object
	.size	seed, 8
seed:
	.space	8
	.global	__aeabi_uidivmod
	.global	__aeabi_ul2f
	.global	__aeabi_ul2d
	.global	__aeabi_ldivmod
	.global	__aeabi_idivmod
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
