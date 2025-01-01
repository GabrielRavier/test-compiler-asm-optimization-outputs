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
	cmpdi 0,5,0
	beqlr 0
	mtctr 5
.L6:
	lbzu 10,-1(4)
	stbu 10,-1(9)
	addi 5,5,-1
	bdnz .L6
	blr
.L4:
	cmpld 0,3,4
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 4,4,-1
	addi 9,3,-1
	mtctr 5
.L7:
	lbzu 10,1(4)
	stbu 10,1(9)
	addi 5,5,-1
	bdnz .L7
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
	cmpdi 0,6,0
	beq 0,.L17
	addi 4,4,-1
	mtctr 6
.L14:
	lbzu 9,1(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq 0,.L22
	addi 6,6,-1
	addi 3,3,1
	bdnz .L14
	li 3,0
	blr
.L17:
	li 3,0
	blr
.L22:
	addi 3,3,1
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
	cmpdi 0,5,0
	beq 0,.L30
	mtctr 5
.L24:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,1
	addi 5,5,-1
	bdnz .L24
	li 3,0
	blr
.L30:
	li 3,0
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
	cmpdi 0,5,0
	beq 0,.L41
	mtctr 5
.L34:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L45
	addi 5,5,-1
	addi 3,3,1
	addi 4,4,1
	bdnz .L34
	li 3,0
	b .L35
.L41:
	li 3,0
	b .L35
.L45:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
.L35:
	extsw 3,3
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
	cmpdi 0,5,0
	beqlr 0
	addi 4,4,-1
	addi 9,3,-1
	mtctr 5
.L48:
	lbzu 10,1(4)
	stbu 10,1(9)
	addi 5,5,-1
	bdnz .L48
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
	addi 5,5,-1
	add 9,3,5
	addi 10,5,2
	mtctr 10
.L52:
	bdz .L55
	mr 3,9
	lbz 10,0(9)
	addi 9,9,-1
	cmpw 0,10,4
	bne 0,.L52
	blr
.L55:
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
	cmpdi 0,5,0
	beqlr 0
	addi 9,3,-1
	mtctr 5
.L58:
	stbu 4,1(9)
	addi 5,5,-1
	bdnz .L58
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
	lbz 9,0(4)
	stb 9,0(3)
	andi. 9,9,0xff
	beqlr 0
.L63:
	lbzu 9,1(4)
	stbu 9,1(3)
	andi. 9,9,0xff
	bne 0,.L63
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
	lbz 9,0(3)
	cmpwi 0,9,0
	beqlr 0
.L67:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne 0,.L67
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
.L75:
	lbz 9,0(3)
	rlwinm 10,9,0,0xff
	cmpw 0,10,4
	beqlr 0
	addi 3,3,1
	andi. 9,9,0xff
	bne 0,.L75
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
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L79
.L78:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L79
	lbzu 10,1(3)
	lbzu 9,1(4)
	cmpw 0,10,9
	beq 0,.L78
.L79:
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
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L85
	mr 9,3
.L84:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L84
.L83:
	subf 3,3,9
	blr
.L85:
	mr 9,3
	b .L83
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
	addi 9,5,-1
	cmpdi 0,5,0
	beq 0,.L92
	lbz 10,0(3)
	cmpwi 0,10,0
	beq 0,.L89
	add 8,3,9
	mtctr 5
.L90:
	lbz 9,0(4)
	andi. 10,9,0xff
	beq 0,.L89
	bdz .L95
	rlwinm 9,9,0,0xff
	lbz 10,0(3)
	cmpw 0,9,10
	bne 0,.L89
	addi 4,4,1
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne 0,.L90
	b .L89
.L95:
	mr 3,8
.L89:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
.L88:
	extsw 3,3
	blr
.L92:
	li 3,0
	b .L88
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
	cmpdi 0,5,1
	blelr 0
	srdi 5,5,1
	mtctr 5
.L98:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
	addi 5,5,-1
	bdnz .L98
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
	beq 0,.L105
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
.L104:
	extsw 3,3
	blr
.L105:
	li 3,1
	b .L104
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
	ble 0,.L108
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
.L107:
	extsw 3,3
	blr
.L108:
	li 3,1
	b .L107
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
	beq 0,.L115
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
.L114:
	extsw 3,3
	blr
.L115:
	li 3,1
	b .L114
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
	ble 0,.L118
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble 0,.L118
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L118
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
.L118:
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
	ble 0,.L130
	li 9,1
	cmplwi 0,3,8231
	ble 0,.L125
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L125
	addis 10,3,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	ble 0,.L125
	addis 10,3,0xffff
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt 0,.L125
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
	b .L125
.L130:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
.L125:
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
	ble 0,.L133
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
.L132:
	extsw 3,3
	blr
.L133:
	li 3,1
	b .L132
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
	bun 0,.L139
	fcmpu 0,1,2
	bng 0,.L142
	fsub 1,1,2
	blr
.L139:
	fmr 1,2
	blr
.L142:
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
	bun 0,.L147
	fcmpu 0,1,2
	bng 0,.L150
	fsubs 1,1,2
	blr
.L147:
	fmr 1,2
	blr
.L150:
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
	bun 0,.L156
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L153
	cmpwi 0,9,0
	beqlr 0
	fmr 1,2
	blr
.L153:
	fmr 0,1
	fcmpu 0,1,2
	bnl 0,.L155
	fmr 0,2
.L155:
	fmr 1,0
	blr
.L156:
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
	bun 0,.L164
	fcmpu 0,2,2
	bun 0,.L165
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	lwz 10,-12(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L161
	cmpwi 0,9,0
	beqlr 0
	fmr 1,2
	blr
.L161:
	lfs 1,-16(1)
	lfs 12,-12(1)
	fcmpu 0,1,12
	bnllr 0
	fmr 1,12
	blr
.L164:
	lfs 1,-12(1)
	blr
.L165:
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
	bun 0,.L172
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	fmr 0,1
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L169
	cmpwi 0,9,0
	beqlr 0
	fmr 1,3
	fmr 2,4
	blr
.L169:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr 0
	fmr 1,3
	fmr 2,4
	blr
.L172:
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
	bun 0,.L180
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L177
	fmr 1,2
	cmpwi 0,9,0
	beqlr 0
	fmr 1,0
	blr
.L177:
	fmr 1,2
	fcmpu 0,0,2
	bnllr 0
	fmr 1,0
	blr
.L180:
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
	stfs 1,-12(1)
	stfs 2,-16(1)
	fcmpu 0,1,1
	bun 0,.L188
	fcmpu 0,2,2
	bun 0,.L189
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	lwz 10,-16(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L185
	fmr 1,2
	cmpwi 0,9,0
	beqlr 0
	lfs 1,-12(1)
	blr
.L185:
	lfs 1,-16(1)
	lfs 0,-12(1)
	fcmpu 0,0,1
	bnllr 0
	fmr 1,0
	blr
.L188:
	lfs 1,-16(1)
	blr
.L189:
	lfs 1,-12(1)
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
	bun 0,.L196
	fmr 11,0
	fcmpu 0,11,11
	bun 0,.L197
	fmr 11,12
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	fmr 11,0
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L193
	cmpwi 0,9,0
	beq 0,.L198
	fmr 1,12
	blr
.L193:
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L194
	fmr 1,12
	blr
.L194:
	fmr 2,4
	fmr 1,3
	blr
.L196:
	fmr 2,4
	fmr 1,3
	blr
.L197:
	fmr 1,12
	blr
.L198:
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
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L202
	addis 10,2,s.0@toc@ha
	addi 10,10,s.0@toc@l
	addis 7,2,digits@toc@ha
	addi 7,7,digits@toc@l
.L201:
	rldicl 8,9,0,58
	lbzx 8,7,8
	stb 8,0(10)
	addi 10,10,1
	srwi 9,9,6
	cmpwi 0,9,0
	bne 0,.L201
.L200:
	li 9,0
	stb 9,0(10)
	addis 3,2,s.0@toc@ha
	addi 3,3,s.0@toc@l
	blr
.L202:
	addis 10,2,s.0@toc@ha
	addi 10,10,s.0@toc@l
	b .L200
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
	beq 0,.L209
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
.L209:
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
	beq 0,.L211
	ld 10,8(3)
	std 10,8(9)
.L211:
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
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	std 2,24(1)
	mr 26,3
	mr 23,4
	mr 24,5
	mr 27,6
	ld 28,0(5)
	cmpdi 0,28,0
	beq 0,.L214
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	std 31,104(1)
	.cfi_offset 31, -8
	mr 29,7
	mr 31,4
	li 30,0
.L216:
	mr 25,31
	mr 4,31
	mr 3,26
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L219
	addi 30,30,1
	add 31,31,27
	cmpld 0,28,30
	bne 0,.L216
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L214:
	addi 9,28,1
	std 9,0(24)
	mulld 28,27,28
	mr 5,27
	mr 4,26
	add 3,23,28
	bl memcpy
	nop
	mr 25,3
.L213:
	mr 3,25
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.L219:
	.cfi_def_cfa_offset 112
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
	b .L213
	.long 0
	.byte 0,0,0,1,128,9,0,0
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
	std 25,-56(1)
	std 26,-48(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	ld 26,0(5)
	cmpdi 0,26,0
	beq 0,.L223
	mflr 0
	.cfi_register 65, 0
	std 0,112(1)
	.cfi_offset 65, 16
	std 2,24(1)
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	std 29,72(1)
	.cfi_offset 29, -24
	std 30,80(1)
	.cfi_offset 30, -16
	std 31,88(1)
	.cfi_offset 31, -8
	mr 28,3
	mr 27,6
	mr 29,7
	mr 31,4
	li 30,0
.L222:
	mr 25,31
	mr 4,31
	mr 3,28
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L226
	addi 30,30,1
	add 31,31,27
	cmpld 0,26,30
	bne 0,.L222
	li 25,0
	ld 27,56(1)
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	ld 30,80(1)
	.cfi_restore 30
	ld 31,88(1)
	.cfi_restore 31
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
	b .L220
.L223:
	li 25,0
	b .L220
.L226:
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 27,56(1)
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	ld 30,80(1)
	.cfi_restore 30
	ld 31,88(1)
	.cfi_restore 31
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L220:
	mr 3,25
	addi 1,1,96
	.cfi_def_cfa_offset 0
	ld 25,-56(1)
	ld 26,-48(1)
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L229
.L230:
	addi 31,31,1
.L229:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 9,3
	cmpwi 0,3,0
	bne 0,.L230
	rlwinm 10,30,0,0xff
	cmpwi 0,10,43
	beq 0,.L231
	cmpwi 0,10,45
	bne 0,.L232
	li 3,1
.L231:
	addi 8,31,1
	lbz 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	bgt 0,.L233
.L234:
	mulli 9,9,10
	lbz 10,0(8)
	addi 10,10,-48
	subf 9,10,9
	lbzu 10,1(8)
	addi 10,10,-48
	cmplwi 0,10,9
	ble 0,.L234
.L233:
	cmpwi 0,3,0
	beq 0,.L237
.L235:
	extsw 3,9
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L232:
	.cfi_restore_state
	lbz 10,0(31)
	addi 10,10,-48
	mr 8,31
	cmplwi 0,10,9
	ble 0,.L234
.L237:
	neg 9,9
	b .L235
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L244
.L245:
	addi 31,31,1
.L244:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne 0,.L245
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq 0,.L246
	cmpwi 0,9,45
	bne 0,.L247
	li 8,1
.L246:
	addi 10,31,1
	lbz 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	bgt 0,.L253
.L251:
	li 3,0
.L249:
	mulli 3,3,10
	lbz 9,0(10)
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
	lbzu 9,1(10)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L249
.L248:
	cmpwi 0,8,0
	beq 0,.L252
.L243:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L253:
	.cfi_restore_state
	li 3,0
	b .L248
.L247:
	lbz 9,0(31)
	addi 9,9,-48
	mr 10,31
	li 3,0
	cmplwi 0,9,9
	ble 0,.L251
.L252:
	neg 3,3
	b .L243
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L258
.L259:
	addi 31,31,1
.L258:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne 0,.L259
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq 0,.L260
	cmpwi 0,9,45
	bne 0,.L261
	li 8,1
.L260:
	addi 10,31,1
	lbz 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	bgt 0,.L267
.L265:
	li 3,0
.L263:
	mulli 3,3,10
	lbz 9,0(10)
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
	lbzu 9,1(10)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L263
.L262:
	cmpwi 0,8,0
	beq 0,.L266
.L257:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L267:
	.cfi_restore_state
	li 3,0
	b .L262
.L261:
	lbz 9,0(31)
	addi 9,9,-48
	mr 10,31
	li 3,0
	cmplwi 0,9,9
	ble 0,.L265
.L266:
	neg 3,3
	b .L257
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 25,3
	mr 26,4
	mr 27,6
	mr 28,7
	mr. 31,5
	beq 0,.L275
	mflr 0
	.cfi_register 65, 0
	std 0,112(1)
	.cfi_offset 65, 16
	std 2,24(1)
	std 29,72(1)
	.cfi_offset 29, -24
	b .L274
.L276:
	mr 31,29
.L273:
	cmpdi 0,31,0
	beq 0,.L280
.L274:
	srdi 29,31,1
	mulld 30,29,27
	add 30,26,30
	mr 4,30
	mr 3,25
	mr 12,28
	mtctr 28
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	blt 0,.L276
	ble 0,.L279
	add 26,30,27
	addi 31,31,-1
	subf 31,29,31
	b .L273
.L280:
	li 30,0
	ld 29,72(1)
	.cfi_restore 29
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L271:
	mr 3,30
	addi 1,1,96
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L275:
	.cfi_restore_state
	li 30,0
	b .L271
.L279:
	.cfi_offset 29, -24
	.cfi_offset 65, 16
	ld 29,72(1)
	.cfi_restore 29
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
	b .L271
	.long 0
	.byte 0,0,0,1,128,7,0,0
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
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 25,3
	mr 27,4
	mr 28,6
	mr 29,7
	mr 26,8
	mr 30,5
	cmpwi 0,5,0
	beq 0,.L285
	mflr 0
	.cfi_register 65, 0
	std 0,112(1)
	.cfi_offset 65, 16
	std 2,24(1)
	b .L284
.L283:
	srawi 30,30,1
	cmpwi 0,30,0
	beq 0,.L289
.L284:
	srawi 31,30,1
	mulld 31,31,28
	add 31,27,31
	mr 5,26
	mr 4,31
	mr 3,25
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L288
	ble 0,.L283
	add 27,31,28
	addi 30,30,-1
	b .L283
.L289:
	li 31,0
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
	b .L281
.L285:
	li 31,0
	b .L281
.L288:
	.cfi_offset 65, 16
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L281:
	mr 3,31
	addi 1,1,96
	.cfi_def_cfa_offset 0
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
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L304
.L298:
	lwz 9,0(3)
	cmpw 0,9,4
	beq 0,.L300
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne 0,.L298
.L300:
	lwz 9,0(3)
	cmpwi 0,9,0
	bnelr 0
	li 3,0
	blr
.L304:
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
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L307
.L306:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L307
	lwz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L307
	lwzu 10,4(3)
	lwzu 9,4(4)
	cmpw 0,10,9
	beq 0,.L306
.L307:
	lwz 9,0(3)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,9,10
	blt 0,.L309
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L309:
	extsw 3,3
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
.L313:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne 0,.L313
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
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L319
	mr 9,3
.L318:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L318
.L317:
	subf 3,3,9
	sradi 3,3,2
	blr
.L319:
	mr 9,3
	b .L317
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
	cmpdi 0,5,0
	beq 0,.L330
	mtctr 5
.L322:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne 0,.L324
	cmpwi 0,9,0
	beq 0,.L324
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	bdnz .L322
	li 3,0
	b .L323
.L330:
	li 3,0
	b .L323
.L326:
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
.L323:
	extsw 3,3
	blr
.L324:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bge 0,.L326
	li 3,-1
	b .L323
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
	cmpdi 0,5,0
	beq 0,.L340
	mtctr 5
.L334:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	addi 5,5,-1
	addi 3,3,4
	bdnz .L334
	li 3,0
	blr
.L340:
	li 3,0
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
	cmpdi 0,5,0
	beq 0,.L352
	mtctr 5
.L344:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L356
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	bdnz .L344
	li 3,0
.L345:
	extsw 3,3
	blr
.L352:
	li 3,0
	b .L345
.L348:
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	b .L345
.L356:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bge 0,.L348
	li 3,-1
	b .L345
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
	cmpdi 0,5,0
	beqlr 0
	addi 4,4,-4
	addi 9,3,-4
	mtctr 5
.L359:
	lwzu 10,4(4)
	stwu 10,4(9)
	addi 5,5,-1
	bdnz .L359
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
	subf 10,4,3
	sldi 9,5,2
	cmpld 0,10,9
	blt 0,.L364
	addi 4,4,-4
	addi 9,3,-4
	mtctr 5
	cmpdi 0,5,0
	beqlr 0
.L367:
	lwzu 10,4(4)
	stwu 10,4(9)
	addi 5,5,-1
	bdnz .L367
	blr
.L364:
	cmpdi 0,5,0
	beqlr 0
	add 4,4,9
	add 9,3,9
	mtctr 5
.L366:
	lwzu 10,-4(4)
	stwu 10,-4(9)
	addi 5,5,-1
	bdnz .L366
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
	cmpdi 0,5,0
	beqlr 0
	addi 9,3,-4
	mtctr 5
.L376:
	stwu 4,4(9)
	addi 5,5,-1
	bdnz .L376
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
	bge 0,.L380
	add 3,3,5
	add 4,4,5
	cmpdi 0,5,0
	beqlr 0
	mtctr 5
.L382:
	lbzu 9,-1(3)
	stbu 9,-1(4)
	addi 5,5,-1
	bdnz .L382
	blr
.L380:
	cmpld 0,3,4
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 3,3,-1
	addi 4,4,-1
	mtctr 5
.L383:
	lbzu 9,1(3)
	stbu 9,1(4)
	addi 5,5,-1
	bdnz .L383
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
	rotld 3,3,4
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
	subfic 4,4,64
	rotld 3,3,4
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
	rlwinm 4,4,0,28,31
	slw 9,3,4
	neg 4,4
	rlwinm 4,4,0,28,31
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
	rlwinm 4,4,0,28,31
	srw 9,3,4
	neg 4,4
	rlwinm 4,4,0,28,31
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
	rlwinm 4,4,0,29,31
	slw 9,3,4
	neg 4,4
	rlwinm 4,4,0,29,31
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
	rlwinm 4,4,0,29,31
	srw 9,3,4
	neg 4,4
	rlwinm 4,4,0,29,31
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
	srdi 8,3,24
	rlwinm 10,3,24,16,23
	rlwinm 9,3,8,8,15
	slwi 3,3,24
	or 3,9,3
	or 3,3,8
	or 3,3,10
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
	srdi 6,3,40
	rlwinm 6,6,0,16,23
	srdi 7,3,24
	rlwinm 7,7,0,8,15
	srdi 8,3,8
	rlwinm 8,8,0,0,7
	rldicr 10,3,32,7
	srdi 10,10,24
	rldicr 9,3,40,7
	srdi 9,9,16
	rldicr 5,3,48,7
	srdi 5,5,8
	srdi 4,3,56
	rldimi 4,3,56,0
	or 6,6,4
	or 7,7,6
	or 8,8,7
	or 10,10,8
	or 9,9,10
	or 3,5,9
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
	li 10,32
	mtctr 10
.L404:
	srw 10,3,9
	andi. 10,10,0x1
	bne 0,.L407
	addi 9,9,1
	bdnz .L404
	li 3,0
	b .L403
.L407:
	addi 3,9,1
.L403:
	extsw 3,3
	blr
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
	mr. 10,3
	beq 0,.L411
	andi. 3,10,0x1
	bne 0,.L409
	li 3,1
.L410:
	srawi 9,10,1
	extsw 10,9
	addi 3,3,1
	andi. 9,9,0x1
	beq 0,.L410
.L409:
	extsw 3,3
	blr
.L411:
	li 3,0
	b .L409
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
	blt 0,.L414
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L414:
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
	blt 0,.L417
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L417:
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
	blt 0,.L420
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L420:
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
	fcmpu 0,0,1
	beqlr 0
	cmpwi 0,4,0
	blt 0,.L429
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
	b .L427
.L429:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L427
.L426:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmuls 0,0,0
.L427:
	andi. 9,4,0x1
	beq 0,.L426
	fmuls 1,1,0
	b .L426
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
	fcmpu 0,0,1
	beqlr 0
	cmpwi 0,4,0
	blt 0,.L436
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	b .L434
.L436:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L434
.L433:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmul 0,0,0
.L434:
	andi. 9,4,0x1
	beq 0,.L433
	fmul 1,1,0
	b .L433
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
	bun 0,.L438
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
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq 0,.L444
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	cmpwi 0,31,0
	blt 0,.L446
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L441
.L446:
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L441
.L440:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L445
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L441:
	andi. 9,31,0x1
	beq 0,.L440
	fmr 3,30
	fmr 4,31
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L440
.L444:
	.cfi_restore 62
	.cfi_restore 63
	ld 31,40(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L438:
	fmr 1,28
	fmr 2,29
	addi 1,1,80
	.cfi_def_cfa_offset 0
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L445:
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
	b .L438
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
	cmpdi 0,5,0
	beqlr 0
	addi 4,4,-1
	addi 10,3,-1
	mtctr 5
.L449:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
	addi 5,5,-1
	bdnz .L449
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
	cmpdi 0,30,0
	beq 0,.L453
	addi 31,31,-1
	mtctr 30
.L454:
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	beq 0,.L456
	addi 3,3,1
	addi 30,30,-1
	bdnz .L454
.L453:
	li 9,0
	stb 9,0(3)
.L456:
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
	cmpdi 0,4,0
	beq 0,.L468
	subf 8,3,4
.L461:
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr 0
	addi 3,3,1
	cmpdi 0,8,1
	addi 8,8,-1
	bne 0,.L461
	mr 3,4
	blr
.L468:
	mr 3,4
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
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L477
.L471:
	addi 10,4,-1
.L474:
	lbzu 9,1(10)
	andi. 8,9,0xff
	beq 0,.L478
	lbz 8,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,8,9
	bne 0,.L474
	blr
.L477:
	li 3,0
	blr
.L478:
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne 0,.L471
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
	mr 10,3
	li 3,0
	b .L481
.L480:
	addi 10,10,1
	andi. 9,9,0xff
	beqlr 0
.L481:
	lbz 9,0(10)
	rlwinm 8,9,0,0xff
	cmpw 0,8,4
	bne 0,.L480
	mr 3,10
	b .L480
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
	beq 0,.L485
	std 28,32(1)
	.cfi_offset 28, -32
	lbz 28,0(30)
.L487:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq 0,.L492
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L491
	addi 31,31,1
	b .L487
.L492:
	ld 28,32(1)
	.cfi_restore 28
.L485:
	mr 3,31
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
.L491:
	.cfi_def_cfa_offset 64
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 28,32(1)
	.cfi_restore 28
	b .L485
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
	blt 0,.L503
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	b .L496
.L503:
	fcmpu 0,2,0
	bnglr 0
.L496:
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	subf 30,6,4
	add 30,3,30
	cmpdi 0,6,0
	beq 0,.L504
	cmpld 0,4,6
	blt 0,.L509
	cmpld 0,3,30
	bgt 0,.L510
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	std 27,40(1)
	.cfi_offset 27, -40
	std 28,48(1)
	.cfi_offset 28, -32
	std 29,56(1)
	.cfi_offset 29, -24
	lbz 28,0(5)
	addi 27,5,1
	addi 29,6,-1
	b .L507
.L506:
	addi 31,31,1
	cmpld 0,30,31
	blt 0,.L514
.L507:
	lbz 9,0(31)
	cmpw 0,9,28
	bne 0,.L506
	mr 5,29
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne 0,.L506
	mr 3,31
	ld 27,40(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,48(1)
	.cfi_restore 28
	ld 29,56(1)
	.cfi_restore 29
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
	b .L504
.L514:
	.cfi_restore_state
	li 3,0
	ld 27,40(1)
	.cfi_restore 27
	ld 28,48(1)
	.cfi_restore 28
	ld 29,56(1)
	.cfi_restore 29
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L504:
	addi 1,1,80
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L509:
	.cfi_restore_state
	li 3,0
	b .L504
.L510:
	li 3,0
	b .L504
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
	blt 0,.L539
.L518:
	li 9,0
	addis 8,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(8)
	fcmpu 0,1,0
	cror 2,0,3
	beq 0,.L537
	addis 7,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(7)
.L522:
	addi 9,9,1
	fmul 1,1,12
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L522
.L523:
	stw 9,0(4)
	cmpwi 0,10,0
	beqlr 0
	fneg 1,1
	blr
.L539:
	fneg 1,1
	li 10,1
	b .L518
.L537:
	addis 8,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(8)
	li 9,0
	fcmpu 0,1,0
	bnl 0,.L523
	li 9,0
	addis 7,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(7)
	fcmpu 0,1,0
	beq 0,.L523
	lfd 0,.LC24@toc@l(8)
.L525:
	addi 9,9,-1
	fadd 1,1,1
	fcmpu 0,1,0
	blt 0,.L525
	b .L523
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
	cmpdi 0,3,0
	beq 0,.L543
	li 3,0
.L542:
	rldicl 9,10,0,63
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	srdi. 10,10,1
	bne 0,.L542
	blr
.L543:
	li 3,0
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
	cmplw 0,4,3
	bge 0,.L554
.L547:
	cmpwi 0,4,0
	blt 0,.L554
	slwi 10,4,1
	rldicl 4,10,0,32
	slwi 9,9,1
	cmplw 0,3,10
	ble 0,.L549
	cmpwi 0,9,0
	bne 0,.L547
	mr 10,9
.L550:
	cmpdi 0,5,0
	bne 0,.L561
.L555:
	rldicl 3,10,0,32
	blr
.L552:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L550
.L553:
	cmplw 0,3,4
	blt 0,.L552
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L552
.L549:
	mr 10,9
	cmpwi 0,9,0
	beq 0,.L550
.L554:
	li 10,0
	b .L553
.L561:
	mr 10,3
	b .L555
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
	beq 0,.L564
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
.L563:
	extsw 3,3
	blr
.L564:
	li 3,7
	b .L563
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
	sradi 10,3,63
	xor 9,3,10
	cmpd 0,3,10
	beq 0,.L567
	cntlzd 3,9
	addi 3,3,-1
.L566:
	extsw 3,3
	blr
.L567:
	li 3,63
	b .L566
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
	mr. 10,3
	beq 0,.L571
	li 3,0
.L570:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne 0,.L570
.L569:
	rldicl 3,3,0,32
	blr
.L571:
	li 3,0
	b .L569
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
	srwi 7,5,3
	rlwinm 6,5,0,0,28
	cmpld 0,3,4
	bge 0,.L574
.L577:
	rldicl 9,7,0,32
	addi 8,4,-8
	addi 10,3,-8
	mtctr 9
	cmpwi 0,7,0
	beq 0,.L576
.L580:
	ldu 7,8(8)
	stdu 7,8(10)
	addi 9,9,-1
	bdnz .L580
.L576:
	cmplw 0,6,5
	bgelr 0
	subf 5,6,5
	rldicl 5,5,0,32
	rldicl 6,6,0,32
	addi 6,6,-1
	add 4,4,6
	add 3,3,6
	mtctr 5
.L581:
	lbzu 10,1(4)
	stbu 10,1(3)
	addi 5,5,-1
	bdnz .L581
	blr
.L574:
	mr 9,5
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L577
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	mtctr 5
	cmpdi 0,5,0
	beqlr 0
.L582:
	lbzu 10,-1(4)
	stbu 10,-1(3)
	addi 9,9,-1
	bdnz .L582
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
	srwi 7,5,1
	cmpld 0,3,4
	bge 0,.L593
.L596:
	rldicl 9,7,0,32
	addi 8,4,-2
	addi 10,3,-2
	mtctr 9
	cmpwi 0,7,0
	beq 0,.L595
.L599:
	lhzu 7,2(8)
	sthu 7,2(10)
	addi 9,9,-1
	bdnz .L599
.L595:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L593:
	mr 8,5
	add 9,4,5
	cmpld 0,9,3
	blt 0,.L596
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 9,3,9
	mtctr 5
	cmpdi 0,5,0
	beqlr 0
.L600:
	lbzu 7,-1(4)
	stbu 7,-1(9)
	addi 8,8,-1
	bdnz .L600
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
	srwi 7,5,2
	rlwinm 6,5,0,0,29
	cmpld 0,3,4
	bge 0,.L609
.L612:
	rldicl 9,7,0,32
	addi 8,4,-4
	addi 10,3,-4
	mtctr 9
	cmpwi 0,7,0
	beq 0,.L611
.L615:
	lwzu 7,4(8)
	stwu 7,4(10)
	addi 9,9,-1
	bdnz .L615
.L611:
	cmplw 0,6,5
	bgelr 0
	subf 5,6,5
	rldicl 5,5,0,32
	rldicl 6,6,0,32
	addi 6,6,-1
	add 4,4,6
	add 3,3,6
	mtctr 5
.L616:
	lbzu 10,1(4)
	stbu 10,1(3)
	addi 5,5,-1
	bdnz .L616
	blr
.L609:
	mr 9,5
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L612
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	mtctr 5
	cmpdi 0,5,0
	beqlr 0
.L617:
	lbzu 10,-1(4)
	stbu 10,-1(3)
	addi 9,9,-1
	bdnz .L617
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
	blt 0,.L633
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L633:
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
	blt 0,.L636
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L637
	mr 9,3
.L637:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L636:
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
	bge 0,.L638
	mr 9,10
.L638:
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
	li 9,16
	mtctr 9
.L642:
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L641
	addi 10,10,1
	bdnz .L642
.L641:
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
	li 10,16
	mtctr 10
.L647:
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L646
	addi 9,9,1
	bdnz .L647
.L646:
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
	bne 0,.L656
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L656:
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
	li 9,16
	mtctr 9
.L658:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
	bdnz .L658
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
	li 9,16
	mtctr 9
.L662:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
	bdnz .L662
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
	mr. 10,3
	beq 0,.L668
	li 3,0
.L667:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne 0,.L667
.L666:
	rldicl 3,3,0,32
	blr
.L668:
	li 3,0
	b .L666
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
	beq 0,.L673
	cmpdi 0,4,0
	beq 0,.L674
	li 3,0
.L672:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	srdi. 4,4,1
	bne 0,.L672
.L671:
	rldicl 3,3,0,32
	blr
.L673:
	li 3,0
	b .L671
.L674:
	li 3,0
	b .L671
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
	cmplw 0,4,3
	bge 0,.L684
.L677:
	cmpwi 0,4,0
	blt 0,.L684
	slwi 10,4,1
	rldicl 4,10,0,32
	slwi 9,9,1
	cmplw 0,3,10
	ble 0,.L679
	cmpwi 0,9,0
	bne 0,.L677
	mr 10,9
.L680:
	cmpdi 0,5,0
	bne 0,.L691
.L685:
	rldicl 3,10,0,32
	blr
.L682:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L680
.L683:
	cmplw 0,3,4
	blt 0,.L682
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L682
.L679:
	mr 10,9
	cmpwi 0,9,0
	beq 0,.L680
.L684:
	li 10,0
	b .L683
.L691:
	mr 10,3
	b .L685
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
	blt 0,.L693
	mfcr 3
	rlwinm 3,3,2,1
.L693:
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
	blt 0,.L696
	mfcr 3
	rlwinm 3,3,2,1
.L696:
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
	cmpwi 0,4,0
	blt 0,.L709
	li 7,0
	cmpdi 0,4,0
	beq 0,.L710
.L705:
	li 8,32
	li 10,0
.L703:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,3
	add 10,10,9
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
	cmpdi 0,4,0
	beq 0,.L702
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne 0,.L703
.L702:
	cmpwi 0,7,0
	beq 0,.L704
	neg 10,10
.L704:
	extsw 3,10
	blr
.L709:
	neg 4,4
	extsw 4,4
	li 7,1
	b .L705
.L710:
	li 10,0
	b .L704
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
	stdu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_offset 65, 16
	cmpdi 0,3,0
	blt 0,.L720
	cmpdi 0,4,0
	blt 0,.L721
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L711
.L720:
	neg 3,3
	cmpdi 0,4,0
	blt 0,.L722
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
.L715:
	neg 3,3
.L711:
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
.L721:
	.cfi_restore_state
	neg 4,4
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L715
.L722:
	neg 4,4
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L711
	.long 0
	.byte 0,0,0,1,128,0,0,0
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
	stdu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_offset 65, 16
	cmpdi 0,3,0
	blt 0,.L727
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L723
.L727:
	neg 3,3
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	neg 3,3
.L723:
	addi 1,1,32
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
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
	li 10,16
	mtctr 10
	cmplw 0,4,3
	bge 0,.L736
.L729:
	andi. 10,4,0x8000
	bne 0,.L736
	rldic 4,4,1,48
	slwi 10,9,1
	mr 9,10
	cmplw 0,3,4
	ble 0,.L731
	bdnz .L729
	li 10,0
.L732:
	cmpdi 0,5,0
	bne 0,.L745
.L737:
	rlwinm 3,10,0,0xffff
	blr
.L734:
	rldicl 8,9,63,49
	mr 9,8
	srdi 4,4,1
	cmpwi 0,8,0
	beq 0,.L732
.L735:
	cmplw 0,3,4
	blt 0,.L734
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,9,10
	b .L734
.L731:
	andi. 8,10,0xffff
	beq 0,.L732
.L736:
	li 10,0
	b .L735
.L745:
	mr 10,3
	b .L737
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
	mr 10,3
	li 9,1
	cmpld 0,4,3
	bge 0,.L754
.L747:
	andis. 8,4,0x8000
	bne 0,.L754
	sldi 4,4,1
	sldi 9,9,1
	cmpld 0,10,4
	ble 0,.L749
	cmpdi 0,9,0
	bne 0,.L747
	mr 3,9
.L750:
	cmpdi 0,5,0
	beqlr 0
	mr 3,10
	blr
.L752:
	srdi 4,4,1
	srdi. 9,9,1
	beq 0,.L750
.L753:
	cmpld 0,10,4
	blt 0,.L752
	subf 10,4,10
	or 3,3,9
	b .L752
.L749:
	mr 3,9
	cmpdi 0,9,0
	beq 0,.L750
.L754:
	li 3,0
	b .L753
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
	beq 0,.L762
	addi 4,4,-32
	slw 3,3,4
	sldi 3,3,32
	blr
.L762:
	cmpdi 0,4,0
	beqlr 0
	sradi 3,3,32
	slw 3,3,4
	subfic 10,4,32
	srw 10,9,10
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
	beq 0,.L767
	li 10,0
	addi 5,5,-64
	sld 4,3,5
.L768:
	mr 3,10
	blr
.L767:
	cmpdi 0,5,0
	beqlr 0
	sld 10,3,5
	sld 4,4,5
	subfic 5,5,64
	srd 9,3,5
	or 4,4,9
	b .L768
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
	beq 0,.L772
	sradi 9,3,32
	srawi 3,9,31
	addi 4,4,-32
	sraw 9,9,4
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L772:
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
	beq 0,.L777
	sradi 10,4,63
	addi 5,5,-64
	srad 3,4,5
.L778:
	mr 4,10
	blr
.L777:
	cmpdi 0,5,0
	beqlr 0
	srad 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L778
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
	srdi 6,3,40
	rlwinm 6,6,0,16,23
	srdi 7,3,24
	rlwinm 7,7,0,8,15
	srdi 8,3,8
	rlwinm 8,8,0,0,7
	rldicr 10,3,32,7
	srdi 10,10,24
	rldicr 9,3,40,7
	srdi 9,9,16
	rldicr 5,3,48,7
	srdi 5,5,8
	srdi 4,3,56
	rldimi 4,3,56,0
	or 6,6,4
	or 7,7,6
	or 8,8,7
	or 10,10,8
	or 9,9,10
	or 3,5,9
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
	rlwinm 10,3,24,16,23
	rlwinm 9,3,8,8,15
	srwi 8,3,24
	rlwimi 8,3,24,0,31-24
	or 10,10,8
	or 3,9,10
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
	rldicl 8,3,0,32
	addis 8,8,0xffff
	srdi 8,8,63
	slwi 8,8,4
	subfic 9,8,16
	srw 9,3,9
	rlwinm 10,9,0,16,23
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	subfic 7,10,8
	srw 9,9,7
	add 8,10,8
	rlwinm 10,9,0,24,27
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	subfic 7,10,4
	srw 9,9,7
	add 8,10,8
	rlwinm 10,9,0,28,29
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	subfic 7,10,2
	srw 9,9,7
	add 10,10,8
	subfic 3,9,2
	rldicl 9,9,63,63
	addi 9,9,-1
	and 3,3,9
	add 3,3,10
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
	cntlzd 10,4
	srdi 10,10,6
	rlwinm 8,10,0,0xff
	addi 9,8,-1
	extsw 9,9
	and 9,9,4
	cmpwi 0,8,0
	bne 0,.L788
	li 3,0
.L788:
	or 9,9,3
	cntlzd 9,9
	slwi 3,10,6
	add 3,3,9
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
	sradi 8,3,32
	sradi 10,4,32
	li 9,0
	cmpw 0,8,10
	blt 0,.L790
	li 9,2
	bgt 0,.L790
	li 9,0
	cmplw 0,3,4
	blt 0,.L790
	li 9,2
	bgt 0,.L790
	li 9,1
.L790:
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
	blt 0,.L798
	li 9,2
	bgt 0,.L798
	li 9,0
	cmpld 0,3,5
	blt 0,.L798
	subfc 5,3,5
	subfe 9,9,9
	subfic 9,9,1
.L798:
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
	rlwinm 8,3,0,16,31
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,4
	srw 9,3,8
	rlwinm 10,9,0,24,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	srw 9,9,10
	add 8,10,8
	rlwinm 10,9,0,28,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	srw 9,9,10
	add 8,10,8
	rlwinm 10,9,0,30,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	srw 9,9,10
	rlwinm 9,9,0,30,31
	add 10,10,8
	not 3,9
	rlwinm 3,3,0,31,31
	srwi 9,9,1
	subfic 9,9,2
	neg 3,3
	and 3,3,9
	add 3,3,10
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
	andi. 9,10,0xff
	bne 0,.L806
	li 4,0
.L806:
	addi 9,9,-1
	extsw 9,9
	and 3,9,3
	or 3,4,3
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
	bne 0,.L808
	cmpdi 0,4,0
	beq 0,.L809
	neg 3,4
	and 3,3,4
	cntlzd 3,3
	subfic 3,3,128
	b .L809
.L808:
	neg 3,9
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
.L809:
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
	beq 0,.L812
	srdi 3,3,32
	addi 4,4,-32
	srw 3,3,4
	blr
.L812:
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
	beq 0,.L817
	li 10,0
	addi 5,5,-64
	srd 3,4,5
.L818:
	mr 4,10
	blr
.L817:
	cmpdi 0,5,0
	beqlr 0
	srd 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L818
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
	rlwinm 9,3,0,16,31
	rlwinm 10,4,0,16,31
	mullw 8,9,10
	srwi 7,8,16
	srwi 3,3,16
	mullw 10,10,3
	add 10,10,7
	srwi 7,10,16
	rlwinm 10,10,0,0xffff
	srwi 4,4,16
	mullw 9,9,4
	add 9,9,10
	rlwimi 8,9,16,0,31-16
	srwi 9,9,16
	mullw 3,3,4
	add 10,7,3
	add 9,9,10
	sldi 9,9,32
	rldicl 3,8,0,32
	or 3,3,9
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
	mr 9,3
	rldicl 8,3,0,32
	rldicl 10,4,0,32
	mulld 3,8,10
	srdi 7,3,32
	srdi 9,9,32
	mulld 10,10,9
	add 10,10,7
	srdi 6,10,32
	rldicl 10,10,0,32
	srdi 7,4,32
	mulld 8,8,7
	add 10,8,10
	srdi 4,10,32
	mulld 9,9,7
	add 9,6,9
	rldimi 3,10,32,0
	add 4,4,9
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
	xor 9,9,3
	srwi 3,9,8
	xor 3,3,9
	srwi 9,3,4
	xor 9,9,3
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	xor 9,9,4
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	xor 9,9,3
	srwi 3,9,8
	xor 3,3,9
	srwi 9,3,4
	xor 9,9,3
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	add 10,10,3
	srdi 9,10,4
	add 9,9,10
	lis 10,0xf0f
	ori 10,10,0xf0f
	rldimi 10,10,32,0
	and 9,9,10
	srdi 10,9,32
	add 10,10,9
	srwi 9,10,16
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
	srwi 10,3,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	and 3,3,9
	add 10,10,3
	srwi 9,10,4
	add 9,9,10
	lis 10,0xf0f
	ori 10,10,0xf0f
	and 9,9,10
	srwi 10,9,16
	add 9,10,9
	srwi 3,9,8
	add 3,3,9
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
	mr 5,3
	sldi 0,4,63
	srdi 30,3,1
	or 30,0,30
	srdi 31,4,1
	lis 3,0x5555
	ori 3,3,0x5555
	rldimi 3,3,32,0
	and 30,30,3
	and 31,31,3
	subfc 10,30,5
	subfe 11,31,4
	sldi 5,11,62
	srdi 8,10,2
	or 8,5,8
	srdi 9,11,2
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 27,5
	and 4,8,5
	and 5,9,5
	and 10,10,27
	and 11,11,27
	addc 8,4,10
	adde 10,5,11
	srdi 9,8,4
	rldimi 9,10,60,0
	srdi 5,10,4
	addc 6,9,8
	adde 7,5,10
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 6,6,9
	and 7,7,9
	add 6,7,6
	srdi 10,6,32
	add 10,10,6
	srwi 9,10,16
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
	fmr 0,1
	mr 9,4
	addis 10,2,.LC32@toc@ha
	lfd 1,.LC32@toc@l(10)
	b .L839
.L837:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L838
	fmul 0,0,0
.L839:
	andi. 10,9,0x1
	beq 0,.L837
	fmul 1,1,0
	b .L837
.L838:
	cmpwi 0,4,0
	bgelr 0
	addis 9,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(9)
	fdiv 1,0,1
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
	fmr 0,1
	mr 9,4
	addis 10,2,.LC33@toc@ha
	lfs 1,.LC33@toc@l(10)
	b .L844
.L842:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L843
	fmuls 0,0,0
.L844:
	andi. 10,9,0x1
	beq 0,.L842
	fmuls 1,1,0
	b .L842
.L843:
	cmpwi 0,4,0
	bgelr 0
	addis 9,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(9)
	fdivs 1,0,1
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
	srdi 8,3,32
	srdi 10,4,32
	li 9,0
	cmplw 0,8,10
	blt 0,.L847
	li 9,2
	bgt 0,.L847
	li 9,0
	cmplw 0,3,4
	blt 0,.L847
	li 9,2
	bgt 0,.L847
	li 9,1
.L847:
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
	blt 0,.L855
	li 9,2
	bgt 0,.L855
	li 9,0
	cmpld 0,3,5
	blt 0,.L855
	subfc 5,3,5
	subfe 9,9,9
	subfic 9,9,1
.L855:
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
