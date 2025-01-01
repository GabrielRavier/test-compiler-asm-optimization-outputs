	.file	"mini-libc.c"
	.machine ppc64
	.abiversion 2
	.section	".text"
	.align 2
	.globl make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	mr 9,3
	mr 3,4
	mr 4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE0:
	.size	make_ti,.-make_ti
	.align 2
	.globl make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	mr 9,3
	mr 3,4
	mr 4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE1:
	.size	make_tu,.-make_tu
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	cmpld 0,3,4
	ble 0,.L4
	add 4,4,5
	add 9,3,5
	addi 10,5,1
	mtctr 10
	b .L5
.L6:
	lbzu 10,-1(4)
	stbu 10,-1(9)
.L5:
	bdnz .L6
	blr
.L4:
	cmpld 0,3,4
	beqlr 0
	addi 4,4,-1
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L8
.L9:
	lbzu 10,1(4)
	stbu 10,1(9)
.L8:
	bdnz .L9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE2:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	rlwinm 5,5,0,0xff
	addi 4,4,-1
	mr 10,3
	addi 9,6,1
	mtctr 9
	b .L11
.L13:
	addi 6,6,-1
	addi 10,10,1
.L11:
	bdz .L12
	lbzu 9,1(4)
	stb 9,0(10)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	bne 0,.L13
.L12:
	li 3,0
	cmpdi 0,6,0
	beqlr 0
	addi 3,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE3:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	addi 9,5,1
	mtctr 9
	b .L19
.L21:
	addi 3,3,1
	addi 5,5,-1
.L19:
	bdz .L20
	lbz 9,0(3)
	cmpw 0,9,4
	bne 0,.L21
.L20:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE4:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	addi 9,5,1
	mtctr 9
	b .L27
.L29:
	addi 5,5,-1
	addi 3,3,1
	addi 4,4,1
.L27:
	bdz .L28
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	beq 0,.L29
.L28:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L30
	lbz 10,0(3)
	lbz 9,0(4)
	subf 9,9,10
.L30:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE5:
	.size	memcmp,.-memcmp
	.align 2
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	addi 4,4,-1
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L35
.L36:
	lbzu 10,1(4)
	stbu 10,1(9)
.L35:
	bdnz .L36
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE6:
	.size	memcpy,.-memcpy
	.align 2
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	addi 9,5,-1
	addi 10,5,1
	mtctr 10
.L38:
	bdz .L42
	lbzx 10,3,9
	addi 8,9,-1
	cmpw 0,10,4
	beq 0,.L43
	mr 9,8
	b .L38
.L43:
	add 3,3,9
	blr
.L42:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE7:
	.size	memrchr,.-memrchr
	.align 2
	.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L45
.L46:
	stbu 4,1(9)
.L45:
	bdnz .L46
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE8:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	addi 4,4,-1
	b .L48
.L51:
	addi 3,3,1
.L48:
	lbzu 9,1(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L51
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	b .L53
.L56:
	addi 3,3,1
.L53:
	lbz 9,0(3)
	cmpwi 0,9,0
	beqlr 0
	cmpw 0,9,4
	bne 0,.L56
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
.L59:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne 0,.L59
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE11:
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	b .L63
.L65:
	addi 3,3,1
	addi 4,4,1
.L63:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L64
	cmpwi 0,10,0
	bne 0,.L65
.L64:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE12:
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	mr 9,3
	b .L67
.L68:
	addi 9,9,1
.L67:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L68
	subf 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE13:
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	cmpdi 0,5,0
	mtctr 5
	beq 0,.L77
.L71:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L72
	lbz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L72
	bdz .L72
	lbz 10,0(3)
	cmpw 0,10,9
	bne 0,.L72
	addi 3,3,1
	addi 4,4,1
	b .L71
.L72:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
.L70:
	extsw 3,3
	blr
.L77:
	li 3,0
	b .L70
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE14:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	srdi 9,5,1
	addi 9,9,1
	mtctr 9
	cmpdi 0,5,0
	bge 0,.L79
	li 9,1
	mtctr 9
	b .L79
.L80:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
.L79:
	bdnz .L80
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE15:
	.size	swab,.-swab
	.align 2
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE16:
	.size	isalpha,.-isalpha
	.align 2
	.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	rldicl 3,3,0,32
	subfic 3,3,127
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE17:
	.size	isascii,.-isascii
	.align 2
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L86
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
.L85:
	extsw 3,3
	blr
.L86:
	li 3,1
	b .L85
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE18:
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	cmplwi 0,3,31
	ble 0,.L89
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
.L88:
	extsw 3,3
	blr
.L89:
	li 3,1
	b .L88
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-iscntrl
	.align 2
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE20:
	.size	isdigit,.-isdigit
	.align 2
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	addi 3,3,-33
	rldicl 3,3,0,32
	subfic 3,3,93
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE21:
	.size	isgraph,.-isgraph
	.align 2
	.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE22:
	.size	islower,.-islower
	.align 2
	.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	addi 3,3,-32
	rldicl 3,3,0,32
	subfic 3,3,94
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE23:
	.size	isprint,.-isprint
	.align 2
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L96
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
.L95:
	extsw 3,3
	blr
.L96:
	li 3,1
	b .L95
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE24:
	.size	isspace,.-isspace
	.align 2
	.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	addi 3,3,-65
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE25:
	.size	isupper,.-isupper
	.align 2
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	li 9,1
	cmplwi 0,3,31
	ble 0,.L99
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble 0,.L99
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L99
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
.L99:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE26:
	.size	iswcntrl,.-iswcntrl
	.align 2
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE27:
	.size	iswdigit,.-iswdigit
	.align 2
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	cmplwi 0,3,254
	ble 0,.L111
	li 9,1
	cmplwi 0,3,8231
	ble 0,.L106
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L106
	addis 10,3,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	ble 0,.L106
	addis 10,3,0xffff
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt 0,.L106
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
	b .L106
.L111:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
.L106:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE28:
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L114
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
.L113:
	extsw 3,3
	blr
.L114:
	li 3,1
	b .L113
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-iswxdigit
	.align 2
	.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	rldicl 3,3,0,57
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE30:
	.size	toascii,.-toascii
	.align 2
	.globl fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
.LCF31:
0:	addis 2,12,.TOC.-.LCF31@ha
	addi 2,2,.TOC.-.LCF31@l
	.localentry	fdim,.-fdim
	fcmpu 0,1,1
	bunlr 0
	fcmpu 0,2,2
	bun 0,.L120
	fcmpu 0,1,2
	bng 0,.L123
	fsub 1,1,2
	blr
.L120:
	fmr 1,2
	blr
.L123:
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE31:
	.size	fdim,.-fdim
	.align 2
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
.LCF32:
0:	addis 2,12,.TOC.-.LCF32@ha
	addi 2,2,.TOC.-.LCF32@l
	.localentry	fdimf,.-fdimf
	fcmpu 0,1,1
	bunlr 0
	fcmpu 0,2,2
	bun 0,.L128
	fcmpu 0,1,2
	bng 0,.L131
	fsubs 1,1,2
	blr
.L128:
	fmr 1,2
	blr
.L131:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE32:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	fcmpu 0,1,1
	bun 0,.L137
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 2,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L134
	stfd 1,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bgelr 0
	fmr 1,2
	blr
.L134:
	fmr 0,1
	fcmpu 0,1,2
	bnl 0,.L136
	fmr 0,2
.L136:
	fmr 1,0
	blr
.L137:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE33:
	.size	fmax,.-fmax
	.align 2
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	stfs 1,-16(1)
	stfs 2,-12(1)
	fcmpu 0,1,1
	bun 0,.L145
	fcmpu 0,2,2
	bun 0,.L146
	lwz 10,-16(1)
	rlwinm 10,10,0,0,0
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L142
	lwz 9,-16(1)
	cmpwi 0,9,0
	bgelr 0
	fmr 1,2
	blr
.L142:
	lfs 1,-16(1)
	lfs 12,-12(1)
	fcmpu 0,1,12
	bnllr 0
	fmr 1,12
	blr
.L145:
	lfs 1,-12(1)
	blr
.L146:
	lfs 1,-16(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	fmr 0,1
	fmr 1,2
	fmr 11,0
	fcmpu 0,11,11
	bun 0,.L153
	fmr 11,3
	fcmpu 0,11,11
	bun 0,.L154
	fmr 12,0
	stfd 12,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L150
	fmr 11,0
	stfd 11,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bge 0,.L155
	fmr 1,3
	fmr 2,4
	blr
.L150:
	fcmpu 0,0,3
	bne 0,$+8
	fcmpu 0,1,4
	bnl 0,.L151
	fmr 1,3
	fmr 2,4
	blr
.L151:
	fmr 1,0
	blr
.L153:
	fmr 1,3
	fmr 2,4
	blr
.L154:
	fmr 1,0
	blr
.L155:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	fmr 0,1
	fcmpu 0,1,1
	bun 0,.L161
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 2,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L158
	stfd 1,-16(1)
	ld 9,-16(1)
	fmr 1,2
	cmpdi 0,9,0
	bgelr 0
	fmr 1,0
	blr
.L158:
	fmr 1,2
	fcmpu 0,0,2
	bnllr 0
	fmr 1,0
	blr
.L161:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE36:
	.size	fmin,.-fmin
	.align 2
	.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	stfs 1,-16(1)
	stfs 2,-12(1)
	fcmpu 0,1,1
	bun 0,.L169
	fcmpu 0,2,2
	bun 0,.L170
	lwz 10,-16(1)
	rlwinm 10,10,0,0,0
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L166
	lwz 9,-16(1)
	fmr 1,2
	cmpwi 0,9,0
	bgelr 0
	lfs 1,-16(1)
	blr
.L166:
	lfs 1,-12(1)
	lfs 0,-16(1)
	fcmpu 0,0,1
	bnllr 0
	fmr 1,0
	blr
.L169:
	lfs 1,-12(1)
	blr
.L170:
	lfs 1,-16(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE37:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	fmr 13,2
	fmr 12,1
	fmr 0,3
	fmr 1,4
	fmr 11,12
	fcmpu 0,11,11
	bun 0,.L177
	fmr 11,0
	fcmpu 0,11,11
	bun 0,.L178
	fmr 11,12
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	fmr 11,0
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L174
	fmr 11,12
	stfd 11,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bge 0,.L179
	fmr 1,12
	blr
.L174:
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L175
	fmr 1,12
	blr
.L175:
	fmr 2,4
	fmr 1,3
	blr
.L177:
	fmr 2,4
	fmr 1,3
	blr
.L178:
	fmr 1,12
	blr
.L179:
	fmr 2,4
	fmr 1,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-fminl
	.section	.rodata
	.align 3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 2
	.globl l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
.LCF39:
0:	addis 2,12,.TOC.-.LCF39@ha
	addi 2,2,.TOC.-.LCF39@l
	.localentry	l64a,.-l64a
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	addis 8,2,digits@toc@ha
	addi 8,8,digits@toc@l
	b .L181
.L182:
	rldicl 10,3,0,58
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L181:
	cmpwi 0,3,0
	bne 0,.L182
	li 10,0
	stb 10,0(9)
	addis 3,2,s.0@toc@ha
	addi 3,3,s.0@toc@l
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-l64a
	.lcomm	seed,8,8
	.type	seed, @object
	.align 2
	.globl srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
.LCF40:
0:	addis 2,12,.TOC.-.LCF40@ha
	addi 2,2,.TOC.-.LCF40@l
	.localentry	srand,.-srand
	addi 3,3,-1
	rldicl 3,3,0,32
	addis 9,2,seed@toc@ha
	std 3,seed@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE40:
	.size	srand,.-srand
	.align 2
	.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
.LCF41:
0:	addis 2,12,.TOC.-.LCF41@ha
	addi 2,2,.TOC.-.LCF41@l
	.localentry	rand,.-rand
	lis 9,0x4c95
	ori 9,9,0x7f2d
	lis 10,0x5851
	ori 10,10,0xf42d
	rldimi 9,10,32,0
	addis 10,2,seed@toc@ha
	ld 3,seed@toc@l(10)
	mulld 3,3,9
	addi 3,3,1
	std 3,seed@toc@l(10)
	srdi 3,3,33
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE41:
	.size	rand,.-rand
	.align 2
	.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	cmpdi 0,4,0
	beq 0,.L188
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
.L188:
	li 9,0
	std 9,8(3)
	std 9,0(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE42:
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L190
	ld 10,8(3)
	std 10,8(9)
.L190:
	ld 9,8(3)
	cmpdi 0,9,0
	beqlr 0
	ld 10,0(3)
	std 10,0(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE43:
	.size	remque,.-remque
	.align 2
	.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
.LCF44:
0:	addis 2,12,.TOC.-.LCF44@ha
	addi 2,2,.TOC.-.LCF44@l
	.localentry	lsearch,.-lsearch
	mflr 0
	std 0,16(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,24(1)
	mr 26,3
	mr 25,4
	mr 24,5
	mr 28,6
	mr 29,7
	ld 27,0(5)
	mr 30,4
	li 31,0
	b .L193
.L194:
	addi 31,31,1
.L193:
	cmpld 0,31,27
	beq 0,.L198
	mr 4,30
	mr 3,26
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	add 30,30,28
	cmpwi 0,3,0
	bne 0,.L194
	mulld 31,31,28
	add 3,25,31
	b .L195
.L198:
	addi 9,27,1
	std 9,0(24)
	mulld 27,28,27
	mr 5,28
	mr 4,26
	add 3,25,27
	bl memcpy
	nop
.L195:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.long 0
	.byte 0,0,0,1,128,8,0,0
	.cfi_endproc
.LFE44:
	.size	lsearch,.-lsearch
	.align 2
	.globl lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
.LCF45:
0:	addis 2,12,.TOC.-.LCF45@ha
	addi 2,2,.TOC.-.LCF45@l
	.localentry	lfind,.-lfind
	mflr 0
	std 0,16(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,24(1)
	mr 27,3
	mr 25,4
	mr 28,6
	mr 29,7
	ld 26,0(5)
	mr 30,4
	li 31,0
	b .L200
.L201:
	addi 31,31,1
.L200:
	cmpld 0,31,26
	beq 0,.L205
	mr 4,30
	mr 3,27
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	add 30,30,28
	cmpwi 0,3,0
	bne 0,.L201
	mulld 31,31,28
	add 3,25,31
	b .L202
.L205:
	li 3,0
.L202:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
	.long 0
	.byte 0,0,0,1,128,7,0,0
	.cfi_endproc
.LFE45:
	.size	lfind,.-lfind
	.align 2
	.globl abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE46:
	.size	abs,.-abs
	.align 2
	.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
.LCF47:
0:	addis 2,12,.TOC.-.LCF47@ha
	addi 2,2,.TOC.-.LCF47@l
	.localentry	atoi,.-atoi
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,3
	b .L208
.L209:
	addi 31,31,1
.L208:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L209
	lbz 9,0(31)
	cmpwi 0,9,43
	beq 0,.L215
	li 8,0
	cmpwi 0,9,45
	bne 0,.L211
	li 8,1
.L210:
	addi 31,31,1
.L211:
	addi 31,31,-1
	li 10,0
	b .L212
.L215:
	li 8,0
	b .L210
.L213:
	mulli 10,10,10
	lbz 9,0(31)
	addi 9,9,-48
	subf 10,9,10
.L212:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L213
	mr 3,10
	cmpwi 0,8,0
	bne 0,.L214
	neg 3,10
.L214:
	extsw 3,3
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE47:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
.LCF48:
0:	addis 2,12,.TOC.-.LCF48@ha
	addi 2,2,.TOC.-.LCF48@l
	.localentry	atol,.-atol
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,3
	b .L220
.L221:
	addi 31,31,1
.L220:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L221
	lbz 9,0(31)
	cmpwi 0,9,43
	beq 0,.L227
	li 8,0
	cmpwi 0,9,45
	bne 0,.L223
	li 8,1
.L222:
	addi 31,31,1
.L223:
	addi 31,31,-1
	li 10,0
	b .L224
.L227:
	li 8,0
	b .L222
.L225:
	mulli 10,10,10
	lbz 9,0(31)
	addi 9,9,-48
	extsw 9,9
	subf 10,9,10
.L224:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L225
	mr 3,10
	cmpwi 0,8,0
	bne 0,.L226
	neg 3,10
.L226:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE48:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
.LCF49:
0:	addis 2,12,.TOC.-.LCF49@ha
	addi 2,2,.TOC.-.LCF49@l
	.localentry	atoll,.-atoll
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,3
	b .L232
.L233:
	addi 31,31,1
.L232:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L233
	lbz 9,0(31)
	cmpwi 0,9,43
	beq 0,.L239
	li 8,0
	cmpwi 0,9,45
	bne 0,.L235
	li 8,1
.L234:
	addi 31,31,1
.L235:
	addi 31,31,-1
	li 10,0
	b .L236
.L239:
	li 8,0
	b .L234
.L237:
	mulli 10,10,10
	lbz 9,0(31)
	addi 9,9,-48
	extsw 9,9
	subf 10,9,10
.L236:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L237
	mr 3,10
	cmpwi 0,8,0
	bne 0,.L238
	neg 3,10
.L238:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE49:
	.size	atoll,.-atoll
	.align 2
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
.LCF50:
0:	addis 2,12,.TOC.-.LCF50@ha
	addi 2,2,.TOC.-.LCF50@l
	.localentry	bsearch,.-bsearch
	mflr 0
	std 0,16(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,24(1)
	mr 26,3
	mr 27,4
	mr 30,5
	mr 28,6
	mr 29,7
	b .L244
.L252:
	srdi 30,30,1
.L244:
	cmpdi 0,30,0
	beq 0,.L251
	srdi 31,30,1
	mulld 31,31,28
	add 31,27,31
	mr 4,31
	mr 3,26
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	blt 0,.L252
	cmpwi 0,3,0
	ble 0,.L249
	add 27,31,28
	srdi 9,30,1
	addi 30,30,-1
	subf 30,9,30
	b .L244
.L251:
	li 3,0
.L247:
	addi 1,1,80
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.L249:
	.cfi_restore_state
	mr 3,31
	b .L247
	.long 0
	.byte 0,0,0,1,128,6,0,0
	.cfi_endproc
.LFE50:
	.size	bsearch,.-bsearch
	.align 2
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
.LCF51:
0:	addis 2,12,.TOC.-.LCF51@ha
	addi 2,2,.TOC.-.LCF51@l
	.localentry	bsearch_r,.-bsearch_r
	mflr 0
	std 0,16(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,24(1)
	mr 25,3
	mr 27,6
	mr 29,7
	mr 26,8
	mr 30,5
	mr 28,4
	b .L254
.L256:
	srawi 30,30,1
.L254:
	cmpwi 0,30,0
	beq 0,.L260
	srawi 31,30,1
	mulld 31,31,27
	add 31,28,31
	mr 5,26
	mr 4,31
	mr 3,25
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L258
	ble 0,.L256
	add 28,31,27
	addi 30,30,-1
	b .L256
.L260:
	li 3,0
.L255:
	addi 1,1,96
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L258:
	.cfi_restore_state
	mr 3,31
	b .L255
	.long 0
	.byte 0,0,0,1,128,7,0,0
	.cfi_endproc
.LFE51:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	divw 10,3,4
	mullw 9,10,4
	subf 9,9,3
	sldi 9,9,32
	rldicl 3,10,0,32
	or 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE52:
	.size	div,.-div
	.align 2
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE53:
	.size	imaxabs,.-imaxabs
	.align 2
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	mr 9,3
	divd 3,3,4
	mulld 4,3,4
	subf 4,4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-imaxdiv
	.align 2
	.globl labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE55:
	.size	labs,.-labs
	.align 2
	.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	mr 9,3
	divd 3,3,4
	mulld 4,3,4
	subf 4,4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE56:
	.size	ldiv,.-ldiv
	.align 2
	.globl llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE57:
	.size	llabs,.-llabs
	.align 2
	.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	mr 9,3
	divd 3,3,4
	mulld 4,3,4
	subf 4,4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE58:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	b .L269
.L271:
	addi 3,3,4
.L269:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L270
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L271
.L270:
	lwz 9,0(3)
	cmpwi 0,9,0
	bnelr 0
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE59:
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	b .L275
.L277:
	addi 3,3,4
	addi 4,4,4
.L275:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L276
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L276
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L277
.L276:
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt 0,.L278
	lwa 9,0(3)
	lwa 10,0(4)
	subf 9,9,10
	srdi 9,9,63
.L278:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	addi 4,4,-4
	addi 10,3,-4
.L281:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne 0,.L281
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	mr 9,3
	b .L285
.L286:
	addi 9,9,4
.L285:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L286
	subf 3,3,9
	sradi 3,3,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE62:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	addi 9,5,1
	mtctr 9
.L288:
	bdz .L289
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L289
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L289
	lwz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L289
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	b .L288
.L289:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L291
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt 0,.L291
	lwa 9,0(3)
	lwa 10,0(4)
	subf 9,9,10
	srdi 9,9,63
.L291:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	addi 9,5,1
	mtctr 9
	b .L297
.L299:
	addi 5,5,-1
	addi 3,3,4
.L297:
	bdz .L298
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L299
.L298:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	addi 9,5,1
	mtctr 9
	b .L305
.L307:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L305:
	bdz .L306
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq 0,.L307
.L306:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L308
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt 0,.L308
	lwa 9,0(3)
	lwa 10,0(4)
	subf 9,9,10
	srdi 9,9,63
.L308:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L314
.L315:
	lwzu 10,4(4)
	stwu 10,4(9)
.L314:
	addi 5,5,-1
	bdnz .L315
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	cmpld 0,3,4
	beqlr 0
	subf 9,4,3
	sldi 10,5,2
	cmpld 0,9,10
	blt 0,.L318
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L319
.L318:
	sldi 5,5,2
	add 4,4,5
	add 9,3,5
	srdi 5,5,2
	addi 10,5,1
	mtctr 10
	b .L320
.L321:
	lwzu 10,-4(4)
	stwu 10,-4(9)
.L320:
	bdnz .L321
	blr
.L322:
	lwzu 10,4(4)
	stwu 10,4(9)
.L319:
	addi 5,5,-1
	bdnz .L322
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-wmemmove
	.align 2
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L324
.L325:
	stwu 4,4(9)
.L324:
	addi 5,5,-1
	bdnz .L325
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE68:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	cmpld 0,3,4
	bge 0,.L327
	add 3,3,5
	add 4,4,5
	addi 9,5,1
	mtctr 9
	b .L328
.L329:
	lbzu 9,-1(3)
	stbu 9,-1(4)
.L328:
	bdnz .L329
	blr
.L327:
	cmpld 0,3,4
	beqlr 0
	addi 3,3,-1
	addi 4,4,-1
	addi 9,5,1
	mtctr 9
	b .L331
.L332:
	lbzu 9,1(3)
	stbu 9,1(4)
.L331:
	bdnz .L332
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE69:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE70:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE71:
	.size	rotr64,.-rotr64
	.align 2
	.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	rotlw 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE72:
	.size	rotl32,.-rotl32
	.align 2
	.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	subfic 4,4,32
	rotlw 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE73:
	.size	rotr32,.-rotr32
	.align 2
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	sld 9,3,4
	subfic 4,4,64
	srd 3,3,4
	or 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE74:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	srd 9,3,4
	subfic 4,4,64
	sld 3,3,4
	or 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE75:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	slw 9,3,4
	subfic 4,4,16
	srw 3,3,4
	or 3,9,3
	rlwinm 3,3,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE76:
	.size	rotl16,.-rotl16
	.align 2
	.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	srw 9,3,4
	subfic 4,4,16
	slw 3,3,4
	or 3,9,3
	rlwinm 3,3,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE77:
	.size	rotr16,.-rotr16
	.align 2
	.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	slw 9,3,4
	subfic 4,4,8
	srw 3,3,4
	or 3,9,3
	rlwinm 3,3,0,0xff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE78:
	.size	rotl8,.-rotl8
	.align 2
	.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	srw 9,3,4
	subfic 4,4,8
	slw 3,3,4
	or 3,9,3
	rlwinm 3,3,0,0xff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE79:
	.size	rotr8,.-rotr8
	.align 2
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	srdi 9,3,8
	rldic 3,3,8,48
	or 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE80:
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	srdi 10,3,24
	rlwinm 9,3,24,16,23
	rlwinm 8,3,8,8,15
	slwi 3,3,24
	or 3,3,8
	or 3,3,10
	or 3,3,9
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE81:
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	srdi 10,3,56
	rldicr 9,3,8,7
	srdi 9,9,48
	or 9,9,10
	rldicr 10,3,16,7
	srdi 10,10,40
	or 9,9,10
	rldicr 10,3,24,7
	srdi 10,10,32
	or 9,9,10
	rlwinm 10,3,0,0,7
	sldi 10,10,8
	or 9,9,10
	rlwinm 10,3,0,8,15
	sldi 10,10,24
	or 9,9,10
	rlwinm 10,3,0,16,23
	sldi 10,10,40
	or 9,9,10
	sldi 3,3,56
	or 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE82:
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	li 9,0
	li 10,33
	mtctr 10
.L347:
	bdz .L351
	srw 10,3,9
	andi. 10,10,0x1
	bne 0,.L352
	addi 9,9,1
	b .L347
.L352:
	addi 3,9,1
.L349:
	extsw 3,3
	blr
.L351:
	li 3,0
	b .L349
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE83:
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mr. 9,3
	beq 0,.L357
	li 3,1
	b .L355
.L356:
	srawi 9,9,1
	addi 3,3,1
.L355:
	andi. 10,9,0x1
	beq 0,.L356
.L354:
	extsw 3,3
	blr
.L357:
	li 3,0
	b .L354
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-libiberty_ffs
	.align 2
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
.LCF85:
0:	addis 2,12,.TOC.-.LCF85@ha
	addi 2,2,.TOC.-.LCF85@l
	.localentry	gl_isinff,.-gl_isinff
	li 3,1
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L359
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L359:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE85:
	.size	gl_isinff,.-gl_isinff
	.align 2
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
.LCF86:
0:	addis 2,12,.TOC.-.LCF86@ha
	addi 2,2,.TOC.-.LCF86@l
	.localentry	gl_isinfd,.-gl_isinfd
	li 3,1
	addis 9,2,.LC10@toc@ha
	lfd 0,.LC10@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L362
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L362:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE86:
	.size	gl_isinfd,.-gl_isinfd
	.align 2
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
.LCF87:
0:	addis 2,12,.TOC.-.LCF87@ha
	addi 2,2,.TOC.-.LCF87@l
	.localentry	gl_isinfl,.-gl_isinfl
	li 3,1
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L365
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L365:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-gl_isinfl
	.align 2
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
.LCF88:
0:	addis 2,12,.TOC.-.LCF88@ha
	addi 2,2,.TOC.-.LCF88@l
	.localentry	_Qp_itoq,.-_Qp_itoq
	std 4,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	stfd 0,0(3)
	stfd 1,8(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq,.-_Qp_itoq
	.align 2
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
.LCF89:
0:	addis 2,12,.TOC.-.LCF89@ha
	addi 2,2,.TOC.-.LCF89@l
	.localentry	ldexpf,.-ldexpf
	fcmpu 0,1,1
	bunlr 0
	fadds 0,1,1
	fcmpu 0,1,0
	beqlr 0
	cmpwi 0,4,0
	blt 0,.L374
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
	b .L372
.L374:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L372
.L371:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmuls 0,0,0
.L372:
	andi. 9,4,0x1
	beq 0,.L371
	fmuls 1,1,0
	b .L371
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-ldexpf
	.align 2
	.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
.LCF90:
0:	addis 2,12,.TOC.-.LCF90@ha
	addi 2,2,.TOC.-.LCF90@l
	.localentry	ldexp,.-ldexp
	fcmpu 0,1,1
	bunlr 0
	fadd 0,1,1
	fcmpu 0,1,0
	beqlr 0
	cmpwi 0,4,0
	blt 0,.L381
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	b .L379
.L381:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L379
.L378:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmul 0,0,0
.L379:
	andi. 9,4,0x1
	beq 0,.L378
	fmul 1,1,0
	b .L378
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE90:
	.size	ldexp,.-ldexp
	.align 2
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
.LCF91:
0:	addis 2,12,.TOC.-.LCF91@ha
	addi 2,2,.TOC.-.LCF91@l
	.localentry	ldexpl,.-ldexpl
	stfd 28,-32(1)
	stfd 29,-24(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 29,2
	fmr 28,1
	fmr 0,28
	fcmpu 0,0,0
	bun 0,.L383
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	std 31,40(1)
	.cfi_offset 31, -40
	mr 31,5
	fmr 3,1
	fmr 4,2
	bl __gcc_qadd
	nop
	fcmpu 0,28,1
	bne 0,$+8
	fcmpu 0,29,2
	beq 0,.L389
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	cmpwi 0,31,0
	blt 0,.L391
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L386
.L391:
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L386
.L385:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L390
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L386:
	andi. 9,31,0x1
	beq 0,.L385
	fmr 3,30
	fmr 4,31
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L385
.L389:
	.cfi_restore 62
	.cfi_restore 63
	ld 31,40(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L383:
	fmr 1,28
	fmr 2,29
	addi 1,1,80
	.cfi_def_cfa_offset 0
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L390:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
	ld 31,40(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
	b .L383
	.long 0
	.byte 0,0,2,1,132,1,0,0
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	addi 4,4,-1
	addi 10,3,-1
	addi 9,5,1
	mtctr 9
	b .L393
.L394:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
.L393:
	bdnz .L394
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE92:
	.size	memxor,.-memxor
	.align 2
	.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
.LCF93:
0:	addis 2,12,.TOC.-.LCF93@ha
	addi 2,2,.TOC.-.LCF93@l
	.localentry	strncat,.-strncat
	mflr 0
	std 0,16(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 29,3
	mr 31,4
	mr 30,5
	bl strlen
	add 3,29,3
	addi 31,31,-1
	addi 9,30,1
	mtctr 9
	b .L396
.L398:
	addi 3,3,1
	addi 30,30,-1
.L396:
	bdz .L397
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L398
.L397:
	cmpdi 0,30,0
	bne 0,.L399
	li 9,0
	stb 9,0(3)
.L399:
	mr 3,29
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.long 0
	.byte 0,0,0,1,128,3,0,0
	.cfi_endproc
.LFE93:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	mr 9,3
	li 3,0
	addi 10,4,1
	mtctr 10
.L404:
	bdz .L405
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr 0
	addi 3,3,1
	b .L404
.L405:
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE94:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
.L410:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L415
	addi 9,4,-1
.L413:
	lbzu 10,1(9)
	cmpwi 0,10,0
	beq 0,.L416
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	bne 0,.L413
	blr
.L416:
	addi 3,3,1
	b .L410
.L415:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mr 9,3
	li 3,0
	b .L419
.L418:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	beqlr 0
.L419:
	lbz 10,0(9)
	cmpw 0,10,4
	bne 0,.L418
	mr 3,9
	b .L418
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE96:
	.size	strrchr,.-strrchr
	.align 2
	.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
.LCF97:
0:	addis 2,12,.TOC.-.LCF97@ha
	addi 2,2,.TOC.-.LCF97@l
	.localentry	strstr,.-strstr
	mflr 0
	std 0,16(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	mr 30,4
	mr 3,4
	bl strlen
	mr. 29,3
	beq 0,.L427
	std 28,32(1)
	.cfi_offset 28, -32
	lbz 28,0(30)
.L425:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq 0,.L430
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L428
	addi 31,31,1
	b .L425
.L430:
	ld 28,32(1)
	.cfi_restore 28
	b .L424
.L427:
	mr 3,31
.L424:
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L428:
	.cfi_def_cfa_offset 64
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	mr 3,31
	ld 28,32(1)
	.cfi_restore 28
	b .L424
	.long 0
	.byte 0,0,0,1,128,4,0,0
	.cfi_endproc
.LFE97:
	.size	strstr,.-strstr
	.align 2
	.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
.LCF98:
0:	addis 2,12,.TOC.-.LCF98@ha
	addi 2,2,.TOC.-.LCF98@l
	.localentry	copysign,.-copysign
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L444
.L432:
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	b .L434
.L444:
	fcmpu 0,2,0
	bng 0,.L432
.L434:
	fneg 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE98:
	.size	copysign,.-copysign
	.align 2
	.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
.LCF99:
0:	addis 2,12,.TOC.-.LCF99@ha
	addi 2,2,.TOC.-.LCF99@l
	.localentry	memmem,.-memmem
	std 29,-24(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -24
	subf 29,6,4
	add 29,3,29
	cmpdi 0,6,0
	beq 0,.L446
	std 30,64(1)
	.cfi_offset 30, -16
	mr 30,5
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne 0,.L451
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	std 27,40(1)
	.cfi_offset 27, -40
	std 28,48(1)
	.cfi_offset 28, -32
	std 31,72(1)
	.cfi_offset 31, -8
	mr 31,3
	addi 27,5,1
	addi 28,6,-1
	b .L447
.L448:
	addi 31,31,1
.L447:
	cmpld 0,31,29
	bgt 0,.L454
	lbz 10,0(31)
	lbz 9,0(30)
	cmpw 0,10,9
	bne 0,.L448
	mr 5,28
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne 0,.L448
	mr 3,31
	ld 27,40(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,48(1)
	.cfi_restore 28
	ld 30,64(1)
	.cfi_restore 30
	ld 31,72(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
	b .L446
.L454:
	.cfi_restore_state
	li 3,0
	ld 27,40(1)
	.cfi_restore 27
	ld 28,48(1)
	.cfi_restore 28
	ld 30,64(1)
	.cfi_restore 30
	ld 31,72(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L446:
	addi 1,1,80
	.cfi_def_cfa_offset 0
	ld 29,-24(1)
	.cfi_restore 29
	blr
.L451:
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	li 3,0
	ld 30,64(1)
	.cfi_restore 30
	b .L446
	.long 0
	.byte 0,0,0,1,128,5,0,0
	.cfi_endproc
.LFE99:
	.size	memmem,.-memmem
	.align 2
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
.LCF100:
0:	addis 2,12,.TOC.-.LCF100@ha
	addi 2,2,.TOC.-.LCF100@l
	.localentry	mempcpy,.-mempcpy
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,5
	bl memcpy
	nop
	add 3,3,31
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE100:
	.size	mempcpy,.-mempcpy
	.align 2
	.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
.LCF101:
0:	addis 2,12,.TOC.-.LCF101@ha
	addi 2,2,.TOC.-.LCF101@l
	.localentry	frexp,.-frexp
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	li 10,0
	fcmpu 0,1,0
	blt 0,.L478
.L458:
	li 9,0
	addis 8,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(8)
	fcmpu 0,1,0
	cror 2,0,3
	fmr 12,0
	bne 0,.L460
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	li 9,0
	fcmpu 0,1,0
	bnl 0,.L463
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	li 9,0
	fcmpu 0,1,0
	beq 0,.L463
	li 9,0
	addis 8,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(8)
	b .L465
.L478:
	fneg 1,1
	li 10,1
	b .L458
.L462:
	addi 9,9,1
	addis 8,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(8)
	fmul 1,1,0
.L460:
	fcmpu 0,1,12
	cror 2,1,2
	beq 0,.L462
.L463:
	stw 9,0(4)
	cmpwi 0,10,0
	beqlr 0
	fneg 1,1
	blr
.L466:
	addi 9,9,-1
	fadd 1,1,1
.L465:
	fcmpu 0,1,0
	blt 0,.L466
	b .L463
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE101:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mr 10,3
	li 3,0
	b .L480
.L483:
	rldicl 9,10,0,63
	neg 9,9
	and 9,4,9
	srdi 10,10,1
	add 3,3,9
	sldi 4,4,1
.L480:
	cmpdi 0,10,0
	bne 0,.L483
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	li 9,1
	b .L485
.L489:
	rldic 4,4,1,32
	slwi 9,9,1
.L485:
	cmplw 0,4,3
	bge 0,.L495
	cmpwi 0,9,0
	beq 0,.L493
	cmpwi 0,4,0
	bge 0,.L489
	li 10,0
	b .L487
.L495:
	li 10,0
	b .L487
.L493:
	li 10,0
	b .L487
.L490:
	srwi 9,9,1
	srdi 4,4,1
.L487:
	cmpwi 0,9,0
	beq 0,.L496
	cmplw 0,3,4
	blt 0,.L490
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L490
.L496:
	cmpdi 0,5,0
	bne 0,.L492
	mr 3,10
.L492:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	cmpdi 0,3,0
	beq 0,.L499
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
.L498:
	extsw 3,3
	blr
.L499:
	li 3,7
	b .L498
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	sradi 9,3,63
	xor. 9,9,3
	li 3,63
	beq 0,.L501
	cntlzd 9,9
	addi 3,9,-1
.L501:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	li 10,0
	b .L504
.L505:
	rlwinm 9,3,0,31,31
	neg 9,9
	and 9,9,4
	srdi 3,3,1
	add 10,9,10
	rldic 4,4,1,32
.L504:
	cmpdi 0,3,0
	bne 0,.L505
	rldicl 3,10,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	srwi 9,5,3
	rlwinm 7,5,0,0,28
	cmpld 0,3,4
	bge 0,.L507
.L509:
	addi 8,4,-8
	addi 10,3,-8
	rldicl 9,9,0,35
	addi 9,9,1
	mtctr 9
	b .L508
.L507:
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L509
	addi 9,5,1
	mtctr 9
	b .L510
.L511:
	ldu 9,8(8)
	stdu 9,8(10)
.L508:
	bdnz .L511
	rldicl 10,7,0,32
	subf 9,7,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,7,5
	bgt 0,.L516
	cmpwi 0,5,0
	bne 0,.L512
.L516:
	li 9,1
	mtctr 9
	b .L512
.L513:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L512:
	bdnz .L513
	blr
.L515:
	lbzx 9,4,5
	stbx 9,3,5
.L510:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L515
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	srwi 9,5,1
	cmpld 0,3,4
	bge 0,.L518
.L520:
	addi 8,4,-2
	addi 10,3,-2
	rldicl 9,9,0,33
	addi 9,9,1
	mtctr 9
	b .L519
.L518:
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L520
	addi 9,5,1
	mtctr 9
	b .L521
.L522:
	lhzu 9,2(8)
	sthu 9,2(10)
.L519:
	bdnz .L522
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L524:
	lbzx 9,4,5
	stbx 9,3,5
.L521:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L524
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	srwi 9,5,2
	rlwinm 7,5,0,0,29
	cmpld 0,3,4
	bge 0,.L526
.L528:
	addi 8,4,-4
	addi 10,3,-4
	rldicl 9,9,0,34
	addi 9,9,1
	mtctr 9
	b .L527
.L526:
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L528
	addi 9,5,1
	mtctr 9
	b .L529
.L530:
	lwzu 9,4(8)
	stwu 9,4(10)
.L527:
	bdnz .L530
	rldicl 10,7,0,32
	subf 9,7,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,7,5
	bgt 0,.L535
	cmpwi 0,5,0
	bne 0,.L531
.L535:
	li 9,1
	mtctr 9
	b .L531
.L532:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L531:
	bdnz .L532
	blr
.L534:
	lbzx 9,4,5
	stbx 9,3,5
.L529:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L534
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-__cmovw
	.align 2
	.globl __modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	divw 9,3,4
	mullw 9,9,4
	subf 3,9,3
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE110:
	.size	__modi,.-__modi
	.align 2
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	std 3,-16(1)
	lfd 1,-16(1)
	fcfid 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE111:
	.size	__uitod,.-__uitod
	.align 2
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	std 3,-16(1)
	lfd 1,-16(1)
	fcfid 0,1
	frsp 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE112:
	.size	__uitof,.-__uitof
	.align 2
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	cmpdi 0,3,0
	blt 0,.L542
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L542:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	fadd 1,1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-__ulltod
	.align 2
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	cmpdi 0,3,0
	blt 0,.L545
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L546
	mr 9,3
.L546:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L545:
	rldicl 10,3,0,63
	srdi 3,3,1
	or 10,10,3
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L547
	mr 9,10
.L547:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	fadds 1,1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-__ulltof
	.align 2
	.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	divwu 9,3,4
	mullw 9,9,4
	subf 3,9,3
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE115:
	.size	__umodi,.-__umodi
	.align 2
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	li 10,0
	li 9,17
	mtctr 9
.L550:
	bdz .L551
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L551
	addi 10,10,1
	b .L550
.L551:
	extsw 3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	li 9,0
	li 10,17
	mtctr 10
.L554:
	bdz .L555
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L555
	addi 9,9,1
	b .L554
.L555:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE117:
	.size	__ctzhi2,.-__ctzhi2
	.align 2
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
.LCF118:
0:	addis 2,12,.TOC.-.LCF118@ha
	addi 2,2,.TOC.-.LCF118@l
	.localentry	__fixunssfsi,.-__fixunssfsi
	addis 9,2,.LC37@toc@ha
	lfs 0,.LC37@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L563
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L563:
	fsubs 1,1,0
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	addis 3,3,0x1
	addi 3,3,-32768
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	li 8,0
	li 10,0
	li 9,17
	mtctr 9
	b .L565
.L566:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	addi 10,10,1
	add 8,9,8
.L565:
	bdnz .L566
	rldicl 3,8,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-__parityhi2
	.align 2
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	li 8,0
	li 10,0
	li 9,17
	mtctr 9
	b .L568
.L569:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	addi 10,10,1
	add 8,9,8
.L568:
	bdnz .L569
	extsw 3,8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	li 10,0
	b .L571
.L572:
	rlwinm 9,3,0,31,31
	neg 9,9
	and 9,9,4
	srdi 3,3,1
	add 10,9,10
	rldic 4,4,1,32
.L571:
	cmpdi 0,3,0
	bne 0,.L572
	rldicl 3,10,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr. 10,3
	beq 0,.L577
	li 3,0
	b .L575
.L576:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	srdi 4,4,1
	add 3,9,3
	rldic 10,10,1,32
.L575:
	cmpdi 0,4,0
	bne 0,.L576
.L574:
	rldicl 3,3,0,32
	blr
.L577:
	li 3,0
	b .L574
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	li 9,1
	b .L579
.L583:
	rldic 4,4,1,32
	slwi 9,9,1
.L579:
	cmplw 0,4,3
	bge 0,.L589
	cmpwi 0,9,0
	beq 0,.L587
	cmpwi 0,4,0
	bge 0,.L583
	li 10,0
	b .L581
.L589:
	li 10,0
	b .L581
.L587:
	li 10,0
	b .L581
.L584:
	srwi 9,9,1
	srdi 4,4,1
.L581:
	cmpwi 0,9,0
	beq 0,.L590
	cmplw 0,3,4
	blt 0,.L584
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L584
.L590:
	cmpdi 0,5,0
	bne 0,.L586
	mr 3,10
.L586:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	li 3,-1
	fcmpu 0,1,2
	blt 0,.L592
	mfcr 3
	rlwinm 3,3,2,1
.L592:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	li 3,-1
	fcmpu 0,1,2
	blt 0,.L595
	mfcr 3
	rlwinm 3,3,2,1
.L595:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mulld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll,.-__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mulld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull,.-__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	li 7,0
	cmpwi 0,4,0
	blt 0,.L607
.L600:
	li 8,33
	li 10,0
	b .L601
.L607:
	neg 4,4
	extsw 4,4
	li 7,1
	b .L600
.L603:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,3
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
	add 10,10,9
.L601:
	cmpdi 0,4,0
	beq 0,.L602
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne 0,.L603
.L602:
	mr 3,10
	cmpwi 0,7,0
	beq 0,.L604
	neg 3,10
.L604:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE128:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
.LCF129:
0:	addis 2,12,.TOC.-.LCF129@ha
	addi 2,2,.TOC.-.LCF129@l
	.localentry	__divsi3,.-__divsi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	li 31,0
	cmpdi 0,3,0
	blt 0,.L614
.L609:
	cmpdi 0,4,0
	blt 0,.L615
.L610:
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq 0,.L611
	neg 3,3
.L611:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L614:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L609
.L615:
	neg 4,4
	xori 31,31,0x1
	b .L610
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
.LCF130:
0:	addis 2,12,.TOC.-.LCF130@ha
	addi 2,2,.TOC.-.LCF130@l
	.localentry	__modsi3,.-__modsi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	li 31,0
	cmpdi 0,3,0
	blt 0,.L621
.L617:
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq 0,.L618
	neg 3,3
.L618:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L621:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L617
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	li 9,1
	li 10,17
	mtctr 10
.L623:
	cmplw 0,4,3
	bge 0,.L635
	bdz .L634
	andi. 10,4,0x8000
	bne 0,.L636
	rldic 4,4,1,48
	slwi 9,9,1
	b .L623
.L635:
	li 10,0
	b .L625
.L634:
	li 10,0
	b .L625
.L636:
	li 10,0
	b .L625
.L628:
	rldicl 9,9,63,49
	srdi 4,4,1
.L625:
	andi. 8,9,0xffff
	beq 0,.L637
	cmplw 0,3,4
	blt 0,.L628
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
	b .L628
.L637:
	cmpdi 0,5,0
	bne 0,.L630
	mr 3,10
.L630:
	rlwinm 3,3,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	li 9,1
	b .L639
.L643:
	sldi 4,4,1
	sldi 9,9,1
.L639:
	cmpld 0,4,3
	bge 0,.L649
	cmpdi 0,9,0
	beq 0,.L647
	andis. 10,4,0x8000
	beq 0,.L643
	li 10,0
	b .L641
.L649:
	li 10,0
	b .L641
.L647:
	li 10,0
	b .L641
.L644:
	srdi 9,9,1
	srdi 4,4,1
.L641:
	cmpdi 0,9,0
	beq 0,.L650
	cmpld 0,3,4
	blt 0,.L644
	subf 3,4,3
	or 10,10,9
	b .L644
.L650:
	cmpdi 0,5,0
	bnelr 0
	mr 3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L652
	addi 4,4,-32
	slw 3,3,4
	sldi 3,3,32
	blr
.L652:
	cmpdi 0,4,0
	beqlr 0
	sradi 10,3,32
	slw 10,10,4
	subfic 3,4,32
	srw 3,9,3
	or 3,3,10
	sldi 3,3,32
	slw 9,9,4
	or 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L657
	li 10,0
	addi 5,5,-64
	sld 4,3,5
.L658:
	mr 3,10
	blr
.L657:
	cmpdi 0,5,0
	beqlr 0
	sld 10,3,5
	sld 4,4,5
	subfic 5,5,64
	srd 9,3,5
	or 4,9,4
	b .L658
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-__ashlti3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L662
	sradi 9,3,32
	srawi 3,9,31
	addi 4,4,-32
	sraw 9,9,4
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L662:
	cmpdi 0,4,0
	beqlr 0
	sradi 10,3,32
	sraw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 4,9,4
	or 10,10,4
	rldicl 10,10,0,32
	sldi 3,3,32
	or 3,3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L667
	sradi 10,4,63
	addi 5,5,-64
	srad 3,4,5
.L668:
	mr 4,10
	blr
.L667:
	cmpdi 0,5,0
	beqlr 0
	srad 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L668
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-__ashrti3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	srdi 4,3,40
	rlwinm 4,4,0,16,23
	srdi 5,3,24
	rlwinm 5,5,0,8,15
	srdi 6,3,8
	rlwinm 6,6,0,0,7
	rldicr 7,3,32,7
	srdi 7,7,24
	rldicr 8,3,40,7
	srdi 8,8,16
	rldicr 10,3,48,7
	srdi 10,10,8
	srdi 9,3,56
	rldimi 9,3,56,0
	or 9,9,4
	or 9,9,5
	or 9,9,6
	or 9,9,7
	or 9,9,8
	or 3,9,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE137:
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	mr 10,3
	rlwinm 7,3,24,16,23
	rlwinm 8,3,8,8,15
	srwi 3,3,24
	mr 9,3
	rlwimi 9,10,24,0,31-24
	or 3,9,7
	or 3,3,8
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE138:
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	rldicl 9,3,0,32
	addis 9,9,0xffff
	srdi 9,9,63
	slwi 9,9,4
	subfic 10,9,16
	srw 3,3,10
	rlwinm 10,3,0,16,23
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	subfic 8,10,8
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,24,27
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	subfic 8,10,4
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,28,29
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	subfic 8,10,2
	srw 3,3,8
	add 9,9,10
	rldicl 10,3,63,63
	subfic 3,3,2
	addi 10,10,-1
	and 10,10,3
	add 3,9,10
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	cntlzd 9,4
	srdi 9,9,6
	neg 8,9
	addi 10,9,-1
	and 4,10,4
	and 8,8,3
	or 4,4,8
	cntlzd 4,4
	slwi 3,9,6
	add 3,3,4
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-__clzti2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt 0,.L677
	mr 8,10
	mr 10,9
	li 9,2
	cmpw 0,8,10
	bgt 0,.L676
	li 9,0
	cmplw 0,3,4
	blt 0,.L676
	li 9,2
	bgt 0,.L676
	li 9,1
	b .L676
.L677:
	li 9,0
.L676:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE141:
	.size	__cmpdi2,.-__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
.LCF142:
0:	addis 2,12,.TOC.-.LCF142@ha
	addi 2,2,.TOC.-.LCF142@l
	.localentry	__aeabi_lcmp,.-__aeabi_lcmp
	mflr 0
	std 0,16(1)
	stdu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_offset 65, 16
	bl __cmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,1,32
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	li 9,0
	cmpd 0,4,6
	blt 0,.L684
	li 9,2
	bgt 0,.L684
	li 9,0
	cmpld 0,3,5
	blt 0,.L684
	subfc 5,3,5
	subfe 9,9,9
	subfic 9,9,1
.L684:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-__cmpti2
	.align 2
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	rlwinm 10,3,0,16,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,4
	srw 3,3,10
	rlwinm 9,3,0,24,31
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,3
	srw 3,3,9
	add 10,10,9
	rlwinm 9,3,0,28,31
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,2
	srw 3,3,9
	add 10,10,9
	rlwinm 9,3,0,30,31
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,1
	srw 3,3,9
	rlwinm 3,3,0,30,31
	add 10,10,9
	not 8,3
	rlwinm 8,8,0,31,31
	srwi 9,3,1
	subfic 9,9,2
	neg 8,8
	and 9,9,8
	add 3,10,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE144:
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	cntlzd 10,3
	srdi 10,10,6
	neg 9,10
	and 4,9,4
	andc 3,3,9
	or 3,3,4
	neg 9,3
	and 9,3,9
	cntlzd 9,9
	subfic 9,9,63
	slwi 3,10,6
	add 3,3,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-__ctzti2
	.align 2
	.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	mr. 9,3
	bne 0,.L692
	cmpdi 0,4,0
	beq 0,.L693
	neg 3,4
	and 3,3,4
	cntlzd 3,3
	subfic 3,3,128
	b .L693
.L692:
	neg 3,9
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
.L693:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-__ffsti2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L696
	srdi 3,3,32
	addi 4,4,-32
	srw 3,3,4
	blr
.L696:
	cmpdi 0,4,0
	beqlr 0
	srdi 10,3,32
	srw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 10,10,9
	rldicl 10,10,0,32
	sldi 3,3,32
	or 3,3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L701
	li 10,0
	addi 5,5,-64
	srd 3,4,5
.L702:
	mr 4,10
	blr
.L701:
	cmpdi 0,5,0
	beqlr 0
	srd 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L702
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-__lshrti3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	mr 10,3
	rlwinm 8,3,0,16,31
	rlwinm 7,4,0,16,31
	mullw 3,8,7
	srwi 9,3,16
	srwi 10,10,16
	mullw 7,10,7
	add 9,9,7
	rlwimi 3,9,16,0,31-16
	rldicl 7,9,48,48
	srwi 9,3,16
	srwi 4,4,16
	mullw 8,8,4
	add 9,9,8
	rlwimi 3,9,16,0,31-16
	srwi 9,9,16
	add 9,9,7
	sldi 9,9,32
	rldicl 3,3,0,32
	or 3,3,9
	sradi 9,3,32
	mullw 10,10,4
	add 10,10,9
	rldimi 3,10,32,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE149:
	.size	__muldsi3,.-__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
.LCF150:
0:	addis 2,12,.TOC.-.LCF150@ha
	addi 2,2,.TOC.-.LCF150@l
	.localentry	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 30,3
	mr 31,4
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __muldsi3
	sradi 10,3,32
	sradi 9,30,32
	mullw 9,9,31
	sradi 31,31,32
	mullw 31,31,30
	add 9,9,31
	add 9,9,10
	rldimi 3,9,32,0
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	rldicl 7,3,0,32
	rldicl 6,4,0,32
	mulld 8,7,6
	srdi 10,8,32
	srdi 9,3,32
	mulld 6,9,6
	add 10,10,6
	rldimi 8,10,32,0
	mr 3,8
	srdi 6,10,32
	srdi 10,8,32
	srdi 8,4,32
	mulld 7,7,8
	add 10,10,7
	srdi 4,10,32
	add 4,4,6
	mulld 9,9,8
	rldimi 3,10,32,0
	add 4,9,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE151:
	.size	__mulddi3,.-__mulddi3
	.align 2
	.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
.LCF152:
0:	addis 2,12,.TOC.-.LCF152@ha
	addi 2,2,.TOC.-.LCF152@l
	.localentry	__multi3,.-__multi3
	mflr 0
	std 0,16(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 29,3
	mr 28,4
	mr 31,5
	mr 30,6
	mr 4,5
	bl __mulddi3
	mulld 31,31,28
	mulld 30,30,29
	add 31,31,30
	add 4,31,4
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.long 0
	.byte 0,0,0,1,128,4,0,0
	.cfi_endproc
.LFE152:
	.size	__multi3,.-__multi3
	.align 2
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	neg 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE153:
	.size	__negdi2,.-__negdi2
	.align 2
	.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	subfic 3,3,0
	subfze 4,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE154:
	.size	__negti2,.-__negti2
	.align 2
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	srdi 9,3,32
	xor 3,9,3
	srwi 9,3,16
	xor 3,3,9
	srwi 9,3,8
	xor 3,3,9
	srwi 9,3,4
	xor 3,3,9
	rlwinm 3,3,0,28,31
	li 9,27030
	sraw 3,9,3
	rldicl 3,3,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE155:
	.size	__paritydi2,.-__paritydi2
	.align 2
	.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	xor 4,4,3
	sradi 9,4,32
	xor 4,4,9
	srwi 9,4,16
	xor 4,4,9
	srwi 9,4,8
	xor 4,4,9
	srwi 9,4,4
	xor 4,4,9
	rlwinm 4,4,0,28,31
	li 3,27030
	sraw 3,3,4
	rldicl 3,3,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-__parityti2
	.align 2
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	srwi 9,3,16
	xor 3,9,3
	srwi 9,3,8
	xor 3,3,9
	srwi 9,3,4
	xor 3,3,9
	rlwinm 3,3,0,28,31
	li 9,27030
	sraw 3,9,3
	rldicl 3,3,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE157:
	.size	__paritysi2,.-__paritysi2
	.align 2
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	srdi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	rldimi 10,10,32,0
	and 9,9,10
	subf 3,9,3
	srdi 10,3,2
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 10,10,9
	and 3,3,9
	add 3,10,3
	srdi 9,3,4
	add 3,9,3
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 3,3,9
	srdi 9,3,32
	add 9,9,3
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rldicl 3,3,0,57
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE158:
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	srwi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	and 9,9,10
	subf 3,9,3
	srwi 9,3,2
	lis 10,0x3333
	ori 10,10,0x3333
	and 9,9,10
	and 3,3,10
	add 3,9,3
	srwi 9,3,4
	add 3,9,3
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 3,3,9
	srwi 9,3,16
	add 3,3,9
	srwi 9,3,8
	add 3,9,3
	rldicl 3,3,0,58
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE159:
	.size	__popcountsi2,.-__popcountsi2
	.align 2
	.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	sldi 5,4,63
	srdi 6,3,1
	or 6,5,6
	srdi 7,4,1
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	and 6,6,5
	and 7,7,5
	subfc 3,6,3
	subfe 11,7,4
	sldi 7,11,62
	srdi 8,3,2
	or 8,7,8
	srdi 9,11,2
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	and 8,8,7
	and 9,9,7
	and 30,7,3
	and 31,7,11
	addc 10,8,30
	adde 11,9,31
	srdi 9,10,4
	rldimi 9,11,60,0
	srdi 8,11,4
	addc 28,9,10
	adde 29,8,11
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 10,28,9
	and 11,29,9
	add 10,11,10
	srdi 9,10,32
	add 9,9,10
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.long 0
	.byte 0,0,0,0,0,8,0,0
	.cfi_endproc
.LFE160:
	.size	__popcountti2,.-__popcountti2
	.align 2
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
.LCF161:
0:	addis 2,12,.TOC.-.LCF161@ha
	addi 2,2,.TOC.-.LCF161@l
	.localentry	__powidf2,.-__powidf2
	srwi 10,4,31
	addis 9,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(9)
	b .L723
.L721:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L722
	fmul 1,1,1
.L723:
	andi. 9,4,0x1
	beq 0,.L721
	fmul 0,0,1
	b .L721
.L722:
	fmr 1,0
	cmpwi 0,10,0
	beqlr 0
	addis 9,2,.LC32@toc@ha
	lfd 1,.LC32@toc@l(9)
	fdiv 1,1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-__powidf2
	.align 2
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
.LCF162:
0:	addis 2,12,.TOC.-.LCF162@ha
	addi 2,2,.TOC.-.LCF162@l
	.localentry	__powisf2,.-__powisf2
	srwi 10,4,31
	addis 9,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(9)
	b .L729
.L727:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L728
	fmuls 1,1,1
.L729:
	andi. 9,4,0x1
	beq 0,.L727
	fmuls 0,0,1
	b .L727
.L728:
	fmr 1,0
	cmpwi 0,10,0
	beqlr 0
	addis 9,2,.LC33@toc@ha
	lfs 1,.LC33@toc@l(9)
	fdivs 1,1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L734
	mr 8,10
	mr 10,9
	li 9,2
	cmplw 0,8,10
	bgt 0,.L733
	li 9,0
	cmplw 0,3,4
	blt 0,.L733
	li 9,2
	bgt 0,.L733
	li 9,1
	b .L733
.L734:
	li 9,0
.L733:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2,.-__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
.LCF164:
0:	addis 2,12,.TOC.-.LCF164@ha
	addi 2,2,.TOC.-.LCF164@l
	.localentry	__aeabi_ulcmp,.-__aeabi_ulcmp
	mflr 0
	std 0,16(1)
	stdu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_offset 65, 16
	bl __ucmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,1,32
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	li 9,0
	cmpld 0,4,6
	blt 0,.L741
	li 9,2
	bgt 0,.L741
	li 9,0
	cmpld 0,3,5
	blt 0,.L741
	subfc 5,3,5
	subfe 9,9,9
	subfic 9,9,1
.L741:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.set	.LC0,.LC27+8
	.set	.LC1,.LC27
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.long	-8388609
	.align 2
.LC7:
	.long	2139095039
	.set	.LC10,.LC14
	.set	.LC11,.LC15
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC14:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC15:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC19,.LC27+4
	.section	.rodata.cst4
	.align 2
.LC20:
	.long	1056964608
	.set	.LC23,.LC27
	.set	.LC24,.LC28
	.section	.rodata.cst16
	.align 4
.LC27:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC28:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC32:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC33:
	.long	1065353216
	.align 2
.LC37:
	.long	1191182336
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
