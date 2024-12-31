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
	b	$L11
	nop

	.option	pic2
$L13:
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
$L11:
	lw	$2,28($sp)
	nop
	beq	$2,$0,$L12
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
	bne	$2,$3,$L13
	nop

$L12:
	lw	$2,28($sp)
	nop
	beq	$2,$0,$L14
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	.option	pic0
	b	$L15
	nop

	.option	pic2
$L14:
	move	$2,$0
$L15:
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
	b	$L18
	nop

	.option	pic2
$L20:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,24($sp)
$L18:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L19
	nop

	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,20($sp)
	nop
	bne	$2,$3,$L20
	nop

$L19:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L21
	nop

	lw	$2,8($sp)
	.option	pic0
	b	$L23
	nop

	.option	pic2
$L21:
	move	$2,$0
$L23:
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
	b	$L26
	nop

	.option	pic2
$L28:
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
$L26:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L27
	nop

	lw	$2,8($sp)
	nop
	lbu	$3,0($2)
	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$3,$2,$L28
	nop

$L27:
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L29
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
	b	$L31
	nop

	.option	pic2
$L29:
	move	$2,$0
$L31:
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
	b	$L34
	nop

	.option	pic2
$L35:
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
$L34:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L35
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
	b	$L39
	nop

	.option	pic2
$L41:
	lw	$3,8($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,20($sp)
	nop
	bne	$2,$3,$L39
	nop

	lw	$3,8($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	.option	pic0
	b	$L40
	nop

	.option	pic2
$L39:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L41
	nop

	move	$2,$0
$L40:
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
	b	$L44
	nop

	.option	pic2
$L45:
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
$L44:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L45
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
	b	$L49
	nop

	.option	pic2
$L50:
	lw	$2,4($sp)
	nop
	addiu	$2,$2,1
	sw	$2,4($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	sw	$2,0($sp)
$L49:
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
	bne	$2,$0,$L50
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
	b	$L53
	nop

	.option	pic2
$L55:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	sw	$2,0($sp)
$L53:
	lw	$2,0($sp)
	nop
	lb	$2,0($2)
	nop
	beq	$2,$0,$L54
	nop

	lw	$2,0($sp)
	nop
	lbu	$2,0($2)
	nop
	move	$3,$2
	lw	$2,4($sp)
	nop
	bne	$2,$3,$L55
	nop

$L54:
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
$L60:
	lb	$3,0($2)
	nop
	move	$4,$3
	lw	$3,4($sp)
	nop
	bne	$3,$4,$L58
	nop

	jr	$31
	nop

$L58:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	nop
	bne	$3,$0,$L60
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
	b	$L62
	nop

	.option	pic2
$L64:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,1
	sw	$2,0($sp)
	lw	$2,4($sp)
	nop
	addiu	$2,$2,1
	sw	$2,4($sp)
$L62:
	lw	$2,0($sp)
	nop
	lb	$3,0($2)
	lw	$2,4($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L63
	nop

	lw	$2,0($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L64
	nop

$L63:
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
	b	$L67
	nop

	.option	pic2
$L68:
	lw	$2,16($sp)
	nop
	addiu	$2,$2,1
	sw	$2,16($sp)
$L67:
	lw	$2,16($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L68
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
	bne	$2,$0,$L74
	nop

	move	$2,$0
	.option	pic0
	b	$L73
	nop

	.option	pic2
$L76:
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
$L74:
	lw	$2,8($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L75
	nop

	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L75
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L75
	nop

	lw	$2,8($sp)
	nop
	lbu	$3,0($2)
	lw	$2,12($sp)
	nop
	lbu	$2,0($2)
	nop
	beq	$3,$2,$L76
	nop

$L75:
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
$L73:
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
	b	$L79
	nop

	.option	pic2
$L80:
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
$L79:
	lw	$2,24($sp)
	nop
	slt	$2,$2,2
	beq	$2,$0,$L80
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
	beq	$3,$2,$L87
	nop

	lw	$3,0($sp)
	li	$2,9			# 0x9
	bne	$3,$2,$L88
	nop

$L87:
	li	$2,1			# 0x1
	jr	$31
	nop

$L88:
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
	bne	$2,$0,$L92
	nop

	lw	$3,0($sp)
	li	$2,127			# 0x7f
	bne	$3,$2,$L93
	nop

$L92:
	li	$2,1			# 0x1
	jr	$31
	nop

$L93:
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
	beq	$3,$2,$L105
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beq	$2,$0,$L106
	nop

$L105:
	li	$2,1			# 0x1
	jr	$31
	nop

$L106:
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
	bne	$2,$0,$L112
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bne	$2,$0,$L112
	nop

	lw	$2,0($sp)
	nop
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L112
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beq	$2,$0,$L113
	nop

$L112:
	li	$2,1			# 0x1
	jr	$31
	nop

$L113:
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
	beq	$2,$0,$L119
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

$L119:
	lw	$2,0($sp)
	nop
	sltu	$2,$2,8232
	bne	$2,$0,$L121
	nop

	lw	$2,0($sp)
	nop
	addiu	$3,$2,-8234
	li	$2,47062			# 0xb7d6
	sltu	$2,$3,$2
	bne	$2,$0,$L121
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beq	$2,$0,$L122
	nop

$L121:
	li	$2,1			# 0x1
	jr	$31
	nop

$L122:
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$3,$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beq	$2,$0,$L123
	nop

	lw	$2,0($sp)
	nop
	andi	$3,$2,0xfffe
	li	$2,65534			# 0xfffe
	bne	$3,$2,$L124
	nop

$L123:
	move	$2,$0
	jr	$31
	nop

$L124:
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
	bne	$2,$0,$L126
	nop

	lw	$2,0($sp)
	nop
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beq	$2,$0,$L127
	nop

$L126:
	li	$2,1			# 0x1
	jr	$31
	nop

$L127:
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
	bc1f	$L133
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L133:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L135
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L135:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L140
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

$L140:
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
	bc1f	$L142
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L142:
	lwc1	$f2,4($sp)
	lwc1	$f0,4($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L144
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L144:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L149
	nop

	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	sub.s	$f0,$f2,$f0
	jr	$31
	nop

$L149:
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
	bc1f	$L151
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L151:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L153
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L153:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L154
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L155
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L155:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L154:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L161
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L161:
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
	bc1f	$L163
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L163:
	lwc1	$f2,4($sp)
	lwc1	$f0,4($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L165
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L165:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,4($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L166
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L167
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L167:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L166:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L173
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L173:
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
	bc1f	$L175
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L175:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L177
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L177:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L178
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L179
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L179:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L178:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L185
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L185:
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
	bc1f	$L187
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L187:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L189
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L189:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L190
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L191
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L191:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L190:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L197
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L197:
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
	bc1f	$L199
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L199:
	lwc1	$f2,4($sp)
	lwc1	$f0,4($sp)
	nop
	c.un.s	$f2,$f0
	nop
	bc1f	$L201
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L201:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,4($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L202
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L203
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L203:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L202:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f2,$f0
	nop
	bc1f	$L209
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L209:
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
	bc1f	$L211
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L211:
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.un.d	$f2,$f0
	nop
	bc1f	$L213
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L213:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	move	$4,$2
	lw	$3,8($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$4,$2,$L214
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beq	$2,$0,$L215
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L215:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L214:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L221
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L221:
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
	b	$L223
	nop

	.option	pic2
$L224:
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
$L223:
	lw	$2,12($sp)
	nop
	bne	$2,$0,$L224
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
	lw	$2,0($sp)
	nop
	addiu	$2,$2,-1
	move	$3,$2
	move	$4,$0
	lui	$2,%hi(seed)
	sw	$4,%lo(seed)($2)
	sw	$3,%lo(seed+4)($2)
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
	lw	$4,%lo(seed)($2)
	lw	$2,%lo(seed+4)($2)
	li	$3,1284833280			# 0x4c950000
	ori	$3,$3,0x7f2d
	mult	$4,$3
	mflo	$3
	li	$4,1481703424			# 0x58510000
	ori	$4,$4,0xf42d
	mult	$2,$4
	mflo	$4
	addu	$4,$3,$4
	li	$3,1284833280			# 0x4c950000
	ori	$3,$3,0x7f2d
	multu	$2,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	move	$7,$0
	li	$6,1			# 0x1
	addu	$5,$3,$6
	sltu	$6,$5,$3
	addu	$4,$2,$7
	addu	$2,$6,$4
	move	$4,$2
	move	$3,$5
	lui	$2,%hi(seed)
	sw	$4,%lo(seed)($2)
	sw	$3,%lo(seed+4)($2)
	lui	$2,%hi(seed)
	lw	$2,%lo(seed)($2)
	nop
	srl	$2,$2,1
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
	bne	$2,$0,$L231
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
	b	$L230
	nop

	.option	pic2
$L231:
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
	beq	$2,$0,$L230
	nop

	lw	$2,8($sp)
	nop
	lw	$2,0($2)
	lw	$3,8($sp)
	nop
	sw	$3,4($2)
$L230:
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
	beq	$2,$0,$L235
	nop

	lw	$2,8($sp)
	nop
	lw	$2,0($2)
	lw	$3,8($sp)
	nop
	lw	$3,4($3)
	nop
	sw	$3,4($2)
$L235:
	lw	$2,8($sp)
	nop
	lw	$2,4($2)
	nop
	beq	$2,$0,$L237
	nop

	lw	$2,8($sp)
	nop
	lw	$2,4($2)
	lw	$3,8($sp)
	nop
	lw	$3,0($3)
	nop
	sw	$3,0($2)
$L237:
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
	move	$2,$16
	addiu	$2,$16,-1
	sw	$2,28($sp)
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
	b	$L240
	nop

	.option	pic2
$L243:
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

	bne	$2,$0,$L241
	nop

	lw	$2,24($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$2,$2,$3
	.option	pic0
	b	$L242
	nop

	.option	pic2
$L241:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L240:
	lw	$3,24($sp)
	lw	$2,36($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L243
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
$L242:
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
	move	$2,$16
	addiu	$2,$16,-1
	sw	$2,28($sp)
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
	b	$L246
	nop

	.option	pic2
$L249:
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

	bne	$2,$0,$L247
	nop

	lw	$2,24($sp)
	nop
	mult	$16,$2
	lw	$2,32($sp)
	mflo	$3
	addu	$2,$2,$3
	.option	pic0
	b	$L248
	nop

	.option	pic2
$L247:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L246:
	lw	$3,24($sp)
	lw	$2,36($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L249
	nop

	move	$2,$0
$L248:
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
	bgez	$2,$L252
	nop

	subu	$2,$0,$2
$L252:
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
	b	$L255
	nop

	.option	pic2
$L256:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
$L255:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	move	$4,$2
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L256
	nop

	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L257
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L259
	nop

	li	$2,1			# 0x1
	sw	$2,28($sp)
$L257:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
	.option	pic0
	b	$L259
	nop

	.option	pic2
$L260:
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
$L259:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L260
	nop

	lw	$2,28($sp)
	nop
	bne	$2,$0,$L261
	nop

	lw	$2,24($sp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L263
	nop

	.option	pic2
$L261:
	lw	$2,24($sp)
$L263:
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
	b	$L266
	nop

	.option	pic2
$L267:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
$L266:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	move	$4,$2
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L267
	nop

	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L268
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L270
	nop

	li	$2,1			# 0x1
	sw	$2,28($sp)
$L268:
	lw	$2,40($sp)
	nop
	addiu	$2,$2,1
	sw	$2,40($sp)
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L271:
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
$L270:
	lw	$2,40($sp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L271
	nop

	lw	$2,28($sp)
	nop
	bne	$2,$0,$L272
	nop

	lw	$2,24($sp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L274
	nop

	.option	pic2
$L272:
	lw	$2,24($sp)
$L274:
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
	.frame	$sp,48,$31		# vars= 16, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$4,48($sp)
	move	$3,$0
	move	$2,$0
	sw	$3,28($sp)
	sw	$2,24($sp)
	sw	$0,32($sp)
	.option	pic0
	b	$L277
	nop

	.option	pic2
$L278:
	lw	$2,48($sp)
	nop
	addiu	$2,$2,1
	sw	$2,48($sp)
$L277:
	lw	$2,48($sp)
	nop
	lb	$2,0($2)
	nop
	move	$4,$2
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L278
	nop

	lw	$2,48($sp)
	nop
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,$L279
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L281
	nop

	li	$2,1			# 0x1
	sw	$2,32($sp)
$L279:
	lw	$2,48($sp)
	nop
	addiu	$2,$2,1
	sw	$2,48($sp)
	.option	pic0
	b	$L281
	nop

	.option	pic2
$L282:
	lw	$6,24($sp)
	lw	$7,28($sp)
	move	$3,$6
	move	$2,$7
	srl	$4,$2,30
	sll	$3,$3,2
	or	$3,$4,$3
	sll	$2,$2,2
	addu	$5,$2,$7
	sltu	$2,$5,$2
	addu	$4,$3,$6
	addu	$2,$2,$4
	move	$4,$2
	move	$3,$4
	move	$2,$5
	srl	$4,$2,31
	sll	$3,$3,1
	or	$3,$4,$3
	sll	$2,$2,1
	move	$6,$3
	move	$4,$2
	lw	$2,48($sp)
	nop
	addiu	$3,$2,1
	sw	$3,48($sp)
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	move	$7,$2
	sra	$2,$2,31
	move	$5,$2
	subu	$3,$4,$7
	sltu	$4,$4,$3
	subu	$2,$6,$5
	subu	$2,$2,$4
	sw	$2,24($sp)
	sw	$3,28($sp)
$L281:
	lw	$2,48($sp)
	nop
	lb	$2,0($2)
	nop
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L282
	nop

	lw	$2,32($sp)
	nop
	bne	$2,$0,$L283
	nop

	move	$7,$0
	move	$4,$0
	lw	$5,24($sp)
	lw	$6,28($sp)
	nop
	subu	$3,$4,$6
	sltu	$4,$4,$3
	subu	$2,$7,$5
	subu	$2,$2,$4
	move	$4,$2
	move	$2,$3
	.option	pic0
	b	$L285
	nop

	.option	pic2
$L283:
	lw	$4,24($sp)
	lw	$2,28($sp)
	nop
$L285:
	move	$3,$2
	move	$2,$4
	lw	$31,44($sp)
	addiu	$sp,$sp,48
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
	b	$L288
	nop

	.option	pic2
$L293:
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
	bgez	$2,$L289
	nop

	lw	$2,48($sp)
	nop
	srl	$2,$2,1
	sw	$2,48($sp)
	.option	pic0
	b	$L288
	nop

	.option	pic2
$L289:
	lw	$2,28($sp)
	nop
	blez	$2,$L291
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
	b	$L288
	nop

	.option	pic2
$L291:
	lw	$2,24($sp)
	.option	pic0
	b	$L292
	nop

	.option	pic2
$L288:
	lw	$2,48($sp)
	nop
	bne	$2,$0,$L293
	nop

	move	$2,$0
$L292:
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
	b	$L296
	nop

	.option	pic2
$L300:
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
	bne	$2,$0,$L297
	nop

	lw	$2,32($sp)
	.option	pic0
	b	$L298
	nop

	.option	pic2
$L297:
	lw	$2,36($sp)
	nop
	blez	$2,$L299
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
$L299:
	lw	$2,28($sp)
	nop
	sra	$2,$2,1
	sw	$2,28($sp)
$L296:
	lw	$2,28($sp)
	nop
	bne	$2,$0,$L300
	nop

	move	$2,$0
$L298:
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
	lw	$2,0($sp)
	lw	$3,4($sp)
	bgez	$2,$L306
	nop

	move	$7,$0
	move	$6,$0
	subu	$5,$6,$3
	sltu	$3,$6,$5
	subu	$4,$7,$2
	subu	$2,$4,$3
	move	$4,$2
	move	$2,$4
	move	$3,$5
$L306:
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
	move	$4,$2
	move	$2,$3
	move	$17,$4
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
	move	$4,$2
	move	$2,$3
	move	$3,$2
	lw	$2,56($sp)
	nop
	sw	$17,0($2)
	sw	$16,4($2)
	lw	$2,56($sp)
	nop
	sw	$4,8($2)
	sw	$3,12($2)
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
	bgez	$2,$L313
	nop

	subu	$2,$0,$2
$L313:
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
	lw	$2,0($sp)
	lw	$3,4($sp)
	bgez	$2,$L319
	nop

	move	$7,$0
	move	$6,$0
	subu	$5,$6,$3
	sltu	$3,$6,$5
	subu	$4,$7,$2
	subu	$2,$4,$3
	move	$4,$2
	move	$2,$4
	move	$3,$5
$L319:
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
	move	$4,$2
	move	$2,$3
	move	$17,$4
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
	move	$4,$2
	move	$2,$3
	move	$3,$2
	lw	$2,56($sp)
	nop
	sw	$17,0($2)
	sw	$16,4($2)
	lw	$2,56($sp)
	nop
	sw	$4,8($2)
	sw	$3,12($2)
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
	b	$L326
	nop

	.option	pic2
$L328:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
$L326:
	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L327
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	lw	$3,4($sp)
	nop
	bne	$3,$2,$L328
	nop

$L327:
	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L329
	nop

	lw	$2,0($sp)
	jr	$31
	nop

$L329:
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
	b	$L333
	nop

	.option	pic2
$L335:
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
	lw	$2,4($sp)
	nop
	addiu	$2,$2,4
	sw	$2,4($sp)
$L333:
	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$3,$2,$L334
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L334
	nop

	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L335
	nop

$L334:
	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L336
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

$L336:
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
$L340:
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
	bne	$2,$0,$L340
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
	b	$L344
	nop

	.option	pic2
$L345:
	lw	$2,16($sp)
	nop
	addiu	$2,$2,4
	sw	$2,16($sp)
$L344:
	lw	$2,16($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L345
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
	b	$L349
	nop

	.option	pic2
$L351:
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
$L349:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L350
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$3,$2,$L350
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$2,$0,$L350
	nop

	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,$L351
	nop

$L350:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L352
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L353
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

$L353:
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L352:
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
	b	$L358
	nop

	.option	pic2
$L360:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($sp)
	lw	$2,0($sp)
	nop
	addiu	$2,$2,4
	sw	$2,0($sp)
$L358:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L359
	nop

	lw	$2,0($sp)
	nop
	lw	$2,0($2)
	lw	$3,4($sp)
	nop
	bne	$3,$2,$L360
	nop

$L359:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L361
	nop

	lw	$2,0($sp)
	jr	$31
	nop

$L361:
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
	b	$L365
	nop

	.option	pic2
$L367:
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
$L365:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L366
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	beq	$3,$2,$L367
	nop

$L366:
	lw	$2,8($sp)
	nop
	beq	$2,$0,$L368
	nop

	lw	$2,0($sp)
	nop
	lw	$3,0($2)
	lw	$2,4($sp)
	nop
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L369
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

$L369:
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L368:
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
	b	$L374
	nop

	.option	pic2
$L375:
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
$L374:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L375
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
	bne	$3,$2,$L379
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L380
	nop

	.option	pic2
$L379:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	subu	$3,$3,$2
	lw	$2,24($sp)
	nop
	sll	$2,$2,2
	sltu	$2,$3,$2
	beq	$2,$0,$L385
	nop

	.option	pic0
	b	$L382
	nop

	.option	pic2
$L383:
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
$L382:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L383
	nop

	.option	pic0
	b	$L384
	nop

	.option	pic2
$L386:
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
$L385:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L386
	nop

$L384:
	lw	$2,8($sp)
$L380:
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
	b	$L389
	nop

	.option	pic2
$L390:
	lw	$2,16($sp)
	nop
	addiu	$3,$2,4
	sw	$3,16($sp)
	lw	$3,20($sp)
	nop
	sw	$3,0($2)
$L389:
	lw	$2,24($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,24($sp)
	bne	$2,$0,$L390
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
	beq	$2,$0,$L394
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
	b	$L395
	nop

	.option	pic2
$L396:
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
$L395:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L396
	nop

	.option	pic0
	b	$L400
	nop

	.option	pic2
$L394:
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	beq	$3,$2,$L400
	nop

	.option	pic0
	b	$L398
	nop

	.option	pic2
$L399:
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
$L398:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L399
	nop

$L400:
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
	lw	$4,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	nop
	andi	$3,$3,0x20
	beq	$3,$0,$L403
	nop

	lw	$3,8($sp)
	nop
	sll	$3,$2,$3
	move	$6,$0
	.option	pic0
	b	$L404
	nop

	.option	pic2
$L403:
	srl	$5,$2,1
	lw	$3,8($sp)
	nop
	nor	$3,$0,$3
	srl	$5,$5,$3
	lw	$3,8($sp)
	nop
	sll	$3,$4,$3
	or	$3,$5,$3
	lw	$5,8($sp)
	nop
	sll	$6,$2,$5
$L404:
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	andi	$5,$5,0x20
	beq	$5,$0,$L405
	nop

	lw	$2,8($sp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x3f
	srl	$2,$4,$2
	move	$4,$0
	.option	pic0
	b	$L406
	nop

	.option	pic2
$L405:
	sll	$7,$4,1
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	nor	$5,$0,$5
	sll	$7,$7,$5
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	srl	$2,$2,$5
	or	$2,$7,$2
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	srl	$4,$4,$5
$L406:
	or	$3,$4,$3
	or	$2,$2,$6
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	lw	$2,0($sp)
	lw	$4,4($sp)
	lw	$3,8($sp)
	nop
	andi	$3,$3,0x20
	beq	$3,$0,$L409
	nop

	lw	$3,8($sp)
	nop
	srl	$3,$2,$3
	move	$6,$0
	.option	pic0
	b	$L410
	nop

	.option	pic2
$L409:
	sll	$5,$2,1
	lw	$3,8($sp)
	nop
	nor	$3,$0,$3
	sll	$5,$5,$3
	lw	$3,8($sp)
	nop
	srl	$3,$4,$3
	or	$3,$5,$3
	lw	$5,8($sp)
	nop
	srl	$6,$2,$5
$L410:
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	andi	$5,$5,0x20
	beq	$5,$0,$L411
	nop

	lw	$2,8($sp)
	nop
	subu	$2,$0,$2
	andi	$2,$2,0x3f
	sll	$2,$4,$2
	move	$4,$0
	.option	pic0
	b	$L412
	nop

	.option	pic2
$L411:
	srl	$7,$4,1
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	nor	$5,$0,$5
	srl	$7,$7,$5
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	sll	$2,$2,$5
	or	$2,$7,$2
	lw	$5,8($sp)
	nop
	subu	$5,$0,$5
	andi	$5,$5,0x3f
	sll	$4,$4,$5
$L412:
	or	$2,$2,$6
	or	$3,$4,$3
	move	$4,$3
	move	$3,$4
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$5,20($sp)
	sw	$4,16($sp)
	li	$3,255			# 0xff
	move	$2,$0
	sw	$3,12($sp)
	sw	$2,8($sp)
	lw	$2,12($sp)
	nop
	sll	$2,$2,24
	lw	$3,16($sp)
	nop
	and	$2,$3,$2
	srl	$3,$2,24
	move	$5,$0
	lw	$2,12($sp)
	nop
	sll	$2,$2,16
	lw	$4,16($sp)
	nop
	and	$2,$4,$2
	srl	$2,$2,8
	move	$4,$0
	or	$4,$5,$4
	or	$5,$3,$2
	lw	$2,12($sp)
	nop
	sll	$2,$2,8
	move	$6,$0
	lw	$3,16($sp)
	nop
	and	$3,$3,$2
	lw	$2,20($sp)
	nop
	and	$2,$2,$6
	sll	$6,$3,8
	srl	$2,$2,24
	or	$2,$6,$2
	srl	$3,$3,24
	or	$4,$4,$3
	or	$5,$5,$2
	lw	$2,12($sp)
	nop
	sll	$2,$2,0
	move	$6,$0
	lw	$3,16($sp)
	nop
	and	$3,$3,$2
	lw	$2,20($sp)
	nop
	and	$2,$2,$6
	sll	$6,$3,24
	srl	$2,$2,8
	or	$2,$6,$2
	srl	$3,$3,8
	or	$4,$4,$3
	or	$5,$5,$2
	lw	$2,12($sp)
	nop
	srl	$3,$2,8
	lw	$2,8($sp)
	nop
	sll	$2,$2,24
	or	$2,$3,$2
	lw	$3,12($sp)
	nop
	sll	$3,$3,24
	lw	$6,16($sp)
	nop
	and	$2,$6,$2
	lw	$6,20($sp)
	nop
	and	$3,$6,$3
	srl	$6,$3,24
	sll	$2,$2,8
	or	$2,$6,$2
	sll	$3,$3,8
	or	$4,$4,$2
	or	$5,$5,$3
	lw	$2,12($sp)
	nop
	srl	$3,$2,16
	lw	$2,8($sp)
	nop
	sll	$2,$2,16
	or	$2,$3,$2
	lw	$3,12($sp)
	nop
	sll	$3,$3,16
	lw	$6,16($sp)
	nop
	and	$2,$6,$2
	lw	$6,20($sp)
	nop
	and	$3,$6,$3
	srl	$6,$3,8
	sll	$2,$2,24
	or	$2,$6,$2
	sll	$3,$3,24
	or	$4,$4,$2
	or	$2,$5,$3
	lw	$3,12($sp)
	nop
	sll	$3,$3,8
	lw	$5,20($sp)
	nop
	and	$3,$5,$3
	sll	$3,$3,8
	move	$5,$0
	or	$4,$4,$3
	or	$2,$2,$5
	lw	$5,20($sp)
	lw	$3,12($sp)
	nop
	and	$3,$5,$3
	sll	$3,$3,24
	move	$5,$0
	or	$3,$4,$3
	or	$2,$2,$5
	move	$4,$3
	move	$3,$2
	move	$2,$4
	addiu	$sp,$sp,16
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
	b	$L440
	nop

	.option	pic2
$L443:
	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L441
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	.option	pic0
	b	$L442
	nop

	.option	pic2
$L441:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L440:
	lw	$2,8($sp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L443
	nop

	move	$2,$0
$L442:
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
	bne	$4,$0,$L446
	nop

	move	$2,$0
	jr	$31
	nop

$L446:
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
	move	$2,$4
	li	$16,1			# 0x1
	.option	pic0
	b	$L448
	nop

	.option	pic2
$L449:
	sra	$2,$2,1
	addiu	$16,$16,1
$L448:
	andi	$3,$2,0x1
	beq	$3,$0,$L449
	nop

	move	$2,$16
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
	bc1t	$L454
	nop

	lwc1	$f2,0($sp)
	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L459
	nop

$L454:
	li	$2,1			# 0x1
	jr	$31
	nop

$L459:
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
	bc1t	$L462
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
	bc1f	$L467
	nop

$L462:
	li	$2,1			# 0x1
	jr	$31
	nop

$L467:
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
	bc1t	$L470
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
	bc1f	$L475
	nop

$L470:
	li	$2,1			# 0x1
	jr	$31
	nop

$L475:
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
	bc1t	$L479
	nop

	lwc1	$f0,16($sp)
	nop
	add.s	$f0,$f0,$f0
	lwc1	$f2,16($sp)
	nop
	c.eq.s	$f2,$f0
	nop
	bc1t	$L479
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L480
	nop

	lui	$2,%hi($LC4)
	lwc1	$f0,%lo($LC4)($2)
	.option	pic0
	b	$L481
	nop

	.option	pic2
$L480:
	lui	$2,%hi($LC5)
	lwc1	$f0,%lo($LC5)($2)
	nop
$L481:
	swc1	$f0,8($sp)
$L484:
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L482
	nop

	lwc1	$f2,16($sp)
	lwc1	$f0,8($sp)
	nop
	mul.s	$f0,$f2,$f0
	swc1	$f0,16($sp)
$L482:
	lw	$2,20($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	nop
	beq	$2,$0,$L486
	nop

	lwc1	$f0,8($sp)
	nop
	mul.s	$f0,$f0,$f0
	swc1	$f0,8($sp)
	.option	pic0
	b	$L484
	nop

	.option	pic2
$L486:
	nop
$L479:
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
	bc1t	$L489
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
	bc1t	$L489
	nop

	lw	$2,24($sp)
	nop
	bgez	$2,$L490
	nop

	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	.option	pic0
	b	$L491
	nop

	.option	pic2
$L490:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	nop
$L491:
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L494:
	lw	$2,24($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L492
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
$L492:
	lw	$2,24($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L496
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
	.option	pic0
	b	$L494
	nop

	.option	pic2
$L496:
	nop
$L489:
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
	bc1t	$L499
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
	bc1t	$L499
	nop

	lw	$2,24($sp)
	nop
	bgez	$2,$L500
	nop

	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	.option	pic0
	b	$L501
	nop

	.option	pic2
$L500:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	nop
$L501:
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L504:
	lw	$2,24($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L502
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
$L502:
	lw	$2,24($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	nop
	beq	$2,$0,$L506
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
	.option	pic0
	b	$L504
	nop

	.option	pic2
$L506:
	nop
$L499:
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
	b	$L509
	nop

	.option	pic2
$L510:
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
$L509:
	lw	$2,24($sp)
	nop
	bne	$2,$0,$L510
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
	b	$L514
	nop

	.option	pic2
$L516:
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
$L514:
	lw	$2,48($sp)
	nop
	beq	$2,$0,$L515
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
	bne	$2,$0,$L516
	nop

$L515:
	lw	$2,48($sp)
	nop
	bne	$2,$0,$L517
	nop

	lw	$2,24($sp)
	nop
	sb	$0,0($2)
$L517:
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
	b	$L521
	nop

	.option	pic2
$L526:
	nop
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L521:
	lw	$3,8($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L522
	nop

	lw	$3,16($sp)
	lw	$2,8($sp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	bne	$2,$0,$L526
	nop

$L522:
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
	b	$L529
	nop

	.option	pic2
$L533:
	lw	$2,20($sp)
	nop
	sw	$2,8($sp)
	.option	pic0
	b	$L530
	nop

	.option	pic2
$L532:
	lw	$2,8($sp)
	nop
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$3,0($2)
	lw	$2,16($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L530
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L531
	nop

	.option	pic2
$L530:
	lw	$2,8($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L532
	nop

	lw	$2,16($sp)
	nop
	addiu	$2,$2,1
	sw	$2,16($sp)
$L529:
	lw	$2,16($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$2,$0,$L533
	nop

	move	$2,$0
$L531:
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
$L537:
	lb	$3,0($2)
	nop
	move	$4,$3
	lw	$3,20($sp)
	nop
	bne	$3,$4,$L536
	nop

	sw	$2,8($sp)
$L536:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	nop
	bne	$3,$0,$L537
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
	bne	$2,$0,$L543
	nop

	lw	$2,40($sp)
	.option	pic0
	b	$L542
	nop

	.option	pic2
$L545:
	lw	$6,28($sp)
	lw	$5,44($sp)
	lw	$4,24($sp)
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	bne	$2,$0,$L544
	nop

	lw	$2,24($sp)
	.option	pic0
	b	$L542
	nop

	.option	pic2
$L544:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L543:
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
	bne	$2,$0,$L545
	nop

	move	$2,$0
$L542:
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
	bc1f	$L548
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
	bc1t	$L550
	nop

$L548:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L551
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
	bc1f	$L551
	nop

$L550:
	lw	$5,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$2,$5,$4
	lw	$3,4($sp)
	.option	pic0
	b	$L554
	nop

	.option	pic2
$L551:
	lw	$3,4($sp)
	lw	$2,0($sp)
$L554:
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
	bne	$2,$0,$L558
	nop

	lw	$2,40($sp)
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L558:
	lw	$3,44($sp)
	lw	$2,52($sp)
	nop
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L560
	nop

	move	$2,$0
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L560:
	lw	$2,40($sp)
	nop
	sw	$2,24($sp)
	.option	pic0
	b	$L561
	nop

	.option	pic2
$L563:
	lw	$2,24($sp)
	nop
	lb	$3,0($2)
	lw	$2,48($sp)
	nop
	lb	$2,0($2)
	nop
	bne	$3,$2,$L562
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
	bne	$2,$0,$L562
	nop

	lw	$2,24($sp)
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L562:
	lw	$2,24($sp)
	nop
	addiu	$2,$2,1
	sw	$2,24($sp)
$L561:
	lw	$3,24($sp)
	lw	$2,28($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L563
	nop

	move	$2,$0
$L559:
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
	bc1f	$L569
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
$L569:
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
	bc1f	$L584
	nop

	.option	pic0
	b	$L573
	nop

	.option	pic2
$L574:
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
$L573:
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
	bc1t	$L574
	nop

	.option	pic0
	b	$L575
	nop

	.option	pic2
$L584:
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
	bc1f	$L575
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
	bc1t	$L575
	nop

	.option	pic0
	b	$L577
	nop

	.option	pic2
$L578:
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
$L577:
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
	bc1t	$L578
	nop

$L575:
	lw	$4,24($sp)
	lw	$5,12($sp)
	nop
	sw	$5,0($4)
	lw	$4,8($sp)
	nop
	beq	$4,$0,$L579
	nop

	lw	$5,16($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$2,$5,$4
	lw	$3,20($sp)
	nop
	sw	$3,20($sp)
	sw	$2,16($sp)
$L579:
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
	b	$L587
	nop

	.option	pic2
$L590:
	lw	$2,16($sp)
	nop
	andi	$4,$2,0
	lw	$2,20($sp)
	nop
	andi	$3,$2,0x1
	move	$2,$4
	or	$2,$2,$3
	beq	$2,$0,$L588
	nop

	lw	$6,8($sp)
	lw	$4,12($sp)
	lw	$5,32($sp)
	lw	$7,36($sp)
	nop
	addu	$3,$4,$7
	sltu	$4,$3,$4
	addu	$2,$6,$5
	addu	$2,$4,$2
	sw	$2,8($sp)
	sw	$3,12($sp)
$L588:
	lw	$2,36($sp)
	nop
	srl	$3,$2,31
	lw	$2,32($sp)
	nop
	sll	$2,$2,1
	or	$2,$3,$2
	lw	$3,36($sp)
	nop
	sll	$3,$3,1
	sw	$2,32($sp)
	sw	$3,36($sp)
	lw	$2,16($sp)
	nop
	sll	$3,$2,31
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	or	$2,$3,$2
	lw	$3,16($sp)
	nop
	srl	$3,$3,1
	sw	$3,16($sp)
	sw	$2,20($sp)
$L587:
	lw	$2,16($sp)
	lw	$3,20($sp)
	nop
	or	$2,$2,$3
	bne	$2,$0,$L590
	nop

	lw	$3,8($sp)
	lw	$2,12($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	b	$L594
	nop

	.option	pic2
$L596:
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	sw	$2,8($sp)
$L594:
	lw	$3,20($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L597
	nop

	lw	$2,8($sp)
	nop
	beq	$2,$0,$L597
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L596
	nop

	.option	pic0
	b	$L597
	nop

	.option	pic2
$L599:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L598
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
$L598:
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L597:
	lw	$2,8($sp)
	nop
	bne	$2,$0,$L599
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L600
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L601
	nop

	.option	pic2
$L600:
	lw	$2,12($sp)
$L601:
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
	sb	$4,40($sp)
	lb	$2,40($sp)
	nop
	bgez	$2,$L604
	nop

	lbu	$2,40($sp)
	nop
	nor	$2,$0,$2
	sb	$2,40($sp)
$L604:
	lb	$2,40($sp)
	nop
	bne	$2,$0,$L605
	nop

	li	$2,7			# 0x7
	.option	pic0
	b	$L606
	nop

	.option	pic2
$L605:
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
$L606:
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
	lw	$2,40($sp)
	nop
	bgez	$2,$L609
	nop

	lw	$2,40($sp)
	nop
	nor	$3,$0,$2
	lw	$2,44($sp)
	nop
	nor	$2,$0,$2
	sw	$3,40($sp)
	sw	$2,44($sp)
$L609:
	lw	$2,40($sp)
	lw	$3,44($sp)
	nop
	or	$2,$2,$3
	bne	$2,$0,$L611
	nop

	li	$2,63			# 0x3f
	.option	pic0
	b	$L612
	nop

	.option	pic2
$L611:
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
$L612:
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
	b	$L615
	nop

	.option	pic2
$L617:
	lw	$2,16($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L616
	nop

	lw	$3,8($sp)
	lw	$2,20($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
$L616:
	lw	$2,16($sp)
	nop
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
$L615:
	lw	$2,16($sp)
	nop
	bne	$2,$0,$L617
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
	bne	$2,$0,$L621
	nop

	lw	$3,24($sp)
	lw	$2,40($sp)
	nop
	addu	$2,$3,$2
	lw	$3,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L628
	nop

$L621:
	sw	$0,8($sp)
	.option	pic0
	b	$L623
	nop

	.option	pic2
$L624:
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
$L623:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L624
	nop

	.option	pic0
	b	$L625
	nop

	.option	pic2
$L626:
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
$L625:
	lw	$3,40($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$2,$3
	bne	$2,$0,$L626
	nop

	.option	pic0
	b	$L627
	nop

	.option	pic2
$L629:
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
$L628:
	lw	$2,40($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bne	$2,$0,$L629
	nop

	nop
$L627:
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
	bne	$2,$0,$L632
	nop

	lw	$3,20($sp)
	lw	$2,32($sp)
	nop
	addu	$2,$3,$2
	lw	$3,16($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L638
	nop

$L632:
	sw	$0,8($sp)
	.option	pic0
	b	$L634
	nop

	.option	pic2
$L635:
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
$L634:
	lw	$3,8($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L635
	nop

	lw	$2,32($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L637
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
	b	$L637
	nop

	.option	pic2
$L639:
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
$L638:
	lw	$2,32($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bne	$2,$0,$L639
	nop

	nop
$L637:
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
	bne	$2,$0,$L642
	nop

	lw	$3,24($sp)
	lw	$2,40($sp)
	nop
	addu	$2,$3,$2
	lw	$3,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L649
	nop

$L642:
	sw	$0,8($sp)
	.option	pic0
	b	$L644
	nop

	.option	pic2
$L645:
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
$L644:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L645
	nop

	.option	pic0
	b	$L646
	nop

	.option	pic2
$L647:
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
$L646:
	lw	$3,40($sp)
	lw	$2,12($sp)
	nop
	sltu	$2,$2,$3
	bne	$2,$0,$L647
	nop

	.option	pic0
	b	$L648
	nop

	.option	pic2
$L650:
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
$L649:
	lw	$2,40($sp)
	nop
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bne	$2,$0,$L650
	nop

	nop
$L648:
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
	bgez	$2,$L656
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L656:
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
	bgez	$2,$L659
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L659:
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
	sh	$4,16($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L671
	nop

	.option	pic2
$L674:
	lhu	$3,16($sp)
	li	$4,15			# 0xf
	lw	$2,8($sp)
	nop
	subu	$2,$4,$2
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L676
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L671:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L674
	nop

	.option	pic0
	b	$L673
	nop

	.option	pic2
$L676:
	nop
$L673:
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
	sh	$4,16($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L679
	nop

	.option	pic2
$L682:
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L684
	nop

	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L679:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L682
	nop

	.option	pic0
	b	$L681
	nop

	.option	pic2
$L684:
	nop
$L681:
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
	bc1f	$L691
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

$L691:
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
	sh	$4,16($sp)
	sw	$0,12($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L694
	nop

	.option	pic2
$L696:
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L695
	nop

	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L695:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L694:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L696
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
	sh	$4,16($sp)
	sw	$0,12($sp)
	sw	$0,8($sp)
	.option	pic0
	b	$L700
	nop

	.option	pic2
$L702:
	lhu	$3,16($sp)
	lw	$2,8($sp)
	nop
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L701
	nop

	lw	$2,12($sp)
	nop
	addiu	$2,$2,1
	sw	$2,12($sp)
$L701:
	lw	$2,8($sp)
	nop
	addiu	$2,$2,1
	sw	$2,8($sp)
$L700:
	lw	$2,8($sp)
	nop
	slt	$2,$2,16
	bne	$2,$0,$L702
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
	b	$L706
	nop

	.option	pic2
$L708:
	lw	$2,16($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L707
	nop

	lw	$3,8($sp)
	lw	$2,20($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
$L707:
	lw	$2,16($sp)
	nop
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
$L706:
	lw	$2,16($sp)
	nop
	bne	$2,$0,$L708
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
	bne	$2,$0,$L714
	nop

	move	$2,$0
	.option	pic0
	b	$L713
	nop

	.option	pic2
$L716:
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L715
	nop

	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	addu	$2,$3,$2
	sw	$2,8($sp)
$L715:
	lw	$2,16($sp)
	nop
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L714:
	lw	$2,20($sp)
	nop
	bne	$2,$0,$L716
	nop

	lw	$2,8($sp)
$L713:
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
	b	$L719
	nop

	.option	pic2
$L721:
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	sw	$2,8($sp)
$L719:
	lw	$3,20($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L722
	nop

	lw	$2,8($sp)
	nop
	beq	$2,$0,$L722
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L721
	nop

	.option	pic0
	b	$L722
	nop

	.option	pic2
$L724:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L723
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
$L723:
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L722:
	lw	$2,8($sp)
	nop
	bne	$2,$0,$L724
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L725
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L726
	nop

	.option	pic2
$L725:
	lw	$2,12($sp)
$L726:
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
	bc1f	$L736
	nop

	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L736:
	lwc1	$f2,0($sp)
	lwc1	$f0,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L737
	nop

	li	$2,1			# 0x1
	jr	$31
	nop

$L737:
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
	bc1f	$L746
	nop

	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	nop

$L746:
	lwc1	$f2,4($sp)
	nop
	lwc1	$f3,0($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L747
	nop

	li	$2,1			# 0x1
	jr	$31
	nop

$L747:
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
	lw	$2,0($sp)
	nop
	move	$3,$2
	sra	$2,$2,31
	move	$6,$2
	lw	$4,4($sp)
	nop
	move	$2,$4
	sra	$4,$4,31
	move	$5,$4
	mult	$6,$2
	mflo	$4
	nop
	nop
	mult	$5,$3
	mflo	$5
	addu	$4,$4,$5
	nop
	multu	$3,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	move	$4,$2
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
	lw	$2,0($sp)
	nop
	move	$3,$2
	move	$4,$0
	lw	$2,4($sp)
	move	$5,$0
	mult	$4,$2
	mflo	$4
	nop
	nop
	mult	$5,$3
	mflo	$5
	addu	$4,$4,$5
	nop
	multu	$3,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	move	$4,$2
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
	bgez	$2,$L753
	nop

	lw	$2,28($sp)
	nop
	subu	$2,$0,$2
	sw	$2,28($sp)
	li	$2,1			# 0x1
	sw	$2,12($sp)
$L753:
	sb	$0,8($sp)
	.option	pic0
	b	$L754
	nop

	.option	pic2
$L757:
	lw	$2,28($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L755
	nop

	lw	$3,16($sp)
	lw	$2,24($sp)
	nop
	addu	$2,$3,$2
	sw	$2,16($sp)
$L755:
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
$L754:
	lw	$2,28($sp)
	nop
	beq	$2,$0,$L756
	nop

	lbu	$2,8($sp)
	nop
	sltu	$2,$2,32
	bne	$2,$0,$L757
	nop

$L756:
	lw	$2,12($sp)
	nop
	beq	$2,$0,$L758
	nop

	lw	$2,16($sp)
	nop
	subu	$2,$0,$2
	.option	pic0
	b	$L760
	nop

	.option	pic2
$L758:
	lw	$2,16($sp)
$L760:
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
	bgez	$2,$L763
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
$L763:
	lw	$2,44($sp)
	nop
	bgez	$2,$L764
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
$L764:
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
	beq	$2,$0,$L765
	nop

	lw	$2,28($sp)
	nop
	subu	$2,$0,$2
	sw	$2,28($sp)
$L765:
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
	bgez	$2,$L769
	nop

	lw	$2,40($sp)
	nop
	subu	$2,$0,$2
	sw	$2,40($sp)
	li	$2,1			# 0x1
	sw	$2,24($sp)
$L769:
	lw	$2,44($sp)
	nop
	bgez	$2,$L770
	nop

	lw	$2,44($sp)
	nop
	subu	$2,$0,$2
	sw	$2,44($sp)
$L770:
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
	beq	$2,$0,$L771
	nop

	lw	$2,28($sp)
	nop
	subu	$2,$0,$2
	sw	$2,28($sp)
$L771:
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
	sh	$4,16($sp)
	move	$2,$5
	sh	$5,20($sp)
	li	$2,1			# 0x1
	sh	$2,8($sp)
	sh	$0,10($sp)
	.option	pic0
	b	$L775
	nop

	.option	pic2
$L777:
	lhu	$2,20($sp)
	nop
	sll	$2,$2,1
	sh	$2,20($sp)
	lhu	$2,8($sp)
	nop
	sll	$2,$2,1
	sh	$2,8($sp)
$L775:
	lhu	$3,20($sp)
	lhu	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L778
	nop

	lhu	$2,8($sp)
	nop
	beq	$2,$0,$L778
	nop

	lh	$2,20($sp)
	nop
	bgez	$2,$L777
	nop

	.option	pic0
	b	$L778
	nop

	.option	pic2
$L780:
	lhu	$3,16($sp)
	lhu	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L779
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
$L779:
	lhu	$2,8($sp)
	nop
	srl	$2,$2,1
	sh	$2,8($sp)
	lhu	$2,20($sp)
	nop
	srl	$2,$2,1
	sh	$2,20($sp)
$L778:
	lhu	$2,8($sp)
	nop
	bne	$2,$0,$L780
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L781
	nop

	lhu	$2,16($sp)
	.option	pic0
	b	$L782
	nop

	.option	pic2
$L781:
	lhu	$2,10($sp)
$L782:
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
	b	$L785
	nop

	.option	pic2
$L787:
	lw	$2,20($sp)
	nop
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,8($sp)
	nop
	sll	$2,$2,1
	sw	$2,8($sp)
$L785:
	lw	$3,20($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L788
	nop

	lw	$2,8($sp)
	nop
	beq	$2,$0,$L788
	nop

	lw	$2,20($sp)
	nop
	bgez	$2,$L787
	nop

	.option	pic0
	b	$L788
	nop

	.option	pic2
$L790:
	lw	$3,16($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	bne	$2,$0,$L789
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
$L789:
	lw	$2,8($sp)
	nop
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	srl	$2,$2,1
	sw	$2,20($sp)
$L788:
	lw	$2,8($sp)
	nop
	bne	$2,$0,$L790
	nop

	lw	$2,24($sp)
	nop
	beq	$2,$0,$L791
	nop

	lw	$2,16($sp)
	.option	pic0
	b	$L792
	nop

	.option	pic2
$L791:
	lw	$2,12($sp)
$L792:
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
	beq	$2,$0,$L795
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
	b	$L796
	nop

	.option	pic2
$L795:
	lw	$2,40($sp)
	nop
	bne	$2,$0,$L797
	nop

	lw	$3,32($sp)
	lw	$2,36($sp)
	.option	pic0
	b	$L799
	nop

	.option	pic2
$L797:
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
$L796:
	lw	$3,24($sp)
	lw	$2,28($sp)
$L799:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	beq	$2,$0,$L802
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
	b	$L803
	nop

	.option	pic2
$L802:
	lw	$2,40($sp)
	nop
	bne	$2,$0,$L804
	nop

	lw	$3,32($sp)
	lw	$2,36($sp)
	.option	pic0
	b	$L806
	nop

	.option	pic2
$L804:
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
$L803:
	lw	$3,24($sp)
	lw	$2,28($sp)
$L806:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$5,4($sp)
	sw	$4,0($sp)
	lw	$2,0($sp)
	nop
	srl	$3,$2,24
	move	$5,$0
	lw	$2,0($sp)
	nop
	srl	$2,$2,8
	move	$4,$0
	andi	$4,$4,0
	andi	$2,$2,0xff00
	or	$5,$5,$4
	or	$3,$3,$2
	lw	$2,0($sp)
	nop
	sll	$4,$2,8
	lw	$2,4($sp)
	nop
	srl	$2,$2,24
	or	$2,$4,$2
	lw	$4,0($sp)
	nop
	srl	$4,$4,24
	andi	$4,$4,0
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	or	$5,$5,$4
	or	$3,$3,$2
	lw	$2,0($sp)
	nop
	sll	$4,$2,24
	lw	$2,4($sp)
	nop
	srl	$2,$2,8
	or	$2,$4,$2
	lw	$4,0($sp)
	nop
	srl	$4,$4,8
	andi	$4,$4,0
	li	$6,-16777216			# 0xffffffffff000000
	and	$2,$2,$6
	or	$5,$5,$4
	or	$3,$3,$2
	lw	$2,4($sp)
	nop
	srl	$4,$2,24
	lw	$2,0($sp)
	nop
	sll	$2,$2,8
	or	$2,$4,$2
	lw	$4,4($sp)
	nop
	sll	$6,$4,8
	andi	$4,$2,0xff
	andi	$2,$6,0
	or	$5,$5,$4
	or	$3,$3,$2
	lw	$2,4($sp)
	nop
	srl	$4,$2,8
	lw	$2,0($sp)
	nop
	sll	$2,$2,24
	or	$2,$4,$2
	lw	$4,4($sp)
	nop
	sll	$6,$4,24
	andi	$4,$2,0xff00
	andi	$2,$6,0
	or	$5,$5,$4
	or	$3,$3,$2
	lw	$2,4($sp)
	nop
	sll	$4,$2,8
	move	$6,$0
	li	$2,16711680			# 0xff0000
	and	$4,$4,$2
	andi	$2,$6,0
	or	$4,$5,$4
	or	$2,$3,$2
	lw	$3,4($sp)
	nop
	sll	$3,$3,24
	move	$5,$0
	or	$3,$4,$3
	or	$2,$2,$5
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	beq	$2,$0,$L813
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L814
	nop

	.option	pic2
$L813:
	move	$2,$0
$L814:
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
	bne	$2,$0,$L815
	nop

	li	$2,8			# 0x8
	.option	pic0
	b	$L816
	nop

	.option	pic2
$L815:
	move	$2,$0
$L816:
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
	bne	$2,$0,$L817
	nop

	li	$2,4			# 0x4
	.option	pic0
	b	$L818
	nop

	.option	pic2
$L817:
	move	$2,$0
$L818:
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
	bne	$2,$0,$L819
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L820
	nop

	.option	pic2
$L819:
	move	$2,$0
$L820:
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
	beq	$2,$0,$L824
	nop

	move	$2,$0
	.option	pic0
	b	$L829
	nop

	.option	pic2
$L824:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	slt	$2,$2,$3
	beq	$2,$0,$L826
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L829
	nop

	.option	pic2
$L826:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L827
	nop

	move	$2,$0
	.option	pic0
	b	$L829
	nop

	.option	pic2
$L827:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L828
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L829
	nop

	.option	pic2
$L828:
	li	$2,1			# 0x1
$L829:
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
	bne	$2,$0,$L835
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L836
	nop

	.option	pic2
$L835:
	move	$2,$0
$L836:
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
	bne	$2,$0,$L837
	nop

	li	$2,8			# 0x8
	.option	pic0
	b	$L838
	nop

	.option	pic2
$L837:
	move	$2,$0
$L838:
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
	bne	$2,$0,$L839
	nop

	li	$2,4			# 0x4
	.option	pic0
	b	$L840
	nop

	.option	pic2
$L839:
	move	$2,$0
$L840:
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
	bne	$2,$0,$L841
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L842
	nop

	.option	pic2
$L841:
	move	$2,$0
$L842:
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
	beq	$2,$0,$L846
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
	b	$L847
	nop

	.option	pic2
$L846:
	lw	$2,40($sp)
	nop
	bne	$2,$0,$L848
	nop

	lw	$3,32($sp)
	lw	$2,36($sp)
	.option	pic0
	b	$L850
	nop

	.option	pic2
$L848:
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
$L847:
	lw	$3,24($sp)
	lw	$2,28($sp)
$L850:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	lw	$3,24($sp)
	lw	$2,28($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	lw	$3,40($sp)
	lw	$2,44($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	lw	$5,0($sp)
	lw	$6,4($sp)
	move	$7,$0
	move	$4,$0
	subu	$3,$4,$6
	sltu	$4,$4,$3
	subu	$2,$7,$5
	subu	$2,$2,$4
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
	sw	$3,12($sp)
	sw	$2,8($sp)
	lw	$2,8($sp)
	nop
	sll	$3,$2,31
	lw	$2,12($sp)
	nop
	srl	$2,$2,1
	or	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$4,$3,1
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	and	$5,$4,$3
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	and	$7,$2,$3
	lw	$6,8($sp)
	lw	$4,12($sp)
	nop
	subu	$3,$4,$7
	sltu	$4,$4,$3
	subu	$2,$6,$5
	subu	$2,$2,$4
	sw	$2,8($sp)
	sw	$3,12($sp)
	lw	$2,8($sp)
	nop
	sll	$3,$2,30
	lw	$2,12($sp)
	nop
	srl	$2,$2,2
	or	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$4,$3,2
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	and	$6,$4,$3
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	and	$4,$2,$3
	lw	$3,8($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$5,$3,$2
	lw	$3,12($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$7,$3,$2
	addu	$3,$4,$7
	sltu	$4,$3,$4
	addu	$2,$6,$5
	addu	$2,$4,$2
	sw	$2,8($sp)
	sw	$3,12($sp)
	lw	$2,8($sp)
	nop
	sll	$3,$2,28
	lw	$2,12($sp)
	nop
	srl	$2,$2,4
	or	$2,$3,$2
	lw	$3,8($sp)
	nop
	srl	$6,$3,4
	lw	$5,8($sp)
	lw	$7,12($sp)
	nop
	addu	$4,$2,$7
	sltu	$2,$4,$2
	addu	$3,$6,$5
	addu	$2,$2,$3
	move	$3,$2
	move	$5,$3
	move	$3,$4
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$5,$2
	sw	$2,8($sp)
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,12($sp)
	lw	$3,8($sp)
	nop
	srl	$3,$3,0
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
	addiu	$sp,$sp,24
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
$L876:
	lw	$2,32($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L873
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
$L873:
	lw	$2,32($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	nop
	beq	$2,$0,$L881
	nop

	lwc1	$f0,28($sp)
	nop
	lwc1	$f1,24($sp)
	nop
	mul.d	$f0,$f0,$f0
	swc1	$f0,28($sp)
	swc1	$f1,24($sp)
	.option	pic0
	b	$L876
	nop

	.option	pic2
$L881:
	nop
	lw	$2,16($sp)
	nop
	beq	$2,$0,$L877
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
	b	$L879
	nop

	.option	pic2
$L877:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
$L879:
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
$L887:
	lw	$2,20($sp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L884
	nop

	lwc1	$f2,8($sp)
	lwc1	$f0,16($sp)
	nop
	mul.s	$f0,$f2,$f0
	swc1	$f0,8($sp)
$L884:
	lw	$2,20($sp)
	nop
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	nop
	beq	$2,$0,$L892
	nop

	lwc1	$f0,16($sp)
	nop
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	.option	pic0
	b	$L887
	nop

	.option	pic2
$L892:
	nop
	lw	$2,12($sp)
	nop
	beq	$2,$0,$L888
	nop

	lwc1	$f0,8($sp)
	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
	.option	pic0
	b	$L890
	nop

	.option	pic2
$L888:
	lwc1	$f0,8($sp)
$L890:
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
	beq	$2,$0,$L895
	nop

	move	$2,$0
	.option	pic0
	b	$L900
	nop

	.option	pic2
$L895:
	lw	$3,8($sp)
	lw	$2,16($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L897
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L900
	nop

	.option	pic2
$L897:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$3,$2
	beq	$2,$0,$L898
	nop

	move	$2,$0
	.option	pic0
	b	$L900
	nop

	.option	pic2
$L898:
	lw	$3,12($sp)
	lw	$2,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L899
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L900
	nop

	.option	pic2
$L899:
	li	$2,1			# 0x1
$L900:
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
