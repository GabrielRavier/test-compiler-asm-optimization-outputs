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
	beq	$6,$0,.L36
	daddu	$3,$4,$6

	.align	3
.L9:
	lb	$4,-1($5)
	daddiu	$3,$3,-1
	daddiu	$5,$5,-1
	bne	$2,$3,.L9
	sb	$4,0($3)

.L36:
	jr	$31
	nop

	.align	3
.L7:
	bne	$4,$5,.L34
	nop

	jr	$31
	nop

	.align	3
.L34:
	beq	$6,$0,.L36
	daddiu	$3,$6,-1

	sltu	$3,$3,8
	bne	$3,$0,.L10
	daddiu	$4,$5,1

	or	$3,$5,$2
	andi	$3,$3,0x7
	bne	$3,$0,.L10
	dsubu	$3,$2,$4

	sltu	$3,$3,7
	bne	$3,$0,.L10
	dsrl	$8,$6,3

	dsll	$8,$8,3
	move	$3,$2
	daddu	$7,$5,$8
	.align	3
.L11:
	ld	$4,0($5)
	daddiu	$5,$5,8
	daddiu	$3,$3,8
	bne	$7,$5,.L11
	sd	$4,-8($3)

	daddu	$3,$2,$8
	beq	$6,$8,.L36
	dsubu	$4,$6,$8

	lb	$6,0($7)
	li	$5,1			# 0x1
	beq	$4,$5,.L36
	sb	$6,0($3)

	lb	$6,1($7)
	li	$5,2			# 0x2
	beq	$4,$5,.L36
	sb	$6,1($3)

	lb	$6,2($7)
	li	$5,3			# 0x3
	beq	$4,$5,.L36
	sb	$6,2($3)

	lb	$6,3($7)
	li	$5,4			# 0x4
	beq	$4,$5,.L36
	sb	$6,3($3)

	lb	$6,4($7)
	li	$5,5			# 0x5
	beq	$4,$5,.L36
	sb	$6,4($3)

	lb	$6,5($7)
	li	$5,6			# 0x6
	beq	$4,$5,.L36
	sb	$6,5($3)

	lb	$4,6($7)
	jr	$31
	sb	$4,6($3)

	.align	3
.L10:
	daddu	$6,$2,$6
	move	$3,$2
	.align	3
.L14:
	lb	$5,-1($4)
	daddiu	$3,$3,1
	daddiu	$4,$4,1
	bne	$3,$6,.L14
	sb	$5,-1($3)

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
	bne	$7,$0,.L38
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L41:
	beq	$7,$0,.L40
	daddiu	$4,$4,1

.L38:
	lbu	$2,0($5)
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bne	$2,$6,.L41
	sb	$2,0($4)

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L40:
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
	bne	$6,$0,.L51
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L53:
	beq	$6,$0,.L54
	daddiu	$4,$4,1

.L51:
	lbu	$2,0($4)
	bne	$2,$5,.L53
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L54:
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
	bnel	$6,$0,.L70
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L62:
	beq	$6,$0,.L64
	daddiu	$5,$5,1

	lbu	$2,0($4)
.L70:
	lbu	$3,0($5)
	daddiu	$6,$6,-1
	beq	$2,$3,.L62
	daddiu	$4,$4,1

	jr	$31
	subu	$2,$2,$3

	.align	3
.L64:
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
	beq	$6,$0,.L72
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L72:
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
	b	.L78
	daddiu	$4,$4,-1

	.align	3
.L80:
	lbu	$3,0($2)
	beq	$3,$5,.L82
	daddiu	$6,$6,-1

.L78:
	bne	$6,$4,.L80
	move	$2,$6

	move	$2,$0
.L82:
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
	beq	$6,$0,.L86
	move	$16,$4

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

.L86:
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
	beq	$3,$0,.L96
	sb	$3,0($4)

	.align	3
.L90:
	lb	$3,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bne	$3,$0,.L90
	sb	$3,0($2)

.L96:
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
	bne	$3,$0,.L98
	andi	$5,$5,0x00ff

.L107:
	jr	$31
	nop

	.align	3
.L100:
	beq	$3,$0,.L107
	daddiu	$2,$2,1

.L98:
	andi	$3,$3,0x00ff
	bnel	$3,$5,.L100
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
	b	.L110
	move	$2,$4

	.align	3
.L114:
	beq	$3,$0,.L113
	daddiu	$2,$2,1

.L110:
	lb	$3,0($2)
	bne	$3,$5,.L114
	nop

	jr	$31
	nop

	.align	3
.L113:
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
	beql	$3,$2,.L124
	daddiu	$4,$4,1

	b	.L123
	andi	$3,$3,0x00ff

	.align	3
.L118:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L122
	daddiu	$4,$4,1

.L124:
	bne	$3,$0,.L118
	daddiu	$5,$5,1

	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$3,$2

	.align	3
.L122:
	andi	$3,$3,0x00ff
	.align	3
.L123:
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
	beq	$2,$0,.L128
	nop

	move	$2,$4
	.align	3
.L127:
	lb	$3,1($2)
	bne	$3,$0,.L127
	daddiu	$2,$2,1

	jr	$31
	dsubu	$2,$2,$4

	.align	3
.L128:
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
	beq	$6,$0,.L139
	daddiu	$6,$6,-1

	lbu	$2,0($4)
	bne	$2,$0,.L135
	daddu	$6,$4,$6

	b	.L134
	lbu	$3,0($5)

	.align	3
.L145:
	beq	$4,$6,.L134
	nop

	bne	$3,$2,.L134
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,.L144
	lbu	$3,1($5)

	move	$5,$7
.L135:
	lbu	$3,0($5)
	bne	$3,$0,.L145
	daddiu	$7,$5,1

.L134:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L139:
	jr	$31
	move	$2,$0

	.align	3
.L144:
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
	bne	$2,$0,.L151
	dsrl	$2,$6,1

	dsll	$2,$2,1
	daddu	$2,$4,$2
	.align	3
.L148:
	lbu	$6,1($4)
	lbu	$3,0($4)
	daddiu	$4,$4,2
	sb	$6,0($5)
	sb	$3,1($5)
	bne	$4,$2,.L148
	daddiu	$5,$5,2

.L151:
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
	beq	$4,$2,.L158
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L158:
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
	bne	$3,$0,.L163
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L163:
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
	beq	$4,$2,.L175
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L175:
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
	beq	$3,$0,.L185
	addiu	$3,$4,-8232

.L186:
	jr	$31
	nop

	.align	3
.L185:
	sltu	$3,$3,2
	bne	$3,$0,.L186
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
.L194:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L197:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

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
.L212:
	dmtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L208:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L209:
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
.L221:
	mtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L217:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L218:
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
	bc1t	.L229
	sdc1	$f13,0($sp)

	c.un.d	$f13,$f13
	dmfc1	$2,$f12
	bc1t	.L230
	mov.d	$f0,$f13

	ld	$4,0($sp)
	dsrl	$3,$2,63
	dsrl	$4,$4,63
	beq	$3,$4,.L225
	nop

	beq	$3,$0,.L230
	nop

.L223:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L225:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L223
	nop

.L230:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L229:
	b	.L223
	mov.d	$f0,$f13

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
	bc1t	.L241
	swc1	$f13,0($sp)

	c.un.s	$f13,$f13
	mfc1	$2,$f12
	bc1t	.L242
	mov.s	$f0,$f13

	lw	$3,0($sp)
	li	$5,-2147483648			# 0xffffffff80000000
	and	$4,$2,$5
	and	$3,$3,$5
	beq	$4,$3,.L237
	move	$5,$4

	beq	$5,$0,.L242
	nop

.L235:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L237:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L235
	nop

.L242:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L241:
	b	.L235
	mov.s	$f0,$f13

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

	bne	$2,$0,.L247
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	dmtc1	$17,$f13
	dmtc1	$16,$f14
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L254
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beql	$2,$3,.L249
	sd	$17,8($sp)

	beql	$2,$0,.L259
	move	$16,$18

.L247:
	ld	$31,104($sp)
.L260:
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
.L249:
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

	bltz	$2,.L260
	ld	$31,104($sp)

.L254:
	move	$16,$18
.L259:
	b	.L247
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
	bc1t	.L261
	sdc1	$f12,0($sp)

	c.un.d	$f13,$f13
	nop
	bc1t	.L268
	ld	$3,0($sp)

	dsrl	$4,$2,63
	dsrl	$3,$3,63
	beq	$3,$4,.L263
	mov.d	$f0,$f12

	beq	$3,$0,.L273
	nop

.L261:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L263:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L261
	nop

.L273:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L268:
	b	.L261
	mov.d	$f0,$f12

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
	bc1t	.L274
	swc1	$f12,0($sp)

	c.un.s	$f13,$f13
	nop
	bc1t	.L281
	lw	$4,0($sp)

	li	$5,-2147483648			# 0xffffffff80000000
	and	$3,$2,$5
	and	$4,$4,$5
	mov.s	$f0,$f12
	beq	$4,$3,.L276
	move	$5,$4

	beq	$5,$0,.L286
	nop

.L274:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L276:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L274
	nop

.L286:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L281:
	b	.L274
	mov.s	$f0,$f12

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

	bne	$2,$0,.L293
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	dmtc1	$19,$f13
	dmtc1	$18,$f14
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L287
	dsrl	$2,$16,63

	dsrl	$3,$18,63
	beql	$2,$3,.L289
	sd	$19,8($sp)

	beql	$2,$0,.L299
	move	$16,$18

.L287:
	ld	$31,104($sp)
.L300:
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
.L289:
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

	bltz	$2,.L300
	ld	$31,104($sp)

.L293:
	move	$16,$18
.L299:
	b	.L287
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
	beq	$4,$0,.L304
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$2,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	move	$3,$4
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L303:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	srl	$3,$3,6
	daddiu	$5,$5,1
	bne	$3,$0,.L303
	sb	$4,-1($5)

	jr	$31
	sb	$0,0($5)

	.align	3
.L304:
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
	beql	$5,$0,.L318
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L320
	sd	$4,8($2)

.L320:
	jr	$31
	nop

	.align	3
.L318:
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
	beq	$2,$0,.L332
	ld	$3,8($4)

	sd	$3,8($2)
	ld	$3,8($4)
.L332:
	bnel	$3,$0,.L331
	sd	$2,0($3)

.L331:
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
	beq	$19,$0,.L334
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L336
	move	$17,$0

	.align	3
.L349:
	beq	$19,$17,.L334
	daddu	$16,$16,$18

.L336:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	bne	$2,$0,.L349
	daddiu	$17,$17,1

.L333:
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
.L334:
	dmult	$18,$19
	daddiu	$19,$19,1
	sd	$19,0($23)
	mflo	$21
	beq	$18,$0,.L333
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
	beq	$20,$0,.L351
	sd	$16,8($sp)

	move	$18,$4
	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L353
	move	$17,$0

	.align	3
.L362:
	beq	$20,$17,.L351
	daddu	$16,$16,$21

.L353:
	move	$5,$16
	move	$25,$19
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,.L362
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
.L351:
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
.L372:
	lb	$6,0($4)
	addiu	$2,$6,-9
	beq	$6,$3,.L366
	sltu	$2,$2,5

	bnel	$2,$0,.L372
	daddiu	$4,$4,1

	li	$2,43			# 0x2b
	beq	$6,$2,.L367
	li	$2,45			# 0x2d

	bne	$6,$2,.L383
	addiu	$5,$6,-48

	lb	$6,1($4)
	addiu	$5,$6,-48
	sltu	$2,$5,10
	beq	$2,$0,.L377
	daddiu	$4,$4,1

	li	$8,1			# 0x1
.L370:
	move	$2,$0
	.align	3
.L374:
	lb	$6,1($4)
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$5
	subu	$2,$3,$5
	addiu	$5,$6,-48
	sltu	$6,$5,10
	bne	$6,$0,.L374
	daddiu	$4,$4,1

	bne	$8,$0,.L384
	nop

	jr	$31
	subu	$2,$7,$3

	.align	3
.L366:
	b	.L372
	daddiu	$4,$4,1

	.align	3
.L383:
	sltu	$2,$5,10
	bne	$2,$0,.L370
	move	$8,$0

.L377:
	move	$2,$0
.L384:
	jr	$31
	nop

	.align	3
.L367:
	lb	$6,1($4)
	move	$8,$0
	addiu	$5,$6,-48
	sltu	$2,$5,10
	bne	$2,$0,.L370
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
.L392:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L386
	sltu	$2,$2,5

	bnel	$2,$0,.L392
	daddiu	$4,$4,1

	li	$2,43			# 0x2b
	beq	$5,$2,.L387
	li	$2,45			# 0x2d

	bne	$5,$2,.L403
	addiu	$6,$5,-48

	lb	$5,1($4)
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,.L397
	daddiu	$4,$4,1

	li	$8,1			# 0x1
.L390:
	move	$2,$0
	.align	3
.L394:
	lb	$5,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	move	$7,$6
	addiu	$6,$5,-48
	dsll	$3,$3,1
	sltu	$5,$6,10
	daddiu	$4,$4,1
	bne	$5,$0,.L394
	dsubu	$2,$3,$7

	bne	$8,$0,.L404
	nop

	jr	$31
	dsubu	$2,$7,$3

	.align	3
.L386:
	b	.L392
	daddiu	$4,$4,1

	.align	3
.L403:
	sltu	$2,$6,10
	bne	$2,$0,.L390
	move	$8,$0

.L397:
	move	$2,$0
.L404:
	jr	$31
	nop

	.align	3
.L387:
	lb	$5,1($4)
	move	$8,$0
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,.L390
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
.L410:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L406
	sltu	$2,$2,5

	bnel	$2,$0,.L410
	daddiu	$4,$4,1

	li	$2,43			# 0x2b
	beq	$5,$2,.L407
	li	$2,45			# 0x2d

	beql	$5,$2,.L408
	lb	$5,1($4)

	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,.L417
	move	$8,$0

.L411:
	move	$2,$0
	.align	3
.L414:
	lb	$5,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	move	$7,$6
	addiu	$6,$5,-48
	dsll	$3,$3,1
	sltu	$5,$6,10
	daddiu	$4,$4,1
	bne	$5,$0,.L414
	dsubu	$2,$3,$7

	bne	$8,$0,.L423
	nop

	jr	$31
	dsubu	$2,$7,$3

	.align	3
.L406:
	b	.L410
	daddiu	$4,$4,1

	.align	3
.L408:
	li	$8,1			# 0x1
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,.L411
	daddiu	$4,$4,1

.L417:
	move	$2,$0
.L423:
	jr	$31
	nop

	.align	3
.L407:
	lb	$5,1($4)
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,.L417
	daddiu	$4,$4,1

	b	.L411
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
	beq	$6,$0,.L425
	sd	$16,8($sp)

	move	$16,$6
	move	$22,$4
	move	$20,$5
	move	$19,$7
	b	.L428
	move	$21,$8

	.align	3
.L438:
	beq	$2,$0,.L424
	dsubu	$16,$16,$18

	beq	$16,$0,.L425
	daddu	$20,$17,$19

.L428:
	dsrl	$18,$16,1
.L439:
	dmult	$18,$19
	move	$4,$22
	move	$25,$21
	daddiu	$16,$16,-1
	mflo	$17
	daddu	$17,$20,$17
	jalr	$25
	move	$5,$17

	bgez	$2,.L438
	nop

	move	$16,$18
	bne	$16,$0,.L439
	dsrl	$18,$16,1

.L425:
	move	$17,$0
.L424:
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
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sll	$6,$6,0
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$16,8($sp)
	sd	$31,88($sp)
	sd	$21,48($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	move	$fp,$4
	move	$20,$5
	move	$19,$7
	move	$23,$8
	move	$22,$9
	beq	$6,$0,.L445
	move	$16,$6

	.align	3
.L441:
	dsra	$18,$16,1
	.align	3
.L455:
	dmult	$18,$19
	move	$6,$22
	move	$4,$fp
	move	$25,$23
	sra	$21,$16,1
	addiu	$16,$16,-1
	sra	$16,$16,1
	mflo	$17
	daddu	$17,$20,$17
	jalr	$25
	move	$5,$17

	beq	$2,$0,.L454
	ld	$31,88($sp)

	blez	$2,.L443
	nop

	bne	$16,$0,.L441
	daddu	$20,$17,$19

.L445:
	move	$17,$0
	ld	$31,88($sp)
.L454:
	ld	$fp,80($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$16,8($sp)
	move	$2,$17
	ld	$17,16($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L443:
	beq	$18,$0,.L445
	move	$16,$21

	b	.L455
	dsra	$18,$16,1

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
	bne	$2,$0,.L471
	nop

	jr	$31
	nop

	.align	3
.L473:
	beq	$2,$0,.L474
	daddiu	$4,$4,4

.L471:
	bnel	$5,$2,.L473
	lw	$2,4($4)

	jr	$31
	move	$2,$4

	.align	3
.L474:
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
	beql	$3,$6,.L486
	daddiu	$4,$4,4

	b	.L485
	slt	$4,$3,$6

	.align	3
.L480:
	lw	$3,0($4)
	lw	$6,0($5)
	bne	$3,$6,.L479
	daddiu	$4,$4,4

.L486:
	bne	$3,$0,.L480
	daddiu	$5,$5,4

.L479:
	slt	$4,$3,$6
.L485:
	bne	$4,$0,.L487
	li	$2,-1			# 0xffffffffffffffff

	slt	$2,$6,$3
.L487:
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
.L489:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bne	$6,$0,.L489
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
	beq	$2,$0,.L495
	nop

	move	$2,$4
	.align	3
.L494:
	lw	$3,4($2)
	bne	$3,$0,.L494
	daddiu	$2,$2,4

	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.align	3
.L495:
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
	bnel	$6,$0,.L511
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L508:
	beql	$2,$0,.L512
	lw	$2,0($4)

	daddiu	$4,$4,4
	beq	$6,$0,.L504
	daddiu	$5,$5,4

	lw	$2,0($4)
.L511:
	lw	$3,0($5)
	beq	$3,$2,.L508
	daddiu	$6,$6,-1

	lw	$2,0($4)
.L512:
	lw	$3,0($5)
	slt	$4,$2,$3
	beq	$4,$0,.L510
	slt	$2,$3,$2

	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L504:
	move	$2,$0
.L510:
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
	bnel	$6,$0,.L521
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L516:
	beq	$6,$0,.L517
	daddiu	$4,$4,4

	lw	$2,0($4)
.L521:
	bne	$2,$5,.L516
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L517:
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
	bnel	$6,$0,.L535
	lw	$3,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L525:
	daddiu	$4,$4,4
	beq	$6,$0,.L528
	daddiu	$5,$5,4

	lw	$3,0($4)
.L535:
	lw	$2,0($5)
	beq	$3,$2,.L525
	daddiu	$6,$6,-1

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bne	$4,$0,.L533
	slt	$2,$3,$2

	jr	$31
	nop

	.align	3
.L528:
	jr	$31
	move	$2,$0

	.align	3
.L533:
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
	beq	$6,$0,.L538
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L538:
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
	beq	$4,$5,.L578
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$8,$6,2
	sltu	$8,$3,$8
	move	$7,$5
	bne	$8,$0,.L545
	daddiu	$3,$6,-1

	beq	$6,$0,.L578
	sltu	$8,$3,9

	bne	$8,$0,.L555
	daddiu	$8,$5,4

	or	$8,$5,$4
	andi	$8,$8,0x7
	bne	$8,$0,.L575
	daddiu	$8,$5,4

	beq	$4,$8,.L556
	dsrl	$9,$6,1

	move	$3,$0
	.align	3
.L550:
	ld	$8,0($7)
	daddiu	$3,$3,1
	daddiu	$7,$7,8
	sd	$8,0($4)
	bne	$9,$3,.L550
	daddiu	$4,$4,8

	andi	$3,$6,0x1
	beq	$3,$0,.L578
	li	$3,-2			# 0xfffffffffffffffe

	and	$6,$6,$3
	dsll	$6,$6,2
	daddu	$5,$5,$6
	lw	$3,0($5)
	daddu	$6,$2,$6
	jr	$31
	sw	$3,0($6)

	.align	3
.L555:
.L549:
	b	.L553
	li	$6,-1			# 0xffffffffffffffff

	.align	3
.L576:
	daddiu	$8,$8,4
.L553:
	lw	$5,-4($8)
	daddiu	$3,$3,-1
	daddiu	$4,$4,4
	bne	$3,$6,.L576
	sw	$5,-4($4)

.L578:
	jr	$31
	nop

	.align	3
.L545:
	beq	$6,$0,.L578
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L548:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L548
	sw	$6,0($4)

	jr	$31
	nop

.L575:
.L556:
	b	.L549
	move	$4,$2

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
	beq	$6,$0,.L598
	move	$2,$4

	daddiu	$4,$6,-1
	dsrl	$3,$2,2
	sltu	$7,$4,6
	bne	$7,$0,.L585
	andi	$3,$3,0x1

	beq	$3,$0,.L582
	move	$10,$2

	daddiu	$10,$2,4
	sw	$5,0($2)
	daddiu	$4,$6,-2
.L582:
	dsll	$7,$5,32
	dsubu	$6,$6,$3
	dsrl	$7,$7,32
	dsll	$8,$5,32
	dsll	$3,$3,2
	or	$8,$8,$7
	dsrl	$9,$6,1
	daddu	$3,$2,$3
	move	$7,$0
	.align	3
.L583:
	daddiu	$7,$7,1
	sd	$8,0($3)
	bne	$7,$9,.L583
	daddiu	$3,$3,8

	andi	$3,$6,0x1
	beq	$3,$0,.L598
	li	$3,-2			# 0xfffffffffffffffe

	and	$6,$6,$3
	dsll	$3,$6,2
	dsubu	$4,$4,$6
	daddu	$3,$10,$3
.L581:
	beq	$4,$0,.L598
	sw	$5,0($3)

	li	$6,1			# 0x1
	beq	$4,$6,.L598
	sw	$5,4($3)

	li	$6,2			# 0x2
	beq	$4,$6,.L598
	sw	$5,8($3)

	li	$6,3			# 0x3
	beq	$4,$6,.L598
	sw	$5,12($3)

	li	$6,4			# 0x4
	beq	$4,$6,.L598
	sw	$5,16($3)

	sw	$5,20($3)
.L598:
	jr	$31
	nop

.L585:
	b	.L581
	move	$3,$2

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
	beq	$2,$0,.L600
	daddu	$2,$4,$6

	beq	$6,$0,.L633
	daddu	$5,$5,$6

	.align	3
.L602:
	lb	$3,-1($2)
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	bne	$4,$2,.L602
	sb	$3,0($5)

.L633:
	jr	$31
	nop

	.align	3
.L600:
	bne	$4,$5,.L629
	nop

	jr	$31
	nop

	.align	3
.L629:
	beq	$6,$0,.L633
	daddiu	$2,$6,-1

	sltu	$2,$2,8
	bne	$2,$0,.L631
	daddiu	$2,$4,1

	or	$2,$5,$4
	andi	$2,$2,0x7
	bne	$2,$0,.L627
	daddiu	$2,$4,1

	dsubu	$3,$5,$2
	sltu	$3,$3,7
	bne	$3,$0,.L603
	dsrl	$8,$6,3

	dsll	$8,$8,3
	move	$2,$5
	daddu	$7,$4,$8
	.align	3
.L604:
	ld	$3,0($4)
	daddiu	$4,$4,8
	daddiu	$2,$2,8
	bne	$7,$4,.L604
	sd	$3,-8($2)

	daddu	$5,$5,$8
	beq	$6,$8,.L633
	dsubu	$2,$6,$8

	lb	$4,0($7)
	li	$3,1			# 0x1
	beq	$2,$3,.L633
	sb	$4,0($5)

	lb	$4,1($7)
	li	$3,2			# 0x2
	beq	$2,$3,.L633
	sb	$4,1($5)

	lb	$4,2($7)
	li	$3,3			# 0x3
	beq	$2,$3,.L633
	sb	$4,2($5)

	lb	$4,3($7)
	li	$3,4			# 0x4
	beq	$2,$3,.L633
	sb	$4,3($5)

	lb	$4,4($7)
	li	$3,5			# 0x5
	beq	$2,$3,.L633
	sb	$4,4($5)

	lb	$4,5($7)
	li	$3,6			# 0x6
	beq	$2,$3,.L633
	sb	$4,5($5)

	lb	$2,6($7)
	jr	$31
	sb	$2,6($5)

	.align	3
.L627:
.L603:
	.align	3
.L631:
	b	.L607
	daddu	$4,$4,$6

	.align	3
.L630:
	daddiu	$2,$2,1
.L607:
	lb	$3,-1($2)
	daddiu	$5,$5,1
	bne	$2,$4,.L630
	sb	$3,-1($5)

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
	b	.L663
	li	$6,32			# 0x20

	.align	3
.L667:
	beq	$6,$2,.L666
	nop

.L663:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$5,$5,0x1
	beq	$5,$0,.L667
	move	$3,$2

	jr	$31
	nop

	.align	3
.L666:
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
	beq	$4,$0,.L676
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L675
	nop

	li	$2,1			# 0x1
	.align	3
.L670:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L670
	addiu	$2,$2,1

.L676:
	jr	$31
	nop

.L675:
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
	bc1t	.L683
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1f	.L682
	li	$2,1			# 0x1

.L683:
	jr	$31
	nop

	.align	3
.L682:
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
	bc1t	.L690
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1f	.L689
	li	$2,1			# 0x1

.L690:
	jr	$31
	nop

	.align	3
.L689:
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
	bltz	$3,.L692
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
.L692:
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
	bc1t	.L717
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	.L717
	nop

	bltz	$5,.L713
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f1,%got_ofst(.LC6)($2)
.L701:
	andi	$2,$5,0x1
	beq	$2,$0,.L716
	srl	$2,$5,31

	.align	3
.L703:
	mul.s	$f0,$f0,$f1
	srl	$2,$5,31
.L716:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L717
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f1,$f1,$f1
	bne	$3,$0,.L703
	addu	$2,$2,$5

	sra	$5,$2,1
.L715:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f1,$f1,$f1
	bne	$3,$0,.L703
	addu	$2,$2,$5

	b	.L715
	sra	$5,$2,1

.L717:
	jr	$31
	nop

	.align	3
.L713:
	ld	$2,%got_page(.LC7)($4)
	b	.L701
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
	bc1t	.L736
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$f1,$f12
	nop
	bc1t	.L736
	nop

	bltz	$5,.L732
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f1,%got_ofst(.LC8)($2)
.L720:
	andi	$2,$5,0x1
	beq	$2,$0,.L735
	srl	$2,$5,31

	.align	3
.L722:
	mul.d	$f0,$f0,$f1
	srl	$2,$5,31
.L735:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L736
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.d	$f1,$f1,$f1
	bne	$3,$0,.L722
	addu	$2,$2,$5

	sra	$5,$2,1
.L734:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.d	$f1,$f1,$f1
	bne	$3,$0,.L722
	addu	$2,$2,$5

	b	.L734
	sra	$5,$2,1

.L736:
	jr	$31
	nop

	.align	3
.L732:
	ld	$2,%got_page(.LC9)($4)
	b	.L720
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

	bne	$2,$0,.L738
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

	beq	$2,$0,.L754
	ld	$31,136($sp)

	bltz	$16,.L753
	ld	$2,%got_page(.LC10)($28)

	ld	$5,%got_ofst(.LC10+8)($2)
	ld	$4,%got_ofst(.LC10)($2)
.L740:
	andi	$2,$16,0x1
	beq	$2,$0,.L755
	srl	$2,$16,31

	.align	3
.L742:
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
.L755:
	addu	$16,$2,$16
	sra	$16,$16,1
	beq	$16,$0,.L754
	ld	$31,136($sp)

.L743:
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
	bne	$3,$0,.L742
	move	$5,$19

	b	.L743
	sra	$16,$2,1

	.align	3
.L738:
	ld	$31,136($sp)
	.align	3
.L754:
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
.L753:
	ld	$2,%got_page(.LC11)($28)
	ld	$5,%got_ofst(.LC11+8)($2)
	b	.L740
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
	beq	$6,$0,.L769
	move	$2,$4

	daddiu	$3,$6,-1
	sltu	$3,$3,7
	bne	$3,$0,.L758
	or	$3,$4,$5

	andi	$3,$3,0x7
	bne	$3,$0,.L758
	dsrl	$4,$6,3

	dsll	$4,$4,3
	move	$3,$2
	daddu	$9,$5,$4
	.align	3
.L759:
	ld	$8,0($3)
	ld	$7,0($5)
	daddiu	$3,$3,8
	daddiu	$5,$5,8
	xor	$7,$7,$8
	bne	$9,$5,.L759
	sd	$7,-8($3)

	daddu	$3,$2,$4
	beq	$6,$4,.L769
	dsubu	$5,$6,$4

	lbu	$4,0($3)
	lbu	$7,0($9)
	li	$6,1			# 0x1
	xor	$4,$4,$7
	beq	$5,$6,.L769
	sb	$4,0($3)

	lbu	$7,1($3)
	lbu	$4,1($9)
	li	$6,2			# 0x2
	xor	$4,$4,$7
	beq	$5,$6,.L769
	sb	$4,1($3)

	lbu	$7,2($3)
	lbu	$4,2($9)
	li	$6,3			# 0x3
	xor	$4,$4,$7
	beq	$5,$6,.L769
	sb	$4,2($3)

	lbu	$7,3($3)
	lbu	$4,3($9)
	li	$6,4			# 0x4
	xor	$4,$4,$7
	beq	$5,$6,.L769
	sb	$4,3($3)

	lbu	$7,4($3)
	lbu	$4,4($9)
	li	$6,5			# 0x5
	xor	$4,$4,$7
	beq	$5,$6,.L769
	sb	$4,4($3)

	lbu	$7,5($3)
	lbu	$4,5($9)
	li	$6,6			# 0x6
	xor	$4,$4,$7
	beq	$5,$6,.L769
	sb	$4,5($3)

	lbu	$5,6($3)
	lbu	$4,6($9)
	xor	$4,$4,$5
	jr	$31
	sb	$4,6($3)

	.align	3
.L758:
	daddu	$6,$5,$6
	move	$3,$2
	.align	3
.L761:
	lbu	$4,0($3)
	lbu	$7,0($5)
	daddiu	$3,$3,1
	daddiu	$5,$5,1
	xor	$7,$7,$4
	bne	$6,$5,.L761
	sb	$7,-1($3)

.L769:
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
	beq	$3,$0,.L777
	move	$2,$4

	move	$3,$4
	.align	3
.L772:
	lb	$7,1($3)
	bne	$7,$0,.L772
	daddiu	$3,$3,1

	beq	$6,$0,.L774
	nop

	lb	$7,0($5)
	.align	3
.L787:
	daddiu	$6,$6,-1
	daddiu	$5,$5,1
	beq	$7,$0,.L788
	sb	$7,0($3)

	daddiu	$3,$3,1
.L784:
	bnel	$6,$0,.L787
	lb	$7,0($5)

.L774:
	jr	$31
	sb	$0,0($3)

.L788:
	jr	$31
	nop

	.align	3
.L777:
	b	.L784
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
	beq	$5,$0,.L801
	move	$2,$0

	daddu	$3,$4,$2
.L799:
	lb	$3,0($3)
	bnel	$3,$0,.L792
	daddiu	$2,$2,1

.L801:
	jr	$31
	nop

	.align	3
.L792:
	bne	$5,$2,.L799
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
	beq	$7,$0,.L807
	move	$2,$4

.L803:
	b	.L806
	move	$3,$5

	.align	3
.L805:
	beq	$6,$7,.L811
	nop

.L806:
	lb	$6,0($3)
	bne	$6,$0,.L805
	daddiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,.L803
	daddiu	$2,$2,1

.L807:
	move	$2,$0
.L811:
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
.L814:
	lb	$3,0($4)
	beql	$5,$3,.L813
	move	$2,$4

.L813:
	bne	$3,$0,.L814
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
	beq	$8,$0,.L828
	nop

	move	$2,$5
	.align	3
.L819:
	lb	$3,1($2)
	bne	$3,$0,.L819
	daddiu	$2,$2,1

	beq	$2,$5,.L828
	dsubu	$10,$2,$5

	b	.L825
	daddiu	$10,$10,-1

	.align	3
.L839:
	beq	$3,$0,.L838
	daddiu	$4,$4,1

.L825:
	lb	$3,0($4)
	bne	$3,$8,.L839
	daddu	$9,$4,$10

	andi	$3,$3,0x00ff
	move	$2,$5
	b	.L821
	move	$6,$4

	.align	3
.L840:
	beql	$6,$9,.L841
	lbu	$2,0($2)

	bne	$7,$3,.L822
	daddiu	$6,$6,1

	lbu	$3,0($6)
	beq	$3,$0,.L822
	daddiu	$2,$2,1

.L821:
	lbu	$7,0($2)
	bne	$7,$0,.L840
	nop

.L822:
	lbu	$2,0($2)
.L841:
	beq	$2,$3,.L828
	nop

	b	.L825
	daddiu	$4,$4,1

	.align	3
.L838:
	jr	$31
	move	$2,$0

	.align	3
.L828:
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
	bc1t	.L853
	nop

	c.lt.d	$f0,$f12
	nop
	bc1f	.L846
	nop

	c.lt.d	$f13,$f0
	nop
	bc1t	.L854
	li	$3,-1			# 0xffffffffffffffff

.L846:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L853:
	c.lt.d	$f0,$f13
	nop
	bc1f	.L846
	li	$3,-1			# 0xffffffffffffffff

.L854:
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
	beq	$7,$0,.L872
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,.L866
	dsubu	$5,$5,$7

	daddu	$9,$4,$5
	sltu	$3,$9,$4
	bne	$3,$0,.L866
	daddiu	$7,$7,-1

	lb	$13,0($6)
	daddiu	$6,$6,1
	b	.L861
	move	$12,$13

	.align	3
.L865:
	move	$2,$10
.L857:
	sltu	$3,$9,$2
	bnel	$3,$0,.L872
	move	$2,$0

.L861:
	lb	$3,0($2)
	bne	$3,$12,.L865
	daddiu	$10,$2,1

	beq	$7,$0,.L872
	move	$4,$6

.L860:
	move	$3,$10
	b	.L858
	daddu	$11,$10,$7

	.align	3
.L859:
	beq	$3,$11,.L872
	nop

.L858:
	lbu	$8,0($3)
	lbu	$5,0($4)
	daddiu	$3,$3,1
	beq	$8,$5,.L859
	daddiu	$4,$4,1

	sltu	$2,$9,$10
	bnel	$2,$0,.L872
	move	$2,$0

	lb	$3,0($10)
	bne	$3,$13,.L857
	daddiu	$2,$10,1

	move	$3,$10
	move	$4,$6
	move	$10,$2
	b	.L860
	move	$2,$3

	.align	3
.L866:
	move	$2,$0
.L872:
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
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	sd	$17,8($sp)
	sd	$16,0($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	move	$16,$6
	beq	$6,$0,.L874
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

.L874:
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
	bc1t	.L903
	daddiu	$8,$8,%lo(%neg(%gp_rel(frexp)))

	ld	$4,%got_page(.LC14)($8)
	ldc1	$f1,%got_ofst(.LC14)($4)
	c.le.d	$f1,$f12
	nop
	bc1f	.L904
	move	$7,$0

.L882:
	ld	$6,%got_page(.LC9)($8)
	ldc1	$f1,%got_ofst(.LC14)($4)
	move	$3,$0
	ldc1	$f0,%got_ofst(.LC9)($6)
	.align	3
.L888:
	dmtc1	$2,$f2
	nop
	mul.d	$f2,$f2,$f0
	c.le.d	$f1,$f2
	dmfc1	$2,$f2
	bc1t	.L888
	addiu	$3,$3,1

	beq	$7,$0,.L879
	sw	$3,0($5)

.L906:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L879:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L904:
	ld	$6,%got_page(.LC9)($8)
	ldc1	$f1,%got_ofst(.LC9)($6)
	c.lt.d	$f12,$f1
	nop
	bc1f	.L885
	nop

	c.eq.d	$f12,$f0
	nop
	bc1f	.L883
	move	$3,$2

.L885:
	dmtc1	$2,$f0
	jr	$31
	sw	$0,0($5)

	.align	3
.L903:
	ld	$4,%got_page(.LC12)($8)
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	ldc1	$f0,%got_ofst(.LC12)($4)
	c.le.d	$f12,$f0
	nop
	bc1f	.L905
	xor	$3,$2,$3

	ld	$4,%got_page(.LC14)($8)
	move	$2,$3
	b	.L882
	li	$7,1			# 0x1

	.align	3
.L905:
	ld	$4,%got_page(.LC13)($8)
	ldc1	$f0,%got_ofst(.LC13)($4)
	c.lt.d	$f0,$f12
	nop
	bc1f	.L885
	nop

	ld	$6,%got_page(.LC9)($8)
	li	$7,1			# 0x1
.L883:
	ldc1	$f0,%got_ofst(.LC9)($6)
	move	$2,$3
	move	$3,$0
	.align	3
.L890:
	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	c.lt.d	$f1,$f0
	dmfc1	$2,$f1
	bc1t	.L890
	addiu	$3,$3,-1

	bne	$7,$0,.L906
	sw	$3,0($5)

	b	.L879
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
	beq	$4,$0,.L914
	move	$2,$0

	.align	3
.L909:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$3
	bne	$4,$0,.L909
	dsll	$5,$5,1

.L914:
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
	bne	$7,$0,.L916
	li	$2,32			# 0x20

	b	.L922
	move	$2,$0

	.align	3
.L920:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L918
	sll	$3,$3,1

	beq	$2,$0,.L919
	nop

.L916:
	bgez	$5,.L920
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L922:
	srl	$9,$3,1
	sltu	$7,$4,$5
	or	$10,$3,$2
	srl	$8,$5,1
	bne	$7,$0,.L921
	move	$3,$9

	subu	$4,$4,$5
	move	$2,$10
.L921:
	bne	$3,$0,.L922
	move	$5,$8

.L919:
	bne	$6,$0,.L934
	nop

	jr	$31
	nop

	.align	3
.L918:
	bne	$3,$0,.L922
	move	$2,$0

	b	.L919
	nop

	.align	3
.L934:
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
	beq	$4,$2,.L937
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
.L937:
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
	beq	$2,$3,.L944
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
.L944:
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
	beq	$4,$0,.L956
	move	$2,$0

	.align	3
.L951:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	bne	$4,$0,.L951
	sll	$5,$5,1

.L956:
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
	li	$9,-8			# 0xfffffffffffffff8
	sltu	$2,$4,$5
	srl	$7,$6,3
	bne	$2,$0,.L961
	and	$9,$6,$9

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beq	$2,$0,.L991
	nop

.L961:
	beq	$7,$0,.L992
	move	$2,$5

	dsll	$7,$7,3
	move	$3,$4
	daddu	$7,$7,$5
	.align	3
.L964:
	ld	$8,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$7,.L964
	sd	$8,-8($3)

	sltu	$2,$9,$6
	beq	$2,$0,.L996
	subu	$10,$6,$9

	addiu	$2,$10,-1
	dsll	$7,$9,32
	sltu	$2,$2,8
	bne	$2,$0,.L966
	dsrl	$7,$7,32

	daddiu	$8,$7,1
	daddu	$3,$4,$7
	daddu	$8,$5,$8
	dsubu	$8,$3,$8
	sltu	$8,$8,7
	bne	$8,$0,.L966
	daddu	$2,$5,$7

	or	$8,$2,$3
	andi	$8,$8,0x7
	bne	$8,$0,.L966
	srl	$8,$10,3

	dsll	$8,$8,32
	dsrl	$8,$8,32
	dsll	$8,$8,3
	daddu	$8,$2,$8
	.align	3
.L967:
	ld	$7,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$8,.L967
	sd	$7,-8($3)

	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$10,$2
	andi	$10,$10,0x7
	beq	$10,$0,.L996
	addu	$2,$2,$9

	dsll	$7,$2,32
	dsrl	$7,$7,32
	daddu	$3,$5,$7
	lb	$9,0($3)
	addiu	$3,$2,1
	daddu	$7,$4,$7
	sltu	$8,$3,$6
	beq	$8,$0,.L996
	sb	$9,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$7,$5,$3
	lb	$9,0($7)
	addiu	$7,$2,2
	daddu	$3,$4,$3
	sltu	$8,$7,$6
	beq	$8,$0,.L996
	sb	$9,0($3)

	dsll	$7,$7,32
	dsrl	$7,$7,32
	daddu	$3,$5,$7
	lb	$9,0($3)
	addiu	$3,$2,3
	daddu	$7,$4,$7
	sltu	$8,$3,$6
	beq	$8,$0,.L996
	sb	$9,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$7,$5,$3
	lb	$9,0($7)
	addiu	$7,$2,4
	daddu	$3,$4,$3
	sltu	$8,$7,$6
	beq	$8,$0,.L996
	sb	$9,0($3)

	dsll	$7,$7,32
	dsrl	$7,$7,32
	daddu	$3,$5,$7
	lb	$9,0($3)
	addiu	$3,$2,5
	daddu	$7,$4,$7
	sltu	$8,$3,$6
	beq	$8,$0,.L996
	sb	$9,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$7,$5,$3
	lb	$7,0($7)
	addiu	$2,$2,6
	daddu	$3,$4,$3
	sltu	$6,$2,$6
	beq	$6,$0,.L996
	sb	$7,0($3)

	dsll	$2,$2,32
	dsrl	$2,$2,32
	daddu	$5,$5,$2
	lb	$3,0($5)
	daddu	$2,$4,$2
	jr	$31
	sb	$3,0($2)

	.align	3
.L991:
	beq	$6,$0,.L996
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L971:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$3,.L971
	sb	$6,1($4)

.L996:
	jr	$31
	nop

	.align	3
.L992:
	dsll	$7,$9,32
	beq	$6,$0,.L996
	dsrl	$7,$7,32

.L966:
	move	$2,$7
	.align	3
.L969:
	daddu	$3,$5,$2
	lb	$8,0($3)
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L969
	sb	$8,0($7)

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
	bne	$2,$0,.L1001
	srl	$8,$6,1

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beq	$2,$0,.L1024
	nop

.L1001:
	beq	$8,$0,.L1000
	addiu	$2,$8,-1

	sltu	$2,$2,7
	bne	$2,$0,.L1004
	or	$2,$5,$4

	andi	$2,$2,0x7
	bne	$2,$0,.L1004
	daddiu	$2,$5,2

	dsubu	$2,$4,$2
	sltu	$2,$2,5
	bne	$2,$0,.L1004
	srl	$9,$6,3

	dsll	$10,$9,3
	move	$2,$5
	move	$3,$4
	daddu	$10,$10,$5
	.align	3
.L1005:
	ld	$7,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$10,.L1005
	sd	$7,-8($3)

	dsll	$2,$9,2
	beql	$8,$2,.L1028
	andi	$2,$6,0x1

	dsll	$7,$2,1
	daddu	$3,$5,$7
	lh	$10,0($3)
	addiu	$3,$2,1
	daddu	$7,$4,$7
	sltu	$9,$3,$8
	beq	$9,$0,.L1000
	sh	$10,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$3,$3,1
	daddu	$7,$5,$3
	lh	$7,0($7)
	addiu	$2,$2,2
	daddu	$3,$4,$3
	sltu	$8,$2,$8
	beq	$8,$0,.L1000
	sh	$7,0($3)

	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$2,$2,1
	daddu	$3,$5,$2
	lh	$3,0($3)
	daddu	$2,$4,$2
	sh	$3,0($2)
.L1000:
	andi	$2,$6,0x1
.L1028:
	beq	$2,$0,.L1030
	addiu	$6,$6,-1

.L1027:
	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	lb	$2,0($5)
	daddu	$6,$4,$6
	jr	$31
	sb	$2,0($6)

	.align	3
.L1024:
	beq	$6,$0,.L1030
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L1010:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$3,.L1010
	sb	$6,1($4)

.L1030:
	jr	$31
	nop

	.align	3
.L1004:
	dsll	$8,$8,1
	move	$2,$5
	move	$3,$4
	daddu	$8,$8,$5
	.align	3
.L1007:
	lh	$7,0($2)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
	bne	$2,$8,.L1007
	sh	$7,-2($3)

	andi	$2,$6,0x1
	bne	$2,$0,.L1027
	addiu	$6,$6,-1

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
	li	$9,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	srl	$8,$6,2
	bne	$2,$0,.L1036
	and	$9,$6,$9

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beq	$2,$0,.L1072
	nop

.L1036:
	beq	$8,$0,.L1073
	addiu	$2,$8,-1

	sltu	$2,$2,9
	bne	$2,$0,.L1038
	or	$2,$4,$5

	andi	$2,$2,0x7
	bne	$2,$0,.L1038
	daddiu	$2,$5,4

	beq	$4,$2,.L1038
	srl	$11,$6,3

	dsll	$10,$11,3
	move	$2,$5
	move	$3,$4
	daddu	$10,$10,$5
	.align	3
.L1039:
	ld	$7,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$10,.L1039
	sd	$7,-8($3)

	dsll	$11,$11,1
	beq	$8,$11,.L1042
	dsll	$11,$11,2

	daddu	$2,$5,$11
	lw	$2,0($2)
	daddu	$11,$4,$11
	sw	$2,0($11)
.L1042:
	sltu	$2,$9,$6
.L1076:
	beq	$2,$0,.L1078
	subu	$10,$6,$9

	addiu	$2,$10,-1
	dsll	$7,$9,32
	sltu	$2,$2,8
	bne	$2,$0,.L1034
	dsrl	$7,$7,32

	daddiu	$8,$7,1
	daddu	$3,$4,$7
	daddu	$8,$5,$8
	dsubu	$8,$3,$8
	sltu	$8,$8,7
	bne	$8,$0,.L1034
	daddu	$2,$5,$7

	or	$8,$2,$3
	andi	$8,$8,0x7
	bne	$8,$0,.L1034
	srl	$8,$10,3

	dsll	$8,$8,32
	dsrl	$8,$8,32
	dsll	$8,$8,3
	daddu	$8,$2,$8
	.align	3
.L1043:
	ld	$7,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$8,.L1043
	sd	$7,-8($3)

	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$10,$2
	andi	$10,$10,0x7
	beq	$10,$0,.L1078
	addu	$2,$2,$9

	dsll	$7,$2,32
	dsrl	$7,$7,32
	daddu	$3,$5,$7
	lb	$9,0($3)
	addiu	$3,$2,1
	daddu	$7,$4,$7
	sltu	$8,$3,$6
	beq	$8,$0,.L1078
	sb	$9,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$7,$5,$3
	lb	$9,0($7)
	addiu	$7,$2,2
	daddu	$3,$4,$3
	sltu	$8,$7,$6
	beq	$8,$0,.L1078
	sb	$9,0($3)

	dsll	$7,$7,32
	dsrl	$7,$7,32
	daddu	$3,$5,$7
	lb	$9,0($3)
	addiu	$3,$2,3
	daddu	$7,$4,$7
	sltu	$8,$3,$6
	beq	$8,$0,.L1078
	sb	$9,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$7,$5,$3
	lb	$9,0($7)
	addiu	$7,$2,4
	daddu	$3,$4,$3
	sltu	$8,$7,$6
	beq	$8,$0,.L1078
	sb	$9,0($3)

	dsll	$7,$7,32
	dsrl	$7,$7,32
	daddu	$3,$5,$7
	lb	$9,0($3)
	addiu	$3,$2,5
	daddu	$7,$4,$7
	sltu	$8,$3,$6
	beq	$8,$0,.L1078
	sb	$9,0($7)

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$7,$5,$3
	lb	$7,0($7)
	addiu	$2,$2,6
	daddu	$3,$4,$3
	sltu	$6,$2,$6
	beq	$6,$0,.L1078
	sb	$7,0($3)

	dsll	$2,$2,32
	dsrl	$2,$2,32
	daddu	$5,$5,$2
	lb	$3,0($5)
	daddu	$2,$4,$2
	jr	$31
	sb	$3,0($2)

	.align	3
.L1072:
	beq	$6,$0,.L1078
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L1047:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$3,.L1047
	sb	$6,1($4)

.L1078:
	jr	$31
	nop

	.align	3
.L1038:
	dsll	$8,$8,2
	move	$2,$5
	move	$3,$4
	daddu	$8,$8,$5
	.align	3
.L1041:
	lw	$7,0($2)
	daddiu	$2,$2,4
	daddiu	$3,$3,4
	bne	$2,$8,.L1041
	sw	$7,-4($3)

	b	.L1076
	sltu	$2,$9,$6

	.align	3
.L1073:
	dsll	$7,$9,32
	beq	$6,$0,.L1078
	dsrl	$7,$7,32

.L1034:
	move	$2,$7
	.align	3
.L1045:
	daddu	$3,$5,$2
	lb	$8,0($3)
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L1045
	sb	$8,0($7)

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
	bltz	$4,.L1087
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L1087:
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
	bltz	$4,.L1091
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L1091:
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
	bne	$2,$0,.L1098
	move	$3,$4

	dsrl	$2,$3,14
	bne	$2,$0,.L1114
	nop

	sra	$2,$4,13
	bne	$2,$0,.L1099
	nop

	sra	$2,$4,12
	bne	$2,$0,.L1100
	nop

	sra	$2,$4,11
	bne	$2,$0,.L1101
	nop

	sra	$2,$4,10
	bne	$2,$0,.L1102
	nop

	sra	$2,$4,9
	bne	$2,$0,.L1103
	nop

	sra	$2,$4,8
	bne	$2,$0,.L1104
	nop

	sra	$2,$4,7
	bne	$2,$0,.L1105
	nop

	sra	$2,$4,6
	bne	$2,$0,.L1106
	nop

	sra	$2,$4,5
	bne	$2,$0,.L1107
	nop

	sra	$2,$4,4
	bne	$2,$0,.L1108
	nop

	sra	$2,$4,3
	bne	$2,$0,.L1109
	nop

	sra	$2,$4,2
	bne	$2,$0,.L1110
	sra	$3,$4,1

	bnel	$3,$0,.L1114
	li	$2,14			# 0xe

	sltu	$2,$4,1
	jr	$31
	daddiu	$2,$2,15

.L1114:
	jr	$31
	nop

.L1098:
	jr	$31
	move	$2,$0

.L1109:
	jr	$31
	li	$2,12			# 0xc

.L1099:
	jr	$31
	li	$2,2			# 0x2

.L1100:
	jr	$31
	li	$2,3			# 0x3

.L1101:
	jr	$31
	li	$2,4			# 0x4

.L1102:
	jr	$31
	li	$2,5			# 0x5

.L1103:
	jr	$31
	li	$2,6			# 0x6

.L1104:
	jr	$31
	li	$2,7			# 0x7

.L1105:
	jr	$31
	li	$2,8			# 0x8

.L1106:
	jr	$31
	li	$2,9			# 0x9

.L1107:
	jr	$31
	li	$2,10			# 0xa

.L1108:
	jr	$31
	li	$2,11			# 0xb

.L1110:
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
	bne	$2,$0,.L1118
	nop

	andi	$2,$4,0x2
	bne	$2,$0,.L1119
	nop

	andi	$2,$4,0x4
	bne	$2,$0,.L1120
	nop

	andi	$2,$4,0x8
	bne	$2,$0,.L1121
	nop

	andi	$2,$4,0x10
	bne	$2,$0,.L1122
	nop

	andi	$2,$4,0x20
	bne	$2,$0,.L1123
	nop

	andi	$2,$4,0x40
	bne	$2,$0,.L1124
	nop

	andi	$2,$4,0x80
	bne	$2,$0,.L1125
	nop

	andi	$2,$4,0x100
	bne	$2,$0,.L1126
	nop

	andi	$2,$4,0x200
	bne	$2,$0,.L1127
	nop

	andi	$2,$4,0x400
	bne	$2,$0,.L1128
	nop

	andi	$2,$4,0x800
	bne	$2,$0,.L1129
	nop

	andi	$2,$4,0x1000
	bne	$2,$0,.L1130
	nop

	andi	$2,$4,0x2000
	bne	$2,$0,.L1131
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,.L1132
	sra	$4,$4,15

	sltu	$2,$4,1
	jr	$31
	daddiu	$2,$2,15

.L1118:
	jr	$31
	move	$2,$0

.L1119:
	jr	$31
	li	$2,1			# 0x1

.L1130:
	jr	$31
	li	$2,12			# 0xc

.L1120:
	jr	$31
	li	$2,2			# 0x2

.L1121:
	jr	$31
	li	$2,3			# 0x3

.L1122:
	jr	$31
	li	$2,4			# 0x4

.L1123:
	jr	$31
	li	$2,5			# 0x5

.L1124:
	jr	$31
	li	$2,6			# 0x6

.L1125:
	jr	$31
	li	$2,7			# 0x7

.L1126:
	jr	$31
	li	$2,8			# 0x8

.L1127:
	jr	$31
	li	$2,9			# 0x9

.L1128:
	jr	$31
	li	$2,10			# 0xa

.L1129:
	jr	$31
	li	$2,11			# 0xb

.L1131:
	jr	$31
	li	$2,13			# 0xd

.L1132:
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
	bc1tl	.L1142
	sub.s	$f12,$f12,$f0

	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	nop

	.align	3
.L1142:
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
	beq	$4,$0,.L1154
	move	$2,$0

	.align	3
.L1149:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	bne	$4,$0,.L1149
	sll	$5,$5,1

.L1154:
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
	beq	$4,$0,.L1163
	move	$2,$0

	beq	$5,$0,.L1162
	nop

	.align	3
.L1157:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$3,$2
	bne	$5,$0,.L1157
	sll	$4,$4,1

.L1163:
	jr	$31
	nop

.L1162:
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
	bne	$7,$0,.L1165
	li	$2,32			# 0x20

	b	.L1171
	move	$2,$0

	.align	3
.L1169:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1167
	sll	$3,$3,1

	beq	$2,$0,.L1168
	nop

.L1165:
	bgez	$5,.L1169
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1171:
	srl	$9,$3,1
	sltu	$7,$4,$5
	or	$10,$3,$2
	srl	$8,$5,1
	bne	$7,$0,.L1170
	move	$3,$9

	subu	$4,$4,$5
	move	$2,$10
.L1170:
	bne	$3,$0,.L1171
	move	$5,$8

.L1168:
	bne	$6,$0,.L1183
	nop

	jr	$31
	nop

	.align	3
.L1167:
	bne	$3,$0,.L1171
	move	$2,$0

	b	.L1168
	nop

	.align	3
.L1183:
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
	bc1t	.L1187
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L1189
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1189:
	jr	$31
	move	$2,$0

	.align	3
.L1187:
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
	bc1t	.L1195
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L1197
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1197:
	jr	$31
	move	$2,$0

	.align	3
.L1195:
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
	bltzl	$5,.L1219
	subu	$5,$0,$5

	beq	$5,$0,.L1210
	move	$7,$0

.L1206:
	li	$6,32			# 0x20
	b	.L1209
	move	$2,$0

	.align	3
.L1220:
	beq	$6,$0,.L1208
	nop

.L1209:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	dsra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$3,$2
	bne	$5,$0,.L1220
	sll	$4,$4,1

.L1208:
	beq	$7,$0,.L1221
	nop

	jr	$31
	subu	$2,$0,$2

.L1210:
	move	$2,$0
.L1221:
	jr	$31
	nop

	.align	3
.L1219:
	b	.L1206
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
	bltzl	$4,.L1243
	dsubu	$4,$0,$4

	li	$2,1			# 0x1
	move	$9,$0
.L1223:
	bgez	$5,.L1245
	sll	$4,$4,0

	dsubu	$5,$0,$5
	move	$9,$2
.L1245:
	sll	$5,$5,0
	sltu	$6,$5,$4
	li	$2,32			# 0x20
	bne	$6,$0,.L1225
	li	$3,1			# 0x1

	b	.L1231
	move	$2,$0

	.align	3
.L1229:
	sll	$5,$5,1
	sltu	$6,$5,$4
	beq	$6,$0,.L1227
	sll	$3,$3,1

	beql	$2,$0,.L1228
	move	$2,$0

.L1225:
	bgez	$5,.L1229
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1231:
	sltu	$6,$4,$5
	srl	$8,$3,1
	bne	$6,$0,.L1230
	srl	$7,$5,1

	subu	$4,$4,$5
	or	$2,$3,$2
.L1230:
	move	$3,$8
	bne	$3,$0,.L1231
	move	$5,$7

	dsll	$2,$2,32
	dsrl	$2,$2,32
.L1228:
	bnel	$9,$0,.L1244
	dsubu	$2,$0,$2

.L1244:
	jr	$31
	nop

	.align	3
.L1227:
	bne	$3,$0,.L1231
	move	$2,$0

	b	.L1228
	nop

	.align	3
.L1243:
	move	$2,$0
	b	.L1223
	li	$9,1			# 0x1

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
	bgez	$4,.L1247
	move	$7,$0

	dsubu	$4,$0,$4
	li	$7,1			# 0x1
.L1247:
	dsra	$6,$5,63
	xor	$3,$6,$5
	sll	$3,$3,0
	sll	$2,$4,0
	subu	$3,$3,$6
	sltu	$6,$3,$2
	li	$4,32			# 0x20
	bne	$6,$0,.L1248
	li	$5,1			# 0x1

	b	.L1272
	sltu	$4,$2,$3

	.align	3
.L1252:
	sll	$3,$3,1
	sltu	$6,$3,$2
	beq	$6,$0,.L1271
	sll	$5,$5,1

	beql	$4,$0,.L1273
	dsll	$2,$2,32

.L1248:
	bgez	$3,.L1252
	addiu	$4,$4,-1

	b	.L1272
	sltu	$4,$2,$3

	.align	3
.L1253:
	move	$3,$6
.L1271:
	beq	$5,$0,.L1251
	sltu	$4,$2,$3

.L1272:
	srl	$5,$5,1
	bne	$4,$0,.L1253
	srl	$6,$3,1

	subu	$2,$2,$3
	b	.L1271
	move	$3,$6

	.align	3
.L1251:
	dsll	$2,$2,32
	.align	3
.L1273:
	beq	$7,$0,.L1274
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L1274:
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
	beq	$3,$0,.L1390
	move	$2,$4

	sll	$3,$5,16
	sra	$3,$3,16
	bltz	$3,.L1278
	sll	$3,$5,1

	andi	$3,$3,0xffff
	sltu	$4,$3,$4
	beq	$4,$0,.L1279
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1280
	subu	$2,$2,$3

	sll	$3,$5,2
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1281
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1282
	subu	$2,$2,$3

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1283
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1284
	subu	$2,$2,$3

	sll	$3,$5,4
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1285
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1286
	subu	$2,$2,$3

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1287
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1288
	subu	$2,$2,$3

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1289
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1290
	subu	$2,$2,$3

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1291
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1292
	subu	$2,$2,$3

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1293
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1294
	subu	$2,$2,$3

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1295
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1296
	subu	$2,$2,$3

	sll	$3,$5,10
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1297
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1298
	subu	$2,$2,$3

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1299
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1300
	subu	$2,$2,$3

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1301
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1302
	subu	$2,$2,$3

	sll	$3,$5,13
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1303
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1304
	subu	$2,$2,$3

	sll	$3,$5,14
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,.L1305
	sll	$4,$3,16

	sra	$4,$4,16
	bltzl	$4,.L1306
	subu	$2,$2,$3

	sll	$5,$5,15
	andi	$7,$5,0xffff
	sltu	$3,$7,$2
	beql	$3,$0,.L1307
	sll	$3,$2,16

	bnel	$7,$0,.L1391
	addiu	$2,$2,-32768

.L1308:
	bne	$6,$0,.L1406
	nop

	jr	$31
	move	$2,$7

.L1406:
	jr	$31
	nop

.L1295:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,512			# 0x200

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$7,512			# 0x200
	.align	3
.L1310:
	dsrl	$5,$8,2
	.align	3
.L1405:
	beq	$5,$0,.L1308
	dsrl	$4,$3,2

	sltu	$9,$2,$4
	bnel	$9,$0,.L1392
	dsrl	$5,$8,3

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,3
.L1392:
	beq	$5,$0,.L1308
	dsrl	$4,$3,3

	sltu	$9,$2,$4
	bnel	$9,$0,.L1393
	dsrl	$5,$8,4

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,4
.L1393:
	beq	$5,$0,.L1308
	dsrl	$4,$3,4

	sltu	$9,$2,$4
	bnel	$9,$0,.L1394
	dsrl	$5,$8,5

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,5
.L1394:
	beq	$5,$0,.L1308
	dsrl	$4,$3,5

	sltu	$9,$2,$4
	bnel	$9,$0,.L1395
	dsrl	$5,$8,6

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,6
.L1395:
	beq	$5,$0,.L1308
	dsrl	$4,$3,6

	sltu	$9,$2,$4
	bnel	$9,$0,.L1396
	dsrl	$5,$8,7

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,7
.L1396:
	beq	$5,$0,.L1308
	dsrl	$4,$3,7

	sltu	$9,$2,$4
	bnel	$9,$0,.L1397
	dsrl	$5,$8,8

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,8
.L1397:
	beq	$5,$0,.L1308
	dsrl	$4,$3,8

	sltu	$9,$2,$4
	bnel	$9,$0,.L1398
	dsrl	$5,$8,9

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,9
.L1398:
	beq	$5,$0,.L1308
	dsrl	$4,$3,9

	sltu	$9,$2,$4
	bnel	$9,$0,.L1399
	dsrl	$5,$8,10

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,10
.L1399:
	beq	$5,$0,.L1308
	dsrl	$4,$3,10

	sltu	$9,$2,$4
	bnel	$9,$0,.L1400
	dsrl	$5,$8,11

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,11
.L1400:
	beq	$5,$0,.L1308
	dsrl	$4,$3,11

	sltu	$9,$2,$4
	bnel	$9,$0,.L1401
	dsrl	$5,$8,12

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,12
.L1401:
	beq	$5,$0,.L1308
	dsrl	$4,$3,12

	sltu	$9,$2,$4
	bnel	$9,$0,.L1402
	dsrl	$5,$8,13

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,13
.L1402:
	beq	$5,$0,.L1308
	dsrl	$4,$3,13

	sltu	$9,$2,$4
	bnel	$9,$0,.L1403
	dsrl	$5,$8,14

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	dsrl	$5,$8,14
.L1403:
	beq	$5,$0,.L1308
	dsrl	$4,$3,14

	sltu	$9,$2,$4
	bnel	$9,$0,.L1404
	li	$4,16384			# 0x4000

	subu	$2,$2,$4
	andi	$2,$2,0xffff
	or	$7,$7,$5
	li	$4,16384			# 0x4000
.L1404:
	beq	$8,$4,.L1308
	dsrl	$3,$3,15

	sltu	$4,$2,$3
	bnel	$4,$0,.L1308
	move	$2,$0

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1308
	ori	$7,$7,0x1

.L1390:
	bne	$5,$4,.L1308
	move	$7,$0

	li	$7,1			# 0x1
	b	.L1308
	move	$2,$0

.L1278:
	subu	$2,$4,$5
	andi	$2,$2,0xffff
	b	.L1308
	li	$7,1			# 0x1

.L1279:
	sltu	$4,$2,$3
	bne	$4,$0,.L1333
	li	$8,2			# 0x2

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,2			# 0x2

.L1280:
	andi	$2,$2,0xffff
	andi	$5,$5,0x7fff
	li	$9,1			# 0x1
	li	$8,2			# 0x2
	li	$7,2			# 0x2
	.align	3
.L1328:
	sltu	$4,$2,$5
	bnel	$4,$0,.L1405
	dsrl	$5,$8,2

	subu	$2,$2,$5
	andi	$2,$2,0xffff
	b	.L1310
	or	$7,$7,$9

.L1281:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,4			# 0x4

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,4			# 0x4

.L1282:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,2			# 0x2
	li	$8,4			# 0x4
	b	.L1328
	li	$7,4			# 0x4

.L1283:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,8			# 0x8

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,8			# 0x8

.L1284:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,4			# 0x4
	li	$8,8			# 0x8
	b	.L1328
	li	$7,8			# 0x8

.L1285:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,16			# 0x10

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,16			# 0x10

.L1286:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,8			# 0x8
	li	$8,16			# 0x10
	b	.L1328
	li	$7,16			# 0x10

.L1287:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,32			# 0x20

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,32			# 0x20

.L1288:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,16			# 0x10
	li	$8,32			# 0x20
	b	.L1328
	li	$7,32			# 0x20

.L1289:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,64			# 0x40

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,64			# 0x40

.L1290:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,32			# 0x20
	li	$8,64			# 0x40
	b	.L1328
	li	$7,64			# 0x40

.L1291:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,128			# 0x80

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,128			# 0x80

.L1292:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,64			# 0x40
	li	$8,128			# 0x80
	b	.L1328
	li	$7,128			# 0x80

.L1294:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,128			# 0x80
	li	$8,256			# 0x100
	b	.L1328
	li	$7,256			# 0x100

.L1296:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,256			# 0x100
	li	$8,512			# 0x200
	b	.L1328
	li	$7,512			# 0x200

.L1333:
	.align	3
.L1327:
	dsrl	$9,$8,1
	dsrl	$5,$3,1
	b	.L1328
	move	$7,$0

.L1298:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,512			# 0x200
	li	$8,1024			# 0x400
	b	.L1328
	li	$7,1024			# 0x400

.L1300:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,1024			# 0x400
	li	$8,2048			# 0x800
	b	.L1328
	li	$7,2048			# 0x800

	b	.L1327
	li	$8,8			# 0x8

.L1302:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,2048			# 0x800
	li	$8,4096			# 0x1000
	b	.L1328
	li	$7,4096			# 0x1000

.L1304:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,4096			# 0x1000
	li	$8,8192			# 0x2000
	b	.L1328
	li	$7,8192			# 0x2000

.L1306:
	andi	$2,$2,0xffff
	dsrl	$5,$3,1
	li	$9,8192			# 0x2000
	li	$8,16384			# 0x4000
	b	.L1328
	li	$7,16384			# 0x4000

	b	.L1327
	li	$8,64			# 0x40

.L1307:
	sra	$3,$3,16
	bltz	$3,.L1332
	li	$3,32768			# 0x8000

	b	.L1327
	li	$8,32768			# 0x8000

.L1391:
	andi	$2,$2,0xffff
	li	$5,16384			# 0x4000
	li	$9,16384			# 0x4000
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	b	.L1328
	li	$7,32768			# 0x8000

.L1293:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,256			# 0x100

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,256			# 0x100

.L1332:
	li	$8,32768			# 0x8000
	li	$7,32768			# 0x8000
	b	.L1310
	move	$2,$0

.L1297:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,1024			# 0x400

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,1024			# 0x400

.L1305:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,16384			# 0x4000

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,16384			# 0x4000

	b	.L1327
	li	$8,16384			# 0x4000

.L1303:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,8192			# 0x2000

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,8192			# 0x2000

.L1301:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,4096			# 0x1000

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,4096			# 0x1000

.L1299:
	sltu	$4,$2,$3
	bne	$4,$0,.L1327
	li	$8,2048			# 0x800

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	b	.L1310
	li	$7,2048			# 0x800

	b	.L1327
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
	bne	$2,$0,.L1408
	dsll	$9,$3,31

	b	.L1414
	move	$2,$0

	.align	3
.L1412:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L1410
	dsll	$3,$3,1

	beq	$7,$0,.L1411
	nop

.L1408:
	and	$2,$5,$9
	beq	$2,$0,.L1412
	addiu	$7,$7,-1

	move	$2,$0
	.align	3
.L1414:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1430
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	or	$2,$2,$3
	dsrl	$3,$3,1
.L1430:
	bne	$3,$0,.L1414
	dsrl	$5,$5,1

.L1411:
	bne	$6,$0,.L1429
	nop

	jr	$31
	nop

	.align	3
.L1429:
	jr	$31
	move	$2,$4

	.align	3
.L1410:
	bnel	$3,$0,.L1414
	move	$2,$0

	b	.L1411
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
	beq	$2,$0,.L1432
	move	$2,$0

	sll	$4,$4,0
	sll	$3,$4,$5
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1432:
	beq	$5,$0,.L1435
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
.L1435:
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
	beq	$2,$0,.L1438
	dsll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1438:
	beql	$6,$0,.L1441
	move	$2,$4

	subu	$3,$0,$6
	dsrl	$3,$5,$3
	dsll	$2,$4,$6
	dsll	$5,$5,$6
	or	$2,$3,$2
	jr	$31
	move	$3,$5

	.align	3
.L1441:
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
	beq	$2,$0,.L1444
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
.L1444:
	beq	$5,$0,.L1447
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
.L1447:
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
	beq	$2,$0,.L1450
	dsra	$2,$4,63

	dsra	$5,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1450:
	beql	$6,$0,.L1453
	move	$2,$4

	subu	$3,$0,$6
	dsll	$3,$4,$3
	dsrl	$5,$5,$6
	or	$5,$3,$5
	dsra	$2,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1453:
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
	beq	$7,$0,.L1461
	subu	$5,$8,$4

	move	$5,$0
.L1461:
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
	beq	$4,$0,.L1467
	move	$3,$5

	move	$3,$0
.L1467:
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
	bne	$6,$0,.L1475
	nop

	slt	$2,$3,$2
	bne	$2,$0,.L1474
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1475
	nop

	sltu	$2,$5,$2
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1475:
	jr	$31
	move	$2,$0

	.align	3
.L1474:
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
	bne	$6,$0,.L1482
	nop

	slt	$2,$3,$2
	bne	$2,$0,.L1481
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1482
	nop

	jr	$31
	sltu	$2,$5,$2

	.align	3
.L1482:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1481:
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
	bne	$2,$0,.L1488
	slt	$4,$6,$4

	bne	$4,$0,.L1487
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1488
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1488:
	jr	$31
	move	$2,$0

	.align	3
.L1487:
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
	beq	$5,$0,.L1495
	move	$2,$4

	move	$2,$0
.L1495:
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
	bne	$5,$0,.L1500
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	bne	$4,$0,.L1505
	move	$2,$0

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1500:
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
.L1505:
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
	beq	$2,$0,.L1507
	move	$2,$0

	dsra	$4,$4,32
	srl	$3,$4,$5
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1507:
	beq	$5,$0,.L1510
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
.L1510:
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
	beq	$2,$0,.L1513
	nop

	dsrl	$5,$4,$6
	move	$4,$0
	move	$2,$4
.L1518:
	jr	$31
	move	$3,$5

	.align	3
.L1513:
	beql	$6,$0,.L1518
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
	beq	$2,$0,.L1549
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$2,$5
	.align	3
.L1546:
	mul.d	$f0,$f0,$f12
.L1544:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,.L1545
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,.L1546
	addu	$3,$3,$2

	sra	$2,$3,1
.L1553:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,.L1546
	addu	$3,$3,$2

	b	.L1553
	sra	$2,$3,1

	.align	3
.L1545:
	bltz	$5,.L1552
	ldc1	$f1,%got_ofst(.LC14)($6)

	jr	$31
	nop

	.align	3
.L1549:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1544
	move	$2,$5

	.align	3
.L1552:
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
	beq	$2,$0,.L1560
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$2,$5
	.align	3
.L1557:
	mul.s	$f0,$f0,$f12
.L1555:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,.L1556
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,.L1557
	addu	$3,$3,$2

	sra	$2,$3,1
.L1564:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,.L1557
	addu	$3,$3,$2

	b	.L1564
	sra	$2,$3,1

	.align	3
.L1556:
	bltz	$5,.L1563
	lwc1	$f1,%got_ofst(.LC16)($6)

	jr	$31
	nop

	.align	3
.L1560:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1555
	move	$2,$5

	.align	3
.L1563:
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
	bne	$6,$0,.L1569
	nop

	sltu	$2,$3,$2
	bne	$2,$0,.L1568
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1569
	nop

	sltu	$2,$5,$2
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1569:
	jr	$31
	move	$2,$0

	.align	3
.L1568:
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
	bne	$6,$0,.L1576
	nop

	sltu	$2,$3,$2
	bne	$2,$0,.L1575
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1576
	nop

	jr	$31
	sltu	$2,$5,$2

	.align	3
.L1576:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1575:
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
	bne	$2,$0,.L1582
	sltu	$4,$6,$4

	bne	$4,$0,.L1581
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1582
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1582:
	jr	$31
	move	$2,$0

	.align	3
.L1581:
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
