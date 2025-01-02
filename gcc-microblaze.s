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
	beqi	r7,$L3
	addik	r6,r6,-1
	addik	r4,r5,-1
$L4:
	lbu	r5,r7,r6
	sb	r5,r7,r4
	addik	r7,r7,-1
	bnei	r7,$L4
$L3:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L2:
	xor	r4,r5,r6
	beqi	r4,$L3
	beqid	r7,$L3
	addik	r5,r0,6	# 0x6
	addik	r4,r7,-1
	cmpu	r18,r4,r5
	bgeid	r18,$L13
	or	r4,r6,r3
	andi	r4,r4,3 #and1
	bneid	r4,$L13
	addik	r4,r6,1
	rsubk	r4,r4,r3
	addik	r5,r0,2	# 0x2
	cmpu	r18,r4,r5
	bgeid	r18,$L10
	addk	r4,r0,r0
	andi	r9,r7,-4 #and1
$L7:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
	xor	r8,r4,r9
	bneid	r8,$L7
	addk	r8,r6,r9
	xor	r4,r7,r9
	addk	r5,r3,r9
	beqid	r4,$L3
	rsubk	r7,r9,r7
	lbu	r4,r9,r6
	sb	r4,r9,r3
	xori	r4,r7,1
	beqi	r4,$L3
	lbui	r4,r8,1
	xori	r7,r7,2
	beqid	r7,$L3
	sbi	r4,r5,1
	lbui	r4,r8,2
	rtsd	r15,8 
	
	sbi	r4,r5,2
$L13:
	addk	r4,r0,r0
$L10:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
	xor	r8,r7,r4
	bnei	r8,$L10
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
	bneid	r8,$L37
	andi	r7,r7,0x00ff
	brid	$L46
	addk	r3,r0,r0
$L40:
	beqid	r8,$L39
	addik	r5,r5,1
$L37:
	lbui	r4,r6,0
	addik	r8,r8,-1
	sbi	r4,r5,0
	xor	r4,r4,r7
	bneid	r4,$L40
	addik	r6,r6,1
	rtsd	r15,8 
	
	addik	r3,r5,1
$L39:
	addk	r3,r0,r0
$L46:
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
	bneid	r7,$L48
	andi	r6,r6,0x00ff
	brid	$L53
	addk	r3,r7,r0
$L50:
	beqid	r7,$L51
	addik	r5,r5,1
$L48:
	lbui	r4,r5,0
	xor	r4,r4,r6
	bneid	r4,$L50
	addik	r7,r7,-1
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L51:
	addk	r3,r7,r0
$L53:
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
	beqi	r7,$L59
$L65:
	lbui	r4,r5,0
	lbui	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L64
	addik	r5,r5,1
	bneid	r7,$L65
	addik	r6,r6,1
$L59:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L64:
	rtsd	r15,8 
	
	rsubk	r3,r3,r4
	.end	memcmp
$Lfe4:
	.size	memcmp,$Lfe4-memcmp
	.align	2
	.globl	memcpy
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	beqid	r7,$L67
	addk	r19,r5,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L67:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	addik	r7,r7,-1
	addk	r7,r5,r7
	andi	r6,r6,0x00ff
	brid	$L73
	addik	r5,r5,-1
$L75:
	lbui	r4,r3,0
	xor	r4,r4,r6
	beqid	r4,$L72
	addik	r7,r7,-1
$L73:
	xor	r4,r7,r5
	bneid	r4,$L75
	addk	r3,r7,r0
	addk	r3,r4,r0
$L72:
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	beqid	r7,$L79
	addk	r19,r5,r0
	brlid	r15,memset
	
	andi	r6,r6,0x00ff
$L79:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	addk	r3,r5,r0
	lbui	r4,r6,0
	sext8	r5,r4
	beqid	r5,$L82
	sbi	r4,r3,0
$L83:
	lbui	r4,r6,1
	addik	r3,r3,1
	addik	r6,r6,1
	sext8	r5,r4
	bneid	r5,$L83
	sbi	r4,r3,0
$L82:
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
	lbui	r4,r5,0
	addk	r3,r5,r0
	sext8	r4,r4
	bneid	r4,$L89
	andi	r6,r6,0x00ff
	bri	$L88
$L91:
	lbui	r4,r3,1
	sext8	r4,r4
	beqid	r4,$L88
	addik	r3,r3,1
$L89:
	andi	r4,r4,0x00ff
	xor	r4,r4,r6
	bnei	r4,$L91
$L88:
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
	brid	$L97
	addk	r3,r5,r0
$L100:
	beqid	r4,$L99
	addik	r3,r3,1
$L97:
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r5,r4,r6
	bnei	r5,$L100
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L99:
	rtsd	r15,8 
	
	addk	r3,r4,r0
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
	lbui	r4,r6,0
	lbui	r8,r5,0
	addik	r7,r0,1	# 0x1
	sext8	r4,r4
	sext8	r3,r8
	xor	r9,r3,r4
	bneid	r9,$L108
	addik	r6,r6,-1
$L102:
	beqid	r3,$L109
	andi	r4,r4,0x00ff
	lbu	r8,r7,r5
	addik	r7,r7,1
	lbu	r4,r7,r6
	sext8	r3,r8
	sext8	r4,r4
	xor	r9,r3,r4
	beqi	r9,$L102
$L108:
	andi	r3,r8,0x00ff
	andi	r4,r4,0x00ff
$L109:
	rtsd	r15,8 
	
	rsubk	r3,r4,r3
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
	lbui	r3,r5,0
	sext8	r3,r3
	beqi	r3,$L110
	addk	r3,r5,r0
$L112:
	lbui	r4,r3,1
	bneid	r4,$L112
	addik	r3,r3,1
	rsubk	r3,r5,r3
$L110:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqid	r7,$L122
	addk	r8,r6,r0
	lbui	r9,r5,0
	addik	r7,r7,-1
	bneid	r9,$L119
	addk	r11,r6,r7
	brid	$L129
	lbui	r3,r6,0
$L131:
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
	beqi	r4,$L118
	lbui	r9,r5,0
	beqid	r9,$L130
	addik	r3,r8,1
	addk	r8,r3,r0
$L119:
	lbui	r3,r8,0
	xor	r6,r8,r11
	rsubk	r7,r6,r0
	xor	r4,r3,r9
	rsubk	r10,r3,r0
	addik	r4,r4,-1
	and	r4,r4,r10
	addik	r5,r5,1
	bltid	r4,$L131
	or	r7,r7,r6
$L118:
	rsubk	r3,r3,r9
$L115:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L122:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L130:
	lbui	r3,r8,1
	brid	$L115
	rsubk	r3,r3,r9
$L129:
	brid	$L115
	rsubk	r3,r3,r9
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
	addik	r3,r0,1	# 0x1
	cmp	r18,r7,r3
	bgeid	r18,$L132
	andi	r7,r7,-2 #and1
	addk	r4,r5,r7
$L134:
	lbui	r3,r5,1
	addik	r5,r5,2
	addik	r6,r6,2
	sbi	r3,r6,-2
	lbui	r3,r5,-2
	sbi	r3,r6,-1
	xor	r3,r5,r4
	bnei	r3,$L134
$L132:
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
	addik	r4,r0,25	# 0x19
	addik	r5,r5,-97
	cmpu	r18,r5,r4
	bgeid	r18,$L137
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L137:
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
	addik	r4,r0,127	# 0x7f
	cmpu	r18,r5,r4
	bgeid	r18,$L139
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L139:
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
	xori	r6,r5,32
	xori	r5,r5,9
	rsubk	r4,r6,r0
	rsubk	r3,r5,r0
	or	r4,r4,r6
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
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r5,r3
	bgeid	r18,$L142
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L142:
	xori	r5,r5,127
	rsubk	r4,r5,r0
	or	r4,r4,r5
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
	or	r3,r3,r6
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,9	# 0x9
	addik	r5,r5,-48
	cmpu	r18,r5,r4
	bgeid	r18,$L144
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L144:
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
	addik	r4,r0,93	# 0x5d
	addik	r5,r5,-33
	cmpu	r18,r5,r4
	bgeid	r18,$L146
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L146:
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
	addik	r4,r0,25	# 0x19
	addik	r5,r5,-97
	cmpu	r18,r5,r4
	bgeid	r18,$L148
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L148:
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
	addik	r4,r0,94	# 0x5e
	addik	r5,r5,-32
	cmpu	r18,r5,r4
	bgeid	r18,$L150
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L150:
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
	addik	r3,r0,4	# 0x4
	addik	r4,r5,-9
	cmpu	r18,r4,r3
	bgeid	r18,$L152
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L152:
	xori	r5,r5,32
	rsubk	r4,r5,r0
	or	r4,r4,r5
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
	or	r3,r3,r6
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,25	# 0x19
	addik	r5,r5,-65
	cmpu	r18,r5,r4
	bgeid	r18,$L154
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L154:
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
	addik	r3,r0,32	# 0x20
	addik	r4,r5,-127
	cmpu	r18,r4,r3
	bgei	r18,$L160
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r5,r3
	bgeid	r18,$L160
	addik	r4,r0,1	# 0x1
	addik	r6,r5,-8232
	cmpu	r18,r6,r4
	bgeid	r18,$L155
	addk	r3,r4,r0
	addik	r5,r5,-65529
	addik	r6,r0,2	# 0x2
	cmpu	r18,r5,r6
	blti	r18,$L164
$L155:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L160:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L164:
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
	addik	r4,r0,9	# 0x9
	addik	r5,r5,-48
	cmpu	r18,r5,r4
	bgeid	r18,$L166
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L166:
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
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r5,r3
	bgeid	r18,$L178
	addik	r4,r5,-8234
	addik	r3,r0,47061
	cmpu	r18,r4,r3
	bltid	r18,$L179
	addik	r3,r0,8231	# 0x2027
	addik	r3,r0,1	# 0x1
$L167:
$L180:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L179:
	cmpu	r18,r5,r3
	bgeid	r18,$L180
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgeid	r18,$L180
	addik	r3,r0,1	# 0x1
	addik	r3,r0,1048579
	addik	r4,r5,-65532
	cmpu	r18,r4,r3
	blti	r18,$L175
	andi	r5,r5,65534 #and2
	xori	r5,r5,65534
	rsubk	r5,r5,r0
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
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L178:
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	bltid	r18,$L167
	addik	r3,r0,1	# 0x1
$L175:
	rtsd	r15,8 
	
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
	addik	r4,r0,9	# 0x9
	addik	r6,r5,-48
	cmpu	r18,r6,r4
	bgeid	r18,$L181
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,5	# 0x5
	cmpu	r18,r5,r4
	blti	r18,$L185
$L181:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L185:
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	brlid	r15,__gtdf2
	
	addk	r25,r8,r0
	bleid	r3,$L192
	addk	r7,r24,r0
	addk	r5,r22,r0
	addk	r8,r25,r0
	brlid	r15,__subdf3
	
	addk	r6,r23,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
$L194:
	lwi	r15,r1,0
	addk	r4,r5,r0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L192:
	addk	r4,r0,r0
	addk	r5,r0,r0
	brid	$L194
	addk	r3,r4,r0
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
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bleid	r3,$L200
	lwi	r15,r1,0
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L200:
	lwi	r19,r1,28
	lwi	r22,r1,32
	addk	r3,r0,r0
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
	andi	r9,r5,-2147483648 #and2
	andi	r4,r7,-2147483648 #and2
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	xor	r4,r9,r4
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	beqid	r4,$L203
	addk	r25,r8,r0
	addk	r4,r5,r0
	beqid	r9,$L202
	addk	r5,r6,r0
	addk	r4,r7,r0
	addk	r5,r8,r0
$L202:
	addk	r3,r4,r0
	lwi	r15,r1,0
	addk	r4,r5,r0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L203:
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	addk	r4,r24,r0
	bltid	r3,$L202
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L202
	addk	r5,r23,r0
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
	andi	r7,r5,-2147483648 #and2
	andi	r4,r6,-2147483648 #and2
	swi	r19,r1,28
	swi	r22,r1,32
	xor	r4,r7,r4
	addk	r19,r5,r0
	addk	r22,r6,r0
	beqid	r4,$L214
	swi	r15,r1,0
	addk	r3,r5,r0
	beqid	r7,$L224
	lwi	r15,r1,0
	addk	r3,r6,r0
$L224:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L214:
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r22,r0
	blti	r3,$L217
	addk	r4,r19,r0
$L217:
	addk	r3,r4,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
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
	andi	r9,r5,-2147483648 #and2
	andi	r4,r7,-2147483648 #and2
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	xor	r4,r9,r4
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	beqid	r4,$L226
	addk	r25,r8,r0
	addk	r4,r5,r0
	beqid	r9,$L225
	addk	r5,r6,r0
	addk	r4,r7,r0
	addk	r5,r8,r0
$L225:
	addk	r3,r4,r0
	lwi	r15,r1,0
	addk	r4,r5,r0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L226:
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	addk	r4,r24,r0
	bltid	r3,$L225
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L225
	addk	r5,r23,r0
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
	andi	r9,r5,-2147483648 #and2
	andi	r4,r7,-2147483648 #and2
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	xor	r4,r9,r4
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	beqid	r4,$L237
	addk	r23,r8,r0
	addk	r4,r7,r0
	beqid	r9,$L236
	addk	r5,r8,r0
	addk	r4,r24,r0
	addk	r5,r6,r0
$L236:
	addk	r3,r4,r0
	lwi	r15,r1,0
	addk	r4,r5,r0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L237:
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	addk	r4,r24,r0
	bltid	r3,$L236
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L236
	addk	r5,r23,r0
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
	andi	r7,r5,-2147483648 #and2
	andi	r4,r6,-2147483648 #and2
	swi	r19,r1,28
	swi	r22,r1,32
	xor	r4,r7,r4
	addk	r22,r5,r0
	addk	r19,r6,r0
	beqid	r4,$L248
	swi	r15,r1,0
	addk	r3,r6,r0
	beqid	r7,$L258
	lwi	r15,r1,0
	addk	r3,r5,r0
$L258:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L248:
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r22,r0
	blti	r3,$L251
	addk	r4,r19,r0
$L251:
	addk	r3,r4,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
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
	andi	r9,r5,-2147483648 #and2
	andi	r4,r7,-2147483648 #and2
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	xor	r4,r9,r4
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	beqid	r4,$L260
	addk	r23,r8,r0
	addk	r4,r7,r0
	beqid	r9,$L259
	addk	r5,r8,r0
	addk	r4,r24,r0
	addk	r5,r6,r0
$L259:
	addk	r3,r4,r0
	lwi	r15,r1,0
	addk	r4,r5,r0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L260:
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	addk	r4,r24,r0
	bltid	r3,$L259
	addk	r5,r25,r0
	addk	r4,r22,r0
	brid	$L259
	addk	r5,r23,r0
	.end	fminl
$Lfe37:
	.size	fminl,$Lfe37-fminl
	.align	2
	.globl	l64a
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,s.0
	beqid	r5,$L271
	andi	r4,r5,63 #and1
	addik	r6,r0,digits
$L275:
	lbu	r4,r4,r6
	addik	r3,r3,1
	sbi	r4,r3,-1
	addk	r4,r5,r0
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	bneid	r5,$L275
	andi	r4,r5,63 #and1
$L271:
	sbi	r0,r3,0
	addik	r3,r0,s.0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	l64a
$Lfe38:
	.size	l64a,$Lfe38-l64a
	.align	2
	.globl	srand
	.ent	srand
	.type	srand, @function
srand:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r5,r5,-1
	swi	r0,r0,seed
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
	lwi	r5,r0,seed
	lwi	r6,r0,seed+4
	addik	r1,r1,-28
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	swi	r15,r1,0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r6,r0,0x00000000
	addik	r7,r0,0x00000001 #li => la
	lwi	r15,r1,0
	add	r5,r5,r7
	addc	r4,r4,r6
	srl	r3,r4
	swi	r4,r0,seed
	swi	r5,r0,seed+4
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
	beqi	r6,$L285
	lwi	r3,r6,0
	swi	r6,r5,4
	swi	r3,r5,0
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L279
	swi	r5,r3,4
$L279:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L285:
	swi	r6,r5,4
	rtsd	r15,8 
	
	swi	r6,r5,0
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
	beqi	r3,$L287
	lwi	r4,r5,4
	swi	r4,r3,4
$L287:
	lwi	r4,r5,4
	beqi	r4,$L286
	swi	r3,r4,0
$L286:
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
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r26,r1,48
	swi	r29,r1,60
	lwi	r23,r7,0
	addk	r28,r7,r0
	addk	r25,r5,r0
	addk	r27,r6,r0
	beqid	r23,$L296
	addk	r24,r8,r0
	addk	r29,r9,r0
	addk	r19,r6,r0
	brid	$L298
	addk	r22,r0,r0
$L311:
	beqid	r4,$L296
	addk	r19,r19,r24
$L298:
	addk	r6,r19,r0
	addk	r5,r25,r0
	addik	r22,r22,1
	brald	r15,r29
	
	addk	r26,r19,r0
	bneid	r3,$L311
	xor	r4,r23,r22
$L295:
	addk	r3,r26,r0
$L312:
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
$L296:
	addk	r6,r23,r0
	addk	r5,r24,r0
	addik	r23,r23,1
	brlid	r15,__mulsi3
	
	swi	r23,r28,0
	beqid	r24,$L295
	addk	r26,r27,r3
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memmove
	
	addk	r5,r26,r0
	brid	$L312
	addk	r3,r26,r0
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
	swi	r26,r1,48
	lwi	r26,r7,0
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	beqid	r26,$L314
	swi	r27,r1,52
	addk	r23,r5,r0
	addk	r25,r8,r0
	addk	r24,r9,r0
	addk	r19,r6,r0
	brid	$L316
	addk	r22,r0,r0
$L325:
	beqid	r4,$L314
	addk	r19,r19,r25
$L316:
	addk	r6,r19,r0
	addk	r5,r23,r0
	addik	r22,r22,1
	brald	r15,r24
	
	addk	r27,r19,r0
	bneid	r3,$L325
	xor	r4,r26,r22
$L313:
	addk	r3,r27,r0
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
$L314:
	brid	$L313
	addk	r27,r0,r0
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r3,r5,0
	addik	r4,r0,4	# 0x4
	sext8	r6,r3
	addik	r7,r6,-9
	cmpu	r18,r7,r4
	bgeid	r18,$L349
	addik	r7,r0,4	# 0x4
	xori	r3,r3,32
	andi	r3,r3,0x00ff
	addik	r3,r3,-1
	bgei	r3,$L328
$L349:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r3,r6,32
	sext8	r6,r6
	andi	r3,r3,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r7
	bgeid	r18,$L349
	addik	r3,r3,-1
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
	bnei	r4,$L349
$L328:
	xori	r3,r6,43
	beqid	r3,$L333
	addik	r4,r0,9	# 0x9
	xori	r3,r6,45
	bneid	r3,$L353
	addik	r7,r6,-48
	lbui	r6,r5,1
	addik	r4,r0,9	# 0x9
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bltid	r18,$L327
	addik	r5,r5,1
	addik	r10,r0,1	# 0x1
$L336:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L339:
	lbui	r6,r5,1
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r3
	sext8	r6,r6
	sext8	r8,r7
	addk	r4,r4,r4
	addik	r7,r6,-48
	addik	r5,r5,1
	cmpu	r18,r7,r9
	bgeid	r18,$L339
	rsubk	r3,r8,r4
	bnei	r10,$L327
	rsubk	r3,r4,r8
$L327:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L353:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r7,r3
	bgeid	r18,$L336
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L333:
	lbui	r6,r5,1
	addk	r10,r3,r0
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bgeid	r18,$L336
	addik	r5,r5,1
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r3,r5,0
	addik	r4,r0,4	# 0x4
	sext8	r6,r3
	addik	r7,r6,-9
	cmpu	r18,r7,r4
	bgeid	r18,$L375
	addik	r7,r0,4	# 0x4
	xori	r3,r3,32
	andi	r3,r3,0x00ff
	addik	r3,r3,-1
	bgei	r3,$L355
$L375:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r3,r6,32
	sext8	r6,r6
	andi	r3,r3,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r7
	bgeid	r18,$L375
	addik	r3,r3,-1
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
	bnei	r4,$L375
$L355:
	xori	r3,r6,43
	beqid	r3,$L360
	addik	r4,r0,9	# 0x9
	xori	r3,r6,45
	bneid	r3,$L361
	addik	r7,r6,-48
	lbui	r6,r5,1
	addik	r4,r0,9	# 0x9
	addik	r5,r5,1
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bltid	r18,$L354
	addik	r10,r0,1	# 0x1
$L362:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L365:
	lbui	r6,r5,1
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r3
	sext8	r6,r6
	sext8	r8,r7
	addk	r4,r4,r4
	addik	r7,r6,-48
	addik	r5,r5,1
	cmpu	r18,r7,r9
	bgeid	r18,$L365
	rsubk	r3,r8,r4
	bnei	r10,$L354
	rsubk	r3,r4,r8
$L354:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L361:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r7,r3
	bgeid	r18,$L362
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L360:
	lbui	r6,r5,1
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bltid	r18,$L354
	addik	r5,r5,1
	brid	$L362
	addk	r10,r3,r0
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addik	r1,r1,-16
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	lbui	r4,r5,0
	addik	r8,r0,4	# 0x4
	sext8	r3,r4
	addik	r9,r3,-9
	cmpu	r18,r9,r8
	bgeid	r18,$L400
	addik	r9,r0,4	# 0x4
	xori	r4,r4,32
	andi	r4,r4,0x00ff
	addik	r4,r4,-1
	bgei	r4,$L379
$L400:
	lbui	r3,r5,1
	addik	r5,r5,1
	xori	r4,r3,32
	sext8	r3,r3
	andi	r4,r4,0x00ff
	addik	r8,r3,-9
	cmpu	r18,r8,r9
	bgeid	r18,$L400
	addik	r4,r4,-1
	addk	r8,r0,r4
	srl	r8,r4
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
	bnei	r8,$L400
$L379:
	xori	r4,r3,43
	beqid	r4,$L384
	addik	r10,r0,9	# 0x9
	xori	r4,r3,45
	bneid	r4,$L405
	addik	r8,r3,-48
	lbui	r3,r5,1
	addik	r4,r0,9	# 0x9
	sext8	r3,r3
	addik	r8,r3,-48
	cmpu	r18,r8,r4
	bltid	r18,$L393
	addik	r9,r5,1
	addik	r19,r0,1	# 0x1
$L387:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addik	r12,r0,9	# 0x9
$L390:
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
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r6,r0,r10
	addk	r6,r10,r10
	addk	r6,r6,r6
	or	r6,r3,r6
	addk	r7,r0,r11
	addk	r7,r11,r11
	addk	r7,r7,r7
	lbui	r3,r9,1
	add	r23,r7,r11
	addc	r22,r6,r10
	addk	r4,r23,r23
	addk	r10,r0,r23
	srl	r10,r23
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	addk	r23,r4,r0
	addk	r5,r22,r22
	sext8	r3,r3
	or	r22,r10,r5
	sext8	r4,r8
	addik	r8,r3,-48
	addk	r5,r0,r4
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	rsub	r11,r5,r23
	rsubc	r10,r4,r22
	cmpu	r18,r8,r12
	bgeid	r18,$L390
	addik	r9,r9,1
	bneid	r19,$L406
	addk	r3,r10,r0
	rsub	r11,r23,r5
	rsubc	r10,r22,r4
	addk	r3,r10,r0
$L406:
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L405:
	addik	r3,r0,9	# 0x9
	addk	r9,r5,r0
	cmpu	r18,r8,r3
	bgeid	r18,$L387
	addk	r19,r0,r0
$L393:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addk	r3,r10,r0
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L384:
	lbui	r3,r5,1
	addk	r19,r4,r0
	sext8	r3,r3
	addik	r8,r3,-48
	cmpu	r18,r8,r10
	bgeid	r18,$L387
	addik	r9,r5,1
	bri	$L393
	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
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
	beqid	r7,$L408
	swi	r27,r1,52
	addk	r19,r7,r0
	addk	r27,r5,r0
	addk	r25,r6,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
$L411:
	srl	r23,r19
$L422:
	addk	r6,r24,r0
	addk	r5,r23,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	rsubk	r19,r23,r19
	addk	r22,r25,r3
	addk	r5,r27,r0
	brald	r15,r26
	
	addk	r6,r22,r0
	blti	r3,$L412
	beqid	r3,$L421
	addk	r3,r22,r0
	bneid	r19,$L411
	addk	r25,r22,r24
$L408:
	addk	r22,r0,r0
$L407:
	addk	r3,r22,r0
$L421:
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
$L412:
	addk	r19,r23,r0
	bneid	r19,$L422
	srl	r23,r19
	brid	$L407
	addk	r22,r0,r0
	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r1,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x1fc88000
	addik	r1,r1,-60
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r15,r1,0
	swi	r22,r1,32
	swi	r28,r1,56
	addk	r19,r7,r0
	addk	r27,r5,r0
	addk	r24,r6,r0
	addk	r23,r8,r0
	addk	r26,r9,r0
	beqid	r7,$L428
	addk	r25,r10,r0
$L424:
	sra	r28,r19
$L437:
	addk	r6,r23,r0
	addk	r5,r28,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	sra	r19,r19
	addk	r22,r24,r3
	addk	r7,r25,r0
	addk	r5,r27,r0
	brald	r15,r26
	
	addk	r6,r22,r0
	beqi	r3,$L423
	blei	r3,$L426
	bneid	r19,$L424
	addk	r24,r22,r23
$L428:
	addk	r22,r0,r0
$L423:
	addk	r3,r22,r0
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
$L426:
	beqid	r28,$L428
	addk	r19,r28,r0
	brid	$L437
	sra	r28,r19
	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	swi	r23,r1,36
	swi	r15,r1,0
	brlid	r15,__divsi3
	
	addk	r23,r7,r0
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__modsi3
	
	swi	r3,r19,0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,4
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
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
	addk	r3,r5,r0
	addk	r5,r0,r3
	sra	r5,r3
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
	xor	r8,r5,r3
	xor	r9,r6,r5
	addk	r4,r5,r0
	addk	r6,r8,r0
	addk	r7,r9,r0
	rsub	r9,r5,r7
	rsubc	r8,r4,r6
	addk	r3,r8,r0
	rtsd	r15,8 
	
	addk	r4,r9,r0
	.end	imaxabs
$Lfe52:
	.size	imaxabs,$Lfe52-imaxabs
	.align	2
	.globl	imaxdiv
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r22,r1,32
	addk	r22,r7,r0
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r25,r1,44
	addk	r19,r5,r0
	addk	r23,r6,r0
	addk	r25,r8,r0
	addk	r7,r8,r0
	addk	r5,r6,r0
	addk	r8,r9,r0
	addk	r6,r22,r0
	swi	r24,r1,40
	swi	r15,r1,0
	brlid	r15,__divdi3
	
	addk	r24,r9,r0
	addk	r10,r3,r0
	addk	r11,r4,r0
	addk	r7,r25,r0
	addk	r8,r24,r0
	addk	r5,r23,r0
	swi	r10,r19,0
	swi	r11,r19,4
	brlid	r15,__moddi3
	
	addk	r6,r22,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	swi	r23,r1,36
	swi	r15,r1,0
	brlid	r15,__divsi3
	
	addk	r23,r7,r0
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__modsi3
	
	swi	r3,r19,0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,4
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
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
	addk	r3,r5,r0
	addk	r5,r0,r3
	sra	r5,r3
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
	xor	r8,r5,r3
	xor	r9,r6,r5
	addk	r4,r5,r0
	addk	r6,r8,r0
	addk	r7,r9,r0
	rsub	r9,r5,r7
	rsubc	r8,r4,r6
	addk	r3,r8,r0
	rtsd	r15,8 
	
	addk	r4,r9,r0
	.end	llabs
$Lfe56:
	.size	llabs,$Lfe56-llabs
	.align	2
	.globl	lldiv
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r22,r1,32
	addk	r22,r7,r0
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r25,r1,44
	addk	r19,r5,r0
	addk	r23,r6,r0
	addk	r25,r8,r0
	addk	r7,r8,r0
	addk	r5,r6,r0
	addk	r8,r9,r0
	addk	r6,r22,r0
	swi	r24,r1,40
	swi	r15,r1,0
	brlid	r15,__divdi3
	
	addk	r24,r9,r0
	addk	r10,r3,r0
	addk	r11,r4,r0
	addk	r7,r25,r0
	addk	r8,r24,r0
	addk	r5,r23,r0
	swi	r10,r19,0
	swi	r11,r19,4
	brlid	r15,__moddi3
	
	addk	r6,r22,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	lwi	r4,r5,0
	bneid	r4,$L450
	addk	r3,r4,r0
	bri	$L455
$L452:
	lwi	r4,r5,4
	beqid	r4,$L453
	addik	r5,r5,4
$L450:
	xor	r4,r6,r4
	bnei	r4,$L452
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L453:
	addk	r3,r4,r0
$L455:
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
	lwi	r7,r6,0
	lwi	r4,r5,0
	addik	r3,r0,4	# 0x4
	xor	r8,r4,r7
	bneid	r8,$L458
	addik	r6,r6,-4
$L457:
	beqi	r4,$L458
	lw	r4,r3,r5
	addik	r3,r3,4
	lw	r7,r3,r6
	xor	r8,r4,r7
	beqi	r8,$L457
$L458:
	cmp	r18,r7,r4
	bltid	r18,$L456
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r4,r7
	bgeid	r18,$L465
	addik	r3,r0,1	# 0x1
$L456:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L465:
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
$L467:
	lw	r7,r4,r6
	sw	r7,r4,r3
	bneid	r7,$L467
	addik	r4,r4,4
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
	lwi	r3,r5,0
	beqi	r3,$L469
	addk	r3,r5,r0
$L471:
	lwi	r4,r3,4
	bneid	r4,$L471
	addik	r3,r3,4
	rsubk	r4,r5,r3
	addk	r3,r0,r4
	sra	r3,r4
	sra	r3,r3
$L469:
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
	beqid	r7,$L491
	addk	r3,r7,r0
$L489:
	lwi	r9,r5,0
	lwi	r4,r6,0
	addik	r7,r7,-1
	rsubk	r10,r9,r0
	xor	r4,r9,r4
	rsubk	r8,r4,r0
	or	r4,r8,r4
	bltid	r4,$L479
	or	r10,r10,r9
	addk	r3,r0,r10
	srl	r3,r10
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	beqi	r3,$L479
	addik	r5,r5,4
	bneid	r7,$L489
	addik	r6,r6,4
$L482:
	addk	r3,r7,r0
$L474:
$L491:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L479:
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L490
	cmp	r18,r4,r3
	bltid	r18,$L482
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L474
	addk	r3,r7,r0
$L490:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	beqi	r7,$L496
$L501:
	lwi	r4,r5,0
	xor	r4,r4,r6
	beqid	r4,$L500
	addik	r7,r7,-1
	bneid	r7,$L501
	addik	r5,r5,4
$L496:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L500:
	rtsd	r15,8 
	
	addk	r3,r5,r0
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
	beqid	r7,$L517
	addk	r3,r7,r0
$L515:
	lwi	r4,r5,0
	lwi	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L514
	addik	r5,r5,4
	bneid	r7,$L515
	addik	r6,r6,4
$L509:
	addk	r3,r7,r0
$L502:
$L517:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L514:
	cmp	r18,r3,r4
	blti	r18,$L516
	cmp	r18,r4,r3
	bltid	r18,$L509
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L502
	addk	r3,r7,r0
$L516:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
	.end	wmemcmp
$Lfe64:
	.size	wmemcmp,$Lfe64-wmemcmp
	.align	2
	.globl	wmemcpy
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	beqid	r7,$L519
	addk	r19,r5,r0
	addk	r3,r7,r0
	addk	r7,r0,r3
	addk	r7,r3,r3
	addk	r7,r7,r7
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L519:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	beqid	r4,$L532
	addk	r3,r5,r0
	addk	r4,r7,r7
	rsubk	r8,r6,r5
	addk	r5,r4,r4
	cmpu	r18,r5,r8
	bgeid	r18,$L538
	addik	r4,r7,-1
	beqi	r7,$L532
	addk	r4,r4,r4
	addk	r4,r4,r4
$L529:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,-4
	xori	r5,r4,-4
	bnei	r5,$L529
$L532:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L538:
	beqid	r7,$L532
	addk	r8,r0,r0
$L527:
	lw	r5,r8,r6
	addik	r4,r4,-1
	sw	r5,r8,r3
	xori	r5,r4,-1
	bneid	r5,$L527
	addik	r8,r8,4
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
	beqid	r7,$L540
	addik	r4,r7,-1
	addk	r7,r5,r0
$L541:
	addik	r4,r4,-1
	swi	r6,r7,0
	xori	r8,r4,-1
	bneid	r8,$L541
	addik	r7,r7,4
$L540:
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
	bgeid	r18,$L547
	xor	r3,r5,r6
	beqi	r7,$L546
	addik	r5,r5,-1
	addik	r6,r6,-1
$L549:
	lbu	r3,r7,r5
	sb	r3,r7,r6
	addik	r7,r7,-1
	bnei	r7,$L549
$L546:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L547:
	beqi	r3,$L546
	beqid	r7,$L546
	addik	r3,r7,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r3,r4
	bgeid	r18,$L558
	or	r3,r6,r5
	andi	r3,r3,3 #and1
	bneid	r3,$L558
	addik	r3,r5,1
	rsubk	r3,r3,r6
	addik	r4,r0,2	# 0x2
	cmpu	r18,r3,r4
	bgeid	r18,$L555
	addk	r3,r0,r0
	andi	r8,r7,-4 #and1
$L552:
	lw	r4,r3,r5
	sw	r4,r3,r6
	addik	r3,r3,4
	xor	r4,r3,r8
	bneid	r4,$L552
	addk	r4,r6,r8
	xor	r3,r7,r8
	addk	r9,r5,r8
	beqid	r3,$L546
	rsubk	r7,r8,r7
	lbu	r3,r8,r5
	sb	r3,r8,r6
	xori	r3,r7,1
	beqi	r3,$L546
	lbui	r3,r9,1
	xori	r7,r7,2
	beqid	r7,$L546
	sbi	r3,r4,1
	lbui	r3,r9,2
	rtsd	r15,8 
	
	sbi	r3,r4,2
$L558:
	addk	r3,r0,r0
$L555:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	addik	r3,r3,1
	xor	r4,r7,r3
	bnei	r4,$L555
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
	andi	r3,r7,32 #and1
	beqid	r3,$L581
	xori	r8,r7,-1
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rsubk	r7,r7,r0
	andi	r4,r7,32 #and1
	addk	r8,r0,r0
	beqid	r4,$L583
	andi	r7,r7,63 #and1
$L585:
	addk	r6,r0,r0
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r3,r6,r3
	rtsd	r15,8 
	
	or	r4,r4,r8
$L581:
	srl	r3,r6
	andi	r18,r8,31
	addk	r4,r0,r3
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	rsubk	r7,r7,r0
	or	r3,r4,r3
	andi	r4,r7,32 #and1
	bneid	r4,$L585
	andi	r7,r7,63 #and1
$L583:
	xori	r4,r7,-1
	addk	r10,r5,r5
	andi	r18,r4,31
	addk	r9,r0,r10
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r9,r4
	andi	r18,r7,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r4,r4,r8
	rtsd	r15,8 
	
	or	r3,r6,r3
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
	andi	r3,r7,32 #and1
	beqid	r3,$L587
	xori	r4,r7,-1
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r8,r0,r0
	beqid	r3,$L589
	andi	r7,r7,63 #and1
$L591:
	addk	r5,r0,r0
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r4,r5,r4
	rtsd	r15,8 
	
	or	r3,r3,r8
$L587:
	addk	r3,r5,r5
	andi	r18,r4,31
	addk	r8,r0,r3
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r8,r4
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	bneid	r3,$L591
	andi	r7,r7,63 #and1
$L589:
	xori	r3,r7,-1
	srl	r10,r6
	andi	r18,r3,31
	addk	r9,r0,r10
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r9,r3
	andi	r18,r7,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	or	r3,r3,r8
	rtsd	r15,8 
	
	or	r4,r5,r4
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
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
	andi	r6,r6,15 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r3,r3,r6
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
	andi	r6,r6,15 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	or	r3,r3,r6
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
	andi	r6,r6,7 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r3,r3,r6
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
	andi	r6,r6,7 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	or	r3,r3,r6
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
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	or	r3,r4,r3
	andi	r3,r3,0xffff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
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
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r4,r4,r7
	andi	r5,r6,65280 #and2
	addk	r3,r3,r3
	or	r4,r4,r5
	andi	r3,r3,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r4,r3
	.end	bswap_32
$Lfe80:
	.size	bswap_32,$Lfe80-bswap_32
	.align	2
	.globl	bswap_64
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
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
	andi	r3,r3,65280 #and2
	addk	r9,r0,r6
	srl	r9,r6
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
	src	r7,r6
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
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
	or	r7,r7,r9
	or	r4,r4,r3
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r8,r8,16711680 #and2
	andi	r3,r3,65280 #and2
	or	r7,r7,r3
	or	r4,r4,r8
	addk	r3,r0,r6
	addk	r3,r6,r6
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r3,r3,16711680 #and2
	src	r6,r5
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	or	r3,r7,r3
	rtsd	r15,8 
	
	or	r4,r4,r6
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
	brid	$L606
	addk	r3,r0,r0
$L609:
	beqi	r6,$L608
$L606:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r3,1
	andi	r4,r4,1 #and1
	beqid	r4,$L609
	xori	r6,r3,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L608:
	rtsd	r15,8 
	
	addk	r3,r6,r0
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
	beqi	r5,$L613
	andi	r3,r5,1 #and1
	bnei	r3,$L610
	addik	r3,r0,1	# 0x1
$L612:
	sra	r5,r5
	andi	r4,r5,1 #and1
	beqid	r4,$L612
	addik	r3,r3,1
$L610:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L613:
	rtsd	r15,8 
	
	addk	r3,r5,r0
	.end	libiberty_ffs
$Lfe83:
	.size	libiberty_ffs,$Lfe83-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15,8 
	
	addk	r3,r0,r0
	.end	gl_isinff
$Lfe84:
	.size	gl_isinff,$Lfe84-gl_isinff
	.align	2
	.globl	gl_isinfd
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15,8 
	
	addk	r3,r0,r0
	.end	gl_isinfd
$Lfe85:
	.size	gl_isinfd,$Lfe85-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
	swi	r19,r1,28
	addk	r19,r5,r0
	swi	r15,r1,0
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
	.frame	r1,40,r15		# vars= 4, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-40
	swi	r19,r1,32
	addk	r19,r6,r0
	addk	r6,r5,r0
	swi	r22,r1,36
	addk	r22,r5,r0
	swi	r15,r1,0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r22,r0
	addk	r5,r3,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L622
	addik	r6,r0,0x40000000
	bltid	r19,$L637
	andi	r3,r19,1 #and1
	beqi	r3,$L625
$L626:
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	
	swi	r6,r1,28
	addk	r22,r3,r0
	lwi	r6,r1,28
$L625:
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
	beqi	r19,$L622
$L627:
	addk	r5,r6,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	andi	r4,r19,1 #and1
	addk	r5,r0,r19
	srl	r5,r19
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
	addk	r6,r3,r0
	bneid	r4,$L626
	addk	r5,r5,r19
	brid	$L627
	sra	r19,r5
$L622:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,32
	lwi	r22,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L637:
	addik	r6,r0,0x3f000000
	beqi	r3,$L625
	bri	$L626
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
	addk	r8,r6,r0
	swi	r19,r1,28
	addk	r19,r7,r0
	addk	r7,r5,r0
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r24,r5,r0
	addk	r25,r6,r0
	swi	r15,r1,0
	swi	r22,r1,32
	brlid	r15,__adddf3
	
	swi	r23,r1,36
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r6,r4,r0
	brlid	r15,__nedf2
	
	addk	r5,r3,r0
	beqid	r3,$L656
	addk	r3,r24,r0
	blti	r19,$L654
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L655:
	beqi	r3,$L642
$L643:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L642:
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
	addk	r3,r3,r19
	sra	r19,r3
	beqi	r19,$L639
$L644:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r23,r4,r0
	andi	r4,r19,1 #and1
	addk	r22,r3,r0
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
	bneid	r4,$L643
	addk	r3,r3,r19
	brid	$L644
	sra	r19,r3
$L639:
	addk	r3,r24,r0
$L656:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L654:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L655
	andi	r3,r19,1 #and1
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
	addk	r8,r6,r0
	swi	r19,r1,28
	addk	r19,r7,r0
	addk	r7,r5,r0
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r24,r5,r0
	addk	r25,r6,r0
	swi	r15,r1,0
	swi	r22,r1,32
	brlid	r15,__adddf3
	
	swi	r23,r1,36
	addk	r8,r3,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r8,r0
	brlid	r15,__nedf2
	
	addk	r8,r4,r0
	beqid	r3,$L675
	addk	r3,r24,r0
	blti	r19,$L673
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L674:
	beqi	r3,$L661
$L662:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L661:
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
	addk	r3,r3,r19
	sra	r19,r3
	beqi	r19,$L658
$L663:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r23,r4,r0
	andi	r4,r19,1 #and1
	addk	r22,r3,r0
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
	bneid	r4,$L662
	addk	r3,r3,r19
	brid	$L663
	sra	r19,r3
$L658:
	addk	r3,r24,r0
$L675:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L673:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L674
	andi	r3,r19,1 #and1
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
	beqid	r7,$L677
	addk	r3,r5,r0
	addik	r5,r7,-1
	addik	r4,r0,3	# 0x3
	cmpu	r18,r5,r4
	bgeid	r18,$L684
	or	r4,r3,r6
	andi	r4,r4,3 #and1
	bneid	r4,$L684
	andi	r9,r7,-4 #and1
$L679:
	lw	r5,r4,r3
	lw	r8,r4,r6
	xor	r8,r8,r5
	sw	r8,r4,r3
	addik	r4,r4,4
	xor	r5,r4,r9
	bneid	r5,$L679
	addk	r8,r3,r9
	xor	r4,r7,r9
	addk	r10,r6,r9
	beqid	r4,$L677
	rsubk	r7,r9,r7
	lbu	r5,r9,r3
	lbu	r6,r9,r6
	xori	r4,r7,1
	xor	r5,r5,r6
	beqid	r4,$L677
	sb	r5,r9,r3
	lbui	r5,r8,1
	lbui	r4,r10,1
	xori	r7,r7,2
	xor	r4,r4,r5
	beqid	r7,$L677
	sbi	r4,r8,1
	lbui	r5,r8,2
	lbui	r4,r10,2
	xor	r4,r4,r5
	sbi	r4,r8,2
$L677:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L684:
	addk	r4,r0,r0
$L681:
	lbu	r8,r4,r3
	lbu	r5,r4,r6
	xor	r5,r5,r8
	sb	r5,r4,r3
	addik	r4,r4,1
	xor	r5,r7,r4
	bnei	r5,$L681
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r4,r5,0
	beqid	r4,$L703
	addk	r3,r5,r0
	addk	r4,r5,r0
$L698:
	lbui	r8,r4,1
	bneid	r8,$L698
	addik	r4,r4,1
$L709:
	beqi	r7,$L700
$L710:
	lbui	r8,r6,0
	addik	r7,r7,-1
	sbi	r8,r4,0
	sext8	r8,r8
	beqid	r8,$L702
	addik	r6,r6,1
	bneid	r7,$L710
	addik	r4,r4,1
$L700:
	sbi	r0,r4,0
$L702:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L703:
	brid	$L709
	addk	r4,r5,r0
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
	beqid	r6,$L711
	addk	r3,r0,r0
$L712:
	lbu	r4,r3,r5
	bnei	r4,$L718
$L711:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L718:
	addik	r3,r3,1
	xor	r4,r6,r3
	bnei	r4,$L712
	rtsd	r15,8 
	
	addk	r3,r6,r0
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
	lbui	r9,r5,0
	sext8	r9,r9
	beqid	r9,$L724
	addk	r3,r5,r0
$L720:
	brid	$L723
	addk	r7,r6,r0
$L722:
	beqi	r8,$L721
$L723:
	lbui	r4,r7,0
	addik	r7,r7,1
	sext8	r4,r4
	bneid	r4,$L722
	xor	r8,r4,r9
	lbui	r9,r3,1
	sext8	r9,r9
	bneid	r9,$L720
	addik	r3,r3,1
$L724:
	addk	r3,r9,r0
$L721:
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
$L728:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r7,r6,r4
	bnei	r7,$L727
	addk	r3,r5,r0
$L727:
	bneid	r4,$L728
	addik	r5,r5,1
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r10,r6,0
	sext8	r10,r10
	beqid	r10,$L742
	addk	r3,r6,r0
$L732:
	lbui	r4,r3,1
	bneid	r4,$L732
	addik	r3,r3,1
	rsubk	r3,r6,r3
	beqid	r3,$L742
	addik	r11,r6,-1
	brid	$L739
	addk	r11,r11,r3
$L751:
	beqid	r3,$L730
	addik	r5,r5,1
$L739:
	lbui	r7,r5,0
	sext8	r3,r7
	xor	r4,r3,r10
	bneid	r4,$L751
	addk	r9,r6,r0
	addk	r3,r5,r0
	brid	$L734
	andi	r7,r7,0x00ff
$L752:
	xor	r4,r8,r7
	addik	r4,r4,-1
	rsubk	r8,r8,r0
	and	r4,r4,r8
	addk	r8,r0,r4
	srl	r8,r4
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
	beqi	r8,$L735
	lbui	r7,r3,0
	beqid	r7,$L735
	addik	r9,r9,1
$L734:
	xor	r8,r9,r11
	rsubk	r4,r8,r0
	or	r4,r4,r8
	addik	r3,r3,1
	bltid	r4,$L752
	lbui	r8,r9,0
$L735:
	lbui	r3,r9,0
	xor	r3,r3,r7
	beqid	r3,$L753
	addk	r3,r5,r0
	brid	$L739
	addik	r5,r5,1
$L742:
	addk	r3,r5,r0
$L730:
$L753:
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
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	swi	r15,r1,0
	addk	r22,r5,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L774
	addk	r5,r24,r0
	addk	r5,r22,r0
$L776:
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L775
	addk	r4,r22,r0
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L755
	addk	r4,r22,r0
$L775:
	brid	$L754
	addk	r5,r23,r0
$L774:
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	bleid	r3,$L776
	addk	r5,r22,r0
$L755:
	addk	r5,r23,r0
	addik	r4,r22,-2147483648
$L754:
	addk	r3,r4,r0
	lwi	r15,r1,0
	addk	r4,r5,r0
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	beqid	r8,$L798
	addk	r3,r5,r0
	cmpu	r18,r8,r6
	blti	r18,$L786
	rsubk	r6,r8,r6
	addk	r10,r5,r6
	cmpu	r18,r5,r10
	blti	r18,$L786
	lbui	r12,r7,0
	addik	r1,r1,-8
	swi	r19,r1,4
	sext8	r12,r12
	brid	$L783
	xori	r19,r8,1
$L787:
	addk	r3,r11,r0
$L779:
	cmpu	r18,r3,r10
	blti	r18,$L788
$L783:
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r4,r4,r12
	bneid	r4,$L787
	addik	r11,r3,1
	beqi	r19,$L777
$L782:
	brid	$L780
	addik	r4,r0,1	# 0x1
$L781:
	beqi	r9,$L777
$L780:
	lbu	r5,r4,r3
	lbu	r6,r4,r7
	addik	r4,r4,1
	xor	r5,r5,r6
	beqid	r5,$L781
	xor	r9,r4,r8
	cmpu	r18,r11,r10
	blti	r18,$L788
	lbui	r4,r11,0
	sext8	r4,r4
	xor	r4,r12,r4
	bneid	r4,$L779
	addik	r3,r11,1
	addk	r4,r11,r0
	addk	r11,r3,r0
	brid	$L782
	addk	r3,r4,r0
$L788:
	addk	r3,r0,r0
$L777:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L786:
	rtsd	r15, 8
	
	addk	r3,r0,r0
$L798:
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r19,r7,r0
	beqid	r7,$L800
	addk	r22,r5,r0
	brlid	r15,memmove
	nop		# Unfilled delay slot

$L800:
	addk	r3,r22,r19
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	mempcpy
$Lfe99:
	.size	mempcpy,$Lfe99-mempcpy
	.align	2
	.globl	frexp
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	r1,72,r15		# vars= 0, regs= 11, args= 24
	.mask	0xffc88000
	addik	r1,r1,-72
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r7,r0
	swi	r15,r1,0
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r29,r1,60
	swi	r30,r1,64
	swi	r31,r1,68
	addk	r22,r5,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L829
	addk	r5,r22,r0
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	brlid	r15,__gedf2
	
	addk	r30,r0,r0
	bltid	r3,$L830
	addk	r5,r22,r0
$L808:
	addik	r28,r0,0x3fe00000 
	addik	r29,r0,0x00000000 #Xfer Lo
	addik	r26,r0,0x40000000 
	addik	r27,r0,0x00000000 #Xfer Lo
	addk	r31,r0,r0
$L814:
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r28,r0
	addk	r8,r29,r0
	addk	r24,r22,r0
	brlid	r15,__muldf3
	
	addk	r25,r23,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	brlid	r15,__gedf2
	
	addik	r31,r31,1
	bgeid	r3,$L814
	addk	r4,r22,r0
	swi	r31,r19,0
	beqid	r30,$L805
	addk	r5,r23,r0
$L832:
	addik	r4,r22,-2147483648
$L805:
	addk	r3,r4,r0
$L833:
	lwi	r15,r1,0
	addk	r4,r5,r0
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
	lwi	r31,r1,68
	rtsd	r15,8 
	
	addik	r1,r1,72
$L830:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L834
	addk	r4,r22,r0
	addk	r5,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L820
	addk	r26,r22,r0
	addk	r4,r22,r0
$L834:
	addk	r5,r23,r0
	brid	$L805
	swi	r0,r19,0
$L829:
	addik	r7,r0,0xbff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	addik	r26,r22,-2147483648
	brlid	r15,__ledf2
	
	addk	r27,r23,r0
	bgtid	r3,$L831
	addik	r30,r0,1	# 0x1
	brid	$L808
	addk	r22,r26,r0
$L831:
	addik	r7,r0,0xbfe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L834
	addk	r4,r22,r0
	addik	r30,r0,1	# 0x1
$L809:
	addik	r24,r0,0x3fd00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r22,r26,r0
	addk	r23,r27,r0
	addk	r31,r0,r0
	addk	r7,r22,r0
$L835:
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r26,r22,r0
	brlid	r15,__adddf3
	
	addk	r27,r23,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r26,r0
	addk	r6,r27,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	brlid	r15,__ltdf2
	
	addik	r31,r31,-1
	bltid	r3,$L835
	addk	r7,r22,r0
	swi	r31,r19,0
	addk	r4,r22,r0
	bneid	r30,$L832
	addk	r5,r23,r0
	brid	$L833
	addk	r3,r4,r0
$L820:
	brid	$L809
	addk	r27,r23,r0
	.end	frexp
$Lfe100:
	.size	frexp,$Lfe100-frexp
	.align	2
	.globl	__muldi3
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	r1,28,r15		# vars= 0, regs= 6, args= 0
	.mask	0x0fc00000
	addik	r1,r1,-28
	swi	r24,r1,12
	swi	r25,r1,16
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r26,r1,20
	or	r3,r6,r5
	addik	r24,r0,0x00000000
	addik	r25,r0,0x00000000 #li => la
	beqid	r3,$L836
	swi	r27,r1,24
$L839:
	andi	r11,r6,1 #and1
	addk	r10,r0,r0
	srl	r6,r6
	src	r3,r5
	src	r3,r3
	andi	r3,r3,-2147483648
	rsub	r27,r11,r0
	rsubc	r26,r10,r0
	srl	r5,r5
	or	r6,r3,r6
	and	r22,r26,r7
	and	r23,r27,r8
	addk	r7,r7,r7
	or	r3,r5,r6
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
	add	r25,r25,r23
	addc	r24,r24,r22
	or	r7,r4,r7
	bneid	r3,$L839
	addk	r8,r8,r8
$L836:
	addk	r3,r24,r0
	addk	r4,r25,r0
	lwi	r22,r1,4
	lwi	r23,r1,8
	lwi	r24,r1,12
	lwi	r25,r1,16
	lwi	r26,r1,20
	lwi	r27,r1,24
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	cmpu	r18,r5,r6
	bgeid	r18,$L845
	addik	r4,r0,1	# 0x1
$L844:
	blti	r6,$L845
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L846
	or	r3,r3,r4
	blti	r3,$L844
$L846:
	beqi	r4,$L854
$L845:
	addk	r3,r0,r0
$L851:
	cmpu	r18,r6,r5
	blti	r18,$L850
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L850:
	srl	r4,r4
	bneid	r4,$L851
	srl	r6,r6
	bnei	r7,$L864
$L843:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L864:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L854:
	beqid	r7,$L843
	addk	r3,r4,r0
	bri	$L864
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
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r4,r5,r3
	beqi	r4,$L867
	addik	r1,r1,-28
	swi	r15,r1,0
	addk	r5,r0,r4
	addk	r5,r4,r4
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	brlid	r15,__clzsi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L867:
	rtsd	r15, 8
	
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
	beqid	r5,$L881
	xor	r6,r6,r3
$L876:
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L881:
	bneid	r6,$L876
	addik	r3,r0,63	# 0x3f
	rtsd	r15, 8
	nop		# Unfilled delay slot

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
	beqi	r5,$L885
	addk	r3,r0,r0
$L884:
	andi	r4,r5,1 #and1
	rsubk	r4,r4,r0
	and	r4,r4,r6
	srl	r5,r5
	addk	r3,r3,r4
	bneid	r5,$L884
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L885:
	rtsd	r15,8 
	
	addk	r3,r5,r0
	.end	__mulsi3
$Lfe105:
	.size	__mulsi3,$Lfe105-__mulsi3
	.align	2
	.globl	__cmovd
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	r1,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	srl	r3,r3
	cmpu	r18,r6,r5
	bltid	r18,$L888
	andi	r10,r7,-8 #and1
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bgei	r18,$L922
$L888:
	beqid	r3,$L891
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r6,r0
	addk	r8,r5,r0
	addik	r1,r1,-16
	addk	r3,r3,r3
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	addk	r9,r3,r6
$L892:
	lwi	r22,r4,0
	lwi	r23,r4,4
	addik	r4,r4,8
	xor	r3,r4,r9
	swi	r22,r8,0
	swi	r23,r8,4
	bneid	r3,$L892
	addik	r8,r8,8
	cmpu	r18,r7,r10
	bgeid	r18,$L887
	rsubk	r12,r10,r7
	addik	r8,r12,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r8,r4
	bgeid	r18,$L923
	addk	r8,r5,r10
	addik	r4,r10,1
	addk	r9,r6,r4
	rsubk	r9,r9,r8
	addik	r19,r0,2	# 0x2
	cmpu	r18,r9,r19
	bgeid	r18,$L898
	addk	r11,r6,r10
	or	r9,r11,r8
	andi	r9,r9,3 #and1
	bneid	r9,$L898
	andi	r9,r12,-4 #and1
$L896:
	lw	r4,r3,r11
	sw	r4,r3,r8
	addik	r3,r3,4
	xor	r4,r3,r9
	bnei	r4,$L896
	xor	r12,r12,r9
	beqid	r12,$L887
	addk	r10,r10,r9
	lbu	r3,r10,r6
	sb	r3,r10,r5
	addik	r3,r10,1
	cmpu	r18,r7,r3
	bgeid	r18,$L887
	addik	r10,r10,2
	lbu	r4,r3,r6
	cmpu	r18,r7,r10
	bgeid	r18,$L887
	sb	r4,r3,r5
	lbu	r3,r10,r6
	sb	r3,r10,r5
$L887:
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L924:
	addik	r4,r4,1
$L898:
	lbu	r3,r10,r6
	sb	r3,r10,r5
	xor	r3,r7,r4
	bneid	r3,$L924
	addk	r10,r4,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L922:
	beqid	r7,$L928
	addik	r3,r7,-1
$L889:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,-1
	xori	r4,r3,-1
	bnei	r4,$L889
$L928:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L891:
	bneid	r7,$L917
	addik	r4,r10,1
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L926:
	addik	r4,r4,1
$L917:
	lbu	r3,r10,r6
	sb	r3,r10,r5
	xor	r3,r7,r4
	bneid	r3,$L926
	addk	r10,r4,r0
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L923:
	brid	$L898
	addik	r4,r10,1
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
	bltid	r18,$L930
	srl	r8,r7
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L956
$L930:
	beqid	r8,$L933
	addik	r3,r8,-1
	addik	r4,r0,8	# 0x8
	cmpu	r18,r3,r4
	bgeid	r18,$L934
	or	r3,r6,r5
	andi	r3,r3,3 #and1
	bneid	r3,$L934
	addik	r3,r6,2
	xor	r3,r5,r3
	rsubk	r4,r3,r0
	or	r3,r4,r3
	bgeid	r3,$L934
	addk	r3,r0,r0
	addk	r9,r0,r7
	srl	r9,r7
	srl	r9,r9
	addk	r9,r9,r9
	addk	r10,r9,r9
$L935:
	lw	r4,r3,r6
	sw	r4,r3,r5
	addik	r3,r3,4
	xor	r4,r3,r10
	bnei	r4,$L935
	xor	r8,r8,r9
	beqid	r8,$L933
	addk	r9,r9,r9
	lhu	r3,r9,r6
	sh	r3,r9,r5
$L933:
	andi	r3,r7,1 #and1
	beqid	r3,$L929
	addik	r7,r7,-1
	lbu	r3,r7,r6
$L959:
	sb	r3,r7,r5
$L929:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L956:
	beqid	r7,$L929
	addik	r3,r7,-1
$L931:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,-1
	xori	r4,r3,-1
	bnei	r4,$L931
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L934:
	addk	r8,r8,r8
	addk	r3,r0,r0
$L937:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
	xor	r4,r8,r3
	bnei	r4,$L937
	andi	r3,r7,1 #and1
	beqid	r3,$L929
	addik	r7,r7,-1
	brid	$L959
	lbu	r3,r7,r6
	.end	__cmovh
$Lfe107:
	.size	__cmovh,$Lfe107-__cmovh
	.align	2
	.globl	__cmovw
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addk	r8,r0,r7
	srl	r8,r7
	srl	r8,r8
	cmpu	r18,r6,r5
	bltid	r18,$L961
	andi	r9,r7,-4 #and1
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L994
$L961:
	beqid	r8,$L964
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r4,r0,r0
$L965:
	lw	r3,r4,r6
	sw	r3,r4,r5
	addik	r4,r4,4
	xor	r3,r4,r8
	bnei	r3,$L965
	cmpu	r18,r7,r9
	bgei	r18,$L999
	rsubk	r12,r9,r7
	addik	r8,r12,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r8,r4
	bgeid	r18,$L995
	addk	r10,r5,r9
	addik	r4,r9,1
	addik	r1,r1,-8
	addk	r8,r6,r4
	swi	r19,r1,4
	rsubk	r8,r8,r10
	addik	r19,r0,2	# 0x2
	cmpu	r18,r8,r19
	bgeid	r18,$L971
	addk	r11,r6,r9
	or	r8,r11,r10
	andi	r8,r8,3 #and1
	bneid	r8,$L971
	andi	r8,r12,-4 #and1
$L969:
	lw	r4,r3,r11
	sw	r4,r3,r10
	addik	r3,r3,4
	xor	r4,r8,r3
	bnei	r4,$L969
	xor	r12,r8,r12
	beqid	r12,$L960
	addk	r8,r8,r9
	lbu	r3,r8,r6
	sb	r3,r8,r5
	addik	r3,r8,1
	cmpu	r18,r7,r3
	bgeid	r18,$L960
	addik	r8,r8,2
	lbu	r4,r3,r6
	cmpu	r18,r7,r8
	bgeid	r18,$L960
	sb	r4,r3,r5
	lbu	r3,r8,r6
	sb	r3,r8,r5
$L960:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L996:
	addik	r4,r4,1
$L971:
	lbu	r3,r9,r6
	sb	r3,r9,r5
	xor	r3,r7,r4
	bneid	r3,$L996
	addk	r9,r4,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L994:
	beqid	r7,$L1000
	addik	r3,r7,-1
$L962:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,-1
	xori	r4,r3,-1
	bnei	r4,$L962
$L1000:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L964:
	beqid	r7,$L1000
	addik	r4,r9,1
$L990:
	lbu	r3,r9,r6
	sb	r3,r9,r5
	xor	r3,r7,r4
	beqid	r3,$L1000
	addk	r9,r4,r0
	brid	$L990
	addik	r4,r4,1
$L995:
	brid	$L990
	addik	r4,r9,1
$L999:
	rtsd	r15, 8
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
	bnei	r3,$L1016
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
	bnei	r3,$L1013
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
	bnei	r3,$L1017
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
	bnei	r3,$L1018
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
	bnei	r3,$L1019
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
	bnei	r3,$L1020
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
	bnei	r3,$L1021
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1022
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1023
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1024
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1025
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1026
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1027
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	bnei	r3,$L1028
	sra	r3,r5
	bnei	r3,$L1029
	bneid	r5,$L1032
	addik	r3,r0,16	# 0x10
$L1013:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1016:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1027:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1032:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1017:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1018:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1019:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1020:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1021:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1022:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1023:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1024:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1025:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1026:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1028:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1029:
	rtsd	r15,8 
	
	addik	r3,r0,14	# 0xe
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
	andi	r3,r5,1 #and1
	bnei	r3,$L1036
	andi	r3,r5,2 #and1
	bnei	r3,$L1037
	andi	r3,r5,4 #and1
	bnei	r3,$L1038
	andi	r3,r5,8 #and1
	bnei	r3,$L1039
	andi	r3,r5,16 #and1
	bnei	r3,$L1040
	andi	r3,r5,32 #and1
	bnei	r3,$L1041
	andi	r3,r5,64 #and1
	bnei	r3,$L1042
	andi	r3,r5,128 #and1
	bnei	r3,$L1043
	andi	r3,r5,256 #and1
	bnei	r3,$L1044
	andi	r3,r5,512 #and1
	bnei	r3,$L1045
	andi	r3,r5,1024 #and1
	bnei	r3,$L1046
	andi	r3,r5,2048 #and1
	bnei	r3,$L1047
	andi	r3,r5,4096 #and1
	bnei	r3,$L1048
	andi	r3,r5,8192 #and1
	bnei	r3,$L1049
	andi	r3,r5,16384 #and1
	bnei	r3,$L1050
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
	bneid	r4,$L1053
	addik	r3,r0,16	# 0x10
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1036:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1037:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1048:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1053:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1038:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1039:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1040:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1041:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1042:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1043:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1044:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1045:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1046:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1047:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1049:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1050:
	rtsd	r15,8 
	
	addik	r3,r0,14	# 0xe
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
	addik	r6,r0,0x47000000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	bgei	r3,$L1061
	addk	r5,r19,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L1061:
	addik	r6,r0,0x47000000
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	addik	r3,r3,32768
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
	sra	r3,r5
	andi	r4,r5,1 #and1
	andi	r3,r3,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	addk	r3,r3,r4
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
	sra	r3,r5
	andi	r4,r5,1 #and1
	andi	r3,r3,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	rtsd	r15,8 
	
	addk	r3,r3,r4
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
	beqi	r5,$L1067
	addk	r3,r0,r0
$L1066:
	andi	r4,r5,1 #and1
	rsubk	r4,r4,r0
	and	r4,r4,r6
	srl	r5,r5
	addk	r3,r3,r4
	bneid	r5,$L1066
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1067:
	rtsd	r15,8 
	
	addk	r3,r5,r0
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
	beqi	r5,$L1072
	beqi	r6,$L1073
	addk	r3,r0,r0
$L1071:
	andi	r4,r6,1 #and1
	rsubk	r4,r4,r0
	and	r4,r4,r5
	srl	r6,r6
	addk	r3,r3,r4
	bneid	r6,$L1071
	addk	r5,r5,r5
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1072:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1073:
	rtsd	r15,8 
	
	addk	r3,r6,r0
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
	cmpu	r18,r5,r6
	bgeid	r18,$L1077
	addik	r4,r0,1	# 0x1
$L1076:
	blti	r6,$L1077
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1078
	or	r3,r3,r4
	blti	r3,$L1076
$L1078:
	beqi	r4,$L1086
$L1077:
	addk	r3,r0,r0
$L1083:
	cmpu	r18,r6,r5
	blti	r18,$L1082
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L1082:
	srl	r4,r4
	bneid	r4,$L1083
	srl	r6,r6
	bnei	r7,$L1096
$L1075:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1096:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1086:
	beqid	r7,$L1075
	addk	r3,r4,r0
	bri	$L1096
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
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bltid	r3,$L1100
	lwi	r15,r1,0
	addk	r5,r19,r0
	addk	r6,r22,r0
	brlid	r15,__gtsf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1102
$L1099:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L1102:
	brid	$L1099
	addk	r19,r0,r0
$L1100:
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	brlid	r15,__ltdf2
	
	addk	r25,r8,r0
	bltid	r3,$L1106
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1108
$L1105:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L1108:
	brid	$L1105
	addk	r19,r0,r0
$L1106:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r3,r0,-1	# 0xffffffffffffffff
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	addk	r9,r0,r6
	add	r8,r9,r9
	addc	r8,r0,r0
	beqi	r8,.+8
	addi	r8,r0,0xffffffff
	addk	r5,r0,r5
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	addk	r7,r8,r0
	addk	r6,r5,r0
	addk	r8,r9,r0
	addik	r1,r1,-28
	swi	r15,r1,0
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
	addk	r3,r5,r0
	addk	r7,r0,r0
	addk	r8,r6,r0
	addk	r5,r7,r0
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__muldi3
	
	addk	r6,r3,r0
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	blti	r6,$L1123
	beqid	r6,$L1118
	addk	r10,r0,r0
$L1115:
	addik	r8,r0,1	# 0x1
	addk	r3,r0,r0
$L1117:
	andi	r7,r6,1 #and1
	sra	r6,r6
	xori	r4,r8,32
	rsubk	r9,r6,r0
	rsubk	r7,r7,r0
	or	r9,r9,r6
	rsubk	r4,r4,r0
	and	r7,r7,r5
	and	r4,r4,r9
	addik	r8,r8,1
	addk	r3,r3,r7
	addk	r5,r5,r5
	addk	r7,r0,r4
	srl	r7,r4
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
	bneid	r7,$L1117
	andi	r8,r8,0x00ff
	beqi	r10,$L1113
	rsubk	r3,r3,r0
$L1113:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1123:
	rsubk	r6,r6,r0
	brid	$L1115
	addik	r10,r0,1	# 0x1
$L1118:
	rtsd	r15,8 
	
	addk	r3,r6,r0
	.end	__mulhi3
$Lfe127:
	.size	__mulhi3,$Lfe127-__mulhi3
	.align	2
	.globl	__divsi3
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	bltid	r5,$L1147
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
	addk	r9,r0,r0
$L1125:
	bgeid	r6,$L1149
	addk	r8,r5,r0
	addk	r9,r3,r0
	rsubk	r6,r6,r0
$L1149:
	cmpu	r18,r5,r6
	bgeid	r18,$L1128
	addik	r4,r0,1	# 0x1
$L1127:
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bltid	r18,$L1148
	or	r3,r3,r4
$L1132:
	beqid	r4,$L1129
	addk	r3,r4,r0
$L1128:
	addk	r3,r0,r0
$L1134:
	cmpu	r18,r6,r8
	blti	r18,$L1133
	rsubk	r8,r6,r8
	or	r3,r3,r4
$L1133:
	srl	r4,r4
	bneid	r4,$L1134
	srl	r6,r6
$L1129:
	beqi	r9,$L1124
	rsubk	r3,r3,r0
$L1124:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1148:
	addk	r7,r0,r3
	srl	r7,r3
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
	bnei	r7,$L1127
	bri	$L1132
$L1147:
	rsubk	r5,r5,r0
	brid	$L1125
	addik	r9,r0,1	# 0x1
	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	bgeid	r5,$L1151
	addk	r9,r0,r0
	rsubk	r5,r5,r0
	addik	r9,r0,1	# 0x1
$L1151:
	addk	r4,r0,r6
	sra	r4,r6
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
	xor	r6,r4,r6
	rsubk	r6,r4,r6
	addk	r3,r5,r0
	cmpu	r18,r5,r6
	bgeid	r18,$L1159
	addik	r4,r0,1	# 0x1
$L1152:
	addk	r4,r4,r4
	rsubk	r7,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bltid	r18,$L1172
	or	r7,r7,r4
	beqi	r4,$L1173
$L1159:
	cmpu	r18,r6,r3
	bltid	r18,$L1158
	srl	r4,r4
	rsubk	r3,r6,r3
$L1158:
	bneid	r4,$L1159
	srl	r6,r6
$L1154:
	beqi	r9,$L1150
	rsubk	r3,r3,r0
$L1150:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1172:
	addk	r8,r0,r7
	srl	r8,r7
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
	bnei	r8,$L1152
	bnei	r4,$L1159
$L1173:
	brid	$L1154
	addk	r3,r5,r0
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
	cmpu	r18,r5,r6
	bgeid	r18,$L1231
	addik	r9,r0,1	# 0x1
$L1175:
	addk	r3,r6,r6
	sext16	r8,r6
	andi	r3,r3,0xffff
	bltid	r8,$L1232
	addk	r4,r9,r9
	andi	r4,r4,0xffff
	cmpu	r18,r5,r3
	blti	r18,$L1233
	beqi	r4,$L1205
	cmpu	r18,r3,r5
	blti	r18,$L1182
	rsubk	r5,r3,r5
	andi	r8,r9,32767 #and1
	andi	r10,r6,32767 #and1
	addk	r9,r4,r0
	andi	r5,r5,0xffff
	brid	$L1183
	addk	r6,r3,r0
$L1233:
	addk	r9,r4,r0
	bneid	r4,$L1175
	addk	r6,r3,r0
$L1205:
	addk	r3,r5,r0
$L1181:
	bnei	r7,$L1221
	addk	r3,r4,r0
$L1221:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1232:
	cmpu	r18,r6,r5
	bltid	r18,$L1202
	addk	r4,r0,r0
	addk	r4,r9,r0
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
$L1202:
	srl	r8,r9
	andi	r8,r8,0xffff
	beqid	r8,$L1205
	srl	r10,r6
$L1183:
	cmpu	r18,r10,r5
	bltid	r18,$L1184
	rsubk	r10,r10,r5
	or	r8,r4,r8
	andi	r5,r10,0xffff
	andi	r4,r8,0xffff
$L1184:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1185
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1185:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1186
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1186:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1187
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1187:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1188
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1188:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1189
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1189:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bgeid	r18,$L1234
	rsubk	r8,r8,r5
$L1190:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bgeid	r18,$L1235
	rsubk	r8,r8,r5
$L1191:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bgeid	r18,$L1236
	rsubk	r8,r8,r5
$L1192:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bgeid	r18,$L1237
	rsubk	r8,r8,r5
$L1193:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bgeid	r18,$L1238
	rsubk	r8,r8,r5
$L1194:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1195
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1195:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1196
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1196:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1197
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1197:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1205
	cmpu	r18,r8,r5
	bltid	r18,$L1181
	addk	r3,r0,r0
	rsubk	r8,r8,r5
	ori	r4,r4,1
	andi	r3,r8,0xffff
	andi	r4,r4,0xffff
	bri	$L1181
$L1234:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1190
$L1182:
	andi	r8,r9,32767 #and1
	andi	r10,r6,32767 #and1
	addk	r9,r4,r0
	addk	r6,r3,r0
	brid	$L1183
	addk	r4,r0,r0
$L1235:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1191
$L1236:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1192
$L1237:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1193
$L1238:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1194
$L1231:
	xor	r3,r6,r5
	beqid	r3,$L1181
	addk	r4,r9,r0
	addk	r3,r5,r0
	brid	$L1181
	addk	r4,r0,r0
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
	cmpu	r18,r5,r6
	bgeid	r18,$L1241
	addik	r4,r0,1	# 0x1
$L1240:
	blti	r6,$L1241
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1242
	or	r3,r3,r4
	blti	r3,$L1240
$L1242:
	beqi	r4,$L1250
$L1241:
	addk	r3,r0,r0
$L1247:
	cmpu	r18,r6,r5
	blti	r18,$L1246
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L1246:
	srl	r4,r4
	bneid	r4,$L1247
	srl	r6,r6
	bnei	r7,$L1260
$L1239:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1260:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1250:
	beqid	r7,$L1239
	addk	r3,r4,r0
	bri	$L1260
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
	andi	r3,r7,32 #and1
	beqi	r3,$L1262
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rtsd	r15,8 
	
	addk	r4,r0,r0
$L1262:
	beqid	r7,$L1265
	addik	r3,r0,32	# 0x20
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r4,r3
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1265:
	addk	r3,r5,r0
	rtsd	r15,8 
	
	addk	r4,r6,r0
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
	andi	r3,r7,32 #and1
	beqi	r3,$L1267
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
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1267:
	beqid	r7,$L1270
	addik	r3,r0,32	# 0x20
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r4,r4,r3
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1270:
	addk	r3,r5,r0
	rtsd	r15,8 
	
	addk	r4,r6,r0
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
	or	r4,r4,r3
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	src	r7,r6
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	or	r7,r7,r3
	andi	r8,r8,16711680 #and2
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,65280 #and2
	or	r7,r7,r3
	or	r4,r4,r8
	addk	r3,r0,r6
	addk	r3,r6,r6
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r3,r3,16711680 #and2
	src	r6,r5
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	or	r3,r7,r3
	rtsd	r15,8 
	
	or	r4,r4,r6
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
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
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
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r4,r4,r7
	andi	r5,r6,65280 #and2
	addk	r3,r3,r3
	or	r4,r4,r5
	andi	r3,r3,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r4,r3
	.end	__bswapsi2
$Lfe135:
	.size	__bswapsi2,$Lfe135-__bswapsi2
	.align	2
	.globl	__clzsi2
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,65535
	cmpu	r18,r5,r4
	bgeid	r18,$L1274
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L1274:
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r3,r4,r3
	andi	r18,r3,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r5,r8,65280 #and2
	rsubk	r3,r5,r0
	or	r3,r3,r5
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
	addik	r3,r0,8	# 0x8
	andi	r6,r6,8 #and1
	rsubk	r3,r6,r3
	andi	r18,r3,31
	addk	r7,r0,r8
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r7,r7
	andi	r3,r7,240 #and1
	rsubk	r5,r3,r0
	or	r5,r5,r3
	xori	r5,r5,-1
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
	addik	r5,r0,4	# 0x4
	andi	r3,r3,4 #and1
	rsubk	r5,r3,r5
	andi	r18,r5,31
	addk	r8,r0,r7
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r5,r8,12 #and1
	rsubk	r7,r5,r0
	or	r7,r7,r5
	xori	r7,r7,-1
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
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addik	r10,r0,2	# 0x2
	addk	r5,r5,r5
	rsubk	r7,r5,r10
	andi	r18,r7,31
	addk	r9,r0,r8
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	srl	r7,r9
	andi	r7,r7,1 #and1
	addk	r6,r6,r4
	xori	r4,r7,1
	addk	r3,r3,r6
	beqid	r4,$L1276
	addk	r6,r0,r0
	rsubk	r6,r9,r10
$L1276:
	addk	r3,r5,r3
	rtsd	r15,8 
	
	addk	r3,r6,r3
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
	cmp	r18,r7,r5
	blti	r18,$L1282
	cmp	r18,r5,r7
	blti	r18,$L1283
	cmpu	r18,r8,r6
	blti	r18,$L1282
	cmpu	r18,r6,r8
	blti	r18,$L1283
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1282:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1283:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
	.end	__cmpdi2
$Lfe137:
	.size	__cmpdi2,$Lfe137-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmp	r18,r7,r5
	blti	r18,$L1289
	cmp	r18,r5,r7
	blti	r18,$L1288
	cmpu	r18,r8,r6
	blti	r18,$L1289
	cmpu	r18,r6,r8
	bgeid	r18,$L1290
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1289:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1290:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1288:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
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
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
	addk	r8,r0,r3
	srl	r8,r3
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
	andi	r8,r8,16 #and1
	andi	r18,r8,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r4,r6,255 #and1
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
	addk	r7,r0,r3
	srl	r7,r3
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
	andi	r7,r7,8 #and1
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r5,r4,15 #and1
	rsubk	r3,r5,r0
	or	r3,r3,r5
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
	andi	r6,r6,4 #and1
	andi	r18,r6,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r4,r9,3 #and1
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
	addk	r5,r5,r5
	andi	r18,r5,31
	addk	r4,r0,r9
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,3 #and1
	addk	r7,r7,r8
	xori	r3,r4,-1
	addk	r6,r6,r7
	andi	r3,r3,1 #and1
	addik	r7,r0,2	# 0x2
	srl	r4,r4
	rsubk	r4,r4,r7
	rsubk	r3,r3,r0
	and	r3,r3,r4
	addk	r5,r5,r6
	rtsd	r15,8 
	
	addk	r3,r3,r5
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
	andi	r3,r7,32 #and1
	beqi	r3,$L1293
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1293:
	beqid	r7,$L1296
	addik	r3,r0,32	# 0x20
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r4,r4,r3
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1296:
	addk	r3,r5,r0
	rtsd	r15,8 
	
	addk	r4,r6,r0
	.end	__lshrdi3
$Lfe140:
	.size	__lshrdi3,$Lfe140-__lshrdi3
	.align	2
	.globl	__muldsi3
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r25,r1,44
	swi	r26,r1,48
	andi	r25,r6,65535 #and2
	andi	r26,r5,65535 #and2
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r5,r26,r0
	addk	r6,r25,r0
	swi	r15,r1,0
	swi	r23,r1,36
	swi	r24,r1,40
	brlid	r15,__mulsi3
	
	swi	r27,r1,52
	addk	r24,r0,r19
	srl	r24,r19
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
	addk	r5,r25,r0
	addk	r6,r24,r0
	addk	r27,r0,r3
	srl	r27,r3
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
	brlid	r15,__mulsi3
	
	addk	r23,r3,r0
	addk	r27,r3,r27
	addk	r4,r27,r27
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
	addk	r25,r0,r22
	srl	r25,r22
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
	addk	r5,r26,r0
	addk	r6,r25,r0
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	andi	r23,r23,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r23,r23,r4
	addk	r26,r0,r23
	srl	r26,r23
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
	addk	r26,r3,r26
	addk	r7,r26,r26
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r6,r25,r0
	addk	r5,r24,r0
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	andi	r23,r23,65535 #and2
	addk	r24,r0,r27
	srl	r24,r27
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
	brlid	r15,__mulsi3
	
	addk	r23,r23,r7
	addk	r4,r23,r0
	addk	r5,r0,r26
	srl	r5,r26
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
	addk	r3,r24,r3
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	addk	r3,r3,r5
	rtsd	r15,8 
	
	addik	r1,r1,56
	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r1,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0x7fc88000
	addik	r1,r1,-68
	swi	r26,r1,48
	swi	r27,r1,52
	andi	r26,r6,65535 #and2
	andi	r27,r8,65535 #and2
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r6,r0
	addk	r23,r5,r0
	addk	r6,r27,r0
	addk	r5,r26,r0
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r28,r1,56
	swi	r29,r1,60
	swi	r30,r1,64
	addk	r19,r8,r0
	brlid	r15,__mulsi3
	
	addk	r24,r7,r0
	addk	r28,r0,r22
	srl	r28,r22
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	addk	r5,r27,r0
	addk	r6,r28,r0
	addk	r27,r0,r3
	srl	r27,r3
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
	brlid	r15,__mulsi3
	
	addk	r25,r3,r0
	addk	r27,r3,r27
	addk	r4,r27,r27
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
	addk	r29,r0,r19
	srl	r29,r19
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	addk	r5,r26,r0
	addk	r6,r29,r0
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	andi	r25,r25,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r25,r25,r4
	addk	r30,r0,r25
	srl	r30,r25
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	addk	r30,r3,r30
	addk	r9,r30,r30
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r6,r29,r0
	addk	r5,r28,r0
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	andi	r25,r25,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r25,r25,r9
	addk	r6,r24,r0
	addk	r5,r22,r0
	addk	r28,r0,r27
	srl	r28,r27
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	addk	r22,r28,r3
	addk	r3,r0,r30
	srl	r3,r30
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	brlid	r15,__mulsi3
	
	addk	r22,r22,r3
	addk	r6,r23,r0
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	
	addk	r22,r3,r22
	addk	r4,r25,r0
	addk	r3,r22,r3
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
	lwi	r30,r1,64
	rtsd	r15,8 
	
	addik	r1,r1,68
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
	xor	r5,r5,r6
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
	xor	r4,r4,r5
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r3,r3,r4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
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
	xor	r3,r3,r5
	addk	r5,r0,r3
	srl	r5,r3
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	xor	r5,r5,r3
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	xor	r4,r4,r5
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
	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r1,20,r15		# vars= 0, regs= 4, args= 0
	.mask	0x03c00000
	addk	r11,r6,r0
	addk	r10,r5,r0
	addik	r1,r1,-20
	srl	r6,r5
	srl	r3,r11
	swi	r24,r1,12
	swi	r25,r1,16
	andi	r24,r6,1431655765 #and2
	andi	r25,r3,1431655765 #and2
	rsub	r7,r25,r11
	rsubc	r6,r24,r10
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	swi	r22,r1,4
	swi	r23,r1,8
	andi	r22,r6,858993459 #and2
	andi	r23,r7,858993459 #and2
	andi	r8,r3,858993459 #and2
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	andi	r9,r3,858993459 #and2
	add	r9,r9,r23
	addc	r8,r8,r22
	src	r3,r8
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r5,r3,r5
	addk	r4,r0,r8
	srl	r4,r8
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	add	r5,r5,r9
	addc	r4,r4,r8
	andi	r3,r4,252645135 #and2
	andi	r4,r5,252645135 #and2
	addk	r3,r3,r4
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
	lwi	r22,r1,4
	addk	r4,r4,r3
	lwi	r23,r1,8
	lwi	r24,r1,12
	lwi	r25,r1,16
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
	rtsd	r15,8 
	
	addik	r1,r1,20
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
	andi	r3,r5,858993459 #and2
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	andi	r4,r4,858993459 #and2
	addk	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r4
	andi	r3,r3,252645135 #and2
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
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r15,r1,0
	andi	r3,r7,1 #and1
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r26,r7,r0
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	beqid	r3,$L1308
	addk	r19,r7,r0
$L1310:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L1308:
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
	beqi	r19,$L1309
$L1311:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r23,r4,r0
	andi	r4,r19,1 #and1
	addk	r22,r3,r0
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
	bneid	r4,$L1310
	addk	r3,r3,r19
	brid	$L1311
	sra	r19,r3
$L1309:
	bgeid	r26,$L1315
	addk	r3,r24,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
	addk	r3,r24,r0
$L1315:
	addk	r4,r25,r0
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
	.frame	r1,44,r15		# vars= 4, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-44
	swi	r23,r1,40
	addk	r23,r6,r0
	swi	r19,r1,32
	swi	r22,r1,36
	swi	r15,r1,0
	andi	r3,r23,1 #and1
	addk	r6,r5,r0
	addik	r22,r0,0x3f800000
	beqid	r3,$L1317
	addk	r19,r23,r0
$L1319:
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	
	swi	r6,r1,28
	addk	r22,r3,r0
	lwi	r6,r1,28
$L1317:
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
	beqi	r19,$L1318
$L1320:
	addk	r5,r6,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	andi	r4,r19,1 #and1
	addk	r7,r0,r19
	srl	r7,r19
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
	addk	r6,r3,r0
	bneid	r4,$L1319
	addk	r7,r7,r19
	brid	$L1320
	sra	r19,r7
$L1318:
	bgei	r23,$L1316
	addk	r6,r22,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L1316:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,32
	lwi	r22,r1,36
	lwi	r23,r1,40
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
	cmpu	r18,r7,r5
	blti	r18,$L1328
	cmpu	r18,r5,r7
	blti	r18,$L1329
	cmpu	r18,r8,r6
	blti	r18,$L1328
	cmpu	r18,r6,r8
	blti	r18,$L1329
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1328:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1329:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
	.end	__ucmpdi2
$Lfe150:
	.size	__ucmpdi2,$Lfe150-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r7,r5
	blti	r18,$L1335
	cmpu	r18,r5,r7
	blti	r18,$L1334
	cmpu	r18,r8,r6
	blti	r18,$L1335
	cmpu	r18,r6,r8
	bgeid	r18,$L1336
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1335:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1336:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1334:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.lcomm	seed,8,4
	.type	seed, @object
	.rodata
	.align	2
	.type	digits,@object
	.size	digits,65
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.section	.note.GNU-stack,"",@progbits
