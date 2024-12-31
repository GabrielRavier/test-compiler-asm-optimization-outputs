	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.module	arch=mips1
	.abicalls
	.text
	.align	2
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L2
	nop

	lw	$3,12($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lw	$2,12($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,12($sp)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	lb	$3,0($2)
	lw	$2,8($sp)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L3:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L4
	nop

	.option	pic0
	b	$L5
	nop

	.option	pic2
$L2:
	lw	$3,12($sp)
	lw	$2,8($sp)
	nop
	beq	$3,$2,$L5
	nop

	.option	pic0
	b	$L6
	nop

	.option	pic2
$L7:
	lw	$3,12($sp)
	nop
	addiu	$2,$3,1
	sw	$2,12($sp)
	lw	$2,8($sp)
	nop
	addiu	$4,$2,1
	sw	$4,8($sp)
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L6:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L7
	nop

$L5:
	lw	$2,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.set	nomips16
	.set	nomicromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	sw	$7,28($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lw	$2,24($sp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L12:
	lw	$2,28($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,28($sp)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L10:
	lw	$2,28($sp)
	nop
	beq	$2,$0,$L11
	nop

	lw	$2,12($sp)
	nop
	lbu	$3,0($2)
	lw	$2,8($sp)
	nop
	sb	$3,0($2)
	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,24($sp)
	nop
	bne	$2,$3,$L12
	nop

$L11:
	lw	$2,28($sp)
	nop
	beq	$2,$0,$L13
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	.option	pic0
	b	$L14
	nop

	.option	pic2
$L13:
	move	$2,$0
$L14:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	nomips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,20($sp)
	.option	pic0
	b	$L16
	nop

	.option	pic2
$L18:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L16:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L17
	nop

	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,20($sp)
	nop
	bne	$2,$3,$L18
	nop

$L17:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L19
	nop

	lw	$2,8($sp)
	.option	pic0
	b	$L21
	nop

	.option	pic2
$L19:
	move	$2,$0
$L21:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	nomips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	.option	pic0
	b	$L23
	nop

	.option	pic2
$L25:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L23:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L24
	nop

	lw	$2,8($sp)
	nop
	lbu	$3,0($2)
	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$3,$2,$L25
	nop

$L24:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L26
	nop

	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	subu	$2,$3,$2
	.option	pic0
	b	$L28
	nop

	.option	pic2
$L26:
	move	$2,$0
$L28:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L31:
	lw	$3,12($sp)
	nop
	addiu	$2,$3,1
	sw	$2,12($sp)
	lw	$2,8($sp)
	nop
	addiu	$4,$2,1
	sw	$4,8($sp)
	lbu	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L30:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L31
	nop

	lw	$2,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	nomips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,20($sp)
	.option	pic0
	b	$L34
	nop

	.option	pic2
$L36:
	lw	$3,8($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,20($sp)
	nop
	bne	$2,$3,$L34
	nop

	lw	$3,8($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	.option	pic0
	b	$L35
	nop

	.option	pic2
$L34:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L36
	nop

	move	$2,$0
$L35:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	nomips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L38
	nop

	.option	pic2
$L39:
	lw	$2,20($sp)
	nop
	andi	$3,$2,0x00ff
	lw	$2,8($sp)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L38:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L39
	nop

	lw	$2,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	.option	pic0
	b	$L42
	nop

	.option	pic2
$L43:
	lw	$2,4($sp)
	nop
	addiu	$2,$2,1
	sw	$2,4($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	sw	$2,0($sp)
$L42:
	lw	$2,4($sp)
	nop
	lb	$3,0($2)
	lw	$2,0($sp)
	nop
	sb	$3,0($2)
	lw	$2,0($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L43
	nop

	lw	$2,0($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$2,4($sp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,4($sp)
	.option	pic0
	b	$L46
	nop

	.option	pic2
$L48:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	sw	$2,0($sp)
$L46:
	lw	$2,0($sp)
	nop
	lb	$2,0($2)
	nop
	beq	$2,$0,$L47
	nop

	lw	$2,0($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,4($sp)
	nop
	bne	$2,$3,$L48
	nop

$L47:
	lw	$2,0($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
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
	sw	$5,4($sp)
$L53:
	lb	$3,0($2)
	nop
	move	$4,$3
	lw	$3,4($sp)
	nop
	bne	$3,$4,$L51
	nop

	jr	$31
	nop

$L51:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	nop
	bne	$3,$0,$L53
	nop

	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	.option	pic0
	b	$L55
	nop

	.option	pic2
$L57:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	sw	$2,0($sp)
	lw	$2,4($sp)
	nop
	addiu	$2,$2,1
	sw	$2,4($sp)
$L55:
	lw	$2,0($sp)
	nop
	lb	$3,0($2)
	lw	$2,4($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L56
	nop

	lw	$2,0($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L57
	nop

$L56:
	lw	$2,0($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,4($sp)
	nop
	lbu	$2,0($2)
	nop
	subu	$2,$3,$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	nomips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L60
	nop

	.option	pic2
$L61:
	lw	$2,16($sp)
	nop
	addiu	$2,$2,1
	sw	$2,16($sp)
$L60:
	lw	$2,16($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L61
	nop

	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	subu	$2,$3,$2
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	nomips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L66
	nop

	move	$2,$0
	.option	pic0
	b	$L65
	nop

	.option	pic2
$L68:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L66:
	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L67
	nop

	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L67
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L67
	nop

	lw	$2,8($sp)
	nop
	lbu	$3,0($2)
	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$3,$2,$L68
	nop

$L67:
	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	subu	$2,$3,$2
$L65:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	nomips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	.option	pic0
	b	$L70
	nop

	.option	pic2
$L71:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	lb	$3,0($2)
	lw	$2,12($sp)
	nop
	sb	$3,0($2)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	lw	$3,8($sp)
	nop
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,2
	sw	$2,12($sp)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,2
	sw	$2,8($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-2
	sw	$2,24($sp)
$L70:
	lw	$2,24($sp)
	nop
	slt	$2,$2,2
	beq	$2,$0,$L71
	nop

	nop
	nop
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	sltu	$2,$2,128
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isascii
	.size	isascii, .-isascii
	.align	2
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
	sw	$4,0($sp)
	lw	$3,0($sp)
	li	$2,32			# 0x20
	beq	$3,$2,$L77
	nop

	lw	$3,0($sp)
	li	$2,9			# 0x9
	bne	$3,$2,$L78
	nop

$L77:
	li	$2,1			# 0x1
	jr	$31
	nop

$L78:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L82
	nop

	lw	$3,0($sp)
	li	$2,127			# 0x7f
	bne	$3,$2,$L83
	nop

$L82:
	li	$2,1			# 0x1
	jr	$31
	nop

$L83:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-33
	sltu	$2,$2,94
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	islower
	.size	islower, .-islower
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-32
	sltu	$2,$2,95
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isprint
	.size	isprint, .-isprint
	.align	2
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
	sw	$4,0($sp)
	lw	$3,0($sp)
	li	$2,32			# 0x20
	beq	$3,$2,$L95
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beq	$2,$0,$L96
	nop

$L95:
	li	$2,1			# 0x1
	jr	$31
	nop

$L96:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-65
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isupper
	.size	isupper, .-isupper
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L102
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bne	$2,$0,$L102
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L102
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beq	$2,$0,$L103
	nop

$L102:
	li	$2,1			# 0x1
	jr	$31
	nop

$L103:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	sltu	$2,$2,255
	beq	$2,$0,$L109
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	jr	$31
	nop

$L109:
	lw	$2,0($sp)
	nop
	sltu	$2,$2,8232
	bne	$2,$0,$L111
	nop

	lw	$2,0($sp)
	nop
	addiu	$3,$2,-8234
	li	$2,47062			# 0xb7d6
	sltu	$2,$3,$2
	bne	$2,$0,$L111
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beq	$2,$0,$L112
	nop

$L111:
	li	$2,1			# 0x1
	jr	$31
	nop

$L112:
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$3,$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beq	$2,$0,$L113
	nop

	lw	$2,0($sp)
	nop
	andi	$3,$2,0xfffe
	li	$2,65534			# 0xfffe
	bne	$3,$2,$L114
	nop

$L113:
	move	$2,$0
	jr	$31
	nop

$L114:
	li	$2,1			# 0x1
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L116
	nop

	lw	$2,0($sp)
	nop
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beq	$2,$0,$L117
	nop

$L116:
	li	$2,1			# 0x1
	jr	$31
	nop

$L117:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	andi	$2,$2,0x7f
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	toascii
	.size	toascii, .-toascii
	.align	2
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L123
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L123:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L125
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L125:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L130
	nop

	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	sub.d	$f0,$f2,$f0
	jr	$31
	nop

$L130:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
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
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	lwc1	$f2,0($sp)
	lwc1	$f0,0($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L132
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L132:
	lwc1	$f2,4($sp)
	lwc1	$f0,4($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L134
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L134:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L139
	nop

	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	sub.s	$f0,$f2,$f0
	jr	$31
	nop

$L139:
	mtc1	$0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.set	nomips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L141
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L141:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L143
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L143:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L144
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L145
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L145:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L144:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L151
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L151:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.set	nomips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	lwc1	$f2,0($sp)
	lwc1	$f0,0($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L153
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L153:
	lwc1	$f2,4($sp)
	lwc1	$f0,4($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L155
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L155:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,4($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L156
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L157
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L157:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L156:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L163
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L163:
	lwc1	$f0,0($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.set	nomips16
	.set	nomicromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L165
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L165:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L167
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L167:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L168
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L169
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L169:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L168:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L175
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L175:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.set	nomips16
	.set	nomicromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L177
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L177:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L179
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L179:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L180
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L181
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L181:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L180:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L187
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L187:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.set	nomips16
	.set	nomicromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	lwc1	$f2,0($sp)
	lwc1	$f0,0($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L189
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L189:
	lwc1	$f2,4($sp)
	lwc1	$f0,4($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L191
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L191:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,4($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L192
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L193
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L193:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L192:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L199
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L199:
	lwc1	$f0,4($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.set	nomips16
	.set	nomicromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L201
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L201:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L203
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L203:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L204
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L205
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L205:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L204:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L211
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L211:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.rdata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.text
	.align	2
	.globl	l64a
	.set	nomips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	nop
	sw	$2,12($sp)
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	sw	$2,8($sp)
	.option	pic0
	b	$L213
	nop

	.option	pic2
$L214:
	lw	$2,12($sp)
	nop
	andi	$3,$2,0x3f
	lui	$2,%hi(digits)
	addiu	$2,$2,%lo(digits)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,8($sp)
	nop
	sb	$3,0($2)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$2,6
	sw	$2,12($sp)
$L213:
	lw	$2,12($sp)
	nop
	bne	$2,$0,$L214
	nop

	lw	$2,8($sp)
	nop
	sb	$0,0($2)
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
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
	sw	$4,0($sp)
	lw	$4,0($sp)
	nop
	addiu	$4,$4,-1
	move	$3,$4
	move	$2,$0
	lui	$4,%hi(seed)
	sw	$3,%lo(seed+4)($4)
	sw	$2,%lo(seed)($4)
	nop
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
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
	lui	$2,%hi(seed)
	lw	$3,%lo(seed+4)($2)
	lw	$2,%lo(seed)($2)
	li	$4,1284833280			# 0x4c950000
	ori	$4,$4,0x7f2d
	mult	$2,$4
	mflo	$4
	li	$5,1481703424			# 0x58510000
	ori	$5,$5,0xf42d
	mult	$3,$5
	mflo	$5
	addu	$4,$4,$5
	li	$5,1284833280			# 0x4c950000
	ori	$5,$5,0x7f2d
	multu	$3,$5
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	li	$7,1			# 0x1
	move	$6,$0
	addu	$5,$3,$7
	sltu	$10,$5,$3
	addu	$4,$2,$6
	addu	$2,$10,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	lui	$4,%hi(seed)
	sw	$3,%lo(seed+4)($4)
	sw	$2,%lo(seed)($4)
	lui	$2,%hi(seed)
	lw	$3,%lo(seed+4)($2)
	lw	$2,%lo(seed)($2)
	nop
	srl	$9,$2,1
	move	$8,$0
	move	$2,$9
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	nomips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lw	$2,12($sp)
	nop
	bne	$2,$0,$L220
	nop

	lw	$2,8($sp)
	nop
	sw	$0,4($2)
	lw	$2,8($sp)
	nop
	lw	$3,4($2)
	lw	$2,8($sp)
	nop
	sw	$3,0($2)
	.option	pic0
	b	$L219
	nop

	.option	pic2
$L220:
	lw	$2,12($sp)
	nop
	lw	$3,0($2)
	lw	$2,8($sp)
	nop
	sw	$3,0($2)
	lw	$2,8($sp)
	lw	$3,12($sp)
	nop
	sw	$3,4($2)
	lw	$2,12($sp)
	lw	$3,8($sp)
	nop
	sw	$3,0($2)
	lw	$2,8($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L219
	nop

	lw	$2,8($sp)
	nop
	lw	$2,0($2)
	lw	$3,8($sp)
	nop
	sw	$3,4($2)
$L219:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	nomips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L223
	nop

	lw	$2,8($sp)
	nop
	lw	$2,0($2)
	lw	$3,8($sp)
	nop
	lw	$3,4($3)
	nop
	sw	$3,4($2)
$L223:
	lw	$2,8($sp)
	nop
	lw	$2,4($2)
	nop
	beq	$2,$0,$L225
	nop

	lw	$2,8($sp)
	nop
	lw	$2,4($2)
	lw	$3,8($sp)
	nop
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L225:
	nop
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	nomips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$16,40($sp)
	sw	$4,48($sp)
	sw	$5,52($sp)
	sw	$6,56($sp)
	sw	$7,60($sp)
	lw	$16,60($sp)
	nop
	move	$4,$16
	addiu	$4,$4,-1
	sw	$4,28($sp)
	move	$9,$16
	move	$8,$0
	srl	$4,$9,29
	sll	$2,$8,3
	or	$2,$4,$2
	sll	$3,$9,3
	lw	$2,52($sp)
	nop
	sw	$2,32($sp)
	lw	$2,56($sp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,36($sp)
	sw	$0,24($sp)
	.option	pic0
	b	$L227
	nop

	.option	pic2
$L230:
	lw	$2,24($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$3,$2,$3
	lw	$2,64($sp)
	move	$5,$3
	lw	$4,48($sp)
	move	$25,$2
	jalr	$25
	nop

	bne	$2,$0,$L228
	nop

	lw	$2,24($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$2,$2,$3
	.option	pic0
	b	$L229
	nop

	.option	pic2
$L228:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L227:
	lw	$3,24($sp)
	lw	$2,36($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L230
	nop

	lw	$2,36($sp)
	nop
	addiu	$3,$2,1
	lw	$2,56($sp)
	nop
	sw	$3,0($2)
	lw	$2,36($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$2,$2,$3
	lw	$6,60($sp)
	lw	$5,48($sp)
	move	$4,$2
	.option	pic0
	jal	memcpy
	nop

	.option	pic2
$L229:
	lw	$31,44($sp)
	lw	$16,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	nomips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$16,40($sp)
	sw	$4,48($sp)
	sw	$5,52($sp)
	sw	$6,56($sp)
	sw	$7,60($sp)
	lw	$16,60($sp)
	nop
	move	$4,$16
	addiu	$4,$4,-1
	sw	$4,28($sp)
	move	$9,$16
	move	$8,$0
	srl	$4,$9,29
	sll	$2,$8,3
	or	$2,$4,$2
	sll	$3,$9,3
	lw	$2,52($sp)
	nop
	sw	$2,32($sp)
	lw	$2,56($sp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,36($sp)
	sw	$0,24($sp)
	.option	pic0
	b	$L232
	nop

	.option	pic2
$L235:
	lw	$2,24($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$3,$2,$3
	lw	$2,64($sp)
	move	$5,$3
	lw	$4,48($sp)
	move	$25,$2
	jalr	$25
	nop

	bne	$2,$0,$L233
	nop

	lw	$2,24($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$2,$2,$3
	.option	pic0
	b	$L234
	nop

	.option	pic2
$L233:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L232:
	lw	$3,24($sp)
	lw	$2,36($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L235
	nop

	move	$2,$0
$L234:
	lw	$31,44($sp)
	lw	$16,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	bgez	$2,$L237
	nop

	subu	$2,$0,$2
$L237:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	nomips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$0,24($sp)
	sw	$0,28($sp)
	.option	pic0
	b	$L240
	nop

	.option	pic2
$L241:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
$L240:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	move	$4,$2
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L241
	nop

	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L242
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L244
	nop

	li	$2,1			# 0x1
	sw	$2,28($sp)
$L242:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
	.option	pic0
	b	$L244
	nop

	.option	pic2
$L245:
	lw	$3,24($sp)
	nop
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,40($sp)
	nop
	addiu	$3,$2,1
	sw	$3,40($sp)
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	subu	$2,$4,$2
	sw	$2,24($sp)
$L244:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L245
	nop

	lw	$2,28($sp)
	nop
	bne	$2,$0,$L246
	nop

	lw	$2,24($sp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L248
	nop

	.option	pic2
$L246:
	lw	$2,24($sp)
$L248:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	nomips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$0,24($sp)
	sw	$0,28($sp)
	.option	pic0
	b	$L250
	nop

	.option	pic2
$L251:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
$L250:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	move	$4,$2
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L251
	nop

	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L252
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L254
	nop

	li	$2,1			# 0x1
	sw	$2,28($sp)
$L252:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
	.option	pic0
	b	$L254
	nop

	.option	pic2
$L255:
	lw	$3,24($sp)
	nop
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,40($sp)
	nop
	addiu	$3,$2,1
	sw	$3,40($sp)
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	subu	$2,$4,$2
	sw	$2,24($sp)
$L254:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L255
	nop

	lw	$2,28($sp)
	nop
	bne	$2,$0,$L256
	nop

	lw	$2,24($sp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L258
	nop

	.option	pic2
$L256:
	lw	$2,24($sp)
$L258:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	nomips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,72,$31		# vars= 16, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$21,64($sp)
	sw	$20,60($sp)
	sw	$19,56($sp)
	sw	$18,52($sp)
	sw	$17,48($sp)
	sw	$16,44($sp)
	sw	$4,72($sp)
	move	$3,$0
	move	$2,$0
	sw	$3,28($sp)
	sw	$2,24($sp)
	sw	$0,32($sp)
	.option	pic0
	b	$L260
	nop

	.option	pic2
$L261:
	lw	$2,72($sp)
	nop
	addiu	$2,$2,1
	sw	$2,72($sp)
$L260:
	lw	$2,72($sp)
	nop
	lb	$2,0($2)
	nop
	move	$4,$2
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L261
	nop

	lw	$2,72($sp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L262
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L264
	nop

	li	$2,1			# 0x1
	sw	$2,32($sp)
$L262:
	lw	$2,72($sp)
	nop
	addiu	$2,$2,1
	sw	$2,72($sp)
	.option	pic0
	b	$L264
	nop

	.option	pic2
$L265:
	lw	$7,28($sp)
	lw	$6,24($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	srl	$4,$3,30
	sll	$16,$2,2
	or	$16,$4,$16
	sll	$17,$3,2
	move	$3,$17
	move	$2,$16
	addu	$5,$3,$7
	sltu	$8,$5,$3
	addu	$4,$2,$6
	addu	$2,$8,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	srl	$4,$3,31
	sll	$18,$2,1
	or	$18,$4,$18
	sll	$19,$3,1
	move	$3,$19
	move	$2,$18
	move	$5,$19
	move	$4,$18
	lw	$2,72($sp)
	nop
	addiu	$3,$2,1
	sw	$3,72($sp)
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	move	$21,$2
	sra	$2,$2,31
	move	$20,$2
	subu	$3,$5,$21
	sltu	$6,$5,$3
	subu	$2,$4,$20
	subu	$4,$2,$6
	move	$2,$4
	sw	$3,28($sp)
	sw	$2,24($sp)
$L264:
	lw	$2,72($sp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L265
	nop

	lw	$2,32($sp)
	nop
	bne	$2,$0,$L266
	nop

	move	$5,$0
	move	$4,$0
	lw	$7,28($sp)
	lw	$6,24($sp)
	subu	$3,$5,$7
	sltu	$8,$5,$3
	subu	$2,$4,$6
	subu	$4,$2,$8
	move	$2,$4
	.option	pic0
	b	$L268
	nop

	.option	pic2
$L266:
	lw	$3,28($sp)
	lw	$2,24($sp)
$L268:
	lw	$31,68($sp)
	lw	$21,64($sp)
	lw	$20,60($sp)
	lw	$19,56($sp)
	lw	$18,52($sp)
	lw	$17,48($sp)
	lw	$16,44($sp)
	addiu	$sp,$sp,72
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	nomips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$5,44($sp)
	sw	$6,48($sp)
	sw	$7,52($sp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L275:
	lw	$2,48($sp)
	nop
	srl	$3,$2,1
	lw	$2,52($sp)
	nop
	mult	$3,$2
	lw	$2,44($sp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,24($sp)
	lw	$2,56($sp)
	lw	$5,24($sp)
	lw	$4,40($sp)
	move	$25,$2
	jalr	$25
	nop

	sw	$2,28($sp)
	lw	$2,28($sp)
	nop
	bgez	$2,$L271
	nop

	lw	$2,48($sp)
	nop
	srl	$2,$2,1
	sw	$2,48($sp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L271:
	lw	$2,28($sp)
	nop
	blez	$2,$L273
	nop

	lw	$3,24($sp)
	lw	$2,52($sp)
	nop
	addu	$2,$3,$2
	sw	$2,44($sp)
	lw	$2,48($sp)
	nop
	srl	$2,$2,1
	lw	$3,48($sp)
	nop
	subu	$2,$3,$2
	addiu	$2,$2,-1
	sw	$2,48($sp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L273:
	lw	$2,24($sp)
	.option	pic0
	b	$L274
	nop

	.option	pic2
$L270:
	lw	$2,48($sp)
	nop
	bne	$2,$0,$L275
	nop

	move	$2,$0
$L274:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,48,$31		# vars= 16, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$4,48($sp)
	sw	$5,52($sp)
	sw	$6,56($sp)
	sw	$7,60($sp)
	lw	$2,52($sp)
	nop
	sw	$2,24($sp)
	lw	$2,56($sp)
	nop
	sw	$2,28($sp)
	.option	pic0
	b	$L277
	nop

	.option	pic2
$L281:
	lw	$2,28($sp)
	nop
	sra	$2,$2,1
	move	$3,$2
	lw	$2,60($sp)
	nop
	mult	$3,$2
	lw	$2,24($sp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,32($sp)
	lw	$2,64($sp)
	lw	$6,68($sp)
	lw	$5,32($sp)
	lw	$4,48($sp)
	move	$25,$2
	jalr	$25
	nop

	sw	$2,36($sp)
	lw	$2,36($sp)
	nop
	bne	$2,$0,$L278
	nop

	lw	$2,32($sp)
	.option	pic0
	b	$L279
	nop

	.option	pic2
$L278:
	lw	$2,36($sp)
	nop
	blez	$2,$L280
	nop

	lw	$3,32($sp)
	lw	$2,60($sp)
	nop
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,28($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,28($sp)
$L280:
	lw	$2,28($sp)
	nop
	sra	$2,$2,1
	sw	$2,28($sp)
$L277:
	lw	$2,28($sp)
	nop
	bne	$2,$0,$L281
	nop

	move	$2,$0
$L279:
	lw	$31,44($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	nomips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	mflo	$4
	lw	$3,20($sp)
	lw	$2,24($sp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,16($sp)
	nop
	sw	$4,0($2)
	lw	$2,16($sp)
	nop
	sw	$3,4($2)
	lw	$2,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
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
	sw	$5,4($sp)
	sw	$4,0($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	nop
	bgez	$2,$L285
	nop

	move	$7,$0
	move	$6,$0
	subu	$5,$7,$3
	sltu	$8,$7,$5
	subu	$4,$6,$2
	subu	$2,$4,$8
	move	$4,$2
	move	$3,$5
	move	$2,$4
$L285:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	nomips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,56,$31		# vars= 16, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$17,48($sp)
	sw	$16,44($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($sp)
	sw	$7,68($sp)
	sw	$6,64($sp)
	lw	$2,%call16(__divdi3)($28)
	lw	$7,76($sp)
	lw	$6,72($sp)
	lw	$5,68($sp)
	lw	$4,64($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$17,$3
	move	$16,$2
	lw	$3,68($sp)
	lw	$2,64($sp)
	lw	$8,%call16(__moddi3)($28)
	lw	$7,76($sp)
	lw	$6,72($sp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$4,56($sp)
	nop
	sw	$17,4($4)
	sw	$16,0($4)
	lw	$4,56($sp)
	nop
	sw	$3,12($4)
	sw	$2,8($4)
	lw	$2,56($sp)
	lw	$31,52($sp)
	lw	$17,48($sp)
	lw	$16,44($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	bgez	$2,$L291
	nop

	subu	$2,$0,$2
$L291:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	nomips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	mflo	$4
	lw	$3,20($sp)
	lw	$2,24($sp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,16($sp)
	nop
	sw	$4,0($2)
	lw	$2,16($sp)
	nop
	sw	$3,4($2)
	lw	$2,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
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
	sw	$5,4($sp)
	sw	$4,0($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	nop
	bgez	$2,$L296
	nop

	move	$7,$0
	move	$6,$0
	subu	$5,$7,$3
	sltu	$8,$7,$5
	subu	$4,$6,$2
	subu	$2,$4,$8
	move	$4,$2
	move	$3,$5
	move	$2,$4
$L296:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	nomips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,56,$31		# vars= 16, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$17,48($sp)
	sw	$16,44($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($sp)
	sw	$7,68($sp)
	sw	$6,64($sp)
	lw	$2,%call16(__divdi3)($28)
	lw	$7,76($sp)
	lw	$6,72($sp)
	lw	$5,68($sp)
	lw	$4,64($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$17,$3
	move	$16,$2
	lw	$3,68($sp)
	lw	$2,64($sp)
	lw	$8,%call16(__moddi3)($28)
	lw	$7,76($sp)
	lw	$6,72($sp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$4,56($sp)
	nop
	sw	$17,4($4)
	sw	$16,0($4)
	lw	$4,56($sp)
	nop
	sw	$3,12($4)
	sw	$2,8($4)
	lw	$2,56($sp)
	lw	$31,52($sp)
	lw	$17,48($sp)
	lw	$16,44($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	.option	pic0
	b	$L302
	nop

	.option	pic2
$L304:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
$L302:
	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L303
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	lw	$3,4($sp)
	nop
	bne	$3,$2,$L304
	nop

$L303:
	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L305
	nop

	lw	$2,0($sp)
	jr	$31
	nop

$L305:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	.option	pic0
	b	$L309
	nop

	.option	pic2
$L311:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
	lw	$2,4($sp)
	nop
	addiu	$2,$2,4
	sw	$2,4($sp)
$L309:
	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$3,$2,$L310
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L310
	nop

	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L311
	nop

$L310:
	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L312
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	jr	$31
	nop

$L312:
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	nomips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	nop
$L316:
	lw	$3,20($sp)
	nop
	addiu	$2,$3,4
	sw	$2,20($sp)
	lw	$2,16($sp)
	nop
	addiu	$4,$2,4
	sw	$4,16($sp)
	lw	$3,0($3)
	nop
	sw	$3,0($2)
	lw	$2,0($2)
	nop
	bne	$2,$0,$L316
	nop

	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.set	nomips16
	.set	nomicromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L319
	nop

	.option	pic2
$L320:
	lw	$2,16($sp)
	nop
	addiu	$2,$2,4
	sw	$2,16($sp)
$L319:
	lw	$2,16($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L320
	nop

	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	subu	$2,$3,$2
	sra	$2,$2,2
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	sw	$6,8($sp)
	.option	pic0
	b	$L323
	nop

	.option	pic2
$L325:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
	lw	$2,4($sp)
	nop
	addiu	$2,$2,4
	sw	$2,4($sp)
$L323:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L324
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$3,$2,$L324
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L324
	nop

	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L325
	nop

$L324:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L326
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L327
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	jr	$31
	nop

$L327:
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L326:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	sw	$6,8($sp)
	.option	pic0
	b	$L332
	nop

	.option	pic2
$L334:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
$L332:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L333
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	lw	$3,4($sp)
	nop
	bne	$3,$2,$L334
	nop

$L333:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L335
	nop

	lw	$2,0($sp)
	jr	$31
	nop

$L335:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	sw	$6,8($sp)
	.option	pic0
	b	$L339
	nop

	.option	pic2
$L341:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
	lw	$2,4($sp)
	nop
	addiu	$2,$2,4
	sw	$2,4($sp)
$L339:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L340
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$3,$2,$L341
	nop

$L340:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L342
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L343
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	jr	$31
	nop

$L343:
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L342:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	nomips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L348
	nop

	.option	pic2
$L349:
	lw	$3,20($sp)
	nop
	addiu	$2,$3,4
	sw	$2,20($sp)
	lw	$2,16($sp)
	nop
	addiu	$4,$2,4
	sw	$4,16($sp)
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L348:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L349
	nop

	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	nomips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	bne	$3,$2,$L352
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L353
	nop

	.option	pic2
$L352:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	subu	$3,$3,$2
	lw	$2,24($sp)
	nop
	sll	$2,$2,2
	sltu	$2,$3,$2
	beq	$2,$0,$L358
	nop

	.option	pic0
	b	$L355
	nop

	.option	pic2
$L356:
	lw	$2,24($sp)
	nop
	sll	$2,$2,2
	lw	$3,20($sp)
	nop
	addu	$3,$3,$2
	lw	$2,24($sp)
	nop
	sll	$2,$2,2
	lw	$4,16($sp)
	nop
	addu	$2,$4,$2
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L355:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L356
	nop

	.option	pic0
	b	$L357
	nop

	.option	pic2
$L359:
	lw	$3,20($sp)
	nop
	addiu	$2,$3,4
	sw	$2,20($sp)
	lw	$2,16($sp)
	nop
	addiu	$4,$2,4
	sw	$4,16($sp)
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L358:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L359
	nop

$L357:
	lw	$2,8($sp)
$L353:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.set	nomips16
	.set	nomicromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L361
	nop

	.option	pic2
$L362:
	lw	$2,16($sp)
	nop
	addiu	$3,$2,4
	sw	$3,16($sp)
	lw	$3,20($sp)
	nop
	sw	$3,0($2)
$L361:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L362
	nop

	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	nomips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L365
	nop

	lw	$3,8($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$3,12($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	sw	$2,12($sp)
	.option	pic0
	b	$L366
	nop

	.option	pic2
$L367:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,12($sp)
	lw	$2,8($sp)
	nop
	lb	$3,0($2)
	lw	$2,12($sp)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L366:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L367
	nop

	.option	pic0
	b	$L371
	nop

	.option	pic2
$L365:
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	beq	$3,$2,$L371
	nop

	.option	pic0
	b	$L369
	nop

	.option	pic2
$L370:
	lw	$3,8($sp)
	nop
	addiu	$2,$3,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	addiu	$4,$2,1
	sw	$4,12($sp)
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L369:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L370
	nop

$L371:
	nop
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
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
	sw	$5,4($sp)
	sw	$4,0($sp)
	sw	$6,8($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	lw	$4,8($sp)
	nop
	andi	$4,$4,0x20
	beq	$4,$0,$L373
	nop

	lw	$4,8($sp)
	nop
	sll	$10,$3,$4
	move	$11,$0
	.option	pic0
	b	$L374
	nop

	.option	pic2
$L373:
	srl	$5,$3,1
	lw	$4,8($sp)
	nop
	nor	$4,$0,$4
	srl	$4,$5,$4
	lw	$5,8($sp)
	nop
	sll	$10,$2,$5
	or	$10,$4,$10
	lw	$4,8($sp)
	nop
	sll	$11,$3,$4
$L374:
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	andi	$4,$4,0x20
	beq	$4,$0,$L375
	nop

	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	srl	$9,$2,$4
	move	$8,$0
	.option	pic0
	b	$L376
	nop

	.option	pic2
$L375:
	sll	$5,$2,1
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	nor	$4,$0,$4
	sll	$5,$5,$4
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	srl	$9,$3,$4
	or	$9,$5,$9
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	srl	$8,$2,$4
$L376:
	or	$12,$8,$10
	or	$13,$9,$11
	move	$9,$13
	move	$8,$12
	move	$3,$13
	move	$2,$12
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
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
	sw	$5,4($sp)
	sw	$4,0($sp)
	sw	$6,8($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	lw	$4,8($sp)
	nop
	andi	$4,$4,0x20
	beq	$4,$0,$L379
	nop

	lw	$4,8($sp)
	nop
	srl	$11,$2,$4
	move	$10,$0
	.option	pic0
	b	$L380
	nop

	.option	pic2
$L379:
	sll	$5,$2,1
	lw	$4,8($sp)
	nop
	nor	$4,$0,$4
	sll	$4,$5,$4
	lw	$5,8($sp)
	nop
	srl	$11,$3,$5
	or	$11,$4,$11
	lw	$4,8($sp)
	nop
	srl	$10,$2,$4
$L380:
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	andi	$4,$4,0x20
	beq	$4,$0,$L381
	nop

	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	sll	$8,$3,$4
	move	$9,$0
	.option	pic0
	b	$L382
	nop

	.option	pic2
$L381:
	srl	$5,$3,1
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	nor	$4,$0,$4
	srl	$5,$5,$4
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	sll	$8,$2,$4
	or	$8,$5,$8
	lw	$4,8($sp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	sll	$9,$3,$4
$L382:
	or	$12,$8,$10
	or	$13,$9,$11
	move	$9,$13
	move	$8,$12
	move	$3,$13
	move	$2,$12
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	nop
	sll	$4,$3,$2
	lw	$2,4($sp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	srl	$2,$3,$2
	or	$2,$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	nop
	srl	$4,$3,$2
	lw	$2,4($sp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	sll	$2,$3,$2
	or	$2,$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	nop
	sll	$4,$3,$2
	lw	$2,4($sp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	srl	$2,$3,$2
	or	$2,$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	nop
	srl	$4,$3,$2
	lw	$2,4($sp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	sll	$2,$3,$2
	or	$2,$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
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
	move	$2,$4
	sw	$5,4($sp)
	sh	$2,0($sp)
	lhu	$3,0($sp)
	lw	$2,4($sp)
	nop
	sll	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$4,0($sp)
	li	$5,16			# 0x10
	lw	$2,4($sp)
	nop
	subu	$2,$5,$2
	srl	$2,$4,$2
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
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
	move	$2,$4
	sw	$5,4($sp)
	sh	$2,0($sp)
	lhu	$3,0($sp)
	lw	$2,4($sp)
	nop
	srl	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$4,0($sp)
	li	$5,16			# 0x10
	lw	$2,4($sp)
	nop
	subu	$2,$5,$2
	sll	$2,$4,$2
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
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
	move	$2,$4
	sw	$5,4($sp)
	sb	$2,0($sp)
	lbu	$3,0($sp)
	lw	$2,4($sp)
	nop
	sll	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$4,0($sp)
	li	$5,8			# 0x8
	lw	$2,4($sp)
	nop
	subu	$2,$5,$2
	srl	$2,$4,$2
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
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
	move	$2,$4
	sw	$5,4($sp)
	sb	$2,0($sp)
	lbu	$3,0($sp)
	lw	$2,4($sp)
	nop
	srl	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$4,0($sp)
	li	$5,8			# 0x8
	lw	$2,4($sp)
	nop
	subu	$2,$5,$2
	sll	$2,$4,$2
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	nomips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	sh	$2,16($sp)
	li	$2,255			# 0xff
	sw	$2,8($sp)
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,8
	and	$2,$3,$2
	srl	$2,$2,8
	andi	$3,$2,0xffff
	lw	$2,8($sp)
	nop
	andi	$4,$2,0xffff
	lhu	$2,16($sp)
	nop
	and	$2,$4,$2
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	nomips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	li	$2,255			# 0xff
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	sll	$3,$2,24
	lw	$2,16($sp)
	nop
	and	$2,$3,$2
	srl	$3,$2,24
	lw	$2,8($sp)
	nop
	sll	$4,$2,16
	lw	$2,16($sp)
	nop
	and	$2,$4,$2
	srl	$2,$2,8
	or	$3,$3,$2
	lw	$2,8($sp)
	nop
	sll	$4,$2,8
	lw	$2,16($sp)
	nop
	and	$2,$4,$2
	sll	$2,$2,8
	or	$3,$3,$2
	lw	$4,16($sp)
	lw	$2,8($sp)
	nop
	and	$2,$4,$2
	sll	$2,$2,24
	or	$2,$3,$2
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	nomips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,208,$31		# vars= 168, regs= 8/0, args= 0, gp= 8
	.mask	0x00ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-208
	sw	$23,204($sp)
	sw	$22,200($sp)
	sw	$21,196($sp)
	sw	$20,192($sp)
	sw	$19,188($sp)
	sw	$18,184($sp)
	sw	$17,180($sp)
	sw	$16,176($sp)
	sw	$5,212($sp)
	sw	$4,208($sp)
	li	$3,255			# 0xff
	move	$2,$0
	sw	$3,12($sp)
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	sll	$6,$2,24
	move	$7,$0
	lw	$2,208($sp)
	nop
	and	$8,$2,$6
	lw	$2,212($sp)
	nop
	and	$9,$2,$7
	srl	$23,$8,24
	move	$22,$0
	lw	$2,12($sp)
	nop
	sll	$12,$2,16
	move	$13,$0
	lw	$2,208($sp)
	nop
	and	$2,$2,$12
	sw	$2,56($sp)
	lw	$2,212($sp)
	nop
	and	$2,$2,$13
	sw	$2,60($sp)
	lw	$2,56($sp)
	nop
	srl	$25,$2,8
	move	$24,$0
	or	$2,$22,$24
	sw	$2,64($sp)
	or	$2,$23,$25
	sw	$2,68($sp)
	lw	$2,12($sp)
	nop
	sll	$20,$2,8
	move	$21,$0
	lw	$2,208($sp)
	nop
	and	$14,$2,$20
	lw	$2,212($sp)
	nop
	and	$15,$2,$21
	sll	$2,$14,8
	srl	$11,$15,24
	or	$11,$2,$11
	srl	$10,$14,24
	lw	$3,68($sp)
	lw	$2,64($sp)
	nop
	move	$4,$2
	or	$4,$4,$10
	sw	$4,72($sp)
	move	$2,$3
	or	$2,$2,$11
	sw	$2,76($sp)
	lw	$2,12($sp)
	nop
	sll	$2,$2,0
	sw	$2,80($sp)
	sw	$0,84($sp)
	lw	$2,208($sp)
	lw	$5,84($sp)
	lw	$4,80($sp)
	nop
	move	$3,$4
	and	$18,$2,$3
	lw	$2,212($sp)
	move	$3,$5
	and	$19,$2,$3
	sll	$2,$18,24
	srl	$17,$19,8
	or	$17,$2,$17
	srl	$16,$18,8
	lw	$3,76($sp)
	lw	$2,72($sp)
	nop
	move	$4,$2
	or	$4,$4,$16
	sw	$4,88($sp)
	move	$2,$3
	or	$2,$2,$17
	sw	$2,92($sp)
	lw	$2,12($sp)
	nop
	srl	$3,$2,8
	lw	$2,8($sp)
	nop
	sll	$2,$2,24
	sw	$2,16($sp)
	lw	$2,16($sp)
	nop
	or	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,12($sp)
	nop
	sll	$2,$2,24
	sw	$2,20($sp)
	lw	$2,208($sp)
	lw	$5,20($sp)
	lw	$4,16($sp)
	nop
	move	$3,$4
	and	$2,$2,$3
	sw	$2,96($sp)
	lw	$2,212($sp)
	move	$3,$5
	and	$2,$2,$3
	sw	$2,100($sp)
	lw	$5,100($sp)
	lw	$4,96($sp)
	move	$2,$5
	srl	$2,$2,24
	move	$3,$4
	sll	$3,$3,8
	sw	$3,24($sp)
	lw	$3,24($sp)
	nop
	or	$2,$2,$3
	sw	$2,24($sp)
	move	$2,$5
	sll	$2,$2,8
	sw	$2,28($sp)
	lw	$5,92($sp)
	lw	$4,88($sp)
	nop
	move	$6,$4
	lw	$3,28($sp)
	lw	$2,24($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,104($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,108($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$2,16
	lw	$3,8($sp)
	nop
	sll	$3,$3,16
	sw	$3,32($sp)
	lw	$3,32($sp)
	nop
	or	$2,$2,$3
	sw	$2,32($sp)
	lw	$2,12($sp)
	nop
	sll	$2,$2,16
	sw	$2,36($sp)
	lw	$2,208($sp)
	lw	$5,36($sp)
	lw	$4,32($sp)
	nop
	move	$3,$4
	and	$2,$2,$3
	sw	$2,112($sp)
	lw	$2,212($sp)
	move	$3,$5
	and	$2,$2,$3
	sw	$2,116($sp)
	lw	$5,116($sp)
	lw	$4,112($sp)
	move	$2,$5
	srl	$2,$2,8
	move	$3,$4
	sll	$3,$3,24
	sw	$3,40($sp)
	lw	$3,40($sp)
	nop
	or	$2,$2,$3
	sw	$2,40($sp)
	move	$2,$5
	sll	$2,$2,24
	sw	$2,44($sp)
	lw	$5,108($sp)
	lw	$4,104($sp)
	nop
	move	$6,$4
	lw	$3,44($sp)
	lw	$2,40($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,120($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,124($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$2,24
	lw	$3,8($sp)
	nop
	sll	$3,$3,8
	sw	$3,48($sp)
	lw	$3,48($sp)
	nop
	or	$2,$2,$3
	sw	$2,48($sp)
	lw	$2,12($sp)
	nop
	sll	$2,$2,8
	sw	$2,52($sp)
	lw	$2,208($sp)
	lw	$5,52($sp)
	lw	$4,48($sp)
	nop
	move	$3,$4
	and	$2,$2,$3
	sw	$2,128($sp)
	lw	$2,212($sp)
	move	$3,$5
	and	$2,$2,$3
	sw	$2,132($sp)
	lw	$2,132($sp)
	nop
	sll	$2,$2,8
	sw	$2,136($sp)
	sw	$0,140($sp)
	lw	$5,124($sp)
	lw	$4,120($sp)
	nop
	move	$6,$4
	lw	$3,140($sp)
	lw	$2,136($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,144($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,148($sp)
	lw	$3,208($sp)
	lw	$2,8($sp)
	nop
	and	$2,$3,$2
	sw	$2,152($sp)
	lw	$3,212($sp)
	lw	$2,12($sp)
	nop
	and	$2,$3,$2
	sw	$2,156($sp)
	lw	$2,156($sp)
	nop
	sll	$2,$2,24
	sw	$2,160($sp)
	sw	$0,164($sp)
	lw	$5,148($sp)
	lw	$4,144($sp)
	nop
	move	$6,$4
	lw	$3,164($sp)
	lw	$2,160($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,168($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,172($sp)
	lw	$3,172($sp)
	lw	$2,168($sp)
	lw	$23,204($sp)
	lw	$22,200($sp)
	lw	$21,196($sp)
	lw	$20,192($sp)
	lw	$19,188($sp)
	lw	$18,184($sp)
	lw	$17,180($sp)
	lw	$16,176($sp)
	addiu	$sp,$sp,208
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	nomips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L407
	nop

	.option	pic2
$L410:
	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L408
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	.option	pic0
	b	$L409
	nop

	.option	pic2
$L408:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L407:
	lw	$2,8($sp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L410
	nop

	move	$2,$0
$L409:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	nomips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
	move	$2,$4
	bne	$2,$0,$L412
	nop

	move	$2,$0
	.option	pic0
	b	$L413
	nop

	.option	pic2
$L412:
	li	$16,1			# 0x1
	.option	pic0
	b	$L414
	nop

	.option	pic2
$L415:
	sra	$2,$2,1
	addiu	$16,$16,1
$L414:
	andi	$3,$2,0x1
	beq	$3,$0,$L415
	nop

	move	$2,$16
$L413:
	lw	$16,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
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
	swc1	$f12,0($sp)
	lwc1	$f2,0($sp)
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1t	$L417
	nop

	lwc1	$f2,0($sp)
	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L422
	nop

$L417:
	li	$2,1			# 0x1
	jr	$31
	nop

$L422:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L424
	nop

	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L429
	nop

$L424:
	li	$2,1			# 0x1
	jr	$31
	nop

$L429:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L431
	nop

	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L436
	nop

$L431:
	li	$2,1			# 0x1
	jr	$31
	nop

$L436:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	nomips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$2,4($sp)
	nop
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	lw	$2,0($sp)
	nop
	swc1	$f0,4($2)
	swc1	$f1,0($2)
	nop
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.set	nomips16
	.set	nomicromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,16($sp)
	sw	$5,20($sp)
	lwc1	$f2,16($sp)
	lwc1	$f0,16($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1t	$L439
	nop

	lwc1	$f0,16($sp)
	nop
	add.s	$f0,$f0,$f0
	lwc1	$f2,16($sp)
	nop
	c.eq.s	$f2,$f0
	nop
	bc1t	$L439
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L440
	nop

	lui	$2,%hi($LC4)
	lwc1	$f0,%lo($LC4)($2)
	.option	pic0
	b	$L441
	nop

	.option	pic2
$L440:
	lui	$2,%hi($LC5)
	lwc1	$f0,%lo($LC5)($2)
	nop
$L441:
	swc1	$f0,8($sp)
$L444:
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L442
	nop

	lwc1	$f2,16($sp)
	lwc1	$f0,8($sp)
	nop
	mul.s	$f0,$f2,$f0
	swc1	$f0,16($sp)
$L442:
	lw	$2,20($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	nop
	beq	$2,$0,$L446
	nop

	lwc1	$f0,8($sp)
	nop
	mul.s	$f0,$f0,$f0
	swc1	$f0,8($sp)
	.option	pic0
	b	$L444
	nop

	.option	pic2
$L446:
	nop
$L439:
	lwc1	$f0,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.set	nomips16
	.set	nomicromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	swc1	$f13,16($sp)
	sw	$6,24($sp)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1t	$L448
	nop

	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	add.d	$f0,$f0,$f0
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L448
	nop

	lw	$2,24($sp)
	nop
	bgez	$2,$L449
	nop

	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	.option	pic0
	b	$L450
	nop

	.option	pic2
$L449:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	nop
$L450:
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L453:
	lw	$2,24($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L451
	nop

	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
$L451:
	lw	$2,24($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L455
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
	.option	pic0
	b	$L453
	nop

	.option	pic2
$L455:
	nop
$L448:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.set	nomips16
	.set	nomicromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	swc1	$f13,16($sp)
	sw	$6,24($sp)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1t	$L457
	nop

	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	add.d	$f0,$f0,$f0
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L457
	nop

	lw	$2,24($sp)
	nop
	bgez	$2,$L458
	nop

	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	.option	pic0
	b	$L459
	nop

	.option	pic2
$L458:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	nop
$L459:
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L462:
	lw	$2,24($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L460
	nop

	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
$L460:
	lw	$2,24($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L464
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
	.option	pic0
	b	$L462
	nop

	.option	pic2
$L464:
	nop
$L457:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	nomips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	lw	$2,20($sp)
	nop
	sw	$2,8($sp)
	lw	$2,16($sp)
	nop
	sw	$2,12($sp)
	.option	pic0
	b	$L466
	nop

	.option	pic2
$L467:
	lw	$2,8($sp)
	nop
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$4,0($2)
	lw	$2,12($sp)
	nop
	addiu	$3,$2,1
	sw	$3,12($sp)
	lb	$3,0($2)
	nop
	xor	$3,$4,$3
	sll	$3,$3,24
	sra	$3,$3,24
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L466:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L467
	nop

	lw	$2,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	nomips16
	.set	nomicromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$5,44($sp)
	sw	$6,48($sp)
	lw	$4,40($sp)
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	move	$3,$2
	lw	$2,40($sp)
	nop
	addu	$2,$2,$3
	sw	$2,24($sp)
	.option	pic0
	b	$L470
	nop

	.option	pic2
$L472:
	lw	$2,44($sp)
	nop
	addiu	$2,$2,1
	sw	$2,44($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
	lw	$2,48($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,48($sp)
$L470:
	lw	$2,48($sp)
	nop
	beq	$2,$0,$L471
	nop

	lw	$2,44($sp)
	nop
	lb	$3,0($2)
	lw	$2,24($sp)
	nop
	sb	$3,0($2)
	lw	$2,24($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L472
	nop

$L471:
	lw	$2,48($sp)
	nop
	bne	$2,$0,$L473
	nop

	lw	$2,24($sp)
	nop
	sb	$0,0($2)
$L473:
	lw	$2,40($sp)
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	nomips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L476
	nop

	.option	pic2
$L481:
	nop
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L476:
	lw	$3,8($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L477
	nop

	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	bne	$2,$0,$L481
	nop

$L477:
	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	nomips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	.option	pic0
	b	$L483
	nop

	.option	pic2
$L487:
	lw	$2,20($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L484
	nop

	.option	pic2
$L486:
	lw	$2,8($sp)
	nop
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$3,0($2)
	lw	$2,16($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L484
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L485
	nop

	.option	pic2
$L484:
	lw	$2,8($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L486
	nop

	lw	$2,16($sp)
	nop
	addiu	$2,$2,1
	sw	$2,16($sp)
$L483:
	lw	$2,16($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L487
	nop

	move	$2,$0
$L485:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	nomips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	sw	$5,20($sp)
	sw	$0,8($sp)
$L490:
	lb	$3,0($2)
	nop
	move	$4,$3
	lw	$3,20($sp)
	nop
	bne	$3,$4,$L489
	nop

	sw	$2,8($sp)
$L489:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	nop
	bne	$3,$0,$L490
	nop

	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	nomips16
	.set	nomicromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$5,44($sp)
	lw	$2,40($sp)
	nop
	sw	$2,24($sp)
	lw	$4,44($sp)
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	sw	$2,28($sp)
	lw	$2,28($sp)
	nop
	bne	$2,$0,$L495
	nop

	lw	$2,40($sp)
	.option	pic0
	b	$L494
	nop

	.option	pic2
$L497:
	lw	$6,28($sp)
	lw	$5,44($sp)
	lw	$4,24($sp)
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	bne	$2,$0,$L496
	nop

	lw	$2,24($sp)
	.option	pic0
	b	$L494
	nop

	.option	pic2
$L496:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L495:
	lw	$2,44($sp)
	nop
	lb	$2,0($2)
	nop
	move	$5,$2
	lw	$4,24($sp)
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L497
	nop

	move	$2,$0
$L494:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L499
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L501
	nop

$L499:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L502
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L502
	nop

$L501:
	lw	$5,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$2,$5,$4
	lw	$3,4($sp)
	.option	pic0
	b	$L505
	nop

	.option	pic2
$L502:
	lw	$3,4($sp)
	lw	$2,0($sp)
$L505:
	mtc1	$3,$f0
	nop
	mtc1	$2,$f1
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	nomips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$5,44($sp)
	sw	$6,48($sp)
	sw	$7,52($sp)
	lw	$3,44($sp)
	lw	$2,52($sp)
	nop
	subu	$2,$3,$2
	lw	$3,40($sp)
	nop
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$2,52($sp)
	nop
	bne	$2,$0,$L509
	nop

	lw	$2,40($sp)
	.option	pic0
	b	$L510
	nop

	.option	pic2
$L509:
	lw	$3,44($sp)
	lw	$2,52($sp)
	nop
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L511
	nop

	move	$2,$0
	.option	pic0
	b	$L510
	nop

	.option	pic2
$L511:
	lw	$2,40($sp)
	nop
	sw	$2,24($sp)
	.option	pic0
	b	$L512
	nop

	.option	pic2
$L514:
	lw	$2,24($sp)
	nop
	lb	$3,0($2)
	lw	$2,48($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L513
	nop

	lw	$2,24($sp)
	nop
	addiu	$3,$2,1
	lw	$2,48($sp)
	nop
	addiu	$4,$2,1
	lw	$2,52($sp)
	nop
	addiu	$2,$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L513
	nop

	lw	$2,24($sp)
	.option	pic0
	b	$L510
	nop

	.option	pic2
$L513:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L512:
	lw	$3,24($sp)
	lw	$2,28($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L514
	nop

	move	$2,$0
$L510:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	nomips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$4,32($sp)
	sw	$5,36($sp)
	sw	$6,40($sp)
	lw	$6,40($sp)
	lw	$5,36($sp)
	lw	$4,32($sp)
	.option	pic0
	jal	memcpy
	nop

	.option	pic2
	move	$3,$2
	lw	$2,40($sp)
	nop
	addu	$2,$3,$2
	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.set	nomips16
	.set	nomicromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	swc1	$f13,16($sp)
	sw	$6,24($sp)
	sw	$0,12($sp)
	sw	$0,8($sp)
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L518
	nop

	lw	$7,16($sp)
	li	$6,-2147483648			# 0xffffffff80000000
	xor	$4,$7,$6
	lw	$5,20($sp)
	nop
	sw	$5,20($sp)
	sw	$4,16($sp)
	li	$4,1			# 0x1
	sw	$4,8($sp)
$L518:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lui	$4,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	nop
	c.le.d	$f0,$f2
	nop
	bc1f	$L533
	nop

	.option	pic0
	b	$L522
	nop

	.option	pic2
$L523:
	lw	$4,12($sp)
	nop
	addiu	$4,$4,1
	sw	$4,12($sp)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lui	$4,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
	nop
	div.d	$f0,$f2,$f0
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
$L522:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lui	$4,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	nop
	c.le.d	$f0,$f2
	nop
	bc1t	$L523
	nop

	.option	pic0
	b	$L524
	nop

	.option	pic2
$L533:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lui	$4,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L524
	nop

	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.eq.d	$f0,$f2
	nop
	bc1t	$L524
	nop

	.option	pic0
	b	$L526
	nop

	.option	pic2
$L527:
	lw	$4,12($sp)
	nop
	addiu	$4,$4,-1
	sw	$4,12($sp)
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	add.d	$f0,$f0,$f0
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
$L526:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	lui	$4,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L527
	nop

$L524:
	lw	$4,24($sp)
	lw	$5,12($sp)
	nop
	sw	$5,0($4)
	lw	$4,8($sp)
	nop
	beq	$4,$0,$L528
	nop

	lw	$5,16($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$2,$5,$4
	lw	$3,20($sp)
	nop
	sw	$3,20($sp)
	sw	$2,16($sp)
$L528:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$5,28($sp)
	sw	$4,24($sp)
	sw	$7,36($sp)
	sw	$6,32($sp)
	move	$3,$0
	move	$2,$0
	sw	$3,12($sp)
	sw	$2,8($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	.option	pic0
	b	$L535
	nop

	.option	pic2
$L538:
	lw	$2,16($sp)
	nop
	andi	$12,$2,0
	lw	$2,20($sp)
	nop
	andi	$13,$2,0x1
	move	$2,$12
	or	$2,$2,$13
	beq	$2,$0,$L536
	nop

	lw	$5,12($sp)
	lw	$4,8($sp)
	lw	$7,36($sp)
	lw	$6,32($sp)
	addu	$3,$5,$7
	sltu	$14,$3,$5
	addu	$2,$4,$6
	addu	$4,$14,$2
	move	$2,$4
	sw	$3,12($sp)
	sw	$2,8($sp)
$L536:
	lw	$2,36($sp)
	nop
	srl	$2,$2,31
	lw	$3,32($sp)
	nop
	sll	$8,$3,1
	or	$8,$2,$8
	lw	$2,36($sp)
	nop
	sll	$9,$2,1
	sw	$9,36($sp)
	sw	$8,32($sp)
	lw	$2,16($sp)
	nop
	sll	$2,$2,31
	lw	$3,20($sp)
	nop
	srl	$11,$3,1
	or	$11,$2,$11
	lw	$2,16($sp)
	nop
	srl	$10,$2,1
	sw	$11,20($sp)
	sw	$10,16($sp)
$L535:
	lw	$2,16($sp)
	lw	$3,20($sp)
	nop
	or	$2,$2,$3
	bne	$2,$0,$L538
	nop

	lw	$3,12($sp)
	lw	$2,8($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	li	$2,1			# 0x1
	sw	$2,8($sp)
	sw	$0,12($sp)
	.option	pic0
	b	$L541
	nop

	.option	pic2
$L543:
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	sw	$2,8($sp)
$L541:
	lw	$3,20($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L544
	nop

	lw	$2,8($sp)
	nop
	beq	$2,$0,$L544
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L543
	nop

	.option	pic0
	b	$L544
	nop

	.option	pic2
$L546:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L545
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	nop
	or	$2,$3,$2
	sw	$2,12($sp)
$L545:
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L544:
	lw	$2,8($sp)
	nop
	bne	$2,$0,$L546
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L547
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L548
	nop

	.option	pic2
$L547:
	lw	$2,12($sp)
$L548:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sb	$2,40($sp)
	lb	$2,40($sp)
	nop
	bgez	$2,$L550
	nop

	lbu	$2,40($sp)
	nop
	nor	$2,$0,$2
	sb	$2,40($sp)
$L550:
	lb	$2,40($sp)
	nop
	bne	$2,$0,$L551
	nop

	li	$2,7			# 0x7
	.option	pic0
	b	$L552
	nop

	.option	pic2
$L551:
	lb	$2,40($sp)
	nop
	sll	$3,$2,8
	lw	$2,%call16(__clzsi2)($28)
	move	$4,$3
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
$L552:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,44($sp)
	sw	$4,40($sp)
	lw	$4,40($sp)
	nop
	bgez	$4,$L554
	nop

	lw	$4,40($sp)
	nop
	nor	$2,$0,$4
	lw	$4,44($sp)
	nop
	nor	$3,$0,$4
	sw	$3,44($sp)
	sw	$2,40($sp)
$L554:
	lw	$2,40($sp)
	lw	$3,44($sp)
	nop
	or	$2,$2,$3
	bne	$2,$0,$L556
	nop

	li	$2,63			# 0x3f
	.option	pic0
	b	$L557
	nop

	.option	pic2
$L556:
	lw	$3,44($sp)
	lw	$2,40($sp)
	lw	$6,%call16(__clzdi2)($28)
	move	$5,$3
	move	$4,$2
	move	$25,$6
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
$L557:
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L561:
	lw	$2,16($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L560
	nop

	lw	$3,8($sp)
	lw	$2,20($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
$L560:
	lw	$2,16($sp)
	nop
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
$L559:
	lw	$2,16($sp)
	nop
	bne	$2,$0,$L561
	nop

	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.set	nomips16
	.set	nomicromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$4,32($sp)
	sw	$5,36($sp)
	sw	$6,40($sp)
	lw	$2,40($sp)
	nop
	srl	$2,$2,3
	sw	$2,16($sp)
	lw	$3,40($sp)
	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,32($sp)
	nop
	sw	$2,20($sp)
	lw	$2,36($sp)
	nop
	sw	$2,24($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L564
	nop

	lw	$3,24($sp)
	lw	$2,40($sp)
	nop
	addu	$2,$3,$2
	lw	$3,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L571
	nop

$L564:
	sw	$0,8($sp)
	.option	pic0
	b	$L566
	nop

	.option	pic2
$L567:
	lw	$2,8($sp)
	nop
	sll	$2,$2,3
	lw	$3,36($sp)
	nop
	addu	$2,$3,$2
	lw	$3,8($sp)
	nop
	sll	$3,$3,3
	lw	$4,32($sp)
	nop
	addu	$4,$4,$3
	lw	$3,4($2)
	lw	$2,0($2)
	sw	$3,4($4)
	sw	$2,0($4)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L566:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L567
	nop

	.option	pic0
	b	$L568
	nop

	.option	pic2
$L569:
	lw	$3,24($sp)
	lw	$2,12($sp)
	nop
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,12($sp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L568:
	lw	$3,40($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$2,$3
	bne	$2,$0,$L569
	nop

	.option	pic0
	b	$L570
	nop

	.option	pic2
$L572:
	lw	$3,24($sp)
	lw	$2,40($sp)
	nop
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,40($sp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
$L571:
	lw	$2,40($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bne	$2,$0,$L572
	nop

	nop
$L570:
	nop
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	nomips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$4,24($sp)
	sw	$5,28($sp)
	sw	$6,32($sp)
	lw	$2,32($sp)
	nop
	srl	$2,$2,1
	sw	$2,12($sp)
	lw	$2,24($sp)
	nop
	sw	$2,16($sp)
	lw	$2,28($sp)
	nop
	sw	$2,20($sp)
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L574
	nop

	lw	$3,20($sp)
	lw	$2,32($sp)
	nop
	addu	$2,$3,$2
	lw	$3,16($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L580
	nop

$L574:
	sw	$0,8($sp)
	.option	pic0
	b	$L576
	nop

	.option	pic2
$L577:
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	lw	$3,28($sp)
	nop
	addu	$3,$3,$2
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	lw	$4,24($sp)
	nop
	addu	$2,$4,$2
	lh	$3,0($3)
	nop
	sh	$3,0($2)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L576:
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L577
	nop

	lw	$2,32($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L579
	nop

	lw	$2,32($sp)
	nop
	addiu	$2,$2,-1
	lw	$3,20($sp)
	nop
	addu	$3,$3,$2
	lw	$2,32($sp)
	nop
	addiu	$2,$2,-1
	lw	$4,16($sp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	.option	pic0
	b	$L579
	nop

	.option	pic2
$L581:
	lw	$3,20($sp)
	lw	$2,32($sp)
	nop
	addu	$3,$3,$2
	lw	$4,16($sp)
	lw	$2,32($sp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
$L580:
	lw	$2,32($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bne	$2,$0,$L581
	nop

	nop
$L579:
	nop
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	nomips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$4,32($sp)
	sw	$5,36($sp)
	sw	$6,40($sp)
	lw	$2,40($sp)
	nop
	srl	$2,$2,2
	sw	$2,16($sp)
	lw	$3,40($sp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,32($sp)
	nop
	sw	$2,20($sp)
	lw	$2,36($sp)
	nop
	sw	$2,24($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L583
	nop

	lw	$3,24($sp)
	lw	$2,40($sp)
	nop
	addu	$2,$3,$2
	lw	$3,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L590
	nop

$L583:
	sw	$0,8($sp)
	.option	pic0
	b	$L585
	nop

	.option	pic2
$L586:
	lw	$2,8($sp)
	nop
	sll	$2,$2,2
	lw	$3,36($sp)
	nop
	addu	$3,$3,$2
	lw	$2,8($sp)
	nop
	sll	$2,$2,2
	lw	$4,32($sp)
	nop
	addu	$2,$4,$2
	lw	$3,0($3)
	nop
	sw	$3,0($2)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L585:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L586
	nop

	.option	pic0
	b	$L587
	nop

	.option	pic2
$L588:
	lw	$3,24($sp)
	lw	$2,12($sp)
	nop
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,12($sp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L587:
	lw	$3,40($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$2,$3
	bne	$2,$0,$L588
	nop

	.option	pic0
	b	$L589
	nop

	.option	pic2
$L591:
	lw	$3,24($sp)
	lw	$2,40($sp)
	nop
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,40($sp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
$L590:
	lw	$2,40($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bne	$2,$0,$L591
	nop

	nop
$L589:
	nop
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	lw	$2,0($sp)
	nop
	bgez	$2,$L596
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L596:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	lw	$2,0($sp)
	nop
	bgez	$2,$L598
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L598:
	cvt.s.d	$f0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	nomips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,36($sp)
	sw	$4,32($sp)
	lw	$2,%call16(__floatundidf)($28)
	lw	$5,36($sp)
	lw	$4,32($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	nomips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,36($sp)
	sw	$4,32($sp)
	lw	$2,%call16(__floatundisf)($28)
	lw	$5,36($sp)
	lw	$4,32($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	nop
	bne	$2,$0,1f
	divu	$0,$3,$2
	break	7
1:
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	sh	$2,16($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L607
	nop

	.option	pic2
$L610:
	lhu	$3,16($sp)
	li	$4,15			# 0xf
	lw	$2,8($sp)
	nop
	subu	$2,$4,$2
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L612
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L607:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L610
	nop

	.option	pic0
	b	$L609
	nop

	.option	pic2
$L612:
	nop
$L609:
	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	sh	$2,16($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L614
	nop

	.option	pic2
$L617:
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L619
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L614:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L617
	nop

	.option	pic0
	b	$L616
	nop

	.option	pic2
$L619:
	nop
$L616:
	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
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
	swc1	$f12,0($sp)
	lwc1	$f2,0($sp)
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	c.le.s	$f0,$f2
	nop
	bc1f	$L625
	nop

	lwc1	$f2,0($sp)
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	sub.s	$f0,$f2,$f0
	.set	macro
	trunc.w.s $f0,$f0,$2
	.set	nomacro
	mfc1	$3,$f0
	li	$2,32768			# 0x8000
	addu	$2,$3,$2
	jr	$31
	nop

$L625:
	lwc1	$f0,0($sp)
	nop
	.set	macro
	trunc.w.s $f0,$f0,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	nomips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	sh	$2,16($sp)
	sw	$0,12($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L627
	nop

	.option	pic2
$L629:
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L628
	nop

	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L628:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L627:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L629
	nop

	lw	$2,12($sp)
	nop
	andi	$2,$2,0x1
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	sh	$2,16($sp)
	sw	$0,12($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L632
	nop

	.option	pic2
$L634:
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L633
	nop

	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L633:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L632:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L634
	nop

	lw	$2,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L637
	nop

	.option	pic2
$L639:
	lw	$2,16($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L638
	nop

	lw	$3,8($sp)
	lw	$2,20($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
$L638:
	lw	$2,16($sp)
	nop
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
$L637:
	lw	$2,16($sp)
	nop
	bne	$2,$0,$L639
	nop

	lw	$2,8($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$0,8($sp)
	lw	$2,16($sp)
	nop
	bne	$2,$0,$L644
	nop

	move	$2,$0
	.option	pic0
	b	$L643
	nop

	.option	pic2
$L646:
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L645
	nop

	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
$L645:
	lw	$2,16($sp)
	nop
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L644:
	lw	$2,20($sp)
	nop
	bne	$2,$0,$L646
	nop

	lw	$2,8($sp)
$L643:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	li	$2,1			# 0x1
	sw	$2,8($sp)
	sw	$0,12($sp)
	.option	pic0
	b	$L648
	nop

	.option	pic2
$L650:
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	sw	$2,8($sp)
$L648:
	lw	$3,20($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L651
	nop

	lw	$2,8($sp)
	nop
	beq	$2,$0,$L651
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L650
	nop

	.option	pic0
	b	$L651
	nop

	.option	pic2
$L653:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L652
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	nop
	or	$2,$3,$2
	sw	$2,12($sp)
$L652:
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L651:
	lw	$2,8($sp)
	nop
	bne	$2,$0,$L653
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L654
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L655
	nop

	.option	pic2
$L654:
	lw	$2,12($sp)
$L655:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
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
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L664
	nop

	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L664:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L665
	nop

	li	$2,1			# 0x1
	jr	$31
	nop

$L665:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L674
	nop

	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L674:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L675
	nop

	li	$2,1			# 0x1
	jr	$31
	nop

$L675:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$4,0($sp)
	nop
	move	$7,$4
	sra	$4,$4,31
	move	$6,$4
	lw	$4,4($sp)
	nop
	move	$3,$4
	sra	$4,$4,31
	move	$2,$4
	mult	$6,$3
	mflo	$4
	nop
	nop
	mult	$2,$7
	mflo	$5
	addu	$4,$4,$5
	nop
	multu	$7,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
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
	sw	$4,0($sp)
	sw	$5,4($sp)
	lw	$4,0($sp)
	nop
	move	$7,$4
	move	$6,$0
	lw	$4,4($sp)
	nop
	move	$3,$4
	move	$2,$0
	mult	$6,$3
	mflo	$4
	nop
	nop
	mult	$2,$7
	mflo	$5
	addu	$4,$4,$5
	nop
	multu	$7,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$4,24($sp)
	sw	$5,28($sp)
	sw	$0,12($sp)
	sw	$0,16($sp)
	lw	$2,28($sp)
	nop
	bgez	$2,$L681
	nop

	lw	$2,28($sp)
	nop
	subu	$2,$0,$2
	sw	$2,28($sp)
	li	$2,1			# 0x1
	sw	$2,12($sp)
$L681:
	sb	$0,8($sp)
	.option	pic0
	b	$L682
	nop

	.option	pic2
$L685:
	lw	$2,28($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L683
	nop

	lw	$3,16($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
$L683:
	lw	$2,24($sp)
	nop
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,28($sp)
	nop
	sra	$2,$2,1
	sw	$2,28($sp)
	lb	$2,8($sp)
	nop
	andi	$2,$2,0x00ff
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,8($sp)
$L682:
	lw	$2,28($sp)
	nop
	beq	$2,$0,$L684
	nop

	lbu	$2,8($sp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L685
	nop

$L684:
	lw	$2,12($sp)
	nop
	beq	$2,$0,$L686
	nop

	lw	$2,16($sp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L688
	nop

	.option	pic2
$L686:
	lw	$2,16($sp)
$L688:
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	nomips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$5,44($sp)
	sw	$0,24($sp)
	lw	$2,40($sp)
	nop
	bgez	$2,$L690
	nop

	lw	$2,40($sp)
	nop
	subu	$2,$0,$2
	sw	$2,40($sp)
	lw	$2,24($sp)
	nop
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
$L690:
	lw	$2,44($sp)
	nop
	bgez	$2,$L691
	nop

	lw	$2,44($sp)
	nop
	subu	$2,$0,$2
	sw	$2,44($sp)
	lw	$2,24($sp)
	nop
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
$L691:
	lw	$2,40($sp)
	lw	$3,44($sp)
	move	$6,$0
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	sw	$2,28($sp)
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L692
	nop

	lw	$2,28($sp)
	nop
	subu	$2,$0,$2
	sw	$2,28($sp)
$L692:
	lw	$2,28($sp)
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	nomips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$4,40($sp)
	sw	$5,44($sp)
	sw	$0,24($sp)
	lw	$2,40($sp)
	nop
	bgez	$2,$L695
	nop

	lw	$2,40($sp)
	nop
	subu	$2,$0,$2
	sw	$2,40($sp)
	li	$2,1			# 0x1
	sw	$2,24($sp)
$L695:
	lw	$2,44($sp)
	nop
	bgez	$2,$L696
	nop

	lw	$2,44($sp)
	nop
	subu	$2,$0,$2
	sw	$2,44($sp)
$L696:
	lw	$2,40($sp)
	lw	$3,44($sp)
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	sw	$2,28($sp)
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L697
	nop

	lw	$2,28($sp)
	nop
	subu	$2,$0,$2
	sw	$2,28($sp)
$L697:
	lw	$2,28($sp)
	lw	$31,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	move	$2,$4
	move	$3,$5
	sw	$6,24($sp)
	sh	$2,16($sp)
	move	$2,$3
	sh	$2,20($sp)
	li	$2,1			# 0x1
	sh	$2,8($sp)
	sh	$0,10($sp)
	.option	pic0
	b	$L700
	nop

	.option	pic2
$L702:
	lhu	$2,20($sp)
	nop
	sll	$2,$2,1
	sh	$2,20($sp)
	lhu	$2,8($sp)
	nop
	sll	$2,$2,1
	sh	$2,8($sp)
$L700:
	lhu	$3,20($sp)
	lhu	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L703
	nop

	lhu	$2,8($sp)
	nop
	beq	$2,$0,$L703
	nop

	lh	$2,20($sp)
	nop
	bgez	$2,$L702
	nop

	.option	pic0
	b	$L703
	nop

	.option	pic2
$L705:
	lhu	$3,16($sp)
	lhu	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L704
	nop

	lhu	$3,16($sp)
	lhu	$2,20($sp)
	nop
	subu	$2,$3,$2
	sh	$2,16($sp)
	lhu	$3,10($sp)
	lhu	$2,8($sp)
	nop
	or	$2,$3,$2
	sh	$2,10($sp)
$L704:
	lhu	$2,8($sp)
	nop
	srl	$2,$2,1
	sh	$2,8($sp)
	lhu	$2,20($sp)
	nop
	srl	$2,$2,1
	sh	$2,20($sp)
$L703:
	lhu	$2,8($sp)
	nop
	bne	$2,$0,$L705
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L706
	nop

	lhu	$2,16($sp)
	.option	pic0
	b	$L707
	nop

	.option	pic2
$L706:
	lhu	$2,10($sp)
$L707:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	sw	$5,20($sp)
	sw	$6,24($sp)
	li	$2,1			# 0x1
	sw	$2,8($sp)
	sw	$0,12($sp)
	.option	pic0
	b	$L709
	nop

	.option	pic2
$L711:
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	sw	$2,8($sp)
$L709:
	lw	$3,20($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L712
	nop

	lw	$2,8($sp)
	nop
	beq	$2,$0,$L712
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L711
	nop

	.option	pic0
	b	$L712
	nop

	.option	pic2
$L714:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L713
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	nop
	or	$2,$3,$2
	sw	$2,12($sp)
$L713:
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L712:
	lw	$2,8($sp)
	nop
	bne	$2,$0,$L714
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L715
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L716
	nop

	.option	pic2
$L715:
	lw	$2,12($sp)
$L716:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$5,36($sp)
	sw	$4,32($sp)
	sw	$6,40($sp)
	li	$2,32			# 0x20
	sw	$2,8($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	nop
	and	$2,$3,$2
	beq	$2,$0,$L718
	nop

	sw	$0,28($sp)
	lw	$3,20($sp)
	lw	$4,40($sp)
	lw	$2,8($sp)
	nop
	subu	$2,$4,$2
	sll	$2,$3,$2
	sw	$2,24($sp)
	.option	pic0
	b	$L719
	nop

	.option	pic2
$L718:
	lw	$2,40($sp)
	nop
	bne	$2,$0,$L720
	nop

	lw	$3,36($sp)
	lw	$2,32($sp)
	.option	pic0
	b	$L722
	nop

	.option	pic2
$L720:
	lw	$3,20($sp)
	lw	$2,40($sp)
	nop
	sll	$2,$3,$2
	sw	$2,28($sp)
	lw	$2,16($sp)
	nop
	move	$3,$2
	lw	$2,40($sp)
	nop
	sll	$3,$3,$2
	lw	$4,20($sp)
	lw	$5,8($sp)
	lw	$2,40($sp)
	nop
	subu	$2,$5,$2
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,24($sp)
$L719:
	lw	$3,28($sp)
	lw	$2,24($sp)
$L722:
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$5,36($sp)
	sw	$4,32($sp)
	sw	$6,40($sp)
	li	$2,32			# 0x20
	sw	$2,8($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	nop
	and	$2,$3,$2
	beq	$2,$0,$L724
	nop

	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sra	$2,$3,$2
	sw	$2,24($sp)
	lw	$3,16($sp)
	lw	$4,40($sp)
	lw	$2,8($sp)
	nop
	subu	$2,$4,$2
	sra	$2,$3,$2
	sw	$2,28($sp)
	.option	pic0
	b	$L725
	nop

	.option	pic2
$L724:
	lw	$2,40($sp)
	nop
	bne	$2,$0,$L726
	nop

	lw	$3,36($sp)
	lw	$2,32($sp)
	.option	pic0
	b	$L728
	nop

	.option	pic2
$L726:
	lw	$3,16($sp)
	lw	$2,40($sp)
	nop
	sra	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,16($sp)
	nop
	move	$4,$2
	lw	$3,8($sp)
	lw	$2,40($sp)
	nop
	subu	$2,$3,$2
	sll	$3,$4,$2
	lw	$4,20($sp)
	lw	$2,40($sp)
	nop
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,28($sp)
$L725:
	lw	$3,28($sp)
	lw	$2,24($sp)
$L728:
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,128,$31		# vars= 88, regs= 8/0, args= 0, gp= 8
	.mask	0x00ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-128
	sw	$23,124($sp)
	sw	$22,120($sp)
	sw	$21,116($sp)
	sw	$20,112($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	sw	$17,100($sp)
	sw	$16,96($sp)
	sw	$5,132($sp)
	sw	$4,128($sp)
	lw	$2,128($sp)
	nop
	srl	$13,$2,24
	move	$12,$0
	lw	$2,128($sp)
	nop
	srl	$9,$2,8
	move	$8,$0
	andi	$6,$8,0
	andi	$7,$9,0xff00
	or	$2,$12,$6
	sw	$2,8($sp)
	or	$2,$13,$7
	sw	$2,12($sp)
	lw	$2,128($sp)
	nop
	sll	$3,$2,8
	lw	$2,132($sp)
	nop
	srl	$11,$2,24
	or	$11,$3,$11
	lw	$2,128($sp)
	nop
	srl	$10,$2,24
	andi	$24,$10,0
	li	$2,16711680			# 0xff0000
	and	$25,$11,$2
	lw	$3,12($sp)
	lw	$2,8($sp)
	nop
	move	$4,$2
	or	$4,$4,$24
	sw	$4,16($sp)
	move	$2,$3
	or	$2,$2,$25
	sw	$2,20($sp)
	lw	$2,128($sp)
	nop
	sll	$3,$2,24
	lw	$2,132($sp)
	nop
	srl	$17,$2,8
	or	$17,$3,$17
	lw	$2,128($sp)
	nop
	srl	$16,$2,8
	andi	$2,$16,0
	sw	$2,24($sp)
	li	$2,-16777216			# 0xffffffffff000000
	and	$2,$17,$2
	sw	$2,28($sp)
	lw	$5,20($sp)
	lw	$4,16($sp)
	nop
	move	$6,$4
	lw	$3,28($sp)
	lw	$2,24($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,32($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,36($sp)
	lw	$2,132($sp)
	nop
	srl	$2,$2,24
	lw	$3,128($sp)
	nop
	sll	$18,$3,8
	or	$18,$2,$18
	lw	$2,132($sp)
	nop
	sll	$19,$2,8
	andi	$2,$18,0xff
	sw	$2,40($sp)
	andi	$2,$19,0
	sw	$2,44($sp)
	lw	$5,36($sp)
	lw	$4,32($sp)
	nop
	move	$6,$4
	lw	$3,44($sp)
	lw	$2,40($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,48($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,52($sp)
	lw	$2,132($sp)
	nop
	srl	$2,$2,8
	lw	$3,128($sp)
	nop
	sll	$14,$3,24
	or	$14,$2,$14
	lw	$2,132($sp)
	nop
	sll	$15,$2,24
	andi	$2,$14,0xff00
	sw	$2,56($sp)
	andi	$2,$15,0
	sw	$2,60($sp)
	lw	$5,52($sp)
	lw	$4,48($sp)
	nop
	move	$6,$4
	lw	$3,60($sp)
	lw	$2,56($sp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,64($sp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,68($sp)
	lw	$2,132($sp)
	nop
	sll	$2,$2,8
	sw	$2,72($sp)
	sw	$0,76($sp)
	li	$2,16711680			# 0xff0000
	lw	$5,76($sp)
	lw	$4,72($sp)
	nop
	move	$3,$4
	and	$22,$3,$2
	move	$2,$5
	andi	$23,$2,0
	lw	$3,68($sp)
	lw	$2,64($sp)
	nop
	move	$4,$2
	or	$20,$4,$22
	move	$2,$3
	or	$21,$2,$23
	lw	$2,132($sp)
	nop
	sll	$2,$2,24
	sw	$2,80($sp)
	sw	$0,84($sp)
	lw	$3,84($sp)
	lw	$2,80($sp)
	nop
	move	$4,$2
	or	$4,$20,$4
	sw	$4,88($sp)
	move	$2,$3
	or	$2,$21,$2
	sw	$2,92($sp)
	lw	$3,92($sp)
	lw	$2,88($sp)
	lw	$23,124($sp)
	lw	$22,120($sp)
	lw	$21,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	addiu	$sp,$sp,128
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	srl	$3,$2,24
	lw	$2,0($sp)
	nop
	srl	$2,$2,8
	andi	$2,$2,0xff00
	or	$3,$3,$2
	lw	$2,0($sp)
	nop
	sll	$4,$2,8
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
	or	$3,$3,$2
	lw	$2,0($sp)
	nop
	sll	$2,$2,24
	or	$2,$3,$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$4,24($sp)
	lw	$2,24($sp)
	nop
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,65536			# 0x10000
	sltu	$2,$3,$2
	beq	$2,$0,$L734
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L735
	nop

	.option	pic2
$L734:
	move	$2,$0
$L735:
	sw	$2,12($sp)
	li	$3,16			# 0x10
	lw	$2,12($sp)
	nop
	subu	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xff00
	bne	$2,$0,$L736
	nop

	li	$2,8			# 0x8
	.option	pic0
	b	$L737
	nop

	.option	pic2
$L736:
	move	$2,$0
$L737:
	sw	$2,12($sp)
	li	$3,8			# 0x8
	lw	$2,12($sp)
	nop
	subu	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xf0
	bne	$2,$0,$L738
	nop

	li	$2,4			# 0x4
	.option	pic0
	b	$L739
	nop

	.option	pic2
$L738:
	move	$2,$0
$L739:
	sw	$2,12($sp)
	li	$3,4			# 0x4
	lw	$2,12($sp)
	nop
	subu	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xc
	bne	$2,$0,$L740
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L741
	nop

	.option	pic2
$L740:
	move	$2,$0
$L741:
	sw	$2,12($sp)
	li	$3,2			# 0x2
	lw	$2,12($sp)
	nop
	subu	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0x2
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$4,$2
	li	$3,2			# 0x2
	lw	$2,8($sp)
	nop
	subu	$2,$3,$2
	mult	$4,$2
	lw	$2,16($sp)
	mflo	$3
	addu	$2,$3,$2
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$5,28($sp)
	sw	$4,24($sp)
	sw	$7,36($sp)
	sw	$6,32($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	sw	$3,12($sp)
	sw	$2,8($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	slt	$2,$3,$2
	beq	$2,$0,$L744
	nop

	move	$2,$0
	.option	pic0
	b	$L749
	nop

	.option	pic2
$L744:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	slt	$2,$2,$3
	beq	$2,$0,$L746
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L749
	nop

	.option	pic2
$L746:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L747
	nop

	move	$2,$0
	.option	pic0
	b	$L749
	nop

	.option	pic2
$L747:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L748
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L749
	nop

	.option	pic2
$L748:
	li	$2,1			# 0x1
$L749:
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$5,36($sp)
	sw	$4,32($sp)
	sw	$7,44($sp)
	sw	$6,40($sp)
	lw	$7,44($sp)
	lw	$6,40($sp)
	lw	$5,36($sp)
	lw	$4,32($sp)
	.option	pic0
	jal	__cmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$4,24($sp)
	lw	$2,24($sp)
	nop
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xffff
	bne	$2,$0,$L753
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L754
	nop

	.option	pic2
$L753:
	move	$2,$0
$L754:
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xff
	bne	$2,$0,$L755
	nop

	li	$2,8			# 0x8
	.option	pic0
	b	$L756
	nop

	.option	pic2
$L755:
	move	$2,$0
$L756:
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xf
	bne	$2,$0,$L757
	nop

	li	$2,4			# 0x4
	.option	pic0
	b	$L758
	nop

	.option	pic2
$L757:
	move	$2,$0
$L758:
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0x3
	bne	$2,$0,$L759
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L760
	nop

	.option	pic2
$L759:
	move	$2,$0
$L760:
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0x3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	nop
	nor	$2,$0,$2
	andi	$3,$2,0x1
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	li	$4,2			# 0x2
	subu	$2,$4,$2
	subu	$3,$0,$3
	and	$3,$3,$2
	lw	$2,16($sp)
	nop
	addu	$2,$3,$2
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$5,36($sp)
	sw	$4,32($sp)
	sw	$6,40($sp)
	li	$2,32			# 0x20
	sw	$2,8($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	nop
	and	$2,$3,$2
	beq	$2,$0,$L763
	nop

	sw	$0,24($sp)
	lw	$3,16($sp)
	lw	$4,40($sp)
	lw	$2,8($sp)
	nop
	subu	$2,$4,$2
	srl	$2,$3,$2
	sw	$2,28($sp)
	.option	pic0
	b	$L764
	nop

	.option	pic2
$L763:
	lw	$2,40($sp)
	nop
	bne	$2,$0,$L765
	nop

	lw	$3,36($sp)
	lw	$2,32($sp)
	.option	pic0
	b	$L767
	nop

	.option	pic2
$L765:
	lw	$3,16($sp)
	lw	$2,40($sp)
	nop
	srl	$2,$3,$2
	sw	$2,24($sp)
	lw	$3,16($sp)
	lw	$4,8($sp)
	lw	$2,40($sp)
	nop
	subu	$2,$4,$2
	sll	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,40($sp)
	nop
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,28($sp)
$L764:
	lw	$3,28($sp)
	lw	$2,24($sp)
$L767:
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$4,32($sp)
	sw	$5,36($sp)
	li	$2,16			# 0x10
	sw	$2,8($sp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,12($sp)
	lw	$3,32($sp)
	lw	$2,12($sp)
	nop
	and	$3,$3,$2
	lw	$4,36($sp)
	lw	$2,12($sp)
	nop
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	sw	$2,28($sp)
	lw	$3,28($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$2,12($sp)
	nop
	and	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,32($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$3,$2
	lw	$4,36($sp)
	lw	$2,12($sp)
	nop
	and	$2,$4,$2
	mult	$3,$2
	lw	$2,16($sp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$4,16($sp)
	lw	$2,12($sp)
	nop
	and	$4,$4,$2
	lw	$2,8($sp)
	nop
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,24($sp)
	lw	$3,28($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$2,12($sp)
	nop
	and	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,36($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$3,$2
	lw	$4,32($sp)
	lw	$2,12($sp)
	nop
	and	$2,$4,$2
	mult	$3,$2
	lw	$2,16($sp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$4,16($sp)
	lw	$2,12($sp)
	nop
	and	$4,$4,$2
	lw	$2,8($sp)
	nop
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$2,24($sp)
	nop
	move	$4,$2
	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	move	$5,$2
	lw	$3,32($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$3,$2
	lw	$4,36($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$4,$2
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,24($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,56,$31		# vars= 24, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$5,60($sp)
	sw	$4,56($sp)
	sw	$7,68($sp)
	sw	$6,64($sp)
	lw	$3,60($sp)
	lw	$2,56($sp)
	sw	$3,28($sp)
	sw	$2,24($sp)
	lw	$3,68($sp)
	lw	$2,64($sp)
	sw	$3,36($sp)
	sw	$2,32($sp)
	lw	$2,28($sp)
	lw	$3,36($sp)
	nop
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__muldsi3
	nop

	.option	pic2
	sw	$3,44($sp)
	sw	$2,40($sp)
	lw	$2,40($sp)
	nop
	move	$4,$2
	lw	$2,24($sp)
	nop
	move	$3,$2
	lw	$2,36($sp)
	nop
	mult	$3,$2
	mflo	$2
	lw	$3,28($sp)
	lw	$5,32($sp)
	nop
	mult	$3,$5
	mflo	$3
	addu	$2,$2,$3
	addu	$2,$4,$2
	sw	$2,40($sp)
	lw	$3,44($sp)
	lw	$2,40($sp)
	lw	$31,52($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
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
	sw	$5,4($sp)
	sw	$4,0($sp)
	lw	$7,4($sp)
	lw	$6,0($sp)
	move	$5,$0
	move	$4,$0
	subu	$3,$5,$7
	sltu	$8,$5,$3
	subu	$2,$4,$6
	subu	$4,$2,$8
	move	$2,$4
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$5,28($sp)
	sw	$4,24($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$2,16($sp)
	nop
	move	$3,$2
	lw	$2,20($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,16
	lw	$3,8($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,8
	lw	$3,8($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,4
	lw	$3,8($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	andi	$2,$2,0x1
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,16
	lw	$3,8($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,8
	lw	$3,8($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,4
	lw	$3,8($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	andi	$2,$2,0x1
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$16,28($sp)
	sw	$5,36($sp)
	sw	$4,32($sp)
	lw	$5,36($sp)
	lw	$4,32($sp)
	sw	$5,12($sp)
	sw	$4,8($sp)
	lw	$4,8($sp)
	nop
	sll	$4,$4,31
	lw	$5,12($sp)
	nop
	srl	$9,$5,1
	or	$9,$4,$9
	lw	$4,8($sp)
	nop
	srl	$8,$4,1
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	and	$14,$8,$4
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	and	$15,$9,$4
	lw	$9,12($sp)
	lw	$8,8($sp)
	subu	$5,$9,$15
	sltu	$16,$9,$5
	subu	$4,$8,$14
	subu	$8,$4,$16
	move	$4,$8
	sw	$5,12($sp)
	sw	$4,8($sp)
	lw	$4,8($sp)
	nop
	sll	$4,$4,30
	lw	$5,12($sp)
	nop
	srl	$7,$5,2
	or	$7,$4,$7
	lw	$4,8($sp)
	nop
	srl	$6,$4,2
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$10,$6,$4
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$11,$7,$4
	lw	$5,8($sp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$12,$5,$4
	lw	$5,12($sp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$13,$5,$4
	addu	$5,$11,$13
	sltu	$6,$5,$11
	addu	$4,$10,$12
	addu	$6,$6,$4
	move	$4,$6
	sw	$5,12($sp)
	sw	$4,8($sp)
	lw	$4,8($sp)
	nop
	sll	$4,$4,28
	lw	$5,12($sp)
	nop
	srl	$3,$5,4
	or	$3,$4,$3
	lw	$4,8($sp)
	nop
	srl	$2,$4,4
	lw	$7,12($sp)
	lw	$6,8($sp)
	addu	$5,$3,$7
	sltu	$8,$5,$3
	addu	$4,$2,$6
	addu	$2,$8,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	and	$4,$2,$4
	sw	$4,8($sp)
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	and	$2,$3,$4
	sw	$2,12($sp)
	lw	$2,12($sp)
	lw	$3,8($sp)
	nop
	srl	$25,$3,0
	move	$24,$0
	move	$3,$25
	addu	$2,$2,$3
	sw	$2,16($sp)
	lw	$2,16($sp)
	nop
	srl	$2,$2,16
	lw	$3,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	nop
	srl	$3,$2,8
	lw	$2,16($sp)
	nop
	addu	$2,$3,$2
	andi	$2,$2,0x7f
	lw	$16,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	nop
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$2,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	and	$2,$3,$2
	lw	$3,8($sp)
	nop
	subu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$2,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$3,$3,$2
	lw	$4,8($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$2,4
	lw	$2,8($sp)
	nop
	addu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$2,16
	lw	$3,8($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	srl	$3,$2,8
	lw	$2,8($sp)
	nop
	addu	$2,$3,$2
	andi	$2,$2,0x3f
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	swc1	$f12,28($sp)
	swc1	$f13,24($sp)
	sw	$6,32($sp)
	lw	$2,32($sp)
	nop
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,16($sp)
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L786:
	lw	$2,32($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L783
	nop

	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,28($sp)
	nop
	lwc1	$f1,24($sp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L783:
	lw	$2,32($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	nop
	beq	$2,$0,$L791
	nop

	lwc1	$f0,28($sp)
	nop
	lwc1	$f1,24($sp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,28($sp)
	swc1	$f1,24($sp)
	.option	pic0
	b	$L786
	nop

	.option	pic2
$L791:
	nop
	lw	$2,16($sp)
	nop
	beq	$2,$0,$L787
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	lui	$2,%hi($LC8)
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
	.option	pic0
	b	$L789
	nop

	.option	pic2
$L787:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
$L789:
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.set	nomips16
	.set	nomicromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,16($sp)
	sw	$5,20($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,12($sp)
	lui	$2,%hi($LC11)
	lwc1	$f0,%lo($LC11)($2)
	nop
	swc1	$f0,8($sp)
$L796:
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L793
	nop

	lwc1	$f2,8($sp)
	lwc1	$f0,16($sp)
	nop
	mul.s	$f0,$f2,$f0
	swc1	$f0,8($sp)
$L793:
	lw	$2,20($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	nop
	beq	$2,$0,$L801
	nop

	lwc1	$f0,16($sp)
	nop
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	.option	pic0
	b	$L796
	nop

	.option	pic2
$L801:
	nop
	lw	$2,12($sp)
	nop
	beq	$2,$0,$L797
	nop

	lwc1	$f0,8($sp)
	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
	.option	pic0
	b	$L799
	nop

	.option	pic2
$L797:
	lwc1	$f0,8($sp)
$L799:
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$5,28($sp)
	sw	$4,24($sp)
	sw	$7,36($sp)
	sw	$6,32($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	sw	$3,12($sp)
	sw	$2,8($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L803
	nop

	move	$2,$0
	.option	pic0
	b	$L808
	nop

	.option	pic2
$L803:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L805
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L808
	nop

	.option	pic2
$L805:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L806
	nop

	move	$2,$0
	.option	pic0
	b	$L808
	nop

	.option	pic2
$L806:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L807
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L808
	nop

	.option	pic2
$L807:
	li	$2,1			# 0x1
$L808:
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$5,36($sp)
	sw	$4,32($sp)
	sw	$7,44($sp)
	sw	$6,40($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	lw	$5,44($sp)
	lw	$4,40($sp)
	lw	$7,44($sp)
	lw	$6,40($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__ucmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
$LC0:
	.word	-8388609
	.align	2
$LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC2:
	.word	-1048577
	.word	-1
	.align	3
$LC3:
	.word	2146435071
	.word	-1
	.section	.rodata.cst4
	.align	2
$LC4:
	.word	1056964608
	.align	2
$LC5:
	.word	1073741824
	.section	.rodata.cst8
	.align	3
$LC6:
	.word	1071644672
	.word	0
	.align	3
$LC7:
	.word	1073741824
	.word	0
	.align	3
$LC8:
	.word	1072693248
	.word	0
	.align	3
$LC9:
	.word	1106247680
	.word	0
	.section	.rodata.cst4
	.align	2
$LC10:
	.word	1191182336
	.align	2
$LC11:
	.word	1065353216
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
