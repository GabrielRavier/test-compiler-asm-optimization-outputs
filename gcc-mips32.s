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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L2
	nop

	lw	$3,12($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	sw	$2,8($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lw	$2,12($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	lb	$3,0($2)
	lw	$2,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L3:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L4
	nop

	.option	pic0
	b	$L5
	nop

	.option	pic2
$L2:
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	beq	$3,$2,$L5
	nop

	.option	pic0
	b	$L6
	nop

	.option	pic2
$L7:
	lw	$3,12($fp)
	nop
	addiu	$2,$3,1
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	addiu	$4,$2,1
	sw	$4,8($fp)
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L6:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L7
	nop

$L5:
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lw	$2,32($fp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,32($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L12:
	lw	$2,36($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,36($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L10:
	lw	$2,36($fp)
	nop
	beq	$2,$0,$L11
	nop

	lw	$2,12($fp)
	nop
	lbu	$3,0($2)
	lw	$2,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,32($fp)
	nop
	bne	$2,$3,$L12
	nop

$L11:
	lw	$2,36($fp)
	nop
	beq	$2,$0,$L13
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	.option	pic0
	b	$L14
	nop

	.option	pic2
$L13:
	move	$2,$0
$L14:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,28($fp)
	.option	pic0
	b	$L16
	nop

	.option	pic2
$L18:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L16:
	lw	$2,32($fp)
	nop
	beq	$2,$0,$L17
	nop

	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,28($fp)
	nop
	bne	$2,$3,$L18
	nop

$L17:
	lw	$2,32($fp)
	nop
	beq	$2,$0,$L19
	nop

	lw	$2,8($fp)
	.option	pic0
	b	$L21
	nop

	.option	pic2
$L19:
	move	$2,$0
$L21:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	.option	pic0
	b	$L23
	nop

	.option	pic2
$L25:
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L23:
	lw	$2,32($fp)
	nop
	beq	$2,$0,$L24
	nop

	lw	$2,8($fp)
	nop
	lbu	$3,0($2)
	lw	$2,12($fp)
	nop
	lbu	$2,0($2)
	nop
	beq	$3,$2,$L25
	nop

$L24:
	lw	$2,32($fp)
	nop
	beq	$2,$0,$L26
	nop

	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,12($fp)
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
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L31:
	lw	$3,12($fp)
	nop
	addiu	$2,$3,1
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	addiu	$4,$2,1
	sw	$4,8($fp)
	lbu	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L30:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L31
	nop

	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,28($fp)
	.option	pic0
	b	$L34
	nop

	.option	pic2
$L36:
	lw	$3,8($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,28($fp)
	nop
	bne	$2,$3,$L34
	nop

	lw	$3,8($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	.option	pic0
	b	$L35
	nop

	.option	pic2
$L34:
	lw	$2,32($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($fp)
	bne	$2,$0,$L36
	nop

	move	$2,$0
$L35:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	.option	pic0
	b	$L38
	nop

	.option	pic2
$L39:
	lw	$2,28($fp)
	nop
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L38:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L39
	nop

	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	.option	pic0
	b	$L42
	nop

	.option	pic2
$L43:
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L42:
	lw	$2,12($fp)
	nop
	lb	$3,0($2)
	lw	$2,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,8($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L43
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$2,12($fp)
	nop
	andi	$2,$2,0x00ff
	sw	$2,12($fp)
	.option	pic0
	b	$L46
	nop

	.option	pic2
$L48:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L46:
	lw	$2,8($fp)
	nop
	lb	$2,0($2)
	nop
	beq	$2,$0,$L47
	nop

	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,12($fp)
	nop
	bne	$2,$3,$L48
	nop

$L47:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,12($fp)
$L53:
	lb	$3,0($2)
	nop
	move	$4,$3
	lw	$3,12($fp)
	nop
	bne	$3,$4,$L51
	nop

	.option	pic0
	b	$L52
	nop

	.option	pic2
$L51:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	nop
	bne	$3,$0,$L53
	nop

	move	$2,$0
$L52:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	.option	pic0
	b	$L55
	nop

	.option	pic2
$L57:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L55:
	lw	$2,8($fp)
	nop
	lb	$3,0($2)
	lw	$2,12($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L56
	nop

	lw	$2,8($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L57
	nop

$L56:
	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,12($fp)
	nop
	lbu	$2,0($2)
	nop
	subu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	.option	pic0
	b	$L60
	nop

	.option	pic2
$L61:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L60:
	lw	$2,24($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L61
	nop

	lw	$3,24($fp)
	lw	$2,8($fp)
	nop
	subu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lw	$2,32($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($fp)
	bne	$2,$0,$L66
	nop

	move	$2,$0
	.option	pic0
	b	$L65
	nop

	.option	pic2
$L68:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L66:
	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L67
	nop

	lw	$2,12($fp)
	nop
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L67
	nop

	lw	$2,32($fp)
	nop
	beq	$2,$0,$L67
	nop

	lw	$2,8($fp)
	nop
	lbu	$3,0($2)
	lw	$2,12($fp)
	nop
	lbu	$2,0($2)
	nop
	beq	$3,$2,$L68
	nop

$L67:
	lw	$2,8($fp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,12($fp)
	nop
	lbu	$2,0($2)
	nop
	subu	$2,$3,$2
$L65:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	.option	pic0
	b	$L70
	nop

	.option	pic2
$L71:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	lb	$3,0($2)
	lw	$2,12($fp)
	nop
	sb	$3,0($2)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	lw	$3,8($fp)
	nop
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,2
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,2
	sw	$2,8($fp)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-2
	sw	$2,32($fp)
$L70:
	lw	$2,32($fp)
	nop
	slt	$2,$2,2
	beq	$2,$0,$L71
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	sltu	$2,$2,128
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$3,8($fp)
	li	$2,32			# 0x20
	beq	$3,$2,$L77
	nop

	lw	$3,8($fp)
	li	$2,9			# 0x9
	bne	$3,$2,$L78
	nop

$L77:
	li	$2,1			# 0x1
	.option	pic0
	b	$L80
	nop

	.option	pic2
$L78:
	move	$2,$0
$L80:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L82
	nop

	lw	$3,8($fp)
	li	$2,127			# 0x7f
	bne	$3,$2,$L83
	nop

$L82:
	li	$2,1			# 0x1
	.option	pic0
	b	$L85
	nop

	.option	pic2
$L83:
	move	$2,$0
$L85:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-33
	sltu	$2,$2,94
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-32
	sltu	$2,$2,95
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$3,8($fp)
	li	$2,32			# 0x20
	beq	$3,$2,$L95
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beq	$2,$0,$L96
	nop

$L95:
	li	$2,1			# 0x1
	.option	pic0
	b	$L98
	nop

	.option	pic2
$L96:
	move	$2,$0
$L98:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-65
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L102
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bne	$2,$0,$L102
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L102
	nop

	lw	$3,8($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beq	$2,$0,$L103
	nop

$L102:
	li	$2,1			# 0x1
	.option	pic0
	b	$L105
	nop

	.option	pic2
$L103:
	move	$2,$0
$L105:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	sltu	$2,$2,255
	beq	$2,$0,$L109
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L110
	nop

	.option	pic2
$L109:
	lw	$2,8($fp)
	nop
	sltu	$2,$2,8232
	bne	$2,$0,$L111
	nop

	lw	$2,8($fp)
	nop
	addiu	$3,$2,-8234
	li	$2,47062			# 0xb7d6
	sltu	$2,$3,$2
	bne	$2,$0,$L111
	nop

	lw	$3,8($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beq	$2,$0,$L112
	nop

$L111:
	li	$2,1			# 0x1
	.option	pic0
	b	$L110
	nop

	.option	pic2
$L112:
	lw	$3,8($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$3,$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beq	$2,$0,$L113
	nop

	lw	$2,8($fp)
	nop
	andi	$3,$2,0xfffe
	li	$2,65534			# 0xfffe
	bne	$3,$2,$L114
	nop

$L113:
	move	$2,$0
	.option	pic0
	b	$L110
	nop

	.option	pic2
$L114:
	li	$2,1			# 0x1
$L110:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L116
	nop

	lw	$2,8($fp)
	nop
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beq	$2,$0,$L117
	nop

$L116:
	li	$2,1			# 0x1
	.option	pic0
	b	$L119
	nop

	.option	pic2
$L117:
	move	$2,$0
$L119:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0x7f
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L123
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L124
	nop

	.option	pic2
$L123:
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L125
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L124
	nop

	.option	pic2
$L125:
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L130
	nop

	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	sub.d	$f0,$f2,$f0
	.option	pic0
	b	$L124
	nop

	.option	pic2
$L130:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
$L124:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	swc1	$f14,12($fp)
	lwc1	$f2,8($fp)
	lwc1	$f0,8($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L132
	nop

	lwc1	$f0,8($fp)
	.option	pic0
	b	$L133
	nop

	.option	pic2
$L132:
	lwc1	$f2,12($fp)
	lwc1	$f0,12($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L134
	nop

	lwc1	$f0,12($fp)
	.option	pic0
	b	$L133
	nop

	.option	pic2
$L134:
	lwc1	$f2,8($fp)
	lwc1	$f0,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L139
	nop

	lwc1	$f2,8($fp)
	lwc1	$f0,12($fp)
	nop
	sub.s	$f0,$f2,$f0
	.option	pic0
	b	$L133
	nop

	.option	pic2
$L139:
	mtc1	$0,$f0
$L133:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L141
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L142
	nop

	.option	pic2
$L141:
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L143
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L142
	nop

	.option	pic2
$L143:
	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,16($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L144
	nop

	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L145
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L142
	nop

	.option	pic2
$L145:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L142
	nop

	.option	pic2
$L144:
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L151
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L142
	nop

	.option	pic2
$L151:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L142:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	swc1	$f14,12($fp)
	lwc1	$f2,8($fp)
	lwc1	$f0,8($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L153
	nop

	lwc1	$f0,12($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L153:
	lwc1	$f2,12($fp)
	lwc1	$f0,12($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L155
	nop

	lwc1	$f0,8($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L155:
	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,12($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L156
	nop

	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L157
	nop

	lwc1	$f0,12($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L157:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L156:
	lwc1	$f2,8($fp)
	lwc1	$f0,12($fp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L163
	nop

	lwc1	$f0,12($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L163:
	lwc1	$f0,8($fp)
$L154:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L165
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L165:
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L167
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L167:
	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,16($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L168
	nop

	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L169
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L169:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L168:
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L175
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L175:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L166:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L177
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L177:
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L179
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L179:
	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,16($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L180
	nop

	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L181
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L181:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L180:
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L187
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L187:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L178:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	swc1	$f14,12($fp)
	lwc1	$f2,8($fp)
	lwc1	$f0,8($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L189
	nop

	lwc1	$f0,12($fp)
	.option	pic0
	b	$L190
	nop

	.option	pic2
$L189:
	lwc1	$f2,12($fp)
	lwc1	$f0,12($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L191
	nop

	lwc1	$f0,8($fp)
	.option	pic0
	b	$L190
	nop

	.option	pic2
$L191:
	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,12($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L192
	nop

	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L193
	nop

	lwc1	$f0,8($fp)
	.option	pic0
	b	$L190
	nop

	.option	pic2
$L193:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L190
	nop

	.option	pic2
$L192:
	lwc1	$f2,8($fp)
	lwc1	$f0,12($fp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L199
	nop

	lwc1	$f0,8($fp)
	.option	pic0
	b	$L190
	nop

	.option	pic2
$L199:
	lwc1	$f0,12($fp)
$L190:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L201
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L202
	nop

	.option	pic2
$L201:
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L203
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L202
	nop

	.option	pic2
$L203:
	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,16($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L204
	nop

	lw	$3,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L205
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L202
	nop

	.option	pic2
$L205:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L202
	nop

	.option	pic2
$L204:
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L211
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L202
	nop

	.option	pic2
$L211:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L202:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	nop
	sw	$2,12($fp)
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	sw	$2,8($fp)
	.option	pic0
	b	$L213
	nop

	.option	pic2
$L214:
	lw	$2,12($fp)
	nop
	andi	$3,$2,0x3f
	lui	$2,%hi(digits)
	addiu	$2,$2,%lo(digits)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$2,6
	sw	$2,12($fp)
$L213:
	lw	$2,12($fp)
	nop
	bne	$2,$0,$L214
	nop

	lw	$2,8($fp)
	nop
	sb	$0,0($2)
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$4,8($fp)
	nop
	addiu	$4,$4,-1
	move	$3,$4
	move	$2,$0
	lui	$4,%hi(seed)
	sw	$3,%lo(seed+4)($4)
	sw	$2,%lo(seed)($4)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
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
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lw	$2,12($fp)
	nop
	bne	$2,$0,$L220
	nop

	lw	$2,8($fp)
	nop
	sw	$0,4($2)
	lw	$2,8($fp)
	nop
	lw	$3,4($2)
	lw	$2,8($fp)
	nop
	sw	$3,0($2)
	.option	pic0
	b	$L219
	nop

	.option	pic2
$L220:
	lw	$2,12($fp)
	nop
	lw	$3,0($2)
	lw	$2,8($fp)
	nop
	sw	$3,0($2)
	lw	$2,8($fp)
	lw	$3,12($fp)
	nop
	sw	$3,4($2)
	lw	$2,12($fp)
	lw	$3,8($fp)
	nop
	sw	$3,0($2)
	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L219
	nop

	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	lw	$3,8($fp)
	nop
	sw	$3,4($2)
$L219:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L223
	nop

	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	lw	$3,8($fp)
	nop
	lw	$3,4($3)
	nop
	sw	$3,4($2)
$L223:
	lw	$2,8($fp)
	nop
	lw	$2,4($2)
	nop
	beq	$2,$0,$L225
	nop

	lw	$2,8($fp)
	nop
	lw	$2,4($2)
	lw	$3,8($fp)
	nop
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L225:
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,56,$31		# vars= 16, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$16,44($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$16,68($fp)
	nop
	move	$4,$16
	addiu	$4,$4,-1
	sw	$4,28($fp)
	move	$9,$16
	move	$8,$0
	srl	$4,$9,29
	sll	$2,$8,3
	or	$2,$4,$2
	sll	$3,$9,3
	lw	$2,60($fp)
	nop
	sw	$2,32($fp)
	lw	$2,64($fp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,36($fp)
	sw	$0,24($fp)
	.option	pic0
	b	$L227
	nop

	.option	pic2
$L230:
	lw	$2,24($fp)
	nop
	mult	$16,$2
	lw	$2,32($fp)
	mflo	$3
	addu	$3,$2,$3
	lw	$2,72($fp)
	move	$5,$3
	lw	$4,56($fp)
	move	$25,$2
	jalr	$25
	nop

	bne	$2,$0,$L228
	nop

	lw	$2,24($fp)
	nop
	mult	$16,$2
	lw	$2,32($fp)
	mflo	$3
	addu	$2,$2,$3
	.option	pic0
	b	$L229
	nop

	.option	pic2
$L228:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L227:
	lw	$3,24($fp)
	lw	$2,36($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L230
	nop

	lw	$2,36($fp)
	nop
	addiu	$3,$2,1
	lw	$2,64($fp)
	nop
	sw	$3,0($2)
	lw	$2,36($fp)
	nop
	mult	$16,$2
	lw	$2,32($fp)
	mflo	$3
	addu	$2,$2,$3
	lw	$6,68($fp)
	lw	$5,56($fp)
	move	$4,$2
	.option	pic0
	jal	memcpy
	nop

	.option	pic2
$L229:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$16,44($sp)
	addiu	$sp,$sp,56
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
	.frame	$fp,56,$31		# vars= 16, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$16,44($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$16,68($fp)
	nop
	move	$4,$16
	addiu	$4,$4,-1
	sw	$4,28($fp)
	move	$9,$16
	move	$8,$0
	srl	$4,$9,29
	sll	$2,$8,3
	or	$2,$4,$2
	sll	$3,$9,3
	lw	$2,60($fp)
	nop
	sw	$2,32($fp)
	lw	$2,64($fp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,36($fp)
	sw	$0,24($fp)
	.option	pic0
	b	$L232
	nop

	.option	pic2
$L235:
	lw	$2,24($fp)
	nop
	mult	$16,$2
	lw	$2,32($fp)
	mflo	$3
	addu	$3,$2,$3
	lw	$2,72($fp)
	move	$5,$3
	lw	$4,56($fp)
	move	$25,$2
	jalr	$25
	nop

	bne	$2,$0,$L233
	nop

	lw	$2,24($fp)
	nop
	mult	$16,$2
	lw	$2,32($fp)
	mflo	$3
	addu	$2,$2,$3
	.option	pic0
	b	$L234
	nop

	.option	pic2
$L233:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L232:
	lw	$3,24($fp)
	lw	$2,36($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L235
	nop

	move	$2,$0
$L234:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$16,44($sp)
	addiu	$sp,$sp,56
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	bgez	$2,$L237
	nop

	subu	$2,$0,$2
$L237:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$0,24($fp)
	sw	$0,28($fp)
	.option	pic0
	b	$L240
	nop

	.option	pic2
$L241:
	lw	$2,40($fp)
	nop
	addiu	$2,$2,1
	sw	$2,40($fp)
$L240:
	lw	$2,40($fp)
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

	lw	$2,40($fp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L242
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L244
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
$L242:
	lw	$2,40($fp)
	nop
	addiu	$2,$2,1
	sw	$2,40($fp)
	.option	pic0
	b	$L244
	nop

	.option	pic2
$L245:
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,40($fp)
	nop
	addiu	$3,$2,1
	sw	$3,40($fp)
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	subu	$2,$4,$2
	sw	$2,24($fp)
$L244:
	lw	$2,40($fp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L245
	nop

	lw	$2,28($fp)
	nop
	bne	$2,$0,$L246
	nop

	lw	$2,24($fp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L248
	nop

	.option	pic2
$L246:
	lw	$2,24($fp)
$L248:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$0,24($fp)
	sw	$0,28($fp)
	.option	pic0
	b	$L250
	nop

	.option	pic2
$L251:
	lw	$2,40($fp)
	nop
	addiu	$2,$2,1
	sw	$2,40($fp)
$L250:
	lw	$2,40($fp)
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

	lw	$2,40($fp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L252
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L254
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
$L252:
	lw	$2,40($fp)
	nop
	addiu	$2,$2,1
	sw	$2,40($fp)
	.option	pic0
	b	$L254
	nop

	.option	pic2
$L255:
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,40($fp)
	nop
	addiu	$3,$2,1
	sw	$3,40($fp)
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	subu	$2,$4,$2
	sw	$2,24($fp)
$L254:
	lw	$2,40($fp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L255
	nop

	lw	$2,28($fp)
	nop
	bne	$2,$0,$L256
	nop

	lw	$2,24($fp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L258
	nop

	.option	pic2
$L256:
	lw	$2,24($fp)
$L258:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,72,$31		# vars= 16, regs= 8/0, args= 16, gp= 8
	.mask	0xc03f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$21,60($sp)
	sw	$20,56($sp)
	sw	$19,52($sp)
	sw	$18,48($sp)
	sw	$17,44($sp)
	sw	$16,40($sp)
	move	$fp,$sp
	sw	$4,72($fp)
	move	$3,$0
	move	$2,$0
	sw	$3,28($fp)
	sw	$2,24($fp)
	sw	$0,32($fp)
	.option	pic0
	b	$L260
	nop

	.option	pic2
$L261:
	lw	$2,72($fp)
	nop
	addiu	$2,$2,1
	sw	$2,72($fp)
$L260:
	lw	$2,72($fp)
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

	lw	$2,72($fp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L262
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L264
	nop

	li	$2,1			# 0x1
	sw	$2,32($fp)
$L262:
	lw	$2,72($fp)
	nop
	addiu	$2,$2,1
	sw	$2,72($fp)
	.option	pic0
	b	$L264
	nop

	.option	pic2
$L265:
	lw	$7,28($fp)
	lw	$6,24($fp)
	lw	$3,28($fp)
	lw	$2,24($fp)
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
	lw	$2,72($fp)
	nop
	addiu	$3,$2,1
	sw	$3,72($fp)
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
	sw	$3,28($fp)
	sw	$2,24($fp)
$L264:
	lw	$2,72($fp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L265
	nop

	lw	$2,32($fp)
	nop
	bne	$2,$0,$L266
	nop

	move	$5,$0
	move	$4,$0
	lw	$7,28($fp)
	lw	$6,24($fp)
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
	lw	$3,28($fp)
	lw	$2,24($fp)
$L268:
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$21,60($sp)
	lw	$20,56($sp)
	lw	$19,52($sp)
	lw	$18,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L274:
	lw	$2,48($fp)
	nop
	srl	$3,$2,1
	lw	$2,52($fp)
	nop
	mult	$3,$2
	lw	$2,44($fp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,24($fp)
	lw	$2,56($fp)
	lw	$5,24($fp)
	lw	$4,40($fp)
	move	$25,$2
	jalr	$25
	nop

	sw	$2,28($fp)
	lw	$2,28($fp)
	nop
	bgez	$2,$L271
	nop

	lw	$2,48($fp)
	nop
	srl	$2,$2,1
	sw	$2,48($fp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L271:
	lw	$2,28($fp)
	nop
	blez	$2,$L272
	nop

	lw	$3,24($fp)
	lw	$2,52($fp)
	nop
	addu	$2,$3,$2
	sw	$2,44($fp)
	lw	$2,48($fp)
	nop
	srl	$2,$2,1
	lw	$3,48($fp)
	nop
	subu	$2,$3,$2
	addiu	$2,$2,-1
	sw	$2,48($fp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L272:
	lw	$2,24($fp)
	.option	pic0
	b	$L273
	nop

	.option	pic2
$L270:
	lw	$2,48($fp)
	nop
	bne	$2,$0,$L274
	nop

	move	$2,$0
$L273:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	lw	$2,52($fp)
	nop
	sw	$2,24($fp)
	lw	$2,56($fp)
	nop
	sw	$2,28($fp)
	.option	pic0
	b	$L276
	nop

	.option	pic2
$L280:
	lw	$2,28($fp)
	nop
	sra	$2,$2,1
	move	$3,$2
	lw	$2,60($fp)
	nop
	mult	$3,$2
	lw	$2,24($fp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,32($fp)
	lw	$2,64($fp)
	lw	$6,68($fp)
	lw	$5,32($fp)
	lw	$4,48($fp)
	move	$25,$2
	jalr	$25
	nop

	sw	$2,36($fp)
	lw	$2,36($fp)
	nop
	bne	$2,$0,$L277
	nop

	lw	$2,32($fp)
	.option	pic0
	b	$L278
	nop

	.option	pic2
$L277:
	lw	$2,36($fp)
	nop
	blez	$2,$L279
	nop

	lw	$3,32($fp)
	lw	$2,60($fp)
	nop
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,28($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,28($fp)
$L279:
	lw	$2,28($fp)
	nop
	sra	$2,$2,1
	sw	$2,28($fp)
$L276:
	lw	$2,28($fp)
	nop
	bne	$2,$0,$L280
	nop

	move	$2,$0
$L278:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$3,28($fp)
	lw	$2,32($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	mflo	$4
	lw	$3,28($fp)
	lw	$2,32($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,24($fp)
	nop
	sw	$4,0($2)
	lw	$2,24($fp)
	nop
	sw	$3,4($2)
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$5,12($fp)
	sw	$4,8($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	bgez	$2,$L284
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
$L284:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,56,$31		# vars= 16, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$17,44($sp)
	sw	$16,40($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($fp)
	sw	$7,68($fp)
	sw	$6,64($fp)
	lw	$2,%call16(__divdi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	lw	$5,68($fp)
	lw	$4,64($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$3
	move	$16,$2
	lw	$3,68($fp)
	lw	$2,64($fp)
	lw	$8,%call16(__moddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,56($fp)
	nop
	sw	$17,4($4)
	sw	$16,0($4)
	lw	$4,56($fp)
	nop
	sw	$3,12($4)
	sw	$2,8($4)
	lw	$2,56($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	bgez	$2,$L290
	nop

	subu	$2,$0,$2
$L290:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$3,28($fp)
	lw	$2,32($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	mflo	$4
	lw	$3,28($fp)
	lw	$2,32($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,24($fp)
	nop
	sw	$4,0($2)
	lw	$2,24($fp)
	nop
	sw	$3,4($2)
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$5,12($fp)
	sw	$4,8($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	bgez	$2,$L295
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
$L295:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,56,$31		# vars= 16, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$17,44($sp)
	sw	$16,40($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($fp)
	sw	$7,68($fp)
	sw	$6,64($fp)
	lw	$2,%call16(__divdi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	lw	$5,68($fp)
	lw	$4,64($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$3
	move	$16,$2
	lw	$3,68($fp)
	lw	$2,64($fp)
	lw	$8,%call16(__moddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,56($fp)
	nop
	sw	$17,4($4)
	sw	$16,0($4)
	lw	$4,56($fp)
	nop
	sw	$3,12($4)
	sw	$2,8($4)
	lw	$2,56($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	.option	pic0
	b	$L301
	nop

	.option	pic2
$L303:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,4
	sw	$2,8($fp)
$L301:
	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L302
	nop

	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	lw	$3,12($fp)
	nop
	bne	$3,$2,$L303
	nop

$L302:
	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L304
	nop

	lw	$2,8($fp)
	.option	pic0
	b	$L306
	nop

	.option	pic2
$L304:
	move	$2,$0
$L306:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	.option	pic0
	b	$L308
	nop

	.option	pic2
$L310:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,4
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,4
	sw	$2,12($fp)
$L308:
	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$3,$2,$L309
	nop

	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L309
	nop

	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L310
	nop

$L309:
	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L311
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L313
	nop

	.option	pic2
$L311:
	li	$2,-1			# 0xffffffffffffffff
$L313:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	nop
$L315:
	lw	$3,28($fp)
	nop
	addiu	$2,$3,4
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	addiu	$4,$2,4
	sw	$4,24($fp)
	lw	$3,0($3)
	nop
	sw	$3,0($2)
	lw	$2,0($2)
	nop
	bne	$2,$0,$L315
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	.option	pic0
	b	$L318
	nop

	.option	pic2
$L319:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,4
	sw	$2,24($fp)
$L318:
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L319
	nop

	lw	$3,24($fp)
	lw	$2,8($fp)
	nop
	subu	$2,$3,$2
	sra	$2,$2,2
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	.option	pic0
	b	$L322
	nop

	.option	pic2
$L324:
	lw	$2,16($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,4
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,4
	sw	$2,12($fp)
$L322:
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L323
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$3,$2,$L323
	nop

	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L323
	nop

	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L324
	nop

$L323:
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L325
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L326
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L329
	nop

	.option	pic2
$L326:
	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L329
	nop

	.option	pic2
$L325:
	move	$2,$0
$L329:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	.option	pic0
	b	$L331
	nop

	.option	pic2
$L333:
	lw	$2,16($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,4
	sw	$2,8($fp)
$L331:
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L332
	nop

	lw	$2,8($fp)
	nop
	lw	$2,0($2)
	lw	$3,12($fp)
	nop
	bne	$3,$2,$L333
	nop

$L332:
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L334
	nop

	lw	$2,8($fp)
	.option	pic0
	b	$L336
	nop

	.option	pic2
$L334:
	move	$2,$0
$L336:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	.option	pic0
	b	$L338
	nop

	.option	pic2
$L340:
	lw	$2,16($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,4
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,4
	sw	$2,12($fp)
$L338:
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L339
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	beq	$3,$2,$L340
	nop

$L339:
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L341
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L342
	nop

	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L345
	nop

	.option	pic2
$L342:
	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L345
	nop

	.option	pic2
$L341:
	move	$2,$0
$L345:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	.option	pic0
	b	$L347
	nop

	.option	pic2
$L348:
	lw	$3,28($fp)
	nop
	addiu	$2,$3,4
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	addiu	$4,$2,4
	sw	$4,24($fp)
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L347:
	lw	$2,32($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($fp)
	bne	$2,$0,$L348
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	bne	$3,$2,$L351
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L352
	nop

	.option	pic2
$L351:
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	subu	$3,$3,$2
	lw	$2,32($fp)
	nop
	sll	$2,$2,2
	sltu	$2,$3,$2
	beq	$2,$0,$L357
	nop

	.option	pic0
	b	$L354
	nop

	.option	pic2
$L355:
	lw	$2,32($fp)
	nop
	sll	$2,$2,2
	lw	$3,28($fp)
	nop
	addu	$3,$3,$2
	lw	$2,32($fp)
	nop
	sll	$2,$2,2
	lw	$4,24($fp)
	nop
	addu	$2,$4,$2
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L354:
	lw	$2,32($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($fp)
	bne	$2,$0,$L355
	nop

	.option	pic0
	b	$L356
	nop

	.option	pic2
$L358:
	lw	$3,28($fp)
	nop
	addiu	$2,$3,4
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	addiu	$4,$2,4
	sw	$4,24($fp)
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L357:
	lw	$2,32($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($fp)
	bne	$2,$0,$L358
	nop

$L356:
	lw	$2,8($fp)
$L352:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	.option	pic0
	b	$L360
	nop

	.option	pic2
$L361:
	lw	$2,24($fp)
	nop
	addiu	$3,$2,4
	sw	$3,24($fp)
	lw	$3,28($fp)
	nop
	sw	$3,0($2)
$L360:
	lw	$2,32($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($fp)
	bne	$2,$0,$L361
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L364
	nop

	lw	$3,8($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,12($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	sw	$2,12($fp)
	.option	pic0
	b	$L365
	nop

	.option	pic2
$L366:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,12($fp)
	lw	$2,8($fp)
	nop
	lb	$3,0($2)
	lw	$2,12($fp)
	nop
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L365:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L366
	nop

	.option	pic0
	b	$L370
	nop

	.option	pic2
$L364:
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	beq	$3,$2,$L370
	nop

	.option	pic0
	b	$L368
	nop

	.option	pic2
$L369:
	lw	$3,8($fp)
	nop
	addiu	$2,$3,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	addiu	$4,$2,1
	sw	$4,12($fp)
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L368:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L369
	nop

$L370:
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$5,12($fp)
	sw	$4,8($fp)
	sw	$6,16($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	lw	$4,16($fp)
	nop
	andi	$4,$4,0x20
	beq	$4,$0,$L372
	nop

	lw	$4,16($fp)
	nop
	sll	$10,$3,$4
	move	$11,$0
	.option	pic0
	b	$L373
	nop

	.option	pic2
$L372:
	srl	$5,$3,1
	lw	$4,16($fp)
	nop
	nor	$4,$0,$4
	srl	$4,$5,$4
	lw	$5,16($fp)
	nop
	sll	$10,$2,$5
	or	$10,$4,$10
	lw	$4,16($fp)
	nop
	sll	$11,$3,$4
$L373:
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	andi	$4,$4,0x20
	beq	$4,$0,$L374
	nop

	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	srl	$9,$2,$4
	move	$8,$0
	.option	pic0
	b	$L375
	nop

	.option	pic2
$L374:
	sll	$5,$2,1
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	nor	$4,$0,$4
	sll	$5,$5,$4
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	srl	$9,$3,$4
	or	$9,$5,$9
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	srl	$8,$2,$4
$L375:
	or	$12,$8,$10
	or	$13,$9,$11
	move	$9,$13
	move	$8,$12
	move	$3,$13
	move	$2,$12
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$5,12($fp)
	sw	$4,8($fp)
	sw	$6,16($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	lw	$4,16($fp)
	nop
	andi	$4,$4,0x20
	beq	$4,$0,$L378
	nop

	lw	$4,16($fp)
	nop
	srl	$11,$2,$4
	move	$10,$0
	.option	pic0
	b	$L379
	nop

	.option	pic2
$L378:
	sll	$5,$2,1
	lw	$4,16($fp)
	nop
	nor	$4,$0,$4
	sll	$4,$5,$4
	lw	$5,16($fp)
	nop
	srl	$11,$3,$5
	or	$11,$4,$11
	lw	$4,16($fp)
	nop
	srl	$10,$2,$4
$L379:
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	andi	$4,$4,0x20
	beq	$4,$0,$L380
	nop

	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	sll	$8,$3,$4
	move	$9,$0
	.option	pic0
	b	$L381
	nop

	.option	pic2
$L380:
	srl	$5,$3,1
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	nor	$4,$0,$4
	srl	$5,$5,$4
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	sll	$8,$2,$4
	or	$8,$5,$8
	lw	$4,16($fp)
	nop
	subu	$4,$0,$4
	andi	$4,$4,0x3f
	sll	$9,$3,$4
$L381:
	or	$12,$8,$10
	or	$13,$9,$11
	move	$9,$13
	move	$8,$12
	move	$3,$13
	move	$2,$12
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	sll	$4,$3,$2
	lw	$2,12($fp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	srl	$2,$3,$2
	or	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$4,$3,$2
	lw	$2,12($fp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	sll	$2,$3,$2
	or	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	sll	$4,$3,$2
	lw	$2,12($fp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	srl	$2,$3,$2
	or	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$4,$3,$2
	lw	$2,12($fp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	sll	$2,$3,$2
	or	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,12($fp)
	sh	$2,8($fp)
	lhu	$3,8($fp)
	lw	$2,12($fp)
	nop
	sll	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$4,8($fp)
	li	$5,16			# 0x10
	lw	$2,12($fp)
	nop
	subu	$2,$5,$2
	srl	$2,$4,$2
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,12($fp)
	sh	$2,8($fp)
	lhu	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$4,8($fp)
	li	$5,16			# 0x10
	lw	$2,12($fp)
	nop
	subu	$2,$5,$2
	sll	$2,$4,$2
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,12($fp)
	sb	$2,8($fp)
	lbu	$3,8($fp)
	lw	$2,12($fp)
	nop
	sll	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$4,8($fp)
	li	$5,8			# 0x8
	lw	$2,12($fp)
	nop
	subu	$2,$5,$2
	srl	$2,$4,$2
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,12($fp)
	sb	$2,8($fp)
	lbu	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$4,8($fp)
	li	$5,8			# 0x8
	lw	$2,12($fp)
	nop
	subu	$2,$5,$2
	sll	$2,$4,$2
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	li	$2,255			# 0xff
	sw	$2,8($fp)
	lhu	$3,24($fp)
	lw	$2,8($fp)
	nop
	sll	$2,$2,8
	and	$2,$3,$2
	srl	$2,$2,8
	andi	$3,$2,0xffff
	lw	$2,8($fp)
	nop
	andi	$4,$2,0xffff
	lhu	$2,24($fp)
	nop
	and	$2,$4,$2
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	li	$2,255			# 0xff
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	sll	$3,$2,24
	lw	$2,24($fp)
	nop
	and	$2,$3,$2
	srl	$3,$2,24
	lw	$2,8($fp)
	nop
	sll	$4,$2,16
	lw	$2,24($fp)
	nop
	and	$2,$4,$2
	srl	$2,$2,8
	or	$3,$3,$2
	lw	$2,8($fp)
	nop
	sll	$4,$2,8
	lw	$2,24($fp)
	nop
	and	$2,$4,$2
	sll	$2,$2,8
	or	$3,$3,$2
	lw	$4,24($fp)
	lw	$2,8($fp)
	nop
	and	$2,$4,$2
	sll	$2,$2,24
	or	$2,$3,$2
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,216,$31		# vars= 168, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-216
	sw	$fp,212($sp)
	sw	$23,208($sp)
	sw	$22,204($sp)
	sw	$21,200($sp)
	sw	$20,196($sp)
	sw	$19,192($sp)
	sw	$18,188($sp)
	sw	$17,184($sp)
	sw	$16,180($sp)
	move	$fp,$sp
	sw	$5,220($fp)
	sw	$4,216($fp)
	li	$3,255			# 0xff
	move	$2,$0
	sw	$3,12($fp)
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	sll	$6,$2,24
	move	$7,$0
	lw	$2,216($fp)
	nop
	and	$8,$2,$6
	lw	$2,220($fp)
	nop
	and	$9,$2,$7
	srl	$23,$8,24
	move	$22,$0
	lw	$2,12($fp)
	nop
	sll	$12,$2,16
	move	$13,$0
	lw	$2,216($fp)
	nop
	and	$2,$2,$12
	sw	$2,56($fp)
	lw	$2,220($fp)
	nop
	and	$2,$2,$13
	sw	$2,60($fp)
	lw	$2,56($fp)
	nop
	srl	$25,$2,8
	move	$24,$0
	or	$2,$22,$24
	sw	$2,64($fp)
	or	$2,$23,$25
	sw	$2,68($fp)
	lw	$2,12($fp)
	nop
	sll	$20,$2,8
	move	$21,$0
	lw	$2,216($fp)
	nop
	and	$14,$2,$20
	lw	$2,220($fp)
	nop
	and	$15,$2,$21
	sll	$2,$14,8
	srl	$11,$15,24
	or	$11,$2,$11
	srl	$10,$14,24
	lw	$3,68($fp)
	lw	$2,64($fp)
	nop
	move	$4,$2
	or	$4,$4,$10
	sw	$4,72($fp)
	move	$2,$3
	or	$2,$2,$11
	sw	$2,76($fp)
	lw	$2,12($fp)
	nop
	sll	$2,$2,0
	sw	$2,80($fp)
	sw	$0,84($fp)
	lw	$2,216($fp)
	lw	$5,84($fp)
	lw	$4,80($fp)
	nop
	move	$3,$4
	and	$18,$2,$3
	lw	$2,220($fp)
	move	$3,$5
	and	$19,$2,$3
	sll	$2,$18,24
	srl	$17,$19,8
	or	$17,$2,$17
	srl	$16,$18,8
	lw	$3,76($fp)
	lw	$2,72($fp)
	nop
	move	$4,$2
	or	$4,$4,$16
	sw	$4,88($fp)
	move	$2,$3
	or	$2,$2,$17
	sw	$2,92($fp)
	lw	$2,12($fp)
	nop
	srl	$3,$2,8
	lw	$2,8($fp)
	nop
	sll	$2,$2,24
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	or	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,12($fp)
	nop
	sll	$2,$2,24
	sw	$2,20($fp)
	lw	$2,216($fp)
	lw	$5,20($fp)
	lw	$4,16($fp)
	nop
	move	$3,$4
	and	$2,$2,$3
	sw	$2,96($fp)
	lw	$2,220($fp)
	move	$3,$5
	and	$2,$2,$3
	sw	$2,100($fp)
	lw	$5,100($fp)
	lw	$4,96($fp)
	move	$2,$5
	srl	$2,$2,24
	move	$3,$4
	sll	$3,$3,8
	sw	$3,24($fp)
	lw	$3,24($fp)
	nop
	or	$2,$2,$3
	sw	$2,24($fp)
	move	$2,$5
	sll	$2,$2,8
	sw	$2,28($fp)
	lw	$5,92($fp)
	lw	$4,88($fp)
	nop
	move	$6,$4
	lw	$3,28($fp)
	lw	$2,24($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,104($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,108($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$2,16
	lw	$3,8($fp)
	nop
	sll	$3,$3,16
	sw	$3,32($fp)
	lw	$3,32($fp)
	nop
	or	$2,$2,$3
	sw	$2,32($fp)
	lw	$2,12($fp)
	nop
	sll	$2,$2,16
	sw	$2,36($fp)
	lw	$2,216($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	nop
	move	$3,$4
	and	$2,$2,$3
	sw	$2,112($fp)
	lw	$2,220($fp)
	move	$3,$5
	and	$2,$2,$3
	sw	$2,116($fp)
	lw	$5,116($fp)
	lw	$4,112($fp)
	move	$2,$5
	srl	$2,$2,8
	move	$3,$4
	sll	$3,$3,24
	sw	$3,40($fp)
	lw	$3,40($fp)
	nop
	or	$2,$2,$3
	sw	$2,40($fp)
	move	$2,$5
	sll	$2,$2,24
	sw	$2,44($fp)
	lw	$5,108($fp)
	lw	$4,104($fp)
	nop
	move	$6,$4
	lw	$3,44($fp)
	lw	$2,40($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,120($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,124($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$2,24
	lw	$3,8($fp)
	nop
	sll	$3,$3,8
	sw	$3,48($fp)
	lw	$3,48($fp)
	nop
	or	$2,$2,$3
	sw	$2,48($fp)
	lw	$2,12($fp)
	nop
	sll	$2,$2,8
	sw	$2,52($fp)
	lw	$2,216($fp)
	lw	$5,52($fp)
	lw	$4,48($fp)
	nop
	move	$3,$4
	and	$2,$2,$3
	sw	$2,128($fp)
	lw	$2,220($fp)
	move	$3,$5
	and	$2,$2,$3
	sw	$2,132($fp)
	lw	$2,132($fp)
	nop
	sll	$2,$2,8
	sw	$2,136($fp)
	sw	$0,140($fp)
	lw	$5,124($fp)
	lw	$4,120($fp)
	nop
	move	$6,$4
	lw	$3,140($fp)
	lw	$2,136($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,144($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,148($fp)
	lw	$3,216($fp)
	lw	$2,8($fp)
	nop
	and	$2,$3,$2
	sw	$2,152($fp)
	lw	$3,220($fp)
	lw	$2,12($fp)
	nop
	and	$2,$3,$2
	sw	$2,156($fp)
	lw	$2,156($fp)
	nop
	sll	$2,$2,24
	sw	$2,160($fp)
	sw	$0,164($fp)
	lw	$5,148($fp)
	lw	$4,144($fp)
	nop
	move	$6,$4
	lw	$3,164($fp)
	lw	$2,160($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,168($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,172($fp)
	lw	$3,172($fp)
	lw	$2,168($fp)
	move	$sp,$fp
	lw	$fp,212($sp)
	lw	$23,208($sp)
	lw	$22,204($sp)
	lw	$21,200($sp)
	lw	$20,196($sp)
	lw	$19,192($sp)
	lw	$18,188($sp)
	lw	$17,184($sp)
	lw	$16,180($sp)
	addiu	$sp,$sp,216
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L406
	nop

	.option	pic2
$L409:
	lw	$3,24($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L407
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	.option	pic0
	b	$L408
	nop

	.option	pic2
$L407:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L406:
	lw	$2,8($fp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L409
	nop

	move	$2,$0
$L408:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x40010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	sw	$16,0($sp)
	move	$fp,$sp
	move	$2,$4
	bne	$2,$0,$L411
	nop

	move	$2,$0
	.option	pic0
	b	$L412
	nop

	.option	pic2
$L411:
	li	$16,1			# 0x1
	.option	pic0
	b	$L413
	nop

	.option	pic2
$L414:
	sra	$2,$2,1
	addiu	$16,$16,1
$L413:
	andi	$3,$2,0x1
	beq	$3,$0,$L414
	nop

	move	$2,$16
$L412:
	move	$sp,$fp
	lw	$fp,4($sp)
	lw	$16,0($sp)
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	lwc1	$f2,8($fp)
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1t	$L416
	nop

	lwc1	$f2,8($fp)
	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L421
	nop

$L416:
	li	$2,1			# 0x1
	.option	pic0
	b	$L420
	nop

	.option	pic2
$L421:
	move	$2,$0
$L420:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L423
	nop

	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L428
	nop

$L423:
	li	$2,1			# 0x1
	.option	pic0
	b	$L427
	nop

	.option	pic2
$L428:
	move	$2,$0
$L427:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L430
	nop

	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L435
	nop

$L430:
	li	$2,1			# 0x1
	.option	pic0
	b	$L434
	nop

	.option	pic2
$L435:
	move	$2,$0
$L434:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$2,12($fp)
	nop
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	lw	$2,8($fp)
	nop
	swc1	$f0,4($2)
	swc1	$f1,0($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,24($fp)
	sw	$5,28($fp)
	lwc1	$f2,24($fp)
	lwc1	$f0,24($fp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1t	$L438
	nop

	lwc1	$f0,24($fp)
	nop
	add.s	$f0,$f0,$f0
	lwc1	$f2,24($fp)
	nop
	c.eq.s	$f2,$f0
	nop
	bc1t	$L438
	nop

	lw	$2,28($fp)
	nop
	bgez	$2,$L439
	nop

	lui	$2,%hi($LC4)
	lwc1	$f0,%lo($LC4)($2)
	.option	pic0
	b	$L440
	nop

	.option	pic2
$L439:
	lui	$2,%hi($LC5)
	lwc1	$f0,%lo($LC5)($2)
	nop
$L440:
	swc1	$f0,8($fp)
$L443:
	lw	$2,28($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L441
	nop

	lwc1	$f2,24($fp)
	lwc1	$f0,8($fp)
	nop
	mul.s	$f0,$f2,$f0
	swc1	$f0,24($fp)
$L441:
	lw	$2,28($fp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,28($fp)
	lw	$2,28($fp)
	nop
	beq	$2,$0,$L445
	nop

	lwc1	$f0,8($fp)
	nop
	mul.s	$f0,$f0,$f0
	swc1	$f0,8($fp)
	.option	pic0
	b	$L443
	nop

	.option	pic2
$L445:
	nop
$L438:
	lwc1	$f0,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,28($fp)
	swc1	$f13,24($fp)
	sw	$6,32($fp)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1t	$L447
	nop

	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	add.d	$f0,$f0,$f0
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L447
	nop

	lw	$2,32($fp)
	nop
	bgez	$2,$L448
	nop

	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	.option	pic0
	b	$L449
	nop

	.option	pic2
$L448:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	nop
$L449:
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L452:
	lw	$2,32($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L450
	nop

	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
$L450:
	lw	$2,32($fp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($fp)
	lw	$2,32($fp)
	nop
	beq	$2,$0,$L454
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
	.option	pic0
	b	$L452
	nop

	.option	pic2
$L454:
	nop
$L447:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,28($fp)
	swc1	$f13,24($fp)
	sw	$6,32($fp)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1t	$L456
	nop

	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	add.d	$f0,$f0,$f0
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L456
	nop

	lw	$2,32($fp)
	nop
	bgez	$2,$L457
	nop

	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	.option	pic0
	b	$L458
	nop

	.option	pic2
$L457:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	nop
$L458:
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L461:
	lw	$2,32($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L459
	nop

	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
$L459:
	lw	$2,32($fp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($fp)
	lw	$2,32($fp)
	nop
	beq	$2,$0,$L463
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
	.option	pic0
	b	$L461
	nop

	.option	pic2
$L463:
	nop
$L456:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,28($fp)
	nop
	sw	$2,8($fp)
	lw	$2,24($fp)
	nop
	sw	$2,12($fp)
	.option	pic0
	b	$L465
	nop

	.option	pic2
$L466:
	lw	$2,8($fp)
	nop
	addiu	$3,$2,1
	sw	$3,8($fp)
	lb	$4,0($2)
	lw	$2,12($fp)
	nop
	addiu	$3,$2,1
	sw	$3,12($fp)
	lb	$3,0($2)
	nop
	xor	$3,$4,$3
	sll	$3,$3,24
	sra	$3,$3,24
	sb	$3,0($2)
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,32($fp)
$L465:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L466
	nop

	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	move	$3,$2
	lw	$2,40($fp)
	nop
	addu	$2,$2,$3
	sw	$2,24($fp)
	.option	pic0
	b	$L469
	nop

	.option	pic2
$L471:
	lw	$2,44($fp)
	nop
	addiu	$2,$2,1
	sw	$2,44($fp)
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,48($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,48($fp)
$L469:
	lw	$2,48($fp)
	nop
	beq	$2,$0,$L470
	nop

	lw	$2,44($fp)
	nop
	lb	$3,0($2)
	lw	$2,24($fp)
	nop
	sb	$3,0($2)
	lw	$2,24($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L471
	nop

$L470:
	lw	$2,48($fp)
	nop
	bne	$2,$0,$L472
	nop

	lw	$2,24($fp)
	nop
	sb	$0,0($2)
$L472:
	lw	$2,40($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L475
	nop

	.option	pic2
$L480:
	nop
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L475:
	lw	$3,8($fp)
	lw	$2,28($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L476
	nop

	lw	$3,24($fp)
	lw	$2,8($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	bne	$2,$0,$L480
	nop

$L476:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	.option	pic0
	b	$L482
	nop

	.option	pic2
$L486:
	lw	$2,28($fp)
	nop
	sw	$2,8($fp)
	.option	pic0
	b	$L483
	nop

	.option	pic2
$L485:
	lw	$2,8($fp)
	nop
	addiu	$3,$2,1
	sw	$3,8($fp)
	lb	$3,0($2)
	lw	$2,24($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L483
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L484
	nop

	.option	pic2
$L483:
	lw	$2,8($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L485
	nop

	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L482:
	lw	$2,24($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L486
	nop

	move	$2,$0
$L484:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,28($fp)
	sw	$0,8($fp)
$L489:
	lb	$3,0($2)
	nop
	move	$4,$3
	lw	$3,28($fp)
	nop
	bne	$3,$4,$L488
	nop

	sw	$2,8($fp)
$L488:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	nop
	bne	$3,$0,$L489
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$2,40($fp)
	nop
	sw	$2,24($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$2,28($fp)
	nop
	bne	$2,$0,$L494
	nop

	lw	$2,40($fp)
	.option	pic0
	b	$L493
	nop

	.option	pic2
$L496:
	lw	$6,28($fp)
	lw	$5,44($fp)
	lw	$4,24($fp)
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	bne	$2,$0,$L495
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L493
	nop

	.option	pic2
$L495:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L494:
	lw	$2,44($fp)
	nop
	lb	$2,0($2)
	nop
	move	$5,$2
	lw	$4,24($fp)
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	sw	$2,24($fp)
	lw	$2,24($fp)
	nop
	bne	$2,$0,$L496
	nop

	move	$2,$0
$L493:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L498
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L500
	nop

$L498:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L501
	nop

	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L501
	nop

$L500:
	lw	$5,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$2,$5,$4
	lw	$3,12($fp)
	.option	pic0
	b	$L504
	nop

	.option	pic2
$L501:
	lw	$3,12($fp)
	lw	$2,8($fp)
$L504:
	mtc1	$3,$f0
	nop
	mtc1	$2,$f1
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$3,44($fp)
	lw	$2,52($fp)
	nop
	subu	$2,$3,$2
	lw	$3,40($fp)
	nop
	addu	$2,$3,$2
	sw	$2,28($fp)
	lw	$2,52($fp)
	nop
	bne	$2,$0,$L508
	nop

	lw	$2,40($fp)
	.option	pic0
	b	$L509
	nop

	.option	pic2
$L508:
	lw	$3,44($fp)
	lw	$2,52($fp)
	nop
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L510
	nop

	move	$2,$0
	.option	pic0
	b	$L509
	nop

	.option	pic2
$L510:
	lw	$2,40($fp)
	nop
	sw	$2,24($fp)
	.option	pic0
	b	$L511
	nop

	.option	pic2
$L513:
	lw	$2,24($fp)
	nop
	lb	$3,0($2)
	lw	$2,48($fp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L512
	nop

	lw	$2,24($fp)
	nop
	addiu	$3,$2,1
	lw	$2,48($fp)
	nop
	addiu	$4,$2,1
	lw	$2,52($fp)
	nop
	addiu	$2,$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L512
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L509
	nop

	.option	pic2
$L512:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L511:
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L513
	nop

	move	$2,$0
$L509:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	lw	$6,40($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	.option	pic0
	jal	memcpy
	nop

	.option	pic2
	move	$3,$2
	lw	$2,40($fp)
	nop
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,28($fp)
	swc1	$f13,24($fp)
	sw	$6,32($fp)
	sw	$0,12($fp)
	sw	$0,8($fp)
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L517
	nop

	lw	$7,24($fp)
	li	$6,-2147483648			# 0xffffffff80000000
	xor	$4,$7,$6
	lw	$5,28($fp)
	nop
	sw	$5,28($fp)
	sw	$4,24($fp)
	li	$4,1			# 0x1
	sw	$4,8($fp)
$L517:
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lui	$4,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	nop
	c.le.d	$f0,$f2
	nop
	bc1f	$L532
	nop

	.option	pic0
	b	$L521
	nop

	.option	pic2
$L522:
	lw	$4,12($fp)
	nop
	addiu	$4,$4,1
	sw	$4,12($fp)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lui	$4,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
	nop
	div.d	$f0,$f2,$f0
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
$L521:
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lui	$4,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	nop
	c.le.d	$f0,$f2
	nop
	bc1t	$L522
	nop

	.option	pic0
	b	$L523
	nop

	.option	pic2
$L532:
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lui	$4,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L523
	nop

	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.eq.d	$f0,$f2
	nop
	bc1t	$L523
	nop

	.option	pic0
	b	$L525
	nop

	.option	pic2
$L526:
	lw	$4,12($fp)
	nop
	addiu	$4,$4,-1
	sw	$4,12($fp)
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	add.d	$f0,$f0,$f0
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
$L525:
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	lui	$4,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L526
	nop

$L523:
	lw	$4,32($fp)
	lw	$5,12($fp)
	nop
	sw	$5,0($4)
	lw	$4,8($fp)
	nop
	beq	$4,$0,$L527
	nop

	lw	$5,24($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$2,$5,$4
	lw	$3,28($fp)
	nop
	sw	$3,28($fp)
	sw	$2,24($fp)
$L527:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	sw	$7,44($fp)
	sw	$6,40($fp)
	move	$3,$0
	move	$2,$0
	sw	$3,12($fp)
	sw	$2,8($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	.option	pic0
	b	$L534
	nop

	.option	pic2
$L537:
	lw	$2,16($fp)
	nop
	andi	$12,$2,0
	lw	$2,20($fp)
	nop
	andi	$13,$2,0x1
	move	$2,$12
	or	$2,$2,$13
	beq	$2,$0,$L535
	nop

	lw	$5,12($fp)
	lw	$4,8($fp)
	lw	$7,44($fp)
	lw	$6,40($fp)
	addu	$3,$5,$7
	sltu	$14,$3,$5
	addu	$2,$4,$6
	addu	$4,$14,$2
	move	$2,$4
	sw	$3,12($fp)
	sw	$2,8($fp)
$L535:
	lw	$2,44($fp)
	nop
	srl	$2,$2,31
	lw	$3,40($fp)
	nop
	sll	$8,$3,1
	or	$8,$2,$8
	lw	$2,44($fp)
	nop
	sll	$9,$2,1
	sw	$9,44($fp)
	sw	$8,40($fp)
	lw	$2,16($fp)
	nop
	sll	$2,$2,31
	lw	$3,20($fp)
	nop
	srl	$11,$3,1
	or	$11,$2,$11
	lw	$2,16($fp)
	nop
	srl	$10,$2,1
	sw	$11,20($fp)
	sw	$10,16($fp)
$L534:
	lw	$2,16($fp)
	lw	$3,20($fp)
	nop
	or	$2,$2,$3
	bne	$2,$0,$L537
	nop

	lw	$3,12($fp)
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	sw	$0,12($fp)
	.option	pic0
	b	$L540
	nop

	.option	pic2
$L542:
	lw	$2,28($fp)
	nop
	sll	$2,$2,1
	sw	$2,28($fp)
	lw	$2,8($fp)
	nop
	sll	$2,$2,1
	sw	$2,8($fp)
$L540:
	lw	$3,28($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L543
	nop

	lw	$2,8($fp)
	nop
	beq	$2,$0,$L543
	nop

	lw	$2,28($fp)
	nop
	bgez	$2,$L542
	nop

	.option	pic0
	b	$L543
	nop

	.option	pic2
$L545:
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L544
	nop

	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	subu	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	or	$2,$3,$2
	sw	$2,12($fp)
$L544:
	lw	$2,8($fp)
	nop
	srl	$2,$2,1
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	srl	$2,$2,1
	sw	$2,28($fp)
$L543:
	lw	$2,8($fp)
	nop
	bne	$2,$0,$L545
	nop

	lw	$2,32($fp)
	nop
	beq	$2,$0,$L546
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L547
	nop

	.option	pic2
$L546:
	lw	$2,12($fp)
$L547:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$2,$4
	sb	$2,40($fp)
	lb	$2,40($fp)
	nop
	bgez	$2,$L549
	nop

	lbu	$2,40($fp)
	nop
	nor	$2,$0,$2
	sb	$2,40($fp)
$L549:
	lb	$2,40($fp)
	nop
	bne	$2,$0,$L550
	nop

	li	$2,7			# 0x7
	.option	pic0
	b	$L551
	nop

	.option	pic2
$L550:
	lb	$2,40($fp)
	nop
	sll	$3,$2,8
	lw	$2,%call16(__clzsi2)($28)
	move	$4,$3
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	nop
	addiu	$2,$2,-1
$L551:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,44($fp)
	sw	$4,40($fp)
	lw	$4,40($fp)
	nop
	bgez	$4,$L553
	nop

	lw	$4,40($fp)
	nop
	nor	$2,$0,$4
	lw	$4,44($fp)
	nop
	nor	$3,$0,$4
	sw	$3,44($fp)
	sw	$2,40($fp)
$L553:
	lw	$2,40($fp)
	lw	$3,44($fp)
	nop
	or	$2,$2,$3
	bne	$2,$0,$L555
	nop

	li	$2,63			# 0x3f
	.option	pic0
	b	$L556
	nop

	.option	pic2
$L555:
	lw	$3,44($fp)
	lw	$2,40($fp)
	lw	$6,%call16(__clzdi2)($28)
	move	$5,$3
	move	$4,$2
	move	$25,$6
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	nop
	addiu	$2,$2,-1
$L556:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L558
	nop

	.option	pic2
$L560:
	lw	$2,24($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L559
	nop

	lw	$3,8($fp)
	lw	$2,28($fp)
	nop
	addu	$2,$3,$2
	sw	$2,8($fp)
$L559:
	lw	$2,24($fp)
	nop
	srl	$2,$2,1
	sw	$2,24($fp)
	lw	$2,28($fp)
	nop
	sll	$2,$2,1
	sw	$2,28($fp)
$L558:
	lw	$2,24($fp)
	nop
	bne	$2,$0,$L560
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$2,48($fp)
	nop
	srl	$2,$2,3
	sw	$2,16($fp)
	lw	$3,48($fp)
	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$3,$2
	sw	$2,12($fp)
	lw	$2,40($fp)
	nop
	sw	$2,20($fp)
	lw	$2,44($fp)
	nop
	sw	$2,24($fp)
	lw	$3,20($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L563
	nop

	lw	$3,24($fp)
	lw	$2,48($fp)
	nop
	addu	$2,$3,$2
	lw	$3,20($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L570
	nop

$L563:
	sw	$0,8($fp)
	.option	pic0
	b	$L565
	nop

	.option	pic2
$L566:
	lw	$2,8($fp)
	nop
	sll	$2,$2,3
	lw	$3,44($fp)
	nop
	addu	$2,$3,$2
	lw	$3,8($fp)
	nop
	sll	$3,$3,3
	lw	$4,40($fp)
	nop
	addu	$4,$4,$3
	lw	$3,4($2)
	lw	$2,0($2)
	sw	$3,4($4)
	sw	$2,0($4)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L565:
	lw	$3,8($fp)
	lw	$2,16($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L566
	nop

	.option	pic0
	b	$L567
	nop

	.option	pic2
$L568:
	lw	$3,24($fp)
	lw	$2,12($fp)
	nop
	addu	$3,$3,$2
	lw	$4,20($fp)
	lw	$2,12($fp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L567:
	lw	$3,48($fp)
	lw	$2,12($fp)
	nop
	sltu	$2,$2,$3
	bne	$2,$0,$L568
	nop

	.option	pic0
	b	$L569
	nop

	.option	pic2
$L571:
	lw	$3,24($fp)
	lw	$2,48($fp)
	nop
	addu	$3,$3,$2
	lw	$4,20($fp)
	lw	$2,48($fp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
$L570:
	lw	$2,48($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,48($fp)
	bne	$2,$0,$L571
	nop

	nop
$L569:
	nop
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	lw	$2,40($fp)
	nop
	srl	$2,$2,1
	sw	$2,12($fp)
	lw	$2,32($fp)
	nop
	sw	$2,16($fp)
	lw	$2,36($fp)
	nop
	sw	$2,20($fp)
	lw	$3,16($fp)
	lw	$2,20($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L573
	nop

	lw	$3,20($fp)
	lw	$2,40($fp)
	nop
	addu	$2,$3,$2
	lw	$3,16($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L579
	nop

$L573:
	sw	$0,8($fp)
	.option	pic0
	b	$L575
	nop

	.option	pic2
$L576:
	lw	$2,8($fp)
	nop
	sll	$2,$2,1
	lw	$3,36($fp)
	nop
	addu	$3,$3,$2
	lw	$2,8($fp)
	nop
	sll	$2,$2,1
	lw	$4,32($fp)
	nop
	addu	$2,$4,$2
	lh	$3,0($3)
	nop
	sh	$3,0($2)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L575:
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L576
	nop

	lw	$2,40($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L578
	nop

	lw	$2,40($fp)
	nop
	addiu	$2,$2,-1
	lw	$3,20($fp)
	nop
	addu	$3,$3,$2
	lw	$2,40($fp)
	nop
	addiu	$2,$2,-1
	lw	$4,16($fp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	.option	pic0
	b	$L578
	nop

	.option	pic2
$L580:
	lw	$3,20($fp)
	lw	$2,40($fp)
	nop
	addu	$3,$3,$2
	lw	$4,16($fp)
	lw	$2,40($fp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
$L579:
	lw	$2,40($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,40($fp)
	bne	$2,$0,$L580
	nop

	nop
$L578:
	nop
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$2,48($fp)
	nop
	srl	$2,$2,2
	sw	$2,16($fp)
	lw	$3,48($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$3,$2
	sw	$2,12($fp)
	lw	$2,40($fp)
	nop
	sw	$2,20($fp)
	lw	$2,44($fp)
	nop
	sw	$2,24($fp)
	lw	$3,20($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L582
	nop

	lw	$3,24($fp)
	lw	$2,48($fp)
	nop
	addu	$2,$3,$2
	lw	$3,20($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L589
	nop

$L582:
	sw	$0,8($fp)
	.option	pic0
	b	$L584
	nop

	.option	pic2
$L585:
	lw	$2,8($fp)
	nop
	sll	$2,$2,2
	lw	$3,44($fp)
	nop
	addu	$3,$3,$2
	lw	$2,8($fp)
	nop
	sll	$2,$2,2
	lw	$4,40($fp)
	nop
	addu	$2,$4,$2
	lw	$3,0($3)
	nop
	sw	$3,0($2)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L584:
	lw	$3,8($fp)
	lw	$2,16($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L585
	nop

	.option	pic0
	b	$L586
	nop

	.option	pic2
$L587:
	lw	$3,24($fp)
	lw	$2,12($fp)
	nop
	addu	$3,$3,$2
	lw	$4,20($fp)
	lw	$2,12($fp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L586:
	lw	$3,48($fp)
	lw	$2,12($fp)
	nop
	sltu	$2,$2,$3
	bne	$2,$0,$L587
	nop

	.option	pic0
	b	$L588
	nop

	.option	pic2
$L590:
	lw	$3,24($fp)
	lw	$2,48($fp)
	nop
	addu	$3,$3,$2
	lw	$4,20($fp)
	lw	$2,48($fp)
	nop
	addu	$2,$4,$2
	lb	$3,0($3)
	nop
	sb	$3,0($2)
$L589:
	lw	$2,48($fp)
	nop
	addiu	$3,$2,-1
	sw	$3,48($fp)
	bne	$2,$0,$L590
	nop

	nop
$L588:
	nop
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	lw	$2,8($fp)
	nop
	bgez	$2,$L595
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L595:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	lw	$2,8($fp)
	nop
	bgez	$2,$L597
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L597:
	cvt.s.d	$f0,$f0
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,36($fp)
	sw	$4,32($fp)
	lw	$2,%call16(__floatundidf)($28)
	lw	$5,36($fp)
	lw	$4,32($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,36($fp)
	sw	$4,32($fp)
	lw	$2,%call16(__floatundisf)($28)
	lw	$5,36($fp)
	lw	$4,32($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	bne	$2,$0,1f
	divu	$0,$3,$2
	break	7
1:
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L606
	nop

	.option	pic2
$L609:
	lhu	$3,24($fp)
	li	$4,15			# 0xf
	lw	$2,8($fp)
	nop
	subu	$2,$4,$2
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L611
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L606:
	lw	$2,8($fp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L609
	nop

	.option	pic0
	b	$L608
	nop

	.option	pic2
$L611:
	nop
$L608:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L613
	nop

	.option	pic2
$L616:
	lhu	$3,24($fp)
	lw	$2,8($fp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L618
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L613:
	lw	$2,8($fp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L616
	nop

	.option	pic0
	b	$L615
	nop

	.option	pic2
$L618:
	nop
$L615:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	lwc1	$f2,8($fp)
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	c.le.s	$f0,$f2
	nop
	bc1f	$L624
	nop

	lwc1	$f2,8($fp)
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
	.option	pic0
	b	$L622
	nop

	.option	pic2
$L624:
	lwc1	$f0,8($fp)
	nop
	.set	macro
	trunc.w.s $f0,$f0,$3
	.set	nomacro
	mfc1	$2,$f0
$L622:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	sw	$0,12($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L626
	nop

	.option	pic2
$L628:
	lhu	$3,24($fp)
	lw	$2,8($fp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L627
	nop

	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L627:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L626:
	lw	$2,8($fp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L628
	nop

	lw	$2,12($fp)
	nop
	andi	$2,$2,0x1
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	sw	$0,12($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L631
	nop

	.option	pic2
$L633:
	lhu	$3,24($fp)
	lw	$2,8($fp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L632
	nop

	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L632:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L631:
	lw	$2,8($fp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L633
	nop

	lw	$2,12($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L636
	nop

	.option	pic2
$L638:
	lw	$2,24($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L637
	nop

	lw	$3,8($fp)
	lw	$2,28($fp)
	nop
	addu	$2,$3,$2
	sw	$2,8($fp)
$L637:
	lw	$2,24($fp)
	nop
	srl	$2,$2,1
	sw	$2,24($fp)
	lw	$2,28($fp)
	nop
	sll	$2,$2,1
	sw	$2,28($fp)
$L636:
	lw	$2,24($fp)
	nop
	bne	$2,$0,$L638
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,8($fp)
	lw	$2,24($fp)
	nop
	bne	$2,$0,$L643
	nop

	move	$2,$0
	.option	pic0
	b	$L642
	nop

	.option	pic2
$L645:
	lw	$2,28($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L644
	nop

	lw	$3,8($fp)
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	sw	$2,8($fp)
$L644:
	lw	$2,24($fp)
	nop
	sll	$2,$2,1
	sw	$2,24($fp)
	lw	$2,28($fp)
	nop
	srl	$2,$2,1
	sw	$2,28($fp)
$L643:
	lw	$2,28($fp)
	nop
	bne	$2,$0,$L645
	nop

	lw	$2,8($fp)
$L642:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	sw	$0,12($fp)
	.option	pic0
	b	$L647
	nop

	.option	pic2
$L649:
	lw	$2,28($fp)
	nop
	sll	$2,$2,1
	sw	$2,28($fp)
	lw	$2,8($fp)
	nop
	sll	$2,$2,1
	sw	$2,8($fp)
$L647:
	lw	$3,28($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L650
	nop

	lw	$2,8($fp)
	nop
	beq	$2,$0,$L650
	nop

	lw	$2,28($fp)
	nop
	bgez	$2,$L649
	nop

	.option	pic0
	b	$L650
	nop

	.option	pic2
$L652:
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L651
	nop

	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	subu	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	or	$2,$3,$2
	sw	$2,12($fp)
$L651:
	lw	$2,8($fp)
	nop
	srl	$2,$2,1
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	srl	$2,$2,1
	sw	$2,28($fp)
$L650:
	lw	$2,8($fp)
	nop
	bne	$2,$0,$L652
	nop

	lw	$2,32($fp)
	nop
	beq	$2,$0,$L653
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L654
	nop

	.option	pic2
$L653:
	lw	$2,12($fp)
$L654:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	swc1	$f14,12($fp)
	lwc1	$f2,8($fp)
	lwc1	$f0,12($fp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L663
	nop

	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L658
	nop

	.option	pic2
$L663:
	lwc1	$f2,8($fp)
	lwc1	$f0,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L664
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L658
	nop

	.option	pic2
$L664:
	move	$2,$0
$L658:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	swc1	$f15,16($fp)
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L673
	nop

	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L668
	nop

	.option	pic2
$L673:
	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L674
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L668
	nop

	.option	pic2
$L674:
	move	$2,$0
$L668:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$4,8($fp)
	nop
	move	$7,$4
	sra	$4,$4,31
	move	$6,$4
	lw	$4,12($fp)
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
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$4,8($fp)
	nop
	move	$7,$4
	move	$6,$0
	lw	$4,12($fp)
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
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$0,12($fp)
	sw	$0,16($fp)
	lw	$2,36($fp)
	nop
	bgez	$2,$L680
	nop

	lw	$2,36($fp)
	nop
	subu	$2,$0,$2
	sw	$2,36($fp)
	li	$2,1			# 0x1
	sw	$2,12($fp)
$L680:
	sb	$0,8($fp)
	.option	pic0
	b	$L681
	nop

	.option	pic2
$L684:
	lw	$2,36($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L682
	nop

	lw	$3,16($fp)
	lw	$2,32($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
$L682:
	lw	$2,32($fp)
	nop
	sll	$2,$2,1
	sw	$2,32($fp)
	lw	$2,36($fp)
	nop
	sra	$2,$2,1
	sw	$2,36($fp)
	lb	$2,8($fp)
	nop
	andi	$2,$2,0x00ff
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,8($fp)
$L681:
	lw	$2,36($fp)
	nop
	beq	$2,$0,$L683
	nop

	lbu	$2,8($fp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L684
	nop

$L683:
	lw	$2,12($fp)
	nop
	beq	$2,$0,$L685
	nop

	lw	$2,16($fp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L687
	nop

	.option	pic2
$L685:
	lw	$2,16($fp)
$L687:
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$0,24($fp)
	lw	$2,40($fp)
	nop
	bgez	$2,$L689
	nop

	lw	$2,40($fp)
	nop
	subu	$2,$0,$2
	sw	$2,40($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,24($fp)
$L689:
	lw	$2,44($fp)
	nop
	bgez	$2,$L690
	nop

	lw	$2,44($fp)
	nop
	subu	$2,$0,$2
	sw	$2,44($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,24($fp)
$L690:
	lw	$2,40($fp)
	lw	$3,44($fp)
	move	$6,$0
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	beq	$2,$0,$L691
	nop

	lw	$2,28($fp)
	nop
	subu	$2,$0,$2
	sw	$2,28($fp)
$L691:
	lw	$2,28($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$0,24($fp)
	lw	$2,40($fp)
	nop
	bgez	$2,$L694
	nop

	lw	$2,40($fp)
	nop
	subu	$2,$0,$2
	sw	$2,40($fp)
	li	$2,1			# 0x1
	sw	$2,24($fp)
$L694:
	lw	$2,44($fp)
	nop
	bgez	$2,$L695
	nop

	lw	$2,44($fp)
	nop
	subu	$2,$0,$2
	sw	$2,44($fp)
$L695:
	lw	$2,40($fp)
	lw	$3,44($fp)
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	beq	$2,$0,$L696
	nop

	lw	$2,28($fp)
	nop
	subu	$2,$0,$2
	sw	$2,28($fp)
$L696:
	lw	$2,28($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	sw	$6,32($fp)
	sh	$2,24($fp)
	move	$2,$3
	sh	$2,28($fp)
	li	$2,1			# 0x1
	sh	$2,8($fp)
	sh	$0,10($fp)
	.option	pic0
	b	$L699
	nop

	.option	pic2
$L701:
	lhu	$2,28($fp)
	nop
	sll	$2,$2,1
	sh	$2,28($fp)
	lhu	$2,8($fp)
	nop
	sll	$2,$2,1
	sh	$2,8($fp)
$L699:
	lhu	$3,28($fp)
	lhu	$2,24($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L702
	nop

	lhu	$2,8($fp)
	nop
	beq	$2,$0,$L702
	nop

	lh	$2,28($fp)
	nop
	bgez	$2,$L701
	nop

	.option	pic0
	b	$L702
	nop

	.option	pic2
$L704:
	lhu	$3,24($fp)
	lhu	$2,28($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L703
	nop

	lhu	$3,24($fp)
	lhu	$2,28($fp)
	nop
	subu	$2,$3,$2
	sh	$2,24($fp)
	lhu	$3,10($fp)
	lhu	$2,8($fp)
	nop
	or	$2,$3,$2
	sh	$2,10($fp)
$L703:
	lhu	$2,8($fp)
	nop
	srl	$2,$2,1
	sh	$2,8($fp)
	lhu	$2,28($fp)
	nop
	srl	$2,$2,1
	sh	$2,28($fp)
$L702:
	lhu	$2,8($fp)
	nop
	bne	$2,$0,$L704
	nop

	lw	$2,32($fp)
	nop
	beq	$2,$0,$L705
	nop

	lhu	$2,24($fp)
	.option	pic0
	b	$L706
	nop

	.option	pic2
$L705:
	lhu	$2,10($fp)
$L706:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	sw	$0,12($fp)
	.option	pic0
	b	$L708
	nop

	.option	pic2
$L710:
	lw	$2,28($fp)
	nop
	sll	$2,$2,1
	sw	$2,28($fp)
	lw	$2,8($fp)
	nop
	sll	$2,$2,1
	sw	$2,8($fp)
$L708:
	lw	$3,28($fp)
	lw	$2,24($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L711
	nop

	lw	$2,8($fp)
	nop
	beq	$2,$0,$L711
	nop

	lw	$2,28($fp)
	nop
	bgez	$2,$L710
	nop

	.option	pic0
	b	$L711
	nop

	.option	pic2
$L713:
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L712
	nop

	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	subu	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	or	$2,$3,$2
	sw	$2,12($fp)
$L712:
	lw	$2,8($fp)
	nop
	srl	$2,$2,1
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	srl	$2,$2,1
	sw	$2,28($fp)
$L711:
	lw	$2,8($fp)
	nop
	bne	$2,$0,$L713
	nop

	lw	$2,32($fp)
	nop
	beq	$2,$0,$L714
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L715
	nop

	.option	pic2
$L714:
	lw	$2,12($fp)
$L715:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$5,44($fp)
	sw	$4,40($fp)
	sw	$6,48($fp)
	li	$2,32			# 0x20
	sw	$2,8($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	lw	$3,48($fp)
	lw	$2,8($fp)
	nop
	and	$2,$3,$2
	beq	$2,$0,$L717
	nop

	sw	$0,28($fp)
	lw	$3,20($fp)
	lw	$4,48($fp)
	lw	$2,8($fp)
	nop
	subu	$2,$4,$2
	sll	$2,$3,$2
	sw	$2,24($fp)
	.option	pic0
	b	$L718
	nop

	.option	pic2
$L717:
	lw	$2,48($fp)
	nop
	bne	$2,$0,$L719
	nop

	lw	$3,44($fp)
	lw	$2,40($fp)
	.option	pic0
	b	$L721
	nop

	.option	pic2
$L719:
	lw	$3,20($fp)
	lw	$2,48($fp)
	nop
	sll	$2,$3,$2
	sw	$2,28($fp)
	lw	$2,16($fp)
	nop
	move	$3,$2
	lw	$2,48($fp)
	nop
	sll	$3,$3,$2
	lw	$4,20($fp)
	lw	$5,8($fp)
	lw	$2,48($fp)
	nop
	subu	$2,$5,$2
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,24($fp)
$L718:
	lw	$3,28($fp)
	lw	$2,24($fp)
$L721:
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$5,44($fp)
	sw	$4,40($fp)
	sw	$6,48($fp)
	li	$2,32			# 0x20
	sw	$2,8($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	lw	$3,48($fp)
	lw	$2,8($fp)
	nop
	and	$2,$3,$2
	beq	$2,$0,$L723
	nop

	lw	$3,16($fp)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-1
	sra	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,16($fp)
	lw	$4,48($fp)
	lw	$2,8($fp)
	nop
	subu	$2,$4,$2
	sra	$2,$3,$2
	sw	$2,28($fp)
	.option	pic0
	b	$L724
	nop

	.option	pic2
$L723:
	lw	$2,48($fp)
	nop
	bne	$2,$0,$L725
	nop

	lw	$3,44($fp)
	lw	$2,40($fp)
	.option	pic0
	b	$L727
	nop

	.option	pic2
$L725:
	lw	$3,16($fp)
	lw	$2,48($fp)
	nop
	sra	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,16($fp)
	nop
	move	$4,$2
	lw	$3,8($fp)
	lw	$2,48($fp)
	nop
	subu	$2,$3,$2
	sll	$3,$4,$2
	lw	$4,20($fp)
	lw	$2,48($fp)
	nop
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,28($fp)
$L724:
	lw	$3,28($fp)
	lw	$2,24($fp)
$L727:
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,136,$31		# vars= 88, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-136
	sw	$fp,132($sp)
	sw	$23,128($sp)
	sw	$22,124($sp)
	sw	$21,120($sp)
	sw	$20,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	move	$fp,$sp
	sw	$5,140($fp)
	sw	$4,136($fp)
	lw	$2,136($fp)
	nop
	srl	$13,$2,24
	move	$12,$0
	lw	$2,136($fp)
	nop
	srl	$9,$2,8
	move	$8,$0
	andi	$6,$8,0
	andi	$7,$9,0xff00
	or	$2,$12,$6
	sw	$2,8($fp)
	or	$2,$13,$7
	sw	$2,12($fp)
	lw	$2,136($fp)
	nop
	sll	$3,$2,8
	lw	$2,140($fp)
	nop
	srl	$11,$2,24
	or	$11,$3,$11
	lw	$2,136($fp)
	nop
	srl	$10,$2,24
	andi	$24,$10,0
	li	$2,16711680			# 0xff0000
	and	$25,$11,$2
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	move	$4,$2
	or	$4,$4,$24
	sw	$4,16($fp)
	move	$2,$3
	or	$2,$2,$25
	sw	$2,20($fp)
	lw	$2,136($fp)
	nop
	sll	$3,$2,24
	lw	$2,140($fp)
	nop
	srl	$17,$2,8
	or	$17,$3,$17
	lw	$2,136($fp)
	nop
	srl	$16,$2,8
	andi	$2,$16,0
	sw	$2,24($fp)
	li	$2,-16777216			# 0xffffffffff000000
	and	$2,$17,$2
	sw	$2,28($fp)
	lw	$5,20($fp)
	lw	$4,16($fp)
	nop
	move	$6,$4
	lw	$3,28($fp)
	lw	$2,24($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,32($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,36($fp)
	lw	$2,140($fp)
	nop
	srl	$2,$2,24
	lw	$3,136($fp)
	nop
	sll	$18,$3,8
	or	$18,$2,$18
	lw	$2,140($fp)
	nop
	sll	$19,$2,8
	andi	$2,$18,0xff
	sw	$2,40($fp)
	andi	$2,$19,0
	sw	$2,44($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	nop
	move	$6,$4
	lw	$3,44($fp)
	lw	$2,40($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,48($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,52($fp)
	lw	$2,140($fp)
	nop
	srl	$2,$2,8
	lw	$3,136($fp)
	nop
	sll	$14,$3,24
	or	$14,$2,$14
	lw	$2,140($fp)
	nop
	sll	$15,$2,24
	andi	$2,$14,0xff00
	sw	$2,56($fp)
	andi	$2,$15,0
	sw	$2,60($fp)
	lw	$5,52($fp)
	lw	$4,48($fp)
	nop
	move	$6,$4
	lw	$3,60($fp)
	lw	$2,56($fp)
	nop
	move	$7,$2
	or	$6,$6,$7
	sw	$6,64($fp)
	move	$4,$5
	move	$2,$3
	or	$2,$4,$2
	sw	$2,68($fp)
	lw	$2,140($fp)
	nop
	sll	$2,$2,8
	sw	$2,72($fp)
	sw	$0,76($fp)
	li	$2,16711680			# 0xff0000
	lw	$5,76($fp)
	lw	$4,72($fp)
	nop
	move	$3,$4
	and	$22,$3,$2
	move	$2,$5
	andi	$23,$2,0
	lw	$3,68($fp)
	lw	$2,64($fp)
	nop
	move	$4,$2
	or	$20,$4,$22
	move	$2,$3
	or	$21,$2,$23
	lw	$2,140($fp)
	nop
	sll	$2,$2,24
	sw	$2,80($fp)
	sw	$0,84($fp)
	lw	$3,84($fp)
	lw	$2,80($fp)
	nop
	move	$4,$2
	or	$4,$20,$4
	sw	$4,88($fp)
	move	$2,$3
	or	$2,$21,$2
	sw	$2,92($fp)
	lw	$3,92($fp)
	lw	$2,88($fp)
	move	$sp,$fp
	lw	$fp,132($sp)
	lw	$23,128($sp)
	lw	$22,124($sp)
	lw	$21,120($sp)
	lw	$20,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	addiu	$sp,$sp,136
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$2,24
	lw	$2,8($fp)
	nop
	srl	$2,$2,8
	andi	$2,$2,0xff00
	or	$3,$3,$2
	lw	$2,8($fp)
	nop
	sll	$4,$2,8
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
	or	$3,$3,$2
	lw	$2,8($fp)
	nop
	sll	$2,$2,24
	or	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	lw	$2,32($fp)
	nop
	sw	$2,8($fp)
	lw	$3,8($fp)
	li	$2,65536			# 0x10000
	sltu	$2,$3,$2
	beq	$2,$0,$L733
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L734
	nop

	.option	pic2
$L733:
	move	$2,$0
$L734:
	sw	$2,12($fp)
	li	$3,16			# 0x10
	lw	$2,12($fp)
	nop
	subu	$2,$3,$2
	lw	$3,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xff00
	bne	$2,$0,$L735
	nop

	li	$2,8			# 0x8
	.option	pic0
	b	$L736
	nop

	.option	pic2
$L735:
	move	$2,$0
$L736:
	sw	$2,12($fp)
	li	$3,8			# 0x8
	lw	$2,12($fp)
	nop
	subu	$2,$3,$2
	lw	$3,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xf0
	bne	$2,$0,$L737
	nop

	li	$2,4			# 0x4
	.option	pic0
	b	$L738
	nop

	.option	pic2
$L737:
	move	$2,$0
$L738:
	sw	$2,12($fp)
	li	$3,4			# 0x4
	lw	$2,12($fp)
	nop
	subu	$2,$3,$2
	lw	$3,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xc
	bne	$2,$0,$L739
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L740
	nop

	.option	pic2
$L739:
	move	$2,$0
$L740:
	sw	$2,12($fp)
	li	$3,2			# 0x2
	lw	$2,12($fp)
	nop
	subu	$2,$3,$2
	lw	$3,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0x2
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$4,$2
	li	$3,2			# 0x2
	lw	$2,8($fp)
	nop
	subu	$2,$3,$2
	mult	$4,$2
	lw	$2,16($fp)
	mflo	$3
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	sw	$7,44($fp)
	sw	$6,40($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sw	$3,12($fp)
	sw	$2,8($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	lw	$3,8($fp)
	lw	$2,16($fp)
	nop
	slt	$2,$3,$2
	beq	$2,$0,$L743
	nop

	move	$2,$0
	.option	pic0
	b	$L748
	nop

	.option	pic2
$L743:
	lw	$3,8($fp)
	lw	$2,16($fp)
	nop
	slt	$2,$2,$3
	beq	$2,$0,$L745
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L748
	nop

	.option	pic2
$L745:
	lw	$3,12($fp)
	lw	$2,20($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L746
	nop

	move	$2,$0
	.option	pic0
	b	$L748
	nop

	.option	pic2
$L746:
	lw	$3,12($fp)
	lw	$2,20($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L747
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L748
	nop

	.option	pic2
$L747:
	li	$2,1			# 0x1
$L748:
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	sw	$7,44($fp)
	sw	$6,40($fp)
	lw	$7,44($fp)
	lw	$6,40($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	.option	pic0
	jal	__cmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	lw	$2,32($fp)
	nop
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xffff
	bne	$2,$0,$L752
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L753
	nop

	.option	pic2
$L752:
	move	$2,$0
$L753:
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	nop
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xff
	bne	$2,$0,$L754
	nop

	li	$2,8			# 0x8
	.option	pic0
	b	$L755
	nop

	.option	pic2
$L754:
	move	$2,$0
$L755:
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xf
	bne	$2,$0,$L756
	nop

	li	$2,4			# 0x4
	.option	pic0
	b	$L757
	nop

	.option	pic2
$L756:
	move	$2,$0
$L757:
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0x3
	bne	$2,$0,$L758
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L759
	nop

	.option	pic2
$L758:
	move	$2,$0
$L759:
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0x3
	sw	$2,8($fp)
	lw	$2,12($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	nop
	nor	$2,$0,$2
	andi	$3,$2,0x1
	lw	$2,8($fp)
	nop
	srl	$2,$2,1
	li	$4,2			# 0x2
	subu	$2,$4,$2
	subu	$3,$0,$3
	and	$3,$3,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$5,44($fp)
	sw	$4,40($fp)
	sw	$6,48($fp)
	li	$2,32			# 0x20
	sw	$2,8($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	lw	$3,48($fp)
	lw	$2,8($fp)
	nop
	and	$2,$3,$2
	beq	$2,$0,$L762
	nop

	sw	$0,24($fp)
	lw	$3,16($fp)
	lw	$4,48($fp)
	lw	$2,8($fp)
	nop
	subu	$2,$4,$2
	srl	$2,$3,$2
	sw	$2,28($fp)
	.option	pic0
	b	$L763
	nop

	.option	pic2
$L762:
	lw	$2,48($fp)
	nop
	bne	$2,$0,$L764
	nop

	lw	$3,44($fp)
	lw	$2,40($fp)
	.option	pic0
	b	$L766
	nop

	.option	pic2
$L764:
	lw	$3,16($fp)
	lw	$2,48($fp)
	nop
	srl	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,16($fp)
	lw	$4,8($fp)
	lw	$2,48($fp)
	nop
	subu	$2,$4,$2
	sll	$3,$3,$2
	lw	$4,20($fp)
	lw	$2,48($fp)
	nop
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,28($fp)
$L763:
	lw	$3,28($fp)
	lw	$2,24($fp)
$L766:
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	li	$2,16			# 0x10
	sw	$2,8($fp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,12($fp)
	lw	$3,40($fp)
	lw	$2,12($fp)
	nop
	and	$3,$3,$2
	lw	$4,44($fp)
	lw	$2,12($fp)
	nop
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	sw	$2,28($fp)
	lw	$3,28($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,16($fp)
	lw	$3,28($fp)
	lw	$2,12($fp)
	nop
	and	$2,$3,$2
	sw	$2,28($fp)
	lw	$3,40($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$3,$2
	lw	$4,44($fp)
	lw	$2,12($fp)
	nop
	and	$2,$4,$2
	mult	$3,$2
	lw	$2,16($fp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,16($fp)
	lw	$3,28($fp)
	lw	$4,16($fp)
	lw	$2,12($fp)
	nop
	and	$4,$4,$2
	lw	$2,8($fp)
	nop
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,28($fp)
	lw	$3,16($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,24($fp)
	lw	$3,28($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$3,$2
	sw	$2,16($fp)
	lw	$3,28($fp)
	lw	$2,12($fp)
	nop
	and	$2,$3,$2
	sw	$2,28($fp)
	lw	$3,44($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$3,$2
	lw	$4,40($fp)
	lw	$2,12($fp)
	nop
	and	$2,$4,$2
	mult	$3,$2
	lw	$2,16($fp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,16($fp)
	lw	$3,28($fp)
	lw	$4,16($fp)
	lw	$2,12($fp)
	nop
	and	$4,$4,$2
	lw	$2,8($fp)
	nop
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	move	$4,$2
	lw	$3,16($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	nop
	move	$5,$2
	lw	$3,40($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$3,$2
	lw	$4,44($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$4,$2
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,24($fp)
	lw	$3,28($fp)
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	sw	$5,60($fp)
	sw	$4,56($fp)
	sw	$7,68($fp)
	sw	$6,64($fp)
	lw	$3,60($fp)
	lw	$2,56($fp)
	sw	$3,28($fp)
	sw	$2,24($fp)
	lw	$3,68($fp)
	lw	$2,64($fp)
	sw	$3,36($fp)
	sw	$2,32($fp)
	lw	$2,28($fp)
	lw	$3,36($fp)
	nop
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__muldsi3
	nop

	.option	pic2
	sw	$3,44($fp)
	sw	$2,40($fp)
	lw	$2,40($fp)
	nop
	move	$4,$2
	lw	$2,24($fp)
	nop
	move	$3,$2
	lw	$2,36($fp)
	nop
	mult	$3,$2
	mflo	$2
	lw	$3,28($fp)
	lw	$5,32($fp)
	nop
	mult	$3,$5
	mflo	$3
	addu	$2,$2,$3
	addu	$2,$4,$2
	sw	$2,40($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$5,12($fp)
	sw	$4,8($fp)
	lw	$7,12($fp)
	lw	$6,8($fp)
	move	$5,$0
	move	$4,$0
	subu	$3,$5,$7
	sltu	$8,$5,$3
	subu	$2,$4,$6
	subu	$4,$2,$8
	move	$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	move	$3,$2
	lw	$2,20($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,16
	lw	$3,8($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,8
	lw	$3,8($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,4
	lw	$3,8($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	andi	$2,$2,0x1
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,16
	lw	$3,8($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,8
	lw	$3,8($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,4
	lw	$3,8($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	andi	$2,$2,0x1
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 8
	.mask	0x40010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	sw	$16,24($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	sw	$5,12($fp)
	sw	$4,8($fp)
	lw	$4,8($fp)
	nop
	sll	$4,$4,31
	lw	$5,12($fp)
	nop
	srl	$9,$5,1
	or	$9,$4,$9
	lw	$4,8($fp)
	nop
	srl	$8,$4,1
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	and	$14,$8,$4
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	and	$15,$9,$4
	lw	$9,12($fp)
	lw	$8,8($fp)
	subu	$5,$9,$15
	sltu	$16,$9,$5
	subu	$4,$8,$14
	subu	$8,$4,$16
	move	$4,$8
	sw	$5,12($fp)
	sw	$4,8($fp)
	lw	$4,8($fp)
	nop
	sll	$4,$4,30
	lw	$5,12($fp)
	nop
	srl	$7,$5,2
	or	$7,$4,$7
	lw	$4,8($fp)
	nop
	srl	$6,$4,2
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$10,$6,$4
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$11,$7,$4
	lw	$5,8($fp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$12,$5,$4
	lw	$5,12($fp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	and	$13,$5,$4
	addu	$5,$11,$13
	sltu	$6,$5,$11
	addu	$4,$10,$12
	addu	$6,$6,$4
	move	$4,$6
	sw	$5,12($fp)
	sw	$4,8($fp)
	lw	$4,8($fp)
	nop
	sll	$4,$4,28
	lw	$5,12($fp)
	nop
	srl	$3,$5,4
	or	$3,$4,$3
	lw	$4,8($fp)
	nop
	srl	$2,$4,4
	lw	$7,12($fp)
	lw	$6,8($fp)
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
	sw	$4,8($fp)
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	and	$2,$3,$4
	sw	$2,12($fp)
	lw	$2,12($fp)
	lw	$3,8($fp)
	nop
	srl	$25,$3,0
	move	$24,$0
	move	$3,$25
	addu	$2,$2,$3
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	srl	$2,$2,16
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	srl	$3,$2,8
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	andi	$2,$2,0x7f
	move	$sp,$fp
	lw	$fp,28($sp)
	lw	$16,24($sp)
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$2,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	and	$2,$3,$2
	lw	$3,8($fp)
	nop
	subu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$2,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$3,$3,$2
	lw	$4,8($fp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$2,4
	lw	$2,8($fp)
	nop
	addu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$2,$2,16
	lw	$3,8($fp)
	nop
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	srl	$3,$2,8
	lw	$2,8($fp)
	nop
	addu	$2,$3,$2
	andi	$2,$2,0x3f
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	swc1	$f12,36($fp)
	swc1	$f13,32($fp)
	sw	$6,40($fp)
	lw	$2,40($fp)
	nop
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,16($fp)
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
	nop
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L785:
	lw	$2,40($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L782
	nop

	lwc1	$f2,12($fp)
	nop
	lwc1	$f3,8($fp)
	lwc1	$f0,36($fp)
	nop
	lwc1	$f1,32($fp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L782:
	lw	$2,40($fp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,40($fp)
	lw	$2,40($fp)
	nop
	beq	$2,$0,$L790
	nop

	lwc1	$f0,36($fp)
	nop
	lwc1	$f1,32($fp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,36($fp)
	swc1	$f1,32($fp)
	.option	pic0
	b	$L785
	nop

	.option	pic2
$L790:
	nop
	lw	$2,16($fp)
	nop
	beq	$2,$0,$L786
	nop

	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lui	$2,%hi($LC8)
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
	.option	pic0
	b	$L788
	nop

	.option	pic2
$L786:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L788:
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,24($fp)
	sw	$5,28($fp)
	lw	$2,28($fp)
	nop
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,12($fp)
	lui	$2,%hi($LC11)
	lwc1	$f0,%lo($LC11)($2)
	nop
	swc1	$f0,8($fp)
$L795:
	lw	$2,28($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L792
	nop

	lwc1	$f2,8($fp)
	lwc1	$f0,24($fp)
	nop
	mul.s	$f0,$f2,$f0
	swc1	$f0,8($fp)
$L792:
	lw	$2,28($fp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,28($fp)
	lw	$2,28($fp)
	nop
	beq	$2,$0,$L800
	nop

	lwc1	$f0,24($fp)
	nop
	mul.s	$f0,$f0,$f0
	swc1	$f0,24($fp)
	.option	pic0
	b	$L795
	nop

	.option	pic2
$L800:
	nop
	lw	$2,12($fp)
	nop
	beq	$2,$0,$L796
	nop

	lwc1	$f0,8($fp)
	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
	.option	pic0
	b	$L798
	nop

	.option	pic2
$L796:
	lwc1	$f0,8($fp)
$L798:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	sw	$7,44($fp)
	sw	$6,40($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sw	$3,12($fp)
	sw	$2,8($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	lw	$3,8($fp)
	lw	$2,16($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L802
	nop

	move	$2,$0
	.option	pic0
	b	$L807
	nop

	.option	pic2
$L802:
	lw	$3,8($fp)
	lw	$2,16($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L804
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L807
	nop

	.option	pic2
$L804:
	lw	$3,12($fp)
	lw	$2,20($fp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L805
	nop

	move	$2,$0
	.option	pic0
	b	$L807
	nop

	.option	pic2
$L805:
	lw	$3,12($fp)
	lw	$2,20($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L806
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L807
	nop

	.option	pic2
$L806:
	li	$2,1			# 0x1
$L807:
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$5,36($fp)
	sw	$4,32($fp)
	sw	$7,44($fp)
	sw	$6,40($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	lw	$7,44($fp)
	lw	$6,40($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__ucmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.rdata
	.align	2
$LC0:
	.word	-8388609
	.align	2
$LC1:
	.word	2139095039
	.align	3
$LC2:
	.word	-1048577
	.word	-1
	.align	3
$LC3:
	.word	2146435071
	.word	-1
	.align	2
$LC4:
	.word	1056964608
	.align	2
$LC5:
	.word	1073741824
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
