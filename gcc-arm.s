	.arch armv5t
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
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
	cmp	r0, r1
	bls	.L2
	cmp	r2, #0
	add	r3, r1, r2
	add	r2, r0, r2
	bxeq	lr
	sub	r1, r3, r1
	cmp	r1, #2
	ble	.L37
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
	cmp	r3, #6
	push	{r4, r5, r6, lr}
	addls	ip, r1, #1
	bls	.L5
	orr	lr, r1, r0
	add	ip, r1, #1
	and	r3, lr, #3
	sub	lr, r0, ip
	cmp	lr, #2
	movls	lr, #0
	movhi	lr, #1
	cmp	r3, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L5
	bic	r5, r2, #3
	sub	r4, r5, #4
	lsr	r3, r4, #2
	add	r3, r3, #1
	cmp	r3, #2
	mov	ip, r0
	sub	lr, r1, #4
	lsr	r6, r2, #2
	ble	.L38
	sub	r3, r3, #1
	ldr	r4, [lr, #4]!
.L6:
	subs	r3, r3, #1
	str	r4, [ip], #4
	ldr	r4, [lr, #4]!
	bne	.L6
	str	r4, [ip], #4
.L39:
	cmp	r2, r5
	sub	r2, r2, r5
	add	r5, r1, r5
	popeq	{r4, r5, r6, pc}
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r1, [ip]
	popeq	{r4, r5, r6, pc}
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r3, [ip, #1]
	ldrbne	r3, [r5, #2]	@ zero_extendqisi2
	strbne	r3, [ip, #2]
	pop	{r4, r5, r6, pc}
.L37:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	ip, [r2, #-1]!
	bne	.L37
	bx	lr
.L38:
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	beq	.L39
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	bne	.L38
	b	.L39
.L5:
	add	r1, r1, r2
	sub	r3, r1, ip
	sub	r2, r0, #1
	add	r3, r3, #1
.L9:
	ldrb	r1, [ip, #-1]	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r1, [r2, #1]!
	add	ip, ip, #1
	bne	.L9
	pop	{r4, r5, r6, pc}
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
	beq	.L58
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
.L47:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	mov	lr, r0
	cmp	ip, r2
	strb	ip, [r0], #1
	ldreq	pc, [sp], #4
	subs	r3, r3, #1
	bne	.L47
	mov	r0, #0
	ldr	pc, [sp], #4
.L58:
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
	and	r1, r1, #255
	beq	.L68
	mov	r3, r0
.L63:
	mov	r0, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L63
.L68:
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
	bne	.L72
	b	.L78
.L73:
	subs	r2, r2, #1
	beq	.L78
.L72:
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	ip, r3
	add	r1, r1, #1
	beq	.L73
	sub	r0, ip, r3
	bx	lr
.L78:
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
	beq	.L82
	bl	memcpy
.L82:
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
	and	r1, r1, #255
	add	r2, r2, #2
	b	.L88
.L90:
	mov	r0, r3
	ldrb	ip, [r0]	@ zero_extendqisi2
	sub	r3, r3, #1
	cmp	ip, r1
	bxeq	lr
.L88:
	subs	r2, r2, #1
	bne	.L90
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
	beq	.L94
	and	r1, r1, #255
	bl	memset
.L94:
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
.L98:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	mov	r0, ip
	cmp	r2, #0
	strb	r2, [ip], #1
	bne	.L98
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
	and	r1, r1, #255
	cmp	r3, #0
	bxeq	lr
	cmp	r3, r1
	bxeq	lr
.L109:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
	cmp	r3, r1
	bne	.L109
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
.L112:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r1
	add	r2, r2, #1
	bxeq	lr
	cmp	r3, #0
	bne	.L112
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
	beq	.L117
	b	.L116
.L118:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, r2
	bne	.L116
.L117:
	cmp	r3, #0
	bne	.L118
.L116:
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
	beq	.L123
	mov	r1, r0
.L122:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L122
	sub	r0, r1, r0
	bx	lr
.L123:
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
	beq	.L131
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L138
	push	{r4, lr}
	add	lr, r1, r3
	b	.L129
.L130:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L139
.L129:
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
	bne	.L130
	sub	r0, ip, r3
	pop	{r4, pc}
.L131:
	mov	r0, r3
	bx	lr
.L139:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	sub	r0, ip, r3
	pop	{r4, pc}
.L138:
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
.L142:
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r1, r1, #2
	add	r0, r0, #2
	strb	ip, [r1, #-4]
	strb	r2, [r1, #-3]
	bne	.L142
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
	bls	.L157
	sub	r1, r0, #8192
	sub	r2, r1, #40
	cmp	r2, #1
	bls	.L157
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L157:
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
	bls	.L165
	ldr	r1, .L166
	ldr	r2, .L166+4
	sub	r3, r0, #8192
	sub	ip, r3, #42
	cmp	r0, r2
	cmphi	ip, r1
	movls	ip, #1
	movhi	ip, #0
	bls	.L163
	sub	r2, r2, #47
	sub	r1, r0, #57344
	cmp	r1, r2
	bls	.L163
	ldr	r3, .L166+8
	sub	r2, r0, #65280
	sub	r1, r2, #252
	cmp	r1, r3
	bhi	.L164
	ldr	ip, .L166+12
	bics	r3, ip, r0
	movne	r0, #1
	moveq	r0, #0
	bx	lr
.L163:
	mov	r0, #1
	bx	lr
.L165:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.L164:
	mov	r0, ip
	bx	lr
.L167:
	.align	2
.L166:
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
	bls	.L170
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	bx	lr
.L170:
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
	bvs	.L176
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L179
	vsub.f64	d0, d0, d1
	bx	lr
.L179:
	vldr.64	d0, .L180
	bx	lr
.L176:
	vmov.f64	d0, d1
	bx	lr
.L181:
	.align	3
.L180:
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
	bvs	.L186
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L189
	vsub.f32	s0, s0, s1
	bx	lr
.L189:
	vldr.32	s0, .L190
	bx	lr
.L186:
	vmov.f32	s0, s1
	bx	lr
.L191:
	.align	2
.L190:
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
	bvs	.L195
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L194
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L194:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L195:
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
	bvs	.L201
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L200
	cmp	r0, #0
	vmovne.f32	s0, s1
	bx	lr
.L200:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	bx	lr
.L201:
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
	bvs	.L207
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L206
	cmp	r0, #0
	vmovne.f64	d0, d1
	bx	lr
.L206:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	bx	lr
.L207:
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
	bvs	.L213
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L212
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L212:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L213:
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
	bvs	.L219
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L218
	cmp	r0, #0
	vmoveq.f32	s0, s1
	bx	lr
.L218:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	bx	lr
.L219:
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
	bvs	.L225
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	bxvs	lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r0, r3, #-2147483648
	and	r1, r2, #-2147483648
	cmp	r0, r1
	beq	.L224
	cmp	r0, #0
	vmoveq.f64	d0, d1
	bx	lr
.L224:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	bx	lr
.L225:
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
	ldr	r3, .L233
	beq	.L229
	ldr	r1, .L233+4
.L230:
	and	r2, r0, #63
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	ip, [r3], #1
	bne	.L230
.L229:
	mov	r1, #0
	ldr	r0, .L233
	strb	r1, [r3]
	bx	lr
.L234:
	.align	2
.L233:
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
	ldr	r3, .L236
	sub	r0, r0, #1
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	bx	lr
.L237:
	.align	2
.L236:
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
	ldr	r2, .L240
	ldr	r0, .L240+4
	ldr	ip, [r2, #8]
	ldr	r3, [r2, #12]
	mul	r0, ip, r0
	ldr	r1, .L240+8
	str	lr, [sp, #-4]!
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r1, r3, #1
	adc	r0, r0, lr
	str	r0, [r2, #12]
	str	r1, [r2, #8]
	lsr	r0, r0, #1
	ldr	pc, [sp], #4
.L241:
	.align	2
.L240:
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
	beq	.L248
	ldr	r3, [r1]
	str	r1, [r0, #4]
	str	r3, [r0]
	str	r0, [r1]
	ldr	r1, [r0]
	cmp	r1, #0
	strne	r0, [r1, #4]
	bx	lr
.L248:
	str	r1, [r0, #4]
	str	r1, [r0]
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
	beq	.L259
	mov	r4, r1
	mov	fp, #0
	b	.L261
.L274:
	cmp	r6, fp
	beq	.L259
.L261:
	mov	r1, r4
	mov	r0, r7
	blx	r9
	cmp	r0, #0
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	bne	.L274
.L258:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L259:
	ldr	r8, [sp, #4]
	add	r0, r6, #1
	cmp	r5, #0
	mla	r8, r6, r5, r8
	str	r0, [r10]
	beq	.L258
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
	beq	.L276
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	mov	r5, #0
	b	.L278
.L287:
	cmp	r7, r5
	beq	.L276
.L278:
	mov	r1, r4
	mov	r0, r6
	blx	r8
	cmp	r0, #0
	mov	r10, r4
	add	r5, r5, #1
	add	r4, r4, r9
	bne	.L287
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L276:
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
	bhi	.L290
.L291:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L291
.L290:
	cmp	r3, #43
	beq	.L292
	cmp	r3, #45
	bne	.L314
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	bhi	.L301
	mov	r4, #1
.L295:
	mov	r0, #0
.L298:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L298
	cmp	r4, #0
	subeq	r0, ip, r1
	pop	{r4, pc}
.L314:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L301
.L313:
	mov	r4, #0
	b	.L295
.L292:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L313
.L301:
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
	bhi	.L316
.L317:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L317
.L316:
	cmp	r3, #43
	beq	.L318
	cmp	r3, #45
	bne	.L319
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, ip, #48
	cmp	r3, #9
	movls	r4, #1
	bhi	.L326
.L320:
	mov	r0, #0
.L323:
	ldrb	lr, [r2, #1]!	@ zero_extendqisi2
	add	r1, r0, r0, lsl #2
	rsb	r0, r3, r1, lsl #1
	mov	ip, r3
	sub	r3, lr, #48
	cmp	r3, #9
	lsl	r1, r1, #1
	bls	.L323
	cmp	r4, #0
	subeq	r0, ip, r1
	pop	{r4, pc}
.L319:
	sub	r3, r3, #48
	cmp	r3, #9
	movls	r2, r0
	bhi	.L326
.L336:
	mov	r4, #0
	b	.L320
.L318:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r2, r0, #1
	sub	r3, r1, #48
	cmp	r3, #9
	bls	.L336
.L326:
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
	bhi	.L338
.L339:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	sub	r1, ip, #9
	cmp	ip, #32
	cmpne	r1, #4
	bls	.L339
.L338:
	cmp	ip, #43
	beq	.L340
	cmp	ip, #45
	bne	.L362
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r4, #48
	cmp	ip, #9
	bhi	.L349
	mov	r6, #1
.L343:
	mov	r0, #0
	mov	r4, r0
.L346:
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
	bls	.L346
	cmp	r6, #0
	bne	.L337
	subs	r0, r2, r3
	sbc	r4, r7, r1
.L337:
	mov	r1, r4
	pop	{r4, r5, r6, r7, pc}
.L362:
	sub	ip, ip, #48
	cmp	ip, #9
	movls	lr, r0
	bhi	.L349
.L361:
	mov	r6, #0
	b	.L343
.L340:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	add	lr, r0, #1
	sub	ip, r2, #48
	cmp	ip, #9
	bls	.L361
.L349:
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
	beq	.L364
	mov	r9, r0
	mov	r7, r1
	mov	r8, r3
	b	.L367
.L374:
	beq	.L363
	sub	r4, r4, r5
	cmp	r4, #0
	add	r7, r6, r8
	beq	.L364
.L367:
	lsr	r5, r4, #1
	mla	r6, r8, r5, r7
	mov	r0, r9
	mov	r1, r6
	blx	r10
	cmp	r0, #0
	sub	r4, r4, #1
	bge	.L374
	mov	r4, r5
	cmp	r4, #0
	bne	.L367
.L364:
	mov	r6, #0
.L363:
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
	beq	.L380
.L388:
	asr	fp, r4, #1
	mla	r5, r7, fp, r6
	mov	r2, r10
	mov	r0, r8
	mov	r1, r5
	blx	r9
	cmp	r0, #0
	sub	r4, r4, #1
	beq	.L375
	ble	.L378
	asrs	r4, r4, #1
	add	r6, r5, r7
	bne	.L388
.L380:
	mov	r5, #0
.L375:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L378:
	cmp	fp, #0
	beq	.L380
	mov	r4, fp
	b	.L388
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
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
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
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
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
	beq	.L406
.L403:
	cmp	r1, r3
	bxeq	lr
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	bne	.L403
.L406:
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
	beq	.L413
	b	.L412
.L414:
	ldr	r3, [r0, #4]!
	ldr	r2, [r1, #4]!
	cmp	r3, r2
	bne	.L412
.L413:
	cmp	r3, #0
	bne	.L414
.L412:
	cmp	r3, r2
	bcc	.L416
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L416:
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
.L418:
	ldr	r3, [r1], #4
	cmp	r3, #0
	str	r3, [r2, #4]!
	bne	.L418
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
.L423:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L423
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
	beq	.L434
	push	{r4, lr}
	b	.L430
.L431:
	subs	r2, r2, #1
	beq	.L437
.L430:
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
	bne	.L431
	ldr	r2, [r4]
	cmp	r2, r3
	bcc	.L444
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, pc}
.L444:
	mvn	r0, #0
	pop	{r4, pc}
.L437:
	mov	r0, #0
	pop	{r4, pc}
.L434:
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
	beq	.L452
	mov	r3, r0
.L447:
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, r1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L447
.L452:
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
	bne	.L456
	b	.L463
.L457:
	subs	r2, r2, #1
	beq	.L463
.L456:
	ldr	ip, [r0]
	ldr	r3, [r1]
	add	r0, r0, #4
	cmp	ip, r3
	add	r1, r1, #4
	beq	.L457
	bcc	.L466
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L463:
	mov	r0, #0
	bx	lr
.L466:
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
	beq	.L468
	lsl	r2, r2, #2
	bl	memcpy
.L468:
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
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	push	{r4, r5, lr}
	lsl	ip, r2, #2
	mov	lr, r1
	bcc	.L475
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	r3, r2, #1
	cmp	r3, #8
	addls	ip, r1, #4
	bls	.L479
	orr	r4, r1, r0
	add	ip, r1, #4
	subs	r5, r0, ip
	and	r4, r4, #7
	movne	r5, #1
	cmp	r4, #0
	movne	r5, #0
	cmp	r5, #0
	beq	.L479
	mov	ip, r0
	lsr	r3, r2, #1
.L480:
	vldmia.64	lr!, {d7}	@ int
	subs	r3, r3, #1
	vstmia.64	ip!, {d7}	@ int
	bne	.L480
	tst	r2, #1
	bicne	r2, r2, #1
	ldrne	r3, [r1, r2, lsl #2]
	strne	r3, [r0, r2, lsl #2]
	pop	{r4, r5, pc}
.L475:
	cmp	r2, #0
	popeq	{r4, r5, pc}
	sub	r2, ip, #4
	lsr	r3, r2, #2
	add	r3, r3, #1
	cmp	r3, #2
	add	r1, r1, ip
	add	r2, r0, ip
	ble	.L503
	sub	r3, r3, #1
	ldr	ip, [r1, #-4]!
.L478:
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	ldr	ip, [r1, #-4]!
	bne	.L478
	str	ip, [r2, #-4]!
	pop	{r4, r5, pc}
.L503:
	ldr	ip, [r1, #-4]!
	subs	r3, r3, #1
	str	ip, [r2, #-4]!
	bne	.L503
	pop	{r4, r5, pc}
.L479:
	sub	r2, r0, #4
	add	r3, r3, #1
.L483:
	ldr	r1, [ip, #-4]
	subs	r3, r3, #1
	str	r1, [r2, #4]!
	add	ip, ip, #4
	bne	.L483
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
	cmp	r2, #0
	bxeq	lr
	push	{r4, lr}
	sub	lr, r2, #1
	lsr	r3, r0, #2
	cmp	lr, #5
	and	ip, r3, #1
	bls	.L515
	mov	r4, r0
	cmp	ip, #0
	subne	lr, r2, #2
	sub	r2, r2, ip
	add	r3, r0, ip, lsl #2
	strne	r1, [r4], #4
	lsr	ip, r2, #1
.L513:
	subs	ip, ip, #1
	str	r1, [r3]
	str	r1, [r3, #4]
	add	r3, r3, #8
	bne	.L513
	tst	r2, #1
	popeq	{r4, pc}
	bic	r2, r2, #1
	sub	lr, lr, r2
	add	r2, r4, r2, lsl #2
.L511:
	cmp	lr, #0
	str	r1, [r2]
	popeq	{r4, pc}
	cmp	lr, #1
	str	r1, [r2, #4]
	popeq	{r4, pc}
	cmp	lr, #2
	str	r1, [r2, #8]
	popeq	{r4, pc}
	cmp	lr, #3
	str	r1, [r2, #12]
	popeq	{r4, pc}
	cmp	lr, #4
	str	r1, [r2, #16]
	strne	r1, [r2, #20]
	pop	{r4, pc}
.L515:
	mov	r2, r0
	b	.L511
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
	bcs	.L544
	cmp	r2, #0
	add	r3, r0, r2
	add	r2, r1, r2
	bxeq	lr
	sub	r0, r3, r0
	cmp	r0, #2
	ble	.L579
	sub	r0, r0, #1
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
.L546:
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	bne	.L546
	strb	r1, [r2, #-1]!
	bx	lr
.L544:
	bxeq	lr
	cmp	r2, #0
	bxeq	lr
	sub	r3, r2, #1
	cmp	r3, #6
	push	{r4, r5, lr}
	addls	ip, r0, #1
	bls	.L547
	orr	lr, r1, r0
	add	ip, r0, #1
	and	r3, lr, #3
	sub	lr, r1, ip
	cmp	lr, #2
	movls	lr, #0
	movhi	lr, #1
	cmp	r3, #0
	movne	lr, #0
	cmp	lr, #0
	beq	.L547
	bic	r4, r2, #3
	sub	lr, r4, #4
	lsr	r3, lr, #2
	add	r3, r3, #1
	cmp	r3, #2
	sub	ip, r0, #4
	lsr	r5, r2, #2
	ble	.L580
	sub	r3, r3, #1
	ldr	lr, [ip, #4]!
.L548:
	subs	r3, r3, #1
	str	lr, [r1], #4
	ldr	lr, [ip, #4]!
	bne	.L548
	str	lr, [r1], #4
.L581:
	cmp	r2, r4
	sub	r2, r2, r4
	add	r4, r0, r4
	popeq	{r4, r5, pc}
	ldrb	r0, [r0, r5, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r0, [r1]
	popeq	{r4, r5, pc}
	ldrb	ip, [r4, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	ip, [r1, #1]
	ldrbne	ip, [r4, #2]	@ zero_extendqisi2
	strbne	ip, [r1, #2]
	pop	{r4, r5, pc}
.L579:
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
	subs	r0, r0, #1
	strb	r1, [r2, #-1]!
	bne	.L579
	bx	lr
.L580:
	ldr	lr, [ip, #4]!
	subs	r3, r3, #1
	str	lr, [r1], #4
	beq	.L581
	ldr	lr, [ip, #4]!
	subs	r3, r3, #1
	str	lr, [r1], #4
	bne	.L580
	b	.L581
.L547:
	add	r3, r0, r2
	sub	r2, r3, ip
	sub	r1, r1, #1
	add	r3, r2, #1
.L551:
	ldrb	r0, [ip, #-1]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	ip, ip, #1
	strb	r0, [r1, #1]!
	bne	.L551
	pop	{r4, r5, pc}
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
	lsl	r1, r0, #16
	lsr	r0, r1, #16
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
	lsl	r1, r0, #16
	lsr	r0, r1, #16
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
	and	r0, r0, #255
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
	and	r0, r0, #255
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
	lsl	r3, r0, #8
	orr	r0, r3, r0, lsr #8
	lsl	r1, r0, #16
	lsr	r0, r1, #16
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
	eor	r3, r0, r0, ror #16
	lsr	r1, r3, #8
	bic	r2, r1, #65280
	eor	r0, r2, r0, ror #8
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
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	eor	ip, r1, r1, ror #16
	lsr	r0, r3, #8
	lsr	ip, ip, #8
	bic	r3, r0, #65280
	bic	r0, ip, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
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
	b	.L604
.L602:
	subs	r1, r1, #1
	beq	.L606
.L604:
	lsr	r3, r0, r2
	ands	ip, r3, #1
	add	r2, r2, #1
	beq	.L602
	mov	r0, r2
	bx	lr
.L606:
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
	beq	.L610
	ands	r0, r3, #1
	bxne	lr
	mov	r0, #1
.L609:
	asr	r3, r3, #1
	tst	r3, #1
	add	r0, r0, #1
	beq	.L609
	bx	lr
.L610:
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
	vldr.32	s15, .L617
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L616
	vldr.32	s1, .L617+4
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L616:
	mov	r0, #1
	bx	lr
.L618:
	.align	2
.L617:
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
	vldr.64	d7, .L622
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L621
	vldr.64	d1, .L622+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L621:
	mov	r0, #1
	bx	lr
.L623:
	.align	3
.L622:
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
	vldr.64	d7, .L627
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L626
	vldr.64	d1, .L627+8
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L626:
	mov	r0, #1
	bx	lr
.L628:
	.align	3
.L627:
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
	beq	.L633
.L634:
	vmul.f32	s0, s0, s1
.L633:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L634
.L643:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f32	s1, s1, s1
	add	r3, r0, r0, lsr #31
	bne	.L634
	b	.L643
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
	beq	.L647
.L648:
	vmul.f64	d0, d0, d1
.L647:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L648
.L657:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L648
	b	.L657
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
	beq	.L661
.L662:
	vmul.f64	d0, d0, d1
.L661:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	bxeq	lr
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L662
.L671:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d1, d1, d1
	add	r3, r0, r0, lsr #31
	bne	.L662
	b	.L671
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r4, r2, #0
	popeq	{r4, r5, r6, r7, r8, pc}
	sub	r3, r4, #1
	cmp	r3, #3
	bls	.L674
	orr	r2, r0, r1
	tst	r2, #3
	bne	.L674
	mov	lr, r0
	bic	r5, r4, #3
	sub	ip, r5, #4
	lsr	r7, ip, #2
	add	ip, r7, #1
	sub	r2, r1, #4
	lsr	r6, r4, #2
	add	r7, r0, r5
.L675:
	ldr	r8, [lr]
	ldr	r3, [r2, #4]!
	subs	ip, ip, #1
	eor	r3, r3, r8
	str	r3, [lr], #4
	bne	.L675
	cmp	r5, r4
	sub	r2, r4, r5
	add	r5, r1, r5
	popeq	{r4, r5, r6, r7, r8, pc}
	ldrb	r3, [r0, r6, lsl #2]	@ zero_extendqisi2
	ldrb	r1, [r1, r6, lsl #2]	@ zero_extendqisi2
	cmp	r2, #1
	eor	r3, r3, r1
	strb	r3, [r0, r6, lsl #2]
	popeq	{r4, r5, r6, r7, r8, pc}
	ldrb	ip, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	cmp	r2, #2
	eor	r1, r1, ip
	ldrbne	r2, [r7, #2]	@ zero_extendqisi2
	strb	r1, [r7, #1]
	ldrbne	r1, [r5, #2]	@ zero_extendqisi2
	eorne	r1, r1, r2
	strbne	r1, [r7, #2]
	pop	{r4, r5, r6, r7, r8, pc}
.L674:
	mov	ip, r0
	mov	r2, r4
.L677:
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	subs	r2, r2, #1
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
	bne	.L677
	pop	{r4, r5, r6, r7, r8, pc}
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
	beq	.L692
.L693:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L693
.L692:
	cmp	r2, #0
	beq	.L694
	sub	r1, r1, #1
.L695:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	strb	ip, [r3], #1
	bxeq	lr
	subs	r2, r2, #1
	bne	.L695
.L694:
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
	beq	.L709
	mov	r0, #0
	sub	ip, r3, #1
.L707:
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bxeq	lr
	subs	r1, r1, #1
	add	r0, r0, #1
	bne	.L707
	bx	lr
.L709:
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
	beq	.L718
	sub	r1, r1, #1
.L714:
	mov	r2, r1
	b	.L717
.L716:
	cmp	r3, ip
	bxeq	lr
.L717:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L716
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L714
.L718:
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
.L722:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, r1
	moveq	r0, r3
	cmp	r2, #0
	add	r3, r3, #1
	bne	.L722
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
	beq	.L736
	mov	r6, r1
	mov	r3, r1
.L727:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L727
	subs	r0, r3, r6
	beq	.L736
	sub	r5, r6, #1
	add	r5, r5, r0
	b	.L734
.L741:
	cmp	r3, #0
	beq	.L740
.L734:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r4
	add	r2, r2, #1
	bne	.L741
	mov	lr, r6
	mov	ip, r4
	mov	r1, r0
	b	.L729
.L732:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L742
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
.L729:
	subs	r2, ip, #0
	movne	r2, #1
	cmp	r3, ip
	movne	r2, #0
	cmp	r5, lr
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L732
	cmp	r3, ip
	popeq	{r4, r5, r6, pc}
.L743:
	add	r2, r0, #1
	b	.L734
.L740:
	mov	r0, r3
	pop	{r4, r5, r6, pc}
.L742:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	cmp	r3, ip
	bne	.L743
	pop	{r4, r5, r6, pc}
.L736:
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
	bmi	.L754
	bxle	lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	bxpl	lr
	vneg.f64	d0, d0
	bx	lr
.L754:
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
	bcc	.L766
	sub	r1, r1, r7
	adds	r6, r0, r1
	bcs	.L766
	ldrb	r8, [r2]	@ zero_extendqisi2
	b	.L761
.L757:
	cmp	r6, r0
	bcc	.L766
.L761:
	mov	ip, r0
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	cmp	r3, r8
	movne	r0, ip
	bne	.L757
	cmp	r7, #1
	popeq	{r4, r5, r6, r7, r8, pc}
.L760:
	mov	r3, r2
	sub	lr, ip, #1
	sub	r1, r7, #1
	b	.L758
.L759:
	subs	r1, r1, #1
	popeq	{r4, r5, r6, r7, r8, pc}
.L758:
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	cmp	r5, r4
	beq	.L759
	cmp	r6, ip
	bcc	.L766
	mov	r0, ip
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	cmp	r8, r1
	bne	.L757
	mov	r4, ip
	mov	ip, r0
	mov	r0, r4
	b	.L760
.L766:
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
	beq	.L779
	bl	memmove
.L779:
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
	bmi	.L806
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movge	r2, #0
	blt	.L807
.L787:
	mov	r1, #0
	vmov.f64	d5, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L793:
	vmul.f64	d0, d0, d5
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r1, r1, #1
	bge	.L793
.L794:
	cmp	r2, #0
	vnegne.f64	d0, d0
	str	r1, [r0]
	bx	lr
.L807:
	vmov.f64	d1, #5.0e-1
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	bpl	.L790
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L799
.L790:
	mov	r3, #0
	str	r3, [r0]
	bx	lr
.L806:
	vmov.f64	d2, #-1.0e+0
	vcmpe.f64	d0, d2
	vneg.f64	d6, d0
	vmrs	APSR_nzcv, FPSCR
	vmovls.f64	d0, d6
	movls	r2, #1
	bls	.L787
	vmov.f64	d3, #-5.0e-1
	vcmpe.f64	d0, d3
	vmrs	APSR_nzcv, FPSCR
	ble	.L790
	mov	r2, #1
.L788:
	vmov.f64	d0, d6
	mov	r1, #0
	vmov.f64	d4, #5.0e-1
.L795:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d4
	vmrs	APSR_nzcv, FPSCR
	sub	r1, r1, #1
	bmi	.L795
	b	.L794
.L799:
	vmov.f64	d6, d0
	mov	r2, #0
	b	.L788
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
	beq	.L811
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
.L810:
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
	bne	.L810
	pop	{r4, r5, pc}
.L811:
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
	bcc	.L816
	b	.L836
.L819:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L837
.L816:
	cmp	r1, #0
	bge	.L819
.L820:
	mov	ip, #0
	push	{r4, lr}
.L822:
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
	bne	.L822
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L837:
	cmp	r3, #0
	bne	.L820
	mov	ip, r3
.L834:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L836:
	sub	r1, r0, r1
	movls	ip, #1
	movhi	ip, #0
	movls	r0, r1
	b	.L834
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
	beq	.L845
	cmp	r1, #0
	clzeq	r0, r3
	clzne	r0, r1
	addeq	r0, r0, #32
	sub	r0, r0, #1
	bx	lr
.L845:
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
	beq	.L849
	mov	r0, #0
.L848:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L848
	bx	lr
.L849:
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
	bcc	.L856
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L894
.L856:
	cmp	r3, #0
	beq	.L895
	lsl	lr, r3, #3
	sub	r3, lr, #8
	lsr	ip, r3, #3
	add	r3, ip, #1
	mov	lr, r1
	mov	ip, r0
.L859:
	vldmia.64	lr!, {d7}	@ int
	subs	r3, r3, #1
	vstmia.64	ip!, {d7}	@ int
	bne	.L859
	cmp	r2, r4
	popls	{r4, r5, r6, r7, pc}
	sub	r7, r2, r4
	sub	ip, r7, #1
	cmp	ip, #6
	bls	.L861
	add	r5, r4, #1
	add	lr, r0, r4
	add	r3, r1, r5
	add	ip, r1, r4
	sub	r3, lr, r3
	orr	r5, ip, lr
	cmp	r3, #2
	and	r5, r5, #3
	movls	r3, #0
	movhi	r3, #1
	cmp	r5, #0
	movne	r3, #0
	cmp	r3, #0
	beq	.L861
	bic	r6, r7, #3
	sub	r3, r6, #4
	lsr	r5, r3, #2
	add	r3, r5, #1
	cmp	r3, #2
	sub	ip, ip, #4
	ble	.L887
	sub	r3, r3, #1
	ldr	r5, [ip, #4]!
.L862:
	subs	r3, r3, #1
	str	r5, [lr], #4
	ldr	r5, [ip, #4]!
	bne	.L862
	str	r5, [lr], #4
.L888:
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
.L887:
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	beq	.L888
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	bne	.L887
	b	.L888
.L894:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, ip, r1
	cmp	r1, #2
	mov	r3, ip
	add	r0, r0, r2
	ble	.L890
	sub	r1, r1, #1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.L866:
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	bne	.L866
	strb	r2, [r0, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L890:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r2, [r0, #-1]!
	bne	.L890
	pop	{r4, r5, r6, r7, pc}
.L895:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
.L861:
	sub	r4, r4, #1
	add	ip, r1, r4
	sub	r1, r1, #1
	add	r3, r1, r2
	sub	r3, r3, ip
	cmp	r3, #2
	add	r4, r0, r4
	ble	.L889
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L864:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L864
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, pc}
.L889:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L889
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
	bcc	.L900
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L934
.L900:
	cmp	r5, #0
	beq	.L899
	sub	r3, r5, #1
	cmp	r3, #8
	bls	.L903
	orr	ip, r1, r0
	add	lr, r1, #2
	subs	r3, r0, lr
	and	r4, ip, #3
	movne	r3, #1
	cmp	r4, #0
	movne	r3, #0
	cmp	r3, #0
	beq	.L903
	bic	r6, r2, #3
	sub	r4, r6, #4
	lsr	r3, r4, #2
	add	r3, r3, #1
	cmp	r3, #2
	mov	ip, r0
	lsr	r7, r2, #2
	sub	lr, r1, #4
	ble	.L928
	sub	r3, r3, #1
	ldr	r4, [lr, #4]!
.L904:
	subs	r3, r3, #1
	str	r4, [ip], #4
	ldr	r4, [lr, #4]!
	bne	.L904
	str	r4, [ip], #4
.L929:
	cmp	r5, r7, lsl #1
	ldrshne	r3, [r1, r6]
	strhne	r3, [r0, r6]	@ movhi
.L899:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, r5, r6, r7, pc}
.L928:
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	beq	.L929
	ldr	r4, [lr, #4]!
	subs	r3, r3, #1
	str	r4, [ip], #4
	bne	.L928
	b	.L929
.L934:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, r3, r1
	cmp	r1, #2
	add	r2, r0, r2
	ble	.L931
	sub	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L909:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L909
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L931:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L931
	pop	{r4, r5, r6, r7, pc}
.L903:
	lsl	ip, r5, #1
	sub	r4, ip, #2
	lsr	r3, r4, #1
	add	r3, r3, #1
	cmp	r3, #2
	sub	lr, r1, #2
	sub	ip, r0, #2
	ble	.L930
	sub	r3, r3, #1
	ldrsh	r4, [lr, #2]!
.L906:
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	ldrsh	r4, [lr, #2]!
	bne	.L906
	strh	r4, [ip, #2]!	@ movhi
	b	.L899
.L930:
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	beq	.L899
	ldrsh	r4, [lr, #2]!
	subs	r3, r3, #1
	strh	r4, [ip, #2]!	@ movhi
	bne	.L930
	b	.L899
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
	push	{r4, r5, r6, r7, lr}
	lsr	r5, r2, #2
	bic	r4, r2, #3
	bcc	.L940
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L983
.L940:
	cmp	r5, #0
	beq	.L984
	sub	r3, r5, #1
	cmp	r3, #8
	bls	.L942
	orr	ip, r0, r1
	add	r3, r1, #4
	and	lr, ip, #7
	subs	ip, r0, r3
	movne	ip, #1
	cmp	lr, #0
	movne	ip, #0
	cmp	ip, #0
	beq	.L942
	mov	lr, r1
	mov	ip, r0
	bic	r6, r2, #7
	sub	r3, r6, #8
	lsr	r6, r3, #3
	add	r3, r6, #1
	lsr	r6, r2, #3
.L943:
	vldmia.64	lr!, {d7}	@ int
	subs	r3, r3, #1
	vstmia.64	ip!, {d7}	@ int
	bne	.L943
	cmp	r5, r6, lsl #1
	ldrne	ip, [r1, r6, lsl #3]
	strne	ip, [r0, r6, lsl #3]
.L946:
	cmp	r2, r4
	popls	{r4, r5, r6, r7, pc}
.L985:
	sub	r7, r2, r4
	sub	ip, r7, #1
	cmp	ip, #6
	bls	.L938
	add	r5, r4, #1
	add	lr, r0, r4
	add	r3, r1, r5
	add	ip, r1, r4
	sub	r3, lr, r3
	orr	r5, ip, lr
	cmp	r3, #2
	and	r5, r5, #3
	movls	r3, #0
	movhi	r3, #1
	cmp	r5, #0
	movne	r3, #0
	cmp	r3, #0
	beq	.L938
	bic	r6, r7, #3
	sub	r3, r6, #4
	lsr	r5, r3, #2
	add	r3, r5, #1
	cmp	r3, #2
	sub	ip, ip, #4
	ble	.L976
	sub	r3, r3, #1
	ldr	r5, [ip, #4]!
.L947:
	subs	r3, r3, #1
	str	r5, [lr], #4
	ldr	r5, [ip, #4]!
	bne	.L947
	str	r5, [lr], #4
.L977:
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
.L976:
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	beq	.L977
	ldr	r5, [ip, #4]!
	subs	r3, r3, #1
	str	r5, [lr], #4
	bne	.L976
	b	.L977
.L983:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
	sub	r1, r3, r1
	cmp	r1, #2
	add	r2, r0, r2
	ble	.L979
	sub	r1, r1, #1
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
.L951:
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	bne	.L951
	strb	r0, [r2, #-1]!
	pop	{r4, r5, r6, r7, pc}
.L979:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	subs	r1, r1, #1
	strb	r0, [r2, #-1]!
	bne	.L979
	pop	{r4, r5, r6, r7, pc}
.L942:
	lsl	r5, r5, #2
	sub	lr, r5, #4
	lsr	r3, lr, #2
	add	r3, r3, #1
	cmp	r3, #2
	sub	lr, r1, #4
	sub	ip, r0, #4
	ble	.L975
	sub	r3, r3, #1
	ldr	r5, [lr, #4]!
.L945:
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	ldr	r5, [lr, #4]!
	bne	.L945
	str	r5, [ip, #4]!
	cmp	r2, r4
	bhi	.L985
	pop	{r4, r5, r6, r7, pc}
.L975:
	ldr	r5, [lr, #4]!
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	beq	.L946
	ldr	r5, [lr, #4]!
	subs	r3, r3, #1
	str	r5, [ip, #4]!
	bne	.L975
	b	.L946
.L984:
	cmp	r2, #0
	popeq	{r4, r5, r6, r7, pc}
.L938:
	sub	r4, r4, #1
	add	ip, r1, r4
	sub	r1, r1, #1
	add	r3, r1, r2
	sub	r3, r3, ip
	cmp	r3, #2
	add	r4, r0, r4
	ble	.L978
	sub	r3, r3, #1
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
.L949:
	subs	r3, r3, #1
	strb	r2, [r4, #1]!
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	bne	.L949
	strb	r2, [r4, #1]!
	pop	{r4, r5, r6, r7, pc}
.L978:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r0, [r4, #1]!
	bne	.L978
	pop	{r4, r5, r6, r7, pc}
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
	bne	.L999
	asrs	r0, r0, #14
	bxne	lr
	lsrs	r2, r3, #13
	bne	.L1000
	lsrs	r2, r3, #12
	bne	.L1001
	lsrs	r2, r3, #11
	bne	.L1002
	lsrs	r2, r3, #10
	bne	.L1003
	lsrs	r2, r3, #9
	bne	.L1004
	lsrs	r2, r3, #8
	bne	.L1005
	lsrs	r2, r3, #7
	bne	.L1006
	lsrs	r2, r3, #6
	bne	.L1007
	lsrs	r2, r3, #5
	bne	.L1008
	lsrs	r2, r3, #4
	bne	.L1009
	lsrs	r2, r3, #3
	bne	.L1010
	lsrs	r2, r3, #2
	bne	.L1011
	lsrs	r2, r3, #1
	bne	.L1012
	cmp	r3, #0
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L999:
	mov	r0, #0
	bx	lr
.L1010:
	mov	r0, #12
	bx	lr
.L1000:
	mov	r0, #2
	bx	lr
.L1001:
	mov	r0, #3
	bx	lr
.L1002:
	mov	r0, #4
	bx	lr
.L1003:
	mov	r0, #5
	bx	lr
.L1004:
	mov	r0, #6
	bx	lr
.L1005:
	mov	r0, #7
	bx	lr
.L1006:
	mov	r0, #8
	bx	lr
.L1007:
	mov	r0, #9
	bx	lr
.L1008:
	mov	r0, #10
	bx	lr
.L1009:
	mov	r0, #11
	bx	lr
.L1011:
	mov	r0, #13
	bx	lr
.L1012:
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
	bne	.L1017
	tst	r0, #2
	bne	.L1018
	tst	r0, #4
	bne	.L1019
	tst	r0, #8
	bne	.L1020
	tst	r0, #16
	bne	.L1021
	tst	r0, #32
	bne	.L1022
	tst	r0, #64
	bne	.L1023
	tst	r0, #128
	bne	.L1024
	tst	r0, #256
	bne	.L1025
	tst	r0, #512
	bne	.L1026
	tst	r0, #1024
	bne	.L1027
	tst	r0, #2048
	bne	.L1028
	tst	r0, #4096
	bne	.L1029
	tst	r0, #8192
	bne	.L1030
	tst	r0, #16384
	bne	.L1031
	lsrs	r0, r0, #15
	moveq	r0, #16
	movne	r0, #15
	bx	lr
.L1017:
	mov	r0, #0
	bx	lr
.L1018:
	mov	r0, #1
	bx	lr
.L1029:
	mov	r0, #12
	bx	lr
.L1019:
	mov	r0, #2
	bx	lr
.L1020:
	mov	r0, #3
	bx	lr
.L1021:
	mov	r0, #4
	bx	lr
.L1022:
	mov	r0, #5
	bx	lr
.L1023:
	mov	r0, #6
	bx	lr
.L1024:
	mov	r0, #7
	bx	lr
.L1025:
	mov	r0, #8
	bx	lr
.L1026:
	mov	r0, #9
	bx	lr
.L1027:
	mov	r0, #10
	bx	lr
.L1028:
	mov	r0, #11
	bx	lr
.L1030:
	mov	r0, #13
	bx	lr
.L1031:
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
	vldr.32	s15, .L1039
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	bx	lr
.L1040:
	.align	2
.L1039:
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
	beq	.L1046
	mov	r0, #0
.L1045:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L1045
	bx	lr
.L1046:
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
	beq	.L1052
	cmp	r1, #0
	beq	.L1053
	mov	r0, #0
.L1051:
	ands	r3, r1, #1
	mvnne	r3, #0
	lsrs	r1, r1, #1
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L1051
	bx	lr
.L1052:
	mov	r0, r2
	bx	lr
.L1053:
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
	bhi	.L1057
	b	.L1077
.L1060:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1078
.L1057:
	cmp	r1, #0
	bge	.L1060
.L1061:
	mov	ip, #0
	push	{r4, lr}
.L1063:
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
	bne	.L1063
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L1078:
	cmp	r3, #0
	bne	.L1061
	mov	ip, r3
.L1075:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1077:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1075
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
	bmi	.L1081
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1081:
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
	bmi	.L1084
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L1084:
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
	mov	r3, r0
	mov	r2, r1
	smull	r0, r1, r3, r2
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
	mov	r3, r0
	mov	r2, r1
	umull	r0, r1, r3, r2
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
	blt	.L1089
	beq	.L1092
	mov	r4, #0
.L1089:
	mov	r0, #0
	mov	r3, r0
.L1091:
	ands	ip, r1, #1
	mvnne	ip, #0
	asrs	r1, r1, #1
	movne	r2, #1
	moveq	r2, #0
	add	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #32
	moveq	r2, #0
	andne	r2, r2, #1
	and	ip, ip, lr
	cmp	r2, #0
	add	r0, r0, ip
	lsl	lr, lr, #1
	bne	.L1091
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1092:
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
	bls	.L1121
.L1101:
	lsls	r3, r3, #1
	movne	r0, #1
	moveq	r0, #0
	lsl	r1, r1, #1
	cmp	ip, r1
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	bne	.L1101
	cmp	r3, #0
	moveq	r0, r3
	beq	.L1104
.L1103:
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
	bne	.L1103
.L1104:
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L1121:
	movcs	r0, #1
	movcc	r0, #0
	b	.L1104
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
	bls	.L1146
.L1124:
	lsls	r2, r2, #1
	movne	r1, #1
	moveq	r1, #0
	lsl	r3, r3, #1
	cmp	ip, r3
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	bne	.L1124
	cmp	r2, #0
	moveq	r0, ip
	beq	.L1127
.L1126:
	cmp	r0, r3
	sub	ip, r0, r3
	movcs	r0, ip
	lsrs	r2, r2, #1
	lsr	r3, r3, #1
	bne	.L1126
.L1127:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
.L1146:
	sub	r1, ip, r3
	movcs	r0, r1
	b	.L1127
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
	push	{r4, r5, r6, lr}
	mov	r5, r0
	movcc	lr, #1
	bcc	.L1148
	b	.L1206
.L1151:
	cmp	r3, #0
	cmpne	r4, r5
	lsr	ip, ip, #16
	lsr	r3, r3, #16
	bcs	.L1150
	mov	lr, r3
	mov	r1, ip
.L1148:
	lsl	ip, r1, #17
	tst	r1, #32768
	lsl	r3, lr, #17
	lsr	r4, ip, #16
	beq	.L1151
	sub	r4, r5, r1
	cmp	r5, r1
	lsl	r0, r4, #16
	lsr	r0, r0, #16
	movcc	r0, r5
	cmp	r5, r1
	movcs	r6, lr
	movcc	r6, #0
	lsr	r5, lr, #1
	lsl	r3, r5, #16
	lsr	r5, r3, #16
	lsl	r6, r6, #16
	cmp	r5, #0
	lsr	r4, r1, #1
	lsr	r6, r6, #16
	beq	.L1207
.L1155:
	cmp	r4, r0
	movhi	ip, #0
	movls	ip, #1
	cmp	ip, #0
	moveq	r5, #0
	sub	r3, r0, r4
	lsl	r4, r3, #16
	lsr	ip, lr, #2
	lsr	r3, r4, #16
	lsl	r4, ip, #16
	lsr	r4, r4, #16
	movne	r0, r3
	cmp	r4, #0
	orr	r3, r6, r5
	lsr	ip, r1, #2
	beq	.L1153
	cmp	r0, ip
	movcc	r5, #0
	movcs	r5, #1
	sub	ip, r0, ip
	cmp	r5, #0
	moveq	r4, #0
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	moveq	ip, r0
	orr	r3, r3, r4
	lsr	r4, lr, #3
	lsl	r0, ip, #16
	lsl	ip, r4, #16
	lsr	ip, ip, #16
	cmp	ip, #0
	lsr	r0, r0, #16
	lsr	r4, r1, #3
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #4
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #4
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #5
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #5
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #6
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #6
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #7
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #7
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #8
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #8
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #9
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #9
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #10
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #10
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #11
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #11
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #12
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #12
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #13
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #13
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	orr	r3, r3, ip
	lsr	ip, lr, #14
	movne	r0, r4
	lsl	r4, ip, #16
	lsr	ip, r4, #16
	cmp	ip, #0
	lsr	r4, r1, #14
	beq	.L1153
	cmp	r0, r4
	movcc	r5, #0
	movcs	r5, #1
	cmp	r5, #0
	moveq	ip, #0
	sub	r4, r0, r4
	lsr	lr, lr, #15
	lsl	lr, lr, #16
	lsl	r4, r4, #16
	lsr	lr, lr, #16
	lsr	r4, r4, #16
	movne	r0, r4
	cmp	lr, #0
	lsr	r1, r1, #15
	orr	r3, r3, ip
	beq	.L1153
	sub	ip, r0, r1
	cmp	r0, r1
	lsl	ip, ip, #16
	movcc	lr, #0
	movcs	lr, #1
	lsr	ip, ip, #16
	cmp	r0, r1
	movcs	r0, ip
	orr	r3, lr, r3
.L1153:
	cmp	r2, #0
	moveq	r0, r3
	pop	{r4, r5, r6, pc}
.L1150:
	cmp	r3, #0
	moveq	r0, r5
	beq	.L1153
	sub	r4, r5, ip
	cmp	r5, ip
	lsl	r0, r4, #16
	ldr	r4, .L1208
	lsr	r0, r0, #16
	movcc	r0, r5
	cmp	r5, ip
	movcs	r6, r3
	and	r5, lr, r4
	movcc	r6, #0
	and	r4, r4, r1
	mov	lr, r3
	mov	r1, ip
	b	.L1155
.L1206:
	sub	r0, r0, r1
	sub	r1, r1, r5
	clz	ip, r1
	lsl	r3, r0, #16
	lsr	r0, r3, #16
	movne	r0, r5
	lsr	r3, ip, #5
	b	.L1153
.L1207:
	mov	r3, r6
	b	.L1153
.L1209:
	.align	2
.L1208:
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
	bhi	.L1211
	b	.L1231
.L1214:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L1232
.L1211:
	cmp	r1, #0
	bge	.L1214
.L1215:
	mov	ip, #0
	push	{r4, lr}
.L1217:
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
	bne	.L1217
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L1232:
	cmp	r3, #0
	bne	.L1215
	mov	ip, r3
.L1229:
	cmp	r2, #0
	moveq	r0, ip
	bx	lr
.L1231:
	sub	r1, r0, r1
	movcs	ip, #1
	movcc	ip, #0
	movcs	r0, r1
	b	.L1229
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
	beq	.L1234
	mov	r3, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r0, r3
	bx	lr
.L1234:
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
	beq	.L1239
	sub	r2, r2, #32
	asr	r3, r1, #31
	asr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1239:
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
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	eor	ip, r1, r1, ror #16
	lsr	r0, r3, #8
	lsr	ip, ip, #8
	bic	r3, r0, #65280
	bic	r0, ip, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
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
	eor	r3, r0, r0, ror #16
	lsr	r1, r3, #8
	bic	r2, r1, #65280
	eor	r0, r2, r0, ror #8
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
	blt	.L1250
	bgt	.L1251
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
	blt	.L1256
	bgt	.L1255
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
	lsr	r1, r3, #16
	clz	r2, r1
	lsr	ip, r2, #5
	lsl	r1, ip, #4
	lsr	r3, r0, r1
	and	r2, r3, #255
	clz	ip, r2
	lsr	r2, ip, #5
	lsl	ip, r2, #3
	lsr	r3, r3, ip
	tst	r3, #15
	add	r2, ip, r1
	moveq	r1, #1
	movne	r1, #0
	lsl	r1, r1, #2
	lsr	ip, r3, r1
	tst	ip, #3
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	lsr	r3, ip, r0
	and	ip, r3, #3
	add	r2, r1, r2
	add	r1, r0, r2
	mvn	r2, ip
	lsr	r0, ip, #1
	ands	ip, r2, #1
	mvnne	ip, #0
	rsb	r3, r0, #2
	and	r3, r3, ip
	add	r0, r3, r1
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
	beq	.L1259
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r1, r3
	bx	lr
.L1259:
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
	push	{r4, lr}
	ldr	lr, .L1265
	lsr	r4, r1, #16
	and	r3, r0, lr
	and	ip, r1, lr
	lsr	r0, r0, #16
	mul	r2, ip, r3
	mul	ip, r0, ip
	mul	r1, r4, r3
	mul	r0, r4, r0
	add	r3, ip, r2, lsr #16
	and	r2, r2, lr
	add	ip, r2, r3, lsl #16
	add	r1, r1, ip, lsr #16
	add	r2, r0, r3, lsr #16
	and	r0, ip, lr
	add	r0, r0, r1, lsl #16
	add	r1, r2, r1, lsr #16
	pop	{r4, pc}
.L1266:
	.align	2
.L1265:
	.word	65535
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.syntax unified
	.arm
	.type	__muldi3_compiler_rt, %function
__muldi3_compiler_rt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L1269
	lsr	ip, r0, #16
	and	lr, r0, r6
	and	r4, r2, r6
	mul	r5, r4, lr
	mul	r4, ip, r4
	lsr	r7, r2, #16
	mul	lr, r7, lr
	mul	ip, r7, ip
	add	r4, r4, r5, lsr #16
	and	r5, r5, r6
	add	r5, r5, r4, lsl #16
	add	lr, lr, r5, lsr #16
	add	ip, ip, r4, lsr #16
	add	ip, ip, lr, lsr #16
	mla	r3, r0, r3, ip
	and	r6, r6, r5
	mla	r1, r2, r1, r3
	add	r0, r6, lr, lsl #16
	pop	{r4, r5, r6, r7, pc}
.L1270:
	.align	2
.L1269:
	.word	65535
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
	ldr	r3, .L1273
	and	ip, r2, #15
	asr	r3, r3, ip
	and	r0, r3, #1
	bx	lr
.L1274:
	.align	2
.L1273:
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
	ldr	r2, .L1276
	and	ip, r1, #15
	asr	r2, r2, ip
	and	r0, r2, #1
	bx	lr
.L1277:
	.align	2
.L1276:
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
	ldr	r2, .L1280
	lsr	r3, r0, #1
	orr	r3, r3, r1, lsl #31
	and	r3, r3, r2
	subs	r0, r0, r3
	and	r2, r2, r1, lsr #1
	sbc	r1, r1, r2
	lsr	r3, r0, #2
	str	lr, [sp, #-4]!
	ldr	lr, .L1280+4
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
	ldr	ip, .L1280+8
	adc	r0, r3, r3, lsr #4
	and	r2, r2, ip
	and	r0, r0, ip
	add	ip, r0, r2
	add	r3, ip, ip, lsr #16
	add	r1, r3, r3, lsr #8
	and	r0, r1, #127
	ldr	pc, [sp], #4
.L1281:
	.align	2
.L1280:
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
	ldr	r2, .L1283
	ldr	r1, .L1283+4
	and	ip, r2, r0, lsr #1
	sub	r0, r0, ip
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	add	r1, r2, r0
	ldr	r3, .L1283+8
	add	ip, r1, r1, lsr #4
	and	r3, r3, ip
	add	r3, r3, r3, lsr #16
	add	r0, r3, r3, lsr #8
	and	r0, r0, #63
	bx	lr
.L1284:
	.align	2
.L1283:
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
	beq	.L1286
.L1288:
	vmul.f64	d0, d0, d7
.L1286:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1287
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1288
.L1292:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f64	d7, d7, d7
	add	r2, r1, r1, lsr #31
	bne	.L1288
	b	.L1292
.L1287:
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
	beq	.L1294
.L1296:
	vmul.f32	s0, s0, s15
.L1294:
	add	r3, r1, r1, lsr #31
	asrs	r1, r3, #1
	beq	.L1295
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1296
.L1300:
	asr	r1, r2, #1
	tst	r1, #1
	vmul.f32	s15, s15, s15
	add	r2, r1, r1, lsr #31
	bne	.L1296
	b	.L1300
.L1295:
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
	bcc	.L1305
	bhi	.L1306
	cmp	r0, r2
	bcc	.L1305
	bhi	.L1306
	mov	r0, #1
	bx	lr
.L1305:
	mov	r0, #0
	bx	lr
.L1306:
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
	bcc	.L1311
	bhi	.L1310
	cmp	r0, r2
	bcc	.L1311
	movhi	r0, #1
	movls	r0, #0
	bx	lr
.L1311:
	mvn	r0, #0
	bx	lr
.L1310:
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
