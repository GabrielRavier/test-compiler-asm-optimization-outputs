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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	mr 11,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	mr 11,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,3,4
	ble 0,.L4
	add 9,4,5
	add 5,3,5
	subf 4,4,9
	addi 10,4,1
	mtctr 10
	b .L5
.L6:
	lbzu 10,-1(9)
	addi 5,5,-1
	stb 10,0(5)
.L5:
	bdnz .L6
	b .L7
.L4:
	cmpld 0,3,4
	beq 0,.L7
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	subf 5,9,5
	addi 10,5,1
	mtctr 10
	b .L8
.L9:
	addi 4,4,1
	lbz 10,0(4)
	addi 9,9,1
	stb 10,0(9)
.L8:
	bdnz .L9
.L7:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 5,5,0,0xff
	addi 4,4,-1
	addi 9,6,1
	mtctr 9
	b .L11
.L13:
	addi 6,6,-1
	addi 3,3,1
.L11:
	bdz .L12
	addi 4,4,1
	lbz 9,0(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	bne 0,.L13
.L12:
	cmpdi 0,6,0
	beq 0,.L15
	addi 3,3,1
	b .L14
.L15:
	li 3,0
.L14:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
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
	cmpdi 0,5,0
	bne 0,.L22
	li 3,0
.L22:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
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
	cmpdi 0,5,0
	beq 0,.L31
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L30
.L31:
	li 3,0
.L30:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	subf 5,9,5
	addi 10,5,1
	mtctr 10
	b .L35
.L36:
	addi 4,4,1
	lbz 10,0(4)
	addi 9,9,1
	stb 10,0(9)
.L35:
	bdnz .L36
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	addi 9,5,-1
	addi 10,5,1
	mtctr 10
	b .L38
.L40:
	lbzx 8,3,9
	addi 10,9,-1
	cmpw 0,8,4
	bne 0,.L41
	add 3,3,9
	b .L39
.L41:
	mr 9,10
.L38:
	bdnz .L40
	li 3,0
.L39:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	subf 5,9,5
	addi 10,5,1
	mtctr 10
	b .L43
.L44:
	addi 9,9,1
	stb 4,0(9)
.L43:
	bdnz .L44
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	b .L46
.L47:
	addi 3,3,1
.L46:
	addi 4,4,1
	lbz 9,0(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L47
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	b .L49
.L51:
	addi 3,3,1
.L49:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L50
	cmpw 0,9,4
	bne 0,.L51
.L50:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
.L54:
	lbz 9,0(3)
	cmpw 0,9,4
	beq 0,.L53
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne 0,.L54
	li 3,0
.L53:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L58
.L60:
	addi 3,3,1
	addi 4,4,1
.L58:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L59
	cmpwi 0,10,0
	bne 0,.L60
.L59:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L62
.L63:
	addi 9,9,1
.L62:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L63
	subf 3,3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,5,0
	beq 0,.L69
	addi 5,5,-1
	add 5,3,5
	subf 5,3,5
	addi 9,5,1
	mtctr 9
	b .L66
.L68:
	addi 3,3,1
	addi 4,4,1
.L66:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L67
	lbz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L67
	bdz .L67
	lbz 10,0(3)
	cmpw 0,10,9
	beq 0,.L68
.L67:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L65
.L69:
	li 3,0
.L65:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 9,5,1
	addi 9,9,1
	mtctr 9
	cmpdi 0,5,0
	bge 0,.L73
	li 9,1
	mtctr 9
	b .L73
.L74:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
.L73:
	bdnz .L74
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 3,3,0,32
	subfic 3,3,127
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,32
	beq 0,.L80
	cmpwi 0,3,9
	bne 0,.L81
	li 3,1
	b .L79
.L80:
	li 3,1
	b .L79
.L81:
	li 3,0
.L79:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,31
	ble 0,.L84
	cmpwi 0,3,127
	bne 0,.L85
	li 3,1
	b .L83
.L84:
	li 3,1
	b .L83
.L85:
	li 3,0
.L83:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-33
	rldicl 3,3,0,32
	subfic 3,3,93
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-32
	rldicl 3,3,0,32
	subfic 3,3,94
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,32
	beq 0,.L92
	addi 3,3,-9
	cmplwi 0,3,4
	bgt 0,.L93
	li 3,1
	b .L91
.L92:
	li 3,1
	b .L91
.L93:
	li 3,0
.L91:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-65
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,31
	ble 0,.L97
	addi 9,3,-127
	cmplwi 0,9,32
	ble 0,.L98
	addi 9,3,-8232
	cmplwi 0,9,1
	ble 0,.L99
	addis 3,3,0xffff
	addi 3,3,7
	cmplwi 0,3,2
	bgt 0,.L100
	li 3,1
	b .L96
.L97:
	li 3,1
	b .L96
.L98:
	li 3,1
	b .L96
.L99:
	li 3,1
	b .L96
.L100:
	li 3,0
.L96:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,254
	bgt 0,.L103
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 3,3,63
	b .L104
.L103:
	cmplwi 0,3,8231
	ble 0,.L105
	addi 9,3,-8234
	cmplwi 0,9,47061
	ble 0,.L106
	addis 9,3,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	ble 0,.L107
	addis 9,3,0xffff
	addi 9,9,4
	lis 10,0x10
	ori 10,10,0x3
	cmplw 0,9,10
	bgt 0,.L108
	rlwinm 3,3,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,3,9
	beq 0,.L109
	li 3,1
	b .L104
.L105:
	li 3,1
	b .L104
.L106:
	li 3,1
	b .L104
.L107:
	li 3,1
	b .L104
.L108:
	li 3,0
	b .L104
.L109:
	li 3,0
.L104:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L112
	ori 3,3,0x20
	addi 3,3,-97
	cmplwi 0,3,5
	bgt 0,.L113
	li 3,1
	b .L111
.L112:
	li 3,1
	b .L111
.L113:
	li 3,0
.L111:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 3,3,0,57
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L116
	fcmpu 0,2,2
	bun 0,.L119
	fcmpu 0,1,2
	bng 0,.L122
	fsub 1,1,2
	b .L116
.L119:
	fmr 1,2
	b .L116
.L122:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
.L116:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L124
	fcmpu 0,2,2
	bun 0,.L127
	fcmpu 0,1,2
	bng 0,.L130
	fsubs 1,1,2
	b .L124
.L127:
	fmr 1,2
	b .L124
.L130:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
.L124:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L135
	fcmpu 0,2,2
	bun 0,.L132
	stfd 1,48(31)
	ld 10,48(31)
	srdi 10,10,63
	stfd 2,48(31)
	ld 9,48(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L133
	stfd 1,48(31)
	cmpwi 0,10,0
	beq 0,.L132
	fmr 1,2
	b .L132
.L133:
	fcmpu 0,1,2
	bnl 0,.L132
	fmr 1,2
	b .L132
.L135:
	fmr 1,2
.L132:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	stfs 2,120(31)
	fcmpu 0,1,1
	bun 0,.L145
	fcmpu 0,2,2
	bun 0,.L146
	lwz 10,112(31)
	rlwinm 10,10,0,0,0
	lwz 9,120(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L143
	lwz 9,112(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L147
	fmr 1,2
	b .L142
.L143:
	lfs 0,112(31)
	lfs 12,120(31)
	fcmpu 0,0,12
	bnl 0,.L150
	fmr 1,12
	b .L142
.L145:
	lfs 1,120(31)
	b .L142
.L146:
	lfs 1,112(31)
	b .L142
.L147:
	lfs 1,112(31)
	b .L142
.L150:
	lfs 1,112(31)
.L142:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fmr 0,1
	fmr 1,2
	fmr 13,4
	fmr 12,3
	fmr 11,0
	fcmpu 0,11,11
	bun 0,.L155
	fmr 11,12
	fcmpu 0,11,11
	bun 0,.L152
	fmr 11,0
	stfd 11,48(31)
	ld 10,48(31)
	srdi 10,10,63
	fmr 11,12
	stfd 11,48(31)
	ld 9,48(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L153
	fmr 11,0
	stfd 11,48(31)
	ld 9,48(31)
	cmpdi 0,9,0
	bge 0,.L152
	fmr 0,3
	fmr 1,4
	b .L152
.L153:
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	bnl 0,.L152
	fmr 0,3
	fmr 1,4
	b .L152
.L155:
	fmr 0,3
	fmr 1,4
.L152:
	fmr 2,1
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L165
	fcmpu 0,2,2
	bun 0,.L162
	stfd 1,48(31)
	ld 10,48(31)
	srdi 10,10,63
	stfd 2,48(31)
	ld 9,48(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L163
	stfd 1,48(31)
	cmpwi 0,10,0
	beq 0,.L167
	b .L162
.L163:
	fcmpu 0,1,2
	bnl 0,.L170
	b .L162
.L165:
	fmr 1,2
	b .L162
.L167:
	fmr 1,2
	b .L162
.L170:
	fmr 1,2
.L162:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	stfs 2,120(31)
	fcmpu 0,1,1
	bun 0,.L175
	fcmpu 0,2,2
	bun 0,.L176
	lwz 10,112(31)
	rlwinm 10,10,0,0,0
	lwz 9,120(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L173
	lwz 9,112(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L177
	b .L172
.L173:
	lfs 0,112(31)
	lfs 12,120(31)
	fcmpu 0,0,12
	bnl 0,.L180
	fmr 1,0
	b .L172
.L175:
	lfs 1,120(31)
	b .L172
.L176:
	lfs 1,112(31)
	b .L172
.L177:
	lfs 1,120(31)
	b .L172
.L180:
	lfs 1,120(31)
.L172:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fmr 13,2
	fmr 12,1
	fmr 1,3
	fmr 2,4
	fmr 0,12
	fcmpu 0,0,0
	bun 0,.L182
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L186
	fmr 0,12
	stfd 0,48(31)
	ld 10,48(31)
	srdi 10,10,63
	fmr 0,1
	stfd 0,48(31)
	ld 9,48(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L183
	fmr 0,12
	stfd 0,48(31)
	ld 9,48(31)
	cmpdi 0,9,0
	bge 0,.L182
	fmr 1,12
	fmr 2,13
	b .L182
.L183:
	fcmpu 0,12,1
	bne 0,$+8
	fcmpu 0,13,2
	bnl 0,.L182
	fmr 1,12
	fmr 2,13
	b .L182
.L186:
	fmr 1,12
	fmr 2,13
.L182:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	b .L192
.L193:
	rldicl 10,3,0,58
	addis 8,2,digits@toc@ha
	addi 8,8,digits@toc@l
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L192:
	cmpwi 0,3,0
	bne 0,.L193
	li 10,0
	stb 10,0(9)
	addis 3,2,s.0@toc@ha
	addi 3,3,s.0@toc@l
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-1
	rldicl 3,3,0,32
	addis 9,2,seed@toc@ha
	std 3,seed@toc@l(9)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 7,2,seed@toc@ha
	addi 7,7,seed@toc@l
	ld 10,0(7)
	sldi 9,10,4
	subf 9,10,9
	sldi 8,9,6
	subf 9,9,8
	sldi 8,9,7
	add 9,9,8
	sldi 8,9,2
	add 9,8,10
	sldi 8,9,6
	subf 9,9,8
	sldi 8,9,7
	add 8,8,10
	sldi 9,8,2
	add 9,9,10
	sldi 8,9,3
	subf 9,9,8
	sldi 8,9,3
	subf 9,9,8
	sldi 8,9,6
	subf 9,9,8
	sldi 8,9,2
	subf 9,10,8
	sldi 8,9,7
	subf 8,10,8
	sldi 9,8,2
	add 9,9,10
	sldi 8,9,2
	subf 8,10,8
	sldi 9,8,2
	subf 9,10,9
	sldi 3,9,2
	add 3,3,10
	addi 3,3,1
	std 3,0(7)
	srdi 3,3,33
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,4,0
	bne 0,.L197
	li 9,0
	std 9,8(3)
	std 9,0(3)
	b .L196
.L197:
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L196
	std 3,8(9)
.L196:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L200
	ld 10,8(3)
	std 10,8(9)
.L200:
	ld 9,8(3)
	cmpdi 0,9,0
	beq 0,.L199
	ld 10,0(3)
	std 10,0(9)
.L199:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-192(1)
	.cfi_def_cfa_offset 192
	.cfi_offset 65, 16
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 23,3
	mr 30,4
	mr 25,5
	mr 29,6
	mr 26,7
	ld 27,0(5)
	mr 24,4
	li 28,0
	b .L203
.L206:
	mr 4,24
	mr 3,23
	std 2,40(1)
	ld 9,0(26)
	mtctr 9
	ld 11,16(26)
	ld 2,8(26)
	bctrl
	ld 2,40(1)
	add 24,24,29
	cmpwi 0,3,0
	bne 0,.L204
	mulld 28,28,29
	add 3,30,28
	b .L205
.L204:
	addi 28,28,1
.L203:
	cmpld 0,28,27
	bne 0,.L206
	addi 9,27,1
	std 9,0(25)
	mulld 27,29,27
	add 3,30,27
	mr 5,29
	mr 4,23
	bl memcpy
	nop
.L205:
	addi 1,31,192
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,3
	mr 30,4
	mr 27,6
	mr 28,7
	ld 24,0(5)
	mr 26,4
	li 29,0
	b .L208
.L211:
	mr 4,26
	mr 3,25
	std 2,40(1)
	ld 9,0(28)
	mtctr 9
	ld 11,16(28)
	ld 2,8(28)
	bctrl
	ld 2,40(1)
	add 26,26,27
	cmpwi 0,3,0
	bne 0,.L209
	mulld 29,29,27
	add 3,30,29
	b .L210
.L209:
	addi 29,29,1
.L208:
	cmpld 0,29,24
	bne 0,.L211
	li 3,0
.L210:
	addi 1,31,176
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,8,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L214
.L215:
	addi 30,30,1
.L214:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L215
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L221
	cmpwi 0,9,45
	bne 0,.L222
	li 10,1
	b .L216
.L221:
	li 10,0
.L216:
	addi 30,30,1
	b .L217
.L222:
	li 10,0
.L217:
	addi 30,30,-1
	li 3,0
	b .L218
.L219:
	slwi 9,3,2
	add 9,9,3
	slwi 8,9,1
	lbz 3,0(30)
	addi 3,3,-48
	subf 3,3,8
.L218:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L219
	cmpwi 0,10,0
	bne 0,.L220
	neg 3,3
.L220:
	extsw 3,3
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L225
.L226:
	addi 30,30,1
.L225:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L226
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L232
	cmpwi 0,9,45
	bne 0,.L233
	li 10,1
	b .L227
.L232:
	li 10,0
.L227:
	addi 30,30,1
	b .L228
.L233:
	li 10,0
.L228:
	addi 30,30,-1
	li 3,0
	b .L229
.L230:
	sldi 9,3,2
	add 9,9,3
	sldi 8,9,1
	lbz 3,0(30)
	addi 3,3,-48
	extsw 3,3
	subf 3,3,8
.L229:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L230
	cmpwi 0,10,0
	bne 0,.L231
	neg 3,3
.L231:
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L236
.L237:
	addi 30,30,1
.L236:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L237
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L243
	cmpwi 0,9,45
	bne 0,.L244
	li 10,1
	b .L238
.L243:
	li 10,0
.L238:
	addi 30,30,1
	b .L239
.L244:
	li 10,0
.L239:
	addi 30,30,-1
	li 3,0
	b .L240
.L241:
	sldi 9,3,2
	add 9,9,3
	sldi 8,9,1
	lbz 3,0(30)
	addi 3,3,-48
	extsw 3,3
	subf 3,3,8
.L240:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L241
	cmpwi 0,10,0
	bne 0,.L242
	neg 3,3
.L242:
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,3
	mr 26,4
	mr 30,5
	mr 27,6
	mr 28,7
	b .L247
.L251:
	srdi 29,30,1
	mulld 29,29,27
	add 29,26,29
	mr 4,29
	mr 3,25
	std 2,40(1)
	ld 9,0(28)
	mtctr 9
	ld 11,16(28)
	ld 2,8(28)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	bge 0,.L248
	srdi 30,30,1
	b .L247
.L248:
	cmpwi 0,3,0
	ble 0,.L252
	add 26,29,27
	srdi 9,30,1
	addi 30,30,-1
	subf 30,9,30
.L247:
	cmpdi 0,30,0
	bne 0,.L251
	li 3,0
	b .L250
.L252:
	mr 3,29
.L250:
	addi 1,31,176
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 24,3
	mr 25,6
	mr 28,7
	mr 26,8
	mr 29,5
	mr 27,4
	b .L254
.L257:
	srawi 30,29,1
	mulld 30,30,25
	add 30,27,30
	mr 5,26
	mr 4,30
	mr 3,24
	std 2,40(1)
	ld 9,0(28)
	mtctr 9
	ld 11,16(28)
	ld 2,8(28)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	beq 0,.L258
	ble 0,.L256
	add 27,30,25
	addi 29,29,-1
.L256:
	srawi 29,29,1
.L254:
	cmpwi 0,29,0
	bne 0,.L257
	li 3,0
	b .L255
.L258:
	mr 3,30
.L255:
	addi 1,31,176
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,8,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divw 8,4,5
	mullw 5,8,5
	subf 4,5,4
	stw 8,0(3)
	stw 4,4(3)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divd 10,4,5
	mulld 5,10,5
	subf 4,5,4
	std 10,0(3)
	std 4,8(3)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divd 10,4,5
	mulld 5,10,5
	subf 4,5,4
	std 10,0(3)
	std 4,8(3)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divd 10,4,5
	mulld 5,10,5
	subf 4,5,4
	std 10,0(3)
	std 4,8(3)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L267
.L269:
	addi 3,3,4
.L267:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L268
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L269
.L268:
	lwz 9,0(3)
	cmpwi 0,9,0
	bne 0,.L270
	li 3,0
.L270:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L273
.L275:
	addi 3,3,4
	addi 4,4,4
.L273:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L274
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L274
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L275
.L274:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L277
	lwa 3,0(3)
	lwa 9,0(4)
	subf 3,3,9
	srdi 3,3,63
	b .L276
.L277:
	li 3,-1
.L276:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-4
	addi 9,3,-4
.L279:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
	cmpwi 0,10,0
	bne 0,.L279
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L282
.L283:
	addi 9,9,4
.L282:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L283
	subf 3,3,9
	sradi 3,3,2
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L285
.L287:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L285:
	bdz .L286
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L286
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L286
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L287
.L286:
	cmpdi 0,5,0
	beq 0,.L289
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L290
	lwa 3,0(3)
	lwa 9,0(4)
	subf 3,3,9
	srdi 3,3,63
	b .L288
.L289:
	li 3,0
	b .L288
.L290:
	li 3,-1
.L288:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L294
.L296:
	addi 5,5,-1
	addi 3,3,4
.L294:
	bdz .L295
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L296
.L295:
	cmpdi 0,5,0
	bne 0,.L297
	li 3,0
.L297:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L302
.L304:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L302:
	bdz .L303
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq 0,.L304
.L303:
	cmpdi 0,5,0
	beq 0,.L306
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L307
	lwa 3,0(3)
	lwa 9,0(4)
	subf 3,3,9
	srdi 3,3,63
	b .L305
.L306:
	li 3,0
	b .L305
.L307:
	li 3,-1
.L305:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L311
.L312:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
.L311:
	addi 5,5,-1
	bdnz .L312
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,3,4
	beq 0,.L314
	subf 10,4,3
	sldi 9,5,2
	cmpld 0,10,9
	blt 0,.L315
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L316
.L315:
	sldi 5,5,2
	add 4,4,5
	add 5,3,5
	subf 9,3,5
	srdi 9,9,2
	addi 9,9,1
	mtctr 9
	b .L317
.L318:
	addi 4,4,-4
	lwz 9,0(4)
	addi 5,5,-4
	stw 9,0(5)
.L317:
	bdnz .L318
	b .L314
.L319:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
.L316:
	addi 5,5,-1
	bdnz .L319
.L314:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L321
.L322:
	addi 9,9,4
	stw 4,0(9)
.L321:
	addi 5,5,-1
	bdnz .L322
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,3,4
	bge 0,.L324
	add 9,3,5
	add 4,4,5
	subf 3,3,9
	addi 10,3,1
	mtctr 10
	b .L325
.L326:
	lbzu 10,-1(9)
	addi 4,4,-1
	stb 10,0(4)
.L325:
	bdnz .L326
	b .L323
.L324:
	cmpld 0,3,4
	beq 0,.L323
	addi 3,3,-1
	addi 9,4,-1
	addi 5,5,-1
	add 5,5,4
	subf 5,9,5
	addi 10,5,1
	mtctr 10
	b .L328
.L329:
	addi 3,3,1
	lbz 10,0(3)
	addi 9,9,1
	stb 10,0(9)
.L328:
	bdnz .L329
.L323:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rotld 3,3,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 4,4,64
	rotld 3,3,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rotlw 3,3,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 4,4,32
	rotlw 3,3,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sld 9,3,4
	subfic 4,4,64
	srd 3,3,4
	or 3,3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srd 9,3,4
	subfic 4,4,64
	sld 3,3,4
	or 3,3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	slw 9,3,4
	subfic 4,4,16
	srw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xffff
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srw 9,3,4
	subfic 4,4,16
	slw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xffff
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	slw 9,3,4
	subfic 4,4,8
	srw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xff
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srw 9,3,4
	subfic 4,4,8
	slw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xff
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 9,3,56,48
	rlwinm 3,3,8,16,23
	or 3,9,3
	rlwinm 3,3,0,0xffff
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 10,3,40,32
	rlwinm 9,3,24,16,23
	rlwinm 8,3,8,8,15
	slwi 3,3,24
	or 3,3,8
	or 3,3,10
	or 3,3,9
	rldicl 3,3,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,33
	mtctr 10
	b .L344
.L347:
	srw 10,3,9
	andi. 10,10,0x1
	beq 0,.L345
	addi 9,9,1
	b .L346
.L345:
	addi 9,9,1
.L344:
	bdnz .L347
	li 9,0
.L346:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr. 9,3
	beq 0,.L352
	li 3,1
	b .L350
.L351:
	srawi 9,9,1
	addi 3,3,1
.L350:
	andi. 10,9,0x1
	beq 0,.L351
	b .L349
.L352:
	li 3,0
.L349:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC4@toc@ha
	lfs 0,.LC4@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L356
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L359
	li 3,1
	b .L354
.L356:
	li 3,1
	b .L354
.L359:
	li 3,0
.L354:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC8@toc@ha
	lfd 0,.LC8@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L363
	addis 9,2,.LC9@toc@ha
	lfd 0,.LC9@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L366
	li 3,1
	b .L361
.L363:
	li 3,1
	b .L361
.L366:
	li 3,0
.L361:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L370
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	bng 0,.L373
	li 3,1
	b .L368
.L370:
	li 3,1
	b .L368
.L373:
	li 3,0
.L368:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 4,48(31)
	lfd 0,48(31)
	fcfid 0,0
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	stfd 0,0(3)
	stfd 1,8(3)
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L376
	fadds 0,1,1
	fcmpu 0,1,0
	beq 0,.L376
	cmpwi 0,4,0
	bge 0,.L380
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	b .L379
.L380:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
.L379:
	andi. 9,4,0x1
	beq 0,.L378
	fmuls 1,1,0
.L378:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L376
	fmuls 0,0,0
	b .L379
.L376:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L382
	fadd 0,1,1
	fcmpu 0,1,0
	beq 0,.L382
	cmpwi 0,4,0
	bge 0,.L386
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	b .L385
.L386:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
.L385:
	andi. 9,4,0x1
	beq 0,.L384
	fmul 1,1,0
.L384:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L382
	fmul 0,0,0
	b .L385
.L382:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mflr 0
	std 0,16(1)
	stfd 28,-32(1)
	stfd 29,-24(1)
	stfd 30,-16(1)
	stfd 31,-8(1)
	std 30,-48(1)
	std 31,-40(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 30, -48
	.cfi_offset 31, -40
	mr 31,1
	.cfi_def_cfa_register 31
	fmr 31,2
	fmr 30,1
	mr 30,5
	fmr 0,30
	fcmpu 0,0,0
	bun 0,.L388
	fmr 3,1
	fmr 4,2
	bl __gcc_qadd
	nop
	fcmpu 0,30,1
	bne 0,$+8
	fcmpu 0,31,2
	beq 0,.L388
	cmpwi 0,30,0
	bge 0,.L392
	addis 9,2,.LC25@toc@ha
	addi 9,9,.LC25@toc@l
	lfd 28,0(9)
	lfd 29,8(9)
	b .L391
.L392:
	addis 9,2,.LC26@toc@ha
	addi 9,9,.LC26@toc@l
	lfd 28,0(9)
	lfd 29,8(9)
.L391:
	andi. 9,30,0x1
	beq 0,.L390
	fmr 3,28
	fmr 4,29
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L390:
	srawi 30,30,1
	addze 30,30
	extsw. 30,30
	beq 0,.L388
	fmr 3,28
	fmr 4,29
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L391
.L388:
	fmr 1,30
	fmr 2,31
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-48(1)
	ld 31,-40(1)
	lfd 28,-32(1)
	lfd 29,-24(1)
	lfd 30,-16(1)
	lfd 31,-8(1)
	blr
	.long 0
	.byte 0,0,2,1,132,2,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	subf 5,9,5
	addi 10,5,1
	mtctr 10
	b .L394
.L395:
	addi 4,4,1
	lbz 8,0(4)
	addi 9,9,1
	lbz 10,0(9)
	xor 10,10,8
	stb 10,0(9)
.L394:
	bdnz .L395
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 28,3
	mr 30,4
	mr 29,5
	bl strlen
	add 3,28,3
	addi 30,30,-1
	addi 9,29,1
	mtctr 9
	b .L397
.L399:
	addi 3,3,1
	addi 29,29,-1
.L397:
	bdz .L398
	addi 30,30,1
	lbz 10,0(30)
	stb 10,0(3)
	andi. 10,10,0xff
	bne 0,.L399
.L398:
	cmpdi 0,29,0
	bne 0,.L400
	li 10,0
	stb 10,0(3)
.L400:
	mr 3,28
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,4,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	addi 10,4,1
	mtctr 10
	b .L404
.L406:
	addi 3,3,1
.L404:
	bdz .L405
	lbzx 10,9,3
	cmpwi 0,10,0
	bne 0,.L406
.L405:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L410
.L412:
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	beq 0,.L411
.L413:
	addi 9,9,1
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L412
	addi 3,3,1
.L410:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L415
	addi 9,4,-1
	b .L413
.L415:
	li 3,0
.L411:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
.L418:
	lbz 10,0(9)
	cmpw 0,10,4
	bne 0,.L417
	mr 3,9
.L417:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	bne 0,.L418
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 29,4
	mr 3,4
	bl strlen
	mr 28,3
	cmpdi 0,3,0
	beq 0,.L425
	lbz 27,0(29)
	b .L423
.L424:
	mr 5,28
	mr 4,29
	mr 3,30
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L426
	addi 30,30,1
.L423:
	extsw 4,27
	mr 3,30
	bl strchr
	mr. 30,3
	bne 0,.L424
	b .L422
.L425:
	mr 3,30
	b .L422
.L426:
	mr 3,30
.L422:
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,5,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L428
	fcmpu 0,2,0
	bgt 0,.L430
.L428:
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L431
	fcmpu 0,2,0
	bnl 0,.L431
.L430:
	fneg 1,1
.L431:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mflr 0
	std 0,16(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 27,5
	mr 29,6
	subf 28,6,4
	add 28,3,28
	cmpdi 0,6,0
	beq 0,.L445
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne 0,.L446
	b .L442
.L444:
	lbz 10,0(30)
	lbz 9,0(27)
	cmpw 0,10,9
	bne 0,.L443
	addi 3,30,1
	addi 5,29,-1
	addi 4,27,1
	bl memcmp
	cmpwi 0,3,0
	beq 0,.L447
.L443:
	addi 30,30,1
.L442:
	cmpld 0,30,28
	ble 0,.L444
	li 3,0
	b .L441
.L445:
	b .L441
.L446:
	li 3,0
	b .L441
.L447:
	mr 3,30
.L441:
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,5
	bl memcpy
	nop
	add 3,3,30
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L466
	fneg 1,1
	li 10,1
	b .L450
.L466:
	li 10,0
.L450:
	addis 9,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(9)
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L461
	b .L467
.L454:
	addi 9,9,1
	addis 8,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(8)
	fmul 1,1,0
	b .L452
.L461:
	li 9,0
.L452:
	addis 8,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(8)
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L454
	b .L455
.L467:
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L468
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	bne 0,.L463
	li 9,0
	b .L455
.L458:
	addi 9,9,-1
	fadd 1,1,1
	b .L457
.L463:
	li 9,0
.L457:
	addis 8,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(8)
	fcmpu 0,1,0
	blt 0,.L458
	b .L455
.L468:
	li 9,0
.L455:
	stw 9,0(4)
	cmpwi 0,10,0
	beq 0,.L459
	fneg 1,1
.L459:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	b .L470
.L472:
	andi. 10,9,0x1
	beq 0,.L471
	add 3,3,4
.L471:
	sldi 4,4,1
	srdi 9,9,1
.L470:
	cmpdi 0,9,0
	bne 0,.L472
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L474
.L476:
	rldic 4,4,1,32
	slwi 9,9,1
.L474:
	cmplw 0,4,3
	bge 0,.L481
	cmpwi 0,9,0
	beq 0,.L482
	cmpwi 0,4,0
	bge 0,.L476
	li 10,0
	b .L478
.L479:
	cmplw 0,3,4
	blt 0,.L477
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
.L477:
	srwi 9,9,1
	srdi 4,4,1
	b .L478
.L481:
	li 10,0
	b .L478
.L482:
	li 10,0
.L478:
	cmpwi 0,9,0
	bne 0,.L479
	cmpdi 0,5,0
	bne 0,.L480
	mr 3,10
.L480:
	rldicl 3,3,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	beq 0,.L486
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	b .L485
.L486:
	li 3,7
.L485:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	bge 0,.L488
	not 3,3
.L488:
	cmpdi 0,3,0
	beq 0,.L490
	cntlzd 3,3
	addi 3,3,-1
	b .L489
.L490:
	li 3,63
.L489:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L492
.L494:
	andi. 10,3,0x1
	beq 0,.L493
	add 9,9,4
.L493:
	srdi 3,3,1
	rldic 4,4,1,32
.L492:
	cmpdi 0,3,0
	bne 0,.L494
	rldicl 3,9,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,3
	rlwinm 8,5,0,0,28
	cmpld 0,3,4
	blt 0,.L496
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L496
	addi 9,5,1
	mtctr 9
	b .L497
.L496:
	addi 7,4,-8
	addi 10,3,-8
	rldic 9,9,3,32
	srdi 9,9,3
	addi 9,9,1
	mtctr 9
	b .L498
.L499:
	addi 7,7,8
	ld 9,0(7)
	addi 10,10,8
	std 9,0(10)
.L498:
	bdnz .L499
	rldicl 10,8,0,32
	subf 9,8,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,8,5
	bgt 0,.L505
	cmpwi 0,5,0
	bne 0,.L500
.L505:
	li 9,1
	mtctr 9
	b .L500
.L501:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L500:
	bdnz .L501
	b .L495
.L503:
	lbzx 9,4,5
	stbx 9,3,5
.L497:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L503
.L495:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,1
	cmpld 0,3,4
	blt 0,.L507
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L507
	addi 9,5,1
	mtctr 9
	b .L508
.L507:
	addi 8,4,-2
	addi 10,3,-2
	rldic 9,9,1,32
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L509
.L510:
	addi 8,8,2
	lhz 9,0(8)
	addi 10,10,2
	sth 9,0(10)
.L509:
	bdnz .L510
	andi. 9,5,0x1
	beq 0,.L506
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	b .L506
.L512:
	lbzx 9,4,5
	stbx 9,3,5
.L508:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L512
.L506:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,2
	rlwinm 8,5,0,0,29
	cmpld 0,3,4
	blt 0,.L515
	add 10,4,5
	cmpld 0,10,3
	blt 0,.L515
	addi 9,5,1
	mtctr 9
	b .L516
.L515:
	addi 7,4,-4
	addi 10,3,-4
	rldic 9,9,2,32
	srdi 9,9,2
	addi 9,9,1
	mtctr 9
	b .L517
.L518:
	addi 7,7,4
	lwz 9,0(7)
	addi 10,10,4
	stw 9,0(10)
.L517:
	bdnz .L518
	rldicl 10,8,0,32
	subf 9,8,5
	rldicl 9,9,0,32
	addi 9,9,1
	mtctr 9
	cmplw 0,8,5
	bgt 0,.L524
	cmpwi 0,5,0
	bne 0,.L519
.L524:
	li 9,1
	mtctr 9
	b .L519
.L520:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L519:
	bdnz .L520
	b .L514
.L522:
	lbzx 9,4,5
	stbx 9,3,5
.L516:
	addi 5,5,-1
	rldicl 5,5,0,32
	bdnz .L522
.L514:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divw 9,3,4
	mullw 9,9,4
	subf 3,9,3
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	lfd 1,48(31)
	fcfid 1,1
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	lfd 0,48(31)
	fcfid 0,0
	frsp 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	blt 0,.L531
	std 3,48(31)
	lfd 0,48(31)
	fcfid 1,0
	b .L530
.L531:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
	std 9,48(31)
	lfd 0,48(31)
	fcfid 1,0
	fadd 1,1,1
.L530:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	blt 0,.L534
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L535
	mr 9,3
.L535:
	std 9,48(31)
	lfd 0,48(31)
	fcfid 0,0
	frsp 1,0
	b .L533
.L534:
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
	bge 0,.L536
	mr 9,10
.L536:
	std 9,48(31)
	lfd 0,48(31)
	fcfid 0,0
	frsp 1,0
	fadds 1,1,1
.L533:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divwu 9,3,4
	mullw 9,9,4
	subf 3,9,3
	rldicl 3,3,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,17
	mtctr 10
	b .L539
.L541:
	subfic 10,9,15
	sraw 10,3,10
	andi. 10,10,0x1
	bne 0,.L540
	addi 9,9,1
.L539:
	bdnz .L541
.L540:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,17
	mtctr 10
	b .L543
.L545:
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L544
	addi 9,9,1
.L543:
	bdnz .L545
.L544:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC35@toc@ha
	lfs 0,.LC35@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	beq 0,.L551
	fsubs 1,1,0
	fctidz 0,1
	stfd 0,48(31)
	ld 3,48(31)
	addis 3,3,0x1
	addi 3,3,-32768
	b .L549
.L551:
	fctidz 0,1
	stfd 0,48(31)
	ld 3,48(31)
.L549:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,0
	li 8,17
	mtctr 8
	b .L553
.L555:
	sraw 8,3,10
	andi. 8,8,0x1
	beq 0,.L554
	addi 9,9,1
.L554:
	addi 10,10,1
.L553:
	bdnz .L555
	rldicl 3,9,0,63
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,0
	li 8,17
	mtctr 8
	b .L557
.L559:
	sraw 8,3,10
	andi. 8,8,0x1
	beq 0,.L558
	addi 9,9,1
.L558:
	addi 10,10,1
.L557:
	bdnz .L559
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L561
.L563:
	andi. 10,3,0x1
	beq 0,.L562
	add 9,9,4
.L562:
	srdi 3,3,1
	rldic 4,4,1,32
.L561:
	cmpdi 0,3,0
	bne 0,.L563
	rldicl 3,9,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr. 9,3
	beq 0,.L569
	li 3,0
	b .L566
.L568:
	andi. 10,4,0x1
	beq 0,.L567
	add 3,3,9
.L567:
	rldic 9,9,1,32
	srdi 4,4,1
.L566:
	cmpdi 0,4,0
	bne 0,.L568
	b .L565
.L569:
	li 3,0
.L565:
	rldicl 3,3,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L571
.L573:
	rldic 4,4,1,32
	slwi 9,9,1
.L571:
	cmplw 0,4,3
	bge 0,.L578
	cmpwi 0,9,0
	beq 0,.L579
	cmpwi 0,4,0
	bge 0,.L573
	li 10,0
	b .L575
.L576:
	cmplw 0,3,4
	blt 0,.L574
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
.L574:
	srwi 9,9,1
	srdi 4,4,1
	b .L575
.L578:
	li 10,0
	b .L575
.L579:
	li 10,0
.L575:
	cmpwi 0,9,0
	bne 0,.L576
	cmpdi 0,5,0
	bne 0,.L577
	mr 3,10
.L577:
	rldicl 3,3,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,2
	blt 0,.L583
	bgt 0,.L584
	li 3,0
	b .L582
.L583:
	li 3,-1
	b .L582
.L584:
	li 3,1
.L582:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,2
	blt 0,.L587
	bgt 0,.L588
	li 3,0
	b .L586
.L587:
	li 3,-1
	b .L586
.L588:
	li 3,1
.L586:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mulld 3,3,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mulld 3,3,4
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,4,0
	bge 0,.L598
	neg 4,4
	extsw 4,4
	li 8,1
	b .L592
.L598:
	li 8,0
.L592:
	li 10,33
	li 9,0
	b .L593
.L596:
	andi. 7,4,0x1
	beq 0,.L594
	add 9,9,3
.L594:
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
.L593:
	cmpdi 0,4,0
	beq 0,.L595
	addi 10,10,-1
	andi. 7,10,0xff
	bne 0,.L596
.L595:
	cmpwi 0,8,0
	beq 0,.L597
	neg 9,9
.L597:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	bge 0,.L604
	neg 3,3
	li 30,1
	b .L601
.L604:
	li 30,0
.L601:
	cmpdi 0,4,0
	bge 0,.L602
	neg 4,4
	cntlzw 30,30
	srwi 30,30,5
.L602:
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L603
	neg 3,3
.L603:
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	bge 0,.L609
	neg 3,3
	li 30,1
	b .L606
.L609:
	li 30,0
.L606:
	cmpdi 0,4,0
	bge 0,.L607
	neg 4,4
.L607:
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L608
	neg 3,3
.L608:
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	li 10,17
	mtctr 10
	b .L611
.L613:
	rldic 4,4,1,48
	slwi 9,9,1
.L611:
	cmplw 0,4,3
	bge 0,.L618
	bdz .L622
	srdi. 10,4,15
	beq 0,.L613
	li 10,0
	b .L615
.L616:
	cmplw 0,3,4
	blt 0,.L614
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
.L614:
	rldicl 9,9,63,49
	srdi 4,4,1
	b .L615
.L618:
	li 10,0
	b .L615
.L622:
	li 10,0
.L615:
	andi. 8,9,0xffff
	bne 0,.L616
	cmpdi 0,5,0
	bne 0,.L617
	mr 3,10
.L617:
	rlwinm 3,3,0,0xffff
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L624
.L626:
	sldi 4,4,1
	sldi 9,9,1
.L624:
	cmpld 0,4,3
	bge 0,.L631
	cmpdi 0,9,0
	beq 0,.L632
	andis. 10,4,0x8000
	beq 0,.L626
	li 10,0
	b .L628
.L629:
	cmpld 0,3,4
	blt 0,.L627
	subf 3,4,3
	or 10,10,9
.L627:
	srdi 9,9,1
	srdi 4,4,1
	b .L628
.L631:
	li 10,0
	b .L628
.L632:
	li 10,0
.L628:
	cmpdi 0,9,0
	bne 0,.L629
	cmpdi 0,5,0
	bne 0,.L630
	mr 3,10
.L630:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L635
	addi 4,4,-32
	slw 9,9,4
	sldi 3,9,32
	b .L637
.L635:
	cmpdi 0,4,0
	beq 0,.L637
	mr 10,3
	slw 3,9,4
	sradi 9,9,32
	slw 9,9,4
	subfic 4,4,32
	srw 10,10,4
	or 10,10,9
	sldi 10,10,32
	or 3,3,10
.L637:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 8,4
	mr 7,3
	andi. 10,5,0x40
	beq 0,.L640
	li 11,0
	addi 5,5,-64
	sld 5,4,5
	mr 10,5
	b .L641
.L640:
	cmpdi 0,5,0
	beq 0,.L642
	sld 11,4,5
	sld 8,3,5
	subfic 5,5,64
	srd 9,4,5
	or 9,9,8
	mr 10,9
.L641:
	mr 3,10
	mr 4,11
.L642:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L645
	sradi 9,3,32
	srawi 10,9,31
	sldi 3,10,32
	addi 4,4,-32
	sraw 9,9,4
	rldicl 9,9,0,32
	or 3,3,9
	b .L647
.L645:
	cmpdi 0,4,0
	beq 0,.L647
	sradi 10,3,32
	sraw 8,10,4
	sldi 3,8,32
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 10,10,9
	rldicl 10,10,0,32
	or 3,3,10
.L647:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,4
	mr 29,3
	andi. 10,5,0x40
	beq 0,.L650
	sradi 10,3,63
	addi 5,5,-64
	srad 8,3,5
	mr 11,8
	b .L651
.L650:
	cmpdi 0,5,0
	beq 0,.L652
	srad 10,3,5
	subfic 7,5,64
	sld 8,3,7
	srd 5,4,5
	or 11,8,5
.L651:
	mr 3,10
	mr 4,11
.L652:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,3,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	srdi 11,3,40
	rlwinm 11,11,0,16,23
	srdi 4,3,24
	rlwinm 4,4,0,8,15
	srdi 5,3,8
	rlwinm 5,5,0,0,7
	rldicr 6,3,32,7
	srdi 6,6,24
	rldicr 7,3,40,7
	srdi 7,7,16
	rldicr 8,3,48,7
	srdi 8,8,8
	srdi 3,3,56
	rldimi 3,10,56,0
	or 3,3,11
	or 3,3,4
	or 3,3,5
	or 3,3,6
	or 3,3,7
	or 3,3,8
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	rlwinm 7,3,24,16,23
	rlwinm 8,3,8,8,15
	srwi 3,3,24
	rlwimi 3,10,24,0,31-24
	or 3,3,7
	or 3,3,8
	rldicl 3,3,0,32
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,65535
	bgt 0,.L661
	li 9,16
	b .L657
.L661:
	li 9,0
.L657:
	subfic 10,9,16
	srw 3,3,10
	andi. 10,3,0xff00
	bne 0,.L662
	li 10,8
	b .L658
.L662:
	li 10,0
.L658:
	subfic 8,10,8
	srw 3,3,8
	add 9,9,10
	andi. 10,3,0xf0
	bne 0,.L663
	li 10,4
	b .L659
.L663:
	li 10,0
.L659:
	subfic 8,10,4
	srw 3,3,8
	add 9,9,10
	andi. 10,3,0xc
	bne 0,.L664
	li 10,2
	b .L660
.L664:
	li 10,0
.L660:
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addic 10,3,-1
	subfe 10,10,10
	andc 9,3,10
	and 3,10,4
	or 3,9,3
	cntlzd 3,3
	rlwinm 10,10,0,25,25
	add 3,3,10
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 10,3,32
	srdi 9,4,32
	cmpw 0,10,9
	blt 0,.L668
	cmpw 0,10,9
	bgt 0,.L669
	cmplw 0,4,3
	bgt 0,.L670
	blt 0,.L671
	li 3,1
	b .L667
.L668:
	li 3,0
	b .L667
.L669:
	li 3,2
	b .L667
.L670:
	li 3,0
	b .L667
.L671:
	li 3,2
.L667:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	bl __cmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
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
	std 28,-32(1)
	std 29,-24(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpd 0,5,3
	bgt 0,.L675
	blt 0,.L676
	cmpld 0,6,4
	bgt 0,.L677
	blt 0,.L678
	li 3,1
	b .L674
.L675:
	li 3,0
	b .L674
.L676:
	li 3,2
	b .L674
.L677:
	li 3,0
	b .L674
.L678:
	li 3,2
.L674:
	extsw 3,3
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,4,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 9,3,0,16,31
	cmpwi 0,9,0
	bne 0,.L684
	li 9,16
	b .L680
.L684:
	li 9,0
.L680:
	srw 3,3,9
	rlwinm 10,3,0,24,31
	cmpwi 0,10,0
	bne 0,.L685
	li 10,8
	b .L681
.L685:
	li 10,0
.L681:
	srw 3,3,10
	add 9,9,10
	andi. 10,3,0xf
	bne 0,.L686
	li 10,4
	b .L682
.L686:
	li 10,0
.L682:
	srw 3,3,10
	add 9,9,10
	andi. 10,3,0x3
	bne 0,.L687
	li 10,2
	b .L683
.L687:
	li 10,0
.L683:
	srw 3,3,10
	rlwinm 3,3,0,30,31
	add 9,9,10
	not 10,3
	rlwinm 10,10,0,31,31
	srwi 3,3,1
	subfic 3,3,2
	neg 10,10
	and 3,3,10
	add 3,9,3
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addic 8,4,-1
	subfe 8,8,8
	and 10,8,3
	andc 9,4,8
	or 9,9,10
	neg 3,9
	and 3,9,3
	cntlzd 3,3
	subfic 3,3,63
	rlwinm 8,8,0,25,25
	add 3,3,8
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,4,0
	bne 0,.L690
	cmpdi 0,3,0
	beq 0,.L692
	neg 9,3
	and 9,9,3
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,65
	b .L691
.L690:
	neg 9,4
	and 9,9,4
	cntlzd 9,9
	subfic 9,9,64
	b .L691
.L692:
	li 9,0
.L691:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	andi. 9,4,0x20
	beq 0,.L694
	srdi 10,10,32
	addi 4,4,-32
	srw 3,10,4
	b .L696
.L694:
	cmpdi 0,4,0
	beq 0,.L696
	srdi 9,3,32
	srw 8,9,4
	sldi 3,8,32
	subfic 8,4,32
	slw 9,9,8
	srw 10,10,4
	or 9,9,10
	rldicl 9,9,0,32
	or 3,3,9
.L696:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,4
	mr 29,3
	andi. 10,5,0x40
	beq 0,.L699
	li 10,0
	addi 5,5,-64
	srd 11,3,5
	b .L700
.L699:
	cmpdi 0,5,0
	beq 0,.L701
	srd 10,3,5
	subfic 7,5,64
	sld 8,3,7
	srd 5,4,5
	or 11,8,5
.L700:
	mr 3,10
	mr 4,11
.L701:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,3,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	rlwinm 8,3,0,16,31
	rlwinm 7,4,0,16,31
	mullw 9,8,7
	rldicl 3,9,0,32
	srwi 9,3,16
	rlwinm 3,3,0,0xffff
	srwi 10,10,16
	mullw 7,10,7
	add 9,9,7
	slwi 7,9,16
	add 3,7,3
	rldicl 3,3,0,32
	srwi 9,9,16
	sldi 9,9,32
	li 6,-1
	rldicl 6,6,0,32
	or 3,3,9
	srwi 9,3,16
	rlwinm 7,3,0,0xffff
	rldicr 3,3,0,31
	or 3,3,7
	srwi 4,4,16
	mullw 8,8,4
	add 9,9,8
	slwi 8,9,16
	add 8,8,3
	rldimi 3,8,0,32
	sradi 8,3,32
	srwi 9,9,16
	add 9,9,8
	sldi 9,9,32
	and 3,3,6
	or 3,3,9
	sradi 9,3,32
	mullw 10,10,4
	add 10,10,9
	sldi 10,10,32
	and 3,3,6
	or 3,3,10
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 28,3
	mr 29,4
	mr 27,3
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __muldsi3
	sradi 9,3,32
	sradi 28,28,32
	mullw 30,29,28
	sradi 29,29,32
	mullw 27,27,29
	add 30,30,27
	add 30,30,9
	rldimi 3,30,32,0
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,5,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 6,-1
	rldicl 6,6,0,32
	and 7,3,6
	and 5,4,6
	mulld 8,7,5
	srdi 9,8,32
	and 8,8,6
	srdi 3,3,32
	mulld 5,3,5
	add 9,9,5
	sldi 5,9,32
	add 11,5,8
	srdi 9,9,32
	mr 10,9
	srdi 9,11,32
	and 8,11,6
	srdi 4,4,32
	mulld 7,7,4
	add 9,9,7
	sldi 7,9,32
	add 11,7,8
	srdi 9,9,32
	add 9,9,10
	mulld 3,3,4
	add 3,3,9
	mr 4,11
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,4
	mr 26,3
	mr 29,6
	mr 28,5
	mr 4,6
	mr 3,27
	bl __mulddi3
	mulld 30,29,26
	mulld 25,27,28
	add 30,30,25
	add 8,30,3
	mr 3,8
	addi 1,31,176
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,7,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	neg 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,4
	mr 8,3
	subfic 4,9,0
	subfze 3,8
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	xor 10,4,3
	sradi 9,10,32
	xor 10,10,9
	srwi 9,10,16
	xor 10,10,9
	srwi 9,10,8
	xor 10,10,9
	srwi 9,10,4
	xor 10,10,9
	rlwinm 10,10,0,28,31
	li 3,27030
	sraw 3,3,10
	rldicl 3,3,0,63
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	rldimi 10,10,32,0
	and 9,9,10
	subf 9,9,3
	srdi 8,9,2
	lis 10,0x3333
	ori 10,10,0x3333
	rldimi 10,10,32,0
	and 8,8,10
	and 9,9,10
	add 9,8,9
	srdi 10,9,4
	add 9,10,9
	lis 10,0xf0f
	ori 10,10,0xf0f
	rldimi 10,10,32,0
	and 9,9,10
	srdi 10,9,32
	add 9,10,9
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rldicl 3,3,0,57
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sldi 9,3,63
	srdi 11,4,1
	or 11,9,11
	srdi 10,3,1
	lis 9,0x5555
	ori 9,9,0x5555
	rldimi 9,9,32,0
	mr 24,9
	and 24,9,10
	and 25,9,11
	subfc 11,25,4
	subfe 10,24,3
	sldi 5,10,62
	srdi 7,11,2
	or 7,5,7
	srdi 6,10,2
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 26,5
	and 6,6,5
	and 7,7,5
	and 10,10,5
	and 11,11,5
	addc 9,7,11
	adde 8,6,10
	sldi 7,8,60
	srdi 11,9,4
	or 11,7,11
	srdi 10,8,4
	addc 7,11,9
	adde 6,10,8
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 28,9
	and 8,6,9
	and 9,7,9
	add 10,8,9
	srdi 9,10,32
	add 9,9,10
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,8,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,4,31
	addis 10,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(10)
.L718:
	andi. 10,4,0x1
	beq 0,.L716
	fmul 0,0,1
.L716:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L717
	fmul 1,1,1
	b .L718
.L717:
	cmpwi 0,9,0
	beq 0,.L720
	addis 9,2,.LC31@toc@ha
	lfs 12,.LC31@toc@l(9)
	fdiv 1,12,0
	b .L719
.L720:
	fmr 1,0
.L719:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,4,31
	addis 10,2,.LC31@toc@ha
	lfs 0,.LC31@toc@l(10)
.L724:
	andi. 10,4,0x1
	beq 0,.L722
	fmuls 0,0,1
.L722:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L723
	fmuls 1,1,1
	b .L724
.L723:
	cmpwi 0,9,0
	beq 0,.L726
	addis 9,2,.LC31@toc@ha
	lfs 1,.LC31@toc@l(9)
	fdivs 1,1,0
	b .L725
.L726:
	fmr 1,0
.L725:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L729
	cmplw 0,10,9
	bgt 0,.L730
	cmplw 0,4,3
	bgt 0,.L731
	blt 0,.L732
	li 3,1
	b .L728
.L729:
	li 3,0
	b .L728
.L730:
	li 3,2
	b .L728
.L731:
	li 3,0
	b .L728
.L732:
	li 3,2
.L728:
	extsw 3,3
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	bl __ucmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
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
	std 28,-32(1)
	std 29,-24(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,5,3
	bgt 0,.L736
	blt 0,.L737
	cmpld 0,6,4
	bgt 0,.L738
	blt 0,.L739
	li 3,1
	b .L735
.L736:
	li 3,0
	b .L735
.L737:
	li 3,2
	b .L735
.L738:
	li 3,0
	b .L735
.L739:
	li 3,2
.L735:
	extsw 3,3
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,4,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.set	.LC0,.LC25+8
	.set	.LC1,.LC25+4
	.section	.rodata
	.align 2
.LC4:
	.long	-8388609
	.align 2
.LC5:
	.long	2139095039
	.set	.LC8,.LC12
	.set	.LC9,.LC13
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
	.align 2
.LC17:
	.long	1056964608
	.set	.LC18,.LC26
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
