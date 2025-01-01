	.arch armv4
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
	@ link register save eliminated.
	cmp	r0, r1
	bls	.L2
	add	r3, r1, r2
	add	ip, r0, r2
	cmp	r2, #0
	moveq	pc, lr
	mov	r2, ip
.L4:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	.L4
	mov	pc, lr
.L2:
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r0, #1
	add	r2, r1, r2
.L5:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	strb	ip, [r3, #1]!
	cmp	r1, r2
	bne	.L5
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
	cmp	r3, #0
	beq	.L28
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
	mov	ip, r0
.L18:
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2
	strb	lr, [ip], #1
	cmp	lr, r2
	beq	.L32
	subs	r3, r3, #1
	bne	.L18
.L21:
	mov	r0, #0
	ldr	pc, [sp], #4
.L32:
	cmp	r3, #0
	beq	.L21
	mov	r0, ip
	ldr	pc, [sp], #4
.L28:
	mov	r0, #0
	mov	pc, lr
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
	cmp	r2, #0
	beq	.L39
	mov	r3, r0
.L35:
	mov	r0, r3
	add	r3, r3, #1
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, r1
	beq	.L42
	subs	r2, r2, #1
	bne	.L35
.L39:
	mov	r0, #0
	mov	pc, lr
.L42:
	cmp	r2, #0
	movne	pc, lr
	b	.L39
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.syntax unified
	.arm
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L55
	push	{r4, lr}
	mov	ip, r0
	mov	r3, r1
.L45:
	mov	r1, r3
	mov	r0, ip
	add	ip, ip, #1
	add	r3, r3, #1
	ldrb	r4, [r0]	@ zero_extendqisi2
	ldrb	lr, [r1]	@ zero_extendqisi2
	cmp	r4, lr
	bne	.L59
	subs	r2, r2, #1
	bne	.L45
.L48:
	mov	r0, #0
	pop	{r4, pc}
.L59:
	cmp	r2, #0
	beq	.L48
	sub	r0, r4, lr
	pop	{r4, pc}
.L55:
	mov	r0, #0
	mov	pc, lr
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.syntax unified
	.arm
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cmp	r2, #0
	blne	memcpy
.L61:
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
	and	r1, r1, #255
	sub	r2, r2, #1
	add	r2, r0, r2
	sub	ip, r0, #1
.L67:
	cmp	r2, ip
	beq	.L70
	mov	r0, r2
	sub	r2, r2, #1
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, r1
	bne	.L67
	mov	pc, lr
.L70:
	mov	r0, #0
	mov	pc, lr
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
	cmp	r2, #0
	moveq	pc, lr
	add	r2, r0, r2
	mov	r3, r0
.L73:
	strb	r1, [r3], #1
	cmp	r2, r3
	bne	.L73
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
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r0]
	cmp	r3, #0
	moveq	pc, lr
	add	r3, r0, #1
.L80:
	mov	r0, r3
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r2, #0
	bne	.L80
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	pc, lr
.L84:
	cmp	r3, r1
	moveq	pc, lr
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
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
	mov	r3, r0
.L93:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, r1
	moveq	pc, lr
	cmp	r2, #0
	bne	.L93
	mov	r0, #0
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
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.L102:
	subs	ip, r3, #0
	movne	ip, #1
	cmp	r3, r2
	movne	ip, #0
	cmp	ip, #0
	ldrbne	r3, [r0, #1]!	@ zero_extendqisi2
	ldrbne	r2, [r1, #1]!	@ zero_extendqisi2
	bne	.L102
.L96:
	sub	r0, r3, r2
	mov	pc, lr
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
	mov	r3, r0
	beq	.L104
.L105:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L105
.L104:
	sub	r0, r3, r0
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
	beq	.L113
	push	{r4, lr}
	ldrb	lr, [r0]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L110
	mov	r3, r1
	add	r4, r1, r2
.L111:
	mov	r1, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	subs	ip, r2, #0
	movne	ip, #1
	cmp	r2, lr
	movne	ip, #0
	cmp	r4, r3
	moveq	ip, #0
	andne	ip, ip, #1
	cmp	ip, #0
	beq	.L110
	ldrb	lr, [r0, #1]!	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L111
	mov	r1, r3
.L110:
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	r0, lr, r3
	pop	{r4, pc}
.L113:
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
	cmp	r2, #1
	movle	pc, lr
	add	r3, r1, #2
	add	r0, r0, #2
	sub	r2, r2, #2
	bic	r2, r2, #1
	add	r1, r1, #4
	add	r2, r2, r1
.L124:
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	strb	r1, [r3, #-2]
	ldrb	r1, [r0, #-2]	@ zero_extendqisi2
	strb	r1, [r3, #-1]
	add	r3, r3, #2
	add	r0, r0, #2
	cmp	r3, r2
	bne	.L124
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
	cmp	r0, #31
	cmphi	r3, #32
	bls	.L139
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L139
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L139:
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
	bls	.L147
	sub	r3, r0, #8192
	sub	r3, r3, #42
	ldr	r1, .L148
	ldr	r2, .L148+4
	cmp	r0, r2
	cmphi	r3, r1
	bls	.L145
	sub	r2, r0, #57344
	ldr	r3, .L148+8
	cmp	r2, r3
	bls	.L145
	sub	r3, r0, #65280
	sub	r3, r3, #252
	ldr	r2, .L148+12
	cmp	r3, r2
	bhi	.L146
	ldr	r3, .L148+16
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	mov	pc, lr
.L147:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	mov	pc, lr
.L145:
	mov	r0, #1
	mov	pc, lr
.L146:
	mov	r0, #0
	mov	pc, lr
.L149:
	.align	2
.L148:
	.word	47061
	.word	8231
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
	bls	.L152
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L152:
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
	bvs	.L158
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L161
	vsub.f64	d0, d0, d1
	mov	pc, lr
.L158:
	vmov.f64	d0, d1
	mov	pc, lr
.L161:
	vldr.64	d0, .L162
	mov	pc, lr
.L163:
	.align	3
.L162:
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
	bvs	.L168
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L171
	vsub.f32	s0, s0, s1
	mov	pc, lr
.L168:
	vmov.f32	s0, s1
	mov	pc, lr
.L171:
	vldr.32	s0, .L172
	mov	pc, lr
.L173:
	.align	2
.L172:
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
	bvs	.L177
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	vmov	r2, s3	@ int
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L176
	cmp	r3, #0
	vmovne.f64	d0, d1
	mov	pc, lr
.L176:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L177:
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
	bvs	.L183
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s0	@ int
	and	r3, r3, #-2147483648
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L182
	cmp	r3, #0
	vmovne.f32	s0, s1
	mov	pc, lr
.L182:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	mov	pc, lr
.L183:
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
	bvs	.L189
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	vmov	r2, s3	@ int
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L188
	cmp	r3, #0
	vmovne.f64	d0, d1
	mov	pc, lr
.L188:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L189:
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
	bvs	.L195
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	vmov	r2, s3	@ int
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L194
	cmp	r3, #0
	vmoveq.f64	d0, d1
	mov	pc, lr
.L194:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L195:
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
	bvs	.L201
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s0	@ int
	and	r3, r3, #-2147483648
	vmov	r2, s1	@ int
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L200
	cmp	r3, #0
	vmoveq.f32	s0, s1
	mov	pc, lr
.L200:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	mov	pc, lr
.L201:
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
	bvs	.L207
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	and	r3, r3, #-2147483648
	vmov	r2, s3	@ int
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L206
	cmp	r3, #0
	vmoveq.f64	d0, d1
	mov	pc, lr
.L206:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L207:
	vmov.f64	d0, d1
	mov	pc, lr
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
	ldr	r3, .L215
	cmp	r0, #0
	beq	.L211
	ldr	r1, .L215+4
.L212:
	and	r2, r0, #63
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3], #1
	lsrs	r0, r0, #6
	bne	.L212
.L211:
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, .L215
	mov	pc, lr
.L216:
	.align	2
.L215:
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
	ldr	r3, .L218
	sub	r0, r0, #1
	str	r0, [r3, #8]
	mov	r2, #0
	str	r2, [r3, #12]
	mov	pc, lr
.L219:
	.align	2
.L218:
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
	str	lr, [sp, #-4]!
	ldr	r2, .L222
	ldr	r3, [r2, #12]
	ldr	r1, .L222+4
	ldr	ip, [r2, #8]
	ldr	r0, .L222+8
	mul	r0, ip, r0
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r3, r3, #1
	adc	r0, r0, lr
	str	r3, [r2, #8]
	str	r0, [r2, #12]
	lsr	r0, r0, #1
	ldr	pc, [sp], #4
.L223:
	.align	2
.L222:
	.word	.LANCHOR0
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
	beq	.L230
	ldr	r3, [r1]
	str	r3, [r0]
	str	r1, [r0, #4]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
	mov	pc, lr
.L230:
	str	r1, [r0, #4]
	str	r1, [r0]
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
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	r6, r0
	str	r1, [sp, #4]
	mov	r10, r2
	mov	r5, r3
	ldr	r9, [sp, #48]
	ldr	r7, [r2]
	cmp	r7, #0
	beq	.L241
	mov	r4, r1
	mov	fp, #0
.L243:
	mov	r8, r4
	mov	r1, r4
	mov	r0, r6
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	beq	.L240
	add	fp, fp, #1
	add	r4, r4, r5
	cmp	r7, fp
	bne	.L243
.L241:
	add	r3, r7, #1
	str	r3, [r10]
	ldr	r8, [sp, #4]
	mla	r8, r7, r5, r8
	cmp	r5, #0
	movne	r2, r5
	movne	r1, r6
	movne	r0, r8
	blne	memmove
.L240:
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
	ldr	r9, [sp, #32]
	ldr	r8, [r2]
	cmp	r8, #0
	beq	.L257
	mov	r6, r0
	mov	r7, r3
	mov	r4, r1
	mov	r5, #0
.L259:
	mov	r10, r4
	mov	r1, r4
	mov	r0, r6
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	beq	.L256
	add	r5, r5, #1
	add	r4, r4, r7
	cmp	r8, r5
	bne	.L259
.L257:
	mov	r10, #0
.L256:
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
	@ link register save eliminated.
	mov	r2, r0
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r1, r3, #9
	cmp	r3, #32
	cmpne	r1, #4
	bhi	.L270
.L271:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	sub	r1, r3, #9
	cmp	r3, #32
	cmpne	r1, #4
	bls	.L271
.L270:
	cmp	r3, #43
	beq	.L277
	cmp	r3, #45
	moveq	r1, #1
	beq	.L272
	mov	r1, #0
	b	.L273
.L277:
	mov	r1, #0
.L272:
	add	r2, r2, #1
.L273:
	ldrb	r3, [r2]	@ zero_extendqisi2
	sub	r3, r3, #48
	mov	r0, #0
	cmp	r3, #9
	bhi	.L275
.L274:
	add	r0, r0, r0, lsl #2
	rsb	r0, r3, r0, lsl #1
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	sub	r3, r3, #48
	cmp	r3, #9
	bls	.L274
.L275:
	cmp	r1, #0
	rsbeq	r0, r0, #0
	mov	pc, lr
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.arm
	.type	atol, %function
atol:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	atoi
	.size	atol, .-atol
	.align	2
	.global	atoll
	.syntax unified
	.arm
	.type	atoll, %function
atoll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, r0
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L287
.L288:
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L288
.L287:
	cmp	r3, #43
	beq	.L294
	cmp	r3, #45
	moveq	r4, #1
	beq	.L289
	mov	r4, #0
	b	.L290
.L294:
	mov	r4, #0
.L289:
	add	ip, ip, #1
.L290:
	ldrb	r2, [ip]	@ zero_extendqisi2
	sub	r2, r2, #48
	mov	r0, #0
	mov	r1, r0
	cmp	r2, #9
	bhi	.L292
.L291:
	lsl	lr, r1, #2
	orr	lr, lr, r0, lsr #30
	lsl	r3, r0, #2
	adds	r3, r3, r0
	adc	r1, r1, lr
	adds	r3, r3, r3
	adc	r1, r1, r1
	subs	r0, r3, r2
	sbc	r1, r1, r2, asr #31
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	sub	r2, r2, #48
	cmp	r2, #9
	bls	.L291
.L292:
	cmp	r4, #0
	popne	{r4, pc}
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	pop	{r4, pc}
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
	ldr	r9, [sp, #32]
	subs	r4, r2, #0
	beq	.L304
	mov	r8, r0
	mov	r7, r1
	mov	r6, r3
	b	.L307
.L308:
	mov	r4, r5
.L305:
	cmp	r4, #0
	beq	.L304
.L307:
	lsr	r5, r4, #1
	mla	r10, r6, r5, r7
	mov	r1, r10
	mov	r0, r8
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	blt	.L308
	ble	.L303
	add	r7, r10, r6
	sub	r4, r4, #1
	sub	r4, r4, r5
	b	.L305
.L304:
	mov	r10, #0
.L303:
	mov	r0, r10
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
	ldr	r10, [sp, #40]
	ldr	r9, [sp, #44]
	cmp	r2, #0
	beq	.L315
	mov	r8, r0
	mov	r7, r1
	mov	r4, r2
	mov	r6, r3
.L318:
	asr	r5, r4, #1
	mla	fp, r6, r5, r7
	mov	r2, r9
	mov	r1, fp
	mov	r0, r8
	mov	lr, pc
	mov	pc, r10
	cmp	r0, #0
	beq	.L314
	addgt	r7, fp, r6
	subgt	r4, r4, #1
	asrgt	r5, r4, #1
	mov	r4, r5
	cmp	r5, #0
	bne	.L318
.L315:
	mov	fp, #0
.L314:
	mov	r0, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.syntax unified
	.arm
	.type	div, %function
div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	bl	__aeabi_idivmod
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
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
	push	{r4, lr}
	mov	r4, r0
	mov	r0, r2
	mov	r1, r3
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, pc}
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
	push	{r4, lr}
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	bl	__aeabi_idivmod
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
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
	push	{r4, lr}
	mov	r4, r0
	mov	r0, r2
	mov	r1, r3
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_ldivmod
	stm	r4, {r0-r1}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	mov	r0, r4
	pop	{r4, pc}
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
	cmp	r1, r3
	cmpne	r3, #0
	beq	.L339
.L340:
	ldr	r3, [r0, #4]!
	cmp	r3, r1
	cmpne	r3, #0
	bne	.L340
.L339:
	cmp	r3, #0
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
	@ link register save eliminated.
	ldr	ip, [r0]
	ldr	r2, [r1]
.L355:
	subs	r3, ip, #0
	movne	r3, #1
	cmp	ip, r2
	movne	r3, #0
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	ldrne	ip, [r0, #4]!
	ldrne	r2, [r1, #4]!
	bne	.L355
.L347:
	cmp	ip, r2
	bcc	.L350
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L350:
	mvn	r0, #0
	mov	pc, lr
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
.L357:
	ldr	r3, [r1], #4
	str	r3, [r2, #4]!
	cmp	r3, #0
	bne	.L357
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
	ldr	r3, [r0]
	cmp	r3, #0
	mov	r3, r0
	beq	.L361
.L362:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L362
.L361:
	sub	r0, r3, r0
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
	cmp	r2, #0
	beq	.L378
	push	{r4, r5, lr}
	mov	lr, r0
	mov	ip, r1
.L367:
	mov	r0, lr
	ldr	r5, [lr], #4
	ldr	r4, [ip], #4
	subs	r3, r5, #0
	movne	r3, #1
	cmp	r5, r4
	movne	r3, #0
	cmp	r4, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	beq	.L381
	subs	r2, r2, #1
	bne	.L367
.L370:
	mov	r0, #0
	pop	{r4, r5, pc}
.L381:
	cmp	r2, #0
	beq	.L370
	cmp	r5, r4
	bcc	.L371
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, r5, pc}
.L371:
	mvn	r0, #0
	pop	{r4, r5, pc}
.L378:
	mov	r0, #0
	mov	pc, lr
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
	beq	.L388
	mov	r3, r0
.L384:
	mov	r0, r3
	add	r3, r3, #4
	ldr	ip, [r0]
	cmp	ip, r1
	beq	.L391
	subs	r2, r2, #1
	bne	.L384
.L388:
	mov	r0, #0
	mov	pc, lr
.L391:
	cmp	r2, #0
	movne	pc, lr
	b	.L388
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.syntax unified
	.arm
	.type	wmemcmp, %function
wmemcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L405
	push	{r4, lr}
	mov	ip, r0
	mov	r3, r1
.L394:
	mov	r1, r3
	mov	r0, ip
	add	ip, ip, #4
	add	r3, r3, #4
	ldr	lr, [r1]
	ldr	r4, [r0]
	cmp	r4, lr
	bne	.L408
	subs	r2, r2, #1
	bne	.L394
.L397:
	mov	r0, #0
	pop	{r4, pc}
.L408:
	cmp	r2, #0
	beq	.L397
	cmp	r4, lr
	bcc	.L398
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, pc}
.L398:
	mvn	r0, #0
	pop	{r4, pc}
.L405:
	mov	r0, #0
	mov	pc, lr
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.syntax unified
	.arm
	.type	wmemcpy, %function
wmemcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cmp	r2, #0
	lslne	r2, r2, #2
	blne	memcpy
.L410:
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
	@ link register save eliminated.
	cmp	r0, r1
	moveq	pc, lr
	lsl	ip, r2, #2
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	bcc	.L417
	cmp	r2, #0
	moveq	pc, lr
	sub	r2, r2, #1
	sub	r3, r0, #4
.L420:
	ldr	ip, [r1], #4
	str	ip, [r3, #4]!
	sub	r2, r2, #1
	cmn	r2, #1
	bne	.L420
	mov	pc, lr
.L417:
	cmp	r2, #0
	moveq	pc, lr
	add	r3, r1, ip
	add	r2, r0, ip
.L419:
	ldr	ip, [r3, #-4]!
	str	ip, [r2, #-4]!
	cmp	r1, r3
	bne	.L419
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
	sub	r3, r2, #1
	cmp	r2, #0
	moveq	pc, lr
	mov	r2, r0
.L430:
	str	r1, [r2], #4
	sub	r3, r3, #1
	cmn	r3, #1
	bne	.L430
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
	bcs	.L436
	add	r3, r0, r2
	add	r1, r1, r2
	cmp	r2, #0
	moveq	pc, lr
.L438:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r1, #-1]!
	cmp	r0, r3
	bne	.L438
	mov	pc, lr
.L436:
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r1, r1, #1
	add	r2, r0, r2
.L439:
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	strb	r3, [r1, #1]!
	cmp	r0, r2
	bne	.L439
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
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r3, r3, #15
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
	and	r1, r1, #15
	rsb	r3, r1, #0
	and	r3, r3, #15
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
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r3, r3, #7
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
	and	r1, r1, #7
	rsb	r3, r1, #0
	and	r3, r3, #7
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
	lsl	r3, r0, #8
	orr	r0, r3, r0, lsr #8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
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
	eor	r3, r0, r0, ror #16
	lsr	r3, r3, #8
	bic	r3, r3, #65280
	eor	r0, r3, r0, ror #8
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
	mov	r2, r0
	eor	r3, r0, r0, ror #16
	lsr	r3, r3, #8
	bic	r3, r3, #65280
	eor	r0, r1, r1, ror #16
	lsr	r0, r0, #8
	bic	r0, r0, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
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
.L467:
	lsr	r2, r0, r3
	tst	r2, #1
	add	r3, r3, #1
	bne	.L469
	cmp	r3, #32
	bne	.L467
	mov	r0, #0
	mov	pc, lr
.L469:
	mov	r0, r3
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
	beq	.L473
	ands	r0, r3, #1
	movne	pc, lr
	mov	r0, #1
.L472:
	asr	r3, r3, #1
	add	r0, r0, #1
	tst	r3, #1
	beq	.L472
	mov	pc, lr
.L473:
	mov	r0, #0
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
	vldr.32	s15, .L480
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L479
	vldr.32	s15, .L480+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L479:
	mov	r0, #1
	mov	pc, lr
.L481:
	.align	2
.L480:
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
	vldr.64	d7, .L485
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L484
	vldr.64	d7, .L485+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L484:
	mov	r0, #1
	mov	pc, lr
.L486:
	.align	3
.L485:
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
	vldr.64	d7, .L490
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L489
	vldr.64	d7, .L490+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L489:
	mov	r0, #1
	mov	pc, lr
.L491:
	.align	3
.L490:
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
	vcmp.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	cmp	r0, #0
	vmov.f32	s15, #2.0e+0
	vmov.f32	s14, #5.0e-1
	vmovlt.f32	s15, s14
.L497:
	tst	r0, #1
	vmulne.f32	s0, s0, s15
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f32	s15, s15, s15
	b	.L497
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
	vcmp.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	moveq	pc, lr
	cmp	r0, #0
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	vmovlt.f64	d7, d6
.L509:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L509
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
.L521:
	tst	r0, #1
	vmulne.f64	d0, d0, d7
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	vmul.f64	d7, d7, d7
	b	.L521
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.syntax unified
	.arm
	.type	memxor, %function
memxor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	moveq	pc, lr
	str	lr, [sp, #-4]!
	add	r2, r1, r2
	mov	ip, r0
.L531:
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	ldrb	lr, [r1], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	strb	r3, [ip, #-1]
	cmp	r2, r1
	bne	.L531
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	mov	ip, r0
	cmp	r3, #0
	beq	.L541
.L542:
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L542
.L541:
	cmp	r2, #0
	beq	.L554
	str	lr, [sp, #-4]!
	sub	r1, r1, #1
	mov	r3, ip
.L544:
	mov	ip, r3
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2
	strb	lr, [r3], #1
	cmp	lr, #0
	beq	.L558
	subs	r2, r2, #1
	bne	.L544
	mov	ip, r3
	b	.L549
.L558:
	cmp	r2, #0
	ldrne	pc, [sp], #4
.L549:
	strb	r2, [ip]
	ldr	pc, [sp], #4
.L554:
	strb	r2, [ip]
	mov	pc, lr
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
	beq	.L563
	sub	r3, r0, #1
	mov	r0, #0
.L561:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	add	r0, r0, #1
	cmp	r1, r0
	bne	.L561
	mov	pc, lr
.L563:
	mov	r0, #0
	mov	pc, lr
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
	beq	.L571
	sub	r1, r1, #1
.L567:
	mov	r2, r1
.L570:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L574
	cmp	r3, ip
	bne	.L570
	mov	pc, lr
.L574:
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L567
.L571:
	mov	r0, #0
	mov	pc, lr
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
.L577:
	mov	ip, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, r1
	moveq	r0, ip
	cmp	r2, #0
	bne	.L577
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
	push	{r4, r5, r6, r7, lr}
	mov	r3, r0
	mov	r7, r1
	ldrb	r4, [r1]	@ zero_extendqisi2
	mov	r5, r1
	cmp	r4, #0
	beq	.L582
.L583:
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L583
.L582:
	subs	r5, r5, r7
	addne	r5, r7, r5
	bne	.L590
	mov	r0, r3
	pop	{r4, r5, r6, r7, pc}
.L594:
	mov	r6, r7
	b	.L586
.L589:
	cmp	r0, #0
	popeq	{r4, r5, r6, r7, pc}
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L594
	mov	r1, r0
	mov	r3, r7
.L587:
	mov	r6, r3
	ldrb	lr, [r3], #1	@ zero_extendqisi2
	subs	r2, lr, #0
	movne	r2, #1
	cmp	lr, ip
	movne	r2, #0
	cmp	r5, r3
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	beq	.L586
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L587
	mov	r6, r3
.L586:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, ip
	popeq	{r4, r5, r6, r7, pc}
	add	r3, r0, #1
.L590:
	mov	r0, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, r4
	beq	.L589
	cmp	r2, #0
	bne	.L590
	mov	r0, #0
	pop	{r4, r5, r6, r7, pc}
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
	bmi	.L609
.L601:
	vcmpe.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
	b	.L603
.L609:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L601
.L603:
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
	mov	r6, r0
	subs	r8, r3, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	cmp	r1, r8
	bcc	.L620
	sub	r1, r1, r8
	adds	r7, r0, r1
	bcs	.L620
	mov	r10, r2
	ldrb	r9, [r10], #1	@ zero_extendqisi2
	b	.L617
.L632:
	cmp	lr, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	cmp	r5, r4
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
.L612:
	cmp	r6, r7
	bhi	.L620
.L617:
	ldrb	r1, [r6]	@ zero_extendqisi2
	mov	r0, r6
	add	r6, r6, #1
	cmp	r1, r9
	bne	.L612
	subs	lr, r8, #1
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	mov	ip, r6
	mov	r1, r10
.L614:
	mov	r3, r1
	mov	r2, ip
	add	ip, ip, #1
	add	r1, r1, #1
	ldrb	r5, [r2]	@ zero_extendqisi2
	ldrb	r4, [r3]	@ zero_extendqisi2
	cmp	r5, r4
	bne	.L632
	subs	lr, lr, #1
	bne	.L614
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L620:
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
	push	{r4, r5, r6, lr}
	mov	r5, r0
	subs	r4, r2, #0
	blne	memmove
.L634:
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
	vnegmi.f64	d0, d0
	movmi	r2, #1
	movpl	r2, #0
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	blt	.L658
	mov	r3, #0
	vmov.f64	d6, #5.0e-1
.L644:
	add	r3, r3, #1
	vmul.f64	d0, d0, d6
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bge	.L644
.L645:
	str	r3, [r0]
	cmp	r2, #0
	vnegne.f64	d0, d0
	mov	pc, lr
.L658:
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
	mov	r3, #0
	beq	.L645
.L646:
	sub	r3, r3, #1
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L646
	b	.L645
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
	mov	r4, r1
	orrs	r1, r1, r0
	beq	.L662
	mov	ip, r0
	mov	r0, #0
	mov	r1, r0
.L661:
	ands	lr, ip, #1
	mvnne	lr, #0
	mov	r5, lr
	and	lr, lr, r2
	and	r5, r5, r3
	adds	lr, lr, r0
	mov	r0, lr
	adc	r1, r1, r5
	adds	r2, r2, r2
	adc	r3, r3, r3
	lsr	ip, ip, #1
	orr	ip, ip, r4, lsl #31
	lsr	r4, r4, #1
	orrs	lr, ip, r4
	bne	.L661
	pop	{r4, r5, pc}
.L662:
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
	@ link register save eliminated.
	mov	r3, #1
	cmp	r1, r0
	bcs	.L675
.L667:
	cmp	r1, #0
	blt	.L668
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	bne	.L667
.L668:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L670
.L675:
	mov	ip, #0
.L669:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L669
.L670:
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
	beq	.L681
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L681:
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
	mov	r2, r0
	mov	r3, r1
	asr	ip, r1, #31
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	cmp	r3, ip
	cmpeq	r2, ip
	beq	.L688
	push	{r4, lr}
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L688:
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
	subs	r3, r0, #0
	mov	r0, #0
	moveq	pc, lr
.L695:
	ands	r2, r3, #1
	mvnne	r2, #0
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L695
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
	bcc	.L700
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L700
	cmp	r2, #0
	popeq	{r4, pc}
	add	r2, r0, r2
.L706:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
	cmp	r3, r1
	bne	.L706
	pop	{r4, pc}
.L700:
	cmp	r4, #0
	beq	.L703
	mov	r3, r1
	mov	lr, r0
	add	r4, r1, r4, lsl #3
.L704:
	vldmia.64	r3!, {d7}	@ int
	vstmia.64	lr!, {d7}	@ int
	cmp	r3, r4
	bne	.L704
.L703:
	cmp	r2, ip
	popls	{r4, pc}
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	sub	r1, r1, #1
	add	r2, r1, r2
.L705:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
	cmp	r3, r2
	bne	.L705
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
	bcc	.L717
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L717
	cmp	r2, #0
	popeq	{r4, pc}
	add	r0, r0, r2
.L722:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	strb	r2, [r0, #-1]!
	cmp	r3, r1
	bne	.L722
	pop	{r4, pc}
.L717:
	cmp	r4, #0
	beq	.L720
	sub	r3, r1, #2
	sub	ip, r0, #2
	add	r4, r3, r4, lsl #1
.L721:
	ldrsh	lr, [r3, #2]!
	strh	lr, [ip, #2]!	@ movhi
	cmp	r3, r4
	bne	.L721
.L720:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
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
	bcc	.L734
	add	r3, r1, r2
	cmp	r3, r0
	bcc	.L734
	cmp	r2, #0
	popeq	{r4, r5, pc}
	add	r2, r0, r2
.L740:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	strb	r0, [r2, #-1]!
	cmp	r3, r1
	bne	.L740
	pop	{r4, r5, pc}
.L734:
	cmp	r5, #0
	beq	.L737
	sub	r3, r1, #4
	sub	lr, r0, #4
	add	r5, r3, r5, lsl #2
.L738:
	ldr	r4, [r3, #4]!
	str	r4, [lr, #4]!
	cmp	r3, r5
	bne	.L738
.L737:
	cmp	r2, ip
	popls	{r4, r5, pc}
	sub	ip, ip, #1
	add	r3, r1, ip
	add	r0, r0, ip
	sub	r1, r1, #1
	add	r2, r1, r2
.L739:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	strb	ip, [r0, #1]!
	cmp	r3, r2
	bne	.L739
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
.L762:
	rsb	r3, r0, #15
	asr	r3, r2, r3
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	cmp	r0, #16
	bne	.L762
	mov	pc, lr
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
.L766:
	asr	r3, r2, r0
	tst	r3, #1
	movne	pc, lr
	add	r0, r0, #1
	cmp	r0, #16
	bne	.L766
	mov	pc, lr
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
	vldr.32	s15, .L774
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vcvtlt.s32.f32	s15, s0
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L775:
	.align	2
.L774:
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
.L777:
	asr	r2, r0, r3
	and	r2, r2, #1
	add	r1, r1, r2
	add	r3, r3, #1
	cmp	r3, #16
	bne	.L777
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
.L780:
	asr	r2, r1, r3
	and	r2, r2, #1
	add	r0, r0, r2
	add	r3, r3, #1
	cmp	r3, #16
	bne	.L780
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
	subs	r3, r0, #0
	mov	r0, #0
	moveq	pc, lr
.L785:
	ands	r2, r3, #1
	mvnne	r2, #0
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L785
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
	subs	r2, r0, #0
	mov	r0, #0
	moveq	pc, lr
	cmp	r1, #0
	moveq	pc, lr
.L791:
	ands	r3, r1, #1
	mvnne	r3, #0
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	lsrs	r1, r1, #1
	bne	.L791
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
	cmp	r0, r1
	bls	.L805
.L797:
	cmp	r1, #0
	blt	.L798
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	bne	.L797
.L798:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L800
.L805:
	mov	ip, #0
.L799:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L799
.L800:
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
	bmi	.L811
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L811:
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
	bmi	.L814
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L814:
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
	mov	r2, r1
	smull	r0, r1, r3, r2
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
	str	lr, [sp, #-4]!
	mov	ip, r0
	cmp	r1, #0
	rsblt	r1, r1, #0
	movlt	lr, #1
	movge	lr, #0
	mov	r0, #0
	cmp	r1, #0
	beq	.L819
	mov	r3, r0
.L820:
	ands	r2, r1, #1
	mvnne	r2, #0
	and	r2, r2, ip
	add	r0, r0, r2
	lsl	ip, ip, #1
	add	r3, r3, #1
	and	r3, r3, #255
	asrs	r1, r1, #1
	movne	r2, #1
	moveq	r2, #0
	cmp	r3, #31
	movhi	r2, #0
	andls	r2, r2, #1
	cmp	r2, #0
	bne	.L820
.L819:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.syntax unified
	.arm
	.type	__divsi3, %function
__divsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	cmp	r0, #0
	rsblt	r0, r0, #0
	movlt	lr, #1
	movge	lr, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	eorlt	lr, lr, #1
	mov	ip, r0
	mov	r3, #1
	cmp	r0, r1
	bls	.L847
.L833:
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	r2, #1
	moveq	r2, #0
	cmp	r0, r1
	movls	r2, #0
	andhi	r2, r2, #1
	cmp	r2, #0
	bne	.L833
	cmp	r3, #0
	beq	.L840
.L847:
	mov	r2, #0
.L836:
	cmp	ip, r1
	subcs	ip, ip, r1
	orrcs	r2, r2, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L836
.L834:
	mov	r0, r2
	cmp	lr, #0
	rsbne	r0, r2, #0
	ldr	pc, [sp], #4
.L840:
	mov	r2, #0
	b	.L834
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.syntax unified
	.arm
	.type	__modsi3, %function
__modsi3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	cmp	r0, #0
	rsblt	r0, r0, #0
	movlt	lr, #1
	movge	lr, #0
	mov	ip, r0
	cmp	r1, #0
	rsblt	r1, r1, #0
	mov	r3, #1
	cmp	r0, r1
	bls	.L863
.L852:
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	r2, #1
	moveq	r2, #0
	cmp	r0, r1
	movls	r2, #0
	andhi	r2, r2, #1
	cmp	r2, #0
	bne	.L852
	cmp	r3, #0
	beq	.L853
.L863:
	cmp	ip, r1
	subcs	ip, ip, r1
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L863
.L853:
	mov	r0, ip
	cmp	lr, #0
	rsbne	r0, ip, #0
	ldr	pc, [sp], #4
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.syntax unified
	.arm
	.type	__udivmodhi4, %function
__udivmodhi4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r3, #1
	cmp	r1, r0
	bcs	.L879
.L871:
	tst	r1, #32768
	bne	.L872
	lsl	ip, r1, #17
	lsr	r1, ip, #16
	lsl	lr, r3, #17
	mov	ip, r1
	lsr	r3, lr, #16
	cmp	lr, #0
	cmpne	r1, r0
	bcc	.L871
.L872:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L874
.L879:
	mov	ip, #0
	b	.L873
.L876:
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	beq	.L874
.L873:
	cmp	r0, r1
	bcc	.L876
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	orr	ip, r3, ip
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	b	.L876
.L874:
	cmp	r2, #0
	moveq	r0, ip
	ldr	pc, [sp], #4
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
	cmp	r0, r1
	bls	.L893
.L885:
	cmp	r1, #0
	blt	.L886
	lsl	r1, r1, #1
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	bne	.L885
.L886:
	cmp	r3, #0
	moveq	ip, #0
	beq	.L888
.L893:
	mov	ip, #0
.L887:
	cmp	r0, r1
	subcs	r0, r0, r1
	orrcs	ip, ip, r3
	lsr	r1, r1, #1
	lsrs	r3, r3, #1
	bne	.L887
.L888:
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
	beq	.L898
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r3, #0
.L899:
	mov	r0, r3
	mov	pc, lr
.L898:
	cmp	r2, #0
	moveq	pc, lr
	lsl	r3, r0, r2
	rsb	ip, r2, #32
	lsl	r1, r1, r2
	orr	r1, r1, r0, lsr ip
	b	.L899
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
	beq	.L903
	asr	r3, r1, #31
	sub	r2, r2, #32
	asr	r0, r1, r2
.L904:
	mov	r1, r3
	mov	pc, lr
.L903:
	cmp	r2, #0
	moveq	pc, lr
	asr	r3, r1, r2
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	orr	r0, r0, r1, lsl ip
	b	.L904
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
	lsr	r3, r3, #8
	bic	r3, r3, #65280
	eor	r0, r1, r1, ror #16
	lsr	r0, r0, #8
	bic	r0, r0, #65280
	eor	r0, r0, r1, ror #8
	eor	r1, r3, r2, ror #8
	mov	pc, lr
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
	lsr	r3, r3, #8
	bic	r3, r3, #65280
	eor	r0, r3, r0, ror #8
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
	movcs	r1, #0
	movcc	r1, #1
	lsl	r1, r1, #4
	rsb	r3, r1, #16
	lsr	r3, r0, r3
	tst	r3, #65280
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #3
	rsb	r0, r2, #8
	lsr	r3, r3, r0
	add	r1, r2, r1
	tst	r3, #240
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #2
	rsb	r0, r2, #4
	lsr	r3, r3, r0
	add	r1, r2, r1
	tst	r3, #12
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #1
	rsb	r0, r2, #2
	lsr	r3, r3, r0
	rsb	r0, r3, #2
	tst	r3, #2
	movne	r0, #0
	add	r2, r2, r1
	add	r0, r0, r2
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
	blt	.L914
	bgt	.L915
	cmp	r0, r2
	bcc	.L914
	bhi	.L915
	mov	r0, #1
	mov	pc, lr
.L914:
	mov	r0, #0
	mov	pc, lr
.L915:
	mov	r0, #2
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
	@ link register save eliminated.
	cmp	r1, r3
	blt	.L920
	bgt	.L921
	cmp	r0, r2
	bcc	.L920
	movls	r0, #1
	bls	.L917
.L921:
	mov	r0, #2
	b	.L917
.L920:
	mov	r0, #0
.L917:
	sub	r0, r0, #1
	mov	pc, lr
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
	rsbs	r3, r3, #1
	movcc	r3, #0
	lsl	r1, r3, #4
	lsr	r3, r0, r1
	and	r2, r3, #255
	rsbs	r2, r2, #1
	movcc	r2, #0
	lsl	r2, r2, #3
	lsr	r3, r3, r2
	add	r2, r2, r1
	tst	r3, #15
	moveq	r1, #1
	movne	r1, #0
	lsl	r1, r1, #2
	lsr	r3, r3, r1
	add	r1, r1, r2
	tst	r3, #3
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #1
	lsr	r3, r3, r2
	and	r3, r3, #3
	mvn	r0, r3
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	ands	r0, r0, #1
	mvnne	r0, #0
	and	r0, r0, r3
	add	r2, r2, r1
	add	r0, r0, r2
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
	beq	.L924
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r3, #0
.L925:
	mov	r1, r3
	mov	pc, lr
.L924:
	cmp	r2, #0
	moveq	pc, lr
	lsr	r3, r1, r2
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	orr	r0, r0, r1, lsl ip
	b	.L925
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
	ldr	r4, .L930
	and	ip, r0, r4
	and	lr, r1, r4
	mul	r2, lr, ip
	lsr	r3, r0, #16
	mul	lr, r3, lr
	add	lr, lr, r2, lsr #16
	and	r0, r2, r4
	add	r0, r0, lr, lsl #16
	lsr	r2, r1, #16
	mul	ip, r2, ip
	add	r1, ip, r0, lsr #16
	and	r0, r0, r4
	mul	r3, r2, r3
	add	r3, r3, lr, lsr #16
	add	r0, r0, r1, lsl #16
	add	r1, r3, r1, lsr #16
	pop	{r4, pc}
.L931:
	.align	2
.L930:
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
	ldr	r6, .L934
	and	r4, r0, r6
	and	r5, r2, r6
	mul	lr, r5, r4
	lsr	ip, r0, #16
	mul	r5, ip, r5
	add	r5, r5, lr, lsr #16
	and	lr, lr, r6
	add	lr, lr, r5, lsl #16
	lsr	r7, r2, #16
	mul	r4, r7, r4
	add	r4, r4, lr, lsr #16
	and	lr, lr, r6
	mul	ip, r7, ip
	add	ip, ip, r5, lsr #16
	add	ip, ip, r4, lsr #16
	mla	r3, r0, r3, ip
	add	r0, lr, r4, lsl #16
	mla	r1, r2, r1, r3
	pop	{r4, r5, r6, r7, pc}
.L935:
	.align	2
.L934:
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
	ldr	r0, .L938
	asr	r0, r0, r1
	and	r0, r0, #1
	mov	pc, lr
.L939:
	.align	2
.L938:
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
	ldr	r3, .L941
	asr	r0, r3, r0
	and	r0, r0, #1
	mov	pc, lr
.L942:
	.align	2
.L941:
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
	ldr	r2, .L944
	and	r0, r0, r2
	and	r2, r2, r1, lsr #1
	subs	r0, r3, r0
	sbc	r1, r1, r2
	lsr	r2, r0, #2
	orr	r2, r2, r1, lsl #30
	ldr	ip, .L944+4
	and	r2, r2, ip
	and	r3, ip, r1, lsr #2
	and	r0, r0, ip
	and	r1, r1, ip
	adds	r2, r2, r0
	adc	r3, r3, r1
	lsr	r1, r2, #4
	orr	r1, r1, r3, lsl #28
	adds	r1, r1, r2
	adc	r0, r3, r3, lsr #4
	ldr	r3, .L944+8
	and	r1, r1, r3
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	mov	pc, lr
.L945:
	.align	2
.L944:
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
	ldr	r3, .L947
	and	r3, r3, r0, lsr #1
	sub	r0, r0, r3
	ldr	r2, .L947+4
	and	r3, r2, r0, lsr #2
	and	r0, r0, r2
	add	r3, r3, r0
	add	r3, r3, r3, lsr #4
	ldr	r0, .L947+8
	and	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	mov	pc, lr
.L948:
	.align	2
.L947:
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
	vmov.f64	d7, d0
	mov	r3, r0
	vmov.f64	d0, #1.0e+0
.L952:
	tst	r3, #1
	vmulne.f64	d0, d0, d7
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	vmulne.f64	d7, d7, d7
	bne	.L952
.L951:
	cmp	r0, #0
	vmovlt.f64	d7, #1.0e+0
	vdivlt.f64	d0, d7, d0
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
	vmov.f32	s15, s0
	mov	r3, r0
	vmov.f32	s0, #1.0e+0
.L960:
	tst	r3, #1
	vmulne.f32	s0, s0, s15
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	vmulne.f32	s15, s15, s15
	bne	.L960
.L959:
	cmp	r0, #0
	vmovlt.f32	s15, #1.0e+0
	vdivlt.f32	s0, s15, s0
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
	bcc	.L969
	bhi	.L970
	cmp	r0, r2
	bcc	.L969
	bhi	.L970
	mov	r0, #1
	mov	pc, lr
.L969:
	mov	r0, #0
	mov	pc, lr
.L970:
	mov	r0, #2
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
	@ link register save eliminated.
	cmp	r1, r3
	bcc	.L975
	bhi	.L976
	cmp	r0, r2
	bcc	.L975
	movls	r0, #1
	bls	.L972
.L976:
	mov	r0, #2
	b	.L972
.L975:
	mov	r0, #0
.L972:
	sub	r0, r0, #1
	mov	pc, lr
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
	.global	__clzdi2
	.global	__clzsi2
	.global	__aeabi_ldivmod
	.global	__aeabi_idivmod
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
