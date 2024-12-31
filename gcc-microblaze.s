	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	cmpu	r18,r5,r6
	bgei	r18,$L2
	addk	r6,r6,r7
	addk	r9,r5,r7
	addk	r4,r7,r0
	bri	$L3
$L4:
	rsubk	r5,r7,r0
	rsubk	r8,r7,r6
	addik	r8,r8,-1
	addk	r5,r9,r5
	addik	r5,r5,-1
	lbu	r8,r4,r8
	sb	r8,r4,r5
	addik	r4,r4,-1
$L3:
	bnei	r4,$L4
	bri	$L5
$L2:
	xor	r4,r5,r6
	bnei	r4,$L8
	bri	$L5
$L7:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
	bri	$L6
$L8:
	addk	r4,r0,r0
$L6:
	xor	r5,r4,r7
	bnei	r5,$L7
$L5:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r7,r7,0x00ff
	bri	$L10
$L12:
	addik	r8,r8,-1
	addik	r6,r6,1
	addik	r5,r5,1
$L10:
	beqi	r8,$L11
	lbui	r3,r6,0
	sbi	r3,r5,0
	andi	r3,r3,0x00ff
	xor	r3,r7,r3
	bnei	r3,$L12
$L11:
	beqi	r8,$L14
	addik	r3,r5,1
	bri	$L13
$L14:
	addk	r3,r0,r0
$L13:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r6,r6,0x00ff
	bri	$L16
$L18:
	addik	r5,r5,1
	addik	r7,r7,-1
$L16:
	beqi	r7,$L17
	lbui	r3,r5,0
	xor	r3,r6,r3
	bnei	r3,$L18
$L17:
	beqi	r7,$L20
	addk	r3,r5,r0
	bri	$L19
$L20:
	addk	r3,r0,r0
$L19:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L22
$L24:
	addik	r7,r7,-1
	addik	r5,r5,1
	addik	r6,r6,1
$L22:
	beqi	r7,$L23
	lbui	r3,r5,0
	lbui	r4,r6,0
	xor	r3,r3,r4
	beqi	r3,$L24
$L23:
	beqi	r7,$L26
	lbui	r3,r5,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
	bri	$L25
$L26:
	addk	r3,r0,r0
$L25:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r0,r0
	bri	$L28
$L29:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L28:
	xor	r5,r4,r7
	bnei	r5,$L29
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r6,r6,0x00ff
	addik	r7,r7,-1
	bri	$L31
$L33:
	lbu	r3,r7,r5
	addik	r4,r7,-1
	xor	r3,r6,r3
	bnei	r3,$L34
	addk	r3,r5,r7
	bri	$L32
$L34:
	addk	r7,r4,r0
$L31:
	xori	r3,r7,-1
	bnei	r3,$L33
$L32:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r7,r5,r7
	addk	r4,r5,r0
	bri	$L36
$L37:
	sbi	r6,r4,0
	addik	r4,r4,1
$L36:
	xor	r5,r4,r7
	bnei	r5,$L37
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	bri	$L39
$L40:
	addik	r6,r6,1
	addik	r3,r3,1
$L39:
	lbui	r4,r6,0
	sext8	r4,r4
	sbi	r4,r3,0
	bnei	r4,$L40
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	andi	r6,r6,0x00ff
	bri	$L42
$L44:
	addik	r3,r3,1
$L42:
	lbui	r4,r3,0
	beqi	r4,$L43
	xor	r4,r6,r4
	bnei	r4,$L44
$L43:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
$L47:
	lbui	r3,r5,0
	sext8	r3,r3
	xor	r3,r6,r3
	beqi	r3,$L48
	addik	r5,r5,1
	lbui	r3,r5,-1
	bnei	r3,$L47
	bri	$L46
$L48:
	addk	r3,r5,r0
$L46:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L50
$L52:
	addik	r5,r5,1
	addik	r6,r6,1
$L50:
	lbui	r4,r5,0
	lbui	r3,r6,0
	xor	r3,r3,r4
	sext8	r3,r3
	bnei	r3,$L51
	bnei	r4,$L52
$L51:
	lbui	r3,r5,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	bri	$L54
$L55:
	addik	r3,r3,1
$L54:
	lbui	r4,r3,0
	bnei	r4,$L55
	rsubk	r3,r5,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	beqi	r7,$L61
	addk	r4,r5,r0
	bri	$L58
$L60:
	addik	r4,r4,1
	addik	r6,r6,1
$L58:
	lbui	r3,r4,0
	beqi	r3,$L59
	lbui	r8,r6,0
	addik	r3,r7,-1
	addk	r3,r3,r5
	rsubk	r9,r4,r3
	rsubk	r3,r3,r4
	or	r3,r3,r9
	rsubk	r8,r8,r0
	and	r3,r8,r3
	bgei	r3,$L59
	lbui	r3,r4,0
	lbui	r8,r6,0
	xor	r3,r3,r8
	beqi	r3,$L60
$L59:
	lbui	r3,r4,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
	bri	$L57
$L61:
	addk	r3,r0,r0
$L57:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	bri	$L63
$L64:
	lbui	r4,r3,1
	sbi	r4,r6,0
	lbui	r4,r3,0
	sbi	r4,r6,1
	addik	r6,r6,2
	addik	r3,r3,2
$L63:
	addk	r4,r5,r7
	rsubk	r4,r3,r4
	addik	r8,r0,1	# 0x1
	cmp	r18,r4,r8
	blti	r18,$L64
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r3,r0,1	# 0x1
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgei	r18,$L66
	addk	r3,r0,r0
$L66:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	addik	r4,r0,127	# 0x7f
	cmpu	r18,r5,r4
	bgei	r18,$L68
	addk	r3,r0,r0
$L68:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	xori	r4,r5,32
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r5,r5,9
	rsubk	r4,r5,r0
	or	r4,r4,r5
	and	r4,r4,r3
	xori	r4,r4,-1
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
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgei	r18,$L71
	addk	r3,r0,r0
$L71:
	andi	r3,r3,0x00ff
	xori	r5,r5,127
	rsubk	r4,r5,r0
	or	r4,r4,r5
	xori	r4,r4,-1
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
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r3,r3,r5
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r5,r5,-48
	addik	r3,r0,1	# 0x1
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgei	r18,$L73
	addk	r3,r0,r0
$L73:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r5,r5,-33
	addik	r3,r0,1	# 0x1
	addik	r4,r0,93	# 0x5d
	cmpu	r18,r5,r4
	bgei	r18,$L75
	addk	r3,r0,r0
$L75:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r5,r5,-97
	addik	r3,r0,1	# 0x1
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgei	r18,$L77
	addk	r3,r0,r0
$L77:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r5,r5,-32
	addik	r3,r0,1	# 0x1
	addik	r4,r0,94	# 0x5e
	cmpu	r18,r5,r4
	bgei	r18,$L79
	addk	r3,r0,r0
$L79:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	xori	r4,r5,32
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
	addk	r6,r0,r3
	srl	r6,r3
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
	addik	r5,r5,-9
	addik	r4,r0,1	# 0x1
	addik	r3,r0,4	# 0x4
	cmpu	r18,r5,r3
	bgei	r18,$L81
	addk	r4,r0,r0
$L81:
	andi	r3,r4,0x00ff
	or	r3,r3,r6
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r5,r5,-65
	addik	r3,r0,1	# 0x1
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgei	r18,$L83
	addk	r3,r0,r0
$L83:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgei	r18,$L85
	addk	r3,r0,r0
$L85:
	andi	r3,r3,0x00ff
	addik	r7,r5,-127
	addik	r4,r0,1	# 0x1
	addik	r6,r0,32	# 0x20
	cmpu	r18,r7,r6
	bgei	r18,$L86
	addk	r4,r0,r0
$L86:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bnei	r3,$L88
	addik	r4,r5,-8232
	addik	r3,r0,1	# 0x1
	cmpu	r18,r4,r3
	bgei	r18,$L89
	addik	r5,r5,-65529
	addik	r3,r0,2	# 0x2
	cmpu	r18,r5,r3
	blti	r18,$L90
	addik	r3,r0,1	# 0x1
	bri	$L87
$L88:
	addik	r3,r0,1	# 0x1
	bri	$L87
$L89:
	addik	r3,r0,1	# 0x1
	bri	$L87
$L90:
	addk	r3,r0,r0
$L87:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r5,r5,-48
	addik	r3,r0,1	# 0x1
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgei	r18,$L92
	addk	r3,r0,r0
$L92:
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r5,r3
	blti	r18,$L94
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r3,r0,1	# 0x1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	blti	r18,$L95
	addk	r3,r0,r0
$L95:
	andi	r3,r3,0x00ff
	bri	$L96
$L94:
	addik	r3,r0,1	# 0x1
	addik	r4,r0,8231	# 0x2027
	cmpu	r18,r5,r4
	bgei	r18,$L97
	addk	r3,r0,r0
$L97:
	andi	r3,r3,0x00ff
	addik	r7,r5,-8234
	addik	r4,r0,1	# 0x1
	addik	r6,r0,47061
	cmpu	r18,r7,r6
	bgei	r18,$L98
	addk	r4,r0,r0
$L98:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bnei	r3,$L99
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgei	r18,$L100
	addik	r4,r5,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L101
	andi	r5,r5,65534 #and2
	xori	r5,r5,65534
	beqi	r5,$L102
	addik	r3,r0,1	# 0x1
	bri	$L96
$L99:
	addik	r3,r0,1	# 0x1
	bri	$L96
$L100:
	addik	r3,r0,1	# 0x1
	bri	$L96
$L101:
	addk	r3,r0,r0
	bri	$L96
$L102:
	addk	r3,r0,r0
$L96:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r4,r5,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L105
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r3,r0,5	# 0x5
	cmpu	r18,r5,r3
	blti	r18,$L106
	addik	r3,r0,1	# 0x1
	bri	$L104
$L105:
	addik	r3,r0,1	# 0x1
	bri	$L104
$L106:
	addk	r3,r0,r0
$L104:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r3,r5,127 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L111
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L109
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L115
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__subdf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
	bri	$L109
$L111:
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L109
$L115:
	addk	r22,r0,r0
	addk	r23,r0,r0
$L109:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r23,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L119
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L120
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L123
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	bri	$L117
$L119:
	addk	r3,r23,r0
	bri	$L117
$L120:
	addk	r3,r22,r0
	bri	$L117
$L123:
	addk	r3,r0,r0
$L117:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L128
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L125
	andi	r3,r22,-2147483648 #and2
	andi	r4,r24,-2147483648 #and2
	xor	r3,r3,r4
	beqi	r3,$L126
	andi	r3,r22,-2147483648 #and2
	beqi	r3,$L125
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L125
$L126:
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L125
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L125
$L128:
	addk	r22,r24,r0
	addk	r23,r25,r0
$L125:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L138
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L135
	andi	r3,r22,-2147483648 #and2
	andi	r4,r23,-2147483648 #and2
	xor	r3,r3,r4
	beqi	r3,$L136
	andi	r3,r22,-2147483648 #and2
	beqi	r3,$L135
	addk	r22,r23,r0
	bri	$L135
$L136:
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L135
	addk	r22,r23,r0
	bri	$L135
$L138:
	addk	r22,r23,r0
$L135:
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L148
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L145
	andi	r3,r22,-2147483648 #and2
	andi	r4,r24,-2147483648 #and2
	xor	r3,r3,r4
	beqi	r3,$L146
	andi	r3,r22,-2147483648 #and2
	beqi	r3,$L145
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L145
$L146:
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L145
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L145
$L148:
	addk	r22,r24,r0
	addk	r23,r25,r0
$L145:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L155
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L159
	andi	r3,r24,-2147483648 #and2
	andi	r4,r22,-2147483648 #and2
	xor	r3,r3,r4
	beqi	r3,$L156
	andi	r3,r24,-2147483648 #and2
	beqi	r3,$L155
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L155
$L156:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L155
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L155
$L159:
	addk	r22,r24,r0
	addk	r23,r25,r0
$L155:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r23,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L165
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L169
	andi	r3,r23,-2147483648 #and2
	andi	r4,r22,-2147483648 #and2
	xor	r3,r3,r4
	beqi	r3,$L166
	andi	r3,r23,-2147483648 #and2
	beqi	r3,$L165
	addk	r22,r23,r0
	bri	$L165
$L166:
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L165
	addk	r22,r23,r0
	bri	$L165
$L169:
	addk	r22,r23,r0
$L165:
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L175
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L179
	andi	r3,r24,-2147483648 #and2
	andi	r4,r22,-2147483648 #and2
	xor	r3,r3,r4
	beqi	r3,$L176
	andi	r3,r24,-2147483648 #and2
	beqi	r3,$L175
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L175
$L176:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L175
	addk	r22,r24,r0
	addk	r23,r25,r0
	bri	$L175
$L179:
	addk	r22,r24,r0
	addk	r23,r25,r0
$L175:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,s.0
	bri	$L185
$L186:
	andi	r4,r5,63 #and1
	lbui	r4,r4,digits
	sbi	r4,r3,0
	addik	r3,r3,1
	addk	r4,r5,r0
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
$L185:
	bnei	r5,$L186
	sbi	r0,r3,0
	addik	r3,r0,s.0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addik	r5,r3,-1
	addk	r4,r0,r0
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	lwi	r5,r0,seed
	lwi	r6,r0,seed+4
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r6,r0,0x00000000
	addik	r7,r0,0x00000001 #li => la
	add	r5,r5,r7
	addc	r4,r4,r6
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	srl	r7,r4
	addk	r3,r7,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bnei	r6,$L190
	swi	r0,r5,4
	swi	r0,r5,0
	bri	$L189
$L190:
	lwi	r3,r6,0
	swi	r3,r5,0
	swi	r6,r5,4
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L189
	swi	r5,r3,4
$L189:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	lwi	r3,r5,0
	beqi	r3,$L193
	lwi	r4,r5,4
	swi	r4,r3,4
$L193:
	lwi	r3,r5,4
	beqi	r3,$L192
	lwi	r4,r5,0
	swi	r4,r3,0
$L192:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r29,r1,60
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r22,r6,r0
	addk	r25,r7,r0
	addk	r23,r8,r0
	addk	r29,r9,r0
	lwi	r27,r7,0
	addk	r28,r6,r0
	addk	r26,r0,r0
	bri	$L196
$L199:
	addk	r6,r28,r0
	addk	r5,r24,r0
	brald	r15,r29
	nop		# Unfilled delay slot

	addk	r28,r28,r23
	bnei	r3,$L197
	addk	r6,r23,r0
	addk	r5,r26,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	bri	$L198
$L197:
	addik	r26,r26,1
$L196:
	xor	r3,r26,r27
	bnei	r3,$L199
	addik	r3,r27,1
	swi	r3,r25,0
	addk	r6,r27,r0
	addk	r5,r23,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r5,r22,r3
	addk	r7,r23,r0
	addk	r6,r24,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L198:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	addik	r1,r1,64
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
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x1fc88000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	addk	r19,r1,r0
	addk	r28,r5,r0
	addk	r22,r6,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	lwi	r27,r7,0
	addk	r25,r6,r0
	addk	r23,r0,r0
	bri	$L201
$L204:
	addk	r6,r25,r0
	addk	r5,r28,r0
	brald	r15,r26
	nop		# Unfilled delay slot

	addk	r25,r25,r24
	bnei	r3,$L202
	addk	r6,r24,r0
	addk	r5,r23,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	bri	$L203
$L202:
	addik	r23,r23,1
$L201:
	xor	r3,r23,r27
	bnei	r3,$L204
	addk	r3,r0,r0
$L203:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	addik	r1,r1,60
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r0,r5
	sra	r4,r5
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
	xor	r3,r4,r5
	rsubk	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r5,r0
	bri	$L207
$L208:
	addik	r22,r22,1
$L207:
	lbui	r5,r22,0
	sext8	r5,r5
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L208
	lbui	r3,r22,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L214
	xori	r3,r3,45
	bnei	r3,$L215
	addik	r5,r0,1	# 0x1
	bri	$L209
$L214:
	addk	r5,r0,r0
$L209:
	addik	r22,r22,1
	bri	$L210
$L215:
	addk	r5,r0,r0
$L210:
	addk	r3,r0,r0
	bri	$L211
$L212:
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r3
	addk	r3,r4,r4
	addik	r22,r22,1
	lbui	r4,r22,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r3,r4,r3
$L211:
	lbui	r4,r22,0
	sext8	r4,r4
	addik	r4,r4,-48
	addik	r6,r0,9	# 0x9
	cmpu	r18,r4,r6
	bgei	r18,$L212
	bnei	r5,$L213
	rsubk	r3,r3,r0
$L213:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r5,r0
	bri	$L218
$L219:
	addik	r22,r22,1
$L218:
	lbui	r5,r22,0
	sext8	r5,r5
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L219
	lbui	r3,r22,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L225
	xori	r3,r3,45
	bnei	r3,$L226
	addik	r5,r0,1	# 0x1
	bri	$L220
$L225:
	addk	r5,r0,r0
$L220:
	addik	r22,r22,1
	bri	$L221
$L226:
	addk	r5,r0,r0
$L221:
	addk	r3,r0,r0
	bri	$L222
$L223:
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r3
	addk	r3,r4,r4
	addik	r22,r22,1
	lbui	r4,r22,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r3,r4,r3
$L222:
	lbui	r4,r22,0
	sext8	r4,r4
	addik	r4,r4,-48
	addik	r6,r0,9	# 0x9
	cmpu	r18,r4,r6
	bgei	r18,$L223
	bnei	r5,$L224
	rsubk	r3,r3,r0
$L224:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
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
	.frame	r19,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x0f488000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	addk	r19,r1,r0
	addk	r22,r5,r0
	bri	$L229
$L230:
	addik	r22,r22,1
$L229:
	lbui	r5,r22,0
	sext8	r5,r5
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L230
	lbui	r3,r22,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L236
	xori	r3,r3,45
	bnei	r3,$L237
	addik	r8,r0,1	# 0x1
	bri	$L231
$L236:
	addk	r8,r0,r0
$L231:
	addik	r22,r22,1
	bri	$L232
$L237:
	addk	r8,r0,r0
$L232:
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	bri	$L233
$L234:
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
	addk	r26,r0,r4
	addk	r26,r4,r4
	addk	r26,r26,r26
	or	r26,r3,r26
	addk	r27,r0,r5
	addk	r27,r5,r5
	addk	r27,r27,r27
	add	r5,r27,r5
	addc	r4,r26,r4
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
	srl	r3,r3
	addk	r24,r4,r4
	or	r24,r3,r24
	addk	r25,r5,r5
	addik	r22,r22,1
	lbui	r6,r22,-1
	sext8	r6,r6
	addik	r6,r6,-48
	addk	r7,r0,r6
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r5,r7,r25
	rsubc	r4,r6,r24
$L233:
	lbui	r3,r22,0
	sext8	r3,r3
	addik	r3,r3,-48
	addik	r6,r0,9	# 0x9
	cmpu	r18,r3,r6
	bgei	r18,$L234
	bnei	r8,$L235
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
$L235:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	addik	r1,r1,52
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
	.frame	r19,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r19,r1,r0
	addk	r27,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	bri	$L240
$L244:
	addk	r6,r24,r0
	srl	r5,r22
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r23,r25,r3
	addk	r6,r23,r0
	addk	r5,r27,r0
	brald	r15,r26
	nop		# Unfilled delay slot

	bgei	r3,$L241
	srl	r22,r22
	bri	$L240
$L241:
	blei	r3,$L245
	addk	r25,r23,r24
	srl	r3,r22
	addik	r22,r22,-1
	rsubk	r22,r3,r22
$L240:
	bnei	r22,$L244
	addk	r3,r0,r0
	bri	$L243
$L245:
	addk	r3,r23,r0
$L243:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	addik	r1,r1,56
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
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x1fc88000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	addk	r19,r1,r0
	addk	r28,r5,r0
	addk	r25,r8,r0
	addk	r27,r9,r0
	addk	r26,r10,r0
	addk	r23,r7,r0
	addk	r24,r6,r0
	bri	$L247
$L250:
	sra	r5,r23
	addk	r6,r25,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r22,r24,r3
	addk	r7,r26,r0
	addk	r6,r22,r0
	addk	r5,r28,r0
	brald	r15,r27
	nop		# Unfilled delay slot

	beqi	r3,$L251
	blei	r3,$L249
	addk	r24,r22,r25
	addik	r23,r23,-1
$L249:
	sra	r23,r23
$L247:
	bnei	r23,$L250
	addk	r3,r0,r0
	bri	$L248
$L251:
	addk	r3,r22,r0
$L248:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	addik	r1,r1,60
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r6,r7,r0
	addk	r5,r23,r0
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r25,r3,r0
	addk	r6,r24,r0
	addk	r5,r23,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	swi	r25,r22,0
	swi	r3,r22,4
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r8,r5,r0
	addk	r9,r6,r0
	addk	r5,r0,r8
	sra	r5,r8
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	addk	r4,r5,r0
	xor	r6,r5,r8
	xor	r7,r5,r9
	addk	r8,r6,r0
	addk	r9,r7,r0
	rsub	r7,r5,r9
	rsubc	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x3f488000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	swi	r28,r1,52
	swi	r29,r1,56
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r24,r6,r0
	addk	r25,r7,r0
	addk	r26,r8,r0
	addk	r27,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	addk	r6,r25,r0
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r28,r3,r0
	addk	r29,r4,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r28,r22,0
	swi	r29,r22,4
	swi	r4,r22,8
	swi	r5,r22,12
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	lwi	r28,r1,52
	lwi	r29,r1,56
	addik	r1,r1,60
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r0,r5
	sra	r4,r5
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
	xor	r3,r4,r5
	rsubk	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r6,r7,r0
	addk	r5,r23,r0
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r25,r3,r0
	addk	r6,r24,r0
	addk	r5,r23,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	swi	r25,r22,0
	swi	r3,r22,4
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r8,r5,r0
	addk	r9,r6,r0
	addk	r5,r0,r8
	sra	r5,r8
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	addk	r4,r5,r0
	xor	r6,r5,r8
	xor	r7,r5,r9
	addk	r8,r6,r0
	addk	r9,r7,r0
	rsub	r7,r5,r9
	rsubc	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x3f488000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	swi	r28,r1,52
	swi	r29,r1,56
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r24,r6,r0
	addk	r25,r7,r0
	addk	r26,r8,r0
	addk	r27,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	addk	r6,r25,r0
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r28,r3,r0
	addk	r29,r4,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r28,r22,0
	swi	r29,r22,4
	swi	r4,r22,8
	swi	r5,r22,12
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	lwi	r28,r1,52
	lwi	r29,r1,56
	addik	r1,r1,60
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L260
$L262:
	addik	r5,r5,4
$L260:
	lwi	r3,r5,0
	beqi	r3,$L261
	xor	r3,r6,r3
	bnei	r3,$L262
$L261:
	lwi	r3,r5,0
	beqi	r3,$L264
	addk	r3,r5,r0
	bri	$L263
$L264:
	addk	r3,r0,r0
$L263:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L266
$L268:
	addik	r5,r5,4
	addik	r6,r6,4
$L266:
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L267
	lwi	r3,r5,0
	beqi	r3,$L267
	bnei	r4,$L268
$L267:
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L271
	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r3,r0,1	# 0x1
	cmp	r18,r5,r4
	blti	r18,$L270
	addk	r3,r0,r0
$L270:
	andi	r3,r3,0x00ff
	bri	$L269
$L271:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L269:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r0,r0
$L273:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
	addik	r5,r3,-4
	lw	r5,r4,r5
	bnei	r5,$L273
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	bri	$L275
$L276:
	addik	r3,r3,4
$L275:
	lwi	r4,r3,0
	bnei	r4,$L276
	rsubk	r5,r5,r3
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L278
$L280:
	addik	r7,r7,-1
	addik	r5,r5,4
	addik	r6,r6,4
$L278:
	beqi	r7,$L279
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L279
	lwi	r3,r5,0
	beqi	r3,$L279
	bnei	r4,$L280
$L279:
	beqi	r7,$L283
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L284
	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r3,r0,1	# 0x1
	cmp	r18,r5,r4
	blti	r18,$L282
	addk	r3,r0,r0
$L282:
	andi	r3,r3,0x00ff
	bri	$L281
$L283:
	addk	r3,r0,r0
	bri	$L281
$L284:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L281:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L286
$L288:
	addik	r7,r7,-1
	addik	r5,r5,4
$L286:
	beqi	r7,$L287
	lwi	r3,r5,0
	xor	r3,r6,r3
	bnei	r3,$L288
$L287:
	beqi	r7,$L290
	addk	r3,r5,r0
	bri	$L289
$L290:
	addk	r3,r0,r0
$L289:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L292
$L294:
	addik	r7,r7,-1
	addik	r5,r5,4
	addik	r6,r6,4
$L292:
	beqi	r7,$L293
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	beqi	r3,$L294
$L293:
	beqi	r7,$L297
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L298
	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r3,r0,1	# 0x1
	cmp	r18,r5,r4
	blti	r18,$L296
	addk	r3,r0,r0
$L296:
	andi	r3,r3,0x00ff
	bri	$L295
$L297:
	addk	r3,r0,r0
	bri	$L295
$L298:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L295:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r0,r0
	bri	$L300
$L301:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L300:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L301
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	xor	r4,r5,r6
	beqi	r4,$L303
	rsubk	r5,r6,r5
	addk	r4,r7,r7
	addk	r4,r4,r4
	cmpu	r18,r4,r5
	bgei	r18,$L308
	addk	r7,r4,r0
	bri	$L305
$L306:
	lw	r4,r7,r6
	sw	r4,r7,r3
$L305:
	addik	r7,r7,-4
	xori	r4,r7,-4
	bnei	r4,$L306
	bri	$L303
$L307:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
	bri	$L304
$L308:
	addk	r4,r0,r0
$L304:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L307
$L303:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r5,r0
	bri	$L310
$L311:
	addik	r4,r4,4
	swi	r6,r4,-4
$L310:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L311
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	cmpu	r18,r6,r5
	bgei	r18,$L313
	addk	r5,r5,r7
	addk	r6,r6,r7
	addk	r3,r7,r0
	bri	$L314
$L315:
	rsubk	r4,r7,r0
	rsubk	r8,r7,r5
	addik	r8,r8,-1
	addk	r4,r6,r4
	addik	r4,r4,-1
	lbu	r8,r3,r8
	sb	r8,r3,r4
	addik	r3,r3,-1
$L314:
	bnei	r3,$L315
	bri	$L312
$L313:
	xor	r3,r5,r6
	bnei	r3,$L319
	bri	$L312
$L318:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	addik	r3,r3,1
	bri	$L317
$L319:
	addk	r3,r0,r0
$L317:
	xor	r4,r3,r7
	bnei	r4,$L318
$L312:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r10,r5,r0
	addk	r11,r6,r0
	andi	r3,r7,32 #and1
	beqi	r3,$L321
	andi	r18,r7,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	addk	r9,r0,r0
	bri	$L322
$L321:
	srl	r5,r6
	xori	r4,r7,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r10
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r8,r3,r8
	andi	r18,r7,31
	addk	r9,r0,r6
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
$L322:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqi	r3,$L323
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r5,r0,r10
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	addk	r4,r0,r0
	bri	$L324
$L323:
	addk	r5,r10,r10
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r4,r7,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r5,r0,r11
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	or	r5,r3,r5
	andi	r18,r7,31
	addk	r4,r0,r10
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
$L324:
	or	r6,r4,r8
	or	r7,r5,r9
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r10,r5,r0
	addk	r11,r6,r0
	andi	r3,r7,32 #and1
	beqi	r3,$L326
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	addk	r8,r0,r0
	bri	$L327
$L326:
	addk	r5,r5,r5
	xori	r4,r7,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r9,r0,r6
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	or	r9,r3,r9
	andi	r18,r7,31
	addk	r8,r0,r10
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
$L327:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqi	r3,$L328
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r4,r0,r11
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	addk	r5,r0,r0
	bri	$L329
$L328:
	srl	r5,r11
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r4,r7,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r4,r0,r10
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	or	r4,r3,r4
	andi	r18,r7,31
	addk	r5,r0,r11
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
$L329:
	or	r6,r4,r8
	or	r7,r5,r9
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r4
	andi	r3,r3,0xffff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r3,r4
	andi	r3,r3,0xffff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	addik	r3,r0,8	# 0x8
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r4
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r0,8	# 0x8
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r3,r4
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r4,r0,r5
	addk	r4,r5,r5
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	andi	r4,r4,65280 #and2
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r6,r5,16711680 #and2
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r3,r3,r4
	andi	r4,r5,65280 #and2
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	or	r3,r3,r4
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
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,24,r15		# vars= 0, regs= 5, args= 0
	.mask	0x03c80000
	addik	r1,r1,-24
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	swi	r24,r1,16
	swi	r25,r1,20
	addk	r19,r1,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	andi	r4,r6,-16777216 #and2
	addk	r5,r0,r0
	addk	r9,r0,r4
	srl	r9,r4
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	andi	r22,r6,16711680 #and2
	addk	r11,r0,r22
	srl	r11,r22
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	or	r23,r11,r9
	andi	r10,r6,65280 #and2
	addk	r9,r0,r10
	addk	r9,r10,r10
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r8,r0,r10
	srl	r8,r10
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	or	r10,r5,r8
	or	r11,r23,r9
	andi	r22,r6,255 #and1
	src	r9,r22
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	andi	r9,r9,-16777216
	addk	r8,r0,r22
	srl	r8,r22
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	or	r24,r10,r8
	or	r25,r11,r9
	andi	r11,r7,-16777216 #and2
	addk	r3,r0,r11
	srl	r3,r11
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
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	or	r8,r3,r8
	addk	r9,r0,r11
	addk	r9,r11,r11
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	or	r22,r24,r8
	or	r23,r25,r9
	andi	r11,r7,16711680 #and2
	addk	r3,r0,r11
	srl	r3,r11
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	src	r8,r5
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	andi	r8,r8,-16777216
	or	r8,r3,r8
	src	r9,r11
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	andi	r9,r9,-16777216
	or	r10,r22,r8
	or	r11,r23,r9
	andi	r9,r7,65280 #and2
	addk	r22,r0,r9
	addk	r22,r9,r9
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	or	r8,r10,r22
	addk	r9,r11,r0
	andi	r11,r7,255 #and1
	src	r6,r11
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	or	r4,r8,r6
	addk	r3,r4,r0
	addk	r4,r9,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	lwi	r24,r1,16
	lwi	r25,r1,20
	addik	r1,r1,24
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	bri	$L342
$L345:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,1 #and1
	beqi	r4,$L343
	addik	r3,r3,1
	bri	$L344
$L343:
	addik	r3,r3,1
$L342:
	xori	r4,r3,32
	bnei	r4,$L345
	addk	r3,r0,r0
$L344:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	beqi	r5,$L350
	addik	r3,r0,1	# 0x1
	bri	$L348
$L349:
	sra	r5,r5
	addik	r3,r3,1
$L348:
	andi	r4,r5,1 #and1
	beqi	r4,$L349
	bri	$L347
$L350:
	addk	r3,r0,r0
$L347:
	addk	r1,r19,r0
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r5,r0
	lwi	r6,r0,$LC0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L354
	lwi	r6,r0,$LC1
	addk	r5,r22,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L357
	addik	r3,r0,1	# 0x1
	bri	$L352
$L354:
	addik	r3,r0,1	# 0x1
	bri	$L352
$L357:
	addk	r3,r0,r0
$L352:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L361
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L364
	addik	r3,r0,1	# 0x1
	bri	$L359
$L361:
	addik	r3,r0,1	# 0x1
	bri	$L359
$L364:
	addk	r3,r0,r0
$L359:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L368
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L371
	addik	r3,r0,1	# 0x1
	bri	$L366
$L368:
	addik	r3,r0,1	# 0x1
	bri	$L366
$L371:
	addk	r3,r0,r0
$L366:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r5,r6,r0
	brlid	r15,__floatsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r22,0
	swi	r5,r22,4
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
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
	.frame	r19,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L374
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	addk	r5,r22,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L374
	bgei	r23,$L379
	addik	r24,r0,0x3f000000
	bri	$L378
$L379:
	addik	r24,r0,0x40000000
$L378:
	andi	r3,r23,1 #and1
	beqi	r3,$L377
	addk	r6,r24,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L377:
	addk	r3,r0,r23
	srl	r3,r23
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
	srl	r3,r3
	addk	r3,r3,r23
	sra	r23,r3
	beqi	r23,$L374
	addk	r6,r24,r0
	addk	r5,r24,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r24,r3,r0
	bri	$L378
$L374:
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	addik	r1,r1,44
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
	.frame	r19,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x0dc88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L382
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L382
	bgei	r24,$L387
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	bri	$L386
$L387:
	addik	r26,r0,0x40000000 
	addik	r27,r0,0x00000000 #Xfer Lo
$L386:
	andi	r3,r24,1 #and1
	beqi	r3,$L385
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
$L385:
	addk	r3,r0,r24
	srl	r3,r24
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
	srl	r3,r3
	addk	r3,r3,r24
	sra	r24,r3
	beqi	r24,$L382
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r26,r0
	addk	r6,r27,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r26,r3,r0
	addk	r27,r4,r0
	bri	$L386
$L382:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	addik	r1,r1,52
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
	.frame	r19,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x0dc88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L390
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L390
	bgei	r24,$L395
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	bri	$L394
$L395:
	addik	r26,r0,0x40000000 
	addik	r27,r0,0x00000000 #Xfer Lo
$L394:
	andi	r3,r24,1 #and1
	beqi	r3,$L393
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
$L393:
	addk	r3,r0,r24
	srl	r3,r24
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
	srl	r3,r3
	addk	r3,r3,r24
	sra	r24,r3
	beqi	r24,$L390
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r26,r0
	addk	r6,r27,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r26,r3,r0
	addk	r27,r4,r0
	bri	$L394
$L390:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	addik	r1,r1,52
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r0,r0
	bri	$L398
$L399:
	lbu	r8,r4,r6
	lbu	r5,r4,r3
	xor	r5,r5,r8
	sb	r5,r4,r3
	addik	r4,r4,1
$L398:
	xor	r5,r4,r7
	bnei	r5,$L399
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r23,r6,r0
	addk	r22,r7,r0
	brlid	r15,strlen
	nop		# Unfilled delay slot

	addk	r3,r24,r3
	bri	$L401
$L403:
	addik	r23,r23,1
	addik	r3,r3,1
	addik	r22,r22,-1
$L401:
	beqi	r22,$L402
	lbui	r4,r23,0
	sext8	r4,r4
	sbi	r4,r3,0
	bnei	r4,$L403
$L402:
	bnei	r22,$L404
	sbi	r0,r3,0
$L404:
	addk	r3,r24,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	addik	r1,r1,44
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	bri	$L406
$L408:
	addik	r3,r3,1
$L406:
	xor	r4,r3,r6
	beqi	r4,$L407
	lbu	r4,r3,r5
	bnei	r4,$L408
$L407:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bri	$L410
$L412:
	addik	r4,r4,1
	lbui	r7,r4,-1
	lbui	r3,r5,0
	xor	r3,r3,r7
	sext8	r3,r3
	beqi	r3,$L414
	bri	$L413
$L415:
	addk	r4,r6,r0
$L413:
	lbui	r3,r4,0
	bnei	r3,$L412
	addik	r5,r5,1
$L410:
	lbui	r3,r5,0
	bnei	r3,$L415
	bri	$L411
$L414:
	addk	r3,r5,r0
$L411:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
$L418:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	bnei	r4,$L417
	addk	r3,r5,r0
$L417:
	addik	r5,r5,1
	lbui	r4,r5,-1
	bnei	r4,$L418
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r5,r6,r0
	brlid	r15,strlen
	nop		# Unfilled delay slot

	addk	r24,r3,r0
	beqi	r3,$L424
	lbui	r25,r23,0
	sext8	r25,r25
	bri	$L422
$L423:
	addk	r7,r24,r0
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,strncmp
	nop		# Unfilled delay slot

	beqi	r3,$L425
	addik	r22,r22,1
$L422:
	addk	r6,r25,r0
	addk	r5,r22,r0
	brlid	r15,strchr
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	bnei	r3,$L423
	addk	r3,r0,r0
	bri	$L421
$L424:
	addk	r3,r22,r0
	bri	$L421
$L425:
	addk	r3,r22,r0
$L421:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L427
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	bgti	r3,$L429
$L427:
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L437
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L438
$L429:
	addik	r4,r22,-2147483648
	addk	r5,r23,r0
	bri	$L430
$L437:
	addk	r4,r22,r0
	addk	r5,r23,r0
	bri	$L430
$L438:
	addk	r4,r22,r0
	addk	r5,r23,r0
$L430:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r24,r7,r0
	addk	r23,r8,r0
	rsubk	r25,r8,r6
	addk	r25,r5,r25
	beqi	r8,$L445
	addik	r3,r0,1	# 0x1
	cmpu	r18,r8,r6
	blti	r18,$L441
	addk	r3,r0,r0
$L441:
	andi	r3,r3,0x00ff
	bnei	r3,$L446
	bri	$L442
$L444:
	lbui	r4,r22,0
	lbui	r3,r24,0
	xor	r3,r3,r4
	sext8	r3,r3
	bnei	r3,$L443
	addik	r5,r22,1
	addik	r7,r23,-1
	addik	r6,r24,1
	brlid	r15,memcmp
	nop		# Unfilled delay slot

	beqi	r3,$L447
$L443:
	addik	r22,r22,1
$L442:
	cmpu	r18,r22,r25
	bgei	r18,$L444
	addk	r3,r0,r0
	bri	$L440
$L445:
	addk	r3,r5,r0
	bri	$L440
$L446:
	addk	r3,r0,r0
	bri	$L440
$L447:
	addk	r3,r22,r0
$L440:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r7,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

	addk	r3,r3,r22
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
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
	.frame	r19,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r25,r7,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L465
	addik	r4,r22,-2147483648
	addk	r5,r23,r0
	addk	r22,r4,r0
	addik	r26,r0,1	# 0x1
	bri	$L450
$L465:
	addk	r26,r0,r0
$L450:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	bgei	r3,$L462
	bri	$L466
$L454:
	addik	r24,r24,1
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
	bri	$L452
$L462:
	addk	r24,r0,r0
$L452:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	bgei	r3,$L454
	bri	$L455
$L466:
	addik	r24,r0,1	# 0x1
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	bnei	r3,$L456
	addk	r24,r0,r0
$L456:
	andi	r24,r24,0x00ff
	addik	r27,r0,1	# 0x1
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L457
	addk	r27,r0,r0
$L457:
	and	r24,r24,r27
	bnei	r24,$L463
	bri	$L455
$L459:
	addik	r24,r24,-1
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
	bri	$L458
$L463:
	addk	r24,r0,r0
$L458:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L459
$L455:
	swi	r24,r25,0
	beqi	r26,$L460
	addik	r4,r22,-2147483648
	addk	r5,r23,r0
	addk	r22,r4,r0
$L460:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	addik	r1,r1,56
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
	.frame	r19,24,r15		# vars= 0, regs= 5, args= 0
	.mask	0x03c80000
	addik	r1,r1,-24
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	swi	r24,r1,16
	swi	r25,r1,20
	addk	r19,r1,r0
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	addk	r7,r8,r0
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	bri	$L468
$L471:
	addk	r24,r0,r0
	andi	r25,r5,1 #and1
	or	r3,r24,r25
	beqi	r3,$L469
	add	r9,r9,r7
	addc	r8,r8,r6
$L469:
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
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r10,r6,r6
	or	r10,r3,r10
	addk	r11,r7,r7
	addk	r6,r10,r0
	addk	r7,r11,r0
	src	r3,r4
	src	r3,r3
	andi	r3,r3,-2147483648
	srl	r23,r5
	or	r23,r3,r23
	srl	r22,r4
	addk	r4,r22,r0
	addk	r5,r23,r0
$L468:
	or	r3,r4,r5
	bnei	r3,$L471
	addk	r3,r8,r0
	addk	r4,r9,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	lwi	r24,r1,16
	lwi	r25,r1,20
	addik	r1,r1,24
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	bri	$L473
$L476:
	addk	r6,r6,r6
	addk	r3,r3,r3
$L473:
	addik	r9,r0,1	# 0x1
	cmpu	r18,r5,r6
	blti	r18,$L474
	addk	r9,r0,r0
$L474:
	rsubk	r8,r3,r0
	or	r8,r8,r3
	addk	r4,r0,r8
	srl	r4,r8
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	and	r4,r4,r9
	beqi	r4,$L481
	bgei	r6,$L476
	addk	r4,r0,r0
	bri	$L478
$L479:
	cmpu	r18,r6,r5
	blti	r18,$L477
	rsubk	r5,r6,r5
	or	r4,r4,r3
$L477:
	srl	r3,r3
	srl	r6,r6
	bri	$L478
$L481:
	addk	r4,r0,r0
$L478:
	bnei	r3,$L479
	bnei	r7,$L482
	addk	r3,r4,r0
	bri	$L480
$L482:
	addk	r3,r5,r0
$L480:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	bgei	r5,$L484
	xori	r5,r5,-1
$L484:
	beqi	r5,$L486
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	brlid	r15,__clzsi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	bri	$L485
$L486:
	addik	r3,r0,7	# 0x7
$L485:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	addk	r4,r5,r0
	addk	r5,r6,r0
	bgei	r4,$L488
	xori	r6,r4,-1
	xori	r7,r5,-1
	addk	r4,r6,r0
	addk	r5,r7,r0
$L488:
	or	r3,r4,r5
	beqi	r3,$L492
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	bri	$L490
$L492:
	addik	r3,r0,63	# 0x3f
$L490:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	bri	$L494
$L496:
	andi	r4,r5,1 #and1
	beqi	r4,$L495
	addk	r3,r3,r6
$L495:
	srl	r5,r5
	addk	r6,r6,r6
$L494:
	bnei	r5,$L496
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addik	r1,r1,-16
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	addk	r19,r1,r0
	addk	r4,r0,r7
	srl	r4,r7
	srl	r4,r4
	srl	r4,r4
	andi	r3,r7,-8 #and1
	cmpu	r18,r6,r5
	bgei	r18,$L498
$L500:
	addk	r10,r6,r0
	addk	r9,r5,r0
	addk	r8,r0,r0
	bri	$L499
$L498:
	addk	r8,r6,r7
	cmpu	r18,r5,r8
	blti	r18,$L500
	bri	$L501
$L502:
	lwi	r22,r10,0
	lwi	r23,r10,4
	swi	r22,r9,0
	swi	r23,r9,4
	addik	r8,r8,1
	addik	r10,r10,8
	addik	r9,r9,8
$L499:
	xor	r11,r8,r4
	bnei	r11,$L502
	bri	$L503
$L504:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L503:
	cmpu	r18,r7,r3
	blti	r18,$L504
	bri	$L497
$L506:
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L501:
	addik	r7,r7,-1
	xori	r3,r7,-1
	bnei	r3,$L506
$L497:
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	srl	r3,r7
	cmpu	r18,r6,r5
	bgei	r18,$L508
$L510:
	addk	r4,r3,r3
	addk	r3,r0,r0
	bri	$L509
$L508:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	blti	r18,$L510
	bri	$L511
$L512:
	lhu	r8,r3,r6
	sh	r8,r3,r5
	addik	r3,r3,2
$L509:
	xor	r8,r3,r4
	bnei	r8,$L512
	andi	r3,r7,1 #and1
	beqi	r3,$L507
	addik	r7,r7,-1
	lbu	r3,r7,r6
	sb	r3,r7,r5
	bri	$L507
$L514:
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L511:
	addik	r7,r7,-1
	xori	r3,r7,-1
	bnei	r3,$L514
$L507:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	andi	r4,r7,-4 #and1
	cmpu	r18,r6,r5
	bgei	r18,$L516
$L518:
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r8,r0,r0
	bri	$L517
$L516:
	addk	r8,r6,r7
	cmpu	r18,r5,r8
	blti	r18,$L518
	bri	$L519
$L520:
	lw	r9,r8,r6
	sw	r9,r8,r5
	addik	r8,r8,4
$L517:
	xor	r9,r8,r3
	bnei	r9,$L520
	bri	$L521
$L522:
	lbu	r3,r4,r6
	sb	r3,r4,r5
	addik	r4,r4,1
$L521:
	cmpu	r18,r7,r4
	blti	r18,$L522
	bri	$L515
$L524:
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L519:
	addik	r7,r7,-1
	xori	r3,r7,-1
	bnei	r3,$L524
$L515:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__floatunsidf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__floatunsisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__floatundidf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__floatundisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__umodsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	bri	$L532
$L534:
	addik	r4,r0,15	# 0xf
	rsubk	r6,r3,r4
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L533
	addik	r3,r3,1
$L532:
	xori	r4,r3,16
	bnei	r4,$L534
$L533:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	bri	$L536
$L538:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L537
	addik	r3,r3,1
$L536:
	xori	r4,r3,16
	bnei	r4,$L538
$L537:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r5,r0
	addik	r6,r0,0x47000000
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	blti	r3,$L544
	addik	r6,r0,0x47000000
	addk	r5,r22,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	bri	$L542
$L544:
	addk	r5,r22,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

$L542:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	addk	r4,r3,r0
	bri	$L546
$L548:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L547
	addik	r3,r3,1
$L547:
	addik	r4,r4,1
$L546:
	xori	r6,r4,16
	bnei	r6,$L548
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	addk	r4,r3,r0
	bri	$L550
$L552:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L551
	addik	r3,r3,1
$L551:
	addik	r4,r4,1
$L550:
	xori	r6,r4,16
	bnei	r6,$L552
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	bri	$L554
$L556:
	andi	r4,r5,1 #and1
	beqi	r4,$L555
	addk	r3,r3,r6
$L555:
	srl	r5,r5
	addk	r6,r6,r6
$L554:
	bnei	r5,$L556
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	beqi	r5,$L562
	addk	r3,r0,r0
	bri	$L559
$L561:
	andi	r4,r6,1 #and1
	beqi	r4,$L560
	addk	r3,r3,r5
$L560:
	addk	r5,r5,r5
	srl	r6,r6
$L559:
	bnei	r6,$L561
	bri	$L558
$L562:
	addk	r3,r0,r0
$L558:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	bri	$L564
$L567:
	addk	r6,r6,r6
	addk	r3,r3,r3
$L564:
	addik	r9,r0,1	# 0x1
	cmpu	r18,r5,r6
	blti	r18,$L565
	addk	r9,r0,r0
$L565:
	rsubk	r8,r3,r0
	or	r8,r8,r3
	addk	r4,r0,r8
	srl	r4,r8
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	and	r4,r4,r9
	beqi	r4,$L572
	bgei	r6,$L567
	addk	r4,r0,r0
	bri	$L569
$L570:
	cmpu	r18,r6,r5
	blti	r18,$L568
	rsubk	r5,r6,r5
	or	r4,r4,r3
$L568:
	srl	r3,r3
	srl	r6,r6
	bri	$L569
$L572:
	addk	r4,r0,r0
$L569:
	bnei	r3,$L570
	bnei	r7,$L573
	addk	r3,r4,r0
	bri	$L571
$L573:
	addk	r3,r5,r0
$L571:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L576
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgti	r3,$L577
	addk	r3,r0,r0
	bri	$L575
$L576:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L575
$L577:
	addik	r3,r0,1	# 0x1
$L575:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L580
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	bgti	r3,$L581
	addk	r3,r0,r0
	bri	$L579
$L580:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L579
$L581:
	addik	r3,r0,1	# 0x1
$L579:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	addk	r5,r0,r5
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	addk	r7,r0,r6
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
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r0,r0
	addk	r7,r4,r0
	addk	r8,r6,r0
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	bgei	r6,$L591
	rsubk	r6,r6,r0
	addik	r9,r0,1	# 0x1
	bri	$L585
$L591:
	addk	r9,r0,r0
$L585:
	addk	r3,r0,r0
	addk	r4,r3,r0
	bri	$L586
$L589:
	andi	r7,r6,1 #and1
	beqi	r7,$L587
	addk	r3,r3,r5
$L587:
	addk	r5,r5,r5
	sra	r6,r6
	addik	r4,r4,1
	sext8	r4,r4
$L586:
	rsubk	r8,r6,r0
	or	r8,r8,r6
	addk	r7,r0,r8
	srl	r7,r8
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	andi	r8,r4,0x00ff
	addik	r10,r0,1	# 0x1
	addik	r11,r0,31	# 0x1f
	cmpu	r18,r8,r11
	bgei	r18,$L588
	addk	r10,r0,r0
$L588:
	and	r7,r7,r10
	bnei	r7,$L589
	beqi	r9,$L590
	rsubk	r3,r3,r0
$L590:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	bgei	r5,$L597
	rsubk	r5,r5,r0
	addik	r22,r0,1	# 0x1
	bri	$L594
$L597:
	addk	r22,r0,r0
$L594:
	bgei	r6,$L595
	rsubk	r6,r6,r0
	xori	r22,r22,1
$L595:
	addk	r7,r0,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	beqi	r22,$L596
	rsubk	r3,r3,r0
$L596:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	bgei	r5,$L602
	rsubk	r5,r5,r0
	addik	r22,r0,1	# 0x1
	bri	$L599
$L602:
	addk	r22,r0,r0
$L599:
	bgei	r6,$L600
	rsubk	r6,r6,r0
$L600:
	addik	r7,r0,1	# 0x1
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	beqi	r22,$L601
	rsubk	r3,r3,r0
$L601:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	bri	$L604
$L607:
	addk	r6,r6,r6
	andi	r6,r6,0xffff
	addk	r3,r3,r3
	andi	r3,r3,0xffff
$L604:
	addik	r8,r0,1	# 0x1
	cmpu	r18,r5,r6
	blti	r18,$L605
	addk	r8,r0,r0
$L605:
	rsubk	r9,r3,r0
	addk	r4,r0,r9
	srl	r4,r9
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	and	r4,r4,r8
	beqi	r4,$L612
	sext16	r4,r6
	bgei	r4,$L607
	addk	r4,r0,r0
	bri	$L609
$L610:
	cmpu	r18,r6,r5
	blti	r18,$L608
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
	or	r4,r4,r3
$L608:
	srl	r3,r3
	srl	r6,r6
	bri	$L609
$L612:
	addk	r4,r0,r0
$L609:
	bnei	r3,$L610
	bnei	r7,$L613
	addk	r3,r4,r0
	bri	$L611
$L613:
	addk	r3,r5,r0
$L611:
	addk	r1,r19,r0
	lwi	r19,r1,4
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addik	r3,r0,1	# 0x1
	bri	$L615
$L618:
	addk	r6,r6,r6
	addk	r3,r3,r3
$L615:
	addik	r9,r0,1	# 0x1
	cmpu	r18,r5,r6
	blti	r18,$L616
	addk	r9,r0,r0
$L616:
	rsubk	r8,r3,r0
	or	r8,r8,r3
	addk	r4,r0,r8
	srl	r4,r8
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	and	r4,r4,r9
	beqi	r4,$L623
	bgei	r6,$L618
	addk	r4,r0,r0
	bri	$L620
$L621:
	cmpu	r18,r6,r5
	blti	r18,$L619
	rsubk	r5,r6,r5
	or	r4,r4,r3
$L619:
	srl	r3,r3
	srl	r6,r6
	bri	$L620
$L623:
	addk	r4,r0,r0
$L620:
	bnei	r3,$L621
	bnei	r7,$L624
	addk	r3,r4,r0
	bri	$L622
$L624:
	addk	r3,r5,r0
$L622:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r8,r4,r0
	andi	r3,r7,32 #and1
	beqi	r3,$L626
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r4,r3,r0
	bri	$L627
$L626:
	beqi	r7,$L629
	andi	r18,r7,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r18,r7,31
	addk	r9,r0,r8
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	addik	r3,r0,32	# 0x20
	rsubk	r7,r7,r3
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r9
	addk	r4,r3,r0
$L627:
	addk	r6,r4,r0
	addk	r7,r5,r0
	bri	$L628
$L629:
	addk	r6,r4,r0
	addk	r7,r5,r0
$L628:
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r10,r4,r0
	addk	r11,r6,r0
	andi	r3,r7,32 #and1
	beqi	r3,$L631
	addk	r4,r0,r10
	sra	r4,r10
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
	andi	r18,r7,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	addk	r5,r3,r0
	bri	$L632
$L631:
	beqi	r7,$L634
	andi	r18,r7,31
	addk	r4,r0,r10
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	addik	r6,r0,32	# 0x20
	rsubk	r8,r7,r6
	andi	r18,r8,31
	addk	r6,r0,r10
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r18,r7,31
	addk	r3,r0,r11
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r5,r6,r3
$L632:
	addk	r6,r4,r0
	addk	r7,r5,r0
	bri	$L633
$L634:
	addk	r6,r4,r0
	addk	r7,r5,r0
$L633:
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,56,r15		# vars= 8, regs= 11, args= 0
	.mask	0xffc80000
	addik	r1,r1,-56
	swi	r19,r1,12
	swi	r22,r1,16
	swi	r23,r1,20
	swi	r24,r1,24
	swi	r25,r1,28
	swi	r26,r1,32
	swi	r27,r1,36
	swi	r28,r1,40
	swi	r29,r1,44
	swi	r30,r1,48
	swi	r31,r1,52
	addk	r19,r1,r0
	addk	r28,r5,r0
	addk	r29,r6,r0
	addk	r5,r0,r28
	srl	r5,r28
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
	addk	r4,r0,r0
	addk	r7,r0,r28
	srl	r7,r28
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	addk	r24,r4,r0
	andi	r25,r7,65280 #and2
	addk	r12,r0,r28
	addk	r12,r28,r28
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r7,r0,r29
	srl	r7,r29
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	or	r7,r12,r7
	andi	r23,r7,16711680 #and2
	src	r3,r28
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	addk	r7,r0,r29
	srl	r7,r29
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	or	r7,r3,r7
	andi	r11,r7,-16777216 #and2
	addk	r6,r0,r29
	srl	r6,r29
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
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	swi	r8,r19,4
	swi	r9,r19,8
	swi	r12,r19,4
	or	r6,r6,r12
	swi	r6,r19,4
	addk	r6,r0,r29
	addk	r6,r29,r29
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	swi	r6,r19,8
	lwi	r6,r19,4
	andi	r26,r6,255 #and1
	addk	r8,r0,r29
	srl	r8,r29
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	or	r6,r8,r3
	src	r7,r29
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
	andi	r28,r6,65280 #and2
	lwi	r30,r19,8
	andi	r8,r30,16711680 #and2
	addk	r30,r7,r0
	addk	r7,r5,r0
	or	r4,r30,r24
	or	r5,r7,r25
	or	r6,r4,r24
	or	r7,r5,r23
	or	r4,r6,r24
	or	r5,r7,r11
	or	r6,r4,r26
	addk	r7,r5,r0
	or	r4,r6,r28
	addk	r5,r7,r0
	or	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,12
	lwi	r22,r1,16
	lwi	r23,r1,20
	lwi	r24,r1,24
	lwi	r25,r1,28
	lwi	r26,r1,32
	lwi	r27,r1,36
	lwi	r28,r1,40
	lwi	r29,r1,44
	lwi	r30,r1,48
	lwi	r31,r1,52
	addik	r1,r1,56
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r6,r6,65280 #and2
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r4,r3,16711680 #and2
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
	or	r3,r3,r7
	or	r3,r3,r6
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r6,r5,r0
	addik	r3,r0,65535
	cmpu	r18,r5,r3
	blti	r18,$L642
	addik	r22,r0,16	# 0x10
	bri	$L638
$L642:
	addk	r22,r0,r0
$L638:
	addik	r3,r0,16	# 0x10
	rsubk	r3,r22,r3
	addk	r4,r6,r0
	andi	r18,r3,31
	addk	r6,r0,r4
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,65280 #and2
	bnei	r3,$L643
	addik	r3,r0,8	# 0x8
	bri	$L639
$L643:
	addk	r3,r0,r0
$L639:
	addik	r4,r0,8	# 0x8
	rsubk	r4,r3,r4
	addk	r5,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r22,r22,r3
	andi	r3,r6,240 #and1
	bnei	r3,$L644
	addik	r3,r0,4	# 0x4
	bri	$L640
$L644:
	addk	r3,r0,r0
$L640:
	addik	r4,r0,4	# 0x4
	rsubk	r4,r3,r4
	addk	r5,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r22,r22,r3
	andi	r3,r6,12 #and1
	bnei	r3,$L645
	addik	r3,r0,2	# 0x2
	bri	$L641
$L645:
	addk	r3,r0,r0
$L641:
	addik	r7,r0,2	# 0x2
	rsubk	r4,r3,r7
	addk	r5,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r22,r22,r3
	and	r4,r6,r7
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
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
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	rsubk	r6,r6,r7
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r10,r5,r0
	cmp	r18,r7,r5
	blti	r18,$L648
	cmp	r18,r5,r7
	blti	r18,$L649
	cmpu	r18,r8,r6
	blti	r18,$L650
	cmpu	r18,r6,r8
	blti	r18,$L651
	addik	r3,r0,1	# 0x1
	bri	$L647
$L648:
	addk	r3,r0,r0
	bri	$L647
$L649:
	addik	r3,r0,2	# 0x2
	bri	$L647
$L650:
	addk	r3,r0,r0
	bri	$L647
$L651:
	addik	r3,r0,2	# 0x2
$L647:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__cmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r3,r5,65535 #and2
	bnei	r3,$L658
	addik	r3,r0,16	# 0x10
	bri	$L654
$L658:
	addk	r3,r0,r0
$L654:
	addk	r4,r5,r0
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,255 #and1
	bnei	r4,$L659
	addik	r4,r0,8	# 0x8
	bri	$L655
$L659:
	addk	r4,r0,r0
$L655:
	addk	r6,r5,r0
	andi	r18,r4,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	addk	r3,r3,r4
	andi	r4,r5,15 #and1
	bnei	r4,$L660
	addik	r4,r0,4	# 0x4
	bri	$L656
$L660:
	addk	r4,r0,r0
$L656:
	addk	r6,r5,r0
	andi	r18,r4,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	addk	r3,r3,r4
	andi	r4,r5,3 #and1
	bnei	r4,$L661
	addik	r4,r0,2	# 0x2
	bri	$L657
$L661:
	addk	r4,r0,r0
$L657:
	addk	r6,r5,r0
	andi	r18,r4,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r5,r5,3 #and1
	addk	r3,r3,r4
	xori	r4,r5,-1
	andi	r4,r4,1 #and1
	srl	r5,r5
	addik	r6,r0,2	# 0x2
	rsubk	r5,r5,r6
	rsubk	r4,r4,r0
	and	r5,r5,r4
	addk	r3,r3,r5
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r10,r4,r0
	addk	r11,r6,r0
	andi	r3,r7,32 #and1
	beqi	r3,$L663
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	andi	r18,r7,31
	addk	r5,r0,r10
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	bri	$L664
$L663:
	beqi	r7,$L666
	andi	r18,r7,31
	addk	r4,r0,r10
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r6,r0,32	# 0x20
	rsubk	r8,r7,r6
	andi	r18,r8,31
	addk	r6,r0,r10
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r18,r7,31
	addk	r3,r0,r11
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r5,r6,r3
$L664:
	addk	r6,r4,r0
	addk	r7,r5,r0
	bri	$L665
$L666:
	addk	r6,r4,r0
	addk	r7,r5,r0
$L665:
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0x7fc88000
	addik	r1,r1,-68
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r29,r1,60
	swi	r30,r1,64
	addk	r19,r1,r0
	addk	r27,r5,r0
	addk	r28,r6,r0
	andi	r29,r5,65535 #and2
	andi	r30,r6,65535 #and2
	addk	r6,r30,r0
	addk	r5,r29,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r24,r0,r3
	srl	r24,r3
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	andi	r25,r3,65535 #and2
	addk	r26,r0,r27
	srl	r26,r27
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	addk	r6,r30,r0
	addk	r5,r26,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r24,r24,r3
	addk	r4,r24,r24
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
	addk	r23,r4,r25
	addk	r3,r0,r24
	srl	r3,r24
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
	addk	r22,r3,r0
	addk	r24,r0,r23
	srl	r24,r23
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	andi	r25,r23,65535 #and2
	addk	r27,r0,r28
	srl	r27,r28
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	addk	r6,r27,r0
	addk	r5,r29,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r24,r24,r3
	addk	r3,r24,r24
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
	addk	r23,r3,r25
	addk	r3,r0,r24
	srl	r3,r24
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
	addk	r24,r3,r22
	addk	r6,r27,r0
	addk	r5,r26,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r3,r24
	addk	r5,r23,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	lwi	r30,r1,64
	addik	r1,r1,68
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
	.frame	r19,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0xdfc88000
	addik	r1,r1,-68
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r30,r1,60
	swi	r31,r1,64
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r26,r7,r0
	addk	r27,r8,r0
	addk	r6,r8,r0
	addk	r5,r23,r0
	brlid	r15,__muldsi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r25,r4,r0
	addk	r28,r3,r0
	addk	r6,r27,r0
	addk	r5,r22,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r6,r23,r0
	addk	r5,r26,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	addk	r3,r3,r28
	addk	r5,r25,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r30,r1,60
	lwi	r31,r1,64
	addik	r1,r1,68
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	addk	r5,r6,r0
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	xor	r4,r6,r5
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
	xor	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r4,r4,r3
	andi	r4,r4,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
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
	xor	r3,r5,r3
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	xor	r3,r3,r4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	xor	r3,r3,r4
	andi	r3,r3,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r3,r4,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	src	r3,r5
	src	r3,r3
	andi	r3,r3,-2147483648
	srl	r5,r7
	or	r5,r3,r5
	srl	r4,r6
	andi	r8,r4,1431655765 #and2
	andi	r9,r5,1431655765 #and2
	rsub	r5,r9,r7
	rsubc	r4,r8,r6
	src	r3,r4
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-1073741824
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	or	r7,r3,r7
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	andi	r8,r6,858993459 #and2
	andi	r9,r7,858993459 #and2
	andi	r6,r4,858993459 #and2
	andi	r7,r5,858993459 #and2
	add	r5,r9,r7
	addc	r4,r8,r6
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	or	r7,r3,r7
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	add	r7,r7,r5
	addc	r6,r6,r4
	andi	r4,r6,252645135 #and2
	andi	r5,r7,252645135 #and2
	addk	r4,r4,r5
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
	addk	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r4
	andi	r3,r3,127 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	srl	r4,r5
	andi	r4,r4,1431655765 #and2
	rsubk	r4,r4,r5
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	andi	r3,r3,858993459 #and2
	andi	r4,r4,858993459 #and2
	addk	r4,r3,r4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r4,r3,r4
	andi	r4,r4,252645135 #and2
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
	addk	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r4
	andi	r3,r3,63 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r19,r1,r0
	addk	r26,r5,r0
	addk	r27,r6,r0
	addk	r24,r7,r0
	addk	r25,r0,r7
	srl	r25,r7
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	addik	r22,r0,0x3ff00000 
	addik	r23,r0,0x00000000 #Xfer Lo
$L677:
	andi	r3,r24,1 #and1
	beqi	r3,$L675
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
$L675:
	addk	r3,r0,r24
	srl	r3,r24
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
	srl	r3,r3
	addk	r3,r3,r24
	sra	r24,r3
	beqi	r24,$L676
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r26,r0
	addk	r6,r27,r0
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r26,r3,r0
	addk	r27,r4,r0
	bri	$L677
$L676:
	beqi	r25,$L678
	addk	r7,r22,r0
	addk	r8,r23,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	addk	r23,r4,r0
$L678:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	addik	r1,r1,56
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
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r23,r6,r0
	addk	r25,r0,r6
	srl	r25,r6
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	addik	r22,r0,0x3f800000
$L683:
	andi	r3,r23,1 #and1
	beqi	r3,$L681
	addk	r6,r24,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L681:
	addk	r3,r0,r23
	srl	r3,r23
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
	srl	r3,r3
	addk	r23,r3,r23
	sra	r23,r23
	beqi	r23,$L682
	addk	r6,r24,r0
	addk	r5,r24,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r24,r3,r0
	bri	$L683
$L682:
	beqi	r25,$L685
	addk	r6,r22,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	bri	$L684
$L685:
	addk	r3,r22,r0
$L684:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r1,r1,48
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r10,r5,r0
	cmpu	r18,r7,r5
	blti	r18,$L688
	cmpu	r18,r5,r7
	blti	r18,$L689
	cmpu	r18,r8,r6
	blti	r18,$L690
	cmpu	r18,r6,r8
	blti	r18,$L691
	addik	r3,r0,1	# 0x1
	bri	$L687
$L688:
	addk	r3,r0,r0
	bri	$L687
$L689:
	addik	r3,r0,2	# 0x2
	bri	$L687
$L690:
	addk	r3,r0,r0
	bri	$L687
$L691:
	addik	r3,r0,2	# 0x2
$L687:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	brlid	r15,__ucmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
