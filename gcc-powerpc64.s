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
	beqlr- 0
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
	bne+ 0,.L13
.L12:
	li 3,0
	cmpdi 0,6,0
	beqlr- 0
	addi 3,10,1
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
	bne+ 0,.L21
.L20:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
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
	beq+ 0,.L29
.L28:
	li 9,0
	cmpdi 0,5,0
	beq- 0,.L30
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
	addi 9,5,-1
	addi 10,5,1
	mtctr 10
.L38:
	bdz .L42
	lbzx 10,3,9
	addi 8,9,-1
	cmpw 0,10,4
	beq- 0,.L43
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
	addi 4,4,-1
	b .L48
.L51:
	addi 3,3,1
.L48:
	lbzu 9,1(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne+ 0,.L51
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
	b .L53
.L56:
	addi 3,3,1
.L53:
	lbz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L56
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
.L59:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne+ 0,.L59
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
	b .L63
.L65:
	addi 3,3,1
	addi 4,4,1
.L63:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L64
	cmpwi 0,10,0
	bne+ 0,.L65
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
	mr 9,3
	b .L67
.L68:
	addi 9,9,1
.L67:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne+ 0,.L68
	subf 3,3,9
	blr
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
	mtctr 5
	beq- 0,.L77
.L71:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L72
	lbz 9,0(4)
	cmpwi 0,9,0
	beq- 0,.L72
	bdz .L72
	lbz 10,0(3)
	cmpw 0,10,9
	bne- 0,.L72
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
	srdi 9,5,1
	addi 9,9,1
	mtctr 9
	cmpdi 0,5,0
	bge+ 0,.L79
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
	beq- 0,.L86
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
	ble- 0,.L89
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
	beq- 0,.L96
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
	ble- 0,.L99
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble- 0,.L99
	addi 10,3,-8232
	cmplwi 0,10,1
	ble- 0,.L99
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
	ble- 0,.L111
	li 9,1
	cmplwi 0,3,8231
	ble- 0,.L106
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble- 0,.L106
	addis 10,3,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	ble- 0,.L106
	addis 10,3,0xffff
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt- 0,.L106
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
	ble- 0,.L114
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
	bun- 0,.L120
	fcmpu 0,1,2
	bng- 0,.L123
	fsub 1,1,2
	blr
.L120:
	fmr 1,2
	blr
.L123:
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
	bun- 0,.L128
	fcmpu 0,1,2
	bng- 0,.L131
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
	bun- 0,.L137
	fcmpu 0,2,2
	bunlr- 0
	stfd 1,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 2,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq- 0,.L134
	stfd 1,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bgelr- 0
	fmr 1,2
	blr
.L134:
	fmr 0,1
	fcmpu 0,1,2
	bnl- 0,.L136
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
	bun- 0,.L145
	fcmpu 0,2,2
	bun- 0,.L146
	lwz 10,48(1)
	rlwinm 10,10,0,0,0
	lwz 9,56(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq- 0,.L142
	lwz 9,48(1)
	cmpwi 0,9,0
	bgelr- 0
	fmr 1,2
	blr
.L142:
	lfs 1,48(1)
	lfs 12,56(1)
	fcmpu 0,1,12
	bnllr- 0
	fmr 1,12
	blr
.L145:
	lfs 1,56(1)
	blr
.L146:
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
	fmr 0,1
	fmr 1,2
	fmr 11,0
	fcmpu 0,11,11
	bun- 0,.L153
	fmr 11,3
	fcmpu 0,11,11
	bun- 0,.L154
	fmr 12,0
	stfd 12,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq- 0,.L150
	fmr 11,0
	stfd 11,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bge- 0,.L155
	fmr 1,3
	fmr 2,4
	blr
.L150:
	fcmpu 0,0,3
	bne 0,$+8
	fcmpu 0,1,4
	bnl- 0,.L151
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
	bun- 0,.L161
	fcmpu 0,2,2
	bunlr- 0
	stfd 1,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	stfd 2,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq- 0,.L158
	stfd 1,-16(1)
	ld 9,-16(1)
	fmr 1,2
	cmpdi 0,9,0
	bgelr- 0
	fmr 1,0
	blr
.L158:
	fmr 1,2
	fcmpu 0,0,2
	bnllr- 0
	fmr 1,0
	blr
.L161:
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
	bun- 0,.L169
	fcmpu 0,2,2
	bun- 0,.L170
	lwz 10,48(1)
	rlwinm 10,10,0,0,0
	lwz 9,56(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq- 0,.L166
	lwz 9,48(1)
	fmr 1,2
	cmpwi 0,9,0
	bgelr- 0
	lfs 1,48(1)
	blr
.L166:
	lfs 1,56(1)
	lfs 0,48(1)
	fcmpu 0,0,1
	bnllr- 0
	fmr 1,0
	blr
.L169:
	lfs 1,56(1)
	blr
.L170:
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
	bun- 0,.L177
	fmr 11,0
	fcmpu 0,11,11
	bun- 0,.L178
	fmr 11,12
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	fmr 11,0
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq- 0,.L174
	fmr 11,12
	stfd 11,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bge- 0,.L179
	fmr 1,12
	blr
.L174:
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl- 0,.L175
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
	bne+ 0,.L182
	li 10,0
	stb 10,0(9)
	addis 3,2,s.0@toc@ha
	addi 3,3,s.0@toc@l
	blr
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
	beq- 0,.L188
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr- 0
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
	beq- 0,.L190
	ld 10,8(3)
	std 10,8(9)
.L190:
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
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 65, 16
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,40(1)
	mr 26,3
	mr 25,4
	mr 24,5
	mr 28,6
	mr 31,7
	ld 27,0(5)
	mr 29,4
	li 30,0
	b .L193
.L194:
	addi 30,30,1
.L193:
	cmpld 0,30,27
	beq- 0,.L198
	mr 4,29
	mr 3,26
	ld 9,0(31)
	mtctr 9
	ld 11,16(31)
	ld 2,8(31)
	bctrl
	ld 2,40(1)
	add 29,29,28
	cmpwi 0,3,0
	bne+ 0,.L194
	mulld 30,30,28
	add 3,25,30
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
	addi 1,1,176
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
	mflr 0
	std 0,16(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,40(1)
	mr 27,3
	mr 25,4
	mr 28,6
	mr 31,7
	ld 26,0(5)
	mr 29,4
	li 30,0
	b .L200
.L201:
	addi 30,30,1
.L200:
	cmpld 0,30,26
	beq- 0,.L205
	mr 4,29
	mr 3,27
	ld 9,0(31)
	mtctr 9
	ld 11,16(31)
	ld 2,8(31)
	bctrl
	ld 2,40(1)
	add 29,29,28
	cmpwi 0,3,0
	bne+ 0,.L201
	mulld 30,30,28
	add 3,25,30
	b .L202
.L205:
	li 3,0
.L202:
	addi 1,1,176
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
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
	bne+ 0,.L209
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L215
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L211
	li 8,1
.L210:
	addi 31,31,1
.L211:
	addi 31,31,-1
	li 9,0
	b .L212
.L215:
	li 8,0
	b .L210
.L213:
	slwi 10,9,2
	add 10,10,9
	slwi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	subf 9,9,10
.L212:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L213
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L214
	neg 3,9
.L214:
	extsw 3,3
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
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
	bne+ 0,.L221
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L227
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L223
	li 8,1
.L222:
	addi 31,31,1
.L223:
	addi 31,31,-1
	li 9,0
	b .L224
.L227:
	li 8,0
	b .L222
.L225:
	sldi 10,9,2
	add 10,10,9
	sldi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
.L224:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L225
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L226
	neg 3,9
.L226:
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
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
	bne+ 0,.L233
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L239
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L235
	li 8,1
.L234:
	addi 31,31,1
.L235:
	addi 31,31,-1
	li 9,0
	b .L236
.L239:
	li 8,0
	b .L234
.L237:
	sldi 10,9,2
	add 10,10,9
	sldi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
.L236:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L237
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L238
	neg 3,9
.L238:
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
	mflr 0
	std 0,16(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,40(1)
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
	beq- 0,.L251
	srdi 31,30,1
	mulld 31,31,28
	add 31,27,31
	mr 4,31
	mr 3,26
	ld 9,0(29)
	mtctr 9
	ld 11,16(29)
	ld 2,8(29)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	blt- 0,.L252
	cmpwi 0,3,0
	ble- 0,.L249
	add 27,31,28
	srdi 9,30,1
	addi 30,30,-1
	subf 30,9,30
	b .L244
.L251:
	li 3,0
.L247:
	addi 1,1,160
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
	mflr 0
	std 0,16(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	std 2,40(1)
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
	beq- 0,.L260
	srawi 31,30,1
	mulld 31,31,27
	add 31,28,31
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
	beq- 0,.L258
	ble- 0,.L256
	add 28,31,27
	addi 30,30,-1
	b .L256
.L260:
	li 3,0
.L255:
	addi 1,1,176
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
	mr 9,3
	b .L269
.L271:
	addi 9,9,4
.L269:
	lwz 10,0(9)
	cmpwi 0,10,0
	beq- 0,.L270
	lwz 10,0(9)
	cmpw 0,10,4
	bne+ 0,.L271
.L270:
	lwz 10,0(9)
	li 3,0
	cmpwi 0,10,0
	beqlr- 0
	mr 3,9
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
	b .L275
.L277:
	addi 3,3,4
	addi 4,4,4
.L275:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L276
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L276
	lwz 9,0(4)
	cmpwi 0,9,0
	bne+ 0,.L277
.L276:
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt- 0,.L278
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
.L281:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L281
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
	mr 9,3
	b .L285
.L286:
	addi 9,9,4
.L285:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne+ 0,.L286
	subf 3,3,9
	sradi 3,3,2
	blr
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
	addi 9,5,1
	mtctr 9
.L288:
	bdz .L289
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L289
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L289
	lwz 9,0(4)
	cmpwi 0,9,0
	beq- 0,.L289
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	b .L288
.L289:
	li 9,0
	cmpdi 0,5,0
	beq- 0,.L291
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt- 0,.L291
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
	bne+ 0,.L299
.L298:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
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
	beq+ 0,.L307
.L306:
	li 9,0
	cmpdi 0,5,0
	beq- 0,.L308
	lwz 8,0(3)
	lwz 10,0(4)
	li 9,-1
	cmpw 0,8,10
	blt- 0,.L308
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
	blt- 0,.L318
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
	bge- 0,.L327
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
	beqlr- 0
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
	sld 9,3,4
	subfic 4,4,64
	srd 3,3,4
	or 3,3,9
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
	srd 9,3,4
	subfic 4,4,64
	sld 3,3,4
	or 3,3,9
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
	li 10,33
	mtctr 10
.L347:
	bdz .L351
	srw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L352
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
	mr. 9,3
	beq- 0,.L357
	li 3,1
	b .L355
.L356:
	srawi 9,9,1
	addi 3,3,1
.L355:
	andi. 10,9,0x1
	beq+ 0,.L356
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
	blt- 0,.L359
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
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
	blt- 0,.L362
	addis 9,2,.LC9@toc@ha
	lfd 0,.LC9@toc@l(9)
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
	blt- 0,.L365
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
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
	fcmpu 0,1,0
	beqlr- 0
	cmpwi 0,4,0
	blt- 0,.L374
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L372
.L374:
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	b .L372
.L371:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	fmuls 0,0,0
.L372:
	andi. 9,4,0x1
	beq- 0,.L371
	fmuls 1,1,0
	b .L371
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
	fcmpu 0,1,0
	beqlr- 0
	cmpwi 0,4,0
	blt- 0,.L381
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L379
.L381:
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	b .L379
.L378:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	fmul 0,0,0
.L379:
	andi. 9,4,0x1
	beq- 0,.L378
	fmul 1,1,0
	b .L378
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
	bun- 0,.L383
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
	fcmpu 0,28,1
	bne 0,$+8
	fcmpu 0,29,2
	beq- 0,.L389
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	cmpwi 0,31,0
	blt- 0,.L391
	addis 9,2,.LC26@toc@ha
	addi 9,9,.LC26@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L386
.L391:
	addis 9,2,.LC25@toc@ha
	addi 9,9,.LC25@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L386
.L385:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L390
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
	beq- 0,.L385
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
	ld 31,120(1)
	.cfi_restore 31
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
.L383:
	fmr 1,28
	fmr 2,29
	addi 1,1,160
	.cfi_def_cfa_offset 0
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L390:
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
	b .L383
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
	bne+ 0,.L398
.L397:
	cmpdi 0,30,0
	bne- 0,.L399
	li 9,0
	stb 9,0(3)
.L399:
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
	addi 10,4,1
	mtctr 10
.L404:
	bdz .L405
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr+ 0
	addi 3,3,1
	b .L404
.L405:
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
.L410:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L415
	addi 9,4,-1
.L413:
	lbzu 10,1(9)
	cmpwi 0,10,0
	beq- 0,.L416
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	bne+ 0,.L413
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
	mr 9,3
	li 3,0
	b .L419
.L418:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	beqlr- 0
.L419:
	lbz 10,0(9)
	cmpw 0,10,4
	bne+ 0,.L418
	mr 3,9
	b .L418
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
	beq- 0,.L427
	std 28,112(1)
	.cfi_offset 28, -32
	lbz 28,0(30)
.L425:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L430
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L428
	addi 31,31,1
	b .L425
.L430:
	ld 28,112(1)
	.cfi_restore 28
	b .L424
.L427:
	mr 3,31
.L424:
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
.L428:
	.cfi_def_cfa_offset 144
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	mr 3,31
	ld 28,112(1)
	.cfi_restore 28
	b .L424
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
	blt- 0,.L444
.L432:
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	bnglr- 0
	fcmpu 0,2,0
	bnllr+ 0
	b .L434
.L444:
	fcmpu 0,2,0
	bng+ 0,.L432
.L434:
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
	std 29,-24(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -24
	subf 29,6,4
	add 29,3,29
	cmpdi 0,6,0
	beq- 0,.L446
	std 30,144(1)
	.cfi_offset 30, -16
	mr 30,5
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne- 0,.L451
	mflr 0
	.cfi_register 65, 0
	std 0,176(1)
	.cfi_offset 65, 16
	std 27,120(1)
	.cfi_offset 27, -40
	std 28,128(1)
	.cfi_offset 28, -32
	std 31,152(1)
	.cfi_offset 31, -8
	mr 31,3
	addi 27,5,1
	addi 28,6,-1
	b .L447
.L448:
	addi 31,31,1
.L447:
	cmpld 0,31,29
	bgt- 0,.L454
	lbz 10,0(31)
	lbz 9,0(30)
	cmpw 0,10,9
	bne+ 0,.L448
	mr 5,28
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L448
	mr 3,31
	ld 27,120(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,128(1)
	.cfi_restore 28
	ld 30,144(1)
	.cfi_restore 30
	ld 31,152(1)
	.cfi_restore 31
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
	b .L446
.L454:
	.cfi_restore_state
	li 3,0
	ld 27,120(1)
	.cfi_restore 27
	ld 28,128(1)
	.cfi_restore 28
	ld 30,144(1)
	.cfi_restore 30
	ld 31,152(1)
	.cfi_restore 31
	ld 0,176(1)
	mtlr 0
	.cfi_restore 65
.L446:
	addi 1,1,160
	.cfi_def_cfa_offset 0
	ld 29,-24(1)
	.cfi_restore 29
	blr
.L451:
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	li 3,0
	ld 30,144(1)
	.cfi_restore 30
	b .L446
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
	li 8,0
	fcmpu 0,1,0
	blt- 0,.L478
.L458:
	li 9,0
	addis 10,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(10)
	fcmpu 0,1,0
	cror 2,0,3
	beq- 0,.L476
	fmr 12,0
	addis 10,2,.LC17@toc@ha
	addi 10,10,.LC17@toc@l
	b .L460
.L478:
	fneg 1,1
	li 8,1
	b .L458
.L462:
	addi 9,9,1
	lfs 0,0(10)
	fmul 1,1,0
.L460:
	fcmpu 0,1,12
	cror 2,1,2
	beq+ 0,.L462
.L463:
	stw 9,0(4)
	cmpwi 0,8,0
	beqlr- 0
	fneg 1,1
	blr
.L476:
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	li 9,0
	fcmpu 0,1,0
	bnl- 0,.L463
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	li 9,0
	fcmpu 0,1,0
	beq- 0,.L463
	li 9,0
	addis 10,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(10)
	b .L465
.L466:
	addi 9,9,-1
	fadd 1,1,1
.L465:
	fcmpu 0,1,0
	blt+ 0,.L466
	b .L463
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
	mr 9,3
	li 3,0
	b .L480
.L483:
	rldicl 10,9,0,63
	mulld 10,4,10
	srdi 9,9,1
	add 3,3,10
	sldi 4,4,1
.L480:
	cmpdi 0,9,0
	bne+ 0,.L483
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
	b .L485
.L489:
	rldic 4,4,1,32
	slwi 9,9,1
.L485:
	cmplw 0,4,3
	bge- 0,.L495
	cmpwi 0,9,0
	beq- 0,.L493
	cmpwi 0,4,0
	bge+ 0,.L489
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
	beq- 0,.L496
	cmplw 0,3,4
	blt- 0,.L490
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L490
.L496:
	cmpdi 0,5,0
	bne- 0,.L492
	mr 3,10
.L492:
	rldicl 3,3,0,32
	blr
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
	beq- 0,.L499
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
	sradi 9,3,63
	xor. 9,9,3
	li 3,63
	beq- 0,.L501
	cntlzd 9,9
	addi 3,9,-1
.L501:
	extsw 3,3
	blr
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
	bne+ 0,.L505
	rldicl 3,10,0,32
	blr
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
	srwi 9,5,3
	rlwinm 7,5,0,0,28
	cmpld 0,3,4
	blt- 0,.L507
	add 10,4,5
	cmpld 0,10,3
	blt- 0,.L507
	addi 9,5,1
	mtctr 9
	b .L508
.L507:
	addi 8,4,-8
	addi 10,3,-8
	rldicl 9,9,0,35
	addi 9,9,1
	mtctr 9
	b .L509
.L510:
	ldu 9,8(8)
	stdu 9,8(10)
.L509:
	bdnz .L510
	rldicl 10,7,0,32
	subf 9,7,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,7,5
	bgt- 0,.L516
	cmpwi 0,5,0
	bne+ 0,.L511
.L516:
	li 9,1
	mtctr 9
	b .L511
.L512:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L511:
	bdnz .L512
	blr
.L514:
	lbzx 9,4,5
	stbx 9,3,5
.L508:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L514
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
	srwi 9,5,1
	cmpld 0,3,4
	blt- 0,.L518
	add 10,4,5
	cmpld 0,10,3
	blt- 0,.L518
	addi 9,5,1
	mtctr 9
	b .L519
.L518:
	addi 8,4,-2
	addi 10,3,-2
	rldicl 9,9,0,33
	addi 9,9,1
	mtctr 9
	b .L520
.L521:
	lhzu 9,2(8)
	sthu 9,2(10)
.L520:
	bdnz .L521
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L523:
	lbzx 9,4,5
	stbx 9,3,5
.L519:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L523
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
	srwi 9,5,2
	rlwinm 7,5,0,0,29
	cmpld 0,3,4
	blt- 0,.L526
	add 10,4,5
	cmpld 0,10,3
	blt- 0,.L526
	addi 9,5,1
	mtctr 9
	b .L527
.L526:
	addi 8,4,-4
	addi 10,3,-4
	rldicl 9,9,0,34
	addi 9,9,1
	mtctr 9
	b .L528
.L529:
	lwzu 9,4(8)
	stwu 9,4(10)
.L528:
	bdnz .L529
	rldicl 10,7,0,32
	subf 9,7,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,7,5
	bgt- 0,.L535
	cmpwi 0,5,0
	bne+ 0,.L530
.L535:
	li 9,1
	mtctr 9
	b .L530
.L531:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L530:
	bdnz .L531
	blr
.L533:
	lbzx 9,4,5
	stbx 9,3,5
.L527:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L533
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
	blt- 0,.L542
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
	blt- 0,.L545
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge- 0,.L546
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
	bge- 0,.L547
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
	li 9,17
	mtctr 9
.L550:
	bdz .L551
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne- 0,.L551
	addi 10,10,1
	b .L550
.L551:
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
	li 10,17
	mtctr 10
.L554:
	bdz .L555
	sraw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L555
	addi 9,9,1
	b .L554
.L555:
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
	bne- 0,.L563
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
	bne+ 0,.L572
	rldicl 3,10,0,32
	blr
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
	beq- 0,.L577
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
	bne+ 0,.L576
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
	b .L579
.L583:
	rldic 4,4,1,32
	slwi 9,9,1
.L579:
	cmplw 0,4,3
	bge- 0,.L589
	cmpwi 0,9,0
	beq- 0,.L587
	cmpwi 0,4,0
	bge+ 0,.L583
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
	beq- 0,.L590
	cmplw 0,3,4
	blt- 0,.L584
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L584
.L590:
	cmpdi 0,5,0
	bne- 0,.L586
	mr 3,10
.L586:
	rldicl 3,3,0,32
	blr
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
	blt- 0,.L592
	mfcr 3
	rlwinm 3,3,2,1
.L592:
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
	blt- 0,.L595
	mfcr 3
	rlwinm 3,3,2,1
.L595:
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
	li 7,0
	cmpwi 0,4,0
	blt- 0,.L607
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
	beq- 0,.L602
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne+ 0,.L603
.L602:
	mr 3,10
	cmpwi 0,7,0
	beq- 0,.L604
	neg 3,10
.L604:
	extsw 3,3
	blr
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	li 31,0
	cmpdi 0,3,0
	blt- 0,.L614
.L609:
	cmpdi 0,4,0
	blt- 0,.L615
.L610:
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L611
	neg 3,3
.L611:
	addi 1,1,128
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	li 31,0
	cmpdi 0,3,0
	blt- 0,.L621
.L617:
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L618
	neg 3,3
.L618:
	addi 1,1,128
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
	li 10,17
	mtctr 10
.L623:
	cmplw 0,4,3
	bge- 0,.L635
	bdz .L634
	andi. 10,4,0x8000
	bne- 0,.L636
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
	beq- 0,.L637
	cmplw 0,3,4
	blt- 0,.L628
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
	b .L628
.L637:
	cmpdi 0,5,0
	bne- 0,.L630
	mr 3,10
.L630:
	rlwinm 3,3,0,0xffff
	blr
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
	li 9,1
	b .L639
.L643:
	sldi 4,4,1
	sldi 9,9,1
.L639:
	cmpld 0,4,3
	bge- 0,.L649
	cmpdi 0,9,0
	beq- 0,.L647
	andis. 10,4,0x8000
	beq+ 0,.L643
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
	beq- 0,.L650
	cmpld 0,3,4
	blt- 0,.L644
	subf 3,4,3
	or 10,10,9
	b .L644
.L650:
	cmpdi 0,5,0
	bnelr- 0
	mr 3,10
	blr
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
	beq- 0,.L652
	addi 4,4,-32
	slw 3,3,4
	sldi 3,3,32
	blr
.L652:
	cmpdi 0,4,0
	beqlr- 0
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
	beq- 0,.L657
	li 10,0
	addi 5,5,-64
	sld 3,4,5
.L658:
	mr 4,10
	blr
.L657:
	cmpdi 0,5,0
	beqlr- 0
	sld 10,4,5
	sld 3,3,5
	subfic 5,5,64
	srd 5,4,5
	or 3,5,3
	b .L658
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
	beq- 0,.L662
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
	beqlr- 0
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
	beq- 0,.L667
	sradi 10,3,63
	addi 5,5,-64
	srad 4,3,5
.L668:
	mr 3,10
	blr
.L667:
	cmpdi 0,5,0
	beqlr- 0
	srad 10,3,5
	subfic 9,5,64
	sld 9,3,9
	srd 4,4,5
	or 4,9,4
	b .L668
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
	mr 10,3
	rlwinm 7,3,24,16,23
	rlwinm 8,3,8,8,15
	srwi 3,3,24
	rlwimi 3,10,24,0,31-24
	or 3,3,7
	or 3,3,8
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
	rlwinm 10,3,0,30,30
	cntlzw 10,10
	srwi 10,10,5
	subfic 3,3,2
	mullw 3,10,3
	add 3,9,3
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
	cntlzd 9,3
	srdi 9,9,6
	neg 8,9
	addi 10,9,-1
	and 3,10,3
	and 8,8,4
	or 3,3,8
	cntlzd 4,3
	slwi 3,9,6
	add 3,3,4
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
	sradi 9,4,32
	cmpw 0,10,9
	blt- 0,.L677
	mr 8,10
	mr 10,9
	li 9,2
	cmpw 0,8,10
	bgt- 0,.L676
	li 9,0
	cmplw 0,3,4
	blt- 0,.L676
	li 9,2
	bgt- 0,.L676
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
	cmpd 0,3,5
	blt- 0,.L684
	li 9,2
	bgt- 0,.L684
	li 9,0
	cmpld 0,4,6
	blt- 0,.L684
	subfc 6,4,6
	subfe 9,9,9
	subfic 9,9,1
.L684:
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
	neg 10,9
	and 3,10,3
	andc 4,4,10
	or 4,4,3
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
	bne- 0,.L692
	li 9,0
	cmpdi 0,3,0
	beq- 0,.L693
	neg 9,3
	and 9,9,3
	cntlzd 9,9
	subfic 9,9,128
	b .L693
.L692:
	neg 9,4
	and 9,9,4
	cntlzd 9,9
	subfic 9,9,64
.L693:
	extsw 3,9
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
	beq- 0,.L696
	srdi 3,3,32
	addi 4,4,-32
	srw 3,3,4
	blr
.L696:
	cmpdi 0,4,0
	beqlr- 0
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
	beq- 0,.L701
	li 10,0
	addi 5,5,-64
	srd 4,3,5
.L702:
	mr 3,10
	blr
.L701:
	cmpdi 0,5,0
	beqlr- 0
	srd 10,3,5
	subfic 9,5,64
	sld 9,3,9
	srd 4,4,5
	or 4,9,4
	b .L702
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
	mr 10,4
	rldicl 8,3,0,32
	rldicl 7,4,0,32
	mulld 4,8,7
	srdi 9,4,32
	srdi 3,3,32
	mulld 7,3,7
	add 9,9,7
	rldimi 4,9,32,0
	srdi 7,9,32
	srdi 9,4,32
	srdi 10,10,32
	mulld 8,8,10
	add 9,9,8
	srdi 8,9,32
	add 8,8,7
	mulld 3,3,10
	add 3,3,8
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
	mr 28,3
	mr 29,4
	mr 30,5
	mr 31,6
	mr 4,6
	mr 3,29
	bl __mulddi3
	mulld 31,31,28
	mulld 30,30,29
	add 31,31,30
	add 3,31,3
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
	sldi 5,3,63
	srdi 7,4,1
	or 7,5,7
	srdi 6,3,1
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	and 6,6,5
	and 7,7,5
	subfc 4,7,4
	subfe 10,6,3
	sldi 7,10,62
	srdi 9,4,2
	or 9,7,9
	srdi 8,10,2
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	and 8,8,7
	and 9,9,7
	and 30,7,10
	and 31,7,4
	addc 11,9,31
	adde 10,8,30
	srdi 9,11,4
	rldimi 9,10,60,0
	srdi 8,10,4
	addc 29,9,11
	adde 28,8,10
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 10,28,9
	and 11,29,9
	add 10,10,11
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
	srwi 10,4,31
	addis 9,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(9)
	b .L723
.L721:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq- 0,.L722
	fmul 1,1,1
.L723:
	andi. 9,4,0x1
	beq- 0,.L721
	fmul 0,0,1
	b .L721
.L722:
	fmr 1,0
	cmpwi 0,10,0
	beqlr- 0
	addis 9,2,.LC31@toc@ha
	lfs 1,.LC31@toc@l(9)
	fdiv 1,1,0
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
	srwi 10,4,31
	addis 9,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(9)
	b .L729
.L727:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq- 0,.L728
	fmuls 1,1,1
.L729:
	andi. 9,4,0x1
	beq- 0,.L727
	fmuls 0,0,1
	b .L727
.L728:
	fmr 1,0
	cmpwi 0,10,0
	beqlr- 0
	addis 9,2,.LC31@toc@ha
	lfs 1,.LC31@toc@l(9)
	fdivs 1,1,0
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
	srdi 9,4,32
	cmplw 0,10,9
	blt- 0,.L734
	mr 8,10
	mr 10,9
	li 9,2
	cmplw 0,8,10
	bgt- 0,.L733
	li 9,0
	cmplw 0,3,4
	blt- 0,.L733
	li 9,2
	bgt- 0,.L733
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
	cmpld 0,3,5
	blt- 0,.L741
	li 9,2
	bgt- 0,.L741
	li 9,0
	cmpld 0,4,6
	blt- 0,.L741
	subfc 6,4,6
	subfe 9,9,9
	subfic 9,9,1
.L741:
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
	.section	.rodata.cst4
	.align 2
.LC17:
	.long	1056964608
	.set	.LC18,.LC26
	.section	.rodata.cst16
	.align 4
.LC25:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.align 4
.LC26:
	.long	1073741824
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
