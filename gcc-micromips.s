	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.abicalls
	.text
	.align	2
	.globl	make_ti
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L6
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
	bnezc	$2,.L8
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
	bnezc	$2,.L11
.L9:
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L15
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
	beqzc	$2,.L17
	ld	$2,0($sp)
	daddiu	$2,$2,1
	b	.L18
	nop

.L17:
	move	$2,$0
.L18:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L21
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L22
	nop

.L21:
	ld	$2,32($sp)
	beqzc	$2,.L23
	ld	$2,0($sp)
	b	.L25
	nop

.L23:
	move	$2,$0
.L25:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L28
	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L29
	nop

.L28:
	ld	$2,32($sp)
	beqzc	$2,.L30
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L35
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L40
	move	$2,$0
.L39:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L43
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L47
	ld	$2,0($sp)
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L51
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	bne	$2,$3,.L52
	nop

.L51:
	ld	$2,0($sp)
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.set	nomips16
	.set	micromips
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
	bnezc	$3,.L57
	move	$2,$0
.L56:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L61
.L60:
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L65
	ld	$3,16($sp)
	ld	$2,0($sp)
	dsubu	$2,$3,$2
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L70
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
	beqzc	$2,.L71
	ld	$2,8($sp)
	lbu	$2,0($2)
	beqzc	$2,.L71
	ld	$2,32($sp)
	beqzc	$2,.L71
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L75
	nop
	nop
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.set	nomips16
	.set	micromips
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
	lw	$3,0($sp)
	li	$2,32			# 0x20
	beq	$3,$2,.L81
	nop

	lw	$3,0($sp)
	li	$2,9			# 0x9
	bne	$3,$2,.L82
	nop

.L81:
	li	$2,1			# 0x1
	b	.L83
	nop

.L82:
	move	$2,$0
.L83:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L86
	lw	$3,0($sp)
	li	$2,127			# 0x7f
	bne	$3,$2,.L87
	nop

.L86:
	li	$2,1			# 0x1
	b	.L88
	nop

.L87:
	move	$2,$0
.L88:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	islower
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.set	nomips16
	.set	micromips
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
	lw	$3,0($sp)
	li	$2,32			# 0x20
	beq	$3,$2,.L99
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beqzc	$2,.L100
.L99:
	li	$2,1			# 0x1
	b	.L101
	nop

.L100:
	move	$2,$0
.L101:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L106
	lw	$2,0($sp)
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bnezc	$2,.L106
	lw	$2,0($sp)
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bnezc	$2,.L106
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beqzc	$2,.L107
.L106:
	li	$2,1			# 0x1
	b	.L108
	nop

.L107:
	move	$2,$0
.L108:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L113
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
	bnezc	$2,.L115
	lw	$2,0($sp)
	addiu	$2,$2,-8234
	move	$3,$2
	li	$2,47062			# 0xb7d6
	sltu	$2,$3,$2
	bnezc	$2,.L115
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beqzc	$2,.L116
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
	beqzc	$2,.L117
	lw	$2,0($sp)
	andi	$2,$2,0xfffe
	move	$3,$2
	li	$2,65534			# 0xfffe
	bne	$3,$2,.L118
	nop

.L117:
	move	$2,$0
	b	.L114
	nop

.L118:
	li	$2,1			# 0x1
.L114:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L120
	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beqzc	$2,.L121
.L120:
	li	$2,1			# 0x1
	b	.L122
	nop

.L121:
	move	$2,$0
.L122:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.set	nomips16
	.set	micromips
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
	c.un.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L127
	nop

	ldc1	$f0,0($sp)
	b	.L128
	nop

.L127:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L129
	nop

	ldc1	$f0,8($sp)
	b	.L128
	nop

.L129:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L134
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.set	nomips16
	.set	micromips
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
	c.un.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L136
	nop

	lwc1	$f0,0($sp)
	b	.L137
	nop

.L136:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L138
	nop

	lwc1	$f0,4($sp)
	b	.L137
	nop

.L138:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L143
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.set	nomips16
	.set	micromips
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
	c.un.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L145
	nop

	ldc1	$f0,8($sp)
	b	.L146
	nop

.L145:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L147
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
	beqzc	$2,.L149
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
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L155
	nop

	ldc1	$f0,8($sp)
	b	.L146
	nop

.L155:
	ldc1	$f0,0($sp)
.L146:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.set	nomips16
	.set	micromips
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
	c.un.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L157
	nop

	lwc1	$f0,4($sp)
	b	.L158
	nop

.L157:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L159
	nop

	lwc1	$f0,0($sp)
	b	.L158
	nop

.L159:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	lw	$4,4($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$3,$4,$3
	beq	$2,$3,.L160
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beqzc	$2,.L161
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
	c.lt.s	$fcc2,$f1,$f0
	bc1f	$fcc2,.L167
	nop

	lwc1	$f0,4($sp)
	b	.L158
	nop

.L167:
	lwc1	$f0,0($sp)
.L158:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.set	nomips16
	.set	micromips
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
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L183
	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L171
	nop

.L183:
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L184
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
	beqzc	$2,.L175
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
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
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
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.set	nomips16
	.set	micromips
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
	c.un.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L187
	nop

	ldc1	$f0,8($sp)
	b	.L188
	nop

.L187:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L189
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
	beqzc	$2,.L191
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
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L197
	nop

	ldc1	$f0,0($sp)
	b	.L188
	nop

.L197:
	ldc1	$f0,8($sp)
.L188:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.set	nomips16
	.set	micromips
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
	c.un.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L199
	nop

	lwc1	$f0,4($sp)
	b	.L200
	nop

.L199:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L201
	nop

	lwc1	$f0,0($sp)
	b	.L200
	nop

.L201:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	lw	$4,4($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$3,$4,$3
	beq	$2,$3,.L202
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beqzc	$2,.L203
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
	c.lt.s	$fcc2,$f1,$f0
	bc1f	$fcc2,.L209
	nop

	lwc1	$f0,0($sp)
	b	.L200
	nop

.L209:
	lwc1	$f0,4($sp)
.L200:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.set	nomips16
	.set	micromips
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
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L225
	ld	$3,24($sp)
	ld	$2,16($sp)
	b	.L213
	nop

.L225:
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L226
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
	beqzc	$2,.L217
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
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
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
	jraddiusp	48
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
	.set	micromips
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
	dext	$3,$3,0,32
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
	bnezc	$2,.L230
	ld	$2,0($sp)
	sb	$0,0($2)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.set	nomips16
	.set	micromips
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
	dext	$3,$2,0,32
	ld	$2,%got_page(seed)($5)
	sd	$3,%got_ofst(seed)($2)
	nop
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L236
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
	beqzc	$2,.L235
	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	sd	$3,8($2)
.L235:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L239
	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	ld	$3,8($3)
	sd	$3,8($2)
.L239:
	ld	$2,0($sp)
	ld	$2,8($2)
	beqzc	$2,.L241
	ld	$2,0($sp)
	ld	$2,8($2)
	ld	$3,0($sp)
	ld	$3,0($3)
	sd	$3,0($2)
.L241:
	nop
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$4
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
	daddu	$3,$2,$3
	ld	$2,64($sp)
	move	$5,$3
	ld	$4,32($sp)
	move	$25,$2
	jalrs	$25
	nop

	bnezc	$2,.L244
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
	bnezc	$2,.L246
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L245:
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$16,88($sp)
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$4
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
	daddu	$3,$2,$3
	ld	$2,64($sp)
	move	$5,$3
	ld	$4,32($sp)
	move	$25,$2
	jalrs	$25
	nop

	bnezc	$2,.L249
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
	bnezc	$2,.L251
	move	$2,$0
.L250:
	ld	$31,104($sp)
	ld	$16,88($sp)
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L253
	nop

	subu	$2,$0,$2
.L253:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	nomips16
	.set	micromips
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
	b	.L256
	nop

.L257:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L256:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L257
	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L258
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L260
	nop

	li	$2,1			# 0x1
	sw	$2,4($sp)
.L258:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L260
	nop

.L261:
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
.L260:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L261
	lw	$2,4($sp)
	bnezc	$2,.L262
	lw	$2,0($sp)
	subu	$2,$0,$2
	b	.L263
	nop

.L262:
	lw	$2,0($sp)
.L263:
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	nomips16
	.set	micromips
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
	b	.L266
	nop

.L267:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L266:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L267
	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L268
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L270
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L268:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L270
	nop

.L271:
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
.L270:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L271
	lw	$2,8($sp)
	bnezc	$2,.L272
	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L274
	nop

.L272:
	ld	$2,0($sp)
.L274:
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	nomips16
	.set	micromips
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
	b	.L276
	nop

.L277:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L276:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L277
	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L278
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L280
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L278:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L280
	nop

.L281:
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
.L280:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L281
	lw	$2,8($sp)
	bnezc	$2,.L282
	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L284
	nop

.L282:
	ld	$2,0($sp)
.L284:
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	nomips16
	.set	micromips
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
	b	.L286
	nop

.L291:
	ld	$2,32($sp)
	dsrl	$3,$2,1
	ld	$2,40($sp)
	dmult	$3,$2
	ld	$2,24($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,0($sp)
	ld	$2,48($sp)
	ld	$5,0($sp)
	ld	$4,16($sp)
	move	$25,$2
	jalrs	$25
	nop

	sw	$2,8($sp)
	lw	$2,8($sp)
	bgez	$2,.L287
	nop

	ld	$2,32($sp)
	dsrl	$2,$2,1
	sd	$2,32($sp)
	b	.L286
	nop

.L287:
	lw	$2,8($sp)
	blez	$2,.L289
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
	b	.L286
	nop

.L289:
	ld	$2,0($sp)
	b	.L290
	nop

.L286:
	ld	$2,32($sp)
	bnezc	$2,.L291
	move	$2,$0
.L290:
	ld	$31,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	micromips
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
	b	.L293
	nop

.L297:
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
	ld	$6,72($sp)
	ld	$5,16($sp)
	ld	$4,32($sp)
	move	$25,$2
	jalrs	$25
	nop

	sw	$2,24($sp)
	lw	$2,24($sp)
	bnezc	$2,.L294
	ld	$2,16($sp)
	b	.L295
	nop

.L294:
	lw	$2,24($sp)
	blez	$2,.L296
	nop

	ld	$3,16($sp)
	ld	$2,56($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,$2,-1
	sw	$2,8($sp)
.L296:
	lw	$2,8($sp)
	sra	$2,$2,1
	sw	$2,8($sp)
.L293:
	lw	$2,8($sp)
	bnezc	$2,.L297
	move	$2,$0
.L295:
	ld	$31,88($sp)
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	nomips16
	.set	micromips
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
	dins	$2,$3,32,32
	lwu	$3,4($sp)
	dins	$2,$3,0,32
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L301
	nop

	dsubu	$2,$0,$2
.L301:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L306
	nop

	dsubu	$2,$0,$2
.L306:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L311
	nop

	dsubu	$2,$0,$2
.L311:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.set	nomips16
	.set	micromips
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
	b	.L316
	nop

.L318:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L316:
	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L317
	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L318
	nop

.L317:
	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L319
	ld	$2,0($sp)
	b	.L321
	nop

.L319:
	move	$2,$0
.L321:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.set	nomips16
	.set	micromips
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
	b	.L323
	nop

.L325:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L323:
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L324
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L324
	ld	$2,8($sp)
	lw	$2,0($2)
	bnezc	$2,.L325
.L324:
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L326
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L327
	nop

.L326:
	li	$2,-1			# 0xffffffffffffffff
.L327:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	nomips16
	.set	micromips
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
.L330:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bnezc	$2,.L330
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.set	nomips16
	.set	micromips
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
	b	.L333
	nop

.L334:
	ld	$2,16($sp)
	daddiu	$2,$2,4
	sd	$2,16($sp)
.L333:
	ld	$2,16($sp)
	lw	$2,0($2)
	bnezc	$2,.L334
	ld	$3,16($sp)
	ld	$2,0($sp)
	dsubu	$2,$3,$2
	dsra	$2,$2,2
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.set	nomips16
	.set	micromips
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
	b	.L337
	nop

.L339:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L337:
	ld	$2,16($sp)
	beqzc	$2,.L338
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L338
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L338
	ld	$2,8($sp)
	lw	$2,0($2)
	bnezc	$2,.L339
.L338:
	ld	$2,16($sp)
	beqzc	$2,.L340
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L341
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L343
	nop

.L341:
	li	$2,-1			# 0xffffffffffffffff
	b	.L343
	nop

.L340:
	move	$2,$0
.L343:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.set	nomips16
	.set	micromips
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
	b	.L346
	nop

.L348:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L346:
	ld	$2,16($sp)
	beqzc	$2,.L347
	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L348
	nop

.L347:
	ld	$2,16($sp)
	beqzc	$2,.L349
	ld	$2,0($sp)
	b	.L351
	nop

.L349:
	move	$2,$0
.L351:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.set	nomips16
	.set	micromips
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
	b	.L353
	nop

.L355:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L353:
	ld	$2,16($sp)
	beqzc	$2,.L354
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	beq	$2,$3,.L355
	nop

.L354:
	ld	$2,16($sp)
	beqzc	$2,.L356
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L357
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L359
	nop

.L357:
	li	$2,-1			# 0xffffffffffffffff
	b	.L359
	nop

.L356:
	move	$2,$0
.L359:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	nomips16
	.set	micromips
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
	b	.L362
	nop

.L363:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L362:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L363
	ld	$2,0($sp)
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	nomips16
	.set	micromips
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
	bne	$3,$2,.L366
	nop

	ld	$2,16($sp)
	b	.L367
	nop

.L366:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	sltu	$2,$3,$2
	beqzc	$2,.L372
	b	.L369
	nop

.L370:
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
.L369:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L370
	b	.L371
	nop

.L373:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L372:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L373
.L371:
	ld	$2,0($sp)
.L367:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.set	nomips16
	.set	micromips
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
	b	.L375
	nop

.L376:
	ld	$2,16($sp)
	daddiu	$3,$2,4
	sd	$3,16($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
.L375:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L376
	ld	$2,0($sp)
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L379
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	b	.L380
	nop

.L381:
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
.L380:
	ld	$2,32($sp)
	bnezc	$2,.L381
	b	.L385
	nop

.L379:
	ld	$3,0($sp)
	ld	$2,8($sp)
	beq	$3,$2,.L385
	nop

	b	.L383
	nop

.L384:
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
.L383:
	ld	$2,32($sp)
	bnezc	$2,.L384
.L385:
	nop
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.set	nomips16
	.set	micromips
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
	lw	$2,8($sp)
	subu	$2,$0,$2
	ld	$3,0($sp)
	dror	$2,$3,$2
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.set	nomips16
	.set	micromips
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
	dror	$2,$3,$2
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.set	nomips16
	.set	micromips
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
	lw	$2,4($sp)
	subu	$2,$0,$2
	lw	$3,0($sp)
	ror	$2,$3,$2
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.set	nomips16
	.set	micromips
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
	ror	$2,$3,$2
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$2,8
	lw	$4,16($sp)
	and	$2,$4,$2
	sll	$2,$2,8
	or	$2,$2,$3
	move	$3,$2
	lw	$2,4($sp)
	lw	$4,16($sp)
	and	$2,$4,$2
	sll	$2,$2,24
	or	$2,$2,$3
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	nomips16
	.set	micromips
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
	b	.L413
	nop

.L416:
	lw	$3,16($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L414
	lw	$2,0($sp)
	addiu	$2,$2,1
	b	.L415
	nop

.L414:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L413:
	lw	$2,0($sp)
	sltu	$2,$2,32
	bnezc	$2,.L416
	move	$2,$0
.L415:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L418
	move	$2,$0
	b	.L419
	nop

.L418:
	li	$16,1			# 0x1
	b	.L420
	nop

.L421:
	sra	$2,$2,1
	addiu	$3,$16,1
	move	$16,$3
.L420:
	andi	$3,$2,0x1
	beqzc	$3,.L421
	move	$2,$16
.L419:
	ld	$16,8($sp)
	jraddiusp	16
	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.set	nomips16
	.set	micromips
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
	c.lt.s	$fcc0,$f1,$f0
	bc1t	$fcc0,.L423
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L428
	nop

.L423:
	li	$2,1			# 0x1
	b	.L426
	nop

.L428:
	move	$2,$0
.L426:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.set	nomips16
	.set	micromips
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
	c.lt.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L430
	nop

	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L435
	nop

.L430:
	li	$2,1			# 0x1
	b	.L433
	nop

.L435:
	move	$2,$0
.L433:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.set	nomips16
	.set	micromips
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
	ld	$3,%got_page(.LC4)($28)
	ld	$2,%call16(__lttf2)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($3)
	ldc1	$f14,%got_ofst(.LC4)($3)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bltz	$2,.L437
	nop

	ld	$3,%got_page(.LC5)($28)
	ld	$2,%call16(__gttf2)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($3)
	ldc1	$f14,%got_ofst(.LC5)($3)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalrs	$25
	nop

	blez	$2,.L442
	nop

.L437:
	li	$2,1			# 0x1
	b	.L440
	nop

.L442:
	move	$2,$0
.L440:
	ld	$31,24($sp)
	ld	$28,16($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	nomips16
	.set	micromips
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
	cvt.d.w	$f0,$f0
	ld	$2,%call16(__extenddftf2)($28)
	mov.d	$f12,$f0
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalrs	$25
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
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.set	nomips16
	.set	micromips
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
	c.un.s	$fcc0,$f1,$f0
	bc1t	$fcc0,.L445
	nop

	lwc1	$f0,16($sp)
	add.s	$f0,$f0,$f0
	lwc1	$f1,16($sp)
	c.eq.s	$fcc1,$f1,$f0
	bc1t	$fcc1,.L445
	nop

	lw	$2,20($sp)
	bgez	$2,.L446
	nop

	ld	$2,%got_page(.LC6)($4)
	lwc1	$f0,%got_ofst(.LC6)($2)
	b	.L447
	nop

.L446:
	ld	$2,%got_page(.LC7)($4)
	lwc1	$f0,%got_ofst(.LC7)($2)
.L447:
	swc1	$f0,0($sp)
.L450:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L448
	lwc1	$f1,16($sp)
	lwc1	$f0,0($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,16($sp)
.L448:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beqzc	$2,.L452
	lwc1	$f0,0($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,0($sp)
	b	.L450
	nop

.L452:
	nop
.L445:
	lwc1	$f0,16($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.set	nomips16
	.set	micromips
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
	c.un.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L454
	nop

	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	ldc1	$f1,16($sp)
	c.eq.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L454
	nop

	lw	$2,24($sp)
	bgez	$2,.L455
	nop

	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	b	.L456
	nop

.L455:
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
.L456:
	sdc1	$f0,0($sp)
.L459:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L457
	ldc1	$f1,16($sp)
	ldc1	$f0,0($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L457:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beqzc	$2,.L461
	ldc1	$f0,0($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,0($sp)
	b	.L459
	nop

.L461:
	nop
.L454:
	ldc1	$f0,16($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.set	nomips16
	.set	micromips
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
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L463
	ld	$5,24($sp)
	ld	$4,16($sp)
	ld	$2,%call16(__addtf3)($28)
	dmtc1	$5,$f15
	dmtc1	$4,$f14
	dmtc1	$5,$f13
	dmtc1	$4,$f12
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	move	$5,$3
	move	$4,$2
	ld	$2,%call16(__netf2)($28)
	dmtc1	$5,$f15
	dmtc1	$4,$f14
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalrs	$25
	nop

	beqzc	$2,.L463
	lw	$2,32($sp)
	bgez	$2,.L465
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$3,%got_ofst(.LC10+8)($2)
	ld	$2,%got_ofst(.LC10)($2)
	b	.L466
	nop

.L465:
	ld	$2,%got_page(.LC11)($28)
	ld	$3,%got_ofst(.LC11+8)($2)
	ld	$2,%got_ofst(.LC11)($2)
.L466:
	sd	$3,8($sp)
	sd	$2,0($sp)
.L469:
	lw	$2,32($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L467
	ld	$2,%call16(__multf3)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	sd	$3,24($sp)
	sd	$2,16($sp)
.L467:
	lw	$2,32($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	beqzc	$2,.L472
	ld	$2,%call16(__multf3)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	sd	$3,8($sp)
	sd	$2,0($sp)
	b	.L469
	nop

.L472:
	nop
.L463:
	ld	$3,24($sp)
	ld	$2,16($sp)
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	ld	$31,56($sp)
	ld	$28,48($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	nomips16
	.set	micromips
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
	b	.L474
	nop

.L475:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$4,0($2)
	ld	$2,8($sp)
	daddiu	$3,$2,1
	sd	$3,8($sp)
	lb	$3,0($2)
	xor	$3,$3,$4
	seb	$3,$3
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L474:
	ld	$2,32($sp)
	bnezc	$2,.L475
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalrs	$25
	nop

	move	$3,$2
	ld	$2,16($sp)
	daddu	$2,$2,$3
	sd	$2,0($sp)
	b	.L478
	nop

.L480:
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L478:
	ld	$2,32($sp)
	beqzc	$2,.L479
	ld	$2,24($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bnezc	$2,.L480
.L479:
	ld	$2,32($sp)
	bnezc	$2,.L481
	ld	$2,0($sp)
	sb	$0,0($2)
.L481:
	ld	$2,16($sp)
	ld	$31,56($sp)
	ld	$28,48($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	nomips16
	.set	micromips
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
	b	.L484
	nop

.L489:
	nop
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L484:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L485
	ld	$3,16($sp)
	ld	$2,0($sp)
	daddu	$2,$3,$2
	lb	$2,0($2)
	bnezc	$2,.L489
.L485:
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	nomips16
	.set	micromips
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
	b	.L491
	nop

.L495:
	ld	$2,24($sp)
	sd	$2,0($sp)
	b	.L492
	nop

.L494:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$2,0($2)
	ld	$3,16($sp)
	lb	$3,0($3)
	bne	$2,$3,.L492
	nop

	ld	$2,16($sp)
	b	.L493
	nop

.L492:
	ld	$2,0($sp)
	lb	$2,0($2)
	bnezc	$2,.L494
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L491:
	ld	$2,16($sp)
	lb	$2,0($2)
	bnezc	$2,.L495
	move	$2,$0
.L493:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	nomips16
	.set	micromips
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
.L498:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($sp)
	bne	$3,$4,.L497
	nop

	sd	$2,0($sp)
.L497:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bnezc	$3,.L498
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalrs	$25
	nop

	sd	$2,8($sp)
	ld	$2,8($sp)
	bnezc	$2,.L503
	ld	$2,16($sp)
	b	.L502
	nop

.L505:
	ld	$6,8($sp)
	ld	$5,24($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(strncmp)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalrs	$25
	nop

	bnezc	$2,.L504
	ld	$2,0($sp)
	b	.L502
	nop

.L504:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L503:
	ld	$2,24($sp)
	lb	$2,0($2)
	move	$5,$2
	ld	$4,0($sp)
	ld	$2,%got_disp(strchr)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalrs	$25
	nop

	sd	$2,0($sp)
	ld	$2,0($sp)
	bnezc	$2,.L505
	move	$2,$0
.L502:
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.set	nomips16
	.set	micromips
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
	c.lt.d	$fcc0,$f0,$f1
	bc1f	$fcc0,.L507
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	c.lt.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L509
	nop

.L507:
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L510
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	c.lt.d	$fcc3,$f0,$f1
	bc1f	$fcc3,.L510
	nop

.L509:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	b	.L513
	nop

.L510:
	ld	$2,0($sp)
.L513:
	dmtc1	$2,$f0
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L517
	ld	$2,16($sp)
	b	.L518
	nop

.L517:
	ld	$3,24($sp)
	ld	$2,40($sp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beqzc	$2,.L519
	move	$2,$0
	b	.L518
	nop

.L519:
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L520
	nop

.L522:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,32($sp)
	lb	$3,0($3)
	bne	$2,$3,.L521
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalrs	$25
	nop

	bnezc	$2,.L521
	ld	$2,0($sp)
	b	.L518
	nop

.L521:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L520:
	ld	$3,0($sp)
	ld	$2,8($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L522
	move	$2,$0
.L518:
	ld	$31,56($sp)
	ld	$28,48($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

	move	$3,$2
	ld	$2,16($sp)
	daddu	$2,$3,$2
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.set	nomips16
	.set	micromips
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
	c.lt.d	$fcc0,$f0,$f1
	bc1f	$fcc0,.L526
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L526:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L541
	nop

	b	.L530
	nop

.L531:
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
	div.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L530:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L531
	nop

	b	.L532
	nop

.L541:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L532
	nop

	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	c.eq.d	$fcc4,$f0,$f1
	bc1t	$fcc4,.L532
	nop

	b	.L534
	nop

.L535:
	lw	$2,4($sp)
	addiu	$2,$2,-1
	sw	$2,4($sp)
	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
.L534:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L535
	nop

.L532:
	ld	$2,24($sp)
	lw	$3,4($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	beqzc	$2,.L536
	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	sd	$2,16($sp)
.L536:
	ldc1	$f0,16($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	nomips16
	.set	micromips
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
	b	.L543
	nop

.L545:
	ld	$2,8($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L544
	ld	$3,0($sp)
	ld	$2,24($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
.L544:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$2,1
	sd	$2,8($sp)
.L543:
	ld	$2,8($sp)
	bnezc	$2,.L545
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.set	nomips16
	.set	micromips
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
	b	.L548
	nop

.L550:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L548:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L551
	lw	$2,0($sp)
	beqzc	$2,.L551
	lw	$2,20($sp)
	bgez	$2,.L550
	nop

	b	.L551
	nop

.L553:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L552
	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$2,$3
	sw	$2,4($sp)
.L552:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L551:
	lw	$2,0($sp)
	bnezc	$2,.L553
	ld	$2,24($sp)
	beqzc	$2,.L554
	lw	$2,16($sp)
	b	.L555
	nop

.L554:
	lw	$2,4($sp)
.L555:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sb	$2,16($sp)
	lb	$2,16($sp)
	bgez	$2,.L557
	nop

	lbu	$2,16($sp)
	nor	$2,$0,$2
	sb	$2,16($sp)
.L557:
	lb	$2,16($sp)
	bnezc	$2,.L558
	li	$2,7			# 0x7
	b	.L559
	nop

.L558:
	lb	$2,16($sp)
	sll	$2,$2,8
	clz	$2,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L559:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	bgez	$2,.L561
	nop

	ld	$2,16($sp)
	nor	$2,$0,$2
	sd	$2,16($sp)
.L561:
	ld	$2,16($sp)
	bnezc	$2,.L562
	li	$2,63			# 0x3f
	b	.L563
	nop

.L562:
	ld	$2,16($sp)
	dclz	$2,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L563:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	nomips16
	.set	micromips
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
	b	.L565
	nop

.L567:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L566
	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L566:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L565:
	lw	$2,16($sp)
	bnezc	$2,.L567
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.set	nomips16
	.set	micromips
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
	lw	$3,48($sp)
	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$3,$2
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	ld	$2,40($sp)
	sd	$2,24($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L570
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L577
.L570:
	sw	$0,0($sp)
	b	.L572
	nop

.L573:
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
.L572:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L573
	b	.L574
	nop

.L575:
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
.L574:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bnezc	$2,.L575
	b	.L576
	nop

.L578:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L577:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnezc	$2,.L578
	nop
.L576:
	nop
	daddiu	$sp,$sp,64
	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L580
	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	ld	$3,8($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L586
.L580:
	sw	$0,0($sp)
	b	.L582
	nop

.L583:
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
.L582:
	lw	$3,0($sp)
	lw	$2,4($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L583
	lw	$2,48($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L585
	lw	$2,48($sp)
	addiu	$2,$2,-1
	dext	$2,$2,0,32
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lw	$2,48($sp)
	addiu	$2,$2,-1
	dext	$2,$2,0,32
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	b	.L585
	nop

.L587:
	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L586:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnezc	$2,.L587
	nop
.L585:
	nop
	daddiu	$sp,$sp,64
	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	nomips16
	.set	micromips
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
	lw	$3,48($sp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$3,$2
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	ld	$2,40($sp)
	sd	$2,24($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L589
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L596
.L589:
	sw	$0,0($sp)
	b	.L591
	nop

.L592:
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
.L591:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L592
	b	.L593
	nop

.L594:
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
.L593:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bnezc	$2,.L594
	b	.L595
	nop

.L597:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L596:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnezc	$2,.L597
	nop
.L595:
	nop
	daddiu	$sp,$sp,64
	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.set	nomips16
	.set	micromips
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
	cvt.d.l	$f0,$f0
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	nomips16
	.set	micromips
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
	cvt.s.l	$f0,$f0
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	nomips16
	.set	micromips
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
	bltz	$2,.L606
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	b	.L607
	nop

.L606:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L607:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	nomips16
	.set	micromips
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
	bltz	$2,.L610
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	b	.L611
	nop

.L610:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L611:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	nomips16
	.set	micromips
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
	b	.L615
	nop

.L618:
	lhu	$2,16($sp)
	li	$4,15			# 0xf
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bnezc	$2,.L620
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L615:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L618
	b	.L617
	nop

.L620:
	nop
.L617:
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	nomips16
	.set	micromips
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
	b	.L622
	nop

.L625:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bnezc	$2,.L627
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L622:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L625
	b	.L624
	nop

.L627:
	nop
.L624:
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.set	nomips16
	.set	micromips
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
	c.le.s	$fcc0,$f0,$f1
	bc1f	$fcc0,.L633
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	sub.s	$f0,$f1,$f0
	trunc.l.s $f0,$f0
	dmfc1	$3,$f0
	li	$2,32768			# 0x8000
	daddu	$2,$3,$2
	b	.L631
	nop

.L633:
	lwc1	$f0,0($sp)
	trunc.l.s $f0,$f0
	dmfc1	$2,$f0
.L631:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	nomips16
	.set	micromips
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
	b	.L635
	nop

.L637:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L636
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L636:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L635:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L637
	lw	$2,4($sp)
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	nomips16
	.set	micromips
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
	b	.L640
	nop

.L642:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L641
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L641:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L640:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L642
	lw	$2,4($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	micromips
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
	b	.L645
	nop

.L647:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L646
	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L646:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L645:
	lw	$2,16($sp)
	bnezc	$2,.L647
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L652
	move	$2,$0
	b	.L651
	nop

.L654:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L653
	lw	$3,0($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L653:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L652:
	lw	$2,20($sp)
	bnezc	$2,.L654
	lw	$2,0($sp)
.L651:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	nomips16
	.set	micromips
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
	b	.L656
	nop

.L658:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L656:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L659
	lw	$2,0($sp)
	beqzc	$2,.L659
	lw	$2,20($sp)
	bgez	$2,.L658
	nop

	b	.L659
	nop

.L661:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L660
	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$2,$3
	sw	$2,4($sp)
.L660:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L659:
	lw	$2,0($sp)
	bnezc	$2,.L661
	lw	$2,24($sp)
	beqzc	$2,.L662
	lw	$2,16($sp)
	b	.L663
	nop

.L662:
	lw	$2,4($sp)
.L663:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	micromips
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
	c.lt.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L672
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L667
	nop

.L672:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L673
	nop

	li	$2,1			# 0x1
	b	.L667
	nop

.L673:
	move	$2,$0
.L667:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.set	nomips16
	.set	micromips
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
	c.lt.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L682
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L677
	nop

.L682:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L683
	nop

	li	$2,1			# 0x1
	b	.L677
	nop

.L683:
	move	$2,$0
.L677:
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L689
	nop

	lw	$2,20($sp)
	subu	$2,$0,$2
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,4($sp)
.L689:
	sb	$0,0($sp)
	b	.L690
	nop

.L693:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L691
	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
.L691:
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
.L690:
	lw	$2,20($sp)
	beqzc	$2,.L692
	lbu	$2,0($sp)
	sltu	$2,$2,32
	bnezc	$2,.L693
.L692:
	lw	$2,4($sp)
	beqzc	$2,.L694
	lw	$2,8($sp)
	subu	$2,$0,$2
	b	.L695
	nop

.L694:
	lw	$2,8($sp)
.L695:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L698
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L698:
	ld	$2,24($sp)
	bgez	$2,.L699
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L699:
	lw	$2,20($sp)
	lw	$3,28($sp)
	move	$6,$0
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalrs	$25
	nop

	dext	$2,$2,0,32
	sd	$2,8($sp)
	lw	$2,0($sp)
	beqzc	$2,.L700
	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L700:
	ld	$2,8($sp)
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	nomips16
	.set	micromips
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
	bgez	$2,.L703
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L703:
	ld	$2,24($sp)
	bgez	$2,.L704
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
.L704:
	lw	$2,20($sp)
	lw	$3,28($sp)
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalrs	$25
	nop

	dext	$2,$2,0,32
	sd	$2,8($sp)
	lw	$2,0($sp)
	beqzc	$2,.L705
	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L705:
	ld	$2,8($sp)
	ld	$31,40($sp)
	ld	$28,32($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	nomips16
	.set	micromips
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
	b	.L708
	nop

.L710:
	lhu	$2,18($sp)
	sll	$2,$2,1
	sh	$2,18($sp)
	lhu	$2,0($sp)
	sll	$2,$2,1
	sh	$2,0($sp)
.L708:
	lhu	$3,18($sp)
	lhu	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L711
	lhu	$2,0($sp)
	beqzc	$2,.L711
	lh	$2,18($sp)
	bgez	$2,.L710
	nop

	b	.L711
	nop

.L713:
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L712
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	subu	$2,$3,$2
	sh	$2,16($sp)
	lhu	$3,2($sp)
	lhu	$2,0($sp)
	or	$2,$2,$3
	sh	$2,2($sp)
.L712:
	lhu	$2,0($sp)
	srl	$2,$2,1
	sh	$2,0($sp)
	lhu	$2,18($sp)
	srl	$2,$2,1
	sh	$2,18($sp)
.L711:
	lhu	$2,0($sp)
	bnezc	$2,.L713
	lw	$2,20($sp)
	beqzc	$2,.L714
	lhu	$2,16($sp)
	b	.L715
	nop

.L714:
	lhu	$2,2($sp)
.L715:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	micromips
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
	b	.L717
	nop

.L719:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	dsll	$2,$2,1
	sd	$2,0($sp)
.L717:
	ld	$3,24($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L720
	ld	$2,0($sp)
	beqzc	$2,.L720
	ld	$3,24($sp)
	li	$2,1			# 0x1
	dsll	$2,$2,31
	and	$2,$3,$2
	beqzc	$2,.L719
	b	.L720
	nop

.L722:
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L721
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	or	$2,$2,$3
	sd	$2,8($sp)
.L721:
	ld	$2,0($sp)
	dsrl	$2,$2,1
	sd	$2,0($sp)
	ld	$2,24($sp)
	dsrl	$2,$2,1
	sd	$2,24($sp)
.L720:
	ld	$2,0($sp)
	bnezc	$2,.L722
	lw	$2,32($sp)
	beqzc	$2,.L723
	ld	$2,16($sp)
	b	.L724
	nop

.L723:
	ld	$2,8($sp)
.L724:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L726
	sw	$0,20($sp)
	lw	$2,12($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	sw	$2,16($sp)
	b	.L727
	nop

.L726:
	lw	$2,40($sp)
	bnezc	$2,.L728
	ld	$2,32($sp)
	b	.L730
	nop

.L728:
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
	or	$2,$2,$3
	sw	$2,16($sp)
.L727:
	ld	$2,16($sp)
.L730:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L732
	sd	$0,40($sp)
	ld	$2,24($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$2,$2,$3
	sd	$2,32($sp)
	b	.L733
	nop

.L732:
	lw	$2,64($sp)
	bnezc	$2,.L734
	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L736
	nop

.L734:
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
	or	$2,$2,$3
	sd	$2,32($sp)
.L733:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L736:
	daddiu	$sp,$sp,80
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L738
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
	b	.L739
	nop

.L738:
	lw	$2,40($sp)
	bnezc	$2,.L740
	ld	$2,32($sp)
	b	.L742
	nop

.L740:
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
	or	$2,$2,$3
	sw	$2,20($sp)
.L739:
	ld	$2,16($sp)
.L742:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L744
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
	b	.L745
	nop

.L744:
	lw	$2,64($sp)
	bnezc	$2,.L746
	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L748
	nop

.L746:
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
	or	$2,$2,$3
	sd	$2,40($sp)
.L745:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L748:
	daddiu	$sp,$sp,80
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	micromips
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
	dsrl	$4,$2,24
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
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
	or	$2,$2,$3
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	nomips16
	.set	micromips
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
	or	$2,$2,$3
	move	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,8
	move	$4,$2
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
	or	$2,$2,$3
	move	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,24
	or	$2,$2,$3
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	nomips16
	.set	micromips
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
	lw	$3,0($sp)
	li	$2,65536			# 0x10000
	sltu	$2,$3,$2
	beqzc	$2,.L754
	li	$2,16			# 0x10
	b	.L755
	nop

.L754:
	move	$2,$0
.L755:
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
	bnezc	$2,.L756
	li	$2,8			# 0x8
	b	.L757
	nop

.L756:
	move	$2,$0
.L757:
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
	bnezc	$2,.L758
	li	$2,4			# 0x4
	b	.L759
	nop

.L758:
	move	$2,$0
.L759:
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
	bnezc	$2,.L760
	li	$2,2			# 0x2
	b	.L761
	nop

.L760:
	move	$2,$0
.L761:
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	nomips16
	.set	micromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
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
	or	$2,$2,$4
	dclz	$2,$2
	sll	$2,$2,0
	move	$3,$2
	lw	$2,4($sp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L766
	move	$2,$0
	b	.L771
	nop

.L766:
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$2,$3
	beqzc	$2,.L768
	li	$2,2			# 0x2
	b	.L771
	nop

.L768:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L769
	move	$2,$0
	b	.L771
	nop

.L769:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L770
	li	$2,2			# 0x2
	b	.L771
	nop

.L770:
	li	$2,1			# 0x1
.L771:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__cmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	ld	$31,24($sp)
	ld	$28,16($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L775
	move	$2,$0
	b	.L780
	nop

.L775:
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$2,$3
	beqzc	$2,.L777
	li	$2,2			# 0x2
	b	.L780
	nop

.L777:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L778
	move	$2,$0
	b	.L780
	nop

.L778:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L779
	li	$2,2			# 0x2
	b	.L780
	nop

.L779:
	li	$2,1			# 0x1
.L780:
	daddiu	$sp,$sp,64
	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L782
	li	$2,16			# 0x10
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
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xff
	bnezc	$2,.L784
	li	$2,8			# 0x8
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
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	bnezc	$2,.L786
	li	$2,4			# 0x4
	b	.L787
	nop

.L786:
	move	$2,$0
.L787:
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
	bnezc	$2,.L788
	li	$2,2			# 0x2
	b	.L789
	nop

.L788:
	move	$2,$0
.L789:
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	nomips16
	.set	micromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
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
	or	$2,$2,$4
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	move	$3,$2
	lw	$2,4($sp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	nomips16
	.set	micromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$5,24($sp)
	sd	$4,16($sp)
	ld	$3,24($sp)
	ld	$2,16($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$2,8($sp)
	bnezc	$2,.L794
	ld	$2,0($sp)
	bnezc	$2,.L795
	move	$2,$0
	b	.L797
	nop

.L795:
	ld	$2,0($sp)
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	addiu	$2,$2,65
	b	.L797
	nop

.L794:
	ld	$2,8($sp)
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	addiu	$2,$2,1
.L797:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L799
	sw	$0,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	srl	$2,$2,$3
	sw	$2,20($sp)
	b	.L800
	nop

.L799:
	lw	$2,40($sp)
	bnezc	$2,.L801
	ld	$2,32($sp)
	b	.L803
	nop

.L801:
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
	or	$2,$2,$3
	sw	$2,20($sp)
.L800:
	ld	$2,16($sp)
.L803:
	daddiu	$sp,$sp,48
	jrc	$31
	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L805
	sd	$0,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsrl	$2,$2,$3
	sd	$2,40($sp)
	b	.L806
	nop

.L805:
	lw	$2,64($sp)
	bnezc	$2,.L807
	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L809
	nop

.L807:
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
	or	$2,$2,$3
	sd	$2,40($sp)
.L806:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L809:
	daddiu	$sp,$sp,80
	jrc	$31
	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__muldsi3
1:	jalrs	$25
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
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__mulddi3
1:	jalrs	$25
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
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	nomips16
	.set	micromips
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
	dext	$8,$8,0,32
	dsubu	$2,$4,$6
	dsubu	$4,$2,$8
	move	$2,$4
	daddiu	$sp,$sp,16
	jrc	$31
	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	micromips
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
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	nomips16
	.set	micromips
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
	xor	$2,$2,$3
	sd	$2,32($sp)
	lw	$2,32($sp)
	move	$3,$2
	lw	$2,36($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,64
	jrc	$31
	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	micromips
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
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	nomips16
	.set	micromips
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	nomips16
	.set	micromips
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
	dext	$16,$16,0,32
	dsubu	$4,$8,$14
	dsubu	$8,$4,$16
	move	$4,$8
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$4,0($sp)
	dsll	$4,$4,62
	ld	$5,8($sp)
	dsrl	$7,$5,2
	or	$7,$7,$4
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
	dext	$6,$6,0,32
	daddu	$4,$10,$12
	daddu	$6,$6,$4
	move	$4,$6
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$4,0($sp)
	dsll	$4,$4,60
	ld	$5,8($sp)
	dsrl	$3,$5,4
	or	$3,$3,$4
	ld	$4,0($sp)
	dsrl	$2,$4,4
	ld	$7,8($sp)
	ld	$6,0($sp)
	daddu	$5,$3,$7
	sltu	$8,$5,$3
	dext	$8,$8,0,32
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
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	micromips
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
.L838:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L835
	ldc1	$f1,0($sp)
	ldc1	$f0,16($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($sp)
.L835:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beqzc	$2,.L843
	ldc1	$f0,16($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
	b	.L838
	nop

.L843:
	nop
	lw	$2,8($sp)
	beqzc	$2,.L839
	ldc1	$f0,0($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
	b	.L841
	nop

.L839:
	ldc1	$f0,0($sp)
.L841:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.set	nomips16
	.set	micromips
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
.L848:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L845
	lwc1	$f1,0($sp)
	lwc1	$f0,16($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,0($sp)
.L845:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beqzc	$2,.L853
	lwc1	$f0,16($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	b	.L848
	nop

.L853:
	nop
	lw	$2,4($sp)
	beqzc	$2,.L849
	lwc1	$f0,0($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
	b	.L851
	nop

.L849:
	lwc1	$f0,0($sp)
.L851:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L855
	move	$2,$0
	b	.L860
	nop

.L855:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L857
	li	$2,2			# 0x2
	b	.L860
	nop

.L857:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L858
	move	$2,$0
	b	.L860
	nop

.L858:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L859
	li	$2,2			# 0x2
	b	.L860
	nop

.L859:
	li	$2,1			# 0x1
.L860:
	daddiu	$sp,$sp,32
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	micromips
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
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__ucmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	ld	$31,24($sp)
	ld	$28,16($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	nomips16
	.set	micromips
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
	beqzc	$2,.L864
	move	$2,$0
	b	.L869
	nop

.L864:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L866
	li	$2,2			# 0x2
	b	.L869
	nop

.L866:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L867
	move	$2,$0
	b	.L869
	nop

.L867:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L868
	li	$2,2			# 0x2
	b	.L869
	nop

.L868:
	li	$2,1			# 0x1
.L869:
	daddiu	$sp,$sp,64
	jrc	$31
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
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
