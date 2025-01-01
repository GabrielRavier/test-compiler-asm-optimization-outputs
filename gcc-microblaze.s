	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r5,r6
	bgeid	r18,$L2
	addk	r3,r5,r0
	addik	r6,r6,-1
	brid	$L3
	addik	r4,r5,-1
$L4:
	lbu	r5,r7,r6
	sb	r5,r7,r4
	addik	r7,r7,-1
$L3:
	bnei	r7,$L4
	bri	$L5
$L2:
	xor	r5,r5,r6
	bneid	r5,$L6
	addk	r4,r0,r0
	bri	$L5
$L7:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L6:
	xor	r5,r4,r7
	bnei	r5,$L7
$L5:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L11
	andi	r7,r7,0x00ff
$L17:
	addik	r6,r6,1
	addik	r5,r5,1
$L11:
	beqid	r8,$L16
	addk	r3,r0,r0
	lbui	r3,r6,0
	sbi	r3,r5,0
	xor	r3,r7,r3
	bneid	r3,$L17
	addik	r8,r8,-1
	addik	r8,r8,1
	beqid	r8,$L14
	addk	r3,r0,r0
	addik	r3,r5,1
$L14:
$L16:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L19
	andi	r6,r6,0x00ff
$L24:
	addik	r7,r7,-1
$L19:
	beqi	r7,$L20
	lbui	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L24
	addik	r5,r5,1
	addik	r5,r5,-1
$L20:
	bneid	r7,$L22
	addk	r3,r5,r0
	addk	r3,r0,r0
$L22:
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
	bri	$L26
$L32:
	addik	r5,r5,1
	addik	r6,r6,1
$L26:
	beqid	r7,$L31
	addk	r3,r0,r0
	lbui	r3,r5,0
	lbui	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L32
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L29
	addk	r3,r0,r0
	lbui	r3,r5,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
$L29:
$L31:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L34
	addk	r4,r0,r0
$L35:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L34:
	xor	r8,r4,r7
	bnei	r8,$L35
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r6,r6,0x00ff
	brid	$L37
	addik	r7,r7,-1
$L39:
	lbu	r4,r7,r5
	xor	r4,r6,r4
	bneid	r4,$L40
	addik	r8,r7,-1
	brid	$L38
	addk	r3,r5,r7
$L40:
	addk	r7,r8,r0
$L37:
	xori	r4,r7,-1
	bneid	r4,$L39
	addk	r3,r0,r0
$L38:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	addk	r7,r5,r7
	addk	r4,r5,r0
	brid	$L42
	andi	r6,r6,0x00ff
$L43:
	sbi	r6,r4,0
	addik	r4,r4,1
$L42:
	xor	r8,r4,r7
	bnei	r8,$L43
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
	brid	$L45
	addk	r3,r5,r0
$L46:
	addik	r6,r6,1
	addik	r3,r3,1
$L45:
	lbui	r4,r6,0
	sbi	r4,r3,0
	sext8	r4,r4
	bnei	r4,$L46
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L48
	andi	r6,r6,0x00ff
$L48:
	lbui	r4,r3,0
	beqid	r4,$L49
	xor	r4,r6,r4
	bneid	r4,$L48
	addik	r3,r3,1
	addik	r3,r3,-1
$L49:
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
$L53:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	beqid	r4,$L54
	addk	r3,r5,r0
	addik	r5,r5,1
	lbui	r3,r5,-1
	bnei	r3,$L53
$L54:
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
	brid	$L60
	lbui	r4,r5,0
$L61:
	addik	r6,r6,1
	lbui	r4,r5,0
$L60:
	lbui	r3,r6,0
	xor	r3,r3,r4
	sext8	r3,r3
	bnei	r3,$L58
	bneid	r4,$L61
	addik	r5,r5,1
	addik	r5,r5,-1
$L58:
	lbui	r4,r5,0
	lbui	r3,r6,0
	rtsd	r15,8 
	
	rsubk	r3,r3,r4
	.end	strcmp
$Lfe11:
	.size	strcmp,$Lfe11-strcmp
	.align	2
	.globl	strlen
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L63
	addk	r3,r5,r0
$L64:
	addik	r3,r3,1
$L63:
	lbui	r6,r3,0
	bnei	r6,$L64
	rtsd	r15,8 
	
	rsubk	r3,r5,r3
	.end	strlen
$Lfe12:
	.size	strlen,$Lfe12-strlen
	.align	2
	.globl	strncmp
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqid	r7,$L70
	addk	r3,r5,r0
	addik	r7,r7,-1
	brid	$L67
	addk	r8,r7,r5
$L71:
	addik	r6,r6,1
$L67:
	lbui	r4,r3,0
	beqid	r4,$L68
	rsubk	r7,r3,r8
	lbui	r4,r6,0
	rsubk	r5,r8,r3
	or	r5,r5,r7
	rsubk	r4,r4,r0
	and	r4,r4,r5
	bgei	r4,$L68
	lbui	r4,r3,0
	lbui	r5,r6,0
	xor	r4,r4,r5
	beqid	r4,$L71
	addik	r3,r3,1
	addik	r3,r3,-1
$L68:
	lbui	r3,r3,0
	lbui	r4,r6,0
	brid	$L66
	rsubk	r3,r4,r3
$L70:
	addk	r3,r0,r0
$L66:
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
	addk	r3,r5,r0
	addk	r7,r5,r7
	brid	$L73
	addik	r5,r0,1	# 0x1
$L74:
	lbui	r4,r3,1
	sbi	r4,r6,0
	lbui	r4,r3,0
	sbi	r4,r6,1
	addik	r6,r6,2
	addik	r3,r3,2
$L73:
	rsubk	r4,r3,r7
	cmp	r18,r4,r5
	blti	r18,$L74
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
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L76
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L76:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,127	# 0x7f
	cmpu	r18,r5,r4
	bgeid	r18,$L78
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L78:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	xori	r3,r5,32
	rsubk	r4,r3,r0
	or	r4,r4,r3
	xori	r5,r5,9
	rsubk	r3,r5,r0
	or	r3,r3,r5
	and	r3,r3,r4
	xori	r3,r3,-1
	addk	r4,r3,r0
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
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgeid	r18,$L81
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L81:
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
	rtsd	r15,8 
	
	or	r3,r3,r5
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
	addik	r5,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgeid	r18,$L83
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L83:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r5,r5,-33
	addik	r4,r0,93	# 0x5d
	cmpu	r18,r5,r4
	bgeid	r18,$L85
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L85:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r5,r5,-97
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L87
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L87:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r5,r5,-32
	addik	r4,r0,94	# 0x5e
	cmpu	r18,r5,r4
	bgeid	r18,$L89
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L89:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	xori	r3,r5,32
	rsubk	r4,r3,r0
	or	r4,r4,r3
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
	addik	r5,r5,-9
	addik	r6,r0,4	# 0x4
	cmpu	r18,r5,r6
	bgeid	r18,$L91
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L91:
	andi	r4,r4,0x00ff
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	addik	r5,r5,-65
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L93
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L93:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgeid	r18,$L95
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L95:
	andi	r3,r3,0x00ff
	addik	r7,r5,-127
	addik	r6,r0,32	# 0x20
	cmpu	r18,r7,r6
	bgeid	r18,$L96
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L96:
	andi	r4,r4,0x00ff
	or	r4,r3,r4
	bneid	r4,$L97
	addik	r3,r0,1	# 0x1
	addik	r6,r5,-8232
	cmpu	r18,r6,r3
	bgeid	r18,$L97
	addik	r4,r0,2	# 0x2
	addik	r5,r5,-65529
	cmpu	r18,r5,r4
	bltid	r18,$L97
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
$L97:
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
	addik	r5,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgeid	r18,$L102
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L102:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r5,r3
	bltid	r18,$L104
	addik	r4,r0,8231	# 0x2027
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	bltid	r18,$L105
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L105:
	brid	$L106
	andi	r3,r3,0x00ff
$L104:
	cmpu	r18,r5,r4
	bgeid	r18,$L107
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L107:
	andi	r3,r3,0x00ff
	addik	r7,r5,-8234
	addik	r6,r0,47061
	cmpu	r18,r7,r6
	bgeid	r18,$L108
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L108:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bneid	r3,$L113
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgeid	r18,$L113
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L111
	andi	r5,r5,65534 #and2
	xori	r5,r5,65534
	beqid	r5,$L112
	addik	r3,r0,1	# 0x1
	bri	$L106
	brid	$L106
	addik	r3,r0,1	# 0x1
$L111:
	brid	$L106
	addk	r3,r0,r0
$L112:
	addk	r3,r0,r0
$L106:
$L113:
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
	addik	r6,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r6,r4
	bgeid	r18,$L115
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,5	# 0x5
	cmpu	r18,r5,r4
	bltid	r18,$L115
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
$L115:
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
	rtsd	r15,8 
	
	andi	r3,r5,127 #and1
	.end	toascii
$Lfe29:
	.size	toascii,$Lfe29-toascii
	.align	2
	.globl	fdim
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L120
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L123
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L126
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__subdf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L120
	addk	r23,r4,r0
$L123:
	addk	r22,r24,r0
	brid	$L120
	addk	r23,r25,r0
$L126:
	addk	r22,r0,r0
	addk	r23,r0,r0
$L120:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	fdim
$Lfe30:
	.size	fdim,$Lfe30-fdim
	.align	2
	.globl	fdimf
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L130
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L131
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L134
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	brid	$L135
	lwi	r15,r1,0
$L130:
	addk	r3,r19,r0
	brid	$L135
	lwi	r15,r1,0
$L131:
	addk	r3,r22,r0
	brid	$L135
	lwi	r15,r1,0
$L134:
	addk	r3,r0,r0
	lwi	r15,r1,0
$L135:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	fdimf
$Lfe31:
	.size	fdimf,$Lfe31-fdimf
	.align	2
	.globl	fmax
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L140
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L141
	xor	r3,r22,r24
	bgeid	r3,$L138
	addk	r4,r24,r0
	bgeid	r24,$L137
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L137
	addk	r5,r23,r0
$L138:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r22,r0
	bltid	r3,$L137
	addk	r5,r23,r0
	brid	$L145
	addk	r4,r24,r0
$L140:
	addk	r4,r22,r0
	brid	$L137
	addk	r5,r23,r0
$L141:
	addk	r4,r24,r0
	brid	$L137
	addk	r5,r25,r0
$L145:
	addk	r5,r25,r0
$L137:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	fmax
$Lfe32:
	.size	fmax,$Lfe32-fmax
	.align	2
	.globl	fmaxf
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r22,r5,r0
	addk	r19,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L150
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L151
	xor	r3,r19,r22
	bgei	r3,$L148
	addk	r3,r22,r0
	bgeid	r22,$L147
	lwi	r15,r1,0
	addk	r3,r19,r0
	brid	$L157
	lwi	r19,r1,28
$L148:
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	addk	r3,r19,r0
	bltid	r4,$L156
	lwi	r15,r1,0
	bri	$L155
$L150:
	addk	r3,r19,r0
	brid	$L156
	lwi	r15,r1,0
$L151:
	addk	r3,r22,r0
	brid	$L156
	lwi	r15,r1,0
$L155:
	addk	r3,r22,r0
$L147:
	lwi	r15,r1,0
$L156:
	lwi	r19,r1,28
$L157:
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	fmaxf
$Lfe33:
	.size	fmaxf,$Lfe33-fmaxf
	.align	2
	.globl	fmaxl
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L162
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L163
	xor	r3,r22,r24
	bgeid	r3,$L160
	addk	r4,r24,r0
	bgeid	r24,$L159
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L159
	addk	r5,r23,r0
$L160:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r22,r0
	bltid	r3,$L159
	addk	r5,r23,r0
	brid	$L167
	addk	r4,r24,r0
$L162:
	addk	r4,r22,r0
	brid	$L159
	addk	r5,r23,r0
$L163:
	addk	r4,r24,r0
	brid	$L159
	addk	r5,r25,r0
$L167:
	addk	r5,r25,r0
$L159:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	fmaxl
$Lfe34:
	.size	fmaxl,$Lfe34-fmaxl
	.align	2
	.globl	fmin
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L172
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L173
	xor	r3,r22,r24
	bgeid	r3,$L170
	addk	r7,r22,r0
	addk	r4,r22,r0
	bgeid	r24,$L169
	addk	r5,r23,r0
	addk	r4,r24,r0
	brid	$L169
	addk	r5,r25,r0
$L170:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r24,r0
	bltid	r3,$L169
	addk	r5,r25,r0
	brid	$L177
	addk	r4,r22,r0
$L172:
	addk	r4,r22,r0
	brid	$L169
	addk	r5,r23,r0
$L173:
	addk	r4,r24,r0
	brid	$L169
	addk	r5,r25,r0
$L177:
	addk	r5,r23,r0
$L169:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	fmin
$Lfe35:
	.size	fmin,$Lfe35-fmin
	.align	2
	.globl	fminf
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r22,r5,r0
	addk	r19,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L182
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L183
	xor	r3,r19,r22
	bgei	r3,$L180
	addk	r3,r19,r0
	bgeid	r22,$L179
	lwi	r15,r1,0
	addk	r3,r22,r0
	brid	$L189
	lwi	r19,r1,28
$L180:
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	addk	r3,r22,r0
	bltid	r4,$L188
	lwi	r15,r1,0
	bri	$L187
$L182:
	addk	r3,r19,r0
	brid	$L188
	lwi	r15,r1,0
$L183:
	addk	r3,r22,r0
	brid	$L188
	lwi	r15,r1,0
$L187:
	addk	r3,r19,r0
$L179:
	lwi	r15,r1,0
$L188:
	lwi	r19,r1,28
$L189:
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	fminf
$Lfe36:
	.size	fminf,$Lfe36-fminf
	.align	2
	.globl	fminl
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L194
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L195
	xor	r3,r22,r24
	bgeid	r3,$L192
	addk	r7,r22,r0
	addk	r4,r22,r0
	bgeid	r24,$L191
	addk	r5,r23,r0
	addk	r4,r24,r0
	brid	$L191
	addk	r5,r25,r0
$L192:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r24,r0
	bltid	r3,$L191
	addk	r5,r25,r0
	brid	$L199
	addk	r4,r22,r0
$L194:
	addk	r4,r22,r0
	brid	$L191
	addk	r5,r23,r0
$L195:
	addk	r4,r24,r0
	brid	$L191
	addk	r5,r25,r0
$L199:
	addk	r5,r23,r0
$L191:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,s.0
	addik	r6,r0,digits
	bri	$L201
$L202:
	lbu	r4,r4,r6
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
$L201:
	bneid	r5,$L202
	andi	r4,r5,63 #and1
	sbi	r0,r3,0
	addik	r3,r0,s.0
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
	addik	r5,r5,-1
	addk	r4,r0,r0
	swi	r4,r0,seed
	swi	r5,r0,seed+4
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
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
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	bnei	r6,$L206
	swi	r0,r5,4
	brid	$L205
	swi	r0,r5,0
$L206:
	lwi	r3,r6,0
	swi	r3,r5,0
	swi	r6,r5,4
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L205
	swi	r5,r3,4
$L205:
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
	lwi	r3,r5,0
	beqi	r3,$L209
	lwi	r4,r5,4
	swi	r4,r3,4
$L209:
	lwi	r3,r5,4
	beqi	r3,$L208
	lwi	r4,r5,0
	swi	r4,r3,0
$L208:
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
	.frame	r1,60,r15		# vars= 0, regs= 8, args= 24
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
	addk	r24,r5,r0
	addk	r27,r6,r0
	addk	r28,r7,r0
	addk	r23,r8,r0
	addk	r25,r9,r0
	lwi	r26,r7,0
	addk	r22,r6,r0
	brid	$L212
	addk	r19,r0,r0
$L215:
	brald	r15,r25
	
	addk	r5,r24,r0
	bneid	r3,$L213
	addk	r22,r22,r23
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r19,r0
	brid	$L214
	addk	r3,r27,r3
$L213:
	addik	r19,r19,1
$L212:
	xor	r4,r19,r26
	bneid	r4,$L215
	addk	r6,r22,r0
	addik	r3,r26,1
	swi	r3,r28,0
	addk	r6,r26,r0
	brlid	r15,__mulsi3
	
	addk	r5,r23,r0
	addk	r7,r23,r0
	addk	r6,r24,r0
	brlid	r15,memcpy
	
	addk	r5,r27,r3
$L214:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	rtsd	r15,8 
	
	addik	r1,r1,60
	.end	lsearch
$Lfe43:
	.size	lsearch,$Lfe43-lsearch
	.align	2
	.globl	lfind
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r25,r5,r0
	addk	r27,r6,r0
	addk	r23,r8,r0
	addk	r24,r9,r0
	lwi	r26,r7,0
	addk	r22,r6,r0
	brid	$L217
	addk	r19,r0,r0
$L220:
	brald	r15,r24
	
	addk	r5,r25,r0
	bneid	r3,$L218
	addk	r22,r22,r23
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r19,r0
	brid	$L219
	addk	r3,r27,r3
$L218:
	addik	r19,r19,1
$L217:
	xor	r4,r19,r26
	bneid	r4,$L220
	addk	r6,r22,r0
	addk	r3,r0,r0
$L219:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r3,r5
	rtsd	r15,8 
	
	rsubk	r3,r3,r5
	.end	abs
$Lfe45:
	.size	abs,$Lfe45-abs
	.align	2
	.globl	atoi
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	brid	$L223
	addk	r19,r5,r0
$L224:
	addik	r19,r19,1
$L223:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L224
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L230
	xori	r3,r3,45
	bneid	r3,$L226
	addk	r6,r0,r0
	brid	$L225
	addik	r6,r0,1	# 0x1
$L230:
	addk	r6,r0,r0
$L225:
	addik	r19,r19,1
$L226:
	addk	r4,r0,r0
	brid	$L227
	addik	r5,r0,9	# 0x9
$L228:
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r4,r4,r3
$L227:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r5
	bgeid	r18,$L228
	addik	r19,r19,1
	bneid	r6,$L229
	addk	r3,r4,r0
	rsubk	r3,r4,r0
$L229:
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	atoi
$Lfe46:
	.size	atoi,$Lfe46-atoi
	.align	2
	.globl	atol
	.ent	atol
	.type	atol, @function
atol:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	brid	$L234
	addk	r19,r5,r0
$L235:
	addik	r19,r19,1
$L234:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L235
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L241
	xori	r3,r3,45
	bneid	r3,$L237
	addk	r6,r0,r0
	brid	$L236
	addik	r6,r0,1	# 0x1
$L241:
	addk	r6,r0,r0
$L236:
	addik	r19,r19,1
$L237:
	addk	r4,r0,r0
	brid	$L238
	addik	r5,r0,9	# 0x9
$L239:
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r4,r4,r3
$L238:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r5
	bgeid	r18,$L239
	addik	r19,r19,1
	bneid	r6,$L240
	addk	r3,r4,r0
	rsubk	r3,r4,r0
$L240:
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	brid	$L245
	addk	r19,r5,r0
$L246:
	addik	r19,r19,1
$L245:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L246
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L252
	xori	r3,r3,45
	bneid	r3,$L248
	addk	r9,r0,r0
	brid	$L247
	addik	r9,r0,1	# 0x1
$L252:
	addk	r9,r0,r0
$L247:
	addik	r19,r19,1
$L248:
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	brid	$L249
	addik	r8,r0,9	# 0x9
$L250:
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
	add	r5,r23,r5
	addc	r4,r22,r4
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
	lbui	r6,r19,-1
	sext8	r6,r6
	addik	r6,r6,-48
	addk	r7,r0,r6
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r5,r7,r25
	rsubc	r4,r6,r24
$L249:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r8
	bgeid	r18,$L250
	addik	r19,r19,1
	addk	r6,r4,r0
	bneid	r9,$L251
	addk	r7,r5,r0
	rsub	r7,r5,r0
	rsubc	r6,r4,r0
$L251:
	addk	r3,r6,r0
	addk	r4,r7,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	r1,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	addk	r26,r5,r0
	addk	r24,r6,r0
	addk	r19,r7,r0
	addk	r23,r8,r0
	brid	$L256
	addk	r25,r9,r0
$L260:
	brlid	r15,__mulsi3
	
	srl	r5,r19
	addk	r22,r24,r3
	addk	r6,r22,r0
	brald	r15,r25
	
	addk	r5,r26,r0
	bgei	r3,$L257
	brid	$L256
	srl	r19,r19
$L257:
	bleid	r3,$L261
	addk	r24,r22,r23
	srl	r3,r19
	addik	r19,r19,-1
	rsubk	r19,r3,r19
$L256:
	bneid	r19,$L260
	addk	r6,r23,r0
	brid	$L259
	addk	r3,r0,r0
$L261:
	addk	r3,r22,r0
$L259:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r27,r5,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	addk	r25,r10,r0
	addk	r19,r7,r0
	brid	$L263
	addk	r23,r6,r0
$L266:
	brlid	r15,__mulsi3
	
	sra	r5,r19
	addk	r22,r23,r3
	addk	r7,r25,r0
	addk	r6,r22,r0
	brald	r15,r26
	
	addk	r5,r27,r0
	beqi	r3,$L267
	blei	r3,$L265
	addk	r23,r22,r24
	addik	r19,r19,-1
$L265:
	sra	r19,r19
$L263:
	bneid	r19,$L266
	addk	r6,r24,r0
	brid	$L264
	addk	r3,r0,r0
$L267:
	addk	r3,r22,r0
$L264:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r23,r7,r0
	addk	r6,r7,r0
	brlid	r15,__divsi3
	
	addk	r5,r22,r0
	addk	r24,r3,r0
	addk	r6,r23,r0
	brlid	r15,__modsi3
	
	addk	r5,r22,r0
	swi	r24,r19,0
	swi	r3,r19,4
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
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
	rtsd	r15,8 
	
	addk	r4,r7,r0
	.end	imaxabs
$Lfe52:
	.size	imaxabs,$Lfe52-imaxabs
	.align	2
	.globl	imaxdiv
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r23,r7,r0
	addk	r24,r8,r0
	addk	r25,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	brlid	r15,__divdi3
	
	addk	r6,r23,r0
	addk	r26,r3,r0
	addk	r27,r4,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__moddi3
	
	addk	r6,r23,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r26,r19,0
	swi	r27,r19,4
	swi	r4,r19,8
	swi	r5,r19,12
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r3,r5
	rtsd	r15,8 
	
	rsubk	r3,r3,r5
	.end	labs
$Lfe54:
	.size	labs,$Lfe54-labs
	.align	2
	.globl	ldiv
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r23,r7,r0
	addk	r6,r7,r0
	brlid	r15,__divsi3
	
	addk	r5,r22,r0
	addk	r24,r3,r0
	addk	r6,r23,r0
	brlid	r15,__modsi3
	
	addk	r5,r22,r0
	swi	r24,r19,0
	swi	r3,r19,4
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
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
	rtsd	r15,8 
	
	addk	r4,r7,r0
	.end	llabs
$Lfe56:
	.size	llabs,$Lfe56-llabs
	.align	2
	.globl	lldiv
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r23,r7,r0
	addk	r24,r8,r0
	addk	r25,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	brlid	r15,__divdi3
	
	addk	r6,r23,r0
	addk	r26,r3,r0
	addk	r27,r4,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__moddi3
	
	addk	r6,r23,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r26,r19,0
	swi	r27,r19,4
	swi	r4,r19,8
	swi	r5,r19,12
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	brid	$L281
	lwi	r3,r5,0
$L282:
	lwi	r3,r5,0
$L281:
	beqid	r3,$L277
	xor	r3,r6,r3
	bneid	r3,$L282
	addik	r5,r5,4
	addik	r5,r5,-4
$L277:
	lwi	r3,r5,0
	bneid	r3,$L279
	addk	r3,r5,r0
	addk	r3,r0,r0
$L279:
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
	brid	$L290
	lwi	r3,r5,0
$L291:
	addik	r6,r6,4
	lwi	r3,r5,0
$L290:
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L285
	lwi	r3,r5,0
	beqi	r3,$L285
	bneid	r4,$L291
	addik	r5,r5,4
	addik	r5,r5,-4
$L285:
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L287
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L288
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L288:
	andi	r3,r3,0x00ff
$L287:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	addk	r4,r0,r0
	addik	r5,r5,-4
$L293:
	lw	r7,r4,r6
	sw	r7,r4,r3
	addik	r4,r4,4
	lw	r7,r4,r5
	bnei	r7,$L293
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L296
	addk	r3,r5,r0
$L297:
	addik	r3,r3,4
$L296:
	lwi	r4,r3,0
	bnei	r4,$L297
	rsubk	r3,r5,r3
	addk	r4,r3,r0
	addk	r3,r0,r4
	sra	r3,r4
	sra	r3,r3
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
	bri	$L299
$L307:
	addik	r5,r5,4
	addik	r6,r6,4
$L299:
	beqid	r7,$L306
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L300
	lwi	r3,r5,0
	beqi	r3,$L300
	bneid	r4,$L307
	addik	r7,r7,-1
	addik	r7,r7,1
$L300:
	beqid	r7,$L302
	addk	r3,r0,r0
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L302
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L303
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L303:
	andi	r3,r3,0x00ff
$L302:
$L306:
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
	bri	$L309
$L314:
	addik	r5,r5,4
$L309:
	beqi	r7,$L310
	lwi	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L314
	addik	r7,r7,-1
	addik	r7,r7,1
$L310:
	bneid	r7,$L312
	addk	r3,r5,r0
	addk	r3,r0,r0
$L312:
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
	bri	$L316
$L324:
	addik	r5,r5,4
	addik	r6,r6,4
$L316:
	beqid	r7,$L323
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L324
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L319
	addk	r3,r0,r0
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L319
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L320
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L320:
	andi	r3,r3,0x00ff
$L319:
$L323:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L326
	addk	r4,r0,r0
$L327:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L326:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L327
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	xor	r4,r5,r6
	beqid	r4,$L329
	addk	r3,r5,r0
	rsubk	r5,r6,r5
	addk	r4,r7,r7
	addk	r4,r4,r4
	cmpu	r18,r4,r5
	bgeid	r18,$L334
	addik	r4,r4,-4
	brid	$L336
	xori	r5,r4,-4
$L332:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,-4
	xori	r5,r4,-4
$L336:
	bnei	r5,$L332
	bri	$L329
$L333:
	lw	r5,r4,r6
	sw	r5,r4,r3
	brid	$L330
	addik	r4,r4,4
$L334:
	addk	r4,r0,r0
$L330:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L333
$L329:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L338
	addk	r4,r5,r0
$L339:
	addik	r4,r4,4
	swi	r6,r4,-4
$L338:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L339
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r6,r5
	bgeid	r18,$L341
	xor	r4,r5,r6
	addik	r5,r5,-1
	brid	$L342
	addik	r6,r6,-1
$L343:
	lbu	r3,r7,r5
	sb	r3,r7,r6
	addik	r7,r7,-1
$L342:
	bnei	r7,$L343
	bri	$L340
$L341:
	bneid	r4,$L345
	addk	r3,r0,r0
	bri	$L340
$L346:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	addik	r3,r3,1
$L345:
	xor	r4,r3,r7
	bnei	r4,$L346
$L340:
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
	addk	r4,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L350
	addk	r5,r6,r0
	andi	r18,r7,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	brid	$L351
	addk	r9,r0,r0
$L350:
	srl	r8,r6
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r8
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r8,r3,r8
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
$L351:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqid	r3,$L352
	addk	r10,r0,r0
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r11,r0,r4
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	brid	$L354
	or	r4,r10,r8
$L352:
	addk	r10,r4,r4
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	or	r11,r3,r11
	andi	r18,r7,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	or	r4,r10,r8
$L354:
	or	r5,r11,r9
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
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
	addk	r4,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L356
	addk	r5,r6,r0
	andi	r18,r7,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	brid	$L357
	addk	r8,r0,r0
$L356:
	addk	r8,r4,r4
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r8
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	or	r9,r3,r9
	andi	r18,r7,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
$L357:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqid	r3,$L358
	addk	r11,r0,r0
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	brid	$L360
	or	r4,r10,r8
$L358:
	srl	r10,r5
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	or	r10,r3,r10
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
	or	r4,r10,r8
$L360:
	or	r5,r11,r9
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	rtsd	r15,8 
	
	andi	r3,r3,0x00ff
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
	rtsd	r15,8 
	
	andi	r3,r3,0x00ff
	.end	rotr8
$Lfe78:
	.size	rotr8,$Lfe78-rotr8
	.align	2
	.globl	bswap_16
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r4,r5,0x00ff
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r3,r4
	.end	bswap_16
$Lfe79:
	.size	bswap_16,$Lfe79-bswap_16
	.align	2
	.globl	bswap_32
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
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
	rtsd	r15,8 
	
	or	r3,r3,r4
	.end	bswap_32
$Lfe80:
	.size	bswap_32,$Lfe80-bswap_32
	.align	2
	.globl	bswap_64
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	r1,20,r15		# vars= 0, regs= 4, args= 0
	.mask	0x03c00000
	addik	r1,r1,-20
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r24,r1,12
	swi	r25,r1,16
	addk	r7,r6,r0
	addk	r6,r5,r0
	andi	r4,r5,-16777216 #and2
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
	lwi	r22,r1,4
	lwi	r23,r1,8
	lwi	r24,r1,12
	lwi	r25,r1,16
	rtsd	r15,8 
	
	addik	r1,r1,20
	.end	bswap_64
$Lfe81:
	.size	bswap_64,$Lfe81-bswap_64
	.align	2
	.globl	ffs
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L373
	addk	r3,r0,r0
$L376:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,1 #and1
	beqid	r4,$L373
	addik	r3,r3,1
	addik	r3,r3,-1
	brid	$L375
	addik	r3,r3,1
$L373:
	xori	r4,r3,32
	bnei	r4,$L376
	addk	r3,r0,r0
$L375:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqid	r5,$L381
	addik	r3,r0,1	# 0x1
	brid	$L382
	andi	r4,r5,1 #and1
$L380:
	sra	r5,r5
	addik	r3,r3,1
	andi	r4,r5,1 #and1
$L382:
	beqi	r4,$L380
	bri	$L378
$L381:
	addk	r3,r0,r0
$L378:
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r5,r0
	lwi	r6,r0,$LC0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bltid	r3,$L384
	addik	r4,r0,1	# 0x1
	lwi	r6,r0,$LC1
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgtid	r3,$L384
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L384:
	addk	r3,r4,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	addk	r22,r5,r0
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L390
	addik	r4,r0,1	# 0x1
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L390
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L390:
	addk	r3,r4,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
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
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	addk	r22,r5,r0
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L396
	addik	r4,r0,1	# 0x1
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L396
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L396:
	addk	r3,r4,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	gl_isinfl
$Lfe86:
	.size	gl_isinfl,$Lfe86-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r5,r0
	brlid	r15,__floatsidf
	
	addk	r5,r6,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,0
	swi	r5,r19,4
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	_Qp_itoq
$Lfe87:
	.size	_Qp_itoq,$Lfe87-_Qp_itoq
	.align	2
	.globl	ldexpf
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r23,r5,r0
	addk	r19,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L403
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	addk	r5,r23,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L403
	addik	r22,r0,0x40000000
	bgeid	r19,$L410
	andi	r3,r19,1 #and1
	addik	r22,r0,0x3f000000
$L410:
	beqi	r3,$L406
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
$L406:
	addk	r3,r0,r19
	srl	r3,r19
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r19,r3,r19
	sra	r19,r19
	beqi	r19,$L403
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	brid	$L410
	andi	r3,r19,1 #and1
$L403:
	addk	r3,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	ldexpf
$Lfe88:
	.size	ldexpf,$Lfe88-ldexpf
	.align	2
	.globl	ldexp
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L412
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r24,r0
	brlid	r15,__nedf2
	
	addk	r6,r25,r0
	beqid	r3,$L420
	addk	r3,r24,r0
	bgeid	r19,$L417
	andi	r3,r19,1 #and1
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	bri	$L419
$L417:
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
$L416:
	andi	r3,r19,1 #and1
$L419:
	beqid	r3,$L415
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L415:
	addk	r4,r0,r19
	srl	r4,r19
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r19
	sra	r19,r4
	beqid	r19,$L412
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L416
	addk	r23,r4,r0
$L412:
	addk	r3,r24,r0
$L420:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	ldexp
$Lfe89:
	.size	ldexp,$Lfe89-ldexp
	.align	2
	.globl	ldexpl
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L422
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r24,r0
	brlid	r15,__nedf2
	
	addk	r6,r25,r0
	beqid	r3,$L430
	addk	r3,r24,r0
	bgeid	r19,$L427
	andi	r3,r19,1 #and1
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	bri	$L429
$L427:
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
$L426:
	andi	r3,r19,1 #and1
$L429:
	beqid	r3,$L425
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L425:
	addk	r4,r0,r19
	srl	r4,r19
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r19
	sra	r19,r4
	beqid	r19,$L422
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L426
	addk	r23,r4,r0
$L422:
	addk	r3,r24,r0
$L430:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	ldexpl
$Lfe90:
	.size	ldexpl,$Lfe90-ldexpl
	.align	2
	.globl	memxor
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L432
	addk	r4,r0,r0
$L433:
	lbu	r5,r4,r6
	lbu	r8,r4,r3
	xor	r8,r8,r5
	sb	r8,r4,r3
	addik	r4,r4,1
$L432:
	xor	r5,r4,r7
	bnei	r5,$L433
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r23,r5,r0
	addk	r22,r6,r0
	brlid	r15,strlen
	
	addk	r19,r7,r0
	brid	$L435
	addk	r3,r23,r3
$L437:
	addik	r3,r3,1
	addik	r19,r19,-1
$L435:
	beqi	r19,$L436
	lbui	r4,r22,0
	sbi	r4,r3,0
	sext8	r4,r4
	bneid	r4,$L437
	addik	r22,r22,1
$L436:
	bnei	r19,$L438
	sbi	r0,r3,0
$L438:
	addk	r3,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	strncat
$Lfe92:
	.size	strncat,$Lfe92-strncat
	.align	2
	.globl	strnlen
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L440
	addk	r3,r0,r0
$L442:
	addik	r3,r3,1
$L440:
	xor	r4,r3,r6
	beqi	r4,$L441
	lbu	r4,r3,r5
	bnei	r4,$L442
$L441:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L450
	lbui	r3,r5,0
$L446:
	lbui	r8,r7,-1
	lbui	r4,r5,0
	xor	r4,r4,r8
	sext8	r4,r4
	beqid	r4,$L448
	addk	r3,r5,r0
$L449:
	lbui	r4,r7,0
	bneid	r4,$L446
	addik	r7,r7,1
	addik	r7,r7,-1
	addik	r5,r5,1
	lbui	r3,r5,0
$L450:
	bneid	r3,$L449
	addk	r7,r6,r0
$L448:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
$L453:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	bnei	r4,$L452
	addk	r3,r5,r0
$L452:
	addik	r5,r5,1
	lbui	r4,r5,-1
	bnei	r4,$L453
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
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,strlen
	
	addk	r5,r6,r0
	beqid	r3,$L460
	addk	r23,r3,r0
	lbui	r24,r22,0
	brid	$L458
	sext8	r24,r24
$L459:
	addk	r7,r23,r0
	addk	r6,r22,r0
	brlid	r15,strncmp
	
	addk	r5,r19,r0
	beqid	r3,$L461
	addk	r3,r19,r0
	addik	r19,r19,1
$L458:
	addk	r6,r24,r0
	brlid	r15,strchr
	
	addk	r5,r19,r0
	bneid	r3,$L459
	addk	r19,r3,r0
	brid	$L457
	addk	r3,r0,r0
$L460:
	addk	r3,r19,r0
$L461:
$L457:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	strstr
$Lfe96:
	.size	strstr,$Lfe96-strstr
	.align	2
	.globl	copysign
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bgeid	r3,$L463
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	bgti	r3,$L465
$L463:
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L473
	addk	r4,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bgei	r3,$L474
$L465:
	addik	r4,r22,-2147483648
	brid	$L466
	addk	r5,r23,r0
$L473:
	brid	$L466
	addk	r5,r23,r0
$L474:
	addk	r4,r22,r0
	addk	r5,r23,r0
$L466:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	copysign
$Lfe97:
	.size	copysign,$Lfe97-copysign
	.align	2
	.globl	memmem
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r5,r0
	addk	r22,r7,r0
	rsubk	r23,r8,r6
	beqid	r8,$L481
	addk	r23,r5,r23
	cmpu	r18,r8,r6
	bltid	r18,$L477
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L477:
	andi	r3,r3,0x00ff
	bneid	r3,$L482
	addik	r25,r22,1
	brid	$L478
	addik	r24,r8,-1
$L480:
	lbui	r3,r19,0
	lbui	r4,r22,0
	xor	r4,r4,r3
	sext8	r4,r4
	bneid	r4,$L479
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memcmp
	
	addik	r5,r19,1
	beqid	r3,$L483
	addk	r3,r19,r0
$L479:
	addik	r19,r19,1
$L478:
	cmpu	r18,r19,r23
	bgeid	r18,$L480
	addk	r3,r0,r0
	brid	$L484
	lwi	r15,r1,0
$L481:
	brid	$L476
	addk	r3,r5,r0
$L482:
	addk	r3,r0,r0
$L483:
$L476:
	lwi	r15,r1,0
$L484:
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	brlid	r15,memcpy
	
	addk	r19,r7,r0
	addk	r3,r3,r19
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	mempcpy
$Lfe99:
	.size	mempcpy,$Lfe99-mempcpy
	.align	2
	.globl	frexp
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
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
	addk	r22,r5,r0
	addk	r28,r7,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bgeid	r3,$L487
	addk	r29,r0,r0
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
	brid	$L487
	addik	r29,r0,1	# 0x1
$L487:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bltid	r3,$L504
	addk	r19,r0,r0
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	brid	$L505
	addk	r7,r24,r0
$L491:
	addik	r19,r19,1
	addk	r8,r27,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	addk	r7,r24,r0
$L505:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bgeid	r3,$L491
	addk	r7,r26,r0
	brid	$L506
	swi	r19,r28,0
$L504:
	addik	r19,r0,1	# 0x1
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L507
	andi	r19,r19,0x00ff
	addk	r19,r0,r0
	andi	r19,r19,0x00ff
$L507:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
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
	and	r4,r4,r19
	bneid	r4,$L500
	addk	r19,r0,r0
	brid	$L506
	swi	r19,r28,0
$L496:
	addik	r19,r19,-1
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__adddf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L495
	addk	r23,r4,r0
$L500:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
$L495:
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L496
	addk	r7,r22,r0
	swi	r19,r28,0
$L506:
	beqid	r29,$L508
	addk	r3,r22,r0
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
	addk	r3,r22,r0
$L508:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	rtsd	r15,8 
	
	addik	r1,r1,64
	.end	frexp
$Lfe100:
	.size	frexp,$Lfe100-frexp
	.align	2
	.globl	__muldi3
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	r1,20,r15		# vars= 0, regs= 4, args= 0
	.mask	0x03c00000
	addik	r1,r1,-20
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r24,r1,12
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	addk	r7,r8,r0
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	brid	$L510
	swi	r25,r1,16
$L513:
	andi	r25,r5,1 #and1
	or	r3,r24,r25
	beqi	r3,$L511
	add	r9,r9,r7
	addc	r8,r8,r6
$L511:
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
$L510:
	or	r3,r4,r5
	bneid	r3,$L513
	addk	r24,r0,r0
	addk	r3,r8,r0
	addk	r4,r9,r0
	lwi	r22,r1,4
	lwi	r23,r1,8
	lwi	r24,r1,12
	lwi	r25,r1,16
	rtsd	r15,8 
	
	addik	r1,r1,20
	.end	__muldi3
$Lfe101:
	.size	__muldi3,$Lfe101-__muldi3
	.align	2
	.globl	udivmodsi4
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L515
	addk	r11,r0,r0
$L518:
	addk	r6,r6,r6
	addk	r4,r4,r4
$L515:
	cmpu	r18,r5,r6
	bltid	r18,$L516
	addk	r3,r10,r0
	addk	r3,r11,r0
$L516:
	rsubk	r9,r4,r0
	or	r9,r9,r4
	addk	r8,r0,r9
	srl	r8,r9
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqi	r8,$L523
	bgei	r6,$L518
	brid	$L519
	addk	r3,r0,r0
$L523:
	brid	$L519
	addk	r3,r0,r0
$L521:
	cmpu	r18,r6,r5
	blti	r18,$L520
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L520:
	srl	r4,r4
	srl	r6,r6
$L519:
	bnei	r4,$L521
	beqi	r7,$L522
	addk	r3,r5,r0
$L522:
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r5,r3
	beqid	r5,$L528
	swi	r15,r1,0
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	brlid	r15,__clzsi2
	
	addk	r5,r5,r5
	brid	$L527
	addik	r3,r3,-1
$L528:
	addik	r3,r0,7	# 0x7
$L527:
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__clrsbqi2
$Lfe103:
	.size	__clrsbqi2,$Lfe103-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	addk	r4,r5,r0
	bgeid	r4,$L530
	addk	r5,r6,r0
	xori	r6,r4,-1
	xori	r7,r5,-1
	addk	r4,r6,r0
	addk	r5,r7,r0
$L530:
	or	r3,r4,r5
	beqid	r3,$L534
	addk	r6,r5,r0
	brlid	r15,__clzdi2
	
	addk	r5,r4,r0
	brid	$L532
	addik	r3,r3,-1
$L534:
	addik	r3,r0,63	# 0x3f
$L532:
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__clrsbdi2
$Lfe104:
	.size	__clrsbdi2,$Lfe104-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L536
	addk	r3,r0,r0
$L538:
	beqi	r4,$L537
	addk	r3,r3,r6
$L537:
	srl	r5,r5
	addk	r6,r6,r6
$L536:
	bneid	r5,$L538
	andi	r4,r5,1 #and1
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
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00c00000
	addik	r1,r1,-12
	swi	r22,r1,4
	swi	r23,r1,8
	addk	r11,r0,r7
	srl	r11,r7
	srl	r11,r11
	srl	r11,r11
	cmpu	r18,r6,r5
	bgeid	r18,$L540
	andi	r3,r7,-8 #and1
	addk	r9,r6,r0
$L551:
	addk	r8,r5,r0
	brid	$L541
	addk	r4,r0,r0
$L540:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bltid	r18,$L551
	addk	r9,r6,r0
	brid	$L549
	addik	r7,r7,-1
$L544:
	lwi	r22,r9,0
	lwi	r23,r9,4
	swi	r22,r8,0
	swi	r23,r8,4
	addik	r4,r4,1
	addik	r9,r9,8
	addik	r8,r8,8
$L541:
	xor	r10,r4,r11
	bnei	r10,$L544
	bri	$L545
$L546:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L545:
	cmpu	r18,r7,r3
	bltid	r18,$L546
	lwi	r22,r1,4
	brid	$L552
	lwi	r23,r1,8
$L548:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L549:
	xori	r3,r7,-1
	bneid	r3,$L548
	lwi	r22,r1,4
	lwi	r23,r1,8
$L552:
	rtsd	r15,8 
	
	addik	r1,r1,12
	.end	__cmovd
$Lfe106:
	.size	__cmovd,$Lfe106-__cmovd
	.align	2
	.globl	__cmovh
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r6,r5
	bgeid	r18,$L554
	srl	r8,r7
$L556:
	addk	r8,r8,r8
	brid	$L555
	addk	r3,r0,r0
$L554:
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	blti	r18,$L556
	brid	$L561
	addik	r7,r7,-1
$L558:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
$L555:
	xor	r4,r3,r8
	bnei	r4,$L558
	andi	r3,r7,1 #and1
	beqi	r3,$L553
	addik	r7,r7,-1
	lbu	r3,r7,r6
	brid	$L553
	sb	r3,r7,r5
$L560:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L561:
	xori	r3,r7,-1
	bnei	r3,$L560
$L553:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r9,r0,r7
	srl	r9,r7
	srl	r9,r9
	cmpu	r18,r6,r5
	bgeid	r18,$L563
	andi	r3,r7,-4 #and1
$L565:
	addk	r9,r9,r9
	addk	r9,r9,r9
	brid	$L564
	addk	r4,r0,r0
$L563:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	blti	r18,$L565
	brid	$L572
	addik	r7,r7,-1
$L567:
	lw	r8,r4,r6
	sw	r8,r4,r5
	addik	r4,r4,4
$L564:
	xor	r8,r4,r9
	bnei	r8,$L567
	bri	$L568
$L569:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L568:
	cmpu	r18,r7,r3
	blti	r18,$L569
	bri	$L562
$L571:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L572:
	xori	r3,r7,-1
	bnei	r3,$L571
$L562:
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
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatunsidf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatunsisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatundidf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatundisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__umodsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__umodi
$Lfe114:
	.size	__umodi,$Lfe114-__umodi
	.align	2
	.globl	__clzhi2
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L580
	addk	r3,r0,r0
$L582:
	rsubk	r6,r3,r4
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L581
	addik	r3,r3,1
$L580:
	xori	r4,r3,16
	bneid	r4,$L582
	addik	r4,r0,15	# 0xf
$L581:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L584
	addk	r3,r0,r0
$L586:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L585
	addik	r3,r3,1
$L584:
	xori	r4,r3,16
	bnei	r4,$L586
$L585:
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r5,r0
	addik	r6,r0,0x47000000
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	blti	r3,$L592
	addik	r6,r0,0x47000000
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	brid	$L593
	lwi	r15,r1,0
$L592:
	addk	r5,r19,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L593:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__fixunssfsi
$Lfe117:
	.size	__fixunssfsi,$Lfe117-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
	brid	$L595
	addk	r4,r3,r0
$L597:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L596
	addik	r3,r3,1
$L596:
	addik	r4,r4,1
$L595:
	xori	r6,r4,16
	bnei	r6,$L597
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
	.end	__parityhi2
$Lfe118:
	.size	__parityhi2,$Lfe118-__parityhi2
	.align	2
	.globl	__popcounthi2
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
	brid	$L599
	addk	r4,r3,r0
$L601:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L600
	addik	r3,r3,1
$L600:
	addik	r4,r4,1
$L599:
	xori	r6,r4,16
	bnei	r6,$L601
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L603
	addk	r3,r0,r0
$L605:
	beqi	r4,$L604
	addk	r3,r3,r6
$L604:
	srl	r5,r5
	addk	r6,r6,r6
$L603:
	bneid	r5,$L605
	andi	r4,r5,1 #and1
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqid	r5,$L611
	addk	r3,r0,r0
	bri	$L608
$L610:
	beqi	r4,$L609
	addk	r3,r3,r5
$L609:
	addk	r5,r5,r5
	srl	r6,r6
$L608:
	bneid	r6,$L610
	andi	r4,r6,1 #and1
$L611:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L613
	addk	r11,r0,r0
$L616:
	addk	r6,r6,r6
	addk	r4,r4,r4
$L613:
	cmpu	r18,r5,r6
	bltid	r18,$L614
	addk	r3,r10,r0
	addk	r3,r11,r0
$L614:
	rsubk	r9,r4,r0
	or	r9,r9,r4
	addk	r8,r0,r9
	srl	r8,r9
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqi	r8,$L621
	bgei	r6,$L616
	brid	$L617
	addk	r3,r0,r0
$L621:
	brid	$L617
	addk	r3,r0,r0
$L619:
	cmpu	r18,r6,r5
	blti	r18,$L618
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L618:
	srl	r4,r4
	srl	r6,r6
$L617:
	bnei	r4,$L619
	beqi	r7,$L620
	addk	r3,r5,r0
$L620:
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
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bltid	r3,$L627
	addik	r3,r0,-1	# 0xffffffffffffffff
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bleid	r3,$L624
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
$L624:
$L627:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	__mspabi_cmpf
$Lfe123:
	.size	__mspabi_cmpf,$Lfe123-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	brlid	r15,__ltdf2
	
	addk	r25,r8,r0
	bltid	r3,$L630
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L631
	addk	r3,r0,r0
	brid	$L632
	lwi	r15,r1,0
$L630:
	brid	$L629
	addik	r3,r0,-1	# 0xffffffffffffffff
$L631:
	addik	r3,r0,1	# 0x1
$L629:
	lwi	r15,r1,0
$L632:
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
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
	brlid	r15,__muldi3
	
	addk	r5,r4,r0
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	addk	r4,r0,r0
	addk	r7,r4,r0
	addk	r8,r6,r0
	addk	r6,r5,r0
	brlid	r15,__muldi3
	
	addk	r5,r4,r0
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__mspabi_mpyull
$Lfe126:
	.size	__mspabi_mpyull,$Lfe126-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	bgeid	r6,$L636
	addk	r19,r0,r0
	rsubk	r6,r6,r0
	addik	r19,r0,1	# 0x1
$L636:
	addk	r9,r0,r0
	addk	r3,r9,r0
	addik	r11,r0,1	# 0x1
	addik	r10,r0,31	# 0x1f
	brid	$L637
	addk	r12,r0,r0
$L640:
	andi	r4,r6,1 #and1
	beqi	r4,$L638
	addk	r9,r9,r5
$L638:
	addk	r5,r5,r5
	sra	r6,r6
	addik	r3,r3,1
	sext8	r3,r3
$L637:
	rsubk	r7,r6,r0
	or	r7,r7,r6
	addk	r4,r0,r7
	srl	r4,r7
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r7,r3,0x00ff
	cmpu	r18,r7,r10
	bgeid	r18,$L639
	addk	r8,r11,r0
	addk	r8,r12,r0
$L639:
	and	r4,r4,r8
	bnei	r4,$L640
	beqid	r19,$L641
	addk	r3,r9,r0
	rsubk	r3,r9,r0
$L641:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__mulhi3
$Lfe127:
	.size	__mulhi3,$Lfe127-__mulhi3
	.align	2
	.globl	__divsi3
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	bgeid	r5,$L645
	addk	r19,r0,r0
	rsubk	r5,r5,r0
	addik	r19,r0,1	# 0x1
$L645:
	bgei	r6,$L646
	rsubk	r6,r6,r0
	xori	r19,r19,1
$L646:
	brlid	r15,__udivmodsi4
	
	addk	r7,r0,r0
	beqid	r19,$L649
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L649:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	bgeid	r5,$L651
	addk	r19,r0,r0
	rsubk	r5,r5,r0
	addik	r19,r0,1	# 0x1
$L651:
	addk	r3,r0,r6
	sra	r3,r6
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r6,r6,r3
	addik	r7,r0,1	# 0x1
	brlid	r15,__udivmodsi4
	
	rsubk	r6,r3,r6
	beqid	r19,$L655
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L655:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__modsi3
$Lfe129:
	.size	__modsi3,$Lfe129-__modsi3
	.align	2
	.globl	__udivmodhi4
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L657
	addk	r11,r0,r0
$L660:
	addk	r6,r6,r6
	andi	r6,r6,0xffff
	addk	r4,r4,r4
	andi	r4,r4,0xffff
$L657:
	cmpu	r18,r5,r6
	bltid	r18,$L658
	addk	r3,r10,r0
	addk	r3,r11,r0
$L658:
	rsubk	r9,r4,r0
	addk	r8,r0,r9
	srl	r8,r9
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqid	r8,$L661
	addk	r3,r0,r0
	sext16	r3,r6
	bgei	r3,$L660
	brid	$L661
	addk	r3,r0,r0
$L663:
	cmpu	r18,r6,r5
	blti	r18,$L662
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
	or	r3,r3,r4
$L662:
	srl	r4,r4
	srl	r6,r6
$L661:
	bnei	r4,$L663
	beqi	r7,$L664
	addk	r3,r5,r0
$L664:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L668
	addk	r11,r0,r0
$L671:
	addk	r6,r6,r6
	addk	r4,r4,r4
$L668:
	cmpu	r18,r5,r6
	bltid	r18,$L669
	addk	r3,r10,r0
	addk	r3,r11,r0
$L669:
	rsubk	r9,r4,r0
	or	r9,r9,r4
	addk	r8,r0,r9
	srl	r8,r9
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqi	r8,$L676
	bgei	r6,$L671
	brid	$L672
	addk	r3,r0,r0
$L676:
	brid	$L672
	addk	r3,r0,r0
$L674:
	cmpu	r18,r6,r5
	blti	r18,$L673
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L673:
	srl	r4,r4
	srl	r6,r6
$L672:
	bnei	r4,$L674
	beqi	r7,$L675
	addk	r3,r5,r0
$L675:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r8,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L679
	addk	r9,r6,r0
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	brid	$L683
	addk	r3,r4,r0
$L679:
	beqi	r7,$L682
	andi	r18,r7,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r18,r7,31
	addk	r3,r0,r8
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addik	r6,r0,32	# 0x20
	rsubk	r7,r7,r6
	andi	r18,r7,31
	addk	r6,r0,r9
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	brid	$L681
	or	r4,r6,r3
$L682:
	addk	r4,r5,r0
	addk	r5,r6,r0
$L681:
	addk	r3,r4,r0
$L683:
	rtsd	r15,8 
	
	addk	r4,r5,r0
	.end	__ashldi3
$Lfe132:
	.size	__ashldi3,$Lfe132-__ashldi3
	.align	2
	.globl	__ashrdi3
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r8,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L685
	addk	r9,r6,r0
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
	andi	r18,r7,31
	addk	r5,r0,r8
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r5,r5
	brid	$L689
	addk	r3,r4,r0
$L685:
	beqid	r7,$L688
	addik	r3,r0,32	# 0x20
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r18,r7,31
	addk	r3,r0,r9
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	brid	$L687
	or	r5,r6,r3
$L688:
	addk	r4,r5,r0
	addk	r5,r6,r0
$L687:
	addk	r3,r4,r0
$L689:
	rtsd	r15,8 
	
	addk	r4,r5,r0
	.end	__ashrdi3
$Lfe133:
	.size	__ashrdi3,$Lfe133-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	r1,52,r15		# vars= 8, regs= 10, args= 0
	.mask	0xffc00000
	addik	r1,r1,-52
	swi	r22,r1,12
	swi	r23,r1,16
	swi	r24,r1,20
	swi	r25,r1,24
	swi	r26,r1,28
	swi	r27,r1,32
	swi	r28,r1,36
	swi	r29,r1,40
	swi	r30,r1,44
	swi	r31,r1,48
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
	addk	r7,r0,r6
	srl	r7,r6
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
	addk	r7,r0,r6
	srl	r7,r6
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
	or	r6,r6,r12
	swi	r6,r1,4
	addk	r6,r0,r29
	addk	r6,r29,r29
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	swi	r6,r1,8
	lwi	r6,r1,4
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
	lwi	r30,r1,8
	andi	r8,r30,16711680 #and2
	or	r4,r7,r4
	or	r5,r5,r25
	or	r6,r4,r24
	or	r7,r5,r23
	or	r4,r6,r24
	or	r5,r7,r11
	or	r6,r4,r26
	or	r4,r6,r28
	or	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r5,r0
	lwi	r22,r1,12
	lwi	r23,r1,16
	lwi	r24,r1,20
	lwi	r25,r1,24
	lwi	r26,r1,28
	lwi	r27,r1,32
	lwi	r28,r1,36
	lwi	r29,r1,40
	lwi	r30,r1,44
	lwi	r31,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
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
	rtsd	r15,8 
	
	or	r3,r3,r4
	.end	__bswapsi2
$Lfe135:
	.size	__bswapsi2,$Lfe135-__bswapsi2
	.align	2
	.globl	__clzsi2
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addik	r3,r0,65535
	cmpu	r18,r5,r3
	bltid	r18,$L693
	addk	r19,r0,r0
	addik	r19,r0,16	# 0x10
$L693:
	addik	r3,r0,16	# 0x10
	rsubk	r3,r19,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r4,r6,65280 #and2
	bneid	r4,$L694
	addk	r3,r0,r0
	addik	r3,r0,8	# 0x8
$L694:
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
	addk	r19,r19,r3
	andi	r4,r6,240 #and1
	bneid	r4,$L695
	addk	r3,r0,r0
	addik	r3,r0,4	# 0x4
$L695:
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
	addk	r19,r19,r3
	andi	r4,r6,12 #and1
	bneid	r4,$L696
	addk	r3,r0,r0
	addik	r3,r0,2	# 0x2
$L696:
	addik	r5,r0,2	# 0x2
	rsubk	r4,r3,r5
	addk	r7,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r7
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r19,r19,r3
	and	r4,r6,r5
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
	rsubk	r6,r6,r5
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
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r19,r3
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__clzsi2
$Lfe136:
	.size	__clzsi2,$Lfe136-__clzsi2
	.align	2
	.globl	__cmpdi2
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	cmp	r18,r6,r4
	bltid	r18,$L707
	addk	r3,r0,r0
	cmp	r18,r4,r6
	bltid	r18,$L707
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r5
	bltid	r18,$L707
	addk	r3,r0,r0
	cmpu	r18,r5,r8
	bltid	r18,$L706
	addik	r3,r0,1	# 0x1
	bri	$L702
	brid	$L702
	addik	r3,r0,2	# 0x2
$L706:
	addik	r3,r0,2	# 0x2
$L702:
$L707:
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
	brlid	r15,__cmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__aeabi_lcmp
$Lfe138:
	.size	__aeabi_lcmp,$Lfe138-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r4,r5,65535 #and2
	bneid	r4,$L710
	addk	r3,r0,r0
	addik	r3,r0,16	# 0x10
$L710:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r6,r4,255 #and1
	bneid	r6,$L711
	addk	r5,r0,r0
	addik	r5,r0,8	# 0x8
$L711:
	addk	r6,r4,r0
	andi	r18,r5,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r3,r3,r5
	andi	r6,r4,15 #and1
	bneid	r6,$L712
	addk	r5,r0,r0
	addik	r5,r0,4	# 0x4
$L712:
	addk	r6,r4,r0
	andi	r18,r5,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r3,r3,r5
	andi	r6,r4,3 #and1
	bneid	r6,$L713
	addk	r5,r0,r0
	addik	r5,r0,2	# 0x2
$L713:
	addk	r6,r4,r0
	andi	r18,r5,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,3 #and1
	addk	r3,r3,r5
	xori	r5,r4,-1
	andi	r5,r5,1 #and1
	srl	r4,r4
	addik	r6,r0,2	# 0x2
	rsubk	r4,r4,r6
	rsubk	r5,r5,r0
	and	r4,r4,r5
	rtsd	r15,8 
	
	addk	r3,r3,r4
	.end	__ctzsi2
$Lfe139:
	.size	__ctzsi2,$Lfe139-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r8,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L719
	addk	r9,r6,r0
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	andi	r18,r7,31
	addk	r5,r0,r8
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	brid	$L723
	addk	r3,r4,r0
$L719:
	beqid	r7,$L722
	addik	r3,r0,32	# 0x20
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r18,r7,31
	addk	r3,r0,r9
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	brid	$L721
	or	r5,r6,r3
$L722:
	addk	r4,r5,r0
	addk	r5,r6,r0
$L721:
	addk	r3,r4,r0
$L723:
	rtsd	r15,8 
	
	addk	r4,r5,r0
	.end	__lshrdi3
$Lfe140:
	.size	__lshrdi3,$Lfe140-__lshrdi3
	.align	2
	.globl	__muldsi3
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
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
	addk	r26,r5,r0
	addk	r27,r6,r0
	andi	r28,r5,65535 #and2
	andi	r29,r6,65535 #and2
	addk	r6,r29,r0
	brlid	r15,__mulsi3
	
	addk	r5,r28,r0
	addk	r19,r0,r3
	srl	r19,r3
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	andi	r25,r3,65535 #and2
	addk	r24,r0,r26
	srl	r24,r26
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
	addk	r6,r29,r0
	brlid	r15,__mulsi3
	
	addk	r5,r24,r0
	addk	r19,r19,r3
	addk	r4,r19,r19
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
	addk	r22,r0,r19
	srl	r22,r19
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	addk	r19,r0,r23
	srl	r19,r23
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	andi	r26,r23,65535 #and2
	addk	r25,r0,r27
	srl	r25,r27
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
	addk	r6,r25,r0
	brlid	r15,__mulsi3
	
	addk	r5,r28,r0
	addk	r19,r19,r3
	addk	r3,r19,r19
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
	addk	r23,r3,r26
	addk	r3,r0,r19
	srl	r3,r19
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r19,r3,r22
	addk	r6,r25,r0
	brlid	r15,__mulsi3
	
	addk	r5,r24,r0
	addk	r22,r3,r19
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	rtsd	r15,8 
	
	addik	r1,r1,64
	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
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
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r6,r8,r0
	brlid	r15,__muldsi3
	
	addk	r5,r25,r0
	addk	r27,r4,r0
	addk	r19,r3,r0
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r24,r0
	addk	r23,r3,r0
	addk	r6,r25,r0
	brlid	r15,__mulsi3
	
	addk	r5,r22,r0
	addk	r23,r23,r3
	addk	r26,r23,r19
	addk	r3,r26,r0
	addk	r4,r27,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	rtsd	r15,8 
	
	addik	r1,r1,64
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
	addk	r4,r5,r0
	addk	r5,r6,r0
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
	.end	__negdi2
$Lfe143:
	.size	__negdi2,$Lfe143-__negdi2
	.align	2
	.globl	__paritydi2
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
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
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
	.end	__paritydi2
$Lfe144:
	.size	__paritydi2,$Lfe144-__paritydi2
	.align	2
	.globl	__paritysi2
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
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
	xor	r5,r3,r5
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r5,r5,r3
	andi	r5,r5,15 #and1
	addik	r4,r0,27030	# 0x6996
	andi	r18,r5,31
	addk	r3,r0,r4
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
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
	rtsd	r15,8 
	
	andi	r3,r3,127 #and1
	.end	__popcountdi2
$Lfe146:
	.size	__popcountdi2,$Lfe146-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	srl	r3,r5
	andi	r3,r3,1431655765 #and2
	rsubk	r5,r3,r5
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	andi	r3,r3,858993459 #and2
	andi	r5,r5,858993459 #and2
	addk	r5,r3,r5
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r5,r3,r5
	andi	r5,r5,252645135 #and2
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
	addk	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r5
	rtsd	r15,8 
	
	andi	r3,r3,63 #and1
	.end	__popcountsi2
$Lfe147:
	.size	__popcountsi2,$Lfe147-__popcountsi2
	.align	2
	.globl	__powidf2
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	r1,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r19,r7,r0
	addk	r26,r0,r7
	srl	r26,r7
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
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
$L734:
	andi	r3,r19,1 #and1
	beqid	r3,$L732
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L732:
	addk	r4,r0,r19
	srl	r4,r19
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r19
	sra	r19,r4
	beqid	r19,$L733
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L734
	addk	r23,r4,r0
$L733:
	addk	r4,r24,r0
	beqid	r26,$L735
	addk	r5,r25,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
$L735:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	__powidf2
$Lfe148:
	.size	__powidf2,$Lfe148-__powidf2
	.align	2
	.globl	__powisf2
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r22,r5,r0
	addk	r19,r6,r0
	addk	r24,r0,r6
	srl	r24,r6
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
	addik	r23,r0,0x3f800000
	andi	r3,r19,1 #and1
$L743:
	beqi	r3,$L738
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
$L738:
	addk	r3,r0,r19
	srl	r3,r19
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r19,r3,r19
	sra	r19,r19
	beqi	r19,$L739
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	brid	$L743
	andi	r3,r19,1 #and1
$L739:
	addk	r3,r23,r0
	beqid	r24,$L744
	lwi	r15,r1,0
	addk	r6,r23,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L744:
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	__powisf2
$Lfe149:
	.size	__powisf2,$Lfe149-__powisf2
	.align	2
	.globl	__ucmpdi2
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	cmpu	r18,r6,r4
	bltid	r18,$L751
	addk	r3,r0,r0
	cmpu	r18,r4,r6
	bltid	r18,$L751
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r5
	bltid	r18,$L751
	addk	r3,r0,r0
	cmpu	r18,r5,r8
	bltid	r18,$L750
	addik	r3,r0,1	# 0x1
	bri	$L746
	brid	$L746
	addik	r3,r0,2	# 0x2
$L750:
	addik	r3,r0,2	# 0x2
$L746:
$L751:
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
	brlid	r15,__ucmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
