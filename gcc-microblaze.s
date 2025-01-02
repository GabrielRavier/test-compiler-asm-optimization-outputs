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
	lbu	r9,r7,r6
	sb	r9,r7,r4
	addik	r7,r7,-1
	bnei	r7,$L4
$L3:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L2:
	xor	r4,r5,r6
	beqi	r4,$L3
	beqid	r7,$L3
	addik	r8,r7,-1
	addik	r5,r0,6	# 0x6
	cmpu	r18,r8,r5
	bgeid	r18,$L13
	or	r9,r6,r3
	andi	r10,r9,3 #and1
	bneid	r10,$L13
	addik	r11,r6,1
	rsubk	r12,r11,r3
	addik	r4,r0,2	# 0x2
	cmpu	r18,r12,r4
	bgeid	r18,$L35
	addk	r12,r0,r0
	andi	r9,r7,-4 #and1
	addk	r5,r0,r0
$L7:
	lw	r8,r5,r6
	sw	r8,r5,r3
	addik	r5,r5,4
	xor	r10,r5,r9
	bneid	r10,$L7
	xor	r11,r7,r9
	addk	r12,r6,r9
	addk	r8,r3,r9
	beqid	r11,$L3
	rsubk	r7,r9,r7
	lbu	r6,r9,r6
	xori	r4,r7,1
	beqid	r4,$L3
	sb	r6,r9,r3
	lbui	r9,r12,1
	xori	r5,r7,2
	beqid	r5,$L3
	sbi	r9,r8,1
	lbui	r10,r12,2
	rtsd	r15,8 
	
	sbi	r10,r8,2
$L13:
	addk	r12,r0,r0
$L35:
	lbu	r11,r12,r6
	sb	r11,r12,r3
	addik	r12,r12,1
	xor	r8,r7,r12
	bnei	r8,$L35
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
	bneid	r8,$L38
	andi	r7,r7,0x00ff
	brid	$L48
	addk	r3,r0,r0
$L41:
	beqid	r8,$L40
	addik	r5,r5,1
$L38:
	lbui	r4,r6,0
	addik	r8,r8,-1
	addik	r6,r6,1
	xor	r3,r4,r7
	bneid	r3,$L41
	sbi	r4,r5,0
	rtsd	r15,8 
	
	addik	r3,r5,1
$L40:
	addk	r3,r0,r0
$L48:
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
	bneid	r7,$L50
	andi	r6,r6,0x00ff
	brid	$L57
	addk	r3,r7,r0
$L52:
	beqid	r7,$L53
	addik	r5,r5,1
$L50:
	lbui	r4,r5,0
	xor	r3,r4,r6
	bneid	r3,$L52
	addik	r7,r7,-1
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L53:
	addk	r3,r7,r0
$L57:
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
	beqi	r7,$L63
$L72:
	lbui	r4,r5,0
	lbui	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L71
	addik	r5,r5,1
	bneid	r7,$L72
	addik	r6,r6,1
$L63:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L71:
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
	beqid	r7,$L74
	addk	r19,r5,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L74:
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
	addk	r9,r5,r7
	andi	r6,r6,0x00ff
	brid	$L80
	addik	r5,r5,-1
$L82:
	lbui	r8,r3,0
	xor	r10,r8,r6
	beqid	r10,$L79
	addik	r9,r9,-1
$L80:
	xor	r4,r9,r5
	bneid	r4,$L82
	addk	r3,r9,r0
	addk	r3,r4,r0
$L79:
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
	beqid	r7,$L86
	addk	r19,r5,r0
	brlid	r15,memset
	
	andi	r6,r6,0x00ff
$L86:
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
	beqid	r5,$L89
	sbi	r4,r3,0
$L90:
	lbui	r7,r6,1
	addik	r3,r3,1
	addik	r6,r6,1
	sext8	r8,r7
	bneid	r8,$L90
	sbi	r7,r3,0
$L89:
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
	sext8	r9,r4
	bneid	r9,$L96
	andi	r6,r6,0x00ff
	bri	$L95
$L98:
	lbui	r8,r3,1
	sext8	r9,r8
	beqid	r9,$L95
	addik	r3,r3,1
$L96:
	andi	r5,r9,0x00ff
	xor	r7,r5,r6
	bnei	r7,$L98
$L95:
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
	brid	$L105
	addk	r3,r5,r0
$L108:
	beqid	r7,$L107
	addik	r3,r3,1
$L105:
	lbui	r4,r3,0
	sext8	r7,r4
	xor	r5,r7,r6
	bnei	r5,$L108
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L107:
	rtsd	r15,8 
	
	addk	r3,r7,r0
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
	sext8	r11,r4
	sext8	r3,r8
	xor	r9,r3,r11
	bneid	r9,$L118
	addik	r6,r6,-1
$L110:
	beqi	r3,$L111
	lbu	r8,r7,r5
	addik	r7,r7,1
	lbu	r10,r7,r6
	sext8	r3,r8
	sext8	r11,r10
	xor	r12,r3,r11
	beqi	r12,$L110
$L118:
	andi	r3,r8,0x00ff
$L111:
	andi	r5,r11,0x00ff
	rtsd	r15,8 
	
	rsubk	r3,r5,r3
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
	beqid	r3,$L119
	addk	r6,r5,r0
$L121:
	lbui	r4,r6,1
	bneid	r4,$L121
	addik	r6,r6,1
	rsubk	r3,r5,r6
$L119:
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
	beqid	r7,$L131
	addk	r8,r6,r0
	lbui	r9,r5,0
	addik	r7,r7,-1
	bneid	r9,$L128
	addk	r11,r6,r7
	brid	$L140
	lbui	r3,r6,0
$L142:
	addk	r10,r0,r6
	srl	r10,r6
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
	beqi	r10,$L127
	lbui	r9,r5,0
	beqid	r9,$L141
	addik	r3,r8,1
	addk	r8,r3,r0
$L128:
	lbui	r3,r8,0
	xor	r6,r8,r11
	rsubk	r7,r6,r0
	xor	r4,r3,r9
	rsubk	r10,r3,r0
	addik	r12,r4,-1
	and	r4,r12,r10
	addik	r5,r5,1
	bltid	r4,$L142
	or	r6,r7,r6
$L127:
	rsubk	r3,r3,r9
$L124:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L131:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L141:
	lbui	r3,r8,1
	brid	$L124
	rsubk	r3,r3,r9
$L140:
	brid	$L124
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
	bgeid	r18,$L143
	andi	r7,r7,-2 #and1
	addk	r4,r5,r7
$L145:
	lbui	r8,r5,1
	lbui	r9,r5,0
	addik	r5,r5,2
	sbi	r8,r6,0
	sbi	r9,r6,1
	xor	r10,r5,r4
	bneid	r10,$L145
	addik	r6,r6,2
$L143:
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
	addik	r6,r5,-97
	cmpu	r18,r6,r4
	bgeid	r18,$L148
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L148:
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
	bgeid	r18,$L150
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L150:
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
	or	r7,r4,r6
	or	r8,r3,r5
	and	r9,r8,r7
	xori	r4,r9,-1
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
	bgeid	r18,$L153
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L153:
	xori	r5,r5,127
	rsubk	r4,r5,r0
	or	r7,r4,r5
	xori	r8,r7,-1
	addk	r9,r0,r8
	srl	r9,r8
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	or	r10,r9,r6
	rtsd	r15,8 
	
	andi	r3,r10,1 #and1
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
	bgeid	r18,$L155
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L155:
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
	bgeid	r18,$L157
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L157:
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
	bgeid	r18,$L159
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L159:
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
	bgeid	r18,$L161
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L161:
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
	bgeid	r18,$L163
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L163:
	xori	r5,r5,32
	rsubk	r7,r5,r0
	or	r8,r7,r5
	xori	r9,r8,-1
	addk	r10,r0,r9
	srl	r10,r9
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
	or	r11,r10,r6
	rtsd	r15,8 
	
	andi	r3,r11,1 #and1
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
	bgeid	r18,$L165
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L165:
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
	bgeid	r18,$L171
	addik	r6,r0,31	# 0x1f
	cmpu	r18,r5,r6
	bgeid	r18,$L171
	addik	r7,r0,1	# 0x1
	addik	r8,r5,-8232
	cmpu	r18,r8,r7
	bgeid	r18,$L166
	addk	r3,r7,r0
	addik	r5,r5,-65529
	addik	r9,r0,2	# 0x2
	cmpu	r18,r5,r9
	blti	r18,$L175
$L166:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L171:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L175:
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
	bgeid	r18,$L177
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L177:
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
	bgeid	r18,$L189
	addik	r4,r5,-8234
	addik	r6,r0,47061
	cmpu	r18,r4,r6
	bltid	r18,$L190
	addik	r7,r0,8231	# 0x2027
	addik	r3,r0,1	# 0x1
$L178:
$L191:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L190:
	cmpu	r18,r5,r7
	bgeid	r18,$L191
	addik	r3,r0,1	# 0x1
	addik	r8,r5,-57344
	addik	r9,r0,8184	# 0x1ff8
	cmpu	r18,r8,r9
	bgei	r18,$L191
	addik	r10,r0,1048579
	addik	r11,r5,-65532
	cmpu	r18,r11,r10
	blti	r18,$L186
	andi	r5,r5,65534 #and2
	xori	r12,r5,65534
	rsubk	r6,r12,r0
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
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L189:
	addik	r3,r5,1
	andi	r7,r3,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r7,r4
	bltid	r18,$L178
	addik	r3,r0,1	# 0x1
$L186:
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
	bgeid	r18,$L192
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r7,r5,-97
	addik	r8,r0,5	# 0x5
	cmpu	r18,r7,r8
	blti	r18,$L196
$L192:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L196:
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
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L198
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L202
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L205
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r24,r0
	brlid	r15,__subdf3
	
	addk	r8,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L198:
	addk	r3,r22,r0
$L207:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L205:
	addk	r22,r0,r0
	addk	r23,r0,r0
	brid	$L207
	addk	r3,r22,r0
$L202:
	addk	r22,r24,r0
	brid	$L198
	addk	r23,r25,r0
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
	swi	r22,r1,32
	addk	r22,r6,r0
	addk	r6,r5,r0
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L211
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L212
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgtid	r3,$L217
	addk	r3,r0,r0
	lwi	r15,r1,0
$L218:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L217:
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L211:
	addk	r3,r19,r0
	brid	$L218
	lwi	r15,r1,0
$L212:
	addk	r3,r22,r0
	brid	$L218
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
	swi	r22,r1,28
	swi	r23,r1,32
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L219
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bnei	r3,$L226
	andi	r5,r24,-2147483648 #and2
	andi	r6,r22,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L221
	addk	r8,r23,r0
	beqi	r5,$L226
$L219:
	addk	r3,r22,r0
$L231:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L221:
	addk	r7,r22,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L231
	addk	r3,r22,r0
$L226:
	addk	r22,r24,r0
	brid	$L219
	addk	r23,r25,r0
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
	swi	r19,r1,28
	addk	r19,r6,r0
	addk	r6,r5,r0
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L238
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L239
	andi	r5,r22,-2147483648 #and2
	andi	r6,r19,-2147483648 #and2
	xor	r7,r5,r6
	bneid	r7,$L244
	addk	r3,r19,r0
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L238
	addk	r19,r22,r0
$L238:
	addk	r3,r19,r0
	lwi	r15,r1,0
$L245:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L244:
	bneid	r5,$L245
	lwi	r15,r1,0
$L239:
	addk	r3,r22,r0
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
	swi	r22,r1,28
	swi	r23,r1,32
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L246
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bnei	r3,$L253
	andi	r5,r24,-2147483648 #and2
	andi	r6,r22,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L248
	addk	r8,r23,r0
	beqi	r5,$L253
$L246:
	addk	r3,r22,r0
$L258:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L248:
	addk	r7,r22,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L258
	addk	r3,r22,r0
$L253:
	addk	r22,r24,r0
	brid	$L246
	addk	r23,r25,r0
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
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L265
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bnei	r3,$L259
	andi	r5,r22,-2147483648 #and2
	andi	r6,r24,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L261
	addk	r8,r25,r0
	beqi	r5,$L265
$L259:
	addk	r3,r22,r0
$L271:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L261:
	addk	r7,r24,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L271
	addk	r3,r22,r0
$L265:
	addk	r22,r24,r0
	brid	$L259
	addk	r23,r25,r0
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
	swi	r22,r1,32
	addk	r22,r6,r0
	addk	r6,r5,r0
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L278
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L279
	andi	r5,r19,-2147483648 #and2
	andi	r6,r22,-2147483648 #and2
	xor	r7,r5,r6
	bnei	r7,$L284
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L279
	addk	r19,r22,r0
$L279:
	addk	r3,r19,r0
	lwi	r15,r1,0
$L285:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L284:
	addk	r3,r19,r0
	bneid	r5,$L285
	lwi	r15,r1,0
$L278:
	addk	r3,r22,r0
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
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L292
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bnei	r3,$L286
	andi	r5,r22,-2147483648 #and2
	andi	r6,r24,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L288
	addk	r8,r25,r0
	beqi	r5,$L292
$L286:
	addk	r3,r22,r0
$L298:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L288:
	addk	r7,r24,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L298
	addk	r3,r22,r0
$L292:
	addk	r22,r24,r0
	brid	$L286
	addk	r23,r25,r0
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
	beqi	r5,$L300
	addik	r6,r0,digits
$L301:
	andi	r4,r5,63 #and1
	lbu	r7,r4,r6
	addk	r8,r5,r0
	addik	r3,r3,1
	addk	r5,r0,r8
	srl	r5,r8
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	bneid	r5,$L301
	sbi	r7,r3,-1
$L300:
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
	beqi	r6,$L313
	lwi	r3,r6,0
	swi	r6,r5,4
	swi	r3,r5,0
	swi	r5,r6,0
	lwi	r4,r5,0
	beqi	r4,$L307
	swi	r5,r4,4
$L307:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L313:
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
	beqi	r3,$L315
	lwi	r4,r5,4
	swi	r4,r3,4
$L315:
	lwi	r5,r5,4
	beqi	r5,$L314
	swi	r3,r5,0
$L314:
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
	beqid	r23,$L324
	addk	r24,r8,r0
	addk	r29,r9,r0
	addk	r19,r6,r0
	brid	$L326
	addk	r22,r0,r0
$L339:
	beqid	r4,$L324
	addk	r19,r19,r24
$L326:
	addk	r6,r19,r0
	addk	r5,r25,r0
	addik	r22,r22,1
	brald	r15,r29
	
	addk	r26,r19,r0
	bneid	r3,$L339
	xor	r4,r23,r22
$L323:
	addk	r3,r26,r0
$L340:
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
$L324:
	addk	r6,r23,r0
	addk	r5,r24,r0
	addik	r3,r23,1
	brlid	r15,__mulsi3
	
	swi	r3,r28,0
	beqid	r24,$L323
	addk	r26,r27,r3
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memmove
	
	addk	r5,r26,r0
	brid	$L340
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
	beqid	r26,$L342
	swi	r27,r1,52
	addk	r23,r5,r0
	addk	r25,r8,r0
	addk	r24,r9,r0
	addk	r19,r6,r0
	brid	$L344
	addk	r22,r0,r0
$L353:
	beqid	r4,$L342
	addk	r19,r19,r25
$L344:
	addk	r6,r19,r0
	addk	r5,r23,r0
	addik	r22,r22,1
	brald	r15,r24
	
	addk	r27,r19,r0
	bneid	r3,$L353
	xor	r4,r26,r22
$L341:
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
$L342:
	brid	$L341
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
	bgeid	r18,$L381
	addik	r11,r0,4	# 0x4
	xori	r8,r3,32
	andi	r9,r8,0x00ff
	addik	r10,r9,-1
	bgeid	r10,$L385
	xori	r3,r6,43
$L381:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r12,r6,32
	sext8	r6,r6
	andi	r3,r12,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r11
	bgeid	r18,$L381
	addik	r7,r3,-1
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
	bneid	r8,$L381
	xori	r3,r6,43
$L385:
	beqid	r3,$L361
	addk	r10,r3,r0
	xori	r3,r6,45
	bneid	r3,$L384
	addik	r12,r6,-48
	lbui	r10,r5,1
	addik	r4,r0,9	# 0x9
	sext8	r6,r10
	addik	r12,r6,-48
	cmpu	r18,r12,r4
	bltid	r18,$L355
	addik	r5,r5,1
	addik	r10,r0,1	# 0x1
$L364:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L367:
	lbui	r7,r5,1
	addk	r8,r3,r3
	addk	r11,r8,r8
	addk	r4,r11,r3
	sext8	r6,r7
	addk	r8,r4,r4
	sext8	r7,r12
	addik	r12,r6,-48
	addik	r5,r5,1
	cmpu	r18,r12,r9
	bgeid	r18,$L367
	rsubk	r3,r7,r8
	bnei	r10,$L355
	rsubk	r3,r8,r7
$L355:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L384:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r12,r3
	bgeid	r18,$L364
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L361:
	lbui	r9,r5,1
	addik	r11,r0,9	# 0x9
	sext8	r12,r9
	addik	r12,r12,-48
	cmpu	r18,r12,r11
	bgeid	r18,$L364
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
	bgeid	r18,$L410
	addik	r11,r0,4	# 0x4
	xori	r8,r3,32
	andi	r9,r8,0x00ff
	addik	r10,r9,-1
	bgeid	r10,$L412
	xori	r3,r6,43
$L410:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r12,r6,32
	sext8	r6,r6
	andi	r3,r12,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r11
	bgeid	r18,$L410
	addik	r7,r3,-1
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
	bneid	r8,$L410
	xori	r3,r6,43
$L412:
	beqid	r3,$L392
	addik	r10,r0,9	# 0x9
	xori	r3,r6,45
	bneid	r3,$L393
	addik	r11,r6,-48
	lbui	r12,r5,1
	addik	r4,r0,9	# 0x9
	addik	r5,r5,1
	sext8	r6,r12
	addik	r11,r6,-48
	cmpu	r18,r11,r4
	bltid	r18,$L386
	addik	r10,r0,1	# 0x1
$L394:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L397:
	lbui	r7,r5,1
	addk	r8,r3,r3
	addk	r12,r8,r8
	addk	r4,r12,r3
	sext8	r6,r7
	addk	r8,r4,r4
	sext8	r7,r11
	addik	r11,r6,-48
	addik	r5,r5,1
	cmpu	r18,r11,r9
	bgeid	r18,$L397
	rsubk	r3,r7,r8
	bnei	r10,$L386
	rsubk	r3,r8,r7
$L386:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L393:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r11,r3
	bgeid	r18,$L394
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L392:
	lbui	r9,r5,1
	sext8	r11,r9
	addik	r11,r11,-48
	cmpu	r18,r11,r10
	bltid	r18,$L386
	addik	r5,r5,1
	brid	$L394
	addk	r10,r3,r0
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00480000
	addik	r1,r1,-12
	swi	r19,r1,4
	swi	r22,r1,8
	lbui	r4,r5,0
	addik	r8,r0,4	# 0x4
	sext8	r19,r4
	addik	r9,r19,-9
	cmpu	r18,r9,r8
	bgeid	r18,$L439
	addik	r11,r0,4	# 0x4
	xori	r6,r4,32
	andi	r7,r6,0x00ff
	addik	r10,r7,-1
	bgeid	r10,$L444
	xori	r6,r19,43
$L439:
	lbui	r3,r5,1
	addik	r5,r5,1
	xori	r12,r3,32
	sext8	r19,r3
	andi	r22,r12,0x00ff
	addik	r8,r19,-9
	cmpu	r18,r8,r11
	bgeid	r18,$L439
	addik	r4,r22,-1
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	bneid	r9,$L439
	xori	r6,r19,43
$L444:
	beqid	r6,$L419
	xori	r3,r19,45
	bneid	r3,$L443
	addik	r3,r19,-48
	lbui	r12,r5,1
	addik	r22,r5,1
	addik	r19,r0,9	# 0x9
	sext8	r5,r12
	addik	r3,r5,-48
	cmpu	r18,r3,r19
	bltid	r18,$L428
	addik	r19,r0,1	# 0x1
$L422:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addik	r12,r0,9	# 0x9
$L425:
	addk	r4,r0,r11
	srl	r4,r11
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r9,r0,r10
	addk	r9,r10,r10
	addk	r9,r9,r9
	addk	r7,r0,r11
	addk	r7,r11,r11
	addk	r7,r7,r7
	or	r6,r4,r9
	add	r5,r7,r11
	addc	r4,r6,r10
	lbui	r7,r22,1
	addk	r10,r5,r5
	addk	r11,r0,r5
	srl	r11,r5
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	addk	r5,r10,r0
	addk	r6,r4,r4
	sext8	r9,r7
	or	r4,r11,r6
	sext8	r8,r3
	addik	r3,r9,-48
	addk	r7,r0,r8
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r11,r7,r5
	rsubc	r10,r6,r4
	cmpu	r18,r3,r12
	bgeid	r18,$L425
	addik	r22,r22,1
	bneid	r19,$L445
	addk	r3,r10,r0
	rsub	r11,r5,r7
	rsubc	r10,r4,r6
	addk	r3,r10,r0
$L445:
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L443:
	addik	r8,r0,9	# 0x9
	addk	r22,r5,r0
	cmpu	r18,r3,r8
	bgeid	r18,$L422
	addk	r19,r0,r0
$L428:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addk	r3,r10,r0
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L419:
	lbui	r7,r5,1
	addik	r10,r0,9	# 0x9
	addk	r19,r6,r0
	sext8	r11,r7
	addik	r3,r11,-48
	cmpu	r18,r3,r10
	bgeid	r18,$L422
	addik	r22,r5,1
	bri	$L428
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
	beqid	r7,$L447
	swi	r27,r1,52
	addk	r19,r7,r0
	addk	r26,r5,r0
	addk	r24,r6,r0
	addk	r25,r8,r0
	addk	r27,r9,r0
$L450:
	srl	r23,r19
$L461:
	addk	r6,r25,r0
	addk	r5,r23,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	rsubk	r19,r23,r19
	addk	r22,r24,r3
	addk	r5,r26,r0
	brald	r15,r27
	
	addk	r6,r22,r0
	blti	r3,$L451
	beqid	r3,$L460
	addk	r3,r22,r0
	bneid	r19,$L450
	addk	r24,r22,r25
$L447:
	addk	r22,r0,r0
$L446:
	addk	r3,r22,r0
$L460:
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
$L451:
	addk	r19,r23,r0
	bneid	r19,$L461
	srl	r23,r19
	brid	$L446
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
	addk	r25,r5,r0
	addk	r23,r6,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	beqid	r7,$L467
	addk	r27,r10,r0
$L475:
	sra	r28,r19
$L478:
	addk	r6,r24,r0
	addk	r5,r28,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	sra	r19,r19
	addk	r22,r23,r3
	addk	r7,r27,r0
	addk	r5,r25,r0
	brald	r15,r26
	
	addk	r6,r22,r0
	beqi	r3,$L462
	blei	r3,$L465
	bneid	r19,$L475
	addk	r23,r22,r24
$L467:
	addk	r22,r0,r0
$L462:
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
$L465:
	beqid	r28,$L467
	addk	r19,r28,r0
	brid	$L478
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
	addk	r4,r5,r0
	xor	r8,r5,r3
	xor	r9,r6,r5
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
	addk	r4,r5,r0
	xor	r8,r5,r3
	xor	r9,r6,r5
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
	lwi	r3,r5,0
	bneid	r3,$L498
	xor	r4,r6,r3
	bri	$L490
$L493:
	lwi	r3,r5,4
	beqid	r3,$L490
	addik	r5,r5,4
	xor	r4,r6,r3
$L498:
	bneid	r4,$L493
	addk	r3,r5,r0
$L490:
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
	bneid	r8,$L501
	addik	r6,r6,-4
$L500:
	beqi	r4,$L501
	lw	r4,r3,r5
	addik	r3,r3,4
	lw	r7,r3,r6
	xor	r9,r4,r7
	beqi	r9,$L500
$L501:
	cmp	r18,r7,r4
	bltid	r18,$L499
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r4,r7
	bgeid	r18,$L509
	addik	r3,r0,1	# 0x1
$L499:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L509:
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
$L511:
	lw	r7,r4,r6
	sw	r7,r4,r3
	bneid	r7,$L511
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
	beqi	r3,$L513
	addk	r3,r5,r0
$L515:
	lwi	r4,r3,4
	bneid	r4,$L515
	addik	r3,r3,4
	rsubk	r5,r5,r3
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
$L513:
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
	beqid	r7,$L537
	addk	r3,r7,r0
$L535:
	lwi	r9,r5,0
	lwi	r4,r6,0
	addik	r7,r7,-1
	rsubk	r10,r9,r0
	xor	r3,r9,r4
	rsubk	r8,r3,r0
	or	r11,r8,r3
	bltid	r11,$L523
	or	r12,r10,r9
	addk	r9,r0,r12
	srl	r9,r12
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	beqi	r9,$L523
	addik	r5,r5,4
	bneid	r7,$L535
	addik	r6,r6,4
$L526:
	addk	r3,r7,r0
$L518:
$L537:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L523:
	lwi	r5,r5,0
	lwi	r6,r6,0
	cmp	r18,r6,r5
	blti	r18,$L536
	cmp	r18,r5,r6
	bltid	r18,$L526
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L518
	addk	r3,r7,r0
$L536:
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
	beqi	r7,$L542
$L549:
	lwi	r4,r5,0
	xor	r3,r4,r6
	beqid	r3,$L548
	addik	r7,r7,-1
	bneid	r7,$L549
	addik	r5,r5,4
$L542:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L548:
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
	beqid	r7,$L568
	addk	r3,r7,r0
$L566:
	lwi	r4,r5,0
	lwi	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L565
	addik	r5,r5,4
	bneid	r7,$L566
	addik	r6,r6,4
$L557:
	addk	r3,r7,r0
$L550:
$L568:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L565:
	cmp	r18,r3,r4
	blti	r18,$L567
	cmp	r18,r4,r3
	bltid	r18,$L557
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L550
	addk	r3,r7,r0
$L567:
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
	beqid	r7,$L570
	addk	r19,r5,r0
	addk	r3,r7,r0
	addk	r7,r0,r3
	addk	r7,r3,r3
	addk	r7,r7,r7
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L570:
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
	beqid	r4,$L583
	addk	r3,r5,r0
	addk	r5,r7,r7
	rsubk	r8,r6,r3
	addk	r9,r5,r5
	cmpu	r18,r9,r8
	bgeid	r18,$L590
	addik	r10,r7,-1
	beqid	r7,$L583
	addk	r4,r10,r10
	addk	r8,r4,r4
$L580:
	lw	r5,r8,r6
	sw	r5,r8,r3
	addik	r8,r8,-4
	xori	r9,r8,-4
	bnei	r9,$L580
$L583:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L590:
	beqid	r7,$L583
	addk	r12,r0,r0
$L578:
	lw	r7,r12,r6
	addik	r10,r10,-1
	xori	r11,r10,-1
	sw	r7,r12,r3
	bneid	r11,$L578
	addik	r12,r12,4
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
	beqid	r7,$L592
	addik	r4,r7,-1
	addk	r7,r5,r0
$L593:
	addik	r4,r4,-1
	swi	r6,r7,0
	xori	r8,r4,-1
	bneid	r8,$L593
	addik	r7,r7,4
$L592:
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
	bgeid	r18,$L599
	xor	r3,r5,r6
	beqi	r7,$L598
	addik	r4,r5,-1
	addik	r5,r6,-1
$L601:
	lbu	r6,r7,r4
	sb	r6,r7,r5
	addik	r7,r7,-1
	bnei	r7,$L601
$L598:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L599:
	beqi	r3,$L598
	beqid	r7,$L598
	addik	r8,r7,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r8,r4
	bgeid	r18,$L610
	or	r9,r6,r5
	andi	r10,r9,3 #and1
	bneid	r10,$L610
	addik	r11,r5,1
	rsubk	r12,r11,r6
	addik	r3,r0,2	# 0x2
	cmpu	r18,r12,r3
	bgeid	r18,$L632
	addk	r11,r0,r0
	andi	r8,r7,-4 #and1
	addk	r9,r0,r0
$L604:
	lw	r4,r9,r5
	sw	r4,r9,r6
	addik	r9,r9,4
	xor	r10,r9,r8
	bneid	r10,$L604
	xor	r11,r7,r8
	addk	r12,r6,r8
	addk	r4,r5,r8
	beqid	r11,$L598
	rsubk	r7,r8,r7
	lbu	r5,r8,r5
	sb	r5,r8,r6
	xori	r6,r7,1
	beqid	r6,$L598
	xori	r8,r7,2
	lbui	r3,r4,1
	beqid	r8,$L598
	sbi	r3,r12,1
	lbui	r9,r4,2
	rtsd	r15,8 
	
	sbi	r9,r12,2
$L610:
	addk	r11,r0,r0
$L632:
	lbu	r10,r11,r5
	sb	r10,r11,r6
	addik	r11,r11,1
	xor	r12,r7,r11
	bnei	r12,$L632
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
	beqid	r3,$L634
	xori	r8,r7,-1
	andi	r18,r7,31
	addk	r11,r0,r6
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r12,r0,r0
	beqid	r3,$L636
	andi	r9,r7,63 #and1
$L638:
	addk	r6,r0,r0
	andi	r18,r9,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	or	r3,r6,r11
	rtsd	r15,8 
	
	or	r4,r10,r12
$L634:
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	srl	r4,r6
	andi	r18,r7,31
	addk	r12,r0,r6
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r12,r12,r12
	rsubk	r7,r7,r0
	andi	r18,r8,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r3,r7,32 #and1
	or	r11,r9,r10
	bneid	r3,$L638
	andi	r9,r7,63 #and1
$L636:
	addk	r10,r5,r5
	xori	r4,r9,-1
	andi	r18,r4,31
	addk	r8,r0,r10
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r9,31
	addk	r7,r0,r6
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r7,r7
	or	r10,r8,r7
	andi	r18,r9,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r4,r10,r12
	rtsd	r15,8 
	
	or	r3,r6,r11
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
	beqid	r3,$L640
	xori	r8,r7,-1
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r12,r0,r0
	beqid	r3,$L642
	andi	r9,r7,63 #and1
$L644:
	addk	r5,r0,r0
	andi	r18,r9,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r4,r5,r11
	rtsd	r15,8 
	
	or	r3,r3,r12
$L640:
	andi	r18,r7,31
	addk	r10,r0,r6
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r18,r7,31
	addk	r12,r0,r5
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r12,r12
	rsubk	r7,r7,r0
	addk	r9,r5,r5
	andi	r3,r7,32 #and1
	andi	r18,r8,31
	addk	r4,r0,r9
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r9,r7,63 #and1
	bneid	r3,$L644
	or	r11,r4,r10
$L642:
	srl	r4,r6
	xori	r10,r9,-1
	andi	r18,r10,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r18,r9,31
	addk	r7,r0,r5
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r7,r7,r7
	or	r3,r8,r7
	andi	r18,r9,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	or	r3,r3,r12
	rtsd	r15,8 
	
	or	r4,r5,r11
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
	andi	r7,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	or	r5,r3,r8
	andi	r3,r5,0xffff
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
	andi	r7,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r5,r3,r8
	andi	r3,r5,0xffff
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
	andi	r7,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	or	r5,r3,r8
	rtsd	r15,8 
	
	andi	r3,r5,0x00ff
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
	andi	r7,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r5,r3,r8
	rtsd	r15,8 
	
	andi	r3,r5,0x00ff
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
	addk	r4,r3,r3
	addk	r6,r4,r4
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r0,r5
	srl	r12,r5
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r5,r12,r11
	andi	r3,r5,0xffff
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
	addk	r4,r3,r3
	addk	r6,r4,r4
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	src	r12,r5
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	andi	r12,r12,-16777216
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
	addk	r11,r10,r10
	or	r4,r12,r3
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r5,r6,65280 #and2
	or	r7,r4,r5
	andi	r8,r11,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r7,r8
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
	andi	r9,r3,65280 #and2
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
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	or	r10,r4,r9
	andi	r11,r8,16711680 #and2
	addk	r12,r0,r6
	srl	r12,r6
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
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
	andi	r3,r12,65280 #and2
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
	or	r7,r7,r9
	or	r4,r10,r11
	or	r8,r7,r3
	addk	r10,r0,r6
	addk	r10,r6,r6
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	andi	r11,r10,16711680 #and2
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
	or	r3,r8,r11
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
	brid	$L659
	addk	r3,r0,r0
$L662:
	beqi	r6,$L661
$L659:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r3,1
	andi	r7,r4,1 #and1
	beqid	r7,$L662
	xori	r6,r3,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L661:
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
	beqi	r5,$L666
	andi	r3,r5,1 #and1
	bnei	r3,$L663
	addik	r3,r0,1	# 0x1
$L665:
	sra	r5,r5
	andi	r4,r5,1 #and1
	beqid	r4,$L665
	addik	r3,r3,1
$L663:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L666:
	rtsd	r15,8 
	
	addk	r3,r5,r0
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
	lwi	r6,r0,$LC0
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	bltid	r4,$L669
	addik	r3,r0,1	# 0x1
	addk	r5,r19,r0
	lwi	r6,r0,$LC1
	brlid	r15,__gtsf2
	
	addk	r19,r3,r0
	blei	r3,$L674
$L671:
	addk	r3,r19,r0
$L669:
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L674:
	brid	$L671
	addk	r19,r0,r0
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	lwi	r8,r0,$LC2
	lwi	r9,r0,$LC2+4
	addik	r1,r1,-40
	swi	r22,r1,32
	addk	r7,r8,r0
	addk	r8,r9,r0
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	swi	r19,r1,28
	addk	r4,r3,r0
	bltid	r4,$L675
	addik	r3,r0,1	# 0x1
	lwi	r8,r0,$LC3
	lwi	r9,r0,$LC3+4
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	brlid	r15,__gtdf2
	
	addk	r19,r3,r0
	blei	r3,$L680
$L677:
	addk	r3,r19,r0
$L675:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L680:
	brid	$L677
	addk	r19,r0,r0
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	lwi	r8,r0,$LC4
	lwi	r9,r0,$LC4+4
	addik	r1,r1,-40
	swi	r22,r1,32
	addk	r7,r8,r0
	addk	r8,r9,r0
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	swi	r19,r1,28
	addk	r4,r3,r0
	bltid	r4,$L681
	addik	r3,r0,1	# 0x1
	lwi	r8,r0,$LC5
	lwi	r9,r0,$LC5+4
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	brlid	r15,__gtdf2
	
	addk	r19,r3,r0
	blei	r3,$L686
$L683:
	addk	r3,r19,r0
$L681:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L686:
	brid	$L683
	addk	r19,r0,r0
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
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L690
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r22,r0
	addk	r5,r3,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L690
	addik	r6,r0,0x40000000
	bgeid	r19,$L705
	andi	r3,r19,1 #and1
	addik	r6,r0,0x3f000000
$L705:
	beqi	r3,$L693
$L694:
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	
	swi	r6,r1,28
	addk	r22,r3,r0
	lwi	r6,r1,28
$L693:
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
	addk	r19,r4,r19
	sra	r19,r19
	beqi	r19,$L690
$L695:
	addk	r5,r6,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	andi	r7,r19,1 #and1
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
	bneid	r7,$L694
	addk	r8,r5,r19
	brid	$L695
	sra	r19,r8
$L690:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,32
	lwi	r22,r1,36
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
	swi	r19,r1,28
	addk	r8,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r15,r1,0
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L707
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r6,r4,r0
	addk	r5,r3,r0
	addk	r7,r24,r0
	brlid	r15,__nedf2
	
	addk	r8,r25,r0
	beqid	r3,$L724
	addk	r3,r24,r0
	blti	r19,$L722
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L723:
	beqi	r3,$L710
$L711:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L710:
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
	addk	r7,r4,r19
	sra	r19,r7
	beqid	r19,$L724
	addk	r3,r24,r0
$L712:
	addk	r8,r23,r0
	addk	r7,r22,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	andi	r8,r19,1 #and1
	addk	r9,r0,r19
	srl	r9,r19
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	addk	r22,r3,r0
	addk	r23,r4,r0
	bneid	r8,$L711
	addk	r10,r9,r19
	brid	$L712
	sra	r19,r10
$L707:
	addk	r3,r24,r0
$L724:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L722:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L723
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
	swi	r19,r1,28
	addk	r8,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r15,r1,0
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L726
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
	beqid	r3,$L743
	addk	r3,r24,r0
	blti	r19,$L741
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L742:
	beqi	r3,$L729
$L730:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L729:
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
	addk	r5,r4,r19
	sra	r19,r5
	beqid	r19,$L743
	addk	r3,r24,r0
$L731:
	addk	r6,r23,r0
	addk	r7,r22,r0
	addk	r8,r23,r0
	brlid	r15,__muldf3
	
	addk	r5,r22,r0
	andi	r6,r19,1 #and1
	addk	r9,r0,r19
	srl	r9,r19
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	addk	r22,r3,r0
	addk	r23,r4,r0
	bneid	r6,$L730
	addk	r10,r9,r19
	brid	$L731
	sra	r19,r10
$L726:
	addk	r3,r24,r0
$L743:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L741:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L742
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
	beqid	r7,$L745
	addk	r3,r5,r0
	addik	r5,r7,-1
	addik	r4,r0,3	# 0x3
	cmpu	r18,r5,r4
	bgeid	r18,$L752
	or	r8,r3,r6
	andi	r4,r8,3 #and1
	bneid	r4,$L752
	andi	r9,r7,-4 #and1
$L747:
	lw	r10,r4,r3
	lw	r11,r4,r6
	xor	r12,r11,r10
	sw	r12,r4,r3
	addik	r4,r4,4
	xor	r5,r4,r9
	bneid	r5,$L747
	xor	r11,r7,r9
	addk	r8,r3,r9
	addk	r10,r6,r9
	beqid	r11,$L745
	rsubk	r7,r9,r7
	lbu	r12,r9,r3
	lbu	r6,r9,r6
	xori	r4,r7,1
	xor	r5,r12,r6
	beqid	r4,$L745
	sb	r5,r9,r3
	lbui	r9,r8,1
	lbui	r11,r10,1
	xori	r7,r7,2
	xor	r12,r11,r9
	beqid	r7,$L745
	sbi	r12,r8,1
	lbui	r6,r8,2
	lbui	r10,r10,2
	xor	r4,r10,r6
	sbi	r4,r8,2
$L745:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L752:
	addk	r11,r0,r0
$L764:
	lbu	r8,r11,r3
	lbu	r5,r11,r6
	xor	r9,r5,r8
	sb	r9,r11,r3
	addik	r11,r11,1
	xor	r12,r7,r11
	bnei	r12,$L764
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
	beqid	r4,$L772
	addk	r3,r5,r0
	addk	r10,r5,r0
$L767:
	lbui	r8,r10,1
	bneid	r8,$L767
	addik	r10,r10,1
$L780:
	beqi	r7,$L769
$L781:
	lbui	r5,r6,0
	addik	r7,r7,-1
	addik	r6,r6,1
	sext8	r9,r5
	beqid	r9,$L771
	sbi	r5,r10,0
	bneid	r7,$L781
	addik	r10,r10,1
$L769:
	sbi	r0,r10,0
$L771:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L772:
	brid	$L780
	addk	r10,r5,r0
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
	beqid	r6,$L782
	addk	r3,r0,r0
$L783:
	lbu	r4,r3,r5
	bnei	r4,$L791
$L782:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L791:
	addik	r3,r3,1
	xor	r7,r6,r3
	bnei	r7,$L783
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
	sext8	r11,r9
	beqid	r11,$L797
	addk	r3,r5,r0
$L793:
	brid	$L796
	addk	r7,r6,r0
$L795:
	beqi	r8,$L794
$L796:
	lbui	r4,r7,0
	addik	r7,r7,1
	sext8	r5,r4
	bneid	r5,$L795
	xor	r8,r5,r11
	lbui	r10,r3,1
	sext8	r11,r10
	bneid	r11,$L793
	addik	r3,r3,1
$L797:
	addk	r3,r11,r0
$L794:
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
	addk	r11,r0,r0
$L804:
	lbui	r4,r5,0
	sext8	r9,r4
	xor	r8,r9,r6
	rsubk	r7,r8,r0
	or	r10,r7,r8
	bltid	r10,$L803
	addk	r3,r11,r0
	addk	r3,r5,r0
$L803:
	addk	r11,r3,r0
	bneid	r9,$L804
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
	beqid	r10,$L819
	addk	r3,r6,r0
$L809:
	lbui	r4,r3,1
	bneid	r4,$L809
	addik	r3,r3,1
	rsubk	r7,r6,r3
	beqid	r7,$L819
	addik	r11,r6,-1
	brid	$L828
	addk	r11,r11,r7
$L829:
	beqid	r3,$L807
	addik	r5,r5,1
$L828:
	lbui	r8,r5,0
	sext8	r3,r8
	xor	r9,r3,r10
	bneid	r9,$L829
	addk	r9,r6,r0
	addk	r12,r5,r0
	brid	$L811
	andi	r7,r8,0x00ff
$L830:
	xor	r4,r8,r7
	rsubk	r3,r8,r0
	addik	r8,r4,-1
	and	r4,r8,r3
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
	beqi	r3,$L812
	lbui	r7,r12,0
	beqid	r7,$L812
	addik	r9,r9,1
$L811:
	xor	r3,r9,r11
	rsubk	r4,r3,r0
	or	r3,r4,r3
	lbui	r8,r9,0
	bltid	r3,$L830
	addik	r12,r12,1
$L812:
	lbui	r12,r9,0
	xor	r8,r12,r7
	beqid	r8,$L831
	addk	r3,r5,r0
	brid	$L828
	addik	r5,r5,1
$L819:
	addk	r3,r5,r0
$L807:
$L831:
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
	addk	r22,r5,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	bltid	r3,$L843
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L836
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	blti	r3,$L835
$L836:
	addk	r3,r22,r0
$L844:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L843:
	addk	r5,r24,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	blei	r3,$L836
$L835:
	addik	r22,r22,-2147483648
	brid	$L844
	addk	r3,r22,r0
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
	beqid	r8,$L868
	addk	r3,r5,r0
	cmpu	r18,r8,r6
	blti	r18,$L854
	rsubk	r6,r8,r6
	addk	r10,r5,r6
	cmpu	r18,r5,r10
	blti	r18,$L854
	lbui	r12,r7,0
	addik	r1,r1,-8
	swi	r19,r1,4
	sext8	r12,r12
	brid	$L851
	xori	r19,r8,1
$L855:
	addk	r3,r11,r0
$L847:
	cmpu	r18,r3,r10
	blti	r18,$L856
$L851:
	lbui	r4,r3,0
	sext8	r5,r4
	xor	r9,r5,r12
	bneid	r9,$L855
	addik	r11,r3,1
	beqi	r19,$L845
$L850:
	brid	$L848
	addik	r4,r0,1	# 0x1
$L849:
	beqi	r9,$L845
$L848:
	lbu	r5,r4,r3
	lbu	r6,r4,r7
	addik	r4,r4,1
	xor	r5,r5,r6
	beqid	r5,$L849
	xor	r9,r4,r8
	cmpu	r18,r11,r10
	blti	r18,$L856
	lbui	r6,r11,0
	sext8	r4,r6
	xor	r9,r12,r4
	bneid	r9,$L847
	addik	r3,r11,1
	addk	r5,r11,r0
	addk	r11,r3,r0
	brid	$L850
	addk	r3,r5,r0
$L856:
	addk	r3,r0,r0
$L845:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L854:
	rtsd	r15, 8
	
	addk	r3,r0,r0
$L868:
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
	beqid	r7,$L870
	addk	r22,r5,r0
	brlid	r15,memmove
	nop		# Unfilled delay slot

$L870:
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
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r28,r1,56
	swi	r15,r1,0
	addk	r28,r7,r0
	swi	r19,r1,28
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r29,r1,60
	addk	r22,r5,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L899
	addk	r5,r22,r0
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	brlid	r15,__gedf2
	
	addk	r29,r0,r0
	bltid	r3,$L900
	addk	r5,r22,r0
$L878:
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r19,r0,r0
$L884:
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	brlid	r15,__muldf3
	
	addik	r19,r19,1
	addk	r22,r3,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r4,r0
	brlid	r15,__gedf2
	
	addk	r23,r4,r0
	bgeid	r3,$L884
	addk	r4,r22,r0
	swi	r19,r28,0
	beqid	r29,$L875
	addk	r5,r23,r0
$L902:
	addik	r4,r22,-2147483648
$L875:
	addk	r3,r4,r0
$L903:
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
	rtsd	r15,8 
	
	addik	r1,r1,64
$L900:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L904
	addk	r4,r22,r0
	addk	r5,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L890
	addk	r26,r22,r0
	addk	r4,r22,r0
$L904:
	addk	r5,r23,r0
	brid	$L875
	swi	r0,r28,0
$L899:
	addik	r7,r0,0xbff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	addik	r26,r22,-2147483648
	brlid	r15,__ledf2
	
	addk	r27,r23,r0
	bgtid	r3,$L901
	addik	r29,r0,1	# 0x1
	brid	$L878
	addk	r22,r26,r0
$L901:
	addik	r7,r0,0xbfe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L904
	addk	r4,r22,r0
	addik	r29,r0,1	# 0x1
$L879:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r22,r26,r0
	addk	r23,r27,r0
	addk	r19,r0,r0
	addk	r7,r22,r0
$L905:
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__adddf3
	
	addik	r19,r19,-1
	addk	r22,r3,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r4,r0
	brlid	r15,__ltdf2
	
	addk	r23,r4,r0
	bltid	r3,$L905
	addk	r7,r22,r0
	swi	r19,r28,0
	addk	r4,r22,r0
	bneid	r29,$L902
	addk	r5,r23,r0
	brid	$L903
	addk	r3,r4,r0
$L890:
	brid	$L879
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
	beqid	r3,$L906
	swi	r27,r1,24
$L909:
	addk	r10,r0,r0
	andi	r11,r6,1 #and1
	srl	r6,r6
	rsub	r27,r11,r0
	rsubc	r26,r10,r0
	src	r4,r5
	src	r4,r4
	andi	r4,r4,-2147483648
	srl	r5,r5
	or	r6,r4,r6
	and	r22,r26,r7
	and	r23,r27,r8
	addk	r7,r7,r7
	or	r9,r5,r6
	addk	r10,r0,r8
	srl	r10,r8
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
	add	r25,r25,r23
	addc	r24,r24,r22
	or	r7,r10,r7
	bneid	r9,$L909
	addk	r8,r8,r8
$L906:
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	cmpu	r18,r5,r6
	bgeid	r18,$L951
	addik	r4,r0,1	# 0x1
$L914:
	bltid	r6,$L961
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L916
	or	r9,r3,r4
	blti	r9,$L914
$L916:
	beqi	r4,$L934
	addk	r3,r0,r0
$L961:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L927:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L921
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L921:
	cmpu	r18,r6,r5
	bgeid	r18,$L962
	addk	r10,r12,r0
	addk	r9,r5,r0
$L962:
	addk	r5,r9,r0
	beqid	r8,$L926
	srl	r6,r6
	addk	r10,r4,r0
$L926:
	srl	r4,r4
	bneid	r4,$L927
	or	r3,r3,r10
	beqid	r7,$L963
	lwi	r19,r1,4
	addk	r3,r5,r0
$L963:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L934:
	bneid	r7,$L957
	addk	r3,r4,r0
$L964:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L951:
	cmpu	r18,r6,r5
	bltid	r18,$L958
	rsubk	r8,r6,r5
$L929:
	cmpu	r18,r6,r5
	bltid	r18,$L959
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L960:
	beqi	r7,$L964
$L957:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L959:
	addk	r8,r5,r0
	brid	$L960
	addk	r5,r8,r0
$L958:
	brid	$L929
	addk	r4,r0,r0
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
	beqi	r4,$L967
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
$L967:
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
	beqid	r5,$L981
	xor	r6,r6,r3
$L976:
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L981:
	bneid	r6,$L976
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
	beqi	r5,$L985
	addk	r3,r0,r0
$L984:
	andi	r4,r5,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r6
	srl	r5,r5
	addk	r3,r3,r8
	bneid	r5,$L984
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L985:
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
	bltid	r18,$L988
	andi	r10,r7,-8 #and1
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bgei	r18,$L1025
$L988:
	beqid	r3,$L991
	addk	r4,r6,r0
	addik	r1,r1,-16
	swi	r19,r1,4
	addk	r19,r3,r3
	swi	r22,r1,8
	addk	r22,r19,r19
	addk	r8,r5,r0
	swi	r23,r1,12
	addk	r23,r22,r22
	addk	r9,r23,r6
$L992:
	lwi	r22,r4,0
	lwi	r23,r4,4
	addik	r4,r4,8
	xor	r3,r4,r9
	swi	r22,r8,0
	swi	r23,r8,4
	bneid	r3,$L992
	addik	r8,r8,8
	cmpu	r18,r7,r10
	bgeid	r18,$L987
	rsubk	r12,r10,r7
	addik	r11,r12,-1
	addik	r19,r0,6	# 0x6
	cmpu	r18,r11,r19
	bgeid	r18,$L1026
	addk	r23,r5,r10
	addik	r4,r10,1
	addk	r22,r6,r4
	rsubk	r8,r22,r23
	addik	r11,r0,2	# 0x2
	cmpu	r18,r8,r11
	bgeid	r18,$L1017
	addk	r9,r6,r10
	or	r19,r9,r23
	andi	r22,r19,3 #and1
	bneid	r22,$L1017
	andi	r8,r12,-4 #and1
$L996:
	lw	r4,r3,r9
	sw	r4,r3,r23
	addik	r3,r3,4
	xor	r11,r3,r8
	bnei	r11,$L996
	xor	r12,r12,r8
	beqid	r12,$L987
	addk	r10,r10,r8
	lbu	r23,r10,r6
	addik	r9,r10,1
	cmpu	r18,r7,r9
	bgeid	r18,$L987
	sb	r23,r10,r5
	lbu	r19,r9,r6
	addik	r22,r10,2
	cmpu	r18,r7,r22
	bgeid	r18,$L987
	sb	r19,r9,r5
	lbu	r6,r22,r6
	sb	r6,r22,r5
$L987:
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L1027:
	addik	r4,r4,1
$L1017:
	lbu	r8,r10,r6
	xor	r3,r7,r4
	sb	r8,r10,r5
	bneid	r3,$L1027
	addk	r10,r4,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L1025:
	beqid	r7,$L1030
	addik	r8,r7,-1
$L989:
	lbu	r7,r8,r6
	sb	r7,r8,r5
	addik	r8,r8,-1
	xori	r9,r8,-1
	bnei	r9,$L989
$L1030:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L991:
	bneid	r7,$L1020
	addik	r3,r10,1
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1028:
	addik	r3,r3,1
$L1020:
	lbu	r11,r10,r6
	xor	r12,r7,r3
	sb	r11,r10,r5
	bneid	r12,$L1028
	addk	r10,r3,r0
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1026:
	brid	$L1017
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
	bltid	r18,$L1032
	srl	r8,r7
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1059
$L1032:
	beqid	r8,$L1035
	addik	r11,r0,8	# 0x8
	addik	r10,r8,-1
	cmpu	r18,r10,r11
	bgeid	r18,$L1036
	or	r12,r6,r5
	andi	r3,r12,3 #and1
	bneid	r3,$L1036
	addik	r4,r6,2
	xor	r9,r5,r4
	rsubk	r10,r9,r0
	or	r11,r10,r9
	bgeid	r11,$L1036
	addk	r3,r0,r0
	addk	r12,r0,r7
	srl	r12,r7
	srl	r12,r12
	addk	r9,r12,r12
	addk	r10,r9,r9
$L1037:
	lw	r4,r3,r6
	sw	r4,r3,r5
	addik	r3,r3,4
	xor	r11,r3,r10
	bnei	r11,$L1037
	xor	r8,r8,r9
	beqid	r8,$L1035
	addk	r12,r9,r9
	lhu	r9,r12,r6
	sh	r9,r12,r5
$L1035:
	andi	r8,r7,1 #and1
	beqid	r8,$L1031
	addik	r7,r7,-1
	lbu	r6,r7,r6
$L1062:
	sb	r6,r7,r5
$L1031:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1059:
	beqid	r7,$L1031
	addik	r9,r7,-1
$L1033:
	lbu	r4,r9,r6
	sb	r4,r9,r5
	addik	r9,r9,-1
	xori	r7,r9,-1
	bnei	r7,$L1033
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1036:
	addk	r10,r8,r8
	addk	r3,r0,r0
$L1039:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
	xor	r11,r10,r3
	bneid	r11,$L1039
	andi	r8,r7,1 #and1
	beqid	r8,$L1031
	addik	r7,r7,-1
	brid	$L1062
	lbu	r6,r7,r6
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
	bltid	r18,$L1064
	andi	r9,r7,-4 #and1
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1100
$L1064:
	beqid	r8,$L1067
	addk	r10,r8,r8
	addk	r11,r10,r10
	addk	r8,r0,r0
$L1068:
	lw	r12,r8,r6
	sw	r12,r8,r5
	addik	r8,r8,4
	xor	r3,r8,r11
	bnei	r3,$L1068
	cmpu	r18,r7,r9
	bgei	r18,$L1104
	rsubk	r12,r9,r7
	addik	r10,r12,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r10,r4
	bgeid	r18,$L1101
	addik	r4,r9,1
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r10,r5,r9
	addk	r19,r6,r4
	rsubk	r8,r19,r10
	addik	r19,r0,2	# 0x2
	cmpu	r18,r8,r19
	bgeid	r18,$L1093
	addk	r11,r6,r9
	or	r8,r11,r10
	andi	r19,r8,3 #and1
	bneid	r19,$L1093
	andi	r8,r12,-4 #and1
$L1072:
	lw	r4,r3,r11
	sw	r4,r3,r10
	addik	r3,r3,4
	xor	r19,r8,r3
	bnei	r19,$L1072
	xor	r12,r8,r12
	beqid	r12,$L1063
	addk	r9,r8,r9
	lbu	r10,r9,r6
	addik	r11,r9,1
	cmpu	r18,r7,r11
	bgeid	r18,$L1063
	sb	r10,r9,r5
	lbu	r8,r11,r6
	addik	r4,r9,2
	cmpu	r18,r7,r4
	bgeid	r18,$L1063
	sb	r8,r11,r5
	lbu	r6,r4,r6
	sb	r6,r4,r5
$L1063:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1102:
	addik	r4,r4,1
$L1093:
	lbu	r3,r9,r6
	xor	r19,r7,r4
	sb	r3,r9,r5
	bneid	r19,$L1102
	addk	r9,r4,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1100:
	beqid	r7,$L1105
	addik	r9,r7,-1
$L1065:
	lbu	r4,r9,r6
	sb	r4,r9,r5
	addik	r9,r9,-1
	xori	r7,r9,-1
	bnei	r7,$L1065
$L1105:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1067:
	beqid	r7,$L1105
	addik	r8,r9,1
$L1096:
	lbu	r3,r9,r6
	xor	r11,r7,r8
	sb	r3,r9,r5
	beqid	r11,$L1105
	addk	r9,r8,r0
	brid	$L1096
	addik	r8,r8,1
$L1101:
	brid	$L1096
	addik	r8,r9,1
$L1104:
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
	bnei	r3,$L1121
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
	bnei	r3,$L1118
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
	bnei	r4,$L1122
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	bnei	r6,$L1123
	addk	r7,r0,r5
	sra	r7,r5
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	bnei	r7,$L1124
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	bnei	r8,$L1125
	addk	r9,r0,r5
	sra	r9,r5
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	bnei	r9,$L1126
	addk	r10,r0,r5
	sra	r10,r5
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	bnei	r10,$L1127
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	bnei	r11,$L1128
	addk	r12,r0,r5
	sra	r12,r5
	sra	r12,r12
	sra	r12,r12
	sra	r12,r12
	sra	r12,r12
	sra	r12,r12
	bnei	r12,$L1129
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1130
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	bnei	r4,$L1131
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	bnei	r6,$L1132
	addk	r7,r0,r5
	sra	r7,r5
	sra	r7,r7
	bneid	r7,$L1133
	sra	r8,r5
	bnei	r8,$L1134
	bneid	r5,$L1137
	addik	r3,r0,16	# 0x10
$L1118:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1121:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1132:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1137:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1122:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1123:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1124:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1125:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1126:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1127:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1128:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1129:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1130:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1131:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1133:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1134:
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
	bneid	r3,$L1141
	andi	r4,r5,2 #and1
	bneid	r4,$L1142
	andi	r6,r5,4 #and1
	bneid	r6,$L1143
	andi	r7,r5,8 #and1
	bneid	r7,$L1144
	andi	r8,r5,16 #and1
	bneid	r8,$L1145
	andi	r9,r5,32 #and1
	bneid	r9,$L1146
	andi	r10,r5,64 #and1
	bneid	r10,$L1147
	andi	r11,r5,128 #and1
	bneid	r11,$L1148
	andi	r12,r5,256 #and1
	bnei	r12,$L1149
	andi	r3,r5,512 #and1
	bneid	r3,$L1150
	andi	r4,r5,1024 #and1
	bneid	r4,$L1151
	andi	r6,r5,2048 #and1
	bneid	r6,$L1152
	andi	r7,r5,4096 #and1
	bneid	r7,$L1153
	andi	r8,r5,8192 #and1
	bneid	r8,$L1154
	andi	r9,r5,16384 #and1
	bnei	r9,$L1155
	addk	r10,r0,r5
	sra	r10,r5
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	bneid	r10,$L1158
	addik	r3,r0,16	# 0x10
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1141:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1142:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1153:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1158:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1143:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1144:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1145:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1146:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1147:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1148:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1149:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1150:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1151:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1152:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1154:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1155:
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

	bgei	r3,$L1166
	addk	r5,r19,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L1166:
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
	andi	r6,r3,1 #and1
	andi	r4,r5,1 #and1
	addk	r7,r6,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	addk	r5,r10,r11
	rtsd	r15,8 
	
	andi	r3,r5,1 #and1
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
	andi	r6,r3,1 #and1
	andi	r4,r5,1 #and1
	addk	r7,r6,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	rtsd	r15,8 
	
	addk	r3,r10,r11
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
	beqi	r5,$L1172
	addk	r3,r0,r0
$L1171:
	andi	r4,r5,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r6
	srl	r5,r5
	addk	r3,r3,r8
	bneid	r5,$L1171
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1172:
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
	beqi	r5,$L1177
	beqi	r6,$L1178
	addk	r3,r0,r0
$L1176:
	andi	r4,r6,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r5
	srl	r6,r6
	addk	r3,r3,r8
	bneid	r6,$L1176
	addk	r5,r5,r5
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1177:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1178:
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	cmpu	r18,r5,r6
	bgeid	r18,$L1218
	addik	r4,r0,1	# 0x1
$L1181:
	bltid	r6,$L1228
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1183
	or	r9,r3,r4
	blti	r9,$L1181
$L1183:
	beqi	r4,$L1201
	addk	r3,r0,r0
$L1228:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L1194:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L1188
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L1188:
	cmpu	r18,r6,r5
	bgeid	r18,$L1229
	addk	r10,r12,r0
	addk	r9,r5,r0
$L1229:
	addk	r5,r9,r0
	beqid	r8,$L1193
	srl	r6,r6
	addk	r10,r4,r0
$L1193:
	srl	r4,r4
	bneid	r4,$L1194
	or	r3,r3,r10
	beqid	r7,$L1230
	lwi	r19,r1,4
	addk	r3,r5,r0
$L1230:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1201:
	bneid	r7,$L1224
	addk	r3,r4,r0
$L1231:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1218:
	cmpu	r18,r6,r5
	bltid	r18,$L1225
	rsubk	r8,r6,r5
$L1196:
	cmpu	r18,r6,r5
	bltid	r18,$L1226
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L1227:
	beqi	r7,$L1231
$L1224:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L1226:
	addk	r8,r5,r0
	brid	$L1227
	addk	r5,r8,r0
$L1225:
	brid	$L1196
	addk	r4,r0,r0
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

	bltid	r3,$L1235
	lwi	r15,r1,0
	addk	r5,r19,r0
	addk	r6,r22,r0
	brlid	r15,__gtsf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1237
$L1234:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L1237:
	brid	$L1234
	addk	r19,r0,r0
$L1235:
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
	bltid	r3,$L1241
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1243
$L1240:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L1243:
	brid	$L1240
	addk	r19,r0,r0
$L1241:
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
	blti	r6,$L1258
	beqid	r6,$L1253
	addk	r10,r0,r0
$L1250:
	addik	r8,r0,1	# 0x1
	addk	r3,r0,r0
$L1252:
	andi	r7,r6,1 #and1
	sra	r6,r6
	xori	r4,r8,32
	rsubk	r9,r6,r0
	rsubk	r11,r7,r0
	or	r12,r9,r6
	rsubk	r4,r4,r0
	and	r7,r11,r5
	and	r9,r4,r12
	addik	r8,r8,1
	addk	r3,r3,r7
	addk	r5,r5,r5
	addk	r11,r0,r9
	srl	r11,r9
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	bneid	r11,$L1252
	andi	r8,r8,0x00ff
	beqi	r10,$L1248
	rsubk	r3,r3,r0
$L1248:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1258:
	rsubk	r6,r6,r0
	brid	$L1250
	addik	r10,r0,1	# 0x1
$L1253:
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	bltid	r5,$L1300
	swi	r19,r1,4
	addik	r3,r0,1	# 0x1
	addk	r19,r0,r0
$L1260:
	bgeid	r6,$L1303
	addk	r8,r5,r0
	addk	r19,r3,r0
	rsubk	r6,r6,r0
$L1303:
	addk	r7,r6,r0
	cmpu	r18,r5,r6
	bgeid	r18,$L1297
	addik	r4,r0,1	# 0x1
$L1262:
	addk	r4,r4,r4
	rsubk	r6,r4,r0
	addk	r7,r7,r7
	cmpu	r18,r5,r7
	bltid	r18,$L1301
	or	r9,r6,r4
	beqid	r4,$L1299
	addk	r3,r0,r0
$L1302:
	addk	r11,r3,r0
	addk	r12,r3,r0
	addik	r10,r0,1	# 0x1
$L1264:
	rsubk	r6,r7,r8
	cmpu	r18,r7,r8
	bgeid	r18,$L1269
	andi	r5,r10,0x00ff
	andi	r5,r12,0x00ff
$L1269:
	cmpu	r18,r7,r8
	bgeid	r18,$L1304
	addk	r9,r11,r0
	addk	r6,r8,r0
$L1304:
	addk	r8,r6,r0
	beqid	r5,$L1274
	srl	r7,r7
	addk	r9,r4,r0
$L1274:
	srl	r4,r4
	bneid	r4,$L1264
	or	r3,r3,r9
$L1265:
	beqid	r19,$L1305
	lwi	r19,r1,4
	rsubk	r3,r3,r0
$L1305:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1301:
	addk	r10,r0,r9
	srl	r10,r9
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
	bnei	r10,$L1262
	bneid	r4,$L1302
	addk	r3,r0,r0
$L1299:
	brid	$L1265
	addk	r3,r0,r0
$L1300:
	rsubk	r5,r5,r0
	addk	r3,r0,r0
	brid	$L1260
	addik	r19,r0,1	# 0x1
$L1297:
	cmpu	r18,r6,r5
	bgeid	r18,$L1265
	addk	r3,r4,r0
	brid	$L1265
	addk	r3,r0,r0
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
	bgeid	r5,$L1307
	addk	r9,r0,r0
	rsubk	r5,r5,r0
	addik	r9,r0,1	# 0x1
$L1307:
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
	xor	r6,r3,r6
	rsubk	r11,r3,r6
	addik	r4,r0,1	# 0x1
	cmpu	r18,r5,r11
	bgeid	r18,$L1342
	addk	r3,r5,r0
$L1308:
	addk	r4,r4,r4
	rsubk	r7,r4,r0
	addk	r11,r11,r11
	cmpu	r18,r5,r11
	bltid	r18,$L1345
	or	r10,r7,r4
	beqi	r4,$L1344
$L1310:
	srl	r4,r4
	cmpu	r18,r11,r3
	bgeid	r18,$L1317
	rsubk	r5,r11,r3
	addk	r5,r3,r0
$L1317:
	addk	r3,r5,r0
	bneid	r4,$L1310
	srl	r11,r11
$L1311:
	beqi	r9,$L1306
	rsubk	r3,r3,r0
$L1306:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1345:
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	bnei	r8,$L1308
	bnei	r4,$L1310
$L1344:
	brid	$L1311
	addk	r3,r5,r0
$L1342:
	cmpu	r18,r11,r5
	bgeid	r18,$L1311
	rsubk	r3,r11,r5
	brid	$L1311
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
	bgeid	r18,$L1568
	addik	r9,r0,1	# 0x1
$L1347:
	addk	r11,r6,r6
	sext16	r3,r6
	andi	r4,r11,0xffff
	bltid	r3,$L1569
	addk	r12,r9,r9
	andi	r8,r12,0xffff
	cmpu	r18,r5,r4
	blti	r18,$L1570
	beqi	r8,$L1459
	cmpu	r18,r4,r5
	bltid	r18,$L1571
	rsubk	r3,r4,r5
	andi	r3,r3,0xffff
	cmpu	r18,r4,r5
	bltid	r18,$L1572
	addk	r10,r8,r0
$L1360:
	andi	r12,r9,32767 #and1
	andi	r11,r6,32767 #and1
	addk	r9,r8,r0
	addk	r6,r4,r0
	andi	r10,r10,0xffff
$L1457:
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1362
	addik	r8,r0,1	# 0x1
	addk	r8,r0,r0
$L1362:
	cmpu	r18,r11,r3
	bgei	r18,$L1365
	addk	r5,r3,r0
$L1365:
	andi	r3,r5,0xffff
	beqid	r8,$L1367
	addik	r11,r0,0	# 0
	addk	r11,r12,r0
$L1367:
	or	r12,r10,r11
	addk	r10,r0,r9
	srl	r10,r9
	srl	r10,r10
	andi	r5,r10,0xffff
	andi	r8,r12,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r10,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1368
	addik	r12,r0,1	# 0x1
	addk	r12,r0,r0
$L1368:
	cmpu	r18,r11,r3
	bgei	r18,$L1371
	addk	r10,r3,r0
$L1371:
	andi	r3,r10,0xffff
	beqid	r12,$L1373
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1373:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1355
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1374
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1374:
	cmpu	r18,r11,r3
	bgei	r18,$L1377
	addk	r5,r3,r0
$L1377:
	andi	r3,r5,0xffff
	beqid	r10,$L1379
	addik	r5,r0,0	# 0
	addk	r5,r12,r0
$L1379:
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r8,r8,r5
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1380
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1380:
	cmpu	r18,r11,r3
	bgei	r18,$L1383
	addk	r12,r3,r0
$L1383:
	andi	r3,r12,0xffff
	beqid	r10,$L1385
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1385:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1355
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1386
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1386:
	cmpu	r18,r11,r3
	bgei	r18,$L1389
	addk	r5,r3,r0
$L1389:
	andi	r3,r5,0xffff
	beqid	r10,$L1391
	addik	r5,r0,0	# 0
	addk	r5,r12,r0
$L1391:
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r8,r8,r5
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1392
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1392:
	cmpu	r18,r11,r3
	bgei	r18,$L1395
	addk	r12,r3,r0
$L1395:
	andi	r3,r12,0xffff
	beqid	r10,$L1397
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1397:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1355
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1573
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1574
$L1401:
	andi	r3,r5,0xffff
	bneid	r10,$L1575
	addik	r5,r0,0	# 0
$L1403:
	or	r8,r8,r5
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1576
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1577
$L1407:
	andi	r3,r12,0xffff
	bneid	r10,$L1578
	addik	r11,r0,0	# 0
$L1409:
	or	r8,r8,r11
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1355
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1579
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1580
$L1413:
	andi	r3,r5,0xffff
	bneid	r10,$L1581
	addik	r5,r0,0	# 0
$L1415:
	or	r8,r8,r5
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1582
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1583
$L1419:
	andi	r3,r12,0xffff
	bneid	r10,$L1584
	addik	r11,r0,0	# 0
$L1421:
	or	r8,r8,r11
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1355
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1585
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1586
$L1425:
	andi	r3,r5,0xffff
	bneid	r10,$L1587
	addik	r5,r0,0	# 0
$L1427:
	or	r8,r8,r5
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1588
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1589
$L1431:
	andi	r3,r12,0xffff
	bneid	r10,$L1590
	addik	r11,r0,0	# 0
$L1433:
	or	r8,r8,r11
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1355
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1434
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1434:
	cmpu	r18,r11,r3
	bgei	r18,$L1437
	addk	r5,r3,r0
$L1437:
	andi	r3,r5,0xffff
	beqid	r10,$L1439
	addik	r5,r0,0	# 0
	addk	r5,r12,r0
$L1439:
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r8,r8,r5
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1355
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1440
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1440:
	cmpu	r18,r11,r3
	bgei	r18,$L1443
	addk	r12,r3,r0
$L1443:
	andi	r3,r12,0xffff
	beqid	r10,$L1445
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1445:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r4,r5,0xffff
	andi	r8,r8,0xffff
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
	beqid	r4,$L1355
	rsubk	r6,r9,r3
	andi	r12,r6,0xffff
	cmpu	r18,r9,r3
	bgeid	r18,$L1446
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1446:
	cmpu	r18,r9,r3
	bgei	r18,$L1449
	addk	r12,r3,r0
$L1449:
	andi	r3,r12,0xffff
	or	r8,r10,r8
$L1355:
	bnei	r7,$L1460
	addk	r3,r8,r0
$L1460:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1570:
	addk	r9,r8,r0
	bneid	r8,$L1347
	addk	r6,r4,r0
$L1459:
	brid	$L1355
	addk	r3,r5,r0
$L1569:
	cmpu	r18,r6,r5
	bgeid	r18,$L1453
	rsubk	r8,r6,r5
	addk	r8,r5,r0
$L1453:
	andi	r10,r9,0xffff
	andi	r3,r8,0xffff
	cmpu	r18,r6,r5
	bgeid	r18,$L1599
	srl	r5,r9
	addk	r10,r0,r0
$L1599:
	andi	r12,r5,0xffff
	addk	r8,r10,r0
	bneid	r12,$L1457
	srl	r11,r6
	bri	$L1355
$L1575:
	brid	$L1403
	addk	r5,r12,r0
$L1574:
	addk	r5,r3,r0
$L1592:
	andi	r3,r5,0xffff
	beqid	r10,$L1403
	addik	r5,r0,0	# 0
	brid	$L1403
	addk	r5,r12,r0
$L1573:
	cmpu	r18,r11,r3
	bgeid	r18,$L1401
	addk	r10,r0,r0
	brid	$L1592
	addk	r5,r3,r0
$L1572:
	brid	$L1360
	addik	r10,r0,0	# 0
$L1571:
	addk	r3,r5,r0
	andi	r3,r3,0xffff
	cmpu	r18,r4,r5
	bgeid	r18,$L1360
	addk	r10,r8,r0
	brid	$L1360
	addik	r10,r0,0	# 0
$L1576:
	cmpu	r18,r11,r3
	bgeid	r18,$L1407
	addk	r10,r0,r0
	brid	$L1593
	addk	r12,r3,r0
$L1578:
	brid	$L1409
	addk	r11,r5,r0
$L1577:
	addk	r12,r3,r0
$L1593:
	andi	r3,r12,0xffff
	beqid	r10,$L1409
	addik	r11,r0,0	# 0
	brid	$L1409
	addk	r11,r5,r0
$L1581:
	brid	$L1415
	addk	r5,r12,r0
$L1580:
	addk	r5,r3,r0
$L1594:
	andi	r3,r5,0xffff
	beqid	r10,$L1415
	addik	r5,r0,0	# 0
	brid	$L1415
	addk	r5,r12,r0
$L1579:
	cmpu	r18,r11,r3
	bgeid	r18,$L1413
	addk	r10,r0,r0
	brid	$L1594
	addk	r5,r3,r0
$L1582:
	cmpu	r18,r11,r3
	bgeid	r18,$L1419
	addk	r10,r0,r0
	brid	$L1595
	addk	r12,r3,r0
$L1584:
	brid	$L1421
	addk	r11,r5,r0
$L1583:
	addk	r12,r3,r0
$L1595:
	andi	r3,r12,0xffff
	beqid	r10,$L1421
	addik	r11,r0,0	# 0
	brid	$L1421
	addk	r11,r5,r0
$L1586:
	addk	r5,r3,r0
$L1596:
	andi	r3,r5,0xffff
	beqid	r10,$L1427
	addik	r5,r0,0	# 0
	brid	$L1427
	addk	r5,r12,r0
$L1585:
	cmpu	r18,r11,r3
	bgeid	r18,$L1425
	addk	r10,r0,r0
	brid	$L1596
	addk	r5,r3,r0
$L1587:
	brid	$L1427
	addk	r5,r12,r0
$L1588:
	cmpu	r18,r11,r3
	bgeid	r18,$L1431
	addk	r10,r0,r0
	brid	$L1597
	addk	r12,r3,r0
$L1590:
	brid	$L1433
	addk	r11,r5,r0
$L1589:
	addk	r12,r3,r0
$L1597:
	andi	r3,r12,0xffff
	beqid	r10,$L1433
	addik	r11,r0,0	# 0
	brid	$L1433
	addk	r11,r5,r0
$L1568:
	xor	r8,r6,r5
	rsubk	r4,r6,r5
	addik	r10,r8,-1
	andi	r3,r5,0xffff
	andi	r9,r4,0xffff
	bltid	r10,$L1591
	xor	r5,r6,r5
	addik	r6,r5,-1
$L1598:
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	bri	$L1355
$L1591:
	andi	r3,r9,0xffff
	brid	$L1598
	addik	r6,r5,-1
	.end	__udivmodhi4
$Lfe130:
	.size	__udivmodhi4,$Lfe130-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	cmpu	r18,r5,r6
	bgeid	r18,$L1638
	addik	r4,r0,1	# 0x1
$L1601:
	bltid	r6,$L1648
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1603
	or	r9,r3,r4
	blti	r9,$L1601
$L1603:
	beqi	r4,$L1621
	addk	r3,r0,r0
$L1648:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L1614:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L1608
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L1608:
	cmpu	r18,r6,r5
	bgeid	r18,$L1649
	addk	r10,r12,r0
	addk	r9,r5,r0
$L1649:
	addk	r5,r9,r0
	beqid	r8,$L1613
	srl	r6,r6
	addk	r10,r4,r0
$L1613:
	srl	r4,r4
	bneid	r4,$L1614
	or	r3,r3,r10
	beqid	r7,$L1650
	lwi	r19,r1,4
	addk	r3,r5,r0
$L1650:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1621:
	bneid	r7,$L1644
	addk	r3,r4,r0
$L1651:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1638:
	cmpu	r18,r6,r5
	bltid	r18,$L1645
	rsubk	r8,r6,r5
$L1616:
	cmpu	r18,r6,r5
	bltid	r18,$L1646
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L1647:
	beqi	r7,$L1651
$L1644:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L1646:
	addk	r8,r5,r0
	brid	$L1647
	addk	r5,r8,r0
$L1645:
	brid	$L1616
	addk	r4,r0,r0
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
	beqi	r3,$L1653
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rtsd	r15,8 
	
	addk	r4,r0,r0
$L1653:
	beqi	r7,$L1656
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	andi	r18,r8,31
	addk	r9,r0,r6
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r9,r10
$L1656:
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
	beqi	r3,$L1658
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

$L1658:
	beqid	r7,$L1661
	addk	r3,r5,r0
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	andi	r18,r8,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	andi	r18,r7,31
	addk	r10,r0,r6
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	
	or	r4,r9,r10
$L1661:
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
	andi	r8,r3,65280 #and2
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
	addk	r9,r0,r5
	addk	r9,r5,r5
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	or	r10,r4,r8
	andi	r12,r9,16711680 #and2
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	andi	r3,r11,65280 #and2
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
	or	r7,r7,r8
	or	r4,r10,r12
	addk	r9,r0,r6
	addk	r9,r6,r6
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	or	r10,r7,r3
	andi	r11,r9,16711680 #and2
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
	or	r3,r10,r11
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
	addk	r4,r3,r3
	addk	r6,r4,r4
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r12,r0,r5
	srl	r12,r5
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
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
	addk	r11,r10,r10
	or	r4,r12,r3
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r5,r6,65280 #and2
	or	r7,r4,r5
	andi	r8,r11,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r7,r8
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
	bgeid	r18,$L1665
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L1665:
	addk	r6,r3,r3
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r11,r8,r8
	addik	r9,r0,16	# 0x10
	rsubk	r10,r11,r9
	andi	r18,r10,31
	addk	r12,r0,r5
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r12,r12
	andi	r5,r12,65280 #and2
	rsubk	r4,r5,r0
	or	r3,r4,r5
	xori	r7,r3,-1
	addk	r6,r0,r7
	srl	r6,r7
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
	addik	r8,r0,8	# 0x8
	andi	r4,r6,8 #and1
	rsubk	r9,r4,r8
	andi	r18,r9,31
	addk	r10,r0,r12
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r12,r10,240 #and1
	rsubk	r5,r12,r0
	or	r3,r5,r12
	xori	r7,r3,-1
	addk	r6,r0,r7
	srl	r6,r7
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
	addik	r8,r0,4	# 0x4
	andi	r12,r6,4 #and1
	rsubk	r9,r12,r8
	andi	r18,r9,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r10,r3,12 #and1
	rsubk	r5,r10,r0
	or	r7,r5,r10
	xori	r6,r7,-1
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	addik	r10,r0,2	# 0x2
	addk	r5,r8,r8
	rsubk	r7,r5,r10
	andi	r18,r7,31
	addk	r9,r0,r3
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	srl	r3,r9
	andi	r8,r3,1 #and1
	addk	r11,r4,r11
	xori	r4,r8,1
	addk	r12,r12,r11
	beqid	r4,$L1667
	addk	r6,r0,r0
	rsubk	r6,r9,r10
$L1667:
	addk	r5,r5,r12
	rtsd	r15,8 
	
	addk	r3,r6,r5
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
	blti	r18,$L1673
	cmp	r18,r5,r7
	blti	r18,$L1674
	cmpu	r18,r8,r6
	blti	r18,$L1673
	cmpu	r18,r6,r8
	blti	r18,$L1674
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1673:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1674:
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
	blti	r18,$L1680
	cmp	r18,r5,r7
	blti	r18,$L1679
	cmpu	r18,r8,r6
	blti	r18,$L1680
	cmpu	r18,r6,r8
	bgeid	r18,$L1681
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1680:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1681:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1679:
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
	or	r6,r3,r4
	xori	r7,r6,-1
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
	andi	r10,r8,16 #and1
	andi	r18,r10,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r5,r9,255 #and1
	rsubk	r11,r5,r0
	or	r12,r11,r5
	xori	r4,r12,-1
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
	andi	r7,r3,8 #and1
	andi	r18,r7,31
	addk	r8,r0,r9
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r6,r8,15 #and1
	rsubk	r9,r6,r0
	or	r5,r9,r6
	xori	r11,r5,-1
	addk	r12,r0,r11
	srl	r12,r11
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r6,r12,4 #and1
	andi	r18,r6,31
	addk	r9,r0,r8
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r4,r9,3 #and1
	rsubk	r3,r4,r0
	or	r8,r3,r4
	xori	r11,r8,-1
	addk	r5,r0,r11
	srl	r5,r11
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r12,r5,r5
	andi	r18,r12,31
	addk	r4,r0,r9
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r9,r4,3 #and1
	xori	r3,r9,-1
	addk	r10,r7,r10
	andi	r8,r3,1 #and1
	srl	r11,r9
	addik	r7,r0,2	# 0x2
	addk	r6,r6,r10
	rsubk	r5,r11,r7
	rsubk	r4,r8,r0
	and	r9,r4,r5
	addk	r12,r12,r6
	rtsd	r15,8 
	
	addk	r3,r9,r12
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
	beqi	r3,$L1684
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1684:
	beqid	r7,$L1687
	addk	r3,r5,r0
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	andi	r18,r8,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	andi	r18,r7,31
	addk	r10,r0,r6
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rtsd	r15,8 
	
	or	r4,r9,r10
$L1687:
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
	addk	r19,r0,r22
	srl	r19,r22
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
	addk	r22,r3,r27
	addk	r4,r22,r22
	addk	r3,r4,r4
	addk	r6,r3,r3
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r5,r26,r0
	addk	r26,r12,r12
	addk	r25,r26,r26
	addk	r27,r25,r25
	addk	r4,r27,r27
	addk	r6,r19,r0
	addk	r3,r4,r4
	addk	r7,r3,r3
	addk	r8,r7,r7
	andi	r23,r23,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r25,r23,r8
	addk	r6,r19,r0
	addk	r26,r0,r25
	srl	r26,r25
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
	addk	r19,r3,r26
	addk	r5,r24,r0
	addk	r24,r19,r19
	addk	r9,r24,r24
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r27,r12,r12
	addk	r4,r27,r27
	addk	r3,r4,r4
	addk	r7,r3,r3
	addk	r23,r7,r7
	addk	r8,r23,r23
	addk	r26,r8,r8
	addk	r24,r26,r26
	addk	r9,r24,r24
	addk	r10,r9,r9
	addk	r11,r10,r10
	andi	r25,r25,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r27,r25,r11
	addk	r23,r0,r22
	srl	r23,r22
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	addk	r22,r23,r3
	addk	r4,r27,r0
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
	lwi	r15,r1,0
	addk	r3,r22,r5
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
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
	swi	r28,r1,56
	andi	r26,r8,65535 #and2
	andi	r28,r6,65535 #and2
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r6,r0
	addk	r23,r5,r0
	addk	r6,r26,r0
	addk	r5,r28,r0
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r27,r1,52
	swi	r29,r1,60
	swi	r30,r1,64
	addk	r19,r8,r0
	brlid	r15,__mulsi3
	
	addk	r24,r7,r0
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
	
	addk	r29,r3,r0
	addk	r26,r3,r27
	addk	r6,r26,r26
	addk	r3,r6,r6
	addk	r7,r3,r3
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r30,r12,r12
	addk	r5,r28,r0
	addk	r28,r30,r30
	andi	r4,r29,65535 #and2
	addk	r29,r28,r28
	addk	r27,r29,r29
	addk	r6,r27,r27
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
	addk	r3,r6,r6
	addk	r6,r29,r0
	addk	r7,r3,r3
	addk	r8,r7,r7
	brlid	r15,__mulsi3
	
	addk	r28,r4,r8
	addk	r30,r0,r28
	srl	r30,r28
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
	addk	r5,r25,r0
	addk	r25,r0,r26
	srl	r25,r26
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
	addk	r26,r30,r30
	addk	r9,r26,r26
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r27,r12,r12
	addk	r3,r27,r27
	addk	r7,r3,r3
	addk	r8,r7,r7
	andi	r4,r28,65535 #and2
	addk	r28,r8,r8
	addk	r6,r29,r0
	addk	r29,r28,r28
	addk	r26,r29,r29
	addk	r9,r26,r26
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	brlid	r15,__mulsi3
	
	addk	r27,r4,r12
	addk	r6,r24,r0
	addk	r5,r22,r0
	addk	r24,r0,r30
	srl	r24,r30
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
	
	addk	r22,r25,r3
	addk	r6,r23,r0
	addk	r5,r19,r0
	addk	r30,r22,r24
	brlid	r15,__mulsi3
	
	addk	r23,r3,r30
	addk	r4,r27,r0
	addk	r3,r23,r3
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
	xor	r6,r4,r5
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r8,r3,r6
	addk	r9,r0,r8
	srl	r9,r8
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	xor	r10,r9,r8
	addik	r7,r0,27030	# 0x6996
	andi	r11,r10,15 #and1
	andi	r18,r11,31
	addk	r12,r0,r7
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r12,r12
	rtsd	r15,8 
	
	andi	r3,r12,1 #and1
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
	xor	r4,r3,r5
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	xor	r7,r5,r4
	addk	r8,r0,r7
	srl	r8,r7
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	xor	r9,r8,r7
	addik	r6,r0,27030	# 0x6996
	andi	r10,r9,15 #and1
	andi	r18,r10,31
	addk	r11,r0,r6
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r11,r11
	rtsd	r15,8 
	
	andi	r3,r11,1 #and1
	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00c00000
	addk	r8,r5,r0
	addk	r9,r6,r0
	addik	r1,r1,-12
	srl	r3,r6
	srl	r6,r5
	swi	r22,r1,4
	swi	r23,r1,8
	andi	r22,r6,1431655765 #and2
	andi	r23,r3,1431655765 #and2
	rsub	r7,r23,r9
	rsubc	r6,r22,r8
	addk	r8,r0,r7
	srl	r8,r7
	srl	r8,r8
	andi	r10,r6,858993459 #and2
	andi	r5,r8,858993459 #and2
	andi	r11,r7,858993459 #and2
	addk	r4,r0,r6
	srl	r4,r6
	srl	r4,r4
	andi	r4,r4,858993459 #and2
	add	r11,r5,r11
	addc	r10,r4,r10
	src	r7,r10
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-268435456
	addk	r5,r0,r11
	srl	r5,r11
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r5,r7,r5
	addk	r4,r0,r10
	srl	r4,r10
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	add	r5,r5,r11
	addc	r4,r4,r10
	andi	r9,r4,252645135 #and2
	andi	r12,r5,252645135 #and2
	addk	r22,r9,r12
	addk	r23,r0,r22
	srl	r23,r22
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	addk	r10,r23,r22
	lwi	r22,r1,4
	lwi	r23,r1,8
	addk	r11,r0,r10
	srl	r11,r10
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	addk	r3,r11,r10
	andi	r3,r3,127 #and1
	rtsd	r15,8 
	
	addik	r1,r1,12
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
	andi	r4,r3,1431655765 #and2
	rsubk	r5,r4,r5
	andi	r6,r5,858993459 #and2
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	andi	r8,r7,858993459 #and2
	addk	r9,r8,r6
	addk	r10,r0,r9
	srl	r10,r9
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	addk	r11,r10,r9
	andi	r12,r11,252645135 #and2
	addk	r3,r0,r12
	srl	r3,r12
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r4,r3,r12
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r6,r5,r4
	rtsd	r15,8 
	
	andi	r3,r6,63 #and1
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
	beqid	r3,$L1699
	addk	r19,r7,r0
$L1701:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L1699:
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
	addk	r19,r4,r19
	sra	r19,r19
	beqi	r19,$L1700
$L1702:
	addk	r7,r22,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	andi	r5,r19,1 #and1
	addk	r6,r0,r19
	srl	r6,r19
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
	addk	r22,r3,r0
	addk	r23,r4,r0
	bneid	r5,$L1701
	addk	r7,r6,r19
	brid	$L1702
	sra	r19,r7
$L1700:
	bgeid	r26,$L1706
	addk	r3,r24,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
	addk	r3,r24,r0
$L1706:
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
	beqid	r3,$L1708
	addk	r19,r23,r0
$L1710:
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	
	swi	r6,r1,28
	addk	r22,r3,r0
	lwi	r6,r1,28
$L1708:
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
	addk	r19,r4,r19
	sra	r19,r19
	beqi	r19,$L1709
$L1711:
	addk	r5,r6,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	andi	r5,r19,1 #and1
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
	bneid	r5,$L1710
	addk	r8,r7,r19
	brid	$L1711
	sra	r19,r8
$L1709:
	bgei	r23,$L1707
	addk	r6,r22,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L1707:
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
	blti	r18,$L1719
	cmpu	r18,r5,r7
	blti	r18,$L1720
	cmpu	r18,r8,r6
	blti	r18,$L1719
	cmpu	r18,r6,r8
	blti	r18,$L1720
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1719:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1720:
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
	blti	r18,$L1726
	cmpu	r18,r5,r7
	blti	r18,$L1725
	cmpu	r18,r8,r6
	blti	r18,$L1726
	cmpu	r18,r6,r8
	bgeid	r18,$L1727
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1726:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1727:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1725:
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
