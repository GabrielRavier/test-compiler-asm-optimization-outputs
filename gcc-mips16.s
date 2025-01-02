	.file	1 "mini-libc.c"
	.section .mdebug.abiO64
	.previous
	.section .gcc_compiled_long32
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.abicalls
	.text
	.align	2
	.globl	make_ti
	.set	mips16
	.set	nomicromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,8($sp)
	sd	$5,16($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	mips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,8($sp)
	sd	$5,16($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	mips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	move	$2,$4
	bteqz	$L7
	addu	$5,$5,$6
	addu	$3,$4,$6
	beqz	$6,$L53
$L9:
	addiu	$3,-1
	lb	$4,-1($5)
	cmp	$2,$3
	addiu	$5,-1
	sb	$4,0($3)
	btnez	$L9
	jr	$31
$L7:
	cmp	$4,$5
	bteqz	$L53
	beqz	$6,$L53
	addiu	$3,$6,-1
	sltu	$3,8
	btnez	$L10
	move	$3,$5
	or	$3,$4
	li	$4,7
	and	$3,$4
	bnez	$3,$L10
	addiu	$3,$5,1
	subu	$3,$2,$3
	sltu	$3,7
	btnez	$L10
	srl	$7,$6,3
	addiu	$sp,-8
	sll	$7,$7,3
	move	$3,$2
	sd	$16,0($sp)
	addu	$4,$5,$7
$L11:
	ld	$16,0($5)
	addiu	$5,8
	cmp	$4,$5
	sd	$16,0($3)
	addiu	$3,8
	btnez	$L11
	addu	$5,$2,$7
	subu	$3,$6,$7
	xor	$7,$6
	beqz	$7,$L8
	lb	$6,0($4)
	cmpi	$3,1
	sb	$6,0($5)
	bteqz	$L8
	lb	$6,1($4)
	cmpi	$3,2
	sb	$6,1($5)
	bteqz	$L8
	lb	$6,2($4)
	cmpi	$3,3
	sb	$6,2($5)
	bteqz	$L8
	lb	$6,3($4)
	cmpi	$3,4
	sb	$6,3($5)
	bteqz	$L8
	lb	$6,4($4)
	cmpi	$3,5
	sb	$6,4($5)
	bteqz	$L8
	lb	$6,5($4)
	cmpi	$3,6
	sb	$6,5($5)
	bteqz	$L8
	lb	$3,6($4)
	sb	$3,6($5)
$L8:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L10:
	move	$3,$2
	addu	$6,$6,$2
$L14:
	lb	$4,0($5)
	addiu	$3,1
	sb	$4,-1($3)
	cmp	$6,$3
	addiu	$5,1
	btnez	$L14
$L53:
	jr	$31
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.set	mips16
	.set	nomicromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	zeb	$6
	bnez	$7,$L56
	b	$L58
$L59:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	beqz	$7,$L58
$L56:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L59
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L58:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	mips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	zeb	$5
	bnez	$6,$L66
	b	$L71
$L68:
	addiu	$6,-1
	addiu	$4,1
	beqz	$6,$L69
$L66:
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L68
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L69:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L71:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	mips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L77
$L83:
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	btnez	$L82
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L83
$L77:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L82:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	mips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L90
	lw	$2,$L93
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L90:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memcpy_93, @object
__pool_memcpy_93:
	.align	2
$L93:
	.word	__gnu_local_gp
	.type	__pend_memcpy_93, @object
__pend_memcpy_93:
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	mips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$6,-1
	addu	$6,$4,$6
	zeb	$5
	addiu	$4,-1
$L95:
	cmp	$6,$4
	bteqz	$L98
	move	$2,$6
	lbu	$3,0($2)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L95
	jr	$31
$L98:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	mips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L104
	lw	$2,$L107
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(memset)($2)
	zeb	$5
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L104:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memset_107, @object
__pool_memset_107:
	.align	2
$L107:
	.word	__gnu_local_gp
	.type	__pend_memset_107, @object
__pend_memset_107:
	.end	memset
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.set	mips16
	.set	nomicromips
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$3,0($5)
	move	$2,$4
	sb	$3,0($4)
	beqz	$3,$L115
$L110:
	lb	$3,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$3,0($2)
	bnez	$3,$L110
$L115:
	jr	$31
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.set	mips16
	.set	nomicromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$3,0($4)
	move	$2,$4
	zeb	$5
	bnez	$3,$L117
	jr	$31
$L119:
	lb	$3,1($2)
	addiu	$2,1
	beqz	$3,$L123
$L117:
	zeb	$3
	xor	$3,$5
	bnez	$3,$L119
$L123:
	jr	$31
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.set	mips16
	.set	nomicromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	b	$L127
$L130:
	addiu	$2,1
	beqz	$3,$L129
$L127:
	lb	$3,0($2)
	cmp	$3,$5
	btnez	$L130
	jr	$31
$L129:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.set	mips16
	.set	nomicromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	b	$L139
$L132:
	beqz	$3,$L133
	addiu	$4,1
	addiu	$5,1
$L139:
	lb	$3,0($4)
	lb	$2,0($5)
	cmp	$3,$2
	bteqz	$L132
	zeb	$3
$L133:
	zeb	$2
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$3,$2
	.set	macro
	.set	reorder

	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	mips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$2,0($4)
	beqz	$2,$L143
	move	$2,$4
$L142:
	lb	$3,1($2)
	addiu	$2,1
	bnez	$3,$L142
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

$L143:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	mips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L153
	lbu	$2,0($4)
	beqz	$2,$L155
	lbu	$3,0($5)
	addiu	$6,-1
	addu	$6,$4,$6
	beqz	$3,$L148
$L157:
	cmp	$4,$6
	bteqz	$L148
	cmp	$3,$2
	btnez	$L148
	lbu	$2,1($4)
	addiu	$4,1
	addiu	$3,$5,1
	beqz	$2,$L156
	move	$5,$3
	lbu	$3,0($5)
	bnez	$3,$L157
$L148:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L153:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L156:
	lbu	$3,1($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L155:
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	mips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$6,2
	btnez	$L162
	srl	$2,$6,1
	sll	$2,$2,1
	addu	$2,$4,$2
$L160:
	lbu	$3,1($4)
	addiu	$4,2
	sb	$3,0($5)
	lbu	$3,-2($4)
	cmp	$4,$2
	sb	$3,1($5)
	addiu	$5,2
	btnez	$L160
$L162:
	jr	$31
	.end	swab
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.set	mips16
	.set	nomicromips
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.set	mips16
	.set	nomicromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,128
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.set	mips16
	.set	nomicromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	cmpi	$4,32
	bteqz	$L167
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L167:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.set	mips16
	.set	nomicromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,32
	btnez	$L170
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L170:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.set	mips16
	.set	nomicromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-48
	sltu	$4,10
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.set	mips16
	.set	nomicromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-33
	sltu	$4,94
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.set	mips16
	.set	nomicromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-97
	sltu	$4,26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	islower
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.set	mips16
	.set	nomicromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-32
	sltu	$4,95
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.set	mips16
	.set	nomicromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	cmpi	$4,32
	bteqz	$L177
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L177:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.set	mips16
	.set	nomicromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-65
	sltu	$4,26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.set	mips16
	.set	nomicromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,32
	btnez	$L182
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	bteqz	$L184
$L182:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L184:
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L183
	li	$2,65529
	neg	$2,$2
	addu	$4,$4,$2
	sltu	$4,3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L183:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.set	mips16
	.set	nomicromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-48
	sltu	$4,10
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.set	mips16
	.set	nomicromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,255
	btnez	$L194
	sltu	$4,8232
	btnez	$L191
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L191
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L191
	li	$2,65532
	lw	$3,$L196
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$3,$2
	btnez	$L192
	li	$2,65534
	and	$4,$2
	xor	$4,$2
	sltu	$4,1
	move	$2,$24
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	xor	$2,$3
	.set	macro
	.set	reorder

$L191:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L194:
	li	$2,127
	addiu	$4,1
	and	$4,$2
	sltu	$4,33
	move	$2,$24
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	xor	$2,$3
	.set	macro
	.set	reorder

$L192:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_195, @object
__pool_iswprint_195:
	.align	2
$L195:
	.word	__gnu_local_gp
$L196:
	.word	1048579
	.type	__pend_iswprint_195, @object
__pend_iswprint_195:
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	mips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$2,$4,-8
	addiu	$2,-40
	sltu	$2,10
	btnez	$L199
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,6
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L199:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.set	mips16
	.set	nomicromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,127
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$4
	.set	macro
	.set	reorder

	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	# Stub function for fdim (double, double)
	.section	.mips16.fn.fdim,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fdim
	.type	__fn_stub_fdim, @function
__fn_stub_fdim:
	.option	pic0
	la	$25,fdim
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fdim
	__fn_local_fdim = fdim
	.text
	.set	mips16
	.set	nomicromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L208
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_gtdf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	sd	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L206
	lw	$17,%call16(__mips16_subdf3)($17)
	ld	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$5,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L201:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L206:
	ld	$2,$L209
	b	$L201
	.type	__pool_fdim_208, @object
__pool_fdim_208:
	.align	2
$L208:
	.word	__gnu_local_gp
	.align	3
$L209:
	.word	0
	.word	0
	.type	__pend_fdim_208, @object
__pend_fdim_208:
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	# Stub function for fdimf (float, float)
	.section	.mips16.fn.fdimf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fdimf
	.type	__fn_stub_fdimf, @function
__fn_stub_fdimf:
	.option	pic0
	la	$25,fdimf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fdimf
	__fn_local_fdimf = fdimf
	.text
	.set	mips16
	.set	nomicromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L217
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_gtsf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	sw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L215
	lw	$17,%call16(__mips16_subsf3)($17)
	lw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$5,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L210:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L215:
	lw	$2,$L218
	b	$L210
	.type	__pool_fdimf_217, @object
__pool_fdimf_217:
	.align	2
$L217:
	.word	__gnu_local_gp
$L218:
	.word	0
	.type	__pend_fdimf_217, @object
__pend_fdimf_217:
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	# Stub function for fmax (double, double)
	.section	.mips16.fn.fmax,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmax
	.type	__fn_stub_fmax, @function
__fn_stub_fmax:
	.option	pic0
	la	$25,fmax
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmax
	__fn_local_fmax = fmax
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L232
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L233
	sd	$31,64($sp)
	sd	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L229
	li	$16,0
$L221:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	ld	$5,$L233
	lw	$2,%call16(__mips16_ltdf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L222
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L222:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$16
	zeb	$2
	xor	$16,$2
	beqz	$16,$L220
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L233
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L231
	ld	$16,72($sp)
$L219:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L220:
	ld	$16,72($sp)
	lw	$17,%call16(__mips16_gedf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L219
$L231:
	ld	$16,80($sp)
	b	$L219
$L229:
	li	$16,1
	b	$L221
	.type	__pool_fmax_232, @object
__pool_fmax_232:
	.align	2
$L232:
	.word	__gnu_local_gp
	.align	3
$L233:
	.word	0
	.word	0
	.type	__pend_fmax_232, @object
__pend_fmax_232:
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	# Stub function for fmaxf (float, float)
	.section	.mips16.fn.fmaxf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmaxf
	.type	__fn_stub_fmaxf, @function
__fn_stub_fmaxf:
	.option	pic0
	la	$25,fmaxf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmaxf
	__fn_local_fmaxf = fmaxf
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L247
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L248
	sd	$31,64($sp)
	sd	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L244
	li	$16,0
$L236:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$5,$L248
	lw	$2,%call16(__mips16_ltsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L237
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L237:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$16
	zeb	$2
	xor	$16,$2
	beqz	$16,$L235
	lw	$17,%call16(__mips16_ltsf2)($17)
	lw	$5,$L248
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L246
	lw	$16,72($sp)
$L234:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L235:
	lw	$16,72($sp)
	lw	$17,%call16(__mips16_gesf2)($17)
	lw	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L234
$L246:
	lw	$16,80($sp)
	b	$L234
$L244:
	li	$16,1
	b	$L236
	.type	__pool_fmaxf_247, @object
__pool_fmaxf_247:
	.align	2
$L247:
	.word	__gnu_local_gp
$L248:
	.word	0
	.type	__pend_fmaxf_247, @object
__pend_fmaxf_247:
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	# Stub function for fmaxl (double, double)
	.section	.mips16.fn.fmaxl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmaxl
	.type	__fn_stub_fmaxl, @function
__fn_stub_fmaxl:
	.option	pic0
	la	$25,fmaxl
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmaxl
	__fn_local_fmaxl = fmaxl
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L262
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L263
	sd	$31,64($sp)
	sd	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L259
	li	$16,0
$L251:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	ld	$5,$L263
	lw	$2,%call16(__mips16_ltdf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L252
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L252:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$16
	zeb	$2
	xor	$16,$2
	beqz	$16,$L250
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L263
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L261
	ld	$16,72($sp)
$L249:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L250:
	ld	$16,72($sp)
	lw	$17,%call16(__mips16_gedf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L249
$L261:
	ld	$16,80($sp)
	b	$L249
$L259:
	li	$16,1
	b	$L251
	.type	__pool_fmaxl_262, @object
__pool_fmaxl_262:
	.align	2
$L262:
	.word	__gnu_local_gp
	.align	3
$L263:
	.word	0
	.word	0
	.type	__pend_fmaxl_262, @object
__pend_fmaxl_262:
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	# Stub function for fmin (double, double)
	.section	.mips16.fn.fmin,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmin
	.type	__fn_stub_fmin, @function
__fn_stub_fmin:
	.option	pic0
	la	$25,fmin
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmin
	__fn_local_fmin = fmin
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L277
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L278
	sd	$31,64($sp)
	sd	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L274
	li	$16,0
$L266:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	ld	$5,$L278
	lw	$2,%call16(__mips16_ltdf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L267
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L267:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$16
	zeb	$2
	xor	$16,$2
	beqz	$16,$L265
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L278
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L276
$L273:
	ld	$16,80($sp)
$L264:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L265:
	ld	$16,72($sp)
	lw	$17,%call16(__mips16_ledf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L273
	b	$L264
$L276:
	ld	$16,72($sp)
	b	$L264
$L274:
	li	$16,1
	b	$L266
	.type	__pool_fmin_277, @object
__pool_fmin_277:
	.align	2
$L277:
	.word	__gnu_local_gp
	.align	3
$L278:
	.word	0
	.word	0
	.type	__pend_fmin_277, @object
__pend_fmin_277:
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	# Stub function for fminf (float, float)
	.section	.mips16.fn.fminf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fminf
	.type	__fn_stub_fminf, @function
__fn_stub_fminf:
	.option	pic0
	la	$25,fminf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fminf
	__fn_local_fminf = fminf
	.text
	.set	mips16
	.set	nomicromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L292
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L293
	sd	$31,64($sp)
	sd	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L289
	li	$16,0
$L281:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$5,$L293
	lw	$2,%call16(__mips16_ltsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L282
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L282:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$16
	zeb	$2
	xor	$16,$2
	beqz	$16,$L280
	lw	$17,%call16(__mips16_ltsf2)($17)
	lw	$5,$L293
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L291
$L288:
	lw	$16,80($sp)
$L279:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L280:
	lw	$16,72($sp)
	lw	$17,%call16(__mips16_lesf2)($17)
	lw	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L288
	b	$L279
$L291:
	lw	$16,72($sp)
	b	$L279
$L289:
	li	$16,1
	b	$L281
	.type	__pool_fminf_292, @object
__pool_fminf_292:
	.align	2
$L292:
	.word	__gnu_local_gp
$L293:
	.word	0
	.type	__pend_fminf_292, @object
__pend_fminf_292:
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	# Stub function for fminl (double, double)
	.section	.mips16.fn.fminl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fminl
	.type	__fn_stub_fminl, @function
__fn_stub_fminl:
	.option	pic0
	la	$25,fminl
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fminl
	__fn_local_fminl = fminl
	.text
	.set	mips16
	.set	nomicromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L307
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L308
	sd	$31,64($sp)
	sd	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L304
	li	$16,0
$L296:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	ld	$5,$L308
	lw	$2,%call16(__mips16_ltdf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L297
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L297:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$16
	zeb	$2
	xor	$16,$2
	beqz	$16,$L295
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L308
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L306
$L303:
	ld	$16,80($sp)
$L294:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L295:
	ld	$16,72($sp)
	lw	$17,%call16(__mips16_ledf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L303
	b	$L294
$L306:
	ld	$16,72($sp)
	b	$L294
$L304:
	li	$16,1
	b	$L296
	.type	__pool_fminl_307, @object
__pool_fminl_307:
	.align	2
$L307:
	.word	__gnu_local_gp
	.align	3
$L308:
	.word	0
	.word	0
	.type	__pend_fminl_307, @object
__pend_fminl_307:
	.end	fminl
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.set	mips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$3,$L314
	beqz	$4,$L310
	lw	$5,$L315
$L311:
	li	$2,63
	and	$2,$4
	addu	$2,$5,$2
	lbu	$2,0($2)
	srl	$4,$4,6
	sb	$2,0($3)
	addiu	$3,1
	bnez	$4,$L311
$L310:
	li	$2,0
	sb	$2,0($3)
	lw	$2,$L314
	jr	$31
	.type	__pool_l64a_314, @object
__pool_l64a_314:
	.align	2
$L314:
	.word	s.0
$L315:
	.word	digits
	.type	__pend_l64a_314, @object
__pend_l64a_314:
	.end	l64a
	.size	l64a, .-l64a
	.align	2
	.globl	srand
	.set	mips16
	.set	nomicromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-1
	dsll	$4,$4,32
	dsrl	$4,32
	lw	$2,$L317
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_317, @object
__pool_srand_317:
	.align	2
$L317:
	.word	seed
	.type	__pend_srand_317, @object
__pend_srand_317:
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	mips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$3,$L320
	ld	$2,$L321
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_320, @object
__pool_rand_320:
	.align	2
$L320:
	.word	seed
	.align	3
$L321:
	.dword	6364136223846793005
	.type	__pend_rand_320, @object
__pend_rand_320:
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	mips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$5,$L328
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L329
	sw	$4,4($2)
$L329:
	jr	$31
$L328:
	sw	$5,4($4)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$5,0($4)
	.set	macro
	.set	reorder

	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	mips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,0($4)
	beqz	$2,$L331
	lw	$3,4($4)
	sw	$3,4($2)
$L331:
	lw	$3,4($4)
	beqz	$3,$L339
	sw	$2,0($3)
$L339:
	jr	$31
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	mips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	lw	$2,$L357
	sw	$6,88($sp)
	move	$28,$2
	sw	$2,32($sp)
	lw	$2,88($sp)
	sd	$31,64($sp)
	lw	$2,0($2)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	sw	$2,44($sp)
	beqz	$2,$L341
	move	$17,$5
	li	$16,0
	b	$L343
$L356:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L341
$L343:
	lw	$2,108($sp)
	lw	$4,72($sp)
	move	$5,$17
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$17,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L356
$L340:
	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L341:
	lw	$3,44($sp)
	lw	$4,88($sp)
	addiu	$2,$3,1
	sw	$2,0($4)
	lw	$2,96($sp)
	mult	$2,$3
	lw	$3,80($sp)
	mflo	$2
	addu	$2,$3,$2
	lw	$3,96($sp)
	sw	$2,40($sp)
	beqz	$3,$L340
	move	$4,$2
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	lw	$5,72($sp)
	move	$6,$3
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_lsearch_357, @object
__pool_lsearch_357:
	.align	2
$L357:
	.word	__gnu_local_gp
	.type	__pend_lsearch_357, @object
__pend_lsearch_357:
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	mips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,0($6)
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$7,96($sp)
	sw	$2,44($sp)
	beqz	$2,$L359
	move	$17,$5
	li	$16,0
	b	$L361
$L370:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L359
$L361:
	lw	$2,108($sp)
	lw	$4,72($sp)
	move	$5,$17
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$17,40($sp)
	.set	macro
	.set	reorder

	bnez	$2,$L370
	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L359:
	ld	$7,64($sp)
	li	$2,0
	sw	$2,40($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	mips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	move	$2,$4
	btnez	$L373
	jr	$31
$L373:
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$4
	.set	macro
	.set	reorder

	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	mips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
$L381:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L375
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L375
	cmpi	$3,43
	bteqz	$L376
	cmpi	$3,45
	bteqz	$L377
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L394
	move	$5,$4
	li	$7,0
$L379:
	li	$2,0
$L383:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L383
	bnez	$7,$L395
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L375:
	addiu	$4,1
	b	$L381
$L377:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L386
	li	$7,1
	b	$L379
$L386:
	li	$2,0
$L395:
	jr	$31
$L376:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L379
$L394:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	mips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
$L401:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L397
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L397
	cmpi	$3,43
	bteqz	$L398
	cmpi	$3,45
	bteqz	$L399
	addiu	$3,-48
	sltu	$3,10
	move	$5,$4
	bteqz	$L417
$L416:
	li	$7,0
$L402:
	li	$2,0
$L405:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L405
	bnez	$7,$L418
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L397:
	addiu	$4,1
	b	$L401
$L399:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,1
	btnez	$L402
$L417:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L398:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	btnez	$L416
	li	$2,0
$L418:
	jr	$31
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	mips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
$L426:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L420
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L420
	cmpi	$3,43
	bteqz	$L421
	cmpi	$3,45
	bteqz	$L422
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L439
	move	$5,$4
	li	$7,0
$L424:
	li	$2,0
$L428:
	addiu	$5,1
	move	$6,$3
	lb	$3,0($5)
	dsll	$4,$2,2
	daddu	$4,$4,$2
	addiu	$3,-48
	dsll	$4,$4,1
	sltu	$3,10
	dsubu	$2,$4,$6
	btnez	$L428
	bnez	$7,$L440
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L420:
	addiu	$4,1
	b	$L426
$L422:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L431
	li	$7,1
	b	$L424
$L431:
	li	$2,0
$L440:
	jr	$31
$L421:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L424
$L439:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	mips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	beqz	$6,$L442
	move	$16,$6
$L445:
	lw	$2,96($sp)
	srl	$17,$16,1
	mult	$17,$2
	lw	$3,80($sp)
	mflo	$2
	lw	$4,72($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$3,108($sp)
	lw	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$3
	move	$25,$3
	.set	macro
	.set	reorder

	slt	$2,0
	btnez	$L446
	beqz	$2,$L441
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$2,$2,$3
	subu	$16,$16,$17
	sw	$2,80($sp)
	bnez	$16,$L445
$L442:
	li	$2,0
	sw	$2,40($sp)
$L441:
	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L446:
	move	$16,$17
	bnez	$16,$L445
	b	$L442
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	mips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	move	$17,$6
	beqz	$6,$L460
$L456:
	lw	$3,96($sp)
	sra	$2,$17,1
	mult	$2,$3
	sw	$2,40($sp)
	mflo	$16
	lw	$2,80($sp)
	lw	$6,116($sp)
	addu	$16,$2,$16
	lw	$2,108($sp)
	lw	$4,72($sp)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	beqz	$2,$L455
	slt	$2,1
	btnez	$L458
	lw	$2,96($sp)
	addiu	$17,-1
	addu	$2,$16,$2
	sra	$17,$17,1
	sw	$2,80($sp)
	bnez	$17,$L456
$L460:
	li	$16,0
$L455:
	ld	$7,64($sp)
	ld	$17,56($sp)
	move	$2,$16
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L458:
	lw	$2,40($sp)
	beqz	$2,$L460
	move	$17,$2
	b	$L456
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	mips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sw	$3,4($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$4,0($2)
	.set	macro
	.set	reorder

	.end	div
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.set	mips16
	.set	nomicromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	move	$2,$4
	btnez	$L472
	jr	$31
$L472:
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$3,$4
	.set	macro
	.set	reorder

	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	mips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sd	$3,8($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.set	mips16
	.set	nomicromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	move	$2,$4
	btnez	$L476
	jr	$31
$L476:
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$4
	.set	macro
	.set	reorder

	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	mips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sw	$3,4($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$4,0($2)
	.set	macro
	.set	reorder

	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.set	mips16
	.set	nomicromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	move	$2,$4
	btnez	$L480
	jr	$31
$L480:
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$3,$4
	.set	macro
	.set	reorder

	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	mips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sd	$3,8($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.set	mips16
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$3,0($4)
	beqz	$3,$L488
$L483:
	xor	$3,$5
	beqz	$3,$L489
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L483
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L489:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L488:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.set	mips16
	.set	nomicromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	b	$L497
$L498:
	beqz	$2,$L492
	addiu	$4,4
	addiu	$5,4
$L497:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L498
$L492:
	slt	$2,$3
	btnez	$L495
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L495:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	mips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$4
$L500:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L500
	jr	$31
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.set	mips16
	.set	nomicromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,0($4)
	beqz	$2,$L505
	move	$2,$4
$L504:
	lw	$3,4($2)
	addiu	$2,4
	bnez	$3,$L504
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L505:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.set	mips16
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L513
$L517:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L510
	beqz	$2,$L510
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L517
$L513:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L510:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L518
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L518:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.set	mips16
	.set	nomicromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	bnez	$6,$L520
	b	$L525
$L522:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L523
$L520:
	lw	$2,0($4)
	cmp	$2,$5
	btnez	$L522
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L523:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L525:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.set	mips16
	.set	nomicromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L532
$L538:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L537
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L538
$L532:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L537:
	slt	$3,$2
	btnez	$L539
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L539:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	mips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L546
	lw	$2,$L549
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	sll	$6,$6,2
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L546:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_549, @object
__pool_wmemcpy_549:
	.align	2
$L549:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_549, @object
__pend_wmemcpy_549:
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	mips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	cmp	$4,$5
	move	$2,$4
	bteqz	$L582
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$2,$5
	sll	$16,$6,2
	sltu	$17,$16
	move	$7,$4
	addiu	$3,$6,-1
	move	$4,$5
	btnez	$L552
	beqz	$6,$L567
	sltu	$3,9
	btnez	$L559
	move	$16,$5
	or	$16,$2
	li	$17,7
	and	$16,$17
	bnez	$16,$L559
	addiu	$16,$5,4
	xor	$16,$2
	beqz	$16,$L559
	srl	$16,$6,1
	li	$3,0
$L560:
	ld	$17,0($4)
	addiu	$3,1
	cmp	$3,$16
	sd	$17,0($7)
	addiu	$4,8
	addiu	$7,8
	btnez	$L560
	li	$3,1
	and	$3,$6
	beqz	$3,$L567
	li	$3,2
	neg	$3,$3
	and	$6,$3
	sll	$6,$6,2
	addu	$5,$5,$6
	lw	$3,0($5)
	addu	$6,$2,$6
	sw	$3,0($6)
$L567:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L559:
	lw	$5,0($4)
	addiu	$3,-1
	sw	$5,0($7)
	addiu	$5,$3,1
	addiu	$7,4
	addiu	$4,4
	beqz	$5,$L567
	lw	$5,0($4)
	addiu	$3,-1
	sw	$5,0($7)
	addiu	$5,$3,1
	addiu	$7,4
	addiu	$4,4
	bnez	$5,$L559
	b	$L567
$L552:
	beqz	$6,$L567
	sll	$3,$3,2
$L555:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,-4
	sw	$6,0($4)
	addiu	$4,$3,4
	bnez	$4,$L555
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L582:
	jr	$31
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.set	mips16
	.set	nomicromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	beqz	$6,$L584
	addiu	$4,$6,-1
	srl	$3,$2,2
	li	$7,1
	sltu	$4,6
	and	$3,$7
	btnez	$L589
	beqz	$3,$L590
	addiu	$4,$2,4
	move	$8,$4
	sw	$5,0($2)
	addiu	$4,$6,-2
$L586:
	dsll	$7,$5,32
	subu	$6,$6,$3
	dsrl	$7,32
	dsll	$16,$5,32
	sll	$3,$3,2
	or	$16,$7
	srl	$17,$6,1
	addu	$3,$2,$3
	li	$7,0
$L587:
	addiu	$7,1
	cmp	$7,$17
	sd	$16,0($3)
	addiu	$3,8
	btnez	$L587
	li	$3,1
	and	$3,$6
	beqz	$3,$L584
	li	$3,2
	neg	$3,$3
	and	$6,$3
	subu	$4,$4,$6
	move	$3,$8
	sll	$6,$6,2
	addu	$6,$3,$6
$L585:
	sw	$5,0($6)
	beqz	$4,$L584
	cmpi	$4,1
	sw	$5,4($6)
	bteqz	$L584
	cmpi	$4,2
	sw	$5,8($6)
	bteqz	$L584
	cmpi	$4,3
	sw	$5,12($6)
	bteqz	$L584
	cmpi	$4,4
	sw	$5,16($6)
	bteqz	$L584
	sw	$5,20($6)
$L584:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L590:
	move	$8,$2
	b	$L586
$L589:
	move	$6,$2
	b	$L585
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	mips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$4,$5
	bteqz	$L615
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L661
$L617:
	addiu	$2,-1
	lb	$3,0($2)
	cmp	$4,$2
	addiu	$5,-1
	sb	$3,0($5)
	btnez	$L617
	jr	$31
$L615:
	cmp	$4,$5
	bteqz	$L661
	beqz	$6,$L661
	addiu	$2,$6,-1
	sltu	$2,8
	btnez	$L618
	move	$2,$5
	or	$2,$4
	li	$3,7
	and	$2,$3
	bnez	$2,$L618
	addiu	$2,$4,1
	subu	$2,$5,$2
	sltu	$2,7
	btnez	$L618
	srl	$7,$6,3
	addiu	$sp,-8
	sll	$7,$7,3
	move	$2,$5
	sd	$16,0($sp)
	addu	$3,$4,$7
$L619:
	ld	$16,0($4)
	addiu	$4,8
	cmp	$3,$4
	sd	$16,0($2)
	addiu	$2,8
	btnez	$L619
	addu	$5,$5,$7
	subu	$2,$6,$7
	xor	$7,$6
	beqz	$7,$L614
	lb	$4,0($3)
	cmpi	$2,1
	sb	$4,0($5)
	bteqz	$L614
	lb	$4,1($3)
	cmpi	$2,2
	sb	$4,1($5)
	bteqz	$L614
	lb	$4,2($3)
	cmpi	$2,3
	sb	$4,2($5)
	bteqz	$L614
	lb	$4,3($3)
	cmpi	$2,4
	sb	$4,3($5)
	bteqz	$L614
	lb	$4,4($3)
	cmpi	$2,5
	sb	$4,4($5)
	bteqz	$L614
	lb	$4,5($3)
	cmpi	$2,6
	sb	$4,5($5)
	bteqz	$L614
	lb	$2,6($3)
	sb	$2,6($5)
$L614:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L618:
	addu	$6,$4,$6
$L622:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$6,$4
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L622
$L661:
	jr	$31
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.set	mips16
	.set	nomicromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsll	$2,$5
	neg	$5,$5
	dsrl	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.set	mips16
	.set	nomicromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsrl	$2,$5
	neg	$5,$5
	dsll	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.set	mips16
	.set	nomicromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	srl	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.set	mips16
	.set	nomicromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	sll	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.set	mips16
	.set	nomicromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	srl	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.set	mips16
	.set	nomicromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	sll	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.set	mips16
	.set	nomicromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,15
	and	$5,$3
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	and	$5,$3
	srl	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeh	$2
	.set	macro
	.set	reorder

	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.set	mips16
	.set	nomicromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,15
	and	$5,$3
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	and	$5,$3
	sll	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeh	$2
	.set	macro
	.set	reorder

	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.set	mips16
	.set	nomicromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,7
	and	$5,$3
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	and	$5,$3
	srl	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.set	mips16
	.set	nomicromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,7
	and	$5,$3
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	and	$5,$3
	sll	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	mips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$2,$4,8
	sll	$4,$4,8
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeh	$2
	.set	macro
	.set	reorder

	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	mips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$3,$4,24
	sll	$2,$4,24
	or	$2,$3
	li	$5,65280
	srl	$3,$4,8
	and	$3,$5
	or	$2,$3
	lw	$3,$L676
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_676, @object
__pool_bswap_32_676:
	.align	2
$L676:
	.word	16711680
	.type	__pend_bswap_32_676, @object
__pend_bswap_32_676:
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	mips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsll	$3,$4,56
	dsrl	$2,56
	or	$3,$2
	move	$2,$4
	li	$5,65280
	dsrl	$2,40
	and	$2,$5
	or	$3,$2
	ld	$5,$L679
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L680
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L681
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L682
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L683
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_679, @object
__pool_bswap_64_679:
	.align	3
$L679:
	.dword	16711680
$L680:
	.dword	4278190080
$L681:
	.dword	1095216660480
$L682:
	.dword	280375465082880
$L683:
	.dword	71776119061217280
	.type	__pend_bswap_64_679, @object
__pend_bswap_64_679:
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	mips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	b	$L687
$L690:
	cmpi	$2,32
	bteqz	$L689
$L687:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L690
	jr	$31
$L689:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	mips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L694
	li	$2,1
	and	$2,$4
	bnez	$2,$L697
	li	$2,1
$L693:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L693
	jr	$31
$L694:
	li	$2,0
$L697:
	jr	$31
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	# Stub function for gl_isinff (float)
	.section	.mips16.fn.gl_isinff,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_gl_isinff
	.type	__fn_stub_gl_isinff, @function
__fn_stub_gl_isinff:
	.option	pic0
	la	$25,gl_isinff
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_gl_isinff
	__fn_local_gl_isinff = gl_isinff
	.text
	.set	mips16
	.set	nomicromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	# Stub function for gl_isinfd (double)
	.section	.mips16.fn.gl_isinfd,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_gl_isinfd
	.type	__fn_stub_gl_isinfd, @function
__fn_stub_gl_isinfd:
	.option	pic0
	la	$25,gl_isinfd
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_gl_isinfd
	__fn_local_gl_isinfd = gl_isinfd
	.text
	.set	mips16
	.set	nomicromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	# Stub function for gl_isinfl (double)
	.section	.mips16.fn.gl_isinfl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_gl_isinfl
	.type	__fn_stub_gl_isinfl, @function
__fn_stub_gl_isinfl:
	.option	pic0
	la	$25,gl_isinfl
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_gl_isinfl
	__fn_local_gl_isinfl = gl_isinfl
	.text
	.set	mips16
	.set	nomicromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	mips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	lw	$2,$L704
	addiu	$sp,-56
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatsidf)($2)
	sd	$16,40($sp)
	move	$16,$4
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	sd	$2,0($16)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool__Qp_itoq_704, @object
__pool__Qp_itoq_704:
	.align	2
$L704:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_704, @object
__pend__Qp_itoq_704:
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	# Stub function for ldexpf (float)
	.section	.mips16.fn.ldexpf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_ldexpf
	.type	__fn_stub_ldexpf, @function
__fn_stub_ldexpf:
	.option	pic0
	la	$25,ldexpf
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_ldexpf
	__fn_local_ldexpf = ldexpf
	.text
	.set	mips16
	.set	nomicromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L723
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_addsf3)($17)
	sd	$16,48($sp)
	move	$16,$5
	move	$5,$4
	sd	$31,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$4,$2
	lw	$2,%call16(__mips16_nesf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$5,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L706
	slt	$16,0
	btnez	$L721
	lw	$5,$L724
$L708:
	li	$2,1
	and	$2,$16
	beqz	$2,$L709
$L710:
	lw	$2,%call16(__mips16_mulsf3)($17)
	lw	$4,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	lw	$5,40($sp)
	move	$28,$6
	sw	$2,72($sp)
$L709:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L706
	lw	$2,%call16(__mips16_mulsf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L710
$L722:
	srl	$2,$16,31
	addu	$16,$2,$16
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	sra	$16,$16,1
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L710
	b	$L722
$L706:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,72($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L721:
	lw	$5,$L725
	b	$L708
	.type	__pool_ldexpf_723, @object
__pool_ldexpf_723:
	.align	2
$L723:
	.word	__gnu_local_gp
$L724:
	.word	1073741824
$L725:
	.word	1056964608
	.type	__pend_ldexpf_723, @object
__pend_ldexpf_723:
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	# Stub function for ldexp (double)
	.section	.mips16.fn.ldexp,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_ldexp
	.type	__fn_stub_ldexp, @function
__fn_stub_ldexp:
	.option	pic0
	la	$25,ldexp
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_ldexp
	__fn_local_ldexp = ldexp
	.text
	.set	mips16
	.set	nomicromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L744
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_adddf3)($17)
	sd	$16,48($sp)
	move	$16,$5
	move	$5,$4
	sd	$31,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$4,$2
	lw	$2,%call16(__mips16_nedf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$5,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L727
	slt	$16,0
	btnez	$L742
	ld	$5,$L745
$L729:
	li	$2,1
	and	$2,$16
	beqz	$2,$L730
$L731:
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,40($sp)
	move	$28,$6
	sd	$2,72($sp)
$L730:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L727
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L731
$L743:
	srl	$2,$16,31
	addu	$16,$2,$16
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	sra	$16,$16,1
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L731
	b	$L743
$L727:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,72($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L742:
	ld	$5,$L746
	b	$L729
	.type	__pool_ldexp_744, @object
__pool_ldexp_744:
	.align	2
$L744:
	.word	__gnu_local_gp
	.align	3
$L745:
	.word	1073741824
	.word	0
$L746:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_744, @object
__pend_ldexp_744:
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	# Stub function for ldexpl (double)
	.section	.mips16.fn.ldexpl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_ldexpl
	.type	__fn_stub_ldexpl, @function
__fn_stub_ldexpl:
	.option	pic0
	la	$25,ldexpl
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_ldexpl
	__fn_local_ldexpl = ldexpl
	.text
	.set	mips16
	.set	nomicromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,80,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L764
	addiu	$sp,-80
	move	$28,$2
	sd	$17,64($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_adddf3)($17)
	sd	$16,56($sp)
	move	$16,$5
	move	$5,$4
	sd	$31,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	sd	$2,40($sp)
	lw	$2,%call16(__mips16_nedf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,80($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L747
	slt	$16,0
	btnez	$L761
	li	$2,1
	and	$2,$16
	ld	$5,$L765
	beqz	$2,$L755
$L763:
	ld	$2,80($sp)
	sd	$2,40($sp)
$L752:
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,48($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,48($sp)
	move	$28,$6
	sd	$2,40($sp)
$L751:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L747
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L752
$L762:
	srl	$2,$16,31
	addu	$16,$2,$16
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	sra	$16,$16,1
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L752
	b	$L762
$L747:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($sp)
	.set	macro
	.set	reorder

	ld	$7,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,80
	.set	macro
	.set	reorder

$L761:
	li	$2,1
	and	$2,$16
	ld	$5,$L766
	bnez	$2,$L763
$L755:
	ld	$2,80($sp)
	sd	$2,40($sp)
	b	$L751
	.type	__pool_ldexpl_764, @object
__pool_ldexpl_764:
	.align	2
$L764:
	.word	__gnu_local_gp
	.align	3
$L765:
	.word	1073741824
	.word	0
$L766:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_764, @object
__pend_ldexpl_764:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$6,$L801
	addiu	$3,$6,-1
	sltu	$3,7
	btnez	$L769
	move	$3,$4
	or	$3,$5
	li	$4,7
	and	$3,$4
	bnez	$3,$L769
	srl	$4,$6,3
	addiu	$sp,-16
	sll	$4,$4,3
	move	$3,$2
	sd	$16,0($sp)
	sd	$17,8($sp)
	addu	$16,$5,$4
$L770:
	ld	$7,0($5)
	ld	$17,0($3)
	addiu	$5,8
	xor	$7,$17
	cmp	$16,$5
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L770
	addu	$3,$2,$4
	subu	$5,$6,$4
	xor	$4,$6
	beqz	$4,$L768
	lbu	$4,0($3)
	lbu	$6,0($16)
	cmpi	$5,1
	xor	$4,$6
	sb	$4,0($3)
	bteqz	$L768
	lbu	$6,1($3)
	lbu	$4,1($16)
	cmpi	$5,2
	xor	$4,$6
	sb	$4,1($3)
	bteqz	$L768
	lbu	$6,2($3)
	lbu	$4,2($16)
	cmpi	$5,3
	xor	$4,$6
	sb	$4,2($3)
	bteqz	$L768
	lbu	$6,3($3)
	lbu	$4,3($16)
	cmpi	$5,4
	xor	$4,$6
	sb	$4,3($3)
	bteqz	$L768
	lbu	$6,4($3)
	lbu	$4,4($16)
	cmpi	$5,5
	xor	$4,$6
	sb	$4,4($3)
	bteqz	$L768
	lbu	$6,5($3)
	lbu	$4,5($16)
	cmpi	$5,6
	xor	$4,$6
	sb	$4,5($3)
	bteqz	$L768
	lbu	$5,6($3)
	lbu	$4,6($16)
	xor	$4,$5
	sb	$4,6($3)
$L768:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L769:
	move	$3,$2
	addu	$6,$5,$6
$L772:
	lbu	$7,0($5)
	lbu	$4,0($3)
	addiu	$5,1
	xor	$7,$4
	cmp	$6,$5
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L772
	jr	$31
$L801:
	jr	$31
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	mips16
	.set	nomicromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$3,0($4)
	move	$2,$4
	beqz	$3,$L810
	move	$3,$4
$L805:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L805
$L816:
	beqz	$6,$L807
$L818:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L819
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L818
$L807:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L819:
	jr	$31
$L810:
	move	$3,$4
	b	$L816
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	mips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$5,$L829
$L821:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L828
	jr	$31
$L828:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L821
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

$L829:
	jr	$31
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	mips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$7,0($4)
	move	$2,$4
	beqz	$7,$L838
$L832:
	move	$6,$5
$L835:
	lb	$3,0($6)
	beqz	$3,$L839
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L835
	jr	$31
$L839:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L832
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L838:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	mips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
$L842:
	lb	$3,0($4)
	cmp	$5,$3
	bteqz	$L844
	addiu	$4,1
	bnez	$3,$L842
	jr	$31
$L844:
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L842
	jr	$31
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	mips16
	.set	nomicromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	lb	$17,0($5)
	beqz	$17,$L856
	move	$8,$5
$L847:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L847
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L853
	b	$L856
$L867:
	addiu	$4,1
	beqz	$3,$L866
$L853:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L867
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L849:
	lbu	$6,0($2)
	beqz	$6,$L850
	cmp	$7,$16
	bteqz	$L850
	xor	$6,$3
	bnez	$6,$L850
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L849
$L850:
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L856
	addiu	$4,1
	b	$L853
$L866:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L856:
	ld	$17,8($sp)
	ld	$16,0($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	# Stub function for copysign (double, double)
	.section	.mips16.fn.copysign,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_copysign
	.type	__fn_stub_copysign, @function
__fn_stub_copysign:
	.option	pic0
	la	$25,copysign
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_copysign
	__fn_local_copysign = copysign
	.text
	.set	mips16
	.set	nomicromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L880
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L881
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L879
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L881
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L872
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L881
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L871
$L872:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L879:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L881
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L872
$L871:
	ld	$2,$L882
	xor	$16,$2
	b	$L872
	.type	__pool_copysign_880, @object
__pool_copysign_880:
	.align	2
$L880:
	.word	__gnu_local_gp
	.align	3
$L881:
	.word	0
	.word	0
$L882:
	.dword	-9223372036854775808
	.type	__pend_copysign_880, @object
__pend_copysign_880:
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	mips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$7,$L904
	sltu	$5,$7
	btnez	$L891
	addiu	$sp,-16
	subu	$5,$5,$7
	sd	$17,8($sp)
	addu	$17,$4,$5
	sltu	$17,$4
	sd	$16,0($sp)
	btnez	$L894
	lb	$3,0($6)
	move	$9,$6
	move	$8,$3
	addiu	$6,$7,-1
$L889:
	lb	$3,0($2)
	move	$4,$8
	xor	$3,$4
	addiu	$7,$2,1
	beqz	$3,$L903
	move	$2,$7
$L885:
	sltu	$17,$2
	bteqz	$L889
$L894:
	li	$2,0
$L883:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L903:
	move	$3,$9
	addiu	$3,1
	move	$10,$3
	move	$4,$3
	beqz	$6,$L883
$L888:
	move	$5,$7
	b	$L886
$L887:
	addiu	$5,1
	addu	$3,$7,$6
	xor	$3,$5
	addiu	$4,1
	beqz	$3,$L883
$L886:
	lbu	$3,0($5)
	lbu	$16,0($4)
	xor	$3,$16
	beqz	$3,$L887
	sltu	$17,$7
	btnez	$L894
	lb	$3,0($7)
	move	$4,$8
	xor	$3,$4
	addiu	$2,$7,1
	bnez	$3,$L885
	move	$3,$7
	move	$4,$10
	move	$7,$2
	move	$2,$3
	b	$L888
$L904:
	jr	$31
$L891:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	mips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	lw	$2,$L911
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L906
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L906:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_911, @object
__pool_mempcpy_911:
	.align	2
$L911:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_911, @object
__pend_mempcpy_911:
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	# Stub function for frexp (double)
	.section	.mips16.fn.frexp,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_frexp
	.type	__fn_stub_frexp, @function
__fn_stub_frexp:
	.option	pic0
	la	$25,frexp
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_frexp
	__fn_local_frexp = frexp
	.text
	.set	mips16
	.set	nomicromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,88,$31		# vars= 24, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L939
	addiu	$sp,-88
	move	$28,$2
	sd	$17,72($sp)
	move	$17,$28
	sw	$2,32($sp)
	sw	$5,96($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L940
	sd	$16,64($sp)
	sd	$31,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L936
	lw	$2,%call16(__mips16_gedf2)($17)
	ld	$5,$L941
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L937
	li	$2,0
	sw	$2,56($sp)
$L915:
	li	$2,0
	sw	$2,40($sp)
$L921:
	lw	$2,40($sp)
	ld	$5,$L942
	addiu	$2,1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$4,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$16,48($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,$L943
	move	$16,$2
	lw	$2,%call16(__mips16_gedf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,48($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L921
$L922:
	lw	$2,96($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,56($sp)
	beqz	$2,$L928
	ld	$2,$L944
	xor	$2,$16
$L912:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,80($sp)
	ld	$17,72($sp)
	ld	$16,64($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,88
	.set	macro
	.set	reorder

$L937:
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L942
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L934
	lw	$2,%call16(__mips16_nedf2)($17)
	ld	$5,$L940
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L927
$L934:
	lw	$3,96($sp)
	li	$2,0
	sw	$2,0($3)
	move	$2,$16
	b	$L912
$L936:
	ld	$2,$L944
	ld	$5,$L945
	xor	$2,$16
	sd	$2,40($sp)
	lw	$2,%call16(__mips16_ledf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L938
	li	$2,1
	ld	$16,40($sp)
	sw	$2,56($sp)
	b	$L915
$L928:
	move	$2,$16
	b	$L912
$L938:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L946
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L934
	li	$2,1
	sw	$2,56($sp)
$L916:
	li	$2,0
	ld	$16,40($sp)
	sw	$2,40($sp)
$L923:
	lw	$2,40($sp)
	move	$4,$16
	addiu	$2,-1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_adddf3)($17)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$16,48($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,$L947
	move	$16,$2
	lw	$2,%call16(__mips16_ltdf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,48($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L923
	b	$L922
$L927:
	li	$2,0
	sd	$16,40($sp)
	sw	$2,56($sp)
	b	$L916
	.type	__pool_frexp_939, @object
__pool_frexp_939:
	.align	2
$L939:
	.word	__gnu_local_gp
	.align	3
$L940:
	.word	0
	.word	0
$L941:
	.word	1072693248
	.word	0
$L942:
	.word	1071644672
	.word	0
$L943:
	.word	1073741824
	.word	0
$L944:
	.dword	-9223372036854775808
$L945:
	.word	-1074790400
	.word	0
$L946:
	.word	-1075838976
	.word	0
$L947:
	.word	1070596096
	.word	0
	.type	__pend_frexp_939, @object
__pend_frexp_939:
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	mips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$4,$L953
$L950:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L950
	jr	$31
$L953:
	jr	$31
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.set	mips16
	.set	nomicromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L957
	li	$2,32
	li	$3,1
$L956:
	slt	$5,0
	btnez	$L957
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L958
	addiu	$2,-1
	bnez	$2,$L956
	bnez	$6,$L971
$L972:
	jr	$31
$L958:
	beqz	$3,$L965
$L957:
	li	$2,0
$L962:
	sltu	$4,$5
	btnez	$L961
	subu	$4,$4,$5
	or	$2,$3
$L961:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L962
	beqz	$6,$L972
$L971:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L965:
	li	$2,0
	beqz	$6,$L972
	b	$L971
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	sra	$2,$4,31
	cmp	$2,$4
	bteqz	$L975
	addiu	$sp,-48
	lw	$2,$L980
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$24
	sll	$2,$2,8
	dsll	$4,$2,32
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	dsrl	$4,32
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,-33
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L975:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_980, @object
__pool___clrsbqi2_980:
	.align	2
$L980:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_980, @object
__pend___clrsbqi2_980:
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	move	$2,$4
	dsra	$2,63
	xor	$4,$2
	beqz	$4,$L983
	lw	$2,$L988
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,-1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L983:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,63
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_988, @object
__pool___clrsbdi2_988:
	.align	2
$L988:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_988, @object
__pend___clrsbdi2_988:
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$4,$L994
$L991:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L991
	jr	$31
$L994:
	jr	$31
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.set	mips16
	.set	nomicromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	li	$7,8
	addiu	$sp,-16
	neg	$7,$7
	sltu	$4,$5
	and	$7,$6
	sd	$16,0($sp)
	sd	$17,8($sp)
	srl	$16,$6,3
	btnez	$L1000
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1027
$L1000:
	beqz	$16,$L1028
	sll	$16,$16,3
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
$L1003:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1003
	sltu	$7,$6
	bteqz	$L996
	subu	$2,$6,$7
	move	$9,$2
	addiu	$2,-1
	sltu	$2,8
	addu	$3,$4,$7
	addu	$2,$5,$7
	btnez	$L1005
	addiu	$16,$7,1
	addu	$16,$5,$16
	subu	$16,$3,$16
	sltu	$16,7
	btnez	$L1005
	move	$16,$2
	or	$16,$3
	li	$17,7
	and	$16,$17
	bnez	$16,$L1005
	move	$16,$9
	srl	$16,$16,3
	sll	$16,$16,3
	move	$8,$16
	addu	$16,$2,$16
$L1006:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1006
	move	$2,$8
	move	$17,$9
	xor	$17,$2
	addu	$7,$7,$2
	beqz	$17,$L996
	addu	$2,$5,$7
	lb	$3,0($2)
	addu	$2,$4,$7
	sb	$3,0($2)
	addiu	$2,$7,1
	sltu	$2,$6
	bteqz	$L996
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,2
	sltu	$2,$6
	bteqz	$L996
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,3
	sltu	$2,$6
	bteqz	$L996
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,4
	sltu	$2,$6
	bteqz	$L996
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,5
	sltu	$2,$6
	bteqz	$L996
	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$7,6
	addu	$2,$4,$2
	sltu	$7,$6
	sb	$3,0($2)
	bteqz	$L996
	addu	$5,$5,$7
	lb	$2,0($5)
	addu	$4,$4,$7
	sb	$2,0($4)
$L996:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1027:
	addiu	$2,$6,-1
	beqz	$6,$L996
$L1001:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L1001
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1028:
	beqz	$6,$L996
	addu	$3,$4,$7
	addu	$2,$5,$7
$L1005:
	addu	$6,$5,$6
$L1008:
	lb	$4,0($2)
	addiu	$2,1
	cmp	$6,$2
	sb	$4,0($3)
	addiu	$3,1
	btnez	$L1008
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	mips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sltu	$4,$5
	sd	$16,0($sp)
	sd	$17,8($sp)
	srl	$16,$6,1
	btnez	$L1033
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1056
$L1033:
	beqz	$16,$L1032
	addiu	$2,$16,-1
	sltu	$2,7
	btnez	$L1036
	move	$2,$5
	or	$2,$4
	li	$3,7
	and	$2,$3
	bnez	$2,$L1036
	addiu	$2,$5,2
	subu	$2,$4,$2
	sltu	$2,5
	btnez	$L1036
	srl	$2,$6,3
	move	$9,$2
	move	$7,$9
	sll	$7,$7,3
	move	$8,$7
	move	$2,$5
	move	$3,$4
	addu	$7,$5,$7
$L1037:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1037
	move	$2,$9
	sll	$17,$2,2
	cmp	$16,$17
	bteqz	$L1032
	move	$2,$8
	addu	$3,$5,$2
	lh	$7,0($3)
	addu	$3,$4,$2
	sh	$7,0($3)
	addiu	$3,$17,1
	sltu	$3,$16
	bteqz	$L1032
	addu	$7,$5,$2
	addu	$3,$4,$2
	lh	$7,2($7)
	addiu	$2,$17,2
	sltu	$2,$16
	sh	$7,2($3)
	bteqz	$L1032
	move	$2,$8
	addu	$3,$5,$2
	lh	$3,4($3)
	addu	$2,$4,$2
	sh	$3,4($2)
$L1032:
	li	$2,1
	and	$2,$6
	beqz	$2,$L1029
$L1057:
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
$L1029:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1056:
	addiu	$2,$6,-1
	beqz	$6,$L1029
$L1034:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L1034
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1036:
	sll	$16,$16,1
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
$L1039:
	lh	$7,0($2)
	addiu	$2,2
	cmp	$2,$16
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L1039
	li	$2,1
	and	$2,$6
	beqz	$2,$L1029
	b	$L1057
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	mips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	li	$7,4
	neg	$7,$7
	addiu	$sp,-16
	and	$7,$6
	sltu	$4,$5
	move	$10,$7
	sd	$17,8($sp)
	sd	$16,0($sp)
	srl	$17,$6,2
	btnez	$L1063
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1096
$L1063:
	beqz	$17,$L1097
	addiu	$2,$17,-1
	sltu	$2,9
	btnez	$L1065
	move	$2,$4
	or	$2,$5
	li	$3,7
	and	$2,$3
	bnez	$2,$L1065
	addiu	$2,$5,4
	xor	$2,$4
	beqz	$2,$L1065
	srl	$2,$6,3
	move	$8,$2
	move	$7,$8
	sll	$7,$7,3
	move	$2,$5
	move	$3,$4
	move	$9,$7
	addu	$16,$5,$7
$L1066:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1066
	move	$2,$8
	sll	$2,$2,1
	xor	$2,$17
	beqz	$2,$L1069
	move	$2,$9
	addu	$2,$5,$2
	lw	$3,0($2)
	move	$2,$9
	addu	$2,$4,$2
	sw	$3,0($2)
$L1069:
	move	$2,$10
	sltu	$2,$6
	bteqz	$L1058
	subu	$17,$6,$2
	addiu	$2,$17,-1
	sltu	$2,8
	move	$2,$10
	addu	$3,$4,$2
	addu	$2,$5,$2
	btnez	$L1061
	move	$7,$10
	addiu	$16,$7,1
	addu	$16,$5,$16
	subu	$16,$3,$16
	sltu	$16,7
	btnez	$L1061
	move	$16,$2
	or	$16,$3
	li	$7,7
	and	$16,$7
	bnez	$16,$L1061
	srl	$16,$17,3
	sll	$7,$16,3
	move	$8,$7
	addu	$16,$2,$7
$L1070:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1070
	move	$2,$8
	move	$3,$10
	xor	$17,$2
	addu	$7,$3,$2
	beqz	$17,$L1058
	addu	$2,$5,$7
	lb	$3,0($2)
	addu	$2,$4,$7
	sb	$3,0($2)
	addiu	$2,$7,1
	sltu	$2,$6
	bteqz	$L1058
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,2
	sltu	$2,$6
	bteqz	$L1058
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,3
	sltu	$2,$6
	bteqz	$L1058
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,4
	sltu	$2,$6
	bteqz	$L1058
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,5
	sltu	$2,$6
	bteqz	$L1058
	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$7,6
	addu	$2,$4,$2
	sltu	$7,$6
	sb	$3,0($2)
	bteqz	$L1058
	addu	$5,$5,$7
	lb	$2,0($5)
	addu	$4,$4,$7
	sb	$2,0($4)
$L1058:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1096:
	addiu	$2,$6,-1
	beqz	$6,$L1058
$L1064:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L1064
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1065:
	sll	$17,$17,2
	move	$2,$5
	move	$3,$4
	addu	$17,$17,$5
$L1068:
	lw	$7,0($2)
	addiu	$2,4
	cmp	$2,$17
	sw	$7,0($3)
	addiu	$3,4
	btnez	$L1068
	b	$L1069
$L1097:
	beqz	$6,$L1058
	move	$2,$10
	addu	$3,$4,$2
	addu	$2,$5,$2
$L1061:
	addu	$6,$5,$6
$L1072:
	lb	$4,0($2)
	addiu	$2,1
	cmp	$6,$2
	sb	$4,0($3)
	addiu	$3,1
	btnez	$L1072
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.set	mips16
	.set	nomicromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	div	$0,$4,$5
	bnez	$5,1f
	break	7
1:
	.set	noreorder
	.set	nomacro
	jr	$31
	mfhi	$2
	.set	macro
	.set	reorder

	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.set	mips16
	.set	nomicromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	lw	$2,$L1101
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsidf)($2)
	sd	$31,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitod_1101, @object
__pool___uitod_1101:
	.align	2
$L1101:
	.word	__gnu_local_gp
	.type	__pend___uitod_1101, @object
__pend___uitod_1101:
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	mips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	lw	$2,$L1104
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsisf)($2)
	sd	$31,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitof_1104, @object
__pool___uitof_1104:
	.align	2
$L1104:
	.word	__gnu_local_gp
	.type	__pend___uitof_1104, @object
__pend___uitof_1104:
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	mips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80040000,-8
	.fmask	0x00000000,0
	lw	$2,$L1107
	addiu	$sp,-56
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_df_0)($2)
	lw	$2,%call16(__floatundidf)($2)
	move	$3,$18
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$5
	sd	$3,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	addiu	$sp,56
	.set	noreorder
	.set	nomacro
	jr	$7
	move	$18,$6
	.set	macro
	.set	reorder

	.type	__pool___ulltod_1107, @object
__pool___ulltod_1107:
	.align	2
$L1107:
	.word	__gnu_local_gp
	.type	__pend___ulltod_1107, @object
__pend___ulltod_1107:
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	mips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80040000,-8
	.fmask	0x00000000,0
	lw	$2,$L1110
	addiu	$sp,-56
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_sf_0)($2)
	lw	$2,%call16(__floatundisf)($2)
	move	$3,$18
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$5
	sd	$3,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	addiu	$sp,56
	.set	noreorder
	.set	nomacro
	jr	$7
	move	$18,$6
	.set	macro
	.set	reorder

	.type	__pool___ulltof_1110, @object
__pool___ulltof_1110:
	.align	2
$L1110:
	.word	__gnu_local_gp
	.type	__pend___ulltof_1110, @object
__pend___ulltof_1110:
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	mips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	divu	$0,$4,$5
	bnez	$5,1f
	break	7
1:
	.set	noreorder
	.set	nomacro
	jr	$31
	mfhi	$2
	.set	macro
	.set	reorder

	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	mips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sra	$3,$4,8
	sra	$2,$3,7
	bnez	$2,$L1115
	sra	$2,$3,6
	bnez	$2,$L1132
	sra	$2,$3,5
	bnez	$2,$L1116
	sra	$2,$3,4
	bnez	$2,$L1117
	sra	$2,$3,3
	bnez	$2,$L1118
	sra	$2,$3,2
	bnez	$2,$L1119
	sra	$2,$3,1
	bnez	$2,$L1120
	bnez	$3,$L1121
	sra	$2,$4,7
	bnez	$2,$L1122
	sra	$2,$4,6
	bnez	$2,$L1123
	sra	$2,$4,5
	bnez	$2,$L1124
	sra	$2,$4,4
	bnez	$2,$L1125
	sra	$2,$4,3
	bnez	$2,$L1126
	sra	$2,$4,2
	bnez	$2,$L1127
	sra	$2,$4,1
	bnez	$2,$L1128
	li	$2,16
	bnez	$4,$L1131
$L1132:
	jr	$31
$L1115:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1126:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1131:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L1116:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1117:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1118:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1119:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1120:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1121:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1122:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1123:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1124:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1125:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1127:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1128:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,14
	.set	macro
	.set	reorder

	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,1
	and	$2,$4
	bnez	$2,$L1136
	li	$2,2
	and	$2,$4
	bnez	$2,$L1137
	li	$2,4
	and	$2,$4
	bnez	$2,$L1138
	li	$2,8
	and	$2,$4
	bnez	$2,$L1139
	li	$2,16
	and	$2,$4
	bnez	$2,$L1140
	li	$2,32
	and	$2,$4
	bnez	$2,$L1141
	li	$2,64
	and	$2,$4
	bnez	$2,$L1142
	li	$2,128
	and	$2,$4
	bnez	$2,$L1143
	li	$2,255
	addiu	$2,1
	and	$2,$4
	bnez	$2,$L1144
	li	$2,512
	and	$2,$4
	bnez	$2,$L1145
	li	$2,1024
	and	$2,$4
	bnez	$2,$L1146
	li	$2,2048
	and	$2,$4
	bnez	$2,$L1147
	li	$2,4096
	and	$2,$4
	bnez	$2,$L1148
	li	$2,8192
	and	$2,$4
	bnez	$2,$L1149
	li	$2,16384
	and	$2,$4
	bnez	$2,$L1150
	srl	$4,$4,8
	srl	$4,$4,7
	li	$2,16
	bnez	$4,$L1153
	jr	$31
$L1136:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1137:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1148:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1153:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L1138:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1139:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1140:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1141:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1142:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1143:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1144:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1145:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1146:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1147:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1149:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1150:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,14
	.set	macro
	.set	reorder

	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	# Stub function for __fixunssfsi (float)
	.section	.mips16.fn.__fixunssfsi,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___fixunssfsi
	.type	__fn_stub___fixunssfsi, @function
__fn_stub___fixunssfsi:
	.option	pic0
	la	$25,__fixunssfsi
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub___fixunssfsi
	__fn_local___fixunssfsi = __fixunssfsi
	.text
	.set	mips16
	.set	nomicromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L1162
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L1163
	lw	$2,%call16(__mips16_gesf2)($16)
	sd	$17,48($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L1161
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L1161:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L1163
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$2
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	li	$3,32768
	ld	$17,48($sp)
	ld	$16,40($sp)
	addu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___fixunssfsi_1162, @object
__pool___fixunssfsi_1162:
	.align	2
$L1162:
	.word	__gnu_local_gp
$L1163:
	.word	1191182336
	.type	__pend___fixunssfsi_1162, @object
__pend___fixunssfsi_1162:
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	mips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$5,1
	sra	$3,$4,1
	li	$2,1
	and	$2,$4
	and	$3,$5
	addu	$3,$3,$2
	sra	$2,$4,2
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,3
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,4
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,5
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,6
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,7
	and	$2,$5
	sra	$4,$4,8
	addu	$3,$3,$2
	move	$2,$4
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,1
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,2
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,3
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,4
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,5
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,6
	and	$2,$5
	addu	$2,$3,$2
	sra	$4,$4,7
	addu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$5
	.set	macro
	.set	reorder

	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	mips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,1
	sra	$3,$4,1
	li	$5,1
	and	$5,$4
	and	$3,$2
	addu	$3,$3,$5
	sra	$5,$4,2
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,3
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,4
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,5
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,6
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,7
	and	$5,$2
	sra	$4,$4,8
	addu	$3,$3,$5
	move	$5,$4
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,1
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,2
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,3
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,4
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,5
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,6
	and	$2,$5
	addu	$2,$3,$2
	sra	$4,$4,7
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$4
	.set	macro
	.set	reorder

	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$4,$L1171
$L1168:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L1168
	jr	$31
$L1171:
	jr	$31
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$4,$L1179
	beqz	$5,$L1179
$L1175:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1175
	jr	$31
$L1179:
	jr	$31
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L1183
	li	$2,32
	li	$3,1
$L1182:
	slt	$5,0
	btnez	$L1183
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1184
	addiu	$2,-1
	bnez	$2,$L1182
	bnez	$6,$L1197
$L1198:
	jr	$31
$L1184:
	beqz	$3,$L1191
$L1183:
	li	$2,0
$L1188:
	sltu	$4,$5
	btnez	$L1187
	subu	$4,$4,$5
	or	$2,$3
$L1187:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1188
	beqz	$6,$L1198
$L1197:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1191:
	li	$2,0
	beqz	$6,$L1198
	b	$L1197
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	# Stub function for __mspabi_cmpf (float, float)
	.section	.mips16.fn.__mspabi_cmpf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___mspabi_cmpf
	.type	__fn_stub___mspabi_cmpf, @function
__fn_stub___mspabi_cmpf:
	.option	pic0
	la	$25,__mspabi_cmpf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub___mspabi_cmpf
	__fn_local___mspabi_cmpf = __mspabi_cmpf
	.text
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L1204
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_ltsf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	sw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L1202
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$5,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L1202:
	ld	$7,56($sp)
	li	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	neg	$2,$2
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpf_1204, @object
__pool___mspabi_cmpf_1204:
	.align	2
$L1204:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_1204, @object
__pend___mspabi_cmpf_1204:
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	# Stub function for __mspabi_cmpd (double, double)
	.section	.mips16.fn.__mspabi_cmpd,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___mspabi_cmpd
	.type	__fn_stub___mspabi_cmpd, @function
__fn_stub___mspabi_cmpd:
	.option	pic0
	la	$25,__mspabi_cmpd
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub___mspabi_cmpd
	__fn_local___mspabi_cmpd = __mspabi_cmpd
	.text
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L1210
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	sd	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L1208
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$5,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L1208:
	ld	$7,56($sp)
	li	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	neg	$2,$2
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpd_1210, @object
__pool___mspabi_cmpd_1210:
	.align	2
$L1210:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_1210, @object
__pend___mspabi_cmpd_1210:
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	mult	$4,$5
	mflo	$3
	mfhi	$2
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	multu	$4,$5
	mflo	$3
	mfhi	$2
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	mips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$5,0
	btnez	$L1227
	beqz	$5,$L1219
	li	$7,0
$L1215:
	li	$6,32
	li	$2,0
	b	$L1218
$L1228:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L1217
$L1218:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1228
$L1217:
	beqz	$7,$L1229
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1219:
	li	$2,0
$L1229:
	jr	$31
$L1227:
	neg	$5,$5
	li	$7,1
	b	$L1215
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	mips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	btnez	$L1248
	li	$2,1
	li	$7,0
$L1231:
	slt	$5,0
	bteqz	$L1232
	neg	$5,$5
	move	$7,$2
$L1232:
	sltu	$5,$4
	move	$6,$4
	li	$3,1
	bteqz	$L1234
	li	$2,32
	li	$3,1
	b	$L1233
$L1236:
	addiu	$2,-1
	beqz	$2,$L1237
$L1233:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1236
$L1237:
	li	$2,0
	beqz	$3,$L1235
$L1234:
	li	$2,0
$L1239:
	sltu	$6,$5
	btnez	$L1238
	subu	$6,$6,$5
	or	$2,$3
$L1238:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1239
$L1235:
	beqz	$7,$L1249
	neg	$2,$2
$L1249:
	jr	$31
$L1248:
	neg	$4,$4
	li	$2,0
	li	$7,1
	b	$L1231
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	mips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	btnez	$L1268
	li	$7,0
$L1251:
	slt	$5,0
	move	$2,$4
	bteqz	$L1252
	neg	$5,$5
$L1252:
	sltu	$5,$4
	li	$3,1
	bteqz	$L1259
	li	$6,32
	li	$3,1
	b	$L1253
$L1256:
	addiu	$6,-1
	beqz	$6,$L1257
$L1253:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1256
$L1257:
	beqz	$3,$L1269
$L1259:
	sltu	$2,$5
	btnez	$L1258
	subu	$2,$2,$5
$L1258:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1259
$L1255:
	beqz	$7,$L1270
	neg	$2,$2
$L1270:
	jr	$31
$L1268:
	neg	$4,$4
	li	$7,1
	b	$L1251
$L1269:
	move	$2,$4
	b	$L1255
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	sltu	$5,$4
	move	$2,$4
	bteqz	$L1391
	srl	$3,$5,8
	srl	$3,$3,7
	bnez	$3,$L1274
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1275
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1276
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1277
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1278
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1279
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1280
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1281
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1282
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1283
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1284
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1285
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1286
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$2
	bteqz	$L1287
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1288
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1289
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1290
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$2
	bteqz	$L1291
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1292
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1293
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1294
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1295
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1296
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1297
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1298
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1299
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1300
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1301
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1302
	sll	$4,$5,7
	zeh	$4
	sltu	$4,$2
	bteqz	$L1303
	bnez	$4,$L1392
$L1304:
	bnez	$6,$L1343
	move	$2,$4
$L1343:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1291:
	sltu	$2,$3
	btnez	$L1337
	subu	$2,$2,$3
	li	$7,512
	zeh	$2
	move	$4,$7
$L1306:
	srl	$16,$7,2
	srl	$5,$3,2
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1307
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1307:
	srl	$16,$7,3
	srl	$5,$3,3
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1308
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1308:
	srl	$16,$7,4
	srl	$5,$3,4
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1309
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1309:
	srl	$16,$7,5
	srl	$5,$3,5
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1310
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1310:
	srl	$16,$7,6
	srl	$5,$3,6
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1311
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1311:
	srl	$16,$7,7
	srl	$5,$3,7
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1312
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1312:
	srl	$16,$7,8
	srl	$5,$3,8
	beqz	$16,$L1304
	sltu	$2,$5
	btnez	$L1313
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1313:
	srl	$17,$16,1
	srl	$3,$5,1
	beqz	$17,$L1304
	sltu	$2,$3
	btnez	$L1314
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1314:
	srl	$17,$16,2
	srl	$3,$5,2
	beqz	$17,$L1304
	sltu	$2,$3
	btnez	$L1315
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1315:
	srl	$17,$16,3
	srl	$3,$5,3
	beqz	$17,$L1304
	sltu	$2,$3
	btnez	$L1316
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1316:
	srl	$17,$16,4
	srl	$3,$5,4
	beqz	$17,$L1304
	sltu	$2,$3
	btnez	$L1317
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1317:
	srl	$17,$16,5
	srl	$3,$5,5
	beqz	$17,$L1304
	sltu	$2,$3
	btnez	$L1318
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1318:
	srl	$16,$16,6
	srl	$3,$5,6
	beqz	$16,$L1304
	sltu	$2,$3
	btnez	$L1319
	subu	$2,$2,$3
	zeh	$2
	or	$4,$16
$L1319:
	cmpi	$7,16384
	srl	$5,$5,7
	bteqz	$L1304
	sltu	$2,$5
	btnez	$L1327
	subu	$2,$2,$5
	li	$3,1
	zeh	$2
	or	$4,$3
	b	$L1304
$L1392:
	li	$3,32768
	addiu	$2,-32768
	li	$5,16384
	zeh	$2
	move	$16,$5
	move	$7,$3
	move	$4,$3
$L1324:
	sltu	$2,$5
	btnez	$L1306
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
	b	$L1306
$L1327:
	li	$2,0
	b	$L1304
$L1391:
	xor	$5,$4
	beqz	$5,$L1325
	li	$4,0
$L1386:
	bnez	$6,$L1393
	move	$2,$4
$L1393:
	jr	$31
$L1274:
	subu	$2,$4,$5
	zeh	$2
	li	$4,1
	b	$L1386
$L1275:
	sltu	$4,$3
	btnez	$L1329
	subu	$2,$4,$3
	zeh	$2
	li	$7,2
	li	$4,2
	b	$L1306
$L1276:
	li	$4,32767
	subu	$2,$2,$3
	and	$5,$4
	zeh	$2
	li	$16,1
	li	$7,2
	li	$4,2
	b	$L1324
$L1277:
	sltu	$2,$3
	btnez	$L1330
	subu	$2,$2,$3
	zeh	$2
	li	$7,4
	li	$4,4
	b	$L1306
$L1278:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,2
	li	$7,4
	li	$4,4
	b	$L1324
$L1279:
	sltu	$2,$3
	btnez	$L1331
	subu	$2,$2,$3
	zeh	$2
	li	$7,8
	li	$4,8
	b	$L1306
$L1280:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,4
	li	$7,8
	li	$4,8
	b	$L1324
$L1281:
	sltu	$2,$3
	btnez	$L1332
	subu	$2,$2,$3
	zeh	$2
	li	$7,16
	li	$4,16
	b	$L1306
$L1282:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,8
	li	$7,16
	li	$4,16
	b	$L1324
$L1283:
	sltu	$2,$3
	btnez	$L1333
	subu	$2,$2,$3
	zeh	$2
	li	$7,32
	li	$4,32
	b	$L1306
$L1284:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,16
	li	$7,32
	li	$4,32
	b	$L1324
$L1285:
	sltu	$2,$3
	btnez	$L1334
	subu	$2,$2,$3
	zeh	$2
	li	$7,64
	li	$4,64
	b	$L1306
$L1286:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,32
	li	$7,64
	li	$4,64
	b	$L1324
$L1287:
	sltu	$2,$3
	btnez	$L1335
	subu	$2,$2,$3
	zeh	$2
	li	$7,128
	li	$4,128
	b	$L1306
$L1288:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,64
	li	$7,128
	li	$4,128
	b	$L1324
$L1290:
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	srl	$5,$3,1
	li	$16,128
	move	$4,$7
	b	$L1324
$L1325:
	li	$4,1
	li	$2,0
	b	$L1386
$L1292:
	subu	$2,$2,$3
	li	$16,255
	li	$7,512
	zeh	$2
	srl	$5,$3,1
	addiu	$16,1
	move	$4,$7
	b	$L1324
$L1329:
	li	$7,2
$L1323:
	srl	$16,$7,1
	srl	$5,$3,1
	li	$4,0
	b	$L1324
$L1294:
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	srl	$5,$3,1
	li	$16,512
	move	$4,$7
	b	$L1324
$L1330:
	li	$7,4
	b	$L1323
$L1296:
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	srl	$5,$3,1
	li	$16,1024
	move	$4,$7
	b	$L1324
$L1331:
	li	$7,8
	b	$L1323
$L1298:
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	srl	$5,$3,1
	li	$16,2048
	move	$4,$7
	b	$L1324
$L1300:
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	srl	$5,$3,1
	li	$16,4096
	move	$4,$7
	b	$L1324
$L1332:
	li	$7,16
	b	$L1323
$L1302:
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	srl	$5,$3,1
	li	$16,8192
	move	$4,$7
	b	$L1324
$L1333:
	li	$7,32
	b	$L1323
$L1334:
	li	$7,64
	b	$L1323
$L1303:
	srl	$3,$2,8
	srl	$3,$3,7
	bnez	$3,$L1328
	li	$3,32768
	move	$7,$3
	b	$L1323
$L1335:
	li	$7,128
	b	$L1323
$L1289:
	sltu	$2,$3
	btnez	$L1336
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	move	$4,$7
	b	$L1306
$L1328:
	li	$3,32768
	move	$7,$3
	move	$4,$3
	li	$2,0
	b	$L1306
$L1336:
	li	$7,255
	addiu	$7,1
	b	$L1323
$L1299:
	sltu	$2,$3
	btnez	$L1341
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	move	$4,$7
	b	$L1306
$L1293:
	sltu	$2,$3
	btnez	$L1338
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	move	$4,$7
	b	$L1306
$L1341:
	li	$7,8192
	b	$L1323
$L1338:
	li	$7,1024
	b	$L1323
$L1337:
	li	$7,512
	b	$L1323
$L1297:
	sltu	$2,$3
	btnez	$L1340
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	move	$4,$7
	b	$L1306
$L1295:
	sltu	$2,$3
	btnez	$L1339
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	move	$4,$7
	b	$L1306
$L1301:
	sltu	$2,$3
	btnez	$L1342
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	move	$4,$7
	b	$L1306
$L1340:
	li	$7,4096
	b	$L1323
$L1339:
	li	$7,2048
	b	$L1323
$L1342:
	li	$7,16384
	b	$L1323
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L1396
	li	$2,32
	li	$3,1
$L1395:
	slt	$5,0
	btnez	$L1396
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1397
	addiu	$2,-1
	bnez	$2,$L1395
	bnez	$6,$L1410
$L1411:
	jr	$31
$L1397:
	beqz	$3,$L1404
$L1396:
	li	$2,0
$L1401:
	sltu	$4,$5
	btnez	$L1400
	subu	$4,$4,$5
	or	$2,$3
$L1400:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1401
	beqz	$6,$L1411
$L1410:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1404:
	li	$2,0
	beqz	$6,$L1411
	b	$L1410
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	mips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1413
	sll	$2,$4,0
	li	$6,0
	sll	$2,$5
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1413:
	beqz	$5,$L1416
	sll	$2,$4,0
	move	$6,$2
	subu	$3,$3,$5
	dsra	$4,32
	sll	$6,$5
	srl	$2,$3
	sll	$4,$5
	or	$2,$4
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1416:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1418, @object
__pool___ashldi3_1418:
	.align	2
$L1418:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1418, @object
__pend___ashldi3_1418:
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	mips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,64
	move	$3,$6
	and	$3,$2
	addiu	$sp,-24
	beqz	$3,$L1420
	move	$2,$5
	dsll	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1420:
	beqz	$6,$L1423
	subu	$2,$2,$6
	move	$3,$5
	dsrl	$5,$2
	move	$2,$4
	dsll	$2,$6
	dsll	$3,$6
	or	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1423:
	move	$2,$4
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	mips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1426
	move	$2,$4
	dsra	$2,32
	dsra	$4,63
	sra	$2,$5
	move	$6,$4
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1426:
	move	$2,$4
	beqz	$5,$L1432
	dsra	$2,32
	subu	$3,$3,$5
	sll	$4,$4,0
	move	$6,$2
	srl	$4,$5
	sll	$2,$3
	or	$2,$4
	sra	$6,$5
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1432:
	jr	$31
	.type	__pool___ashrdi3_1431, @object
__pool___ashrdi3_1431:
	.align	2
$L1431:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1431, @object
__pend___ashrdi3_1431:
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	mips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,64
	move	$2,$6
	and	$2,$3
	addiu	$sp,-24
	beqz	$2,$L1434
	move	$2,$4
	dsra	$4,$6
	dsra	$2,63
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1434:
	move	$2,$4
	beqz	$6,$L1437
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	dsra	$2,$6
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1437:
	move	$4,$5
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	dsll	$2,$4,56
	dsrl	$3,56
	or	$3,$2
	move	$2,$4
	li	$5,65280
	dsrl	$2,40
	and	$2,$5
	or	$3,$2
	ld	$5,$L1441
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L1442
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L1443
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L1444
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1445
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1441, @object
__pool___bswapdi2_1441:
	.align	3
$L1441:
	.dword	16711680
$L1442:
	.dword	4278190080
$L1443:
	.dword	1095216660480
$L1444:
	.dword	280375465082880
$L1445:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1441, @object
__pend___bswapdi2_1441:
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sll	$3,$4,24
	srl	$2,$4,24
	or	$2,$3
	li	$5,65280
	srl	$3,$4,8
	and	$3,$5
	or	$2,$3
	lw	$3,$L1448
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1448, @object
__pool___bswapsi2_1448:
	.align	2
$L1448:
	.word	16711680
	.type	__pend___bswapsi2_1448, @object
__pend___bswapsi2_1448:
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	mips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,$L1453
	li	$5,8
	sltu	$4,$2
	move	$3,$24
	sll	$3,$3,4
	li	$2,16
	subu	$2,$2,$3
	srl	$4,$2
	li	$2,65280
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,3
	subu	$5,$5,$2
	srl	$4,$5
	addu	$3,$2,$3
	li	$2,240
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,2
	li	$5,4
	subu	$5,$5,$2
	srl	$4,$5
	addu	$6,$2,$3
	li	$2,12
	and	$2,$4
	sltu	$2,1
	move	$5,$24
	sll	$5,$5,1
	li	$2,2
	subu	$3,$2,$5
	srl	$4,$3
	li	$7,1
	srl	$3,$4,1
	and	$3,$7
	li	$7,1
	xor	$3,$7
	zeb	$3
	beqz	$3,$L1450
	subu	$2,$2,$4
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1450:
	addu	$5,$5,$6
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1453, @object
__pool___clzsi2_1453:
	.align	2
$L1453:
	.word	65536
	.type	__pend___clzsi2_1453, @object
__pend___clzsi2_1453:
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	mips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sltu	$4,1
	lw	$2,$L1458
	sd	$16,40($sp)
	move	$16,$24
	move	$28,$2
	sw	$2,32($sp)
	addiu	$2,$16,-1
	sd	$31,48($sp)
	and	$2,$4
	beqz	$16,$L1455
	move	$4,$5
$L1456:
	move	$5,$28
	lw	$5,%call16(__clzdi2)($5)
	or	$4,$2
	move	$25,$5
	.set	noreorder
	.set	nomacro
	jalr	$5
	sll	$16,$16,6
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	addu	$2,$16,$2
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L1455:
	li	$4,0
	b	$L1456
	.type	__pool___clzti2_1458, @object
__pool___clzti2_1458:
	.align	2
$L1458:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1458, @object
__pend___clzti2_1458:
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
	dsra	$2,32
	dsra	$3,32
	slt	$2,$3
	sll	$7,$2,0
	sll	$6,$3,0
	btnez	$L1463
	slt	$6,$7
	btnez	$L1462
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1463
	sltu	$5,$4
	btnez	$L1464
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1463:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1462:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1464:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
	dsra	$2,32
	dsra	$3,32
	slt	$2,$3
	sll	$7,$2,0
	sll	$6,$3,0
	btnez	$L1467
	slt	$6,$7
	btnez	$L1468
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1469
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1467:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1469:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1468:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	mips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,$6
	btnez	$L1474
	slt	$6,$4
	btnez	$L1473
	sltu	$5,$7
	btnez	$L1474
	sltu	$7,$5
	btnez	$L1475
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1474:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1473:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1475:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	zeh	$2
	sltu	$2,1
	move	$3,$24
	sll	$3,$3,4
	srl	$4,$3
	move	$2,$4
	zeb	$2
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,3
	srl	$4,$2
	addu	$3,$2,$3
	li	$2,15
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,2
	srl	$4,$2
	addu	$5,$2,$3
	li	$2,3
	move	$3,$4
	and	$3,$2
	sltu	$3,1
	move	$3,$24
	sll	$3,$3,1
	srl	$4,$3
	and	$4,$2
	not	$2,$4
	li	$6,1
	and	$2,$6
	srl	$4,$4,1
	li	$6,2
	subu	$4,$6,$4
	neg	$2,$2
	and	$2,$4
	addu	$3,$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$3
	.set	macro
	.set	reorder

	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	mips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	lw	$2,$L1481
	sltu	$5,1
	move	$28,$2
	sd	$16,40($sp)
	sw	$2,32($sp)
	sd	$31,48($sp)
	move	$2,$5
	move	$16,$24
	beqz	$5,$L1479
	li	$4,0
$L1479:
	addiu	$5,$16,-1
	and	$5,$2
	move	$2,$28
	lw	$2,%call16(__ctzdi2)($2)
	or	$4,$5
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sll	$16,$16,6
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	addu	$2,$16,$2
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool___ctzti2_1481, @object
__pool___ctzti2_1481:
	.align	2
$L1481:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1481, @object
__pend___ctzti2_1481:
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	lw	$2,$L1488
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	sd	$31,40($sp)
	move	$2,$28
	bnez	$5,$L1483
	bnez	$4,$L1487
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1483:
	lw	$2,%call16(__ctzdi2)($2)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1487:
	lw	$2,%call16(__ctzdi2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,65
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___ffsti2_1488, @object
__pool___ffsti2_1488:
	.align	2
$L1488:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1488, @object
__pend___ffsti2_1488:
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	mips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1490
	dsrl	$4,32
	sll	$2,$4,0
	srl	$2,$5
	li	$6,0
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1490:
	move	$2,$4
	beqz	$5,$L1496
	dsrl	$2,32
	sll	$2,$2,0
	subu	$3,$3,$5
	sll	$4,$4,0
	move	$6,$2
	srl	$4,$5
	sll	$2,$3
	or	$2,$4
	srl	$6,$5
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1496:
	jr	$31
	.type	__pool___lshrdi3_1495, @object
__pool___lshrdi3_1495:
	.align	2
$L1495:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1495, @object
__pend___lshrdi3_1495:
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	mips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,64
	move	$2,$6
	and	$2,$3
	addiu	$sp,-24
	beqz	$2,$L1498
	dsrl	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1498:
	move	$2,$4
	beqz	$6,$L1501
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	dsrl	$2,$6
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1501:
	move	$4,$5
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	mips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	li	$7,65535
	move	$2,$5
	sd	$17,8($sp)
	move	$17,$4
	and	$17,$7
	and	$2,$7
	mult	$17,$2
	srl	$4,$4,8
	srl	$4,$4,8
	mflo	$6
	mult	$2,$4
	sd	$16,0($sp)
	mflo	$3
	srl	$16,$6,8
	srl	$16,$16,8
	srl	$5,$5,8
	srl	$5,$5,8
	addu	$3,$3,$16
	mult	$17,$5
	sll	$16,$3,8
	and	$6,$7
	sll	$16,$16,8
	addu	$2,$6,$16
	mflo	$6
	srl	$16,$16,8
	mult	$4,$5
	srl	$16,$16,8
	addu	$6,$6,$16
	mflo	$4
	and	$2,$7
	srl	$3,$3,8
	sll	$7,$6,8
	sll	$7,$7,8
	srl	$3,$3,8
	srl	$6,$6,8
	addu	$2,$2,$7
	addu	$3,$3,$4
	srl	$6,$6,8
	addu	$3,$3,$6
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$2,32
	ld	$17,8($sp)
	ld	$16,0($sp)
	or	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	mips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sll	$7,$5,0
	sd	$16,0($sp)
	sll	$16,$4,0
	sd	$17,8($sp)
	move	$2,$16
	li	$17,65535
	move	$3,$7
	and	$2,$17
	and	$3,$17
	mult	$2,$3
	move	$12,$4
	srl	$4,$16,8
	srl	$4,$4,8
	move	$11,$2
	mflo	$2
	mult	$3,$4
	srl	$6,$2,8
	mflo	$3
	srl	$6,$6,8
	addu	$6,$3,$6
	sll	$3,$6,8
	sll	$3,$3,8
	and	$2,$17
	move	$8,$3
	addu	$3,$2,$3
	move	$2,$8
	srl	$2,$2,8
	srl	$2,$2,8
	move	$8,$2
	srl	$2,$7,8
	srl	$2,$2,8
	move	$9,$2
	move	$10,$4
	move	$2,$11
	move	$4,$9
	mult	$2,$4
	move	$4,$8
	mflo	$2
	and	$3,$17
	addu	$2,$2,$4
	sll	$17,$2,8
	sll	$17,$17,8
	move	$4,$10
	addu	$3,$3,$17
	move	$17,$9
	mult	$4,$17
	srl	$6,$6,8
	mflo	$17
	srl	$6,$6,8
	srl	$2,$2,8
	addu	$6,$6,$17
	srl	$2,$2,8
	dsra	$5,32
	mult	$16,$5
	addu	$6,$6,$2
	move	$4,$12
	dsll	$3,$3,32
	dsll	$6,$6,32
	dsra	$4,32
	dsrl	$3,32
	or	$3,$6
	mflo	$2
	mult	$7,$4
	move	$5,$3
	mflo	$4
	dsra	$5,32
	addu	$2,$2,$5
	addu	$2,$2,$4
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$2,$2,32
	ld	$17,8($sp)
	ld	$16,0($sp)
	or	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	mips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00010000,-8
	.fmask	0x00000000,0
	sll	$7,$4,0
	sll	$3,$5,0
	multu	$7,$3
	dsrl	$4,32
	mflo	$6
	sll	$4,$4,0
	mfhi	$2
	dsll	$6,$6,32
	multu	$3,$4
	dsll	$2,$2,32
	dsrl	$6,32
	or	$6,$2
	dsrl	$5,32
	mflo	$2
	sll	$5,$5,0
	mfhi	$3
	dsll	$2,$2,32
	multu	$7,$5
	dsll	$3,$3,32
	dsrl	$2,32
	addiu	$sp,-32
	mfhi	$7
	or	$2,$3
	mflo	$3
	multu	$4,$5
	sd	$16,24($sp)
	move	$16,$6
	mflo	$4
	dsrl	$16,32
	mfhi	$5
	daddu	$2,$2,$16
	dsll	$3,$3,32
	dsll	$16,$2,32
	dsll	$7,$7,32
	dsrl	$3,32
	dsll	$4,$4,32
	dsrl	$16,32
	or	$3,$7
	dsll	$5,$5,32
	dsrl	$4,32
	daddu	$3,$3,$16
	or	$4,$5
	dsll	$6,$6,32
	dsrl	$2,32
	dsll	$7,$3,32
	daddu	$2,$2,$4
	dsrl	$3,32
	dsrl	$6,32
	daddu	$2,$2,$3
	daddu	$6,$6,$7
	sd	$6,16($sp)
	sd	$2,8($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	ld	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,32
	.set	macro
	.set	reorder

	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	mips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,40,$31		# vars= 16, regs= 2/0, args= 0, gp= 8
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	sll	$2,$5,0
	sll	$3,$7,0
	multu	$2,$3
	addiu	$sp,-40
	sd	$16,24($sp)
	mflo	$16
	move	$9,$2
	mfhi	$2
	dsll	$16,$16,32
	dsll	$2,$2,32
	dsrl	$16,32
	or	$16,$2
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	multu	$3,$2
	move	$8,$2
	mflo	$2
	mfhi	$3
	dsll	$2,$2,32
	sd	$17,32($sp)
	dsll	$3,$3,32
	move	$17,$16
	dsrl	$2,32
	dsrl	$17,32
	or	$2,$3
	daddu	$2,$2,$17
	dsll	$3,$2,32
	move	$17,$7
	dsrl	$3,32
	dsrl	$17,32
	move	$10,$3
	sll	$17,$17,0
	move	$3,$9
	multu	$3,$17
	move	$11,$4
	mflo	$3
	mfhi	$4
	dsll	$3,$3,32
	dsll	$4,$4,32
	dsrl	$3,32
	or	$3,$4
	move	$4,$10
	daddu	$3,$3,$4
	dsll	$16,$16,32
	dsll	$4,$3,32
	dsrl	$16,32
	daddu	$16,$16,$4
	move	$4,$8
	multu	$4,$17
	sd	$16,16($sp)
	mfhi	$17
	mflo	$16
	dmult	$5,$6
	dsll	$16,$16,32
	dsll	$17,$17,32
	dsrl	$16,32
	or	$16,$17
	dsrl	$2,32
	daddu	$2,$2,$16
	dsrl	$3,32
	daddu	$2,$2,$3
	mflo	$3
	ld	$17,32($sp)
	daddu	$2,$3,$2
	move	$3,$11
	dmult	$7,$3
	ld	$16,24($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,8($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	mips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$2,$4
	.set	macro
	.set	reorder

	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	mips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,0
	dsubu	$5,$3,$5
	sltu	$3,$5
	move	$2,$24
	dsubu	$3,$3,$4
	dsubu	$2,$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$3,$5
	.set	macro
	.set	reorder

	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	mips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsra	$2,32
	sll	$4,$4,0
	xor	$4,$2
	srl	$3,$4,8
	srl	$3,$3,8
	xor	$3,$4
	srl	$2,$3,8
	xor	$2,$3
	srl	$3,$2,4
	xor	$3,$2
	li	$2,15
	and	$3,$2
	li	$2,27030
	sra	$2,$3
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	mips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	xor	$5,$4
	move	$2,$5
	dsra	$2,32
	sll	$5,$5,0
	xor	$5,$2
	srl	$3,$5,8
	srl	$3,$3,8
	xor	$3,$5
	srl	$2,$3,8
	xor	$2,$3
	srl	$3,$2,4
	xor	$3,$2
	li	$2,15
	and	$3,$2
	li	$2,27030
	sra	$2,$3
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	mips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$2,$4,8
	srl	$2,$2,8
	xor	$2,$4
	srl	$4,$2,8
	xor	$4,$2
	srl	$3,$4,4
	xor	$3,$4
	li	$2,15
	and	$3,$2
	li	$2,27030
	sra	$2,$3
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	ld	$3,$L1518
	move	$2,$4
	dsrl	$2,1
	and	$2,$3
	dsubu	$4,$4,$2
	ld	$3,$L1519
	move	$2,$4
	dsrl	$2,2
	and	$4,$3
	and	$2,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1520
	and	$3,$2
	move	$2,$3
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
	addu	$2,$2,$3
	srl	$3,$2,8
	srl	$3,$3,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	li	$3,127
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___popcountdi2_1518, @object
__pool___popcountdi2_1518:
	.align	3
$L1518:
	.dword	6148914691236517205
$L1519:
	.dword	3689348814741910323
$L1520:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1518, @object
__pend___popcountdi2_1518:
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$3,$L1523
	srl	$2,$4,1
	and	$2,$3
	subu	$4,$4,$2
	lw	$2,$L1524
	srl	$3,$4,2
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1525
	and	$2,$3
	srl	$3,$2,8
	srl	$3,$3,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	li	$3,63
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___popcountsi2_1523, @object
__pool___popcountsi2_1523:
	.align	2
$L1523:
	.word	1431655765
$L1524:
	.word	858993459
$L1525:
	.word	252645135
	.type	__pend___popcountsi2_1523, @object
__pend___popcountsi2_1523:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$5
	ld	$6,$L1528
	dsll	$2,$4,63
	dsrl	$3,1
	or	$2,$3
	and	$2,$6
	move	$3,$4
	dsubu	$2,$5,$2
	dsrl	$3,1
	and	$3,$6
	sltu	$5,$2
	move	$5,$24
	dsubu	$4,$4,$3
	dsubu	$4,$4,$5
	move	$5,$2
	ld	$6,$L1529
	dsll	$3,$4,62
	dsrl	$5,2
	or	$3,$5
	and	$3,$6
	move	$5,$4
	and	$2,$6
	daddu	$2,$3,$2
	dsrl	$5,2
	and	$5,$6
	sltu	$2,$3
	and	$4,$6
	move	$3,$24
	daddu	$4,$5,$4
	daddu	$4,$3,$4
	move	$5,$2
	dsll	$3,$4,60
	dsrl	$5,4
	or	$3,$5
	daddu	$2,$3,$2
	move	$5,$4
	sltu	$2,$3
	dsrl	$5,4
	daddu	$5,$5,$4
	move	$3,$24
	ld	$4,$L1530
	daddu	$3,$3,$5
	and	$2,$4
	and	$3,$4
	daddu	$3,$3,$2
	move	$2,$3
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
	addu	$2,$2,$3
	srl	$3,$2,8
	srl	$3,$3,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.type	__pool___popcountti2_1528, @object
__pool___popcountti2_1528:
	.align	3
$L1528:
	.dword	6148914691236517205
$L1529:
	.dword	3689348814741910323
$L1530:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1528, @object
__pend___popcountti2_1528:
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	# Stub function for __powidf2 (double)
	.section	.mips16.fn.__powidf2,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___powidf2
	.type	__fn_stub___powidf2, @function
__fn_stub___powidf2:
	.option	pic0
	la	$25,__powidf2
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub___powidf2
	__fn_local___powidf2 = __powidf2
	.text
	.set	mips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sw	$5,80($sp)
	lw	$2,$L1539
	lw	$3,80($sp)
	move	$28,$2
	sw	$2,32($sp)
	li	$2,1
	and	$2,$3
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	move	$17,$28
	move	$8,$4
	beqz	$2,$L1537
	ld	$2,$L1540
	move	$16,$3
	sd	$2,40($sp)
$L1534:
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,40($sp)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	ld	$2,72($sp)
	move	$28,$6
	move	$8,$2
$L1532:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1533
$L1535:
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$8,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L1534
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1535
$L1533:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1531
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1540
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1531:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L1537:
	ld	$2,$L1540
	lw	$16,80($sp)
	sd	$2,40($sp)
	b	$L1532
	.type	__pool___powidf2_1539, @object
__pool___powidf2_1539:
	.align	2
$L1539:
	.word	__gnu_local_gp
	.align	3
$L1540:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1539, @object
__pend___powidf2_1539:
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	# Stub function for __powisf2 (float)
	.section	.mips16.fn.__powisf2,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___powisf2
	.type	__fn_stub___powisf2, @function
__fn_stub___powisf2:
	.option	pic0
	la	$25,__powisf2
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub___powisf2
	__fn_local___powisf2 = __powisf2
	.text
	.set	mips16
	.set	nomicromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sw	$5,80($sp)
	lw	$2,$L1549
	lw	$3,80($sp)
	move	$28,$2
	sw	$2,32($sp)
	li	$2,1
	and	$2,$3
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	move	$17,$28
	move	$8,$4
	beqz	$2,$L1547
	lw	$2,$L1550
	move	$16,$3
	sw	$2,40($sp)
$L1544:
	lw	$2,%call16(__mips16_mulsf3)($17)
	lw	$4,40($sp)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$5,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	lw	$2,72($sp)
	move	$28,$6
	move	$8,$2
$L1542:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1543
$L1545:
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$8,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L1544
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1545
$L1543:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1541
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1550
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1541:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,40($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L1547:
	lw	$2,$L1550
	lw	$16,80($sp)
	sw	$2,40($sp)
	b	$L1542
	.type	__pool___powisf2_1549, @object
__pool___powisf2_1549:
	.align	2
$L1549:
	.word	__gnu_local_gp
$L1550:
	.word	1065353216
	.type	__pend___powisf2_1549, @object
__pend___powisf2_1549:
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	move	$2,$5
	dsrl	$3,32
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
	sltu	$3,$2
	btnez	$L1555
	sltu	$2,$3
	btnez	$L1554
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1555
	sltu	$5,$4
	btnez	$L1556
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1555:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1554:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1556:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	move	$2,$5
	dsrl	$3,32
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
	sltu	$3,$2
	btnez	$L1559
	sltu	$2,$3
	btnez	$L1560
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1561
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1559:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1561:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1560:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,$6
	btnez	$L1566
	sltu	$6,$4
	btnez	$L1565
	sltu	$5,$7
	btnez	$L1566
	sltu	$7,$5
	btnez	$L1567
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1566:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1565:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1567:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
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
	.globl	__mips16_divsf3
	.globl	__mips16_divdf3
	.globl	__ctzdi2
	.globl	__mips16_fix_truncsfsi
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__mips16_floatunsisf
	.globl	__mips16_floatunsidf
	.globl	__clzdi2
	.globl	__mips16_muldf3
	.globl	__mips16_nedf2
	.globl	__mips16_adddf3
	.globl	__mips16_mulsf3
	.globl	__mips16_nesf2
	.globl	__mips16_addsf3
	.globl	__mips16_floatsidf
	.globl	__mips16_lesf2
	.globl	__mips16_ledf2
	.globl	__mips16_gesf2
	.globl	__mips16_ltsf2
	.globl	__mips16_gedf2
	.globl	__mips16_ltdf2
	.globl	__mips16_subsf3
	.globl	__mips16_gtsf2
	.globl	__mips16_subdf3
	.globl	__mips16_gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
