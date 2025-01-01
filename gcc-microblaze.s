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
$L5:
	rtsd	r15,8 
	nop		# Unfilled delay slot

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
	bri	$L5
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
	beqid	r7,$L25
	addk	r3,r0,r0
	lbui	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L24
	addik	r5,r5,1
	addik	r5,r5,-1
	beqi	r7,$L25
	addk	r3,r5,r0
$L22:
$L25:
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
	bri	$L27
$L33:
	addik	r5,r5,1
	addik	r6,r6,1
$L27:
	beqid	r7,$L32
	addk	r3,r0,r0
	lbui	r3,r5,0
	lbui	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L33
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L30
	addk	r3,r0,r0
	lbui	r3,r5,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
$L30:
$L32:
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
	brid	$L35
	addk	r4,r0,r0
$L36:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L35:
	xor	r8,r4,r7
	bnei	r8,$L36
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
	addik	r7,r7,-1
$L38:
	xori	r4,r7,-1
	beqid	r4,$L42
	addk	r3,r0,r0
	lbu	r4,r7,r5
	xor	r4,r6,r4
	beqid	r4,$L43
	addik	r8,r7,-1
	brid	$L38
	addk	r7,r8,r0
$L43:
	addk	r3,r5,r7
$L42:
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
	brid	$L45
	andi	r6,r6,0x00ff
$L46:
	sbi	r6,r4,0
	addik	r4,r4,1
$L45:
	xor	r8,r4,r7
	bnei	r8,$L46
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
	brid	$L48
	addk	r3,r5,r0
$L49:
	addik	r6,r6,1
	addik	r3,r3,1
$L48:
	lbui	r4,r6,0
	sbi	r4,r3,0
	sext8	r4,r4
	bnei	r4,$L49
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
	brid	$L51
	andi	r6,r6,0x00ff
$L51:
	lbui	r4,r3,0
	beqid	r4,$L52
	xor	r4,r6,r4
	bneid	r4,$L51
	addik	r3,r3,1
	addik	r3,r3,-1
$L52:
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
$L56:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	beqid	r4,$L57
	addk	r3,r5,r0
	addik	r5,r5,1
	lbui	r3,r5,-1
	bnei	r3,$L56
$L57:
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
	brid	$L63
	lbui	r4,r5,0
$L64:
	addik	r6,r6,1
	lbui	r4,r5,0
$L63:
	lbui	r3,r6,0
	xor	r3,r3,r4
	sext8	r3,r3
	bnei	r3,$L61
	bneid	r4,$L64
	addik	r5,r5,1
	addik	r5,r5,-1
$L61:
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
	brid	$L66
	addk	r3,r5,r0
$L67:
	addik	r3,r3,1
$L66:
	lbui	r6,r3,0
	bnei	r6,$L67
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
	beqid	r7,$L73
	addik	r7,r7,-1
	addk	r3,r5,r0
	addk	r8,r7,r5
$L70:
	lbui	r4,r3,0
	beqid	r4,$L71
	rsubk	r7,r3,r8
	lbui	r4,r6,0
	rsubk	r5,r8,r3
	or	r5,r5,r7
	rsubk	r4,r4,r0
	and	r4,r4,r5
	bgei	r4,$L71
	lbui	r4,r3,0
	lbui	r5,r6,0
	xor	r4,r4,r5
	bnei	r4,$L71
	addik	r3,r3,1
	brid	$L70
	addik	r6,r6,1
$L71:
	lbui	r3,r3,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
$L69:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L73:
	brid	$L69
	addk	r3,r0,r0
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
	brid	$L75
	addik	r5,r0,1	# 0x1
$L76:
	lbui	r4,r3,1
	sbi	r4,r6,0
	lbui	r4,r3,0
	sbi	r4,r6,1
	addik	r6,r6,2
	addik	r3,r3,2
$L75:
	rsubk	r4,r3,r7
	cmp	r18,r4,r5
	blti	r18,$L76
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
	bgeid	r18,$L78
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L78:
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
	bgeid	r18,$L80
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L80:
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
	bgeid	r18,$L83
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L83:
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
	bgeid	r18,$L85
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L85:
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
	bgeid	r18,$L87
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L87:
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
	bgeid	r18,$L89
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L89:
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
	bgeid	r18,$L91
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L91:
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
	bgeid	r18,$L93
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L93:
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
	bgeid	r18,$L95
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L95:
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
	bgeid	r18,$L97
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L97:
	andi	r3,r3,0x00ff
	addik	r7,r5,-127
	addik	r6,r0,32	# 0x20
	cmpu	r18,r7,r6
	bgeid	r18,$L98
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L98:
	andi	r4,r4,0x00ff
	or	r4,r3,r4
	bneid	r4,$L99
	addik	r3,r0,1	# 0x1
	addik	r6,r5,-8232
	cmpu	r18,r6,r3
	bgeid	r18,$L99
	addik	r4,r0,2	# 0x2
	addik	r5,r5,-65529
	cmpu	r18,r5,r4
	bltid	r18,$L99
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
$L99:
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
	bgeid	r18,$L104
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L104:
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
	bgeid	r18,$L115
	addik	r4,r0,8231	# 0x2027
	cmpu	r18,r5,r4
	bgeid	r18,$L109
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L109:
	andi	r3,r3,0x00ff
	addik	r7,r5,-8234
	addik	r6,r0,47061
	cmpu	r18,r7,r6
	bgeid	r18,$L110
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L110:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bneid	r3,$L116
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgeid	r18,$L116
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L113
	andi	r5,r5,65534 #and2
	xori	r5,r5,65534
	beqi	r5,$L114
	brid	$L108
	addik	r3,r0,1	# 0x1
$L115:
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	bltid	r18,$L107
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L107:
	andi	r3,r3,0x00ff
$L108:
$L116:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	brid	$L108
	addik	r3,r0,1	# 0x1
$L113:
	brid	$L108
	addk	r3,r0,r0
$L114:
	brid	$L108
	addk	r3,r0,r0
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
	bgeid	r18,$L118
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,5	# 0x5
	cmpu	r18,r5,r4
	bltid	r18,$L118
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
$L118:
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
	bneid	r3,$L123
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L126
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L129
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__subdf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L123:
	addk	r3,r22,r0
$L130:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L126:
	addk	r22,r24,r0
	brid	$L123
	addk	r23,r25,r0
$L129:
	addk	r22,r0,r0
	addk	r23,r0,r0
	brid	$L130
	addk	r3,r22,r0
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

	bnei	r3,$L134
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L135
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bleid	r3,$L140
	addk	r3,r0,r0
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

$L132:
$L140:
	lwi	r15,r1,0
$L139:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L134:
	addk	r3,r19,r0
	brid	$L139
	lwi	r15,r1,0
$L135:
	addk	r3,r22,r0
	brid	$L139
	lwi	r15,r1,0
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
	bneid	r3,$L145
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L146
	xor	r3,r22,r24
	bgeid	r3,$L143
	addk	r4,r24,r0
	bgeid	r24,$L142
	addk	r5,r25,r0
	addk	r4,r22,r0
	addk	r5,r23,r0
$L142:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L143:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r22,r0
	bltid	r3,$L142
	addk	r5,r23,r0
	addk	r4,r24,r0
	brid	$L142
	addk	r5,r25,r0
$L145:
	addk	r4,r22,r0
	brid	$L142
	addk	r5,r23,r0
$L146:
	addk	r4,r24,r0
	brid	$L142
	addk	r5,r25,r0
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

	bnei	r3,$L155
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L156
	xor	r3,r19,r22
	bgei	r3,$L153
	addk	r3,r22,r0
	bgeid	r22,$L161
	lwi	r15,r1,0
	addk	r3,r19,r0
$L152:
	lwi	r15,r1,0
$L161:
	lwi	r19,r1,28
$L162:
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L153:
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	addk	r3,r19,r0
	bltid	r4,$L152
	lwi	r15,r1,0
	addk	r3,r22,r0
	brid	$L162
	lwi	r19,r1,28
$L155:
	addk	r3,r19,r0
	brid	$L161
	lwi	r15,r1,0
$L156:
	addk	r3,r22,r0
	brid	$L161
	lwi	r15,r1,0
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
	bneid	r3,$L167
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L168
	xor	r3,r22,r24
	bgeid	r3,$L165
	addk	r4,r24,r0
	bgeid	r24,$L164
	addk	r5,r25,r0
	addk	r4,r22,r0
	addk	r5,r23,r0
$L164:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L165:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r22,r0
	bltid	r3,$L164
	addk	r5,r23,r0
	addk	r4,r24,r0
	brid	$L164
	addk	r5,r25,r0
$L167:
	addk	r4,r22,r0
	brid	$L164
	addk	r5,r23,r0
$L168:
	addk	r4,r24,r0
	brid	$L164
	addk	r5,r25,r0
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
	bneid	r3,$L177
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L178
	xor	r3,r22,r24
	bgeid	r3,$L175
	addk	r7,r22,r0
	addk	r4,r22,r0
	bgeid	r24,$L174
	addk	r5,r23,r0
	addk	r4,r24,r0
	addk	r5,r25,r0
$L174:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L175:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r24,r0
	bltid	r3,$L174
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L174
	addk	r5,r23,r0
$L177:
	addk	r4,r22,r0
	brid	$L174
	addk	r5,r23,r0
$L178:
	addk	r4,r24,r0
	brid	$L174
	addk	r5,r25,r0
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

	bnei	r3,$L187
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L188
	xor	r3,r19,r22
	bgei	r3,$L185
	addk	r3,r19,r0
	bgeid	r22,$L193
	lwi	r15,r1,0
	addk	r3,r22,r0
$L184:
	lwi	r15,r1,0
$L193:
	lwi	r19,r1,28
$L194:
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L185:
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	addk	r3,r22,r0
	bltid	r4,$L184
	lwi	r15,r1,0
	addk	r3,r19,r0
	brid	$L194
	lwi	r19,r1,28
$L187:
	addk	r3,r19,r0
	brid	$L193
	lwi	r15,r1,0
$L188:
	addk	r3,r22,r0
	brid	$L193
	lwi	r15,r1,0
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
	bneid	r3,$L199
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L200
	xor	r3,r22,r24
	bgeid	r3,$L197
	addk	r7,r22,r0
	addk	r4,r22,r0
	bgeid	r24,$L196
	addk	r5,r23,r0
	addk	r4,r24,r0
	addk	r5,r25,r0
$L196:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L197:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	addk	r4,r24,r0
	bltid	r3,$L196
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L196
	addk	r5,r23,r0
$L199:
	addk	r4,r22,r0
	brid	$L196
	addk	r5,r23,r0
$L200:
	addk	r4,r24,r0
	brid	$L196
	addk	r5,r25,r0
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
	bri	$L206
$L207:
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
$L206:
	bneid	r5,$L207
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
	beqi	r6,$L213
	lwi	r3,r6,0
	swi	r3,r5,0
	swi	r6,r5,4
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L210
	swi	r5,r3,4
$L210:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L213:
	swi	r0,r5,4
	brid	$L210
	swi	r0,r5,0
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
	beqi	r3,$L215
	lwi	r4,r5,4
	swi	r4,r3,4
$L215:
	lwi	r3,r5,4
	beqi	r3,$L214
	lwi	r4,r5,0
	swi	r4,r3,0
$L214:
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
	brid	$L218
	addk	r19,r0,r0
$L219:
	addik	r19,r19,1
$L218:
	xor	r4,r19,r26
	beqid	r4,$L222
	addk	r6,r22,r0
	brald	r15,r25
	
	addk	r5,r24,r0
	bneid	r3,$L219
	addk	r22,r22,r23
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r19,r0
	brid	$L220
	addk	r3,r27,r3
$L222:
	addik	r3,r26,1
	swi	r3,r28,0
	addk	r6,r26,r0
	brlid	r15,__mulsi3
	
	addk	r5,r23,r0
	addk	r7,r23,r0
	addk	r6,r24,r0
	brlid	r15,memcpy
	
	addk	r5,r27,r3
$L220:
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
	brid	$L224
	addk	r19,r0,r0
$L225:
	addik	r19,r19,1
$L224:
	xor	r4,r19,r26
	beqid	r4,$L228
	addk	r6,r22,r0
	brald	r15,r24
	
	addk	r5,r25,r0
	bneid	r3,$L225
	addk	r22,r22,r23
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r19,r0
	brid	$L226
	addk	r3,r27,r3
$L228:
	addk	r3,r0,r0
$L226:
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
	brid	$L231
	addk	r19,r5,r0
$L232:
	addik	r19,r19,1
$L231:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L232
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L238
	xori	r3,r3,45
	bneid	r3,$L234
	addk	r6,r0,r0
	addik	r6,r0,1	# 0x1
$L233:
	addik	r19,r19,1
$L234:
	addk	r4,r0,r0
	brid	$L235
	addik	r5,r0,9	# 0x9
$L238:
	brid	$L233
	addk	r6,r0,r0
$L236:
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r4,r4,r3
$L235:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r5
	bgeid	r18,$L236
	addik	r19,r19,1
	bneid	r6,$L237
	addk	r3,r4,r0
	rsubk	r3,r4,r0
$L237:
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
	brid	$L242
	addk	r19,r5,r0
$L243:
	addik	r19,r19,1
$L242:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L243
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L249
	xori	r3,r3,45
	bneid	r3,$L245
	addk	r6,r0,r0
	addik	r6,r0,1	# 0x1
$L244:
	addik	r19,r19,1
$L245:
	addk	r4,r0,r0
	brid	$L246
	addik	r5,r0,9	# 0x9
$L249:
	brid	$L244
	addk	r6,r0,r0
$L247:
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r4,r4,r3
$L246:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r5
	bgeid	r18,$L247
	addik	r19,r19,1
	bneid	r6,$L248
	addk	r3,r4,r0
	rsubk	r3,r4,r0
$L248:
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
	brid	$L253
	addk	r19,r5,r0
$L254:
	addik	r19,r19,1
$L253:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L254
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L260
	xori	r3,r3,45
	bneid	r3,$L256
	addk	r9,r0,r0
	addik	r9,r0,1	# 0x1
$L255:
	addik	r19,r19,1
$L256:
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	brid	$L257
	addik	r8,r0,9	# 0x9
$L260:
	brid	$L255
	addk	r9,r0,r0
$L258:
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
$L257:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r8
	bgeid	r18,$L258
	addik	r19,r19,1
	addk	r6,r4,r0
	bneid	r9,$L259
	addk	r7,r5,r0
	rsub	r7,r5,r0
	rsubc	r6,r4,r0
$L259:
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
	brid	$L264
	addk	r25,r9,r0
$L271:
	srl	r19,r19
$L264:
	beqid	r19,$L270
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	srl	r5,r19
	addk	r22,r24,r3
	addk	r6,r22,r0
	brald	r15,r25
	
	addk	r5,r26,r0
	blti	r3,$L271
	bleid	r3,$L269
	addk	r24,r22,r23
	srl	r3,r19
	addik	r19,r19,-1
	brid	$L264
	rsubk	r19,r3,r19
$L270:
	addk	r3,r0,r0
$L267:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
$L269:
	brid	$L267
	addk	r3,r22,r0
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
	brid	$L273
	addk	r23,r6,r0
$L275:
	sra	r19,r19
$L273:
	beqid	r19,$L278
	addk	r6,r24,r0
	brlid	r15,__mulsi3
	
	sra	r5,r19
	addk	r22,r23,r3
	addk	r7,r25,r0
	addk	r6,r22,r0
	brald	r15,r26
	
	addk	r5,r27,r0
	beqi	r3,$L277
	blei	r3,$L275
	addk	r23,r22,r24
	brid	$L275
	addik	r19,r19,-1
$L278:
	addk	r3,r0,r0
$L274:
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
$L277:
	brid	$L274
	addk	r3,r22,r0
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
	brid	$L292
	lwi	r3,r5,0
$L293:
	lwi	r3,r5,0
$L292:
	beqid	r3,$L288
	xor	r3,r6,r3
	bneid	r3,$L293
	addik	r5,r5,4
	addik	r5,r5,-4
$L288:
	lwi	r3,r5,0
	beqid	r3,$L294
	addk	r3,r0,r0
	addk	r3,r5,r0
$L290:
$L294:
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
	brid	$L302
	lwi	r3,r5,0
$L303:
	addik	r6,r6,4
	lwi	r3,r5,0
$L302:
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L297
	lwi	r3,r5,0
	beqi	r3,$L297
	bneid	r4,$L303
	addik	r5,r5,4
	addik	r5,r5,-4
$L297:
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L299
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L300
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L300:
	andi	r3,r3,0x00ff
$L299:
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
$L305:
	lw	r7,r4,r6
	sw	r7,r4,r3
	addik	r4,r4,4
	lw	r7,r4,r5
	bnei	r7,$L305
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
	brid	$L308
	addk	r3,r5,r0
$L309:
	addik	r3,r3,4
$L308:
	lwi	r4,r3,0
	bnei	r4,$L309
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
$L311:
	beqid	r7,$L318
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L312
	lwi	r3,r5,0
	beqi	r3,$L312
	beqi	r4,$L312
	addik	r7,r7,-1
	addik	r5,r5,4
	brid	$L311
	addik	r6,r6,4
$L312:
	beqid	r7,$L314
	addk	r3,r0,r0
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L314
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L315
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L315:
	andi	r3,r3,0x00ff
$L314:
$L318:
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
	bri	$L320
$L325:
	addik	r5,r5,4
$L320:
	beqid	r7,$L326
	addk	r3,r0,r0
	lwi	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L325
	addik	r7,r7,-1
	addik	r7,r7,1
	beqi	r7,$L326
	addk	r3,r5,r0
$L323:
$L326:
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
	bri	$L328
$L336:
	addik	r5,r5,4
	addik	r6,r6,4
$L328:
	beqid	r7,$L335
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L336
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L331
	addk	r3,r0,r0
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L331
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L332
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L332:
	andi	r3,r3,0x00ff
$L331:
$L335:
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
	brid	$L338
	addk	r4,r0,r0
$L339:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L338:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L339
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
	beqid	r4,$L341
	addk	r3,r5,r0
	rsubk	r5,r6,r5
	addk	r4,r7,r7
	addk	r4,r4,r4
	cmpu	r18,r4,r5
	blti	r18,$L343
	brid	$L342
	addk	r4,r0,r0
$L344:
	lw	r5,r4,r6
	sw	r5,r4,r3
$L343:
	addik	r4,r4,-4
	xori	r5,r4,-4
	bnei	r5,$L344
$L341:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L345:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L342:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L345
	bri	$L341
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
	brid	$L348
	addk	r4,r5,r0
$L349:
	addik	r4,r4,4
	swi	r6,r4,-4
$L348:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L349
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
	bgeid	r18,$L351
	xor	r4,r5,r6
	addik	r5,r5,-1
	brid	$L352
	addik	r6,r6,-1
$L353:
	lbu	r3,r7,r5
	sb	r3,r7,r6
	addik	r7,r7,-1
$L352:
	bnei	r7,$L353
$L350:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L351:
	bneid	r4,$L355
	addk	r3,r0,r0
	bri	$L350
$L356:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	addik	r3,r3,1
$L355:
	xor	r4,r3,r7
	bnei	r4,$L356
	bri	$L350
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
	beqid	r3,$L360
	addk	r5,r6,r0
	andi	r18,r7,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	addk	r9,r0,r0
$L361:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqid	r3,$L362
	addk	r10,r4,r4
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r11,r0,r4
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	addk	r10,r0,r0
$L363:
	or	r4,r10,r8
	or	r5,r11,r9
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
$L360:
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
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	brid	$L361
	or	r8,r3,r8
$L362:
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
	andi	r18,r7,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	brid	$L363
	or	r11,r3,r11
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
	beqid	r3,$L365
	addk	r5,r6,r0
	andi	r18,r7,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	addk	r8,r0,r0
$L366:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqid	r3,$L367
	srl	r10,r5
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	addk	r11,r0,r0
$L368:
	or	r4,r10,r8
	or	r5,r11,r9
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
$L365:
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
	andi	r18,r7,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	brid	$L366
	or	r9,r3,r9
$L367:
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
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
	brid	$L368
	or	r10,r3,r10
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
	addk	r3,r0,r0
$L381:
	xori	r4,r3,32
	beqi	r4,$L385
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L386
	brid	$L381
	addik	r3,r3,1
$L386:
	addik	r3,r3,1
$L383:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L385:
	brid	$L383
	addk	r3,r0,r0
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
	beqi	r5,$L391
	brid	$L389
	addik	r3,r0,1	# 0x1
$L390:
	sra	r5,r5
	addik	r3,r3,1
$L389:
	andi	r4,r5,1 #and1
	beqi	r4,$L390
$L388:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L391:
	brid	$L388
	addk	r3,r0,r0
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

	bltid	r3,$L393
	addik	r4,r0,1	# 0x1
	lwi	r6,r0,$LC1
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgtid	r3,$L393
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L393:
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
	bltid	r3,$L399
	addik	r4,r0,1	# 0x1
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L399
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L399:
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
	bltid	r3,$L405
	addik	r4,r0,1	# 0x1
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L405
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L405:
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

	bnei	r3,$L412
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	addk	r5,r23,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L412
	addik	r22,r0,0x40000000
	bgeid	r19,$L416
	andi	r3,r19,1 #and1
	addik	r22,r0,0x3f000000
	bri	$L419
$L415:
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
	beqi	r19,$L412
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L416:
	andi	r3,r19,1 #and1
$L419:
	beqi	r3,$L415
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	bri	$L415
$L412:
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
	bneid	r3,$L421
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
	blti	r19,$L428
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L429
	andi	r3,r19,1 #and1
$L428:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L429
	andi	r3,r19,1 #and1
$L424:
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
	beqid	r19,$L421
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	andi	r3,r19,1 #and1
$L429:
	beqid	r3,$L424
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L424
	addk	r25,r4,r0
$L421:
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
	bneid	r3,$L432
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
	beqid	r3,$L441
	addk	r3,r24,r0
	blti	r19,$L439
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L440
	andi	r3,r19,1 #and1
$L439:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L440
	andi	r3,r19,1 #and1
$L435:
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
	beqid	r19,$L432
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	andi	r3,r19,1 #and1
$L440:
	beqid	r3,$L435
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L435
	addk	r25,r4,r0
$L432:
	addk	r3,r24,r0
$L441:
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
	brid	$L443
	addk	r4,r0,r0
$L444:
	lbu	r5,r4,r6
	lbu	r8,r4,r3
	xor	r8,r8,r5
	sb	r8,r4,r3
	addik	r4,r4,1
$L443:
	xor	r5,r4,r7
	bnei	r5,$L444
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
	brid	$L446
	addk	r3,r23,r3
$L448:
	addik	r3,r3,1
	addik	r19,r19,-1
$L446:
	beqi	r19,$L447
	lbui	r4,r22,0
	sbi	r4,r3,0
	sext8	r4,r4
	bneid	r4,$L448
	addik	r22,r22,1
$L447:
	bnei	r19,$L449
	sbi	r0,r3,0
$L449:
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
	addk	r3,r0,r0
$L451:
	xor	r4,r3,r6
	beqi	r4,$L452
	lbu	r4,r3,r5
	bnei	r4,$L453
$L452:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L453:
	brid	$L451
	addik	r3,r3,1
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
$L455:
	lbui	r3,r5,0
	beqi	r3,$L456
	addk	r7,r6,r0
$L458:
	lbui	r4,r7,0
	beqid	r4,$L461
	addik	r7,r7,1
	lbui	r8,r7,-1
	lbui	r4,r5,0
	xor	r4,r4,r8
	sext8	r4,r4
	bnei	r4,$L458
	addk	r3,r5,r0
$L456:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L461:
	brid	$L455
	addik	r5,r5,1
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
	brid	$L464
	addk	r3,r0,r0
$L463:
	addik	r5,r5,1
	lbui	r4,r5,-1
	beqi	r4,$L467
$L464:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	bnei	r4,$L463
	brid	$L463
	addk	r3,r5,r0
$L467:
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
	beqid	r3,$L472
	addk	r23,r3,r0
	lbui	r24,r22,0
	sext8	r24,r24
$L470:
	addk	r6,r24,r0
	brlid	r15,strchr
	
	addk	r5,r19,r0
	beqid	r3,$L474
	addk	r19,r3,r0
	addk	r7,r23,r0
	addk	r6,r22,r0
	brlid	r15,strncmp
	
	addk	r5,r19,r0
	beqid	r3,$L475
	addk	r3,r19,r0
	brid	$L470
	addik	r19,r19,1
$L474:
	brid	$L469
	addk	r3,r0,r0
$L472:
	addk	r3,r19,r0
$L469:
$L475:
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
	bltid	r3,$L489
	addk	r5,r24,r0
$L477:
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L487
	addk	r4,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	blti	r3,$L479
	addk	r4,r22,r0
	addk	r5,r23,r0
$L480:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L489:
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	blei	r3,$L477
$L479:
	addik	r4,r22,-2147483648
	brid	$L480
	addk	r5,r23,r0
$L487:
	brid	$L480
	addk	r5,r23,r0
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
	beqid	r8,$L496
	addk	r23,r5,r23
	cmpu	r18,r8,r6
	bltid	r18,$L492
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L492:
	andi	r3,r3,0x00ff
	bneid	r3,$L497
	addik	r25,r22,1
	brid	$L493
	addik	r24,r8,-1
$L494:
	addik	r19,r19,1
$L493:
	cmpu	r18,r19,r23
	bltid	r18,$L499
	addk	r3,r0,r0
	lbui	r3,r19,0
	lbui	r4,r22,0
	xor	r4,r4,r3
	sext8	r4,r4
	bneid	r4,$L494
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memcmp
	
	addik	r5,r19,1
	bneid	r3,$L493
	addik	r19,r19,1
	addik	r19,r19,-1
	addk	r3,r19,r0
$L499:
$L491:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L496:
	brid	$L491
	addk	r3,r5,r0
$L497:
	brid	$L491
	addk	r3,r0,r0
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
	bltid	r3,$L520
	addk	r29,r0,r0
$L502:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bltid	r3,$L519
	addk	r19,r0,r0
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	brid	$L521
	addk	r7,r24,r0
$L520:
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
	brid	$L502
	addik	r29,r0,1	# 0x1
$L506:
	addik	r19,r19,1
	addk	r8,r27,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	addk	r7,r24,r0
$L521:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bgeid	r3,$L506
	addk	r7,r26,r0
$L507:
	beqid	r29,$L512
	swi	r19,r28,0
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
$L512:
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
$L519:
	addik	r19,r0,1	# 0x1
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L522
	andi	r19,r19,0x00ff
	addk	r19,r0,r0
	andi	r19,r19,0x00ff
$L522:
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
	bnei	r4,$L515
	brid	$L507
	addk	r19,r0,r0
$L511:
	addik	r19,r19,-1
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__adddf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L510:
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L511
	addk	r7,r22,r0
	bri	$L507
$L515:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	brid	$L510
	addk	r19,r0,r0
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
	brid	$L524
	swi	r25,r1,16
$L525:
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
$L524:
	or	r3,r4,r5
	beqid	r3,$L528
	addk	r24,r0,r0
	andi	r25,r5,1 #and1
	or	r3,r24,r25
	beqi	r3,$L525
	add	r9,r9,r7
	addc	r8,r8,r6
	bri	$L525
$L528:
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
	brid	$L530
	addk	r11,r0,r0
$L531:
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
	beqi	r8,$L538
	blti	r6,$L540
	addk	r6,r6,r6
	addk	r4,r4,r4
$L530:
	cmpu	r18,r5,r6
	bltid	r18,$L531
	addk	r3,r10,r0
	brid	$L531
	addk	r3,r11,r0
$L540:
	brid	$L534
	addk	r3,r0,r0
$L538:
	brid	$L534
	addk	r3,r0,r0
$L535:
	srl	r4,r4
	srl	r6,r6
$L534:
	beqi	r4,$L541
	cmpu	r18,r6,r5
	blti	r18,$L535
	rsubk	r5,r6,r5
	brid	$L535
	or	r3,r3,r4
$L541:
	bnei	r7,$L542
$L537:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L542:
	brid	$L537
	addk	r3,r5,r0
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
	beqid	r5,$L546
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
	addik	r3,r3,-1
$L545:
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
$L546:
	brid	$L545
	addik	r3,r0,7	# 0x7
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
	bltid	r4,$L553
	addk	r5,r6,r0
$L548:
	or	r3,r4,r5
	beqid	r3,$L552
	addk	r6,r5,r0
	brlid	r15,__clzdi2
	
	addk	r5,r4,r0
	addik	r3,r3,-1
$L550:
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
$L553:
	xori	r6,r4,-1
	xori	r7,r5,-1
	addk	r4,r6,r0
	brid	$L548
	addk	r5,r7,r0
$L552:
	brid	$L550
	addik	r3,r0,63	# 0x3f
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
	brid	$L555
	addk	r3,r0,r0
$L556:
	srl	r5,r5
	addk	r6,r6,r6
$L555:
	beqid	r5,$L558
	andi	r4,r5,1 #and1
	beqi	r4,$L556
	brid	$L556
	addk	r3,r3,r6
$L558:
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
	bgeid	r18,$L560
	andi	r3,r7,-8 #and1
	addk	r9,r6,r0
$L571:
	addk	r8,r5,r0
	brid	$L561
	addk	r4,r0,r0
$L560:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bltid	r18,$L571
	addk	r9,r6,r0
	brid	$L569
	addik	r7,r7,-1
$L564:
	lwi	r22,r9,0
	lwi	r23,r9,4
	swi	r22,r8,0
	swi	r23,r8,4
	addik	r4,r4,1
	addik	r9,r9,8
	addik	r8,r8,8
$L561:
	xor	r10,r4,r11
	bnei	r10,$L564
	bri	$L565
$L566:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L565:
	cmpu	r18,r7,r3
	bltid	r18,$L566
	lwi	r22,r1,4
	lwi	r23,r1,8
$L572:
	rtsd	r15,8 
	
	addik	r1,r1,12
$L568:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L569:
	xori	r3,r7,-1
	bneid	r3,$L568
	lwi	r22,r1,4
	brid	$L572
	lwi	r23,r1,8
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
	bgeid	r18,$L574
	srl	r8,r7
$L576:
	addk	r8,r8,r8
	brid	$L575
	addk	r3,r0,r0
$L574:
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	blti	r18,$L576
	brid	$L581
	addik	r7,r7,-1
$L578:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
$L575:
	xor	r4,r3,r8
	bnei	r4,$L578
	andi	r3,r7,1 #and1
	beqid	r3,$L573
	addik	r7,r7,-1
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L573:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L580:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L581:
	xori	r3,r7,-1
	bnei	r3,$L580
	bri	$L573
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
	bgeid	r18,$L583
	andi	r3,r7,-4 #and1
$L585:
	addk	r9,r9,r9
	addk	r9,r9,r9
	brid	$L584
	addk	r4,r0,r0
$L583:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	blti	r18,$L585
	brid	$L592
	addik	r7,r7,-1
$L587:
	lw	r8,r4,r6
	sw	r8,r4,r5
	addik	r4,r4,4
$L584:
	xor	r8,r4,r9
	bnei	r8,$L587
	bri	$L588
$L589:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L588:
	cmpu	r18,r7,r3
	blti	r18,$L589
$L582:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L591:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L592:
	xori	r3,r7,-1
	bnei	r3,$L591
	bri	$L582
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
	addk	r3,r0,r0
$L600:
	xori	r4,r3,16
	beqid	r4,$L601
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
	bnei	r4,$L601
	brid	$L600
	addik	r3,r3,1
$L601:
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
	addk	r3,r0,r0
$L604:
	xori	r4,r3,16
	beqi	r4,$L605
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L605
	brid	$L604
	addik	r3,r3,1
$L605:
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

	bgei	r3,$L613
	addk	r5,r19,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L614:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L613:
	addik	r6,r0,0x47000000
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	brid	$L614
	lwi	r15,r1,0
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
	brid	$L616
	addk	r4,r3,r0
$L617:
	addik	r4,r4,1
$L616:
	xori	r6,r4,16
	beqi	r6,$L619
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L617
	brid	$L617
	addik	r3,r3,1
$L619:
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
	brid	$L621
	addk	r4,r3,r0
$L622:
	addik	r4,r4,1
$L621:
	xori	r6,r4,16
	beqi	r6,$L624
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L622
	brid	$L622
	addik	r3,r3,1
$L624:
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
	brid	$L626
	addk	r3,r0,r0
$L627:
	srl	r5,r5
	addk	r6,r6,r6
$L626:
	beqid	r5,$L629
	andi	r4,r5,1 #and1
	beqi	r4,$L627
	brid	$L627
	addk	r3,r3,r6
$L629:
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
	beqid	r5,$L635
	addk	r3,r0,r0
	bri	$L632
$L633:
	addk	r5,r5,r5
	srl	r6,r6
$L632:
	beqid	r6,$L631
	andi	r4,r6,1 #and1
	beqi	r4,$L633
	brid	$L633
	addk	r3,r3,r5
$L635:
$L631:
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
	brid	$L637
	addk	r11,r0,r0
$L638:
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
	beqi	r8,$L645
	blti	r6,$L647
	addk	r6,r6,r6
	addk	r4,r4,r4
$L637:
	cmpu	r18,r5,r6
	bltid	r18,$L638
	addk	r3,r10,r0
	brid	$L638
	addk	r3,r11,r0
$L647:
	brid	$L641
	addk	r3,r0,r0
$L645:
	brid	$L641
	addk	r3,r0,r0
$L642:
	srl	r4,r4
	srl	r6,r6
$L641:
	beqi	r4,$L648
	cmpu	r18,r6,r5
	blti	r18,$L642
	rsubk	r5,r6,r5
	brid	$L642
	or	r3,r3,r4
$L648:
	bnei	r7,$L649
$L644:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L649:
	brid	$L644
	addk	r3,r5,r0
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

	bltid	r3,$L654
	addik	r3,r0,-1	# 0xffffffffffffffff
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgtid	r3,$L654
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L651:
$L654:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	brid	$L651
	addik	r3,r0,1	# 0x1
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
	bltid	r3,$L657
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L659
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L656:
$L659:
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L657:
	brid	$L656
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	bltid	r6,$L671
	addk	r19,r0,r0
$L663:
	addk	r9,r0,r0
	addk	r3,r9,r0
	addik	r11,r0,1	# 0x1
	addik	r10,r0,31	# 0x1f
	brid	$L664
	addk	r12,r0,r0
$L671:
	rsubk	r6,r6,r0
	brid	$L663
	addik	r19,r0,1	# 0x1
$L665:
	addk	r5,r5,r5
	sra	r6,r6
	addik	r3,r3,1
	sext8	r3,r3
$L664:
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
	bgeid	r18,$L666
	addk	r8,r11,r0
	addk	r8,r12,r0
$L666:
	and	r4,r4,r8
	beqid	r4,$L672
	andi	r4,r6,1 #and1
	beqi	r4,$L665
	brid	$L665
	addk	r9,r9,r5
$L672:
	beqid	r19,$L668
	addk	r3,r9,r0
	rsubk	r3,r9,r0
$L668:
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
	bltid	r5,$L678
	addk	r19,r0,r0
$L674:
	blti	r6,$L679
$L675:
	brlid	r15,__udivmodsi4
	
	addk	r7,r0,r0
	beqid	r19,$L680
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L680:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L678:
	rsubk	r5,r5,r0
	brid	$L674
	addik	r19,r0,1	# 0x1
$L679:
	rsubk	r6,r6,r0
	brid	$L675
	xori	r19,r19,1
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
	bltid	r5,$L686
	addk	r19,r0,r0
$L682:
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
	beqid	r19,$L687
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L687:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L686:
	rsubk	r5,r5,r0
	brid	$L682
	addik	r19,r0,1	# 0x1
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
	brid	$L689
	addk	r11,r0,r0
$L690:
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
	beqid	r8,$L693
	addk	r3,r0,r0
	sext16	r3,r6
	blti	r3,$L699
	addk	r6,r6,r6
	andi	r6,r6,0xffff
	addk	r4,r4,r4
	andi	r4,r4,0xffff
$L689:
	cmpu	r18,r5,r6
	bltid	r18,$L690
	addk	r3,r10,r0
	brid	$L690
	addk	r3,r11,r0
$L699:
	brid	$L693
	addk	r3,r0,r0
$L694:
	srl	r4,r4
	srl	r6,r6
$L693:
	beqi	r4,$L700
	cmpu	r18,r6,r5
	blti	r18,$L694
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
	brid	$L694
	or	r3,r3,r4
$L700:
	bnei	r7,$L701
$L696:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L701:
	brid	$L696
	addk	r3,r5,r0
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
	brid	$L703
	addk	r11,r0,r0
$L704:
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
	beqi	r8,$L711
	blti	r6,$L713
	addk	r6,r6,r6
	addk	r4,r4,r4
$L703:
	cmpu	r18,r5,r6
	bltid	r18,$L704
	addk	r3,r10,r0
	brid	$L704
	addk	r3,r11,r0
$L713:
	brid	$L707
	addk	r3,r0,r0
$L711:
	brid	$L707
	addk	r3,r0,r0
$L708:
	srl	r4,r4
	srl	r6,r6
$L707:
	beqi	r4,$L714
	cmpu	r18,r6,r5
	blti	r18,$L708
	rsubk	r5,r6,r5
	brid	$L708
	or	r3,r3,r4
$L714:
	bnei	r7,$L715
$L710:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L715:
	brid	$L710
	addk	r3,r5,r0
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
	beqid	r3,$L717
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
$L719:
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
$L717:
	beqi	r7,$L720
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
	brid	$L719
	or	r4,r6,r3
$L720:
	addk	r4,r5,r0
	brid	$L719
	addk	r5,r6,r0
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
	beqid	r3,$L722
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
$L724:
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
$L722:
	beqid	r7,$L725
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
	brid	$L724
	or	r5,r6,r3
$L725:
	addk	r4,r5,r0
	brid	$L724
	addk	r5,r6,r0
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
	bltid	r18,$L729
	addk	r19,r0,r0
	addik	r19,r0,16	# 0x10
$L729:
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
	bneid	r4,$L730
	addk	r3,r0,r0
	addik	r3,r0,8	# 0x8
$L730:
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
	bneid	r4,$L731
	addk	r3,r0,r0
	addik	r3,r0,4	# 0x4
$L731:
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
	bneid	r4,$L732
	addk	r3,r0,r0
	addik	r3,r0,2	# 0x2
$L732:
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
	bltid	r18,$L739
	addk	r3,r0,r0
	cmp	r18,r4,r6
	bltid	r18,$L743
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r5
	bltid	r18,$L743
	addk	r3,r0,r0
	cmpu	r18,r5,r8
	blti	r18,$L742
	addik	r3,r0,1	# 0x1
$L739:
$L738:
$L743:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	brid	$L738
	addk	r3,r0,r0
$L742:
	brid	$L738
	addik	r3,r0,2	# 0x2
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
	bneid	r4,$L746
	addk	r3,r0,r0
	addik	r3,r0,16	# 0x10
$L746:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r6,r4,255 #and1
	bneid	r6,$L747
	addk	r5,r0,r0
	addik	r5,r0,8	# 0x8
$L747:
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
	bneid	r6,$L748
	addk	r5,r0,r0
	addik	r5,r0,4	# 0x4
$L748:
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
	bneid	r6,$L749
	addk	r5,r0,r0
	addik	r5,r0,2	# 0x2
$L749:
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
	beqid	r3,$L755
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
$L757:
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
$L755:
	beqid	r7,$L758
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
	brid	$L757
	or	r5,r6,r3
$L758:
	addk	r4,r5,r0
	brid	$L757
	addk	r5,r6,r0
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
	brid	$L769
	addk	r19,r7,r0
$L767:
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
	beqid	r19,$L768
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L769:
	andi	r3,r19,1 #and1
	beqid	r3,$L767
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L767
	addk	r25,r4,r0
$L768:
	addk	r4,r24,r0
	beqid	r26,$L770
	addk	r5,r25,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
$L770:
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
	brid	$L775
	addk	r19,r6,r0
$L773:
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
	beqi	r19,$L774
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L775:
	andi	r3,r19,1 #and1
	beqi	r3,$L773
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	bri	$L773
$L774:
	addk	r3,r23,r0
	beqid	r24,$L778
	lwi	r15,r1,0
	addk	r6,r23,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L778:
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
	bltid	r18,$L781
	addk	r3,r0,r0
	cmpu	r18,r4,r6
	bltid	r18,$L785
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r5
	bltid	r18,$L785
	addk	r3,r0,r0
	cmpu	r18,r5,r8
	blti	r18,$L784
	addik	r3,r0,1	# 0x1
$L781:
$L780:
$L785:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	brid	$L780
	addk	r3,r0,r0
$L784:
	brid	$L780
	addik	r3,r0,2	# 0x2
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
