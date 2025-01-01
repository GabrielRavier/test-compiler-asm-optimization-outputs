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
	mr 11,3
	mr 3,4
	mr 4,11
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
	mr 11,3
	mr 3,4
	mr 4,11
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
	ble 0,.L90
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
.L89:
	extsw 3,3
	blr
.L90:
	li 3,1
	b .L89
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
	beq 0,.L98
	addi 3,3,-9
	rldicl 3,3,0,32
	addi 3,3,-5
	srdi 3,3,63
.L97:
	extsw 3,3
	blr
.L98:
	li 3,1
	b .L97
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
	ble 0,.L102
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble 0,.L102
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L102
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	addi 9,9,-3
	srdi 9,9,63
.L102:
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
	ble 0,.L116
	li 9,1
	cmplwi 0,3,8231
	ble 0,.L110
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L110
	addis 10,3,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	ble 0,.L110
	addis 10,3,0xffff
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt 0,.L110
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
	b .L110
.L116:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
.L110:
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
	ble 0,.L119
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	addi 3,3,-6
	srdi 3,3,63
.L118:
	extsw 3,3
	blr
.L119:
	li 3,1
	b .L118
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
	bun 0,.L126
	fcmpu 0,1,2
	bng 0,.L129
	fsub 1,1,2
	blr
.L126:
	fmr 1,2
	blr
.L129:
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
	bun 0,.L134
	fcmpu 0,1,2
	bng 0,.L137
	fsubs 1,1,2
	blr
.L134:
	fmr 1,2
	blr
.L137:
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
	fmr 0,1
	fcmpu 0,1,1
	bun 0,.L142
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 2,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L140
	stfd 1,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bgelr 0
	fmr 1,2
	blr
.L140:
	fmr 1,2
	fcmpu 0,0,2
	bltlr 0
	fmr 1,0
	blr
.L142:
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
	bun 0,.L152
	fcmpu 0,2,2
	bun 0,.L153
	lwz 10,-16(1)
	rlwinm 10,10,0,0,0
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L150
	lwz 9,-16(1)
	cmpwi 0,9,0
	bgelr 0
	fmr 1,2
	blr
.L150:
	lfs 1,-12(1)
	lfs 0,-16(1)
	fcmpu 0,0,1
	bltlr 0
	lfs 1,-16(1)
	blr
.L152:
	lfs 1,-12(1)
	blr
.L153:
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
	fmr 11,1
	fcmpu 0,11,11
	bun 0,.L162
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	fmr 0,1
	stfd 0,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L160
	fmr 11,1
	stfd 11,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bgelr 0
	fmr 1,3
	fmr 2,4
	blr
.L160:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr 0
	fmr 1,3
	fmr 2,4
	blr
.L162:
	fmr 1,3
	fmr 2,4
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
	bun 0,.L172
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 2,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L170
	stfd 1,-16(1)
	ld 9,-16(1)
	fmr 1,2
	cmpdi 0,9,0
	bgelr 0
	fmr 1,0
	blr
.L170:
	fcmpu 0,1,2
	bltlr 0
	fmr 1,2
	blr
.L172:
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
	bun 0,.L182
	fcmpu 0,2,2
	bun 0,.L183
	lwz 10,-16(1)
	rlwinm 10,10,0,0,0
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L180
	lwz 9,-16(1)
	fmr 1,2
	cmpwi 0,9,0
	bgelr 0
	lfs 1,-16(1)
	blr
.L180:
	lfs 1,-16(1)
	lfs 12,-12(1)
	fcmpu 0,1,12
	bltlr 0
	lfs 1,-12(1)
	blr
.L182:
	lfs 1,-12(1)
	blr
.L183:
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
	fmr 11,1
	fcmpu 0,11,11
	bun 0,.L192
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	fmr 0,1
	stfd 0,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L190
	fmr 11,1
	stfd 11,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bltlr 0
	fmr 1,3
	fmr 2,4
	blr
.L190:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bltlr 0
	fmr 1,3
	fmr 2,4
	blr
.L192:
	fmr 1,3
	fmr 2,4
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
	b .L201
.L202:
	rldicl 10,3,0,58
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L201:
	cmpwi 0,3,0
	bne 0,.L202
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
	beq 0,.L208
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
.L208:
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
	beq 0,.L210
	ld 10,8(3)
	std 10,8(9)
.L210:
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
	mr 26,3
	mr 25,4
	mr 24,5
	mr 28,6
	mr 29,7
	ld 27,0(5)
	mr 30,4
	li 31,0
	b .L213
.L214:
	addi 31,31,1
.L213:
	cmpld 0,31,27
	beq 0,.L218
	mr 4,30
	mr 3,26
	std 2,24(1)
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	add 30,30,28
	cmpwi 0,3,0
	bne 0,.L214
	mulld 31,31,28
	add 3,25,31
	b .L215
.L218:
	addi 9,27,1
	std 9,0(24)
	mulld 27,28,27
	mr 5,28
	mr 4,26
	add 3,25,27
	bl memcpy
	nop
.L215:
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
	mr 27,3
	mr 25,4
	mr 28,6
	mr 29,7
	ld 26,0(5)
	mr 30,4
	li 31,0
	b .L220
.L221:
	addi 31,31,1
.L220:
	cmpld 0,31,26
	beq 0,.L225
	mr 4,30
	mr 3,27
	std 2,24(1)
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	add 30,30,28
	cmpwi 0,3,0
	bne 0,.L221
	mulld 31,31,28
	add 3,25,31
	b .L222
.L225:
	li 3,0
.L222:
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
	b .L228
.L229:
	addi 31,31,1
.L228:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L229
	lbz 9,0(31)
	cmpwi 0,9,43
	beq 0,.L235
	li 8,0
	cmpwi 0,9,45
	bne 0,.L231
	li 8,1
.L230:
	addi 31,31,1
.L231:
	addi 31,31,-1
	li 10,0
	b .L232
.L235:
	li 8,0
	b .L230
.L233:
	mulli 10,10,10
	lbz 9,0(31)
	addi 9,9,-48
	subf 10,9,10
.L232:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L233
	mr 3,10
	cmpwi 0,8,0
	bne 0,.L234
	neg 3,10
.L234:
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
	b .L240
.L241:
	addi 31,31,1
.L240:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L241
	lbz 9,0(31)
	cmpwi 0,9,43
	beq 0,.L247
	li 8,0
	cmpwi 0,9,45
	bne 0,.L243
	li 8,1
.L242:
	addi 31,31,1
.L243:
	addi 31,31,-1
	li 10,0
	b .L244
.L247:
	li 8,0
	b .L242
.L245:
	mulli 10,10,10
	lbz 9,0(31)
	addi 9,9,-48
	extsw 9,9
	subf 10,9,10
.L244:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L245
	mr 3,10
	cmpwi 0,8,0
	bne 0,.L246
	neg 3,10
.L246:
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
	b .L252
.L253:
	addi 31,31,1
.L252:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L253
	lbz 9,0(31)
	cmpwi 0,9,43
	beq 0,.L259
	li 8,0
	cmpwi 0,9,45
	bne 0,.L255
	li 8,1
.L254:
	addi 31,31,1
.L255:
	addi 31,31,-1
	li 10,0
	b .L256
.L259:
	li 8,0
	b .L254
.L257:
	mulli 10,10,10
	lbz 9,0(31)
	addi 9,9,-48
	extsw 9,9
	subf 10,9,10
.L256:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L257
	mr 3,10
	cmpwi 0,8,0
	bne 0,.L258
	neg 3,10
.L258:
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
	mr 26,3
	mr 27,4
	mr 30,5
	mr 28,6
	mr 29,7
	b .L264
.L272:
	srdi 30,30,1
.L264:
	cmpdi 0,30,0
	beq 0,.L271
	srdi 31,30,1
	mulld 31,31,28
	add 31,27,31
	mr 4,31
	mr 3,26
	std 2,24(1)
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	blt 0,.L272
	cmpwi 0,3,0
	ble 0,.L269
	add 27,31,28
	srdi 9,30,1
	addi 30,30,-1
	subf 30,9,30
	b .L264
.L271:
	li 3,0
.L267:
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
.L269:
	.cfi_restore_state
	mr 3,31
	b .L267
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
	mr 25,3
	mr 27,6
	mr 29,7
	mr 26,8
	mr 30,5
	mr 28,4
	b .L274
.L276:
	srawi 30,30,1
.L274:
	cmpwi 0,30,0
	beq 0,.L280
	srawi 31,30,1
	mulld 31,31,27
	add 31,28,31
	mr 5,26
	mr 4,31
	mr 3,25
	std 2,24(1)
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L278
	ble 0,.L276
	add 28,31,27
	addi 30,30,-1
	b .L276
.L280:
	li 3,0
.L275:
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
.L278:
	.cfi_restore_state
	mr 3,31
	b .L275
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
	divd 9,3,4
	mulld 4,9,4
	subf 11,4,3
	mr 3,9
	mr 4,11
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
	divd 9,3,4
	mulld 4,9,4
	subf 11,4,3
	mr 3,9
	mr 4,11
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
	divd 9,3,4
	mulld 4,9,4
	subf 11,4,3
	mr 3,9
	mr 4,11
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
	mr 9,3
	b .L289
.L291:
	addi 9,9,4
.L289:
	lwz 10,0(9)
	cmpwi 0,10,0
	beq 0,.L290
	lwz 10,0(9)
	cmpw 0,10,4
	bne 0,.L291
.L290:
	lwz 10,0(9)
	li 3,0
	cmpwi 0,10,0
	beqlr 0
	mr 3,9
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
	b .L295
.L297:
	addi 3,3,4
	addi 4,4,4
.L295:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L296
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L296
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L297
.L296:
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt 0,.L298
	lwa 9,0(3)
	lwa 10,0(4)
	subf 9,9,10
	srdi 9,9,63
.L298:
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
.L301:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne 0,.L301
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
	b .L305
.L306:
	addi 9,9,4
.L305:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L306
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
.L308:
	bdz .L309
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L309
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L309
	lwz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L309
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	b .L308
.L309:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L311
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt 0,.L311
	lwa 9,0(3)
	lwa 10,0(4)
	subf 9,9,10
	srdi 9,9,63
.L311:
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
	b .L317
.L319:
	addi 5,5,-1
	addi 3,3,4
.L317:
	bdz .L318
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L319
.L318:
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
	b .L325
.L327:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L325:
	bdz .L326
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq 0,.L327
.L326:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L328
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt 0,.L328
	lwa 9,0(3)
	lwa 10,0(4)
	subf 9,9,10
	srdi 9,9,63
.L328:
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
	b .L334
.L335:
	lwzu 10,4(4)
	stwu 10,4(9)
.L334:
	addi 5,5,-1
	bdnz .L335
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
	blt 0,.L338
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L339
.L338:
	sldi 5,5,2
	add 4,4,5
	add 9,3,5
	srdi 5,5,2
	addi 10,5,1
	mtctr 10
	b .L340
.L341:
	lwzu 10,-4(4)
	stwu 10,-4(9)
.L340:
	bdnz .L341
	blr
.L342:
	lwzu 10,4(4)
	stwu 10,4(9)
.L339:
	addi 5,5,-1
	bdnz .L342
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
	b .L344
.L345:
	stwu 4,4(9)
.L344:
	addi 5,5,-1
	bdnz .L345
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
	bge 0,.L347
	add 3,3,5
	add 4,4,5
	addi 9,5,1
	mtctr 9
	b .L348
.L349:
	lbzu 9,-1(3)
	stbu 9,-1(4)
.L348:
	bdnz .L349
	blr
.L347:
	cmpld 0,3,4
	beqlr 0
	addi 3,3,-1
	addi 4,4,-1
	addi 9,5,1
	mtctr 9
	b .L351
.L352:
	lbzu 9,1(3)
	stbu 9,1(4)
.L351:
	bdnz .L352
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
.L367:
	bdz .L371
	srw 10,3,9
	andi. 10,10,0x1
	bne 0,.L372
	addi 9,9,1
	b .L367
.L372:
	addi 3,9,1
.L369:
	extsw 3,3
	blr
.L371:
	li 3,0
	b .L369
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
	beq 0,.L377
	li 3,1
	b .L375
.L376:
	srawi 9,9,1
	addi 3,3,1
.L375:
	andi. 10,9,0x1
	beq 0,.L376
.L374:
	extsw 3,3
	blr
.L377:
	li 3,0
	b .L374
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
	blt 0,.L379
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L379:
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
	blt 0,.L385
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L385:
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
	blt 0,.L391
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L391:
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
	blt 0,.L403
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L401
.L403:
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
	b .L401
.L400:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmuls 0,0,0
.L401:
	andi. 9,4,0x1
	beq 0,.L400
	fmuls 1,1,0
	b .L400
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
	blt 0,.L410
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L408
.L410:
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	b .L408
.L407:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmul 0,0,0
.L408:
	andi. 9,4,0x1
	beq 0,.L407
	fmul 1,1,0
	b .L407
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
	mflr 0
	std 0,16(1)
	stfd 28,-32(1)
	stfd 29,-24(1)
	stfd 30,-16(1)
	stfd 31,-8(1)
	std 31,-40(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 31, -40
	fmr 29,2
	fmr 28,1
	fmr 0,28
	fcmpu 0,0,0
	bun 0,.L412
	mr 31,5
	fmr 3,1
	fmr 4,2
	bl __gcc_qadd
	nop
	fcmpu 0,28,1
	bne 0,$+8
	fcmpu 0,29,2
	beq 0,.L412
	cmpwi 0,31,0
	blt 0,.L418
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L415
.L418:
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L415
.L414:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L412
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L415:
	andi. 9,31,0x1
	beq 0,.L414
	fmr 3,30
	fmr 4,31
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L414
.L412:
	fmr 1,28
	fmr 2,29
	addi 1,1,80
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-40(1)
	lfd 28,-32(1)
	lfd 29,-24(1)
	lfd 30,-16(1)
	lfd 31,-8(1)
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	blr
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
	b .L420
.L421:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
.L420:
	bdnz .L421
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
	b .L423
.L425:
	addi 3,3,1
	addi 30,30,-1
.L423:
	bdz .L424
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L425
.L424:
	cmpdi 0,30,0
	bne 0,.L426
	li 9,0
	stb 9,0(3)
.L426:
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
.L431:
	bdz .L432
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr 0
	addi 3,3,1
	b .L431
.L432:
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
.L437:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L442
	addi 9,4,-1
.L440:
	lbzu 10,1(9)
	cmpwi 0,10,0
	beq 0,.L443
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	bne 0,.L440
	blr
.L443:
	addi 3,3,1
	b .L437
.L442:
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
	b .L446
.L445:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	beqlr 0
.L446:
	lbz 10,0(9)
	cmpw 0,10,4
	bne 0,.L445
	mr 3,9
	b .L445
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
	mr 31,3
	mr 30,4
	mr 3,4
	bl strlen
	mr. 29,3
	beq 0,.L454
	lbz 28,0(30)
.L452:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq 0,.L451
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L455
	addi 31,31,1
	b .L452
.L454:
	mr 3,31
.L451:
	addi 1,1,64
	.cfi_remember_state
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
.L455:
	.cfi_restore_state
	mr 3,31
	b .L451
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
	blt 0,.L470
.L458:
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	b .L460
.L470:
	fcmpu 0,2,0
	bng 0,.L458
.L460:
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
	mflr 0
	std 0,16(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	subf 29,6,4
	add 29,3,29
	cmpdi 0,6,0
	beq 0,.L472
	mr 30,5
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne 0,.L477
	mr 31,3
	addi 27,5,1
	addi 28,6,-1
	b .L473
.L474:
	addi 31,31,1
.L473:
	cmpld 0,31,29
	bgt 0,.L480
	lbz 10,0(31)
	lbz 9,0(30)
	cmpw 0,10,9
	bne 0,.L474
	mr 5,28
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne 0,.L474
	mr 3,31
	b .L472
.L480:
	li 3,0
.L472:
	addi 1,1,80
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
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
	blr
.L477:
	.cfi_restore_state
	li 3,0
	b .L472
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
	blt 0,.L504
.L484:
	li 9,0
	addis 8,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(8)
	fcmpu 0,1,0
	cror 2,0,3
	fmr 12,0
	bne 0,.L486
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	li 9,0
	fcmpu 0,1,0
	bnl 0,.L489
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	li 9,0
	fcmpu 0,1,0
	beq 0,.L489
	li 9,0
	addis 8,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(8)
	b .L491
.L504:
	fneg 1,1
	li 10,1
	b .L484
.L488:
	addi 9,9,1
	addis 8,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(8)
	fmul 1,1,0
.L486:
	fcmpu 0,1,12
	cror 2,1,2
	beq 0,.L488
.L489:
	stw 9,0(4)
	cmpwi 0,10,0
	beqlr 0
	fneg 1,1
	blr
.L492:
	addi 9,9,-1
	fadd 1,1,1
.L491:
	fcmpu 0,1,0
	blt 0,.L492
	b .L489
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
	mr 9,3
	li 3,0
	b .L506
.L507:
	sldi 4,4,1
	srdi 9,9,1
.L506:
	cmpdi 0,9,0
	beqlr 0
	andi. 10,9,0x1
	beq 0,.L507
	add 3,3,4
	b .L507
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
	b .L511
.L515:
	rldic 4,4,1,32
	slwi 9,9,1
.L511:
	cmplw 0,4,3
	bge 0,.L521
	cmpwi 0,9,0
	beq 0,.L519
	cmpwi 0,4,0
	bge 0,.L515
	li 10,0
	b .L513
.L521:
	li 10,0
	b .L513
.L519:
	li 10,0
	b .L513
.L516:
	srwi 9,9,1
	srdi 4,4,1
.L513:
	cmpwi 0,9,0
	beq 0,.L522
	cmplw 0,3,4
	blt 0,.L516
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L516
.L522:
	cmpdi 0,5,0
	bne 0,.L518
	mr 3,10
.L518:
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
	beq 0,.L525
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
.L524:
	extsw 3,3
	blr
.L525:
	li 3,7
	b .L524
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
	beq 0,.L528
	cntlzd 9,9
	addi 3,9,-1
.L528:
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
	li 9,0
	b .L531
.L532:
	srdi 3,3,1
	rldic 4,4,1,32
.L531:
	cmpdi 0,3,0
	beq 0,.L534
	andi. 10,3,0x1
	beq 0,.L532
	add 9,9,4
	b .L532
.L534:
	rldicl 3,9,0,32
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
	blt 0,.L536
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L536
	addi 9,5,1
	mtctr 9
	b .L537
.L536:
	addi 8,4,-8
	addi 10,3,-8
	rldicl 9,9,0,35
	addi 9,9,1
	mtctr 9
	b .L538
.L539:
	ldu 9,8(8)
	stdu 9,8(10)
.L538:
	bdnz .L539
	rldicl 10,7,0,32
	subf 9,7,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,7,5
	bgt 0,.L545
	cmpwi 0,5,0
	bne 0,.L540
.L545:
	li 9,1
	mtctr 9
	b .L540
.L541:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L540:
	bdnz .L541
	blr
.L543:
	lbzx 9,4,5
	stbx 9,3,5
.L537:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L543
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
	blt 0,.L547
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L547
	addi 9,5,1
	mtctr 9
	b .L548
.L547:
	addi 8,4,-2
	addi 10,3,-2
	rldicl 9,9,0,33
	addi 9,9,1
	mtctr 9
	b .L549
.L550:
	lhzu 9,2(8)
	sthu 9,2(10)
.L549:
	bdnz .L550
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L552:
	lbzx 9,4,5
	stbx 9,3,5
.L548:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L552
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
	blt 0,.L555
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L555
	addi 9,5,1
	mtctr 9
	b .L556
.L555:
	addi 8,4,-4
	addi 10,3,-4
	rldicl 9,9,0,34
	addi 9,9,1
	mtctr 9
	b .L557
.L558:
	lwzu 9,4(8)
	stwu 9,4(10)
.L557:
	bdnz .L558
	rldicl 10,7,0,32
	subf 9,7,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,7,5
	bgt 0,.L564
	cmpwi 0,5,0
	bne 0,.L559
.L564:
	li 9,1
	mtctr 9
	b .L559
.L560:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L559:
	bdnz .L560
	blr
.L562:
	lbzx 9,4,5
	stbx 9,3,5
.L556:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L562
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
	blt 0,.L571
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L571:
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
	blt 0,.L574
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L575
	mr 9,3
.L575:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L574:
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
	bge 0,.L576
	mr 9,10
.L576:
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
.L579:
	bdz .L580
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L580
	addi 10,10,1
	b .L579
.L580:
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
.L583:
	bdz .L584
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L584
	addi 9,9,1
	b .L583
.L584:
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
	bne 0,.L592
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L592:
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
	b .L594
.L596:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
.L594:
	bdnz .L596
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
	b .L598
.L600:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
.L598:
	bdnz .L600
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
	li 9,0
	b .L602
.L603:
	srdi 3,3,1
	rldic 4,4,1,32
.L602:
	cmpdi 0,3,0
	beq 0,.L605
	andi. 10,3,0x1
	beq 0,.L603
	add 9,9,4
	b .L603
.L605:
	rldicl 3,9,0,32
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
	mr. 9,3
	beq 0,.L611
	li 3,0
	b .L608
.L609:
	rldic 9,9,1,32
	srdi 4,4,1
.L608:
	cmpdi 0,4,0
	beq 0,.L607
	andi. 10,4,0x1
	beq 0,.L609
	add 3,3,9
	b .L609
.L611:
	li 3,0
.L607:
	rldicl 3,3,0,32
	blr
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
	b .L613
.L617:
	rldic 4,4,1,32
	slwi 9,9,1
.L613:
	cmplw 0,4,3
	bge 0,.L623
	cmpwi 0,9,0
	beq 0,.L621
	cmpwi 0,4,0
	bge 0,.L617
	li 10,0
	b .L615
.L623:
	li 10,0
	b .L615
.L621:
	li 10,0
	b .L615
.L618:
	srwi 9,9,1
	srdi 4,4,1
.L615:
	cmpwi 0,9,0
	beq 0,.L624
	cmplw 0,3,4
	blt 0,.L618
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L618
.L624:
	cmpdi 0,5,0
	bne 0,.L620
	mr 3,10
.L620:
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
	blt 0,.L626
	mfcr 3
	rlwinm 3,3,2,1
.L626:
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
	blt 0,.L630
	mfcr 3
	rlwinm 3,3,2,1
.L630:
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
	blt 0,.L644
.L636:
	li 10,33
	li 8,0
	b .L637
.L644:
	neg 4,4
	extsw 4,4
	li 7,1
	b .L636
.L638:
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
.L637:
	cmpdi 0,4,0
	beq 0,.L639
	addi 9,10,-1
	mr 10,9
	andi. 9,9,0xff
	beq 0,.L639
	andi. 9,4,0x1
	beq 0,.L638
	add 8,8,3
	b .L638
.L639:
	mr 3,8
	cmpwi 0,7,0
	beq 0,.L641
	neg 3,8
.L641:
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
	blt 0,.L651
.L646:
	cmpdi 0,4,0
	blt 0,.L652
.L647:
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq 0,.L648
	neg 3,3
.L648:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L651:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L646
.L652:
	neg 4,4
	xori 31,31,0x1
	b .L647
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
	blt 0,.L659
.L654:
	sradi 9,4,63
	xor 4,4,9
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq 0,.L656
	neg 3,3
.L656:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L659:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L654
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
.L661:
	cmplw 0,4,3
	bge 0,.L673
	bdz .L672
	andi. 10,4,0x8000
	bne 0,.L674
	rldic 4,4,1,48
	slwi 9,9,1
	b .L661
.L673:
	li 10,0
	b .L663
.L672:
	li 10,0
	b .L663
.L674:
	li 10,0
	b .L663
.L666:
	rldicl 9,9,63,49
	srdi 4,4,1
.L663:
	andi. 8,9,0xffff
	beq 0,.L675
	cmplw 0,3,4
	blt 0,.L666
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
	b .L666
.L675:
	cmpdi 0,5,0
	bne 0,.L668
	mr 3,10
.L668:
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
	b .L677
.L681:
	sldi 4,4,1
	sldi 9,9,1
.L677:
	cmpld 0,4,3
	bge 0,.L687
	cmpdi 0,9,0
	beq 0,.L685
	andis. 10,4,0x8000
	beq 0,.L681
	li 10,0
	b .L679
.L687:
	li 10,0
	b .L679
.L685:
	li 10,0
	b .L679
.L682:
	srdi 9,9,1
	srdi 4,4,1
.L679:
	cmpdi 0,9,0
	beq 0,.L688
	cmpld 0,3,4
	blt 0,.L682
	subf 3,4,3
	or 10,10,9
	b .L682
.L688:
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
	beq 0,.L690
	addi 4,4,-32
	slw 3,3,4
	sldi 3,3,32
	blr
.L690:
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
	andi. 7,5,0x40
	beq 0,.L695
	li 10,0
	addi 5,5,-64
	sld 11,3,5
.L696:
	mr 3,10
	mr 4,11
	blr
.L695:
	cmpdi 0,5,0
	beqlr 0
	sld 10,3,5
	sld 9,4,5
	subfic 5,5,64
	srd 8,3,5
	or 11,8,9
	b .L696
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
	beq 0,.L700
	sradi 9,3,32
	srawi 3,9,31
	addi 4,4,-32
	sraw 9,9,4
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L700:
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
	andi. 7,5,0x40
	beq 0,.L705
	sradi 11,4,63
	addi 5,5,-64
	srad 10,4,5
.L706:
	mr 3,10
	mr 4,11
	blr
.L705:
	cmpdi 0,5,0
	beqlr 0
	srad 11,4,5
	subfic 7,5,64
	sld 9,4,7
	srd 8,3,5
	or 10,9,8
	b .L706
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
	li 9,0
	cmplwi 0,3,65535
	bgt 0,.L712
	li 9,16
.L712:
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
	rlwinm 10,3,0,30,30
	cntlzw 10,10
	srwi 10,10,5
	subfic 3,3,2
	mullw 10,10,3
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
	and 10,10,4
	and 8,8,3
	or 10,10,8
	cntlzd 10,10
	slwi 3,9,6
	add 3,3,10
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
	blt 0,.L723
	mr 8,10
	mr 10,9
	li 9,2
	cmpw 0,8,10
	bgt 0,.L722
	li 9,0
	cmplw 0,3,4
	blt 0,.L722
	li 9,2
	bgt 0,.L722
	li 9,1
	b .L722
.L723:
	li 9,0
.L722:
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
	mr 10,3
	li 3,0
	cmpd 0,4,6
	blt 0,.L730
	li 3,2
	bgt 0,.L730
	li 3,0
	cmpld 0,10,5
	blt 0,.L730
	subfc 5,10,5
	subfe 3,3,3
	subfic 3,3,1
.L730:
	extsw 3,3
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
	mr 10,3
	cntlzd 3,3
	srdi 3,3,6
	neg 9,3
	and 8,9,4
	andc 10,10,9
	or 10,10,8
	neg 9,10
	and 10,10,9
	cntlzd 10,10
	subfic 10,10,63
	slwi 3,3,6
	add 3,3,10
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
	cmpdi 0,3,0
	bne 0,.L746
	li 3,0
	cmpdi 0,4,0
	beq 0,.L747
	neg 9,4
	and 9,9,4
	cntlzd 9,9
	subfic 3,9,128
	b .L747
.L746:
	neg 9,3
	and 3,9,3
	cntlzd 9,3
	subfic 3,9,64
.L747:
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
	beq 0,.L750
	srdi 3,3,32
	addi 4,4,-32
	srw 3,3,4
	blr
.L750:
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
	andi. 7,5,0x40
	beq 0,.L755
	li 11,0
	addi 5,5,-64
	srd 10,4,5
.L756:
	mr 3,10
	mr 4,11
	blr
.L755:
	cmpdi 0,5,0
	beqlr 0
	srd 11,4,5
	subfic 7,5,64
	sld 9,4,7
	srd 8,3,5
	or 10,9,8
	b .L756
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
	srdi 9,8,32
	rldicl 8,8,0,32
	srdi 3,3,32
	mulld 6,3,6
	add 9,9,6
	sldi 6,9,32
	add 10,6,8
	srdi 11,9,32
	srdi 9,10,32
	rldicl 8,10,0,32
	srdi 4,4,32
	mulld 7,7,4
	add 9,9,7
	sldi 7,9,32
	add 10,7,8
	srdi 9,9,32
	add 9,9,11
	mulld 3,3,4
	add 11,3,9
	mr 3,10
	mr 4,11
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
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	mr 4,5
	bl __mulddi3
	mulld 9,31,28
	mulld 30,29,30
	add 9,9,30
	add 4,9,4
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
	subfic 8,3,0
	subfze 9,4
	mr 3,8
	mr 4,9
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
	xor 3,3,4
	sradi 9,3,32
	xor 3,3,9
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
	std 20,-96(1)
	std 21,-88(1)
	std 22,-80(1)
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	.cfi_offset 20, -96
	.cfi_offset 21, -88
	.cfi_offset 22, -80
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 5,4
	mr 4,3
	sldi 3,5,63
	srdi 8,4,1
	or 8,3,8
	srdi 9,5,1
	lis 3,0x5555
	ori 3,3,0x5555
	rldimi 3,3,32,0
	and 8,8,3
	and 9,9,3
	subfc 10,8,4
	subfe 11,9,5
	sldi 5,11,62
	srdi 6,10,2
	or 6,5,6
	srdi 7,11,2
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	and 6,6,5
	and 7,7,5
	and 10,10,5
	and 11,11,5
	addc 8,6,10
	adde 9,7,11
	sldi 10,9,60
	srdi 30,8,4
	or 30,10,30
	srdi 31,9,4
	addc 26,30,8
	adde 27,31,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 8,26,9
	and 9,27,9
	add 28,9,8
	srdi 9,28,32
	add 28,9,28
	srwi 9,28,16
	add 28,28,9
	srwi 3,28,8
	add 3,3,28
	rlwinm 3,3,0,0xff
	ld 20,-96(1)
	ld 21,-88(1)
	ld 22,-80(1)
	ld 23,-72(1)
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
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	blr
	.long 0
	.byte 0,0,0,0,0,12,0,0
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
	b .L777
.L775:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L776
	fmul 1,1,1
.L777:
	andi. 9,4,0x1
	beq 0,.L775
	fmul 0,0,1
	b .L775
.L776:
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
	b .L783
.L781:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L782
	fmuls 1,1,1
.L783:
	andi. 9,4,0x1
	beq 0,.L781
	fmuls 0,0,1
	b .L781
.L782:
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
	blt 0,.L788
	mr 8,10
	mr 10,9
	li 9,2
	cmplw 0,8,10
	bgt 0,.L787
	li 9,0
	cmplw 0,3,4
	blt 0,.L787
	li 9,2
	bgt 0,.L787
	li 9,1
	b .L787
.L788:
	li 9,0
.L787:
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
	mr 10,3
	li 3,0
	cmpld 0,4,6
	blt 0,.L795
	li 3,2
	bgt 0,.L795
	li 3,0
	cmpld 0,10,5
	blt 0,.L795
	subfc 5,10,5
	subfe 3,3,3
	subfic 3,3,1
.L795:
	extsw 3,3
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
	.section	.rodata.cst4
	.align 2
.LC19:
	.long	1056964608
	.set	.LC20,.LC28+4
	.set	.LC23,.LC27
	.set	.LC24,.LC28
	.section	.rodata.cst16
	.align 4
.LC27:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.align 4
.LC28:
	.long	0
	.long	1073741824
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
