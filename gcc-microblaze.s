	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	swi	r6,r1,24
	swi	r7,r1,28
	lwi	r4,r1,24
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	bgei	r18,$L2
	lwi	r4,r1,24
	lwi	r3,r1,28
	addk	r3,r4,r3
	swi	r3,r1,12
	lwi	r4,r1,20
	lwi	r3,r1,28
	addk	r3,r4,r3
	swi	r3,r1,4
	bri	$L3
$L4:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,-1
	swi	r3,r1,4
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,28
	addik	r3,r3,-1
	swi	r3,r1,28
$L3:
	lwi	r3,r1,28
	bnei	r3,$L4
	bri	$L5
$L2:
	lwi	r4,r1,24
	lwi	r3,r1,20
	xor	r3,r4,r3
	beqi	r3,$L5
	lwi	r3,r1,20
	swi	r3,r1,8
	bri	$L6
$L7:
	lwi	r4,r1,24
	addik	r3,r4,1
	swi	r3,r1,24
	lwi	r3,r1,8
	addik	r5,r3,1
	swi	r5,r1,8
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,28
	addik	r3,r3,-1
	swi	r3,r1,28
$L6:
	lwi	r3,r1,28
	bnei	r3,$L7
$L5:
	lwi	r3,r1,20
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memmove
$Lfe1:
	.size	memmove,$Lfe1-memmove
	.align	2
	.globl	memccpy
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	swi	r8,r1,24
	lwi	r3,r1,20
	andi	r3,r3,0x00ff
	swi	r3,r1,4
	bri	$L11
$L13:
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
	lwi	r3,r1,16
	addik	r3,r3,1
	swi	r3,r1,16
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
$L11:
	lwi	r3,r1,24
	beqi	r3,$L12
	lwi	r3,r1,16
	lbui	r4,r3,0
	lwi	r3,r1,12
	sbi	r4,r3,0
	lwi	r3,r1,12
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,4
	xor	r3,r3,r4
	bnei	r3,$L13
$L12:
	lwi	r3,r1,24
	beqi	r3,$L14
	lwi	r3,r1,12
	addik	r3,r3,1
	bri	$L15
$L14:
	addk	r3,r0,r0
$L15:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memccpy
$Lfe2:
	.size	memccpy,$Lfe2-memccpy
	.align	2
	.globl	memchr
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,16
	andi	r3,r3,0x00ff
	swi	r3,r1,4
	bri	$L18
$L20:
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
	lwi	r3,r1,20
	addik	r3,r3,-1
	swi	r3,r1,20
$L18:
	lwi	r3,r1,20
	beqi	r3,$L19
	lwi	r3,r1,12
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,4
	xor	r3,r3,r4
	bnei	r3,$L20
$L19:
	lwi	r3,r1,20
	beqi	r3,$L21
	lwi	r3,r1,12
	bri	$L23
$L21:
	addk	r3,r0,r0
$L23:
	nop
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memchr
$Lfe3:
	.size	memchr,$Lfe3-memchr
	.align	2
	.globl	memcmp
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L26
$L28:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L26:
	lwi	r3,r1,12
	beqi	r3,$L27
	lwi	r3,r1,4
	lbui	r4,r3,0
	lwi	r3,r1,8
	lbui	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L28
$L27:
	lwi	r3,r1,12
	beqi	r3,$L29
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
	bri	$L31
$L29:
	addk	r3,r0,r0
$L31:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memcmp
$Lfe4:
	.size	memcmp,$Lfe4-memcmp
	.align	2
	.globl	memcpy
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L33
$L34:
	lwi	r4,r1,16
	addik	r3,r4,1
	swi	r3,r1,16
	lwi	r3,r1,4
	addik	r5,r3,1
	swi	r5,r1,4
	lbui	r4,r4,0
	sbi	r4,r3,0
	lwi	r3,r1,20
	addik	r3,r3,-1
	swi	r3,r1,20
$L33:
	lwi	r3,r1,20
	bnei	r3,$L34
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memcpy
$Lfe5:
	.size	memcpy,$Lfe5-memcpy
	.align	2
	.globl	memrchr
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,16
	andi	r3,r3,0x00ff
	swi	r3,r1,4
	bri	$L38
$L40:
	lwi	r4,r1,12
	lwi	r3,r1,20
	addk	r3,r4,r3
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,4
	xor	r3,r3,r4
	bnei	r3,$L38
	lwi	r4,r1,12
	lwi	r3,r1,20
	addk	r3,r4,r3
	bri	$L39
$L38:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L40
	addk	r3,r0,r0
$L39:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memrchr
$Lfe6:
	.size	memrchr,$Lfe6-memrchr
	.align	2
	.globl	memset
	.ent	memset
	.type	memset, @function
memset:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L43
$L44:
	lwi	r3,r1,16
	andi	r4,r3,0x00ff
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,20
	addik	r3,r3,-1
	swi	r3,r1,20
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L43:
	lwi	r3,r1,20
	bnei	r3,$L44
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memset
$Lfe7:
	.size	memset,$Lfe7-memset
	.align	2
	.globl	stpcpy
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L48
$L49:
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L48:
	lwi	r3,r1,8
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L49
	lwi	r3,r1,4
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	stpcpy
$Lfe8:
	.size	stpcpy,$Lfe8-stpcpy
	.align	2
	.globl	strchrnul
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	lwi	r3,r1,16
	andi	r3,r3,0x00ff
	swi	r3,r1,4
	bri	$L52
$L54:
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
$L52:
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r3,r3
	beqi	r3,$L53
	lwi	r3,r1,12
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,4
	xor	r3,r3,r4
	bnei	r3,$L54
$L53:
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strchrnul
$Lfe9:
	.size	strchrnul,$Lfe9-strchrnul
	.align	2
	.globl	strchr
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
$L60:
	lbui	r4,r3,0
	sext8	r4,r4
	addk	r5,r4,r0
	lwi	r4,r1,8
	xor	r4,r4,r5
	beqi	r4,$L61
	addk	r4,r3,r0
	addik	r3,r4,1
	lbui	r4,r4,0
	sext8	r4,r4
	bnei	r4,$L60
	addk	r3,r0,r0
	bri	$L59
$L61:
	nop
$L59:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strchr
$Lfe10:
	.size	strchr,$Lfe10-strchr
	.align	2
	.globl	strcmp
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L63
$L65:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L63:
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,8
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L64
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L65
$L64:
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strcmp
$Lfe11:
	.size	strcmp,$Lfe11-strcmp
	.align	2
	.globl	strlen
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L68
$L69:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L68:
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L69
	lwi	r4,r1,4
	lwi	r3,r1,12
	rsubk	r3,r3,r4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strlen
$Lfe12:
	.size	strlen,$Lfe12-strlen
	.align	2
	.globl	strncmp
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,4
	bnei	r3,$L75
	addk	r3,r0,r0
	bri	$L74
$L77:
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
	lwi	r3,r1,16
	addik	r3,r3,1
	swi	r3,r1,16
	lwi	r3,r1,4
	addik	r3,r3,-1
	swi	r3,r1,4
$L75:
	lwi	r3,r1,12
	lbui	r3,r3,0
	beqi	r3,$L76
	lwi	r3,r1,16
	lbui	r3,r3,0
	beqi	r3,$L76
	lwi	r3,r1,4
	beqi	r3,$L76
	lwi	r3,r1,12
	lbui	r4,r3,0
	lwi	r3,r1,16
	lbui	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L77
$L76:
	lwi	r3,r1,12
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,16
	lbui	r3,r3,0
	rsubk	r3,r3,r4
$L74:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strncmp
$Lfe13:
	.size	strncmp,$Lfe13-strncmp
	.align	2
	.globl	swab
	.ent	swab
	.type	swab, @function
swab:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L80
$L81:
	lwi	r3,r1,4
	addik	r3,r3,1
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,8
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,1
	lwi	r4,r1,4
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,2
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r3,r3,2
	swi	r3,r1,4
	lwi	r3,r1,12
	addik	r3,r3,-2
	swi	r3,r1,12
$L80:
	lwi	r4,r1,12
	addik	r3,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L81
	nop
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	swab
$Lfe14:
	.size	swab,$Lfe14-swab
	.align	2
	.globl	isalpha
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	ori	r3,r3,32
	addik	r4,r3,-97
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L83
	addk	r5,r0,r0
$L83:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isalpha
$Lfe15:
	.size	isalpha,$Lfe15-isalpha
	.align	2
	.globl	isascii
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r5,r0,1	# 0x1
	addik	r3,r0,127	# 0x7f
	cmpu	r18,r4,r3
	bgei	r18,$L86
	addk	r5,r0,r0
$L86:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isascii
$Lfe16:
	.size	isascii,$Lfe16-isascii
	.align	2
	.globl	isblank
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	xori	r3,r3,32
	beqi	r3,$L89
	lwi	r3,r1,4
	xori	r3,r3,9
	bnei	r3,$L90
$L89:
	addik	r3,r0,1	# 0x1
	bri	$L92
$L90:
	addk	r3,r0,r0
$L92:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isblank
$Lfe17:
	.size	isblank,$Lfe17-isblank
	.align	2
	.globl	iscntrl
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L94
	lwi	r3,r1,4
	xori	r3,r3,127
	bnei	r3,$L95
$L94:
	addik	r3,r0,1	# 0x1
	bri	$L97
$L95:
	addk	r3,r0,r0
$L97:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iscntrl
$Lfe18:
	.size	iscntrl,$Lfe18-iscntrl
	.align	2
	.globl	isdigit
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-48
	addik	r5,r0,1	# 0x1
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L99
	addk	r5,r0,r0
$L99:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isdigit
$Lfe19:
	.size	isdigit,$Lfe19-isdigit
	.align	2
	.globl	isgraph
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-33
	addik	r5,r0,1	# 0x1
	addik	r3,r0,93	# 0x5d
	cmpu	r18,r4,r3
	bgei	r18,$L102
	addk	r5,r0,r0
$L102:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isgraph
$Lfe20:
	.size	isgraph,$Lfe20-isgraph
	.align	2
	.globl	islower
	.ent	islower
	.type	islower, @function
islower:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-97
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L105
	addk	r5,r0,r0
$L105:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	islower
$Lfe21:
	.size	islower,$Lfe21-islower
	.align	2
	.globl	isprint
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-32
	addik	r5,r0,1	# 0x1
	addik	r3,r0,94	# 0x5e
	cmpu	r18,r4,r3
	bgei	r18,$L108
	addk	r5,r0,r0
$L108:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isprint
$Lfe22:
	.size	isprint,$Lfe22-isprint
	.align	2
	.globl	isspace
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	xori	r3,r3,32
	beqi	r3,$L111
	lwi	r3,r1,4
	addik	r4,r3,-9
	addik	r3,r0,4	# 0x4
	cmpu	r18,r4,r3
	blti	r18,$L112
$L111:
	addik	r3,r0,1	# 0x1
	bri	$L114
$L112:
	addk	r3,r0,r0
$L114:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isspace
$Lfe23:
	.size	isspace,$Lfe23-isspace
	.align	2
	.globl	isupper
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-65
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L116
	addk	r5,r0,r0
$L116:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isupper
$Lfe24:
	.size	isupper,$Lfe24-isupper
	.align	2
	.globl	iswcntrl
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L119
	lwi	r3,r1,4
	addik	r4,r3,-127
	addik	r3,r0,32	# 0x20
	cmpu	r18,r4,r3
	bgei	r18,$L119
	lwi	r3,r1,4
	addik	r4,r3,-8232
	addik	r3,r0,1	# 0x1
	cmpu	r18,r4,r3
	bgei	r18,$L119
	lwi	r3,r1,4
	addik	r4,r3,-65529
	addik	r3,r0,2	# 0x2
	cmpu	r18,r4,r3
	blti	r18,$L120
$L119:
	addik	r3,r0,1	# 0x1
	bri	$L122
$L120:
	addk	r3,r0,r0
$L122:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswcntrl
$Lfe25:
	.size	iswcntrl,$Lfe25-iswcntrl
	.align	2
	.globl	iswdigit
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-48
	addik	r5,r0,1	# 0x1
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L124
	addk	r5,r0,r0
$L124:
	andi	r3,r5,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswdigit
$Lfe26:
	.size	iswdigit,$Lfe26-iswdigit
	.align	2
	.globl	iswprint
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r4,r3
	blti	r18,$L127
	lwi	r3,r1,4
	addik	r3,r3,1
	andi	r4,r3,127 #and1
	addik	r5,r0,1	# 0x1
	addik	r3,r0,32	# 0x20
	cmpu	r18,r4,r3
	blti	r18,$L128
	addk	r5,r0,r0
$L128:
	andi	r3,r5,0x00ff
	bri	$L129
$L127:
	lwi	r4,r1,4
	addik	r3,r0,8231	# 0x2027
	cmpu	r18,r4,r3
	bgei	r18,$L130
	lwi	r3,r1,4
	addik	r4,r3,-8234
	addik	r3,r0,47061
	cmpu	r18,r4,r3
	bgei	r18,$L130
	lwi	r3,r1,4
	addik	r4,r3,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	blti	r18,$L131
$L130:
	addik	r3,r0,1	# 0x1
	bri	$L129
$L131:
	lwi	r3,r1,4
	addik	r4,r3,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L132
	lwi	r3,r1,4
	andi	r3,r3,65534 #and2
	xori	r3,r3,65534
	bnei	r3,$L133
$L132:
	addk	r3,r0,r0
	bri	$L129
$L133:
	addik	r3,r0,1	# 0x1
$L129:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswprint
$Lfe27:
	.size	iswprint,$Lfe27-iswprint
	.align	2
	.globl	iswxdigit
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L135
	lwi	r3,r1,4
	ori	r3,r3,32
	addik	r4,r3,-97
	addik	r3,r0,5	# 0x5
	cmpu	r18,r4,r3
	blti	r18,$L136
$L135:
	addik	r3,r0,1	# 0x1
	bri	$L138
$L136:
	addk	r3,r0,r0
$L138:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswxdigit
$Lfe28:
	.size	iswxdigit,$Lfe28-iswxdigit
	.align	2
	.globl	toascii
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	andi	r3,r3,127 #and1
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	toascii
$Lfe29:
	.size	toascii,$Lfe29-toascii
	.align	2
	.globl	fdim
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L153
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L144
$L153:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L154
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L144
$L154:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L155
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__subdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	bri	$L144
$L155:
	addk	r4,r0,r0
	addk	r5,r0,r0
$L144:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fdim
$Lfe30:
	.size	fdim,$Lfe30-fdim
	.align	2
	.globl	fdimf
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,32
	lwi	r5,r1,32
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L169
	lwi	r3,r1,32
	bri	$L160
$L169:
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L170
	lwi	r3,r1,36
	bri	$L160
$L170:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L171
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	bri	$L160
$L171:
	addk	r3,r0,r0
$L160:
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fdimf
$Lfe31:
	.size	fdimf,$Lfe31-fdimf
	.align	2
	.globl	fmax
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L188
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L176
$L188:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L189
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L176
$L189:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L179
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L180
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L176
$L180:
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L176
$L179:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L190
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L176
$L190:
	lwi	r4,r1,32
	lwi	r5,r1,36
$L176:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmax
$Lfe32:
	.size	fmax,$Lfe32-fmax
	.align	2
	.globl	fmaxf
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,32
	lwi	r5,r1,32
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L207
	lwi	r3,r1,36
	bri	$L195
$L207:
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L208
	lwi	r3,r1,32
	bri	$L195
$L208:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,36
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L198
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L199
	lwi	r3,r1,36
	bri	$L195
$L199:
	lwi	r3,r1,32
	bri	$L195
$L198:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L209
	lwi	r3,r1,36
	bri	$L195
$L209:
	lwi	r3,r1,32
$L195:
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmaxf
$Lfe33:
	.size	fmaxf,$Lfe33-fmaxf
	.align	2
	.globl	fmaxl
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L226
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L214
$L226:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L227
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L214
$L227:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L217
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L218
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L214
$L218:
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L214
$L217:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L228
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L214
$L228:
	lwi	r4,r1,32
	lwi	r5,r1,36
$L214:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmaxl
$Lfe34:
	.size	fmaxl,$Lfe34-fmaxl
	.align	2
	.globl	fmin
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L245
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L233
$L245:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L246
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L233
$L246:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L236
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L237
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L233
$L237:
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L233
$L236:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L247
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L233
$L247:
	lwi	r4,r1,40
	lwi	r5,r1,44
$L233:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmin
$Lfe35:
	.size	fmin,$Lfe35-fmin
	.align	2
	.globl	fminf
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,32
	lwi	r5,r1,32
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L264
	lwi	r3,r1,36
	bri	$L252
$L264:
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L265
	lwi	r3,r1,32
	bri	$L252
$L265:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,36
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L255
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L256
	lwi	r3,r1,32
	bri	$L252
$L256:
	lwi	r3,r1,36
	bri	$L252
$L255:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L266
	lwi	r3,r1,32
	bri	$L252
$L266:
	lwi	r3,r1,36
$L252:
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fminf
$Lfe36:
	.size	fminf,$Lfe36-fminf
	.align	2
	.globl	fminl
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L283
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L271
$L283:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L284
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L271
$L284:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L274
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L275
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L271
$L275:
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L271
$L274:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L285
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L271
$L285:
	lwi	r4,r1,40
	lwi	r5,r1,44
$L271:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fminl
$Lfe37:
	.size	fminl,$Lfe37-fminl
	.rodata
	.align	2
	.type	digits,@object
	.size	digits,65
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.text
	.align	2
	.globl	l64a
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	lwi	r3,r1,16
	swi	r3,r1,8
	addik	r3,r0,s.0
	swi	r3,r1,4
	bri	$L288
$L289:
	lwi	r3,r1,8
	andi	r3,r3,63 #and1
	lbui	r3,r3,digits
	sext8	r4,r3
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r4,r1,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	swi	r3,r1,8
$L288:
	lwi	r3,r1,8
	bnei	r3,$L289
	lwi	r3,r1,4
	sbi	r0,r3,0
	addik	r3,r0,s.0
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	l64a
$Lfe38:
	.size	l64a,$Lfe38-l64a
	.bss
	.lcomm	seed,8,4
	.type	seed, @object
	.text
	.align	2
	.globl	srand
	.ent	srand
	.type	srand, @function
srand:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r3,r3,-1
	addk	r4,r3,r0
	addk	r3,r0,r0
	swi	r3,r0,seed
	swi	r4,r0,seed+4
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	srand
$Lfe39:
	.size	srand,$Lfe39-srand
	.align	2
	.globl	rand
	.ent	rand
	.type	rand, @function
rand:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	lwi	r4,r0,seed
	lwi	r5,r0,seed+4
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	addk	r3,r4,r0
	addk	r22,r5,r0
	addk	r23,r3,r0
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000001 #li => la
	add	r5,r23,r5
	addc	r4,r22,r4
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	lwi	r3,r0,seed
	srl	r3,r3
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rand
$Lfe40:
	.size	rand,$Lfe40-rand
	.align	2
	.globl	insque
	.ent	insque
	.type	insque, @function
insque:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,8
	bnei	r3,$L297
	lwi	r3,r1,4
	swi	r0,r3,4
	lwi	r3,r1,4
	lwi	r4,r3,4
	lwi	r3,r1,4
	swi	r4,r3,0
	bri	$L296
$L297:
	lwi	r3,r1,8
	lwi	r4,r3,0
	lwi	r3,r1,4
	swi	r4,r3,0
	lwi	r3,r1,4
	lwi	r4,r1,8
	swi	r4,r3,4
	lwi	r3,r1,8
	lwi	r4,r1,4
	swi	r4,r3,0
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L296
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,4
	swi	r4,r3,4
$L296:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	insque
$Lfe41:
	.size	insque,$Lfe41-insque
	.align	2
	.globl	remque
	.ent	remque
	.type	remque, @function
remque:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L300
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,4
	lwi	r4,r4,4
	swi	r4,r3,4
$L300:
	lwi	r3,r1,4
	lwi	r3,r3,4
	beqi	r3,$L302
	lwi	r3,r1,4
	lwi	r3,r3,4
	lwi	r4,r1,4
	lwi	r4,r4,0
	swi	r4,r3,0
$L302:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	remque
$Lfe42:
	.size	remque,$Lfe42-remque
	.align	2
	.globl	lsearch
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	r1,44,r15		# vars= 12, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,40
	swi	r5,r1,48
	swi	r6,r1,52
	swi	r7,r1,56
	swi	r8,r1,60
	swi	r9,r1,64
	lwi	r19,r1,60
	addk	r3,r19,r0
	addik	r3,r19,-1
	swi	r3,r1,32
	lwi	r3,r1,56
	lwi	r3,r3,0
	swi	r3,r1,36
	swi	r0,r1,28
	bri	$L304
$L307:
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,52
	addk	r4,r3,r4
	lwi	r3,r1,64
	addk	r6,r4,r0
	lwi	r5,r1,48
	brald	r15,r3
	nop		# Unfilled delay slot

	bnei	r3,$L305
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,52
	addk	r3,r3,r4
	bri	$L306
$L305:
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
$L304:
	lwi	r4,r1,28
	lwi	r3,r1,36
	cmpu	r18,r3,r4
	blti	r18,$L307
	lwi	r3,r1,36
	addik	r4,r3,1
	lwi	r3,r1,56
	swi	r4,r3,0
	lwi	r6,r1,36
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,52
	addk	r3,r3,r4
	lwi	r7,r1,60
	lwi	r6,r1,48
	addk	r5,r3,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L306:
	lwi	r15,r1,0
	lwi	r19,r1,40
	addik	r1,r1,44
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	lsearch
$Lfe43:
	.size	lsearch,$Lfe43-lsearch
	.align	2
	.globl	lfind
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	r1,44,r15		# vars= 12, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,40
	swi	r5,r1,48
	swi	r6,r1,52
	swi	r7,r1,56
	swi	r8,r1,60
	swi	r9,r1,64
	lwi	r19,r1,60
	addk	r3,r19,r0
	addik	r3,r19,-1
	swi	r3,r1,32
	lwi	r3,r1,56
	lwi	r3,r3,0
	swi	r3,r1,36
	swi	r0,r1,28
	bri	$L310
$L313:
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,52
	addk	r4,r3,r4
	lwi	r3,r1,64
	addk	r6,r4,r0
	lwi	r5,r1,48
	brald	r15,r3
	nop		# Unfilled delay slot

	bnei	r3,$L311
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,52
	addk	r3,r3,r4
	bri	$L312
$L311:
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
$L310:
	lwi	r4,r1,28
	lwi	r3,r1,36
	cmpu	r18,r3,r4
	blti	r18,$L313
	addk	r3,r0,r0
$L312:
	lwi	r15,r1,0
	lwi	r19,r1,40
	addik	r1,r1,44
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	lfind
$Lfe44:
	.size	lfind,$Lfe44-lfind
	.align	2
	.globl	abs
	.ent	abs
	.type	abs, @function
abs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	lwi	r3,r1,4
	xor	r3,r4,r3
	rsubk	r3,r4,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	abs
$Lfe45:
	.size	abs,$Lfe45-abs
	.align	2
	.globl	atoi
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r0,r1,28
	swi	r0,r1,32
	bri	$L318
$L319:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
$L318:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L319
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L320
	xori	r3,r3,45
	bnei	r3,$L322
	addik	r3,r0,1	# 0x1
	swi	r3,r1,32
$L320:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
	bri	$L322
$L323:
	lwi	r4,r1,28
	addk	r3,r4,r0
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,40
	addik	r4,r3,1
	swi	r4,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r5
	swi	r3,r1,28
$L322:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L323
	lwi	r3,r1,32
	bnei	r3,$L324
	lwi	r3,r1,28
	rsubk	r3,r3,r0
	bri	$L326
$L324:
	lwi	r3,r1,28
$L326:
	nop
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	atoi
$Lfe46:
	.size	atoi,$Lfe46-atoi
	.align	2
	.globl	atol
	.ent	atol
	.type	atol, @function
atol:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r0,r1,28
	swi	r0,r1,32
	bri	$L329
$L330:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
$L329:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L330
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L331
	xori	r3,r3,45
	bnei	r3,$L333
	addik	r3,r0,1	# 0x1
	swi	r3,r1,32
$L331:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
	bri	$L333
$L334:
	lwi	r4,r1,28
	addk	r3,r4,r0
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,40
	addik	r4,r3,1
	swi	r4,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r5
	swi	r3,r1,28
$L333:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L334
	lwi	r3,r1,32
	bnei	r3,$L335
	lwi	r3,r1,28
	rsubk	r3,r3,r0
	bri	$L337
$L335:
	lwi	r3,r1,28
$L337:
	nop
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,48,r15		# vars= 12, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r22,r1,40
	swi	r23,r1,44
	swi	r5,r1,52
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	swi	r4,r1,28
	swi	r5,r1,32
	swi	r0,r1,36
	bri	$L340
$L341:
	lwi	r3,r1,52
	addik	r3,r3,1
	swi	r3,r1,52
$L340:
	lwi	r3,r1,52
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L341
	lwi	r3,r1,52
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L342
	xori	r3,r3,45
	bnei	r3,$L344
	addik	r3,r0,1	# 0x1
	swi	r3,r1,36
$L342:
	lwi	r3,r1,52
	addik	r3,r3,1
	swi	r3,r1,52
	bri	$L344
$L345:
	lwi	r6,r1,28
	lwi	r7,r1,32
	addk	r4,r6,r0
	addk	r5,r7,r0
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r0,r4
	addk	r22,r4,r4
	addk	r22,r22,r22
	or	r22,r3,r22
	addk	r23,r0,r5
	addk	r23,r5,r5
	addk	r23,r23,r23
	add	r5,r23,r7
	addc	r4,r22,r6
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	addk	r3,r4,r4
	or	r3,r6,r3
	addk	r6,r5,r5
	addk	r4,r3,r0
	addk	r5,r6,r0
	addk	r8,r4,r0
	addk	r9,r5,r0
	lwi	r3,r1,52
	addik	r4,r3,1
	swi	r4,r1,52
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	addk	r7,r0,r3
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r5,r7,r9
	rsubc	r4,r6,r8
	swi	r4,r1,28
	swi	r5,r1,32
$L344:
	lwi	r3,r1,52
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L345
	lwi	r3,r1,36
	bnei	r3,$L346
	lwi	r4,r1,28
	lwi	r5,r1,32
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	bri	$L348
$L346:
	lwi	r4,r1,28
	lwi	r5,r1,32
$L348:
	nop
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,40
	lwi	r23,r1,44
	addik	r1,r1,48
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	swi	r8,r1,52
	swi	r9,r1,56
	bri	$L351
$L356:
	lwi	r3,r1,48
	srl	r3,r3
	lwi	r6,r1,52
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,44
	addk	r3,r3,r4
	swi	r3,r1,28
	lwi	r3,r1,56
	lwi	r6,r1,28
	lwi	r5,r1,40
	brald	r15,r3
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,32
	bgei	r3,$L352
	lwi	r3,r1,48
	srl	r3,r3
	swi	r3,r1,48
	bri	$L351
$L352:
	lwi	r3,r1,32
	blei	r3,$L354
	lwi	r4,r1,28
	lwi	r3,r1,52
	addk	r3,r4,r3
	swi	r3,r1,44
	lwi	r3,r1,48
	srl	r3,r3
	lwi	r4,r1,48
	rsubk	r3,r3,r4
	addik	r3,r3,-1
	swi	r3,r1,48
	bri	$L351
$L354:
	lwi	r3,r1,28
	bri	$L355
$L351:
	lwi	r3,r1,48
	bnei	r3,$L356
	addk	r3,r0,r0
$L355:
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r1,40,r15		# vars= 12, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r5,r1,44
	swi	r6,r1,48
	swi	r7,r1,52
	swi	r8,r1,56
	swi	r9,r1,60
	swi	r10,r1,64
	lwi	r3,r1,52
	swi	r3,r1,28
	bri	$L359
$L363:
	lwi	r3,r1,28
	sra	r3,r3
	lwi	r6,r1,56
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,48
	addk	r3,r3,r4
	swi	r3,r1,32
	lwi	r3,r1,60
	lwi	r7,r1,64
	lwi	r6,r1,32
	lwi	r5,r1,44
	brald	r15,r3
	nop		# Unfilled delay slot

	swi	r3,r1,36
	lwi	r3,r1,36
	bnei	r3,$L360
	lwi	r3,r1,32
	bri	$L361
$L360:
	lwi	r3,r1,36
	blei	r3,$L362
	lwi	r4,r1,32
	lwi	r3,r1,56
	addk	r3,r4,r3
	swi	r3,r1,48
	lwi	r3,r1,28
	addik	r3,r3,-1
	swi	r3,r1,28
$L362:
	lwi	r3,r1,28
	sra	r3,r3
	swi	r3,r1,28
$L359:
	lwi	r3,r1,28
	bnei	r3,$L363
	addk	r3,r0,r0
$L361:
	lwi	r15,r1,0
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	lwi	r6,r1,44
	lwi	r5,r1,40
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r19,r3,r0
	lwi	r3,r1,40
	lwi	r6,r1,44
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	swi	r19,r3,0
	lwi	r3,r1,36
	swi	r4,r3,4
	lwi	r3,r1,36
	lwi	r15,r1,0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	div
$Lfe51:
	.size	div,$Lfe51-div
	.align	2
	.globl	imaxabs
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,4
	addk	r9,r0,r3
	sra	r9,r3
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	lwi	r3,r1,4
	addk	r8,r0,r3
	sra	r8,r3
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	lwi	r3,r1,4
	xor	r10,r3,r8
	lwi	r3,r1,8
	xor	r11,r3,r9
	addk	r4,r10,r0
	addk	r5,r11,r0
	rsub	r11,r9,r5
	rsubc	r10,r8,r4
	addk	r3,r10,r0
	addk	r4,r11,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	imaxabs
$Lfe52:
	.size	imaxabs,$Lfe52-imaxabs
	.align	2
	.globl	imaxdiv
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	r1,52,r15		# vars= 16, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	swi	r7,r1,64
	swi	r8,r1,68
	swi	r9,r1,72
	lwi	r7,r1,68
	lwi	r8,r1,72
	lwi	r5,r1,60
	lwi	r6,r1,64
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	addk	r3,r4,r0
	addk	r22,r5,r0
	addk	r19,r3,r0
	lwi	r4,r1,60
	lwi	r5,r1,64
	lwi	r7,r1,68
	lwi	r8,r1,72
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	addk	r3,r4,r0
	addk	r4,r3,r0
	lwi	r3,r1,56
	swi	r22,r3,0
	swi	r19,r3,4
	lwi	r3,r1,56
	swi	r5,r3,8
	swi	r4,r3,12
	lwi	r3,r1,56
	lwi	r15,r1,0
	lwi	r19,r1,44
	lwi	r22,r1,48
	addik	r1,r1,52
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	imaxdiv
$Lfe53:
	.size	imaxdiv,$Lfe53-imaxdiv
	.align	2
	.globl	labs
	.ent	labs
	.type	labs, @function
labs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	lwi	r3,r1,4
	xor	r3,r4,r3
	rsubk	r3,r4,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	labs
$Lfe54:
	.size	labs,$Lfe54-labs
	.align	2
	.globl	ldiv
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	lwi	r6,r1,44
	lwi	r5,r1,40
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r19,r3,r0
	lwi	r3,r1,40
	lwi	r6,r1,44
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	swi	r19,r3,0
	lwi	r3,r1,36
	swi	r4,r3,4
	lwi	r3,r1,36
	lwi	r15,r1,0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldiv
$Lfe55:
	.size	ldiv,$Lfe55-ldiv
	.align	2
	.globl	llabs
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,4
	addk	r9,r0,r3
	sra	r9,r3
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	lwi	r3,r1,4
	addk	r8,r0,r3
	sra	r8,r3
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	lwi	r3,r1,4
	xor	r10,r3,r8
	lwi	r3,r1,8
	xor	r11,r3,r9
	addk	r4,r10,r0
	addk	r5,r11,r0
	rsub	r11,r9,r5
	rsubc	r10,r8,r4
	addk	r3,r10,r0
	addk	r4,r11,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	llabs
$Lfe56:
	.size	llabs,$Lfe56-llabs
	.align	2
	.globl	lldiv
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	r1,52,r15		# vars= 16, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	swi	r7,r1,64
	swi	r8,r1,68
	swi	r9,r1,72
	lwi	r7,r1,68
	lwi	r8,r1,72
	lwi	r5,r1,60
	lwi	r6,r1,64
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	addk	r3,r4,r0
	addk	r22,r5,r0
	addk	r19,r3,r0
	lwi	r4,r1,60
	lwi	r5,r1,64
	lwi	r7,r1,68
	lwi	r8,r1,72
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	addk	r3,r4,r0
	addk	r4,r3,r0
	lwi	r3,r1,56
	swi	r22,r3,0
	swi	r19,r3,4
	lwi	r3,r1,56
	swi	r5,r3,8
	swi	r4,r3,12
	lwi	r3,r1,56
	lwi	r15,r1,0
	lwi	r19,r1,44
	lwi	r22,r1,48
	addik	r1,r1,52
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	lldiv
$Lfe57:
	.size	lldiv,$Lfe57-lldiv
	.align	2
	.globl	wcschr
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L384
$L386:
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
$L384:
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L385
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,8
	xor	r3,r4,r3
	bnei	r3,$L386
$L385:
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L387
	lwi	r3,r1,4
	bri	$L389
$L387:
	addk	r3,r0,r0
$L389:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcschr
$Lfe58:
	.size	wcschr,$Lfe58-wcschr
	.align	2
	.globl	wcscmp
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L391
$L393:
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,4
	swi	r3,r1,8
$L391:
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	xor	r3,r4,r3
	bnei	r3,$L392
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L392
	lwi	r3,r1,8
	lwi	r3,r3,0
	bnei	r3,$L393
$L392:
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L394
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L395
	addk	r5,r0,r0
$L395:
	andi	r3,r5,0x00ff
	bri	$L397
$L394:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L397:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcscmp
$Lfe59:
	.size	wcscmp,$Lfe59-wcscmp
	.align	2
	.globl	wcscpy
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	lwi	r3,r1,12
	swi	r3,r1,4
$L399:
	lwi	r4,r1,16
	addik	r3,r4,4
	swi	r3,r1,16
	lwi	r3,r1,4
	addik	r5,r3,4
	swi	r5,r1,4
	lwi	r4,r4,0
	swi	r4,r3,0
	lwi	r3,r3,0
	bnei	r3,$L399
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcscpy
$Lfe60:
	.size	wcscpy,$Lfe60-wcscpy
	.align	2
	.globl	wcslen
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L403
$L404:
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
$L403:
	lwi	r3,r1,4
	lwi	r3,r3,0
	bnei	r3,$L404
	lwi	r4,r1,4
	lwi	r3,r1,12
	rsubk	r3,r3,r4
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	addk	r3,r4,r0
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcslen
$Lfe61:
	.size	wcslen,$Lfe61-wcslen
	.align	2
	.globl	wcsncmp
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L408
$L410:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,4
	swi	r3,r1,8
$L408:
	lwi	r3,r1,12
	beqi	r3,$L409
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	xor	r3,r4,r3
	bnei	r3,$L409
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L409
	lwi	r3,r1,8
	lwi	r3,r3,0
	bnei	r3,$L410
$L409:
	lwi	r3,r1,12
	beqi	r3,$L411
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L412
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L413
	addk	r5,r0,r0
$L413:
	andi	r3,r5,0x00ff
	bri	$L416
$L412:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L416
$L411:
	addk	r3,r0,r0
$L416:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcsncmp
$Lfe62:
	.size	wcsncmp,$Lfe62-wcsncmp
	.align	2
	.globl	wmemchr
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L418
$L420:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
$L418:
	lwi	r3,r1,12
	beqi	r3,$L419
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,8
	xor	r3,r4,r3
	bnei	r3,$L420
$L419:
	lwi	r3,r1,12
	beqi	r3,$L421
	lwi	r3,r1,4
	bri	$L423
$L421:
	addk	r3,r0,r0
$L423:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemchr
$Lfe63:
	.size	wmemchr,$Lfe63-wmemchr
	.align	2
	.globl	wmemcmp
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L425
$L427:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,4
	swi	r3,r1,8
$L425:
	lwi	r3,r1,12
	beqi	r3,$L426
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L427
$L426:
	lwi	r3,r1,12
	beqi	r3,$L428
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L429
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L430
	addk	r5,r0,r0
$L430:
	andi	r3,r5,0x00ff
	bri	$L433
$L429:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L433
$L428:
	addk	r3,r0,r0
$L433:
	nop
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemcmp
$Lfe64:
	.size	wmemcmp,$Lfe64-wmemcmp
	.align	2
	.globl	wmemcpy
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L435
$L436:
	lwi	r4,r1,16
	addik	r3,r4,4
	swi	r3,r1,16
	lwi	r3,r1,4
	addik	r5,r3,4
	swi	r5,r1,4
	lwi	r4,r4,0
	swi	r4,r3,0
$L435:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L436
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemcpy
$Lfe65:
	.size	wmemcpy,$Lfe65-wmemcpy
	.align	2
	.globl	wmemmove
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r4,r1,12
	lwi	r3,r1,16
	xor	r3,r4,r3
	bnei	r3,$L440
	lwi	r3,r1,12
	bri	$L441
$L440:
	lwi	r4,r1,12
	lwi	r3,r1,16
	rsubk	r4,r3,r4
	lwi	r3,r1,20
	addk	r3,r3,r3
	addk	r3,r3,r3
	cmpu	r18,r3,r4
	bgei	r18,$L442
	bri	$L443
$L444:
	lwi	r3,r1,20
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,16
	addk	r4,r3,r4
	lwi	r3,r1,20
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,12
	addk	r3,r3,r5
	lwi	r4,r4,0
	swi	r4,r3,0
$L443:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L444
	bri	$L445
$L442:
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L446
$L447:
	lwi	r4,r1,16
	addik	r3,r4,4
	swi	r3,r1,16
	lwi	r3,r1,4
	addik	r5,r3,4
	swi	r5,r1,4
	lwi	r4,r4,0
	swi	r4,r3,0
$L446:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L447
$L445:
	lwi	r3,r1,12
$L441:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemmove
$Lfe66:
	.size	wmemmove,$Lfe66-wmemmove
	.align	2
	.globl	wmemset
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L450
$L451:
	lwi	r3,r1,4
	addik	r4,r3,4
	swi	r4,r1,4
	lwi	r4,r1,16
	swi	r4,r3,0
$L450:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L451
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemset
$Lfe67:
	.size	wmemset,$Lfe67-wmemset
	.align	2
	.globl	bcopy
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	bgei	r18,$L455
	lwi	r4,r1,16
	lwi	r3,r1,24
	addk	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,20
	lwi	r3,r1,24
	addk	r3,r4,r3
	swi	r3,r1,8
	bri	$L456
$L457:
	lwi	r3,r1,4
	addik	r3,r3,-1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,-1
	swi	r3,r1,8
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,8
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L456:
	lwi	r3,r1,24
	bnei	r3,$L457
	bri	$L461
$L455:
	lwi	r4,r1,16
	lwi	r3,r1,20
	xor	r3,r4,r3
	beqi	r3,$L461
	bri	$L459
$L460:
	lwi	r4,r1,16
	addik	r3,r4,1
	swi	r3,r1,16
	lwi	r3,r1,20
	addik	r5,r3,1
	swi	r5,r1,20
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L459:
	lwi	r3,r1,24
	bnei	r3,$L460
$L461:
	nop
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bcopy
$Lfe68:
	.size	bcopy,$Lfe68-bcopy
	.align	2
	.globl	rotl64
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	lwi	r5,r1,4
	lwi	r6,r1,8
	lwi	r3,r1,12
	andi	r3,r3,32 #and1
	beqi	r3,$L464
	lwi	r4,r1,12
	andi	r18,r4,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r8,r0,r0
	bri	$L465
$L464:
	srl	r7,r6
	lwi	r3,r1,12
	xori	r3,r3,-1
	andi	r18,r3,31
	addk	r4,r0,r7
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	lwi	r7,r1,12
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r4,r3
	lwi	r4,r1,12
	andi	r18,r4,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
$L465:
	lwi	r4,r1,12
	rsubk	r4,r4,r0
	andi	r4,r4,63 #and1
	andi	r4,r4,32 #and1
	beqi	r4,$L466
	lwi	r4,r1,12
	rsubk	r6,r4,r0
	andi	r6,r6,63 #and1
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r7,r0,r0
	bri	$L467
$L466:
	addk	r7,r5,r5
	lwi	r4,r1,12
	rsubk	r4,r4,r0
	andi	r4,r4,63 #and1
	xori	r4,r4,-1
	andi	r18,r4,31
	addk	r9,r0,r7
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	lwi	r4,r1,12
	rsubk	r7,r4,r0
	andi	r7,r7,63 #and1
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r9,r4
	lwi	r6,r1,12
	rsubk	r6,r6,r0
	andi	r6,r6,63 #and1
	andi	r18,r6,31
	addk	r7,r0,r5
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r7,r7
$L467:
	or	r5,r7,r3
	or	r3,r4,r8
	addk	r7,r5,r0
	addk	r4,r3,r0
	addk	r3,r7,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl64
$Lfe69:
	.size	rotl64,$Lfe69-rotl64
	.align	2
	.globl	rotr64
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	lwi	r6,r1,4
	lwi	r5,r1,8
	lwi	r3,r1,12
	andi	r3,r3,32 #and1
	beqi	r3,$L470
	lwi	r3,r1,12
	andi	r18,r3,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r8,r0,r0
	bri	$L471
$L470:
	addk	r7,r6,r6
	lwi	r3,r1,12
	xori	r4,r3,-1
	andi	r18,r4,31
	addk	r3,r0,r7
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	lwi	r7,r1,12
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r3,r4
	lwi	r3,r1,12
	andi	r18,r3,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
$L471:
	lwi	r3,r1,12
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r3,r3,32 #and1
	beqi	r3,$L472
	lwi	r3,r1,12
	rsubk	r6,r3,r0
	andi	r6,r6,63 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r7,r0,r0
	bri	$L473
$L472:
	srl	r7,r5
	lwi	r3,r1,12
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	xori	r3,r3,-1
	andi	r18,r3,31
	addk	r9,r0,r7
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	lwi	r3,r1,12
	rsubk	r7,r3,r0
	andi	r7,r7,63 #and1
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r9,r3
	lwi	r6,r1,12
	rsubk	r6,r6,r0
	andi	r6,r6,63 #and1
	andi	r18,r6,31
	addk	r7,r0,r5
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r7,r7,r7
$L473:
	or	r3,r3,r8
	or	r4,r7,r4
	addk	r7,r4,r0
	addk	r4,r7,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr64
$Lfe70:
	.size	rotr64,$Lfe70-rotr64
	.align	2
	.globl	rotl32
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r1,8
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl32
$Lfe71:
	.size	rotl32,$Lfe71-rotl32
	.align	2
	.globl	rotr32
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r1,8
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr32
$Lfe72:
	.size	rotr32,$Lfe72-rotr32
	.align	2
	.globl	rotl_sz
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r1,8
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl_sz
$Lfe73:
	.size	rotl_sz,$Lfe73-rotl_sz
	.align	2
	.globl	rotr_sz
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r1,8
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr_sz
$Lfe74:
	.size	rotr_sz,$Lfe74-rotr_sz
	.align	2
	.globl	rotl16
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	shi	r3,r1,4
	lhui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r4,r5,0xffff
	lhui	r5,r1,4
	lwi	r3,r1,8
	addik	r6,r0,16	# 0x10
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,0xffff
	or	r3,r4,r3
	andi	r3,r3,0xffff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl16
$Lfe75:
	.size	rotl16,$Lfe75-rotl16
	.align	2
	.globl	rotr16
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	shi	r3,r1,4
	lhui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,0xffff
	lhui	r5,r1,4
	lwi	r3,r1,8
	addik	r6,r0,16	# 0x10
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r3,r6,0xffff
	or	r3,r4,r3
	andi	r3,r3,0xffff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr16
$Lfe76:
	.size	rotr16,$Lfe76-rotr16
	.align	2
	.globl	rotl8
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	sbi	r3,r1,4
	lbui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r4,r5,0x00ff
	lbui	r5,r1,4
	lwi	r3,r1,8
	addik	r6,r0,8	# 0x8
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,0x00ff
	or	r3,r4,r3
	andi	r3,r3,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl8
$Lfe77:
	.size	rotl8,$Lfe77-rotl8
	.align	2
	.globl	rotr8
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	sbi	r3,r1,4
	lbui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,0x00ff
	lbui	r5,r1,4
	lwi	r3,r1,8
	addik	r6,r0,8	# 0x8
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r3,r6,0x00ff
	or	r3,r4,r3
	andi	r3,r3,0x00ff
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr8
$Lfe78:
	.size	rotr8,$Lfe78-rotr8
	.align	2
	.globl	bswap_16
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	shi	r3,r1,12
	addik	r3,r0,255	# 0xff
	swi	r3,r1,4
	lhui	r4,r1,12
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	and	r3,r4,r3
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r4,r4,0xffff
	lwi	r3,r1,4
	andi	r5,r3,0xffff
	lhui	r3,r1,12
	and	r3,r5,r3
	andi	r3,r3,0xffff
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	andi	r3,r3,0xffff
	or	r3,r4,r3
	andi	r3,r3,0xffff
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bswap_16
$Lfe79:
	.size	bswap_16,$Lfe79-bswap_16
	.align	2
	.globl	bswap_32
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	addik	r3,r0,255	# 0xff
	swi	r3,r1,4
	lwi	r3,r1,4
	src	r4,r3
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	lwi	r3,r1,12
	and	r3,r4,r3
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,12
	and	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r4,r4,r3
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,12
	and	r3,r5,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	or	r4,r4,r3
	lwi	r5,r1,12
	lwi	r3,r1,4
	and	r5,r5,r3
	src	r3,r5
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r4,r3
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bswap_32
$Lfe80:
	.size	bswap_32,$Lfe80-bswap_32
	.align	2
	.globl	bswap_64
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	addik	r4,r0,0x00000000
	addik	r5,r0,0x000000ff #li => la
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,8
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	lwi	r4,r1,16
	and	r3,r4,r3
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r6,r0,r0
	lwi	r5,r1,8
	addk	r3,r0,r5
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	lwi	r5,r1,16
	and	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r5,r0,r0
	or	r7,r6,r5
	or	r5,r4,r3
	lwi	r3,r1,8
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r3,r0,r0
	lwi	r6,r1,16
	and	r4,r6,r4
	lwi	r6,r1,20
	and	r8,r6,r3
	addk	r6,r0,r4
	addk	r6,r4,r4
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r3,r0,r8
	srl	r3,r8
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r3,r6,r3
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r7,r7,r6
	or	r5,r5,r3
	lwi	r3,r1,8
	addk	r6,r3,r0
	addk	r3,r0,r0
	lwi	r4,r1,16
	and	r4,r4,r6
	lwi	r6,r1,20
	and	r8,r6,r3
	src	r6,r4
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	addk	r3,r0,r8
	srl	r3,r8
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r3,r6,r3
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r6,r7,r6
	or	r7,r5,r3
	lwi	r3,r1,8
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r5,r1,4
	src	r3,r5
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r4,r3
	lwi	r5,r1,8
	src	r4,r5
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	lwi	r5,r1,16
	and	r8,r5,r3
	lwi	r3,r1,20
	and	r4,r3,r4
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r3,r0,r8
	addk	r3,r8,r8
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	or	r3,r5,r3
	addk	r5,r0,r4
	addk	r5,r4,r4
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	or	r6,r6,r3
	or	r7,r7,r5
	lwi	r3,r1,8
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r5,r1,4
	addk	r3,r0,r5
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	or	r3,r4,r3
	lwi	r5,r1,8
	addk	r4,r0,r5
	addk	r4,r5,r5
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	lwi	r5,r1,16
	and	r8,r5,r3
	lwi	r3,r1,20
	and	r4,r3,r4
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	src	r3,r8
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r5,r3
	src	r5,r4
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	andi	r5,r5,-16777216
	or	r6,r6,r3
	or	r4,r7,r5
	lwi	r5,r1,8
	addk	r3,r0,r5
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	lwi	r5,r1,20
	and	r3,r5,r3
	addk	r5,r0,r3
	addk	r5,r3,r3
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r3,r0,r0
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r5,r1,20
	lwi	r3,r1,8
	and	r3,r5,r3
	src	r5,r3
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	andi	r5,r5,-16777216
	addk	r3,r0,r0
	or	r5,r6,r5
	or	r4,r4,r3
	addk	r3,r5,r0
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bswap_64
$Lfe81:
	.size	bswap_64,$Lfe81-bswap_64
	.align	2
	.globl	ffs
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r0,r1,4
	bri	$L501
$L504:
	lwi	r5,r1,12
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L502
	lwi	r3,r1,4
	addik	r3,r3,1
	bri	$L503
$L502:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L501:
	lwi	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L504
	addk	r3,r0,r0
$L503:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ffs
$Lfe82:
	.size	ffs,$Lfe82-ffs
	.align	2
	.globl	libiberty_ffs
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	bnei	r5,$L507
	addk	r19,r0,r0
	bri	$L508
$L507:
	addk	r3,r5,r0
	addik	r19,r0,1	# 0x1
	bri	$L509
$L510:
	sra	r3,r3
	addik	r19,r19,1
$L509:
	andi	r4,r3,1 #and1
	beqi	r4,$L510
	nop
$L508:
	addk	r3,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	libiberty_ffs
$Lfe83:
	.size	libiberty_ffs,$Lfe83-libiberty_ffs
	.rodata
	.align	2
$LC0:
	.long	-8388609
	.align	2
$LC1:
	.long	2139095039
	.text
	.align	2
	.globl	gl_isinff
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	lwi	r6,r0,$LC0
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L513
	lwi	r6,r0,$LC1
	lwi	r5,r1,32
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L518
$L513:
	addik	r3,r0,1	# 0x1
	bri	$L517
$L518:
	addk	r3,r0,r0
$L517:
	nop
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	gl_isinff
$Lfe84:
	.size	gl_isinff,$Lfe84-gl_isinff
	.rodata
	.align	2
$LC2:
	.long	-1048577
	.long	-1
	.align	2
$LC3:
	.long	2146435071
	.long	-1
	.text
	.align	2
	.globl	gl_isinfd
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L521
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L526
$L521:
	addik	r3,r0,1	# 0x1
	bri	$L525
$L526:
	addk	r3,r0,r0
$L525:
	nop
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	gl_isinfd
$Lfe85:
	.size	gl_isinfd,$Lfe85-gl_isinfd
	.rodata
	.align	2
$LC4:
	.long	-1048577
	.long	-1
	.align	2
$LC5:
	.long	2146435071
	.long	-1
	.text
	.align	2
	.globl	gl_isinfl
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L529
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L534
$L529:
	addik	r3,r0,1	# 0x1
	bri	$L533
$L534:
	addk	r3,r0,r0
$L533:
	nop
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	gl_isinfl
$Lfe86:
	.size	gl_isinfl,$Lfe86-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__floatsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r1,32
	swi	r4,r3,0
	swi	r5,r3,4
	nop
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	_Qp_itoq
$Lfe87:
	.size	_Qp_itoq,$Lfe87-_Qp_itoq
	.align	2
	.globl	ldexpf
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L539
	lwi	r3,r1,36
	addk	r6,r3,r0
	addk	r5,r3,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	lwi	r5,r1,36
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L539
	lwi	r3,r1,40
	bgei	r3,$L541
	addik	r3,r0,0x3f000000
	bri	$L542
$L541:
	addik	r3,r0,0x40000000
$L542:
	swi	r3,r1,28
$L545:
	lwi	r3,r1,40
	andi	r3,r3,1 #and1
	beqi	r3,$L543
	lwi	r6,r1,28
	lwi	r5,r1,36
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,36
$L543:
	lwi	r3,r1,40
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r1,40
	lwi	r3,r1,40
	beqi	r3,$L548
	lwi	r6,r1,28
	lwi	r5,r1,28
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,28
	bri	$L545
$L548:
	nop
$L539:
	lwi	r3,r1,36
	lwi	r15,r1,0
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldexpf
$Lfe88:
	.size	ldexpf,$Lfe88-ldexpf
	.align	2
	.globl	ldexp
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L551
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r7,r4,r0
	addk	r8,r5,r0
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L551
	lwi	r3,r1,48
	bgei	r3,$L553
	addik	r4,r0,0x3fe00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	bri	$L554
$L553:
	addik	r4,r0,0x40000000 
	addik	r5,r0,0x00000000 #Xfer Lo
$L554:
	swi	r4,r1,28
	swi	r5,r1,32
$L557:
	lwi	r3,r1,48
	andi	r3,r3,1 #and1
	beqi	r3,$L555
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,40
	swi	r5,r1,44
$L555:
	lwi	r3,r1,48
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r1,48
	lwi	r3,r1,48
	beqi	r3,$L560
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,28
	lwi	r6,r1,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,28
	swi	r5,r1,32
	bri	$L557
$L560:
	nop
$L551:
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldexp
$Lfe89:
	.size	ldexp,$Lfe89-ldexp
	.align	2
	.globl	ldexpl
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L563
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r7,r4,r0
	addk	r8,r5,r0
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L563
	lwi	r3,r1,48
	bgei	r3,$L565
	addik	r4,r0,0x3fe00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	bri	$L566
$L565:
	addik	r4,r0,0x40000000 
	addik	r5,r0,0x00000000 #Xfer Lo
$L566:
	swi	r4,r1,28
	swi	r5,r1,32
$L569:
	lwi	r3,r1,48
	andi	r3,r3,1 #and1
	beqi	r3,$L567
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,40
	swi	r5,r1,44
$L567:
	lwi	r3,r1,48
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r1,48
	lwi	r3,r1,48
	beqi	r3,$L572
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,28
	lwi	r6,r1,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,28
	swi	r5,r1,32
	bri	$L569
$L572:
	nop
$L563:
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldexpl
$Lfe90:
	.size	ldexpl,$Lfe90-ldexpl
	.align	2
	.globl	memxor
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L575
$L576:
	lwi	r3,r1,16
	addik	r4,r3,1
	swi	r4,r1,16
	lbui	r3,r3,0
	sext8	r5,r3
	lwi	r3,r1,4
	addik	r4,r3,1
	swi	r4,r1,4
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r4,r5,r4
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,20
	addik	r3,r3,-1
	swi	r3,r1,20
$L575:
	lwi	r3,r1,20
	bnei	r3,$L576
	lwi	r3,r1,12
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memxor
$Lfe91:
	.size	memxor,$Lfe91-memxor
	.align	2
	.globl	strncat
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	lwi	r5,r1,36
	brlid	r15,strlen
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	swi	r3,r1,28
	bri	$L580
$L582:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
	lwi	r3,r1,44
	addik	r3,r3,-1
	swi	r3,r1,44
$L580:
	lwi	r3,r1,44
	beqi	r3,$L581
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,28
	sbi	r4,r3,0
	lwi	r3,r1,28
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L582
$L581:
	lwi	r3,r1,44
	bnei	r3,$L583
	lwi	r3,r1,28
	sbi	r0,r3,0
$L583:
	lwi	r3,r1,36
	lwi	r15,r1,0
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strncat
$Lfe92:
	.size	strncat,$Lfe92-strncat
	.align	2
	.globl	strnlen
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	bri	$L587
$L592:
	nop
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L587:
	lwi	r4,r1,4
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L588
	lwi	r4,r1,12
	lwi	r3,r1,4
	addk	r3,r4,r3
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L592
$L588:
	lwi	r3,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strnlen
$Lfe93:
	.size	strnlen,$Lfe93-strnlen
	.align	2
	.globl	strpbrk
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	bri	$L595
$L599:
	lwi	r3,r1,16
	swi	r3,r1,4
	bri	$L596
$L598:
	lwi	r3,r1,4
	addik	r4,r3,1
	swi	r4,r1,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L596
	lwi	r3,r1,12
	bri	$L597
$L596:
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L598
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
$L595:
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L599
	addk	r3,r0,r0
$L597:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strpbrk
$Lfe94:
	.size	strpbrk,$Lfe94-strpbrk
	.align	2
	.globl	strrchr
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	swi	r6,r1,16
	swi	r0,r1,4
$L603:
	lbui	r4,r3,0
	sext8	r4,r4
	addk	r5,r4,r0
	lwi	r4,r1,16
	xor	r4,r4,r5
	bnei	r4,$L602
	swi	r3,r1,4
$L602:
	addk	r4,r3,r0
	addik	r3,r4,1
	lbui	r4,r4,0
	sext8	r4,r4
	bnei	r4,$L603
	lwi	r3,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strrchr
$Lfe95:
	.size	strrchr,$Lfe95-strrchr
	.align	2
	.globl	strstr
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	lwi	r5,r1,44
	brlid	r15,strlen
	nop		# Unfilled delay slot

	swi	r3,r1,28
	lwi	r3,r1,28
	bnei	r3,$L609
	lwi	r3,r1,40
	bri	$L608
$L611:
	lwi	r7,r1,28
	lwi	r6,r1,44
	lwi	r5,r1,32
	brlid	r15,strncmp
	nop		# Unfilled delay slot

	bnei	r3,$L610
	lwi	r3,r1,32
	bri	$L608
$L610:
	lwi	r3,r1,32
	addik	r3,r3,1
	swi	r3,r1,40
$L609:
	lwi	r3,r1,44
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r6,r3,r0
	lwi	r5,r1,40
	brlid	r15,strchr
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,32
	bnei	r3,$L611
	addk	r3,r0,r0
$L608:
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strstr
$Lfe96:
	.size	strstr,$Lfe96-strstr
	.align	2
	.globl	copysign
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	swi	r8,r1,52
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L614
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,48
	lwi	r6,r1,52
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	bgti	r3,$L616
$L614:
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L617
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,48
	lwi	r6,r1,52
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L617
$L616:
	lwi	r3,r1,40
	xori	r22,r3,-2147483648
	lwi	r23,r1,44
	bri	$L620
$L617:
	lwi	r22,r1,40
	lwi	r23,r1,44
$L620:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	copysign
$Lfe97:
	.size	copysign,$Lfe97-copysign
	.align	2
	.globl	memmem
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	swi	r8,r1,48
	lwi	r4,r1,40
	lwi	r3,r1,48
	rsubk	r3,r3,r4
	lwi	r4,r1,36
	addk	r3,r4,r3
	swi	r3,r1,28
	lwi	r3,r1,48
	bnei	r3,$L625
	lwi	r3,r1,36
	bri	$L626
$L625:
	addik	r5,r0,1	# 0x1
	lwi	r4,r1,40
	lwi	r3,r1,48
	cmpu	r18,r3,r4
	blti	r18,$L627
	addk	r5,r0,r0
$L627:
	andi	r3,r5,0x00ff
	beqi	r3,$L629
	addk	r3,r0,r0
	bri	$L626
$L631:
	lwi	r3,r1,36
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,44
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L630
	lwi	r3,r1,36
	addik	r4,r3,1
	lwi	r3,r1,44
	addik	r5,r3,1
	lwi	r3,r1,48
	addik	r3,r3,-1
	addk	r7,r3,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,memcmp
	nop		# Unfilled delay slot

	bnei	r3,$L630
	lwi	r3,r1,36
	bri	$L626
$L630:
	lwi	r3,r1,36
	addik	r3,r3,1
	swi	r3,r1,36
$L629:
	lwi	r4,r1,36
	lwi	r3,r1,28
	cmpu	r18,r4,r3
	bgei	r18,$L631
	addk	r3,r0,r0
$L626:
	lwi	r15,r1,0
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	lwi	r7,r1,40
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,memcpy
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,40
	addk	r3,r4,r3
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	mempcpy
$Lfe99:
	.size	mempcpy,$Lfe99-mempcpy
	.align	2
	.globl	frexp
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	r1,52,r15		# vars= 8, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r22,r1,36
	swi	r23,r1,40
	swi	r24,r1,44
	swi	r25,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	swi	r7,r1,64
	swi	r0,r1,32
	swi	r0,r1,28
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L637
	lwi	r3,r1,56
	xori	r24,r3,-2147483648
	lwi	r25,r1,60
	swi	r24,r1,56
	swi	r25,r1,60
	addik	r3,r0,1	# 0x1
	swi	r3,r1,28
$L637:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	blti	r3,$L654
	bri	$L641
$L642:
	lwi	r3,r1,32
	addik	r3,r3,1
	swi	r3,r1,32
	addik	r7,r0,0x40000000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,56
	swi	r5,r1,60
$L641:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	bgei	r3,$L642
	bri	$L643
$L654:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L643
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L643
	bri	$L646
$L647:
	lwi	r3,r1,32
	addik	r3,r3,-1
	swi	r3,r1,32
	lwi	r4,r1,56
	lwi	r5,r1,60
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,56
	swi	r5,r1,60
$L646:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L647
$L643:
	lwi	r3,r1,64
	lwi	r4,r1,32
	swi	r4,r3,0
	lwi	r3,r1,28
	beqi	r3,$L648
	lwi	r3,r1,56
	xori	r22,r3,-2147483648
	lwi	r23,r1,60
	swi	r22,r1,56
	swi	r23,r1,60
$L648:
	lwi	r4,r1,56
	lwi	r5,r1,60
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,36
	lwi	r23,r1,40
	lwi	r24,r1,44
	lwi	r25,r1,48
	addik	r1,r1,52
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	frexp
$Lfe100:
	.size	frexp,$Lfe100-frexp
	.align	2
	.globl	__muldi3
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	swi	r6,r1,28
	swi	r7,r1,32
	swi	r8,r1,36
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,24
	lwi	r5,r1,28
	swi	r4,r1,12
	swi	r5,r1,16
	bri	$L657
$L660:
	lwi	r3,r1,12
	andi	r5,r3,0 #and1
	lwi	r3,r1,16
	andi	r4,r3,1 #and1
	addk	r3,r5,r0
	or	r3,r3,r4
	beqi	r3,$L658
	lwi	r6,r1,4
	lwi	r7,r1,8
	lwi	r4,r1,32
	lwi	r5,r1,36
	add	r5,r7,r5
	addc	r4,r6,r4
	swi	r4,r1,4
	swi	r5,r1,8
$L658:
	lwi	r3,r1,36
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,32
	addk	r3,r3,r3
	or	r3,r4,r3
	lwi	r4,r1,36
	addk	r4,r4,r4
	swi	r3,r1,32
	swi	r4,r1,36
	lwi	r3,r1,12
	src	r4,r3
	src	r4,r4
	andi	r4,r4,-2147483648
	lwi	r3,r1,16
	srl	r3,r3
	or	r3,r4,r3
	lwi	r4,r1,12
	srl	r4,r4
	swi	r4,r1,12
	swi	r3,r1,16
$L657:
	lwi	r3,r1,12
	lwi	r4,r1,16
	or	r3,r3,r4
	bnei	r3,$L660
	lwi	r4,r1,4
	lwi	r5,r1,8
	addk	r3,r4,r0
	addk	r4,r5,r0
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__muldi3
$Lfe101:
	.size	__muldi3,$Lfe101-__muldi3
	.align	2
	.globl	udivmodsi4
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,4
	swi	r0,r1,8
	bri	$L664
$L666:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,4
	addk	r3,r3,r3
	swi	r3,r1,4
$L664:
	lwi	r4,r1,20
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L667
	lwi	r3,r1,4
	beqi	r3,$L667
	lwi	r3,r1,20
	bgei	r3,$L666
	bri	$L667
$L669:
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L668
	lwi	r4,r1,16
	lwi	r3,r1,20
	rsubk	r3,r3,r4
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,8
$L668:
	lwi	r3,r1,4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,20
	srl	r3,r3
	swi	r3,r1,20
$L667:
	lwi	r3,r1,4
	bnei	r3,$L669
	lwi	r3,r1,24
	beqi	r3,$L670
	lwi	r3,r1,16
	bri	$L671
$L670:
	lwi	r3,r1,8
$L671:
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	udivmodsi4
$Lfe102:
	.size	udivmodsi4,$Lfe102-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	addk	r3,r5,r0
	sbi	r5,r1,36
	lbui	r3,r1,36
	sext8	r3,r3
	bgei	r3,$L674
	lbui	r3,r1,36
	xori	r3,r3,-1
	sbi	r3,r1,36
$L674:
	lbui	r3,r1,36
	sext8	r3,r3
	bnei	r3,$L675
	addik	r3,r0,7	# 0x7
	bri	$L676
$L675:
	lbui	r3,r1,36
	sext8	r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	brlid	r15,__clzsi2
	nop		# Unfilled delay slot

	swi	r3,r1,28
	lwi	r3,r1,28
	addik	r3,r3,-1
$L676:
	lwi	r15,r1,0
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clrsbqi2
$Lfe103:
	.size	__clrsbqi2,$Lfe103-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	lwi	r3,r1,36
	bgei	r3,$L679
	lwi	r3,r1,36
	xori	r4,r3,-1
	lwi	r3,r1,40
	xori	r3,r3,-1
	swi	r4,r1,36
	swi	r3,r1,40
$L679:
	lwi	r3,r1,36
	lwi	r4,r1,40
	or	r3,r3,r4
	bnei	r3,$L681
	addik	r3,r0,63	# 0x3f
	bri	$L682
$L681:
	lwi	r4,r1,36
	lwi	r5,r1,40
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	swi	r3,r1,28
	lwi	r3,r1,28
	addik	r3,r3,-1
$L682:
	lwi	r15,r1,0
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clrsbdi2
$Lfe104:
	.size	__clrsbdi2,$Lfe104-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	bri	$L685
$L687:
	lwi	r3,r1,12
	andi	r3,r3,1 #and1
	beqi	r3,$L686
	lwi	r4,r1,4
	lwi	r3,r1,16
	addk	r3,r4,r3
	swi	r3,r1,4
$L686:
	lwi	r3,r1,12
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,16
	addk	r3,r3,r3
	swi	r3,r1,16
$L685:
	lwi	r3,r1,12
	bnei	r3,$L687
	lwi	r3,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulsi3
$Lfe105:
	.size	__mulsi3,$Lfe105-__mulsi3
	.align	2
	.globl	__cmovd
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	swi	r6,r1,24
	swi	r7,r1,28
	lwi	r4,r1,28
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,28
	andi	r3,r3,-8 #and1
	swi	r3,r1,8
	lwi	r4,r1,20
	lwi	r3,r1,24
	cmpu	r18,r3,r4
	blti	r18,$L691
	lwi	r4,r1,24
	lwi	r3,r1,28
	addk	r3,r4,r3
	lwi	r4,r1,20
	cmpu	r18,r4,r3
	bgei	r18,$L698
$L691:
	swi	r0,r1,4
	bri	$L693
$L694:
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,24
	addk	r4,r3,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,20
	addk	r3,r3,r5
	lwi	r5,r4,4
	lwi	r4,r4,0
	swi	r4,r3,0
	swi	r5,r3,4
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L693:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r3,r4
	blti	r18,$L694
	bri	$L695
$L696:
	lwi	r4,r1,24
	lwi	r3,r1,8
	addk	r4,r4,r3
	lwi	r5,r1,20
	lwi	r3,r1,8
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L695:
	lwi	r4,r1,28
	lwi	r3,r1,8
	cmpu	r18,r4,r3
	blti	r18,$L696
	bri	$L697
$L699:
	lwi	r4,r1,24
	lwi	r3,r1,28
	addk	r4,r4,r3
	lwi	r5,r1,20
	lwi	r3,r1,28
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L698:
	lwi	r3,r1,28
	addik	r4,r3,-1
	swi	r4,r1,28
	bnei	r3,$L699
	nop
$L697:
	nop
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmovd
$Lfe106:
	.size	__cmovd,$Lfe106-__cmovd
	.align	2
	.globl	__cmovh
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,24
	srl	r3,r3
	swi	r3,r1,8
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L702
	lwi	r4,r1,20
	lwi	r3,r1,24
	addk	r3,r4,r3
	lwi	r4,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L708
$L702:
	swi	r0,r1,4
	bri	$L704
$L705:
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,20
	addk	r4,r3,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,16
	addk	r3,r3,r5
	lhui	r4,r4,0
	sext16	r4,r4
	shi	r4,r3,0
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L704:
	lwi	r4,r1,4
	lwi	r3,r1,8
	cmpu	r18,r3,r4
	blti	r18,$L705
	lwi	r3,r1,24
	andi	r3,r3,1 #and1
	beqi	r3,$L707
	lwi	r3,r1,24
	addik	r3,r3,-1
	lwi	r4,r1,20
	addk	r4,r4,r3
	lwi	r3,r1,24
	addik	r3,r3,-1
	lwi	r5,r1,16
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	bri	$L707
$L709:
	lwi	r4,r1,20
	lwi	r3,r1,24
	addk	r4,r4,r3
	lwi	r5,r1,16
	lwi	r3,r1,24
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L708:
	lwi	r3,r1,24
	addik	r4,r3,-1
	swi	r4,r1,24
	bnei	r3,$L709
	nop
$L707:
	nop
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmovh
$Lfe107:
	.size	__cmovh,$Lfe107-__cmovh
	.align	2
	.globl	__cmovw
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	swi	r6,r1,24
	swi	r7,r1,28
	lwi	r4,r1,28
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,28
	andi	r3,r3,-4 #and1
	swi	r3,r1,8
	lwi	r4,r1,20
	lwi	r3,r1,24
	cmpu	r18,r3,r4
	blti	r18,$L712
	lwi	r4,r1,24
	lwi	r3,r1,28
	addk	r3,r4,r3
	lwi	r4,r1,20
	cmpu	r18,r4,r3
	bgei	r18,$L719
$L712:
	swi	r0,r1,4
	bri	$L714
$L715:
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,24
	addk	r4,r3,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,20
	addk	r3,r3,r5
	lwi	r4,r4,0
	swi	r4,r3,0
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L714:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r3,r4
	blti	r18,$L715
	bri	$L716
$L717:
	lwi	r4,r1,24
	lwi	r3,r1,8
	addk	r4,r4,r3
	lwi	r5,r1,20
	lwi	r3,r1,8
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L716:
	lwi	r4,r1,28
	lwi	r3,r1,8
	cmpu	r18,r4,r3
	blti	r18,$L717
	bri	$L718
$L720:
	lwi	r4,r1,24
	lwi	r3,r1,28
	addk	r4,r4,r3
	lwi	r5,r1,20
	lwi	r3,r1,28
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L719:
	lwi	r3,r1,28
	addik	r4,r3,-1
	swi	r4,r1,28
	bnei	r3,$L720
	nop
$L718:
	nop
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmovw
$Lfe108:
	.size	__cmovw,$Lfe108-__cmovw
	.align	2
	.globl	__modi
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r3,r1,32
	lwi	r6,r1,36
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__modi
$Lfe109:
	.size	__modi,$Lfe109-__modi
	.align	2
	.globl	__uitod
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	lwi	r5,r1,32
	brlid	r15,__floatunsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__uitod
$Lfe110:
	.size	__uitod,$Lfe110-__uitod
	.align	2
	.globl	__uitof
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	lwi	r5,r1,32
	brlid	r15,__floatunsisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__uitof
$Lfe111:
	.size	__uitof,$Lfe111-__uitof
	.align	2
	.globl	__ulltod
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__floatundidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ulltod
$Lfe112:
	.size	__ulltod,$Lfe112-__ulltod
	.align	2
	.globl	__ulltof
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__floatundisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ulltof
$Lfe113:
	.size	__ulltof,$Lfe113-__ulltof
	.align	2
	.globl	__umodi
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r3,r1,32
	lwi	r6,r1,36
	addk	r5,r3,r0
	brlid	r15,__umodsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__umodi
$Lfe114:
	.size	__umodi,$Lfe114-__umodi
	.align	2
	.globl	__clzhi2
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	shi	r5,r1,12
	swi	r0,r1,4
	bri	$L741
$L744:
	lhui	r5,r1,12
	lwi	r3,r1,4
	addik	r4,r0,15	# 0xf
	rsubk	r4,r3,r4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	bnei	r3,$L746
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L741:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L744
	bri	$L743
$L746:
	nop
$L743:
	lwi	r3,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clzhi2
$Lfe115:
	.size	__clzhi2,$Lfe115-__clzhi2
	.align	2
	.globl	__ctzhi2
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	shi	r5,r1,12
	swi	r0,r1,4
	bri	$L749
$L752:
	lhui	r5,r1,12
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	bnei	r3,$L754
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L749:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L752
	bri	$L751
$L754:
	nop
$L751:
	lwi	r3,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ctzhi2
$Lfe116:
	.size	__ctzhi2,$Lfe116-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	addik	r6,r0,0x47000000
	lwi	r5,r1,32
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	blti	r3,$L761
	addik	r6,r0,0x47000000
	lwi	r5,r1,32
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	bri	$L759
$L761:
	lwi	r5,r1,32
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

$L759:
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__fixunssfsi
$Lfe117:
	.size	__fixunssfsi,$Lfe117-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	addk	r3,r5,r0
	shi	r5,r1,16
	swi	r0,r1,8
	swi	r0,r1,4
	bri	$L764
$L766:
	lhui	r5,r1,16
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L765
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L765:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L764:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L766
	lwi	r3,r1,8
	andi	r3,r3,1 #and1
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__parityhi2
$Lfe118:
	.size	__parityhi2,$Lfe118-__parityhi2
	.align	2
	.globl	__popcounthi2
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	addk	r3,r5,r0
	shi	r5,r1,16
	swi	r0,r1,8
	swi	r0,r1,4
	bri	$L770
$L772:
	lhui	r5,r1,16
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L771
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L771:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L770:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L772
	lwi	r3,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__popcounthi2
$Lfe119:
	.size	__popcounthi2,$Lfe119-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	bri	$L776
$L778:
	lwi	r3,r1,12
	andi	r3,r3,1 #and1
	beqi	r3,$L777
	lwi	r4,r1,4
	lwi	r3,r1,16
	addk	r3,r4,r3
	swi	r3,r1,4
$L777:
	lwi	r3,r1,12
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,16
	addk	r3,r3,r3
	swi	r3,r1,16
$L776:
	lwi	r3,r1,12
	bnei	r3,$L778
	lwi	r3,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulsi3_iq2000
$Lfe120:
	.size	__mulsi3_iq2000,$Lfe120-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	lwi	r3,r1,12
	bnei	r3,$L784
	addk	r3,r0,r0
	bri	$L783
$L786:
	lwi	r3,r1,16
	andi	r3,r3,1 #and1
	beqi	r3,$L785
	lwi	r4,r1,4
	lwi	r3,r1,12
	addk	r3,r4,r3
	swi	r3,r1,4
$L785:
	lwi	r3,r1,12
	addk	r3,r3,r3
	swi	r3,r1,12
	lwi	r3,r1,16
	srl	r3,r3
	swi	r3,r1,16
$L784:
	lwi	r3,r1,16
	bnei	r3,$L786
	lwi	r3,r1,4
$L783:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulsi3_lm32
$Lfe121:
	.size	__mulsi3_lm32,$Lfe121-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,4
	swi	r0,r1,8
	bri	$L789
$L791:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,4
	addk	r3,r3,r3
	swi	r3,r1,4
$L789:
	lwi	r4,r1,20
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L792
	lwi	r3,r1,4
	beqi	r3,$L792
	lwi	r3,r1,20
	bgei	r3,$L791
	bri	$L792
$L794:
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L793
	lwi	r4,r1,16
	lwi	r3,r1,20
	rsubk	r3,r3,r4
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,8
$L793:
	lwi	r3,r1,4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,20
	srl	r3,r3
	swi	r3,r1,20
$L792:
	lwi	r3,r1,4
	bnei	r3,$L794
	lwi	r3,r1,24
	beqi	r3,$L795
	lwi	r3,r1,16
	bri	$L796
$L795:
	lwi	r3,r1,8
$L796:
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__udivmodsi4
$Lfe122:
	.size	__udivmodsi4,$Lfe122-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L806
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L801
$L806:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L807
	addik	r3,r0,1	# 0x1
	bri	$L801
$L807:
	addk	r3,r0,r0
$L801:
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_cmpf
$Lfe123:
	.size	__mspabi_cmpf,$Lfe123-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L817
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L812
$L817:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L818
	addik	r3,r0,1	# 0x1
	bri	$L812
$L818:
	addk	r3,r0,r0
$L812:
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_cmpd
$Lfe124:
	.size	__mspabi_cmpd,$Lfe124-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,32
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	lwi	r7,r1,36
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	addk	r8,r7,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_mpysll
$Lfe125:
	.size	__mspabi_mpysll,$Lfe125-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r3,r1,32
	addk	r6,r3,r0
	addk	r3,r0,r0
	lwi	r4,r1,36
	addk	r5,r4,r0
	addk	r4,r0,r0
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r5,r3,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_mpyull
$Lfe126:
	.size	__mspabi_mpyull,$Lfe126-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	swi	r6,r1,24
	swi	r0,r1,8
	swi	r0,r1,12
	lwi	r3,r1,24
	bgei	r3,$L827
	lwi	r3,r1,24
	rsubk	r3,r3,r0
	swi	r3,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,8
$L827:
	sbi	r0,r1,4
	bri	$L828
$L831:
	lwi	r3,r1,24
	andi	r3,r3,1 #and1
	beqi	r3,$L829
	lwi	r4,r1,12
	lwi	r3,r1,20
	addk	r3,r4,r3
	swi	r3,r1,12
$L829:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,24
	sra	r3,r3
	swi	r3,r1,24
	lbui	r3,r1,4
	sext8	r3,r3
	andi	r3,r3,0x00ff
	addik	r3,r3,1
	andi	r3,r3,0x00ff
	sbi	r3,r1,4
$L828:
	lwi	r3,r1,24
	beqi	r3,$L830
	lbui	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L831
$L830:
	lwi	r3,r1,8
	beqi	r3,$L832
	lwi	r3,r1,12
	rsubk	r3,r3,r0
	bri	$L834
$L832:
	lwi	r3,r1,12
$L834:
	nop
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulhi3
$Lfe127:
	.size	__mulhi3,$Lfe127-__mulhi3
	.align	2
	.globl	__divsi3
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r0,r1,28
	lwi	r3,r1,40
	bgei	r3,$L837
	lwi	r3,r1,40
	rsubk	r3,r3,r0
	swi	r3,r1,40
	lwi	r3,r1,28
	rsubk	r4,r3,r0
	lwi	r3,r1,28
	or	r3,r4,r3
	xori	r3,r3,-1
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r0
	andi	r3,r3,0x00ff
	swi	r3,r1,28
$L837:
	lwi	r3,r1,44
	bgei	r3,$L838
	lwi	r3,r1,44
	rsubk	r3,r3,r0
	swi	r3,r1,44
	lwi	r3,r1,28
	rsubk	r4,r3,r0
	lwi	r3,r1,28
	or	r3,r4,r3
	xori	r3,r3,-1
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r0
	andi	r3,r3,0x00ff
	swi	r3,r1,28
$L838:
	lwi	r3,r1,40
	lwi	r4,r1,44
	addk	r7,r0,r0
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,28
	beqi	r3,$L839
	lwi	r3,r1,32
	rsubk	r3,r3,r0
	swi	r3,r1,32
$L839:
	lwi	r3,r1,32
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r0,r1,28
	lwi	r3,r1,40
	bgei	r3,$L843
	lwi	r3,r1,40
	rsubk	r3,r3,r0
	swi	r3,r1,40
	addik	r3,r0,1	# 0x1
	swi	r3,r1,28
$L843:
	lwi	r3,r1,44
	bgei	r3,$L844
	lwi	r3,r1,44
	rsubk	r3,r3,r0
	swi	r3,r1,44
$L844:
	lwi	r3,r1,40
	lwi	r4,r1,44
	addik	r7,r0,1	# 0x1
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,28
	beqi	r3,$L845
	lwi	r3,r1,32
	rsubk	r3,r3,r0
	swi	r3,r1,32
$L845:
	lwi	r3,r1,32
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__modsi3
$Lfe129:
	.size	__modsi3,$Lfe129-__modsi3
	.align	2
	.globl	__udivmodhi4
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	addk	r4,r6,r0
	swi	r7,r1,20
	shi	r5,r1,12
	addk	r3,r6,r0
	shi	r6,r1,16
	addik	r3,r0,1	# 0x1
	shi	r3,r1,4
	shi	r0,r1,6
	bri	$L849
$L851:
	lhui	r3,r1,16
	addk	r4,r3,r0
	addk	r3,r3,r4
	shi	r3,r1,16
	lhui	r3,r1,4
	addk	r4,r3,r0
	addk	r3,r3,r4
	shi	r3,r1,4
$L849:
	lhui	r4,r1,16
	lhui	r3,r1,12
	cmpu	r18,r3,r4
	bgei	r18,$L852
	lhui	r3,r1,4
	beqi	r3,$L852
	lhui	r3,r1,16
	sext16	r3,r3
	bgei	r3,$L851
	bri	$L852
$L854:
	lhui	r4,r1,12
	lhui	r3,r1,16
	cmpu	r18,r3,r4
	blti	r18,$L853
	lhui	r4,r1,12
	lhui	r3,r1,16
	rsubk	r3,r3,r4
	shi	r3,r1,12
	lhui	r4,r1,6
	lhui	r3,r1,4
	or	r3,r4,r3
	shi	r3,r1,6
$L853:
	lhui	r3,r1,4
	srl	r3,r3
	shi	r3,r1,4
	lhui	r3,r1,16
	srl	r3,r3
	shi	r3,r1,16
$L852:
	lhui	r3,r1,4
	bnei	r3,$L854
	lwi	r3,r1,20
	beqi	r3,$L855
	lhui	r3,r1,12
	bri	$L856
$L855:
	lhui	r3,r1,6
$L856:
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__udivmodhi4
$Lfe130:
	.size	__udivmodhi4,$Lfe130-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,4
	swi	r0,r1,8
	bri	$L859
$L861:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,4
	addk	r3,r3,r3
	swi	r3,r1,4
$L859:
	lwi	r4,r1,20
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L862
	lwi	r3,r1,4
	beqi	r3,$L862
	lwi	r3,r1,20
	bgei	r3,$L861
	bri	$L862
$L864:
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L863
	lwi	r4,r1,16
	lwi	r3,r1,20
	rsubk	r3,r3,r4
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,8
$L863:
	lwi	r3,r1,4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,20
	srl	r3,r3
	swi	r3,r1,20
$L862:
	lwi	r3,r1,4
	bnei	r3,$L864
	lwi	r3,r1,24
	beqi	r3,$L865
	lwi	r3,r1,16
	bri	$L866
$L865:
	lwi	r3,r1,8
$L866:
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__udivmodsi4_libgcc
$Lfe131:
	.size	__udivmodsi4_libgcc,$Lfe131-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	addik	r3,r0,32	# 0x20
	swi	r3,r1,4
	lwi	r4,r1,28
	lwi	r5,r1,32
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r4,r1,36
	lwi	r3,r1,4
	and	r3,r4,r3
	beqi	r3,$L869
	swi	r0,r1,20
	lwi	r4,r1,12
	lwi	r5,r1,36
	lwi	r3,r1,4
	rsubk	r3,r3,r5
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	addk	r3,r5,r0
	swi	r3,r1,16
	bri	$L870
$L869:
	lwi	r3,r1,36
	bnei	r3,$L871
	lwi	r4,r1,28
	lwi	r5,r1,32
	bri	$L873
$L871:
	lwi	r5,r1,12
	lwi	r4,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,8
	addk	r5,r3,r0
	lwi	r3,r1,36
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r1,12
	lwi	r5,r1,4
	lwi	r3,r1,36
	rsubk	r5,r3,r5
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r1,16
$L870:
	lwi	r4,r1,16
	lwi	r5,r1,20
$L873:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ashldi3
$Lfe132:
	.size	__ashldi3,$Lfe132-__ashldi3
	.align	2
	.globl	__ashrdi3
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	addik	r3,r0,32	# 0x20
	swi	r3,r1,4
	lwi	r4,r1,28
	lwi	r5,r1,32
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r4,r1,36
	lwi	r3,r1,4
	and	r3,r4,r3
	beqi	r3,$L876
	lwi	r5,r1,8
	lwi	r3,r1,4
	addik	r4,r3,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r5,r1,36
	lwi	r3,r1,4
	rsubk	r3,r3,r5
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r5,r5
	addk	r3,r5,r0
	swi	r3,r1,20
	bri	$L877
$L876:
	lwi	r3,r1,36
	bnei	r3,$L878
	lwi	r4,r1,28
	lwi	r5,r1,32
	bri	$L880
$L878:
	lwi	r5,r1,8
	lwi	r4,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	swi	r3,r1,16
	lwi	r3,r1,8
	addk	r5,r3,r0
	lwi	r4,r1,4
	lwi	r3,r1,36
	rsubk	r3,r3,r4
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r1,12
	lwi	r5,r1,36
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r1,20
$L877:
	lwi	r4,r1,16
	lwi	r5,r1,20
$L880:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ashrdi3
$Lfe133:
	.size	__ashrdi3,$Lfe133-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r6,r0,r0
	lwi	r5,r1,4
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r5,r0,r0
	andi	r5,r5,0 #and1
	andi	r3,r3,65280 #and2
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r3,r1,4
	addk	r5,r0,r3
	addk	r5,r3,r3
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	lwi	r7,r1,8
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r3,r5,r3
	lwi	r7,r1,4
	addk	r5,r0,r7
	srl	r5,r7
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	andi	r5,r5,0 #and1
	andi	r3,r3,16711680 #and2
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r3,r1,4
	src	r5,r3
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	andi	r5,r5,-16777216
	lwi	r7,r1,8
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r3,r5,r3
	lwi	r7,r1,4
	addk	r5,r0,r7
	srl	r5,r7
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	andi	r5,r5,0 #and1
	andi	r3,r3,-16777216 #and2
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r3,r1,8
	addk	r5,r0,r3
	srl	r5,r3
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	lwi	r7,r1,4
	addk	r3,r0,r7
	addk	r3,r7,r7
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	or	r3,r5,r3
	lwi	r5,r1,8
	addk	r7,r0,r5
	addk	r7,r5,r5
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	andi	r5,r3,255 #and1
	andi	r3,r7,0 #and1
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r3,r1,8
	addk	r5,r0,r3
	srl	r5,r3
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	lwi	r7,r1,4
	src	r3,r7
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r5,r3
	lwi	r5,r1,8
	src	r7,r5
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
	andi	r5,r3,65280 #and2
	andi	r3,r7,0 #and1
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r3,r1,8
	addk	r5,r0,r3
	addk	r5,r3,r3
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r3,r0,r0
	andi	r5,r5,16711680 #and2
	andi	r3,r3,0 #and1
	or	r6,r6,r5
	or	r4,r4,r3
	lwi	r3,r1,8
	src	r5,r3
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	andi	r5,r5,-16777216
	addk	r3,r0,r0
	or	r5,r6,r5
	or	r4,r4,r3
	addk	r3,r5,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__bswapdi2
$Lfe134:
	.size	__bswapdi2,$Lfe134-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r5,r1,4
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,65280 #and2
	or	r4,r4,r3
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r3,r3,16711680 #and2
	or	r4,r4,r3
	lwi	r5,r1,4
	src	r3,r5
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r4,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__bswapsi2
$Lfe135:
	.size	__bswapsi2,$Lfe135-__bswapsi2
	.align	2
	.globl	__clzsi2
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	r1,80,r15		# vars= 52, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-80
	swi	r15,r1,0
	swi	r5,r1,84
	lwi	r3,r1,84
	swi	r3,r1,28
	lwi	r4,r1,28
	addik	r3,r0,65535
	cmpu	r18,r4,r3
	blti	r18,$L887
	addik	r3,r0,16	# 0x10
	bri	$L888
$L887:
	addk	r3,r0,r0
$L888:
	swi	r3,r1,32
	lwi	r3,r1,32
	addik	r4,r0,16	# 0x10
	rsubk	r4,r3,r4
	lwi	r5,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,36
	lwi	r3,r1,32
	swi	r3,r1,40
	lwi	r3,r1,36
	andi	r3,r3,65280 #and2
	bnei	r3,$L889
	addik	r3,r0,8	# 0x8
	bri	$L890
$L889:
	addk	r3,r0,r0
$L890:
	swi	r3,r1,44
	lwi	r3,r1,44
	addik	r4,r0,8	# 0x8
	rsubk	r4,r3,r4
	lwi	r5,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,48
	lwi	r3,r1,44
	lwi	r4,r1,40
	addk	r3,r4,r3
	swi	r3,r1,52
	lwi	r3,r1,48
	andi	r3,r3,240 #and1
	bnei	r3,$L891
	addik	r3,r0,4	# 0x4
	bri	$L892
$L891:
	addk	r3,r0,r0
$L892:
	swi	r3,r1,56
	lwi	r3,r1,56
	addik	r4,r0,4	# 0x4
	rsubk	r4,r3,r4
	lwi	r5,r1,48
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,60
	lwi	r3,r1,56
	lwi	r4,r1,52
	addk	r3,r4,r3
	swi	r3,r1,64
	lwi	r3,r1,60
	andi	r3,r3,12 #and1
	bnei	r3,$L893
	addik	r3,r0,2	# 0x2
	bri	$L894
$L893:
	addk	r3,r0,r0
$L894:
	swi	r3,r1,68
	lwi	r3,r1,68
	addik	r6,r0,2	# 0x2
	rsubk	r4,r3,r6
	lwi	r5,r1,60
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,72
	lwi	r3,r1,68
	lwi	r4,r1,64
	addk	r3,r4,r3
	swi	r3,r1,76
	lwi	r3,r1,72
	andi	r3,r3,2 #and1
	rsubk	r4,r3,r0
	or	r3,r4,r3
	xori	r3,r3,-1
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r0
	andi	r3,r3,0x00ff
	addk	r4,r3,r0
	lwi	r3,r1,72
	rsubk	r3,r3,r6
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,76
	addk	r3,r4,r3
	lwi	r15,r1,0
	addik	r1,r1,80
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clzsi2
$Lfe136:
	.size	__clzsi2,$Lfe136-__clzsi2
	.align	2
	.globl	__cmpdi2
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	swi	r6,r1,28
	swi	r7,r1,32
	swi	r8,r1,36
	lwi	r4,r1,24
	lwi	r5,r1,28
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,32
	lwi	r5,r1,36
	swi	r4,r1,12
	swi	r5,r1,16
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmp	r18,r3,r4
	bgei	r18,$L898
	addk	r3,r0,r0
	bri	$L903
$L898:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmp	r18,r4,r3
	bgei	r18,$L900
	addik	r3,r0,2	# 0x2
	bri	$L903
$L900:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L901
	addk	r3,r0,r0
	bri	$L903
$L901:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L902
	addik	r3,r0,2	# 0x2
	bri	$L903
$L902:
	addik	r3,r0,1	# 0x1
$L903:
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmpdi2
$Lfe137:
	.size	__cmpdi2,$Lfe137-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__cmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__aeabi_lcmp
$Lfe138:
	.size	__aeabi_lcmp,$Lfe138-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	r1,60,r15		# vars= 56, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-60
	swi	r5,r1,64
	lwi	r3,r1,64
	swi	r3,r1,4
	lwi	r3,r1,4
	andi	r3,r3,65535 #and2
	bnei	r3,$L909
	addik	r3,r0,16	# 0x10
	bri	$L910
$L909:
	addk	r3,r0,r0
$L910:
	swi	r3,r1,8
	lwi	r5,r1,4
	lwi	r4,r1,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,8
	swi	r3,r1,16
	lwi	r3,r1,12
	andi	r3,r3,255 #and1
	bnei	r3,$L911
	addik	r3,r0,8	# 0x8
	bri	$L912
$L911:
	addk	r3,r0,r0
$L912:
	swi	r3,r1,20
	lwi	r5,r1,12
	lwi	r4,r1,20
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,24
	lwi	r3,r1,20
	lwi	r4,r1,16
	addk	r3,r4,r3
	swi	r3,r1,28
	lwi	r3,r1,24
	andi	r3,r3,15 #and1
	bnei	r3,$L913
	addik	r3,r0,4	# 0x4
	bri	$L914
$L913:
	addk	r3,r0,r0
$L914:
	swi	r3,r1,32
	lwi	r5,r1,24
	lwi	r4,r1,32
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,36
	lwi	r3,r1,32
	lwi	r4,r1,28
	addk	r3,r4,r3
	swi	r3,r1,40
	lwi	r3,r1,36
	andi	r3,r3,3 #and1
	bnei	r3,$L915
	addik	r3,r0,2	# 0x2
	bri	$L916
$L915:
	addk	r3,r0,r0
$L916:
	swi	r3,r1,44
	lwi	r5,r1,36
	lwi	r4,r1,44
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,48
	lwi	r3,r1,48
	andi	r3,r3,3 #and1
	swi	r3,r1,52
	lwi	r3,r1,44
	lwi	r4,r1,40
	addk	r3,r4,r3
	swi	r3,r1,56
	lwi	r3,r1,52
	xori	r3,r3,-1
	andi	r4,r3,1 #and1
	lwi	r3,r1,52
	srl	r3,r3
	addik	r5,r0,2	# 0x2
	rsubk	r3,r3,r5
	rsubk	r4,r4,r0
	and	r4,r4,r3
	lwi	r3,r1,56
	addk	r3,r4,r3
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ctzsi2
$Lfe139:
	.size	__ctzsi2,$Lfe139-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	addik	r3,r0,32	# 0x20
	swi	r3,r1,4
	lwi	r4,r1,28
	lwi	r5,r1,32
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r4,r1,36
	lwi	r3,r1,4
	and	r3,r4,r3
	beqi	r3,$L920
	swi	r0,r1,16
	lwi	r5,r1,8
	lwi	r4,r1,36
	lwi	r3,r1,4
	rsubk	r4,r3,r4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,20
	bri	$L921
$L920:
	lwi	r3,r1,36
	bnei	r3,$L922
	lwi	r3,r1,28
	lwi	r4,r1,32
	bri	$L924
$L922:
	lwi	r5,r1,8
	lwi	r4,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,16
	lwi	r5,r1,8
	lwi	r4,r1,4
	lwi	r3,r1,36
	rsubk	r3,r3,r4
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r1,12
	lwi	r5,r1,36
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r1,20
$L921:
	lwi	r3,r1,16
	lwi	r4,r1,20
$L924:
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__lshrdi3
$Lfe140:
	.size	__lshrdi3,$Lfe140-__lshrdi3
	.align	2
	.globl	__muldsi3
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	r1,64,r15		# vars= 32, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-64
	swi	r15,r1,0
	swi	r19,r1,60
	swi	r5,r1,68
	swi	r6,r1,72
	addik	r3,r0,16	# 0x10
	swi	r3,r1,28
	addik	r5,r0,-1	# 0xffffffffffffffff
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,32
	lwi	r4,r1,68
	lwi	r3,r1,32
	and	r5,r4,r3
	lwi	r4,r1,72
	lwi	r3,r1,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	swi	r3,r1,56
	lwi	r5,r1,56
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,36
	lwi	r4,r1,56
	lwi	r3,r1,32
	and	r3,r4,r3
	swi	r3,r1,56
	lwi	r4,r1,68
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r1,72
	lwi	r3,r1,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	swi	r3,r1,40
	lwi	r4,r1,56
	lwi	r5,r1,40
	lwi	r3,r1,32
	and	r6,r5,r3
	lwi	r5,r1,28
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r3,r4,r3
	swi	r3,r1,56
	lwi	r4,r1,40
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	addk	r3,r5,r0
	swi	r3,r1,52
	lwi	r5,r1,56
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,44
	lwi	r4,r1,56
	lwi	r3,r1,32
	and	r3,r4,r3
	swi	r3,r1,56
	lwi	r4,r1,72
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r1,68
	lwi	r3,r1,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,44
	addk	r3,r3,r4
	swi	r3,r1,48
	lwi	r4,r1,56
	lwi	r5,r1,48
	lwi	r3,r1,32
	and	r6,r5,r3
	lwi	r5,r1,28
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r3,r4,r3
	swi	r3,r1,56
	lwi	r3,r1,52
	addk	r6,r3,r0
	lwi	r5,r1,48
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	addk	r3,r6,r3
	swi	r3,r1,52
	lwi	r3,r1,52
	addk	r19,r3,r0
	lwi	r4,r1,68
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r1,72
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r6,r0,r4
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r19,r3
	swi	r3,r1,52
	lwi	r4,r1,52
	lwi	r5,r1,56
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,60
	addik	r1,r1,64
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r1,60,r15		# vars= 24, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,52
	swi	r22,r1,56
	swi	r5,r1,64
	swi	r6,r1,68
	swi	r7,r1,72
	swi	r8,r1,76
	lwi	r4,r1,64
	lwi	r5,r1,68
	swi	r4,r1,28
	swi	r5,r1,32
	lwi	r4,r1,72
	lwi	r5,r1,76
	swi	r4,r1,36
	swi	r5,r1,40
	lwi	r3,r1,32
	lwi	r4,r1,40
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__muldsi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,44
	swi	r5,r1,48
	lwi	r3,r1,44
	addk	r19,r3,r0
	lwi	r3,r1,28
	addk	r4,r3,r0
	lwi	r3,r1,40
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	lwi	r3,r1,32
	lwi	r4,r1,36
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	addk	r3,r19,r3
	swi	r3,r1,44
	lwi	r4,r1,44
	lwi	r5,r1,48
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,52
	lwi	r22,r1,56
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__muldi3_compiler_rt
$Lfe142:
	.size	__muldi3_compiler_rt,$Lfe142-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r4,r1,4
	lwi	r5,r1,8
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__negdi2
$Lfe143:
	.size	__negdi2,$Lfe143-__negdi2
	.align	2
	.globl	__paritydi2
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	r1,28,r15		# vars= 24, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-28
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r4,r1,32
	lwi	r5,r1,36
	swi	r4,r1,20
	swi	r5,r1,24
	lwi	r3,r1,20
	addk	r4,r3,r0
	lwi	r3,r1,24
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,8
	lwi	r4,r1,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,8
	xor	r3,r4,r3
	swi	r3,r1,12
	lwi	r4,r1,12
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,12
	xor	r3,r4,r3
	swi	r3,r1,16
	lwi	r3,r1,16
	andi	r4,r3,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__paritydi2
$Lfe144:
	.size	__paritydi2,$Lfe144-__paritydi2
	.align	2
	.globl	__paritysi2
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	lwi	r3,r1,24
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,8
	lwi	r4,r1,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,8
	xor	r3,r4,r3
	swi	r3,r1,12
	lwi	r4,r1,12
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,12
	xor	r3,r4,r3
	swi	r3,r1,16
	lwi	r3,r1,16
	andi	r4,r3,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r1,60,r15		# vars= 40, regs= 4, args= 0
	.mask	0x03c00000
	addik	r1,r1,-60
	swi	r22,r1,44
	swi	r23,r1,48
	swi	r24,r1,52
	swi	r25,r1,56
	swi	r5,r1,64
	swi	r6,r1,68
	lwi	r4,r1,64
	lwi	r5,r1,68
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r3,r1,4
	src	r4,r3
	src	r4,r4
	andi	r4,r4,-2147483648
	lwi	r3,r1,8
	srl	r3,r3
	or	r3,r4,r3
	lwi	r4,r1,4
	srl	r4,r4
	andi	r24,r4,1431655765 #and2
	andi	r25,r3,1431655765 #and2
	lwi	r6,r1,4
	lwi	r7,r1,8
	rsub	r5,r25,r7
	rsubc	r4,r24,r6
	swi	r4,r1,12
	swi	r5,r1,16
	lwi	r3,r1,12
	src	r4,r3
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-1073741824
	lwi	r5,r1,16
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	or	r3,r4,r3
	lwi	r5,r1,12
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	andi	r22,r4,858993459 #and2
	andi	r23,r3,858993459 #and2
	lwi	r3,r1,12
	andi	r10,r3,858993459 #and2
	lwi	r3,r1,16
	andi	r11,r3,858993459 #and2
	add	r5,r23,r11
	addc	r4,r22,r10
	swi	r4,r1,20
	swi	r5,r1,24
	lwi	r4,r1,20
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	lwi	r4,r1,24
	addk	r9,r0,r4
	srl	r9,r4
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	or	r9,r3,r9
	lwi	r3,r1,20
	addk	r8,r0,r3
	srl	r8,r3
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	lwi	r4,r1,20
	lwi	r5,r1,24
	add	r5,r9,r5
	addc	r4,r8,r4
	andi	r3,r4,252645135 #and2
	swi	r3,r1,28
	andi	r3,r5,252645135 #and2
	swi	r3,r1,32
	lwi	r3,r1,32
	lwi	r4,r1,28
	addk	r3,r3,r4
	swi	r3,r1,36
	lwi	r4,r1,36
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,36
	addk	r3,r4,r3
	swi	r3,r1,40
	lwi	r3,r1,40
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,40
	addk	r3,r4,r3
	andi	r3,r3,127 #and1
	lwi	r22,r1,44
	lwi	r23,r1,48
	lwi	r24,r1,52
	lwi	r25,r1,56
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__popcountdi2
$Lfe146:
	.size	__popcountdi2,$Lfe146-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	lwi	r3,r1,28
	swi	r3,r1,4
	lwi	r3,r1,4
	srl	r3,r3
	andi	r3,r3,1431655765 #and2
	lwi	r4,r1,4
	rsubk	r3,r3,r4
	swi	r3,r1,8
	lwi	r4,r1,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	andi	r4,r3,858993459 #and2
	lwi	r3,r1,8
	andi	r3,r3,858993459 #and2
	addk	r3,r4,r3
	swi	r3,r1,12
	lwi	r3,r1,12
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,12
	addk	r3,r4,r3
	andi	r3,r3,252645135 #and2
	swi	r3,r1,16
	lwi	r4,r1,16
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,16
	addk	r3,r4,r3
	swi	r3,r1,20
	lwi	r3,r1,20
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,20
	addk	r3,r4,r3
	andi	r3,r3,63 #and1
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__popcountsi2
$Lfe147:
	.size	__popcountsi2,$Lfe147-__popcountsi2
	.align	2
	.globl	__powidf2
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	r1,40,r15		# vars= 12, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r5,r1,44
	swi	r6,r1,48
	swi	r7,r1,52
	lwi	r3,r1,52
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r3,r4,0x00ff
	swi	r3,r1,36
	addik	r4,r0,0x3ff00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	swi	r4,r1,28
	swi	r5,r1,32
$L950:
	lwi	r3,r1,52
	andi	r3,r3,1 #and1
	beqi	r3,$L947
	lwi	r7,r1,44
	lwi	r8,r1,48
	lwi	r5,r1,28
	lwi	r6,r1,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,28
	swi	r5,r1,32
$L947:
	lwi	r3,r1,52
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r1,52
	lwi	r3,r1,52
	beqi	r3,$L955
	lwi	r7,r1,44
	lwi	r8,r1,48
	lwi	r5,r1,44
	lwi	r6,r1,48
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,44
	swi	r5,r1,48
	bri	$L950
$L955:
	nop
	lwi	r3,r1,36
	beqi	r3,$L951
	lwi	r7,r1,28
	lwi	r8,r1,32
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	bri	$L953
$L951:
	lwi	r4,r1,28
	lwi	r5,r1,32
$L953:
	nop
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__powidf2
$Lfe148:
	.size	__powidf2,$Lfe148-__powidf2
	.align	2
	.globl	__powisf2
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	lwi	r3,r1,44
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r3,r4,0x00ff
	swi	r3,r1,32
	addik	r3,r0,0x3f800000
	swi	r3,r1,28
$L961:
	lwi	r3,r1,44
	andi	r3,r3,1 #and1
	beqi	r3,$L958
	lwi	r6,r1,40
	lwi	r5,r1,28
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,28
$L958:
	lwi	r3,r1,44
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r1,44
	lwi	r3,r1,44
	beqi	r3,$L966
	lwi	r6,r1,40
	lwi	r5,r1,40
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,40
	bri	$L961
$L966:
	nop
	lwi	r3,r1,32
	beqi	r3,$L962
	lwi	r6,r1,28
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	bri	$L964
$L962:
	lwi	r3,r1,28
$L964:
	nop
	lwi	r15,r1,0
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__powisf2
$Lfe149:
	.size	__powisf2,$Lfe149-__powisf2
	.align	2
	.globl	__ucmpdi2
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	swi	r6,r1,28
	swi	r7,r1,32
	swi	r8,r1,36
	lwi	r4,r1,24
	lwi	r5,r1,28
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,32
	lwi	r5,r1,36
	swi	r4,r1,12
	swi	r5,r1,16
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r3,r4
	bgei	r18,$L969
	addk	r3,r0,r0
	bri	$L974
$L969:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r4,r3
	bgei	r18,$L971
	addik	r3,r0,2	# 0x2
	bri	$L974
$L971:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L972
	addk	r3,r0,r0
	bri	$L974
$L972:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L973
	addik	r3,r0,2	# 0x2
	bri	$L974
$L973:
	addik	r3,r0,1	# 0x1
$L974:
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ucmpdi2
$Lfe150:
	.size	__ucmpdi2,$Lfe150-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r4,r1,32
	lwi	r5,r1,36
	lwi	r6,r1,40
	lwi	r7,r1,44
	addk	r8,r7,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__ucmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
