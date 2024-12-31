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
	.globl	make_ti
	.set	nomips16
	.set	nomicromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	nomips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L6
	nop

	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	b	.L7
	nop

.L8:
	ld	$2,8($sp)
	daddiu	$2,$2,-1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,-1
	sd	$2,0($sp)
	ld	$2,8($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L7:
	ld	$2,32($sp)
	bne	$2,$0,.L8
	nop

	b	.L9
	nop

.L6:
	ld	$3,8($sp)
	ld	$2,0($sp)
	beq	$3,$2,.L9
	nop

	b	.L10
	nop

.L11:
	ld	$3,8($sp)
	daddiu	$2,$3,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,1
	sd	$4,0($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L10:
	ld	$2,32($sp)
	bne	$2,$0,.L11
	nop

.L9:
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sd	$7,40($sp)
	sll	$2,$2,0
	sw	$2,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$2,32($sp)
	andi	$2,$2,0x00ff
	sw	$2,32($sp)
	b	.L14
	nop

.L16:
	ld	$2,40($sp)
	daddiu	$2,$2,-1
	sd	$2,40($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L14:
	ld	$2,40($sp)
	beq	$2,$0,.L15
	nop

	ld	$2,8($sp)
	lbu	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($sp)
	bne	$2,$3,.L16
	nop

.L15:
	ld	$2,40($sp)
	beq	$2,$0,.L17
	nop

	ld	$2,0($sp)
	daddiu	$2,$2,1
	b	.L18
	nop

.L17:
	move	$2,$0
.L18:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$2,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	b	.L20
	nop

.L22:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L20:
	ld	$2,32($sp)
	beq	$2,$0,.L21
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L22
	nop

.L21:
	ld	$2,32($sp)
	beq	$2,$0,.L23
	nop

	ld	$2,0($sp)
	b	.L25
	nop

.L23:
	move	$2,$0
.L25:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	b	.L27
	nop

.L29:
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L27:
	ld	$2,32($sp)
	beq	$2,$0,.L28
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L29
	nop

.L28:
	ld	$2,32($sp)
	beq	$2,$0,.L30
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	.L31
	nop

.L30:
	move	$2,$0
.L31:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	b	.L34
	nop

.L35:
	ld	$3,8($sp)
	daddiu	$2,$3,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,1
	sd	$4,0($sp)
	lbu	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L34:
	ld	$2,32($sp)
	bne	$2,$0,.L35
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$2,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	b	.L38
	nop

.L40:
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L38
	nop

	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	b	.L39
	nop

.L38:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L40
	nop

	move	$2,$0
.L39:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$2,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L42
	nop

.L43:
	lw	$2,24($sp)
	andi	$3,$2,0x00ff
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L42:
	ld	$2,32($sp)
	bne	$2,$0,.L43
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	b	.L46
	nop

.L47:
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L46:
	ld	$2,8($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L47
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	lw	$2,8($sp)
	andi	$2,$2,0x00ff
	sw	$2,8($sp)
	b	.L50
	nop

.L52:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L50:
	ld	$2,0($sp)
	lb	$2,0($2)
	beq	$2,$0,.L51
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	bne	$2,$3,.L52
	nop

.L51:
	ld	$2,0($sp)
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	move	$3,$5
	sll	$3,$3,0
	sw	$3,0($sp)
.L57:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,0($sp)
	bne	$3,$4,.L55
	nop

	b	.L56
	nop

.L55:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bne	$3,$0,.L57
	nop

	move	$2,$0
.L56:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	b	.L59
	nop

.L61:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L59:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,8($sp)
	lb	$3,0($3)
	bne	$2,$3,.L60
	nop

	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L61
	nop

.L60:
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L64
	nop

.L65:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L64:
	ld	$2,16($sp)
	lb	$2,0($2)
	bne	$2,$0,.L65
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
	dsubu	$2,$3,$2
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L70
	nop

	move	$2,$0
	b	.L69
	nop

.L72:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L70:
	ld	$2,0($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L71
	nop

	ld	$2,8($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L71
	nop

	ld	$2,32($sp)
	beq	$2,$0,.L71
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L72
	nop

.L71:
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
.L69:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	b	.L74
	nop

.L75:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	lb	$3,0($2)
	ld	$2,8($sp)
	sb	$3,0($2)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	ld	$3,0($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,8($sp)
	daddiu	$2,$2,2
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,2
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-2
	sd	$2,32($sp)
.L74:
	ld	$2,32($sp)
	slt	$2,$2,2
	beq	$2,$0,.L75
	nop

	nop
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,128
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,32			# 0x20
	beq	$2,$3,.L81
	nop

	lw	$2,0($sp)
	li	$3,9			# 0x9
	bne	$2,$3,.L82
	nop

.L81:
	li	$2,1			# 0x1
	b	.L83
	nop

.L82:
	move	$2,$0
.L83:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L86
	nop

	lw	$2,0($sp)
	li	$3,127			# 0x7f
	bne	$2,$3,.L87
	nop

.L86:
	li	$2,1			# 0x1
	b	.L88
	nop

.L87:
	move	$2,$0
.L88:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-33
	sltu	$2,$2,94
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-32
	sltu	$2,$2,95
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,32			# 0x20
	beq	$2,$3,.L99
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beq	$2,$0,.L100
	nop

.L99:
	li	$2,1			# 0x1
	b	.L101
	nop

.L100:
	move	$2,$0
.L101:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-65
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L106
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bne	$2,$0,.L106
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bne	$2,$0,.L106
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beq	$2,$0,.L107
	nop

.L106:
	li	$2,1			# 0x1
	b	.L108
	nop

.L107:
	move	$2,$0
.L108:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,255
	beq	$2,$0,.L113
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	b	.L114
	nop

.L113:
	lw	$2,0($sp)
	sltu	$2,$2,8232
	bne	$2,$0,.L115
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-8234
	li	$3,47062			# 0xb7d6
	sltu	$2,$2,$3
	bne	$2,$0,.L115
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beq	$2,$0,.L116
	nop

.L115:
	li	$2,1			# 0x1
	b	.L114
	nop

.L116:
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$2,$3,$2
	move	$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beq	$2,$0,.L117
	nop

	lw	$2,0($sp)
	andi	$2,$2,0xfffe
	li	$3,65534			# 0xfffe
	bne	$2,$3,.L118
	nop

.L117:
	move	$2,$0
	b	.L114
	nop

.L118:
	li	$2,1			# 0x1
.L114:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L120
	nop

	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beq	$2,$0,.L121
	nop

.L120:
	li	$2,1			# 0x1
	b	.L122
	nop

.L121:
	move	$2,$0
.L122:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x7f
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,0($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L127
	nop

	ldc1	$f0,0($sp)
	b	.L128
	nop

.L127:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L129
	nop

	ldc1	$f0,8($sp)
	b	.L128
	nop

.L129:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L134
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	sub.d	$f0,$f1,$f0
	b	.L128
	nop

.L134:
	dmtc1	$0,$f0
.L128:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,0($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L136
	nop

	lwc1	$f0,0($sp)
	b	.L137
	nop

.L136:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L138
	nop

	lwc1	$f0,4($sp)
	b	.L137
	nop

.L138:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L143
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	sub.s	$f0,$f1,$f0
	b	.L137
	nop

.L143:
	mtc1	$0,$f0
.L137:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,0($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L145
	nop

	ldc1	$f0,8($sp)
	b	.L146
	nop

.L145:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L147
	nop

	ldc1	$f0,0($sp)
	b	.L146
	nop

.L147:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L148
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L149
	nop

	ldc1	$f0,8($sp)
	b	.L146
	nop

.L149:
	ldc1	$f0,0($sp)
	b	.L146
	nop

.L148:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L155
	nop

	ldc1	$f0,8($sp)
	b	.L146
	nop

.L155:
	ldc1	$f0,0($sp)
.L146:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,0($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L157
	nop

	lwc1	$f0,4($sp)
	b	.L158
	nop

.L157:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L159
	nop

	lwc1	$f0,0($sp)
	b	.L158
	nop

.L159:
	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	beq	$2,$3,.L160
	nop

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,.L161
	nop

	lwc1	$f0,4($sp)
	b	.L158
	nop

.L161:
	lwc1	$f0,0($sp)
	b	.L158
	nop

.L160:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L167
	nop

	lwc1	$f0,4($sp)
	b	.L158
	nop

.L167:
	lwc1	$f0,0($sp)
.L158:
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	sdc1	$f13,8($sp)
	sdc1	$f12,0($sp)
	sdc1	$f15,24($sp)
	sdc1	$f14,16($sp)
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L183
	nop

	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L171
	nop

.L183:
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L184
	nop

	ld	$3,8($sp)
	ld	$2,0($sp)
	b	.L171
	nop

.L184:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L174
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L175
	nop

	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L171
	nop

.L175:
	ld	$3,8($sp)
	ld	$2,0($sp)
	b	.L171
	nop

.L174:
	ld	$2,%call16(__lttf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bgez	$2,.L185
	nop

	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L171
	nop

.L185:
	ld	$3,8($sp)
	ld	$2,0($sp)
.L171:
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,0($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L187
	nop

	ldc1	$f0,8($sp)
	b	.L188
	nop

.L187:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L189
	nop

	ldc1	$f0,0($sp)
	b	.L188
	nop

.L189:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L190
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L191
	nop

	ldc1	$f0,0($sp)
	b	.L188
	nop

.L191:
	ldc1	$f0,8($sp)
	b	.L188
	nop

.L190:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L197
	nop

	ldc1	$f0,0($sp)
	b	.L188
	nop

.L197:
	ldc1	$f0,8($sp)
.L188:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,0($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L199
	nop

	lwc1	$f0,4($sp)
	b	.L200
	nop

.L199:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L201
	nop

	lwc1	$f0,0($sp)
	b	.L200
	nop

.L201:
	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	beq	$2,$3,.L202
	nop

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,.L203
	nop

	lwc1	$f0,0($sp)
	b	.L200
	nop

.L203:
	lwc1	$f0,4($sp)
	b	.L200
	nop

.L202:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L209
	nop

	lwc1	$f0,0($sp)
	b	.L200
	nop

.L209:
	lwc1	$f0,4($sp)
.L200:
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	sdc1	$f13,8($sp)
	sdc1	$f12,0($sp)
	sdc1	$f15,24($sp)
	sdc1	$f14,16($sp)
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L225
	nop

	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L213
	nop

.L225:
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L226
	nop

	ld	$3,8($sp)
	ld	$2,0($sp)
	b	.L213
	nop

.L226:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L216
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L217
	nop

	ld	$3,8($sp)
	ld	$2,0($sp)
	b	.L213
	nop

.L217:
	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L213
	nop

.L216:
	ld	$2,%call16(__lttf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bgez	$2,.L227
	nop

	ld	$3,8($sp)
	ld	$2,0($sp)
	b	.L213
	nop

.L227:
	ld	$3,24($sp)
	ld	$2,16($sp)
.L213:
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.rdata
	.align	3
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$5,%hi(%neg(%gp_rel(l64a)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(l64a)))
	sd	$4,16($sp)
	ld	$2,16($sp)
	sw	$2,8($sp)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	sd	$2,0($sp)
	b	.L229
	nop

.L230:
	lw	$2,8($sp)
	andi	$2,$2,0x3f
	move	$3,$2
	ld	$2,%got_page(digits)($5)
	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddiu	$2,$2,%got_ofst(digits)
	daddu	$2,$3,$2
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	lw	$2,8($sp)
	srl	$2,$2,6
	sw	$2,8($sp)
.L229:
	lw	$2,8($sp)
	bne	$2,$0,.L230
	nop

	ld	$2,0($sp)
	sb	$0,0($2)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$5,%hi(%neg(%gp_rel(srand)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(srand)))
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
	dsll	$3,$2,32
	dsrl	$3,$3,32
	ld	$2,%got_page(seed)($5)
	sd	$3,%got_ofst(seed)($2)
	nop
	daddiu	$sp,$sp,16
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
	lui	$4,%hi(%neg(%gp_rel(rand)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(rand)))
	ld	$2,%got_page(seed)($4)
	ld	$3,%got_ofst(seed)($2)
	li	$2,1481703424			# 0x58510000
	ori	$2,$2,0xf42d
	dsll	$2,$2,16
	ori	$2,$2,0x4c95
	dsll	$2,$2,16
	ori	$2,$2,0x7f2d
	dmult	$3,$2
	mflo	$2
	daddiu	$3,$2,1
	ld	$2,%got_page(seed)($4)
	sd	$3,%got_ofst(seed)($2)
	ld	$2,%got_page(seed)($4)
	ld	$2,%got_ofst(seed)($2)
	dsrl	$2,$2,33
	sll	$2,$2,0
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L236
	nop

	ld	$2,0($sp)
	sd	$0,8($2)
	ld	$2,0($sp)
	ld	$3,8($2)
	ld	$2,0($sp)
	sd	$3,0($2)
	b	.L235
	nop

.L236:
	ld	$2,8($sp)
	ld	$3,0($2)
	ld	$2,0($sp)
	sd	$3,0($2)
	ld	$2,0($sp)
	ld	$3,8($sp)
	sd	$3,8($2)
	ld	$2,8($sp)
	ld	$3,0($sp)
	sd	$3,0($2)
	ld	$2,0($sp)
	ld	$2,0($2)
	beq	$2,$0,.L235
	nop

	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	sd	$3,8($2)
.L235:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,0($sp)
	ld	$2,0($2)
	beq	$2,$0,.L239
	nop

	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	ld	$3,8($3)
	sd	$3,8($2)
.L239:
	ld	$2,0($sp)
	ld	$2,8($2)
	beq	$2,$0,.L241
	nop

	ld	$2,0($sp)
	ld	$2,8($2)
	ld	$3,0($sp)
	ld	$3,0($3)
	sd	$3,0($2)
.L241:
	nop
	daddiu	$sp,$sp,32
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
	.frame	$sp,112,$31		# vars= 80, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$16,88($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	sd	$7,56($sp)
	sd	$8,64($sp)
	ld	$16,56($sp)
	move	$4,$16
	daddiu	$4,$4,-1
	sd	$4,8($sp)
	move	$11,$16
	move	$10,$0
	dsrl	$4,$11,61
	dsll	$2,$10,3
	or	$2,$4,$2
	dsll	$3,$11,3
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,24($sp)
	sd	$0,0($sp)
	b	.L243
	nop

.L246:
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,64($sp)
	mtlo	$3
	move	$5,$2
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L244
	nop

	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L245
	nop

.L244:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L243:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L246
	nop

	ld	$2,24($sp)
	daddiu	$3,$2,1
	ld	$2,48($sp)
	sd	$3,0($2)
	ld	$2,24($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$6,56($sp)
	ld	$5,32($sp)
	move	$4,$2
	ld	$2,%got_disp(memcpy)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

.L245:
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$16,88($sp)
	daddiu	$sp,$sp,112
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
	.frame	$sp,112,$31		# vars= 80, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$16,88($sp)
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	sd	$7,56($sp)
	sd	$8,64($sp)
	ld	$16,56($sp)
	move	$4,$16
	daddiu	$4,$4,-1
	sd	$4,8($sp)
	move	$11,$16
	move	$10,$0
	dsrl	$4,$11,61
	dsll	$2,$10,3
	or	$2,$4,$2
	dsll	$3,$11,3
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,24($sp)
	sd	$0,0($sp)
	b	.L248
	nop

.L251:
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,64($sp)
	mtlo	$3
	move	$5,$2
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L249
	nop

	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L250
	nop

.L249:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L248:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L251
	nop

	move	$2,$0
.L250:
	ld	$31,104($sp)
	ld	$16,88($sp)
	daddiu	$sp,$sp,112
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sra	$2,$2,31
	lw	$3,0($sp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	sd	$4,16($sp)
	sw	$0,0($sp)
	sw	$0,4($sp)
	b	.L255
	nop

.L256:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L255:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L256
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L257
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L259
	nop

	li	$2,1			# 0x1
	sw	$2,4($sp)
.L257:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L259
	nop

.L260:
	lw	$3,0($sp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	ld	$2,16($sp)
	daddiu	$4,$2,1
	sd	$4,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	subu	$2,$3,$2
	sw	$2,0($sp)
.L259:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L260
	nop

	lw	$2,4($sp)
	bne	$2,$0,.L261
	nop

	lw	$2,0($sp)
	subu	$2,$0,$2
	b	.L262
	nop

.L261:
	lw	$2,0($sp)
.L262:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	sd	$4,16($sp)
	sd	$0,0($sp)
	sw	$0,8($sp)
	b	.L265
	nop

.L266:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L265:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L266
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L267
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L269
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L267:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L269
	nop

.L270:
	ld	$3,0($sp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	ld	$2,16($sp)
	daddiu	$3,$2,1
	sd	$3,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	dsubu	$2,$4,$2
	sd	$2,0($sp)
.L269:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L270
	nop

	lw	$2,8($sp)
	bne	$2,$0,.L271
	nop

	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L273
	nop

.L271:
	ld	$2,0($sp)
.L273:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	sd	$4,16($sp)
	sd	$0,0($sp)
	sw	$0,8($sp)
	b	.L275
	nop

.L276:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L275:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L276
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L277
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L279
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L277:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L279
	nop

.L280:
	ld	$3,0($sp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	ld	$2,16($sp)
	daddiu	$3,$2,1
	sd	$3,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	dsubu	$2,$4,$2
	sd	$2,0($sp)
.L279:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L280
	nop

	lw	$2,8($sp)
	bne	$2,$0,.L281
	nop

	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L283
	nop

.L281:
	ld	$2,0($sp)
.L283:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,80,$31		# vars= 64, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	sd	$7,40($sp)
	sd	$8,48($sp)
	b	.L285
	nop

.L290:
	ld	$2,32($sp)
	dsrl	$3,$2,1
	ld	$2,40($sp)
	dmult	$3,$2
	ld	$2,24($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,0($sp)
	ld	$2,48($sp)
	mtlo	$2
	ld	$5,0($sp)
	ld	$4,16($sp)
	mflo	$25
	jalr	$25
	nop

	sw	$2,8($sp)
	lw	$2,8($sp)
	bgez	$2,.L286
	nop

	ld	$2,32($sp)
	dsrl	$2,$2,1
	sd	$2,32($sp)
	b	.L285
	nop

.L286:
	lw	$2,8($sp)
	blez	$2,.L288
	nop

	ld	$3,0($sp)
	ld	$2,40($sp)
	daddu	$2,$3,$2
	sd	$2,24($sp)
	ld	$2,32($sp)
	dsrl	$2,$2,1
	ld	$3,32($sp)
	dsubu	$2,$3,$2
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	b	.L285
	nop

.L288:
	ld	$2,0($sp)
	b	.L289
	nop

.L285:
	ld	$2,32($sp)
	bne	$2,$0,.L290
	nop

	move	$2,$0
.L289:
	ld	$31,72($sp)
	daddiu	$sp,$sp,80
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
	.frame	$sp,96,$31		# vars= 80, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	sd	$7,56($sp)
	sd	$8,64($sp)
	sd	$9,72($sp)
	ld	$2,40($sp)
	sd	$2,0($sp)
	ld	$2,48($sp)
	sw	$2,8($sp)
	b	.L292
	nop

.L296:
	lw	$2,8($sp)
	sra	$2,$2,1
	move	$3,$2
	ld	$2,56($sp)
	dmult	$3,$2
	ld	$2,0($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($sp)
	ld	$2,64($sp)
	mtlo	$2
	ld	$6,72($sp)
	ld	$5,16($sp)
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	sw	$2,24($sp)
	lw	$2,24($sp)
	bne	$2,$0,.L293
	nop

	ld	$2,16($sp)
	b	.L294
	nop

.L293:
	lw	$2,24($sp)
	blez	$2,.L295
	nop

	ld	$3,16($sp)
	ld	$2,56($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,$2,-1
	sw	$2,8($sp)
.L295:
	lw	$2,8($sp)
	sra	$2,$2,1
	sw	$2,8($sp)
.L292:
	lw	$2,8($sp)
	bne	$2,$0,.L296
	nop

	move	$2,$0
.L294:
	ld	$31,88($sp)
	daddiu	$sp,$sp,96
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	lw	$3,16($sp)
	lw	$2,20($sp)
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$3
	lw	$4,16($sp)
	lw	$2,20($sp)
	div	$0,$4,$2
	teq	$2,$0,7
	mfhi	$2
	sw	$3,0($sp)
	sw	$2,4($sp)
	move	$2,$0
	lwu	$3,0($sp)
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	or	$2,$2,$3
	lwu	$3,4($sp)
	dsll	$3,$3,32
	dsrl	$3,$3,32
	li	$4,-1			# 0xffffffffffffffff
	dsll	$4,$4,32
	and	$2,$2,$4
	or	$2,$2,$3
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsra	$3,$2,63
	ld	$2,0($sp)
	xor	$2,$3,$2
	dsubu	$2,$2,$3
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$6,$3
	move	$7,$2
	move	$3,$7
	move	$2,$6
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsra	$3,$2,63
	ld	$2,0($sp)
	xor	$2,$3,$2
	dsubu	$2,$2,$3
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$6,$3
	move	$7,$2
	move	$3,$7
	move	$2,$6
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsra	$3,$2,63
	ld	$2,0($sp)
	xor	$2,$3,$2
	dsubu	$2,$2,$3
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$6,$3
	move	$7,$2
	move	$3,$7
	move	$2,$6
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	b	.L312
	nop

.L314:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L312:
	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L313
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L314
	nop

.L313:
	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L315
	nop

	ld	$2,0($sp)
	b	.L317
	nop

.L315:
	move	$2,$0
.L317:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	b	.L319
	nop

.L321:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L319:
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L320
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L320
	nop

	ld	$2,8($sp)
	lw	$2,0($2)
	bne	$2,$0,.L321
	nop

.L320:
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L322
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L323
	nop

.L322:
	li	$2,-1			# 0xffffffffffffffff
.L323:
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	nop
.L326:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bne	$2,$0,.L326
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L329
	nop

.L330:
	ld	$2,16($sp)
	daddiu	$2,$2,4
	sd	$2,16($sp)
.L329:
	ld	$2,16($sp)
	lw	$2,0($2)
	bne	$2,$0,.L330
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
	dsubu	$2,$3,$2
	dsra	$2,$2,2
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	b	.L333
	nop

.L335:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L333:
	ld	$2,16($sp)
	beq	$2,$0,.L334
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L334
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L334
	nop

	ld	$2,8($sp)
	lw	$2,0($2)
	bne	$2,$0,.L335
	nop

.L334:
	ld	$2,16($sp)
	beq	$2,$0,.L336
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L337
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L339
	nop

.L337:
	li	$2,-1			# 0xffffffffffffffff
	b	.L339
	nop

.L336:
	move	$2,$0
.L339:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	move	$2,$5
	sd	$6,16($sp)
	sll	$2,$2,0
	sw	$2,8($sp)
	b	.L342
	nop

.L344:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L342:
	ld	$2,16($sp)
	beq	$2,$0,.L343
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L344
	nop

.L343:
	ld	$2,16($sp)
	beq	$2,$0,.L345
	nop

	ld	$2,0($sp)
	b	.L347
	nop

.L345:
	move	$2,$0
.L347:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	b	.L349
	nop

.L351:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L349:
	ld	$2,16($sp)
	beq	$2,$0,.L350
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	beq	$2,$3,.L351
	nop

.L350:
	ld	$2,16($sp)
	beq	$2,$0,.L352
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L353
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L355
	nop

.L353:
	li	$2,-1			# 0xffffffffffffffff
	b	.L355
	nop

.L352:
	move	$2,$0
.L355:
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L358
	nop

.L359:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L358:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L359
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	bne	$3,$2,.L362
	nop

	ld	$2,16($sp)
	b	.L363
	nop

.L362:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	sltu	$2,$3,$2
	beq	$2,$0,.L368
	nop

	b	.L365
	nop

.L366:
	ld	$2,32($sp)
	dsll	$2,$2,2
	ld	$3,24($sp)
	daddu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
.L365:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L366
	nop

	b	.L367
	nop

.L369:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L368:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L369
	nop

.L367:
	ld	$2,0($sp)
.L363:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$2,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L371
	nop

.L372:
	ld	$2,16($sp)
	daddiu	$3,$2,4
	sd	$3,16($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
.L371:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L372
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L375
	nop

	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	b	.L376
	nop

.L377:
	ld	$2,0($sp)
	daddiu	$2,$2,-1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,-1
	sd	$2,8($sp)
	ld	$2,0($sp)
	lb	$3,0($2)
	ld	$2,8($sp)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L376:
	ld	$2,32($sp)
	bne	$2,$0,.L377
	nop

	b	.L381
	nop

.L375:
	ld	$3,0($sp)
	ld	$2,8($sp)
	beq	$3,$2,.L381
	nop

	b	.L379
	nop

.L380:
	ld	$3,0($sp)
	daddiu	$2,$3,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$4,$2,1
	sd	$4,8($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L379:
	ld	$2,32($sp)
	bne	$2,$0,.L380
	nop

.L381:
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsll	$4,$3,$2
	lw	$2,8($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x3f
	dsrl	$2,$3,$2
	or	$2,$2,$4
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsrl	$4,$3,$2
	lw	$2,8($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x3f
	dsll	$2,$3,$2
	or	$2,$2,$4
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	sll	$4,$3,$2
	lw	$2,4($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	srl	$2,$3,$2
	or	$2,$4,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$4,$3,$2
	lw	$2,4($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	sll	$2,$3,$2
	or	$2,$4,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsll	$3,$3,$2
	lw	$2,8($sp)
	li	$4,64			# 0x40
	subu	$2,$4,$2
	sll	$4,$2,0
	ld	$2,0($sp)
	dsrl	$2,$2,$4
	or	$2,$3,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsrl	$3,$3,$2
	lw	$2,8($sp)
	li	$4,64			# 0x40
	subu	$2,$4,$2
	sll	$4,$2,0
	ld	$2,0($sp)
	dsll	$2,$2,$4
	or	$2,$3,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sh	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lhu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,0($sp)
	li	$5,16			# 0x10
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sh	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lhu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	srl	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,0($sp)
	li	$5,16			# 0x10
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	sll	$2,$2,$4
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sb	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lbu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,0($sp)
	li	$5,8			# 0x8
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sb	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lbu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	srl	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,0($sp)
	li	$5,8			# 0x8
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	sll	$2,$2,$4
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($sp)
	li	$2,255			# 0xff
	sd	$2,0($sp)
	lhu	$3,16($sp)
	ld	$2,0($sp)
	dsll	$2,$2,8
	and	$2,$3,$2
	dsrl	$2,$2,8
	sll	$2,$2,0
	andi	$3,$2,0xffff
	lhu	$2,6($sp)
	lhu	$4,16($sp)
	and	$2,$4,$2
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	li	$2,255			# 0xff
	sd	$2,0($sp)
	lwu	$3,16($sp)
	ld	$2,0($sp)
	dsll	$2,$2,24
	and	$2,$3,$2
	dsrl	$2,$2,24
	sll	$2,$2,0
	move	$3,$2
	lwu	$4,16($sp)
	ld	$2,0($sp)
	dsll	$2,$2,16
	and	$2,$4,$2
	dsrl	$2,$2,8
	sll	$2,$2,0
	or	$2,$3,$2
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$2,8
	lw	$4,16($sp)
	and	$2,$4,$2
	sll	$2,$2,8
	or	$2,$3,$2
	move	$3,$2
	lw	$2,4($sp)
	lw	$4,16($sp)
	and	$2,$4,$2
	sll	$2,$2,24
	or	$2,$3,$2
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	li	$2,255			# 0xff
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsll	$3,$2,56
	ld	$2,16($sp)
	and	$2,$3,$2
	dsrl	$3,$2,56
	ld	$2,0($sp)
	dsll	$4,$2,48
	ld	$2,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,40
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,40
	ld	$2,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,24
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,32
	ld	$2,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,8
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,24
	ld	$2,16($sp)
	and	$2,$4,$2
	dsll	$2,$2,8
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,16
	ld	$2,16($sp)
	and	$2,$4,$2
	dsll	$2,$2,24
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,8
	ld	$2,16($sp)
	and	$2,$4,$2
	dsll	$2,$2,40
	or	$3,$3,$2
	ld	$4,16($sp)
	ld	$2,0($sp)
	and	$2,$4,$2
	dsll	$2,$2,56
	or	$2,$3,$2
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	sw	$0,0($sp)
	b	.L409
	nop

.L412:
	lw	$3,16($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L410
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	b	.L411
	nop

.L410:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L409:
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L412
	nop

	move	$2,$0
.L411:
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$16,8($sp)
	move	$2,$4
	bne	$2,$0,.L414
	nop

	move	$2,$0
	b	.L415
	nop

.L414:
	li	$16,1			# 0x1
	b	.L416
	nop

.L417:
	sra	$2,$2,1
	addiu	$3,$16,1
	move	$16,$3
.L416:
	andi	$3,$2,0x1
	beq	$3,$0,.L417
	nop

	move	$2,$16
.L415:
	ld	$16,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	swc1	$f12,0($sp)
	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$f1,$f0
	nop
	bc1t	.L419
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L424
	nop

.L419:
	li	$2,1			# 0x1
	b	.L422
	nop

.L424:
	move	$2,$0
.L422:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$3,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinfd)))
	sdc1	$f12,0($sp)
	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC2)($3)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$f1,$f0
	nop
	bc1t	.L426
	nop

	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L431
	nop

.L426:
	li	$2,1			# 0x1
	b	.L429
	nop

.L431:
	move	$2,$0
.L429:
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	sdc1	$f13,8($sp)
	sdc1	$f12,0($sp)
	ld	$2,%got_page(.LC4)($28)
	ld	$3,%call16(__lttf2)($28)
	mtlo	$3
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	ldc1	$f14,%got_ofst(.LC4)($2)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bltz	$2,.L433
	nop

	ld	$2,%got_page(.LC5)($28)
	ld	$3,%call16(__gttf2)($28)
	mtlo	$3
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	blez	$2,.L438
	nop

.L433:
	li	$2,1			# 0x1
	b	.L436
	nop

.L438:
	move	$2,$0
.L436:
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	lw	$2,8($sp)
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	ld	$2,%call16(__extenddftf2)($28)
	mtlo	$2
	mov.d	$f12,$f0
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	ld	$4,0($sp)
	sd	$3,8($4)
	sd	$2,0($4)
	nop
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))
	swc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,20($sp)
	lwc1	$f1,16($sp)
	lwc1	$f0,16($sp)
	c.un.s	$f1,$f0
	nop
	bc1t	.L441
	nop

	lwc1	$f0,16($sp)
	add.s	$f0,$f0,$f0
	lwc1	$f1,16($sp)
	c.eq.s	$f1,$f0
	nop
	bc1t	.L441
	nop

	lw	$2,20($sp)
	bgez	$2,.L442
	nop

	ld	$2,%got_page(.LC6)($4)
	lwc1	$f0,%got_ofst(.LC6)($2)
	b	.L443
	nop

.L442:
	ld	$2,%got_page(.LC7)($4)
	lwc1	$f0,%got_ofst(.LC7)($2)
.L443:
	swc1	$f0,0($sp)
.L446:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L444
	nop

	lwc1	$f1,16($sp)
	lwc1	$f0,0($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,16($sp)
.L444:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beq	$2,$0,.L448
	nop

	lwc1	$f0,0($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,0($sp)
	b	.L446
	nop

.L448:
	nop
.L441:
	lwc1	$f0,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))
	sdc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,24($sp)
	ldc1	$f1,16($sp)
	ldc1	$f0,16($sp)
	c.un.d	$f1,$f0
	nop
	bc1t	.L450
	nop

	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	ldc1	$f1,16($sp)
	c.eq.d	$f1,$f0
	nop
	bc1t	.L450
	nop

	lw	$2,24($sp)
	bgez	$2,.L451
	nop

	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	b	.L452
	nop

.L451:
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
.L452:
	sdc1	$f0,0($sp)
.L455:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L453
	nop

	ldc1	$f1,16($sp)
	ldc1	$f0,0($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L453:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beq	$2,$0,.L457
	nop

	ldc1	$f0,0($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,0($sp)
	b	.L455
	nop

.L457:
	nop
.L450:
	ldc1	$f0,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sdc1	$f13,24($sp)
	sdc1	$f12,16($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,32($sp)
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L459
	nop

	ld	$3,24($sp)
	ld	$2,16($sp)
	ld	$4,%call16(__addtf3)($28)
	mtlo	$4
	dmtc1	$3,$f15
	nop
	dmtc1	$2,$f14
	dmtc1	$3,$f13
	nop
	dmtc1	$2,$f12
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	ld	$4,%call16(__netf2)($28)
	mtlo	$4
	dmtc1	$3,$f15
	nop
	dmtc1	$2,$f14
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L459
	nop

	lw	$2,32($sp)
	bgez	$2,.L461
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$3,%got_ofst(.LC10+8)($2)
	ld	$2,%got_ofst(.LC10)($2)
	b	.L462
	nop

.L461:
	ld	$2,%got_page(.LC11)($28)
	ld	$3,%got_ofst(.LC11+8)($2)
	ld	$2,%got_ofst(.LC11)($2)
.L462:
	sd	$3,8($sp)
	sd	$2,0($sp)
.L465:
	lw	$2,32($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L463
	nop

	ld	$2,%call16(__multf3)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	sd	$3,24($sp)
	sd	$2,16($sp)
.L463:
	lw	$2,32($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	beq	$2,$0,.L468
	nop

	ld	$2,%call16(__multf3)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	sd	$3,8($sp)
	sd	$2,0($sp)
	b	.L465
	nop

.L468:
	nop
.L459:
	ld	$3,24($sp)
	ld	$2,16($sp)
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,24($sp)
	sd	$2,0($sp)
	ld	$2,16($sp)
	sd	$2,8($sp)
	b	.L470
	nop

.L471:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$4,0($2)
	ld	$2,8($sp)
	daddiu	$3,$2,1
	sd	$3,8($sp)
	lb	$3,0($2)
	xor	$3,$4,$3
	dsll	$3,$3,56
	dsra	$3,$3,56
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L470:
	ld	$2,32($sp)
	bne	$2,$0,.L471
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(strncat)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strncat)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$4,16($sp)
	ld	$2,%got_disp(strlen)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	ld	$2,16($sp)
	daddu	$2,$2,$3
	sd	$2,0($sp)
	b	.L474
	nop

.L476:
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L474:
	ld	$2,32($sp)
	beq	$2,$0,.L475
	nop

	ld	$2,24($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L476
	nop

.L475:
	ld	$2,32($sp)
	bne	$2,$0,.L477
	nop

	ld	$2,0($sp)
	sb	$0,0($2)
.L477:
	ld	$2,16($sp)
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$0,0($sp)
	b	.L480
	nop

.L485:
	nop
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L480:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L481
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
	daddu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,.L485
	nop

.L481:
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	b	.L487
	nop

.L491:
	ld	$2,24($sp)
	sd	$2,0($sp)
	b	.L488
	nop

.L490:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$2,0($2)
	ld	$3,16($sp)
	lb	$3,0($3)
	bne	$2,$3,.L488
	nop

	ld	$2,16($sp)
	b	.L489
	nop

.L488:
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L490
	nop

	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L487:
	ld	$2,16($sp)
	lb	$2,0($2)
	bne	$2,$0,.L491
	nop

	move	$2,$0
.L489:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	move	$3,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sd	$0,0($sp)
.L494:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($sp)
	bne	$3,$4,.L493
	nop

	sd	$2,0($sp)
.L493:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bne	$3,$0,.L494
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(strstr)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strstr)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$4,24($sp)
	ld	$2,%got_disp(strlen)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,8($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L499
	nop

	ld	$2,16($sp)
	b	.L498
	nop

.L501:
	ld	$6,8($sp)
	ld	$5,24($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(strncmp)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L500
	nop

	ld	$2,0($sp)
	b	.L498
	nop

.L500:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L499:
	ld	$2,24($sp)
	lb	$2,0($2)
	move	$5,$2
	ld	$4,0($sp)
	ld	$2,%got_disp(strchr)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,0($sp)
	ld	$2,0($sp)
	bne	$2,$0,.L501
	nop

	move	$2,$0
.L498:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L503
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1t	.L505
	nop

.L503:
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1f	.L506
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L506
	nop

.L505:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	b	.L509
	nop

.L506:
	ld	$2,0($sp)
.L509:
	dmtc1	$2,$f0
	daddiu	$sp,$sp,16
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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	sd	$7,40($sp)
	ld	$3,24($sp)
	ld	$2,40($sp)
	dsubu	$2,$3,$2
	ld	$3,16($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	ld	$2,40($sp)
	bne	$2,$0,.L513
	nop

	ld	$2,16($sp)
	b	.L514
	nop

.L513:
	ld	$3,24($sp)
	ld	$2,40($sp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,.L515
	nop

	move	$2,$0
	b	.L514
	nop

.L515:
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L516
	nop

.L518:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,32($sp)
	lb	$3,0($3)
	bne	$2,$3,.L517
	nop

	ld	$2,0($sp)
	daddiu	$3,$2,1
	ld	$2,32($sp)
	daddiu	$4,$2,1
	ld	$2,40($sp)
	daddiu	$2,$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	ld	$2,%got_disp(memcmp)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L517
	nop

	ld	$2,0($sp)
	b	.L514
	nop

.L517:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L516:
	ld	$3,0($sp)
	ld	$2,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L518
	nop

	move	$2,$0
.L514:
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	ld	$6,16($sp)
	ld	$5,8($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(memcpy)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	ld	$2,16($sp)
	daddu	$2,$3,$2
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(frexp)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(frexp)))
	sdc1	$f12,16($sp)
	sd	$5,24($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L522
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L522:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$f0,$f1
	nop
	bc1f	.L537
	nop

	b	.L526
	nop

.L527:
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
	div.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L526:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$f0,$f1
	nop
	bc1t	.L527
	nop

	b	.L528
	nop

.L537:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L528
	nop

	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	nop
	c.eq.d	$f0,$f1
	nop
	bc1t	.L528
	nop

	b	.L530
	nop

.L531:
	lw	$2,4($sp)
	addiu	$2,$2,-1
	sw	$2,4($sp)
	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
.L530:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$f1,$f0
	nop
	bc1t	.L531
	nop

.L528:
	ld	$2,24($sp)
	lw	$3,4($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	beq	$2,$0,.L532
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,16($sp)
.L532:
	ldc1	$f0,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$0,0($sp)
	ld	$2,16($sp)
	sd	$2,8($sp)
	b	.L539
	nop

.L541:
	ld	$2,8($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L540
	nop

	ld	$3,0($sp)
	ld	$2,24($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
.L540:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$2,1
	sd	$2,8($sp)
.L539:
	ld	$2,8($sp)
	bne	$2,$0,.L541
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sd	$6,24($sp)
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
	sw	$0,4($sp)
	b	.L544
	nop

.L546:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L544:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L547
	nop

	lw	$2,0($sp)
	beq	$2,$0,.L547
	nop

	lw	$2,20($sp)
	bgez	$2,.L546
	nop

	b	.L547
	nop

.L549:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L548
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$3,$2
	sw	$2,4($sp)
.L548:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L547:
	lw	$2,0($sp)
	bne	$2,$0,.L549
	nop

	ld	$2,24($sp)
	beq	$2,$0,.L550
	nop

	lw	$2,16($sp)
	b	.L551
	nop

.L550:
	lw	$2,4($sp)
.L551:
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	move	$2,$4
	sll	$2,$2,0
	sb	$2,16($sp)
	lb	$2,16($sp)
	bgez	$2,.L553
	nop

	lbu	$2,16($sp)
	nor	$2,$0,$2
	sb	$2,16($sp)
.L553:
	lb	$2,16($sp)
	bne	$2,$0,.L554
	nop

	li	$2,7			# 0x7
	b	.L555
	nop

.L554:
	lb	$2,16($sp)
	sll	$2,$2,8
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$3,%call16(__clzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	daddiu	$2,$2,-32
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L555:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	sd	$4,16($sp)
	ld	$2,16($sp)
	bgez	$2,.L557
	nop

	ld	$2,16($sp)
	nor	$2,$0,$2
	sd	$2,16($sp)
.L557:
	ld	$2,16($sp)
	bne	$2,$0,.L558
	nop

	li	$2,63			# 0x3f
	b	.L559
	nop

.L558:
	ld	$2,16($sp)
	ld	$3,%call16(__clzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L559:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	b	.L561
	nop

.L563:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L562
	nop

	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L562:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L561:
	lw	$2,16($sp)
	bne	$2,$0,.L563
	nop

	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,3
	sw	$2,8($sp)
	lw	$2,48($sp)
	li	$3,-8			# 0xfffffffffffffff8
	and	$2,$2,$3
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	ld	$2,40($sp)
	sd	$2,24($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L566
	nop

	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L573
	nop

.L566:
	sw	$0,0($sp)
	b	.L568
	nop

.L569:
	lwu	$2,0($sp)
	dsll	$2,$2,3
	ld	$3,40($sp)
	daddu	$3,$3,$2
	lwu	$2,0($sp)
	dsll	$2,$2,3
	ld	$4,32($sp)
	daddu	$2,$4,$2
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L568:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L569
	nop

	b	.L570
	nop

.L571:
	lwu	$2,4($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,4($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L570:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bne	$2,$0,.L571
	nop

	b	.L572
	nop

.L574:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L573:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bne	$2,$0,.L574
	nop

	nop
.L572:
	nop
	daddiu	$sp,$sp,64
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,1
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L576
	nop

	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	ld	$3,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L582
	nop

.L576:
	sw	$0,0($sp)
	b	.L578
	nop

.L579:
	lwu	$2,0($sp)
	dsll	$2,$2,1
	ld	$3,40($sp)
	daddu	$3,$3,$2
	lwu	$2,0($sp)
	dsll	$2,$2,1
	ld	$4,32($sp)
	daddu	$2,$4,$2
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L578:
	lw	$3,0($sp)
	lw	$2,4($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L579
	nop

	lw	$2,48($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L581
	nop

	lw	$2,48($sp)
	addiu	$2,$2,-1
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lw	$2,48($sp)
	addiu	$2,$2,-1
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	b	.L581
	nop

.L583:
	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L582:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bne	$2,$0,.L583
	nop

	nop
.L581:
	nop
	daddiu	$sp,$sp,64
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,2
	sw	$2,8($sp)
	lw	$2,48($sp)
	li	$3,-4			# 0xfffffffffffffffc
	and	$2,$2,$3
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	ld	$2,40($sp)
	sd	$2,24($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L585
	nop

	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L592
	nop

.L585:
	sw	$0,0($sp)
	b	.L587
	nop

.L588:
	lwu	$2,0($sp)
	dsll	$2,$2,2
	ld	$3,40($sp)
	daddu	$3,$3,$2
	lwu	$2,0($sp)
	dsll	$2,$2,2
	ld	$4,32($sp)
	daddu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L587:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L588
	nop

	b	.L589
	nop

.L590:
	lwu	$2,4($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,4($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L589:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bne	$2,$0,.L590
	nop

	b	.L591
	nop

.L593:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L592:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bne	$2,$0,.L593
	nop

	nop
.L591:
	nop
	daddiu	$sp,$sp,64
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lwu	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lwu	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	bltz	$2,.L602
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	b	.L603
	nop

.L602:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L603:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	bltz	$2,.L606
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	b	.L607
	nop

.L606:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L607:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($sp)
	sw	$0,0($sp)
	b	.L611
	nop

.L614:
	lhu	$2,16($sp)
	li	$4,15			# 0xf
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bne	$2,$0,.L616
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L611:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L614
	nop

	b	.L613
	nop

.L616:
	nop
.L613:
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($sp)
	sw	$0,0($sp)
	b	.L618
	nop

.L621:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,.L623
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L618:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L621
	nop

	b	.L620
	nop

.L623:
	nop
.L620:
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	swc1	$f12,0($sp)
	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$f0,$f1
	nop
	bc1f	.L629
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	sub.s	$f0,$f1,$f0
	trunc.l.s $f0,$f0
	dmfc1	$3,$f0
	li	$2,32768			# 0x8000
	daddu	$2,$3,$2
	b	.L627
	nop

.L629:
	lwc1	$f0,0($sp)
	trunc.l.s $f0,$f0
	dmfc1	$2,$f0
.L627:
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	b	.L631
	nop

.L633:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L632
	nop

	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L632:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L631:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L633
	nop

	lw	$2,4($sp)
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	b	.L636
	nop

.L638:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L637
	nop

	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L637:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L636:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L638
	nop

	lw	$2,4($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	b	.L641
	nop

.L643:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L642
	nop

	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L642:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L641:
	lw	$2,16($sp)
	bne	$2,$0,.L643
	nop

	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	lw	$2,16($sp)
	bne	$2,$0,.L648
	nop

	move	$2,$0
	b	.L647
	nop

.L650:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L649
	nop

	lw	$3,0($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L649:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L648:
	lw	$2,20($sp)
	bne	$2,$0,.L650
	nop

	lw	$2,0($sp)
.L647:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$5
	move	$2,$6
	sll	$4,$4,0
	sw	$4,16($sp)
	sll	$3,$3,0
	sw	$3,20($sp)
	sll	$2,$2,0
	sw	$2,24($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
	sw	$0,4($sp)
	b	.L652
	nop

.L654:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L652:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L655
	nop

	lw	$2,0($sp)
	beq	$2,$0,.L655
	nop

	lw	$2,20($sp)
	bgez	$2,.L654
	nop

	b	.L655
	nop

.L657:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L656
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$3,$2
	sw	$2,4($sp)
.L656:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L655:
	lw	$2,0($sp)
	bne	$2,$0,.L657
	nop

	lw	$2,24($sp)
	beq	$2,$0,.L658
	nop

	lw	$2,16($sp)
	b	.L659
	nop

.L658:
	lw	$2,4($sp)
.L659:
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L668
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L663
	nop

.L668:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L669
	nop

	li	$2,1			# 0x1
	b	.L663
	nop

.L669:
	move	$2,$0
.L663:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L678
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L673
	nop

.L678:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L679
	nop

	li	$2,1			# 0x1
	b	.L673
	nop

.L679:
	move	$2,$0
.L673:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	dmult	$3,$2
	mflo	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	dmult	$3,$2
	mflo	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	sw	$0,4($sp)
	sw	$0,8($sp)
	lw	$2,20($sp)
	bgez	$2,.L685
	nop

	lw	$2,20($sp)
	subu	$2,$0,$2
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,4($sp)
.L685:
	sb	$0,0($sp)
	b	.L686
	nop

.L689:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L687
	nop

	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
.L687:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sra	$2,$2,1
	sw	$2,20($sp)
	lb	$2,0($sp)
	andi	$2,$2,0x00ff
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,0($sp)
.L686:
	lw	$2,20($sp)
	beq	$2,$0,.L688
	nop

	lbu	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L689
	nop

.L688:
	lw	$2,4($sp)
	beq	$2,$0,.L690
	nop

	lw	$2,8($sp)
	subu	$2,$0,$2
	b	.L691
	nop

.L690:
	lw	$2,8($sp)
.L691:
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__divsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sw	$0,0($sp)
	ld	$2,16($sp)
	bgez	$2,.L694
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L694:
	ld	$2,24($sp)
	bgez	$2,.L695
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L695:
	lw	$2,20($sp)
	lw	$3,28($sp)
	move	$6,$0
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	sd	$2,8($sp)
	lw	$2,0($sp)
	beq	$2,$0,.L696
	nop

	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L696:
	ld	$2,8($sp)
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__modsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sw	$0,0($sp)
	ld	$2,16($sp)
	bgez	$2,.L699
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L699:
	ld	$2,24($sp)
	bgez	$2,.L700
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
.L700:
	lw	$2,20($sp)
	lw	$3,28($sp)
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	sd	$2,8($sp)
	lw	$2,0($sp)
	beq	$2,$0,.L701
	nop

	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L701:
	ld	$2,8($sp)
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$5
	move	$2,$6
	sll	$4,$4,0
	sh	$4,16($sp)
	sll	$3,$3,0
	sh	$3,18($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sh	$2,0($sp)
	sh	$0,2($sp)
	b	.L704
	nop

.L706:
	lhu	$2,18($sp)
	sll	$2,$2,1
	sh	$2,18($sp)
	lhu	$2,0($sp)
	sll	$2,$2,1
	sh	$2,0($sp)
.L704:
	lhu	$3,18($sp)
	lhu	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L707
	nop

	lhu	$2,0($sp)
	beq	$2,$0,.L707
	nop

	lh	$2,18($sp)
	bgez	$2,.L706
	nop

	b	.L707
	nop

.L709:
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L708
	nop

	lhu	$3,16($sp)
	lhu	$2,18($sp)
	subu	$2,$3,$2
	sh	$2,16($sp)
	lhu	$3,2($sp)
	lhu	$2,0($sp)
	or	$2,$3,$2
	sh	$2,2($sp)
.L708:
	lhu	$2,0($sp)
	srl	$2,$2,1
	sh	$2,0($sp)
	lhu	$2,18($sp)
	srl	$2,$2,1
	sh	$2,18($sp)
.L707:
	lhu	$2,0($sp)
	bne	$2,$0,.L709
	nop

	lw	$2,20($sp)
	beq	$2,$0,.L710
	nop

	lhu	$2,16($sp)
	b	.L711
	nop

.L710:
	lhu	$2,2($sp)
.L711:
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,32($sp)
	li	$2,1			# 0x1
	sd	$2,0($sp)
	sd	$0,8($sp)
	b	.L713
	nop

.L715:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	dsll	$2,$2,1
	sd	$2,0($sp)
.L713:
	ld	$3,24($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L716
	nop

	ld	$2,0($sp)
	beq	$2,$0,.L716
	nop

	ld	$3,24($sp)
	li	$2,1			# 0x1
	dsll	$2,$2,31
	and	$2,$3,$2
	beq	$2,$0,.L715
	nop

	b	.L716
	nop

.L718:
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L717
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	or	$2,$3,$2
	sd	$2,8($sp)
.L717:
	ld	$2,0($sp)
	dsrl	$2,$2,1
	sd	$2,0($sp)
	ld	$2,24($sp)
	dsrl	$2,$2,1
	sd	$2,24($sp)
.L716:
	ld	$2,0($sp)
	bne	$2,$0,.L718
	nop

	lw	$2,32($sp)
	beq	$2,$0,.L719
	nop

	ld	$2,16($sp)
	b	.L720
	nop

.L719:
	ld	$2,8($sp)
.L720:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L722
	nop

	sw	$0,20($sp)
	lw	$2,12($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	sw	$2,16($sp)
	b	.L723
	nop

.L722:
	lw	$2,40($sp)
	bne	$2,$0,.L724
	nop

	ld	$2,32($sp)
	b	.L726
	nop

.L724:
	lw	$3,12($sp)
	lw	$2,40($sp)
	sll	$2,$3,$2
	sw	$2,20($sp)
	lw	$2,8($sp)
	move	$3,$2
	lw	$2,40($sp)
	sll	$2,$3,$2
	move	$3,$2
	lw	$2,12($sp)
	lw	$5,0($sp)
	lw	$4,40($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	or	$2,$3,$2
	sw	$2,16($sp)
.L723:
	ld	$2,16($sp)
.L726:
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$5,56($sp)
	sd	$4,48($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,64($sp)
	li	$2,64			# 0x40
	sw	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	lw	$3,64($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L728
	nop

	sd	$0,40($sp)
	ld	$2,24($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$2,$2,$3
	sd	$2,32($sp)
	b	.L729
	nop

.L728:
	lw	$2,64($sp)
	bne	$2,$0,.L730
	nop

	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L732
	nop

.L730:
	ld	$3,24($sp)
	lw	$2,64($sp)
	dsll	$2,$3,$2
	sd	$2,40($sp)
	ld	$2,16($sp)
	move	$3,$2
	lw	$2,64($sp)
	dsll	$3,$3,$2
	ld	$2,24($sp)
	lw	$5,0($sp)
	lw	$4,64($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	dsrl	$2,$2,$4
	or	$2,$3,$2
	sd	$2,32($sp)
.L729:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L732:
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L734
	nop

	lw	$2,8($sp)
	lw	$3,0($sp)
	addiu	$3,$3,-1
	sll	$3,$3,0
	sra	$2,$2,$3
	sw	$2,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	sw	$2,20($sp)
	b	.L735
	nop

.L734:
	lw	$2,40($sp)
	bne	$2,$0,.L736
	nop

	ld	$2,32($sp)
	b	.L738
	nop

.L736:
	lw	$3,8($sp)
	lw	$2,40($sp)
	sra	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	move	$4,$2
	lw	$3,0($sp)
	lw	$2,40($sp)
	subu	$2,$3,$2
	sll	$2,$2,0
	sll	$2,$4,$2
	move	$3,$2
	lw	$4,12($sp)
	lw	$2,40($sp)
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,20($sp)
.L735:
	ld	$2,16($sp)
.L738:
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$5,56($sp)
	sd	$4,48($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,64($sp)
	li	$2,64			# 0x40
	sw	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	lw	$3,64($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L740
	nop

	ld	$2,16($sp)
	lw	$3,0($sp)
	addiu	$3,$3,-1
	sll	$3,$3,0
	dsra	$2,$2,$3
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsra	$2,$2,$3
	sd	$2,40($sp)
	b	.L741
	nop

.L740:
	lw	$2,64($sp)
	bne	$2,$0,.L742
	nop

	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L744
	nop

.L742:
	ld	$3,16($sp)
	lw	$2,64($sp)
	dsra	$2,$3,$2
	sd	$2,32($sp)
	ld	$2,16($sp)
	move	$4,$2
	lw	$3,0($sp)
	lw	$2,64($sp)
	subu	$2,$3,$2
	sll	$2,$2,0
	dsll	$3,$4,$2
	ld	$4,24($sp)
	lw	$2,64($sp)
	dsrl	$2,$4,$2
	or	$2,$3,$2
	sd	$2,40($sp)
.L741:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L744:
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,56
	ld	$2,0($sp)
	dsrl	$2,$2,40
	andi	$2,$2,0xff00
	or	$3,$3,$2
	ld	$2,0($sp)
	dsrl	$2,$2,24
	li	$4,16711680			# 0xff0000
	and	$2,$2,$4
	or	$3,$3,$2
	ld	$2,0($sp)
	dsrl	$4,$2,8
	li	$2,255			# 0xff
	dsll	$2,$2,24
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,8
	li	$2,255			# 0xff
	dsll	$2,$2,32
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,24
	li	$2,255			# 0xff
	dsll	$2,$2,40
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,40
	li	$2,255			# 0xff
	dsll	$2,$2,48
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,56
	or	$2,$3,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,24
	move	$3,$2
	lw	$2,0($sp)
	srl	$2,$2,8
	andi	$2,$2,0xff00
	or	$2,$3,$2
	move	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,8
	li	$4,16711680			# 0xff0000
	and	$2,$2,$4
	or	$2,$3,$2
	move	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,24
	or	$2,$3,$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,65536			# 0x10000
	sltu	$2,$2,$3
	beq	$2,$0,.L750
	nop

	li	$2,16			# 0x10
	b	.L751
	nop

.L750:
	move	$2,$0
.L751:
	sw	$2,4($sp)
	li	$3,16			# 0x10
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xff00
	bne	$2,$0,.L752
	nop

	li	$2,8			# 0x8
	b	.L753
	nop

.L752:
	move	$2,$0
.L753:
	sw	$2,4($sp)
	li	$3,8			# 0x8
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf0
	bne	$2,$0,.L754
	nop

	li	$2,4			# 0x4
	b	.L755
	nop

.L754:
	move	$2,$0
.L755:
	sw	$2,4($sp)
	li	$3,4			# 0x4
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xc
	bne	$2,$0,.L756
	nop

	li	$2,2			# 0x2
	b	.L757
	nop

.L756:
	move	$2,$0
.L757:
	sw	$2,4($sp)
	li	$3,2			# 0x2
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x2
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$4,$2
	li	$3,2			# 0x2
	lw	$2,0($sp)
	subu	$2,$3,$2
	mult	$4,$2
	mflo	$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	nomips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	sd	$5,40($sp)
	sd	$4,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$2,16($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,0($sp)
	nor	$2,$0,$2
	and	$2,$3,$2
	move	$4,$2
	ld	$3,24($sp)
	ld	$2,0($sp)
	and	$2,$3,$2
	or	$2,$4,$2
	ld	$3,%call16(__clzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	lw	$2,4($sp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$3,$2
	beq	$2,$0,.L762
	nop

	move	$2,$0
	b	.L767
	nop

.L762:
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$2,$3
	beq	$2,$0,.L764
	nop

	li	$2,2			# 0x2
	b	.L767
	nop

.L764:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L765
	nop

	move	$2,$0
	b	.L767
	nop

.L765:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L766
	nop

	li	$2,2			# 0x2
	b	.L767
	nop

.L766:
	li	$2,1			# 0x1
.L767:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$5,8($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(__cmpdi2)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$5,40($sp)
	sd	$4,32($sp)
	sd	$7,56($sp)
	sd	$6,48($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$3,$2
	beq	$2,$0,.L771
	nop

	move	$2,$0
	b	.L776
	nop

.L771:
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$2,$3
	beq	$2,$0,.L773
	nop

	li	$2,2			# 0x2
	b	.L776
	nop

.L773:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L774
	nop

	move	$2,$0
	b	.L776
	nop

.L774:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L775
	nop

	li	$2,2			# 0x2
	b	.L776
	nop

.L775:
	li	$2,1			# 0x1
.L776:
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xffff
	bne	$2,$0,.L778
	nop

	li	$2,16			# 0x10
	b	.L779
	nop

.L778:
	move	$2,$0
.L779:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xff
	bne	$2,$0,.L780
	nop

	li	$2,8			# 0x8
	b	.L781
	nop

.L780:
	move	$2,$0
.L781:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	bne	$2,$0,.L782
	nop

	li	$2,4			# 0x4
	b	.L783
	nop

.L782:
	move	$2,$0
.L783:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x3
	bne	$2,$0,.L784
	nop

	li	$2,2			# 0x2
	b	.L785
	nop

.L784:
	move	$2,$0
.L785:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	nor	$2,$0,$2
	andi	$2,$2,0x1
	move	$3,$2
	lw	$2,0($sp)
	srl	$2,$2,1
	li	$4,2			# 0x2
	subu	$2,$4,$2
	subu	$3,$0,$3
	and	$2,$3,$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sd	$5,40($sp)
	sd	$4,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$2,24($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,0($sp)
	and	$2,$3,$2
	move	$4,$2
	ld	$3,24($sp)
	ld	$2,0($sp)
	nor	$2,$0,$2
	and	$2,$3,$2
	or	$2,$4,$2
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	lw	$2,4($sp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	nomips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))
	sd	$5,24($sp)
	sd	$4,16($sp)
	ld	$3,24($sp)
	ld	$2,16($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L790
	nop

	ld	$2,0($sp)
	bne	$2,$0,.L791
	nop

	move	$2,$0
	b	.L793
	nop

.L791:
	ld	$2,0($sp)
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,65
	b	.L793
	nop

.L790:
	ld	$2,8($sp)
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,1
.L793:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L795
	nop

	sw	$0,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	srl	$2,$2,$3
	sw	$2,20($sp)
	b	.L796
	nop

.L795:
	lw	$2,40($sp)
	bne	$2,$0,.L797
	nop

	ld	$2,32($sp)
	b	.L799
	nop

.L797:
	lw	$3,8($sp)
	lw	$2,40($sp)
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	lw	$4,0($sp)
	lw	$3,40($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	move	$3,$2
	lw	$4,12($sp)
	lw	$2,40($sp)
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,20($sp)
.L796:
	ld	$2,16($sp)
.L799:
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$5,56($sp)
	sd	$4,48($sp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,64($sp)
	li	$2,64			# 0x40
	sw	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	lw	$3,64($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L801
	nop

	sd	$0,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsrl	$2,$2,$3
	sd	$2,40($sp)
	b	.L802
	nop

.L801:
	lw	$2,64($sp)
	bne	$2,$0,.L803
	nop

	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L805
	nop

.L803:
	ld	$3,16($sp)
	lw	$2,64($sp)
	dsrl	$2,$3,$2
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,0($sp)
	lw	$3,64($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$3,$2,$3
	ld	$4,24($sp)
	lw	$2,64($sp)
	dsrl	$2,$4,$2
	or	$2,$3,$2
	sd	$2,40($sp)
.L802:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L805:
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,32($sp)
	sll	$2,$2,0
	sw	$2,36($sp)
	li	$2,16			# 0x10
	sw	$2,0($sp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,4($sp)
	lw	$3,32($sp)
	lw	$2,4($sp)
	and	$2,$3,$2
	move	$3,$2
	lw	$4,36($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	sw	$2,20($sp)
	lw	$3,20($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	lw	$3,4($sp)
	and	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,32($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,36($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$3,20($sp)
	lw	$4,8($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($sp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,8($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,20($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	lw	$3,4($sp)
	and	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,36($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,32($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$3,20($sp)
	lw	$4,8($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($sp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,20($sp)
	lw	$2,16($sp)
	move	$4,$2
	lw	$3,8($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	move	$5,$2
	lw	$3,32($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,36($sp)
	lw	$2,0($sp)
	srl	$2,$4,$2
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,16($sp)
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$2,32($sp)
	sd	$2,0($sp)
	ld	$2,40($sp)
	sd	$2,8($sp)
	lw	$2,4($sp)
	lw	$3,12($sp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__muldsi3)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,16($sp)
	lw	$2,16($sp)
	move	$4,$2
	lw	$2,0($sp)
	move	$3,$2
	lw	$2,12($sp)
	mult	$3,$2
	mflo	$3
	lw	$2,4($sp)
	lw	$5,8($sp)
	mult	$2,$5
	mflo	$2
	addu	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,16($sp)
	ld	$2,16($sp)
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,48($sp)
	sd	$5,56($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,48($sp)
	ld	$2,8($sp)
	and	$3,$3,$2
	ld	$4,56($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	sd	$2,40($sp)
	ld	$3,40($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$2,8($sp)
	and	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,48($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,56($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$4,16($sp)
	ld	$2,8($sp)
	and	$4,$4,$2
	lw	$2,0($sp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,16($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,32($sp)
	ld	$3,40($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$2,8($sp)
	and	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,56($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,48($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$4,16($sp)
	ld	$2,8($sp)
	and	$4,$4,$2
	lw	$2,0($sp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,40($sp)
	ld	$2,32($sp)
	move	$4,$2
	ld	$3,16($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	daddu	$2,$4,$2
	sd	$2,32($sp)
	ld	$2,32($sp)
	move	$5,$2
	ld	$3,48($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,56($sp)
	lw	$2,0($sp)
	dsrl	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	daddu	$2,$5,$2
	sd	$2,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	nomips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,96,$31		# vars= 80, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$28,80($sp)
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	sd	$5,56($sp)
	sd	$4,48($sp)
	sd	$7,72($sp)
	sd	$6,64($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$3,72($sp)
	ld	$2,64($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$2,8($sp)
	ld	$3,24($sp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__mulddi3)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$3,40($sp)
	sd	$2,32($sp)
	ld	$2,32($sp)
	move	$4,$2
	ld	$2,0($sp)
	move	$3,$2
	ld	$2,24($sp)
	dmult	$3,$2
	mflo	$2
	ld	$3,8($sp)
	ld	$5,16($sp)
	dmult	$3,$5
	mflo	$3
	daddu	$2,$2,$3
	daddu	$2,$4,$2
	sd	$2,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	ld	$31,88($sp)
	ld	$28,80($sp)
	daddiu	$sp,$sp,96
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	nomips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsubu	$2,$0,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	nomips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$7,8($sp)
	ld	$6,0($sp)
	move	$5,$0
	move	$4,$0
	dsubu	$3,$5,$7
	sltu	$8,$5,$3
	dsll	$8,$8,32
	dsrl	$8,$8,32
	dsubu	$2,$4,$6
	dsubu	$4,$2,$8
	move	$2,$4
	daddiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,8($sp)
	lw	$2,8($sp)
	move	$3,$2
	lw	$2,12($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	nomips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$5,56($sp)
	sd	$4,48($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$2,16($sp)
	move	$3,$2
	ld	$2,24($sp)
	xor	$2,$3,$2
	sd	$2,32($sp)
	lw	$2,32($sp)
	move	$3,$2
	lw	$2,36($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	and	$2,$3,$2
	ld	$3,0($sp)
	dsubu	$2,$3,$2
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$3,$3,$2
	ld	$4,0($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,4
	ld	$2,0($sp)
	daddu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,0($sp)
	lw	$3,4($sp)
	ld	$2,0($sp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,16
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	lw	$3,8($sp)
	addu	$2,$3,$2
	andi	$2,$2,0x7f
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,1
	move	$3,$2
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	and	$2,$3,$2
	lw	$3,0($sp)
	subu	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,2
	move	$3,$2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$3,$2
	move	$3,$2
	lw	$4,0($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	addu	$2,$3,$2
	andi	$2,$2,0x3f
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$16,48($sp)
	sd	$5,40($sp)
	sd	$4,32($sp)
	ld	$5,40($sp)
	ld	$4,32($sp)
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$4,0($sp)
	dsll	$4,$4,63
	ld	$5,8($sp)
	dsrl	$9,$5,1
	or	$9,$4,$9
	ld	$4,0($sp)
	dsrl	$8,$4,1
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	and	$14,$8,$4
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	and	$15,$9,$4
	ld	$9,8($sp)
	ld	$8,0($sp)
	dsubu	$5,$9,$15
	sltu	$16,$9,$5
	dsll	$16,$16,32
	dsrl	$16,$16,32
	dsubu	$4,$8,$14
	dsubu	$8,$4,$16
	move	$4,$8
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$4,0($sp)
	dsll	$4,$4,62
	ld	$5,8($sp)
	dsrl	$7,$5,2
	or	$7,$4,$7
	ld	$4,0($sp)
	dsrl	$6,$4,2
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$10,$6,$4
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$11,$7,$4
	ld	$5,0($sp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$12,$5,$4
	ld	$5,8($sp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$13,$5,$4
	daddu	$5,$11,$13
	sltu	$6,$5,$11
	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$4,$10,$12
	daddu	$6,$6,$4
	move	$4,$6
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$4,0($sp)
	dsll	$4,$4,60
	ld	$5,8($sp)
	dsrl	$3,$5,4
	or	$3,$4,$3
	ld	$4,0($sp)
	dsrl	$2,$4,4
	ld	$7,8($sp)
	ld	$6,0($sp)
	daddu	$5,$3,$7
	sltu	$8,$5,$3
	dsll	$8,$8,32
	dsrl	$8,$8,32
	daddu	$4,$2,$6
	daddu	$2,$8,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	and	$4,$2,$4
	sd	$4,0($sp)
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	and	$2,$3,$4
	sd	$2,8($sp)
	ld	$2,8($sp)
	ld	$3,0($sp)
	dsrl	$25,$3,0
	move	$24,$0
	move	$3,$25
	daddu	$2,$2,$3
	sd	$2,16($sp)
	lw	$3,20($sp)
	ld	$2,16($sp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$2,$2,16
	lw	$3,24($sp)
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$2,$2,8
	lw	$3,24($sp)
	addu	$2,$3,$2
	andi	$2,$2,0xff
	ld	$16,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powidf2)))
	sdc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,8($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	sdc1	$f0,0($sp)
.L834:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L831
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,16($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($sp)
.L831:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beq	$2,$0,.L839
	nop

	ldc1	$f0,16($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
	b	.L834
	nop

.L839:
	nop
	lw	$2,8($sp)
	beq	$2,$0,.L835
	nop

	ldc1	$f0,0($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
	b	.L837
	nop

.L835:
	ldc1	$f0,0($sp)
.L837:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	swc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,20($sp)
	lw	$2,20($sp)
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,4($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f0,%got_ofst(.LC14)($2)
	swc1	$f0,0($sp)
.L844:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L841
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,16($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,0($sp)
.L841:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beq	$2,$0,.L849
	nop

	lwc1	$f0,16($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	b	.L844
	nop

.L849:
	nop
	lw	$2,4($sp)
	beq	$2,$0,.L845
	nop

	lwc1	$f0,0($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
	b	.L847
	nop

.L845:
	lwc1	$f0,0($sp)
.L847:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L851
	nop

	move	$2,$0
	b	.L856
	nop

.L851:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L853
	nop

	li	$2,2			# 0x2
	b	.L856
	nop

.L853:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L854
	nop

	move	$2,$0
	b	.L856
	nop

.L854:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L855
	nop

	li	$2,2			# 0x2
	b	.L856
	nop

.L855:
	li	$2,1			# 0x1
.L856:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$2,0($sp)
	ld	$3,8($sp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__ucmpdi2)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$5,40($sp)
	sd	$4,32($sp)
	sd	$7,56($sp)
	sd	$6,48($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L860
	nop

	move	$2,$0
	b	.L865
	nop

.L860:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L862
	nop

	li	$2,2			# 0x2
	b	.L865
	nop

.L862:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L863
	nop

	move	$2,$0
	b	.L865
	nop

.L863:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L864
	nop

	li	$2,2			# 0x2
	b	.L865
	nop

.L864:
	li	$2,1			# 0x1
.L865:
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
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
	.section	.rodata.cst4
	.align	2
.LC6:
	.word	1056964608
	.align	2
.LC7:
	.word	1073741824
	.section	.rodata.cst8
	.align	3
.LC8:
	.word	1071644672
	.word	0
	.align	3
.LC9:
	.word	1073741824
	.word	0
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.align	4
.LC11:
	.word	1073741824
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
