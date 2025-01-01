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
	cmp	r2, #0
	add	r3, r1, r2
	add	r2, r0, r2
	moveq	pc, lr
.L4:
	ldrb	ip, [r3, #-1]!	@ zero_extendqisi2
	cmp	r1, r3
	strb	ip, [r2, #-1]!
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
	cmp	r1, r2
	strb	ip, [r3, #1]!
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
	beq	.L31
	str	lr, [sp, #-4]!
	and	r2, r2, #255
	sub	r1, r1, #1
	b	.L18
.L19:
	subs	r3, r3, #1
	beq	.L17
.L18:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	mov	lr, r0
	cmp	ip, r2
	strb	ip, [r0], #1
	bne	.L19
	add	r0, lr, #1
	ldr	pc, [sp], #4
.L17:
	mov	r0, #0
	ldr	pc, [sp], #4
.L31:
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
	cmp	r2, #0
	and	r1, r1, #255
	beq	.L39
	mov	r3, r0
.L36:
	mov	r0, r3
	ldrb	ip, [r3], #1	@ zero_extendqisi2
	cmp	ip, r1
	moveq	pc, lr
	subs	r2, r2, #1
	bne	.L36
.L39:
	mov	r0, r2
	mov	pc, lr
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
	bne	.L44
	b	.L48
.L45:
	subs	r2, r2, #1
	beq	.L48
.L44:
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	ip, r3
	add	r1, r1, #1
	beq	.L45
	sub	r0, ip, r3
	mov	pc, lr
.L48:
	mov	r0, r2
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
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	blne	memcpy
.L52:
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
	and	r1, r1, #255
	add	r2, r0, r2
	sub	ip, r0, #1
	b	.L58
.L60:
	mov	r0, r2
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r2, #1
	cmp	r3, r1
	moveq	pc, lr
.L58:
	cmp	r2, ip
	bne	.L60
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
	mov	r3, r0
	add	r2, r0, r2
.L63:
	strb	r1, [r3], #1
	cmp	r2, r3
	bne	.L63
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
	cmp	r3, #0
	strb	r3, [r0]
	moveq	pc, lr
	add	r3, r0, #1
.L70:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	mov	r0, r3
	cmp	r2, #0
	strb	r2, [r3], #1
	bne	.L70
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	and	r1, r1, #255
	cmp	r3, #0
	moveq	pc, lr
	cmp	r3, r1
	moveq	pc, lr
.L81:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	moveq	pc, lr
	cmp	r3, r1
	bne	.L81
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
	mov	r2, r0
.L84:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r1
	add	r2, r2, #1
	moveq	pc, lr
	cmp	r3, #0
	bne	.L84
	mov	r0, r3
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
	b	.L93
.L94:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
.L93:
	subs	ip, r3, #0
	movne	ip, #1
	cmp	r3, r2
	movne	ip, #0
	cmp	ip, #0
	bne	.L94
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
	beq	.L96
.L97:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L97
.L96:
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
	beq	.L105
	push	{r4, lr}
	ldrb	lr, [r0]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L102
	mov	r3, r1
	add	r4, r1, r2
	b	.L103
.L104:
	ldrb	lr, [r0, #1]!	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L114
.L103:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r1, r3
	subs	ip, r2, #0
	movne	ip, #1
	cmp	r2, lr
	movne	ip, #0
	add	r3, r3, #1
	cmp	r4, r3
	moveq	ip, #0
	andne	ip, ip, #1
	cmp	ip, #0
	bne	.L104
.L102:
	ldrb	r0, [r1]	@ zero_extendqisi2
	sub	r0, lr, r0
	pop	{r4, pc}
.L105:
	mov	r0, r2
	mov	pc, lr
.L114:
	mov	r1, r3
	b	.L102
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
	sub	r3, r2, #2
	bic	r3, r3, #1
	add	r2, r1, #4
	add	r0, r0, #2
	add	r1, r1, #2
	add	r3, r3, r2
.L117:
	add	r1, r1, #2
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	ldrb	r2, [r0, #-2]	@ zero_extendqisi2
	cmp	r1, r3
	add	r0, r0, #2
	strb	ip, [r1, #-4]
	strb	r2, [r1, #-3]
	bne	.L117
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
	bls	.L132
	sub	r3, r0, #8192
	sub	r3, r3, #40
	cmp	r3, #1
	bls	.L132
	sub	r0, r0, #65280
	sub	r0, r0, #249
	cmp	r0, #2
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L132:
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
	bls	.L140
	ldr	r1, .L141
	ldr	r2, .L141+4
	sub	r3, r0, #8192
	sub	r3, r3, #42
	cmp	r0, r2
	cmphi	r3, r1
	movls	r3, #1
	movhi	r3, #0
	bls	.L138
	sub	r2, r2, #47
	sub	r1, r0, #57344
	cmp	r1, r2
	bls	.L138
	ldr	r1, .L141+8
	sub	r2, r0, #65280
	sub	r2, r2, #252
	cmp	r2, r1
	bhi	.L139
	ldr	r3, .L141+12
	bics	r3, r3, r0
	movne	r0, #1
	moveq	r0, #0
	mov	pc, lr
.L138:
	mov	r0, #1
	mov	pc, lr
.L140:
	add	r0, r0, #1
	and	r0, r0, #127
	cmp	r0, #32
	movls	r0, #0
	movhi	r0, #1
	mov	pc, lr
.L139:
	mov	r0, r3
	mov	pc, lr
.L142:
	.align	2
.L141:
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
	bls	.L145
	orr	r0, r0, #32
	sub	r0, r0, #97
	cmp	r0, #5
	movhi	r0, #0
	movls	r0, #1
	mov	pc, lr
.L145:
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
	bvs	.L151
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	ble	.L154
	vsub.f64	d0, d0, d1
	mov	pc, lr
.L154:
	vldr.64	d0, .L155
	mov	pc, lr
.L151:
	vmov.f64	d0, d1
	mov	pc, lr
.L156:
	.align	3
.L155:
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
	bvs	.L161
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	ble	.L164
	vsub.f32	s0, s0, s1
	mov	pc, lr
.L164:
	vldr.32	s0, .L165
	mov	pc, lr
.L161:
	vmov.f32	s0, s1
	mov	pc, lr
.L166:
	.align	2
.L165:
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
	bvs	.L170
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L169
	cmp	r3, #0
	vmovne.f64	d0, d1
	mov	pc, lr
.L169:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L170:
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
	bvs	.L176
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L175
	cmp	r3, #0
	vmovne.f32	s0, s1
	mov	pc, lr
.L175:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s0, s1
	mov	pc, lr
.L176:
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
	bvs	.L182
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L181
	cmp	r3, #0
	vmovne.f64	d0, d1
	mov	pc, lr
.L181:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f64	d0, d1
	mov	pc, lr
.L182:
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
	bvs	.L188
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L187
	cmp	r3, #0
	vmoveq.f64	d0, d1
	mov	pc, lr
.L187:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L188:
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
	bvs	.L194
	vcmp.f32	s1, s1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s0	@ int
	vmov	r2, s1	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L193
	cmp	r3, #0
	vmoveq.f32	s0, s1
	mov	pc, lr
.L193:
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f32	s0, s1
	mov	pc, lr
.L194:
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
	bvs	.L200
	vcmp.f64	d1, d1
	vmrs	APSR_nzcv, FPSCR
	movvs	pc, lr
	vmov	r3, s1	@ int
	vmov	r2, s3	@ int
	and	r3, r3, #-2147483648
	and	r2, r2, #-2147483648
	cmp	r3, r2
	beq	.L199
	cmp	r3, #0
	vmoveq.f64	d0, d1
	mov	pc, lr
.L199:
	vcmpe.f64	d0, d1
	vmrs	APSR_nzcv, FPSCR
	vmovpl.f64	d0, d1
	mov	pc, lr
.L200:
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
	cmp	r0, #0
	ldr	r3, .L208
	beq	.L204
	ldr	r1, .L208+4
.L205:
	and	r2, r0, #63
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	lsrs	r0, r0, #6
	strb	r2, [r3], #1
	bne	.L205
.L204:
	mov	r2, #0
	ldr	r0, .L208
	strb	r2, [r3]
	mov	pc, lr
.L209:
	.align	2
.L208:
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
	ldr	r3, .L211
	sub	r0, r0, #1
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	mov	pc, lr
.L212:
	.align	2
.L211:
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
	ldr	r2, .L215
	ldr	r0, .L215+4
	ldr	ip, [r2, #8]
	ldr	r3, [r2, #12]
	mul	r0, ip, r0
	ldr	r1, .L215+8
	str	lr, [sp, #-4]!
	mla	r0, r1, r3, r0
	umull	r3, lr, ip, r1
	adds	r3, r3, #1
	adc	r0, r0, lr
	str	r0, [r2, #12]
	str	r3, [r2, #8]
	lsr	r0, r0, #1
	ldr	pc, [sp], #4
.L216:
	.align	2
.L215:
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
	beq	.L223
	ldr	r3, [r1]
	str	r1, [r0, #4]
	str	r3, [r0]
	str	r0, [r1]
	ldr	r3, [r0]
	cmp	r3, #0
	strne	r0, [r3, #4]
	mov	pc, lr
.L223:
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
	ldr	r2, [r0, #4]
	cmp	r2, #0
	strne	r3, [r2]
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
	ldr	r6, [r2]
	sub	sp, sp, #12
	cmp	r6, #0
	mov	r10, r2
	mov	r7, r0
	mov	r5, r3
	ldr	r9, [sp, #48]
	str	r1, [sp, #4]
	beq	.L234
	mov	r4, r1
	mov	fp, #0
	b	.L236
.L249:
	cmp	r6, fp
	beq	.L234
.L236:
	mov	r1, r4
	mov	r0, r7
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	mov	r8, r4
	add	fp, fp, #1
	add	r4, r4, r5
	bne	.L249
.L233:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L234:
	ldr	r8, [sp, #4]
	cmp	r5, #0
	mla	r8, r6, r5, r8
	add	r6, r6, #1
	str	r6, [r10]
	beq	.L233
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
	beq	.L251
	mov	r6, r0
	mov	r9, r3
	mov	r4, r1
	mov	r5, #0
	b	.L253
.L262:
	cmp	r7, r5
	beq	.L251
.L253:
	mov	r1, r4
	mov	r0, r6
	mov	lr, pc
	mov	pc, r8
	cmp	r0, #0
	mov	r10, r4
	add	r5, r5, #1
	add	r4, r4, r9
	bne	.L262
.L250:
	mov	r0, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L251:
	mov	r10, #0
	b	.L250
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
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bhi	.L265
.L266:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #4
	bls	.L266
.L265:
	cmp	r3, #43
	beq	.L267
	cmp	r3, #45
	bne	.L287
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r3, r0, #1
	sub	r2, r1, #48
	cmp	r2, #9
	bhi	.L276
	mov	ip, #1
.L270:
	mov	r0, #0
.L273:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	add	r0, r0, r0, lsl #2
	rsb	r0, r2, r0, lsl #1
	sub	r2, r1, #48
	cmp	r2, #9
	bls	.L273
	cmp	ip, #0
	movne	pc, lr
.L271:
	rsb	r0, r0, #0
	mov	pc, lr
.L287:
	ldrb	r1, [r0]	@ zero_extendqisi2
	sub	r2, r1, #48
	cmp	r2, #9
	movls	r3, r0
	bhi	.L286
.L285:
	mov	ip, #0
	b	.L270
.L267:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	add	r3, r0, #1
	sub	r2, r1, #48
	cmp	r2, #9
	bls	.L285
.L286:
	mov	r0, #0
	b	.L271
.L276:
	mov	r0, #0
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
	bne	.L313
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	add	ip, r0, #1
	sub	r2, lr, #48
	cmp	r2, #9
	bhi	.L301
	mov	r4, #1
.L295:
	mov	r0, #0
	mov	r1, r0
.L298:
	lsl	lr, r1, #2
	lsl	r3, r0, #2
	adds	r3, r3, r0
	orr	lr, lr, r0, lsr #30
	adc	r1, r1, lr
	adds	r3, r3, r3
	ldrb	lr, [ip, #1]!	@ zero_extendqisi2
	adc	r1, r1, r1
	subs	r0, r3, r2
	sbc	r1, r1, r2, asr #31
	sub	r2, lr, #48
	cmp	r2, #9
	bls	.L298
	cmp	r4, #0
	popne	{r4, pc}
.L296:
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	pop	{r4, pc}
.L313:
	ldrb	lr, [r0]	@ zero_extendqisi2
	sub	r2, lr, #48
	cmp	r2, #9
	movls	ip, r0
	bhi	.L312
.L311:
	mov	r4, #0
	b	.L295
.L292:
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	add	ip, r0, #1
	sub	r2, lr, #48
	cmp	r2, #9
	bls	.L311
.L312:
	mov	r0, #0
	mov	r1, r0
	b	.L296
.L301:
	mov	r0, #0
	mov	r1, r0
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
	subs	r4, r2, #0
	ldr	r9, [sp, #32]
	beq	.L315
	mov	r10, r0
	mov	r8, r1
	mov	r7, r3
	b	.L318
.L325:
	ble	.L314
	sub	r4, r4, r5
	cmp	r4, #0
	add	r8, r6, r7
	beq	.L315
.L318:
	lsr	r5, r4, #1
	mla	r6, r7, r5, r8
	mov	r0, r10
	mov	r1, r6
	mov	lr, pc
	mov	pc, r9
	cmp	r0, #0
	sub	r4, r4, #1
	bge	.L325
	mov	r4, r5
	cmp	r4, #0
	bne	.L318
.L315:
	mov	r6, #0
.L314:
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
	ldr	r10, [sp, #40]
	ldr	r9, [sp, #44]
	beq	.L327
	mov	fp, r0
	mov	r8, r1
	mov	r7, r3
	b	.L330
.L339:
	asrgt	r5, r4, #1
	addgt	r8, r6, r7
	subs	r4, r5, #0
	beq	.L327
.L330:
	asr	r5, r4, #1
	mla	r6, r7, r5, r8
	mov	r2, r9
	mov	r0, fp
	mov	r1, r6
	mov	lr, pc
	mov	pc, r10
	cmp	r0, #0
	sub	r4, r4, #1
	bne	.L339
.L326:
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L327:
	mov	r6, #0
	b	.L326
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
	mov	r3, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r3, [r4]
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
	mov	r3, r1
	push	{r4, lr}
	mov	r1, r2
	mov	r4, r0
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r0
	str	r1, [r4, #4]
	mov	r0, r4
	str	r3, [r4]
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
	cmp	r1, r3
	cmpne	r3, #0
	beq	.L352
.L353:
	ldr	r3, [r0, #4]!
	cmp	r3, r1
	cmpne	r3, #0
	bne	.L353
.L352:
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
	b	.L368
.L369:
	ldr	r2, [r1, #4]!
	ldr	ip, [r0, #4]!
.L368:
	subs	r3, ip, #0
	movne	r3, #1
	cmp	ip, r2
	movne	r3, #0
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L369
	cmp	ip, r2
	bcc	.L363
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L363:
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
.L371:
	ldr	r3, [r1], #4
	cmp	r3, #0
	str	r3, [r2, #4]!
	bne	.L371
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
	beq	.L375
.L376:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L376
.L375:
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
	beq	.L385
	push	{r4, r5, lr}
	b	.L381
.L382:
	subs	r2, r2, #1
	beq	.L386
.L381:
	mov	r5, r0
	ldr	lr, [r0], #4
	mov	r4, r1
	ldr	ip, [r1], #4
	subs	r3, lr, #0
	movne	r3, #1
	cmp	lr, ip
	movne	r3, #0
	cmp	ip, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L382
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bcc	.L393
	movhi	r0, #1
	movls	r0, #0
	pop	{r4, r5, pc}
.L393:
	mvn	r0, #0
	pop	{r4, r5, pc}
.L386:
	mov	r0, r2
	pop	{r4, r5, pc}
.L385:
	mov	r0, r2
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
	beq	.L399
	mov	r3, r0
.L396:
	mov	r0, r3
	ldr	ip, [r3], #4
	cmp	ip, r1
	moveq	pc, lr
	subs	r2, r2, #1
	bne	.L396
.L399:
	mov	r0, r2
	mov	pc, lr
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
	bne	.L404
	b	.L409
.L405:
	subs	r2, r2, #1
	beq	.L409
.L404:
	ldr	ip, [r0]
	ldr	r3, [r1]
	add	r0, r0, #4
	cmp	ip, r3
	add	r1, r1, #4
	beq	.L405
	bcc	.L412
	movhi	r0, #1
	movls	r0, #0
	mov	pc, lr
.L409:
	mov	r0, r2
	mov	pc, lr
.L412:
	mvn	r0, #0
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
	cmp	r2, #0
	push	{r4, lr}
	mov	r4, r0
	lslne	r2, r2, #2
	blne	memcpy
.L414:
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
	sub	r3, r0, r1
	cmp	r3, r2, lsl #2
	lsl	ip, r2, #2
	bcs	.L432
	cmp	r2, #0
	moveq	pc, lr
	add	r3, r1, ip
	add	r2, r0, ip
.L423:
	ldr	ip, [r3, #-4]!
	cmp	r1, r3
	str	ip, [r2, #-4]!
	bne	.L423
	mov	pc, lr
.L432:
	cmp	r2, #0
	moveq	pc, lr
	sub	r2, r2, #1
	sub	r3, r0, #4
.L424:
	ldr	ip, [r1], #4
	sub	r2, r2, #1
	cmn	r2, #1
	str	ip, [r3, #4]!
	bne	.L424
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
	cmp	r2, #0
	sub	r2, r2, #1
	moveq	pc, lr
	mov	r3, r0
.L435:
	sub	r2, r2, #1
	cmn	r2, #1
	str	r1, [r3], #4
	bne	.L435
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
	bcs	.L441
	cmp	r2, #0
	add	r3, r0, r2
	add	r1, r1, r2
	moveq	pc, lr
.L443:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	cmp	r0, r3
	strb	r2, [r1, #-1]!
	bne	.L443
	mov	pc, lr
.L441:
	moveq	pc, lr
	cmp	r2, #0
	moveq	pc, lr
	sub	r3, r1, #1
	add	r2, r0, r2
.L444:
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	cmp	r0, r2
	strb	r1, [r3, #1]!
	bne	.L444
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
	mov	ip, r1
	push	{r4, lr}
	rsb	r3, r2, #0
	sub	r4, r2, #32
	lsl	r1, r1, r2
	and	r3, r3, #63
	rsb	lr, r2, #32
	orr	r1, r1, r0, lsl r4
	orr	r1, r1, r0, lsr lr
	rsb	r4, r3, #32
	lsr	lr, r0, r3
	orr	r1, r1, ip, lsr r3
	orr	lr, lr, ip, lsl r4
	sub	r3, r3, #32
	orr	lr, lr, ip, lsr r3
	orr	r0, lr, r0, lsl r2
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
	rsb	r3, r2, #0
	rsb	r4, r2, #32
	lsr	r0, r0, r2
	and	r3, r3, #63
	sub	lr, r2, #32
	orr	r0, r0, r1, lsl r4
	orr	r0, r0, r1, lsr lr
	sub	r4, r3, #32
	lsl	lr, r1, r3
	orr	r0, r0, ip, lsl r3
	orr	lr, lr, ip, lsl r4
	rsb	r3, r3, #32
	orr	lr, lr, ip, lsr r3
	orr	r1, lr, r1, lsr r2
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
	eor	r0, r1, r1, ror #16
	lsr	r3, r3, #8
	lsr	r0, r0, #8
	bic	r3, r3, #65280
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
	mov	r2, #0
	b	.L472
.L470:
	cmp	r2, #32
	beq	.L474
.L472:
	lsr	r3, r0, r2
	ands	r3, r3, #1
	add	r2, r2, #1
	beq	.L470
	mov	r0, r2
	mov	pc, lr
.L474:
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
	beq	.L478
	ands	r0, r3, #1
	movne	pc, lr
	mov	r0, #1
.L477:
	asr	r3, r3, #1
	tst	r3, #1
	add	r0, r0, #1
	beq	.L477
	mov	pc, lr
.L478:
	mov	r0, r3
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
	vldr.32	s15, .L485
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L484
	vldr.32	s15, .L485+4
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L484:
	mov	r0, #1
	mov	pc, lr
.L486:
	.align	2
.L485:
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
	vldr.64	d7, .L495
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L494
	vldr.64	d7, .L495+8
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L494:
	mov	r0, #1
	mov	pc, lr
.L496:
	.align	3
.L495:
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
	vmov.f32	s15, #2.0e+0
	vmov.f32	s14, #5.0e-1
	cmp	r0, #0
	vmovlt.f32	s15, s14
	tst	r0, #1
	beq	.L501
.L502:
	vmul.f32	s0, s0, s15
.L501:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	tst	r0, #1
	vmul.f32	s15, s15, s15
	add	r3, r0, r0, lsr #31
	bne	.L502
.L511:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f32	s15, s15, s15
	add	r3, r0, r0, lsr #31
	bne	.L502
	b	.L511
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
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d7, d6
	tst	r0, #1
	beq	.L515
.L516:
	vmul.f64	d0, d0, d7
.L515:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L516
.L525:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L516
	b	.L525
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
	vmov.f64	d7, #2.0e+0
	vmov.f64	d6, #5.0e-1
	cmp	r0, #0
	vmovlt.f64	d7, d6
	tst	r0, #1
	beq	.L529
.L530:
	vmul.f64	d0, d0, d7
.L529:
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	moveq	pc, lr
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L530
.L539:
	asr	r0, r3, #1
	tst	r0, #1
	vmul.f64	d7, d7, d7
	add	r3, r0, r0, lsr #31
	bne	.L530
	b	.L539
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
	mov	ip, r0
	str	lr, [sp, #-4]!
	add	r2, r1, r2
.L542:
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	ldrb	lr, [r1], #1	@ zero_extendqisi2
	eor	r3, r3, lr
	cmp	r2, r1
	strb	r3, [ip, #-1]
	bne	.L542
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
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	mov	r3, r0
	beq	.L552
.L553:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L553
.L552:
	cmp	r2, #0
	beq	.L554
	sub	r1, r1, #1
.L555:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	strb	ip, [r3], #1
	moveq	pc, lr
	subs	r2, r2, #1
	bne	.L555
.L554:
	mov	r2, #0
	strb	r2, [r3]
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
	mov	r3, r0
	beq	.L569
	mov	r0, #0
	sub	r3, r3, #1
.L567:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	moveq	pc, lr
	add	r0, r0, #1
	cmp	r1, r0
	bne	.L567
	mov	pc, lr
.L569:
	mov	r0, r1
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
	beq	.L577
	sub	r1, r1, #1
.L573:
	mov	r2, r1
	b	.L576
.L575:
	cmp	r3, ip
	moveq	pc, lr
.L576:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L575
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L573
.L577:
	mov	r0, ip
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
.L582:
	mov	ip, r3
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r1, r2
	moveq	r0, ip
	cmp	r2, #0
	bne	.L582
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
	ldrb	r5, [r1]	@ zero_extendqisi2
	mov	r2, r0
	cmp	r5, #0
	beq	.L595
	mov	r7, r1
	mov	r3, r1
.L587:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L587
	subs	r3, r3, r7
	addne	r6, r7, r3
	bne	.L593
	b	.L595
.L601:
	cmp	r3, #0
	beq	.L600
.L593:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r2
	cmp	r3, r5
	mov	lr, r2
	add	r2, r2, #1
	bne	.L601
	mov	r2, r7
	b	.L589
.L591:
	ldrb	r3, [lr, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L602
.L589:
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r4, r2
	subs	ip, r1, #0
	movne	ip, #1
	cmp	r1, r3
	movne	ip, #0
	add	r2, r2, #1
	cmp	r6, r2
	moveq	ip, #0
	andne	ip, ip, #1
	cmp	ip, #0
	bne	.L591
.L590:
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, r3
	popeq	{r4, r5, r6, r7, pc}
	add	r2, r0, #1
	b	.L593
.L600:
	mov	r0, r3
	pop	{r4, r5, r6, r7, pc}
.L602:
	mov	r4, r2
	b	.L590
.L595:
	mov	r0, r2
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
	bmi	.L613
	movle	pc, lr
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movpl	pc, lr
	vneg.f64	d0, d0
	mov	pc, lr
.L613:
	vcmpe.f64	d1, #0
	vmrs	APSR_nzcv, FPSCR
	movle	pc, lr
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r8, r3, #0
	mov	lr, r0
	popeq	{r4, r5, r6, r7, r8, r9, pc}
	cmp	r1, r8
	bcc	.L622
	sub	r1, r1, r8
	adds	r7, r0, r1
	bcs	.L622
	ldrb	r9, [r2]	@ zero_extendqisi2
	add	r6, r0, r8
	b	.L619
.L616:
	cmp	r7, lr
	add	r6, r6, #1
	bcc	.L622
.L619:
	ldrb	r1, [lr]	@ zero_extendqisi2
	mov	r0, lr
	cmp	r1, r9
	add	lr, lr, #1
	bne	.L616
	cmp	r8, #1
	popeq	{r4, r5, r6, r7, r8, r9, pc}
	mov	ip, r2
	sub	r1, lr, #1
	b	.L617
.L618:
	cmp	r5, #1
	popeq	{r4, r5, r6, r7, r8, r9, pc}
.L617:
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	sub	r5, r6, r1
	cmp	r4, r3
	beq	.L618
	b	.L616
.L622:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, pc}
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
	blne	memmove
.L633:
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
	bmi	.L660
	vmov.f64	d7, #1.0e+0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	movge	r2, #0
	blt	.L661
.L641:
	mov	r3, #0
	vmov.f64	d6, #5.0e-1
	vmov.f64	d7, #1.0e+0
.L647:
	vmul.f64	d0, d0, d6
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	add	r3, r3, #1
	bge	.L647
.L648:
	cmp	r2, #0
	str	r3, [r0]
	moveq	pc, lr
.L643:
	vneg.f64	d0, d0
	mov	pc, lr
.L661:
	vmov.f64	d7, #5.0e-1
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L644
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L653
.L644:
	mov	r3, #0
	str	r3, [r0]
	mov	pc, lr
.L660:
	vmov.f64	d6, #-1.0e+0
	vcmpe.f64	d0, d6
	vneg.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	vmovls.f64	d0, d7
	movls	r2, #1
	bls	.L641
	vmov.f64	d6, #-5.0e-1
	vcmpe.f64	d0, d6
	vmrs	APSR_nzcv, FPSCR
	movle	r3, #0
	vmovle.f64	d0, d7
	strle	r3, [r0]
	ble	.L643
.L651:
	mov	r2, #1
.L642:
	vmov.f64	d0, d7
	mov	r3, #0
	vmov.f64	d7, #5.0e-1
.L649:
	vadd.f64	d0, d0, d0
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	sub	r3, r3, #1
	bmi	.L649
	b	.L648
.L653:
	vmov.f64	d7, d0
	mov	r2, #0
	b	.L642
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
	beq	.L665
	mov	r4, r0
	mov	r0, #0
	mov	r1, r0
.L664:
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
	bne	.L664
	pop	{r4, r5, pc}
.L665:
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
	cmp	r1, r0
	mov	r3, #1
	bcc	.L670
	b	.L671
.L673:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L682
.L670:
	cmp	r1, #0
	bge	.L673
.L671:
	mov	ip, #0
.L676:
	cmp	r1, r0
	subls	r0, r0, r1
	orrls	ip, ip, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L676
.L674:
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
.L682:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L671
	b	.L674
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
	beq	.L685
	push	{r4, lr}
	lsl	r0, r0, #8
	bl	__clzsi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L685:
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
	mov	r3, r0
	asr	r2, r1, #31
	cmp	r1, r2
	cmpeq	r3, r2
	eor	r0, r0, r1, asr #31
	eor	r1, r1, r1, asr #31
	beq	.L692
	push	{r4, lr}
	bl	__clzdi2
	sub	r0, r0, #1
	pop	{r4, pc}
.L692:
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
	beq	.L700
	mov	r0, #0
.L699:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L699
	mov	pc, lr
.L700:
	mov	r0, r3
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
	cmp	r0, r1
	push	{r4, lr}
	bic	ip, r2, #7
	lsr	r4, r2, #3
	bcc	.L704
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L720
.L704:
	cmp	r4, #0
	beq	.L707
	mov	r3, r1
	mov	lr, r0
	add	r4, r1, r4, lsl #3
.L708:
	vldmia.64	r3!, {d7}	@ int
	cmp	r3, r4
	vstmia.64	lr!, {d7}	@ int
	bne	.L708
.L707:
	cmp	r2, ip
	popls	{r4, pc}
	sub	ip, ip, #1
	add	r3, r1, ip
	sub	r1, r1, #1
	add	r1, r1, r2
	add	r0, r0, ip
.L709:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	ip, [r0, #1]!
	bne	.L709
	pop	{r4, pc}
.L720:
	cmp	r2, #0
	popeq	{r4, pc}
	add	r2, r0, r2
.L710:
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r0, [r2, #-1]!
	bne	.L710
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
	cmp	r0, r1
	push	{r4, lr}
	lsr	r4, r2, #1
	bcc	.L722
	add	ip, r1, r2
	cmp	ip, r0
	bcs	.L738
.L722:
	cmp	r4, #0
	beq	.L725
	sub	r3, r1, #2
	add	r4, r3, r4, lsl #1
	sub	ip, r0, #2
.L726:
	ldrsh	lr, [r3, #2]!
	cmp	r3, r4
	strh	lr, [ip, #2]!	@ movhi
	bne	.L726
.L725:
	tst	r2, #1
	subne	r2, r2, #1
	ldrbne	r3, [r1, r2]	@ zero_extendqisi2
	strbne	r3, [r0, r2]
	pop	{r4, pc}
.L738:
	cmp	r2, #0
	popeq	{r4, pc}
	add	r3, r0, r2
.L727:
	ldrb	r2, [ip, #-1]!	@ zero_extendqisi2
	cmp	ip, r1
	strb	r2, [r3, #-1]!
	bne	.L727
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
	cmp	r0, r1
	push	{r4, r5, lr}
	bic	ip, r2, #3
	lsr	r5, r2, #2
	bcc	.L740
	add	r3, r1, r2
	cmp	r3, r0
	bcs	.L756
.L740:
	cmp	r5, #0
	beq	.L743
	sub	r3, r1, #4
	add	r5, r3, r5, lsl #2
	sub	lr, r0, #4
.L744:
	ldr	r4, [r3, #4]!
	cmp	r3, r5
	str	r4, [lr, #4]!
	bne	.L744
.L743:
	cmp	r2, ip
	popls	{r4, r5, pc}
	sub	ip, ip, #1
	add	r3, r1, ip
	sub	r1, r1, #1
	add	r1, r1, r2
	add	r0, r0, ip
.L745:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r0, #1]!
	bne	.L745
	pop	{r4, r5, pc}
.L756:
	cmp	r2, #0
	popeq	{r4, r5, pc}
	add	r0, r0, r2
.L746:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r0, #-1]!
	bne	.L746
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
	mov	r3, #0
.L769:
	rsb	r2, r3, #15
	asr	r2, r0, r2
	tst	r2, #1
	bne	.L767
	add	r3, r3, #1
	cmp	r3, #16
	bne	.L769
.L767:
	mov	r0, r3
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
	mov	r3, #0
.L773:
	asr	r2, r0, r3
	tst	r2, #1
	bne	.L771
	add	r3, r3, #1
	cmp	r3, #16
	bne	.L773
.L771:
	mov	r0, r3
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
	vldr.32	s15, .L781
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	vsubge.f32	s0, s0, s15
	vcvtge.s32.f32	s0, s0
	vcvtlt.s32.f32	s15, s0
	vmovge	r3, s0	@ int
	addge	r0, r3, #32768
	vmovlt	r0, s15	@ int
	mov	pc, lr
.L782:
	.align	2
.L781:
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
.L784:
	asr	r2, r0, r3
	add	r3, r3, #1
	and	r2, r2, #1
	cmp	r3, #16
	add	r1, r1, r2
	bne	.L784
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
	mov	r1, #0
	mov	r3, r1
.L787:
	asr	r2, r0, r3
	add	r3, r3, #1
	and	r2, r2, #1
	cmp	r3, #16
	add	r1, r1, r2
	bne	.L787
	mov	r0, r1
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
	beq	.L792
	mov	r0, #0
.L791:
	ands	r2, r3, #1
	mvnne	r2, #0
	lsrs	r3, r3, #1
	and	r2, r2, r1
	add	r0, r0, r2
	lsl	r1, r1, #1
	bne	.L791
	mov	pc, lr
.L792:
	mov	r0, r3
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
	beq	.L798
	cmp	r1, #0
	beq	.L799
	mov	r0, #0
.L797:
	ands	r3, r1, #1
	mvnne	r3, #0
	lsrs	r1, r1, #1
	and	r3, r3, r2
	add	r0, r0, r3
	lsl	r2, r2, #1
	bne	.L797
	mov	pc, lr
.L798:
	mov	r0, r2
	mov	pc, lr
.L799:
	mov	r0, r1
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
	cmp	r0, r1
	mov	r3, #1
	bhi	.L803
	b	.L804
.L806:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L815
.L803:
	cmp	r1, #0
	bge	.L806
.L804:
	mov	ip, #0
.L809:
	cmp	r1, r0
	subls	r0, r0, r1
	orrls	ip, ip, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L809
.L807:
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
.L815:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L804
	b	.L807
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
	bmi	.L818
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L818:
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
	bmi	.L821
	movgt	r0, #1
	movle	r0, #0
	mov	pc, lr
.L821:
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
	cmp	r1, #0
	push	{r4, lr}
	rsblt	r1, r1, #0
	mov	lr, r0
	movlt	r4, #1
	blt	.L826
	beq	.L829
	mov	r4, #0
.L826:
	mov	r0, #0
	mov	r3, r0
.L828:
	ands	ip, r1, #1
	mvnne	ip, #0
	asrs	r1, r1, #1
	movne	r2, #1
	moveq	r2, #0
	add	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #31
	movhi	r2, #0
	andls	r2, r2, #1
	and	ip, ip, lr
	cmp	r2, #0
	add	r0, r0, ip
	lsl	lr, lr, #1
	bne	.L828
	cmp	r4, #0
	rsbne	r0, r0, #0
	pop	{r4, pc}
.L829:
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
	cmp	r0, #0
	str	lr, [sp, #-4]!
	movlt	lr, #1
	rsblt	r0, r0, #0
	movge	lr, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	eorlt	lr, lr, #1
	cmp	r0, r1
	mov	ip, r0
	mov	r3, #1
	bls	.L839
.L838:
	lsls	r3, r3, #1
	movne	r2, #1
	moveq	r2, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	r2, #0
	andhi	r2, r2, #1
	cmp	r2, #0
	bne	.L838
	cmp	r3, #0
	moveq	r0, r3
	beq	.L840
.L839:
	mov	r0, #0
.L843:
	cmp	r1, ip
	subls	ip, ip, r1
	orrls	r0, r0, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L843
.L840:
	cmp	lr, #0
	rsbne	r0, r0, #0
	ldr	pc, [sp], #4
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
	rsblt	ip, ip, #0
	str	lr, [sp, #-4]!
	movlt	lr, #1
	movge	lr, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	cmp	ip, r1
	mov	r0, ip
	mov	r3, #1
	bls	.L861
.L856:
	lsls	r3, r3, #1
	movne	r2, #1
	moveq	r2, #0
	lsl	r1, r1, #1
	cmp	ip, r1
	movls	r2, #0
	andhi	r2, r2, #1
	cmp	r2, #0
	bne	.L856
	cmp	r3, #0
	beq	.L858
.L861:
	cmp	r1, r0
	subls	r0, r0, r1
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L861
.L858:
	cmp	lr, #0
	rsbne	r0, r0, #0
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
	cmp	r1, r0
	mov	r3, #1
	push	{r4, lr}
	bcc	.L873
	b	.L874
.L876:
	cmp	lr, #0
	cmpne	r4, r0
	lsr	r1, ip, #16
	lsr	r3, lr, #16
	bcs	.L886
.L873:
	lsl	ip, r1, #17
	tst	r1, #32768
	lsl	lr, r3, #17
	lsr	r4, ip, #16
	beq	.L876
.L874:
	mov	ip, #0
.L879:
	cmp	r1, r0
	sub	lr, r0, r1
	orrls	ip, ip, r3
	lslls	r0, lr, #16
	lslls	ip, ip, #16
	lsrls	r0, r0, #16
	lsrls	ip, ip, #16
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L879
.L877:
	cmp	r2, #0
	moveq	r0, ip
	pop	{r4, pc}
.L886:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L874
	b	.L877
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
	cmp	r0, r1
	mov	r3, #1
	bhi	.L888
	b	.L889
.L891:
	lsls	r3, r3, #1
	movne	ip, #1
	moveq	ip, #0
	lsl	r1, r1, #1
	cmp	r0, r1
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L900
.L888:
	cmp	r1, #0
	bge	.L891
.L889:
	mov	ip, #0
.L894:
	cmp	r1, r0
	subls	r0, r0, r1
	orrls	ip, ip, r3
	lsrs	r3, r3, #1
	lsr	r1, r1, #1
	bne	.L894
.L892:
	cmp	r2, #0
	moveq	r0, ip
	mov	pc, lr
.L900:
	cmp	r3, #0
	moveq	ip, r3
	bne	.L889
	b	.L892
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
	beq	.L902
	mov	r3, #0
	sub	r2, r2, #32
	lsl	r1, r0, r2
	mov	r0, r3
	mov	pc, lr
.L902:
	cmp	r2, #0
	moveq	pc, lr
	rsb	ip, r2, #32
	lsl	r1, r1, r2
	lsl	r3, r0, r2
	orr	r1, r1, r0, lsr ip
	mov	r0, r3
	mov	pc, lr
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
	beq	.L907
	sub	r2, r2, #32
	asr	r3, r1, #31
	asr	r0, r1, r2
	mov	r1, r3
	mov	pc, lr
.L907:
	cmp	r2, #0
	moveq	pc, lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	asr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	mov	pc, lr
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
	eor	r0, r1, r1, ror #16
	lsr	r3, r3, #8
	lsr	r0, r0, #8
	bic	r3, r3, #65280
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
	tst	r3, #240
	add	r1, r2, r1
	moveq	r2, #1
	movne	r2, #0
	lsl	r2, r2, #2
	rsb	r0, r2, #4
	lsr	r3, r3, r0
	tst	r3, #12
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	add	r2, r2, r1
	rsb	r1, r0, #2
	lsr	r3, r3, r1
	tst	r3, #2
	add	r0, r0, r2
	rsb	r2, r3, #2
	movne	r2, #0
	add	r0, r2, r0
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
	blt	.L918
	bgt	.L919
	cmp	r0, r2
	bcc	.L918
	bhi	.L919
	mov	r0, #1
	mov	pc, lr
.L918:
	mov	r0, #0
	mov	pc, lr
.L919:
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
	blt	.L924
	bgt	.L925
	cmp	r0, r2
	bcc	.L924
	movls	r0, #1
	bls	.L921
.L925:
	mov	r0, #2
	sub	r0, r0, #1
	mov	pc, lr
.L924:
	mov	r0, #0
.L921:
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
	tst	r3, #15
	add	r2, r2, r1
	moveq	r1, #1
	movne	r1, #0
	lsl	r1, r1, #2
	lsr	r3, r3, r1
	tst	r3, #3
	moveq	r0, #1
	movne	r0, #0
	lsl	r0, r0, #1
	lsr	r3, r3, r0
	and	r3, r3, #3
	add	r1, r1, r2
	mvn	r2, r3
	ands	r2, r2, #1
	mvnne	r2, #0
	lsr	r3, r3, #1
	rsb	r3, r3, #2
	add	r0, r0, r1
	and	r3, r3, r2
	add	r0, r3, r0
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
	beq	.L928
	mov	r3, #0
	sub	r2, r2, #32
	lsr	r0, r1, r2
	mov	r1, r3
	mov	pc, lr
.L928:
	cmp	r2, #0
	moveq	pc, lr
	rsb	ip, r2, #32
	lsr	r0, r0, r2
	lsr	r3, r1, r2
	orr	r0, r0, r1, lsl ip
	mov	r1, r3
	mov	pc, lr
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
	ldr	lr, .L934
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
	add	r2, r2, r3, lsl #16
	add	r1, r1, r2, lsr #16
	add	r3, r0, r3, lsr #16
	and	r0, r2, lr
	add	r0, r0, r1, lsl #16
	add	r1, r3, r1, lsr #16
	pop	{r4, pc}
.L935:
	.align	2
.L934:
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
	ldr	r6, .L938
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
.L939:
	.align	2
.L938:
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
	ldr	r3, .L942
	eor	r1, r1, r1, lsr #4
	and	r1, r1, #15
	asr	r0, r3, r1
	and	r0, r0, #1
	mov	pc, lr
.L943:
	.align	2
.L942:
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
	eor	r3, r3, r3, lsr #8
	ldr	r2, .L945
	eor	r3, r3, r3, lsr #4
	and	r3, r3, #15
	asr	r0, r2, r3
	and	r0, r0, #1
	mov	pc, lr
.L946:
	.align	2
.L945:
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
	ldr	r2, .L949
	lsr	r3, r0, #1
	orr	r3, r3, r1, lsl #31
	and	r3, r3, r2
	subs	r0, r0, r3
	and	r2, r2, r1, lsr #1
	sbc	r1, r1, r2
	str	lr, [sp, #-4]!
	lsr	r2, r0, #2
	ldr	lr, .L949+4
	orr	r2, r2, r1, lsl #30
	and	r0, r0, lr
	and	r2, r2, lr
	adds	r2, r2, r0
	and	r3, lr, r1, lsr #2
	and	r1, r1, lr
	adc	r3, r3, r1
	lsr	r0, r2, #4
	orr	r0, r0, r3, lsl #28
	ldr	ip, .L949+8
	adds	r2, r0, r2
	adc	r0, r3, r3, lsr #4
	and	r0, r0, ip
	and	r3, r2, ip
	add	r0, r0, r3
	add	r0, r0, r0, lsr #16
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	ldr	pc, [sp], #4
.L950:
	.align	2
.L949:
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
	ldr	r2, .L952
	ldr	r1, .L952+4
	and	r2, r2, r0, lsr #1
	sub	r0, r0, r2
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	add	r2, r2, r0
	ldr	r3, .L952+8
	add	r2, r2, r2, lsr #4
	and	r3, r3, r2
	add	r3, r3, r3, lsr #16
	add	r3, r3, r3, lsr #8
	and	r0, r3, #63
	mov	pc, lr
.L953:
	.align	2
.L952:
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
	mov	r3, r0
	vmov.f64	d0, #1.0e+0
	beq	.L955
.L957:
	vmul.f64	d0, d0, d7
.L955:
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	beq	.L956
	tst	r3, #1
	vmul.f64	d7, d7, d7
	add	r2, r3, r3, lsr #31
	bne	.L957
.L961:
	asr	r3, r2, #1
	tst	r3, #1
	vmul.f64	d7, d7, d7
	add	r2, r3, r3, lsr #31
	bne	.L957
	b	.L961
.L956:
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
	tst	r0, #1
	vmov.f32	s15, s0
	mov	r3, r0
	vmov.f32	s0, #1.0e+0
	beq	.L963
.L965:
	vmul.f32	s0, s0, s15
.L963:
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	beq	.L964
	tst	r3, #1
	vmul.f32	s15, s15, s15
	add	r2, r3, r3, lsr #31
	bne	.L965
.L969:
	asr	r3, r2, #1
	tst	r3, #1
	vmul.f32	s15, s15, s15
	add	r2, r3, r3, lsr #31
	bne	.L965
	b	.L969
.L964:
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
	bcc	.L974
	bhi	.L975
	cmp	r0, r2
	bcc	.L974
	bhi	.L975
	mov	r0, #1
	mov	pc, lr
.L974:
	mov	r0, #0
	mov	pc, lr
.L975:
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
	bcc	.L980
	bhi	.L981
	cmp	r0, r2
	bcc	.L980
	movls	r0, #1
	bls	.L977
.L981:
	mov	r0, #2
	sub	r0, r0, #1
	mov	pc, lr
.L980:
	mov	r0, #0
.L977:
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
