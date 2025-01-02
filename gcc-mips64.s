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
	lb	$4,-1($5)
	daddiu	$3,$3,-1
	daddiu	$5,$5,-1
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
	lb	$4,0($5)
	daddiu	$3,$3,1
	daddiu	$5,$5,1
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
	bne	$7,$0,.L23
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L26:
	beq	$7,$0,.L25
	daddiu	$4,$4,1

.L23:
	lbu	$2,0($5)
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bne	$2,$6,.L26
	sb	$2,0($4)

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L25:
	move	$2,$0
	jr	$31
	nop

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
	bne	$6,$0,.L36
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L38:
	beq	$6,$0,.L39
	daddiu	$4,$4,1

.L36:
	lbu	$2,0($4)
	bne	$2,$5,.L38
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L39:
	move	$2,$0
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
	bnel	$6,$0,.L55
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L47:
	beq	$6,$0,.L49
	daddiu	$5,$5,1

	lbu	$2,0($4)
.L55:
	lbu	$3,0($5)
	daddiu	$6,$6,-1
	beq	$2,$3,.L47
	daddiu	$4,$4,1

	jr	$31
	subu	$2,$2,$3

	.align	3
.L49:
	move	$2,$0
	jr	$31
	nop

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
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(memcpy)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beq	$6,$0,.L57
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L57:
	ld	$31,24($sp)
	ld	$28,16($sp)
	move	$2,$16
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
	andi	$5,$5,0x00ff
	b	.L63
	daddiu	$4,$4,-1

	.align	3
.L65:
	lbu	$3,0($2)
	beq	$3,$5,.L67
	daddiu	$6,$6,-1

.L63:
	bne	$6,$4,.L65
	move	$2,$6

	move	$2,$0
.L67:
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
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(memset)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(memset)))
	beq	$6,$0,.L71
	move	$16,$4

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

.L71:
	ld	$31,24($sp)
	ld	$28,16($sp)
	move	$2,$16
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	lb	$3,0($5)
	move	$2,$4
	beq	$3,$0,.L81
	sb	$3,0($4)

	.align	3
.L75:
	lb	$3,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bne	$3,$0,.L75
	sb	$3,0($2)

.L81:
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
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$0,.L83
	andi	$5,$5,0x00ff

.L92:
	jr	$31
	nop

	.align	3
.L85:
	beq	$3,$0,.L92
	daddiu	$2,$2,1

.L83:
	andi	$3,$3,0x00ff
	bnel	$3,$5,.L85
	lb	$3,1($2)

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
	b	.L95
	move	$2,$4

	.align	3
.L99:
	beq	$3,$0,.L98
	daddiu	$2,$2,1

.L95:
	lb	$3,0($2)
	bne	$3,$5,.L99
	nop

	jr	$31
	nop

	.align	3
.L98:
	jr	$31
	move	$2,$0

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
	lb	$3,0($4)
	lb	$2,0($5)
	beql	$3,$2,.L109
	daddiu	$4,$4,1

	b	.L108
	andi	$3,$3,0x00ff

	.align	3
.L103:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L107
	daddiu	$4,$4,1

.L109:
	bne	$3,$0,.L103
	daddiu	$5,$5,1

	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$3,$2

	.align	3
.L107:
	andi	$3,$3,0x00ff
	.align	3
.L108:
	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$3,$2

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
	beq	$2,$0,.L113
	nop

	move	$2,$4
	.align	3
.L112:
	lb	$3,1($2)
	bne	$3,$0,.L112
	daddiu	$2,$2,1

	jr	$31
	dsubu	$2,$2,$4

	.align	3
.L113:
	jr	$31
	move	$2,$0

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
	beq	$6,$0,.L124
	daddiu	$6,$6,-1

	lbu	$2,0($4)
	bne	$2,$0,.L120
	daddu	$6,$4,$6

	b	.L119
	lbu	$3,0($5)

	.align	3
.L130:
	beq	$6,$4,.L119
	nop

	bne	$3,$2,.L119
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,.L129
	lbu	$3,1($5)

	move	$5,$7
.L120:
	lbu	$3,0($5)
	bne	$3,$0,.L130
	daddiu	$7,$5,1

.L119:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L124:
	jr	$31
	move	$2,$0

	.align	3
.L129:
	jr	$31
	subu	$2,$2,$3

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
	bne	$2,$0,.L136
	dsrl	$2,$6,1

	dsll	$2,$2,1
	daddu	$2,$4,$2
	.align	3
.L133:
	lbu	$6,1($4)
	lbu	$3,0($4)
	daddiu	$4,$4,2
	sb	$6,0($5)
	sb	$3,1($5)
	bne	$4,$2,.L133
	daddiu	$5,$5,2

.L136:
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
	beq	$4,$2,.L143
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L143:
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
	bne	$3,$0,.L148
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L148:
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
	beq	$4,$2,.L160
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L160:
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
	bne	$3,$0,.L171
	li	$2,1			# 0x1

	addiu	$3,$4,-127
	sltu	$3,$3,33
	beq	$3,$0,.L170
	addiu	$3,$4,-8232

.L171:
	jr	$31
	nop

	.align	3
.L170:
	sltu	$3,$3,2
	bne	$3,$0,.L171
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$4,$2
	jr	$31
	sltu	$2,$2,3

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
	bne	$2,$0,.L182
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,.L179
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,.L179
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bne	$3,$0,.L179
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L180
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L179:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L182:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

	.align	3
.L180:
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
	bne	$3,$0,.L186
	ori	$4,$4,0x20

	addiu	$4,$4,-97
	jr	$31
	sltu	$2,$4,6

	.align	3
.L186:
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
	bc1t	.L193
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L194
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L197
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L197:
	dmtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L193:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L194:
	jr	$31
	mov.d	$f0,$f13

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
	bc1t	.L202
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L203
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L206
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L206:
	mtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L202:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L203:
	jr	$31
	mov.s	$f0,$f13

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
	c.un.d	$f12,$f12
	daddiu	$sp,$sp,-16
	bc1t	.L214
	sdc1	$f13,0($sp)

	c.un.d	$f13,$f13
	dmfc1	$2,$f12
	bc1t	.L215
	mov.d	$f0,$f13

	ld	$4,0($sp)
	dsrl	$3,$2,63
	dsrl	$4,$4,63
	beql	$3,$4,.L210
	ldc1	$f0,0($sp)

	beq	$3,$0,.L215
	nop

.L208:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L210:
	c.lt.d	$f12,$f0
	nop
	bc1t	.L208
	nop

.L215:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L214:
	b	.L208
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
	c.un.s	$f12,$f12
	daddiu	$sp,$sp,-16
	bc1t	.L226
	swc1	$f13,0($sp)

	c.un.s	$f13,$f13
	mfc1	$2,$f12
	bc1t	.L227
	mov.s	$f0,$f13

	lw	$3,0($sp)
	li	$5,-2147483648			# 0xffffffff80000000
	and	$4,$2,$5
	and	$3,$3,$5
	beq	$4,$3,.L222
	move	$5,$4

	beq	$5,$0,.L227
	nop

.L220:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L222:
	lwc1	$f0,0($sp)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L220
	nop

.L227:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L226:
	b	.L220
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
	dmfc1	$9,$f13
	sd	$28,96($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	dmfc1	$8,$f12
	dmfc1	$3,$f15
	dmfc1	$2,$f14
	dmtc1	$9,$f13
	dmtc1	$9,$f15
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$8,$f14
	dmtc1	$8,$f12
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	sd	$31,104($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	move	$18,$8
	move	$19,$9
	move	$16,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$17,$3

	bne	$2,$0,.L232
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	dmtc1	$17,$f13
	dmtc1	$16,$f14
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L239
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beql	$2,$3,.L234
	sd	$17,8($sp)

	beql	$2,$0,.L244
	move	$16,$18

.L232:
	ld	$31,104($sp)
.L245:
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	dmtc1	$17,$f2
	dmtc1	$16,$f0
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L234:
	sd	$19,24($sp)
	ldc1	$f15,8($sp)
	ldc1	$f13,24($sp)
	sd	$16,0($sp)
	sd	$18,16($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f14,0($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L245
	ld	$31,104($sp)

.L239:
	move	$16,$18
.L244:
	b	.L232
	move	$17,$19

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
	c.un.d	$f12,$f12
	daddiu	$sp,$sp,-16
	dmfc1	$2,$f13
	mov.d	$f0,$f13
	bc1t	.L246
	sdc1	$f12,0($sp)

	c.un.d	$f13,$f13
	nop
	bc1t	.L253
	ld	$3,0($sp)

	dsrl	$4,$2,63
	dsrl	$3,$3,63
	beql	$3,$4,.L248
	ldc1	$f0,0($sp)

	beq	$3,$0,.L258
	mov.d	$f0,$f12

.L246:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L248:
	c.lt.d	$f0,$f13
	nop
	bc1t	.L246
	nop

.L258:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L253:
	b	.L246
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
	c.un.s	$f12,$f12
	daddiu	$sp,$sp,-16
	mfc1	$2,$f13
	mov.s	$f0,$f13
	bc1t	.L259
	swc1	$f12,0($sp)

	c.un.s	$f13,$f13
	nop
	bc1t	.L266
	lw	$4,0($sp)

	li	$5,-2147483648			# 0xffffffff80000000
	and	$3,$2,$5
	and	$4,$4,$5
	beq	$4,$3,.L261
	move	$5,$4

	beq	$5,$0,.L271
	mov.s	$f0,$f12

.L259:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L261:
	lwc1	$f0,0($sp)
	c.lt.s	$f0,$f13
	nop
	bc1t	.L259
	nop

.L271:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L266:
	b	.L259
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
	dmfc1	$9,$f13
	sd	$28,96($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	dmfc1	$8,$f12
	dmfc1	$3,$f15
	dmfc1	$2,$f14
	dmtc1	$9,$f13
	dmtc1	$9,$f15
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$8,$f14
	dmtc1	$8,$f12
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	sd	$31,104($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	move	$16,$8
	move	$17,$9
	move	$18,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$19,$3

	bne	$2,$0,.L278
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	dmtc1	$19,$f13
	dmtc1	$18,$f14
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L272
	dsrl	$2,$16,63

	dsrl	$3,$18,63
	beql	$2,$3,.L274
	sd	$19,8($sp)

	beql	$2,$0,.L284
	move	$16,$18

.L272:
	ld	$31,104($sp)
.L285:
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	dmtc1	$17,$f2
	dmtc1	$16,$f0
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L274:
	sd	$17,24($sp)
	ldc1	$f15,8($sp)
	ldc1	$f13,24($sp)
	sd	$18,0($sp)
	sd	$16,16($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f14,0($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L285
	ld	$31,104($sp)

.L278:
	move	$16,$18
.L284:
	b	.L272
	move	$17,$19

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
	beq	$4,$0,.L289
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$2,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	move	$3,$4
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L288:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	srl	$3,$3,6
	daddiu	$5,$5,1
	bne	$3,$0,.L288
	sb	$4,-1($5)

	jr	$31
	sb	$0,0($5)

	.align	3
.L289:
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	jr	$31
	sb	$0,0($5)

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
	ld	$2,%got_page(seed)($3)
	addiu	$4,$4,-1
	dsll	$4,$4,32
	dsrl	$4,$4,32
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
	li	$2,1481703424			# 0x58510000
	ori	$2,$2,0xf42d
	dsll	$2,$2,16
	ld	$4,%got_ofst(seed)($3)
	daddiu	$2,$2,19605
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
	beql	$5,$0,.L303
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L305
	sd	$4,8($2)

.L305:
	jr	$31
	nop

	.align	3
.L303:
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
	beq	$2,$0,.L317
	ld	$3,8($4)

	sd	$3,8($2)
	ld	$3,8($4)
.L317:
	bnel	$3,$0,.L316
	sd	$2,0($3)

.L316:
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
	sd	$19,32($sp)
	ld	$19,0($6)
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$20,40($sp)
	sd	$18,24($sp)
	sd	$31,88($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$23,$6
	move	$20,$4
	move	$fp,$5
	beq	$19,$0,.L319
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L321
	move	$17,$0

	.align	3
.L334:
	beq	$19,$17,.L319
	daddu	$16,$16,$18

.L321:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	bne	$2,$0,.L334
	daddiu	$17,$17,1

.L318:
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$21
	ld	$21,48($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L319:
	dmult	$18,$19
	daddiu	$19,$19,1
	sd	$19,0($23)
	mflo	$21
	beq	$18,$0,.L318
	daddu	$21,$fp,$21

	ld	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$21
	ld	$21,48($sp)
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
	sd	$20,40($sp)
	ld	$20,0($6)
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beq	$20,$0,.L336
	sd	$16,8($sp)

	move	$18,$4
	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L338
	move	$17,$0

	.align	3
.L347:
	beq	$20,$17,.L336
	daddu	$16,$16,$21

.L338:
	move	$5,$16
	move	$25,$19
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,.L347
	daddiu	$17,$17,1

	ld	$31,72($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$22
	ld	$22,56($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L336:
	ld	$31,72($sp)
	move	$22,$0
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$22
	ld	$22,56($sp)
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
	li	$3,32			# 0x20
.L357:
	lb	$6,0($4)
	addiu	$2,$6,-9
	beq	$6,$3,.L351
	sltu	$2,$2,5

	bnel	$2,$0,.L357
	daddiu	$4,$4,1

	li	$2,43			# 0x2b
	beq	$6,$2,.L352
	li	$2,45			# 0x2d

	bne	$6,$2,.L368
	addiu	$5,$6,-48

	lb	$6,1($4)
	addiu	$5,$6,-48
	sltu	$2,$5,10
	beq	$2,$0,.L362
	daddiu	$4,$4,1

	li	$8,1			# 0x1
.L355:
	move	$2,$0
	.align	3
.L359:
	lb	$6,1($4)
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$5
	subu	$2,$3,$5
	addiu	$5,$6,-48
	sltu	$6,$5,10
	bne	$6,$0,.L359
	daddiu	$4,$4,1

	bne	$8,$0,.L369
	nop

	jr	$31
	subu	$2,$7,$3

	.align	3
.L351:
	b	.L357
	daddiu	$4,$4,1

	.align	3
.L368:
	sltu	$2,$5,10
	bne	$2,$0,.L355
	move	$8,$0

.L362:
	move	$2,$0
.L369:
	jr	$31
	nop

	.align	3
.L352:
	lb	$6,1($4)
	move	$8,$0
	addiu	$5,$6,-48
	sltu	$2,$5,10
	bne	$2,$0,.L355
	daddiu	$4,$4,1

	jr	$31
	move	$2,$0

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
	li	$3,32			# 0x20
.L377:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L371
	sltu	$2,$2,5

	bnel	$2,$0,.L377
	daddiu	$4,$4,1

	li	$2,43			# 0x2b
	beq	$5,$2,.L372
	li	$2,45			# 0x2d

	bne	$5,$2,.L388
	addiu	$6,$5,-48

	lb	$5,1($4)
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,.L382
	daddiu	$4,$4,1

	li	$8,1			# 0x1
.L375:
	move	$2,$0
	.align	3
.L379:
	lb	$5,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	move	$7,$6
	addiu	$6,$5,-48
	dsll	$3,$3,1
	sltu	$5,$6,10
	daddiu	$4,$4,1
	bne	$5,$0,.L379
	dsubu	$2,$3,$7

	bne	$8,$0,.L389
	nop

	jr	$31
	dsubu	$2,$7,$3

	.align	3
.L371:
	b	.L377
	daddiu	$4,$4,1

	.align	3
.L388:
	sltu	$2,$6,10
	bne	$2,$0,.L375
	move	$8,$0

.L382:
	move	$2,$0
.L389:
	jr	$31
	nop

	.align	3
.L372:
	lb	$5,1($4)
	move	$8,$0
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,.L375
	daddiu	$4,$4,1

	jr	$31
	move	$2,$0

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
	li	$3,32			# 0x20
.L395:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L391
	sltu	$2,$2,5

	bnel	$2,$0,.L395
	daddiu	$4,$4,1

	li	$2,43			# 0x2b
	beq	$5,$2,.L392
	li	$2,45			# 0x2d

	beql	$5,$2,.L393
	lb	$5,1($4)

	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,.L402
	move	$8,$0

.L396:
	move	$2,$0
	.align	3
.L399:
	lb	$5,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	move	$7,$6
	addiu	$6,$5,-48
	dsll	$3,$3,1
	sltu	$5,$6,10
	daddiu	$4,$4,1
	bne	$5,$0,.L399
	dsubu	$2,$3,$7

	bne	$8,$0,.L408
	nop

	jr	$31
	dsubu	$2,$7,$3

	.align	3
.L391:
	b	.L395
	daddiu	$4,$4,1

	.align	3
.L393:
	li	$8,1			# 0x1
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,.L396
	daddiu	$4,$4,1

.L402:
	move	$2,$0
.L408:
	jr	$31
	nop

	.align	3
.L392:
	lb	$5,1($4)
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,.L402
	daddiu	$4,$4,1

	b	.L396
	move	$8,$0

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
	beq	$6,$0,.L410
	sd	$16,8($sp)

	move	$16,$6
	move	$22,$4
	move	$20,$5
	move	$19,$7
	b	.L413
	move	$21,$8

	.align	3
.L423:
	beq	$2,$0,.L409
	dsubu	$16,$16,$18

	beq	$16,$0,.L410
	daddu	$20,$17,$19

.L413:
	dsrl	$18,$16,1
.L424:
	dmult	$18,$19
	move	$4,$22
	move	$25,$21
	daddiu	$16,$16,-1
	mflo	$17
	daddu	$17,$20,$17
	jalr	$25
	move	$5,$17

	bgez	$2,.L423
	nop

	move	$16,$18
	bne	$16,$0,.L424
	dsrl	$18,$16,1

.L410:
	move	$17,$0
.L409:
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$16,8($sp)
	move	$2,$17
	ld	$17,16($sp)
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
	sll	$6,$6,0
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	beq	$6,$0,.L429
	sd	$16,0($sp)

	move	$23,$4
	move	$19,$5
	move	$18,$7
	move	$22,$8
	move	$21,$9
	b	.L426
	move	$16,$6

	.align	3
.L438:
	beq	$16,$0,.L429
	daddu	$19,$17,$18

.L426:
	dsra	$2,$16,1
.L440:
	dmult	$2,$18
	move	$6,$21
	move	$4,$23
	move	$25,$22
	sra	$20,$16,1
	addiu	$16,$16,-1
	mflo	$17
	daddu	$17,$19,$17
	jalr	$25
	move	$5,$17

	beq	$2,$0,.L439
	ld	$31,72($sp)

	bgtz	$2,.L438
	sra	$16,$16,1

	move	$16,$20
	bne	$16,$0,.L440
	dsra	$2,$16,1

.L429:
	move	$17,$0
	ld	$31,72($sp)
.L439:
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$16,0($sp)
	move	$2,$17
	ld	$17,8($sp)
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
	div	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$4
	dsll	$4,$4,32
	dsrl	$4,$4,32
	mflo	$2
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$4

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
	ddiv	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$4
	mflo	$2
	jr	$31
	move	$3,$4

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
	ddiv	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$4
	mflo	$2
	jr	$31
	move	$3,$4

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
	ddiv	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$4
	mflo	$2
	jr	$31
	move	$3,$4

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
	lw	$2,0($4)
	bne	$2,$0,.L456
	nop

	jr	$31
	nop

	.align	3
.L458:
	beq	$2,$0,.L459
	daddiu	$4,$4,4

.L456:
	bnel	$5,$2,.L458
	lw	$2,4($4)

	jr	$31
	move	$2,$4

	.align	3
.L459:
	jr	$31
	move	$2,$0

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
	beql	$3,$6,.L471
	daddiu	$4,$4,4

	b	.L470
	slt	$4,$3,$6

	.align	3
.L465:
	lw	$3,0($4)
	lw	$6,0($5)
	bne	$3,$6,.L464
	daddiu	$4,$4,4

.L471:
	bne	$3,$0,.L465
	daddiu	$5,$5,4

.L464:
	slt	$4,$3,$6
.L470:
	bne	$4,$0,.L472
	li	$2,-1			# 0xffffffffffffffff

	slt	$2,$6,$3
.L472:
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
.L474:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bne	$6,$0,.L474
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
	beq	$2,$0,.L480
	nop

	move	$2,$4
	.align	3
.L479:
	lw	$3,4($2)
	bne	$3,$0,.L479
	daddiu	$2,$2,4

	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.align	3
.L480:
	jr	$31
	move	$2,$0

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
	bnel	$6,$0,.L496
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L493:
	beql	$2,$0,.L497
	lw	$2,0($4)

	daddiu	$4,$4,4
	beq	$6,$0,.L489
	daddiu	$5,$5,4

	lw	$2,0($4)
.L496:
	lw	$3,0($5)
	beq	$3,$2,.L493
	daddiu	$6,$6,-1

	lw	$2,0($4)
.L497:
	lw	$3,0($5)
	slt	$4,$2,$3
	beq	$4,$0,.L495
	slt	$2,$3,$2

	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L489:
	move	$2,$0
.L495:
	jr	$31
	nop

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
	bnel	$6,$0,.L506
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L501:
	beq	$6,$0,.L502
	daddiu	$4,$4,4

	lw	$2,0($4)
.L506:
	bne	$2,$5,.L501
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L502:
	move	$2,$0
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
	bnel	$6,$0,.L520
	lw	$3,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L510:
	daddiu	$4,$4,4
	beq	$6,$0,.L513
	daddiu	$5,$5,4

	lw	$3,0($4)
.L520:
	lw	$2,0($5)
	beq	$3,$2,.L510
	daddiu	$6,$6,-1

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bne	$4,$0,.L518
	slt	$2,$3,$2

	jr	$31
	nop

	.align	3
.L513:
	jr	$31
	move	$2,$0

	.align	3
.L518:
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

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
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(wmemcpy)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beq	$6,$0,.L523
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L523:
	ld	$31,24($sp)
	ld	$28,16($sp)
	move	$2,$16
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
	beq	$4,$5,.L546
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$4,$3,$4
	beq	$4,$0,.L543
	daddiu	$3,$6,-1

	beq	$6,$0,.L546
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L533:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L533
	sw	$6,0($4)

.L546:
	jr	$31
	nop

	.align	3
.L543:
	move	$7,$2
	beq	$6,$0,.L546
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L531:
	lw	$4,0($5)
	daddiu	$3,$3,-1
	daddiu	$7,$7,4
	daddiu	$5,$5,4
	bne	$3,$8,.L531
	sw	$4,-4($7)

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
	beq	$6,$0,.L555
	move	$2,$4

	daddiu	$3,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	move	$6,$4
	.align	3
.L549:
	daddiu	$3,$3,-1
	daddiu	$6,$6,4
	bne	$3,$7,.L549
	sw	$5,-4($6)

.L555:
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
	beq	$2,$0,.L557
	daddu	$2,$4,$6

	beq	$6,$0,.L571
	daddu	$5,$5,$6

	.align	3
.L559:
	lb	$3,-1($2)
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	bne	$4,$2,.L559
	sb	$3,0($5)

.L571:
	jr	$31
	nop

	.align	3
.L557:
	beq	$4,$5,.L570
	nop

	beq	$6,$0,.L571
	daddu	$6,$4,$6

	.align	3
.L560:
	lb	$2,0($4)
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	bne	$6,$4,.L560
	sb	$2,-1($5)

.L570:
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
	subu	$2,$0,$5
	dsrl	$2,$4,$2
	dsll	$5,$4,$5
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	dsll	$2,$4,$2
	dsrl	$5,$4,$5
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	srl	$2,$4,$2
	sll	$5,$4,$5
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	sll	$2,$4,$2
	srl	$5,$4,$5
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	dsrl	$2,$4,$2
	dsll	$5,$4,$5
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	dsll	$2,$4,$2
	dsrl	$5,$4,$5
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	andi	$2,$2,0xf
	sll	$5,$4,$5
	srl	$2,$4,$2
	or	$2,$5,$2
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
	subu	$2,$0,$5
	andi	$2,$2,0xf
	srl	$5,$4,$5
	sll	$2,$4,$2
	or	$2,$5,$2
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
	subu	$2,$0,$5
	andi	$2,$2,0x7
	sll	$5,$4,$5
	srl	$2,$4,$2
	or	$2,$5,$2
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
	subu	$2,$0,$5
	andi	$2,$2,0x7
	srl	$5,$4,$5
	sll	$2,$4,$2
	or	$2,$5,$2
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
	li	$2,16711680			# 0xff0000
	sll	$3,$4,8
	sll	$5,$4,24
	and	$3,$3,$2
	or	$3,$3,$5
	and	$2,$4,$2
	srl	$5,$4,24
	or	$3,$5,$3
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
	dsrl	$6,$4,56
	dsll	$2,$4,56
	dsrl	$5,$4,40
	or	$2,$2,$6
	andi	$5,$5,0xff00
	li	$3,255			# 0xff
	dsrl	$6,$4,24
	or	$2,$2,$5
	li	$5,16711680			# 0xff0000
	and	$6,$6,$5
	dsll	$7,$3,24
	dsrl	$5,$4,8
	and	$5,$5,$7
	or	$2,$2,$6
	dsll	$7,$3,32
	dsll	$6,$4,8
	and	$6,$6,$7
	or	$2,$2,$5
	dsll	$7,$3,40
	dsll	$5,$4,24
	or	$2,$2,$6
	and	$5,$5,$7
	dsll	$3,$3,48
	dsll	$4,$4,40
	or	$2,$2,$5
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
	b	.L601
	li	$6,32			# 0x20

	.align	3
.L605:
	beq	$6,$2,.L604
	nop

.L601:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$5,$5,0x1
	beq	$5,$0,.L605
	move	$3,$2

	jr	$31
	nop

	.align	3
.L604:
	jr	$31
	move	$2,$0

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
	beq	$4,$0,.L614
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L613
	nop

	li	$2,1			# 0x1
	.align	3
.L608:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L608
	addiu	$2,$2,1

.L614:
	jr	$31
	nop

.L613:
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
	bc1t	.L621
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1f	.L620
	li	$2,1			# 0x1

.L621:
	jr	$31
	nop

	.align	3
.L620:
	jr	$31
	move	$2,$0

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
	bc1t	.L628
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1f	.L627
	li	$2,1			# 0x1

.L628:
	jr	$31
	nop

	.align	3
.L627:
	jr	$31
	move	$2,$0

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
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	ld	$2,%got_page(.LC4)($28)
	ld	$25,%call16(__lttf2)($28)
	dmfc1	$5,$f13
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	dmfc1	$4,$f12
	sd	$17,8($sp)
	ldc1	$f14,%got_ofst(.LC4)($2)
	sd	$16,0($sp)
	sd	$31,40($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	move	$17,$4
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	move	$16,$5

	move	$3,$2
	bltz	$3,.L630
	li	$2,1			# 0x1

	ld	$2,%got_page(.LC5)($28)
	dmtc1	$16,$f13
	ld	$25,%call16(__gttf2)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	dmtc1	$17,$f12
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC5)($2)

	slt	$2,$0,$2
.L630:
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
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	sd	$16,8($sp)
	sd	$31,40($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	cvt.d.w	$f12,$f0
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	move	$16,$4

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
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
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$4,$4,$25
	mov.s	$f0,$f12
	bc1t	.L655
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	.L655
	nop

	bltz	$5,.L651
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f1,%got_ofst(.LC6)($2)
.L639:
	andi	$2,$5,0x1
	beq	$2,$0,.L654
	srl	$2,$5,31

	.align	3
.L641:
	mul.s	$f0,$f0,$f1
	srl	$2,$5,31
.L654:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L655
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f1,$f1,$f1
	bne	$3,$0,.L641
	addu	$2,$2,$5

	sra	$5,$2,1
.L653:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f1,$f1,$f1
	bne	$3,$0,.L641
	addu	$2,$2,$5

	b	.L653
	sra	$5,$2,1

.L655:
	jr	$31
	nop

	.align	3
.L651:
	ld	$2,%got_page(.LC7)($4)
	b	.L639
	lwc1	$f1,%got_ofst(.LC7)($2)

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
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	mov.d	$f0,$f12
	bc1t	.L674
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$f1,$f12
	nop
	bc1t	.L674
	nop

	bltz	$5,.L670
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f1,%got_ofst(.LC8)($2)
.L658:
	andi	$2,$5,0x1
	beq	$2,$0,.L673
	srl	$2,$5,31

	.align	3
.L660:
	mul.d	$f0,$f0,$f1
	srl	$2,$5,31
.L673:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L674
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.d	$f1,$f1,$f1
	bne	$3,$0,.L660
	addu	$2,$2,$5

	sra	$5,$2,1
.L672:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.d	$f1,$f1,$f1
	bne	$3,$0,.L660
	addu	$2,$2,$5

	b	.L672
	sra	$5,$2,1

.L674:
	jr	$31
	nop

	.align	3
.L670:
	ld	$2,%got_page(.LC9)($4)
	b	.L658
	ldc1	$f1,%got_ofst(.LC9)($2)

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
	dmfc1	$11,$f13
	sd	$28,128($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	dmfc1	$10,$f12
	dmtc1	$11,$f15
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$10,$f14
	sd	$22,120($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	sd	$31,136($sp)
	sd	$21,112($sp)
	sd	$20,104($sp)
	sd	$19,96($sp)
	sd	$18,88($sp)
	sd	$9,56($sp)
	sd	$8,48($sp)
	sd	$5,40($sp)
	sd	$4,32($sp)
	move	$17,$10
	move	$22,$11
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$16,$6

	bne	$2,$0,.L676
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$22,$f15
	dmtc1	$22,$f13
	dmtc1	$17,$f14
	dmtc1	$17,$f12
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	nop

	sdc1	$f2,24($sp)
	sd	$22,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f13,24($sp)
	sd	$17,0($sp)
	sdc1	$f0,16($sp)
	ldc1	$f14,0($sp)
	ld	$25,%call16(__netf2)($28)
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	beq	$2,$0,.L692
	ld	$31,136($sp)

	bltz	$16,.L691
	ld	$2,%got_page(.LC10)($28)

	ld	$5,%got_ofst(.LC10+8)($2)
	ld	$4,%got_ofst(.LC10)($2)
.L678:
	andi	$2,$16,0x1
	beq	$2,$0,.L693
	srl	$2,$16,31

	.align	3
.L680:
	dmtc1	$5,$f15
	dmtc1	$22,$f13
	ld	$25,%call16(__multf3)($28)
	dmtc1	$4,$f14
	dmtc1	$17,$f12
	sd	$5,8($sp)
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	sd	$4,0($sp)

	ld	$5,8($sp)
	ld	$4,0($sp)
	dmfc1	$17,$f0
	dmfc1	$22,$f2
	srl	$2,$16,31
.L693:
	addu	$16,$2,$16
	sra	$16,$16,1
	beq	$16,$0,.L692
	ld	$31,136($sp)

.L681:
	dmtc1	$5,$f15
	dmtc1	$5,$f13
	ld	$25,%call16(__multf3)($28)
	dmtc1	$4,$f14
	dmtc1	$4,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	move	$4,$3
	move	$3,$2
	move	$19,$3
	srl	$2,$16,31
	andi	$3,$16,0x1
	addu	$2,$2,$16
	bne	$3,$0,.L680
	move	$5,$19

	b	.L681
	sra	$16,$2,1

	.align	3
.L676:
	ld	$31,136($sp)
	.align	3
.L692:
	ld	$28,128($sp)
	ld	$21,112($sp)
	ld	$20,104($sp)
	ld	$19,96($sp)
	ld	$18,88($sp)
	ld	$16,72($sp)
	dmtc1	$22,$f2
	dmtc1	$17,$f0
	ld	$22,120($sp)
	ld	$17,80($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.align	3
.L691:
	ld	$2,%got_page(.LC11)($28)
	ld	$5,%got_ofst(.LC11+8)($2)
	b	.L678
	ld	$4,%got_ofst(.LC11)($2)

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
	lbu	$7,0($3)
	lbu	$8,0($5)
	daddiu	$3,$3,1
	daddiu	$5,$5,1
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
	.align	3
.L705:
	lb	$7,1($3)
	bne	$7,$0,.L705
	daddiu	$3,$3,1

	beq	$6,$0,.L707
	nop

	lb	$7,0($5)
	.align	3
.L720:
	daddiu	$6,$6,-1
	daddiu	$5,$5,1
	beq	$7,$0,.L721
	sb	$7,0($3)

	daddiu	$3,$3,1
.L717:
	bnel	$6,$0,.L720
	lb	$7,0($5)

.L707:
	jr	$31
	sb	$0,0($3)

.L721:
	jr	$31
	nop

	.align	3
.L710:
	b	.L717
	move	$3,$4

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
	beq	$5,$0,.L734
	move	$2,$0

	daddu	$3,$4,$2
.L732:
	lb	$3,0($3)
	bnel	$3,$0,.L725
	daddiu	$2,$2,1

.L734:
	jr	$31
	nop

	.align	3
.L725:
	bne	$5,$2,.L732
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
	beq	$7,$0,.L740
	move	$2,$4

.L736:
	b	.L739
	move	$3,$5

	.align	3
.L738:
	beq	$6,$7,.L744
	nop

.L739:
	lb	$6,0($3)
	bne	$6,$0,.L738
	daddiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,.L736
	daddiu	$2,$2,1

.L740:
	move	$2,$0
.L744:
	jr	$31
	nop

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
	move	$2,$0
	.align	3
.L747:
	lb	$3,0($4)
	beql	$5,$3,.L746
	move	$2,$4

.L746:
	bne	$3,$0,.L747
	daddiu	$4,$4,1

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
	lb	$8,0($5)
	beq	$8,$0,.L761
	nop

	move	$2,$5
	.align	3
.L752:
	lb	$3,1($2)
	bne	$3,$0,.L752
	daddiu	$2,$2,1

	beq	$2,$5,.L761
	dsubu	$10,$2,$5

	b	.L758
	daddiu	$10,$10,-1

	.align	3
.L772:
	beq	$3,$0,.L771
	daddiu	$4,$4,1

.L758:
	lb	$3,0($4)
	bne	$3,$8,.L772
	daddu	$9,$4,$10

	andi	$3,$3,0x00ff
	move	$2,$5
	b	.L754
	move	$6,$4

	.align	3
.L773:
	beql	$6,$9,.L774
	lbu	$2,0($2)

	bne	$7,$3,.L755
	daddiu	$6,$6,1

	lbu	$3,0($6)
	beq	$3,$0,.L755
	daddiu	$2,$2,1

.L754:
	lbu	$7,0($2)
	bne	$7,$0,.L773
	nop

.L755:
	lbu	$2,0($2)
.L774:
	beq	$2,$3,.L761
	nop

	b	.L758
	daddiu	$4,$4,1

	.align	3
.L771:
	jr	$31
	move	$2,$0

	.align	3
.L761:
	jr	$31
	move	$2,$4

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
	dmtc1	$0,$f0
	dmfc1	$2,$f12
	c.lt.d	$f12,$f0
	nop
	bc1t	.L786
	nop

	c.lt.d	$f0,$f12
	nop
	bc1f	.L779
	nop

	c.lt.d	$f13,$f0
	nop
	bc1t	.L787
	li	$3,-1			# 0xffffffffffffffff

.L779:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L786:
	c.lt.d	$f0,$f13
	nop
	bc1f	.L779
	li	$3,-1			# 0xffffffffffffffff

.L787:
	dsll	$3,$3,63
	xor	$2,$2,$3
	dmtc1	$2,$f0
	jr	$31
	nop

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
	beq	$7,$0,.L794
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L796
	dsubu	$5,$5,$7

	daddu	$10,$4,$5
	sltu	$2,$10,$4
	bne	$2,$0,.L796
	daddiu	$7,$7,-1

	b	.L793
	lb	$12,0($6)

	.align	3
.L790:
	sltu	$2,$10,$4
	bne	$2,$0,.L796
	nop

.L793:
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$12,.L790
	daddiu	$4,$4,1

	beq	$7,$0,.L803
	daddiu	$5,$6,1

	move	$3,$4
	daddu	$11,$4,$7
	lbu	$9,0($3)
	.align	3
.L801:
	lbu	$8,0($5)
	daddiu	$3,$3,1
	bne	$9,$8,.L790
	daddiu	$5,$5,1

	bnel	$3,$11,.L801
	lbu	$9,0($3)

.L803:
	jr	$31
	nop

	.align	3
.L794:
	jr	$31
	move	$2,$4

	.align	3
.L796:
	jr	$31
	move	$2,$0

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
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	sd	$17,8($sp)
	sd	$16,0($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	move	$16,$6
	beq	$6,$0,.L805
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

.L805:
	ld	$31,24($sp)
	daddu	$2,$17,$16
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
	dmtc1	$0,$f0
	lui	$8,%hi(%neg(%gp_rel(frexp)))
	c.lt.d	$f12,$f0
	daddu	$8,$8,$25
	dmfc1	$2,$f12
	bc1t	.L834
	daddiu	$8,$8,%lo(%neg(%gp_rel(frexp)))

	ld	$4,%got_page(.LC14)($8)
	ldc1	$f1,%got_ofst(.LC14)($4)
	c.le.d	$f1,$f12
	nop
	bc1f	.L835
	move	$7,$0

.L813:
	ld	$6,%got_page(.LC9)($8)
	ldc1	$f1,%got_ofst(.LC14)($4)
	move	$3,$0
	ldc1	$f0,%got_ofst(.LC9)($6)
	.align	3
.L819:
	dmtc1	$2,$f2
	nop
	mul.d	$f2,$f2,$f0
	c.le.d	$f1,$f2
	dmfc1	$2,$f2
	bc1t	.L819
	addiu	$3,$3,1

	beq	$7,$0,.L810
	sw	$3,0($5)

.L837:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L810:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L835:
	ld	$6,%got_page(.LC9)($8)
	ldc1	$f1,%got_ofst(.LC9)($6)
	c.lt.d	$f12,$f1
	nop
	bc1f	.L816
	nop

	c.eq.d	$f12,$f0
	nop
	bc1f	.L814
	move	$3,$2

.L816:
	dmtc1	$2,$f0
	jr	$31
	sw	$0,0($5)

	.align	3
.L834:
	ld	$4,%got_page(.LC12)($8)
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	ldc1	$f0,%got_ofst(.LC12)($4)
	c.le.d	$f12,$f0
	nop
	bc1f	.L836
	xor	$3,$2,$3

	ld	$4,%got_page(.LC14)($8)
	move	$2,$3
	b	.L813
	li	$7,1			# 0x1

	.align	3
.L836:
	ld	$4,%got_page(.LC13)($8)
	ldc1	$f0,%got_ofst(.LC13)($4)
	c.lt.d	$f0,$f12
	nop
	bc1f	.L816
	nop

	ld	$6,%got_page(.LC9)($8)
	li	$7,1			# 0x1
.L814:
	ldc1	$f0,%got_ofst(.LC9)($6)
	move	$2,$3
	move	$3,$0
	.align	3
.L821:
	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	c.lt.d	$f1,$f0
	dmfc1	$2,$f1
	bc1t	.L821
	addiu	$3,$3,-1

	bne	$7,$0,.L837
	sw	$3,0($5)

	b	.L810
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
	beq	$4,$0,.L845
	move	$2,$0

	.align	3
.L840:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$3
	bne	$4,$0,.L840
	dsll	$5,$5,1

.L845:
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
	bne	$7,$0,.L847
	li	$2,32			# 0x20

	b	.L853
	move	$2,$0

	.align	3
.L851:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L849
	sll	$3,$3,1

	beq	$2,$0,.L850
	nop

.L847:
	bgez	$5,.L851
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L853:
	srl	$9,$3,1
	sltu	$7,$4,$5
	or	$10,$3,$2
	srl	$8,$5,1
	bne	$7,$0,.L852
	move	$3,$9

	subu	$4,$4,$5
	move	$2,$10
.L852:
	bne	$3,$0,.L853
	move	$5,$8

.L850:
	bne	$6,$0,.L865
	nop

	jr	$31
	nop

	.align	3
.L849:
	bne	$3,$0,.L853
	move	$2,$0

	b	.L850
	nop

	.align	3
.L865:
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
	beq	$4,$2,.L868
	xor	$3,$4,$2

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	ld	$25,%call16(__clzdi2)($28)
	sll	$4,$3,8
	dsll	$4,$4,32
	sd	$31,8($sp)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$4,32

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,-33
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L868:
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
	beq	$2,$3,.L875
	xor	$4,$4,$3

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	ld	$25,%call16(__clzdi2)($28)
	sd	$31,8($sp)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,-1
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L875:
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
	beq	$4,$0,.L887
	move	$2,$0

	.align	3
.L882:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	bne	$4,$0,.L882
	sll	$5,$5,1

.L887:
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
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	srl	$8,$6,3
	bne	$3,$0,.L892
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L902
	nop

.L892:
	beq	$8,$0,.L891
	move	$3,$5

	dsll	$8,$8,3
	move	$7,$4
	daddu	$8,$8,$5
	.align	3
.L895:
	ld	$9,0($3)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
	bne	$3,$8,.L895
	sd	$9,-8($7)

.L891:
	sltu	$3,$2,$6
	beq	$3,$0,.L905
	dsll	$2,$2,32

	dsrl	$2,$2,32
	.align	3
.L896:
	daddu	$3,$5,$2
	lb	$8,0($3)
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L896
	sb	$8,0($7)

.L905:
	jr	$31
	nop

	.align	3
.L902:
	beq	$6,$0,.L905
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L897:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$3,.L897
	sb	$6,1($4)

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
	bne	$2,$0,.L910
	srl	$7,$6,1

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beq	$2,$0,.L922
	nop

.L910:
	beq	$7,$0,.L909
	move	$2,$5

	dsll	$7,$7,1
	move	$3,$4
	daddu	$7,$7,$5
	.align	3
.L913:
	lh	$8,0($2)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
	bne	$2,$7,.L913
	sh	$8,-2($3)

.L909:
	andi	$2,$6,0x1
	beq	$2,$0,.L925
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	lb	$2,0($5)
	daddu	$4,$4,$6
	jr	$31
	sb	$2,0($4)

	.align	3
.L922:
	beq	$6,$0,.L925
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L915:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$3,.L915
	sb	$6,1($4)

.L925:
	jr	$31
	nop

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
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	srl	$8,$6,2
	bne	$3,$0,.L930
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L940
	nop

.L930:
	beq	$8,$0,.L929
	move	$3,$5

	dsll	$8,$8,2
	move	$7,$4
	daddu	$8,$8,$5
	.align	3
.L933:
	lw	$9,0($3)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
	bne	$3,$8,.L933
	sw	$9,-4($7)

.L929:
	sltu	$3,$2,$6
	beq	$3,$0,.L943
	dsll	$2,$2,32

	dsrl	$2,$2,32
	.align	3
.L934:
	daddu	$3,$5,$2
	lb	$8,0($3)
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L934
	sb	$8,0($7)

.L943:
	jr	$31
	nop

	.align	3
.L940:
	beq	$6,$0,.L943
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L935:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$3,.L935
	sb	$6,1($4)

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
	bltz	$4,.L952
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L952:
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
	bltz	$4,.L956
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L956:
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
	sra	$2,$4,15
	bne	$2,$0,.L963
	move	$3,$4

	dsrl	$2,$3,14
	bne	$2,$0,.L979
	nop

	sra	$2,$4,13
	bne	$2,$0,.L964
	nop

	sra	$2,$4,12
	bne	$2,$0,.L965
	nop

	sra	$2,$4,11
	bne	$2,$0,.L966
	nop

	sra	$2,$4,10
	bne	$2,$0,.L967
	nop

	sra	$2,$4,9
	bne	$2,$0,.L968
	nop

	sra	$2,$4,8
	bne	$2,$0,.L969
	nop

	sra	$2,$4,7
	bne	$2,$0,.L970
	nop

	sra	$2,$4,6
	bne	$2,$0,.L971
	nop

	sra	$2,$4,5
	bne	$2,$0,.L972
	nop

	sra	$2,$4,4
	bne	$2,$0,.L973
	nop

	sra	$2,$4,3
	bne	$2,$0,.L974
	nop

	sra	$2,$4,2
	bne	$2,$0,.L975
	sra	$3,$4,1

	bnel	$3,$0,.L979
	li	$2,14			# 0xe

	sltu	$2,$4,1
	jr	$31
	daddiu	$2,$2,15

.L979:
	jr	$31
	nop

.L963:
	jr	$31
	move	$2,$0

.L974:
	jr	$31
	li	$2,12			# 0xc

.L964:
	jr	$31
	li	$2,2			# 0x2

.L965:
	jr	$31
	li	$2,3			# 0x3

.L966:
	jr	$31
	li	$2,4			# 0x4

.L967:
	jr	$31
	li	$2,5			# 0x5

.L968:
	jr	$31
	li	$2,6			# 0x6

.L969:
	jr	$31
	li	$2,7			# 0x7

.L970:
	jr	$31
	li	$2,8			# 0x8

.L971:
	jr	$31
	li	$2,9			# 0x9

.L972:
	jr	$31
	li	$2,10			# 0xa

.L973:
	jr	$31
	li	$2,11			# 0xb

.L975:
	jr	$31
	li	$2,13			# 0xd

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
	andi	$2,$4,0x1
	bne	$2,$0,.L983
	nop

	andi	$2,$4,0x2
	bne	$2,$0,.L984
	nop

	andi	$2,$4,0x4
	bne	$2,$0,.L985
	nop

	andi	$2,$4,0x8
	bne	$2,$0,.L986
	nop

	andi	$2,$4,0x10
	bne	$2,$0,.L987
	nop

	andi	$2,$4,0x20
	bne	$2,$0,.L988
	nop

	andi	$2,$4,0x40
	bne	$2,$0,.L989
	nop

	andi	$2,$4,0x80
	bne	$2,$0,.L990
	nop

	andi	$2,$4,0x100
	bne	$2,$0,.L991
	nop

	andi	$2,$4,0x200
	bne	$2,$0,.L992
	nop

	andi	$2,$4,0x400
	bne	$2,$0,.L993
	nop

	andi	$2,$4,0x800
	bne	$2,$0,.L994
	nop

	andi	$2,$4,0x1000
	bne	$2,$0,.L995
	nop

	andi	$2,$4,0x2000
	bne	$2,$0,.L996
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,.L997
	sra	$4,$4,15

	sltu	$2,$4,1
	jr	$31
	daddiu	$2,$2,15

.L983:
	jr	$31
	move	$2,$0

.L984:
	jr	$31
	li	$2,1			# 0x1

.L995:
	jr	$31
	li	$2,12			# 0xc

.L985:
	jr	$31
	li	$2,2			# 0x2

.L986:
	jr	$31
	li	$2,3			# 0x3

.L987:
	jr	$31
	li	$2,4			# 0x4

.L988:
	jr	$31
	li	$2,5			# 0x5

.L989:
	jr	$31
	li	$2,6			# 0x6

.L990:
	jr	$31
	li	$2,7			# 0x7

.L991:
	jr	$31
	li	$2,8			# 0x8

.L992:
	jr	$31
	li	$2,9			# 0x9

.L993:
	jr	$31
	li	$2,10			# 0xa

.L994:
	jr	$31
	li	$2,11			# 0xb

.L996:
	jr	$31
	li	$2,13			# 0xd

.L997:
	jr	$31
	li	$2,14			# 0xe

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
	ld	$2,%got_page(.LC15)($4)
	lwc1	$f0,%got_ofst(.LC15)($2)
	c.le.s	$f0,$f12
	nop
	bc1tl	.L1007
	sub.s	$f12,$f12,$f0

	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	nop

	.align	3
.L1007:
	li	$3,32768			# 0x8000
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
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
	move	$3,$4
	sra	$2,$4,1
	sra	$5,$3,2
	andi	$4,$4,0x1
	andi	$2,$2,0x1
	addu	$2,$2,$4
	andi	$4,$5,0x1
	sra	$5,$3,3
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,4
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,5
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,6
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,7
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,8
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,9
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,10
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,11
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,12
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,13
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,14
	addu	$2,$2,$5
	andi	$4,$4,0x1
	addu	$2,$2,$4
	sra	$3,$3,15
	addu	$2,$2,$3
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
	move	$3,$4
	sra	$2,$4,1
	sra	$5,$3,2
	andi	$4,$4,0x1
	andi	$2,$2,0x1
	addu	$2,$2,$4
	andi	$4,$5,0x1
	sra	$5,$3,3
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,4
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,5
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,6
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,7
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,8
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,9
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,10
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,11
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,12
	addu	$2,$2,$5
	andi	$4,$4,0x1
	sra	$5,$3,13
	addu	$2,$2,$4
	andi	$5,$5,0x1
	sra	$4,$3,14
	addu	$2,$2,$5
	andi	$4,$4,0x1
	addu	$2,$2,$4
	sra	$3,$3,15
	jr	$31
	addu	$2,$2,$3

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
	beq	$4,$0,.L1019
	move	$2,$0

	.align	3
.L1014:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	bne	$4,$0,.L1014
	sll	$5,$5,1

.L1019:
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
	beq	$4,$0,.L1028
	move	$2,$0

	beq	$5,$0,.L1027
	nop

	.align	3
.L1022:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$3,$2
	bne	$5,$0,.L1022
	sll	$4,$4,1

.L1028:
	jr	$31
	nop

.L1027:
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
	bne	$7,$0,.L1030
	li	$2,32			# 0x20

	b	.L1036
	move	$2,$0

	.align	3
.L1034:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1032
	sll	$3,$3,1

	beq	$2,$0,.L1033
	nop

.L1030:
	bgez	$5,.L1034
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1036:
	srl	$9,$3,1
	sltu	$7,$4,$5
	or	$10,$3,$2
	srl	$8,$5,1
	bne	$7,$0,.L1035
	move	$3,$9

	subu	$4,$4,$5
	move	$2,$10
.L1035:
	bne	$3,$0,.L1036
	move	$5,$8

.L1033:
	bne	$6,$0,.L1048
	nop

	jr	$31
	nop

	.align	3
.L1032:
	bne	$3,$0,.L1036
	move	$2,$0

	b	.L1033
	nop

	.align	3
.L1048:
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
	bc1t	.L1052
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L1054
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1054:
	jr	$31
	move	$2,$0

	.align	3
.L1052:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	bc1t	.L1060
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L1062
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1062:
	jr	$31
	move	$2,$0

	.align	3
.L1060:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	bltzl	$5,.L1084
	subu	$5,$0,$5

	beq	$5,$0,.L1075
	move	$7,$0

.L1071:
	li	$6,32			# 0x20
	b	.L1074
	move	$2,$0

	.align	3
.L1085:
	beq	$6,$0,.L1073
	nop

.L1074:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	dsra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$3,$2
	bne	$5,$0,.L1085
	sll	$4,$4,1

.L1073:
	beq	$7,$0,.L1086
	nop

	jr	$31
	subu	$2,$0,$2

.L1075:
	move	$2,$0
.L1086:
	jr	$31
	nop

	.align	3
.L1084:
	b	.L1071
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
	bgez	$4,.L1088
	move	$9,$0

	dsubu	$4,$0,$4
	li	$9,1			# 0x1
.L1088:
	bgez	$5,.L1110
	sll	$4,$4,0

	dsubu	$5,$0,$5
	xori	$9,$9,0x1
.L1110:
	sll	$5,$5,0
	sltu	$6,$5,$4
	li	$2,32			# 0x20
	bne	$6,$0,.L1090
	li	$3,1			# 0x1

	b	.L1096
	move	$2,$0

	.align	3
.L1094:
	sll	$5,$5,1
	sltu	$6,$5,$4
	beq	$6,$0,.L1092
	sll	$3,$3,1

	beql	$2,$0,.L1093
	move	$2,$0

.L1090:
	bgez	$5,.L1094
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1096:
	sltu	$6,$4,$5
	srl	$8,$3,1
	bne	$6,$0,.L1095
	srl	$7,$5,1

	subu	$4,$4,$5
	or	$2,$3,$2
.L1095:
	move	$3,$8
	bne	$3,$0,.L1096
	move	$5,$7

	dsll	$2,$2,32
	dsrl	$2,$2,32
.L1093:
	bnel	$9,$0,.L1109
	dsubu	$2,$0,$2

.L1109:
	jr	$31
	nop

	.align	3
.L1092:
	bne	$3,$0,.L1096
	move	$2,$0

	b	.L1093
	nop

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
	bgez	$4,.L1112
	move	$7,$0

	dsubu	$4,$0,$4
	li	$7,1			# 0x1
.L1112:
	dsra	$6,$5,63
	xor	$3,$6,$5
	sll	$3,$3,0
	sll	$2,$4,0
	subu	$3,$3,$6
	sltu	$6,$3,$2
	li	$4,32			# 0x20
	bne	$6,$0,.L1113
	li	$5,1			# 0x1

	b	.L1137
	sltu	$4,$2,$3

	.align	3
.L1117:
	sll	$3,$3,1
	sltu	$6,$3,$2
	beq	$6,$0,.L1136
	sll	$5,$5,1

	beql	$4,$0,.L1138
	dsll	$2,$2,32

.L1113:
	bgez	$3,.L1117
	addiu	$4,$4,-1

	b	.L1137
	sltu	$4,$2,$3

	.align	3
.L1118:
	move	$3,$6
.L1136:
	beq	$5,$0,.L1116
	sltu	$4,$2,$3

.L1137:
	srl	$5,$5,1
	bne	$4,$0,.L1118
	srl	$6,$3,1

	subu	$2,$2,$3
	b	.L1136
	move	$3,$6

	.align	3
.L1116:
	dsll	$2,$2,32
	.align	3
.L1138:
	beq	$7,$0,.L1139
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L1139:
	jr	$31
	nop

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
	sltu	$3,$5,$4
	beq	$3,$0,.L1255
	move	$2,$4

	sll	$3,$5,16
	sra	$3,$3,16
	bltz	$3,.L1143
	sll	$3,$5,1

	andi	$3,$3,0xffff
	sltu	$4,$3,$4
	beq	$4,$0,.L1144
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1145
	subu	$2,$2,$3

	sll	$3,$5,2
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1146
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1147
	subu	$2,$2,$3

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1148
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1149
	subu	$2,$2,$3

	sll	$3,$5,4
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1150
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1151
	subu	$2,$2,$3

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1152
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1153
	subu	$2,$2,$3

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1154
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1155
	subu	$2,$2,$3

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1156
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1157
	subu	$2,$2,$3

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1158
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1159
	subu	$2,$2,$3

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1160
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1161
	subu	$2,$2,$3

	sll	$3,$5,10
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1162
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1163
	subu	$2,$2,$3

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1164
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1165
	subu	$2,$2,$3

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1166
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1167
	subu	$2,$2,$3

	sll	$3,$5,13
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1168
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1169
	subu	$2,$2,$3

	sll	$3,$5,14
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1170
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1171
	subu	$2,$2,$3

	sll	$5,$5,15
	andi	$7,$5,0xffff
	sltu	$3,$7,$2
	beql	$3,$0,.L1172
	sll	$3,$2,16

	bnel	$7,$0,.L1256
	addiu	$2,$2,-32768

.L1173:
	bne	$6,$0,.L1271
	nop

	jr	$31
	move	$2,$7

.L1271:
	jr	$31
	nop

.L1160:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,512			# 0x200

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$7,512			# 0x200
	.align	3
.L1175:
	dsrl	$5,$8,2
	.align	3
.L1270:
	beq	$5,$0,.L1173
	dsrl	$4,$3,2

	sltu	$9,$2,$4
	bnel	$9,$0,.L1257
	dsrl	$5,$8,3

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,3
.L1257:
	beq	$5,$0,.L1173
	dsrl	$4,$3,3

	sltu	$9,$2,$4
	bnel	$9,$0,.L1258
	dsrl	$5,$8,4

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,4
.L1258:
	beq	$5,$0,.L1173
	dsrl	$4,$3,4

	sltu	$9,$2,$4
	bnel	$9,$0,.L1259
	dsrl	$5,$8,5

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,5
.L1259:
	beq	$5,$0,.L1173
	dsrl	$4,$3,5

	sltu	$9,$2,$4
	bnel	$9,$0,.L1260
	dsrl	$5,$8,6

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,6
.L1260:
	beq	$5,$0,.L1173
	dsrl	$4,$3,6

	sltu	$9,$2,$4
	bnel	$9,$0,.L1261
	dsrl	$5,$8,7

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,7
.L1261:
	beq	$5,$0,.L1173
	dsrl	$4,$3,7

	sltu	$9,$2,$4
	bnel	$9,$0,.L1262
	dsrl	$5,$8,8

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,8
.L1262:
	beq	$5,$0,.L1173
	dsrl	$4,$3,8

	sltu	$9,$2,$4
	bnel	$9,$0,.L1263
	dsrl	$5,$8,9

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,9
.L1263:
	beq	$5,$0,.L1173
	dsrl	$4,$3,9

	sltu	$9,$2,$4
	bnel	$9,$0,.L1264
	dsrl	$5,$8,10

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,10
.L1264:
	beq	$5,$0,.L1173
	dsrl	$4,$3,10

	sltu	$9,$2,$4
	bnel	$9,$0,.L1265
	dsrl	$5,$8,11

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,11
.L1265:
	beq	$5,$0,.L1173
	dsrl	$4,$3,11

	sltu	$9,$2,$4
	bnel	$9,$0,.L1266
	dsrl	$5,$8,12

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,12
.L1266:
	beq	$5,$0,.L1173
	dsrl	$4,$3,12

	sltu	$9,$2,$4
	bnel	$9,$0,.L1267
	dsrl	$5,$8,13

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,13
.L1267:
	beq	$5,$0,.L1173
	dsrl	$4,$3,13

	sltu	$9,$2,$4
	bnel	$9,$0,.L1268
	dsrl	$5,$8,14

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,14
.L1268:
	beq	$5,$0,.L1173
	dsrl	$4,$3,14

	sltu	$9,$2,$4
	bnel	$9,$0,.L1269
	li	$4,16384			# 0x4000

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	li	$4,16384			# 0x4000
.L1269:
	beq	$8,$4,.L1173
	dsrl	$3,$3,15

	sltu	$4,$2,$3
	bnel	$4,$0,.L1173
	move	$2,$0

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1173
	ori	$7,$7,0x1

.L1255:
	bne	$5,$4,.L1173
	move	$7,$0

	li	$7,1			# 0x1
	b	.L1173
	move	$2,$0

.L1143:
	subu	$2,$4,$5
	andi	$2,$2,0xffff
	b	.L1173
	li	$7,1			# 0x1

.L1144:
	sltu	$4,$2,$3
	bne	$4,$0,.L1198
	li	$8,2			# 0x2

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,2			# 0x2

.L1145:
	andi	$2,$2,0xffff
	andi	$5,$5,0x7fff
	li	$9,1			# 0x1
	li	$8,2			# 0x2
	li	$7,2			# 0x2
	.align	3
.L1193:
	sltu	$4,$2,$5
	bnel	$4,$0,.L1270
	dsrl	$5,$8,2

	subu	$2,$2,$5
	andi	$2,$2,0xffff
	b	.L1175
	or	$7,$7,$9

.L1146:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,4			# 0x4

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,4			# 0x4

.L1147:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,2			# 0x2
	li	$8,4			# 0x4
	b	.L1193
	li	$7,4			# 0x4

.L1148:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,8			# 0x8

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,8			# 0x8

.L1149:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,4			# 0x4
	li	$8,8			# 0x8
	b	.L1193
	li	$7,8			# 0x8

.L1150:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,16			# 0x10

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,16			# 0x10

.L1151:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,8			# 0x8
	li	$8,16			# 0x10
	b	.L1193
	li	$7,16			# 0x10

.L1152:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,32			# 0x20

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,32			# 0x20

.L1153:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,16			# 0x10
	li	$8,32			# 0x20
	b	.L1193
	li	$7,32			# 0x20

.L1154:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,64			# 0x40

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,64			# 0x40

.L1155:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,32			# 0x20
	li	$8,64			# 0x40
	b	.L1193
	li	$7,64			# 0x40

.L1156:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,128			# 0x80

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,128			# 0x80

.L1157:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,64			# 0x40
	li	$8,128			# 0x80
	b	.L1193
	li	$7,128			# 0x80

.L1159:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,128			# 0x80
	li	$8,256			# 0x100
	b	.L1193
	li	$7,256			# 0x100

.L1161:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,256			# 0x100
	li	$8,512			# 0x200
	b	.L1193
	li	$7,512			# 0x200

.L1198:
	.align	3
.L1192:
	dsrl	$9,$8,1
	dsrl	$5,$3,1
	b	.L1193
	move	$7,$0

.L1163:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,512			# 0x200
	li	$8,1024			# 0x400
	b	.L1193
	li	$7,1024			# 0x400

.L1165:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,1024			# 0x400
	li	$8,2048			# 0x800
	b	.L1193
	li	$7,2048			# 0x800

	b	.L1192
	li	$8,8			# 0x8

.L1167:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,2048			# 0x800
	li	$8,4096			# 0x1000
	b	.L1193
	li	$7,4096			# 0x1000

.L1169:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,4096			# 0x1000
	li	$8,8192			# 0x2000
	b	.L1193
	li	$7,8192			# 0x2000

.L1171:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,8192			# 0x2000
	li	$8,16384			# 0x4000
	b	.L1193
	li	$7,16384			# 0x4000

	b	.L1192
	li	$8,64			# 0x40

.L1172:
	sra	$3,$3,16
	bltz	$3,.L1197
	li	$3,32768			# 0x8000

	b	.L1192
	li	$8,32768			# 0x8000

.L1256:
	andi	$2,$2,0xffff
	li	$5,16384			# 0x4000
	li	$9,16384			# 0x4000
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	b	.L1193
	li	$7,32768			# 0x8000

.L1158:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,256			# 0x100

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,256			# 0x100

.L1197:
	li	$8,32768			# 0x8000
	li	$7,32768			# 0x8000
	b	.L1175
	move	$2,$0

.L1162:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,1024			# 0x400

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,1024			# 0x400

.L1170:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,16384			# 0x4000

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,16384			# 0x4000

	b	.L1192
	li	$8,16384			# 0x4000

.L1168:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,8192			# 0x2000

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,8192			# 0x2000

.L1166:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,4096			# 0x1000

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,4096			# 0x1000

.L1164:
	sltu	$4,$2,$3
	bne	$4,$0,.L1192
	li	$8,2048			# 0x800

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1175
	li	$7,2048			# 0x800

	b	.L1192
	li	$8,4096			# 0x1000

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
	li	$3,1			# 0x1
	sltu	$2,$5,$4
	li	$7,64			# 0x40
	bne	$2,$0,.L1273
	dsll	$9,$3,31

	b	.L1279
	move	$2,$0

	.align	3
.L1277:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L1275
	dsll	$3,$3,1

	beq	$7,$0,.L1276
	nop

.L1273:
	and	$2,$5,$9
	beq	$2,$0,.L1277
	addiu	$7,$7,-1

	move	$2,$0
	.align	3
.L1279:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1295
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	or	$2,$2,$3
	dsrl	$3,$3,1
.L1295:
	bne	$3,$0,.L1279
	dsrl	$5,$5,1

.L1276:
	bne	$6,$0,.L1294
	nop

	jr	$31
	nop

	.align	3
.L1294:
	jr	$31
	move	$2,$4

	.align	3
.L1275:
	bnel	$3,$0,.L1279
	move	$2,$0

	b	.L1276
	nop

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
	beq	$2,$0,.L1297
	move	$2,$0

	sll	$4,$4,0
	sll	$3,$4,$5
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1297:
	beq	$5,$0,.L1300
	subu	$3,$0,$5

	sll	$2,$4,0
	dsra	$4,$4,32
	srl	$3,$2,$3
	sll	$4,$4,$5
	sll	$2,$2,$5
	or	$3,$3,$4
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1300:
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
	beq	$2,$0,.L1303
	dsll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1303:
	beql	$6,$0,.L1306
	move	$2,$4

	subu	$3,$0,$6
	dsrl	$3,$5,$3
	dsll	$2,$4,$6
	dsll	$5,$5,$6
	or	$2,$3,$2
	jr	$31
	move	$3,$5

	.align	3
.L1306:
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
	beq	$2,$0,.L1309
	move	$3,$5

	dsra	$5,$4,32
	sra	$4,$5,31
	sra	$5,$5,$3
	dsll	$5,$5,32
	dsrl	$5,$5,32
	dsll	$4,$4,32
	jr	$31
	or	$2,$4,$5

	.align	3
.L1309:
	beq	$5,$0,.L1312
	dsra	$6,$4,32

	subu	$2,$0,$5
	sll	$4,$4,0
	sll	$2,$6,$2
	srl	$4,$4,$5
	or	$5,$2,$4
	dsll	$5,$5,32
	sra	$4,$6,$3
	dsrl	$5,$5,32
	dsll	$4,$4,32
	jr	$31
	or	$2,$4,$5

	.align	3
.L1312:
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
	beq	$2,$0,.L1315
	dsra	$2,$4,63

	dsra	$5,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1315:
	beql	$6,$0,.L1318
	move	$2,$4

	subu	$3,$0,$6
	dsll	$3,$4,$3
	dsrl	$5,$5,$6
	or	$5,$3,$5
	dsra	$2,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1318:
	jr	$31
	move	$3,$5

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
	dsll	$6,$4,56
	dsrl	$2,$4,56
	dsrl	$5,$4,40
	or	$2,$2,$6
	andi	$5,$5,0xff00
	li	$3,255			# 0xff
	dsrl	$6,$4,24
	or	$2,$2,$5
	li	$5,16711680			# 0xff0000
	and	$6,$6,$5
	dsll	$7,$3,24
	dsrl	$5,$4,8
	and	$5,$5,$7
	or	$2,$2,$6
	dsll	$7,$3,32
	dsll	$6,$4,8
	and	$6,$6,$7
	or	$2,$2,$5
	dsll	$7,$3,40
	dsll	$5,$4,24
	or	$2,$2,$6
	and	$5,$5,$7
	dsll	$3,$3,48
	dsll	$4,$4,40
	or	$2,$2,$5
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
	sll	$5,$4,24
	srl	$2,$4,24
	srl	$3,$4,8
	or	$2,$2,$5
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
	li	$6,65536			# 0x10000
	sltu	$6,$4,$6
	dsll	$6,$6,4
	li	$2,16			# 0x10
	subu	$2,$2,$6
	srl	$4,$4,$2
	andi	$5,$4,0xff00
	sltu	$5,$5,1
	dsll	$5,$5,3
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	sltu	$2,$2,1
	dsll	$2,$2,2
	li	$3,4			# 0x4
	subu	$3,$3,$2
	srl	$4,$4,$3
	andi	$3,$4,0xc
	sltu	$3,$3,1
	li	$8,2			# 0x2
	dsll	$3,$3,1
	subu	$7,$8,$3
	srl	$4,$4,$7
	dsrl	$7,$4,1
	daddu	$5,$5,$6
	andi	$7,$7,0x1
	daddu	$2,$2,$5
	beq	$7,$0,.L1326
	subu	$5,$8,$4

	move	$5,$0
.L1326:
	addu	$2,$3,$2
	jr	$31
	addu	$2,$5,$2

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
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	sltu	$16,$4,1
	daddu	$28,$28,$25
	daddiu	$2,$16,-1
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	and	$2,$2,$4
	beq	$4,$0,.L1332
	move	$3,$5

	move	$3,$0
.L1332:
	ld	$25,%call16(__clzdi2)($28)
	or	$4,$2,$3
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	sll	$16,$16,6

	ld	$31,24($sp)
	ld	$28,16($sp)
	addu	$2,$2,$16
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
	bne	$6,$0,.L1340
	nop

	slt	$2,$3,$2
	bne	$2,$0,.L1339
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1340
	nop

	sltu	$2,$5,$2
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1340:
	jr	$31
	move	$2,$0

	.align	3
.L1339:
	jr	$31
	li	$2,2			# 0x2

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
	bne	$6,$0,.L1347
	nop

	slt	$2,$3,$2
	bne	$2,$0,.L1346
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1347
	nop

	jr	$31
	sltu	$2,$5,$2

	.align	3
.L1347:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1346:
	jr	$31
	li	$2,1			# 0x1

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
	bne	$2,$0,.L1353
	slt	$4,$6,$4

	bne	$4,$0,.L1352
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1353
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1353:
	jr	$31
	move	$2,$0

	.align	3
.L1352:
	jr	$31
	li	$2,2			# 0x2

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
	andi	$6,$4,0xffff
	sltu	$6,$6,1
	sll	$3,$6,4
	srl	$3,$4,$3
	andi	$2,$3,0xff
	sltu	$2,$2,1
	sll	$4,$2,3
	srl	$3,$3,$4
	andi	$5,$3,0xf
	sltu	$5,$5,1
	sll	$4,$5,2
	srl	$3,$3,$4
	andi	$4,$3,0x3
	sltu	$4,$4,1
	sll	$7,$4,1
	srl	$3,$3,$7
	andi	$3,$3,0x3
	dsll	$7,$6,4
	dsll	$2,$2,3
	daddu	$2,$2,$7
	nor	$6,$0,$3
	dsll	$5,$5,2
	daddu	$5,$5,$2
	andi	$6,$6,0x1
	li	$2,2			# 0x2
	srl	$3,$3,1
	subu	$3,$2,$3
	dsll	$4,$4,1
	subu	$2,$0,$6
	and	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

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
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sltu	$16,$5,1
	beq	$5,$0,.L1360
	move	$2,$4

	move	$2,$0
.L1360:
	ld	$25,%call16(__ctzdi2)($28)
	daddiu	$4,$16,-1
	and	$4,$4,$5
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	or	$4,$2,$4

	ld	$31,24($sp)
	sll	$16,$16,6
	ld	$28,16($sp)
	addu	$2,$2,$16
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
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	bne	$5,$0,.L1365
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	bne	$4,$0,.L1370
	move	$2,$0

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1365:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,1
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1370:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,65
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
	beq	$2,$0,.L1372
	move	$2,$0

	dsra	$4,$4,32
	srl	$3,$4,$5
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1372:
	beq	$5,$0,.L1375
	subu	$3,$0,$5

	dsra	$2,$4,32
	sll	$4,$4,0
	sll	$3,$2,$3
	srl	$4,$4,$5
	or	$3,$3,$4
	srl	$2,$2,$5
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1375:
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
	beq	$2,$0,.L1378
	nop

	dsrl	$5,$4,$6
	move	$4,$0
	move	$2,$4
.L1383:
	jr	$31
	move	$3,$5

	.align	3
.L1378:
	beql	$6,$0,.L1383
	move	$2,$4

	subu	$2,$0,$6
	dsll	$2,$4,$2
	dsrl	$5,$5,$6
	or	$5,$2,$5
	dsrl	$4,$4,$6
	move	$2,$4
	jr	$31
	move	$3,$5

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
	andi	$6,$4,0xffff
	andi	$3,$5,0xffff
	mult	$6,$3
	srl	$4,$4,16
	srl	$5,$5,16
	mflo	$2
	nop
	nop
	mult	$4,$3
	srl	$3,$2,16
	andi	$2,$2,0xffff
	mflo	$8
	addu	$3,$3,$8
	nop
	mult	$5,$6
	sll	$6,$3,16
	addu	$2,$2,$6
	srl	$6,$2,16
	andi	$2,$2,0xffff
	srl	$3,$3,16
	mflo	$7
	nop
	nop
	mult	$4,$5
	addu	$4,$6,$7
	sll	$5,$4,16
	addu	$2,$2,$5
	srl	$4,$4,16
	dsll	$2,$2,32
	dsrl	$2,$2,32
	mflo	$5
	addu	$3,$3,$5
	addu	$3,$3,$4
	dsll	$3,$3,32
	jr	$31
	or	$2,$2,$3

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
	andi	$6,$4,0xffff
	andi	$3,$5,0xffff
	mult	$6,$3
	sll	$9,$4,0
	srl	$11,$9,16
	sll	$8,$5,0
	srl	$10,$8,16
	dsra	$5,$5,32
	dsra	$4,$4,32
	mflo	$2
	nop
	nop
	mult	$11,$3
	srl	$3,$2,16
	andi	$2,$2,0xffff
	mflo	$7
	addu	$3,$3,$7
	nop
	mult	$10,$6
	sll	$6,$3,16
	addu	$2,$2,$6
	srl	$7,$2,16
	srl	$6,$3,16
	andi	$2,$2,0xffff
	mflo	$12
	addu	$3,$7,$12
	srl	$7,$3,16
	mult	$11,$10
	sll	$3,$3,16
	addu	$3,$2,$3
	dsll	$3,$3,32
	dsrl	$3,$3,32
	mflo	$10
	nop
	nop
	mult	$9,$5
	addu	$5,$6,$10
	addu	$5,$5,$7
	mflo	$2
	addu	$2,$2,$5
	nop
	mult	$8,$4
	mflo	$4
	addu	$2,$2,$4
	dsll	$2,$2,32
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
	dsra	$4,$4,32
	dsra	$5,$5,32
	mflo	$6
	dsll	$6,$6,32
	dsrl	$6,$6,32
	mfhi	$7
	dsll	$7,$7,32
	or	$6,$6,$7
	multu	$3,$4
	mflo	$3
	dsll	$3,$3,32
	dsrl	$3,$3,32
	mfhi	$7
	dsll	$7,$7,32
	or	$3,$3,$7
	multu	$2,$5
	dsrl	$7,$6,32
	daddu	$3,$3,$7
	dsll	$7,$3,32
	dsrl	$7,$7,32
	dsll	$6,$6,32
	dsrl	$6,$6,32
	dsrl	$3,$3,32
	mflo	$2
	dsll	$2,$2,32
	dsrl	$2,$2,32
	mfhi	$8
	dsll	$8,$8,32
	or	$2,$2,$8
	multu	$4,$5
	daddu	$2,$2,$7
	mflo	$4
	dsll	$4,$4,32
	dsrl	$4,$4,32
	mfhi	$5
	dsll	$5,$5,32
	or	$4,$4,$5
	dsll	$5,$2,32
	daddu	$3,$3,$4
	daddu	$6,$6,$5
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
	dsra	$10,$7,32
	mflo	$8
	dsll	$8,$8,32
	dsrl	$8,$8,32
	mfhi	$9
	dsll	$9,$9,32
	or	$8,$8,$9
	dsra	$9,$5,32
	multu	$2,$9
	mflo	$2
	dsll	$2,$2,32
	dsrl	$2,$2,32
	mfhi	$11
	dsll	$11,$11,32
	or	$2,$2,$11
	multu	$3,$10
	dsrl	$11,$8,32
	daddu	$2,$2,$11
	dsll	$11,$2,32
	dsrl	$11,$11,32
	dsrl	$2,$2,32
	dsll	$8,$8,32
	dsrl	$8,$8,32
	mflo	$3
	dsll	$3,$3,32
	dsrl	$3,$3,32
	mfhi	$12
	dsll	$12,$12,32
	or	$3,$3,$12
	multu	$9,$10
	daddu	$3,$3,$11
	mfhi	$10
	dsll	$10,$10,32
	mflo	$9
	dsll	$9,$9,32
	dsrl	$9,$9,32
	dmult	$5,$6
	or	$9,$9,$10
	daddu	$2,$2,$9
	dsrl	$10,$3,32
	daddu	$10,$2,$10
	dsll	$3,$3,32
	daddu	$8,$8,$3
	move	$3,$8
	mflo	$5
	daddu	$5,$5,$10
	nop
	dmult	$7,$4
	mflo	$2
	jr	$31
	daddu	$2,$5,$2

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
	sltu	$2,$0,$5
	dsubu	$4,$0,$4
	dsubu	$5,$0,$5
	dsubu	$2,$4,$2
	jr	$31
	move	$3,$5

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
	li	$2,1431633920			# 0x55550000
	daddiu	$2,$2,21845
	dsll	$2,$2,16
	daddiu	$3,$2,21845
	li	$2,858980352			# 0x33330000
	daddiu	$2,$2,13107
	dsll	$3,$3,16
	dsrl	$5,$4,1
	daddiu	$3,$3,21845
	dsll	$2,$2,16
	and	$3,$5,$3
	daddiu	$2,$2,13107
	dsubu	$4,$4,$3
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	dsrl	$5,$4,2
	li	$3,252641280			# 0xf0f0000
	and	$5,$5,$2
	and	$4,$4,$2
	daddiu	$2,$3,3855
	dsll	$2,$2,16
	daddu	$4,$5,$4
	daddiu	$2,$2,3855
	dsrl	$3,$4,4
	dsll	$2,$2,16
	daddu	$3,$3,$4
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
	li	$3,1431633920			# 0x55550000
	srl	$2,$4,1
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	srl	$3,$4,2
	and	$3,$3,$2
	and	$4,$4,$2
	addu	$4,$4,$3
	srl	$3,$4,4
	li	$2,252641280			# 0xf0f0000
	addu	$3,$3,$4
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
	li	$3,1431633920			# 0x55550000
	daddiu	$3,$3,21845
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	dsll	$6,$4,63
	dsrl	$2,$5,1
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	or	$2,$6,$2
	dsrl	$6,$4,1
	and	$6,$6,$3
	and	$2,$2,$3
	li	$3,858980352			# 0x33330000
	dsubu	$2,$5,$2
	daddiu	$3,$3,13107
	sltu	$5,$5,$2
	dsubu	$4,$4,$6
	dsll	$3,$3,16
	dsubu	$4,$4,$5
	daddiu	$3,$3,13107
	dsll	$6,$4,62
	dsrl	$5,$2,2
	dsll	$3,$3,16
	daddiu	$3,$3,13107
	or	$5,$6,$5
	and	$5,$5,$3
	dsrl	$6,$4,2
	and	$2,$2,$3
	daddu	$2,$5,$2
	and	$6,$6,$3
	and	$4,$4,$3
	daddu	$4,$6,$4
	sltu	$5,$2,$5
	daddu	$5,$5,$4
	li	$4,252641280			# 0xf0f0000
	dsll	$6,$5,60
	dsrl	$3,$2,4
	daddiu	$4,$4,3855
	or	$3,$6,$3
	dsll	$4,$4,16
	daddu	$2,$3,$2
	dsrl	$6,$5,4
	daddiu	$4,$4,3855
	sltu	$3,$2,$3
	daddu	$5,$6,$5
	dsll	$4,$4,16
	daddiu	$4,$4,3855
	daddu	$3,$3,$5
	and	$2,$2,$4
	and	$3,$3,$4
	daddu	$3,$3,$2
	dsra	$2,$3,32
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
	lui	$7,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powidf2)))
	andi	$2,$5,0x1
	beq	$2,$0,.L1414
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$2,$5
	.align	3
.L1411:
	mul.d	$f0,$f0,$f12
.L1409:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,.L1410
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,.L1411
	addu	$3,$3,$2

	sra	$2,$3,1
.L1418:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,.L1411
	addu	$3,$3,$2

	b	.L1418
	sra	$2,$3,1

	.align	3
.L1410:
	bltz	$5,.L1417
	ldc1	$f1,%got_ofst(.LC14)($6)

	jr	$31
	nop

	.align	3
.L1414:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1409
	move	$2,$5

	.align	3
.L1417:
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
	lui	$7,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powisf2)))
	andi	$2,$5,0x1
	beq	$2,$0,.L1425
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$2,$5
	.align	3
.L1422:
	mul.s	$f0,$f0,$f12
.L1420:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,.L1421
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,.L1422
	addu	$3,$3,$2

	sra	$2,$3,1
.L1429:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,.L1422
	addu	$3,$3,$2

	b	.L1429
	sra	$2,$3,1

	.align	3
.L1421:
	bltz	$5,.L1428
	lwc1	$f1,%got_ofst(.LC16)($6)

	jr	$31
	nop

	.align	3
.L1425:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1420
	move	$2,$5

	.align	3
.L1428:
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
	bne	$6,$0,.L1434
	nop

	sltu	$2,$3,$2
	bne	$2,$0,.L1433
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1434
	nop

	sltu	$2,$5,$2
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1434:
	jr	$31
	move	$2,$0

	.align	3
.L1433:
	jr	$31
	li	$2,2			# 0x2

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
	bne	$6,$0,.L1441
	nop

	sltu	$2,$3,$2
	bne	$2,$0,.L1440
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1441
	nop

	jr	$31
	sltu	$2,$5,$2

	.align	3
.L1441:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1440:
	jr	$31
	li	$2,1			# 0x1

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
	bne	$2,$0,.L1447
	sltu	$4,$6,$4

	bne	$4,$0,.L1446
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1447
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1447:
	jr	$31
	move	$2,$0

	.align	3
.L1446:
	jr	$31
	li	$2,2			# 0x2

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
	.word	-1074790400
	.word	0
	.align	3
.LC13:
	.word	-1075838976
	.word	0
	.align	3
.LC14:
	.word	1072693248
	.word	0
	.section	.rodata.cst4
	.align	2
.LC15:
	.word	1191182336
	.align	2
.LC16:
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
