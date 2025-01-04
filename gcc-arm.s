	.arch armv6t2
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
	movw	r1, #47061
	movw	r2, #8231
	sub	r3, r0, #8192
	sub	ip, r3, #42
	cmp	r0, r2
	cmphi	ip, r1
	movls	ip, #1
	movhi	ip, #0
	bls	.L161
	movw	r2, #8184
	sub	r1, r0, #57344
	cmp	r1, r2
	bls	.L161
	mov	r3, #3
	sub	r2, r0, #65280
	sub	r1, r2, #252
	movt	r3, 16
	cmp	r1, r3
	bhi	.L162
	movw	ip, #65534
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
	bls	.L166
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L166:
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
	bvs	.L172
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L175
	vsub.f64	d0, d0, d1
	bx	lr
.L175:
	vldr.64	d0, .L176
	bx	lr
.L172:
	vmov.f64	d0, d1
	bx	lr
.L177:
	.align	3
.L176:
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
	bvs	.L182
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L185
	vsub.f32	s0, s0, s1
	bx	lr
.L185:
	vldr.32	s0, .L186
	bx	lr
.L182:
	vmov.f32	s0, s1
	bx	lr
.L187:
	.align	2
.L186:
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
	bvs	.L191
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L190
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L190:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L191:
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
	bvs	.L197
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L196
	cmp	r0, #0
	vmovne.f32	s0, s1
	bx	lr
.L196:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	bx	lr
.L197:
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
	bvs	.L203
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L202
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L202:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L203:
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
	bvs	.L209
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L208
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L208:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L209:
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
	bvs	.L215
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L214
	cmp	r0, #0
	vmoveq.f32	s0, s1
	bx	lr
.L214:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	bx	lr
.L215:
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
	bvs	.L221
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L220
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L220:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L221:
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
	movw	r3, #:lower16:.LANCHOR0
	beq	.L227
	movw	r1, #:lower16:.LANCHOR1
	movt	r3, #:upper16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR1
.L226:
	and	r2, r0, #63
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	ip, [r3], #1
	bne	.L226
.L225:
	mov	r1, #0
	movw	r0, #:lower16:.LANCHOR0
	strb	r1, [r3]
	movt	r0, #:upper16:.LANCHOR0
	bx	lr
.L227:
	movt	r3, #:upper16:.LANCHOR0
	b	.L225
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
	movw	r3, #:lower16:.LANCHOR0
	mov	r2, #0
	movt	r3, #:upper16:.LANCHOR0
	sub	r0, r0, #1
	str	r0, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
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
	movw	r2, #:lower16:.LANCHOR0
	movw	r0, #62509
	movw	r1, #32557
	movt	r2, #:upper16:.LANCHOR0
	ldr	r3, [r2, #8]
	movt	r0, 22609
	mul	r0, r0, r3
	ldr	ip, [r2, #12]
	movt	r1, 19605
	mla	ip, r1, ip, r0
	umull	r3, r1, r3, r1
	adds	r3, r3, #1
	adc	r0, ip, r1
	str	r0, [r2, #12]
	str	r3, [r2, #8]
	lsr	r0, r0, #1
	bx	lr
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
	beq	.L237
	ldr	r3, [r1]
	str	r1, [r0, #4]
	str	r3, [r0]
	str	r0, [r1]
	ldr	r1, [r0]
	cmp	r1, #0
	strne	r0, [r1, #4]
	bx	lr
.L237:
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
	beq	.L248
	mov	r4, r1
	mov	fp, #0
	b	.L250
.L263:
	cmp	r6, fp
	beq	.L248
.L250:
	mov	r1, r4
	mov	r0, r7
	blx	r9
	cmp	r0, #0
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	bne	.L263
.L247:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L248:
	ldr	r3, [sp, #4]
	add	r0, r6, #1
	cmp	r5, #0
	mla	r8, r6, r5, r3
	str	r0, [r10]
	beq	.L247
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
	beq	.L265
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	mov	r5, #0
	b	.L267
.L276:
	cmp	r7, r5
	beq	.L265
.L267:
	mov	r1, r4
	mov	r0, r6
	blx	r8
	cmp	r0, #0
	mov	r10, r4
	add	r5, r5, #1
	add	r4, r4, r9
	bne	.L276
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L265:
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
	bhi	.L279
.L280:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L280
.L279:
	cmp	r3, #43
	beq	.L281
	cmp	r3, #45
	bne	.L303
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	bhi	.L290
	mov	r4, #1
.L284:
	mov	r0, #0
.L287:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L287
	cmp	r4, #0
	subeq	r0, ip, r1
	pop	{r4, pc}
.L303:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L290
.L302:
	mov	r4, #0
	b	.L284
.L281:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L302
.L290:
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
	bhi	.L305
.L306:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L306
.L305:
	cmp	r3, #43
	beq	.L307
	cmp	r3, #45
	bne	.L308
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	movls	r4, #1
	bhi	.L315
.L309:
	mov	r0, #0
.L312:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L312
	cmp	r4, #0
	subeq	r0, ip, r1
	pop	{r4, pc}
.L308:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L315
.L325:
	mov	r4, #0
	b	.L309
.L307:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L325
.L315:
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
	bhi	.L327
.L328:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	sub	r1, ip, #9
	cmp	ip, #32
	cmpne	r1, #4
	bls	.L328
.L327:
	cmp	ip, #43
	beq	.L329
	cmp	ip, #45
	bne	.L351
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r4, #48
	cmp	ip, #9
	bhi	.L338
	mov	r6, #1
.L332:
	mov	r0, #0
	mov	r4, r0
.L335:
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
	bls	.L335
	cmp	r6, #0
	bne	.L326
	subs	r0, r2, r3
	sbc	r4, r7, r1
.L326:
	mov	r1, r4
	pop	{r4, r5, r6, r7, pc}
.L351:
	sub	ip, ip, #48
	cmp	ip, #9
	movls	lr, r0
	bhi	.L338
.L350:
	mov	r6, #0
	b	.L332
.L329:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r2, #48
	cmp	ip, #9
	bls	.L350
.L338:
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
	beq	.L353
	mov	r9, r0
	mov	r7, r1
	mov	r8, r3
	b	.L356
.L363:
	beq	.L352
	sub	r4, r4, r5
	cmp	r4, #0
	add	r7, r6, r8
	beq	.L353
.L356:
	lsr	r5, r4, #1
	mla	r6, r8, r5, r7
	mov	r0, r9
	mov	r1, r6
	blx	r10
	cmp	r0, #0
	sub	r4, r4, #1
	bge	.L363
	mov	r4, r5
	cmp	r4, #0
	bne	.L356
.L353:
	mov	r6, #0
.L352:
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
	beq	.L369
.L377:
	asr	fp, r4, #1
	mla	r5, r7, fp, r6
	mov	r2, r10
	mov	r0, r8
	mov	r1, r5
	blx	r9
	cmp	r0, #0
	sub	r4, r4, #1
	beq	.L364
	ble	.L367
	asrs	r4, r4, #1
	add	r6, r5, r7
	bne	.L377
.L369:
	mov	r5, #0
.L364:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L367:
	cmp	fp, #0
	beq	.L369
	mov	r4, fp
	b	.L377
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
	beq	.L395
.L392:
	cmp	r1, r3
	bxeq	lr
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	bne	.L392
.L395:
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
	beq	.L402
	b	.L401
.L403:
	ldr	r3, [r0, #4]!
	ldr	r2, [r1, #4]!
	cmp	r3, r2
	bne	.L401
.L402:
	cmp	r3, #0
	bne	.L403
.L401:
	cmp	r3, r2
	bcc	.L405
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L405:
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
.L407:
	ldr	r3, [r1], #4
	cmp	r3, #0
	str	r3, [r2, #4]!
	bne	.L407
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
.L412:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L412
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
	beq	.L423
	push	{r4, lr}
	b	.L419
.L420:
	subs	r2, r2, #1
	beq	.L426
.L419:
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
	bne	.L420
	ldr	r2, [r4]
	cmp	r2, r3
	bcc	.L433
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, pc}
.L433:
	mvn	r0, #0
	pop	{r4, pc}
.L426:
	mov	r0, #0
	pop	{r4, pc}
.L423:
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
	beq	.L441
	mov	r3, r0
.L436:
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L436
.L441:
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
	bne	.L445
	b	.L452
.L446:
	subs	r2, r2, #1
	beq	.L452
.L445:
	ldr	ip, [r0]
	ldr	r3, [r1]
	add	r0, r0, #4
	cmp	ip, r3
	add	r1, r1, #4
	beq	.L446
	bcc	.L455
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L452:
	mov	r0, #0
	bx	lr
.L455:
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
	beq	.L457
	lsl	r2, r2, #2
	bl	memcpy
.L457:
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
	bcc	.L464
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	lr, r2, #1
	cmp	lr, #6
	add	r4, r1, #4
	bls	.L468
	cmp	r0, r4
	beq	.L468
	lsr	lr, r2, #1
.L469:
	subs	lr, lr, #1
	ldrd	r4, [r3]
	add	ip, ip, #8
	str	r5, [ip, #-4]
	str	r4, [ip, #-8]
	add	r3, r3, #8
	bne	.L469
	tst	r2, #1
	bicne	r2, r2, #1
	ldrne	r3, [r1, r2, lsl #2]
	strne	r3, [r0, r2, lsl #2]
	pop	{r4, r5, pc}
.L464:
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	ip, lr, #4
	lsr	r3, ip, #2
	add	r3, r3, #1
	cmp	r3, #2
	add	r1, r1, lr
	add	r2, r0, lr
	ble	.L489
	sub	r3, r3, #1
	ldr	ip, [r1, #-4]!
.L467:
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	ldr	ip, [r1, #-4]!
	bne	.L467
	str	ip, [r2, #-4]!
	pop	{r4, r5, pc}
.L489:
	ldr	ip, [r1, #-4]!
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	bne	.L489
	pop	{r4, r5, pc}
.L468:
	sub	r2, r0, #4
	add	r3, lr, #1
.L472:
	ldr	r1, [r4, #-4]
	subs	r3, r3, #1
	str	r1, [r2, #4]!
	add	r4, r4, #4
	bne	.L472
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
	beq	.L500
	mov	r3, r0
	lsr	ip, r2, #1
.L498:
	subs	ip, ip, #1
	str	r1, [r3]
	str	r1, [r3, #4]
	add	r3, r3, #8
	bne	.L498
	tst	r2, #1
	bxeq	lr
	bic	r2, r2, #1
	add	r2, r0, r2, lsl #2
.L497:
	str	r1, [r2]
	bx	lr
.L500:
	mov	r2, r0
	b	.L497
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
	bcs	.L509
	cmp	r2, #0
	add	r3, r0, r2
	add	r2, r1, r2
	bxeq	lr
	sub	r0, r3, r0
	cmp	r0, #2
	ble	.L541
	sub	r0, r0, #1
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
.L511:
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	bne	.L511
	strb	r1, [r2, #-1]!
	bx	lr
.L509:
	bxeq	lr
	cmp	r2, #0
	bxeq	lr
	sub	r3, r2, #1
	cmp	r3, #5
	add	ip, r0, #1
	bls	.L512
	sub	r3, r1, ip
	cmp	r3, #2
	bls	.L512
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
	ble	.L542
	sub	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L513:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L513
	str	r4, [ip], #4	@ unaligned
.L543:
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
.L541:
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	bne	.L541
	bx	lr
.L542:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L543
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L542
	b	.L543
.L512:
	add	r3, r0, r2
	sub	r2, r3, ip
	sub	r0, r1, #1
	add	r3, r2, #1
.L516:
	ldrb	r1, [ip, #-1]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	ip, ip, #1
	strb	r1, [r0, #1]!
	bne	.L516
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
	b	.L567
.L565:
	subs	r1, r1, #1
	beq	.L569
.L567:
	lsr	r3, r0, r2
	ands	ip, r3, #1
	add	r2, r2, #1
	beq	.L565
	mov	r0, r2
	bx	lr
.L569:
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
	beq	.L573
	ands	r0, r3, #1
	bxne	lr
	mov	r0, #1
.L572:
	asr	r3, r3, #1
	tst	r3, #1
	add	r0, r0, #1
	beq	.L572
	bx	lr
.L573:
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
	vldr.32	s15, .L580
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L579
	vldr.32	s1, .L580+4
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L579:
	mov	r0, #1
	bx	lr
.L581:
	.align	2
.L580:
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
	vldr.64	d7, .L585
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L584
	vldr.64	d1, .L585+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L584:
	mov	r0, #1
	bx	lr
.L586:
	.align	3
.L585:
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
	vldr.64	d7, .L590
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L589
	vldr.64	d1, .L590+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L589:
	mov	r0, #1
	bx	lr
.L591:
	.align	3
.L590:
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
	beq	.L596
.L597:
	vmul.f32	s0, s0, s1
.L596:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L597
.L606:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L597
	b	.L606
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
	beq	.L610
.L611:
	vmul.f64	d0, d0, d1
.L610:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L611
.L620:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L611
	b	.L620
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
	beq	.L624
.L625:
	vmul.f64	d0, d0, d1
.L624:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L625
.L634:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L625
	b	.L634
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
	bls	.L640
	mov	lr, r0
	bic	r5, r4, #3
	sub	ip, r5, #4
	lsr	r2, ip, #2
	add	ip, r2, #1
	add	r6, r1, r5
.L638:
	ldr	r3, [lr]	@ unaligned
	ldr	r2, [r1], #4	@ unaligned
	subs	ip, ip, #1
	eor	r3, r3, r2
	str	r3, [lr], #4	@ unaligned
	bne	.L638
	cmp	r4, r5
	popeq	{r4, r5, r6, pc}
	mov	r1, r6
	add	r3, r0, r5
	sub	r4, r4, r5
.L637:
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
.L640:
	mov	r3, r0
	b	.L637
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
	beq	.L653
.L654:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L654
.L653:
	cmp	r2, #0
	beq	.L655
	sub	r1, r1, #1
.L656:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	strb	ip, [r3], #1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L656
.L655:
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
	beq	.L670
	mov	r0, #0
	sub	ip, r3, #1
.L668:
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bxeq	lr
	subs	r1, r1, #1
	add	r0, r0, #1
	bne	.L668
	bx	lr
.L670:
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
	beq	.L679
	sub	r1, r1, #1
.L675:
	mov	r2, r1
	b	.L678
.L677:
	cmp	r3, ip
	bxeq	lr
.L678:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L677
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L675
.L679:
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
.L683:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, r1
	moveq	r0, r3
	cmp	r2, #0
	add	r3, r3, #1
	bne	.L683
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
	beq	.L697
	mov	r6, r1
	mov	r3, r1
.L688:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L688
	subs	r0, r3, r6
	beq	.L697
	sub	r5, r6, #1
	add	r5, r5, r0
	b	.L695
.L702:
	cmp	r3, #0
	beq	.L701
.L695:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r4
	add	r2, r2, #1
	bne	.L702
	mov	lr, r6
	mov	ip, r4
	mov	r1, r0
	b	.L690
.L693:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L703
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
.L690:
	subs	r2, ip, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	r5, lr
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L693
	cmp	r3, ip
	popeq	{r4, r5, r6, pc}
.L704:
	add	r2, r0, #1
	b	.L695
.L701:
	mov	r0, r3
	pop	{r4, r5, r6, pc}
.L703:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	cmp	r3, ip
	bne	.L704
	pop	{r4, r5, r6, pc}
.L697:
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
	bmi	.L715
	bxle	lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bxpl	lr
	vneg.f64	d0, d0
	bx	lr
.L715:
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
	bcc	.L727
	sub	r1, r1, r7
	adds	r6, r0, r1
	bcs	.L727
	ldrb	r8, [r2]	@ zero_extendqisi2
	b	.L722
.L718:
	cmp	r6, r0
	bcc	.L727
.L722:
	mov	ip, r0
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	cmp	r3, r8
	movne	r0, ip
	bne	.L718
	cmp	r7, #1
	popeq	{r4, r5, r6, r7, r8, pc}
.L721:
	mov	r3, r2
	sub	lr, ip, #1
	sub	r1, r7, #1
	b	.L719
.L720:
	subs	r1, r1, #1
	popeq	{r4, r5, r6, r7, r8, pc}
.L719:
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	cmp	r5, r4
	beq	.L720
	cmp	r6, ip
	bcc	.L727
	mov	r0, ip
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	cmp	r8, r1
	bne	.L718
	mov	r4, ip
	mov	ip, r0
	mov	r0, r4
	b	.L721
.L727:
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
	beq	.L740
	bl	memmove
.L740:
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
	bmi	.L767
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movge	r2, #0
	blt	.L768
.L748:
	mov	r1, #0
	vmov.f64	d5, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L754:
	vmul.f64	d0, d0, d5
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r1, r1, #1
	bge	.L754
.L755:
	cmp	r2, #0
	vnegne.f64	d0, d0
	str	r1, [r0]
	bx	lr
.L768:
	vmov.f64	d1, #5.0e-1
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L751
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L760
.L751:
	mov	r3, #0
	str	r3, [r0]
	bx	lr
.L767:
	vmov.f64	d2, #-1.0e+0
	vcmpe.f64	d0, d2
	vneg.f64	d6, d0
	vmrs	APSR_nzcv, FPSCR
	vmovls.f64	d0, d6
	movls	r2, #1
	bls	.L748
	vmov.f64	d3, #-5.0e-1
	vcmpe.f64	d0, d3
	vmrs	APSR_nzcv, FPSCR
	ble	.L751
	mov	r2, #1
.L749:
	vmov.f64	d0, d6
	mov	r1, #0
	vmov.f64	d4, #5.0e-1
.L756:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d4
	vmrs	APSR_nzcv, FPSCR
	sub	r1, r1, #1
	bmi	.L756
	b	.L755
.L760:
	vmov.f64	d6, d0
	mov	r2, #0
	b	.L749
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
	beq	.L772
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
.L771:
	sbfx	ip, r4, #0, #1
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
	bne	.L771
	pop	{r4, r5, pc}
.L772:
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
	bcc	.L777
	b	.L797
.L780:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L798
.L777:
	cmp	r1, #0
	bge	.L780
.L781:
	mov	ip, #0
	push	{r4, lr}
.L783:
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
	bne	.L783
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L798:
	cmp	r3, #0
	bne	.L781
	mov	ip, r3
.L795:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L797:
	sub	r1, r0, r1
	movls	ip, #1
	movhi	ip, #0
	movls	r0, r1
	b	.L795
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
	beq	.L806
	cmp	r1, #0
	clzeq	r0, r3
	clzne	r0, r1
	addeq	r0, r0, #32
	sub	r0, r0, #1
	bx	lr
.L806:
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
	beq	.L810
	mov	r0, #0
.L809:
	sbfx	r2, r3, #0, #1
	and	r2, r2, r1
	lsrs	r3, r3, #1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L809
	bx	lr
.L810:
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
	bcc	.L817
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L846
.L817:
	cmp	r3, #0
	beq	.L816
	lsl	lr, r3, #3
	sub	r3, lr, #8
	lsr	ip, r3, #3
	add	r3, ip, #1
	sub	lr, r1, #8
	sub	ip, r0, #8
.L820:
	vldr.64	d7, [lr, #8]	@ int
	subs	r3, r3, #1
	add	lr, lr, #8
	add	ip, ip, #8
	vstr.64	d7, [ip]	@ int
	bne	.L820
.L816:
	cmp	r2, r4
	popls	{r4, r5, r6, r7, pc}
	sub	r7, r2, r4
	sub	r3, r7, #1
	cmp	r3, #5
	bls	.L821
	add	ip, r4, #1
	add	r3, r1, ip
	add	ip, r0, r4
	sub	r3, ip, r3
	cmp	r3, #2
	bls	.L821
	bic	r6, r7, #3
	sub	r5, r6, #4
	lsr	lr, r5, #2
	add	r3, lr, #1
	cmp	r3, #2
	add	lr, r1, r4
	ble	.L840
	sub	r3, r3, #1
	ldr	r5, [lr], #4	@ unaligned
.L822:
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	ldr	r5, [lr], #4	@ unaligned
	bne	.L822
	str	r5, [ip], #4	@ unaligned
.L841:
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
.L840:
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	beq	.L841
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	bne	.L840
	b	.L841
.L846:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, ip, r1
	cmp	r1, #2
	mov	r3, ip
	add	r0, r0, r2
	ble	.L843
	sub	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L826:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L826
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L843:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L843
	pop	{r4, r5, r6, r7, pc}
.L821:
	sub	r4, r4, #1
	add	ip, r1, r4
	sub	r1, r1, #1
	add	r3, r1, r2
	sub	r3, r3, ip
	cmp	r3, #2
	add	r4, r0, r4
	ble	.L842
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L824:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L824
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, pc}
.L842:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L842
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
	bcc	.L851
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L882
.L851:
	cmp	r5, #0
	beq	.L850
	sub	r3, r5, #1
	cmp	r3, #6
	bls	.L854
	add	r4, r1, #2
	cmp	r0, r4
	beq	.L854
	bic	r6, r2, #3
	sub	r3, r6, #4
	lsr	r4, r3, #2
	add	r3, r4, #1
	cmp	r3, #2
	mov	lr, r1
	mov	ip, r0
	lsr	r7, r2, #2
	ble	.L876
	sub	r3, r3, #1
	ldr	r4, [lr], #4	@ unaligned
.L855:
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	ldr	r4, [lr], #4	@ unaligned
	bne	.L855
	str	r4, [ip], #4	@ unaligned
.L877:
	cmp	r5, r7, lsl #1
	ldrshne	r3, [r1, r6]
	strhne	r3, [r0, r6]	@ movhi
.L850:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, r5, r6, r7, pc}
.L876:
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	beq	.L877
	ldr	r4, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r4, [ip], #4	@ unaligned
	bne	.L876
	b	.L877
.L882:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, r3, r1
	cmp	r1, #2
	add	r2, r0, r2
	ble	.L879
	sub	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L860:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L860
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L879:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L879
	pop	{r4, r5, r6, r7, pc}
.L854:
	lsl	ip, r5, #1
	sub	r3, ip, #2
	lsr	r4, r3, #1
	add	r3, r4, #1
	cmp	r3, #2
	sub	lr, r1, #2
	sub	ip, r0, #2
	ble	.L878
	sub	r3, r3, #1
	ldrsh	r4, [lr, #2]!
.L857:
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	ldrsh	r4, [lr, #2]!
	bne	.L857
	strh	r4, [ip, #2]!	@ movhi
	b	.L850
.L878:
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	beq	.L850
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	bne	.L878
	b	.L850
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
	bcc	.L888
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L925
.L888:
	cmp	r7, #0
	beq	.L926
	sub	r3, r7, #1
	cmp	r3, #6
	bls	.L890
	add	r5, r1, #4
	cmp	r0, r5
	beq	.L890
	mov	ip, r1
	mov	r3, r0
	bic	lr, r2, #7
	sub	r6, lr, #8
	lsr	r8, r6, #3
	add	lr, r8, #1
	lsr	r8, r2, #3
.L891:
	ldr	r6, [ip]
	ldr	r5, [ip, #4]
	subs	lr, lr, #1
	str	r6, [r3]
	str	r5, [r3, #4]
	add	ip, ip, #8
	add	r3, r3, #8
	bne	.L891
	cmp	r7, r8, lsl #1
	ldrne	ip, [r1, r8, lsl #3]
	strne	ip, [r0, r8, lsl #3]
.L894:
	cmp	r2, r4
	popls	{r4, r5, r6, r7, r8, pc}
.L927:
	sub	r7, r2, r4
	sub	ip, r7, #1
	cmp	ip, #5
	bls	.L886
	add	r3, r4, #1
	add	r3, r1, r3
	add	ip, r0, r4
	sub	r3, ip, r3
	cmp	r3, #2
	bls	.L886
	bic	r6, r7, #3
	sub	r5, r6, #4
	lsr	lr, r5, #2
	add	r3, lr, #1
	cmp	r3, #2
	add	lr, r1, r4
	ble	.L918
	sub	r3, r3, #1
	ldr	r5, [lr], #4	@ unaligned
.L895:
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	ldr	r5, [lr], #4	@ unaligned
	bne	.L895
	str	r5, [ip], #4	@ unaligned
.L919:
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
.L918:
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	beq	.L919
	ldr	r5, [lr], #4	@ unaligned
	subs	r3, r3, #1
	str	r5, [ip], #4	@ unaligned
	bne	.L918
	b	.L919
.L925:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, r8, pc}
	sub	r1, r3, r1
	cmp	r1, #2
	add	r0, r0, r2
	ble	.L921
	sub	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L899:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L899
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, r8, pc}
.L921:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L921
	pop	{r4, r5, r6, r7, r8, pc}
.L890:
	lsl	r5, r7, #2
	sub	lr, r5, #4
	lsr	r3, lr, #2
	add	r3, r3, #1
	cmp	r3, #2
	sub	lr, r1, #4
	sub	ip, r0, #4
	ble	.L917
	sub	r3, r3, #1
	ldr	r5, [lr, #4]!
.L893:
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	ldr	r5, [lr, #4]!
	bne	.L893
	str	r5, [ip, #4]!
	cmp	r2, r4
	bhi	.L927
	pop	{r4, r5, r6, r7, r8, pc}
.L917:
	ldr	r5, [lr, #4]!
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	beq	.L894
	ldr	r5, [lr, #4]!
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	bne	.L917
	b	.L894
.L926:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, r8, pc}
.L886:
	sub	r4, r4, #1
	add	ip, r1, r4
	sub	r1, r1, #1
	add	r3, r1, r2
	sub	r3, r3, ip
	cmp	r3, #2
	add	r4, r0, r4
	ble	.L920
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L897:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L897
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, r8, pc}
.L920:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L920
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
	bne	.L941
	asrs	r0, r0, #14
	bxne	lr
	lsrs	r2, r3, #13
	bne	.L942
	lsrs	r2, r3, #12
	bne	.L943
	lsrs	r2, r3, #11
	bne	.L944
	lsrs	r2, r3, #10
	bne	.L945
	lsrs	r2, r3, #9
	bne	.L946
	lsrs	r2, r3, #8
	bne	.L947
	lsrs	r2, r3, #7
	bne	.L948
	lsrs	r2, r3, #6
	bne	.L949
	lsrs	r2, r3, #5
	bne	.L950
	lsrs	r2, r3, #4
	bne	.L951
	lsrs	r2, r3, #3
	bne	.L952
	lsrs	r2, r3, #2
	bne	.L953
	lsrs	r2, r3, #1
	bne	.L954
	cmp	r3, #0
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L941:
	mov	r0, #0
	bx	lr
.L952:
	mov	r0, #12
	bx	lr
.L942:
	mov	r0, #2
	bx	lr
.L943:
	mov	r0, #3
	bx	lr
.L944:
	mov	r0, #4
	bx	lr
.L945:
	mov	r0, #5
	bx	lr
.L946:
	mov	r0, #6
	bx	lr
.L947:
	mov	r0, #7
	bx	lr
.L948:
	mov	r0, #8
	bx	lr
.L949:
	mov	r0, #9
	bx	lr
.L950:
	mov	r0, #10
	bx	lr
.L951:
	mov	r0, #11
	bx	lr
.L953:
	mov	r0, #13
	bx	lr
.L954:
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
	bne	.L959
	tst	r0, #2
	bne	.L960
	tst	r0, #4
	bne	.L961
	tst	r0, #8
	bne	.L962
	tst	r0, #16
	bne	.L963
	tst	r0, #32
	bne	.L964
	tst	r0, #64
	bne	.L965
	tst	r0, #128
	bne	.L966
	tst	r0, #256
	bne	.L967
	tst	r0, #512
	bne	.L968
	tst	r0, #1024
	bne	.L969
	tst	r0, #2048
	bne	.L970
	tst	r0, #4096
	bne	.L971
	tst	r0, #8192
	bne	.L972
	tst	r0, #16384
	bne	.L973
	lsrs	r0, r0, #15
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L959:
	mov	r0, #0
	bx	lr
.L960:
	mov	r0, #1
	bx	lr
.L971:
	mov	r0, #12
	bx	lr
.L961:
	mov	r0, #2
	bx	lr
.L962:
	mov	r0, #3
	bx	lr
.L963:
	mov	r0, #4
	bx	lr
.L964:
	mov	r0, #5
	bx	lr
.L965:
	mov	r0, #6
	bx	lr
.L966:
	mov	r0, #7
	bx	lr
.L967:
	mov	r0, #8
	bx	lr
.L968:
	mov	r0, #9
	bx	lr
.L969:
	mov	r0, #10
	bx	lr
.L970:
	mov	r0, #11
	bx	lr
.L972:
	mov	r0, #13
	bx	lr
.L973:
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
	vldr.32	s15, .L981
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	bx	lr
.L982:
	.align	2
.L981:
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
	ubfx	r3, r0, #1, #1
	and	r2, r0, #1
	add	r1, r3, r2
	ubfx	ip, r0, #2, #1
	add	r3, r1, ip
	ubfx	r2, r0, #3, #1
	add	r1, r3, r2
	ubfx	ip, r0, #4, #1
	add	r3, r1, ip
	ubfx	r2, r0, #5, #1
	add	r1, r3, r2
	ubfx	ip, r0, #6, #1
	add	r3, r1, ip
	ubfx	r2, r0, #7, #1
	add	r1, r3, r2
	ubfx	ip, r0, #8, #1
	add	r3, r1, ip
	ubfx	r2, r0, #9, #1
	add	r1, r3, r2
	ubfx	ip, r0, #10, #1
	add	r3, r1, ip
	ubfx	r2, r0, #11, #1
	add	r1, r3, r2
	ubfx	ip, r0, #12, #1
	add	r3, r1, ip
	ubfx	r2, r0, #13, #1
	ubfx	ip, r0, #14, #1
	add	r1, r3, r2
	add	r3, r1, ip
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
	ubfx	r3, r0, #1, #1
	and	r2, r0, #1
	add	r1, r3, r2
	ubfx	ip, r0, #2, #1
	add	r3, r1, ip
	ubfx	r2, r0, #3, #1
	add	r1, r3, r2
	ubfx	ip, r0, #4, #1
	add	r3, r1, ip
	ubfx	r2, r0, #5, #1
	add	r1, r3, r2
	ubfx	ip, r0, #6, #1
	add	r3, r1, ip
	ubfx	r2, r0, #7, #1
	add	r1, r3, r2
	ubfx	ip, r0, #8, #1
	add	r3, r1, ip
	ubfx	r2, r0, #9, #1
	add	r1, r3, r2
	ubfx	ip, r0, #10, #1
	add	r3, r1, ip
	ubfx	r2, r0, #11, #1
	add	r1, r3, r2
	ubfx	ip, r0, #12, #1
	add	r3, r1, ip
	ubfx	r2, r0, #13, #1
	ubfx	ip, r0, #14, #1
	add	r1, r3, r2
	add	r3, r1, ip
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
	beq	.L988
	mov	r0, #0
.L987:
	sbfx	r2, r3, #0, #1
	and	r2, r2, r1
	lsrs	r3, r3, #1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L987
	bx	lr
.L988:
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
	beq	.L994
	cmp	r1, #0
	beq	.L995
	mov	r0, #0
.L993:
	sbfx	r3, r1, #0, #1
	and	r3, r3, r2
	lsrs	r1, r1, #1
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L993
	bx	lr
.L994:
	mov	r0, r2
	bx	lr
.L995:
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
	bhi	.L999
	b	.L1019
.L1002:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1020
.L999:
	cmp	r1, #0
	bge	.L1002
.L1003:
	mov	ip, #0
	push	{r4, lr}
.L1005:
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
	bne	.L1005
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L1020:
	cmp	r3, #0
	bne	.L1003
	mov	ip, r3
.L1017:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1019:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1017
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
	bmi	.L1023
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1023:
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
	bmi	.L1026
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1026:
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
	blt	.L1031
	beq	.L1034
	mov	r4, #0
.L1031:
	mov	r0, #0
	mov	r3, r0
.L1033:
	sbfx	ip, r1, #0, #1
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
	bne	.L1033
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1034:
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
	bls	.L1063
.L1043:
	lsls	r3, r3, #1
	movne	r0, #1
	moveq	r0, #0
	lsl	r1, r1, #1
	cmp	ip, r1
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	bne	.L1043
	cmp	r3, #0
	moveq	r0, r3
	beq	.L1046
.L1045:
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
	bne	.L1045
.L1046:
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1063:
	movcs	r0, #1
	movcc	r0, #0
	b	.L1046
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
	bls	.L1088
.L1066:
	lsls	r2, r2, #1
	movne	r1, #1
	moveq	r1, #0
	lsl	r3, r3, #1
	cmp	ip, r3
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	bne	.L1066
	cmp	r2, #0
	moveq	r0, ip
	beq	.L1069
.L1068:
	cmp	r0, r3
	sub	ip, r0, r3
	movcs	r0, ip
	lsrs	r2, r2, #1
	lsr	r3, r3, #1
	bne	.L1068
.L1069:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
.L1088:
	sub	r1, ip, r3
	movcs	r0, r1
	b	.L1069
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
	bcc	.L1090
	b	.L1148
.L1093:
	cmp	r3, #0
	cmpne	r4, ip
	bls	.L1092
	mov	lr, r3
	mov	r1, ip
.L1090:
	lsl	ip, r1, #1
	lsl	r3, lr, #1
	tst	r1, #32768
	uxth	ip, ip
	uxth	r3, r3
	beq	.L1093
	sub	r5, r4, r1
	cmp	r4, r1
	uxth	r0, r5
	movcc	r0, r4
	cmp	r4, r1
	movcs	r7, lr
	movcc	r7, #0
	ubfx	r6, lr, #1, #16
	cmp	r6, #0
	lsr	r5, r1, #1
	uxth	r7, r7
	beq	.L1149
.L1097:
	cmp	r5, r0
	movhi	r3, #0
	movls	r3, #1
	cmp	r3, #0
	moveq	r6, #0
	sub	r4, r0, r5
	uxth	r5, r4
	ubfx	r4, lr, #2, #16
	movne	r0, r5
	cmp	r4, #0
	orr	r3, r7, r6
	lsr	ip, r1, #2
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	moveq	ip, r0
	orr	r3, r3, r4
	ubfx	r4, lr, #3, #16
	cmp	r4, #0
	uxth	r0, ip
	lsr	ip, r1, #3
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #4, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #4
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #5, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #5
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #6, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #6
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #7, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #7
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #8, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #8
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #9, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #9
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #10, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #10
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #11, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #11
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #12, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #12
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #13, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #13
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	uxth	ip, ip
	orr	r3, r3, r4
	ubfx	r4, lr, #14, #16
	movne	r0, ip
	cmp	r4, #0
	lsr	ip, r1, #14
	beq	.L1095
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	r4, #0
	sub	ip, r0, ip
	ubfx	lr, lr, #15, #16
	uxth	ip, ip
	movne	r0, ip
	cmp	lr, #0
	lsr	r1, r1, #15
	orr	r3, r3, r4
	beq	.L1095
	cmp	r0, r1
	sub	ip, r0, r1
	movcc	lr, #0
	movcs	lr, #1
	uxth	ip, ip
	cmp	r0, r1
	movcs	r0, ip
	orr	r3, lr, r3
.L1095:
	cmp	r2, #0
	moveq	r0, r3
	pop	{r4, r5, r6, r7, pc}
.L1092:
	cmp	r3, #0
	moveq	r0, r4
	beq	.L1095
	cmp	r4, ip
	ubfx	r6, lr, #0, #15
	sub	lr, r4, ip
	uxth	r0, lr
	movcc	r0, r4
	cmp	r4, ip
	ubfx	r5, r1, #0, #15
	movcs	r7, r3
	movcc	r7, #0
	mov	lr, r3
	mov	r1, ip
	b	.L1097
.L1148:
	sub	r3, r1, r4
	sub	r0, r0, r1
	clz	r1, r3
	uxth	r0, r0
	lsr	r3, r1, #5
	movne	r0, r4
	b	.L1095
.L1149:
	mov	r3, r7
	b	.L1095
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
	bhi	.L1151
	b	.L1171
.L1154:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1172
.L1151:
	cmp	r1, #0
	bge	.L1154
.L1155:
	mov	ip, #0
	push	{r4, lr}
.L1157:
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
	bne	.L1157
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L1172:
	cmp	r3, #0
	bne	.L1155
	mov	ip, r3
.L1169:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1171:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1169
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
	beq	.L1174
	mov	r3, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r0, r3
	bx	lr
.L1174:
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
	beq	.L1179
	sub	r2, r2, #32
	asr	r3, r1, #31
	asr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1179:
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
	blt	.L1190
	bgt	.L1191
	cmp	r0, r2
	bcc	.L1190
	bhi	.L1191
	mov	r0, #1
	bx	lr
.L1190:
	mov	r0, #0
	bx	lr
.L1191:
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
	blt	.L1196
	bgt	.L1195
	cmp	r0, r2
	bcc	.L1196
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1196:
	mvn	r0, #0
	bx	lr
.L1195:
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
	lsr	r0, r3, #1
	rsb	r3, r0, #2
	sbfx	r2, r1, #0, #1
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
	beq	.L1199
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1199:
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
	movw	r3, #27030
	eor	r1, r1, r0
	eor	r1, r1, r1, lsr #16
	eor	r0, r1, r1, lsr #8
	eor	r2, r0, r0, lsr #4
	and	ip, r2, #15
	asr	r3, r3, ip
	and	r0, r3, #1
	bx	lr
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
	movw	r2, #27030
	eor	r3, r0, r0, lsr #16
	eor	r0, r3, r3, lsr #8
	eor	r1, r0, r0, lsr #4
	and	ip, r1, #15
	asr	r2, r2, ip
	and	r0, r2, #1
	bx	lr
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.syntax unified
	.arm
	.type	__popcountdi2, %function
__popcountdi2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #21845
	str	lr, [sp, #-4]!
	movw	lr, #13107
	movw	ip, #3855
	lsr	r3, r0, #1
	movt	r2, 21845
	orr	r3, r3, r1, lsl #31
	and	r3, r3, r2
	subs	r0, r0, r3
	and	r2, r2, r1, lsr #1
	sbc	r1, r1, r2
	lsr	r3, r0, #2
	movt	lr, 13107
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
	movt	ip, 3855
	adc	r0, r3, r3, lsr #4
	and	r2, r2, ip
	and	r0, r0, ip
	add	ip, r0, r2
	add	r3, ip, ip, lsr #16
	add	r1, r3, r3, lsr #8
	and	r0, r1, #127
	ldr	pc, [sp], #4
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
	movw	r3, #21845
	movw	r2, #13107
	movw	r1, #3855
	movt	r3, 21845
	and	ip, r3, r0, lsr #1
	movt	r2, 13107
	sub	r3, r0, ip
	and	r0, r2, r3, lsr #2
	and	r3, r3, r2
	add	r2, r0, r3
	movt	r1, 3855
	add	ip, r2, r2, lsr #4
	and	ip, ip, r1
	add	r1, ip, ip, lsr #16
	add	r3, r1, r1, lsr #8
	and	r0, r3, #63
	bx	lr
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
	beq	.L1213
.L1215:
	vmul.f64	d0, d0, d7
.L1213:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1214
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1215
.L1219:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1215
	b	.L1219
.L1214:
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
	beq	.L1221
.L1223:
	vmul.f32	s0, s0, s15
.L1221:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1222
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1223
.L1227:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1223
	b	.L1227
.L1222:
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
	bcc	.L1232
	bhi	.L1233
	cmp	r0, r2
	bcc	.L1232
	bhi	.L1233
	mov	r0, #1
	bx	lr
.L1232:
	mov	r0, #0
	bx	lr
.L1233:
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
	bcc	.L1238
	bhi	.L1237
	cmp	r0, r2
	bcc	.L1238
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1238:
	mvn	r0, #0
	bx	lr
.L1237:
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
