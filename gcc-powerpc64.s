	.file	"mini-libc.c"
	.machine ppc64
	.section	".text"
	.align 2
	.globl make_ti
	.section	".opd","aw"
	.align 3
make_ti:
	.quad	.L.make_ti,.TOC.@tocbase
	.previous
	.type	make_ti, @function
.L.make_ti:
.LFB0:
	.cfi_startproc
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE0:
	.size	make_ti,.-.L.make_ti
	.align 2
	.globl make_tu
	.section	".opd","aw"
	.align 3
make_tu:
	.quad	.L.make_tu,.TOC.@tocbase
	.previous
	.type	make_tu, @function
.L.make_tu:
.LFB1:
	.cfi_startproc
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE1:
	.size	make_tu,.-.L.make_tu
	.align 2
	.globl memmove
	.section	".opd","aw"
	.align 3
memmove:
	.quad	.L.memmove,.TOC.@tocbase
	.previous
	.type	memmove, @function
.L.memmove:
.LFB2:
	.cfi_startproc
	cmpld 0,3,4
	ble- 0,.L4
	add 4,4,5
	add 9,3,5
	cmpdi 0,5,0
	beqlr- 0
	mtctr 5
.L6:
	lbzu 10,-1(4)
	stbu 10,-1(9)
	addi 5,5,-1
	bdnz .L6
	blr
.L4:
	cmpld 0,3,4
	beqlr- 0
	cmpdi 0,5,0
	beqlr- 0
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
	.size	memmove,.-.L.memmove
	.align 2
	.globl memccpy
	.section	".opd","aw"
	.align 3
memccpy:
	.quad	.L.memccpy,.TOC.@tocbase
	.previous
	.type	memccpy, @function
.L.memccpy:
.LFB3:
	.cfi_startproc
	rlwinm 5,5,0,0xff
	cmpdi 0,6,0
	beq- 0,.L17
	addi 4,4,-1
	mtctr 6
.L14:
	lbzu 9,1(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq- 0,.L22
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
	.size	memccpy,.-.L.memccpy
	.align 2
	.globl memchr
	.section	".opd","aw"
	.align 3
memchr:
	.quad	.L.memchr,.TOC.@tocbase
	.previous
	.type	memchr, @function
.L.memchr:
.LFB4:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	cmpdi 0,5,0
	beq- 0,.L30
	mtctr 5
.L24:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
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
	.size	memchr,.-.L.memchr
	.align 2
	.globl memcmp
	.section	".opd","aw"
	.align 3
memcmp:
	.quad	.L.memcmp,.TOC.@tocbase
	.previous
	.type	memcmp, @function
.L.memcmp:
.LFB5:
	.cfi_startproc
	cmpdi 0,5,0
	beq- 0,.L41
	mtctr 5
.L34:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L45
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
	.size	memcmp,.-.L.memcmp
	.align 2
	.globl memcpy
	.section	".opd","aw"
	.align 3
memcpy:
	.quad	.L.memcpy,.TOC.@tocbase
	.previous
	.type	memcpy, @function
.L.memcpy:
.LFB6:
	.cfi_startproc
	cmpdi 0,5,0
	beqlr- 0
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
	.size	memcpy,.-.L.memcpy
	.align 2
	.globl memrchr
	.section	".opd","aw"
	.align 3
memrchr:
	.quad	.L.memrchr,.TOC.@tocbase
	.previous
	.type	memrchr, @function
.L.memrchr:
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
	bne+ 0,.L52
	blr
.L55:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE7:
	.size	memrchr,.-.L.memrchr
	.align 2
	.globl memset
	.section	".opd","aw"
	.align 3
memset:
	.quad	.L.memset,.TOC.@tocbase
	.previous
	.type	memset, @function
.L.memset:
.LFB8:
	.cfi_startproc
	cmpdi 0,5,0
	beqlr- 0
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
	.size	memset,.-.L.memset
	.align 2
	.globl stpcpy
	.section	".opd","aw"
	.align 3
stpcpy:
	.quad	.L.stpcpy,.TOC.@tocbase
	.previous
	.type	stpcpy, @function
.L.stpcpy:
.LFB9:
	.cfi_startproc
	lbz 9,0(4)
	stb 9,0(3)
	andi. 9,9,0xff
	beqlr- 0
.L63:
	lbzu 9,1(4)
	stbu 9,1(3)
	andi. 9,9,0xff
	bne+ 0,.L63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-.L.stpcpy
	.align 2
	.globl strchrnul
	.section	".opd","aw"
	.align 3
strchrnul:
	.quad	.L.strchrnul,.TOC.@tocbase
	.previous
	.type	strchrnul, @function
.L.strchrnul:
.LFB10:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	lbz 9,0(3)
	andi. 10,9,0xff
	beqlr- 0
.L67:
	rlwinm 9,9,0,0xff
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	andi. 10,9,0xff
	bne+ 0,.L67
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-.L.strchrnul
	.align 2
	.globl strchr
	.section	".opd","aw"
	.align 3
strchr:
	.quad	.L.strchr,.TOC.@tocbase
	.previous
	.type	strchr, @function
.L.strchr:
.LFB11:
	.cfi_startproc
.L75:
	lbz 9,0(3)
	rlwinm 10,9,0,0xff
	cmpw 0,10,4
	beqlr- 0
	addi 3,3,1
	andi. 9,9,0xff
	bne+ 0,.L75
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE11:
	.size	strchr,.-.L.strchr
	.align 2
	.globl strcmp
	.section	".opd","aw"
	.align 3
strcmp:
	.quad	.L.strcmp,.TOC.@tocbase
	.previous
	.type	strcmp, @function
.L.strcmp:
.LFB12:
	.cfi_startproc
	lbz 9,0(3)
	lbz 10,0(4)
	rlwinm 7,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,7,8
	bne- 0,.L78
.L79:
	andi. 8,9,0xff
	beq- 0,.L78
	lbzu 9,1(3)
	lbzu 10,1(4)
	rlwinm 7,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,7,8
	beq+ 0,.L79
.L78:
	rlwinm 9,9,0,0xff
	rlwinm 3,10,0,0xff
	subf 3,3,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE12:
	.size	strcmp,.-.L.strcmp
	.align 2
	.globl strlen
	.section	".opd","aw"
	.align 3
strlen:
	.quad	.L.strlen,.TOC.@tocbase
	.previous
	.type	strlen, @function
.L.strlen:
.LFB13:
	.cfi_startproc
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L84
	mr 9,3
.L83:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L83
.L82:
	subf 3,3,9
	blr
.L84:
	mr 9,3
	b .L82
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE13:
	.size	strlen,.-.L.strlen
	.align 2
	.globl strncmp
	.section	".opd","aw"
	.align 3
strncmp:
	.quad	.L.strncmp,.TOC.@tocbase
	.previous
	.type	strncmp, @function
.L.strncmp:
.LFB14:
	.cfi_startproc
	cmpdi 0,5,0
	beq- 0,.L91
	lbz 10,0(3)
	andi. 9,10,0xff
	beq- 0,.L88
	addi 5,5,-1
	add 7,4,5
	addi 9,5,1
	mtctr 9
.L89:
	lbz 9,0(4)
	andi. 8,9,0xff
	beq- 0,.L88
	bdz .L94
	rlwinm 9,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,9,8
	bne- 0,.L88
	addi 4,4,1
	lbzu 10,1(3)
	andi. 9,10,0xff
	bne+ 0,.L89
	b .L88
.L94:
	mr 4,7
.L88:
	rlwinm 10,10,0,0xff
	lbz 3,0(4)
	subf 3,3,10
.L87:
	extsw 3,3
	blr
.L91:
	li 3,0
	b .L87
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE14:
	.size	strncmp,.-.L.strncmp
	.align 2
	.globl swab
	.section	".opd","aw"
	.align 3
swab:
	.quad	.L.swab,.TOC.@tocbase
	.previous
	.type	swab, @function
.L.swab:
.LFB15:
	.cfi_startproc
	cmpdi 0,5,1
	blelr- 0
	srdi 5,5,1
	mtctr 5
.L97:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
	addi 5,5,-1
	bdnz .L97
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE15:
	.size	swab,.-.L.swab
	.align 2
	.globl isalpha
	.section	".opd","aw"
	.align 3
isalpha:
	.quad	.L.isalpha,.TOC.@tocbase
	.previous
	.type	isalpha, @function
.L.isalpha:
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
	.size	isalpha,.-.L.isalpha
	.align 2
	.globl isascii
	.section	".opd","aw"
	.align 3
isascii:
	.quad	.L.isascii,.TOC.@tocbase
	.previous
	.type	isascii, @function
.L.isascii:
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
	.size	isascii,.-.L.isascii
	.align 2
	.globl isblank
	.section	".opd","aw"
	.align 3
isblank:
	.quad	.L.isblank,.TOC.@tocbase
	.previous
	.type	isblank, @function
.L.isblank:
.LFB18:
	.cfi_startproc
	cmpwi 0,3,32
	beq- 0,.L104
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
.L103:
	extsw 3,3
	blr
.L104:
	li 3,1
	b .L103
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE18:
	.size	isblank,.-.L.isblank
	.align 2
	.globl iscntrl
	.section	".opd","aw"
	.align 3
iscntrl:
	.quad	.L.iscntrl,.TOC.@tocbase
	.previous
	.type	iscntrl, @function
.L.iscntrl:
.LFB19:
	.cfi_startproc
	cmplwi 0,3,31
	ble- 0,.L107
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
.L106:
	extsw 3,3
	blr
.L107:
	li 3,1
	b .L106
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-.L.iscntrl
	.align 2
	.globl isdigit
	.section	".opd","aw"
	.align 3
isdigit:
	.quad	.L.isdigit,.TOC.@tocbase
	.previous
	.type	isdigit, @function
.L.isdigit:
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
	.size	isdigit,.-.L.isdigit
	.align 2
	.globl isgraph
	.section	".opd","aw"
	.align 3
isgraph:
	.quad	.L.isgraph,.TOC.@tocbase
	.previous
	.type	isgraph, @function
.L.isgraph:
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
	.size	isgraph,.-.L.isgraph
	.align 2
	.globl islower
	.section	".opd","aw"
	.align 3
islower:
	.quad	.L.islower,.TOC.@tocbase
	.previous
	.type	islower, @function
.L.islower:
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
	.size	islower,.-.L.islower
	.align 2
	.globl isprint
	.section	".opd","aw"
	.align 3
isprint:
	.quad	.L.isprint,.TOC.@tocbase
	.previous
	.type	isprint, @function
.L.isprint:
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
	.size	isprint,.-.L.isprint
	.align 2
	.globl isspace
	.section	".opd","aw"
	.align 3
isspace:
	.quad	.L.isspace,.TOC.@tocbase
	.previous
	.type	isspace, @function
.L.isspace:
.LFB24:
	.cfi_startproc
	cmpwi 0,3,32
	beq- 0,.L114
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
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
.LFE24:
	.size	isspace,.-.L.isspace
	.align 2
	.globl isupper
	.section	".opd","aw"
	.align 3
isupper:
	.quad	.L.isupper,.TOC.@tocbase
	.previous
	.type	isupper, @function
.L.isupper:
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
	.size	isupper,.-.L.isupper
	.align 2
	.globl iswcntrl
	.section	".opd","aw"
	.align 3
iswcntrl:
	.quad	.L.iswcntrl,.TOC.@tocbase
	.previous
	.type	iswcntrl, @function
.L.iswcntrl:
.LFB26:
	.cfi_startproc
	li 9,1
	cmplwi 0,3,31
	ble- 0,.L117
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble- 0,.L117
	addi 10,3,-8232
	cmplwi 0,10,1
	ble- 0,.L117
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
.L117:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE26:
	.size	iswcntrl,.-.L.iswcntrl
	.align 2
	.globl iswdigit
	.section	".opd","aw"
	.align 3
iswdigit:
	.quad	.L.iswdigit,.TOC.@tocbase
	.previous
	.type	iswdigit, @function
.L.iswdigit:
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
	.size	iswdigit,.-.L.iswdigit
	.align 2
	.globl iswprint
	.section	".opd","aw"
	.align 3
iswprint:
	.quad	.L.iswprint,.TOC.@tocbase
	.previous
	.type	iswprint, @function
.L.iswprint:
.LFB28:
	.cfi_startproc
	cmplwi 0,3,254
	ble- 0,.L129
	li 9,1
	cmplwi 0,3,8231
	ble- 0,.L124
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble- 0,.L124
	addis 10,3,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	ble- 0,.L124
	addis 10,3,0xffff
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt- 0,.L124
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
	b .L124
.L129:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
.L124:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE28:
	.size	iswprint,.-.L.iswprint
	.align 2
	.globl iswxdigit
	.section	".opd","aw"
	.align 3
iswxdigit:
	.quad	.L.iswxdigit,.TOC.@tocbase
	.previous
	.type	iswxdigit, @function
.L.iswxdigit:
.LFB29:
	.cfi_startproc
	addi 9,3,-48
	cmplwi 0,9,9
	ble- 0,.L132
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
.L131:
	extsw 3,3
	blr
.L132:
	li 3,1
	b .L131
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-.L.iswxdigit
	.align 2
	.globl toascii
	.section	".opd","aw"
	.align 3
toascii:
	.quad	.L.toascii,.TOC.@tocbase
	.previous
	.type	toascii, @function
.L.toascii:
.LFB30:
	.cfi_startproc
	rldicl 3,3,0,57
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE30:
	.size	toascii,.-.L.toascii
	.align 2
	.globl fdim
	.section	".opd","aw"
	.align 3
fdim:
	.quad	.L.fdim,.TOC.@tocbase
	.previous
	.type	fdim, @function
.L.fdim:
.LFB31:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 0,2,2
	bun- 0,.L138
	fcmpu 0,1,2
	bng- 0,.L141
	fsub 1,1,2
	blr
.L138:
	fmr 1,2
	blr
.L141:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE31:
	.size	fdim,.-.L.fdim
	.align 2
	.globl fdimf
	.section	".opd","aw"
	.align 3
fdimf:
	.quad	.L.fdimf,.TOC.@tocbase
	.previous
	.type	fdimf, @function
.L.fdimf:
.LFB32:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 0,2,2
	bun- 0,.L146
	fcmpu 0,1,2
	bng- 0,.L149
	fsubs 1,1,2
	blr
.L146:
	fmr 1,2
	blr
.L149:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE32:
	.size	fdimf,.-.L.fdimf
	.align 2
	.globl fmax
	.section	".opd","aw"
	.align 3
fmax:
	.quad	.L.fmax,.TOC.@tocbase
	.previous
	.type	fmax, @function
.L.fmax:
.LFB33:
	.cfi_startproc
	fcmpu 0,1,1
	bun- 0,.L155
	fcmpu 0,2,2
	bunlr- 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L152
	cmpwi 0,9,0
	beqlr- 0
	fmr 1,2
	blr
.L152:
	fmr 0,1
	fcmpu 0,1,2
	bnl- 0,.L154
	fmr 0,2
.L154:
	fmr 1,0
	blr
.L155:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE33:
	.size	fmax,.-.L.fmax
	.align 2
	.globl fmaxf
	.section	".opd","aw"
	.align 3
fmaxf:
	.quad	.L.fmaxf,.TOC.@tocbase
	.previous
	.type	fmaxf, @function
.L.fmaxf:
.LFB34:
	.cfi_startproc
	stfs 1,48(1)
	stfs 2,56(1)
	fcmpu 0,1,1
	bun- 0,.L163
	fcmpu 0,2,2
	bun- 0,.L164
	lwz 9,48(1)
	rlwinm 9,9,0,0,0
	lwz 10,56(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq- 0,.L160
	cmpwi 0,9,0
	beqlr- 0
	fmr 1,2
	blr
.L160:
	lfs 1,48(1)
	lfs 12,56(1)
	fcmpu 0,1,12
	bnllr- 0
	fmr 1,12
	blr
.L163:
	lfs 1,56(1)
	blr
.L164:
	lfs 1,48(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-.L.fmaxf
	.align 2
	.globl fmaxl
	.section	".opd","aw"
	.align 3
fmaxl:
	.quad	.L.fmaxl,.TOC.@tocbase
	.previous
	.type	fmaxl, @function
.L.fmaxl:
.LFB35:
	.cfi_startproc
	fmr 11,1
	fcmpu 0,11,11
	bun- 0,.L171
	fmr 11,3
	fcmpu 0,11,11
	bunlr- 0
	fmr 0,1
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L168
	cmpwi 0,9,0
	beqlr- 0
	fmr 1,3
	fmr 2,4
	blr
.L168:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr- 0
	fmr 1,3
	fmr 2,4
	blr
.L171:
	fmr 1,3
	fmr 2,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-.L.fmaxl
	.align 2
	.globl fmin
	.section	".opd","aw"
	.align 3
fmin:
	.quad	.L.fmin,.TOC.@tocbase
	.previous
	.type	fmin, @function
.L.fmin:
.LFB36:
	.cfi_startproc
	fmr 0,1
	fcmpu 0,1,1
	bun- 0,.L179
	fcmpu 0,2,2
	bunlr- 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L176
	fmr 1,2
	cmpwi 0,9,0
	beqlr- 0
	fmr 1,0
	blr
.L176:
	fmr 1,2
	fcmpu 0,0,2
	bnllr- 0
	fmr 1,0
	blr
.L179:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE36:
	.size	fmin,.-.L.fmin
	.align 2
	.globl fminf
	.section	".opd","aw"
	.align 3
fminf:
	.quad	.L.fminf,.TOC.@tocbase
	.previous
	.type	fminf, @function
.L.fminf:
.LFB37:
	.cfi_startproc
	stfs 1,48(1)
	stfs 2,56(1)
	fcmpu 0,1,1
	bun- 0,.L187
	fcmpu 0,2,2
	bun- 0,.L188
	lwz 9,48(1)
	rlwinm 9,9,0,0,0
	lwz 10,56(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq- 0,.L184
	fmr 1,2
	cmpwi 0,9,0
	beqlr- 0
	lfs 1,48(1)
	blr
.L184:
	lfs 1,56(1)
	lfs 0,48(1)
	fcmpu 0,0,1
	bnllr- 0
	fmr 1,0
	blr
.L187:
	lfs 1,56(1)
	blr
.L188:
	lfs 1,48(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE37:
	.size	fminf,.-.L.fminf
	.align 2
	.globl fminl
	.section	".opd","aw"
	.align 3
fminl:
	.quad	.L.fminl,.TOC.@tocbase
	.previous
	.type	fminl, @function
.L.fminl:
.LFB38:
	.cfi_startproc
	fmr 13,2
	fmr 12,1
	fmr 0,3
	fmr 1,4
	fmr 11,12
	fcmpu 0,11,11
	bun- 0,.L195
	fmr 11,0
	fcmpu 0,11,11
	bun- 0,.L196
	fmr 11,12
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	fmr 11,0
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L192
	cmpwi 0,9,0
	beq- 0,.L197
	fmr 1,12
	blr
.L192:
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl- 0,.L193
	fmr 1,12
	blr
.L193:
	fmr 2,4
	fmr 1,3
	blr
.L195:
	fmr 2,4
	fmr 1,3
	blr
.L196:
	fmr 1,12
	blr
.L197:
	fmr 2,4
	fmr 1,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-.L.fminl
	.section	.rodata
	.align 3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 2
	.globl l64a
	.section	".opd","aw"
	.align 3
l64a:
	.quad	.L.l64a,.TOC.@tocbase
	.previous
	.type	l64a, @function
.L.l64a:
.LFB39:
	.cfi_startproc
	mr 9,3
	cmpwi 0,3,0
	beq- 0,.L201
	addis 10,2,s.0@toc@ha
	addi 10,10,s.0@toc@l
	addis 7,2,digits@toc@ha
	addi 7,7,digits@toc@l
.L200:
	rldicl 8,9,0,58
	lbzx 8,7,8
	stb 8,0(10)
	addi 10,10,1
	srwi 9,9,6
	cmpwi 0,9,0
	bne+ 0,.L200
.L199:
	li 9,0
	stb 9,0(10)
	addis 3,2,s.0@toc@ha
	addi 3,3,s.0@toc@l
	blr
.L201:
	addis 10,2,s.0@toc@ha
	addi 10,10,s.0@toc@l
	b .L199
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-.L.l64a
	.lcomm	seed,8,8
	.type	seed, @object
	.align 2
	.globl srand
	.section	".opd","aw"
	.align 3
srand:
	.quad	.L.srand,.TOC.@tocbase
	.previous
	.type	srand, @function
.L.srand:
.LFB40:
	.cfi_startproc
	addi 3,3,-1
	rldicl 3,3,0,32
	addis 9,2,seed@toc@ha
	std 3,seed@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE40:
	.size	srand,.-.L.srand
	.align 2
	.globl rand
	.section	".opd","aw"
	.align 3
rand:
	.quad	.L.rand,.TOC.@tocbase
	.previous
	.type	rand, @function
.L.rand:
.LFB41:
	.cfi_startproc
	addis 7,2,seed@toc@ha
	ld 10,seed@toc@l(7)
	sldi 9,10,4
	subf 9,10,9
	sldi 8,9,6
	subf 9,9,8
	sldi 8,9,7
	add 9,9,8
	sldi 9,9,2
	add 9,9,10
	sldi 8,9,6
	subf 9,9,8
	sldi 9,9,7
	add 9,9,10
	sldi 9,9,2
	add 9,9,10
	sldi 8,9,3
	subf 9,9,8
	sldi 8,9,3
	subf 9,9,8
	sldi 3,9,6
	subf 3,9,3
	sldi 3,3,2
	subf 3,10,3
	sldi 3,3,7
	subf 3,10,3
	sldi 3,3,2
	add 3,3,10
	sldi 3,3,2
	subf 3,10,3
	sldi 3,3,2
	subf 3,10,3
	sldi 3,3,2
	add 3,3,10
	addi 3,3,1
	std 3,seed@toc@l(7)
	srdi 3,3,33
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE41:
	.size	rand,.-.L.rand
	.align 2
	.globl insque
	.section	".opd","aw"
	.align 3
insque:
	.quad	.L.insque,.TOC.@tocbase
	.previous
	.type	insque, @function
.L.insque:
.LFB42:
	.cfi_startproc
	cmpdi 0,4,0
	beq- 0,.L208
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr- 0
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
	.size	insque,.-.L.insque
	.align 2
	.globl remque
	.section	".opd","aw"
	.align 3
remque:
	.quad	.L.remque,.TOC.@tocbase
	.previous
	.type	remque, @function
.L.remque:
.LFB43:
	.cfi_startproc
	ld 9,0(3)
	cmpdi 0,9,0
	beq- 0,.L210
	ld 10,8(3)
	std 10,8(9)
.L210:
	ld 9,8(3)
	cmpdi 0,9,0
	beqlr- 0
	ld 10,0(3)
	std 10,0(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE43:
	.size	remque,.-.L.remque
	.align 2
	.globl lsearch
	.section	".opd","aw"
	.align 3
lsearch:
	.quad	.L.lsearch,.TOC.@tocbase
	.previous
	.type	lsearch, @function
.L.lsearch:
.LFB44:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	stdu 1,-192(1)
	.cfi_def_cfa_offset 192
	.cfi_offset 65, 16
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	std 2,40(1)
	mr 26,3
	mr 23,4
	mr 24,5
	mr 27,6
	ld 28,0(5)
	cmpdi 0,28,0
	beq- 0,.L213
	std 29,168(1)
	.cfi_offset 29, -24
	std 30,176(1)
	.cfi_offset 30, -16
	std 31,184(1)
	.cfi_offset 31, -8
	mr 30,7
	mr 31,4
	li 29,0
.L215:
	mr 25,31
	mr 4,31
	mr 3,26
	ld 9,0(30)
	mtctr 9
	ld 11,16(30)
	ld 2,8(30)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	beq- 0,.L218
	addi 29,29,1
	add 31,31,27
	cmpld 0,28,29
	bne+ 0,.L215
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L213:
	addi 9,28,1
	std 9,0(24)
	mulld 28,27,28
	mr 5,27
	mr 4,26
	add 3,23,28
	bl memcpy
	nop
	mr 25,3
.L212:
	mr 3,25
	addi 1,1,192
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
.L218:
	.cfi_def_cfa_offset 192
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
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
	b .L212
	.long 0
	.byte 0,0,0,1,128,9,0,0
	.cfi_endproc
.LFE44:
	.size	lsearch,.-.L.lsearch
	.align 2
	.globl lfind
	.section	".opd","aw"
	.align 3
lfind:
	.quad	.L.lfind,.TOC.@tocbase
	.previous
	.type	lfind, @function
.L.lfind:
.LFB45:
	.cfi_startproc
	std 25,-56(1)
	std 26,-48(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	ld 26,0(5)
	cmpdi 0,26,0
	beq- 0,.L222
	mflr 0
	.cfi_register 65, 0
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	std 27,136(1)
	.cfi_offset 27, -40
	std 28,144(1)
	.cfi_offset 28, -32
	std 29,152(1)
	.cfi_offset 29, -24
	std 30,160(1)
	.cfi_offset 30, -16
	std 31,168(1)
	.cfi_offset 31, -8
	mr 28,3
	mr 27,6
	mr 30,7
	mr 31,4
	li 29,0
.L221:
	mr 25,31
	mr 4,31
	mr 3,28
	ld 9,0(30)
	mtctr 9
	ld 11,16(30)
	ld 2,8(30)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	beq- 0,.L225
	addi 29,29,1
	add 31,31,27
	cmpld 0,26,29
	bne+ 0,.L221
	li 25,0
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	ld 30,160(1)
	.cfi_restore 30
	ld 31,168(1)
	.cfi_restore 31
	ld 0,192(1)
	mtlr 0
	.cfi_restore 65
	b .L219
.L222:
	li 25,0
	b .L219
.L225:
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	ld 30,160(1)
	.cfi_restore 30
	ld 31,168(1)
	.cfi_restore 31
	ld 0,192(1)
	mtlr 0
	.cfi_restore 65
.L219:
	mr 3,25
	addi 1,1,176
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
	.size	lfind,.-.L.lfind
	.align 2
	.globl abs
	.section	".opd","aw"
	.align 3
abs:
	.quad	.L.abs,.TOC.@tocbase
	.previous
	.type	abs, @function
.L.abs:
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
	.size	abs,.-.L.abs
	.align 2
	.globl atoi
	.section	".opd","aw"
	.align 3
atoi:
	.quad	.L.atoi,.TOC.@tocbase
	.previous
	.type	atoi, @function
.L.atoi:
.LFB47:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L228
.L229:
	addi 31,31,1
.L228:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne+ 0,.L229
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq- 0,.L230
	cmpwi 0,9,45
	bne- 0,.L231
	li 3,1
.L230:
	addi 31,31,1
.L231:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	bgt- 0,.L233
.L232:
	slwi 10,8,2
	add 10,10,8
	slwi 10,10,1
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 8,9,10
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L232
.L233:
	cmpwi 0,3,0
	bne- 0,.L234
	neg 8,8
.L234:
	extsw 3,8
	addi 1,1,128
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
.LFE47:
	.size	atoi,.-.L.atoi
	.align 2
	.globl atol
	.section	".opd","aw"
	.align 3
atol:
	.quad	.L.atol,.TOC.@tocbase
	.previous
	.type	atol, @function
.L.atol:
.LFB48:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L241
.L242:
	addi 31,31,1
.L241:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne+ 0,.L242
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq- 0,.L243
	cmpwi 0,9,45
	bne- 0,.L244
	li 8,1
.L243:
	addi 31,31,1
.L244:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	li 3,0
	cmplwi 0,10,9
	bgt- 0,.L246
.L245:
	sldi 10,3,2
	add 10,10,3
	sldi 10,10,1
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 3,9,10
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L245
.L246:
	cmpwi 0,8,0
	bne- 0,.L240
	neg 3,3
.L240:
	addi 1,1,128
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
.LFE48:
	.size	atol,.-.L.atol
	.align 2
	.globl atoll
	.section	".opd","aw"
	.align 3
atoll:
	.quad	.L.atoll,.TOC.@tocbase
	.previous
	.type	atoll, @function
.L.atoll:
.LFB49:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L253
.L254:
	addi 31,31,1
.L253:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne+ 0,.L254
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq- 0,.L255
	cmpwi 0,9,45
	bne- 0,.L256
	li 8,1
.L255:
	addi 31,31,1
.L256:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	li 3,0
	cmplwi 0,10,9
	bgt- 0,.L258
.L257:
	sldi 10,3,2
	add 10,10,3
	sldi 10,10,1
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 3,9,10
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L257
.L258:
	cmpwi 0,8,0
	bne- 0,.L252
	neg 3,3
.L252:
	addi 1,1,128
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
.LFE49:
	.size	atoll,.-.L.atoll
	.align 2
	.globl bsearch
	.section	".opd","aw"
	.align 3
bsearch:
	.quad	.L.bsearch,.TOC.@tocbase
	.previous
	.type	bsearch, @function
.L.bsearch:
.LFB50:
	.cfi_startproc
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 25,3
	mr 26,4
	mr 27,6
	mr 29,7
	mr. 31,5
	beq- 0,.L268
	mflr 0
	.cfi_register 65, 0
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	std 28,144(1)
	.cfi_offset 28, -32
	b .L267
.L269:
	mr 31,28
.L266:
	cmpdi 0,31,0
	beq- 0,.L273
.L267:
	srdi 28,31,1
	mulld 30,28,27
	add 30,26,30
	mr 4,30
	mr 3,25
	ld 9,0(29)
	mtctr 9
	ld 11,16(29)
	ld 2,8(29)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	blt- 0,.L269
	ble- 0,.L272
	add 26,30,27
	addi 31,31,-1
	subf 31,28,31
	b .L266
.L273:
	li 30,0
	ld 28,144(1)
	.cfi_restore 28
	ld 0,192(1)
	mtlr 0
	.cfi_restore 65
.L264:
	mr 3,30
	addi 1,1,176
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L268:
	.cfi_restore_state
	li 30,0
	b .L264
.L272:
	.cfi_offset 28, -32
	.cfi_offset 65, 16
	ld 28,144(1)
	.cfi_restore 28
	ld 0,192(1)
	mtlr 0
	.cfi_restore 65
	b .L264
	.long 0
	.byte 0,0,0,1,128,7,0,0
	.cfi_endproc
.LFE50:
	.size	bsearch,.-.L.bsearch
	.align 2
	.globl bsearch_r
	.section	".opd","aw"
	.align 3
bsearch_r:
	.quad	.L.bsearch_r,.TOC.@tocbase
	.previous
	.type	bsearch_r, @function
.L.bsearch_r:
.LFB51:
	.cfi_startproc
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
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
	beq- 0,.L278
	mflr 0
	.cfi_register 65, 0
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	b .L277
.L276:
	srawi 30,30,1
	cmpwi 0,30,0
	beq- 0,.L282
.L277:
	srawi 31,30,1
	mulld 31,31,28
	add 31,27,31
	mr 5,26
	mr 4,31
	mr 3,25
	ld 9,0(29)
	mtctr 9
	ld 11,16(29)
	ld 2,8(29)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	beq- 0,.L281
	ble- 0,.L276
	add 27,31,28
	addi 30,30,-1
	b .L276
.L282:
	li 31,0
	ld 0,192(1)
	mtlr 0
	.cfi_restore 65
	b .L274
.L278:
	li 31,0
	b .L274
.L281:
	.cfi_offset 65, 16
	ld 0,192(1)
	mtlr 0
	.cfi_restore 65
.L274:
	mr 3,31
	addi 1,1,176
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
	.size	bsearch_r,.-.L.bsearch_r
	.align 2
	.globl div
	.section	".opd","aw"
	.align 3
div:
	.quad	.L.div,.TOC.@tocbase
	.previous
	.type	div, @function
.L.div:
.LFB52:
	.cfi_startproc
	divw 8,4,5
	mullw 5,8,5
	subf 4,5,4
	stw 8,0(3)
	stw 4,4(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE52:
	.size	div,.-.L.div
	.align 2
	.globl imaxabs
	.section	".opd","aw"
	.align 3
imaxabs:
	.quad	.L.imaxabs,.TOC.@tocbase
	.previous
	.type	imaxabs, @function
.L.imaxabs:
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
	.size	imaxabs,.-.L.imaxabs
	.align 2
	.globl imaxdiv
	.section	".opd","aw"
	.align 3
imaxdiv:
	.quad	.L.imaxdiv,.TOC.@tocbase
	.previous
	.type	imaxdiv, @function
.L.imaxdiv:
.LFB54:
	.cfi_startproc
	divd 10,4,5
	mulld 5,10,5
	subf 4,5,4
	std 10,0(3)
	std 4,8(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-.L.imaxdiv
	.align 2
	.globl labs
	.section	".opd","aw"
	.align 3
labs:
	.quad	.L.labs,.TOC.@tocbase
	.previous
	.type	labs, @function
.L.labs:
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
	.size	labs,.-.L.labs
	.align 2
	.globl ldiv
	.section	".opd","aw"
	.align 3
ldiv:
	.quad	.L.ldiv,.TOC.@tocbase
	.previous
	.type	ldiv, @function
.L.ldiv:
.LFB56:
	.cfi_startproc
	divd 10,4,5
	mulld 5,10,5
	subf 4,5,4
	std 10,0(3)
	std 4,8(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE56:
	.size	ldiv,.-.L.ldiv
	.align 2
	.globl llabs
	.section	".opd","aw"
	.align 3
llabs:
	.quad	.L.llabs,.TOC.@tocbase
	.previous
	.type	llabs, @function
.L.llabs:
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
	.size	llabs,.-.L.llabs
	.align 2
	.globl lldiv
	.section	".opd","aw"
	.align 3
lldiv:
	.quad	.L.lldiv,.TOC.@tocbase
	.previous
	.type	lldiv, @function
.L.lldiv:
.LFB58:
	.cfi_startproc
	divd 10,4,5
	mulld 5,10,5
	subf 4,5,4
	std 10,0(3)
	std 4,8(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE58:
	.size	lldiv,.-.L.lldiv
	.align 2
	.globl wcschr
	.section	".opd","aw"
	.align 3
wcschr:
	.quad	.L.wcschr,.TOC.@tocbase
	.previous
	.type	wcschr, @function
.L.wcschr:
.LFB59:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L297
.L291:
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L291
	li 3,0
	blr
.L297:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE59:
	.size	wcschr,.-.L.wcschr
	.align 2
	.globl wcscmp
	.section	".opd","aw"
	.align 3
wcscmp:
	.quad	.L.wcscmp,.TOC.@tocbase
	.previous
	.type	wcscmp, @function
.L.wcscmp:
.LFB60:
	.cfi_startproc
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L299
.L300:
	cmpwi 0,9,0
	beq- 0,.L299
	cmpwi 0,10,0
	beq- 0,.L299
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	beq+ 0,.L300
.L299:
	li 3,-1
	cmpw 0,9,10
	blt- 0,.L302
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L302:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-.L.wcscmp
	.align 2
	.globl wcscpy
	.section	".opd","aw"
	.align 3
wcscpy:
	.quad	.L.wcscpy,.TOC.@tocbase
	.previous
	.type	wcscpy, @function
.L.wcscpy:
.LFB61:
	.cfi_startproc
	addi 4,4,-4
	addi 10,3,-4
.L305:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L305
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-.L.wcscpy
	.align 2
	.globl wcslen
	.section	".opd","aw"
	.align 3
wcslen:
	.quad	.L.wcslen,.TOC.@tocbase
	.previous
	.type	wcslen, @function
.L.wcslen:
.LFB62:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L311
	mr 9,3
.L310:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L310
.L309:
	subf 3,3,9
	sradi 3,3,2
	blr
.L311:
	mr 9,3
	b .L309
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE62:
	.size	wcslen,.-.L.wcslen
	.align 2
	.globl wcsncmp
	.section	".opd","aw"
	.align 3
wcsncmp:
	.quad	.L.wcsncmp,.TOC.@tocbase
	.previous
	.type	wcsncmp, @function
.L.wcsncmp:
.LFB63:
	.cfi_startproc
	cmpdi 0,5,0
	beq- 0,.L322
	mtctr 5
.L314:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L316
	cmpwi 0,9,0
	beq- 0,.L316
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	bdnz .L314
	li 3,0
	b .L315
.L322:
	li 3,0
	b .L315
.L318:
	extsw 3,3
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
.L315:
	extsw 3,3
	blr
.L316:
	lwz 3,0(3)
	lwz 10,0(4)
	cmpw 0,3,10
	bge- 0,.L318
	li 3,-1
	b .L315
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-.L.wcsncmp
	.align 2
	.globl wmemchr
	.section	".opd","aw"
	.align 3
wmemchr:
	.quad	.L.wmemchr,.TOC.@tocbase
	.previous
	.type	wmemchr, @function
.L.wmemchr:
.LFB64:
	.cfi_startproc
	cmpdi 0,5,0
	beq- 0,.L332
	mtctr 5
.L326:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	addi 5,5,-1
	addi 3,3,4
	bdnz .L326
	li 3,0
	blr
.L332:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-.L.wmemchr
	.align 2
	.globl wmemcmp
	.section	".opd","aw"
	.align 3
wmemcmp:
	.quad	.L.wmemcmp,.TOC.@tocbase
	.previous
	.type	wmemcmp, @function
.L.wmemcmp:
.LFB65:
	.cfi_startproc
	cmpdi 0,5,0
	beq- 0,.L344
	mtctr 5
.L336:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L348
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	bdnz .L336
	li 3,0
.L337:
	extsw 3,3
	blr
.L344:
	li 3,0
	b .L337
.L340:
	extsw 3,3
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	b .L337
.L348:
	lwz 3,0(3)
	lwz 10,0(4)
	cmpw 0,3,10
	bge- 0,.L340
	li 3,-1
	b .L337
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-.L.wmemcmp
	.align 2
	.globl wmemcpy
	.section	".opd","aw"
	.align 3
wmemcpy:
	.quad	.L.wmemcpy,.TOC.@tocbase
	.previous
	.type	wmemcpy, @function
.L.wmemcpy:
.LFB66:
	.cfi_startproc
	cmpdi 0,5,0
	beqlr- 0
	addi 4,4,-4
	addi 9,3,-4
	mtctr 5
.L351:
	lwzu 10,4(4)
	stwu 10,4(9)
	addi 5,5,-1
	bdnz .L351
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-.L.wmemcpy
	.align 2
	.globl wmemmove
	.section	".opd","aw"
	.align 3
wmemmove:
	.quad	.L.wmemmove,.TOC.@tocbase
	.previous
	.type	wmemmove, @function
.L.wmemmove:
.LFB67:
	.cfi_startproc
	cmpld 0,3,4
	beqlr- 0
	subf 10,4,3
	sldi 9,5,2
	cmpld 0,10,9
	blt- 0,.L356
	addi 4,4,-4
	addi 9,3,-4
	mtctr 5
	cmpdi 0,5,0
	beqlr- 0
.L359:
	lwzu 10,4(4)
	stwu 10,4(9)
	addi 5,5,-1
	bdnz .L359
	blr
.L356:
	cmpdi 0,5,0
	beqlr- 0
	add 4,4,9
	add 9,3,9
	mtctr 5
.L358:
	lwzu 10,-4(4)
	stwu 10,-4(9)
	addi 5,5,-1
	bdnz .L358
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-.L.wmemmove
	.align 2
	.globl wmemset
	.section	".opd","aw"
	.align 3
wmemset:
	.quad	.L.wmemset,.TOC.@tocbase
	.previous
	.type	wmemset, @function
.L.wmemset:
.LFB68:
	.cfi_startproc
	cmpdi 0,5,0
	beqlr- 0
	addi 9,3,-4
	mtctr 5
.L368:
	stwu 4,4(9)
	addi 5,5,-1
	bdnz .L368
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE68:
	.size	wmemset,.-.L.wmemset
	.align 2
	.globl bcopy
	.section	".opd","aw"
	.align 3
bcopy:
	.quad	.L.bcopy,.TOC.@tocbase
	.previous
	.type	bcopy, @function
.L.bcopy:
.LFB69:
	.cfi_startproc
	cmpld 0,3,4
	bge- 0,.L372
	add 3,3,5
	add 4,4,5
	cmpdi 0,5,0
	beqlr- 0
	mtctr 5
.L374:
	lbzu 9,-1(3)
	stbu 9,-1(4)
	addi 5,5,-1
	bdnz .L374
	blr
.L372:
	cmpld 0,3,4
	beqlr- 0
	cmpdi 0,5,0
	beqlr- 0
	addi 3,3,-1
	addi 4,4,-1
	mtctr 5
.L375:
	lbzu 9,1(3)
	stbu 9,1(4)
	addi 5,5,-1
	bdnz .L375
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE69:
	.size	bcopy,.-.L.bcopy
	.align 2
	.globl rotl64
	.section	".opd","aw"
	.align 3
rotl64:
	.quad	.L.rotl64,.TOC.@tocbase
	.previous
	.type	rotl64, @function
.L.rotl64:
.LFB70:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE70:
	.size	rotl64,.-.L.rotl64
	.align 2
	.globl rotr64
	.section	".opd","aw"
	.align 3
rotr64:
	.quad	.L.rotr64,.TOC.@tocbase
	.previous
	.type	rotr64, @function
.L.rotr64:
.LFB71:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE71:
	.size	rotr64,.-.L.rotr64
	.align 2
	.globl rotl32
	.section	".opd","aw"
	.align 3
rotl32:
	.quad	.L.rotl32,.TOC.@tocbase
	.previous
	.type	rotl32, @function
.L.rotl32:
.LFB72:
	.cfi_startproc
	rotlw 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE72:
	.size	rotl32,.-.L.rotl32
	.align 2
	.globl rotr32
	.section	".opd","aw"
	.align 3
rotr32:
	.quad	.L.rotr32,.TOC.@tocbase
	.previous
	.type	rotr32, @function
.L.rotr32:
.LFB73:
	.cfi_startproc
	subfic 4,4,32
	rotlw 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE73:
	.size	rotr32,.-.L.rotr32
	.align 2
	.globl rotl_sz
	.section	".opd","aw"
	.align 3
rotl_sz:
	.quad	.L.rotl_sz,.TOC.@tocbase
	.previous
	.type	rotl_sz, @function
.L.rotl_sz:
.LFB74:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE74:
	.size	rotl_sz,.-.L.rotl_sz
	.align 2
	.globl rotr_sz
	.section	".opd","aw"
	.align 3
rotr_sz:
	.quad	.L.rotr_sz,.TOC.@tocbase
	.previous
	.type	rotr_sz, @function
.L.rotr_sz:
.LFB75:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE75:
	.size	rotr_sz,.-.L.rotr_sz
	.align 2
	.globl rotl16
	.section	".opd","aw"
	.align 3
rotl16:
	.quad	.L.rotl16,.TOC.@tocbase
	.previous
	.type	rotl16, @function
.L.rotl16:
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
	.size	rotl16,.-.L.rotl16
	.align 2
	.globl rotr16
	.section	".opd","aw"
	.align 3
rotr16:
	.quad	.L.rotr16,.TOC.@tocbase
	.previous
	.type	rotr16, @function
.L.rotr16:
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
	.size	rotr16,.-.L.rotr16
	.align 2
	.globl rotl8
	.section	".opd","aw"
	.align 3
rotl8:
	.quad	.L.rotl8,.TOC.@tocbase
	.previous
	.type	rotl8, @function
.L.rotl8:
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
	.size	rotl8,.-.L.rotl8
	.align 2
	.globl rotr8
	.section	".opd","aw"
	.align 3
rotr8:
	.quad	.L.rotr8,.TOC.@tocbase
	.previous
	.type	rotr8, @function
.L.rotr8:
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
	.size	rotr8,.-.L.rotr8
	.align 2
	.globl bswap_16
	.section	".opd","aw"
	.align 3
bswap_16:
	.quad	.L.bswap_16,.TOC.@tocbase
	.previous
	.type	bswap_16, @function
.L.bswap_16:
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
	.size	bswap_16,.-.L.bswap_16
	.align 2
	.globl bswap_32
	.section	".opd","aw"
	.align 3
bswap_32:
	.quad	.L.bswap_32,.TOC.@tocbase
	.previous
	.type	bswap_32, @function
.L.bswap_32:
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
	.size	bswap_32,.-.L.bswap_32
	.align 2
	.globl bswap_64
	.section	".opd","aw"
	.align 3
bswap_64:
	.quad	.L.bswap_64,.TOC.@tocbase
	.previous
	.type	bswap_64, @function
.L.bswap_64:
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
	.size	bswap_64,.-.L.bswap_64
	.align 2
	.globl ffs
	.section	".opd","aw"
	.align 3
ffs:
	.quad	.L.ffs,.TOC.@tocbase
	.previous
	.type	ffs, @function
.L.ffs:
.LFB83:
	.cfi_startproc
	li 9,0
	li 10,32
	mtctr 10
.L396:
	srw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L399
	addi 9,9,1
	bdnz .L396
	li 3,0
	b .L395
.L399:
	addi 3,9,1
.L395:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE83:
	.size	ffs,.-.L.ffs
	.align 2
	.globl libiberty_ffs
	.section	".opd","aw"
	.align 3
libiberty_ffs:
	.quad	.L.libiberty_ffs,.TOC.@tocbase
	.previous
	.type	libiberty_ffs, @function
.L.libiberty_ffs:
.LFB84:
	.cfi_startproc
	mr. 10,3
	beq- 0,.L403
	andi. 3,10,0x1
	bne- 0,.L401
	li 3,1
.L402:
	srawi 9,10,1
	extsw 10,9
	addi 3,3,1
	andi. 9,9,0x1
	beq+ 0,.L402
.L401:
	extsw 3,3
	blr
.L403:
	li 3,0
	b .L401
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-.L.libiberty_ffs
	.align 2
	.globl gl_isinff
	.section	".opd","aw"
	.align 3
gl_isinff:
	.quad	.L.gl_isinff,.TOC.@tocbase
	.previous
	.type	gl_isinff, @function
.L.gl_isinff:
.LFB85:
	.cfi_startproc
	li 3,1
	addis 9,2,.LC4@toc@ha
	lfs 0,.LC4@toc@l(9)
	fcmpu 0,1,0
	blt- 0,.L406
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L406:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE85:
	.size	gl_isinff,.-.L.gl_isinff
	.align 2
	.globl gl_isinfd
	.section	".opd","aw"
	.align 3
gl_isinfd:
	.quad	.L.gl_isinfd,.TOC.@tocbase
	.previous
	.type	gl_isinfd, @function
.L.gl_isinfd:
.LFB86:
	.cfi_startproc
	li 3,1
	addis 9,2,.LC8@toc@ha
	lfd 0,.LC8@toc@l(9)
	fcmpu 0,1,0
	blt- 0,.L409
	addis 9,2,.LC9@toc@ha
	lfd 0,.LC9@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L409:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE86:
	.size	gl_isinfd,.-.L.gl_isinfd
	.align 2
	.globl gl_isinfl
	.section	".opd","aw"
	.align 3
gl_isinfl:
	.quad	.L.gl_isinfl,.TOC.@tocbase
	.previous
	.type	gl_isinfl, @function
.L.gl_isinfl:
.LFB87:
	.cfi_startproc
	li 3,1
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt- 0,.L412
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L412:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-.L.gl_isinfl
	.align 2
	.globl _Qp_itoq
	.section	".opd","aw"
	.align 3
_Qp_itoq:
	.quad	.L._Qp_itoq,.TOC.@tocbase
	.previous
	.type	_Qp_itoq, @function
.L._Qp_itoq:
.LFB88:
	.cfi_startproc
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
	.size	_Qp_itoq,.-.L._Qp_itoq
	.align 2
	.globl ldexpf
	.section	".opd","aw"
	.align 3
ldexpf:
	.quad	.L.ldexpf,.TOC.@tocbase
	.previous
	.type	ldexpf, @function
.L.ldexpf:
.LFB89:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fadds 0,1,1
	fcmpu 0,0,1
	beqlr- 0
	cmpwi 0,4,0
	blt- 0,.L421
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	b .L419
.L421:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L419
.L418:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	fmuls 0,0,0
.L419:
	andi. 9,4,0x1
	beq- 0,.L418
	fmuls 1,1,0
	b .L418
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-.L.ldexpf
	.align 2
	.globl ldexp
	.section	".opd","aw"
	.align 3
ldexp:
	.quad	.L.ldexp,.TOC.@tocbase
	.previous
	.type	ldexp, @function
.L.ldexp:
.LFB90:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fadd 0,1,1
	fcmpu 0,0,1
	beqlr- 0
	cmpwi 0,4,0
	blt- 0,.L428
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	b .L426
.L428:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L426
.L425:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	fmul 0,0,0
.L426:
	andi. 9,4,0x1
	beq- 0,.L425
	fmul 1,1,0
	b .L425
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE90:
	.size	ldexp,.-.L.ldexp
	.align 2
	.globl ldexpl
	.section	".opd","aw"
	.align 3
ldexpl:
	.quad	.L.ldexpl,.TOC.@tocbase
	.previous
	.type	ldexpl, @function
.L.ldexpl:
.LFB91:
	.cfi_startproc
	stfd 28,-32(1)
	stfd 29,-24(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 29,2
	fmr 28,1
	fmr 0,28
	fcmpu 0,0,0
	bun- 0,.L430
	mflr 0
	.cfi_register 65, 0
	std 0,176(1)
	.cfi_offset 65, 16
	std 31,120(1)
	.cfi_offset 31, -40
	mr 31,5
	fmr 3,1
	fmr 4,2
	bl __gcc_qadd
	nop
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq- 0,.L436
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	cmpwi 0,31,0
	blt- 0,.L438
	addis 9,2,.LC25@toc@ha
	addi 9,9,.LC25@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L433
.L438:
	addis 9,2,.LC26@toc@ha
	addi 9,9,.LC26@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L433
.L432:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L437
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L433:
	andi. 9,31,0x1
	beq- 0,.L432
	fmr 3,30
	fmr 4,31
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L432
.L436:
	.cfi_restore 62
	.cfi_restore 63
	ld 31,120(1)
	.cfi_restore 31
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
.L430:
	fmr 1,28
	fmr 2,29
	addi 1,1,160
	.cfi_def_cfa_offset 0
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L437:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
	ld 31,120(1)
	.cfi_restore 31
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
	b .L430
	.long 0
	.byte 0,0,2,1,132,1,0,0
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-.L.ldexpl
	.align 2
	.globl memxor
	.section	".opd","aw"
	.align 3
memxor:
	.quad	.L.memxor,.TOC.@tocbase
	.previous
	.type	memxor, @function
.L.memxor:
.LFB92:
	.cfi_startproc
	cmpdi 0,5,0
	beqlr- 0
	addi 4,4,-1
	addi 10,3,-1
	mtctr 5
.L441:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
	addi 5,5,-1
	bdnz .L441
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE92:
	.size	memxor,.-.L.memxor
	.align 2
	.globl strncat
	.section	".opd","aw"
	.align 3
strncat:
	.quad	.L.strncat,.TOC.@tocbase
	.previous
	.type	strncat, @function
.L.strncat:
.LFB93:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
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
	beq- 0,.L445
	addi 31,31,-1
	mtctr 30
.L446:
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	beq- 0,.L448
	addi 3,3,1
	addi 30,30,-1
	bdnz .L446
.L445:
	li 9,0
	stb 9,0(3)
.L448:
	mr 3,29
	addi 1,1,144
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
	.size	strncat,.-.L.strncat
	.align 2
	.globl strnlen
	.section	".opd","aw"
	.align 3
strnlen:
	.quad	.L.strnlen,.TOC.@tocbase
	.previous
	.type	strnlen, @function
.L.strnlen:
.LFB94:
	.cfi_startproc
	mr 9,3
	li 3,0
	cmpdi 0,4,0
	beq- 0,.L460
	subf 8,3,4
.L453:
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr+ 0
	addi 3,3,1
	cmpdi 0,8,1
	addi 8,8,-1
	bne+ 0,.L453
	mr 3,4
	blr
.L460:
	mr 3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE94:
	.size	strnlen,.-.L.strnlen
	.align 2
	.globl strpbrk
	.section	".opd","aw"
	.align 3
strpbrk:
	.quad	.L.strpbrk,.TOC.@tocbase
	.previous
	.type	strpbrk, @function
.L.strpbrk:
.LFB95:
	.cfi_startproc
	lbz 8,0(3)
	andi. 9,8,0xff
	beq- 0,.L469
.L463:
	addi 10,4,-1
	rlwinm 8,8,0,0xff
.L466:
	lbzu 9,1(10)
	andi. 7,9,0xff
	beq- 0,.L470
	rlwinm 9,9,0,0xff
	cmpw 0,9,8
	bne+ 0,.L466
	blr
.L469:
	li 3,0
	blr
.L470:
	lbzu 8,1(3)
	andi. 9,8,0xff
	bne+ 0,.L463
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-.L.strpbrk
	.align 2
	.globl strrchr
	.section	".opd","aw"
	.align 3
strrchr:
	.quad	.L.strrchr,.TOC.@tocbase
	.previous
	.type	strrchr, @function
.L.strrchr:
.LFB96:
	.cfi_startproc
	mr 10,3
	li 3,0
	b .L473
.L472:
	addi 10,10,1
	andi. 9,9,0xff
	beqlr- 0
.L473:
	lbz 9,0(10)
	rlwinm 8,9,0,0xff
	cmpw 0,8,4
	bne+ 0,.L472
	mr 3,10
	b .L472
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE96:
	.size	strrchr,.-.L.strrchr
	.align 2
	.globl strstr
	.section	".opd","aw"
	.align 3
strstr:
	.quad	.L.strstr,.TOC.@tocbase
	.previous
	.type	strstr, @function
.L.strstr:
.LFB97:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	mr 30,4
	mr 3,4
	bl strlen
	mr. 29,3
	beq- 0,.L477
	std 28,112(1)
	.cfi_offset 28, -32
	lbz 28,0(30)
.L479:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L484
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L483
	addi 31,31,1
	b .L479
.L484:
	ld 28,112(1)
	.cfi_restore 28
.L477:
	mr 3,31
	addi 1,1,144
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
.L483:
	.cfi_def_cfa_offset 144
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 28,112(1)
	.cfi_restore 28
	b .L477
	.long 0
	.byte 0,0,0,1,128,4,0,0
	.cfi_endproc
.LFE97:
	.size	strstr,.-.L.strstr
	.align 2
	.globl copysign
	.section	".opd","aw"
	.align 3
copysign:
	.quad	.L.copysign,.TOC.@tocbase
	.previous
	.type	copysign, @function
.L.copysign:
.LFB98:
	.cfi_startproc
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	blt- 0,.L495
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	bnglr- 0
	fcmpu 0,2,0
	bnllr+ 0
	b .L488
.L495:
	fcmpu 0,2,0
	bnglr+ 0
.L488:
	fneg 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE98:
	.size	copysign,.-.L.copysign
	.align 2
	.globl memmem
	.section	".opd","aw"
	.align 3
memmem:
	.quad	.L.memmem,.TOC.@tocbase
	.previous
	.type	memmem, @function
.L.memmem:
.LFB99:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -8
	mr 31,3
	cmpdi 0,6,0
	beq- 0,.L496
	cmpld 0,4,6
	blt- 0,.L501
	std 30,144(1)
	.cfi_offset 30, -16
	subf 30,6,4
	add 30,3,30
	cmpld 0,3,30
	bgt- 0,.L502
	mflr 0
	.cfi_register 65, 0
	std 0,176(1)
	.cfi_offset 65, 16
	std 27,120(1)
	.cfi_offset 27, -40
	std 28,128(1)
	.cfi_offset 28, -32
	std 29,136(1)
	.cfi_offset 29, -24
	lbz 28,0(5)
	addi 27,5,1
	addi 29,6,-1
	b .L499
.L498:
	addi 31,31,1
	cmpld 0,30,31
	blt- 0,.L506
.L499:
	lbz 9,0(31)
	cmpw 0,9,28
	bne+ 0,.L498
	mr 5,29
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L498
	mr 3,31
	ld 27,120(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,128(1)
	.cfi_restore 28
	ld 29,136(1)
	.cfi_restore 29
	ld 30,144(1)
	.cfi_restore 30
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
	b .L496
.L506:
	.cfi_restore_state
	li 3,0
	ld 27,120(1)
	.cfi_restore 27
	ld 28,128(1)
	.cfi_restore 28
	ld 29,136(1)
	.cfi_restore 29
	ld 30,144(1)
	.cfi_restore 30
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
.L496:
	addi 1,1,160
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L501:
	.cfi_restore_state
	li 3,0
	b .L496
.L502:
	.cfi_offset 30, -16
	li 3,0
	ld 30,144(1)
	.cfi_restore 30
	b .L496
	.long 0
	.byte 0,0,0,1,128,5,0,0
	.cfi_endproc
.LFE99:
	.size	memmem,.-.L.memmem
	.align 2
	.globl mempcpy
	.section	".opd","aw"
	.align 3
mempcpy:
	.quad	.L.mempcpy,.TOC.@tocbase
	.previous
	.type	mempcpy, @function
.L.mempcpy:
.LFB100:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,5
	bl memcpy
	nop
	add 3,3,31
	addi 1,1,128
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
	.size	mempcpy,.-.L.mempcpy
	.align 2
	.globl frexp
	.section	".opd","aw"
	.align 3
frexp:
	.quad	.L.frexp,.TOC.@tocbase
	.previous
	.type	frexp, @function
.L.frexp:
.LFB101:
	.cfi_startproc
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	li 10,0
	fcmpu 0,1,0
	blt- 0,.L531
.L510:
	li 9,0
	addis 8,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(8)
	fcmpu 0,1,0
	cror 2,0,3
	beq- 0,.L529
	addis 7,2,.LC18@toc@ha
	lfs 12,.LC18@toc@l(7)
.L514:
	addi 9,9,1
	fmul 1,1,12
	fcmpu 0,1,0
	cror 2,1,2
	beq+ 0,.L514
.L515:
	stw 9,0(4)
	cmpwi 0,10,0
	beqlr- 0
	fneg 1,1
	blr
.L531:
	fneg 1,1
	li 10,1
	b .L510
.L529:
	addis 8,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(8)
	li 9,0
	fcmpu 0,1,0
	bnl- 0,.L515
	li 9,0
	addis 7,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(7)
	fcmpu 0,1,0
	beq- 0,.L515
	lfs 0,.LC18@toc@l(8)
.L517:
	addi 9,9,-1
	fadd 1,1,1
	fcmpu 0,1,0
	blt+ 0,.L517
	b .L515
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE101:
	.size	frexp,.-.L.frexp
	.align 2
	.globl __muldi3
	.section	".opd","aw"
	.align 3
__muldi3:
	.quad	.L.__muldi3,.TOC.@tocbase
	.previous
	.type	__muldi3, @function
.L.__muldi3:
.LFB102:
	.cfi_startproc
	mr 10,3
	cmpdi 0,3,0
	beq- 0,.L535
	li 3,0
.L534:
	rldicl 9,10,0,63
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	srdi. 10,10,1
	bne+ 0,.L534
	blr
.L535:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-.L.__muldi3
	.align 2
	.globl udivmodsi4
	.section	".opd","aw"
	.align 3
udivmodsi4:
	.quad	.L.udivmodsi4,.TOC.@tocbase
	.previous
	.type	udivmodsi4, @function
.L.udivmodsi4:
.LFB103:
	.cfi_startproc
	li 9,1
	cmplw 0,4,3
	bge- 0,.L546
.L539:
	cmpwi 0,4,0
	blt- 0,.L546
	slwi 10,4,1
	rldicl 4,10,0,32
	slwi 9,9,1
	cmplw 0,3,10
	ble- 0,.L541
	cmpwi 0,9,0
	bne+ 0,.L539
	mr 10,9
.L542:
	cmpdi 0,5,0
	bne- 0,.L553
.L547:
	rldicl 3,10,0,32
	blr
.L544:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq- 0,.L542
.L545:
	cmplw 0,3,4
	blt- 0,.L544
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L544
.L541:
	mr 10,9
	cmpwi 0,9,0
	beq- 0,.L542
.L546:
	li 10,0
	b .L545
.L553:
	mr 10,3
	b .L547
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-.L.udivmodsi4
	.align 2
	.globl __clrsbqi2
	.section	".opd","aw"
	.align 3
__clrsbqi2:
	.quad	.L.__clrsbqi2,.TOC.@tocbase
	.previous
	.type	__clrsbqi2, @function
.L.__clrsbqi2:
.LFB104:
	.cfi_startproc
	cmpdi 0,3,0
	beq- 0,.L556
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
.L555:
	extsw 3,3
	blr
.L556:
	li 3,7
	b .L555
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-.L.__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.section	".opd","aw"
	.align 3
__clrsbdi2:
	.quad	.L.__clrsbdi2,.TOC.@tocbase
	.previous
	.type	__clrsbdi2, @function
.L.__clrsbdi2:
.LFB105:
	.cfi_startproc
	sradi 10,3,63
	xor 9,3,10
	cmpd 0,3,10
	beq- 0,.L559
	cntlzd 3,9
	addi 3,3,-1
.L558:
	extsw 3,3
	blr
.L559:
	li 3,63
	b .L558
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-.L.__clrsbdi2
	.align 2
	.globl __mulsi3
	.section	".opd","aw"
	.align 3
__mulsi3:
	.quad	.L.__mulsi3,.TOC.@tocbase
	.previous
	.type	__mulsi3, @function
.L.__mulsi3:
.LFB106:
	.cfi_startproc
	mr. 10,3
	beq- 0,.L563
	li 3,0
.L562:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne+ 0,.L562
.L561:
	rldicl 3,3,0,32
	blr
.L563:
	li 3,0
	b .L561
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-.L.__mulsi3
	.align 2
	.globl __cmovd
	.section	".opd","aw"
	.align 3
__cmovd:
	.quad	.L.__cmovd,.TOC.@tocbase
	.previous
	.type	__cmovd, @function
.L.__cmovd:
.LFB107:
	.cfi_startproc
	srwi 7,5,3
	rlwinm 6,5,0,0,28
	cmpld 0,3,4
	bge- 0,.L566
.L569:
	rldicl 9,7,0,32
	addi 8,4,-8
	addi 10,3,-8
	mtctr 9
	cmpwi 0,7,0
	beq- 0,.L568
.L572:
	ldu 7,8(8)
	stdu 7,8(10)
	addi 9,9,-1
	bdnz .L572
.L568:
	cmplw 0,6,5
	bgelr- 0
	subf 5,6,5
	rldicl 5,5,0,32
	rldicl 6,6,0,32
	addi 6,6,-1
	add 4,4,6
	add 3,3,6
	mtctr 5
.L573:
	lbzu 10,1(4)
	stbu 10,1(3)
	addi 5,5,-1
	bdnz .L573
	blr
.L566:
	mr 9,5
	add 10,4,5
	cmpld 0,10,3
	blt- 0,.L569
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	mtctr 5
	cmpdi 0,5,0
	beqlr- 0
.L574:
	lbzu 10,-1(4)
	stbu 10,-1(3)
	addi 9,9,-1
	bdnz .L574
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-.L.__cmovd
	.align 2
	.globl __cmovh
	.section	".opd","aw"
	.align 3
__cmovh:
	.quad	.L.__cmovh,.TOC.@tocbase
	.previous
	.type	__cmovh, @function
.L.__cmovh:
.LFB108:
	.cfi_startproc
	srwi 7,5,1
	cmpld 0,3,4
	bge- 0,.L585
.L588:
	rldicl 9,7,0,32
	addi 8,4,-2
	addi 10,3,-2
	mtctr 9
	cmpwi 0,7,0
	beq- 0,.L587
.L591:
	lhzu 7,2(8)
	sthu 7,2(10)
	addi 9,9,-1
	bdnz .L591
.L587:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L585:
	mr 8,5
	add 9,4,5
	cmpld 0,9,3
	blt- 0,.L588
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 9,3,9
	mtctr 5
	cmpdi 0,5,0
	beqlr- 0
.L592:
	lbzu 7,-1(4)
	stbu 7,-1(9)
	addi 8,8,-1
	bdnz .L592
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-.L.__cmovh
	.align 2
	.globl __cmovw
	.section	".opd","aw"
	.align 3
__cmovw:
	.quad	.L.__cmovw,.TOC.@tocbase
	.previous
	.type	__cmovw, @function
.L.__cmovw:
.LFB109:
	.cfi_startproc
	srwi 7,5,2
	rlwinm 6,5,0,0,29
	cmpld 0,3,4
	bge- 0,.L601
.L604:
	rldicl 9,7,0,32
	addi 8,4,-4
	addi 10,3,-4
	mtctr 9
	cmpwi 0,7,0
	beq- 0,.L603
.L607:
	lwzu 7,4(8)
	stwu 7,4(10)
	addi 9,9,-1
	bdnz .L607
.L603:
	cmplw 0,6,5
	bgelr- 0
	subf 5,6,5
	rldicl 5,5,0,32
	rldicl 6,6,0,32
	addi 6,6,-1
	add 4,4,6
	add 3,3,6
	mtctr 5
.L608:
	lbzu 10,1(4)
	stbu 10,1(3)
	addi 5,5,-1
	bdnz .L608
	blr
.L601:
	mr 9,5
	add 10,4,5
	cmpld 0,10,3
	blt- 0,.L604
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	mtctr 5
	cmpdi 0,5,0
	beqlr- 0
.L609:
	lbzu 10,-1(4)
	stbu 10,-1(3)
	addi 9,9,-1
	bdnz .L609
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-.L.__cmovw
	.align 2
	.globl __modi
	.section	".opd","aw"
	.align 3
__modi:
	.quad	.L.__modi,.TOC.@tocbase
	.previous
	.type	__modi, @function
.L.__modi:
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
	.size	__modi,.-.L.__modi
	.align 2
	.globl __uitod
	.section	".opd","aw"
	.align 3
__uitod:
	.quad	.L.__uitod,.TOC.@tocbase
	.previous
	.type	__uitod, @function
.L.__uitod:
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
	.size	__uitod,.-.L.__uitod
	.align 2
	.globl __uitof
	.section	".opd","aw"
	.align 3
__uitof:
	.quad	.L.__uitof,.TOC.@tocbase
	.previous
	.type	__uitof, @function
.L.__uitof:
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
	.size	__uitof,.-.L.__uitof
	.align 2
	.globl __ulltod
	.section	".opd","aw"
	.align 3
__ulltod:
	.quad	.L.__ulltod,.TOC.@tocbase
	.previous
	.type	__ulltod, @function
.L.__ulltod:
.LFB113:
	.cfi_startproc
	cmpdi 0,3,0
	blt- 0,.L625
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L625:
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
	.size	__ulltod,.-.L.__ulltod
	.align 2
	.globl __ulltof
	.section	".opd","aw"
	.align 3
__ulltof:
	.quad	.L.__ulltof,.TOC.@tocbase
	.previous
	.type	__ulltof, @function
.L.__ulltof:
.LFB114:
	.cfi_startproc
	cmpdi 0,3,0
	blt- 0,.L628
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge- 0,.L629
	mr 9,3
.L629:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L628:
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
	bge- 0,.L630
	mr 9,10
.L630:
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
	.size	__ulltof,.-.L.__ulltof
	.align 2
	.globl __umodi
	.section	".opd","aw"
	.align 3
__umodi:
	.quad	.L.__umodi,.TOC.@tocbase
	.previous
	.type	__umodi, @function
.L.__umodi:
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
	.size	__umodi,.-.L.__umodi
	.align 2
	.globl __clzhi2
	.section	".opd","aw"
	.align 3
__clzhi2:
	.quad	.L.__clzhi2,.TOC.@tocbase
	.previous
	.type	__clzhi2, @function
.L.__clzhi2:
.LFB116:
	.cfi_startproc
	li 10,0
	li 9,16
	mtctr 9
.L634:
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne- 0,.L633
	addi 10,10,1
	bdnz .L634
.L633:
	extsw 3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-.L.__clzhi2
	.align 2
	.globl __ctzhi2
	.section	".opd","aw"
	.align 3
__ctzhi2:
	.quad	.L.__ctzhi2,.TOC.@tocbase
	.previous
	.type	__ctzhi2, @function
.L.__ctzhi2:
.LFB117:
	.cfi_startproc
	li 9,0
	li 10,16
	mtctr 10
.L639:
	sraw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L638
	addi 9,9,1
	bdnz .L639
.L638:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE117:
	.size	__ctzhi2,.-.L.__ctzhi2
	.align 2
	.globl __fixunssfsi
	.section	".opd","aw"
	.align 3
__fixunssfsi:
	.quad	.L.__fixunssfsi,.TOC.@tocbase
	.previous
	.type	__fixunssfsi, @function
.L.__fixunssfsi:
.LFB118:
	.cfi_startproc
	addis 9,2,.LC35@toc@ha
	lfs 0,.LC35@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L648
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L648:
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
	.size	__fixunssfsi,.-.L.__fixunssfsi
	.align 2
	.globl __parityhi2
	.section	".opd","aw"
	.align 3
__parityhi2:
	.quad	.L.__parityhi2,.TOC.@tocbase
	.previous
	.type	__parityhi2, @function
.L.__parityhi2:
.LFB119:
	.cfi_startproc
	li 8,0
	li 10,0
	li 9,16
	mtctr 9
.L650:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
	bdnz .L650
	rldicl 3,8,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-.L.__parityhi2
	.align 2
	.globl __popcounthi2
	.section	".opd","aw"
	.align 3
__popcounthi2:
	.quad	.L.__popcounthi2,.TOC.@tocbase
	.previous
	.type	__popcounthi2, @function
.L.__popcounthi2:
.LFB120:
	.cfi_startproc
	li 8,0
	li 10,0
	li 9,16
	mtctr 9
.L654:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
	bdnz .L654
	extsw 3,8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-.L.__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.section	".opd","aw"
	.align 3
__mulsi3_iq2000:
	.quad	.L.__mulsi3_iq2000,.TOC.@tocbase
	.previous
	.type	__mulsi3_iq2000, @function
.L.__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mr. 10,3
	beq- 0,.L660
	li 3,0
.L659:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne+ 0,.L659
.L658:
	rldicl 3,3,0,32
	blr
.L660:
	li 3,0
	b .L658
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000,.-.L.__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.section	".opd","aw"
	.align 3
__mulsi3_lm32:
	.quad	.L.__mulsi3_lm32,.TOC.@tocbase
	.previous
	.type	__mulsi3_lm32, @function
.L.__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr. 10,3
	beq- 0,.L665
	cmpdi 0,4,0
	beq- 0,.L666
	li 3,0
.L664:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	srdi. 4,4,1
	bne+ 0,.L664
.L663:
	rldicl 3,3,0,32
	blr
.L665:
	li 3,0
	b .L663
.L666:
	li 3,0
	b .L663
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-.L.__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.section	".opd","aw"
	.align 3
__udivmodsi4:
	.quad	.L.__udivmodsi4,.TOC.@tocbase
	.previous
	.type	__udivmodsi4, @function
.L.__udivmodsi4:
.LFB123:
	.cfi_startproc
	li 9,1
	cmplw 0,4,3
	bge- 0,.L676
.L669:
	cmpwi 0,4,0
	blt- 0,.L676
	slwi 10,4,1
	rldicl 4,10,0,32
	slwi 9,9,1
	cmplw 0,3,10
	ble- 0,.L671
	cmpwi 0,9,0
	bne+ 0,.L669
	mr 10,9
.L672:
	cmpdi 0,5,0
	bne- 0,.L683
.L677:
	rldicl 3,10,0,32
	blr
.L674:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq- 0,.L672
.L675:
	cmplw 0,3,4
	blt- 0,.L674
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L674
.L671:
	mr 10,9
	cmpwi 0,9,0
	beq- 0,.L672
.L676:
	li 10,0
	b .L675
.L683:
	mr 10,3
	b .L677
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-.L.__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.section	".opd","aw"
	.align 3
__mspabi_cmpf:
	.quad	.L.__mspabi_cmpf,.TOC.@tocbase
	.previous
	.type	__mspabi_cmpf, @function
.L.__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	li 3,-1
	fcmpu 0,1,2
	blt- 0,.L685
	mfcr 3
	rlwinm 3,3,2,1
.L685:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-.L.__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.section	".opd","aw"
	.align 3
__mspabi_cmpd:
	.quad	.L.__mspabi_cmpd,.TOC.@tocbase
	.previous
	.type	__mspabi_cmpd, @function
.L.__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	li 3,-1
	fcmpu 0,1,2
	blt- 0,.L688
	mfcr 3
	rlwinm 3,3,2,1
.L688:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-.L.__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.section	".opd","aw"
	.align 3
__mspabi_mpysll:
	.quad	.L.__mspabi_mpysll,.TOC.@tocbase
	.previous
	.type	__mspabi_mpysll, @function
.L.__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mulld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll,.-.L.__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.section	".opd","aw"
	.align 3
__mspabi_mpyull:
	.quad	.L.__mspabi_mpyull,.TOC.@tocbase
	.previous
	.type	__mspabi_mpyull, @function
.L.__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mulld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull,.-.L.__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.section	".opd","aw"
	.align 3
__mulhi3:
	.quad	.L.__mulhi3,.TOC.@tocbase
	.previous
	.type	__mulhi3, @function
.L.__mulhi3:
.LFB128:
	.cfi_startproc
	cmpwi 0,4,0
	blt- 0,.L701
	li 7,0
	cmpdi 0,4,0
	beq- 0,.L702
.L697:
	li 8,32
	li 10,0
.L695:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,3
	add 10,10,9
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
	cmpdi 0,4,0
	beq- 0,.L694
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne+ 0,.L695
.L694:
	cmpwi 0,7,0
	beq- 0,.L696
	neg 10,10
.L696:
	extsw 3,10
	blr
.L701:
	neg 4,4
	extsw 4,4
	li 7,1
	b .L697
.L702:
	li 10,0
	b .L696
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE128:
	.size	__mulhi3,.-.L.__mulhi3
	.align 2
	.globl __divsi3
	.section	".opd","aw"
	.align 3
__divsi3:
	.quad	.L.__divsi3,.TOC.@tocbase
	.previous
	.type	__divsi3, @function
.L.__divsi3:
.LFB129:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	cmpdi 0,3,0
	blt- 0,.L712
	cmpdi 0,4,0
	blt- 0,.L713
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L703
.L712:
	neg 3,3
	cmpdi 0,4,0
	blt- 0,.L714
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
.L707:
	neg 3,3
.L703:
	addi 1,1,112
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
.L713:
	.cfi_restore_state
	neg 4,4
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L707
.L714:
	neg 4,4
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L703
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-.L.__divsi3
	.align 2
	.globl __modsi3
	.section	".opd","aw"
	.align 3
__modsi3:
	.quad	.L.__modsi3,.TOC.@tocbase
	.previous
	.type	__modsi3, @function
.L.__modsi3:
.LFB130:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	cmpdi 0,3,0
	blt- 0,.L719
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	b .L715
.L719:
	neg 3,3
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	neg 3,3
.L715:
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-.L.__modsi3
	.align 2
	.globl __udivmodhi4
	.section	".opd","aw"
	.align 3
__udivmodhi4:
	.quad	.L.__udivmodhi4,.TOC.@tocbase
	.previous
	.type	__udivmodhi4, @function
.L.__udivmodhi4:
.LFB131:
	.cfi_startproc
	li 9,1
	li 10,16
	mtctr 10
	cmplw 0,4,3
	bge- 0,.L728
.L721:
	andi. 10,4,0x8000
	bne- 0,.L728
	rldic 4,4,1,48
	slwi 10,9,1
	mr 9,10
	cmplw 0,3,4
	ble- 0,.L723
	bdnz .L721
	li 10,0
.L724:
	cmpdi 0,5,0
	bne- 0,.L737
.L729:
	rlwinm 3,10,0,0xffff
	blr
.L726:
	rldicl 8,9,63,49
	mr 9,8
	srdi 4,4,1
	cmpwi 0,8,0
	beq- 0,.L724
.L727:
	cmplw 0,3,4
	blt- 0,.L726
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,9,10
	b .L726
.L723:
	andi. 8,10,0xffff
	beq- 0,.L724
.L728:
	li 10,0
	b .L727
.L737:
	mr 10,3
	b .L729
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-.L.__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.section	".opd","aw"
	.align 3
__udivmodsi4_libgcc:
	.quad	.L.__udivmodsi4_libgcc,.TOC.@tocbase
	.previous
	.type	__udivmodsi4_libgcc, @function
.L.__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mr 10,3
	li 9,1
	cmpld 0,4,3
	bge- 0,.L746
.L739:
	andis. 8,4,0x8000
	bne- 0,.L746
	sldi 4,4,1
	sldi 9,9,1
	cmpld 0,10,4
	ble- 0,.L741
	cmpdi 0,9,0
	bne+ 0,.L739
	mr 3,9
.L742:
	cmpdi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L744:
	srdi 4,4,1
	srdi. 9,9,1
	beq- 0,.L742
.L745:
	cmpld 0,10,4
	blt- 0,.L744
	subf 10,4,10
	or 3,3,9
	b .L744
.L741:
	mr 3,9
	cmpdi 0,9,0
	beq- 0,.L742
.L746:
	li 3,0
	b .L745
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-.L.__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.section	".opd","aw"
	.align 3
__ashldi3:
	.quad	.L.__ashldi3,.TOC.@tocbase
	.previous
	.type	__ashldi3, @function
.L.__ashldi3:
.LFB133:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq- 0,.L754
	addi 4,4,-32
	slw 9,3,4
	li 3,0
.L755:
	sldi 9,9,32
	rldicl 3,3,0,32
	or 3,3,9
	blr
.L754:
	cmpdi 0,4,0
	beqlr- 0
	slw 3,3,4
	sradi 10,9,32
	slw 10,10,4
	subfic 4,4,32
	srw 9,9,4
	or 9,10,9
	b .L755
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-.L.__ashldi3
	.align 2
	.globl __ashlti3
	.section	".opd","aw"
	.align 3
__ashlti3:
	.quad	.L.__ashlti3,.TOC.@tocbase
	.previous
	.type	__ashlti3, @function
.L.__ashlti3:
.LFB134:
	.cfi_startproc
	andi. 9,5,0x40
	beq- 0,.L759
	addi 5,5,-64
	sld 3,4,5
	li 10,0
.L760:
	mr 4,10
	blr
.L759:
	cmpdi 0,5,0
	beqlr- 0
	sld 10,4,5
	sld 3,3,5
	subfic 5,5,64
	srd 5,4,5
	or 3,3,5
	b .L760
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-.L.__ashlti3
	.align 2
	.globl __ashrdi3
	.section	".opd","aw"
	.align 3
__ashrdi3:
	.quad	.L.__ashrdi3,.TOC.@tocbase
	.previous
	.type	__ashrdi3, @function
.L.__ashrdi3:
.LFB135:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq- 0,.L764
	sradi 9,3,32
	srawi 3,9,31
	addi 4,4,-32
	sraw 9,9,4
.L765:
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L764:
	cmpdi 0,4,0
	beqlr- 0
	sradi 10,3,32
	sraw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 9,10,9
	b .L765
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-.L.__ashrdi3
	.align 2
	.globl __ashrti3
	.section	".opd","aw"
	.align 3
__ashrti3:
	.quad	.L.__ashrti3,.TOC.@tocbase
	.previous
	.type	__ashrti3, @function
.L.__ashrti3:
.LFB136:
	.cfi_startproc
	andi. 9,5,0x40
	beq- 0,.L769
	sradi 10,3,63
	addi 5,5,-64
	srad 4,3,5
.L770:
	mr 3,10
	blr
.L769:
	cmpdi 0,5,0
	beqlr- 0
	srad 10,3,5
	subfic 9,5,64
	sld 9,3,9
	srd 4,4,5
	or 4,9,4
	b .L770
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-.L.__ashrti3
	.align 2
	.globl __bswapdi2
	.section	".opd","aw"
	.align 3
__bswapdi2:
	.quad	.L.__bswapdi2,.TOC.@tocbase
	.previous
	.type	__bswapdi2, @function
.L.__bswapdi2:
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
	.size	__bswapdi2,.-.L.__bswapdi2
	.align 2
	.globl __bswapsi2
	.section	".opd","aw"
	.align 3
__bswapsi2:
	.quad	.L.__bswapsi2,.TOC.@tocbase
	.previous
	.type	__bswapsi2, @function
.L.__bswapsi2:
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
	.size	__bswapsi2,.-.L.__bswapsi2
	.align 2
	.globl __clzsi2
	.section	".opd","aw"
	.align 3
__clzsi2:
	.quad	.L.__clzsi2,.TOC.@tocbase
	.previous
	.type	__clzsi2, @function
.L.__clzsi2:
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
	.size	__clzsi2,.-.L.__clzsi2
	.align 2
	.globl __clzti2
	.section	".opd","aw"
	.align 3
__clzti2:
	.quad	.L.__clzti2,.TOC.@tocbase
	.previous
	.type	__clzti2, @function
.L.__clzti2:
.LFB140:
	.cfi_startproc
	cntlzd 10,3
	srdi 10,10,6
	rlwinm 8,10,0,0xff
	addi 9,8,-1
	extsw 9,9
	and 9,9,3
	cmpwi 0,8,0
	bne- 0,.L780
	li 4,0
.L780:
	or 9,9,4
	cntlzd 9,9
	slwi 3,10,6
	add 3,3,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-.L.__clzti2
	.align 2
	.globl __cmpdi2
	.section	".opd","aw"
	.align 3
__cmpdi2:
	.quad	.L.__cmpdi2,.TOC.@tocbase
	.previous
	.type	__cmpdi2, @function
.L.__cmpdi2:
.LFB141:
	.cfi_startproc
	sradi 10,3,32
	sradi 8,4,32
	li 9,0
	cmpw 0,8,10
	bgt- 0,.L782
	li 9,2
	blt- 0,.L782
	li 9,0
	cmplw 0,3,4
	blt- 0,.L782
	li 9,2
	bgt- 0,.L782
	li 9,1
.L782:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE141:
	.size	__cmpdi2,.-.L.__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.section	".opd","aw"
	.align 3
__aeabi_lcmp:
	.quad	.L.__aeabi_lcmp,.TOC.@tocbase
	.previous
	.type	__aeabi_lcmp, @function
.L.__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	bl __cmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-.L.__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.section	".opd","aw"
	.align 3
__cmpti2:
	.quad	.L.__cmpti2,.TOC.@tocbase
	.previous
	.type	__cmpti2, @function
.L.__cmpti2:
.LFB143:
	.cfi_startproc
	li 9,0
	cmpd 0,5,3
	bgt- 0,.L790
	li 9,2
	blt- 0,.L790
	li 9,0
	cmpld 0,4,6
	blt- 0,.L790
	subfc 6,4,6
	subfe 9,9,9
	subfic 9,9,1
.L790:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-.L.__cmpti2
	.align 2
	.globl __ctzsi2
	.section	".opd","aw"
	.align 3
__ctzsi2:
	.quad	.L.__ctzsi2,.TOC.@tocbase
	.previous
	.type	__ctzsi2, @function
.L.__ctzsi2:
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
	.size	__ctzsi2,.-.L.__ctzsi2
	.align 2
	.globl __ctzti2
	.section	".opd","aw"
	.align 3
__ctzti2:
	.quad	.L.__ctzti2,.TOC.@tocbase
	.previous
	.type	__ctzti2, @function
.L.__ctzti2:
.LFB145:
	.cfi_startproc
	cntlzd 9,4
	srdi 9,9,6
	andi. 10,9,0xff
	bne- 0,.L798
	li 3,0
.L798:
	addi 10,10,-1
	extsw 10,10
	and 4,10,4
	or 4,3,4
	neg 10,4
	and 4,4,10
	cntlzd 4,4
	subfic 4,4,63
	slwi 3,9,6
	add 3,3,4
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-.L.__ctzti2
	.align 2
	.globl __ffsti2
	.section	".opd","aw"
	.align 3
__ffsti2:
	.quad	.L.__ffsti2,.TOC.@tocbase
	.previous
	.type	__ffsti2, @function
.L.__ffsti2:
.LFB146:
	.cfi_startproc
	cmpdi 0,4,0
	bne- 0,.L800
	li 4,0
	cmpdi 0,3,0
	beq- 0,.L801
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 4,3,128
	b .L801
.L800:
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 4,4,64
.L801:
	extsw 3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-.L.__ffsti2
	.align 2
	.globl __lshrdi3
	.section	".opd","aw"
	.align 3
__lshrdi3:
	.quad	.L.__lshrdi3,.TOC.@tocbase
	.previous
	.type	__lshrdi3, @function
.L.__lshrdi3:
.LFB147:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq- 0,.L804
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
.L805:
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L804:
	cmpdi 0,4,0
	beqlr- 0
	srdi 10,3,32
	srw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 9,10,9
	b .L805
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-.L.__lshrdi3
	.align 2
	.globl __lshrti3
	.section	".opd","aw"
	.align 3
__lshrti3:
	.quad	.L.__lshrti3,.TOC.@tocbase
	.previous
	.type	__lshrti3, @function
.L.__lshrti3:
.LFB148:
	.cfi_startproc
	andi. 9,5,0x40
	beq- 0,.L809
	addi 5,5,-64
	srd 4,3,5
	li 10,0
.L810:
	mr 3,10
	blr
.L809:
	cmpdi 0,5,0
	beqlr- 0
	srd 10,3,5
	subfic 9,5,64
	sld 9,3,9
	srd 4,4,5
	or 4,9,4
	b .L810
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-.L.__lshrti3
	.align 2
	.globl __muldsi3
	.section	".opd","aw"
	.align 3
__muldsi3:
	.quad	.L.__muldsi3,.TOC.@tocbase
	.previous
	.type	__muldsi3, @function
.L.__muldsi3:
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
	add 7,7,3
	add 9,9,7
	sldi 9,9,32
	rldicl 3,8,0,32
	or 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE149:
	.size	__muldsi3,.-.L.__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.section	".opd","aw"
	.align 3
__muldi3_compiler_rt:
	.quad	.L.__muldi3_compiler_rt,.TOC.@tocbase
	.previous
	.type	__muldi3_compiler_rt, @function
.L.__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
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
	addi 1,1,128
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
	.size	__muldi3_compiler_rt,.-.L.__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.section	".opd","aw"
	.align 3
__mulddi3:
	.quad	.L.__mulddi3,.TOC.@tocbase
	.previous
	.type	__mulddi3, @function
.L.__mulddi3:
.LFB151:
	.cfi_startproc
	mr 8,4
	rldicl 10,3,0,32
	rldicl 9,4,0,32
	mulld 4,10,9
	srdi 7,4,32
	srdi 3,3,32
	mulld 9,9,3
	add 9,9,7
	srdi 7,9,32
	rldicl 9,9,0,32
	srdi 8,8,32
	mulld 10,10,8
	add 9,10,9
	srdi 6,9,32
	mulld 3,3,8
	add 3,7,3
	add 3,6,3
	rldimi 4,9,32,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE151:
	.size	__mulddi3,.-.L.__mulddi3
	.align 2
	.globl __multi3
	.section	".opd","aw"
	.align 3
__multi3:
	.quad	.L.__multi3,.TOC.@tocbase
	.previous
	.type	__multi3, @function
.L.__multi3:
.LFB152:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	mr 29,4
	mr 30,5
	mr 28,6
	mr 4,6
	mr 3,29
	bl __mulddi3
	mulld 31,31,28
	mulld 30,30,29
	add 31,31,30
	add 3,3,31
	addi 1,1,144
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
	.size	__multi3,.-.L.__multi3
	.align 2
	.globl __negdi2
	.section	".opd","aw"
	.align 3
__negdi2:
	.quad	.L.__negdi2,.TOC.@tocbase
	.previous
	.type	__negdi2, @function
.L.__negdi2:
.LFB153:
	.cfi_startproc
	neg 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE153:
	.size	__negdi2,.-.L.__negdi2
	.align 2
	.globl __negti2
	.section	".opd","aw"
	.align 3
__negti2:
	.quad	.L.__negti2,.TOC.@tocbase
	.previous
	.type	__negti2, @function
.L.__negti2:
.LFB154:
	.cfi_startproc
	subfic 4,4,0
	subfze 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE154:
	.size	__negti2,.-.L.__negti2
	.align 2
	.globl __paritydi2
	.section	".opd","aw"
	.align 3
__paritydi2:
	.quad	.L.__paritydi2,.TOC.@tocbase
	.previous
	.type	__paritydi2, @function
.L.__paritydi2:
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
	.size	__paritydi2,.-.L.__paritydi2
	.align 2
	.globl __parityti2
	.section	".opd","aw"
	.align 3
__parityti2:
	.quad	.L.__parityti2,.TOC.@tocbase
	.previous
	.type	__parityti2, @function
.L.__parityti2:
.LFB156:
	.cfi_startproc
	xor 3,3,4
	sradi 9,3,32
	xor 3,3,9
	srwi 9,3,16
	xor 9,9,3
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
	.size	__parityti2,.-.L.__parityti2
	.align 2
	.globl __paritysi2
	.section	".opd","aw"
	.align 3
__paritysi2:
	.quad	.L.__paritysi2,.TOC.@tocbase
	.previous
	.type	__paritysi2, @function
.L.__paritysi2:
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
	.size	__paritysi2,.-.L.__paritysi2
	.align 2
	.globl __popcountdi2
	.section	".opd","aw"
	.align 3
__popcountdi2:
	.quad	.L.__popcountdi2,.TOC.@tocbase
	.previous
	.type	__popcountdi2, @function
.L.__popcountdi2:
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
	.size	__popcountdi2,.-.L.__popcountdi2
	.align 2
	.globl __popcountsi2
	.section	".opd","aw"
	.align 3
__popcountsi2:
	.quad	.L.__popcountsi2,.TOC.@tocbase
	.previous
	.type	__popcountsi2, @function
.L.__popcountsi2:
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
	.size	__popcountsi2,.-.L.__popcountsi2
	.align 2
	.globl __popcountti2
	.section	".opd","aw"
	.align 3
__popcountti2:
	.quad	.L.__popcountti2,.TOC.@tocbase
	.previous
	.type	__popcountti2, @function
.L.__popcountti2:
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
	mr 5,4
	sldi 0,3,63
	srdi 31,4,1
	or 31,0,31
	srdi 30,3,1
	lis 4,0x5555
	ori 4,4,0x5555
	rldimi 4,4,32,0
	and 30,30,4
	and 31,31,4
	subfc 9,31,5
	subfe 8,30,3
	sldi 5,8,62
	srdi 11,9,2
	or 11,5,11
	srdi 10,8,2
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	and 10,10,5
	and 11,11,5
	and 8,8,5
	and 9,9,5
	addc 5,11,9
	adde 10,10,8
	srdi 9,5,4
	rldimi 9,10,60,0
	srdi 8,10,4
	addc 7,9,5
	adde 6,8,10
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 6,6,9
	and 7,7,9
	add 6,6,7
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
	.size	__popcountti2,.-.L.__popcountti2
	.align 2
	.globl __powidf2
	.section	".opd","aw"
	.align 3
__powidf2:
	.quad	.L.__powidf2,.TOC.@tocbase
	.previous
	.type	__powidf2, @function
.L.__powidf2:
.LFB161:
	.cfi_startproc
	fmr 0,1
	mr 9,4
	addis 10,2,.LC31@toc@ha
	lfs 1,.LC31@toc@l(10)
	b .L831
.L829:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L830
	fmul 0,0,0
.L831:
	andi. 10,9,0x1
	beq- 0,.L829
	fmul 1,1,0
	b .L829
.L830:
	cmpwi 0,4,0
	bgelr+ 0
	addis 9,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(9)
	fdiv 1,0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-.L.__powidf2
	.align 2
	.globl __powisf2
	.section	".opd","aw"
	.align 3
__powisf2:
	.quad	.L.__powisf2,.TOC.@tocbase
	.previous
	.type	__powisf2, @function
.L.__powisf2:
.LFB162:
	.cfi_startproc
	fmr 0,1
	mr 9,4
	addis 10,2,.LC31@toc@ha
	lfs 1,.LC31@toc@l(10)
	b .L836
.L834:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L835
	fmuls 0,0,0
.L836:
	andi. 10,9,0x1
	beq- 0,.L834
	fmuls 1,1,0
	b .L834
.L835:
	cmpwi 0,4,0
	bgelr+ 0
	addis 9,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(9)
	fdivs 1,0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-.L.__powisf2
	.align 2
	.globl __ucmpdi2
	.section	".opd","aw"
	.align 3
__ucmpdi2:
	.quad	.L.__ucmpdi2,.TOC.@tocbase
	.previous
	.type	__ucmpdi2, @function
.L.__ucmpdi2:
.LFB163:
	.cfi_startproc
	srdi 10,3,32
	srdi 8,4,32
	li 9,0
	cmplw 0,8,10
	bgt- 0,.L839
	li 9,2
	blt- 0,.L839
	li 9,0
	cmplw 0,3,4
	blt- 0,.L839
	li 9,2
	bgt- 0,.L839
	li 9,1
.L839:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2,.-.L.__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.section	".opd","aw"
	.align 3
__aeabi_ulcmp:
	.quad	.L.__aeabi_ulcmp,.TOC.@tocbase
	.previous
	.type	__aeabi_ulcmp, @function
.L.__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	bl __ucmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-.L.__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.section	".opd","aw"
	.align 3
__ucmpti2:
	.quad	.L.__ucmpti2,.TOC.@tocbase
	.previous
	.type	__ucmpti2, @function
.L.__ucmpti2:
.LFB165:
	.cfi_startproc
	li 9,0
	cmpld 0,5,3
	bgt- 0,.L847
	li 9,2
	blt- 0,.L847
	li 9,0
	cmpld 0,4,6
	blt- 0,.L847
	subfc 6,4,6
	subfe 9,9,9
	subfic 9,9,1
.L847:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.set	.LC0,.LC25+8
	.set	.LC1,.LC25+4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC4:
	.long	-8388609
	.align 2
.LC5:
	.long	2139095039
	.set	.LC8,.LC12
	.set	.LC9,.LC13
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC12:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC13:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.set	.LC17,.LC25
	.section	.rodata.cst4
	.align 2
.LC18:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC25:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC26:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC31:
	.long	1065353216
	.align 2
.LC35:
	.long	1191182336
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
