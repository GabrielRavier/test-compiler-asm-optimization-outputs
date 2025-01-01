	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips3
	.abicalls
	.text
	.align	2
	.align	3
	.globl	make_ti
	.set	nomips16
	.set	nomicromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.align	3
	.globl	make_tu
	.set	nomips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.align	3
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beq	$3,$0,.L7
	move	$2,$4

	daddu	$5,$5,$6
	beq	$6,$0,.L21
	daddu	$3,$4,$6

	.align	3
.L9:
	daddiu	$5,$5,-1
	daddiu	$3,$3,-1
	lb	$4,0($5)
	bne	$2,$3,.L9
	sb	$4,0($3)

.L21:
	jr	$31
	nop

	.align	3
.L7:
	beq	$4,$5,.L20
	nop

	beq	$6,$0,.L21
	daddu	$6,$4,$6

	move	$3,$4
	.align	3
.L10:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lb	$4,-1($5)
	bne	$6,$3,.L10
	sb	$4,-1($3)

.L20:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.align	3
	.globl	memccpy
	.set	nomips16
	.set	nomicromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$7,$0,.L27
	andi	$6,$6,0x00ff

	.align	3
.L23:
	lbu	$2,0($5)
	beq	$2,$6,.L36
	sb	$2,0($4)

	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bne	$7,$0,.L23
	daddiu	$4,$4,1

.L27:
	jr	$31
	move	$2,$0

	.align	3
.L36:
	beq	$7,$0,.L27
	nop

	jr	$31
	daddiu	$2,$4,1

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.align	3
	.globl	memchr
	.set	nomips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L43
	andi	$5,$5,0x00ff

	.align	3
.L38:
	lbu	$2,0($4)
	beq	$2,$5,.L48
	nop

	daddiu	$6,$6,-1
	bne	$6,$0,.L38
	daddiu	$4,$4,1

.L43:
	jr	$31
	move	$2,$0

	.align	3
.L48:
	beq	$6,$0,.L43
	move	$2,$4

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.align	3
	.globl	memcmp
	.set	nomips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L54
	nop

	.align	3
.L50:
	lbu	$3,0($4)
	lbu	$2,0($5)
	bne	$3,$2,.L62
	daddiu	$4,$4,1

	daddiu	$6,$6,-1
	bne	$6,$0,.L50
	daddiu	$5,$5,1

.L54:
	jr	$31
	move	$2,$0

	.align	3
.L62:
	beq	$6,$0,.L54
	nop

	move	$2,$3
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.align	3
	.globl	memcpy
	.set	nomips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(memcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beq	$6,$0,.L64
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L64:
	move	$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.align	3
	.globl	memrchr
	.set	nomips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	daddiu	$4,$4,-1
	andi	$5,$5,0x00ff
	.align	3
.L70:
	beq	$6,$4,.L76
	move	$2,$0

	move	$2,$6
	lbu	$3,0($2)
	bne	$3,$5,.L70
	daddiu	$6,$6,-1

.L76:
	jr	$31
	nop

.L69:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.align	3
	.globl	memset
	.set	nomips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L86
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
	sb	$5,0($3)
	.align	3
.L85:
	daddiu	$3,$3,1
	bnel	$6,$3,.L85
	sb	$5,0($3)

.L86:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.align	3
	.globl	stpcpy
	.set	nomips16
	.set	nomicromips
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	lb	$3,0($5)
	beq	$3,$0,.L95
	sb	$3,0($4)

	.align	3
.L89:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	lb	$3,0($5)
	bne	$3,$0,.L89
	sb	$3,0($2)

.L95:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.align	3
	.globl	strchrnul
	.set	nomips16
	.set	nomicromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	lb	$3,0($4)
	beq	$3,$0,.L108
	andi	$5,$5,0x00ff

	andi	$3,$3,0x00ff
	.align	3
.L106:
	beq	$3,$5,.L107
	nop

	daddiu	$2,$2,1
	lb	$3,0($2)
	bne	$3,$0,.L106
	andi	$3,$3,0x00ff

.L108:
	jr	$31
	nop

.L107:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.align	3
	.globl	strchr
	.set	nomips16
	.set	nomicromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	.align	3
.L111:
	lb	$3,0($2)
	beq	$3,$5,.L114
	nop

	bne	$3,$0,.L111
	daddiu	$2,$2,1

	move	$2,$0
.L114:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.align	3
	.globl	strcmp
	.set	nomips16
	.set	nomicromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	lb	$3,0($5)
	bnel	$2,$3,.L121
	andi	$2,$2,0x00ff

	.align	3
.L116:
	beq	$2,$0,.L121
	andi	$2,$2,0x00ff

	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,0($4)
	lb	$3,0($5)
	beq	$2,$3,.L116
	nop

	andi	$2,$2,0x00ff
.L121:
	andi	$3,$3,0x00ff
	jr	$31
	subu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.align	3
	.globl	strlen
	.set	nomips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	beq	$2,$0,.L128
	move	$2,$4

	daddiu	$2,$2,1
	.align	3
.L129:
	lb	$5,0($2)
	bnel	$5,$0,.L129
	daddiu	$2,$2,1

.L123:
	.align	3
.L128:
	jr	$31
	dsubu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.align	3
	.globl	strncmp
	.set	nomips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L135
	nop

	lbu	$2,0($4)
	beql	$2,$0,.L146
	lbu	$3,0($5)

	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	.align	3
.L133:
	lbu	$3,0($5)
	beql	$3,$0,.L146
	lbu	$3,0($5)

	beql	$4,$6,.L146
	lbu	$3,0($5)

	bnel	$3,$2,.L146
	lbu	$3,0($5)

	daddiu	$4,$4,1
	lbu	$2,0($4)
	bne	$2,$0,.L133
	daddiu	$5,$5,1

	lbu	$3,0($5)
.L146:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L135:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.align	3
	.globl	swab
	.set	nomips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$6,2
	bne	$2,$0,.L152
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	daddu	$6,$4,$6
	.align	3
.L149:
	lbu	$2,1($4)
	sb	$2,0($5)
	lbu	$2,0($4)
	sb	$2,1($5)
	daddiu	$4,$4,2
	bne	$4,$6,.L149
	daddiu	$5,$5,2

.L152:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.align	3
	.globl	isalpha
	.set	nomips16
	.set	nomicromips
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.align	3
	.globl	isascii
	.set	nomips16
	.set	nomicromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sltu	$2,$4,128

	.set	macro
	.set	reorder
	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.align	3
	.globl	isblank
	.set	nomips16
	.set	nomicromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L159
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L159:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.align	3
	.globl	iscntrl
	.set	nomips16
	.set	nomicromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$4,32
	bne	$3,$0,.L164
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L164:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.align	3
	.globl	isdigit
	.set	nomips16
	.set	nomicromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	jr	$31
	sltu	$2,$2,10

	.set	macro
	.set	reorder
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.align	3
	.globl	isgraph
	.set	nomips16
	.set	nomicromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-33
	jr	$31
	sltu	$2,$2,94

	.set	macro
	.set	reorder
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.align	3
	.globl	islower
	.set	nomips16
	.set	nomicromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-97
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	islower
	.size	islower, .-islower
	.align	2
	.align	3
	.globl	isprint
	.set	nomips16
	.set	nomicromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-32
	jr	$31
	sltu	$2,$2,95

	.set	macro
	.set	reorder
	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.align	3
	.globl	isspace
	.set	nomips16
	.set	nomicromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L176
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L176:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.align	3
	.globl	isupper
	.set	nomips16
	.set	nomicromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-65
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.align	3
	.globl	iswcntrl
	.set	nomips16
	.set	nomicromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$4,32
	bne	$3,$0,.L186
	li	$2,1			# 0x1

	addiu	$3,$4,-127
	sltu	$3,$3,33
	bne	$3,$0,.L186
	addiu	$3,$4,-8232

	sltu	$3,$3,2
	bne	$3,$0,.L186
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$4,$2
	sltu	$2,$2,3
.L186:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.align	3
	.globl	iswdigit
	.set	nomips16
	.set	nomicromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	jr	$31
	sltu	$2,$2,10

	.set	macro
	.set	reorder
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.align	3
	.globl	iswprint
	.set	nomips16
	.set	nomicromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,255
	bne	$2,$0,.L197
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,.L194
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,.L194
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bne	$3,$0,.L194
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L195
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L197:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

	.align	3
.L194:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L195:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.align	3
	.globl	iswxdigit
	.set	nomips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$3,$4,-48
	sltu	$3,$3,10
	bne	$3,$0,.L201
	ori	$4,$4,0x20

	addiu	$4,$4,-97
	jr	$31
	sltu	$2,$4,6

	.align	3
.L201:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.align	3
	.globl	toascii
	.set	nomips16
	.set	nomicromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	andi	$2,$4,0x7f

	.set	macro
	.set	reorder
	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.align	3
	.globl	fdim
	.set	nomips16
	.set	nomicromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$f12,$f12
	nop
	bc1t	.L208
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L209
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L212
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L208:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L209:
	jr	$31
	mov.d	$f0,$f13

	.align	3
.L212:
	dmtc1	$0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.align	3
	.globl	fdimf
	.set	nomips16
	.set	nomicromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$f12,$f12
	nop
	bc1t	.L217
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L218
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L221
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L217:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L218:
	jr	$31
	mov.s	$f0,$f13

	.align	3
.L221:
	mtc1	$0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.align	3
	.globl	fmax
	.set	nomips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	c.un.d	$f12,$f12
	nop
	bc1t	.L229
	sdc1	$f13,0($sp)

	dmfc1	$2,$f12
	c.un.d	$f13,$f13
	nop
	bc1t	.L230
	mov.d	$f0,$f13

	dsrl	$3,$2,63
	ld	$4,0($sp)
	dsrl	$4,$4,63
	beql	$3,$4,.L225
	ldc1	$f0,0($sp)

	bne	$3,$0,.L223
	nop

.L230:
	dmtc1	$2,$f0
.L223:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L225:
	c.lt.d	$f12,$f0
	nop
	bc1t	.L223
	nop

	b	.L230
	nop

	.align	3
.L229:
	b	.L223
	ldc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.align	3
	.globl	fmaxf
	.set	nomips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	c.un.s	$f12,$f12
	nop
	bc1t	.L241
	swc1	$f13,0($sp)

	mfc1	$2,$f12
	c.un.s	$f13,$f13
	nop
	bc1t	.L242
	mov.s	$f0,$f13

	li	$5,-2147483648			# 0xffffffff80000000
	and	$3,$2,$5
	lw	$4,0($sp)
	and	$4,$4,$5
	beq	$3,$4,.L237
	move	$6,$3

	bne	$6,$0,.L235
	nop

.L242:
	mtc1	$2,$f0
.L235:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L237:
	lwc1	$f0,0($sp)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L235
	nop

	b	.L242
	nop

	.align	3
.L241:
	b	.L235
	lwc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.align	3
	.globl	fmaxl
	.set	nomips16
	.set	nomicromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,112,$31		# vars= 32, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$7,$f13
	dmfc1	$6,$f12
	nop
	move	$18,$6
	move	$19,$7
	dmfc1	$7,$f15
	dmfc1	$6,$f14
	nop
	move	$16,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$17,$7

	bne	$2,$0,.L247
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L254
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beq	$2,$3,.L249
	ld	$25,%call16(__lttf2)($28)

	bne	$2,$0,.L247
	nop

	b	.L259
	move	$16,$18

	.align	3
.L249:
	sd	$16,0($sp)
	sd	$17,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$18,16($sp)
	sd	$19,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L247
	nop

.L254:
	move	$16,$18
.L259:
	move	$17,$19
.L247:
	dmtc1	$16,$f0
	dmtc1	$17,$f2
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.align	3
	.globl	fmin
	.set	nomips16
	.set	nomicromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	dmfc1	$2,$f13
	c.un.d	$f12,$f12
	nop
	bc1t	.L260
	mov.d	$f0,$f13

	c.un.d	$f13,$f13
	nop
	bc1t	.L267
	ld	$3,0($sp)

	dsrl	$3,$3,63
	dsrl	$4,$2,63
	beql	$3,$4,.L262
	ldc1	$f0,0($sp)

	bne	$3,$0,.L260
	mov.d	$f0,$f12

.L272:
	dmtc1	$2,$f0
.L260:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L262:
	c.lt.d	$f0,$f13
	nop
	bc1t	.L260
	nop

	b	.L272
	nop

	.align	3
.L267:
	b	.L260
	ldc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.align	3
	.globl	fminf
	.set	nomips16
	.set	nomicromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	mfc1	$2,$f13
	c.un.s	$f12,$f12
	nop
	bc1t	.L273
	mov.s	$f0,$f13

	c.un.s	$f13,$f13
	nop
	bc1t	.L280
	lw	$3,0($sp)

	li	$5,-2147483648			# 0xffffffff80000000
	and	$3,$3,$5
	and	$4,$2,$5
	beq	$3,$4,.L275
	move	$6,$3

	bne	$6,$0,.L273
	mov.s	$f0,$f12

.L285:
	mtc1	$2,$f0
.L273:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L275:
	lwc1	$f0,0($sp)
	c.lt.s	$f0,$f13
	nop
	bc1t	.L273
	nop

	b	.L285
	nop

	.align	3
.L280:
	b	.L273
	lwc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.align	3
	.globl	fminl
	.set	nomips16
	.set	nomicromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,112,$31		# vars= 32, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$7,$f13
	dmfc1	$6,$f12
	nop
	move	$16,$6
	move	$17,$7
	dmfc1	$7,$f15
	dmfc1	$6,$f14
	nop
	move	$18,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$19,$7

	bne	$2,$0,.L292
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L286
	dsrl	$2,$16,63

	dsrl	$3,$18,63
	beq	$2,$3,.L288
	ld	$25,%call16(__lttf2)($28)

	bne	$2,$0,.L286
	nop

	b	.L298
	move	$16,$18

	.align	3
.L288:
	sd	$18,0($sp)
	sd	$19,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$16,16($sp)
	sd	$17,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L286
	nop

.L292:
	move	$16,$18
.L298:
	move	$17,$19
.L286:
	dmtc1	$16,$f0
	dmtc1	$17,$f2
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.align	2
	.align	3
	.globl	l64a
	.set	nomips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(l64a)))
	daddu	$7,$7,$25
	sll	$4,$4,0
	beq	$4,$0,.L302
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	move	$3,$4
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	ld	$6,%got_page(digits)($7)
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L301:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	sb	$4,0($5)
	srl	$3,$3,6
	bne	$3,$0,.L301
	daddiu	$5,$5,1

.L300:
	jr	$31
	sb	$0,0($5)

	.align	3
.L302:
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	b	.L300
	move	$5,$2

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.align	2
	.align	3
	.globl	srand
	.set	nomips16
	.set	nomicromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(srand)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(srand)))
	addiu	$4,$4,-1
	dsll	$4,$4,32
	dsrl	$4,$4,32
	ld	$2,%got_page(seed)($3)
	jr	$31
	sd	$4,%got_ofst(seed)($2)

	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.align	3
	.globl	rand
	.set	nomips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$5,%hi(%neg(%gp_rel(rand)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$3,%got_page(seed)($5)
	ld	$4,%got_ofst(seed)($3)
	li	$2,1481703424			# 0x58510000
	ori	$2,$2,0xf42d
	dsll	$2,$2,16
	ori	$2,$2,0x4c95
	dsll	$2,$2,16
	daddiu	$2,$2,32557
	dmult	$4,$2
	mflo	$2
	daddiu	$2,$2,1
	sd	$2,%got_ofst(seed)($3)
	jr	$31
	dsrl	$2,$2,33

	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.align	3
	.globl	insque
	.set	nomips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beql	$5,$0,.L316
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L318
	sd	$4,8($2)

.L318:
	jr	$31
	nop

	.align	3
.L316:
	sd	$0,0($4)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.align	3
	.globl	remque
	.set	nomips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	beql	$2,$0,.L329
	ld	$2,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$2,8($4)
.L329:
	beq	$2,$0,.L330
	nop

	ld	$3,0($4)
	sd	$3,0($2)
.L330:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.align	3
	.globl	lsearch
	.set	nomips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$19,$4
	move	$fp,$5
	move	$23,$6
	ld	$22,0($6)
	beq	$22,$0,.L332
	move	$18,$7

	move	$21,$8
	move	$16,$5
	move	$17,$0
	.align	3
.L334:
	move	$20,$16
	move	$5,$16
	move	$25,$21
	jalr	$25
	move	$4,$19

	beq	$2,$0,.L331
	daddiu	$17,$17,1

	bne	$22,$17,.L334
	daddu	$16,$16,$18

.L332:
	daddiu	$2,$22,1
	sd	$2,0($23)
	dmult	$18,$22
	mflo	$20
	beq	$18,$0,.L331
	daddu	$20,$fp,$20

	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$20

.L331:
	move	$2,$20
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.align	3
	.globl	lfind
	.set	nomips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	ld	$21,0($6)
	beq	$21,$0,.L348
	move	$18,$4

	move	$20,$7
	move	$19,$8
	move	$16,$5
	move	$17,$0
	.align	3
.L350:
	move	$22,$16
	move	$5,$16
	move	$25,$19
	jalr	$25
	move	$4,$18

	beq	$2,$0,.L347
	daddiu	$17,$17,1

	bne	$21,$17,.L350
	daddu	$16,$16,$20

.L348:
	move	$22,$0
.L347:
	move	$2,$22
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.align	3
	.globl	abs
	.set	nomips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,31
	xor	$4,$2,$4
	jr	$31
	subu	$2,$4,$2

	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.align	3
	.globl	atoi
	.set	nomips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L362
	li	$5,32			# 0x20

	.align	3
.L364:
	daddiu	$4,$4,1
.L362:
	lb	$3,0($4)
	beq	$3,$5,.L364
	addiu	$2,$3,-9

	sltu	$2,$2,5
	bnel	$2,$0,.L362
	daddiu	$4,$4,1

	li	$5,43			# 0x2b
	beq	$3,$5,.L371
	li	$5,45			# 0x2d

	bne	$3,$5,.L378
	move	$6,$0

	li	$6,1			# 0x1
.L365:
	daddiu	$4,$4,1
	lb	$3,0($4)
.L378:
	addiu	$3,$3,-48
	sltu	$5,$3,10
	beq	$5,$0,.L368
	sll	$5,$2,2

	.align	3
.L377:
	addu	$5,$5,$2
	sll	$5,$5,1
	daddiu	$4,$4,1
	sll	$3,$3,24
	sra	$3,$3,24
	subu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,$3,-48
	sltu	$5,$3,10
	bne	$5,$0,.L377
	sll	$5,$2,2

.L368:
	beql	$6,$0,.L376
	subu	$2,$0,$2

.L376:
	jr	$31
	nop

	.align	3
.L371:
	b	.L365
	move	$6,$0

	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.align	3
	.globl	atol
	.set	nomips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L380
	li	$3,32			# 0x20

	.align	3
.L382:
	daddiu	$4,$4,1
.L380:
	lb	$2,0($4)
	beq	$2,$3,.L382
	addiu	$6,$2,-9

	sltu	$6,$6,5
	bnel	$6,$0,.L380
	daddiu	$4,$4,1

	li	$3,43			# 0x2b
	beq	$2,$3,.L383
	li	$3,45			# 0x2d

	bnel	$2,$3,.L394
	lb	$3,0($4)

	li	$6,1			# 0x1
.L383:
	daddiu	$4,$4,1
	lb	$3,0($4)
.L394:
	addiu	$3,$3,-48
	sltu	$5,$3,10
	beq	$5,$0,.L386
	move	$2,$0

	dsll	$5,$2,2
	.align	3
.L395:
	daddu	$5,$5,$2
	dsll	$5,$5,1
	daddiu	$4,$4,1
	dsll	$3,$3,56
	dsra	$3,$3,56
	dsubu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,$3,-48
	sltu	$5,$3,10
	bne	$5,$0,.L395
	dsll	$5,$2,2

.L386:
	beql	$6,$0,.L393
	dsubu	$2,$0,$2

.L393:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.align	3
	.globl	atoll
	.set	nomips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L397
	li	$3,32			# 0x20

	.align	3
.L399:
	daddiu	$4,$4,1
.L397:
	lb	$2,0($4)
	beq	$2,$3,.L399
	addiu	$6,$2,-9

	sltu	$6,$6,5
	bnel	$6,$0,.L397
	daddiu	$4,$4,1

	li	$3,43			# 0x2b
	beq	$2,$3,.L400
	li	$3,45			# 0x2d

	bnel	$2,$3,.L411
	lb	$3,0($4)

	li	$6,1			# 0x1
.L400:
	daddiu	$4,$4,1
	lb	$3,0($4)
.L411:
	addiu	$3,$3,-48
	sltu	$5,$3,10
	beq	$5,$0,.L403
	move	$2,$0

	dsll	$5,$2,2
	.align	3
.L412:
	daddu	$5,$5,$2
	dsll	$5,$5,1
	daddiu	$4,$4,1
	dsll	$3,$3,56
	dsra	$3,$3,56
	dsubu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,$3,-48
	sltu	$5,$3,10
	bne	$5,$0,.L412
	dsll	$5,$2,2

.L403:
	beql	$6,$0,.L410
	dsubu	$2,$0,$2

.L410:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.align	3
	.globl	bsearch
	.set	nomips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beq	$6,$0,.L414
	sd	$16,8($sp)

	move	$22,$4
	move	$20,$5
	move	$16,$6
	move	$19,$7
	b	.L417
	move	$21,$8

	.align	3
.L418:
.L415:
	beq	$16,$0,.L413
	move	$17,$0

.L417:
	dsrl	$18,$16,1
	dmult	$18,$19
	mflo	$17
	daddu	$17,$20,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	bltzl	$2,.L418
	move	$16,$18

	blez	$2,.L413
	daddu	$20,$17,$19

	daddiu	$16,$16,-1
	b	.L415
	dsubu	$16,$16,$18

	.align	3
.L414:
	move	$17,$0
.L413:
	move	$2,$17
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.align	3
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sll	$6,$6,0
	beq	$6,$0,.L425
	sd	$16,0($sp)

	move	$22,$4
	move	$19,$5
	move	$18,$7
	move	$21,$8
	move	$20,$9
	b	.L428
	move	$16,$6

	.align	3
.L427:
	beq	$23,$0,.L425
	move	$16,$23

.L428:
	sra	$23,$16,1
	dsra	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beql	$2,$0,.L437
	move	$2,$17

	blez	$2,.L427
	nop

	daddu	$19,$17,$18
	addiu	$16,$16,-1
	b	.L427
	sra	$23,$16,1

	.align	3
.L425:
	move	$17,$0
	move	$2,$17
.L437:
	ld	$31,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.align	3
	.globl	div
	.set	nomips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	or	$2,$2,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.align	3
	.globl	imaxabs
	.set	nomips16
	.set	nomicromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,63
	xor	$4,$2,$4
	jr	$31
	dsubu	$2,$4,$2

	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.align	3
	.globl	imaxdiv
	.set	nomips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.align	3
	.globl	labs
	.set	nomips16
	.set	nomicromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,63
	xor	$4,$2,$4
	jr	$31
	dsubu	$2,$4,$2

	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.align	3
	.globl	ldiv
	.set	nomips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.align	3
	.globl	llabs
	.set	nomips16
	.set	nomicromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,63
	xor	$4,$2,$4
	jr	$31
	dsubu	$2,$4,$2

	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.align	3
	.globl	lldiv
	.set	nomips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.align	3
	.globl	wcschr
	.set	nomips16
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,0($4)
	beq	$3,$0,.L458
	nop

	.align	3
.L453:
	beq	$5,$3,.L462
	nop

	daddiu	$4,$4,4
	lw	$3,0($4)
	bne	$3,$0,.L453
	nop

.L458:
	jr	$31
	move	$2,$0

	.align	3
.L462:
	beq	$3,$0,.L458
	move	$2,$4

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.align	3
	.globl	wcscmp
	.set	nomips16
	.set	nomicromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,0($4)
	lw	$6,0($5)
	bnel	$3,$6,.L474
	slt	$4,$3,$6

	.align	3
.L464:
	beql	$3,$0,.L474
	slt	$4,$3,$6

	beq	$6,$0,.L465
	daddiu	$4,$4,4

	daddiu	$5,$5,4
	lw	$3,0($4)
	lw	$6,0($5)
	beq	$3,$6,.L464
	nop

.L465:
	slt	$4,$3,$6
.L474:
	bne	$4,$0,.L475
	li	$2,-1			# 0xffffffffffffffff

	slt	$2,$6,$3
.L475:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.align	3
	.globl	wcscpy
	.set	nomips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$4
	.align	3
.L477:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bne	$6,$0,.L477
	sw	$6,-4($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.align	3
	.globl	wcslen
	.set	nomips16
	.set	nomicromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	beq	$2,$0,.L481
	move	$2,$4

	daddiu	$2,$2,4
	.align	3
.L486:
	lw	$3,0($2)
	bnel	$3,$0,.L486
	daddiu	$2,$2,4

.L481:
	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.align	3
	.globl	wcsncmp
	.set	nomips16
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L501
	move	$2,$0

	.align	3
.L488:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$3,$2,.L489
	nop

	beq	$2,$0,.L489
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	bne	$6,$0,.L488
	daddiu	$5,$5,4

	move	$2,$0
.L501:
	jr	$31
	nop

	.align	3
.L489:
	beql	$6,$0,.L501
	move	$2,$0

	lw	$4,0($4)
	lw	$3,0($5)
	slt	$5,$4,$3
	bne	$5,$0,.L501
	li	$2,-1			# 0xffffffffffffffff

	jr	$31
	slt	$2,$3,$4

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.align	3
	.globl	wmemchr
	.set	nomips16
	.set	nomicromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L508
	nop

	.align	3
.L503:
	lw	$2,0($4)
	beq	$2,$5,.L512
	nop

	daddiu	$6,$6,-1
	bne	$6,$0,.L503
	daddiu	$4,$4,4

.L508:
	jr	$31
	move	$2,$0

	.align	3
.L512:
	beq	$6,$0,.L508
	move	$2,$4

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.align	3
	.globl	wmemcmp
	.set	nomips16
	.set	nomicromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L528
	move	$2,$0

	.align	3
.L514:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L527
	daddiu	$4,$4,4

	daddiu	$6,$6,-1
	bne	$6,$0,.L514
	daddiu	$5,$5,4

	move	$2,$0
.L528:
	jr	$31
	nop

	.align	3
.L527:
	beql	$6,$0,.L528
	move	$2,$0

	move	$4,$3
	move	$3,$2
	slt	$5,$4,$2
	bne	$5,$0,.L528
	li	$2,-1			# 0xffffffffffffffff

	jr	$31
	slt	$2,$3,$4

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.align	3
	.globl	wmemcpy
	.set	nomips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(wmemcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beq	$6,$0,.L530
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L530:
	move	$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.align	3
	.globl	wmemmove
	.set	nomips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L550
	move	$2,$4

	dsubu	$4,$4,$5
	dsll	$7,$6,2
	sltu	$4,$4,$7
	bne	$4,$0,.L537
	daddiu	$3,$6,-1

	move	$7,$2
	beq	$6,$0,.L550
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L538:
	daddiu	$5,$5,4
	daddiu	$7,$7,4
	lw	$4,-4($5)
	daddiu	$3,$3,-1
	bne	$3,$8,.L538
	sw	$4,-4($7)

.L550:
	jr	$31
	nop

	.align	3
.L537:
	beq	$6,$0,.L550
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L539:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L539
	sw	$6,0($4)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.align	3
	.globl	wmemset
	.set	nomips16
	.set	nomicromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L559
	move	$2,$4

	daddiu	$3,$6,-1
	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
	.align	3
.L553:
	daddiu	$6,$6,4
	daddiu	$3,$3,-1
	bne	$3,$7,.L553
	sw	$5,-4($6)

.L559:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.align	3
	.globl	bcopy
	.set	nomips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	beq	$2,$0,.L561
	daddu	$2,$4,$6

	beq	$6,$0,.L575
	daddu	$5,$5,$6

	.align	3
.L563:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,.L563
	sb	$3,0($5)

.L575:
	jr	$31
	nop

	.align	3
.L561:
	beq	$4,$5,.L574
	nop

	beq	$6,$0,.L575
	daddu	$6,$4,$6

	.align	3
.L564:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,-1($4)
	bne	$6,$4,.L564
	sb	$2,-1($5)

.L574:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.align	3
	.globl	rotl64
	.set	nomips16
	.set	nomicromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.align	3
	.globl	rotr64
	.set	nomips16
	.set	nomicromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.align	3
	.globl	rotl32
	.set	nomips16
	.set	nomicromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$3,$4,$5
	subu	$5,$0,$5
	srl	$2,$4,$5
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.align	3
	.globl	rotr32
	.set	nomips16
	.set	nomicromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$3,$4,$5
	subu	$5,$0,$5
	sll	$2,$4,$5
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.align	3
	.globl	rotl_sz
	.set	nomips16
	.set	nomicromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.align	3
	.globl	rotr_sz
	.set	nomips16
	.set	nomicromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.align	3
	.globl	rotl16
	.set	nomips16
	.set	nomicromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0xf
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	srl	$4,$4,$5
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.align	3
	.globl	rotr16
	.set	nomips16
	.set	nomicromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0xf
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	sll	$4,$4,$5
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.align	3
	.globl	rotl8
	.set	nomips16
	.set	nomicromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x7
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	srl	$4,$4,$5
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.align	3
	.globl	rotr8
	.set	nomips16
	.set	nomicromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x7
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	sll	$4,$4,$5
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.align	3
	.globl	bswap_16
	.set	nomips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,8
	sll	$4,$4,8
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.align	3
	.globl	bswap_32
	.set	nomips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$2,$4,8
	li	$5,16711680			# 0xff0000
	and	$2,$2,$5
	sll	$3,$4,24
	or	$2,$2,$3
	srl	$3,$4,24
	or	$3,$3,$2
	and	$2,$4,$5
	srl	$2,$2,8
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.align	3
	.globl	bswap_64
	.set	nomips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$4,56
	dsrl	$3,$4,56
	or	$2,$2,$3
	dsrl	$3,$4,40
	andi	$3,$3,0xff00
	or	$2,$2,$3
	dsrl	$3,$4,24
	li	$5,16711680			# 0xff0000
	and	$3,$3,$5
	or	$2,$2,$3
	dsrl	$5,$4,8
	li	$3,255			# 0xff
	dsll	$6,$3,24
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,8
	dsll	$6,$3,32
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,24
	dsll	$6,$3,40
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$4,$4,40
	dsll	$3,$3,48
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.align	3
	.globl	ffs
	.set	nomips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	li	$6,32			# 0x20
	srl	$5,$4,$3
	.align	3
.L608:
	andi	$5,$5,0x1
	addiu	$2,$3,1
	bne	$5,$0,.L609
	move	$3,$2

	bne	$6,$2,.L608
	srl	$5,$4,$3

	move	$2,$0
.L609:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.align	3
	.globl	libiberty_ffs
	.set	nomips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L618
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L617
	nop

	li	$2,1			# 0x1
	.align	3
.L612:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L612
	addiu	$2,$2,1

.L618:
	jr	$31
	nop

.L617:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.align	3
	.globl	gl_isinff
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$3,%got_page(.LC0)($4)
	lwc1	$f0,%got_ofst(.LC0)($3)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L624
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1t	.L624
	li	$2,1			# 0x1

	move	$2,$0
.L624:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.align	3
	.globl	gl_isinfd
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$3,%got_page(.LC2)($4)
	ldc1	$f0,%got_ofst(.LC2)($3)
	c.lt.d	$f12,$f0
	nop
	bc1t	.L630
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1t	.L630
	li	$2,1			# 0x1

	move	$2,$0
.L630:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.align	3
	.globl	gl_isinfl
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	dmfc1	$3,$f13
	dmfc1	$2,$f12
	nop
	move	$19,$2
	move	$18,$3
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	move	$3,$2
	bltz	$3,.L632
	li	$2,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	dmtc1	$18,$f13
	nop
	dmtc1	$19,$f12
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC5)($2)

	slt	$2,$0,$2
.L632:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.align	3
	.globl	_Qp_itoq
	.set	nomips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x900d0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	move	$16,$4
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	cvt.d.w	$f12,$f0

	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.align	3
	.globl	ldexpf
	.set	nomips16
	.set	nomicromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$f12,$f12
	nop
	bc1t	.L657
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	.L657
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))

	daddu	$3,$3,$25
	bltz	$5,.L655
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))

	ld	$2,%got_page(.LC6)($3)
	b	.L643
	lwc1	$f1,%got_ofst(.LC6)($2)

	.align	3
.L655:
	ld	$2,%got_page(.LC7)($3)
	b	.L643
	lwc1	$f1,%got_ofst(.LC7)($2)

	.align	3
.L642:
	srl	$2,$5,31
	.align	3
.L656:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L657
	nop

	mul.s	$f1,$f1,$f1
.L643:
	andi	$2,$5,0x1
	bnel	$2,$0,.L642
	mul.s	$f0,$f0,$f1

	b	.L656
	srl	$2,$5,31

.L657:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.align	3
	.globl	ldexp
	.set	nomips16
	.set	nomicromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$f12,$f12
	nop
	bc1t	.L676
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$f1,$f12
	nop
	bc1t	.L676
	lui	$3,%hi(%neg(%gp_rel(ldexp)))

	daddu	$3,$3,$25
	bltz	$5,.L674
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))

	ld	$2,%got_page(.LC8)($3)
	b	.L662
	ldc1	$f1,%got_ofst(.LC8)($2)

	.align	3
.L674:
	ld	$2,%got_page(.LC9)($3)
	b	.L662
	ldc1	$f1,%got_ofst(.LC9)($2)

	.align	3
.L661:
	srl	$2,$5,31
	.align	3
.L675:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L676
	nop

	mul.d	$f1,$f1,$f1
.L662:
	andi	$2,$5,0x1
	bnel	$2,$0,.L661
	mul.d	$f0,$f0,$f1

	b	.L675
	srl	$2,$5,31

.L676:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.align	3
	.globl	ldexpl
	.set	nomips16
	.set	nomicromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,144,$31		# vars= 64, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	sd	$31,136($sp)
	sd	$28,128($sp)
	sd	$22,120($sp)
	sd	$21,112($sp)
	sd	$20,104($sp)
	sd	$19,96($sp)
	sd	$18,88($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sd	$9,56($sp)
	sd	$8,48($sp)
	sd	$5,40($sp)
	sd	$4,32($sp)
	dmfc1	$11,$f13
	dmfc1	$10,$f12
	nop
	move	$22,$10
	move	$17,$11
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$11,$f15
	nop
	dmtc1	$10,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$16,$6

	bne	$2,$0,.L678
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$17,$f15
	nop
	dmtc1	$22,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$22,$f12
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	nop

	ld	$25,%call16(__netf2)($28)
	sd	$22,0($sp)
	sd	$17,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sdc1	$f0,16($sp)
	sdc1	$f2,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	beq	$2,$0,.L678
	nop

	bltz	$16,.L692
	ld	$2,%got_page(.LC10)($28)

	ld	$5,%got_ofst(.LC10+8)($2)
	b	.L682
	ld	$4,%got_ofst(.LC10)($2)

	.align	3
.L692:
	ld	$2,%got_page(.LC11)($28)
	ld	$5,%got_ofst(.LC11+8)($2)
	b	.L682
	ld	$4,%got_ofst(.LC11)($2)

	.align	3
.L681:
	srl	$2,$16,31
	.align	3
.L693:
	addu	$16,$2,$16
	sra	$16,$16,1
	beq	$16,$0,.L678
	ld	$25,%call16(__multf3)($28)

	dmtc1	$5,$f15
	nop
	dmtc1	$4,$f14
	dmtc1	$5,$f13
	nop
	dmtc1	$4,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	nop
	move	$5,$2
	move	$4,$3
.L682:
	andi	$2,$16,0x1
	beq	$2,$0,.L693
	srl	$2,$16,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$5,$f15
	nop
	dmtc1	$4,$f14
	sd	$5,8($sp)
	dmtc1	$17,$f13
	nop
	dmtc1	$22,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	sd	$4,0($sp)

	dmfc1	$22,$f0
	dmfc1	$17,$f2
	ld	$5,8($sp)
	b	.L681
	ld	$4,0($sp)

	.align	3
.L678:
	dmtc1	$22,$f0
	dmtc1	$17,$f2
	ld	$31,136($sp)
	ld	$28,128($sp)
	ld	$22,120($sp)
	ld	$21,112($sp)
	ld	$20,104($sp)
	ld	$19,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.align	3
	.globl	memxor
	.set	nomips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L702
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
	.align	3
.L696:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lbu	$7,-1($3)
	lbu	$8,-1($5)
	xor	$7,$7,$8
	bne	$6,$5,.L696
	sb	$7,-1($3)

.L702:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.align	3
	.globl	strncat
	.set	nomips16
	.set	nomicromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	beq	$3,$0,.L710
	move	$2,$4

	move	$3,$4
	daddiu	$3,$3,1
	.align	3
.L719:
	lb	$7,0($3)
	bnel	$7,$0,.L719
	daddiu	$3,$3,1

	b	.L718
	nop

	.align	3
.L710:
	b	.L718
	move	$3,$4

	.align	3
.L708:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	daddiu	$6,$6,-1
.L718:
	beql	$6,$0,.L720
	sb	$0,0($3)

	lb	$7,0($5)
	bne	$7,$0,.L708
	sb	$7,0($3)

	beql	$6,$0,.L720
	sb	$0,0($3)

.L720:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.align	3
	.globl	strnlen
	.set	nomips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,.L732
	move	$2,$0

	daddu	$3,$4,$2
.L730:
	lb	$3,0($3)
	bnel	$3,$0,.L724
	daddiu	$2,$2,1

.L721:
.L732:
	jr	$31
	nop

	.align	3
.L724:
	bne	$5,$2,.L730
	daddu	$3,$4,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.align	3
	.globl	strpbrk
	.set	nomips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$7,0($4)
	beq	$7,$0,.L738
	move	$2,$4

	move	$3,$5
	.align	3
.L737:
	lb	$6,0($3)
	beql	$6,$0,.L742
	daddiu	$2,$2,1

	bne	$6,$7,.L737
	daddiu	$3,$3,1

.L735:
	jr	$31
	nop

	.align	3
.L742:
	lb	$7,0($2)
	bne	$7,$0,.L737
	move	$3,$5

.L738:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.align	3
	.globl	strrchr
	.set	nomips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L745
	move	$2,$0

	.align	3
.L744:
	beq	$3,$0,.L750
	daddiu	$4,$4,1

.L745:
	lb	$3,0($4)
	beql	$3,$5,.L744
	move	$2,$4

	b	.L744
	nop

.L750:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.align	3
	.globl	strstr
	.set	nomips16
	.set	nomicromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	lb	$8,0($5)
	beq	$8,$0,.L752
	move	$3,$5

	daddiu	$3,$3,1
	.align	3
.L776:
	lb	$4,0($3)
	bnel	$4,$0,.L776
	daddiu	$3,$3,1

.L752:
	beq	$3,$5,.L778
	dsubu	$10,$3,$5

	b	.L760
	daddiu	$10,$10,-1

.L763:
	b	.L756
	move	$6,$5

	.align	3
.L759:
	beq	$2,$0,.L778
	nop

	lbu	$4,0($2)
	beq	$4,$0,.L763
	move	$3,$2

	daddu	$9,$2,$10
	move	$6,$5
	.align	3
.L757:
	lbu	$7,0($6)
	beql	$7,$0,.L777
	lbu	$3,0($6)

	beql	$3,$9,.L777
	lbu	$3,0($6)

	bne	$7,$4,.L756
	daddiu	$3,$3,1

	lbu	$4,0($3)
	bne	$4,$0,.L757
	daddiu	$6,$6,1

.L756:
	lbu	$3,0($6)
.L777:
	beq	$3,$4,.L778
	nop

	daddiu	$2,$2,1
	.align	3
.L760:
	lb	$3,0($2)
	beq	$3,$8,.L759
	nop

	bne	$3,$0,.L760
	daddiu	$2,$2,1

	jr	$31
	move	$2,$0

.L778:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.align	3
	.globl	copysign
	.set	nomips16
	.set	nomicromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	.L789
	nop

.L780:
	dmtc1	$0,$f0
	dmtc1	$2,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L783
	nop

	c.lt.d	$f13,$f0
	nop
	bc1t	.L790
	li	$3,-1			# 0xffffffffffffffff

.L783:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L789:
	c.lt.d	$f0,$f13
	nop
	bc1f	.L780
	li	$3,-1			# 0xffffffffffffffff

.L790:
	dsll	$3,$3,63
	b	.L783
	xor	$2,$2,$3

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.align	3
	.globl	memmem
	.set	nomips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$7,$0,.L799
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L801
	dsubu	$5,$5,$7

	daddu	$11,$4,$5
	sltu	$2,$11,$4
	bne	$2,$0,.L817
	move	$2,$0

	b	.L798
	lb	$12,0($6)

	.align	3
.L815:
	beq	$3,$0,.L816
	nop

	beq	$10,$9,.L816
	nop

	.align	3
.L793:
	sltu	$2,$11,$4
	bne	$2,$0,.L817
	move	$2,$0

.L798:
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$12,.L793
	daddiu	$4,$4,1

	daddiu	$3,$7,-1
	beq	$3,$0,.L817
	daddiu	$5,$6,1

	move	$8,$4
	.align	3
.L794:
	lbu	$10,0($8)
	lbu	$9,0($5)
	bne	$10,$9,.L815
	daddiu	$8,$8,1

	daddiu	$3,$3,-1
	bne	$3,$0,.L794
	daddiu	$5,$5,1

.L817:
	jr	$31
	nop

	.align	3
.L799:
	jr	$31
	move	$2,$4

	.align	3
.L801:
	move	$2,$0
.L816:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.align	3
	.globl	mempcpy
	.set	nomips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	move	$17,$4
	beq	$6,$0,.L819
	move	$16,$6

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

.L819:
	daddu	$2,$17,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.align	3
	.globl	frexp
	.set	nomips16
	.set	nomicromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(frexp)))
	daddu	$8,$8,$25
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	.L849
	daddiu	$8,$8,%lo(%neg(%gp_rel(frexp)))

	move	$7,$0
.L825:
	ld	$4,%got_page(.LC12)($8)
	ldc1	$f0,%got_ofst(.LC12)($4)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1f	.L846
	ld	$6,%got_page(.LC9)($8)

	move	$3,$0
	ldc1	$f1,%got_ofst(.LC9)($6)
	.align	3
.L829:
	dmtc1	$2,$f2
	nop
	mul.d	$f2,$f2,$f1
	dmfc1	$2,$f2
	c.le.d	$f0,$f2
	nop
	bc1t	.L829
	addiu	$3,$3,1

.L830:
	beq	$7,$0,.L833
	sw	$3,0($5)

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L833:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L849:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
	b	.L825
	li	$7,1			# 0x1

	.align	3
.L846:
	ldc1	$f0,%got_ofst(.LC9)($6)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L830
	move	$3,$0

	dmtc1	$0,$f0
	nop
	c.eq.d	$f1,$f0
	nop
	bc1t	.L830
	ldc1	$f0,%got_ofst(.LC9)($6)

	.align	3
.L832:
	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	dmfc1	$2,$f1
	c.lt.d	$f1,$f0
	nop
	bc1t	.L832
	addiu	$3,$3,-1

	b	.L830
	nop

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.align	3
	.globl	__muldi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L857
	move	$2,$0

	.align	3
.L852:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	daddu	$2,$2,$3
	dsrl	$4,$4,1
	bne	$4,$0,.L852
	dsll	$5,$5,1

.L857:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.align	3
	.globl	udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$7,$5,$4
	li	$3,1			# 0x1
	beq	$7,$0,.L875
	li	$2,32			# 0x20

	.align	3
.L859:
	bltz	$5,.L860
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L860
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,.L859
	nop

	move	$2,$0
	.align	3
.L862:
	bne	$6,$0,.L878
	nop

.L865:
	jr	$31
	nop

	.align	3
.L860:
	beql	$3,$0,.L862
	move	$2,$0

.L875:
	b	.L864
	move	$2,$0

	.align	3
.L863:
	srl	$3,$3,1
	.align	3
.L879:
	beq	$3,$0,.L862
	srl	$5,$5,1

.L864:
	sltu	$7,$4,$5
	bnel	$7,$0,.L879
	srl	$3,$3,1

	subu	$4,$4,$5
	b	.L863
	or	$2,$3,$2

	.align	3
.L878:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.align	3
	.globl	__clrsbqi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,7
	dsll	$2,$2,56
	dsra	$2,$2,56
	beq	$4,$2,.L882
	xor	$3,$4,$2

	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	sll	$4,$3,8
	dsll	$4,$4,32
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$4,32

	addiu	$2,$2,-33
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L882:
	jr	$31
	li	$2,7			# 0x7

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.align	3
	.globl	__clrsbdi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	dsra	$3,$4,63
	beq	$2,$3,.L889
	xor	$4,$4,$3

	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L889:
	jr	$31
	li	$2,63			# 0x3f

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.align	3
	.globl	__mulsi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L901
	move	$2,$0

	.align	3
.L896:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	srl	$4,$4,1
	bne	$4,$0,.L896
	sll	$5,$5,1

.L901:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.align	3
	.globl	__cmovd
	.set	nomips16
	.set	nomicromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$8,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bne	$3,$0,.L903
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bne	$3,$0,.L903
	nop

	beq	$6,$0,.L920
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L909:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$5,$3,.L909
	daddiu	$4,$4,-1

.L920:
	jr	$31
	nop

	.align	3
.L903:
	beq	$8,$0,.L906
	move	$3,$5

	move	$7,$4
	dsll	$8,$8,3
	daddu	$8,$8,$5
	.align	3
.L907:
	ld	$9,0($3)
	sd	$9,0($7)
	daddiu	$3,$3,8
	bne	$3,$8,.L907
	daddiu	$7,$7,8

.L906:
	sltu	$3,$2,$6
	beq	$3,$0,.L920
	dsll	$2,$2,32

	dsrl	$2,$2,32
	daddu	$3,$5,$2
	.align	3
.L918:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L918
	daddu	$3,$5,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.align	3
	.globl	__cmovh
	.set	nomips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	bne	$2,$0,.L922
	srl	$7,$6,1

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bne	$2,$0,.L922
	nop

	beq	$6,$0,.L939
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L927:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$5,$3,.L927
	daddiu	$4,$4,-1

.L939:
	jr	$31
	nop

	.align	3
.L922:
	beq	$7,$0,.L925
	move	$2,$5

	move	$3,$4
	dsll	$7,$7,1
	daddu	$7,$7,$5
	.align	3
.L926:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$7,.L926
	daddiu	$3,$3,2

.L925:
	andi	$2,$6,0x1
	beq	$2,$0,.L939
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	lb	$2,0($5)
	daddu	$4,$4,$6
	jr	$31
	sb	$2,0($4)

	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.align	3
	.globl	__cmovw
	.set	nomips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$8,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bne	$3,$0,.L941
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bne	$3,$0,.L941
	nop

	beq	$6,$0,.L958
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L947:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$5,$3,.L947
	daddiu	$4,$4,-1

.L958:
	jr	$31
	nop

	.align	3
.L941:
	beq	$8,$0,.L944
	move	$3,$5

	move	$7,$4
	dsll	$8,$8,2
	daddu	$8,$8,$5
	.align	3
.L945:
	lw	$9,0($3)
	sw	$9,0($7)
	daddiu	$3,$3,4
	bne	$3,$8,.L945
	daddiu	$7,$7,4

.L944:
	sltu	$3,$2,$6
	beq	$3,$0,.L958
	dsll	$2,$2,32

	dsrl	$2,$2,32
	daddu	$3,$5,$2
	.align	3
.L956:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L956
	daddu	$3,$5,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.align	3
	.globl	__modi
	.set	nomips16
	.set	nomicromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.align	3
	.globl	__uitod
	.set	nomips16
	.set	nomicromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.align	3
	.globl	__uitof
	.set	nomips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.align	3
	.globl	__ulltod
	.set	nomips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L967
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L967:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	jr	$31
	add.d	$f0,$f0,$f0

	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.align	3
	.globl	__ulltof
	.set	nomips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L971
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L971:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	jr	$31
	add.s	$f0,$f0,$f0

	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.align	3
	.globl	__umodi
	.set	nomips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	divu	$0,$4,$5
	teq	$5,$0,7
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.align	3
	.globl	__clzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$5,15			# 0xf
	li	$6,16			# 0x10
	subu	$3,$5,$2
	.align	3
.L980:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,.L981
	nop

	addiu	$2,$2,1
	bne	$2,$6,.L980
	subu	$3,$5,$2

.L981:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.align	3
	.globl	__ctzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$5,16			# 0x10
	sra	$3,$4,$2
	.align	3
.L987:
	andi	$3,$3,0x1
	bne	$3,$0,.L988
	nop

	addiu	$2,$2,1
	bne	$2,$5,.L987
	sra	$3,$4,$2

.L988:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.align	3
	.globl	__fixunssfsi
	.set	nomips16
	.set	nomicromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$f0,$f12
	nop
	bc1tl	.L996
	sub.s	$f12,$f12,$f0

	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	nop

	.align	3
.L996:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
	jr	$31
	daddu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.align	3
	.globl	__parityhi2
	.set	nomips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	move	$3,$0
	li	$6,16			# 0x10
	.align	3
.L998:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L998
	addu	$2,$5,$2

	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.align	3
	.globl	__popcounthi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$5,$0
	move	$3,$0
	li	$6,16			# 0x10
	.align	3
.L1002:
	sra	$2,$4,$3
	andi	$2,$2,0x1
	addu	$2,$2,$5
	addiu	$3,$3,1
	bne	$3,$6,.L1002
	move	$5,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.align	3
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L1012
	move	$2,$0

	.align	3
.L1007:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	srl	$4,$4,1
	bne	$4,$0,.L1007
	sll	$5,$5,1

.L1012:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.align	3
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L1021
	move	$2,$0

	beq	$5,$0,.L1020
	nop

	.align	3
.L1015:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	srl	$5,$5,1
	bne	$5,$0,.L1015
	sll	$4,$4,1

.L1021:
	jr	$31
	nop

.L1020:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.align	3
	.globl	__udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$7,$5,$4
	li	$3,1			# 0x1
	beq	$7,$0,.L1039
	li	$2,32			# 0x20

	.align	3
.L1023:
	bltz	$5,.L1024
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1024
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,.L1023
	nop

	move	$2,$0
	.align	3
.L1026:
	bne	$6,$0,.L1042
	nop

.L1029:
	jr	$31
	nop

	.align	3
.L1024:
	beql	$3,$0,.L1026
	move	$2,$0

.L1039:
	b	.L1028
	move	$2,$0

	.align	3
.L1027:
	srl	$3,$3,1
	.align	3
.L1043:
	beq	$3,$0,.L1026
	srl	$5,$5,1

.L1028:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1043
	srl	$3,$3,1

	subu	$4,$4,$5
	b	.L1027
	or	$2,$3,$2

	.align	3
.L1042:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.align	3
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$f12,$f13
	nop
	bc1tl	.L1049
	li	$2,-1			# 0xffffffffffffffff

	c.lt.s	$f13,$f12
	nop
	bc1t	.L1049
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

.L1049:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.align	3
	.globl	__mspabi_cmpd
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$f12,$f13
	nop
	bc1tl	.L1055
	li	$2,-1			# 0xffffffffffffffff

	c.lt.d	$f13,$f12
	nop
	bc1t	.L1055
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

.L1055:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.align	3
	.globl	__mspabi_mpysll
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$5
	mflo	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.align	3
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$5
	mflo	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.align	3
	.globl	__mulhi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$5,.L1076
	move	$7,$0

.L1061:
	beq	$5,$0,.L1062
	move	$2,$0

	li	$6,32			# 0x20
	andi	$3,$5,0x1
	.align	3
.L1078:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	dsra	$5,$5,1
	beq	$5,$0,.L1062
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,.L1078
	andi	$3,$5,0x1

.L1062:
	bnel	$7,$0,.L1077
	subu	$2,$0,$2

.L1077:
	jr	$31
	nop

	.align	3
.L1076:
	subu	$5,$0,$5
	b	.L1061
	li	$7,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.align	3
	.globl	__divsi3
	.set	nomips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1104
	move	$7,$0

.L1080:
	bltzl	$5,.L1105
	dsubu	$5,$0,$5

.L1081:
	sll	$4,$4,0
	move	$6,$4
	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$5,$4
	li	$2,32			# 0x20
	beq	$5,$0,.L1101
	li	$4,1			# 0x1

	.align	3
.L1082:
	bltz	$3,.L1083
	nop

	sll	$3,$3,1
	sltu	$5,$3,$6
	beq	$5,$0,.L1083
	sll	$4,$4,1

	addiu	$2,$2,-1
	bne	$2,$0,.L1082
	nop

	move	$2,$0
	.align	3
.L1085:
	dsll	$2,$2,32
	beq	$7,$0,.L1108
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L1108:
	jr	$31
	nop

	.align	3
.L1104:
	dsubu	$4,$0,$4
	b	.L1080
	li	$7,1			# 0x1

	.align	3
.L1105:
	b	.L1081
	xori	$7,$7,0x1

	.align	3
.L1083:
	beql	$4,$0,.L1085
	move	$2,$0

.L1101:
	b	.L1087
	move	$2,$0

	.align	3
.L1106:
	or	$2,$4,$2
	srl	$4,$4,1
.L1107:
	beq	$4,$0,.L1085
	srl	$3,$3,1

.L1087:
	sltu	$5,$6,$3
	bnel	$5,$0,.L1107
	srl	$4,$4,1

	b	.L1106
	subu	$6,$6,$3

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.align	3
	.globl	__modsi3
	.set	nomips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1134
	move	$7,$0

.L1110:
	sll	$4,$4,0
	move	$2,$4
	dsra	$6,$5,63
	xor	$3,$6,$5
	sll	$3,$3,0
	subu	$3,$3,$6
	sltu	$4,$3,$4
	li	$6,32			# 0x20
	beq	$4,$0,.L1125
	li	$5,1			# 0x1

	.align	3
.L1111:
	bltz	$3,.L1133
	nop

	sll	$3,$3,1
	sltu	$4,$3,$2
	beq	$4,$0,.L1133
	sll	$5,$5,1

	addiu	$6,$6,-1
	bne	$6,$0,.L1111
	nop

	dsll	$2,$2,32
.L1136:
	beq	$7,$0,.L1138
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L1138:
	jr	$31
	nop

	.align	3
.L1134:
	dsubu	$4,$0,$4
	b	.L1110
	li	$7,1			# 0x1

	.align	3
.L1135:
	srl	$5,$5,1
.L1137:
	srl	$3,$3,1
.L1133:
	beql	$5,$0,.L1136
	dsll	$2,$2,32

.L1125:
	sltu	$4,$2,$3
	bnel	$4,$0,.L1137
	srl	$5,$5,1

	b	.L1135
	subu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.align	3
	.globl	__udivmodhi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$7,$5,$4
	li	$3,1			# 0x1
	beq	$7,$0,.L1156
	li	$2,16			# 0x10

	sll	$7,$5,16
	.align	3
.L1160:
	sra	$7,$7,16
	bltz	$7,.L1141
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1141
	andi	$3,$3,0xffff

	addiu	$2,$2,-1
	bne	$2,$0,.L1160
	sll	$7,$5,16

	move	$2,$0
	.align	3
.L1143:
	bne	$6,$0,.L1159
	nop

.L1146:
	jr	$31
	nop

	.align	3
.L1141:
	beql	$3,$0,.L1143
	move	$2,$0

.L1156:
	b	.L1145
	move	$2,$0

	.align	3
.L1144:
	dsrl	$3,$3,1
	.align	3
.L1161:
	beq	$3,$0,.L1143
	dsrl	$5,$5,1

.L1145:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1161
	dsrl	$3,$3,1

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$3,$2
	b	.L1144
	andi	$2,$2,0xffff

	.align	3
.L1159:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.align	3
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$7,$5,$4
	beq	$7,$0,.L1179
	li	$3,1			# 0x1

	li	$2,64			# 0x40
	li	$8,1			# 0x1
	dsll	$8,$8,31
	and	$7,$5,$8
	.align	3
.L1183:
	bne	$7,$0,.L1164
	nop

	dsll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1164
	dsll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,.L1183
	and	$7,$5,$8

	move	$2,$0
	.align	3
.L1166:
	bne	$6,$0,.L1182
	nop

.L1162:
	jr	$31
	nop

	.align	3
.L1164:
	beql	$3,$0,.L1166
	move	$2,$0

.L1179:
	b	.L1168
	move	$2,$0

	.align	3
.L1167:
	dsrl	$3,$3,1
	.align	3
.L1184:
	beq	$3,$0,.L1166
	dsrl	$5,$5,1

.L1168:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1184
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	b	.L1167
	or	$2,$2,$3

	.align	3
.L1182:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.align	3
	.globl	__ashldi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beq	$2,$0,.L1186
	move	$2,$0

	sll	$4,$4,0
	sll	$4,$4,$5
.L1187:
	dsll	$4,$4,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$4

	.align	3
.L1186:
	beq	$5,$0,.L1189
	sll	$3,$4,0

	sll	$2,$3,$5
	subu	$6,$0,$5
	srl	$3,$3,$6
	dsra	$4,$4,32
	sll	$4,$4,$5
	b	.L1187
	or	$4,$3,$4

	.align	3
.L1189:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.align	3
	.globl	__ashlti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beq	$2,$0,.L1192
	dsll	$2,$5,$6

	jr	$31
	move	$3,$0

	.align	3
.L1192:
	beql	$6,$0,.L1195
	move	$2,$4

	dsll	$3,$5,$6
	subu	$2,$0,$6
	dsrl	$5,$5,$2
	dsll	$2,$4,$6
	jr	$31
	or	$2,$5,$2

	.align	3
.L1195:
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.align	3
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beq	$2,$0,.L1198
	nop

	dsra	$4,$4,32
	sra	$2,$4,31
	sra	$4,$4,$5
.L1199:
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$4

	.align	3
.L1198:
	beq	$5,$0,.L1201
	dsra	$3,$4,32

	sra	$2,$3,$5
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$4,$4,$5
	b	.L1199
	or	$4,$3,$4

	.align	3
.L1201:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.align	3
	.globl	__ashrti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beq	$2,$0,.L1204
	dsra	$2,$4,63

	dsra	$5,$4,$6
.L1206:
	.align	3
.L1209:
	jr	$31
	move	$3,$5

	.align	3
.L1204:
	beql	$6,$0,.L1209
	move	$2,$4

	dsra	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L1206
	or	$5,$4,$5

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.align	3
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$2,$4,56
	dsll	$3,$4,56
	or	$2,$2,$3
	dsrl	$3,$4,40
	andi	$3,$3,0xff00
	or	$2,$2,$3
	dsrl	$3,$4,24
	li	$5,16711680			# 0xff0000
	and	$3,$3,$5
	or	$2,$2,$3
	dsrl	$5,$4,8
	li	$3,255			# 0xff
	dsll	$6,$3,24
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,8
	dsll	$6,$3,32
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,24
	dsll	$6,$3,40
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$4,$4,40
	dsll	$3,$3,48
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.align	3
	.globl	__bswapsi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,24
	sll	$3,$4,24
	or	$2,$2,$3
	srl	$3,$4,8
	andi	$3,$3,0xff00
	or	$2,$2,$3
	sll	$4,$4,8
	li	$3,16711680			# 0xff0000
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.align	3
	.globl	__clzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,65536			# 0x10000
	sltu	$3,$4,$3
	dsll	$3,$3,4
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	sltu	$2,$2,1
	dsll	$2,$2,3
	li	$5,8			# 0x8
	subu	$5,$5,$2
	srl	$4,$4,$5
	daddu	$3,$2,$3
	andi	$2,$4,0xf0
	sltu	$2,$2,1
	dsll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$4,$4,$5
	daddu	$2,$2,$3
	andi	$3,$4,0xc
	sltu	$3,$3,1
	dsll	$3,$3,1
	li	$7,2			# 0x2
	subu	$5,$7,$3
	srl	$4,$4,$5
	dsrl	$5,$4,1
	andi	$5,$5,0x1
	beq	$5,$0,.L1216
	subu	$6,$7,$4

	move	$6,$0
.L1216:
	addu	$2,$3,$2
	jr	$31
	addu	$2,$6,$2

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.align	3
	.globl	__clzti2
	.set	nomips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	sltu	$16,$4,1
	daddiu	$2,$16,-1
	and	$2,$2,$4
	beq	$4,$0,.L1222
	move	$3,$5

	move	$3,$0
.L1222:
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	or	$4,$2,$3

	sll	$16,$16,6
	addu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.align	3
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$6,$2,$3
	bne	$6,$0,.L1230
	nop

	slt	$2,$3,$2
	bne	$2,$0,.L1229
	sll	$4,$4,0

	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$4,$5
	bne	$5,$0,.L1230
	nop

	sltu	$2,$3,$4
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1229:
	jr	$31
	li	$2,2			# 0x2

	.align	3
.L1230:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.align	3
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$6,$2,$3
	bnel	$6,$0,.L1240
	move	$2,$0

	slt	$2,$3,$2
	bne	$2,$0,.L1236
	sll	$4,$4,0

	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$4,$5
	bnel	$5,$0,.L1237
	move	$2,$0

	sltu	$2,$3,$4
	b	.L1234
	daddiu	$2,$2,1

	.align	3
.L1236:
	li	$2,2			# 0x2
	.align	3
.L1237:
.L1234:
	.align	3
.L1240:
	jr	$31
	addiu	$2,$2,-1

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.align	3
	.globl	__cmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$4,$6
	bne	$2,$0,.L1245
	slt	$4,$6,$4

	bne	$4,$0,.L1244
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1245
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1244:
	jr	$31
	li	$2,2			# 0x2

	.align	3
.L1245:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.align	3
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0xffff
	sltu	$2,$2,1
	dsll	$5,$2,4
	sll	$2,$2,4
	srl	$3,$4,$2
	andi	$2,$3,0xff
	sltu	$2,$2,1
	dsll	$4,$2,3
	sll	$2,$2,3
	srl	$3,$3,$2
	daddu	$5,$4,$5
	andi	$4,$3,0xf
	sltu	$4,$4,1
	dsll	$6,$4,2
	sll	$4,$4,2
	srl	$3,$3,$4
	daddu	$6,$6,$5
	andi	$4,$3,0x3
	sltu	$4,$4,1
	dsll	$5,$4,1
	sll	$4,$4,1
	srl	$3,$3,$4
	andi	$3,$3,0x3
	nor	$2,$0,$3
	andi	$2,$2,0x1
	srl	$3,$3,1
	li	$4,2			# 0x2
	subu	$4,$4,$3
	subu	$3,$0,$2
	and	$3,$3,$4
	addu	$2,$5,$6
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.align	3
	.globl	__ctzti2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sltu	$16,$5,1
	beq	$5,$0,.L1252
	move	$2,$4

	move	$2,$0
.L1252:
	daddiu	$4,$16,-1
	and	$4,$4,$5
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	or	$4,$2,$4

	sll	$16,$16,6
	addu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.align	3
	.globl	__ffsti2
	.set	nomips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	bne	$5,$0,.L1257
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	beq	$4,$0,.L1258
	move	$2,$0

	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	b	.L1258
	addiu	$2,$2,65

	.align	3
.L1257:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	addiu	$2,$2,1
.L1258:
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.align	3
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beq	$2,$0,.L1263
	move	$2,$0

	dsra	$4,$4,32
	srl	$4,$4,$5
.L1264:
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$4

	.align	3
.L1263:
	beq	$5,$0,.L1266
	dsra	$3,$4,32

	srl	$2,$3,$5
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$4,$4,$5
	b	.L1264
	or	$4,$3,$4

	.align	3
.L1266:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.align	3
	.globl	__lshrti3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beq	$2,$0,.L1269
	move	$2,$0

	dsrl	$5,$4,$6
.L1271:
	.align	3
.L1274:
	jr	$31
	move	$3,$5

	.align	3
.L1269:
	beql	$6,$0,.L1274
	move	$2,$4

	dsrl	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L1271
	or	$5,$4,$5

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.align	3
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$3,$4,0xffff
	andi	$7,$5,0xffff
	mult	$3,$7
	mflo	$2
	srl	$6,$2,16
	srl	$4,$4,16
	mult	$4,$7
	mflo	$7
	addu	$6,$6,$7
	andi	$2,$2,0xffff
	sll	$7,$6,16
	addu	$2,$2,$7
	srl	$7,$2,16
	srl	$5,$5,16
	mult	$5,$3
	mflo	$3
	addu	$7,$7,$3
	andi	$2,$2,0xffff
	sll	$3,$7,16
	addu	$3,$2,$3
	srl	$6,$6,16
	mult	$4,$5
	mflo	$2
	addu	$2,$6,$2
	srl	$7,$7,16
	addu	$2,$2,$7
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,$3,32
	jr	$31
	or	$2,$3,$2

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.align	3
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$9,$4,0
	sll	$8,$5,0
	andi	$3,$4,0xffff
	andi	$7,$5,0xffff
	mult	$3,$7
	mflo	$2
	srl	$6,$2,16
	srl	$11,$9,16
	mult	$11,$7
	mflo	$7
	addu	$6,$6,$7
	andi	$2,$2,0xffff
	sll	$7,$6,16
	addu	$2,$2,$7
	srl	$7,$2,16
	srl	$10,$8,16
	mult	$10,$3
	mflo	$3
	addu	$7,$7,$3
	andi	$2,$2,0xffff
	sll	$3,$7,16
	addu	$3,$2,$3
	srl	$6,$6,16
	mult	$11,$10
	mflo	$2
	addu	$6,$6,$2
	srl	$7,$7,16
	dsra	$5,$5,32
	mult	$9,$5
	mflo	$2
	addu	$6,$6,$7
	addu	$2,$2,$6
	dsra	$4,$4,32
	mult	$8,$4
	mflo	$4
	addu	$2,$2,$4
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,$3,32
	jr	$31
	or	$2,$3,$2

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.align	3
	.globl	__mulddi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$2,$4,0
	sll	$3,$5,0
	multu	$2,$3
	mflo	$6
	mfhi	$7
	dsll	$6,$6,32
	dsrl	$6,$6,32
	dsll	$7,$7,32
	or	$6,$6,$7
	dsrl	$7,$6,32
	dsra	$4,$4,32
	multu	$3,$4
	mflo	$3
	mfhi	$8
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$8,$8,32
	or	$3,$3,$8
	daddu	$3,$3,$7
	dsll	$7,$3,32
	dsrl	$7,$7,32
	dsra	$5,$5,32
	multu	$2,$5
	mflo	$2
	mfhi	$8
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$8,$8,32
	or	$2,$2,$8
	daddu	$2,$2,$7
	dsll	$6,$6,32
	dsrl	$6,$6,32
	dsll	$7,$2,32
	daddu	$6,$6,$7
	dsrl	$3,$3,32
	multu	$4,$5
	mflo	$4
	mfhi	$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$5,$5,32
	or	$4,$4,$5
	daddu	$3,$3,$4
	dsrl	$2,$2,32
	daddu	$2,$3,$2
	jr	$31
	move	$3,$6

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.align	3
	.globl	__multi3
	.set	nomips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$3,$5,0
	sll	$2,$7,0
	multu	$3,$2
	mflo	$8
	mfhi	$9
	dsll	$8,$8,32
	dsrl	$8,$8,32
	dsll	$9,$9,32
	or	$8,$8,$9
	dsrl	$10,$8,32
	dsra	$9,$5,32
	multu	$2,$9
	mflo	$2
	mfhi	$11
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$11,$11,32
	or	$2,$2,$11
	daddu	$2,$2,$10
	dsll	$11,$2,32
	dsrl	$11,$11,32
	dsra	$10,$7,32
	multu	$3,$10
	mflo	$3
	mfhi	$12
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$12,$12,32
	or	$3,$3,$12
	daddu	$3,$3,$11
	dsll	$8,$8,32
	dsrl	$8,$8,32
	dsll	$11,$3,32
	daddu	$8,$8,$11
	dsrl	$2,$2,32
	multu	$9,$10
	mflo	$9
	mfhi	$10
	dsll	$9,$9,32
	dsrl	$9,$9,32
	dsll	$10,$10,32
	or	$9,$9,$10
	daddu	$2,$2,$9
	dsrl	$3,$3,32
	daddu	$2,$2,$3
	dmult	$5,$6
	mflo	$3
	daddu	$2,$3,$2
	nop
	dmult	$7,$4
	mflo	$3
	daddu	$2,$2,$3
	jr	$31
	move	$3,$8

	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.align	3
	.globl	__negdi2
	.set	nomips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.align	3
	.globl	__negti2
	.set	nomips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsubu	$3,$0,$5
	sltu	$5,$0,$5
	dsubu	$2,$0,$4
	jr	$31
	dsubu	$2,$2,$5

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.align	3
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	sll	$4,$4,0
	xor	$2,$2,$4
	srl	$3,$2,16
	xor	$3,$3,$2
	srl	$2,$3,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$3,$3,$2
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.align	3
	.globl	__parityti2
	.set	nomips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$5,$5,$4
	dsra	$2,$5,32
	sll	$5,$5,0
	xor	$2,$2,$5
	srl	$3,$2,16
	xor	$3,$3,$2
	srl	$2,$3,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$3,$3,$2
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.align	3
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,16
	xor	$4,$2,$4
	srl	$2,$4,8
	xor	$2,$2,$4
	srl	$4,$2,4
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.align	3
	.globl	__popcountdi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$3,$4,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	daddiu	$2,$2,21845
	and	$2,$3,$2
	dsubu	$4,$4,$2
	dsrl	$3,$4,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	and	$3,$3,$2
	and	$4,$4,$2
	daddu	$3,$3,$4
	dsrl	$2,$3,4
	daddu	$3,$2,$3
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$2,$3,$2
	dsrl	$3,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	srl	$3,$2,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x7f

	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.align	3
	.globl	__popcountsi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,1
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	srl	$3,$4,2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	and	$3,$3,$2
	and	$4,$4,$2
	addu	$4,$4,$3
	srl	$3,$4,4
	addu	$3,$3,$4
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$3,$3,$2
	srl	$2,$3,16
	addu	$2,$2,$3
	srl	$3,$2,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x3f

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.align	3
	.globl	__popcountti2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$3,$4,63
	dsrl	$2,$5,1
	or	$2,$3,$2
	dsrl	$6,$4,1
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	and	$6,$6,$3
	and	$2,$2,$3
	dsubu	$2,$5,$2
	sltu	$5,$5,$2
	dsubu	$4,$4,$6
	dsubu	$4,$4,$5
	dsll	$3,$4,62
	dsrl	$5,$2,2
	or	$5,$3,$5
	dsrl	$6,$4,2
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	daddiu	$3,$3,13107
	and	$6,$6,$3
	and	$5,$5,$3
	and	$4,$4,$3
	and	$2,$2,$3
	daddu	$2,$5,$2
	sltu	$5,$2,$5
	daddu	$4,$6,$4
	daddu	$4,$5,$4
	dsll	$5,$4,60
	dsrl	$3,$2,4
	or	$3,$5,$3
	dsrl	$5,$4,4
	daddu	$2,$3,$2
	sltu	$3,$2,$3
	daddu	$4,$5,$4
	daddu	$3,$3,$4
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	daddiu	$4,$4,3855
	and	$3,$3,$4
	and	$2,$2,$4
	daddu	$3,$3,$2
	dsrl	$2,$3,32
	sll	$3,$3,0
	addu	$2,$2,$3
	srl	$3,$2,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.align	3
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$6,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(__powidf2)))
	move	$2,$5
	ld	$4,%got_page(.LC12)($6)
	b	.L1302
	ldc1	$f0,%got_ofst(.LC12)($4)

	.align	3
.L1300:
	srl	$3,$2,31
	.align	3
.L1309:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,.L1301
	nop

	mul.d	$f12,$f12,$f12
.L1302:
	andi	$3,$2,0x1
	bnel	$3,$0,.L1300
	mul.d	$f0,$f0,$f12

	b	.L1309
	srl	$3,$2,31

	.align	3
.L1301:
	bltz	$5,.L1308
	ldc1	$f1,%got_ofst(.LC12)($4)

.L1299:
	jr	$31
	nop

	.align	3
.L1308:
	jr	$31
	div.d	$f0,$f1,$f0

	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.align	3
	.globl	__powisf2
	.set	nomips16
	.set	nomicromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$6,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(__powisf2)))
	move	$2,$5
	ld	$4,%got_page(.LC14)($6)
	b	.L1313
	lwc1	$f0,%got_ofst(.LC14)($4)

	.align	3
.L1311:
	srl	$3,$2,31
	.align	3
.L1320:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,.L1312
	nop

	mul.s	$f12,$f12,$f12
.L1313:
	andi	$3,$2,0x1
	bnel	$3,$0,.L1311
	mul.s	$f0,$f0,$f12

	b	.L1320
	srl	$3,$2,31

	.align	3
.L1312:
	bltz	$5,.L1319
	lwc1	$f1,%got_ofst(.LC14)($4)

.L1310:
	jr	$31
	nop

	.align	3
.L1319:
	jr	$31
	div.s	$f0,$f1,$f0

	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.align	3
	.globl	__ucmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$6,$2,$3
	bne	$6,$0,.L1325
	nop

	sltu	$2,$3,$2
	bne	$2,$0,.L1324
	sll	$4,$4,0

	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$4,$5
	bne	$5,$0,.L1325
	nop

	sltu	$2,$3,$4
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1324:
	jr	$31
	li	$2,2			# 0x2

	.align	3
.L1325:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.align	3
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$6,$2,$3
	bnel	$6,$0,.L1335
	move	$2,$0

	sltu	$2,$3,$2
	bne	$2,$0,.L1331
	sll	$4,$4,0

	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$4,$5
	bnel	$5,$0,.L1332
	move	$2,$0

	sltu	$2,$3,$4
	b	.L1329
	daddiu	$2,$2,1

	.align	3
.L1331:
	li	$2,2			# 0x2
	.align	3
.L1332:
.L1329:
	.align	3
.L1335:
	jr	$31
	addiu	$2,$2,-1

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.align	3
	.globl	__ucmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$6
	bne	$2,$0,.L1340
	sltu	$4,$6,$4

	bne	$4,$0,.L1339
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1340
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1339:
	jr	$31
	li	$2,2			# 0x2

	.align	3
.L1340:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.local	seed
	.comm	seed,8,8
	.rdata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	-1048577
	.word	-1
	.align	3
.LC3:
	.word	2146435071
	.word	-1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	-65537
	.word	-1
	.word	-1
	.word	-1
	.align	4
.LC5:
	.word	2147418111
	.word	-1
	.word	-1
	.word	-1
	.LC6 = .LC10
	.section	.rodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.LC8 = .LC10
	.section	.rodata.cst8
	.align	3
.LC9:
	.word	1071644672
	.word	0
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.align	4
.LC11:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.section	.rodata.cst8
	.align	3
.LC12:
	.word	1072693248
	.word	0
	.section	.rodata.cst4
	.align	2
.LC13:
	.word	1191182336
	.align	2
.LC14:
	.word	1065353216
	.globl	__ctzdi2
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
