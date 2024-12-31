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
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	beqzc	$2,.L8
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	b	.L9
	nop

.L10:
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
.L9:
	ld	$2,32($sp)
	bnezc	$2,.L10
	b	.L11
	nop

.L8:
	ld	$3,8($sp)
	ld	$2,0($sp)
	beq	$3,$2,.L11
	nop

	b	.L12
	nop

.L13:
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
.L12:
	ld	$2,32($sp)
	bnezc	$2,.L13
.L11:
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
	sll	$2,$6,0
	sw	$2,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$2,32($sp)
	andi	$2,$2,0x00ff
	sw	$2,32($sp)
	b	.L17
	nop

.L19:
	ld	$2,40($sp)
	daddiu	$2,$2,-1
	sd	$2,40($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L17:
	ld	$2,40($sp)
	beqzc	$2,.L18
	ld	$2,8($sp)
	lbu	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($sp)
	bne	$2,$3,.L19
	nop

.L18:
	ld	$2,40($sp)
	beqzc	$2,.L20
	ld	$2,0($sp)
	daddiu	$2,$2,1
	b	.L21
	nop

.L20:
	move	$2,$0
.L21:
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
	sll	$2,$5,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	b	.L24
	nop

.L26:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L24:
	ld	$2,32($sp)
	beqzc	$2,.L25
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L26
	nop

.L25:
	ld	$2,32($sp)
	beqzc	$2,.L27
	ld	$2,0($sp)
	b	.L29
	nop

.L27:
	move	$2,$0
.L29:
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
	b	.L32
	nop

.L34:
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L32:
	ld	$2,32($sp)
	beqzc	$2,.L33
	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L34
	nop

.L33:
	ld	$2,32($sp)
	beqzc	$2,.L35
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	.L36
	nop

.L35:
	move	$2,$0
.L36:
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
	b	.L40
	nop

.L41:
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
.L40:
	ld	$2,32($sp)
	bnezc	$2,.L41
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
	sll	$2,$5,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	b	.L45
	nop

.L47:
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L45
	nop

	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	b	.L46
	nop

.L45:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L47
	move	$2,$0
.L46:
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
	sll	$2,$5,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L50
	nop

.L51:
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
.L50:
	ld	$2,32($sp)
	bnezc	$2,.L51
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
	b	.L55
	nop

.L56:
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L55:
	ld	$2,8($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bnezc	$2,.L56
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
	sll	$2,$5,0
	sw	$2,8($sp)
	lw	$2,8($sp)
	andi	$2,$2,0x00ff
	sw	$2,8($sp)
	b	.L60
	nop

.L62:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L60:
	ld	$2,0($sp)
	lb	$2,0($2)
	beqzc	$2,.L61
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	bne	$2,$3,.L62
	nop

.L61:
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
.L68:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,0($sp)
	bne	$3,$4,.L66
	nop

	b	.L67
	nop

.L66:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bnezc	$3,.L68
	move	$2,$0
.L67:
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
	b	.L71
	nop

.L73:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L71:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,8($sp)
	lb	$3,0($3)
	bne	$2,$3,.L72
	nop

	ld	$2,0($sp)
	lb	$2,0($2)
	bnezc	$2,.L73
.L72:
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
	b	.L77
	nop

.L78:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L77:
	ld	$2,16($sp)
	lb	$2,0($2)
	bnezc	$2,.L78
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
	bnezc	$2,.L84
	move	$2,$0
	b	.L83
	nop

.L86:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L84:
	ld	$2,0($sp)
	lbu	$2,0($2)
	beqzc	$2,.L85
	ld	$2,8($sp)
	lbu	$2,0($2)
	beqzc	$2,.L85
	ld	$2,32($sp)
	beqzc	$2,.L85
	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L86
	nop

.L85:
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
.L83:
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
	b	.L89
	nop

.L90:
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
.L89:
	ld	$2,32($sp)
	slt	$2,$2,2
	beqzc	$2,.L90
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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$3,0($sp)
	li	$2,32			# 0x20
	beq	$3,$2,.L99
	nop

	lw	$3,0($sp)
	li	$2,9			# 0x9
	bne	$3,$2,.L100
	nop

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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,32
	bnezc	$2,.L105
	lw	$3,0($sp)
	li	$2,127			# 0x7f
	bne	$3,$2,.L106
	nop

.L105:
	li	$2,1			# 0x1
	b	.L107
	nop

.L106:
	move	$2,$0
.L107:
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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$3,0($sp)
	li	$2,32			# 0x20
	beq	$3,$2,.L123
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beqzc	$2,.L124
.L123:
	li	$2,1			# 0x1
	b	.L125
	nop

.L124:
	move	$2,$0
.L125:
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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,32
	bnezc	$2,.L132
	lw	$2,0($sp)
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bnezc	$2,.L132
	lw	$2,0($sp)
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bnezc	$2,.L132
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beqzc	$2,.L133
.L132:
	li	$2,1			# 0x1
	b	.L134
	nop

.L133:
	move	$2,$0
.L134:
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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,255
	beqzc	$2,.L141
	lw	$2,0($sp)
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	b	.L142
	nop

.L141:
	lw	$2,0($sp)
	sltu	$2,$2,8232
	bnezc	$2,.L143
	lw	$2,0($sp)
	addiu	$2,$2,-8234
	move	$3,$2
	li	$2,47062			# 0xb7d6
	sltu	$2,$3,$2
	bnezc	$2,.L143
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beqzc	$2,.L144
.L143:
	li	$2,1			# 0x1
	b	.L142
	nop

.L144:
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$2,$3,$2
	move	$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beqzc	$2,.L145
	lw	$2,0($sp)
	andi	$2,$2,0xfffe
	move	$3,$2
	li	$2,65534			# 0xfffe
	bne	$3,$2,.L146
	nop

.L145:
	move	$2,$0
	b	.L142
	nop

.L146:
	li	$2,1			# 0x1
.L142:
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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L149
	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beqzc	$2,.L150
.L149:
	li	$2,1			# 0x1
	b	.L151
	nop

.L150:
	move	$2,$0
.L151:
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
	bc1f	$fcc0,.L158
	nop

	ldc1	$f0,0($sp)
	b	.L159
	nop

.L158:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L160
	nop

	ldc1	$f0,8($sp)
	b	.L159
	nop

.L160:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L165
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	sub.d	$f0,$f1,$f0
	b	.L159
	nop

.L165:
	dmtc1	$0,$f0
.L159:
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
	bc1f	$fcc0,.L168
	nop

	lwc1	$f0,0($sp)
	b	.L169
	nop

.L168:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L170
	nop

	lwc1	$f0,4($sp)
	b	.L169
	nop

.L170:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L175
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	sub.s	$f0,$f1,$f0
	b	.L169
	nop

.L175:
	mtc1	$0,$f0
.L169:
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
	bc1f	$fcc0,.L178
	nop

	ldc1	$f0,8($sp)
	b	.L179
	nop

.L178:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L180
	nop

	ldc1	$f0,0($sp)
	b	.L179
	nop

.L180:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L181
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L182
	ldc1	$f0,8($sp)
	b	.L179
	nop

.L182:
	ldc1	$f0,0($sp)
	b	.L179
	nop

.L181:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L188
	nop

	ldc1	$f0,8($sp)
	b	.L179
	nop

.L188:
	ldc1	$f0,0($sp)
.L179:
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
	bc1f	$fcc0,.L191
	nop

	lwc1	$f0,4($sp)
	b	.L192
	nop

.L191:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L193
	nop

	lwc1	$f0,0($sp)
	b	.L192
	nop

.L193:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	lw	$4,4($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$3,$4,$3
	beq	$2,$3,.L194
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beqzc	$2,.L195
	lwc1	$f0,4($sp)
	b	.L192
	nop

.L195:
	lwc1	$f0,0($sp)
	b	.L192
	nop

.L194:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$fcc2,$f1,$f0
	bc1f	$fcc2,.L201
	nop

	lwc1	$f0,4($sp)
	b	.L192
	nop

.L201:
	lwc1	$f0,0($sp)
.L192:
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

	beqzc	$2,.L218
	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L206
	nop

.L218:
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L219
	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L206
	nop

.L219:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L209
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L210
	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L206
	nop

.L210:
	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L206
	nop

.L209:
	ld	$2,%call16(__lttf2)($28)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bgez	$2,.L220
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L206
	nop

.L220:
	ld	$3,0($sp)
	ld	$2,8($sp)
.L206:
	dmtc1	$3,$f0
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
	bc1f	$fcc0,.L223
	nop

	ldc1	$f0,8($sp)
	b	.L224
	nop

.L223:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L225
	nop

	ldc1	$f0,0($sp)
	b	.L224
	nop

.L225:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L226
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L227
	ldc1	$f0,0($sp)
	b	.L224
	nop

.L227:
	ldc1	$f0,8($sp)
	b	.L224
	nop

.L226:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L233
	nop

	ldc1	$f0,0($sp)
	b	.L224
	nop

.L233:
	ldc1	$f0,8($sp)
.L224:
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
	bc1f	$fcc0,.L236
	nop

	lwc1	$f0,4($sp)
	b	.L237
	nop

.L236:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L238
	nop

	lwc1	$f0,0($sp)
	b	.L237
	nop

.L238:
	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	lw	$4,4($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$3,$4,$3
	beq	$2,$3,.L239
	nop

	lw	$3,0($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beqzc	$2,.L240
	lwc1	$f0,0($sp)
	b	.L237
	nop

.L240:
	lwc1	$f0,4($sp)
	b	.L237
	nop

.L239:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$fcc2,$f1,$f0
	bc1f	$fcc2,.L246
	nop

	lwc1	$f0,0($sp)
	b	.L237
	nop

.L246:
	lwc1	$f0,4($sp)
.L237:
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

	beqzc	$2,.L263
	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L251
	nop

.L263:
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L264
	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L251
	nop

.L264:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L254
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L255
	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L251
	nop

.L255:
	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L251
	nop

.L254:
	ld	$2,%call16(__lttf2)($28)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bgez	$2,.L265
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L251
	nop

.L265:
	ld	$3,16($sp)
	ld	$2,24($sp)
.L251:
	dmtc1	$3,$f0
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
	b	.L268
	nop

.L269:
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
.L268:
	lw	$2,8($sp)
	bnezc	$2,.L269
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
	bnezc	$2,.L278
	ld	$2,0($sp)
	sd	$0,8($2)
	ld	$2,0($sp)
	ld	$3,8($2)
	ld	$2,0($sp)
	sd	$3,0($2)
	b	.L277
	nop

.L278:
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
	beqzc	$2,.L277
	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	sd	$3,8($2)
.L277:
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
	beqzc	$2,.L282
	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	ld	$3,8($3)
	sd	$3,8($2)
.L282:
	ld	$2,0($sp)
	ld	$2,8($2)
	beqzc	$2,.L284
	ld	$2,0($sp)
	ld	$2,8($2)
	ld	$3,0($sp)
	ld	$3,0($3)
	sd	$3,0($2)
.L284:
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
	move	$2,$16
	daddiu	$2,$16,-1
	sd	$2,8($sp)
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,24($sp)
	sd	$0,0($sp)
	b	.L287
	nop

.L290:
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

	bnezc	$2,.L288
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L289
	nop

.L288:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L287:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L290
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

.L289:
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
	move	$2,$16
	daddiu	$2,$16,-1
	sd	$2,8($sp)
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,24($sp)
	sd	$0,0($sp)
	b	.L293
	nop

.L296:
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

	bnezc	$2,.L294
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L295
	nop

.L294:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L293:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L296
	move	$2,$0
.L295:
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
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	bgez	$2,.L299
	nop

	subu	$2,$0,$2
.L299:
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
	b	.L303
	nop

.L304:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L303:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L304
	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L305
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L307
	nop

	li	$2,1			# 0x1
	sw	$2,4($sp)
.L305:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L307
	nop

.L308:
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
.L307:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L308
	lw	$2,4($sp)
	bnezc	$2,.L309
	lw	$2,0($sp)
	subu	$2,$0,$2
	b	.L310
	nop

.L309:
	lw	$2,0($sp)
.L310:
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
	b	.L314
	nop

.L315:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L314:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L315
	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L316
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L318
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L316:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L318
	nop

.L319:
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
.L318:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L319
	lw	$2,8($sp)
	bnezc	$2,.L320
	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L322
	nop

.L320:
	ld	$2,0($sp)
.L322:
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
	b	.L325
	nop

.L326:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L325:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L326
	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L327
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L329
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L327:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L329
	nop

.L330:
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
.L329:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L330
	lw	$2,8($sp)
	bnezc	$2,.L331
	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L333
	nop

.L331:
	ld	$2,0($sp)
.L333:
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
	b	.L336
	nop

.L341:
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
	bgez	$2,.L337
	nop

	ld	$2,32($sp)
	dsrl	$2,$2,1
	sd	$2,32($sp)
	b	.L336
	nop

.L337:
	lw	$2,8($sp)
	blez	$2,.L339
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
	b	.L336
	nop

.L339:
	ld	$2,0($sp)
	b	.L340
	nop

.L336:
	ld	$2,32($sp)
	bnezc	$2,.L341
	move	$2,$0
.L340:
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
	b	.L344
	nop

.L348:
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
	bnezc	$2,.L345
	ld	$2,16($sp)
	b	.L346
	nop

.L345:
	lw	$2,24($sp)
	blez	$2,.L347
	nop

	ld	$3,16($sp)
	ld	$2,56($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,$2,-1
	sw	$2,8($sp)
.L347:
	lw	$2,8($sp)
	sra	$2,$2,1
	sw	$2,8($sp)
.L344:
	lw	$2,8($sp)
	bnezc	$2,.L348
	move	$2,$0
.L346:
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
	bgez	$2,.L354
	nop

	dsubu	$2,$0,$2
.L354:
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
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	bgez	$2,.L361
	nop

	dsubu	$2,$0,$2
.L361:
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
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	bgez	$2,.L368
	nop

	dsubu	$2,$0,$2
.L368:
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
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	sll	$2,$5,0
	sw	$2,8($sp)
	b	.L375
	nop

.L377:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L375:
	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L376
	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L377
	nop

.L376:
	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L378
	ld	$2,0($sp)
	b	.L380
	nop

.L378:
	move	$2,$0
.L380:
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
	b	.L383
	nop

.L385:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L383:
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L384
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L384
	ld	$2,8($sp)
	lw	$2,0($2)
	bnezc	$2,.L385
.L384:
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L386
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L387
	nop

.L386:
	li	$2,-1			# 0xffffffffffffffff
.L387:
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
.L391:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bnezc	$2,.L391
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
	b	.L395
	nop

.L396:
	ld	$2,16($sp)
	daddiu	$2,$2,4
	sd	$2,16($sp)
.L395:
	ld	$2,16($sp)
	lw	$2,0($2)
	bnezc	$2,.L396
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
	b	.L400
	nop

.L402:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L400:
	ld	$2,16($sp)
	beqzc	$2,.L401
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L401
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beqzc	$2,.L401
	ld	$2,8($sp)
	lw	$2,0($2)
	bnezc	$2,.L402
.L401:
	ld	$2,16($sp)
	beqzc	$2,.L403
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L404
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L406
	nop

.L404:
	li	$2,-1			# 0xffffffffffffffff
	b	.L406
	nop

.L403:
	move	$2,$0
.L406:
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
	sll	$2,$5,0
	sw	$2,8($sp)
	b	.L410
	nop

.L412:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L410:
	ld	$2,16($sp)
	beqzc	$2,.L411
	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L412
	nop

.L411:
	ld	$2,16($sp)
	beqzc	$2,.L413
	ld	$2,0($sp)
	b	.L415
	nop

.L413:
	move	$2,$0
.L415:
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
	b	.L418
	nop

.L420:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L418:
	ld	$2,16($sp)
	beqzc	$2,.L419
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	beq	$2,$3,.L420
	nop

.L419:
	ld	$2,16($sp)
	beqzc	$2,.L421
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L422
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L424
	nop

.L422:
	li	$2,-1			# 0xffffffffffffffff
	b	.L424
	nop

.L421:
	move	$2,$0
.L424:
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
	b	.L428
	nop

.L429:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L428:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L429
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
	bne	$3,$2,.L433
	nop

	ld	$2,16($sp)
	b	.L434
	nop

.L433:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	sltu	$2,$3,$2
	beqzc	$2,.L439
	b	.L436
	nop

.L437:
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
.L436:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L437
	b	.L438
	nop

.L440:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L439:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L440
.L438:
	ld	$2,0($sp)
.L434:
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
	sll	$2,$5,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L443
	nop

.L444:
	ld	$2,16($sp)
	daddiu	$3,$2,4
	sd	$3,16($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
.L443:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bnezc	$2,.L444
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
	beqzc	$2,.L448
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	b	.L449
	nop

.L450:
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
.L449:
	ld	$2,32($sp)
	bnezc	$2,.L450
	b	.L454
	nop

.L448:
	ld	$3,0($sp)
	ld	$2,8($sp)
	beq	$3,$2,.L454
	nop

	b	.L452
	nop

.L453:
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
.L452:
	ld	$2,32($sp)
	bnezc	$2,.L453
.L454:
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
	sll	$2,$4,0
	sw	$2,16($sp)
	sw	$0,0($sp)
	b	.L496
	nop

.L499:
	lw	$3,16($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L497
	lw	$2,0($sp)
	addiu	$2,$2,1
	b	.L498
	nop

.L497:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L496:
	lw	$2,0($sp)
	sltu	$2,$2,32
	bnezc	$2,.L499
	move	$2,$0
.L498:
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
	bnezc	$4,.L502
	move	$2,$0
	b	.L503
	nop

.L502:
	move	$2,$4
	li	$16,1			# 0x1
	b	.L504
	nop

.L505:
	sra	$2,$2,1
	addiu	$3,$16,1
	move	$16,$3
.L504:
	andi	$3,$2,0x1
	beqzc	$3,.L505
	move	$2,$16
.L503:
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
	bc1t	$fcc0,.L508
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L513
	nop

.L508:
	li	$2,1			# 0x1
	b	.L511
	nop

.L513:
	move	$2,$0
.L511:
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
	bc1t	$fcc0,.L516
	nop

	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L521
	nop

.L516:
	li	$2,1			# 0x1
	b	.L519
	nop

.L521:
	move	$2,$0
.L519:
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

	bltz	$2,.L524
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

	blez	$2,.L529
	nop

.L524:
	li	$2,1			# 0x1
	b	.L527
	nop

.L529:
	move	$2,$0
.L527:
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
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
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

	dmfc1	$5,$f0
	dmfc1	$3,$f2
	move	$4,$3
	move	$2,$5
	move	$3,$2
	move	$2,$4
	move	$4,$3
	move	$3,$2
	ld	$2,0($sp)
	move	$16,$4
	move	$17,$3
	sd	$17,8($2)
	sd	$16,0($2)
	nop
	nop
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jraddiusp	48
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
	sll	$2,$5,0
	sw	$2,20($sp)
	lwc1	$f1,16($sp)
	lwc1	$f0,16($sp)
	c.un.s	$fcc0,$f1,$f0
	bc1t	$fcc0,.L534
	nop

	lwc1	$f0,16($sp)
	add.s	$f0,$f0,$f0
	lwc1	$f1,16($sp)
	c.eq.s	$fcc1,$f1,$f0
	bc1t	$fcc1,.L534
	nop

	lw	$2,20($sp)
	bgez	$2,.L535
	nop

	ld	$2,%got_page(.LC6)($4)
	lwc1	$f0,%got_ofst(.LC6)($2)
	b	.L536
	nop

.L535:
	ld	$2,%got_page(.LC7)($4)
	lwc1	$f0,%got_ofst(.LC7)($2)
.L536:
	swc1	$f0,0($sp)
.L539:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L537
	lwc1	$f1,16($sp)
	lwc1	$f0,0($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,16($sp)
.L537:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beqzc	$2,.L541
	lwc1	$f0,0($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,0($sp)
	b	.L539
	nop

.L541:
	nop
.L534:
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
	sll	$2,$5,0
	sw	$2,24($sp)
	ldc1	$f1,16($sp)
	ldc1	$f0,16($sp)
	c.un.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L544
	nop

	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	ldc1	$f1,16($sp)
	c.eq.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L544
	nop

	lw	$2,24($sp)
	bgez	$2,.L545
	nop

	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	b	.L546
	nop

.L545:
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
.L546:
	sdc1	$f0,0($sp)
.L549:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L547
	ldc1	$f1,16($sp)
	ldc1	$f0,0($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L547:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beqzc	$2,.L551
	ldc1	$f0,0($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,0($sp)
	b	.L549
	nop

.L551:
	nop
.L544:
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
	.frame	$sp,112,$31		# vars= 48, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$21,88($sp)
	sd	$20,80($sp)
	sd	$19,72($sp)
	sd	$18,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sdc1	$f13,24($sp)
	sdc1	$f12,16($sp)
	move	$2,$6
	sll	$2,$6,0
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

	bnezc	$2,.L554
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

	dmfc1	$5,$f0
	dmfc1	$3,$f2
	move	$4,$3
	move	$2,$5
	move	$3,$2
	move	$2,$4
	move	$4,$3
	move	$3,$2
	ld	$2,%call16(__netf2)($28)
	move	$20,$4
	move	$21,$3
	dmtc1	$21,$f15
	dmtc1	$20,$f14
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalrs	$25
	nop

	beqzc	$2,.L554
	lw	$2,32($sp)
	bgez	$2,.L556
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$3,%got_ofst(.LC10+8)($2)
	ld	$2,%got_ofst(.LC10)($2)
	b	.L557
	nop

.L556:
	ld	$2,%got_page(.LC11)($28)
	ld	$3,%got_ofst(.LC11+8)($2)
	ld	$2,%got_ofst(.LC11)($2)
.L557:
	sd	$3,8($sp)
	sd	$2,0($sp)
.L560:
	lw	$2,32($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L558
	ld	$2,%call16(__multf3)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$5,$f0
	dmfc1	$3,$f2
	move	$4,$3
	move	$2,$5
	move	$3,$2
	move	$2,$4
	move	$18,$3
	move	$19,$2
	sd	$19,24($sp)
	sd	$18,16($sp)
.L558:
	lw	$2,32($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	beqzc	$2,.L563
	ld	$2,%call16(__multf3)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$5,$f0
	dmfc1	$3,$f2
	move	$4,$3
	move	$2,$5
	move	$3,$2
	move	$2,$4
	move	$16,$3
	move	$17,$2
	sd	$17,8($sp)
	sd	$16,0($sp)
	b	.L560
	nop

.L563:
	nop
.L554:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dmtc1	$3,$f0
	dmtc1	$2,$f2
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$21,88($sp)
	ld	$20,80($sp)
	ld	$19,72($sp)
	ld	$18,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	jraddiusp	112
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
	b	.L566
	nop

.L567:
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
.L566:
	ld	$2,32($sp)
	bnezc	$2,.L567
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
	b	.L571
	nop

.L573:
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L571:
	ld	$2,32($sp)
	beqzc	$2,.L572
	ld	$2,24($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bnezc	$2,.L573
.L572:
	ld	$2,32($sp)
	bnezc	$2,.L574
	ld	$2,0($sp)
	sb	$0,0($2)
.L574:
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
	b	.L578
	nop

.L583:
	nop
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L578:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L579
	ld	$3,16($sp)
	ld	$2,0($sp)
	daddu	$2,$3,$2
	lb	$2,0($2)
	bnezc	$2,.L583
.L579:
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
	b	.L586
	nop

.L590:
	ld	$2,24($sp)
	sd	$2,0($sp)
	b	.L587
	nop

.L589:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$2,0($2)
	ld	$3,16($sp)
	lb	$3,0($3)
	bne	$2,$3,.L587
	nop

	ld	$2,16($sp)
	b	.L588
	nop

.L587:
	ld	$2,0($sp)
	lb	$2,0($2)
	bnezc	$2,.L589
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L586:
	ld	$2,16($sp)
	lb	$2,0($2)
	bnezc	$2,.L590
	move	$2,$0
.L588:
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
.L594:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($sp)
	bne	$3,$4,.L593
	nop

	sd	$2,0($sp)
.L593:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bnezc	$3,.L594
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
	bnezc	$2,.L600
	ld	$2,16($sp)
	b	.L599
	nop

.L602:
	ld	$6,8($sp)
	ld	$5,24($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(strncmp)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalrs	$25
	nop

	bnezc	$2,.L601
	ld	$2,0($sp)
	b	.L599
	nop

.L601:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L600:
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
	bnezc	$2,.L602
	move	$2,$0
.L599:
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
	bc1f	$fcc0,.L605
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	c.lt.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L607
	nop

.L605:
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L608
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	c.lt.d	$fcc3,$f0,$f1
	bc1f	$fcc3,.L608
	nop

.L607:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	b	.L611
	nop

.L608:
	ld	$2,0($sp)
.L611:
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
	bnezc	$2,.L616
	ld	$2,16($sp)
	b	.L617
	nop

.L616:
	ld	$3,24($sp)
	ld	$2,40($sp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beqzc	$2,.L618
	move	$2,$0
	b	.L617
	nop

.L618:
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L619
	nop

.L621:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,32($sp)
	lb	$3,0($3)
	bne	$2,$3,.L620
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

	bnezc	$2,.L620
	ld	$2,0($sp)
	b	.L617
	nop

.L620:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L619:
	ld	$3,0($sp)
	ld	$2,8($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L621
	move	$2,$0
.L617:
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
	bc1f	$fcc0,.L627
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L627:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L642
	nop

	b	.L631
	nop

.L632:
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
	div.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L631:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L632
	nop

	b	.L633
	nop

.L642:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L633
	nop

	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	c.eq.d	$fcc4,$f0,$f1
	bc1t	$fcc4,.L633
	nop

	b	.L635
	nop

.L636:
	lw	$2,4($sp)
	addiu	$2,$2,-1
	sw	$2,4($sp)
	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
.L635:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L636
	nop

.L633:
	ld	$2,24($sp)
	lw	$3,4($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	beqzc	$2,.L637
	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	sd	$2,16($sp)
.L637:
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
	b	.L645
	nop

.L647:
	ld	$2,8($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L646
	ld	$3,0($sp)
	ld	$2,24($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
.L646:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$2,1
	sd	$2,8($sp)
.L645:
	ld	$2,8($sp)
	bnezc	$2,.L647
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
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
	sw	$0,4($sp)
	b	.L651
	nop

.L653:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L651:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L654
	lw	$2,0($sp)
	beqzc	$2,.L654
	lw	$2,20($sp)
	bgez	$2,.L653
	nop

	b	.L654
	nop

.L656:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L655
	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$2,$3
	sw	$2,4($sp)
.L655:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L654:
	lw	$2,0($sp)
	bnezc	$2,.L656
	ld	$2,24($sp)
	beqzc	$2,.L657
	lw	$2,16($sp)
	b	.L658
	nop

.L657:
	lw	$2,4($sp)
.L658:
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
	sll	$2,$4,0
	sb	$2,16($sp)
	lb	$2,16($sp)
	bgez	$2,.L661
	nop

	lbu	$2,16($sp)
	nor	$2,$0,$2
	sb	$2,16($sp)
.L661:
	lb	$2,16($sp)
	bnezc	$2,.L662
	li	$2,7			# 0x7
	b	.L663
	nop

.L662:
	lb	$2,16($sp)
	sll	$2,$2,8
	clz	$2,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L663:
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
	bgez	$2,.L666
	nop

	ld	$2,16($sp)
	nor	$2,$0,$2
	sd	$2,16($sp)
.L666:
	ld	$2,16($sp)
	bnezc	$2,.L667
	li	$2,63			# 0x3f
	b	.L668
	nop

.L667:
	ld	$2,16($sp)
	dclz	$2,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L668:
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
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	b	.L671
	nop

.L673:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L672
	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L672:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L671:
	lw	$2,16($sp)
	bnezc	$2,.L673
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
	sll	$2,$6,0
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
	bnezc	$2,.L677
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L684
.L677:
	sw	$0,0($sp)
	b	.L679
	nop

.L680:
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
.L679:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L680
	b	.L681
	nop

.L682:
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
.L681:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bnezc	$2,.L682
	b	.L683
	nop

.L685:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L684:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnezc	$2,.L685
	nop
.L683:
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
	sll	$2,$6,0
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
	bnezc	$2,.L688
	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	ld	$3,8($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L694
.L688:
	sw	$0,0($sp)
	b	.L690
	nop

.L691:
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
.L690:
	lw	$3,0($sp)
	lw	$2,4($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L691
	lw	$2,48($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L693
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
	b	.L693
	nop

.L695:
	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L694:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnezc	$2,.L695
	nop
.L693:
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
	sll	$2,$6,0
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
	bnezc	$2,.L698
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L705
.L698:
	sw	$0,0($sp)
	b	.L700
	nop

.L701:
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
.L700:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L701
	b	.L702
	nop

.L703:
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
.L702:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bnezc	$2,.L703
	b	.L704
	nop

.L706:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L705:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnezc	$2,.L706
	nop
.L704:
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
	bltz	$2,.L719
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	b	.L720
	nop

.L719:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L720:
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
	bltz	$2,.L724
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	b	.L725
	nop

.L724:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L725:
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
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,0($sp)
	b	.L731
	nop

.L734:
	lhu	$2,16($sp)
	li	$4,15			# 0xf
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bnezc	$2,.L736
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L731:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L734
	b	.L733
	nop

.L736:
	nop
.L733:
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
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,0($sp)
	b	.L739
	nop

.L742:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bnezc	$2,.L744
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L739:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L742
	b	.L741
	nop

.L744:
	nop
.L741:
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
	bc1f	$fcc0,.L751
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	sub.s	$f0,$f1,$f0
	trunc.l.s $f0,$f0
	dmfc1	$3,$f0
	li	$2,32768			# 0x8000
	daddu	$2,$3,$2
	b	.L749
	nop

.L751:
	lwc1	$f0,0($sp)
	trunc.l.s $f0,$f0
	dmfc1	$2,$f0
.L749:
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
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	b	.L754
	nop

.L756:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L755
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L755:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L754:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L756
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
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	b	.L760
	nop

.L762:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L761
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L761:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L760:
	lw	$2,0($sp)
	slt	$2,$2,16
	bnezc	$2,.L762
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
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	b	.L766
	nop

.L768:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L767
	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L767:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L766:
	lw	$2,16($sp)
	bnezc	$2,.L768
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
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	lw	$2,16($sp)
	bnezc	$2,.L774
	move	$2,$0
	b	.L773
	nop

.L776:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L775
	lw	$3,0($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L775:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L774:
	lw	$2,20($sp)
	bnezc	$2,.L776
	lw	$2,0($sp)
.L773:
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
	sll	$3,$5,0
	sw	$3,20($sp)
	sll	$2,$6,0
	sw	$2,24($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
	sw	$0,4($sp)
	b	.L779
	nop

.L781:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L779:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L782
	lw	$2,0($sp)
	beqzc	$2,.L782
	lw	$2,20($sp)
	bgez	$2,.L781
	nop

	b	.L782
	nop

.L784:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L783
	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$2,$3
	sw	$2,4($sp)
.L783:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L782:
	lw	$2,0($sp)
	bnezc	$2,.L784
	lw	$2,24($sp)
	beqzc	$2,.L785
	lw	$2,16($sp)
	b	.L786
	nop

.L785:
	lw	$2,4($sp)
.L786:
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
	bc1f	$fcc0,.L796
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L791
	nop

.L796:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L797
	nop

	li	$2,1			# 0x1
	b	.L791
	nop

.L797:
	move	$2,$0
.L791:
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
	bc1f	$fcc0,.L807
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L802
	nop

.L807:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L808
	nop

	li	$2,1			# 0x1
	b	.L802
	nop

.L808:
	move	$2,$0
.L802:
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
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,4($sp)
	sw	$0,8($sp)
	lw	$2,20($sp)
	bgez	$2,.L817
	nop

	lw	$2,20($sp)
	subu	$2,$0,$2
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,4($sp)
.L817:
	sb	$0,0($sp)
	b	.L818
	nop

.L821:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L819
	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
.L819:
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
.L818:
	lw	$2,20($sp)
	beqzc	$2,.L820
	lbu	$2,0($sp)
	sltu	$2,$2,32
	bnezc	$2,.L821
.L820:
	lw	$2,4($sp)
	beqzc	$2,.L822
	lw	$2,8($sp)
	subu	$2,$0,$2
	b	.L823
	nop

.L822:
	lw	$2,8($sp)
.L823:
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
	bgez	$2,.L827
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L827:
	ld	$2,24($sp)
	bgez	$2,.L828
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L828:
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
	beqzc	$2,.L829
	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L829:
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
	bgez	$2,.L833
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L833:
	ld	$2,24($sp)
	bgez	$2,.L834
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
.L834:
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
	beqzc	$2,.L835
	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L835:
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
	sll	$3,$5,0
	sh	$3,18($sp)
	sll	$2,$6,0
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sh	$2,0($sp)
	sh	$0,2($sp)
	b	.L839
	nop

.L841:
	lhu	$2,18($sp)
	sll	$2,$2,1
	sh	$2,18($sp)
	lhu	$2,0($sp)
	sll	$2,$2,1
	sh	$2,0($sp)
.L839:
	lhu	$3,18($sp)
	lhu	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L842
	lhu	$2,0($sp)
	beqzc	$2,.L842
	lh	$2,18($sp)
	bgez	$2,.L841
	nop

	b	.L842
	nop

.L844:
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L843
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	subu	$2,$3,$2
	sh	$2,16($sp)
	lhu	$3,2($sp)
	lhu	$2,0($sp)
	or	$2,$2,$3
	sh	$2,2($sp)
.L843:
	lhu	$2,0($sp)
	srl	$2,$2,1
	sh	$2,0($sp)
	lhu	$2,18($sp)
	srl	$2,$2,1
	sh	$2,18($sp)
.L842:
	lhu	$2,0($sp)
	bnezc	$2,.L844
	lw	$2,20($sp)
	beqzc	$2,.L845
	lhu	$2,16($sp)
	b	.L846
	nop

.L845:
	lhu	$2,2($sp)
.L846:
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
	sll	$2,$6,0
	sw	$2,32($sp)
	li	$2,1			# 0x1
	sd	$2,0($sp)
	sd	$0,8($sp)
	b	.L849
	nop

.L851:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	dsll	$2,$2,1
	sd	$2,0($sp)
.L849:
	ld	$3,24($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L852
	ld	$2,0($sp)
	beqzc	$2,.L852
	ld	$3,24($sp)
	li	$2,1			# 0x1
	dsll	$2,$2,31
	and	$2,$3,$2
	beqzc	$2,.L851
	b	.L852
	nop

.L854:
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bnezc	$2,.L853
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	or	$2,$2,$3
	sd	$2,8($sp)
.L853:
	ld	$2,0($sp)
	dsrl	$2,$2,1
	sd	$2,0($sp)
	ld	$2,24($sp)
	dsrl	$2,$2,1
	sd	$2,24($sp)
.L852:
	ld	$2,0($sp)
	bnezc	$2,.L854
	lw	$2,32($sp)
	beqzc	$2,.L855
	ld	$2,16($sp)
	b	.L856
	nop

.L855:
	ld	$2,8($sp)
.L856:
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
	sll	$2,$5,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beqzc	$2,.L859
	sw	$0,20($sp)
	lw	$2,12($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	sw	$2,16($sp)
	b	.L860
	nop

.L859:
	lw	$2,40($sp)
	bnezc	$2,.L861
	ld	$2,32($sp)
	b	.L863
	nop

.L861:
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
.L860:
	ld	$2,16($sp)
.L863:
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
	sll	$2,$6,0
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
	beqzc	$2,.L866
	sd	$0,40($sp)
	ld	$2,24($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$2,$2,$3
	sd	$2,32($sp)
	b	.L867
	nop

.L866:
	lw	$2,64($sp)
	bnezc	$2,.L868
	ld	$3,48($sp)
	ld	$2,56($sp)
	b	.L870
	nop

.L868:
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
.L867:
	ld	$3,32($sp)
	ld	$2,40($sp)
.L870:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	sll	$2,$5,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beqzc	$2,.L873
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
	b	.L874
	nop

.L873:
	lw	$2,40($sp)
	bnezc	$2,.L875
	ld	$2,32($sp)
	b	.L877
	nop

.L875:
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
.L874:
	ld	$2,16($sp)
.L877:
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
	sll	$2,$6,0
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
	beqzc	$2,.L880
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
	b	.L881
	nop

.L880:
	lw	$2,64($sp)
	bnezc	$2,.L882
	ld	$3,48($sp)
	ld	$2,56($sp)
	b	.L884
	nop

.L882:
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
.L881:
	ld	$3,32($sp)
	ld	$2,40($sp)
.L884:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	sll	$2,$4,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$3,0($sp)
	li	$2,65536			# 0x10000
	sltu	$2,$3,$2
	beqzc	$2,.L893
	li	$2,16			# 0x10
	b	.L894
	nop

.L893:
	move	$2,$0
.L894:
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
	bnezc	$2,.L895
	li	$2,8			# 0x8
	b	.L896
	nop

.L895:
	move	$2,$0
.L896:
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
	bnezc	$2,.L897
	li	$2,4			# 0x4
	b	.L898
	nop

.L897:
	move	$2,$0
.L898:
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
	bnezc	$2,.L899
	li	$2,2			# 0x2
	b	.L900
	nop

.L899:
	move	$2,$0
.L900:
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
	beqzc	$2,.L907
	move	$2,$0
	b	.L912
	nop

.L907:
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$2,$3
	beqzc	$2,.L909
	li	$2,2			# 0x2
	b	.L912
	nop

.L909:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L910
	move	$2,$0
	b	.L912
	nop

.L910:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L911
	li	$2,2			# 0x2
	b	.L912
	nop

.L911:
	li	$2,1			# 0x1
.L912:
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
	beqzc	$2,.L918
	move	$2,$0
	b	.L923
	nop

.L918:
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$2,$3
	beqzc	$2,.L920
	li	$2,2			# 0x2
	b	.L923
	nop

.L920:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L921
	move	$2,$0
	b	.L923
	nop

.L921:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L922
	li	$2,2			# 0x2
	b	.L923
	nop

.L922:
	li	$2,1			# 0x1
.L923:
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
	sll	$2,$4,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xffff
	bnezc	$2,.L926
	li	$2,16			# 0x10
	b	.L927
	nop

.L926:
	move	$2,$0
.L927:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xff
	bnezc	$2,.L928
	li	$2,8			# 0x8
	b	.L929
	nop

.L928:
	move	$2,$0
.L929:
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
	bnezc	$2,.L930
	li	$2,4			# 0x4
	b	.L931
	nop

.L930:
	move	$2,$0
.L931:
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
	bnezc	$2,.L932
	li	$2,2			# 0x2
	b	.L933
	nop

.L932:
	move	$2,$0
.L933:
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
	bnezc	$2,.L940
	ld	$2,0($sp)
	bnezc	$2,.L941
	move	$2,$0
	b	.L943
	nop

.L941:
	ld	$2,0($sp)
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	addiu	$2,$2,65
	b	.L943
	nop

.L940:
	ld	$2,8($sp)
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	addiu	$2,$2,1
.L943:
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
	sll	$2,$5,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beqzc	$2,.L946
	sw	$0,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	srl	$2,$2,$3
	sw	$2,20($sp)
	b	.L947
	nop

.L946:
	lw	$2,40($sp)
	bnezc	$2,.L948
	ld	$2,32($sp)
	b	.L950
	nop

.L948:
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
.L947:
	ld	$2,16($sp)
.L950:
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
	sll	$2,$6,0
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
	beqzc	$2,.L953
	sd	$0,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsrl	$2,$2,$3
	sd	$2,40($sp)
	b	.L954
	nop

.L953:
	lw	$2,64($sp)
	bnezc	$2,.L955
	ld	$3,48($sp)
	ld	$2,56($sp)
	b	.L957
	nop

.L955:
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
.L954:
	ld	$3,32($sp)
	ld	$2,40($sp)
.L957:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	ld	$3,32($sp)
	ld	$2,40($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	ld	$3,32($sp)
	ld	$2,40($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	ld	$5,0($sp)
	ld	$6,8($sp)
	move	$7,$0
	move	$4,$0
	dsubu	$3,$4,$6
	sltu	$2,$4,$3
	dext	$4,$2,0,32
	dsubu	$2,$7,$5
	dsubu	$2,$2,$4
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
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsll	$3,$2,63
	ld	$2,8($sp)
	dsrl	$2,$2,1
	or	$2,$2,$3
	ld	$3,0($sp)
	dsrl	$4,$3,1
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	and	$5,$4,$3
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	and	$7,$2,$3
	ld	$6,0($sp)
	ld	$4,8($sp)
	dsubu	$3,$4,$7
	sltu	$2,$4,$3
	dext	$4,$2,0,32
	dsubu	$2,$6,$5
	dsubu	$2,$2,$4
	sd	$2,0($sp)
	sd	$3,8($sp)
	ld	$2,0($sp)
	dsll	$3,$2,62
	ld	$2,8($sp)
	dsrl	$2,$2,2
	or	$2,$2,$3
	ld	$3,0($sp)
	dsrl	$4,$3,2
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	and	$6,$4,$3
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	and	$4,$2,$3
	ld	$3,0($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$5,$3,$2
	ld	$3,8($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$7,$3,$2
	daddu	$3,$4,$7
	sltu	$2,$3,$4
	dext	$4,$2,0,32
	daddu	$2,$6,$5
	daddu	$2,$4,$2
	sd	$2,0($sp)
	sd	$3,8($sp)
	ld	$2,0($sp)
	dsll	$3,$2,60
	ld	$2,8($sp)
	dsrl	$2,$2,4
	or	$2,$2,$3
	ld	$3,0($sp)
	dsrl	$6,$3,4
	ld	$5,0($sp)
	ld	$7,8($sp)
	daddu	$4,$2,$7
	sltu	$2,$4,$2
	dext	$2,$2,0,32
	daddu	$3,$6,$5
	daddu	$2,$2,$3
	move	$3,$2
	move	$5,$3
	move	$3,$4
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$5,$2
	sd	$2,0($sp)
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,8($sp)
	ld	$2,8($sp)
	ld	$3,0($sp)
	dsrl	$3,$3,0
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
	daddiu	$sp,$sp,48
	jrc	$31
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
.L999:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L996
	ldc1	$f1,0($sp)
	ldc1	$f0,16($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($sp)
.L996:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beqzc	$2,.L1004
	ldc1	$f0,16($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
	b	.L999
	nop

.L1004:
	nop
	lw	$2,8($sp)
	beqzc	$2,.L1000
	ldc1	$f0,0($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
	b	.L1002
	nop

.L1000:
	ldc1	$f0,0($sp)
.L1002:
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
.L1010:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beqzc	$2,.L1007
	lwc1	$f1,0($sp)
	lwc1	$f0,16($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,0($sp)
.L1007:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beqzc	$2,.L1015
	lwc1	$f0,16($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	b	.L1010
	nop

.L1015:
	nop
	lw	$2,4($sp)
	beqzc	$2,.L1011
	lwc1	$f0,0($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
	b	.L1013
	nop

.L1011:
	lwc1	$f0,0($sp)
.L1013:
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
	beqzc	$2,.L1018
	move	$2,$0
	b	.L1023
	nop

.L1018:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L1020
	li	$2,2			# 0x2
	b	.L1023
	nop

.L1020:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L1021
	move	$2,$0
	b	.L1023
	nop

.L1021:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L1022
	li	$2,2			# 0x2
	b	.L1023
	nop

.L1022:
	li	$2,1			# 0x1
.L1023:
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
	beqzc	$2,.L1029
	move	$2,$0
	b	.L1034
	nop

.L1029:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L1031
	li	$2,2			# 0x2
	b	.L1034
	nop

.L1031:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beqzc	$2,.L1032
	move	$2,$0
	b	.L1034
	nop

.L1032:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beqzc	$2,.L1033
	li	$2,2			# 0x2
	b	.L1034
	nop

.L1033:
	li	$2,1			# 0x1
.L1034:
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
